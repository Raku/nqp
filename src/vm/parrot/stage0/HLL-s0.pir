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
.sub "" :subid("cuid_231_1382292146.58822") :anon :lex
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5027 = 'cuid_232_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_245_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_257_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_120_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_262_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_290_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_291_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_301_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_302_1382292146.58822' 
    capture_lex $P5027 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "ParseShared", $P104 
    .lex "NQPCursorRole", $P105 
    .lex "$compiler", $P106 
    .lex "sprintf", $P107 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P106, $P5001
    find_dynamic_lex $P5002, "$*CTXSAVE"
    set ctxsave, $P5002
    isnull $I5001, ctxsave
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto if11_end13 
    $P5003 = ctxsave."ctxsave"()
    set $P5004, $P5003
  if11_end13:
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P5006 = 'cuid_232_1382292146.58822' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_245_1382292146.58822' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_257_1382292146.58822' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_120_1382292146.58822' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_262_1382292146.58822' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 1612
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    $P5016 = $P5015."new"()
    set $P106, $P5016
.annotate 'line', 1613
    $P5017 = $P106."backend"()
    $P5018 = $P5017."name"()
    $P106."language"($P5018)
    .const 'Sub' $P5019 = 'cuid_290_1382292146.58822' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_291_1382292146.58822' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_301_1382292146.58822' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_302_1382292146.58822' 
    capture_lex $P5025
    $P5026 = $P5025()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 7
    .const 'Sub' $P5069 = 'cuid_1_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_2_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_3_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_4_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_5_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_6_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_7_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_8_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_9_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_10_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_11_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_12_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_13_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_14_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_15_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_16_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_17_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_18_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_19_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_20_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_21_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_22_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_23_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_24_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_25_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_26_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_27_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_28_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_29_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_30_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_31_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_32_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_33_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_34_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_35_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_36_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_37_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_38_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_39_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_40_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_41_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_42_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_45_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_47_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_48_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_49_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_50_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_51_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_52_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_53_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_54_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_55_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_56_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_57_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_58_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_59_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_60_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_61_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_62_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_63_1382292146.58822' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_64_1382292146.58822' 
    capture_lex $P5069 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$brackets", $P103 
    .lex "$cursor_class", $P104 
    .lex "%ohash", $P105 
    .lex "$TRUE", $P106 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5002
    new $P5003, 'Hash'
    set $P105, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P106, $P5004
    box $P5005, utf8:"<>[](){}()<>[]{}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2018\u2019\u201a\u2019\u201b\u2019\u201c\u201d\u201e\u201d\u201f\u201d\u2039\u203a\u2045\u2046\u207d\u207e\u208d\u208e\u2208\u220b\u2209\u220c\u220a\u220d\u2215\u29f5\u223c\u223d\u2243\u22cd\u2252\u2253\u2254\u2255\u2264\u2265\u2266\u2267\u2268\u2269\u226a\u226b\u226e\u226f\u2270\u2271\u2272\u2273\u2274\u2275\u2276\u2277\u2278\u2279\u227a\u227b\u227c\u227d\u227e\u227f\u2280\u2281\u2282\u2283\u2284\u2285\u2286\u2287\u2288\u2289\u228a\u228b\u228f\u2290\u2291\u2292\u2298\u29b8\u22a2\u22a3\u22a6\u2ade\u22a8\u2ae4\u22a9\u2ae3\u22ab\u2ae5\u22b0\u22b1\u22b2\u22b3\u22b4\u22b5\u22b6\u22b7\u22c9\u22ca\u22cb\u22cc\u22d0\u22d1\u22d6\u22d7\u22d8\u22d9\u22da\u22db\u22dc\u22dd\u22de\u22df\u22e0\u22e1\u22e2\u22e3\u22e4\u22e5\u22e6\u22e7\u22e8\u22e9\u22ea\u22eb\u22ec\u22ed\u22f0\u22f1\u22f2\u22fa\u22f3\u22fb\u22f4\u22fc\u22f6\u22fd\u22f7\u22fe\u2308\u2309\u230a\u230b\u2329\u232a\u23b4\u23b5\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c3\u27c4\u27c5\u27c6\u27d5\u27d6\u27dd\u27de\u27e2\u27e3\u27e4\u27e5\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29c0\u29c1\u29c4\u29c5\u29cf\u29d0\u29d1\u29d2\u29d4\u29d5\u29d8\u29d9\u29da\u29db\u29f8\u29f9\u29fc\u29fd\u2a2b\u2a2c\u2a2d\u2a2e\u2a34\u2a35\u2a3c\u2a3d\u2a64\u2a65\u2a79\u2a7a\u2a7d\u2a7e\u2a7f\u2a80\u2a81\u2a82\u2a83\u2a84\u2a8b\u2a8c\u2a91\u2a92\u2a93\u2a94\u2a95\u2a96\u2a97\u2a98\u2a99\u2a9a\u2a9b\u2a9c\u2aa1\u2aa2\u2aa6\u2aa7\u2aa8\u2aa9\u2aaa\u2aab\u2aac\u2aad\u2aaf\u2ab0\u2ab3\u2ab4\u2abb\u2abc\u2abd\u2abe\u2abf\u2ac0\u2ac1\u2ac2\u2ac3\u2ac4\u2ac5\u2ac6\u2acd\u2ace\u2acf\u2ad0\u2ad1\u2ad2\u2ad3\u2ad4\u2ad5\u2ad6\u2aec\u2aed\u2af7\u2af8\u2af9\u2afa\u2e02\u2e03\u2e04\u2e05\u2e09\u2e0a\u2e0c\u2e0d\u2e1c\u2e1d\u2e20\u2e21\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff1c\uff1e\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P103, $P5005
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1382292140.15261", 103
    set $P104, $P5006
    .const 'Sub' $P5007 = 'cuid_1_1382292146.58822' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1382292146.58822' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1382292146.58822' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_4_1382292146.58822' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_5_1382292146.58822' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_6_1382292146.58822' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_7_1382292146.58822' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_8_1382292146.58822' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_9_1382292146.58822' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_10_1382292146.58822' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_11_1382292146.58822' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_12_1382292146.58822' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_13_1382292146.58822' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_14_1382292146.58822' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_15_1382292146.58822' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_16_1382292146.58822' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_17_1382292146.58822' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_18_1382292146.58822' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_19_1382292146.58822' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_20_1382292146.58822' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_21_1382292146.58822' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_22_1382292146.58822' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_23_1382292146.58822' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_24_1382292146.58822' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_25_1382292146.58822' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_26_1382292146.58822' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_27_1382292146.58822' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_28_1382292146.58822' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_29_1382292146.58822' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_30_1382292146.58822' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_31_1382292146.58822' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_32_1382292146.58822' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_33_1382292146.58822' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_34_1382292146.58822' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_35_1382292146.58822' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_36_1382292146.58822' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_37_1382292146.58822' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_38_1382292146.58822' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_39_1382292146.58822' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_40_1382292146.58822' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_41_1382292146.58822' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_42_1382292146.58822' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_45_1382292146.58822' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_47_1382292146.58822' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_48_1382292146.58822' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_49_1382292146.58822' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_50_1382292146.58822' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_51_1382292146.58822' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_52_1382292146.58822' 
    capture_lex $P5055
    box $P5056, 1
    set $P106, $P5056
    .const 'Sub' $P5057 = 'cuid_53_1382292146.58822' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_54_1382292146.58822' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_55_1382292146.58822' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_56_1382292146.58822' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_57_1382292146.58822' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_58_1382292146.58822' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_59_1382292146.58822' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_60_1382292146.58822' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_61_1382292146.58822' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_62_1382292146.58822' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_63_1382292146.58822' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_64_1382292146.58822' 
    capture_lex $P5068
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 11
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$sequence", _lex_param_1 
.annotate 'line', 12
    nqp_decontainerize $P5001, _lex_param_0
    set $S5003, _lex_param_1
    concat $S5002, "Unrecognized backslash sequence: '\\", $S5003
    concat $S5001, $S5002, "'"
    $P5002 = $P5001."panic"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_2_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 15
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx12_start
    .local string rx12_tgt
    .local int rx12_pos
    .local int rx12_off
    .local int rx12_eos
    .local int rx12_rep
    .local pmc rx12_cur
    .local pmc rx12_curclass
    .local pmc rx12_bstack
    .local pmc rx12_cstack
    rx12_start = self."!cursor_start_all"()
    set rx12_cur, rx12_start[0]
    set rx12_tgt, rx12_start[1]
    set rx12_pos, rx12_start[2]
    set rx12_curclass, rx12_start[3]
    set rx12_bstack, rx12_start[4]
    set $I19, rx12_start[5]
    store_lex unicode:"$\x{a2}", rx12_cur
    length rx12_eos, rx12_tgt
    eq $I19, 1, rx12_restart16
    gt rx12_pos, rx12_eos, rx12_fail17
    repr_get_attr_int $I11, self, rx12_curclass, "$!from"
    ne $I11, -1, rxscan13_done23
    goto rxscan13_scan22
  rxscan13_loop21:
    inc rx12_pos
    gt rx12_pos, rx12_eos, rx12_fail17
    repr_bind_attr_int rx12_cur, rx12_curclass, "$!from", rx12_pos
  rxscan13_scan22:
    nqp_rxmark rx12_bstack, rxscan13_loop21, rx12_pos, 0
  rxscan13_done23:
    nqp_rxmark rx12_bstack, rxquantr14_done25, rx12_pos, 0
  rxquantr14_loop24:
    repr_bind_attr_int rx12_cur, rx12_curclass, "$!pos", rx12_pos
    $P11 = rx12_cur."prefixish"()
    repr_get_attr_int $I11, $P11, rx12_curclass, "$!pos"
    lt $I11, 0, rx12_fail17
    goto rxsubrule15_pass26
  rxsubrule15_back27:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx12_curclass, "$!pos"
    lt $I11, 0, rx12_fail17
  rxsubrule15_pass26:
    rx12_cstack = rx12_cur."!cursor_capture"($P11, "prefixish")
    set_addr $I11, rxsubrule15_back27
    push rx12_bstack, $I11
    push rx12_bstack, 0
    push rx12_bstack, rx12_pos
    elements $I11, rx12_cstack
    push rx12_bstack, $I11
    repr_get_attr_int rx12_pos, $P11, rx12_curclass, "$!pos"
    nqp_rxpeek $I19, rx12_bstack, rxquantr14_done25
    inc $I19
    inc $I19
    set rx12_rep, rx12_bstack[$I19]
    nqp_rxcommit rx12_bstack, rxquantr14_done25
    inc rx12_rep
    nqp_rxmark rx12_bstack, rxquantr14_done25, rx12_pos, rx12_rep
    goto rxquantr14_loop24
  rxquantr14_done25:
    repr_bind_attr_int rx12_cur, rx12_curclass, "$!pos", rx12_pos
    $P11 = rx12_cur."term"()
    repr_get_attr_int $I11, $P11, rx12_curclass, "$!pos"
    lt $I11, 0, rx12_fail17
    nqp_rxmark rx12_bstack, rxsubrule16_pass28, -1, 0
  rxsubrule16_pass28:
    rx12_cstack = rx12_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx12_pos, $P11, rx12_curclass, "$!pos"
    nqp_rxmark rx12_bstack, rxquantr17_done30, rx12_pos, 0
  rxquantr17_loop29:
    repr_bind_attr_int rx12_cur, rx12_curclass, "$!pos", rx12_pos
    $P11 = rx12_cur."postfixish"()
    repr_get_attr_int $I11, $P11, rx12_curclass, "$!pos"
    lt $I11, 0, rx12_fail17
    goto rxsubrule18_pass31
  rxsubrule18_back32:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx12_curclass, "$!pos"
    lt $I11, 0, rx12_fail17
  rxsubrule18_pass31:
    rx12_cstack = rx12_cur."!cursor_capture"($P11, "postfixish")
    set_addr $I11, rxsubrule18_back32
    push rx12_bstack, $I11
    push rx12_bstack, 0
    push rx12_bstack, rx12_pos
    elements $I11, rx12_cstack
    push rx12_bstack, $I11
    repr_get_attr_int rx12_pos, $P11, rx12_curclass, "$!pos"
    nqp_rxpeek $I19, rx12_bstack, rxquantr17_done30
    inc $I19
    inc $I19
    set rx12_rep, rx12_bstack[$I19]
    nqp_rxcommit rx12_bstack, rxquantr17_done30
    inc rx12_rep
    nqp_rxmark rx12_bstack, rxquantr17_done30, rx12_pos, rx12_rep
    goto rxquantr17_loop29
  rxquantr17_done30:
    rx12_cur."!cursor_pass"(rx12_pos, "termish", 'backtrack'=>1)
    .return (rx12_cur)
  rx12_restart16:
    repr_get_attr_obj rx12_cstack, rx12_cur, rx12_curclass, "$!cstack"
  rx12_fail17:
    unless rx12_bstack, rx12_done15
    pop $I19, rx12_bstack
    if_null rx12_cstack, rx12_cstack_done20
    unless rx12_cstack, rx12_cstack_done20
    dec $I19
    set $P11, rx12_cstack[$I19]
  rx12_cstack_done20:
    pop rx12_rep, rx12_bstack
    pop rx12_pos, rx12_bstack
    pop $I19, rx12_bstack
    lt rx12_pos, -1, rx12_done15
    lt rx12_pos, 0, rx12_fail17
    eq $I19, 0, rx12_fail17
    nqp_islist $I20, rx12_cstack
    unless $I20, rx12_jump18
    elements $I18, rx12_bstack
    le $I18, 0, rx12_cut19
    dec $I18
    set $I18, rx12_bstack[$I18]
  rx12_cut19:
    assign rx12_cstack, $I18
  rx12_jump18:
    jump $I19
  rx12_done15:
    rx12_cur."!cursor_fail"()
    .return (rx12_cur) 
.end
.HLL "nqp"
.namespace []
.sub "term" :subid("cuid_3_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx19_start
    .local string rx19_tgt
    .local int rx19_pos
    .local int rx19_off
    .local int rx19_eos
    .local int rx19_rep
    .local pmc rx19_cur
    .local pmc rx19_curclass
    .local pmc rx19_bstack
    .local pmc rx19_cstack
    rx19_start = self."!cursor_start_all"()
    set rx19_cur, rx19_start[0]
    set rx19_tgt, rx19_start[1]
    set rx19_pos, rx19_start[2]
    set rx19_curclass, rx19_start[3]
    set rx19_bstack, rx19_start[4]
    set $I19, rx19_start[5]
    store_lex unicode:"$\x{a2}", rx19_cur
    length rx19_eos, rx19_tgt
    eq $I19, 1, rx19_restart35
    gt rx19_pos, rx19_eos, rx19_fail36
    repr_get_attr_int $I11, self, rx19_curclass, "$!from"
    ne $I11, -1, rxscan20_done42
    goto rxscan20_scan41
  rxscan20_loop40:
    inc rx19_pos
    gt rx19_pos, rx19_eos, rx19_fail36
    repr_bind_attr_int rx19_cur, rx19_curclass, "$!from", rx19_pos
  rxscan20_scan41:
    nqp_rxmark rx19_bstack, rxscan20_loop40, rx19_pos, 0
  rxscan20_done42:
    repr_bind_attr_int rx19_cur, rx19_curclass, "$!pos", rx19_pos
    $P11 = rx19_cur."circumfix"()
    repr_get_attr_int $I11, $P11, rx19_curclass, "$!pos"
    lt $I11, 0, rx19_fail36
    nqp_rxmark rx19_bstack, rxsubrule21_pass43, -1, 0
  rxsubrule21_pass43:
    rx19_cstack = rx19_cur."!cursor_capture"($P11, "circumfix")
    repr_get_attr_int rx19_pos, $P11, rx19_curclass, "$!pos"
    rx19_cur."!cursor_pass"(rx19_pos, "term:sym<circumfix>", 'backtrack'=>1)
    .return (rx19_cur)
  rx19_restart35:
    repr_get_attr_obj rx19_cstack, rx19_cur, rx19_curclass, "$!cstack"
  rx19_fail36:
    unless rx19_bstack, rx19_done34
    pop $I19, rx19_bstack
    if_null rx19_cstack, rx19_cstack_done39
    unless rx19_cstack, rx19_cstack_done39
    dec $I19
    set $P11, rx19_cstack[$I19]
  rx19_cstack_done39:
    pop rx19_rep, rx19_bstack
    pop rx19_pos, rx19_bstack
    pop $I19, rx19_bstack
    lt rx19_pos, -1, rx19_done34
    lt rx19_pos, 0, rx19_fail36
    eq $I19, 0, rx19_fail36
    nqp_islist $I20, rx19_cstack
    unless $I20, rx19_jump37
    elements $I18, rx19_bstack
    le $I18, 0, rx19_cut38
    dec $I18
    set $I18, rx19_bstack[$I18]
  rx19_cut38:
    assign rx19_cstack, $I18
  rx19_jump37:
    jump $I19
  rx19_done34:
    rx19_cur."!cursor_fail"()
    .return (rx19_cur) 
.end
.HLL "nqp"
.namespace []
.sub "infixish" :subid("cuid_10_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 30
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx22_start
    .local string rx22_tgt
    .local int rx22_pos
    .local int rx22_off
    .local int rx22_eos
    .local int rx22_rep
    .local pmc rx22_cur
    .local pmc rx22_curclass
    .local pmc rx22_bstack
    .local pmc rx22_cstack
    rx22_start = self."!cursor_start_all"()
    set rx22_cur, rx22_start[0]
    set rx22_tgt, rx22_start[1]
    set rx22_pos, rx22_start[2]
    set rx22_curclass, rx22_start[3]
    set rx22_bstack, rx22_start[4]
    set $I19, rx22_start[5]
    store_lex unicode:"$\x{a2}", rx22_cur
    length rx22_eos, rx22_tgt
    eq $I19, 1, rx22_restart46
    gt rx22_pos, rx22_eos, rx22_fail47
    repr_get_attr_int $I11, self, rx22_curclass, "$!from"
    ne $I11, -1, rxscan23_done53
    goto rxscan23_scan52
  rxscan23_loop51:
    inc rx22_pos
    gt rx22_pos, rx22_eos, rx22_fail47
    repr_bind_attr_int rx22_cur, rx22_curclass, "$!from", rx22_pos
  rxscan23_scan52:
    nqp_rxmark rx22_bstack, rxscan23_loop51, rx22_pos, 0
  rxscan23_done53:
    repr_bind_attr_int rx22_cur, rx22_curclass, "$!pos", rx22_pos
    $P11 = rx22_cur."infix"()
    repr_get_attr_int $I11, $P11, rx22_curclass, "$!pos"
    lt $I11, 0, rx22_fail47
    nqp_rxmark rx22_bstack, rxsubrule24_pass54, -1, 0
  rxsubrule24_pass54:
    rx22_cstack = rx22_cur."!cursor_capture"($P11, "OPER=infix")
    repr_get_attr_int rx22_pos, $P11, rx22_curclass, "$!pos"
    rx22_cur."!cursor_pass"(rx22_pos, "infixish", 'backtrack'=>1)
    .return (rx22_cur)
  rx22_restart46:
    repr_get_attr_obj rx22_cstack, rx22_cur, rx22_curclass, "$!cstack"
  rx22_fail47:
    unless rx22_bstack, rx22_done45
    pop $I19, rx22_bstack
    if_null rx22_cstack, rx22_cstack_done50
    unless rx22_cstack, rx22_cstack_done50
    dec $I19
    set $P11, rx22_cstack[$I19]
  rx22_cstack_done50:
    pop rx22_rep, rx22_bstack
    pop rx22_pos, rx22_bstack
    pop $I19, rx22_bstack
    lt rx22_pos, -1, rx22_done45
    lt rx22_pos, 0, rx22_fail47
    eq $I19, 0, rx22_fail47
    nqp_islist $I20, rx22_cstack
    unless $I20, rx22_jump48
    elements $I18, rx22_bstack
    le $I18, 0, rx22_cut49
    dec $I18
    set $I18, rx22_bstack[$I18]
  rx22_cut49:
    assign rx22_cstack, $I18
  rx22_jump48:
    jump $I19
  rx22_done45:
    rx22_cur."!cursor_fail"()
    .return (rx22_cur) 
.end
.HLL "nqp"
.namespace []
.sub "prefixish" :subid("cuid_11_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 31
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx25_start
    .local string rx25_tgt
    .local int rx25_pos
    .local int rx25_off
    .local int rx25_eos
    .local int rx25_rep
    .local pmc rx25_cur
    .local pmc rx25_curclass
    .local pmc rx25_bstack
    .local pmc rx25_cstack
    rx25_start = self."!cursor_start_all"()
    set rx25_cur, rx25_start[0]
    set rx25_tgt, rx25_start[1]
    set rx25_pos, rx25_start[2]
    set rx25_curclass, rx25_start[3]
    set rx25_bstack, rx25_start[4]
    set $I19, rx25_start[5]
    store_lex unicode:"$\x{a2}", rx25_cur
    length rx25_eos, rx25_tgt
    eq $I19, 1, rx25_restart57
    gt rx25_pos, rx25_eos, rx25_fail58
    repr_get_attr_int $I11, self, rx25_curclass, "$!from"
    ne $I11, -1, rxscan26_done64
    goto rxscan26_scan63
  rxscan26_loop62:
    inc rx25_pos
    gt rx25_pos, rx25_eos, rx25_fail58
    repr_bind_attr_int rx25_cur, rx25_curclass, "$!from", rx25_pos
  rxscan26_scan63:
    nqp_rxmark rx25_bstack, rxscan26_loop62, rx25_pos, 0
  rxscan26_done64:
    repr_bind_attr_int rx25_cur, rx25_curclass, "$!pos", rx25_pos
    $P11 = rx25_cur."prefix"()
    repr_get_attr_int $I11, $P11, rx25_curclass, "$!pos"
    lt $I11, 0, rx25_fail58
    nqp_rxmark rx25_bstack, rxsubrule27_pass65, -1, 0
  rxsubrule27_pass65:
    rx25_cstack = rx25_cur."!cursor_capture"($P11, "OPER=prefix")
    repr_get_attr_int rx25_pos, $P11, rx25_curclass, "$!pos"
    repr_bind_attr_int rx25_cur, rx25_curclass, "$!pos", rx25_pos
    $P11 = rx25_cur."ws"()
    repr_get_attr_int $I11, $P11, rx25_curclass, "$!pos"
    lt $I11, 0, rx25_fail58
    repr_get_attr_int rx25_pos, $P11, rx25_curclass, "$!pos"
    rx25_cur."!cursor_pass"(rx25_pos, "prefixish", 'backtrack'=>1)
    .return (rx25_cur)
  rx25_restart57:
    repr_get_attr_obj rx25_cstack, rx25_cur, rx25_curclass, "$!cstack"
  rx25_fail58:
    unless rx25_bstack, rx25_done56
    pop $I19, rx25_bstack
    if_null rx25_cstack, rx25_cstack_done61
    unless rx25_cstack, rx25_cstack_done61
    dec $I19
    set $P11, rx25_cstack[$I19]
  rx25_cstack_done61:
    pop rx25_rep, rx25_bstack
    pop rx25_pos, rx25_bstack
    pop $I19, rx25_bstack
    lt rx25_pos, -1, rx25_done56
    lt rx25_pos, 0, rx25_fail58
    eq $I19, 0, rx25_fail58
    nqp_islist $I20, rx25_cstack
    unless $I20, rx25_jump59
    elements $I18, rx25_bstack
    le $I18, 0, rx25_cut60
    dec $I18
    set $I18, rx25_bstack[$I18]
  rx25_cut60:
    assign rx25_cstack, $I18
  rx25_jump59:
    jump $I19
  rx25_done56:
    rx25_cur."!cursor_fail"()
    .return (rx25_cur) 
.end
.HLL "nqp"
.namespace []
.sub "postfixish" :subid("cuid_12_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx29_start
    .local string rx29_tgt
    .local int rx29_pos
    .local int rx29_off
    .local int rx29_eos
    .local int rx29_rep
    .local pmc rx29_cur
    .local pmc rx29_curclass
    .local pmc rx29_bstack
    .local pmc rx29_cstack
    rx29_start = self."!cursor_start_all"()
    set rx29_cur, rx29_start[0]
    set rx29_tgt, rx29_start[1]
    set rx29_pos, rx29_start[2]
    set rx29_curclass, rx29_start[3]
    set rx29_bstack, rx29_start[4]
    set $I19, rx29_start[5]
    store_lex unicode:"$\x{a2}", rx29_cur
    length rx29_eos, rx29_tgt
    eq $I19, 1, rx29_restart69
    gt rx29_pos, rx29_eos, rx29_fail70
    repr_get_attr_int $I11, self, rx29_curclass, "$!from"
    ne $I11, -1, rxscan30_done76
    goto rxscan30_scan75
  rxscan30_loop74:
    inc rx29_pos
    gt rx29_pos, rx29_eos, rx29_fail70
    repr_bind_attr_int rx29_cur, rx29_curclass, "$!from", rx29_pos
  rxscan30_scan75:
    nqp_rxmark rx29_bstack, rxscan30_loop74, rx29_pos, 0
  rxscan30_done76:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt31_078
    nqp_push_label $P11, alt31_180
    nqp_rxmark rx29_bstack, alt31_end77, -1, 0
    rx29_cur."!alt"(rx29_pos, "alt_nfa__1_1382292146.97348", $P11)
    goto rx29_fail70
  alt31_078:
    repr_bind_attr_int rx29_cur, rx29_curclass, "$!pos", rx29_pos
    $P11 = rx29_cur."postfix"()
    repr_get_attr_int $I11, $P11, rx29_curclass, "$!pos"
    lt $I11, 0, rx29_fail70
    nqp_rxmark rx29_bstack, rxsubrule32_pass79, -1, 0
  rxsubrule32_pass79:
    rx29_cstack = rx29_cur."!cursor_capture"($P11, "OPER=postfix")
    repr_get_attr_int rx29_pos, $P11, rx29_curclass, "$!pos"
    goto alt31_end77
  alt31_180:
    repr_bind_attr_int rx29_cur, rx29_curclass, "$!pos", rx29_pos
    $P11 = rx29_cur."postcircumfix"()
    repr_get_attr_int $I11, $P11, rx29_curclass, "$!pos"
    lt $I11, 0, rx29_fail70
    nqp_rxmark rx29_bstack, rxsubrule33_pass81, -1, 0
  rxsubrule33_pass81:
    rx29_cstack = rx29_cur."!cursor_capture"($P11, "OPER=postcircumfix")
    repr_get_attr_int rx29_pos, $P11, rx29_curclass, "$!pos"
    goto alt31_end77
  alt31_end77:
    rx29_cur."!cursor_pass"(rx29_pos, "postfixish", 'backtrack'=>1)
    .return (rx29_cur)
  rx29_restart69:
    repr_get_attr_obj rx29_cstack, rx29_cur, rx29_curclass, "$!cstack"
  rx29_fail70:
    unless rx29_bstack, rx29_done68
    pop $I19, rx29_bstack
    if_null rx29_cstack, rx29_cstack_done73
    unless rx29_cstack, rx29_cstack_done73
    dec $I19
    set $P11, rx29_cstack[$I19]
  rx29_cstack_done73:
    pop rx29_rep, rx29_bstack
    pop rx29_pos, rx29_bstack
    pop $I19, rx29_bstack
    lt rx29_pos, -1, rx29_done68
    lt rx29_pos, 0, rx29_fail70
    eq $I19, 0, rx29_fail70
    nqp_islist $I20, rx29_cstack
    unless $I20, rx29_jump71
    elements $I18, rx29_bstack
    le $I18, 0, rx29_cut72
    dec $I18
    set $I18, rx29_bstack[$I18]
  rx29_cut72:
    assign rx29_cstack, $I18
  rx29_jump71:
    jump $I19
  rx29_done68:
    rx29_cur."!cursor_fail"()
    .return (rx29_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_13_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 37
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx34_start
    .local string rx34_tgt
    .local int rx34_pos
    .local int rx34_off
    .local int rx34_eos
    .local int rx34_rep
    .local pmc rx34_cur
    .local pmc rx34_curclass
    .local pmc rx34_bstack
    .local pmc rx34_cstack
    rx34_start = self."!cursor_start_all"()
    set rx34_cur, rx34_start[0]
    set rx34_tgt, rx34_start[1]
    set rx34_pos, rx34_start[2]
    set rx34_curclass, rx34_start[3]
    set rx34_bstack, rx34_start[4]
    set $I19, rx34_start[5]
    store_lex unicode:"$\x{a2}", rx34_cur
    length rx34_eos, rx34_tgt
    eq $I19, 1, rx34_restart84
    gt rx34_pos, rx34_eos, rx34_fail85
    repr_get_attr_int $I11, self, rx34_curclass, "$!from"
    ne $I11, -1, rxscan35_done91
    goto rxscan35_scan90
  rxscan35_loop89:
    inc rx34_pos
    gt rx34_pos, rx34_eos, rx34_fail85
    repr_bind_attr_int rx34_cur, rx34_curclass, "$!from", rx34_pos
  rxscan35_scan90:
    nqp_rxmark rx34_bstack, rxscan35_loop89, rx34_pos, 0
  rxscan35_done91:
    rx34_cur."!cursor_pass"(rx34_pos, "nullterm", 'backtrack'=>1)
    .return (rx34_cur)
  rx34_restart84:
    repr_get_attr_obj rx34_cstack, rx34_cur, rx34_curclass, "$!cstack"
  rx34_fail85:
    unless rx34_bstack, rx34_done83
    pop $I19, rx34_bstack
    if_null rx34_cstack, rx34_cstack_done88
    unless rx34_cstack, rx34_cstack_done88
    dec $I19
    set $P11, rx34_cstack[$I19]
  rx34_cstack_done88:
    pop rx34_rep, rx34_bstack
    pop rx34_pos, rx34_bstack
    pop $I19, rx34_bstack
    lt rx34_pos, -1, rx34_done83
    lt rx34_pos, 0, rx34_fail85
    eq $I19, 0, rx34_fail85
    nqp_islist $I20, rx34_cstack
    unless $I20, rx34_jump86
    elements $I18, rx34_bstack
    le $I18, 0, rx34_cut87
    dec $I18
    set $I18, rx34_bstack[$I18]
  rx34_cut87:
    assign rx34_cstack, $I18
  rx34_jump86:
    jump $I19
  rx34_done83:
    rx34_cur."!cursor_fail"()
    .return (rx34_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_14_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx37_start
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    .local pmc rx37_curclass
    .local pmc rx37_bstack
    .local pmc rx37_cstack
    rx37_start = self."!cursor_start_all"()
    set rx37_cur, rx37_start[0]
    set rx37_tgt, rx37_start[1]
    set rx37_pos, rx37_start[2]
    set rx37_curclass, rx37_start[3]
    set rx37_bstack, rx37_start[4]
    set $I19, rx37_start[5]
    store_lex unicode:"$\x{a2}", rx37_cur
    length rx37_eos, rx37_tgt
    eq $I19, 1, rx37_restart95
    gt rx37_pos, rx37_eos, rx37_fail96
    repr_get_attr_int $I11, self, rx37_curclass, "$!from"
    ne $I11, -1, rxscan38_done102
    goto rxscan38_scan101
  rxscan38_loop100:
    inc rx37_pos
    gt rx37_pos, rx37_eos, rx37_fail96
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!from", rx37_pos
  rxscan38_scan101:
    nqp_rxmark rx37_bstack, rxscan38_loop100, rx37_pos, 0
  rxscan38_done102:
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."nullterm"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail96
    nqp_rxmark rx37_bstack, rxsubrule39_pass103, -1, 0
  rxsubrule39_pass103:
    rx37_cstack = rx37_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    rx37_cur."!cursor_pass"(rx37_pos, "nullterm_alt", 'backtrack'=>1)
    .return (rx37_cur)
  rx37_restart95:
    repr_get_attr_obj rx37_cstack, rx37_cur, rx37_curclass, "$!cstack"
  rx37_fail96:
    unless rx37_bstack, rx37_done94
    pop $I19, rx37_bstack
    if_null rx37_cstack, rx37_cstack_done99
    unless rx37_cstack, rx37_cstack_done99
    dec $I19
    set $P11, rx37_cstack[$I19]
  rx37_cstack_done99:
    pop rx37_rep, rx37_bstack
    pop rx37_pos, rx37_bstack
    pop $I19, rx37_bstack
    lt rx37_pos, -1, rx37_done94
    lt rx37_pos, 0, rx37_fail96
    eq $I19, 0, rx37_fail96
    nqp_islist $I20, rx37_cstack
    unless $I20, rx37_jump97
    elements $I18, rx37_bstack
    le $I18, 0, rx37_cut98
    dec $I18
    set $I18, rx37_bstack[$I18]
  rx37_cut98:
    assign rx37_cstack, $I18
  rx37_jump97:
    jump $I19
  rx37_done94:
    rx37_cur."!cursor_fail"()
    .return (rx37_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nulltermish" :subid("cuid_15_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."termish"()
    set $P5005, $P5002
    if $P5002 goto unless40_end105 
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."nullterm_alt"()
    set $P5005, $P5004
  unless40_end105:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_16_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx41_start
    .local string rx41_tgt
    .local int rx41_pos
    .local int rx41_off
    .local int rx41_eos
    .local int rx41_rep
    .local pmc rx41_cur
    .local pmc rx41_curclass
    .local pmc rx41_bstack
    .local pmc rx41_cstack
    rx41_start = self."!cursor_start_all"()
    set rx41_cur, rx41_start[0]
    set rx41_tgt, rx41_start[1]
    set rx41_pos, rx41_start[2]
    set rx41_curclass, rx41_start[3]
    set rx41_bstack, rx41_start[4]
    set $I19, rx41_start[5]
    store_lex unicode:"$\x{a2}", rx41_cur
    length rx41_eos, rx41_tgt
    eq $I19, 1, rx41_restart108
    gt rx41_pos, rx41_eos, rx41_fail109
    repr_get_attr_int $I11, self, rx41_curclass, "$!from"
    ne $I11, -1, rxscan42_done115
    goto rxscan42_scan114
  rxscan42_loop113:
    inc rx41_pos
    gt rx41_pos, rx41_eos, rx41_fail109
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!from", rx41_pos
  rxscan42_scan114:
    nqp_rxmark rx41_bstack, rxscan42_loop113, rx41_pos, 0
  rxscan42_done115:
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!pos", rx41_pos
    $P11 = rx41_cur."starter"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail109
    nqp_rxmark rx41_bstack, rxsubrule43_pass116, -1, 0
  rxsubrule43_pass116:
    rx41_cstack = rx41_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx41_pos, $P11, rx41_curclass, "$!pos"
    nqp_rxmark rx41_bstack, rxquantr44_done118, rx41_pos, 0
  rxquantr44_loop117:
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!pos", rx41_pos
    $P11 = rx41_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail109
    goto rxsubrule45_pass119
  rxsubrule45_back120:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail109
  rxsubrule45_pass119:
    rx41_cstack = rx41_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule45_back120
    push rx41_bstack, $I11
    push rx41_bstack, 0
    push rx41_bstack, rx41_pos
    elements $I11, rx41_cstack
    push rx41_bstack, $I11
    repr_get_attr_int rx41_pos, $P11, rx41_curclass, "$!pos"
    nqp_rxpeek $I19, rx41_bstack, rxquantr44_done118
    inc $I19
    inc $I19
    set rx41_rep, rx41_bstack[$I19]
    nqp_rxcommit rx41_bstack, rxquantr44_done118
    inc rx41_rep
    nqp_rxmark rx41_bstack, rxquantr44_done118, rx41_pos, rx41_rep
    goto rxquantr44_loop117
  rxquantr44_done118:
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!pos", rx41_pos
    $P11 = rx41_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail109
    nqp_rxmark rx41_bstack, rxsubrule46_pass121, -1, 0
  rxsubrule46_pass121:
    rx41_cstack = rx41_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx41_pos, $P11, rx41_curclass, "$!pos"
    rx41_cur."!cursor_pass"(rx41_pos, "quote_delimited", 'backtrack'=>1)
    .return (rx41_cur)
  rx41_restart108:
    repr_get_attr_obj rx41_cstack, rx41_cur, rx41_curclass, "$!cstack"
  rx41_fail109:
    unless rx41_bstack, rx41_done107
    pop $I19, rx41_bstack
    if_null rx41_cstack, rx41_cstack_done112
    unless rx41_cstack, rx41_cstack_done112
    dec $I19
    set $P11, rx41_cstack[$I19]
  rx41_cstack_done112:
    pop rx41_rep, rx41_bstack
    pop rx41_pos, rx41_bstack
    pop $I19, rx41_bstack
    lt rx41_pos, -1, rx41_done107
    lt rx41_pos, 0, rx41_fail109
    eq $I19, 0, rx41_fail109
    nqp_islist $I20, rx41_cstack
    unless $I20, rx41_jump110
    elements $I18, rx41_bstack
    le $I18, 0, rx41_cut111
    dec $I18
    set $I18, rx41_bstack[$I18]
  rx41_cut111:
    assign rx41_cstack, $I18
  rx41_jump110:
    jump $I19
  rx41_done107:
    rx41_cur."!cursor_fail"()
    .return (rx41_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_17_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx47_start
    .local string rx47_tgt
    .local int rx47_pos
    .local int rx47_off
    .local int rx47_eos
    .local int rx47_rep
    .local pmc rx47_cur
    .local pmc rx47_curclass
    .local pmc rx47_bstack
    .local pmc rx47_cstack
    rx47_start = self."!cursor_start_all"()
    set rx47_cur, rx47_start[0]
    set rx47_tgt, rx47_start[1]
    set rx47_pos, rx47_start[2]
    set rx47_curclass, rx47_start[3]
    set rx47_bstack, rx47_start[4]
    set $I19, rx47_start[5]
    store_lex unicode:"$\x{a2}", rx47_cur
    length rx47_eos, rx47_tgt
    eq $I19, 1, rx47_restart124
    gt rx47_pos, rx47_eos, rx47_fail125
    repr_get_attr_int $I11, self, rx47_curclass, "$!from"
    ne $I11, -1, rxscan48_done131
    goto rxscan48_scan130
  rxscan48_loop129:
    inc rx47_pos
    gt rx47_pos, rx47_eos, rx47_fail125
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!from", rx47_pos
  rxscan48_scan130:
    nqp_rxmark rx47_bstack, rxscan48_loop129, rx47_pos, 0
  rxscan48_done131:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    ge $I11, 0, rx47_fail125
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt49_0133
    nqp_push_label $P11, alt49_1135
    nqp_push_label $P11, alt49_2142
    nqp_rxmark rx47_bstack, alt49_end132, -1, 0
    rx47_cur."!alt"(rx47_pos, "alt_nfa__2_1382292147.00724", $P11)
    goto rx47_fail125
  alt49_0133:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
    nqp_rxmark rx47_bstack, rxsubrule50_pass134, -1, 0
  rxsubrule50_pass134:
    rx47_cstack = rx47_cur."!cursor_capture"($P11, "quote_escape")
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
    goto alt49_end132
  alt49_1135:
    nqp_rxmark rx47_bstack, rxquantr51_done137, -1, 0
  rxquantr51_loop136:
    nqp_rxmark rx47_bstack, rxconj52_fail138, rx47_pos, 0
    goto rxconj52_first139
  rxconj52_fail138:
    goto rx47_fail125
  rxconj52_first139:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."starter"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    ge $I11, 0, rx47_fail125
    nqp_rxpeek $I19, rx47_bstack, rxconj52_fail138
    inc $I19
    set $I11, rx47_bstack[$I19]
    nqp_rxmark rx47_bstack, rxconj52_fail138, $I11, rx47_pos
    set rx47_pos, $I11
    nqp_rxmark rx47_bstack, rxconj53_fail140, rx47_pos, 0
    goto rxconj53_first141
  rxconj53_fail140:
    goto rx47_fail125
  rxconj53_first141:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    ge $I11, 0, rx47_fail125
    nqp_rxpeek $I19, rx47_bstack, rxconj53_fail140
    inc $I19
    set $I11, rx47_bstack[$I19]
    nqp_rxmark rx47_bstack, rxconj53_fail140, $I11, rx47_pos
    set rx47_pos, $I11
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    ge $I11, 0, rx47_fail125
    ge rx47_pos, rx47_eos, rx47_fail125
    add rx47_pos, 1
    nqp_rxpeek $I19, rx47_bstack, rxquantr51_done137
    inc $I19
    inc $I19
    set rx47_rep, rx47_bstack[$I19]
    nqp_rxcommit rx47_bstack, rxquantr51_done137
    inc rx47_rep
    nqp_rxmark rx47_bstack, rxquantr51_done137, rx47_pos, rx47_rep
    goto rxquantr51_loop136
  rxquantr51_done137:
    goto alt49_end132
  alt49_2142:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."starter"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
    nqp_rxmark rx47_bstack, rxsubrule54_pass143, -1, 0
  rxsubrule54_pass143:
    rx47_cstack = rx47_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
    nqp_rxmark rx47_bstack, rxquantr55_done145, rx47_pos, 0
  rxquantr55_loop144:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
    goto rxsubrule56_pass146
  rxsubrule56_back147:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
  rxsubrule56_pass146:
    rx47_cstack = rx47_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule56_back147
    push rx47_bstack, $I11
    push rx47_bstack, 0
    push rx47_bstack, rx47_pos
    elements $I11, rx47_cstack
    push rx47_bstack, $I11
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
    nqp_rxpeek $I19, rx47_bstack, rxquantr55_done145
    inc $I19
    inc $I19
    set rx47_rep, rx47_bstack[$I19]
    nqp_rxcommit rx47_bstack, rxquantr55_done145
    inc rx47_rep
    nqp_rxmark rx47_bstack, rxquantr55_done145, rx47_pos, rx47_rep
    goto rxquantr55_loop144
  rxquantr55_done145:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
    nqp_rxmark rx47_bstack, rxsubrule57_pass148, -1, 0
  rxsubrule57_pass148:
    rx47_cstack = rx47_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
    goto alt49_end132
  alt49_end132:
    nqp_rxcommit rx47_bstack, alt49_end132
    rx47_cur."!cursor_pass"(rx47_pos, "quote_atom", 'backtrack'=>1)
    .return (rx47_cur)
  rx47_restart124:
    repr_get_attr_obj rx47_cstack, rx47_cur, rx47_curclass, "$!cstack"
  rx47_fail125:
    unless rx47_bstack, rx47_done123
    pop $I19, rx47_bstack
    if_null rx47_cstack, rx47_cstack_done128
    unless rx47_cstack, rx47_cstack_done128
    dec $I19
    set $P11, rx47_cstack[$I19]
  rx47_cstack_done128:
    pop rx47_rep, rx47_bstack
    pop rx47_pos, rx47_bstack
    pop $I19, rx47_bstack
    lt rx47_pos, -1, rx47_done123
    lt rx47_pos, 0, rx47_fail125
    eq $I19, 0, rx47_fail125
    nqp_islist $I20, rx47_cstack
    unless $I20, rx47_jump126
    elements $I18, rx47_bstack
    le $I18, 0, rx47_cut127
    dec $I18
    set $I18, rx47_bstack[$I18]
  rx47_cut127:
    assign rx47_cstack, $I18
  rx47_jump126:
    jump $I19
  rx47_done123:
    rx47_cur."!cursor_fail"()
    .return (rx47_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_18_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 56
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx58_start
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    .local pmc rx58_curclass
    .local pmc rx58_bstack
    .local pmc rx58_cstack
    rx58_start = self."!cursor_start_all"()
    set rx58_cur, rx58_start[0]
    set rx58_tgt, rx58_start[1]
    set rx58_pos, rx58_start[2]
    set rx58_curclass, rx58_start[3]
    set rx58_bstack, rx58_start[4]
    set $I19, rx58_start[5]
    store_lex unicode:"$\x{a2}", rx58_cur
    length rx58_eos, rx58_tgt
    eq $I19, 1, rx58_restart151
    gt rx58_pos, rx58_eos, rx58_fail152
    repr_get_attr_int $I11, self, rx58_curclass, "$!from"
    ne $I11, -1, rxscan59_done158
    goto rxscan59_scan157
  rxscan59_loop156:
    inc rx58_pos
    gt rx58_pos, rx58_eos, rx58_fail152
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!from", rx58_pos
  rxscan59_scan157:
    nqp_rxmark rx58_bstack, rxscan59_loop156, rx58_pos, 0
  rxscan59_done158:
    nqp_rxmark rx58_bstack, rxquantr60_done160, -1, 0
  rxquantr60_loop159:
    nqp_rxmark rx58_bstack, rxquantr61_done162, -1, 0
  rxquantr61_loop161:
    ge rx58_pos, rx58_eos, rx58_fail152
    is_cclass $I11, .CCLASS_NUMERIC, rx58_tgt, rx58_pos
    unless $I11, rx58_fail152
    add rx58_pos, 1
    nqp_rxpeek $I19, rx58_bstack, rxquantr61_done162
    inc $I19
    inc $I19
    set rx58_rep, rx58_bstack[$I19]
    nqp_rxcommit rx58_bstack, rxquantr61_done162
    inc rx58_rep
    nqp_rxmark rx58_bstack, rxquantr61_done162, rx58_pos, rx58_rep
    goto rxquantr61_loop161
  rxquantr61_done162:
    nqp_rxpeek $I19, rx58_bstack, rxquantr60_done160
    inc $I19
    inc $I19
    set rx58_rep, rx58_bstack[$I19]
    nqp_rxcommit rx58_bstack, rxquantr60_done160
    inc rx58_rep
    nqp_rxmark rx58_bstack, rxquantr60_done160, rx58_pos, rx58_rep
    add $I11, rx58_pos, 1
    gt $I11, rx58_eos, rx58_fail152
    substr $S10, rx58_tgt, rx58_pos, 1
    ne $S10, ucs4:"_", rx58_fail152
    add rx58_pos, 1
    goto rxquantr60_loop159
  rxquantr60_done160:
    rx58_cur."!cursor_pass"(rx58_pos, "decint", 'backtrack'=>1)
    .return (rx58_cur)
  rx58_restart151:
    repr_get_attr_obj rx58_cstack, rx58_cur, rx58_curclass, "$!cstack"
  rx58_fail152:
    unless rx58_bstack, rx58_done150
    pop $I19, rx58_bstack
    if_null rx58_cstack, rx58_cstack_done155
    unless rx58_cstack, rx58_cstack_done155
    dec $I19
    set $P11, rx58_cstack[$I19]
  rx58_cstack_done155:
    pop rx58_rep, rx58_bstack
    pop rx58_pos, rx58_bstack
    pop $I19, rx58_bstack
    lt rx58_pos, -1, rx58_done150
    lt rx58_pos, 0, rx58_fail152
    eq $I19, 0, rx58_fail152
    nqp_islist $I20, rx58_cstack
    unless $I20, rx58_jump153
    elements $I18, rx58_bstack
    le $I18, 0, rx58_cut154
    dec $I18
    set $I18, rx58_bstack[$I18]
  rx58_cut154:
    assign rx58_cstack, $I18
  rx58_jump153:
    jump $I19
  rx58_done150:
    rx58_cur."!cursor_fail"()
    .return (rx58_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decints" :subid("cuid_19_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 57
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx62_start
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    .local pmc rx62_curclass
    .local pmc rx62_bstack
    .local pmc rx62_cstack
    rx62_start = self."!cursor_start_all"()
    set rx62_cur, rx62_start[0]
    set rx62_tgt, rx62_start[1]
    set rx62_pos, rx62_start[2]
    set rx62_curclass, rx62_start[3]
    set rx62_bstack, rx62_start[4]
    set $I19, rx62_start[5]
    store_lex unicode:"$\x{a2}", rx62_cur
    length rx62_eos, rx62_tgt
    eq $I19, 1, rx62_restart165
    gt rx62_pos, rx62_eos, rx62_fail166
    repr_get_attr_int $I11, self, rx62_curclass, "$!from"
    ne $I11, -1, rxscan63_done172
    goto rxscan63_scan171
  rxscan63_loop170:
    inc rx62_pos
    gt rx62_pos, rx62_eos, rx62_fail166
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!from", rx62_pos
  rxscan63_scan171:
    nqp_rxmark rx62_bstack, rxscan63_loop170, rx62_pos, 0
  rxscan63_done172:
    nqp_rxmark rx62_bstack, rxquantr64_done174, -1, 0
  rxquantr64_loop173:
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."ws"()
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail166
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."decint"()
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail166
    nqp_rxmark rx62_bstack, rxsubrule66_pass176, -1, 0
  rxsubrule66_pass176:
    rx62_cstack = rx62_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."ws"()
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail166
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
    nqp_rxpeek $I19, rx62_bstack, rxquantr64_done174
    inc $I19
    inc $I19
    set rx62_rep, rx62_bstack[$I19]
    nqp_rxcommit rx62_bstack, rxquantr64_done174
    inc rx62_rep
    nqp_rxmark rx62_bstack, rxquantr64_done174, rx62_pos, rx62_rep
    add $I11, rx62_pos, 1
    gt $I11, rx62_eos, rx62_fail166
    substr $S10, rx62_tgt, rx62_pos, 1
    ne $S10, ucs4:",", rx62_fail166
    add rx62_pos, 1
    goto rxquantr64_loop173
  rxquantr64_done174:
    rx62_cur."!cursor_pass"(rx62_pos, "decints", 'backtrack'=>1)
    .return (rx62_cur)
  rx62_restart165:
    repr_get_attr_obj rx62_cstack, rx62_cur, rx62_curclass, "$!cstack"
  rx62_fail166:
    unless rx62_bstack, rx62_done164
    pop $I19, rx62_bstack
    if_null rx62_cstack, rx62_cstack_done169
    unless rx62_cstack, rx62_cstack_done169
    dec $I19
    set $P11, rx62_cstack[$I19]
  rx62_cstack_done169:
    pop rx62_rep, rx62_bstack
    pop rx62_pos, rx62_bstack
    pop $I19, rx62_bstack
    lt rx62_pos, -1, rx62_done164
    lt rx62_pos, 0, rx62_fail166
    eq $I19, 0, rx62_fail166
    nqp_islist $I20, rx62_cstack
    unless $I20, rx62_jump167
    elements $I18, rx62_bstack
    le $I18, 0, rx62_cut168
    dec $I18
    set $I18, rx62_bstack[$I18]
  rx62_cut168:
    assign rx62_cstack, $I18
  rx62_jump167:
    jump $I19
  rx62_done164:
    rx62_cur."!cursor_fail"()
    .return (rx62_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_20_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 59
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx68_start
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    .local pmc rx68_curclass
    .local pmc rx68_bstack
    .local pmc rx68_cstack
    rx68_start = self."!cursor_start_all"()
    set rx68_cur, rx68_start[0]
    set rx68_tgt, rx68_start[1]
    set rx68_pos, rx68_start[2]
    set rx68_curclass, rx68_start[3]
    set rx68_bstack, rx68_start[4]
    set $I19, rx68_start[5]
    store_lex unicode:"$\x{a2}", rx68_cur
    length rx68_eos, rx68_tgt
    eq $I19, 1, rx68_restart180
    gt rx68_pos, rx68_eos, rx68_fail181
    repr_get_attr_int $I11, self, rx68_curclass, "$!from"
    ne $I11, -1, rxscan69_done187
    goto rxscan69_scan186
  rxscan69_loop185:
    inc rx68_pos
    gt rx68_pos, rx68_eos, rx68_fail181
    repr_bind_attr_int rx68_cur, rx68_curclass, "$!from", rx68_pos
  rxscan69_scan186:
    nqp_rxmark rx68_bstack, rxscan69_loop185, rx68_pos, 0
  rxscan69_done187:
    nqp_rxmark rx68_bstack, rxquantr70_done189, -1, 0
  rxquantr70_loop188:
    nqp_rxmark rx68_bstack, rxquantr71_done191, -1, 0
  rxquantr71_loop190:
    ge rx68_pos, rx68_eos, rx68_fail181
    substr $S11, rx68_tgt, rx68_pos, 1
    index $I11, ucs4:"0123456789abcdefABCDEF", $S11
    lt $I11, 0, rx68_fail181
    inc rx68_pos
    nqp_rxpeek $I19, rx68_bstack, rxquantr71_done191
    inc $I19
    inc $I19
    set rx68_rep, rx68_bstack[$I19]
    nqp_rxcommit rx68_bstack, rxquantr71_done191
    inc rx68_rep
    nqp_rxmark rx68_bstack, rxquantr71_done191, rx68_pos, rx68_rep
    goto rxquantr71_loop190
  rxquantr71_done191:
    nqp_rxpeek $I19, rx68_bstack, rxquantr70_done189
    inc $I19
    inc $I19
    set rx68_rep, rx68_bstack[$I19]
    nqp_rxcommit rx68_bstack, rxquantr70_done189
    inc rx68_rep
    nqp_rxmark rx68_bstack, rxquantr70_done189, rx68_pos, rx68_rep
    add $I11, rx68_pos, 1
    gt $I11, rx68_eos, rx68_fail181
    substr $S10, rx68_tgt, rx68_pos, 1
    ne $S10, ucs4:"_", rx68_fail181
    add rx68_pos, 1
    goto rxquantr70_loop188
  rxquantr70_done189:
    rx68_cur."!cursor_pass"(rx68_pos, "hexint", 'backtrack'=>1)
    .return (rx68_cur)
  rx68_restart180:
    repr_get_attr_obj rx68_cstack, rx68_cur, rx68_curclass, "$!cstack"
  rx68_fail181:
    unless rx68_bstack, rx68_done179
    pop $I19, rx68_bstack
    if_null rx68_cstack, rx68_cstack_done184
    unless rx68_cstack, rx68_cstack_done184
    dec $I19
    set $P11, rx68_cstack[$I19]
  rx68_cstack_done184:
    pop rx68_rep, rx68_bstack
    pop rx68_pos, rx68_bstack
    pop $I19, rx68_bstack
    lt rx68_pos, -1, rx68_done179
    lt rx68_pos, 0, rx68_fail181
    eq $I19, 0, rx68_fail181
    nqp_islist $I20, rx68_cstack
    unless $I20, rx68_jump182
    elements $I18, rx68_bstack
    le $I18, 0, rx68_cut183
    dec $I18
    set $I18, rx68_bstack[$I18]
  rx68_cut183:
    assign rx68_cstack, $I18
  rx68_jump182:
    jump $I19
  rx68_done179:
    rx68_cur."!cursor_fail"()
    .return (rx68_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_21_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx72_start
    .local string rx72_tgt
    .local int rx72_pos
    .local int rx72_off
    .local int rx72_eos
    .local int rx72_rep
    .local pmc rx72_cur
    .local pmc rx72_curclass
    .local pmc rx72_bstack
    .local pmc rx72_cstack
    rx72_start = self."!cursor_start_all"()
    set rx72_cur, rx72_start[0]
    set rx72_tgt, rx72_start[1]
    set rx72_pos, rx72_start[2]
    set rx72_curclass, rx72_start[3]
    set rx72_bstack, rx72_start[4]
    set $I19, rx72_start[5]
    store_lex unicode:"$\x{a2}", rx72_cur
    length rx72_eos, rx72_tgt
    eq $I19, 1, rx72_restart194
    gt rx72_pos, rx72_eos, rx72_fail195
    repr_get_attr_int $I11, self, rx72_curclass, "$!from"
    ne $I11, -1, rxscan73_done201
    goto rxscan73_scan200
  rxscan73_loop199:
    inc rx72_pos
    gt rx72_pos, rx72_eos, rx72_fail195
    repr_bind_attr_int rx72_cur, rx72_curclass, "$!from", rx72_pos
  rxscan73_scan200:
    nqp_rxmark rx72_bstack, rxscan73_loop199, rx72_pos, 0
  rxscan73_done201:
    nqp_rxmark rx72_bstack, rxquantr74_done203, -1, 0
  rxquantr74_loop202:
    repr_bind_attr_int rx72_cur, rx72_curclass, "$!pos", rx72_pos
    $P11 = rx72_cur."ws"()
    repr_get_attr_int $I11, $P11, rx72_curclass, "$!pos"
    lt $I11, 0, rx72_fail195
    repr_get_attr_int rx72_pos, $P11, rx72_curclass, "$!pos"
    repr_bind_attr_int rx72_cur, rx72_curclass, "$!pos", rx72_pos
    $P11 = rx72_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx72_curclass, "$!pos"
    lt $I11, 0, rx72_fail195
    nqp_rxmark rx72_bstack, rxsubrule76_pass205, -1, 0
  rxsubrule76_pass205:
    rx72_cstack = rx72_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx72_pos, $P11, rx72_curclass, "$!pos"
    repr_bind_attr_int rx72_cur, rx72_curclass, "$!pos", rx72_pos
    $P11 = rx72_cur."ws"()
    repr_get_attr_int $I11, $P11, rx72_curclass, "$!pos"
    lt $I11, 0, rx72_fail195
    repr_get_attr_int rx72_pos, $P11, rx72_curclass, "$!pos"
    nqp_rxpeek $I19, rx72_bstack, rxquantr74_done203
    inc $I19
    inc $I19
    set rx72_rep, rx72_bstack[$I19]
    nqp_rxcommit rx72_bstack, rxquantr74_done203
    inc rx72_rep
    nqp_rxmark rx72_bstack, rxquantr74_done203, rx72_pos, rx72_rep
    add $I11, rx72_pos, 1
    gt $I11, rx72_eos, rx72_fail195
    substr $S10, rx72_tgt, rx72_pos, 1
    ne $S10, ucs4:",", rx72_fail195
    add rx72_pos, 1
    goto rxquantr74_loop202
  rxquantr74_done203:
    rx72_cur."!cursor_pass"(rx72_pos, "hexints", 'backtrack'=>1)
    .return (rx72_cur)
  rx72_restart194:
    repr_get_attr_obj rx72_cstack, rx72_cur, rx72_curclass, "$!cstack"
  rx72_fail195:
    unless rx72_bstack, rx72_done193
    pop $I19, rx72_bstack
    if_null rx72_cstack, rx72_cstack_done198
    unless rx72_cstack, rx72_cstack_done198
    dec $I19
    set $P11, rx72_cstack[$I19]
  rx72_cstack_done198:
    pop rx72_rep, rx72_bstack
    pop rx72_pos, rx72_bstack
    pop $I19, rx72_bstack
    lt rx72_pos, -1, rx72_done193
    lt rx72_pos, 0, rx72_fail195
    eq $I19, 0, rx72_fail195
    nqp_islist $I20, rx72_cstack
    unless $I20, rx72_jump196
    elements $I18, rx72_bstack
    le $I18, 0, rx72_cut197
    dec $I18
    set $I18, rx72_bstack[$I18]
  rx72_cut197:
    assign rx72_cstack, $I18
  rx72_jump196:
    jump $I19
  rx72_done193:
    rx72_cur."!cursor_fail"()
    .return (rx72_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_22_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx78_start
    .local string rx78_tgt
    .local int rx78_pos
    .local int rx78_off
    .local int rx78_eos
    .local int rx78_rep
    .local pmc rx78_cur
    .local pmc rx78_curclass
    .local pmc rx78_bstack
    .local pmc rx78_cstack
    rx78_start = self."!cursor_start_all"()
    set rx78_cur, rx78_start[0]
    set rx78_tgt, rx78_start[1]
    set rx78_pos, rx78_start[2]
    set rx78_curclass, rx78_start[3]
    set rx78_bstack, rx78_start[4]
    set $I19, rx78_start[5]
    store_lex unicode:"$\x{a2}", rx78_cur
    length rx78_eos, rx78_tgt
    eq $I19, 1, rx78_restart209
    gt rx78_pos, rx78_eos, rx78_fail210
    repr_get_attr_int $I11, self, rx78_curclass, "$!from"
    ne $I11, -1, rxscan79_done216
    goto rxscan79_scan215
  rxscan79_loop214:
    inc rx78_pos
    gt rx78_pos, rx78_eos, rx78_fail210
    repr_bind_attr_int rx78_cur, rx78_curclass, "$!from", rx78_pos
  rxscan79_scan215:
    nqp_rxmark rx78_bstack, rxscan79_loop214, rx78_pos, 0
  rxscan79_done216:
    nqp_rxmark rx78_bstack, rxquantr80_done218, -1, 0
  rxquantr80_loop217:
    nqp_rxmark rx78_bstack, rxquantr81_done220, -1, 0
  rxquantr81_loop219:
    ge rx78_pos, rx78_eos, rx78_fail210
    substr $S11, rx78_tgt, rx78_pos, 1
    index $I11, ucs4:"01234567", $S11
    lt $I11, 0, rx78_fail210
    inc rx78_pos
    nqp_rxpeek $I19, rx78_bstack, rxquantr81_done220
    inc $I19
    inc $I19
    set rx78_rep, rx78_bstack[$I19]
    nqp_rxcommit rx78_bstack, rxquantr81_done220
    inc rx78_rep
    nqp_rxmark rx78_bstack, rxquantr81_done220, rx78_pos, rx78_rep
    goto rxquantr81_loop219
  rxquantr81_done220:
    nqp_rxpeek $I19, rx78_bstack, rxquantr80_done218
    inc $I19
    inc $I19
    set rx78_rep, rx78_bstack[$I19]
    nqp_rxcommit rx78_bstack, rxquantr80_done218
    inc rx78_rep
    nqp_rxmark rx78_bstack, rxquantr80_done218, rx78_pos, rx78_rep
    add $I11, rx78_pos, 1
    gt $I11, rx78_eos, rx78_fail210
    substr $S10, rx78_tgt, rx78_pos, 1
    ne $S10, ucs4:"_", rx78_fail210
    add rx78_pos, 1
    goto rxquantr80_loop217
  rxquantr80_done218:
    rx78_cur."!cursor_pass"(rx78_pos, "octint", 'backtrack'=>1)
    .return (rx78_cur)
  rx78_restart209:
    repr_get_attr_obj rx78_cstack, rx78_cur, rx78_curclass, "$!cstack"
  rx78_fail210:
    unless rx78_bstack, rx78_done208
    pop $I19, rx78_bstack
    if_null rx78_cstack, rx78_cstack_done213
    unless rx78_cstack, rx78_cstack_done213
    dec $I19
    set $P11, rx78_cstack[$I19]
  rx78_cstack_done213:
    pop rx78_rep, rx78_bstack
    pop rx78_pos, rx78_bstack
    pop $I19, rx78_bstack
    lt rx78_pos, -1, rx78_done208
    lt rx78_pos, 0, rx78_fail210
    eq $I19, 0, rx78_fail210
    nqp_islist $I20, rx78_cstack
    unless $I20, rx78_jump211
    elements $I18, rx78_bstack
    le $I18, 0, rx78_cut212
    dec $I18
    set $I18, rx78_bstack[$I18]
  rx78_cut212:
    assign rx78_cstack, $I18
  rx78_jump211:
    jump $I19
  rx78_done208:
    rx78_cur."!cursor_fail"()
    .return (rx78_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_23_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx82_start
    .local string rx82_tgt
    .local int rx82_pos
    .local int rx82_off
    .local int rx82_eos
    .local int rx82_rep
    .local pmc rx82_cur
    .local pmc rx82_curclass
    .local pmc rx82_bstack
    .local pmc rx82_cstack
    rx82_start = self."!cursor_start_all"()
    set rx82_cur, rx82_start[0]
    set rx82_tgt, rx82_start[1]
    set rx82_pos, rx82_start[2]
    set rx82_curclass, rx82_start[3]
    set rx82_bstack, rx82_start[4]
    set $I19, rx82_start[5]
    store_lex unicode:"$\x{a2}", rx82_cur
    length rx82_eos, rx82_tgt
    eq $I19, 1, rx82_restart223
    gt rx82_pos, rx82_eos, rx82_fail224
    repr_get_attr_int $I11, self, rx82_curclass, "$!from"
    ne $I11, -1, rxscan83_done230
    goto rxscan83_scan229
  rxscan83_loop228:
    inc rx82_pos
    gt rx82_pos, rx82_eos, rx82_fail224
    repr_bind_attr_int rx82_cur, rx82_curclass, "$!from", rx82_pos
  rxscan83_scan229:
    nqp_rxmark rx82_bstack, rxscan83_loop228, rx82_pos, 0
  rxscan83_done230:
    nqp_rxmark rx82_bstack, rxquantr84_done232, -1, 0
  rxquantr84_loop231:
    repr_bind_attr_int rx82_cur, rx82_curclass, "$!pos", rx82_pos
    $P11 = rx82_cur."ws"()
    repr_get_attr_int $I11, $P11, rx82_curclass, "$!pos"
    lt $I11, 0, rx82_fail224
    repr_get_attr_int rx82_pos, $P11, rx82_curclass, "$!pos"
    repr_bind_attr_int rx82_cur, rx82_curclass, "$!pos", rx82_pos
    $P11 = rx82_cur."octint"()
    repr_get_attr_int $I11, $P11, rx82_curclass, "$!pos"
    lt $I11, 0, rx82_fail224
    nqp_rxmark rx82_bstack, rxsubrule86_pass234, -1, 0
  rxsubrule86_pass234:
    rx82_cstack = rx82_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx82_pos, $P11, rx82_curclass, "$!pos"
    repr_bind_attr_int rx82_cur, rx82_curclass, "$!pos", rx82_pos
    $P11 = rx82_cur."ws"()
    repr_get_attr_int $I11, $P11, rx82_curclass, "$!pos"
    lt $I11, 0, rx82_fail224
    repr_get_attr_int rx82_pos, $P11, rx82_curclass, "$!pos"
    nqp_rxpeek $I19, rx82_bstack, rxquantr84_done232
    inc $I19
    inc $I19
    set rx82_rep, rx82_bstack[$I19]
    nqp_rxcommit rx82_bstack, rxquantr84_done232
    inc rx82_rep
    nqp_rxmark rx82_bstack, rxquantr84_done232, rx82_pos, rx82_rep
    add $I11, rx82_pos, 1
    gt $I11, rx82_eos, rx82_fail224
    substr $S10, rx82_tgt, rx82_pos, 1
    ne $S10, ucs4:",", rx82_fail224
    add rx82_pos, 1
    goto rxquantr84_loop231
  rxquantr84_done232:
    rx82_cur."!cursor_pass"(rx82_pos, "octints", 'backtrack'=>1)
    .return (rx82_cur)
  rx82_restart223:
    repr_get_attr_obj rx82_cstack, rx82_cur, rx82_curclass, "$!cstack"
  rx82_fail224:
    unless rx82_bstack, rx82_done222
    pop $I19, rx82_bstack
    if_null rx82_cstack, rx82_cstack_done227
    unless rx82_cstack, rx82_cstack_done227
    dec $I19
    set $P11, rx82_cstack[$I19]
  rx82_cstack_done227:
    pop rx82_rep, rx82_bstack
    pop rx82_pos, rx82_bstack
    pop $I19, rx82_bstack
    lt rx82_pos, -1, rx82_done222
    lt rx82_pos, 0, rx82_fail224
    eq $I19, 0, rx82_fail224
    nqp_islist $I20, rx82_cstack
    unless $I20, rx82_jump225
    elements $I18, rx82_bstack
    le $I18, 0, rx82_cut226
    dec $I18
    set $I18, rx82_bstack[$I18]
  rx82_cut226:
    assign rx82_cstack, $I18
  rx82_jump225:
    jump $I19
  rx82_done222:
    rx82_cur."!cursor_fail"()
    .return (rx82_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_24_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx88_start
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_curclass
    .local pmc rx88_bstack
    .local pmc rx88_cstack
    rx88_start = self."!cursor_start_all"()
    set rx88_cur, rx88_start[0]
    set rx88_tgt, rx88_start[1]
    set rx88_pos, rx88_start[2]
    set rx88_curclass, rx88_start[3]
    set rx88_bstack, rx88_start[4]
    set $I19, rx88_start[5]
    store_lex unicode:"$\x{a2}", rx88_cur
    length rx88_eos, rx88_tgt
    eq $I19, 1, rx88_restart238
    gt rx88_pos, rx88_eos, rx88_fail239
    repr_get_attr_int $I11, self, rx88_curclass, "$!from"
    ne $I11, -1, rxscan89_done245
    goto rxscan89_scan244
  rxscan89_loop243:
    inc rx88_pos
    gt rx88_pos, rx88_eos, rx88_fail239
    repr_bind_attr_int rx88_cur, rx88_curclass, "$!from", rx88_pos
  rxscan89_scan244:
    nqp_rxmark rx88_bstack, rxscan89_loop243, rx88_pos, 0
  rxscan89_done245:
    nqp_rxmark rx88_bstack, rxquantr90_done247, -1, 0
  rxquantr90_loop246:
    nqp_rxmark rx88_bstack, rxquantr91_done249, -1, 0
  rxquantr91_loop248:
    ge rx88_pos, rx88_eos, rx88_fail239
    substr $S11, rx88_tgt, rx88_pos, 1
    index $I11, ucs4:"01", $S11
    lt $I11, 0, rx88_fail239
    inc rx88_pos
    nqp_rxpeek $I19, rx88_bstack, rxquantr91_done249
    inc $I19
    inc $I19
    set rx88_rep, rx88_bstack[$I19]
    nqp_rxcommit rx88_bstack, rxquantr91_done249
    inc rx88_rep
    nqp_rxmark rx88_bstack, rxquantr91_done249, rx88_pos, rx88_rep
    goto rxquantr91_loop248
  rxquantr91_done249:
    nqp_rxpeek $I19, rx88_bstack, rxquantr90_done247
    inc $I19
    inc $I19
    set rx88_rep, rx88_bstack[$I19]
    nqp_rxcommit rx88_bstack, rxquantr90_done247
    inc rx88_rep
    nqp_rxmark rx88_bstack, rxquantr90_done247, rx88_pos, rx88_rep
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail239
    substr $S10, rx88_tgt, rx88_pos, 1
    ne $S10, ucs4:"_", rx88_fail239
    add rx88_pos, 1
    goto rxquantr90_loop246
  rxquantr90_done247:
    rx88_cur."!cursor_pass"(rx88_pos, "binint", 'backtrack'=>1)
    .return (rx88_cur)
  rx88_restart238:
    repr_get_attr_obj rx88_cstack, rx88_cur, rx88_curclass, "$!cstack"
  rx88_fail239:
    unless rx88_bstack, rx88_done237
    pop $I19, rx88_bstack
    if_null rx88_cstack, rx88_cstack_done242
    unless rx88_cstack, rx88_cstack_done242
    dec $I19
    set $P11, rx88_cstack[$I19]
  rx88_cstack_done242:
    pop rx88_rep, rx88_bstack
    pop rx88_pos, rx88_bstack
    pop $I19, rx88_bstack
    lt rx88_pos, -1, rx88_done237
    lt rx88_pos, 0, rx88_fail239
    eq $I19, 0, rx88_fail239
    nqp_islist $I20, rx88_cstack
    unless $I20, rx88_jump240
    elements $I18, rx88_bstack
    le $I18, 0, rx88_cut241
    dec $I18
    set $I18, rx88_bstack[$I18]
  rx88_cut241:
    assign rx88_cstack, $I18
  rx88_jump240:
    jump $I19
  rx88_done237:
    rx88_cur."!cursor_fail"()
    .return (rx88_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_25_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx92_start
    .local string rx92_tgt
    .local int rx92_pos
    .local int rx92_off
    .local int rx92_eos
    .local int rx92_rep
    .local pmc rx92_cur
    .local pmc rx92_curclass
    .local pmc rx92_bstack
    .local pmc rx92_cstack
    rx92_start = self."!cursor_start_all"()
    set rx92_cur, rx92_start[0]
    set rx92_tgt, rx92_start[1]
    set rx92_pos, rx92_start[2]
    set rx92_curclass, rx92_start[3]
    set rx92_bstack, rx92_start[4]
    set $I19, rx92_start[5]
    store_lex unicode:"$\x{a2}", rx92_cur
    length rx92_eos, rx92_tgt
    eq $I19, 1, rx92_restart252
    gt rx92_pos, rx92_eos, rx92_fail253
    repr_get_attr_int $I11, self, rx92_curclass, "$!from"
    ne $I11, -1, rxscan93_done259
    goto rxscan93_scan258
  rxscan93_loop257:
    inc rx92_pos
    gt rx92_pos, rx92_eos, rx92_fail253
    repr_bind_attr_int rx92_cur, rx92_curclass, "$!from", rx92_pos
  rxscan93_scan258:
    nqp_rxmark rx92_bstack, rxscan93_loop257, rx92_pos, 0
  rxscan93_done259:
    nqp_rxmark rx92_bstack, rxquantr94_done261, -1, 0
  rxquantr94_loop260:
    repr_bind_attr_int rx92_cur, rx92_curclass, "$!pos", rx92_pos
    $P11 = rx92_cur."ws"()
    repr_get_attr_int $I11, $P11, rx92_curclass, "$!pos"
    lt $I11, 0, rx92_fail253
    repr_get_attr_int rx92_pos, $P11, rx92_curclass, "$!pos"
    repr_bind_attr_int rx92_cur, rx92_curclass, "$!pos", rx92_pos
    $P11 = rx92_cur."binint"()
    repr_get_attr_int $I11, $P11, rx92_curclass, "$!pos"
    lt $I11, 0, rx92_fail253
    nqp_rxmark rx92_bstack, rxsubrule96_pass263, -1, 0
  rxsubrule96_pass263:
    rx92_cstack = rx92_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx92_pos, $P11, rx92_curclass, "$!pos"
    repr_bind_attr_int rx92_cur, rx92_curclass, "$!pos", rx92_pos
    $P11 = rx92_cur."ws"()
    repr_get_attr_int $I11, $P11, rx92_curclass, "$!pos"
    lt $I11, 0, rx92_fail253
    repr_get_attr_int rx92_pos, $P11, rx92_curclass, "$!pos"
    nqp_rxpeek $I19, rx92_bstack, rxquantr94_done261
    inc $I19
    inc $I19
    set rx92_rep, rx92_bstack[$I19]
    nqp_rxcommit rx92_bstack, rxquantr94_done261
    inc rx92_rep
    nqp_rxmark rx92_bstack, rxquantr94_done261, rx92_pos, rx92_rep
    add $I11, rx92_pos, 1
    gt $I11, rx92_eos, rx92_fail253
    substr $S10, rx92_tgt, rx92_pos, 1
    ne $S10, ucs4:",", rx92_fail253
    add rx92_pos, 1
    goto rxquantr94_loop260
  rxquantr94_done261:
    rx92_cur."!cursor_pass"(rx92_pos, "binints", 'backtrack'=>1)
    .return (rx92_cur)
  rx92_restart252:
    repr_get_attr_obj rx92_cstack, rx92_cur, rx92_curclass, "$!cstack"
  rx92_fail253:
    unless rx92_bstack, rx92_done251
    pop $I19, rx92_bstack
    if_null rx92_cstack, rx92_cstack_done256
    unless rx92_cstack, rx92_cstack_done256
    dec $I19
    set $P11, rx92_cstack[$I19]
  rx92_cstack_done256:
    pop rx92_rep, rx92_bstack
    pop rx92_pos, rx92_bstack
    pop $I19, rx92_bstack
    lt rx92_pos, -1, rx92_done251
    lt rx92_pos, 0, rx92_fail253
    eq $I19, 0, rx92_fail253
    nqp_islist $I20, rx92_cstack
    unless $I20, rx92_jump254
    elements $I18, rx92_bstack
    le $I18, 0, rx92_cut255
    dec $I18
    set $I18, rx92_bstack[$I18]
  rx92_cut255:
    assign rx92_cstack, $I18
  rx92_jump254:
    jump $I19
  rx92_done251:
    rx92_cur."!cursor_fail"()
    .return (rx92_cur) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_26_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx98_start
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_curclass
    .local pmc rx98_bstack
    .local pmc rx98_cstack
    rx98_start = self."!cursor_start_all"()
    set rx98_cur, rx98_start[0]
    set rx98_tgt, rx98_start[1]
    set rx98_pos, rx98_start[2]
    set rx98_curclass, rx98_start[3]
    set rx98_bstack, rx98_start[4]
    set $I19, rx98_start[5]
    store_lex unicode:"$\x{a2}", rx98_cur
    length rx98_eos, rx98_tgt
    eq $I19, 1, rx98_restart267
    gt rx98_pos, rx98_eos, rx98_fail268
    repr_get_attr_int $I11, self, rx98_curclass, "$!from"
    ne $I11, -1, rxscan99_done274
    goto rxscan99_scan273
  rxscan99_loop272:
    inc rx98_pos
    gt rx98_pos, rx98_eos, rx98_fail268
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!from", rx98_pos
  rxscan99_scan273:
    nqp_rxmark rx98_bstack, rxscan99_loop272, rx98_pos, 0
  rxscan99_done274:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt100_0276
    nqp_push_label $P11, alt100_1286
    nqp_rxmark rx98_bstack, alt100_end275, -1, 0
    rx98_cur."!alt"(rx98_pos, "alt_nfa__4_1382292147.09068", $P11)
    goto rx98_fail268
  alt100_0276:
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail268
    substr $S10, rx98_tgt, rx98_pos, 1
    ne $S10, ucs4:"0", rx98_fail268
    add rx98_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt101_0278
    nqp_push_label $P11, alt101_1280
    nqp_push_label $P11, alt101_2282
    nqp_push_label $P11, alt101_3284
    nqp_rxmark rx98_bstack, alt101_end277, -1, 0
    rx98_cur."!alt"(rx98_pos, "alt_nfa__3_1382292147.09001", $P11)
    goto rx98_fail268
  alt101_0278:
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail268
    substr $S10, rx98_tgt, rx98_pos, 1
    ne $S10, ucs4:"b", rx98_fail268
    add rx98_pos, 1
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."binint"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail268
    nqp_rxmark rx98_bstack, rxsubrule102_pass279, -1, 0
  rxsubrule102_pass279:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    goto alt101_end277
  alt101_1280:
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail268
    substr $S10, rx98_tgt, rx98_pos, 1
    ne $S10, ucs4:"o", rx98_fail268
    add rx98_pos, 1
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."octint"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail268
    nqp_rxmark rx98_bstack, rxsubrule103_pass281, -1, 0
  rxsubrule103_pass281:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    goto alt101_end277
  alt101_2282:
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail268
    substr $S10, rx98_tgt, rx98_pos, 1
    ne $S10, ucs4:"x", rx98_fail268
    add rx98_pos, 1
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail268
    nqp_rxmark rx98_bstack, rxsubrule104_pass283, -1, 0
  rxsubrule104_pass283:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    goto alt101_end277
  alt101_3284:
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail268
    substr $S10, rx98_tgt, rx98_pos, 1
    ne $S10, ucs4:"d", rx98_fail268
    add rx98_pos, 1
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."decint"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail268
    nqp_rxmark rx98_bstack, rxsubrule105_pass285, -1, 0
  rxsubrule105_pass285:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    goto alt101_end277
  alt101_end277:
    nqp_rxcommit rx98_bstack, alt101_end277
    goto alt100_end275
  alt100_1286:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."decint"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail268
    nqp_rxmark rx98_bstack, rxsubrule106_pass287, -1, 0
  rxsubrule106_pass287:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    goto alt100_end275
  alt100_end275:
    nqp_rxcommit rx98_bstack, alt100_end275
    rx98_cur."!cursor_pass"(rx98_pos, "integer", 'backtrack'=>1)
    .return (rx98_cur)
  rx98_restart267:
    repr_get_attr_obj rx98_cstack, rx98_cur, rx98_curclass, "$!cstack"
  rx98_fail268:
    unless rx98_bstack, rx98_done266
    pop $I19, rx98_bstack
    if_null rx98_cstack, rx98_cstack_done271
    unless rx98_cstack, rx98_cstack_done271
    dec $I19
    set $P11, rx98_cstack[$I19]
  rx98_cstack_done271:
    pop rx98_rep, rx98_bstack
    pop rx98_pos, rx98_bstack
    pop $I19, rx98_bstack
    lt rx98_pos, -1, rx98_done266
    lt rx98_pos, 0, rx98_fail268
    eq $I19, 0, rx98_fail268
    nqp_islist $I20, rx98_cstack
    unless $I20, rx98_jump269
    elements $I18, rx98_bstack
    le $I18, 0, rx98_cut270
    dec $I18
    set $I18, rx98_bstack[$I18]
  rx98_cut270:
    assign rx98_cstack, $I18
  rx98_jump269:
    jump $I19
  rx98_done266:
    rx98_cur."!cursor_fail"()
    .return (rx98_cur) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_27_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx107_start
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_curclass
    .local pmc rx107_bstack
    .local pmc rx107_cstack
    rx107_start = self."!cursor_start_all"()
    set rx107_cur, rx107_start[0]
    set rx107_tgt, rx107_start[1]
    set rx107_pos, rx107_start[2]
    set rx107_curclass, rx107_start[3]
    set rx107_bstack, rx107_start[4]
    set $I19, rx107_start[5]
    store_lex unicode:"$\x{a2}", rx107_cur
    length rx107_eos, rx107_tgt
    eq $I19, 1, rx107_restart290
    gt rx107_pos, rx107_eos, rx107_fail291
    repr_get_attr_int $I11, self, rx107_curclass, "$!from"
    ne $I11, -1, rxscan108_done297
    goto rxscan108_scan296
  rxscan108_loop295:
    inc rx107_pos
    gt rx107_pos, rx107_eos, rx107_fail291
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!from", rx107_pos
  rxscan108_scan296:
    nqp_rxmark rx107_bstack, rxscan108_loop295, rx107_pos, 0
  rxscan108_done297:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt109_0299
    nqp_push_label $P11, alt109_1308
    nqp_push_label $P11, alt109_2319
    nqp_rxmark rx107_bstack, alt109_end298, -1, 0
    rx107_cur."!alt"(rx107_pos, "alt_nfa__5_1382292147.11324", $P11)
    goto rx107_fail291
  alt109_0299:
    nqp_rxmark rx107_bstack, rxcap110_fail301, rx107_pos, 0
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail291
    substr $S10, rx107_tgt, rx107_pos, 1
    ne $S10, ucs4:".", rx107_fail291
    add rx107_pos, 1
    nqp_rxmark rx107_bstack, rxquantr111_done303, -1, 0
  rxquantr111_loop302:
    ge rx107_pos, rx107_eos, rx107_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx107_tgt, rx107_pos
    unless $I11, rx107_fail291
    add rx107_pos, 1
    nqp_rxpeek $I19, rx107_bstack, rxquantr111_done303
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr111_done303
    inc rx107_rep
    nqp_rxmark rx107_bstack, rxquantr111_done303, rx107_pos, rx107_rep
    goto rxquantr111_loop302
  rxquantr111_done303:
    nqp_rxpeek $I19, rx107_bstack, rxcap110_fail301
    inc $I19
    set $I11, rx107_bstack[$I19]
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx107_pos)
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "coeff")
    goto rxcap110_done300
  rxcap110_fail301:
    goto rx107_fail291
  rxcap110_done300:
    nqp_rxmark rx107_bstack, rxquantr112_done305, rx107_pos, 0
  rxquantr112_loop304:
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."escale"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail291
    goto rxsubrule113_pass306
  rxsubrule113_back307:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail291
  rxsubrule113_pass306:
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule113_back307
    push rx107_bstack, $I11
    push rx107_bstack, 0
    push rx107_bstack, rx107_pos
    elements $I11, rx107_cstack
    push rx107_bstack, $I11
    repr_get_attr_int rx107_pos, $P11, rx107_curclass, "$!pos"
    nqp_rxpeek $I19, rx107_bstack, rxquantr112_done305
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr112_done305
    inc rx107_rep
  rxquantr112_done305:
    goto alt109_end298
  alt109_1308:
    nqp_rxmark rx107_bstack, rxcap114_fail310, rx107_pos, 0
    nqp_rxmark rx107_bstack, rxquantr115_done312, -1, 0
  rxquantr115_loop311:
    ge rx107_pos, rx107_eos, rx107_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx107_tgt, rx107_pos
    unless $I11, rx107_fail291
    add rx107_pos, 1
    nqp_rxpeek $I19, rx107_bstack, rxquantr115_done312
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr115_done312
    inc rx107_rep
    nqp_rxmark rx107_bstack, rxquantr115_done312, rx107_pos, rx107_rep
    goto rxquantr115_loop311
  rxquantr115_done312:
    add $I11, rx107_pos, 1
    gt $I11, rx107_eos, rx107_fail291
    substr $S10, rx107_tgt, rx107_pos, 1
    ne $S10, ucs4:".", rx107_fail291
    add rx107_pos, 1
    nqp_rxmark rx107_bstack, rxquantr116_done314, -1, 0
  rxquantr116_loop313:
    ge rx107_pos, rx107_eos, rx107_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx107_tgt, rx107_pos
    unless $I11, rx107_fail291
    add rx107_pos, 1
    nqp_rxpeek $I19, rx107_bstack, rxquantr116_done314
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr116_done314
    inc rx107_rep
    nqp_rxmark rx107_bstack, rxquantr116_done314, rx107_pos, rx107_rep
    goto rxquantr116_loop313
  rxquantr116_done314:
    nqp_rxpeek $I19, rx107_bstack, rxcap114_fail310
    inc $I19
    set $I11, rx107_bstack[$I19]
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx107_pos)
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "coeff")
    goto rxcap114_done309
  rxcap114_fail310:
    goto rx107_fail291
  rxcap114_done309:
    nqp_rxmark rx107_bstack, rxquantr117_done316, rx107_pos, 0
  rxquantr117_loop315:
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."escale"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail291
    goto rxsubrule118_pass317
  rxsubrule118_back318:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail291
  rxsubrule118_pass317:
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule118_back318
    push rx107_bstack, $I11
    push rx107_bstack, 0
    push rx107_bstack, rx107_pos
    elements $I11, rx107_cstack
    push rx107_bstack, $I11
    repr_get_attr_int rx107_pos, $P11, rx107_curclass, "$!pos"
    nqp_rxpeek $I19, rx107_bstack, rxquantr117_done316
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr117_done316
    inc rx107_rep
  rxquantr117_done316:
    goto alt109_end298
  alt109_2319:
    nqp_rxmark rx107_bstack, rxcap119_fail321, rx107_pos, 0
    nqp_rxmark rx107_bstack, rxquantr120_done323, -1, 0
  rxquantr120_loop322:
    ge rx107_pos, rx107_eos, rx107_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx107_tgt, rx107_pos
    unless $I11, rx107_fail291
    add rx107_pos, 1
    nqp_rxpeek $I19, rx107_bstack, rxquantr120_done323
    inc $I19
    inc $I19
    set rx107_rep, rx107_bstack[$I19]
    nqp_rxcommit rx107_bstack, rxquantr120_done323
    inc rx107_rep
    nqp_rxmark rx107_bstack, rxquantr120_done323, rx107_pos, rx107_rep
    goto rxquantr120_loop322
  rxquantr120_done323:
    nqp_rxpeek $I19, rx107_bstack, rxcap119_fail321
    inc $I19
    set $I11, rx107_bstack[$I19]
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx107_pos)
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "coeff")
    goto rxcap119_done320
  rxcap119_fail321:
    goto rx107_fail291
  rxcap119_done320:
    repr_bind_attr_int rx107_cur, rx107_curclass, "$!pos", rx107_pos
    $P11 = rx107_cur."escale"()
    repr_get_attr_int $I11, $P11, rx107_curclass, "$!pos"
    lt $I11, 0, rx107_fail291
    nqp_rxmark rx107_bstack, rxsubrule121_pass324, -1, 0
  rxsubrule121_pass324:
    rx107_cstack = rx107_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx107_pos, $P11, rx107_curclass, "$!pos"
    goto alt109_end298
  alt109_end298:
    rx107_cur."!cursor_pass"(rx107_pos, "dec_number", 'backtrack'=>1)
    .return (rx107_cur)
  rx107_restart290:
    repr_get_attr_obj rx107_cstack, rx107_cur, rx107_curclass, "$!cstack"
  rx107_fail291:
    unless rx107_bstack, rx107_done289
    pop $I19, rx107_bstack
    if_null rx107_cstack, rx107_cstack_done294
    unless rx107_cstack, rx107_cstack_done294
    dec $I19
    set $P11, rx107_cstack[$I19]
  rx107_cstack_done294:
    pop rx107_rep, rx107_bstack
    pop rx107_pos, rx107_bstack
    pop $I19, rx107_bstack
    lt rx107_pos, -1, rx107_done289
    lt rx107_pos, 0, rx107_fail291
    eq $I19, 0, rx107_fail291
    nqp_islist $I20, rx107_cstack
    unless $I20, rx107_jump292
    elements $I18, rx107_bstack
    le $I18, 0, rx107_cut293
    dec $I18
    set $I18, rx107_bstack[$I18]
  rx107_cut293:
    assign rx107_cstack, $I18
  rx107_jump292:
    jump $I19
  rx107_done289:
    rx107_cur."!cursor_fail"()
    .return (rx107_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_28_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 85
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx122_start
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    .local pmc rx122_curclass
    .local pmc rx122_bstack
    .local pmc rx122_cstack
    rx122_start = self."!cursor_start_all"()
    set rx122_cur, rx122_start[0]
    set rx122_tgt, rx122_start[1]
    set rx122_pos, rx122_start[2]
    set rx122_curclass, rx122_start[3]
    set rx122_bstack, rx122_start[4]
    set $I19, rx122_start[5]
    store_lex unicode:"$\x{a2}", rx122_cur
    length rx122_eos, rx122_tgt
    eq $I19, 1, rx122_restart327
    gt rx122_pos, rx122_eos, rx122_fail328
    repr_get_attr_int $I11, self, rx122_curclass, "$!from"
    ne $I11, -1, rxscan123_done334
    goto rxscan123_scan333
  rxscan123_loop332:
    inc rx122_pos
    gt rx122_pos, rx122_eos, rx122_fail328
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!from", rx122_pos
  rxscan123_scan333:
    nqp_rxmark rx122_bstack, rxscan123_loop332, rx122_pos, 0
  rxscan123_done334:
    ge rx122_pos, rx122_eos, rx122_fail328
    substr $S11, rx122_tgt, rx122_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx122_fail328
    inc rx122_pos
    nqp_rxmark rx122_bstack, rxquantr124_done336, rx122_pos, 0
  rxquantr124_loop335:
    ge rx122_pos, rx122_eos, rx122_fail328
    substr $S11, rx122_tgt, rx122_pos, 1
    index $I11, ucs4:"+-", $S11
    lt $I11, 0, rx122_fail328
    inc rx122_pos
    nqp_rxpeek $I19, rx122_bstack, rxquantr124_done336
    inc $I19
    inc $I19
    set rx122_rep, rx122_bstack[$I19]
    nqp_rxcommit rx122_bstack, rxquantr124_done336
    inc rx122_rep
  rxquantr124_done336:
    nqp_rxmark rx122_bstack, rxquantr125_done338, -1, 0
  rxquantr125_loop337:
    ge rx122_pos, rx122_eos, rx122_fail328
    is_cclass $I11, .CCLASS_NUMERIC, rx122_tgt, rx122_pos
    unless $I11, rx122_fail328
    add rx122_pos, 1
    nqp_rxpeek $I19, rx122_bstack, rxquantr125_done338
    inc $I19
    inc $I19
    set rx122_rep, rx122_bstack[$I19]
    nqp_rxcommit rx122_bstack, rxquantr125_done338
    inc rx122_rep
    nqp_rxmark rx122_bstack, rxquantr125_done338, rx122_pos, rx122_rep
    goto rxquantr125_loop337
  rxquantr125_done338:
    rx122_cur."!cursor_pass"(rx122_pos, "escale", 'backtrack'=>1)
    .return (rx122_cur)
  rx122_restart327:
    repr_get_attr_obj rx122_cstack, rx122_cur, rx122_curclass, "$!cstack"
  rx122_fail328:
    unless rx122_bstack, rx122_done326
    pop $I19, rx122_bstack
    if_null rx122_cstack, rx122_cstack_done331
    unless rx122_cstack, rx122_cstack_done331
    dec $I19
    set $P11, rx122_cstack[$I19]
  rx122_cstack_done331:
    pop rx122_rep, rx122_bstack
    pop rx122_pos, rx122_bstack
    pop $I19, rx122_bstack
    lt rx122_pos, -1, rx122_done326
    lt rx122_pos, 0, rx122_fail328
    eq $I19, 0, rx122_fail328
    nqp_islist $I20, rx122_cstack
    unless $I20, rx122_jump329
    elements $I18, rx122_bstack
    le $I18, 0, rx122_cut330
    dec $I18
    set $I18, rx122_bstack[$I18]
  rx122_cut330:
    assign rx122_cstack, $I18
  rx122_jump329:
    jump $I19
  rx122_done326:
    rx122_cur."!cursor_fail"()
    .return (rx122_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_29_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx126_start
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_curclass
    .local pmc rx126_bstack
    .local pmc rx126_cstack
    rx126_start = self."!cursor_start_all"()
    set rx126_cur, rx126_start[0]
    set rx126_tgt, rx126_start[1]
    set rx126_pos, rx126_start[2]
    set rx126_curclass, rx126_start[3]
    set rx126_bstack, rx126_start[4]
    set $I19, rx126_start[5]
    store_lex unicode:"$\x{a2}", rx126_cur
    length rx126_eos, rx126_tgt
    eq $I19, 1, rx126_restart341
    gt rx126_pos, rx126_eos, rx126_fail342
    repr_get_attr_int $I11, self, rx126_curclass, "$!from"
    ne $I11, -1, rxscan127_done348
    goto rxscan127_scan347
  rxscan127_loop346:
    inc rx126_pos
    gt rx126_pos, rx126_eos, rx126_fail342
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!from", rx126_pos
  rxscan127_scan347:
    nqp_rxmark rx126_bstack, rxscan127_loop346, rx126_pos, 0
  rxscan127_done348:
    ge rx126_pos, rx126_eos, rx126_fail342
    substr $S11, rx126_tgt, rx126_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx126_fail342
    inc rx126_pos
    ge rx126_pos, rx126_eos, rx126_fail342
    substr $S11, rx126_tgt, rx126_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx126_fail342
    inc rx126_pos
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!pos", rx126_pos
    $P11 = rx126_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx126_curclass, "$!pos"
    lt $I11, 0, rx126_fail342
    rx126_cur."!cursor_pass"(rx126_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx126_cur)
  rx126_restart341:
    repr_get_attr_obj rx126_cstack, rx126_cur, rx126_curclass, "$!cstack"
  rx126_fail342:
    unless rx126_bstack, rx126_done340
    pop $I19, rx126_bstack
    if_null rx126_cstack, rx126_cstack_done345
    unless rx126_cstack, rx126_cstack_done345
    dec $I19
    set $P11, rx126_cstack[$I19]
  rx126_cstack_done345:
    pop rx126_rep, rx126_bstack
    pop rx126_pos, rx126_bstack
    pop $I19, rx126_bstack
    lt rx126_pos, -1, rx126_done340
    lt rx126_pos, 0, rx126_fail342
    eq $I19, 0, rx126_fail342
    nqp_islist $I20, rx126_cstack
    unless $I20, rx126_jump343
    elements $I18, rx126_bstack
    le $I18, 0, rx126_cut344
    dec $I18
    set $I18, rx126_bstack[$I18]
  rx126_cut344:
    assign rx126_cstack, $I18
  rx126_jump343:
    jump $I19
  rx126_done340:
    rx126_cur."!cursor_fail"()
    .return (rx126_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx128_start
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    .local pmc rx128_curclass
    .local pmc rx128_bstack
    .local pmc rx128_cstack
    rx128_start = self."!cursor_start_all"()
    set rx128_cur, rx128_start[0]
    set rx128_tgt, rx128_start[1]
    set rx128_pos, rx128_start[2]
    set rx128_curclass, rx128_start[3]
    set rx128_bstack, rx128_start[4]
    set $I19, rx128_start[5]
    store_lex unicode:"$\x{a2}", rx128_cur
    length rx128_eos, rx128_tgt
    eq $I19, 1, rx128_restart351
    gt rx128_pos, rx128_eos, rx128_fail352
    repr_get_attr_int $I11, self, rx128_curclass, "$!from"
    ne $I11, -1, rxscan129_done358
    goto rxscan129_scan357
  rxscan129_loop356:
    inc rx128_pos
    gt rx128_pos, rx128_eos, rx128_fail352
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!from", rx128_pos
  rxscan129_scan357:
    nqp_rxmark rx128_bstack, rxscan129_loop356, rx128_pos, 0
  rxscan129_done358:
    ge rx128_pos, rx128_eos, rx128_fail352
    substr $S11, rx128_tgt, rx128_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx128_fail352
    inc rx128_pos
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail352
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail352
    nqp_rxmark rx128_bstack, rxsubrule130_pass359, -1, 0
  rxsubrule130_pass359:
    rx128_cstack = rx128_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx128_pos, $P11, rx128_curclass, "$!pos"
    rx128_cur."!cursor_pass"(rx128_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx128_cur)
  rx128_restart351:
    repr_get_attr_obj rx128_cstack, rx128_cur, rx128_curclass, "$!cstack"
  rx128_fail352:
    unless rx128_bstack, rx128_done350
    pop $I19, rx128_bstack
    if_null rx128_cstack, rx128_cstack_done355
    unless rx128_cstack, rx128_cstack_done355
    dec $I19
    set $P11, rx128_cstack[$I19]
  rx128_cstack_done355:
    pop rx128_rep, rx128_bstack
    pop rx128_pos, rx128_bstack
    pop $I19, rx128_bstack
    lt rx128_pos, -1, rx128_done350
    lt rx128_pos, 0, rx128_fail352
    eq $I19, 0, rx128_fail352
    nqp_islist $I20, rx128_cstack
    unless $I20, rx128_jump353
    elements $I18, rx128_bstack
    le $I18, 0, rx128_cut354
    dec $I18
    set $I18, rx128_bstack[$I18]
  rx128_cut354:
    assign rx128_cstack, $I18
  rx128_jump353:
    jump $I19
  rx128_done350:
    rx128_cur."!cursor_fail"()
    .return (rx128_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_32_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 91
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx131_start
    .local string rx131_tgt
    .local int rx131_pos
    .local int rx131_off
    .local int rx131_eos
    .local int rx131_rep
    .local pmc rx131_cur
    .local pmc rx131_curclass
    .local pmc rx131_bstack
    .local pmc rx131_cstack
    rx131_start = self."!cursor_start_all"()
    set rx131_cur, rx131_start[0]
    set rx131_tgt, rx131_start[1]
    set rx131_pos, rx131_start[2]
    set rx131_curclass, rx131_start[3]
    set rx131_bstack, rx131_start[4]
    set $I19, rx131_start[5]
    store_lex unicode:"$\x{a2}", rx131_cur
    length rx131_eos, rx131_tgt
    eq $I19, 1, rx131_restart362
    gt rx131_pos, rx131_eos, rx131_fail363
    repr_get_attr_int $I11, self, rx131_curclass, "$!from"
    ne $I11, -1, rxscan132_done369
    goto rxscan132_scan368
  rxscan132_loop367:
    inc rx131_pos
    gt rx131_pos, rx131_eos, rx131_fail363
    repr_bind_attr_int rx131_cur, rx131_curclass, "$!from", rx131_pos
  rxscan132_scan368:
    nqp_rxmark rx131_bstack, rxscan132_loop367, rx131_pos, 0
  rxscan132_done369:
    ge rx131_pos, rx131_eos, rx131_fail363
    substr $S11, rx131_tgt, rx131_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx131_fail363
    inc rx131_pos
    add $I11, rx131_pos, 1
    gt $I11, rx131_eos, rx131_fail363
    substr $S10, rx131_tgt, rx131_pos, 1
    ne $S10, ucs4:"b", rx131_fail363
    add rx131_pos, 1
    repr_bind_attr_int rx131_cur, rx131_curclass, "$!pos", rx131_pos
    $P11 = rx131_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx131_curclass, "$!pos"
    lt $I11, 0, rx131_fail363
    rx131_cur."!cursor_pass"(rx131_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx131_cur)
  rx131_restart362:
    repr_get_attr_obj rx131_cstack, rx131_cur, rx131_curclass, "$!cstack"
  rx131_fail363:
    unless rx131_bstack, rx131_done361
    pop $I19, rx131_bstack
    if_null rx131_cstack, rx131_cstack_done366
    unless rx131_cstack, rx131_cstack_done366
    dec $I19
    set $P11, rx131_cstack[$I19]
  rx131_cstack_done366:
    pop rx131_rep, rx131_bstack
    pop rx131_pos, rx131_bstack
    pop $I19, rx131_bstack
    lt rx131_pos, -1, rx131_done361
    lt rx131_pos, 0, rx131_fail363
    eq $I19, 0, rx131_fail363
    nqp_islist $I20, rx131_cstack
    unless $I20, rx131_jump364
    elements $I18, rx131_bstack
    le $I18, 0, rx131_cut365
    dec $I18
    set $I18, rx131_bstack[$I18]
  rx131_cut365:
    assign rx131_cstack, $I18
  rx131_jump364:
    jump $I19
  rx131_done361:
    rx131_cur."!cursor_fail"()
    .return (rx131_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_33_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 92
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx133_start
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    .local pmc rx133_curclass
    .local pmc rx133_bstack
    .local pmc rx133_cstack
    rx133_start = self."!cursor_start_all"()
    set rx133_cur, rx133_start[0]
    set rx133_tgt, rx133_start[1]
    set rx133_pos, rx133_start[2]
    set rx133_curclass, rx133_start[3]
    set rx133_bstack, rx133_start[4]
    set $I19, rx133_start[5]
    store_lex unicode:"$\x{a2}", rx133_cur
    length rx133_eos, rx133_tgt
    eq $I19, 1, rx133_restart372
    gt rx133_pos, rx133_eos, rx133_fail373
    repr_get_attr_int $I11, self, rx133_curclass, "$!from"
    ne $I11, -1, rxscan134_done379
    goto rxscan134_scan378
  rxscan134_loop377:
    inc rx133_pos
    gt rx133_pos, rx133_eos, rx133_fail373
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!from", rx133_pos
  rxscan134_scan378:
    nqp_rxmark rx133_bstack, rxscan134_loop377, rx133_pos, 0
  rxscan134_done379:
    ge rx133_pos, rx133_eos, rx133_fail373
    substr $S11, rx133_tgt, rx133_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx133_fail373
    inc rx133_pos
    add $I11, rx133_pos, 1
    gt $I11, rx133_eos, rx133_fail373
    substr $S10, rx133_tgt, rx133_pos, 1
    ne $S10, ucs4:"n", rx133_fail373
    add rx133_pos, 1
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!pos", rx133_pos
    $P11 = rx133_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx133_curclass, "$!pos"
    lt $I11, 0, rx133_fail373
    rx133_cur."!cursor_pass"(rx133_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx133_cur)
  rx133_restart372:
    repr_get_attr_obj rx133_cstack, rx133_cur, rx133_curclass, "$!cstack"
  rx133_fail373:
    unless rx133_bstack, rx133_done371
    pop $I19, rx133_bstack
    if_null rx133_cstack, rx133_cstack_done376
    unless rx133_cstack, rx133_cstack_done376
    dec $I19
    set $P11, rx133_cstack[$I19]
  rx133_cstack_done376:
    pop rx133_rep, rx133_bstack
    pop rx133_pos, rx133_bstack
    pop $I19, rx133_bstack
    lt rx133_pos, -1, rx133_done371
    lt rx133_pos, 0, rx133_fail373
    eq $I19, 0, rx133_fail373
    nqp_islist $I20, rx133_cstack
    unless $I20, rx133_jump374
    elements $I18, rx133_bstack
    le $I18, 0, rx133_cut375
    dec $I18
    set $I18, rx133_bstack[$I18]
  rx133_cut375:
    assign rx133_cstack, $I18
  rx133_jump374:
    jump $I19
  rx133_done371:
    rx133_cur."!cursor_fail"()
    .return (rx133_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_34_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx135_start
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    .local pmc rx135_curclass
    .local pmc rx135_bstack
    .local pmc rx135_cstack
    rx135_start = self."!cursor_start_all"()
    set rx135_cur, rx135_start[0]
    set rx135_tgt, rx135_start[1]
    set rx135_pos, rx135_start[2]
    set rx135_curclass, rx135_start[3]
    set rx135_bstack, rx135_start[4]
    set $I19, rx135_start[5]
    store_lex unicode:"$\x{a2}", rx135_cur
    length rx135_eos, rx135_tgt
    eq $I19, 1, rx135_restart382
    gt rx135_pos, rx135_eos, rx135_fail383
    repr_get_attr_int $I11, self, rx135_curclass, "$!from"
    ne $I11, -1, rxscan136_done389
    goto rxscan136_scan388
  rxscan136_loop387:
    inc rx135_pos
    gt rx135_pos, rx135_eos, rx135_fail383
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!from", rx135_pos
  rxscan136_scan388:
    nqp_rxmark rx135_bstack, rxscan136_loop387, rx135_pos, 0
  rxscan136_done389:
    ge rx135_pos, rx135_eos, rx135_fail383
    substr $S11, rx135_tgt, rx135_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx135_fail383
    inc rx135_pos
    add $I11, rx135_pos, 1
    gt $I11, rx135_eos, rx135_fail383
    substr $S10, rx135_tgt, rx135_pos, 1
    ne $S10, ucs4:"r", rx135_fail383
    add rx135_pos, 1
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!pos", rx135_pos
    $P11 = rx135_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx135_curclass, "$!pos"
    lt $I11, 0, rx135_fail383
    rx135_cur."!cursor_pass"(rx135_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
    .return (rx135_cur)
  rx135_restart382:
    repr_get_attr_obj rx135_cstack, rx135_cur, rx135_curclass, "$!cstack"
  rx135_fail383:
    unless rx135_bstack, rx135_done381
    pop $I19, rx135_bstack
    if_null rx135_cstack, rx135_cstack_done386
    unless rx135_cstack, rx135_cstack_done386
    dec $I19
    set $P11, rx135_cstack[$I19]
  rx135_cstack_done386:
    pop rx135_rep, rx135_bstack
    pop rx135_pos, rx135_bstack
    pop $I19, rx135_bstack
    lt rx135_pos, -1, rx135_done381
    lt rx135_pos, 0, rx135_fail383
    eq $I19, 0, rx135_fail383
    nqp_islist $I20, rx135_cstack
    unless $I20, rx135_jump384
    elements $I18, rx135_bstack
    le $I18, 0, rx135_cut385
    dec $I18
    set $I18, rx135_bstack[$I18]
  rx135_cut385:
    assign rx135_cstack, $I18
  rx135_jump384:
    jump $I19
  rx135_done381:
    rx135_cur."!cursor_fail"()
    .return (rx135_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_35_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 94
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx137_start
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_curclass
    .local pmc rx137_bstack
    .local pmc rx137_cstack
    rx137_start = self."!cursor_start_all"()
    set rx137_cur, rx137_start[0]
    set rx137_tgt, rx137_start[1]
    set rx137_pos, rx137_start[2]
    set rx137_curclass, rx137_start[3]
    set rx137_bstack, rx137_start[4]
    set $I19, rx137_start[5]
    store_lex unicode:"$\x{a2}", rx137_cur
    length rx137_eos, rx137_tgt
    eq $I19, 1, rx137_restart392
    gt rx137_pos, rx137_eos, rx137_fail393
    repr_get_attr_int $I11, self, rx137_curclass, "$!from"
    ne $I11, -1, rxscan138_done399
    goto rxscan138_scan398
  rxscan138_loop397:
    inc rx137_pos
    gt rx137_pos, rx137_eos, rx137_fail393
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!from", rx137_pos
  rxscan138_scan398:
    nqp_rxmark rx137_bstack, rxscan138_loop397, rx137_pos, 0
  rxscan138_done399:
    ge rx137_pos, rx137_eos, rx137_fail393
    substr $S11, rx137_tgt, rx137_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx137_fail393
    inc rx137_pos
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail393
    substr $S10, rx137_tgt, rx137_pos, 1
    ne $S10, ucs4:"t", rx137_fail393
    add rx137_pos, 1
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail393
    rx137_cur."!cursor_pass"(rx137_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
    .return (rx137_cur)
  rx137_restart392:
    repr_get_attr_obj rx137_cstack, rx137_cur, rx137_curclass, "$!cstack"
  rx137_fail393:
    unless rx137_bstack, rx137_done391
    pop $I19, rx137_bstack
    if_null rx137_cstack, rx137_cstack_done396
    unless rx137_cstack, rx137_cstack_done396
    dec $I19
    set $P11, rx137_cstack[$I19]
  rx137_cstack_done396:
    pop rx137_rep, rx137_bstack
    pop rx137_pos, rx137_bstack
    pop $I19, rx137_bstack
    lt rx137_pos, -1, rx137_done391
    lt rx137_pos, 0, rx137_fail393
    eq $I19, 0, rx137_fail393
    nqp_islist $I20, rx137_cstack
    unless $I20, rx137_jump394
    elements $I18, rx137_bstack
    le $I18, 0, rx137_cut395
    dec $I18
    set $I18, rx137_bstack[$I18]
  rx137_cut395:
    assign rx137_cstack, $I18
  rx137_jump394:
    jump $I19
  rx137_done391:
    rx137_cur."!cursor_fail"()
    .return (rx137_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_36_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 95
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx139_start
    .local string rx139_tgt
    .local int rx139_pos
    .local int rx139_off
    .local int rx139_eos
    .local int rx139_rep
    .local pmc rx139_cur
    .local pmc rx139_curclass
    .local pmc rx139_bstack
    .local pmc rx139_cstack
    rx139_start = self."!cursor_start_all"()
    set rx139_cur, rx139_start[0]
    set rx139_tgt, rx139_start[1]
    set rx139_pos, rx139_start[2]
    set rx139_curclass, rx139_start[3]
    set rx139_bstack, rx139_start[4]
    set $I19, rx139_start[5]
    store_lex unicode:"$\x{a2}", rx139_cur
    length rx139_eos, rx139_tgt
    eq $I19, 1, rx139_restart402
    gt rx139_pos, rx139_eos, rx139_fail403
    repr_get_attr_int $I11, self, rx139_curclass, "$!from"
    ne $I11, -1, rxscan140_done409
    goto rxscan140_scan408
  rxscan140_loop407:
    inc rx139_pos
    gt rx139_pos, rx139_eos, rx139_fail403
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!from", rx139_pos
  rxscan140_scan408:
    nqp_rxmark rx139_bstack, rxscan140_loop407, rx139_pos, 0
  rxscan140_done409:
    ge rx139_pos, rx139_eos, rx139_fail403
    substr $S11, rx139_tgt, rx139_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx139_fail403
    inc rx139_pos
    add $I11, rx139_pos, 1
    gt $I11, rx139_eos, rx139_fail403
    substr $S10, rx139_tgt, rx139_pos, 1
    ne $S10, ucs4:"f", rx139_fail403
    add rx139_pos, 1
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!pos", rx139_pos
    $P11 = rx139_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx139_curclass, "$!pos"
    lt $I11, 0, rx139_fail403
    rx139_cur."!cursor_pass"(rx139_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
    .return (rx139_cur)
  rx139_restart402:
    repr_get_attr_obj rx139_cstack, rx139_cur, rx139_curclass, "$!cstack"
  rx139_fail403:
    unless rx139_bstack, rx139_done401
    pop $I19, rx139_bstack
    if_null rx139_cstack, rx139_cstack_done406
    unless rx139_cstack, rx139_cstack_done406
    dec $I19
    set $P11, rx139_cstack[$I19]
  rx139_cstack_done406:
    pop rx139_rep, rx139_bstack
    pop rx139_pos, rx139_bstack
    pop $I19, rx139_bstack
    lt rx139_pos, -1, rx139_done401
    lt rx139_pos, 0, rx139_fail403
    eq $I19, 0, rx139_fail403
    nqp_islist $I20, rx139_cstack
    unless $I20, rx139_jump404
    elements $I18, rx139_bstack
    le $I18, 0, rx139_cut405
    dec $I18
    set $I18, rx139_bstack[$I18]
  rx139_cut405:
    assign rx139_cstack, $I18
  rx139_jump404:
    jump $I19
  rx139_done401:
    rx139_cur."!cursor_fail"()
    .return (rx139_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_37_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 96
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx141_start
    .local string rx141_tgt
    .local int rx141_pos
    .local int rx141_off
    .local int rx141_eos
    .local int rx141_rep
    .local pmc rx141_cur
    .local pmc rx141_curclass
    .local pmc rx141_bstack
    .local pmc rx141_cstack
    rx141_start = self."!cursor_start_all"()
    set rx141_cur, rx141_start[0]
    set rx141_tgt, rx141_start[1]
    set rx141_pos, rx141_start[2]
    set rx141_curclass, rx141_start[3]
    set rx141_bstack, rx141_start[4]
    set $I19, rx141_start[5]
    store_lex unicode:"$\x{a2}", rx141_cur
    length rx141_eos, rx141_tgt
    eq $I19, 1, rx141_restart412
    gt rx141_pos, rx141_eos, rx141_fail413
    repr_get_attr_int $I11, self, rx141_curclass, "$!from"
    ne $I11, -1, rxscan142_done419
    goto rxscan142_scan418
  rxscan142_loop417:
    inc rx141_pos
    gt rx141_pos, rx141_eos, rx141_fail413
    repr_bind_attr_int rx141_cur, rx141_curclass, "$!from", rx141_pos
  rxscan142_scan418:
    nqp_rxmark rx141_bstack, rxscan142_loop417, rx141_pos, 0
  rxscan142_done419:
    ge rx141_pos, rx141_eos, rx141_fail413
    substr $S11, rx141_tgt, rx141_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx141_fail413
    inc rx141_pos
    add $I11, rx141_pos, 1
    gt $I11, rx141_eos, rx141_fail413
    substr $S10, rx141_tgt, rx141_pos, 1
    ne $S10, ucs4:"e", rx141_fail413
    add rx141_pos, 1
    repr_bind_attr_int rx141_cur, rx141_curclass, "$!pos", rx141_pos
    $P11 = rx141_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx141_curclass, "$!pos"
    lt $I11, 0, rx141_fail413
    rx141_cur."!cursor_pass"(rx141_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
    .return (rx141_cur)
  rx141_restart412:
    repr_get_attr_obj rx141_cstack, rx141_cur, rx141_curclass, "$!cstack"
  rx141_fail413:
    unless rx141_bstack, rx141_done411
    pop $I19, rx141_bstack
    if_null rx141_cstack, rx141_cstack_done416
    unless rx141_cstack, rx141_cstack_done416
    dec $I19
    set $P11, rx141_cstack[$I19]
  rx141_cstack_done416:
    pop rx141_rep, rx141_bstack
    pop rx141_pos, rx141_bstack
    pop $I19, rx141_bstack
    lt rx141_pos, -1, rx141_done411
    lt rx141_pos, 0, rx141_fail413
    eq $I19, 0, rx141_fail413
    nqp_islist $I20, rx141_cstack
    unless $I20, rx141_jump414
    elements $I18, rx141_bstack
    le $I18, 0, rx141_cut415
    dec $I18
    set $I18, rx141_bstack[$I18]
  rx141_cut415:
    assign rx141_cstack, $I18
  rx141_jump414:
    jump $I19
  rx141_done411:
    rx141_cur."!cursor_fail"()
    .return (rx141_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_38_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 97
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx143_start
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_curclass
    .local pmc rx143_bstack
    .local pmc rx143_cstack
    rx143_start = self."!cursor_start_all"()
    set rx143_cur, rx143_start[0]
    set rx143_tgt, rx143_start[1]
    set rx143_pos, rx143_start[2]
    set rx143_curclass, rx143_start[3]
    set rx143_bstack, rx143_start[4]
    set $I19, rx143_start[5]
    store_lex unicode:"$\x{a2}", rx143_cur
    length rx143_eos, rx143_tgt
    eq $I19, 1, rx143_restart422
    gt rx143_pos, rx143_eos, rx143_fail423
    repr_get_attr_int $I11, self, rx143_curclass, "$!from"
    ne $I11, -1, rxscan144_done429
    goto rxscan144_scan428
  rxscan144_loop427:
    inc rx143_pos
    gt rx143_pos, rx143_eos, rx143_fail423
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!from", rx143_pos
  rxscan144_scan428:
    nqp_rxmark rx143_bstack, rxscan144_loop427, rx143_pos, 0
  rxscan144_done429:
    ge rx143_pos, rx143_eos, rx143_fail423
    substr $S11, rx143_tgt, rx143_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx143_fail423
    inc rx143_pos
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail423
    substr $S10, rx143_tgt, rx143_pos, 1
    ne $S10, ucs4:"x", rx143_fail423
    add rx143_pos, 1
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail423
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt145_0431
    nqp_push_label $P11, alt145_1433
    nqp_rxmark rx143_bstack, alt145_end430, -1, 0
    rx143_cur."!alt"(rx143_pos, "alt_nfa__6_1382292147.22077", $P11)
    goto rx143_fail423
  alt145_0431:
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail423
    nqp_rxmark rx143_bstack, rxsubrule146_pass432, -1, 0
  rxsubrule146_pass432:
    rx143_cstack = rx143_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx143_pos, $P11, rx143_curclass, "$!pos"
    goto alt145_end430
  alt145_1433:
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail423
    substr $S10, rx143_tgt, rx143_pos, 1
    ne $S10, ucs4:"[", rx143_fail423
    add rx143_pos, 1
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail423
    nqp_rxmark rx143_bstack, rxsubrule147_pass434, -1, 0
  rxsubrule147_pass434:
    rx143_cstack = rx143_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx143_pos, $P11, rx143_curclass, "$!pos"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail423
    substr $S10, rx143_tgt, rx143_pos, 1
    ne $S10, ucs4:"]", rx143_fail423
    add rx143_pos, 1
    goto alt145_end430
  alt145_end430:
    nqp_rxcommit rx143_bstack, alt145_end430
    rx143_cur."!cursor_pass"(rx143_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
    .return (rx143_cur)
  rx143_restart422:
    repr_get_attr_obj rx143_cstack, rx143_cur, rx143_curclass, "$!cstack"
  rx143_fail423:
    unless rx143_bstack, rx143_done421
    pop $I19, rx143_bstack
    if_null rx143_cstack, rx143_cstack_done426
    unless rx143_cstack, rx143_cstack_done426
    dec $I19
    set $P11, rx143_cstack[$I19]
  rx143_cstack_done426:
    pop rx143_rep, rx143_bstack
    pop rx143_pos, rx143_bstack
    pop $I19, rx143_bstack
    lt rx143_pos, -1, rx143_done421
    lt rx143_pos, 0, rx143_fail423
    eq $I19, 0, rx143_fail423
    nqp_islist $I20, rx143_cstack
    unless $I20, rx143_jump424
    elements $I18, rx143_bstack
    le $I18, 0, rx143_cut425
    dec $I18
    set $I18, rx143_bstack[$I18]
  rx143_cut425:
    assign rx143_cstack, $I18
  rx143_jump424:
    jump $I19
  rx143_done421:
    rx143_cur."!cursor_fail"()
    .return (rx143_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_39_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx148_start
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    .local pmc rx148_curclass
    .local pmc rx148_bstack
    .local pmc rx148_cstack
    rx148_start = self."!cursor_start_all"()
    set rx148_cur, rx148_start[0]
    set rx148_tgt, rx148_start[1]
    set rx148_pos, rx148_start[2]
    set rx148_curclass, rx148_start[3]
    set rx148_bstack, rx148_start[4]
    set $I19, rx148_start[5]
    store_lex unicode:"$\x{a2}", rx148_cur
    length rx148_eos, rx148_tgt
    eq $I19, 1, rx148_restart437
    gt rx148_pos, rx148_eos, rx148_fail438
    repr_get_attr_int $I11, self, rx148_curclass, "$!from"
    ne $I11, -1, rxscan149_done444
    goto rxscan149_scan443
  rxscan149_loop442:
    inc rx148_pos
    gt rx148_pos, rx148_eos, rx148_fail438
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!from", rx148_pos
  rxscan149_scan443:
    nqp_rxmark rx148_bstack, rxscan149_loop442, rx148_pos, 0
  rxscan149_done444:
    ge rx148_pos, rx148_eos, rx148_fail438
    substr $S11, rx148_tgt, rx148_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx148_fail438
    inc rx148_pos
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail438
    substr $S10, rx148_tgt, rx148_pos, 1
    ne $S10, ucs4:"o", rx148_fail438
    add rx148_pos, 1
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!pos", rx148_pos
    $P11 = rx148_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx148_curclass, "$!pos"
    lt $I11, 0, rx148_fail438
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt150_0446
    nqp_push_label $P11, alt150_1448
    nqp_rxmark rx148_bstack, alt150_end445, -1, 0
    rx148_cur."!alt"(rx148_pos, "alt_nfa__7_1382292147.23499", $P11)
    goto rx148_fail438
  alt150_0446:
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!pos", rx148_pos
    $P11 = rx148_cur."octint"()
    repr_get_attr_int $I11, $P11, rx148_curclass, "$!pos"
    lt $I11, 0, rx148_fail438
    nqp_rxmark rx148_bstack, rxsubrule151_pass447, -1, 0
  rxsubrule151_pass447:
    rx148_cstack = rx148_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx148_pos, $P11, rx148_curclass, "$!pos"
    goto alt150_end445
  alt150_1448:
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail438
    substr $S10, rx148_tgt, rx148_pos, 1
    ne $S10, ucs4:"[", rx148_fail438
    add rx148_pos, 1
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!pos", rx148_pos
    $P11 = rx148_cur."octints"()
    repr_get_attr_int $I11, $P11, rx148_curclass, "$!pos"
    lt $I11, 0, rx148_fail438
    nqp_rxmark rx148_bstack, rxsubrule152_pass449, -1, 0
  rxsubrule152_pass449:
    rx148_cstack = rx148_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx148_pos, $P11, rx148_curclass, "$!pos"
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail438
    substr $S10, rx148_tgt, rx148_pos, 1
    ne $S10, ucs4:"]", rx148_fail438
    add rx148_pos, 1
    goto alt150_end445
  alt150_end445:
    nqp_rxcommit rx148_bstack, alt150_end445
    rx148_cur."!cursor_pass"(rx148_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx148_cur)
  rx148_restart437:
    repr_get_attr_obj rx148_cstack, rx148_cur, rx148_curclass, "$!cstack"
  rx148_fail438:
    unless rx148_bstack, rx148_done436
    pop $I19, rx148_bstack
    if_null rx148_cstack, rx148_cstack_done441
    unless rx148_cstack, rx148_cstack_done441
    dec $I19
    set $P11, rx148_cstack[$I19]
  rx148_cstack_done441:
    pop rx148_rep, rx148_bstack
    pop rx148_pos, rx148_bstack
    pop $I19, rx148_bstack
    lt rx148_pos, -1, rx148_done436
    lt rx148_pos, 0, rx148_fail438
    eq $I19, 0, rx148_fail438
    nqp_islist $I20, rx148_cstack
    unless $I20, rx148_jump439
    elements $I18, rx148_bstack
    le $I18, 0, rx148_cut440
    dec $I18
    set $I18, rx148_bstack[$I18]
  rx148_cut440:
    assign rx148_cstack, $I18
  rx148_jump439:
    jump $I19
  rx148_done436:
    rx148_cur."!cursor_fail"()
    .return (rx148_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_40_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx153_start
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    .local pmc rx153_curclass
    .local pmc rx153_bstack
    .local pmc rx153_cstack
    rx153_start = self."!cursor_start_all"()
    set rx153_cur, rx153_start[0]
    set rx153_tgt, rx153_start[1]
    set rx153_pos, rx153_start[2]
    set rx153_curclass, rx153_start[3]
    set rx153_bstack, rx153_start[4]
    set $I19, rx153_start[5]
    store_lex unicode:"$\x{a2}", rx153_cur
    length rx153_eos, rx153_tgt
    eq $I19, 1, rx153_restart452
    gt rx153_pos, rx153_eos, rx153_fail453
    repr_get_attr_int $I11, self, rx153_curclass, "$!from"
    ne $I11, -1, rxscan154_done459
    goto rxscan154_scan458
  rxscan154_loop457:
    inc rx153_pos
    gt rx153_pos, rx153_eos, rx153_fail453
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!from", rx153_pos
  rxscan154_scan458:
    nqp_rxmark rx153_bstack, rxscan154_loop457, rx153_pos, 0
  rxscan154_done459:
    ge rx153_pos, rx153_eos, rx153_fail453
    substr $S11, rx153_tgt, rx153_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx153_fail453
    inc rx153_pos
    add $I11, rx153_pos, 1
    gt $I11, rx153_eos, rx153_fail453
    substr $S10, rx153_tgt, rx153_pos, 1
    ne $S10, ucs4:"c", rx153_fail453
    add rx153_pos, 1
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail453
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail453
    nqp_rxmark rx153_bstack, rxsubrule155_pass460, -1, 0
  rxsubrule155_pass460:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    rx153_cur."!cursor_pass"(rx153_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx153_cur)
  rx153_restart452:
    repr_get_attr_obj rx153_cstack, rx153_cur, rx153_curclass, "$!cstack"
  rx153_fail453:
    unless rx153_bstack, rx153_done451
    pop $I19, rx153_bstack
    if_null rx153_cstack, rx153_cstack_done456
    unless rx153_cstack, rx153_cstack_done456
    dec $I19
    set $P11, rx153_cstack[$I19]
  rx153_cstack_done456:
    pop rx153_rep, rx153_bstack
    pop rx153_pos, rx153_bstack
    pop $I19, rx153_bstack
    lt rx153_pos, -1, rx153_done451
    lt rx153_pos, 0, rx153_fail453
    eq $I19, 0, rx153_fail453
    nqp_islist $I20, rx153_cstack
    unless $I20, rx153_jump454
    elements $I18, rx153_bstack
    le $I18, 0, rx153_cut455
    dec $I18
    set $I18, rx153_bstack[$I18]
  rx153_cut455:
    assign rx153_cstack, $I18
  rx153_jump454:
    jump $I19
  rx153_done451:
    rx153_cur."!cursor_fail"()
    .return (rx153_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_41_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 106
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx156_start
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_curclass
    .local pmc rx156_bstack
    .local pmc rx156_cstack
    rx156_start = self."!cursor_start_all"()
    set rx156_cur, rx156_start[0]
    set rx156_tgt, rx156_start[1]
    set rx156_pos, rx156_start[2]
    set rx156_curclass, rx156_start[3]
    set rx156_bstack, rx156_start[4]
    set $I19, rx156_start[5]
    store_lex unicode:"$\x{a2}", rx156_cur
    length rx156_eos, rx156_tgt
    eq $I19, 1, rx156_restart463
    gt rx156_pos, rx156_eos, rx156_fail464
    repr_get_attr_int $I11, self, rx156_curclass, "$!from"
    ne $I11, -1, rxscan157_done470
    goto rxscan157_scan469
  rxscan157_loop468:
    inc rx156_pos
    gt rx156_pos, rx156_eos, rx156_fail464
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!from", rx156_pos
  rxscan157_scan469:
    nqp_rxmark rx156_bstack, rxscan157_loop468, rx156_pos, 0
  rxscan157_done470:
    ge rx156_pos, rx156_eos, rx156_fail464
    substr $S11, rx156_tgt, rx156_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx156_fail464
    inc rx156_pos
    nqp_rxmark rx156_bstack, rxcap158_fail472, rx156_pos, 0
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail464
    substr $S10, rx156_tgt, rx156_pos, 1
    ne $S10, ucs4:"0", rx156_fail464
    add rx156_pos, 1
    nqp_rxpeek $I19, rx156_bstack, rxcap158_fail472
    inc $I19
    set $I11, rx156_bstack[$I19]
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!pos", rx156_pos
    $P11 = rx156_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx156_pos)
    rx156_cstack = rx156_cur."!cursor_capture"($P11, "sym")
    goto rxcap158_done471
  rxcap158_fail472:
    goto rx156_fail464
  rxcap158_done471:
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!pos", rx156_pos
    $P11 = rx156_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx156_curclass, "$!pos"
    lt $I11, 0, rx156_fail464
    rx156_cur."!cursor_pass"(rx156_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx156_cur)
  rx156_restart463:
    repr_get_attr_obj rx156_cstack, rx156_cur, rx156_curclass, "$!cstack"
  rx156_fail464:
    unless rx156_bstack, rx156_done462
    pop $I19, rx156_bstack
    if_null rx156_cstack, rx156_cstack_done467
    unless rx156_cstack, rx156_cstack_done467
    dec $I19
    set $P11, rx156_cstack[$I19]
  rx156_cstack_done467:
    pop rx156_rep, rx156_bstack
    pop rx156_pos, rx156_bstack
    pop $I19, rx156_bstack
    lt rx156_pos, -1, rx156_done462
    lt rx156_pos, 0, rx156_fail464
    eq $I19, 0, rx156_fail464
    nqp_islist $I20, rx156_cstack
    unless $I20, rx156_jump465
    elements $I18, rx156_bstack
    le $I18, 0, rx156_cut466
    dec $I18
    set $I18, rx156_bstack[$I18]
  rx156_cut466:
    assign rx156_cstack, $I18
  rx156_jump465:
    jump $I19
  rx156_done462:
    rx156_cur."!cursor_fail"()
    .return (rx156_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_42_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_233_1382292146.58822' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_43_1382292146.58822' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1382292146.58822' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_234_1382292146.58822' 
    capture_lex $P5009 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx159_start
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    .local pmc rx159_curclass
    .local pmc rx159_bstack
    .local pmc rx159_cstack
    rx159_start = self."!cursor_start_all"()
    set rx159_cur, rx159_start[0]
    set rx159_tgt, rx159_start[1]
    set rx159_pos, rx159_start[2]
    set rx159_curclass, rx159_start[3]
    set rx159_bstack, rx159_start[4]
    set $I19, rx159_start[5]
    store_lex unicode:"$\x{a2}", rx159_cur
    length rx159_eos, rx159_tgt
    eq $I19, 1, rx159_restart475
    gt rx159_pos, rx159_eos, rx159_fail476
    repr_get_attr_int $I11, self, rx159_curclass, "$!from"
    ne $I11, -1, rxscan160_done482
    goto rxscan160_scan481
  rxscan160_loop480:
    inc rx159_pos
    gt rx159_pos, rx159_eos, rx159_fail476
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!from", rx159_pos
  rxscan160_scan481:
    nqp_rxmark rx159_bstack, rxscan160_loop480, rx159_pos, 0
  rxscan160_done482:
    ge rx159_pos, rx159_eos, rx159_fail476
    substr $S11, rx159_tgt, rx159_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx159_fail476
    inc rx159_pos
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    store_lex unicode:"$\x{a2}", rx159_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_233_1382292146.58822' 
    capture_lex $P5002
    $P5003 = $P5002()
  alt161_0484:
    nqp_rxmark rx159_bstack, alt161_1513, rx159_pos, 0
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx159_curclass, "$!pos"
    lt $I11, 0, rx159_fail476
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt162_0486
    nqp_push_label $P11, alt162_1498
    nqp_rxmark rx159_bstack, alt162_end485, -1, 0
    rx159_cur."!alt"(rx159_pos, "alt_nfa__8_1382292147.27845", $P11)
    goto rx159_fail476
  alt162_0486:
    .const 'Sub' $P5004 = 'cuid_43_1382292146.58822' 
    capture_lex $P5004
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx159_curclass, "$!pos"
    lt $I11, 0, rx159_fail476
    nqp_rxmark rx159_bstack, rxsubrule165_pass497, -1, 0
  rxsubrule165_pass497:
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx159_pos, $P11, rx159_curclass, "$!pos"
    goto alt162_end485
  alt162_1498:
    .const 'Sub' $P5005 = 'cuid_44_1382292146.58822' 
    capture_lex $P5005
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx159_curclass, "$!pos"
    lt $I11, 0, rx159_fail476
    nqp_rxmark rx159_bstack, rxsubrule168_pass509, -1, 0
  rxsubrule168_pass509:
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx159_pos, $P11, rx159_curclass, "$!pos"
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    store_lex unicode:"$\x{a2}", rx159_cur
    $P5006 = $P101."MATCH"()
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_234_1382292146.58822' 
    capture_lex $P5007
    $P5008 = $P5007()
    goto alt162_end485
  alt162_end485:
    nqp_rxcommit rx159_bstack, alt162_end485
    goto alt161_end483
  alt161_1513:
    nqp_rxmark rx159_bstack, rxcap171_fail515, rx159_pos, 0
    ge rx159_pos, rx159_eos, rx159_fail476
    add rx159_pos, 1
    nqp_rxpeek $I19, rx159_bstack, rxcap171_fail515
    inc $I19
    set $I11, rx159_bstack[$I19]
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx159_pos)
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "textq")
    goto rxcap171_done514
  rxcap171_fail515:
    goto rx159_fail476
  rxcap171_done514:
  alt161_end483:
    rx159_cur."!cursor_pass"(rx159_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx159_cur)
  rx159_restart475:
    repr_get_attr_obj rx159_cstack, rx159_cur, rx159_curclass, "$!cstack"
  rx159_fail476:
    unless rx159_bstack, rx159_done474
    pop $I19, rx159_bstack
    if_null rx159_cstack, rx159_cstack_done479
    unless rx159_cstack, rx159_cstack_done479
    dec $I19
    set $P11, rx159_cstack[$I19]
  rx159_cstack_done479:
    pop rx159_rep, rx159_bstack
    pop rx159_pos, rx159_bstack
    pop $I19, rx159_bstack
    lt rx159_pos, -1, rx159_done474
    lt rx159_pos, 0, rx159_fail476
    eq $I19, 0, rx159_fail476
    nqp_islist $I20, rx159_cstack
    unless $I20, rx159_jump477
    elements $I18, rx159_bstack
    le $I18, 0, rx159_cut478
    dec $I18
    set $I18, rx159_bstack[$I18]
  rx159_cut478:
    assign rx159_cstack, $I18
  rx159_jump477:
    jump $I19
  rx159_done474:
    rx159_cur."!cursor_fail"()
    .return (rx159_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1382292146.58822") :anon :lex :outer("cuid_42_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1382292146.58822") :anon :lex :outer("cuid_42_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx163_start
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    .local pmc rx163_curclass
    .local pmc rx163_bstack
    .local pmc rx163_cstack
    rx163_start = self."!cursor_start_all"()
    set rx163_cur, rx163_start[0]
    set rx163_tgt, rx163_start[1]
    set rx163_pos, rx163_start[2]
    set rx163_curclass, rx163_start[3]
    set rx163_bstack, rx163_start[4]
    set $I19, rx163_start[5]
    store_lex unicode:"$\x{a2}", rx163_cur
    length rx163_eos, rx163_tgt
    eq $I19, 1, rx163_restart489
    gt rx163_pos, rx163_eos, rx163_fail490
    repr_get_attr_int $I11, self, rx163_curclass, "$!from"
    ne $I11, -1, rxscan164_done496
    goto rxscan164_scan495
  rxscan164_loop494:
    inc rx163_pos
    gt rx163_pos, rx163_eos, rx163_fail490
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!from", rx163_pos
  rxscan164_scan495:
    nqp_rxmark rx163_bstack, rxscan164_loop494, rx163_pos, 0
  rxscan164_done496:
    ge rx163_pos, rx163_eos, rx163_fail490
    is_cclass $I11, .CCLASS_WORD, rx163_tgt, rx163_pos
    if $I11, rx163_fail490
    add rx163_pos, 1
    rx163_cur."!cursor_pass"(rx163_pos, 'backtrack'=>1)
    .return (rx163_cur)
  rx163_restart489:
    repr_get_attr_obj rx163_cstack, rx163_cur, rx163_curclass, "$!cstack"
  rx163_fail490:
    unless rx163_bstack, rx163_done488
    pop $I19, rx163_bstack
    if_null rx163_cstack, rx163_cstack_done493
    unless rx163_cstack, rx163_cstack_done493
    dec $I19
    set $P11, rx163_cstack[$I19]
  rx163_cstack_done493:
    pop rx163_rep, rx163_bstack
    pop rx163_pos, rx163_bstack
    pop $I19, rx163_bstack
    lt rx163_pos, -1, rx163_done488
    lt rx163_pos, 0, rx163_fail490
    eq $I19, 0, rx163_fail490
    nqp_islist $I20, rx163_cstack
    unless $I20, rx163_jump491
    elements $I18, rx163_bstack
    le $I18, 0, rx163_cut492
    dec $I18
    set $I18, rx163_bstack[$I18]
  rx163_cut492:
    assign rx163_cstack, $I18
  rx163_jump491:
    jump $I19
  rx163_done488:
    rx163_cur."!cursor_fail"()
    .return (rx163_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_44_1382292146.58822") :anon :lex :outer("cuid_42_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx166_start
    .local string rx166_tgt
    .local int rx166_pos
    .local int rx166_off
    .local int rx166_eos
    .local int rx166_rep
    .local pmc rx166_cur
    .local pmc rx166_curclass
    .local pmc rx166_bstack
    .local pmc rx166_cstack
    rx166_start = self."!cursor_start_all"()
    set rx166_cur, rx166_start[0]
    set rx166_tgt, rx166_start[1]
    set rx166_pos, rx166_start[2]
    set rx166_curclass, rx166_start[3]
    set rx166_bstack, rx166_start[4]
    set $I19, rx166_start[5]
    store_lex unicode:"$\x{a2}", rx166_cur
    length rx166_eos, rx166_tgt
    eq $I19, 1, rx166_restart501
    gt rx166_pos, rx166_eos, rx166_fail502
    repr_get_attr_int $I11, self, rx166_curclass, "$!from"
    ne $I11, -1, rxscan167_done508
    goto rxscan167_scan507
  rxscan167_loop506:
    inc rx166_pos
    gt rx166_pos, rx166_eos, rx166_fail502
    repr_bind_attr_int rx166_cur, rx166_curclass, "$!from", rx166_pos
  rxscan167_scan507:
    nqp_rxmark rx166_bstack, rxscan167_loop506, rx166_pos, 0
  rxscan167_done508:
    ge rx166_pos, rx166_eos, rx166_fail502
    is_cclass $I11, .CCLASS_WORD, rx166_tgt, rx166_pos
    unless $I11, rx166_fail502
    add rx166_pos, 1
    rx166_cur."!cursor_pass"(rx166_pos, 'backtrack'=>1)
    .return (rx166_cur)
  rx166_restart501:
    repr_get_attr_obj rx166_cstack, rx166_cur, rx166_curclass, "$!cstack"
  rx166_fail502:
    unless rx166_bstack, rx166_done500
    pop $I19, rx166_bstack
    if_null rx166_cstack, rx166_cstack_done505
    unless rx166_cstack, rx166_cstack_done505
    dec $I19
    set $P11, rx166_cstack[$I19]
  rx166_cstack_done505:
    pop rx166_rep, rx166_bstack
    pop rx166_pos, rx166_bstack
    pop $I19, rx166_bstack
    lt rx166_pos, -1, rx166_done500
    lt rx166_pos, 0, rx166_fail502
    eq $I19, 0, rx166_fail502
    nqp_islist $I20, rx166_cstack
    unless $I20, rx166_jump503
    elements $I18, rx166_bstack
    le $I18, 0, rx166_cut504
    dec $I18
    set $I18, rx166_bstack[$I18]
  rx166_cut504:
    assign rx166_cstack, $I18
  rx166_jump503:
    jump $I19
  rx166_done500:
    rx166_cur."!cursor_fail"()
    .return (rx166_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1382292146.58822") :anon :lex :outer("cuid_42_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 113
    .local pmc fb_tmp_1 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$/"
    set fb_tmp_1, $P5003
    repr_defined $I5001, fb_tmp_1
    unless $I5001 goto if169_else510 
    set $P5004, fb_tmp_1[0]
    set $P5006, $P5004
    goto if169_end511
  if169_else510:
    null $P5005
    set $P5006, $P5005
  if169_end511:
    unless_null $P5006, vivi_170512
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5006, $P5007
  vivi_170512:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_46_1382292146.58822' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx172_start
    .local string rx172_tgt
    .local int rx172_pos
    .local int rx172_off
    .local int rx172_eos
    .local int rx172_rep
    .local pmc rx172_cur
    .local pmc rx172_curclass
    .local pmc rx172_bstack
    .local pmc rx172_cstack
    rx172_start = self."!cursor_start_all"()
    set rx172_cur, rx172_start[0]
    set rx172_tgt, rx172_start[1]
    set rx172_pos, rx172_start[2]
    set rx172_curclass, rx172_start[3]
    set rx172_bstack, rx172_start[4]
    set $I19, rx172_start[5]
    store_lex unicode:"$\x{a2}", rx172_cur
    length rx172_eos, rx172_tgt
    eq $I19, 1, rx172_restart518
    gt rx172_pos, rx172_eos, rx172_fail519
    repr_get_attr_int $I11, self, rx172_curclass, "$!from"
    ne $I11, -1, rxscan173_done525
    goto rxscan173_scan524
  rxscan173_loop523:
    inc rx172_pos
    gt rx172_pos, rx172_eos, rx172_fail519
    repr_bind_attr_int rx172_cur, rx172_curclass, "$!from", rx172_pos
  rxscan173_scan524:
    nqp_rxmark rx172_bstack, rxscan173_loop523, rx172_pos, 0
  rxscan173_done525:
  alt174_0527:
    nqp_rxmark rx172_bstack, alt174_1529, rx172_pos, 0
    repr_bind_attr_int rx172_cur, rx172_curclass, "$!pos", rx172_pos
    $P11 = rx172_cur."integer"()
    repr_get_attr_int $I11, $P11, rx172_curclass, "$!pos"
    lt $I11, 0, rx172_fail519
    nqp_rxmark rx172_bstack, rxsubrule175_pass528, -1, 0
  rxsubrule175_pass528:
    rx172_cstack = rx172_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx172_pos, $P11, rx172_curclass, "$!pos"
    goto alt174_end526
  alt174_1529:
    ge rx172_pos, rx172_eos, rx172_fail519
    substr $S11, rx172_tgt, rx172_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx172_fail519
    inc rx172_pos
    set rx172_rep, 0
    nqp_rxmark rx172_bstack, rxquantf176_loop530, rx172_pos, rx172_rep
    goto rxquantf176_done531
  rxquantf176_loop530:
    set $I12, rx172_rep
    ge rx172_pos, rx172_eos, rx172_fail519
    substr $S11, rx172_tgt, rx172_pos, 1
    index $I11, ucs4:"],#", $S11
    ge $I11, 0, rx172_fail519
    inc rx172_pos
    set rx172_rep, $I12
    inc rx172_rep
    nqp_rxmark rx172_bstack, rxquantf176_loop530, rx172_pos, rx172_rep
  rxquantf176_done531:
    ge rx172_pos, rx172_eos, rx172_fail519
    substr $S11, rx172_tgt, rx172_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx172_fail519
    inc rx172_pos
    .const 'Sub' $P5001 = 'cuid_46_1382292146.58822' 
    capture_lex $P5001
    repr_bind_attr_int rx172_cur, rx172_curclass, "$!pos", rx172_pos
    $P11 = rx172_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx172_curclass, "$!pos"
    lt $I11, 0, rx172_fail519
  alt174_end526:
    rx172_cur."!cursor_pass"(rx172_pos, "charname", 'backtrack'=>1)
    .return (rx172_cur)
  rx172_restart518:
    repr_get_attr_obj rx172_cstack, rx172_cur, rx172_curclass, "$!cstack"
  rx172_fail519:
    unless rx172_bstack, rx172_done517
    pop $I19, rx172_bstack
    if_null rx172_cstack, rx172_cstack_done522
    unless rx172_cstack, rx172_cstack_done522
    dec $I19
    set $P11, rx172_cstack[$I19]
  rx172_cstack_done522:
    pop rx172_rep, rx172_bstack
    pop rx172_pos, rx172_bstack
    pop $I19, rx172_bstack
    lt rx172_pos, -1, rx172_done517
    lt rx172_pos, 0, rx172_fail519
    eq $I19, 0, rx172_fail519
    nqp_islist $I20, rx172_cstack
    unless $I20, rx172_jump520
    elements $I18, rx172_bstack
    le $I18, 0, rx172_cut521
    dec $I18
    set $I18, rx172_bstack[$I18]
  rx172_cut521:
    assign rx172_cstack, $I18
  rx172_jump520:
    jump $I19
  rx172_done517:
    rx172_cur."!cursor_fail"()
    .return (rx172_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_46_1382292146.58822") :anon :lex :outer("cuid_45_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx177_start
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    .local pmc rx177_curclass
    .local pmc rx177_bstack
    .local pmc rx177_cstack
    rx177_start = self."!cursor_start_all"()
    set rx177_cur, rx177_start[0]
    set rx177_tgt, rx177_start[1]
    set rx177_pos, rx177_start[2]
    set rx177_curclass, rx177_start[3]
    set rx177_bstack, rx177_start[4]
    set $I19, rx177_start[5]
    store_lex unicode:"$\x{a2}", rx177_cur
    length rx177_eos, rx177_tgt
    eq $I19, 1, rx177_restart535
    gt rx177_pos, rx177_eos, rx177_fail536
    repr_get_attr_int $I11, self, rx177_curclass, "$!from"
    ne $I11, -1, rxscan178_done542
    goto rxscan178_scan541
  rxscan178_loop540:
    inc rx177_pos
    gt rx177_pos, rx177_eos, rx177_fail536
    repr_bind_attr_int rx177_cur, rx177_curclass, "$!from", rx177_pos
  rxscan178_scan541:
    nqp_rxmark rx177_bstack, rxscan178_loop540, rx177_pos, 0
  rxscan178_done542:
    nqp_rxmark rx177_bstack, rxquantr179_done544, rx177_pos, 0
  rxquantr179_loop543:
    ge rx177_pos, rx177_eos, rx177_fail536
    is_cclass $I11, .CCLASS_WHITESPACE, rx177_tgt, rx177_pos
    unless $I11, rx177_fail536
    add rx177_pos, 1
    nqp_rxpeek $I19, rx177_bstack, rxquantr179_done544
    inc $I19
    inc $I19
    set rx177_rep, rx177_bstack[$I19]
    nqp_rxcommit rx177_bstack, rxquantr179_done544
    inc rx177_rep
    nqp_rxmark rx177_bstack, rxquantr179_done544, rx177_pos, rx177_rep
    goto rxquantr179_loop543
  rxquantr179_done544:
    ge rx177_pos, rx177_eos, rx177_fail536
    substr $S11, rx177_tgt, rx177_pos, 1
    index $I11, ucs4:"],#", $S11
    lt $I11, 0, rx177_fail536
    inc rx177_pos
    rx177_cur."!cursor_pass"(rx177_pos, 'backtrack'=>1)
    .return (rx177_cur)
  rx177_restart535:
    repr_get_attr_obj rx177_cstack, rx177_cur, rx177_curclass, "$!cstack"
  rx177_fail536:
    unless rx177_bstack, rx177_done534
    pop $I19, rx177_bstack
    if_null rx177_cstack, rx177_cstack_done539
    unless rx177_cstack, rx177_cstack_done539
    dec $I19
    set $P11, rx177_cstack[$I19]
  rx177_cstack_done539:
    pop rx177_rep, rx177_bstack
    pop rx177_pos, rx177_bstack
    pop $I19, rx177_bstack
    lt rx177_pos, -1, rx177_done534
    lt rx177_pos, 0, rx177_fail536
    eq $I19, 0, rx177_fail536
    nqp_islist $I20, rx177_cstack
    unless $I20, rx177_jump537
    elements $I18, rx177_bstack
    le $I18, 0, rx177_cut538
    dec $I18
    set $I18, rx177_bstack[$I18]
  rx177_cut538:
    assign rx177_cstack, $I18
  rx177_jump537:
    jump $I19
  rx177_done534:
    rx177_cur."!cursor_fail"()
    .return (rx177_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_47_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 124
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx180_start
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    .local pmc rx180_curclass
    .local pmc rx180_bstack
    .local pmc rx180_cstack
    rx180_start = self."!cursor_start_all"()
    set rx180_cur, rx180_start[0]
    set rx180_tgt, rx180_start[1]
    set rx180_pos, rx180_start[2]
    set rx180_curclass, rx180_start[3]
    set rx180_bstack, rx180_start[4]
    set $I19, rx180_start[5]
    store_lex unicode:"$\x{a2}", rx180_cur
    length rx180_eos, rx180_tgt
    eq $I19, 1, rx180_restart547
    gt rx180_pos, rx180_eos, rx180_fail548
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done554
    goto rxscan181_scan553
  rxscan181_loop552:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail548
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan553:
    nqp_rxmark rx180_bstack, rxscan181_loop552, rx180_pos, 0
  rxscan181_done554:
    nqp_rxmark rx180_bstack, rxquantr182_done556, -1, 0
  rxquantr182_loop555:
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."ws"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail548
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."charname"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail548
    nqp_rxmark rx180_bstack, rxsubrule184_pass558, -1, 0
  rxsubrule184_pass558:
    rx180_cstack = rx180_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."ws"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail548
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    nqp_rxpeek $I19, rx180_bstack, rxquantr182_done556
    inc $I19
    inc $I19
    set rx180_rep, rx180_bstack[$I19]
    nqp_rxcommit rx180_bstack, rxquantr182_done556
    inc rx180_rep
    nqp_rxmark rx180_bstack, rxquantr182_done556, rx180_pos, rx180_rep
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail548
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:",", rx180_fail548
    add rx180_pos, 1
    goto rxquantr182_loop555
  rxquantr182_done556:
    rx180_cur."!cursor_pass"(rx180_pos, "charnames", 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart547:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail548:
    unless rx180_bstack, rx180_done546
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done551
    unless rx180_cstack, rx180_cstack_done551
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done551:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done546
    lt rx180_pos, 0, rx180_fail548
    eq $I19, 0, rx180_fail548
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump549
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut550
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut550:
    assign rx180_cstack, $I18
  rx180_jump549:
    jump $I19
  rx180_done546:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_48_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 125
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx186_start
    .local string rx186_tgt
    .local int rx186_pos
    .local int rx186_off
    .local int rx186_eos
    .local int rx186_rep
    .local pmc rx186_cur
    .local pmc rx186_curclass
    .local pmc rx186_bstack
    .local pmc rx186_cstack
    rx186_start = self."!cursor_start_all"()
    set rx186_cur, rx186_start[0]
    set rx186_tgt, rx186_start[1]
    set rx186_pos, rx186_start[2]
    set rx186_curclass, rx186_start[3]
    set rx186_bstack, rx186_start[4]
    set $I19, rx186_start[5]
    store_lex unicode:"$\x{a2}", rx186_cur
    length rx186_eos, rx186_tgt
    eq $I19, 1, rx186_restart562
    gt rx186_pos, rx186_eos, rx186_fail563
    repr_get_attr_int $I11, self, rx186_curclass, "$!from"
    ne $I11, -1, rxscan187_done569
    goto rxscan187_scan568
  rxscan187_loop567:
    inc rx186_pos
    gt rx186_pos, rx186_eos, rx186_fail563
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!from", rx186_pos
  rxscan187_scan568:
    nqp_rxmark rx186_bstack, rxscan187_loop567, rx186_pos, 0
  rxscan187_done569:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt188_0571
    nqp_push_label $P11, alt188_1573
    nqp_push_label $P11, alt188_2580
    nqp_push_label $P11, alt188_3581
    nqp_rxmark rx186_bstack, alt188_end570, -1, 0
    rx186_cur."!alt"(rx186_pos, "alt_nfa__9_1382292147.34126", $P11)
    goto rx186_fail563
  alt188_0571:
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail563
    substr $S10, rx186_tgt, rx186_pos, 1
    ne $S10, ucs4:"[", rx186_fail563
    add rx186_pos, 1
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail563
    nqp_rxmark rx186_bstack, rxsubrule189_pass572, -1, 0
  rxsubrule189_pass572:
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail563
    substr $S10, rx186_tgt, rx186_pos, 1
    ne $S10, ucs4:"]", rx186_fail563
    add rx186_pos, 1
    goto alt188_end570
  alt188_1573:
    nqp_rxmark rx186_bstack, rxquantr190_done575, -1, 0
  rxquantr190_loop574:
    ge rx186_pos, rx186_eos, rx186_fail563
    is_cclass $I11, .CCLASS_NUMERIC, rx186_tgt, rx186_pos
    unless $I11, rx186_fail563
    add rx186_pos, 1
    nqp_rxpeek $I19, rx186_bstack, rxquantr190_done575
    inc $I19
    inc $I19
    set rx186_rep, rx186_bstack[$I19]
    nqp_rxcommit rx186_bstack, rxquantr190_done575
    inc rx186_rep
    nqp_rxmark rx186_bstack, rxquantr190_done575, rx186_pos, rx186_rep
    goto rxquantr190_loop574
  rxquantr190_done575:
    nqp_rxmark rx186_bstack, rxquantr191_done577, rx186_pos, 0
  rxquantr191_loop576:
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail563
    substr $S10, rx186_tgt, rx186_pos, 1
    ne $S10, ucs4:"_", rx186_fail563
    add rx186_pos, 1
    nqp_rxmark rx186_bstack, rxquantr192_done579, -1, 0
  rxquantr192_loop578:
    ge rx186_pos, rx186_eos, rx186_fail563
    is_cclass $I11, .CCLASS_NUMERIC, rx186_tgt, rx186_pos
    unless $I11, rx186_fail563
    add rx186_pos, 1
    nqp_rxpeek $I19, rx186_bstack, rxquantr192_done579
    inc $I19
    inc $I19
    set rx186_rep, rx186_bstack[$I19]
    nqp_rxcommit rx186_bstack, rxquantr192_done579
    inc rx186_rep
    nqp_rxmark rx186_bstack, rxquantr192_done579, rx186_pos, rx186_rep
    goto rxquantr192_loop578
  rxquantr192_done579:
    nqp_rxpeek $I19, rx186_bstack, rxquantr191_done577
    inc $I19
    inc $I19
    set rx186_rep, rx186_bstack[$I19]
    nqp_rxcommit rx186_bstack, rxquantr191_done577
    inc rx186_rep
    nqp_rxmark rx186_bstack, rxquantr191_done577, rx186_pos, rx186_rep
    goto rxquantr191_loop576
  rxquantr191_done577:
    goto alt188_end570
  alt188_2580:
    ge rx186_pos, rx186_eos, rx186_fail563
    substr $S11, rx186_tgt, rx186_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx186_fail563
    inc rx186_pos
    goto alt188_end570
  alt188_3581:
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail563
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    goto alt188_end570
  alt188_end570:
    nqp_rxcommit rx186_bstack, alt188_end570
    rx186_cur."!cursor_pass"(rx186_pos, "charspec", 'backtrack'=>1)
    .return (rx186_cur)
  rx186_restart562:
    repr_get_attr_obj rx186_cstack, rx186_cur, rx186_curclass, "$!cstack"
  rx186_fail563:
    unless rx186_bstack, rx186_done561
    pop $I19, rx186_bstack
    if_null rx186_cstack, rx186_cstack_done566
    unless rx186_cstack, rx186_cstack_done566
    dec $I19
    set $P11, rx186_cstack[$I19]
  rx186_cstack_done566:
    pop rx186_rep, rx186_bstack
    pop rx186_pos, rx186_bstack
    pop $I19, rx186_bstack
    lt rx186_pos, -1, rx186_done561
    lt rx186_pos, 0, rx186_fail563
    eq $I19, 0, rx186_fail563
    nqp_islist $I20, rx186_cstack
    unless $I20, rx186_jump564
    elements $I18, rx186_bstack
    le $I18, 0, rx186_cut565
    dec $I18
    set $I18, rx186_bstack[$I18]
  rx186_cut565:
    assign rx186_cstack, $I18
  rx186_jump564:
    jump $I19
  rx186_done561:
    rx186_cur."!cursor_fail"()
    .return (rx186_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_49_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5015 = 'cuid_238_1382292146.58822' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_239_1382292146.58822' 
    capture_lex $P5015 
    .lex "%hash", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    .local pmc fb_tmp_2 
    if haz_param_1, default620
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_2, $P5014
  default620:
    new $P5001, 'Hash'
    set $P101, $P5001
    find_lex $P5002, "%ohash"
    set fb_tmp_2, $P5002
    repr_defined $I5001, fb_tmp_2
    unless $I5001 goto if194_else583 
    set $P5003, fb_tmp_2[_lex_param_1]
    set $P5005, $P5003
    goto if194_end584
  if194_else583:
    null $P5004
    set $P5005, $P5004
  if194_end584:
    unless_null $P5005, vivi_195585
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_195585:
    set $P101, $P5005
    if $P101 goto unless196_end587 
    .const 'Sub' $P5007 = 'cuid_238_1382292146.58822' 
    capture_lex $P5007
    $P5008 = $P5007()
  unless196_end587:
    unless _lex_param_2 goto if210_else618 
.annotate 'line', 246
    find_lex $P5009, "%ohash"
    set $S5001, _lex_param_2
    set $P5009[$S5001], $P101
    nqp_decontainerize $P5010, _lex_param_0
    set $P5013, $P5010
    goto if210_end619
  if210_else618:
    .const 'Sub' $P5011 = 'cuid_239_1382292146.58822' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if210_end619:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1382292146.58822") :anon :lex :outer("cuid_49_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 182
    .const 'Sub' $P5008 = 'cuid_236_1382292146.58822' 
    capture_lex $P5008 
    .lex "$eos", $I101 
    .lex "$pos", $I102 
    set $I101, 0
    set $I102, 0
    new $P5001, 'Hash'
    store_lex "%hash", $P5001
    find_lex $S5001, "$spec"
    length $I5001, $S5001
    set $I101, $I5001
    set $I102, 0
  while197_test588:
    find_lex $S5002, "$spec"
    find_not_cclass $I5003, 32, $S5002, $I102, $I101
    set $I102, $I5003
    set $N5001, $I102
    set $N5002, $I101
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while197_done592 
  while197_redo590:
    .const 'Sub' $P5002 = 'cuid_236_1382292146.58822' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while197_test588 
  while197_done592:
    find_lex $P5006, "%ohash"
    find_lex $S5003, "$spec"
    find_lex $P5007, "%hash"
    set $P5006[$S5003], $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1382292146.58822") :anon :lex :outer("cuid_238_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 189
    .const 'Sub' $P5007 = 'cuid_235_1382292146.58822' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_237_1382292146.58822' 
    capture_lex $P5007 
    .lex "$lpos", $I101 
    .lex "$s", $S101 
    .local pmc tmp_1 
    set $I101, 0
    set $S101, ""
    find_lex $S5002, "$spec"
    find_lex $I5001, "$pos"
    substr $S5001, $S5002, $I5001, 1
    set $S101, $S5001
    iseq $I5002, $S101, ","
    unless $I5002 goto if198_else593 
.annotate 'line', 192
    find_lex $I5003, "$pos"
    box $P5001, $I5003
    set tmp_1, $P5001
    set $N5002, tmp_1
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5004, $N5001
    store_lex "$pos", $I5004
    set $P5006, tmp_1
    goto if198_end594
  if198_else593:
    iseq $I5003, $S101, ":"
    unless $I5003 goto if199_else595 
    .const 'Sub' $P5001 = 'cuid_235_1382292146.58822' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if199_end596
  if199_else595:
    .const 'Sub' $P5003 = 'cuid_237_1382292146.58822' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if199_end596:
    set $P5006, $P5005
  if198_end594:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1382292146.58822") :anon :lex :outer("cuid_236_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 195
    .lex "$value", $P101 
    .lex "$name", $P102 
    .local pmc tmp_2 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    find_lex $I5001, "$pos"
    box $P5003, $I5001
    set tmp_2, $P5003
    set $N5002, tmp_2
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    store_lex "$pos", $I5002
    box $P5003, 1
    set $P101, $P5003
    find_lex $S5002, "$spec"
    find_lex $I5002, "$pos"
    substr $S5001, $S5002, $I5002, 1
    iseq $I5001, $S5001, "!"
    unless $I5001 goto if200_end598 
.annotate 'line', 201
    find_lex $I5003, "$pos"
    box $P5004, $I5003
    set tmp_3, $P5004
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5004, $N5001
    store_lex "$pos", $I5004
    box $P5004, 0
    set $P101, $P5004
  if200_end598:
    find_lex $S5003, "$spec"
    find_lex $I5004, "$pos"
    find_lex $I5005, "$eos"
    find_not_cclass $I5003, 8192, $S5003, $I5004, $I5005
    store_lex "$lpos", $I5003
    find_lex $S5005, "$spec"
    find_lex $I5006, "$pos"
    find_lex $I5008, "$lpos"
    find_lex $I5009, "$pos"
    sub $I5007, $I5008, $I5009
    substr $S5004, $S5005, $I5006, $I5007
    box $P5005, $S5004
    set $P102, $P5005
    find_lex $I5010, "$lpos"
    store_lex "$pos", $I5010
    find_lex $S5007, "$spec"
    find_lex $I5012, "$pos"
    substr $S5006, $S5007, $I5012, 1
    iseq $I5011, $S5006, "<"
    unless $I5011 goto if201_end600 
.annotate 'line', 213
    find_lex $I5014, "$pos"
    add $I5013, $I5014, 1
    store_lex "$pos", $I5013
    find_lex $S5008, "$spec"
    find_lex $I5016, "$pos"
    index $I5015, $S5008, ">", $I5016
    store_lex "$lpos", $I5015
    find_lex $S5010, "$spec"
    find_lex $I5017, "$pos"
    find_lex $I5019, "$lpos"
    find_lex $I5020, "$pos"
    sub $I5018, $I5019, $I5020
    substr $S5009, $S5010, $I5017, $I5018
    box $P5006, $S5009
    set $P101, $P5006
    find_lex $I5022, "$lpos"
    add $I5021, $I5022, 1
    store_lex "$pos", $I5021
  if201_end600:
    find_lex $P5007, "%hash"
    set $S5011, $P102
    set $P5007[$S5011], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1382292146.58822") :anon :lex :outer("cuid_236_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 222
    .lex "$index", $P101 
    .lex "$lookup", $P102 
    .lex "%lhash", $P103 
    .lex "$lhash_it", $P104 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    find_lex $S5001, "$spec"
    find_lex $I5002, "$pos"
    find_lex $I5003, "$eos"
    find_cclass $I5001, 32, $S5001, $I5002, $I5003
    store_lex "$lpos", $I5001
    find_lex $S5002, "$spec"
    find_lex $I5005, "$pos"
    index $I5004, $S5002, ",", $I5005
    box $P5005, $I5004
    set $P101, $P5005
    set $N5001, $P101
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    if $I5006 goto unless203_end604 
    set $N5003, $P101
    find_lex $I5008, "$lpos"
    set $N5004, $I5008
    isge $I5007, $N5003, $N5004
    set $I5009, $I5007
  unless203_end604:
    if $I5009 goto unless202_end602 
    set $I5010, $P101
    store_lex "$lpos", $I5010
  unless202_end602:
    find_lex $S5004, "$spec"
    find_lex $I5011, "$pos"
    find_lex $I5013, "$lpos"
    find_lex $I5014, "$pos"
    sub $I5012, $I5013, $I5014
    substr $S5003, $S5004, $I5011, $I5012
    box $P5006, $S5003
    set $P102, $P5006
    find_lex $P5007, "%ohash"
    set fb_tmp_3, $P5007
    repr_defined $I5015, fb_tmp_3
    unless $I5015 goto if204_else605 
    set $S5005, $P102
    set $P5008, fb_tmp_3[$S5005]
    set $P5010, $P5008
    goto if204_end606
  if204_else605:
    null $P5009
    set $P5010, $P5009
  if204_end606:
    unless_null $P5010, vivi_205607
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5010, $P5011
  vivi_205607:
    set $P103, $P5010
    if $P103 goto unless206_end609 
.annotate 'line', 232
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."panic"("Unknown operator precedence specification \"", $P102, "\"")
  unless206_end609:
    iter $P5015, $P103
    set $P104, $P5015
  while207_test610:
    set $P5022, $P104
    unless $P104 goto while207_done614 
  while207_redo612:
.annotate 'line', 235
    shift $P5016, $P104
    set $S5006, $P5016
    store_lex "$s", $S5006
    find_lex $P5017, "%hash"
    find_lex $S5007, "$s"
    set fb_tmp_4, $P103
    repr_defined $I5016, fb_tmp_4
    unless $I5016 goto if208_else615 
    find_lex $S5008, "$s"
    set $P5018, fb_tmp_4[$S5008]
    set $P5020, $P5018
    goto if208_end616
  if208_else615:
    null $P5019
    set $P5020, $P5019
  if208_end616:
    unless_null $P5020, vivi_209617
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5020, $P5021
  vivi_209617:
    set $P5017[$S5007], $P5020
    set $P5022, $P5020
    goto while207_test610 
  while207_done614:
    find_lex $I5017, "$lpos"
    store_lex "$pos", $I5017
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1382292146.58822") :anon :lex :outer("cuid_49_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 250
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 253
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
.annotate 'line', 254
    find_lex $P5005, "$cursor_class"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    $P101."!cursor_pass"($I5001)
    find_lex $P5006, "$cursor_class"
    find_lex $P5007, "%hash"
    setattribute $P101, $P5006, "$!match", $P5007
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_50_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 271
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_5 
    .local pmc pkg_lookup_tmp_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
.annotate 'line', 272
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."pos"()
    set $P101, $P5004
.annotate 'line', 273
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."target"()
    set $P102, $P5006
.annotate 'line', 274
    _lex_param_1."push"(" at line ")
.annotate 'line', 275
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    set pkg_lookup_tmp_1, $P5008
    get_who $P5009, pkg_lookup_tmp_1
    exists $I5002, $P5009["HLL"]
    unless $I5002 goto if212_else623 
    get_who $P5011, pkg_lookup_tmp_1
    set $P5010, $P5011["HLL"]
    set $P5013, $P5010
    goto if212_end624
  if212_else623:
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5013, $P5012
  if212_end624:
    get_who $P5007, $P5013
    set fb_tmp_5, $P5007
    repr_defined $I5001, fb_tmp_5
    unless $I5001 goto if211_else621 
    set $P5014, fb_tmp_5["Compiler"]
    set $P5016, $P5014
    goto if211_end622
  if211_else621:
    null $P5015
    set $P5016, $P5015
  if211_end622:
    unless_null $P5016, vivi_213625
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5017
  vivi_213625:
    $P5018 = $P5016."lineof"($P102, $P101)
    set $N5002, $P5018
    set $N5003, 1
    add $N5001, $N5002, $N5003
    _lex_param_1."push"($N5001)
.annotate 'line', 276
    _lex_param_1."push"(", near \"")
.annotate 'line', 277
    set $S5003, $P102
    set $I5003, $P101
    substr $S5002, $S5003, $I5003, 10
    escape $S5001, $S5002
    _lex_param_1."push"($S5001)
.annotate 'line', 278
    _lex_param_1."push"("\"")
.annotate 'line', 279
    $P5019 = "&join"("", _lex_param_1)
    die $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_51_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_2, default628
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_2, $P5005
  default628:
    if _lex_param_2 goto unless214_end627 
.annotate 'line', 283
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless214_end627:
.annotate 'line', 286
    nqp_decontainerize $P5003, _lex_param_0
    set $S5005, _lex_param_2
    concat $S5004, "Unable to parse expression in ", $S5005
    concat $S5003, $S5004, "; couldn't find final "
    set $S5006, _lex_param_1
    concat $S5002, $S5003, $S5006
    $P5004 = $P5003."panic"($S5002)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "peek_delimiters" :subid("cuid_52_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_240_1382292146.58822' 
    capture_lex $P5013 
    .lex "$start", $S101 
    .lex "$stop", $S102 
    .lex "$brac", $I101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    set $S101, ""
    set $S102, ""
    set $I101, 0
    substr $S5001, _lex_param_1, _lex_param_2, 1
    set $S101, $S5001
    iseq $I5001, $S101, ":"
    unless $I5001 goto if215_end630 
.annotate 'line', 304
.annotate 'line', 305
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if215_end630:
    is_cclass $I5002, 8192, $S101, 0
    unless $I5002 goto if216_end632 
.annotate 'line', 307
.annotate 'line', 308
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if216_end632:
    is_cclass $I5003, 32, $S101, 0
    unless $I5003 goto if217_end634 
.annotate 'line', 310
.annotate 'line', 311
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if217_end634:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if218_end636 
    .const 'Sub' $P5008 = 'cuid_240_1382292146.58822' 
    capture_lex $P5008
    $P5009 = $P5008()
  if218_end636:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1382292146.58822") :anon :lex :outer("cuid_52_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 317
    .lex "$len", $I101 
    .local pmc tmp_4 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if219_end638 
.annotate 'line', 319
.annotate 'line', 320
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if219_end638:
    find_lex $P5004, "$brackets"
    set $S5002, $P5004
    find_lex $I5003, "$brac"
    add $I5002, $I5003, 1
    substr $S5001, $S5002, $I5002, 1
    store_lex "$stop", $S5001
    set $I101, 1
  while220_test639:
    find_lex $S5004, "$target"
    find_lex $I5005, "$pos"
    set $N5005, $I5005
    set $N5006, 1
    add $N5004, $N5005, $N5006
    set $I5006, $N5004
    store_lex "$pos", $I5006
    substr $S5003, $S5004, $I5006, 1
    find_lex $S5005, "$start"
    iseq $I5004, $S5003, $S5005
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto while220_done643 
  while220_redo641:
.annotate 'line', 328
    box $P5005, $I101
    set tmp_4, $P5005
    set $N5008, tmp_4
    set $N5009, 1
    add $N5007, $N5008, $N5009
    set $I5007, $N5007
    set $I101, $I5007
    set $P5005, tmp_4
    goto while220_test639 
  while220_done643:
    set $N5007, $I101
    set $N5008, 1
    isgt $I5007, $N5007, $N5008
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if221_end645 
.annotate 'line', 331
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if221_end645:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_53_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5028 = 'cuid_242_1382292146.58822' 
    capture_lex $P5028 
    .lex "%*QUOTEMOD", $P101 
    .lex "$*QUOTE_START", $P102 
    .lex "$*QUOTE_STOP", $P103 
    .lex utf8:"$\x{a2}", $P104 
    .lex "$/", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc self 
    .local pmc fb_tmp_6 
    .local pmc pkg_viv_tmp_1 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx222_start
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    .local pmc rx222_curclass
    .local pmc rx222_bstack
    .local pmc rx222_cstack
    rx222_start = self."!cursor_start_all"()
    set rx222_cur, rx222_start[0]
    set rx222_tgt, rx222_start[1]
    set rx222_pos, rx222_start[2]
    set rx222_curclass, rx222_start[3]
    set rx222_bstack, rx222_start[4]
    set $I19, rx222_start[5]
    store_lex unicode:"$\x{a2}", rx222_cur
    length rx222_eos, rx222_tgt
    eq $I19, 1, rx222_restart648
    gt rx222_pos, rx222_eos, rx222_fail649
    repr_get_attr_int $I11, self, rx222_curclass, "$!from"
    ne $I11, -1, rxscan223_done655
    goto rxscan223_scan654
  rxscan223_loop653:
    inc rx222_pos
    gt rx222_pos, rx222_eos, rx222_fail649
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!from", rx222_pos
  rxscan223_scan654:
    nqp_rxmark rx222_bstack, rxscan223_loop653, rx222_pos, 0
  rxscan223_done655:
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    store_lex unicode:"$\x{a2}", rx222_cur
    unless_null $P101, fallback656
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_6, pkg_viv_tmp_1
    repr_defined $I5001, fb_tmp_6
    unless $I5001 goto if224_else657 
    set $P5006, fb_tmp_6["%QUOTEMOD"]
    set $P5008, $P5006
    goto if224_end658
  if224_else657:
    null $P5007
    set $P5008, $P5007
  if224_end658:
    unless_null $P5008, vivi_225659
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%QUOTEMOD"], $P5009
    set $P5008, $P5009
  vivi_225659:
    unless_null $P5008, vivi_226660
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5010
  vivi_226660:
    set $P101, $P5008
  fallback656:
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    store_lex unicode:"$\x{a2}", rx222_cur
    unless_null $P102, fallback661
    nqp_get_sc_object $P5012, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5011, $P5012
    set fb_tmp_7, $P5011
    repr_defined $I5002, fb_tmp_7
    unless $I5002 goto if227_else662 
    set $P5013, fb_tmp_7["$QUOTE_START"]
    set $P5015, $P5013
    goto if227_end663
  if227_else662:
    null $P5014
    set $P5015, $P5014
  if227_end663:
    unless_null $P5015, vivi_228664
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5015, $P5016
  vivi_228664:
    unless_null $P5015, vivi_229665
    die "Contextual $*QUOTE_START not found"
    box $P5017, "Contextual $*QUOTE_START not found"
    set $P5015, $P5017
  vivi_229665:
    set $P102, $P5015
  fallback661:
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    store_lex unicode:"$\x{a2}", rx222_cur
    unless_null $P103, fallback666
    nqp_get_sc_object $P5019, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5018, $P5019
    set fb_tmp_8, $P5018
    repr_defined $I5003, fb_tmp_8
    unless $I5003 goto if230_else667 
    set $P5020, fb_tmp_8["$QUOTE_STOP"]
    set $P5022, $P5020
    goto if230_end668
  if230_else667:
    null $P5021
    set $P5022, $P5021
  if230_end668:
    unless_null $P5022, vivi_231669
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5022, $P5023
  vivi_231669:
    unless_null $P5022, vivi_232670
    die "Contextual $*QUOTE_STOP not found"
    box $P5024, "Contextual $*QUOTE_STOP not found"
    set $P5022, $P5024
  vivi_232670:
    set $P103, $P5022
  fallback666:
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    store_lex unicode:"$\x{a2}", rx222_cur
    $P5025 = $P104."MATCH"()
    set $P105, $P5025
    .const 'Sub' $P5026 = 'cuid_242_1382292146.58822' 
    capture_lex $P5026
    $P5027 = $P5026()
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    $P11 = rx222_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx222_curclass, "$!pos"
    lt $I11, 0, rx222_fail649
    nqp_rxmark rx222_bstack, rxsubrule263_pass724, -1, 0
  rxsubrule263_pass724:
    rx222_cstack = rx222_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx222_pos, $P11, rx222_curclass, "$!pos"
    rx222_cur."!cursor_pass"(rx222_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx222_cur)
  rx222_restart648:
    repr_get_attr_obj rx222_cstack, rx222_cur, rx222_curclass, "$!cstack"
  rx222_fail649:
    unless rx222_bstack, rx222_done647
    pop $I19, rx222_bstack
    if_null rx222_cstack, rx222_cstack_done652
    unless rx222_cstack, rx222_cstack_done652
    dec $I19
    set $P11, rx222_cstack[$I19]
  rx222_cstack_done652:
    pop rx222_rep, rx222_bstack
    pop rx222_pos, rx222_bstack
    pop $I19, rx222_bstack
    lt rx222_pos, -1, rx222_done647
    lt rx222_pos, 0, rx222_fail649
    eq $I19, 0, rx222_fail649
    nqp_islist $I20, rx222_cstack
    unless $I20, rx222_jump650
    elements $I18, rx222_bstack
    le $I18, 0, rx222_cut651
    dec $I18
    set $I18, rx222_bstack[$I18]
  rx222_cut651:
    assign rx222_cstack, $I18
  rx222_jump650:
    jump $I19
  rx222_done647:
    rx222_cur."!cursor_fail"()
    .return (rx222_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1382292146.58822") :anon :lex :outer("cuid_53_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 344
    .const 'Sub' $P5025 = 'cuid_241_1382292146.58822' 
    capture_lex $P5025 
    .lex "@delims", $P101 
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next715:
    unless $P5004, for_done717
    shift $P5007, $P5004
  for_redo716:
    .const 'Sub' $P5006 = 'cuid_241_1382292146.58822' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next715
  for_done717:
.annotate 'line', 361
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."target"()
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."pos"()
    $P5016 = $P5008."peek_delimiters"($P5012, $P5015)
    set $P101, $P5016
    set fb_tmp_17, $P101
    repr_defined $I5001, fb_tmp_17
    unless $I5001 goto if259_else718 
    set $P5017, fb_tmp_17[0]
    set $P5019, $P5017
    goto if259_end719
  if259_else718:
    null $P5018
    set $P5019, $P5018
  if259_end719:
    unless_null $P5019, vivi_260720
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_260720:
    store_dynamic_lex "$*QUOTE_START", $P5019
    set fb_tmp_18, $P101
    repr_defined $I5002, fb_tmp_18
    unless $I5002 goto if261_else721 
    set $P5021, fb_tmp_18[1]
    set $P5023, $P5021
    goto if261_end722
  if261_else721:
    null $P5022
    set $P5023, $P5022
  if261_end722:
    unless_null $P5023, vivi_262723
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5023, $P5024
  vivi_262723:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1382292146.58822") :anon :lex :outer("cuid_242_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 345
    .param pmc _lex_param_0 
    .lex "$mod", _lex_param_0 
    .local pmc fb_tmp_9 
    .local pmc pkg_viv_tmp_2 
    .local pmc fb_tmp_10 
    .local pmc pkg_viv_tmp_3 
    .local pmc fb_tmp_11 
    .local pmc pkg_viv_tmp_4 
    .local pmc fb_tmp_12 
    .local pmc pkg_viv_tmp_5 
    .local pmc fb_tmp_13 
    .local pmc pkg_viv_tmp_6 
    .local pmc fb_tmp_14 
    .local pmc pkg_viv_tmp_7 
    .local pmc fb_tmp_15 
    .local pmc pkg_viv_tmp_8 
    .local pmc fb_tmp_16 
    .local pmc pkg_viv_tmp_9 
    set $S5002, _lex_param_0
    substr $S5001, $S5002, 1
    box $P5001, $S5001
    set _lex_param_0, $P5001
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback671
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_2, $P5003
    set fb_tmp_9, pkg_viv_tmp_2
    repr_defined $I5001, fb_tmp_9
    unless $I5001 goto if233_else672 
    set $P5005, fb_tmp_9["%QUOTEMOD"]
    set $P5007, $P5005
    goto if233_end673
  if233_else672:
    null $P5006
    set $P5007, $P5006
  if233_end673:
    unless_null $P5007, vivi_234674
    new $P5008, 'Hash'
    set pkg_viv_tmp_2["%QUOTEMOD"], $P5008
    set $P5007, $P5008
  vivi_234674:
    unless_null $P5007, vivi_235675
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5009
  vivi_235675:
    set $P5002, $P5007
  fallback671:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5002, $S5004, "qq"
    unless $I5002 goto if236_else676 
.annotate 'line', 348
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback678
    nqp_get_sc_object $P5013, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5012, $P5013
    set pkg_viv_tmp_3, $P5012
    set fb_tmp_10, pkg_viv_tmp_3
    repr_defined $I5003, fb_tmp_10
    unless $I5003 goto if237_else679 
    set $P5014, fb_tmp_10["%QUOTEMOD"]
    set $P5016, $P5014
    goto if237_end680
  if237_else679:
    null $P5015
    set $P5016, $P5015
  if237_end680:
    unless_null $P5016, vivi_238681
    new $P5017, 'Hash'
    set pkg_viv_tmp_3["%QUOTEMOD"], $P5017
    set $P5016, $P5017
  vivi_238681:
    unless_null $P5016, vivi_239682
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5016, $P5018
  vivi_239682:
    set $P5011, $P5016
  fallback678:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback683
    nqp_get_sc_object $P5022, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5021, $P5022
    set pkg_viv_tmp_4, $P5021
    set fb_tmp_11, pkg_viv_tmp_4
    repr_defined $I5004, fb_tmp_11
    unless $I5004 goto if240_else684 
    set $P5023, fb_tmp_11["%QUOTEMOD"]
    set $P5025, $P5023
    goto if240_end685
  if240_else684:
    null $P5024
    set $P5025, $P5024
  if240_end685:
    unless_null $P5025, vivi_241686
    new $P5026, 'Hash'
    set pkg_viv_tmp_4["%QUOTEMOD"], $P5026
    set $P5025, $P5026
  vivi_241686:
    unless_null $P5025, vivi_242687
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5025, $P5027
  vivi_242687:
    set $P5020, $P5025
  fallback683:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback688
    nqp_get_sc_object $P5031, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5030, $P5031
    set pkg_viv_tmp_5, $P5030
    set fb_tmp_12, pkg_viv_tmp_5
    repr_defined $I5005, fb_tmp_12
    unless $I5005 goto if243_else689 
    set $P5032, fb_tmp_12["%QUOTEMOD"]
    set $P5034, $P5032
    goto if243_end690
  if243_else689:
    null $P5033
    set $P5034, $P5033
  if243_end690:
    unless_null $P5034, vivi_244691
    new $P5035, 'Hash'
    set pkg_viv_tmp_5["%QUOTEMOD"], $P5035
    set $P5034, $P5035
  vivi_244691:
    unless_null $P5034, vivi_245692
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5034, $P5036
  vivi_245692:
    set $P5029, $P5034
  fallback688:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback693
    nqp_get_sc_object $P5040, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5039, $P5040
    set pkg_viv_tmp_6, $P5039
    set fb_tmp_13, pkg_viv_tmp_6
    repr_defined $I5006, fb_tmp_13
    unless $I5006 goto if246_else694 
    set $P5041, fb_tmp_13["%QUOTEMOD"]
    set $P5043, $P5041
    goto if246_end695
  if246_else694:
    null $P5042
    set $P5043, $P5042
  if246_end695:
    unless_null $P5043, vivi_247696
    new $P5044, 'Hash'
    set pkg_viv_tmp_6["%QUOTEMOD"], $P5044
    set $P5043, $P5044
  vivi_247696:
    unless_null $P5043, vivi_248697
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5043, $P5045
  vivi_248697:
    set $P5038, $P5043
  fallback693:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback698
    nqp_get_sc_object $P5049, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5048, $P5049
    set pkg_viv_tmp_7, $P5048
    set fb_tmp_14, pkg_viv_tmp_7
    repr_defined $I5007, fb_tmp_14
    unless $I5007 goto if249_else699 
    set $P5050, fb_tmp_14["%QUOTEMOD"]
    set $P5052, $P5050
    goto if249_end700
  if249_else699:
    null $P5051
    set $P5052, $P5051
  if249_end700:
    unless_null $P5052, vivi_250701
    new $P5053, 'Hash'
    set pkg_viv_tmp_7["%QUOTEMOD"], $P5053
    set $P5052, $P5053
  vivi_250701:
    unless_null $P5052, vivi_251702
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5052, $P5054
  vivi_251702:
    set $P5047, $P5052
  fallback698:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback703
    nqp_get_sc_object $P5058, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5057, $P5058
    set pkg_viv_tmp_8, $P5057
    set fb_tmp_15, pkg_viv_tmp_8
    repr_defined $I5008, fb_tmp_15
    unless $I5008 goto if252_else704 
    set $P5059, fb_tmp_15["%QUOTEMOD"]
    set $P5061, $P5059
    goto if252_end705
  if252_else704:
    null $P5060
    set $P5061, $P5060
  if252_end705:
    unless_null $P5061, vivi_253706
    new $P5062, 'Hash'
    set pkg_viv_tmp_8["%QUOTEMOD"], $P5062
    set $P5061, $P5062
  vivi_253706:
    unless_null $P5061, vivi_254707
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5061, $P5063
  vivi_254707:
    set $P5056, $P5061
  fallback703:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if236_end677
  if236_else676:
    set $S5005, _lex_param_0
    iseq $I5009, $S5005, "b"
    box $P5075, $I5009
    set $P5074, $P5075
    unless $I5009 goto if255_end709 
.annotate 'line', 356
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback710
    nqp_get_sc_object $P5067, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5066, $P5067
    set pkg_viv_tmp_9, $P5066
    set fb_tmp_16, pkg_viv_tmp_9
    repr_defined $I5010, fb_tmp_16
    unless $I5010 goto if256_else711 
    set $P5068, fb_tmp_16["%QUOTEMOD"]
    set $P5070, $P5068
    goto if256_end712
  if256_else711:
    null $P5069
    set $P5070, $P5069
  if256_end712:
    unless_null $P5070, vivi_257713
    new $P5071, 'Hash'
    set pkg_viv_tmp_9["%QUOTEMOD"], $P5071
    set $P5070, $P5071
  vivi_257713:
    unless_null $P5070, vivi_258714
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5070, $P5072
  vivi_258714:
    set $P5065, $P5070
  fallback710:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if255_end709:
    set $P5076, $P5074
  if236_end677:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_54_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_243_1382292146.58822' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx264_start
    .local string rx264_tgt
    .local int rx264_pos
    .local int rx264_off
    .local int rx264_eos
    .local int rx264_rep
    .local pmc rx264_cur
    .local pmc rx264_curclass
    .local pmc rx264_bstack
    .local pmc rx264_cstack
    rx264_start = self."!cursor_start_all"()
    set rx264_cur, rx264_start[0]
    set rx264_tgt, rx264_start[1]
    set rx264_pos, rx264_start[2]
    set rx264_curclass, rx264_start[3]
    set rx264_bstack, rx264_start[4]
    set $I19, rx264_start[5]
    store_lex unicode:"$\x{a2}", rx264_cur
    length rx264_eos, rx264_tgt
    eq $I19, 1, rx264_restart727
    gt rx264_pos, rx264_eos, rx264_fail728
    repr_get_attr_int $I11, self, rx264_curclass, "$!from"
    ne $I11, -1, rxscan265_done734
    goto rxscan265_scan733
  rxscan265_loop732:
    inc rx264_pos
    gt rx264_pos, rx264_eos, rx264_fail728
    repr_bind_attr_int rx264_cur, rx264_curclass, "$!from", rx264_pos
  rxscan265_scan733:
    nqp_rxmark rx264_bstack, rxscan265_loop732, rx264_pos, 0
  rxscan265_done734:
    repr_bind_attr_int rx264_cur, rx264_curclass, "$!pos", rx264_pos
    store_lex unicode:"$\x{a2}", rx264_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_243_1382292146.58822' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx264_fail728
    rx264_cur."!cursor_pass"(rx264_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx264_cur)
  rx264_restart727:
    repr_get_attr_obj rx264_cstack, rx264_cur, rx264_curclass, "$!cstack"
  rx264_fail728:
    unless rx264_bstack, rx264_done726
    pop $I19, rx264_bstack
    if_null rx264_cstack, rx264_cstack_done731
    unless rx264_cstack, rx264_cstack_done731
    dec $I19
    set $P11, rx264_cstack[$I19]
  rx264_cstack_done731:
    pop rx264_rep, rx264_bstack
    pop rx264_pos, rx264_bstack
    pop $I19, rx264_bstack
    lt rx264_pos, -1, rx264_done726
    lt rx264_pos, 0, rx264_fail728
    eq $I19, 0, rx264_fail728
    nqp_islist $I20, rx264_cstack
    unless $I20, rx264_jump729
    elements $I18, rx264_bstack
    le $I18, 0, rx264_cut730
    dec $I18
    set $I18, rx264_bstack[$I18]
  rx264_cut730:
    assign rx264_cstack, $I18
  rx264_jump729:
    jump $I19
  rx264_done726:
    rx264_cur."!cursor_fail"()
    .return (rx264_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1382292146.58822") :anon :lex :outer("cuid_54_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 369
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc pkg_viv_tmp_10 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback737
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_10, $P5002
    set fb_tmp_20, pkg_viv_tmp_10
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if267_else738 
    set $P5004, fb_tmp_20["%QUOTEMOD"]
    set $P5006, $P5004
    goto if267_end739
  if267_else738:
    null $P5005
    set $P5006, $P5005
  if267_end739:
    unless_null $P5006, vivi_268740
    new $P5007, 'Hash'
    set pkg_viv_tmp_10["%QUOTEMOD"], $P5007
    set $P5006, $P5007
  vivi_268740:
    unless_null $P5006, vivi_269741
    die "Contextual %*QUOTEMOD not found"
    box $P5008, "Contextual %*QUOTEMOD not found"
    set $P5006, $P5008
  vivi_269741:
    set $P5001, $P5006
  fallback737:
    set fb_tmp_19, $P5001
    repr_defined $I5001, fb_tmp_19
    unless $I5001 goto if266_else735 
    find_lex $S5001, "$mod"
    set $P5009, fb_tmp_19[$S5001]
    set $P5011, $P5009
    goto if266_end736
  if266_else735:
    null $P5010
    set $P5011, $P5010
  if266_end736:
    unless_null $P5011, vivi_270742
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_270742:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_55_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .lex "$start", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_21 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_START"
    unless_null $P5002, fallback743
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5003, $P5004
    set fb_tmp_21, $P5003
    repr_defined $I5001, fb_tmp_21
    unless $I5001 goto if271_else744 
    set $P5005, fb_tmp_21["$QUOTE_START"]
    set $P5007, $P5005
    goto if271_end745
  if271_else744:
    null $P5006
    set $P5007, $P5006
  if271_end745:
    unless_null $P5007, vivi_272746
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_272746:
    unless_null $P5007, vivi_273747
    die "Contextual $*QUOTE_START not found"
    box $P5009, "Contextual $*QUOTE_START not found"
    set $P5007, $P5009
  vivi_273747:
    set $P5002, $P5007
  fallback743:
    set $P101, $P5002
    repr_defined $I5002, $P101
    unless $I5002 goto if274_else748 
.annotate 'line', 375
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!LITERAL"($P101)
    set $P5014, $P5011
    goto if274_end749
  if274_else748:
.annotate 'line', 376
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!cursor_start_fail"()
    set $P5014, $P5013
  if274_end749:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_56_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 379
    .param pmc _lex_param_0 
    .lex "$stop", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_22 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_STOP"
    unless_null $P5002, fallback750
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5003, $P5004
    set fb_tmp_22, $P5003
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if275_else751 
    set $P5005, fb_tmp_22["$QUOTE_STOP"]
    set $P5007, $P5005
    goto if275_end752
  if275_else751:
    null $P5006
    set $P5007, $P5006
  if275_end752:
    unless_null $P5007, vivi_276753
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_276753:
    unless_null $P5007, vivi_277754
    die "Contextual $*QUOTE_STOP not found"
    box $P5009, "Contextual $*QUOTE_STOP not found"
    set $P5007, $P5009
  vivi_277754:
    set $P5002, $P5007
  fallback750:
    set $P101, $P5002
    repr_defined $I5002, $P101
    unless $I5002 goto if278_else755 
.annotate 'line', 382
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!LITERAL"($P101)
    set $P5014, $P5011
    goto if278_end756
  if278_else755:
.annotate 'line', 383
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!cursor_start_fail"()
    set $P5014, $P5013
  if278_end756:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_57_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 386
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "@result", $P101 
    .lex "$pos", $I101 
    .lex "$eos", $I102 
    .lex "$ws", $I103 
    .lex "self", _lex_param_0 
    .lex "$words", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    length $I5001, _lex_param_1
    set $I102, $I5001
  while279_test757:
    find_not_cclass $I5003, 32, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while279_done761 
  while279_redo759:
.annotate 'line', 391
    find_cclass $I5004, 32, _lex_param_1, $I101, $I102
    set $I103, $I5004
    sub $I5005, $I103, $I101
    substr $S5001, _lex_param_1, $I101, $I5005
    box $P5002, $S5001
    push $P101, $P5002
    set $I101, $I103
    set $I5006, $I101
    goto while279_test757 
  while279_done761:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_58_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5131 = 'cuid_244_1382292146.58822' 
    capture_lex $P5131 
    .lex "$here", $P101 
    .lex "$pos", $I101 
    .lex "$termishrx", $S101 
    .lex "@opstack", $P102 
    .lex "@termstack", $P103 
    .lex "$termcur", $P104 
    .lex "$termish", $P105 
    .lex "%termOPER", $P106 
    .lex "@prefixish", $P107 
    .lex "@postfixish", $P108 
    .lex "$wscur", $P109 
    .lex "$infixcur", $P110 
    .lex "$infix", $P111 
    .lex "%inO", $P112 
    .lex "$inprec", $S102 
    .lex "$opprec", $S103 
    .lex "$inassoc", $S104 
    .lex "$more_infix", $I102 
    .lex "$term_done", $I103 
    .lex "self", _lex_param_0 
    .lex "$preclim", _lex_param_1 
    .lex "$noinfix", _lex_param_2 
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
    if haz_param_3, default897
    set $S5005, ""
    set _lex_param_1, $S5005
  default897:
    if haz_param_4, default898
    set $I5035, 0
    set _lex_param_2, $I5035
  default898:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P109, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P110, $P5010
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P111, $P5011
    new $P5012, 'Hash'
    set $P112, $P5012
    set $S102, ""
    set $S103, ""
    set $S104, ""
    set $I102, 0
    set $I103, 0
    root_new $P113, ['parrot';'Continuation']
    set_label $P113, lexotic_762
    .lex "RETURN", $P113
.annotate 'line', 408
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."!cursor_start_cur"()
    set $P101, $P5014
    find_lex $P5015, "$cursor_class"
    repr_get_attr_int $I5001, $P101, $P5015, "$!from"
    set $I101, $I5001
    set $S101, "termish"
    new $P5119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5119, while280_handlers767
    push_eh $P5119
  while280_test764:
    box $P5120, 1
    set $P5118, $P5120
    unless 1 goto while280_done768 
  while280_redo766:
.annotate 'line', 428
    find_lex $P5016, "$cursor_class"
    repr_bind_attr_int $P101, $P5016, "$!pos", $I101
.annotate 'line', 430
    $P5017 = $P101.$S101()
    set $P104, $P5017
    find_lex $P5018, "$cursor_class"
    repr_get_attr_int $I5002, $P104, $P5018, "$!pos"
    set $I101, $I5002
    find_lex $P5019, "$cursor_class"
    repr_bind_attr_int $P101, $P5019, "$!pos", $I101
    set $N5001, $I101
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    unless $I5003 goto if281_end770 
    $P5020 = "RETURN"($P101)
  if281_end770:
.annotate 'line', 435
    $P5021 = $P104."MATCH"()
    set $P105, $P5021
    set $P106, $P105
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while282_handlers774
    push_eh $P5024
  while282_test771:
    exists $I5004, $P106["OPER"]
    box $P5025, $I5004
    set $P5023, $P5025
    unless $I5004 goto while282_done775 
  while282_redo773:
    set $P5022, $P106["OPER"]
    set $P106, $P5022
    set $P5023, $P106
    goto while282_test771 
  while282_handlers774:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, while282_test771
    eq $P5024, .CONTROL_LOOP_REDO, while282_redo773
  while282_done775:
    pop_eh 
    set $P5026, $P106["prefixish"]
    set $P107, $P5026
    set $P5027, $P106["postfixish"]
    set $P108, $P5027
    isnull $I5005, $P107
    set $I5007, $I5005
    if $I5005 goto unless284_end779 
    isnull $I5006, $P108
    set $I5007, $I5006
  unless284_end779:
    if $I5007 goto unless283_end777 
.annotate 'line', 444
  while285_test780:
    set $P5028, $P107
    unless $P107 goto if286_end786 
    set $P5028, $P108
  if286_end786:
    set $P5031, $P5028
    unless $P5028 goto while285_done784 
  while285_redo782:
    .const 'Sub' $P5029 = 'cuid_244_1382292146.58822' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
    goto while285_test780 
  while285_done784:
    new $P5034, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5034, while306_handlers819
    push_eh $P5034
  while306_test816:
    set $P5033, $P107
    unless $P107 goto while306_done820 
  while306_redo818:
    shift $P5032, $P107
    push $P102, $P5032
    set $P5033, $P102
    goto while306_test816 
  while306_handlers819:
    .get_results ($P5034)
    pop_upto_eh $P5034
    getattribute $P5034, $P5034, 'type'
    eq $P5034, .CONTROL_LOOP_NEXT, while306_test816
    eq $P5034, .CONTROL_LOOP_REDO, while306_redo818
  while306_done820:
    pop_eh 
    new $P5037, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5037, while307_handlers824
    push_eh $P5037
  while307_test821:
    set $P5036, $P108
    unless $P108 goto while307_done825 
  while307_redo823:
    pop $P5035, $P108
    push $P102, $P5035
    set $P5036, $P102
    goto while307_test821 
  while307_handlers824:
    .get_results ($P5037)
    pop_upto_eh $P5037
    getattribute $P5037, $P5037, 'type'
    eq $P5037, .CONTROL_LOOP_NEXT, while307_test821
    eq $P5037, .CONTROL_LOOP_REDO, while307_redo823
  while307_done825:
    pop_eh 
  unless283_end777:
    delete $P105["prefixish"]
    delete $P105["postfixish"]
    set $P5038, $P105["term"]
    push $P103, $P5038
    unless _lex_param_2 goto if308_end827 
    die 0, .CONTROL_LOOP_LAST
  if308_end827:
    set $I102, 1
    set $I103, 0
    new $P5089, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5089, while309_handlers831
    push_eh $P5089
  while309_test828:
    box $P5090, $I102
    set $P5088, $P5090
    unless $I102 goto while309_done832 
  while309_redo830:
.annotate 'line', 471
    find_lex $P5039, "$cursor_class"
    repr_bind_attr_int $P101, $P5039, "$!pos", $I101
.annotate 'line', 475
    $P5040 = $P101."ws"()
    set $P109, $P5040
    find_lex $P5041, "$cursor_class"
    repr_get_attr_int $I5008, $P109, $P5041, "$!pos"
    set $I101, $I5008
    set $N5003, $I101
    set $N5004, 0
    islt $I5009, $N5003, $N5004
    unless $I5009 goto if310_end834 
.annotate 'line', 477
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if310_end834:
    find_lex $P5042, "$cursor_class"
    repr_bind_attr_int $P101, $P5042, "$!pos", $I101
.annotate 'line', 484
    $P5043 = $P101."infixish"()
    set $P110, $P5043
    find_lex $P5044, "$cursor_class"
    repr_get_attr_int $I5010, $P110, $P5044, "$!pos"
    set $I101, $I5010
    set $N5005, $I101
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    unless $I5011 goto if311_end836 
.annotate 'line', 486
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if311_end836:
.annotate 'line', 490
    $P5045 = $P110."MATCH"()
    set $P111, $P5045
    set fb_tmp_31, $P111
    repr_defined $I5013, fb_tmp_31
    unless $I5013 goto if313_else839 
    set $P5046, fb_tmp_31["OPER"]
    set $P5048, $P5046
    goto if313_end840
  if313_else839:
    null $P5047
    set $P5048, $P5047
  if313_end840:
    unless_null $P5048, vivi_314841
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5048, $P5049
  vivi_314841:
    set fb_tmp_30, $P5048
    repr_defined $I5012, fb_tmp_30
    unless $I5012 goto if312_else837 
    set $P5050, fb_tmp_30["O"]
    set $P5052, $P5050
    goto if312_end838
  if312_else837:
    null $P5051
    set $P5052, $P5051
  if312_end838:
    unless_null $P5052, vivi_315842
    nqp_get_sc_object $P5053, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5052, $P5053
  vivi_315842:
    set $P112, $P5052
    set $P5054, $P112["nextterm"]
    unless_null $P5054, vivi_316843
    box $P5055, "termish"
    set $P5054, $P5055
  vivi_316843:
    set $S5001, $P5054
    set $S101, $S5001
    set fb_tmp_32, $P112
    repr_defined $I5014, fb_tmp_32
    unless $I5014 goto if317_else844 
    set $P5056, fb_tmp_32["prec"]
    set $P5058, $P5056
    goto if317_end845
  if317_else844:
    null $P5057
    set $P5058, $P5057
  if317_end845:
    unless_null $P5058, vivi_318846
    nqp_get_sc_object $P5059, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5058, $P5059
  vivi_318846:
    set $S5002, $P5058
    set $S102, $S5002
    if $S102 goto unless319_end848 
.annotate 'line', 496
    $P5060 = $P110."panic"("Missing infixish operator precedence")
  unless319_end848:
    islt $I5015, $S102, _lex_param_1
    unless $I5015 goto if320_end850 
.annotate 'line', 498
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if320_end850:
    set $P5061, $P112["sub"]
    unless_null $P5061, vivi_321851
    set $P5062, $P112["prec"]
    set $P5061, $P5062
  vivi_321851:
    set $P112["prec"], $P5061
    new $P5082, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5082, while322_handlers855
    push_eh $P5082
  while322_test852:
    set $P5081, $P102
    unless $P102 goto while322_done856 
  while322_redo854:
.annotate 'line', 505
    set fb_tmp_36, $P102
    repr_defined $I5019, fb_tmp_36
    unless $I5019 goto if326_else863 
    set $N5007, $P102
    set $I5021, $N5007
    sub $I5020, $I5021, 1
    set $P5063, fb_tmp_36[$I5020]
    set $P5065, $P5063
    goto if326_end864
  if326_else863:
    null $P5064
    set $P5065, $P5064
  if326_end864:
    unless_null $P5065, vivi_327865
    nqp_get_sc_object $P5066, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5065, $P5066
  vivi_327865:
    set fb_tmp_35, $P5065
    repr_defined $I5018, fb_tmp_35
    unless $I5018 goto if325_else861 
    set $P5067, fb_tmp_35["OPER"]
    set $P5069, $P5067
    goto if325_end862
  if325_else861:
    null $P5068
    set $P5069, $P5068
  if325_end862:
    unless_null $P5069, vivi_328866
    nqp_get_sc_object $P5070, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5069, $P5070
  vivi_328866:
    set fb_tmp_34, $P5069
    repr_defined $I5017, fb_tmp_34
    unless $I5017 goto if324_else859 
    set $P5071, fb_tmp_34["O"]
    set $P5073, $P5071
    goto if324_end860
  if324_else859:
    null $P5072
    set $P5073, $P5072
  if324_end860:
    unless_null $P5073, vivi_329867
    nqp_get_sc_object $P5074, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5073, $P5074
  vivi_329867:
    set fb_tmp_33, $P5073
    repr_defined $I5016, fb_tmp_33
    unless $I5016 goto if323_else857 
    set $P5075, fb_tmp_33["prec"]
    set $P5077, $P5075
    goto if323_end858
  if323_else857:
    null $P5076
    set $P5077, $P5076
  if323_end858:
    unless_null $P5077, vivi_330868
    nqp_get_sc_object $P5078, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5077, $P5078
  vivi_330868:
    set $S5003, $P5077
    set $S103, $S5003
    isgt $I5022, $S103, $S102
    if $I5022 goto unless331_end870 
    die 0, .CONTROL_LOOP_LAST
  unless331_end870:
.annotate 'line', 508
    nqp_decontainerize $P5079, _lex_param_0
    $P5080 = $P5079."EXPR_reduce"($P103, $P102)
    set $P5081, $P5080
    goto while322_test852 
  while322_handlers855:
    .get_results ($P5082)
    pop_upto_eh $P5082
    getattribute $P5082, $P5082, 'type'
    eq $P5082, .CONTROL_LOOP_NEXT, while322_test852
    eq $P5082, .CONTROL_LOOP_REDO, while322_redo854
  while322_done856:
    pop_eh 
    set $P5083, $P112["fake"]
    isnull $I5023, $P5083
    unless $I5023 goto if332_else871 
.annotate 'line', 511
    set $I102, 0
    box $P5087, $I102
    set $P5086, $P5087
    goto if332_end872
  if332_else871:
.annotate 'line', 514
    push $P102, $P111
.annotate 'line', 516
    nqp_decontainerize $P5084, _lex_param_0
    $P5085 = $P5084."EXPR_reduce"($P103, $P102)
    set $P5086, $P5085
  if332_end872:
    set $P5088, $P5086
    goto while309_test828 
  while309_handlers831:
    .get_results ($P5089)
    pop_upto_eh $P5089
    getattribute $P5089, $P5089, 'type'
    eq $P5089, .CONTROL_LOOP_NEXT, while309_test828
    eq $P5089, .CONTROL_LOOP_REDO, while309_redo830
  while309_done832:
    pop_eh 
    unless $I103 goto if333_end874 
    die 0, .CONTROL_LOOP_LAST
  if333_end874:
    iseq $I5024, $S103, $S102
    unless $I5024 goto if334_end876 
.annotate 'line', 522
    set $P5091, $P112["assoc"]
    set $S5004, $P5091
    set $S104, $S5004
    iseq $I5025, $S104, "non"
    unless $I5025 goto if335_end878 
.annotate 'line', 524
.annotate 'line', 525
    nqp_decontainerize $P5092, _lex_param_0
    set fb_tmp_39, $P102
    repr_defined $I5028, fb_tmp_39
    unless $I5028 goto if338_else883 
    elements $I5030, $P102
    sub $I5029, $I5030, 1
    set $P5093, fb_tmp_39[$I5029]
    set $P5095, $P5093
    goto if338_end884
  if338_else883:
    null $P5094
    set $P5095, $P5094
  if338_end884:
    unless_null $P5095, vivi_339885
    nqp_get_sc_object $P5096, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5095, $P5096
  vivi_339885:
    set fb_tmp_38, $P5095
    repr_defined $I5027, fb_tmp_38
    unless $I5027 goto if337_else881 
    set $P5097, fb_tmp_38["OPER"]
    set $P5099, $P5097
    goto if337_end882
  if337_else881:
    null $P5098
    set $P5099, $P5098
  if337_end882:
    unless_null $P5099, vivi_340886
    nqp_get_sc_object $P5100, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5099, $P5100
  vivi_340886:
    set fb_tmp_37, $P5099
    repr_defined $I5026, fb_tmp_37
    unless $I5026 goto if336_else879 
    set $P5101, fb_tmp_37["sym"]
    set $P5103, $P5101
    goto if336_end880
  if336_else879:
    null $P5102
    set $P5103, $P5102
  if336_end880:
    unless_null $P5103, vivi_341887
    nqp_get_sc_object $P5104, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5103, $P5104
  vivi_341887:
.annotate 'line', 527
    $P5105 = $P111."Str"()
    $P5106 = $P5092."EXPR_nonassoc"($P110, $P5103, $P5105)
  if335_end878:
    iseq $I5031, $S104, "left"
    box $P5110, $I5031
    set $P5109, $P5110
    unless $I5031 goto if342_end889 
.annotate 'line', 529
.annotate 'line', 531
    nqp_decontainerize $P5107, _lex_param_0
    $P5108 = $P5107."EXPR_reduce"($P103, $P102)
    set $P5109, $P5108
  if342_end889:
  if334_end876:
    push $P102, $P111
    find_lex $P5111, "$cursor_class"
    repr_bind_attr_int $P101, $P5111, "$!pos", $I101
.annotate 'line', 537
    $P5112 = $P101."ws"()
    set $P109, $P5112
    find_lex $P5113, "$cursor_class"
    repr_get_attr_int $I5032, $P109, $P5113, "$!pos"
    set $I101, $I5032
    find_lex $P5114, "$cursor_class"
    repr_bind_attr_int $P101, $P5114, "$!pos", $I101
    set $N5008, $I101
    set $N5009, 0
    islt $I5033, $N5008, $N5009
    box $P5117, $I5033
    set $P5116, $P5117
    unless $I5033 goto if343_end891 
    $P5115 = "RETURN"($P101)
    set $P5116, $P5115
  if343_end891:
    set $P5118, $P5116
    goto while280_test764 
  while280_handlers767:
    .get_results ($P5119)
    pop_upto_eh $P5119
    getattribute $P5119, $P5119, 'type'
    eq $P5119, .CONTROL_LOOP_NEXT, while280_test764
    eq $P5119, .CONTROL_LOOP_REDO, while280_redo766
  while280_done768:
    pop_eh 
    new $P5124, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5124, while344_handlers895
    push_eh $P5124
  while344_test892:
    set $P5123, $P102
    unless $P102 goto while344_done896 
  while344_redo894:
.annotate 'line', 543
    nqp_decontainerize $P5121, _lex_param_0
    $P5122 = $P5121."EXPR_reduce"($P103, $P102)
    set $P5123, $P5122
    goto while344_test892 
  while344_handlers895:
    .get_results ($P5124)
    pop_upto_eh $P5124
    getattribute $P5124, $P5124, 'type'
    eq $P5124, .CONTROL_LOOP_NEXT, while344_test892
    eq $P5124, .CONTROL_LOOP_REDO, while344_redo894
  while344_done896:
    pop_eh 
    find_lex $P5125, "$cursor_class"
    repr_get_attr_int $I5034, $P101, $P5125, "$!pos"
    set $I101, $I5034
.annotate 'line', 545
    nqp_decontainerize $P5126, _lex_param_0
    $P5127 = $P5126."!cursor_start_cur"()
    set $P101, $P5127
.annotate 'line', 546
    $P101."!cursor_pass"($I101)
    find_lex $P5128, "$cursor_class"
    repr_bind_attr_int $P101, $P5128, "$!pos", $I101
    find_lex $P5129, "$cursor_class"
    pop $P5130, $P103
    setattribute $P101, $P5129, "$!match", $P5130
.annotate 'line', 549
    $P101."!reduce"("EXPR")
    goto lexotic_763
  lexotic_762:
    .get_results ($P101)
  lexotic_763:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1382292146.58822") :anon :lex :outer("cuid_58_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 445
    .lex "%preO", $P101 
    .lex "%postO", $P102 
    .lex "$preprec", $P103 
    .lex "$postprec", $P104 
    .local pmc fb_tmp_23 
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    find_lex $P5005, "@prefixish"
    set fb_tmp_25, $P5005
    repr_defined $I5003, fb_tmp_25
    unless $I5003 goto if289_else791 
    set $P5006, fb_tmp_25[0]
    set $P5008, $P5006
    goto if289_end792
  if289_else791:
    null $P5007
    set $P5008, $P5007
  if289_end792:
    unless_null $P5008, vivi_290793
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_290793:
    set fb_tmp_24, $P5008
    repr_defined $I5002, fb_tmp_24
    unless $I5002 goto if288_else789 
    set $P5010, fb_tmp_24["OPER"]
    set $P5012, $P5010
    goto if288_end790
  if288_else789:
    null $P5011
    set $P5012, $P5011
  if288_end790:
    unless_null $P5012, vivi_291794
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5013
  vivi_291794:
    set fb_tmp_23, $P5012
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if287_else787 
    set $P5014, fb_tmp_23["O"]
    set $P5016, $P5014
    goto if287_end788
  if287_else787:
    null $P5015
    set $P5016, $P5015
  if287_end788:
    unless_null $P5016, vivi_292795
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5017
  vivi_292795:
    set $P101, $P5016
    find_lex $P5018, "@postfixish"
    set fb_tmp_28, $P5018
    repr_defined $I5006, fb_tmp_28
    unless $I5006 goto if295_else800 
    find_lex $P5020, "@postfixish"
    elements $I5008, $P5020
    sub $I5007, $I5008, 1
    set $P5019, fb_tmp_28[$I5007]
    set $P5022, $P5019
    goto if295_end801
  if295_else800:
    null $P5021
    set $P5022, $P5021
  if295_end801:
    unless_null $P5022, vivi_296802
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5022, $P5023
  vivi_296802:
    set fb_tmp_27, $P5022
    repr_defined $I5005, fb_tmp_27
    unless $I5005 goto if294_else798 
    set $P5024, fb_tmp_27["OPER"]
    set $P5026, $P5024
    goto if294_end799
  if294_else798:
    null $P5025
    set $P5026, $P5025
  if294_end799:
    unless_null $P5026, vivi_297803
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5026, $P5027
  vivi_297803:
    set fb_tmp_26, $P5026
    repr_defined $I5004, fb_tmp_26
    unless $I5004 goto if293_else796 
    set $P5028, fb_tmp_26["O"]
    set $P5030, $P5028
    goto if293_end797
  if293_else796:
    null $P5029
    set $P5030, $P5029
  if293_end797:
    unless_null $P5030, vivi_298804
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5030, $P5031
  vivi_298804:
    set $P102, $P5030
    set $P5032, $P101["prec"]
    unless_null $P5032, vivi_299805
    box $P5033, ""
    set $P5032, $P5033
  vivi_299805:
    set $P103, $P5032
    set $P5034, $P102["prec"]
    unless_null $P5034, vivi_300806
    box $P5035, ""
    set $P5034, $P5035
  vivi_300806:
    set $P104, $P5034
    set $S5001, $P104
    set $S5002, $P103
    isgt $I5009, $S5001, $S5002
    set $I5014, $I5009
    if $I5009 goto unless302_end810 
    set $S5003, $P104
    set $S5004, $P103
    iseq $I5010, $S5003, $S5004
    set $I5013, $I5010
    unless $I5010 goto if303_end812 
    set fb_tmp_29, $P102
    repr_defined $I5012, fb_tmp_29
    unless $I5012 goto if304_else813 
    set $P5036, fb_tmp_29["uassoc"]
    set $P5038, $P5036
    goto if304_end814
  if304_else813:
    null $P5037
    set $P5038, $P5037
  if304_end814:
    unless_null $P5038, vivi_305815
    nqp_get_sc_object $P5039, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5038, $P5039
  vivi_305815:
    set $S5005, $P5038
    iseq $I5011, $S5005, "right"
    set $I5013, $I5011
  if303_end812:
    set $I5014, $I5013
  unless302_end810:
    unless $I5014 goto if301_else807 
.annotate 'line', 453
    find_lex $P5040, "@opstack"
    find_lex $P5042, "@prefixish"
    shift $P5041, $P5042
    push $P5040, $P5041
    set $P5046, $P5040
    goto if301_end808
  if301_else807:
.annotate 'line', 456
    find_lex $P5043, "@opstack"
    find_lex $P5045, "@postfixish"
    pop $P5044, $P5045
    push $P5043, $P5044
    set $P5046, $P5043
  if301_end808:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_59_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 553
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$op", $P101 
    .lex "%opOPER", $P102 
    .lex "%opO", $P103 
    .lex "$opassoc", $S101 
    .lex "$key", $S102 
    .lex "$sym", $S103 
    .lex "$reducecheck", $P104 
    .lex "$arg", $P105 
    .lex "self", _lex_param_0 
    .lex "@termstack", _lex_param_1 
    .lex "@opstack", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    set $S102, ""
    set $S103, ""
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P105, $P5005
    pop $P5006, _lex_param_2
    set $P101, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 42
    new $P5008, 'ResizablePMCArray'
    setattribute $P101, $P5007, "@!array", $P5008
    set $P5009, $P101["OPER"]
    set $P102, $P5009
    set $P5010, $P102["O"]
    set $P103, $P5010
    set $P5011, $P103["assoc"]
    set $S5001, $P5011
    set $S101, $S5001
    iseq $I5001, $S101, "unary"
    unless $I5001 goto if345_else899 
.annotate 'line', 567
    pop $P5012, _lex_param_1
    set $P105, $P5012
    set $P101[0], $P105
.annotate 'line', 570
    $P5013 = $P105."from"()
    set $N5001, $P5013
    $P5014 = $P101."from"()
    set $N5002, $P5014
    islt $I5002, $N5001, $N5002
    unless $I5002 goto if346_else901 
    set $S5002, "POSTFIX"
    goto if346_end902
  if346_else901:
    set $S5002, "PREFIX"
  if346_end902:
    set $S102, $S5002
    goto if345_end900
  if345_else899:
    iseq $I5003, $S101, "list"
    unless $I5003 goto if347_else903 
.annotate 'line', 572
    set $P5015, $P102["sym"]
    unless_null $P5015, vivi_348905
    box $P5016, ""
    set $P5015, $P5016
  vivi_348905:
    set $S5003, $P5015
    set $S103, $S5003
    pop $P5017, _lex_param_1
    unshift $P101, $P5017
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while349_handlers909
    push_eh $P5025
  while349_test906:
    set $P5024, _lex_param_2
    unless _lex_param_2 goto while349_done910 
  while349_redo908:
.annotate 'line', 575
    elements $I5006, _lex_param_2
    sub $I5005, $I5006, 1
    set $P5020, _lex_param_2[$I5005]
    set $P5019, $P5020["OPER"]
    set $P5018, $P5019["sym"]
    unless_null $P5018, vivi_351913
    box $P5021, ""
    set $P5018, $P5021
  vivi_351913:
    set $S5004, $P5018
    isne $I5004, $S103, $S5004
    unless $I5004 goto if350_end912 
    die 0, .CONTROL_LOOP_LAST
  if350_end912:
    pop $P5022, _lex_param_1
    unshift $P101, $P5022
    pop $P5023, _lex_param_2
    set $P5024, $P5023
    goto while349_test906 
  while349_handlers909:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while349_test906
    eq $P5025, .CONTROL_LOOP_REDO, while349_redo908
  while349_done910:
    pop_eh 
    pop $P5026, _lex_param_1
    unshift $P101, $P5026
    set $S102, "LIST"
    set $S5006, $S102
    goto if347_end904
  if347_else903:
.annotate 'line', 585
    pop $P5027, _lex_param_1
    set $P101[1], $P5027
    pop $P5028, _lex_param_1
    set $P101[0], $P5028
    set $P5029, $P103["reducecheck"]
    set $P104, $P5029
    isnull $I5007, $P104
    if $I5007 goto unless352_end915 
.annotate 'line', 589
    nqp_decontainerize $P5030, _lex_param_0
    set $S5005, $P104
    $P5031 = $P5030.$S5005($P101)
  unless352_end915:
    set $S102, "INFIX"
    set $S5006, $S102
  if347_end904:
  if345_end900:
.annotate 'line', 592
    nqp_decontainerize $P5032, _lex_param_0
    $P5032."!reduce_with_match"("EXPR", $S102, $P101)
    push _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_nonassoc" :subid("cuid_60_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 596
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    .lex "$op1", _lex_param_2 
    .lex "$op2", _lex_param_3 
.annotate 'line', 597
    set $S5005, _lex_param_2
    concat $S5004, "\"", $S5005
    concat $S5003, $S5004, "\" and \""
    set $S5006, _lex_param_3
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "\" are non-associative and require parens"
    $P5001 = _lex_param_1."panic"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ternary" :subid("cuid_61_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 600
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    set fb_tmp_40, _lex_param_1
    repr_defined $I5001, fb_tmp_40
    unless $I5001 goto if353_else916 
    set $P5001, fb_tmp_40[1]
    set $P5003, $P5001
    goto if353_end917
  if353_else916:
    null $P5002
    set $P5003, $P5002
  if353_end917:
    unless_null $P5003, vivi_354918
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5003, $P5004
  vivi_354918:
    set _lex_param_1[2], $P5003
    set fb_tmp_42, _lex_param_1
    repr_defined $I5003, fb_tmp_42
    unless $I5003 goto if356_else921 
    set $P5005, fb_tmp_42["infix"]
    set $P5007, $P5005
    goto if356_end922
  if356_else921:
    null $P5006
    set $P5007, $P5006
  if356_end922:
    unless_null $P5007, vivi_357923
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_357923:
    set fb_tmp_41, $P5007
    repr_defined $I5002, fb_tmp_41
    unless $I5002 goto if355_else919 
    set $P5009, fb_tmp_41["EXPR"]
    set $P5011, $P5009
    goto if355_end920
  if355_else919:
    null $P5010
    set $P5011, $P5010
  if355_end920:
    unless_null $P5011, vivi_358924
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_358924:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_62_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 605
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1382292140.15261", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    isnull $I5001, $P102
    unless $I5001 goto if359_else925 
.annotate 'line', 610
.annotate 'line', 611
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."!cursor_start_cur"()
    set $P102, $P5010
.annotate 'line', 612
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."pos"()
    $P102."!cursor_pass"($P5012)
    set $P101[_lex_param_1], $P102
    set $P5015, $P102
    goto if359_end926
  if359_else925:
.annotate 'line', 615
.annotate 'line', 616
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."pos"()
    $P102."!cursor_pos"($P5014)
    set $P5015, $P102
  if359_end926:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_63_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 621
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1382292140.15261", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1382292140.15261", 103
    type_check $I5001, $P102, $P5009
    set $I5003, $I5001
    unless $I5001 goto if361_end930 
.annotate 'line', 626
    $P5010 = $P102."pos"()
    set $N5001, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."pos"()
    set $N5002, $P5012
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if361_end930:
    if $I5003 goto unless360_end928 
.annotate 'line', 627
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."!cursor_start_fail"()
    set $P102, $P5014
  unless360_end928:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_64_1382292146.58822") :anon :lex :outer("cuid_232_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 632
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy 
    .lex "$lang_cursor", $P101 
    .lex "$*ACTIONS", $P102 
    .lex "self", _lex_param_0 
    .lex "$lang", _lex_param_1 
    .lex "$regex", _lex_param_2 
    .lex "@args", _lex_param_3 
    .local pmc fb_tmp_43 
    .local pmc fb_tmp_44 
    .local pmc pkg_viv_tmp_11 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc pkg_viv_tmp_12 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
.annotate 'line', 633
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback933
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_11, $P5004
    set fb_tmp_44, pkg_viv_tmp_11
    repr_defined $I5002, fb_tmp_44
    unless $I5002 goto if363_else934 
    set $P5006, fb_tmp_44["%LANG"]
    set $P5008, $P5006
    goto if363_end935
  if363_else934:
    null $P5007
    set $P5008, $P5007
  if363_end935:
    unless_null $P5008, vivi_364936
    new $P5009, 'Hash'
    set pkg_viv_tmp_11["%LANG"], $P5009
    set $P5008, $P5009
  vivi_364936:
    unless_null $P5008, vivi_365937
    die "Contextual %*LANG not found"
    box $P5010, "Contextual %*LANG not found"
    set $P5008, $P5010
  vivi_365937:
    set $P5003, $P5008
  fallback933:
    set fb_tmp_43, $P5003
    repr_defined $I5001, fb_tmp_43
    unless $I5001 goto if362_else931 
    set $S5001, _lex_param_1
    set $P5011, fb_tmp_43[$S5001]
    set $P5013, $P5011
    goto if362_end932
  if362_else931:
    null $P5012
    set $P5013, $P5012
  if362_end932:
    unless_null $P5013, vivi_366938
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5013, $P5014
  vivi_366938:
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."orig"()
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."pos"()
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."!shared"()
    $P5021 = $P5013."!cursor_init"($P5016, $P5018 :named("p"), $P5020 :named("shared"))
    set $P101, $P5021
.annotate 'line', 634
    nqp_decontainerize $P5023, _lex_param_0
    get_how $P5022, $P5023
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = $P5022."traced"($P5024)
    unless $P5025 goto if367_end940 
.annotate 'line', 635
    get_how $P5026, $P101
    nqp_decontainerize $P5028, _lex_param_0
    get_how $P5027, $P5028
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5027."trace_depth"($P5029)
    $P5031 = $P5026."trace-on"($P101, $P5030)
  if367_end940:
    find_dynamic_lex $P5032, "%*LANG"
    unless_null $P5032, fallback943
    nqp_get_sc_object $P5034, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5033, $P5034
    set pkg_viv_tmp_12, $P5033
    set fb_tmp_46, pkg_viv_tmp_12
    repr_defined $I5004, fb_tmp_46
    unless $I5004 goto if369_else944 
    set $P5035, fb_tmp_46["%LANG"]
    set $P5037, $P5035
    goto if369_end945
  if369_else944:
    null $P5036
    set $P5037, $P5036
  if369_end945:
    unless_null $P5037, vivi_370946
    new $P5038, 'Hash'
    set pkg_viv_tmp_12["%LANG"], $P5038
    set $P5037, $P5038
  vivi_370946:
    unless_null $P5037, vivi_371947
    die "Contextual %*LANG not found"
    box $P5039, "Contextual %*LANG not found"
    set $P5037, $P5039
  vivi_371947:
    set $P5032, $P5037
  fallback943:
    set fb_tmp_45, $P5032
    repr_defined $I5003, fb_tmp_45
    unless $I5003 goto if368_else941 
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5040, fb_tmp_45[$S5002]
    set $P5042, $P5040
    goto if368_end942
  if368_else941:
    null $P5041
    set $P5042, $P5041
  if368_end942:
    unless_null $P5042, vivi_372948
    nqp_get_sc_object $P5043, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5042, $P5043
  vivi_372948:
    set $P102, $P5042
.annotate 'line', 638
    set $S5004, _lex_param_2
    $P5044 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 643
    .const 'Sub' $P5035 = 'cuid_65_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_66_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_67_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_68_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_69_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_70_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_71_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_72_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_73_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_74_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_75_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_76_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_77_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_78_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_79_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_80_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_81_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_82_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_83_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_84_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_85_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_86_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_87_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_88_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_89_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_90_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_91_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_92_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_93_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_94_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_95_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_96_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_97_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_98_1382292146.58822' 
    capture_lex $P5035 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_65_1382292146.58822' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_66_1382292146.58822' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_67_1382292146.58822' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_68_1382292146.58822' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_69_1382292146.58822' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_70_1382292146.58822' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_71_1382292146.58822' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_72_1382292146.58822' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_73_1382292146.58822' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_74_1382292146.58822' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_75_1382292146.58822' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_76_1382292146.58822' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_77_1382292146.58822' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_78_1382292146.58822' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_79_1382292146.58822' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_80_1382292146.58822' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_81_1382292146.58822' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_82_1382292146.58822' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_83_1382292146.58822' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_84_1382292146.58822' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_85_1382292146.58822' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_86_1382292146.58822' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_87_1382292146.58822' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_88_1382292146.58822' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_89_1382292146.58822' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_90_1382292146.58822' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_91_1382292146.58822' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_92_1382292146.58822' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_93_1382292146.58822' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_94_1382292146.58822' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_95_1382292146.58822' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_96_1382292146.58822' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_97_1382292146.58822' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_98_1382292146.58822' 
    capture_lex $P5034
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_65_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$src", _lex_param_1 
    .lex "$base", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set $I5001, _lex_param_2
    set $S5001, _lex_param_1
    nqp_radix $P5002, $I5001, $S5001, 0, 2
    set $P101, $P5002
    set $P5003, $P101[2]
    set $N5001, $P5003
    set $S5002, _lex_param_1
    length $I5003, $S5002
    set $N5002, $I5003
    iseq $I5002, $N5001, $N5002
    if $I5002 goto unless373_end950 
.annotate 'line', 646
    $P5004 = _lex_param_1."CURSOR"()
    set $S5005, _lex_param_1
    concat $S5004, "'", $S5005
    concat $S5003, $S5004, "' is not a valid number"
    $P5005 = $P5004."panic"($S5003)
  unless373_end950:
    set $P5006, $P101[0]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_66_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 651
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_247_1382292146.58822' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if374_else951 
    .const 'Sub' $P5001 = 'cuid_247_1382292146.58822' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if374_end952
  if374_else951:
.annotate 'line', 658
.annotate 'line', 659
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if374_end952:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1382292146.58822") :anon :lex :outer("cuid_66_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 652
    .const 'Sub' $P5009 = 'cuid_246_1382292146.58822' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next953:
    unless $P5005, for_done955
    shift $P5008, $P5005
  for_redo954:
    .const 'Sub' $P5007 = 'cuid_246_1382292146.58822' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next953
  for_done955:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1382292146.58822") :anon :lex :outer("cuid_247_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 654
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5002, $P5001
.annotate 'line', 655
    $P5002 = _lex_param_0."ast"()
    set $I5001, $P5002
    chr $S5003, $I5001
    concat $S5001, $S5002, $S5003
    box $P5003, $S5001
    store_lex "$result", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "CTXSAVE" :subid("cuid_67_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 663
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 664
    nqp_get_sc_object $P5001, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 98
.annotate 'line', 665
    nqp_get_sc_object $P5002, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
.annotate 'line', 667
    nqp_get_sc_object $P5003, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 74
    $P5004 = $P5003."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 668
    nqp_get_sc_object $P5005, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 74
    $P5006 = $P5005."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5007 = $P5002."new"($P5004, $P5006, "bind" :named("op"))
.annotate 'line', 670
    nqp_get_sc_object $P5008, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
.annotate 'line', 672
    nqp_get_sc_object $P5009, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
.annotate 'line', 674
    nqp_get_sc_object $P5010, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 74
    $P5011 = $P5010."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5012 = $P5009."new"($P5011, "isnull" :named("op"))
.annotate 'line', 676
    nqp_get_sc_object $P5013, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
.annotate 'line', 678
    nqp_get_sc_object $P5014, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
.annotate 'line', 680
    nqp_get_sc_object $P5015, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 74
    $P5016 = $P5015."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 681
    nqp_get_sc_object $P5017, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    $P5018 = $P5017."new"("ctxsave" :named("value"))
    $P5019 = $P5014."new"($P5016, $P5018, "can" :named("op"))
.annotate 'line', 683
    nqp_get_sc_object $P5020, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
.annotate 'line', 685
    nqp_get_sc_object $P5021, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 74
    $P5022 = $P5021."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5023 = $P5020."new"($P5022, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5024 = $P5013."new"($P5019, $P5023, "if" :named("op"))
    $P5025 = $P5008."new"($P5012, $P5024, "unless" :named("op"))
    $P5026 = $P5001."new"($P5007, $P5025)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_68_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 689
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_250_1382292146.58822' 
    capture_lex $P5024 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc pkg_viv_tmp_13 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback960
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_13, $P5003
    set fb_tmp_49, pkg_viv_tmp_13
    repr_defined $I5003, fb_tmp_49
    unless $I5003 goto if377_else961 
    set $P5005, fb_tmp_49["%COMPILING"]
    set $P5007, $P5005
    goto if377_end962
  if377_else961:
    null $P5006
    set $P5007, $P5006
  if377_end962:
    unless_null $P5007, vivi_378963
    new $P5008, 'Hash'
    set pkg_viv_tmp_13["%COMPILING"], $P5008
    set $P5007, $P5008
  vivi_378963:
    unless_null $P5007, vivi_379964
    die "Contextual %*COMPILING not found"
    box $P5009, "Contextual %*COMPILING not found"
    set $P5007, $P5009
  vivi_379964:
    set $P5002, $P5007
  fallback960:
    set fb_tmp_48, $P5002
    repr_defined $I5002, fb_tmp_48
    unless $I5002 goto if376_else958 
    set $P5010, fb_tmp_48["%?OPTIONS"]
    set $P5012, $P5010
    goto if376_end959
  if376_else958:
    null $P5011
    set $P5012, $P5011
  if376_end959:
    unless_null $P5012, vivi_380965
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5013
  vivi_380965:
    set fb_tmp_47, $P5012
    repr_defined $I5001, fb_tmp_47
    unless $I5001 goto if375_else956 
    set $P5014, fb_tmp_47["outer_ctx"]
    set $P5016, $P5014
    goto if375_end957
  if375_else956:
    null $P5015
    set $P5016, $P5015
  if375_end957:
    unless_null $P5016, vivi_381966
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5017
  vivi_381966:
    set $P101, $P5016
    defined $I5004, $P101
    box $P5023, $I5004
    set $P5022, $P5023
    unless $I5004 goto if382_end968 
.annotate 'line', 691
  until383_test969:
    isnull $I5005, $P101
    box $P5021, $I5005
    set $P5020, $P5021
    if $I5005 goto until383_done973 
  until383_redo971:
    .const 'Sub' $P5018 = 'cuid_250_1382292146.58822' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
    goto until383_test969 
  until383_done973:
    set $P5022, $P5020
  if382_end968:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_250_1382292146.58822") :anon :lex :outer("cuid_68_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 692
    .const 'Sub' $P5011 = 'cuid_249_1382292146.58822' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless384_end975 
.annotate 'line', 694
    set $P5004, $P101
    iter $P5006, $P101
  for_next986:
    unless $P5006, for_done988
    shift $P5008, $P5006
  for_redo987:
    .const 'Sub' $P5007 = 'cuid_249_1382292146.58822' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next986
  for_done988:
  unless384_end975:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_249_1382292146.58822") :anon :lex :outer("cuid_250_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 695
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_248_1382292146.58822' 
    capture_lex $P5006 
    .lex "$key", $S101 
    .lex "$_", _lex_param_0 
    set $S101, ""
    set $S5001, _lex_param_0
    set $S101, $S5001
.annotate 'line', 697
    find_lex $P5001, "$block"
    $P5002 = $P5001."symbol"($S101)
    set $P5005, $P5002
    if $P5002 goto unless385_end977 
    .const 'Sub' $P5003 = 'cuid_248_1382292146.58822' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless385_end977:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1382292146.58822") :anon :lex :outer("cuid_249_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 697
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if386_else978 
.annotate 'line', 699
.annotate 'line', 700
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if386_end979
  if386_else978:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if387_else980 
.annotate 'line', 702
.annotate 'line', 703
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if387_end981
  if387_else980:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if388_else982 
.annotate 'line', 705
.annotate 'line', 706
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if388_end983
  if388_else982:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if389_end985 
.annotate 'line', 708
.annotate 'line', 709
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if389_end985:
    set $P5022, $P5020
  if388_end983:
    set $P5023, $P5022
  if387_end981:
    set $P5024, $P5023
  if386_end979:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_69_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5027 = 'cuid_251_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_252_1382292146.58822' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_59 
    if haz_param_5, default1043
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_2, $P5026
  default1043:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_989
    .lex "RETURN", $P102
    if _lex_param_2 goto unless390_end992 
.annotate 'line', 720
    $P5002 = "RETURN"(0)
  unless390_end992:
.annotate 'line', 721
    $P5004 = _lex_param_1."ast"()
    set $P5003, $P5004
    defined $I5001, $P5003
    if $I5001, defor993
    unless_null _lex_param_1, fallback996
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5005
  fallback996:
    set fb_tmp_50, _lex_param_1
    repr_defined $I5002, fb_tmp_50
    unless $I5002 goto if391_else994 
    set $P5006, fb_tmp_50["OPER"]
    set $P5008, $P5006
    goto if391_end995
  if391_else994:
    null $P5007
    set $P5008, $P5007
  if391_end995:
    unless_null $P5008, vivi_392997
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_392997:
    $P5010 = $P5008."ast"()
    set $P5003, $P5010
  defor993:
    set $P101, $P5003
    if $P101 goto unless393_end999 
    .const 'Sub' $P5011 = 'cuid_251_1382292146.58822' 
    capture_lex $P5011
    $P5012 = $P5011()
  unless393_end999:
    set $S5001, _lex_param_2
    iseq $I5003, $S5001, "POSTFIX"
    unless $I5003 goto if413_else1033 
.annotate 'line', 734
.annotate 'line', 735
    set fb_tmp_59, _lex_param_1
    repr_defined $I5004, fb_tmp_59
    unless $I5004 goto if414_else1035 
    set $P5013, fb_tmp_59[0]
    set $P5015, $P5013
    goto if414_end1036
  if414_else1035:
    null $P5014
    set $P5015, $P5014
  if414_end1036:
    unless_null $P5015, vivi_4151037
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5015, $P5016
  vivi_4151037:
    $P5017 = $P5015."ast"()
    $P5018 = $P101."unshift"($P5017)
    goto if413_end1034
  if413_else1033:
.annotate 'line', 737
.annotate 'line', 738
    $P5022 = _lex_param_1."list"()
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next1040:
    unless $P5021, for_done1042
    shift $P5024, $P5021
  for_redo1041:
    .const 'Sub' $P5023 = 'cuid_252_1382292146.58822' 
    capture_lex $P5023
    $P5019 = $P5023($P5024)
    goto for_next1040
  for_done1042:
  if413_end1034:
.annotate 'line', 740
    $P5025 = _lex_param_1."!make"($P101)
    goto lexotic_990
  lexotic_989:
    .get_results ($P5025)
  lexotic_990:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_251_1382292146.58822") :anon :lex :outer("cuid_69_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 722
    .lex "$name", $P101 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 723
    nqp_get_sc_object $P5002, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
    find_lex $P5003, "$/"
    $P5004 = $P5002."new"($P5003 :named("node"))
    store_lex "$past", $P5004
    find_lex $P5005, "$/"
    unless_null $P5005, fallback1008
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  fallback1008:
    set fb_tmp_53, $P5005
    repr_defined $I5003, fb_tmp_53
    unless $I5003 goto if397_else1006 
    set $P5007, fb_tmp_53["OPER"]
    set $P5009, $P5007
    goto if397_end1007
  if397_else1006:
    null $P5008
    set $P5009, $P5008
  if397_end1007:
    unless_null $P5009, vivi_3981009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_3981009:
    set fb_tmp_52, $P5009
    repr_defined $I5002, fb_tmp_52
    unless $I5002 goto if396_else1004 
    set $P5011, fb_tmp_52["O"]
    set $P5013, $P5011
    goto if396_end1005
  if396_else1004:
    null $P5012
    set $P5013, $P5012
  if396_end1005:
    unless_null $P5013, vivi_3991010
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5013, $P5014
  vivi_3991010:
    set fb_tmp_51, $P5013
    repr_defined $I5001, fb_tmp_51
    unless $I5001 goto if395_else1002 
    set $P5015, fb_tmp_51["op"]
    set $P5017, $P5015
    goto if395_end1003
  if395_else1002:
    null $P5016
    set $P5017, $P5016
  if395_end1003:
    unless_null $P5017, vivi_4001011
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5017, $P5018
  vivi_4001011:
    unless $P5017 goto if394_end1001 
.annotate 'line', 724
.annotate 'line', 725
    find_lex $P5019, "$past"
    find_lex $P5020, "$/"
    unless_null $P5020, fallback1018
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5020, $P5021
  fallback1018:
    set fb_tmp_56, $P5020
    repr_defined $I5006, fb_tmp_56
    unless $I5006 goto if403_else1016 
    set $P5022, fb_tmp_56["OPER"]
    set $P5024, $P5022
    goto if403_end1017
  if403_else1016:
    null $P5023
    set $P5024, $P5023
  if403_end1017:
    unless_null $P5024, vivi_4041019
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5024, $P5025
  vivi_4041019:
    set fb_tmp_55, $P5024
    repr_defined $I5005, fb_tmp_55
    unless $I5005 goto if402_else1014 
    set $P5026, fb_tmp_55["O"]
    set $P5028, $P5026
    goto if402_end1015
  if402_else1014:
    null $P5027
    set $P5028, $P5027
  if402_end1015:
    unless_null $P5028, vivi_4051020
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5028, $P5029
  vivi_4051020:
    set fb_tmp_54, $P5028
    repr_defined $I5004, fb_tmp_54
    unless $I5004 goto if401_else1012 
    set $P5030, fb_tmp_54["op"]
    set $P5032, $P5030
    goto if401_end1013
  if401_else1012:
    null $P5031
    set $P5032, $P5031
  if401_end1013:
    unless_null $P5032, vivi_4061021
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5032, $P5033
  vivi_4061021:
    set $S5001, $P5032
    $P5034 = $P5019."op"($S5001)
  if394_end1001:
    find_lex $P5035, "$key"
    set $S5002, $P5035
    iseq $I5007, $S5002, "LIST"
    unless $I5007 goto if407_end1023 
.annotate 'line', 727
    box $P5036, "infix"
    store_lex "$key", $P5036
  if407_end1023:
    find_lex $P5037, "$key"
    set $S5007, $P5037
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5038, "$/"
    unless_null $P5038, fallback1028
    nqp_get_sc_object $P5039, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5038, $P5039
  fallback1028:
    set fb_tmp_58, $P5038
    repr_defined $I5009, fb_tmp_58
    unless $I5009 goto if409_else1026 
    set $P5040, fb_tmp_58["OPER"]
    set $P5042, $P5040
    goto if409_end1027
  if409_else1026:
    null $P5041
    set $P5042, $P5041
  if409_end1027:
    unless_null $P5042, vivi_4101029
    nqp_get_sc_object $P5043, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5042, $P5043
  vivi_4101029:
    set fb_tmp_57, $P5042
    repr_defined $I5008, fb_tmp_57
    unless $I5008 goto if408_else1024 
    set $P5044, fb_tmp_57["sym"]
    set $P5046, $P5044
    goto if408_end1025
  if408_else1024:
    null $P5045
    set $P5046, $P5045
  if408_end1025:
    unless_null $P5046, vivi_4111030
    nqp_get_sc_object $P5047, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5046, $P5047
  vivi_4111030:
    set $S5008, $P5046
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5048, $S5003
    set $P101, $P5048
.annotate 'line', 729
    find_lex $P5049, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5049."name"($S5009)
.annotate 'line', 730
    find_lex $P5050, "$past"
    $P5051 = $P5050."op"()
    set $P5054, $P5051
    if $P5051 goto unless412_end1032 
.annotate 'line', 731
    find_lex $P5052, "$past"
    $P5053 = $P5052."op"("call")
    set $P5054, $P5053
  unless412_end1032:
    .return ($P5054) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_252_1382292146.58822") :anon :lex :outer("cuid_69_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 738
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if416_end1039 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if416_end1039:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_70_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 743
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_60 
    unless_null _lex_param_1, fallback1046
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1046:
    set fb_tmp_60, _lex_param_1
    repr_defined $I5001, fb_tmp_60
    unless $I5001 goto if417_else1044 
    set $P5002, fb_tmp_60["circumfix"]
    set $P5004, $P5002
    goto if417_end1045
  if417_else1044:
    null $P5003
    set $P5004, $P5003
  if417_end1045:
    unless_null $P5004, vivi_4181047
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4181047:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_71_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 745
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_61 
    unless_null _lex_param_1, fallback1050
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1050:
    set fb_tmp_61, _lex_param_1
    repr_defined $I5001, fb_tmp_61
    unless $I5001 goto if419_else1048 
    set $P5002, fb_tmp_61["term"]
    set $P5004, $P5002
    goto if419_end1049
  if419_else1048:
    null $P5003
    set $P5004, $P5003
  if419_end1049:
    unless_null $P5004, vivi_4201051
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4201051:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_72_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 746
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_73_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 747
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_62 
    unless_null _lex_param_1, fallback1054
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1054:
    set fb_tmp_62, _lex_param_1
    repr_defined $I5001, fb_tmp_62
    unless $I5001 goto if421_else1052 
    set $P5002, fb_tmp_62["term"]
    set $P5004, $P5002
    goto if421_end1053
  if421_else1052:
    null $P5003
    set $P5004, $P5003
  if421_end1053:
    unless_null $P5004, vivi_4221055
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4221055:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_74_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_63 
    unless_null _lex_param_1, fallback1058
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1058:
    set fb_tmp_63, _lex_param_1
    repr_defined $I5001, fb_tmp_63
    unless $I5001 goto if423_else1056 
    set $P5002, fb_tmp_63["VALUE"]
    set $P5004, $P5002
    goto if423_end1057
  if423_else1056:
    null $P5003
    set $P5004, $P5003
  if423_end1057:
    unless_null $P5004, vivi_4241059
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4241059:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_75_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 751
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $N5001, _lex_param_1
    $P5001 = _lex_param_1."!make"($N5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_76_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 753
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 10)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_77_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 754
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 16)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_78_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 755
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 8)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_79_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 756
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 2)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_80_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 758
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_254_1382292146.58822' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc pkg_viv_tmp_14 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 759
    unless_null _lex_param_1, fallback1062
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5002
  fallback1062:
    set fb_tmp_64, _lex_param_1
    repr_defined $I5001, fb_tmp_64
    unless $I5001 goto if425_else1060 
    set $P5003, fb_tmp_64["quote_delimited"]
    set $P5005, $P5003
    goto if425_end1061
  if425_else1060:
    null $P5004
    set $P5005, $P5004
  if425_end1061:
    unless_null $P5005, vivi_4261063
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_4261063:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback1068
    nqp_get_sc_object $P5010, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5009, $P5010
    set pkg_viv_tmp_14, $P5009
    set fb_tmp_66, pkg_viv_tmp_14
    repr_defined $I5003, fb_tmp_66
    unless $I5003 goto if429_else1069 
    set $P5011, fb_tmp_66["%QUOTEMOD"]
    set $P5013, $P5011
    goto if429_end1070
  if429_else1069:
    null $P5012
    set $P5013, $P5012
  if429_end1070:
    unless_null $P5013, vivi_4301071
    new $P5014, 'Hash'
    set pkg_viv_tmp_14["%QUOTEMOD"], $P5014
    set $P5013, $P5014
  vivi_4301071:
    unless_null $P5013, vivi_4311072
    die "Contextual %*QUOTEMOD not found"
    box $P5015, "Contextual %*QUOTEMOD not found"
    set $P5013, $P5015
  vivi_4311072:
    set $P5008, $P5013
  fallback1068:
    set fb_tmp_65, $P5008
    repr_defined $I5002, fb_tmp_65
    unless $I5002 goto if428_else1066 
    set $P5016, fb_tmp_65["w"]
    set $P5018, $P5016
    goto if428_end1067
  if428_else1066:
    null $P5017
    set $P5018, $P5017
  if428_end1067:
    unless_null $P5018, vivi_4321073
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5018, $P5019
  vivi_4321073:
    unless $P5018 goto if427_end1065 
.annotate 'line', 760
    nqp_get_sc_object $P5020, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    type_check $I5004, $P101, $P5020
    unless $I5004 goto if433_else1074 
    .const 'Sub' $P5021 = 'cuid_254_1382292146.58822' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if433_end1075
  if433_else1074:
.annotate 'line', 771
.annotate 'line', 772
    $P5023 = _lex_param_1."CURSOR"()
    $P5024 = $P5023."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5025, $P5024
  if433_end1075:
  if427_end1065:
.annotate 'line', 775
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1382292146.58822") :anon :lex :outer("cuid_80_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 761
    .const 'Sub' $P5037 = 'cuid_253_1382292146.58822' 
    capture_lex $P5037 
    .lex "@words", $P101 
    .local pmc fb_tmp_67 
    .local pmc pkg_lookup_tmp_3 
    .local pmc pkg_lookup_tmp_2 
    .local pmc fb_tmp_68 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 762
    find_lex $P5018, "$/"
    find_lex $P5019, "$past"
    $P5020 = $P5019."value"()
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    set pkg_lookup_tmp_2, $P5003
    get_who $P5004, pkg_lookup_tmp_2
    exists $I5002, $P5004["HLL"]
    unless $I5002 goto if435_else1078 
    get_who $P5006, pkg_lookup_tmp_2
    set $P5005, $P5006["HLL"]
    set $P5008, $P5005
    goto if435_end1079
  if435_else1078:
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5007
  if435_end1079:
    set pkg_lookup_tmp_3, $P5008
    get_who $P5009, pkg_lookup_tmp_3
    exists $I5003, $P5009["Grammar"]
    unless $I5003 goto if436_else1080 
    get_who $P5011, pkg_lookup_tmp_3
    set $P5010, $P5011["Grammar"]
    set $P5013, $P5010
    goto if436_end1081
  if436_else1080:
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5013, $P5012
  if436_end1081:
    get_who $P5002, $P5013
    set fb_tmp_67, $P5002
    repr_defined $I5001, fb_tmp_67
    unless $I5001 goto if434_else1076 
    set $P5014, fb_tmp_67["split_words"]
    set $P5016, $P5014
    goto if434_end1077
  if434_else1076:
    null $P5015
    set $P5016, $P5015
  if434_end1077:
    unless_null $P5016, vivi_4371082
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5017
  vivi_4371082:
    $P5021 = $P5016($P5018, $P5020)
    set $P101, $P5021
    set $N5001, $P101
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    unless $I5004 goto if438_else1083 
.annotate 'line', 763
.annotate 'line', 764
    nqp_get_sc_object $P5022, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
    find_lex $P5023, "$/"
    $P5024 = $P5022."new"("list" :named("op"), $P5023 :named("node"))
    store_lex "$past", $P5024
    set $P5025, $P101
    iter $P5027, $P101
  for_next1085:
    unless $P5027, for_done1087
    shift $P5029, $P5027
  for_redo1086:
    .const 'Sub' $P5028 = 'cuid_253_1382292146.58822' 
    capture_lex $P5028
    $P5025 = $P5028($P5029)
    goto for_next1085
  for_done1087:
    set $P5036, $P5025
    goto if438_end1084
  if438_else1083:
.annotate 'line', 767
.annotate 'line', 768
    nqp_get_sc_object $P5030, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    set fb_tmp_68, $P101
    repr_defined $I5005, fb_tmp_68
    unless $I5005 goto if439_else1088 
    set $P5031, fb_tmp_68[0]
    set $P5033, $P5031
    goto if439_end1089
  if439_else1088:
    null $P5032
    set $P5033, $P5032
  if439_end1089:
    unless_null $P5033, vivi_4401090
    nqp_get_sc_object $P5034, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5033, $P5034
  vivi_4401090:
    set $S5001, $P5033
    $P5035 = $P5030."new"($S5001 :named("value"))
    store_lex "$past", $P5035
    set $P5036, $P5035
  if438_end1084:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_253_1382292146.58822") :anon :lex :outer("cuid_254_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 765
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5002, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    $P5003 = $P5002."new"(_lex_param_0 :named("value"))
    $P5004 = $P5001."push"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_81_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 778
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_255_1382292146.58822' 
    capture_lex $P5027 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_69 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback1093
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5008
  fallback1093:
    set fb_tmp_69, _lex_param_1
    repr_defined $I5001, fb_tmp_69
    unless $I5001 goto if441_else1091 
    set $P5009, fb_tmp_69["quote_atom"]
    set $P5011, $P5009
    goto if441_end1092
  if441_else1091:
    null $P5010
    set $P5011, $P5010
  if441_end1092:
    unless_null $P5011, vivi_4421094
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_4421094:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next1103:
    unless $P5007, for_done1105
    shift $P5014, $P5007
  for_redo1104:
    .const 'Sub' $P5013 = 'cuid_255_1382292146.58822' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next1103
  for_done1105:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if447_end1107 
.annotate 'line', 799
    nqp_get_sc_object $P5015, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    $P5016 = $P5015."new"($P102 :named("value"))
    $P5017 = $P101."push"($P5016)
  if447_end1107:
    unless $P101 goto if448_else1108 
.annotate 'line', 800
    $P5018 = $P101."shift"()
    set $P5021, $P5018
    goto if448_end1109
  if448_else1108:
    nqp_get_sc_object $P5019, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    $P5020 = $P5019."new"("" :named("value"))
    set $P5021, $P5020
  if448_end1109:
    set $P103, $P5021
  while449_test1110:
    set $P5025, $P101
    unless $P101 goto while449_done1114 
  while449_redo1112:
.annotate 'line', 801
.annotate 'line', 802
    nqp_get_sc_object $P5022, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 86
    $P5023 = $P101."shift"()
    $P5024 = $P5022."new"($P103, $P5023, "concat" :named("op"))
    set $P103, $P5024
    set $P5025, $P103
    goto while449_test1110 
  while449_done1114:
.annotate 'line', 804
    $P5026 = _lex_param_1."!make"($P103)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_255_1382292146.58822") :anon :lex :outer("cuid_81_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 781
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 782
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5003, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 12
    type_check $I5002, $P101, $P5003
    not $I5001, $I5002
    unless $I5001 goto if443_else1095 
.annotate 'line', 783
    find_lex $P5004, "$lastlit"
    set $S5002, $P5004
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5005, $S5001
    store_lex "$lastlit", $P5005
    set $P5023, $P5005
    goto if443_end1096
  if443_else1095:
    nqp_get_sc_object $P5006, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    type_check $I5003, $P101, $P5006
    unless $I5003 goto if444_else1097 
.annotate 'line', 786
    find_lex $P5007, "$lastlit"
    set $S5005, $P5007
.annotate 'line', 787
    $P5008 = $P101."value"()
    set $S5006, $P5008
    concat $S5004, $S5005, $S5006
    box $P5009, $S5004
    store_lex "$lastlit", $P5009
    set $P5022, $P5009
    goto if444_end1098
  if444_else1097:
.annotate 'line', 789
    find_lex $P5010, "$lastlit"
    set $S5007, $P5010
    isgt $I5004, $S5007, ""
    unless $I5004 goto if445_end1100 
.annotate 'line', 790
.annotate 'line', 791
    find_lex $P5011, "@parts"
    nqp_get_sc_object $P5012, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    find_lex $P5013, "$lastlit"
    $P5014 = $P5012."new"($P5013 :named("value"))
    $P5015 = $P5011."push"($P5014)
  if445_end1100:
.annotate 'line', 793
    find_lex $P5016, "@parts"
    nqp_get_sc_object $P5017, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 12
    type_check $I5005, $P101, $P5017
    unless $I5005 goto if446_else1101 
    set $P5020, $P101
    goto if446_end1102
  if446_else1101:
.annotate 'line', 795
    nqp_get_sc_object $P5018, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 55
    $P5019 = $P5018."new"($P101 :named("value"))
    set $P5020, $P5019
  if446_end1102:
    $P5016."push"($P5020)
    box $P5021, ""
    store_lex "$lastlit", $P5021
    set $P5022, $P5021
  if444_end1098:
    set $P5023, $P5022
  if443_end1096:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_82_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 807
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
.annotate 'line', 808
    unless_null _lex_param_1, fallback1119
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1119:
    set fb_tmp_70, _lex_param_1
    repr_defined $I5001, fb_tmp_70
    unless $I5001 goto if451_else1117 
    set $P5002, fb_tmp_70["quote_escape"]
    set $P5004, $P5002
    goto if451_end1118
  if451_else1117:
    null $P5003
    set $P5004, $P5003
  if451_end1118:
    unless_null $P5004, vivi_4521120
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4521120:
    unless $P5004 goto if450_else1115 
    unless_null _lex_param_1, fallback1123
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback1123:
    set fb_tmp_71, _lex_param_1
    repr_defined $I5002, fb_tmp_71
    unless $I5002 goto if453_else1121 
    set $P5007, fb_tmp_71["quote_escape"]
    set $P5009, $P5007
    goto if453_end1122
  if453_else1121:
    null $P5008
    set $P5009, $P5008
  if453_end1122:
    unless_null $P5009, vivi_4541124
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_4541124:
    $P5011 = $P5009."ast"()
    set $P5012, $P5011
    goto if450_end1116
  if450_else1115:
    set $S5001, _lex_param_1
    box $P5013, $S5001
    set $P5012, $P5013
  if450_end1116:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_83_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 811
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_84_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 812
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_72 
    unless_null _lex_param_1, fallback1127
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1127:
    set fb_tmp_72, _lex_param_1
    repr_defined $I5001, fb_tmp_72
    unless $I5001 goto if455_else1125 
    set $P5002, fb_tmp_72["stopper"]
    set $P5004, $P5002
    goto if455_end1126
  if455_else1125:
    null $P5003
    set $P5004, $P5003
  if455_end1126:
    unless_null $P5004, vivi_4561128
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4561128:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_85_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_86_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 815
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_87_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 816
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_88_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 817
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_89_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 818
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_90_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_91_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 821
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_74 
    .local pmc fb_tmp_75 
    .local pmc fb_tmp_76 
.annotate 'line', 822
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1133
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5002
  fallback1133:
    set fb_tmp_73, _lex_param_1
    repr_defined $I5001, fb_tmp_73
    unless $I5001 goto if458_else1131 
    set $P5003, fb_tmp_73["hexint"]
    set $P5005, $P5003
    goto if458_end1132
  if458_else1131:
    null $P5004
    set $P5005, $P5004
  if458_end1132:
    unless_null $P5005, vivi_4591134
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_4591134:
    unless $P5005 goto if457_else1129 
    unless_null _lex_param_1, fallback1137
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5007
  fallback1137:
    set fb_tmp_74, _lex_param_1
    repr_defined $I5002, fb_tmp_74
    unless $I5002 goto if460_else1135 
    set $P5008, fb_tmp_74["hexint"]
    set $P5010, $P5008
    goto if460_end1136
  if460_else1135:
    null $P5009
    set $P5010, $P5009
  if460_end1136:
    unless_null $P5010, vivi_4611138
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5010, $P5011
  vivi_4611138:
    set $P5021, $P5010
    goto if457_end1130
  if457_else1129:
    unless_null _lex_param_1, fallback1143
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5012
  fallback1143:
    set fb_tmp_76, _lex_param_1
    repr_defined $I5004, fb_tmp_76
    unless $I5004 goto if463_else1141 
    set $P5013, fb_tmp_76["hexints"]
    set $P5015, $P5013
    goto if463_end1142
  if463_else1141:
    null $P5014
    set $P5015, $P5014
  if463_end1142:
    unless_null $P5015, vivi_4641144
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5015, $P5016
  vivi_4641144:
    set fb_tmp_75, $P5015
    repr_defined $I5003, fb_tmp_75
    unless $I5003 goto if462_else1139 
    set $P5017, fb_tmp_75["hexint"]
    set $P5019, $P5017
    goto if462_end1140
  if462_else1139:
    null $P5018
    set $P5019, $P5018
  if462_end1140:
    unless_null $P5019, vivi_4651145
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_4651145:
    set $P5021, $P5019
  if457_end1130:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_92_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 825
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_77 
    .local pmc fb_tmp_78 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
.annotate 'line', 826
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1150
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5002
  fallback1150:
    set fb_tmp_77, _lex_param_1
    repr_defined $I5001, fb_tmp_77
    unless $I5001 goto if467_else1148 
    set $P5003, fb_tmp_77["octint"]
    set $P5005, $P5003
    goto if467_end1149
  if467_else1148:
    null $P5004
    set $P5005, $P5004
  if467_end1149:
    unless_null $P5005, vivi_4681151
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_4681151:
    unless $P5005 goto if466_else1146 
    unless_null _lex_param_1, fallback1154
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5007
  fallback1154:
    set fb_tmp_78, _lex_param_1
    repr_defined $I5002, fb_tmp_78
    unless $I5002 goto if469_else1152 
    set $P5008, fb_tmp_78["octint"]
    set $P5010, $P5008
    goto if469_end1153
  if469_else1152:
    null $P5009
    set $P5010, $P5009
  if469_end1153:
    unless_null $P5010, vivi_4701155
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5010, $P5011
  vivi_4701155:
    set $P5021, $P5010
    goto if466_end1147
  if466_else1146:
    unless_null _lex_param_1, fallback1160
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5012
  fallback1160:
    set fb_tmp_80, _lex_param_1
    repr_defined $I5004, fb_tmp_80
    unless $I5004 goto if472_else1158 
    set $P5013, fb_tmp_80["octints"]
    set $P5015, $P5013
    goto if472_end1159
  if472_else1158:
    null $P5014
    set $P5015, $P5014
  if472_end1159:
    unless_null $P5015, vivi_4731161
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5015, $P5016
  vivi_4731161:
    set fb_tmp_79, $P5015
    repr_defined $I5003, fb_tmp_79
    unless $I5003 goto if471_else1156 
    set $P5017, fb_tmp_79["octint"]
    set $P5019, $P5017
    goto if471_end1157
  if471_else1156:
    null $P5018
    set $P5019, $P5018
  if471_end1157:
    unless_null $P5019, vivi_4741162
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_4741162:
    set $P5021, $P5019
  if466_end1147:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_93_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 829
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_81 
.annotate 'line', 830
    unless_null _lex_param_1, fallback1165
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1165:
    set fb_tmp_81, _lex_param_1
    repr_defined $I5001, fb_tmp_81
    unless $I5001 goto if475_else1163 
    set $P5002, fb_tmp_81["charspec"]
    set $P5004, $P5002
    goto if475_end1164
  if475_else1163:
    null $P5003
    set $P5004, $P5003
  if475_end1164:
    unless_null $P5004, vivi_4761166
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4761166:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_94_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 833
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 834
    $P5001 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_95_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 837
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_82 
    .local pmc fb_tmp_83 
    .local pmc fb_tmp_84 
.annotate 'line', 838
    unless_null _lex_param_1, fallback1171
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1171:
    set fb_tmp_82, _lex_param_1
    repr_defined $I5001, fb_tmp_82
    unless $I5001 goto if478_else1169 
    set $P5002, fb_tmp_82["textq"]
    set $P5004, $P5002
    goto if478_end1170
  if478_else1169:
    null $P5003
    set $P5004, $P5003
  if478_end1170:
    unless_null $P5004, vivi_4791172
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4791172:
    unless $P5004 goto if477_else1167 
    unless_null _lex_param_1, fallback1175
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback1175:
    set fb_tmp_83, _lex_param_1
    repr_defined $I5002, fb_tmp_83
    unless $I5002 goto if480_else1173 
    set $P5007, fb_tmp_83["textq"]
    set $P5009, $P5007
    goto if480_end1174
  if480_else1173:
    null $P5008
    set $P5009, $P5008
  if480_end1174:
    unless_null $P5009, vivi_4811176
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_4811176:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if477_end1168
  if477_else1167:
    unless_null _lex_param_1, fallback1179
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5012
  fallback1179:
    set fb_tmp_84, _lex_param_1
    repr_defined $I5003, fb_tmp_84
    unless $I5003 goto if482_else1177 
    set $P5013, fb_tmp_84["textqq"]
    set $P5015, $P5013
    goto if482_end1178
  if482_else1177:
    null $P5014
    set $P5015, $P5014
  if482_end1178:
    unless_null $P5015, vivi_4831180
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5015, $P5016
  vivi_4831180:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if477_end1168:
    $P5020 = _lex_param_1."!make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_96_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 841
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    unless_null _lex_param_1, fallback1185
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5002
  fallback1185:
    set fb_tmp_85, _lex_param_1
    repr_defined $I5001, fb_tmp_85
    unless $I5001 goto if485_else1183 
    set $P5003, fb_tmp_85["integer"]
    set $P5005, $P5003
    goto if485_end1184
  if485_else1183:
    null $P5004
    set $P5005, $P5004
  if485_end1184:
    unless_null $P5005, vivi_4861186
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_4861186:
    unless $P5005 goto if484_else1181 
.annotate 'line', 843
    unless_null _lex_param_1, fallback1189
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5007
  fallback1189:
    set fb_tmp_86, _lex_param_1
    repr_defined $I5002, fb_tmp_86
    unless $I5002 goto if487_else1187 
    set $P5008, fb_tmp_86["integer"]
    set $P5010, $P5008
    goto if487_end1188
  if487_else1187:
    null $P5009
    set $P5010, $P5009
  if487_end1188:
    unless_null $P5010, vivi_4881190
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5010, $P5011
  vivi_4881190:
    $P5012 = $P5010."ast"()
    set $P5013, $P5012
    goto if484_end1182
  if484_else1181:
    set $S5002, _lex_param_1
    find_encoding $I5003, 'utf8'
    trans_encoding $S5001, $S5002, $I5003
    find_codepoint $I5003, $S5001
    box $P5014, $I5003
    set $P5013, $P5014
  if484_end1182:
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5004, $N5001, $N5002
    unless $I5004 goto if489_end1192 
.annotate 'line', 845
    $P5015 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5016 = $P5015."panic"($S5003)
  if489_end1192:
.annotate 'line', 846
    set $I5005, $P101
    chr $S5005, $I5005
    $P5017 = _lex_param_1."!make"($S5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_97_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 849
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_256_1382292146.58822' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_87 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1195
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback1195:
    set fb_tmp_87, _lex_param_1
    repr_defined $I5001, fb_tmp_87
    unless $I5001 goto if490_else1193 
    set $P5007, fb_tmp_87["charname"]
    set $P5009, $P5007
    goto if490_end1194
  if490_else1193:
    null $P5008
    set $P5009, $P5008
  if490_end1194:
    unless_null $P5009, vivi_4911196
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_4911196:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1197:
    unless $P5005, for_done1199
    shift $P5012, $P5005
  for_redo1198:
    .const 'Sub' $P5011 = 'cuid_256_1382292146.58822' 
    capture_lex $P5011
    $P5003 = $P5011($P5012)
    goto for_next1197
  for_done1199:
.annotate 'line', 852
    $P5013 = _lex_param_1."!make"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_256_1382292146.58822") :anon :lex :outer("cuid_97_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 851
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$str"
    set $S5002, $P5001
    $P5002 = _lex_param_0."ast"()
    set $S5003, $P5002
    concat $S5001, $S5002, $S5003
    box $P5003, $S5001
    store_lex "$str", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_98_1382292146.58822") :anon :lex :outer("cuid_245_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 855
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_88 
    .local pmc fb_tmp_89 
.annotate 'line', 856
    unless_null _lex_param_1, fallback1204
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback1204:
    set fb_tmp_88, _lex_param_1
    repr_defined $I5001, fb_tmp_88
    unless $I5001 goto if493_else1202 
    set $P5002, fb_tmp_88["charnames"]
    set $P5004, $P5002
    goto if493_end1203
  if493_else1202:
    null $P5003
    set $P5004, $P5003
  if493_end1203:
    unless_null $P5004, vivi_4941205
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_4941205:
    unless $P5004 goto if492_else1200 
    unless_null _lex_param_1, fallback1208
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback1208:
    set fb_tmp_89, _lex_param_1
    repr_defined $I5002, fb_tmp_89
    unless $I5002 goto if495_else1206 
    set $P5007, fb_tmp_89["charnames"]
    set $P5009, $P5007
    goto if495_end1207
  if495_else1206:
    null $P5008
    set $P5009, $P5008
  if495_end1207:
    unless_null $P5009, vivi_4961209
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_4961209:
    $P5011 = $P5009."ast"()
    set $P5014, $P5011
    goto if492_end1201
  if492_else1200:
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."string_to_int"(_lex_param_1, 10)
    set $I5003, $P5013
    chr $S5001, $I5003
    box $P5015, $S5001
    set $P5014, $P5015
  if492_end1201:
    $P5016 = _lex_param_1."!make"($P5014)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_257_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 862
    .const 'Sub' $P5027 = 'cuid_99_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_100_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_101_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_102_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_103_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_104_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_105_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_106_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_107_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_108_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_109_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_110_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_111_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_112_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_113_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_114_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_115_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_116_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_117_1382292146.58822' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_118_1382292146.58822' 
    capture_lex $P5027 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_90 
    get_who $P5001, $P101
    getinterp $P5002
    set fb_tmp_90, $P5002
    repr_defined $I5001, fb_tmp_90
    unless $I5001 goto if497_else1210 
    set $P5003, fb_tmp_90[.IGLOBALS_CONFIG_HASH]
    set $P5005, $P5003
    goto if497_end1211
  if497_else1210:
    null $P5004
    set $P5005, $P5004
  if497_end1211:
    unless_null $P5005, vivi_4981212
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_4981212:
    set $P5001["%parrot_config"], $P5005
    .const 'Sub' $P5007 = 'cuid_99_1382292146.58822' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_100_1382292146.58822' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_101_1382292146.58822' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_102_1382292146.58822' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_103_1382292146.58822' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_104_1382292146.58822' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_105_1382292146.58822' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_106_1382292146.58822' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_107_1382292146.58822' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_108_1382292146.58822' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_109_1382292146.58822' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_110_1382292146.58822' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_111_1382292146.58822' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_112_1382292146.58822' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_113_1382292146.58822' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_114_1382292146.58822' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_115_1382292146.58822' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_116_1382292146.58822' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_117_1382292146.58822' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_118_1382292146.58822' 
    capture_lex $P5026
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "apply_transcodings" :subid("cuid_99_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 865
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5008 = 'cuid_258_1382292146.58822' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    .lex "$transcode", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1213
    .lex "RETURN", $P101
    set $S5001, _lex_param_2
    split $P5004, " ", $S5001
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1217:
    unless $P5003, for_done1219
    shift $P5006, $P5003
  for_redo1218:
    .const 'Sub' $P5005 = 'cuid_258_1382292146.58822' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1217
  for_done1219:
    $P5007 = "RETURN"(_lex_param_1)
    goto lexotic_1214
  lexotic_1213:
    .get_results ($P5007)
  lexotic_1214:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_258_1382292146.58822") :anon :lex :outer("cuid_99_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 866
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_5001216
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 867
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_4991215
  catch_handler_5001216:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_4991215
  skip_handler_4991215:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_100_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 875
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_91 
    find_lex $P5002, "$?PACKAGE"
    get_who $P5001, $P5002
    set fb_tmp_91, $P5001
    repr_defined $I5001, fb_tmp_91
    unless $I5001 goto if501_else1220 
    set $P5003, fb_tmp_91["%parrot_config"]
    set $P5005, $P5003
    goto if501_end1221
  if501_else1220:
    null $P5004
    set $P5005, $P5004
  if501_end1221:
    unless_null $P5005, vivi_5021222
    new $P5006, 'Hash'
    set $P5005, $P5006
  vivi_5021222:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "force_gc" :subid("cuid_101_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 879
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    sweep 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_102_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 883
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("parrot") 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_103_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 887
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_260_1382292146.58822' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_6, default1241
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5010
  default1241:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if504_end1226 
    set $P5004, $P101
  if504_end1226:
    unless $P5004 goto if503_end1224 
.annotate 'line', 891
    $P5006 = $P101."flush"()
  if503_end1224:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if505_end1228 
    .const 'Sub' $P5007 = 'cuid_260_1382292146.58822' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if505_end1228:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1382292146.58822") :anon :lex :outer("cuid_103_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 894
    .const 'Sub' $P5022 = 'cuid_259_1382292146.58822' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5005, "$spec"
    set fb_tmp_92, $P5005
    repr_defined $I5001, fb_tmp_92
    unless $I5001 goto if506_else1229 
    set $P5006, fb_tmp_92[0]
    set $P5008, $P5006
    goto if506_end1230
  if506_else1229:
    null $P5007
    set $P5008, $P5007
  if506_end1230:
    unless_null $P5008, vivi_5071231
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_5071231:
    set $P101, $P5008
    find_lex $P5010, "$spec"
    set fb_tmp_93, $P5010
    repr_defined $I5002, fb_tmp_93
    unless $I5002 goto if508_else1232 
    set $P5011, fb_tmp_93[1]
    set $P5013, $P5011
    goto if508_end1233
  if508_else1232:
    null $P5012
    set $P5013, $P5012
  if508_end1233:
    unless_null $P5013, vivi_5091234
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5013, $P5014
  vivi_5091234:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if510_else1235 
    .const 'Sub' $P5015 = 'cuid_259_1382292146.58822' 
    capture_lex $P5015
    $P5016 = $P5015()
    goto if510_end1236
  if510_else1235:
.annotate 'line', 902
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    nqpevent_fh $P5017, $P5019
  if510_end1236:
    set $S5003, $P102
    iseq $I5005, $S5003, ""
    unless $I5005 goto if512_else1239 
    box $P5021, 31
    set $P5020, $P5021
    goto if512_end1240
  if512_else1239:
    set $P5020, $P102
  if512_end1240:
    set $I5006, $P5020
    nqpdebflags $I5004, $I5006
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1382292146.58822") :anon :lex :outer("cuid_260_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 898
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5003, "$file"
    set $S5001, $P5003
    open $P5002, $S5001, "w"
    set $P5008, $P5002
    if $P5002 goto unless511_end1238 
.annotate 'line', 899
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$file"
    set $S5003, $P5006
    concat $S5002, "Cannot write to ", $S5003
    $P5007 = $P5004."panic"($S5002)
    set $P5008, $P5007
  unless511_end1238:
    set $P101, $P5008
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "run_profiled" :subid("cuid_104_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 910
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$old_runcore", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "$what", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P101, $P5003
    set_runcore "subprof_hll"
.annotate 'line', 913
    $P5004 = _lex_param_1()
    set $P102, $P5004
    set $S5002, $P101
    set_runcore $S5002
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "run_traced" :subid("cuid_105_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 918
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$level", _lex_param_1 
    .lex "$what", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set $I5001, _lex_param_1
    trace $I5001
.annotate 'line', 920
    $P5002 = _lex_param_2()
    set $P101, $P5002
    trace 0
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "version_string" :subid("cuid_106_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 925
    .param pmc _lex_param_0 
    .lex "$parver", $P101 
    .lex "$parrev", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_94 
    .local pmc fb_tmp_95 
    .local pmc fb_tmp_96 
    .local pmc fb_tmp_97 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_1242
    .lex "RETURN", $P103
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set fb_tmp_95, $P5003
    repr_defined $I5002, fb_tmp_95
    unless $I5002 goto if514_else1246 
    set $P5005, fb_tmp_95["%parrot_config"]
    set $P5007, $P5005
    goto if514_end1247
  if514_else1246:
    null $P5006
    set $P5007, $P5006
  if514_end1247:
    unless_null $P5007, vivi_5151248
    new $P5008, 'Hash'
    set $P5007, $P5008
  vivi_5151248:
    set fb_tmp_94, $P5007
    repr_defined $I5001, fb_tmp_94
    unless $I5001 goto if513_else1244 
    set $P5009, fb_tmp_94["VERSION"]
    set $P5011, $P5009
    goto if513_end1245
  if513_else1244:
    null $P5010
    set $P5011, $P5010
  if513_end1245:
    unless_null $P5011, vivi_5161249
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_5161249:
    set $P101, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set fb_tmp_97, $P5014
    repr_defined $I5005, fb_tmp_97
    unless $I5005 goto if518_else1253 
    set $P5016, fb_tmp_97["%parrot_config"]
    set $P5018, $P5016
    goto if518_end1254
  if518_else1253:
    null $P5017
    set $P5018, $P5017
  if518_end1254:
    unless_null $P5018, vivi_5191255
    new $P5019, 'Hash'
    set $P5018, $P5019
  vivi_5191255:
    set fb_tmp_96, $P5018
    repr_defined $I5004, fb_tmp_96
    unless $I5004 goto if517_else1251 
    set $P5020, fb_tmp_96["git_describe"]
    set $P5022, $P5020
    goto if517_end1252
  if517_else1251:
    null $P5021
    set $P5022, $P5021
  if517_end1252:
    unless_null $P5022, vivi_5201256
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5022, $P5023
  vivi_5201256:
    set $P5013, $P5022
    defined $I5003, $P5013
    if $I5003, defor1250
    box $P5024, "(unknown)"
    set $P5013, $P5024
  defor1250:
    set $P102, $P5013
    set $S5004, $P101
    concat $S5003, "parrot ", $S5004
    concat $S5002, $S5003, " revision "
    set $S5005, $P102
    concat $S5001, $S5002, $S5005
    $P5025 = "RETURN"($S5001)
    goto lexotic_1243
  lexotic_1242:
    .get_results ($P5025)
  lexotic_1243:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "vmstat" :subid("cuid_107_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 931
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    new $P5003, 'ResizablePMCArray'
    interpinfo $I5001, .INTERPINFO_TOTAL_MEM_ALLOC
    box $P5004, $I5001
    push $P5003, $P5004
    interpinfo $I5002, .INTERPINFO_TOTAL_MEM_USED
    box $P5005, $I5002
    push $P5003, $P5005
    interpinfo $I5003, .INTERPINFO_TOTAL_PMCS
    box $P5006, $I5003
    push $P5003, $P5006
    interpinfo $I5004, .INTERPINFO_ACTIVE_PMCS
    box $P5007, $I5004
    push $P5003, $P5007
    new $P5002, 'ResizableStringArray'
    push $P5002, "nqp"
    get_root_global $P5001, $P5002, "sprintf"
    $S5001 = $P5001(" %11d %11d %9d %9d", $P5003)
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_108_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("post pir evalpmc") 
.end
.HLL "nqp"
.namespace []
.sub "is_precomp_stage" :subid("cuid_109_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 944
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "pir"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "is_textual_stage" :subid("cuid_110_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 949
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "pir"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_111_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 953
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 954
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_112_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 957
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    concat $S5010, ".include 'cclass.pasm'\n", ".include 'except_severity.pasm'\n"
    concat $S5009, $S5010, ".include 'except_types.pasm'\n"
    concat $S5008, $S5009, ".include 'iglobals.pasm'\n"
    concat $S5007, $S5008, ".include 'interpinfo.pasm'\n"
    concat $S5006, $S5007, ".include 'iterator.pasm'\n"
    concat $S5005, $S5006, ".include 'sysinfo.pasm'\n"
    concat $S5004, $S5005, ".include 'stat.pasm'\n"
    concat $S5003, $S5004, ".include 'datatypes.pasm'\n"
    concat $S5002, $S5003, ".include 'libpaths.pasm'\n"
    concat $S5001, $S5002, ".include 'nqp_const.pir'\n"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_113_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 971
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 972
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."pirbegin"()
    set $S5002, $P5002
    $P5003 = _lex_param_1."pir"()
    set $S5003, $P5003
    concat $S5001, $S5002, $S5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "evalpmc" :subid("cuid_114_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 975
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5013 = 'cuid_261_1382292146.58822' 
    capture_lex $P5013 
    .lex "$compiler", $P101 
    .lex "$pbc", $P102 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    compreg $P5003, "PIR"
    set $P101, $P5003
.annotate 'line', 977
    $P5004 = $P101(_lex_param_1)
    set $P102, $P5004
.annotate 'line', 978
    $P5005 = $P102."is_initialized"("init")
    if $P5005 goto unless521_end1258 
.annotate 'line', 979
    $P5009 = $P102."subs_by_tag"("init")
    set $P5006, $P5009
    iter $P5008, $P5009
  for_next1259:
    unless $P5008, for_done1261
    shift $P5011, $P5008
  for_redo1260:
    .const 'Sub' $P5010 = 'cuid_261_1382292146.58822' 
    capture_lex $P5010
    $P5006 = $P5010($P5011)
    goto for_next1259
  for_done1261:
.annotate 'line', 980
    $P5012 = $P102."mark_initialized"("init")
  unless521_end1258:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1382292146.58822") :anon :lex :outer("cuid_114_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 979
    .param pmc _lex_param_0 
    .lex "$sub", _lex_param_0 
    $P5001 = _lex_param_0()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "is_compunit" :subid("cuid_115_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 985
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cuish", _lex_param_1 
    isa $I5002, _lex_param_1, "String"
    not $I5001, $I5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_mainline" :subid("cuid_116_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 989
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    .local pmc fb_tmp_98 
.annotate 'line', 990
    $P5001 = _lex_param_1."all_subs"()
    set fb_tmp_98, $P5001
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if522_else1262 
    set $P5002, fb_tmp_98[0]
    set $P5004, $P5002
    goto if522_end1263
  if522_else1262:
    null $P5003
    set $P5004, $P5003
  if522_end1263:
    unless_null $P5004, vivi_5231264
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_5231264:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_coderefs" :subid("cuid_117_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 993
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
.annotate 'line', 994
    $P5001 = _lex_param_1."all_subs"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_118_1382292146.58822") :anon :lex :outer("cuid_257_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 997
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$limit", _lex_param_1 
.annotate 'line', 998
    getinterp $P5001
    $P5002 = $P5001."recursion_limit"(_lex_param_1)
    .return ($P5002) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1003
    .param pmc _lex_param_0 
    .const 'Sub' $P5003 = 'cuid_119_1382292146.58822' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$?CLASS", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_119_1382292146.58822' 
    capture_lex $P5001
    getinterp $P5002
    set $P5002, $P5002['lexpad']
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "default_backend" :subid("cuid_119_1382292146.58822") :anon :lex :outer("cuid_120_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1004
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 103
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1009
    .const 'Sub' $P5043 = 'cuid_121_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_122_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_123_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_124_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_125_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_126_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_127_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_128_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_129_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_130_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_131_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_132_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_133_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_134_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_135_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_136_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_137_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_138_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_139_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_140_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_141_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_142_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_143_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_144_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_145_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_146_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_147_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_148_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_149_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_150_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_151_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_152_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_153_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_154_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_155_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_156_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_157_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_158_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_159_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_160_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_161_1382292146.58822' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_162_1382292146.58822' 
    capture_lex $P5043 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_121_1382292146.58822' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_122_1382292146.58822' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_123_1382292146.58822' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_124_1382292146.58822' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_125_1382292146.58822' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_126_1382292146.58822' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_127_1382292146.58822' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_128_1382292146.58822' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_129_1382292146.58822' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_130_1382292146.58822' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_131_1382292146.58822' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_132_1382292146.58822' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_133_1382292146.58822' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_134_1382292146.58822' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_135_1382292146.58822' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_136_1382292146.58822' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_137_1382292146.58822' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_138_1382292146.58822' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_139_1382292146.58822' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_140_1382292146.58822' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_141_1382292146.58822' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_142_1382292146.58822' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_143_1382292146.58822' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_144_1382292146.58822' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_145_1382292146.58822' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_146_1382292146.58822' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_147_1382292146.58822' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_148_1382292146.58822' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_149_1382292146.58822' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_150_1382292146.58822' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_151_1382292146.58822' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_152_1382292146.58822' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_153_1382292146.58822' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_154_1382292146.58822' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_155_1382292146.58822' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_156_1382292146.58822' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_157_1382292146.58822' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_158_1382292146.58822' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_159_1382292146.58822' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_160_1382292146.58822' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_161_1382292146.58822' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_162_1382292146.58822' 
    capture_lex $P5042
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_121_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1022
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
.annotate 'line', 1024
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."default_backend"()
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
.annotate 'line', 1027
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!backend", 10
    $P5011 = $P5010."stages"()
    set $S5002, $P5011
    concat $S5001, "start parse ast ", $S5002
    split $P5007, " ", $S5001
    repr_bind_attr_obj $P5005, $P5006, "@!stages", 0, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    split $P5014, " ", "e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5012, $P5013, "@!cmdoptions", 3, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    new $P5017, 'Hash'
    repr_bind_attr_obj $P5015, $P5016, "%!config", 6, $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "backend" :subid("cuid_122_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1034
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_99 
    unless _lex_param_1 goto if524_end1266 
.annotate 'line', 1035
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    set fb_tmp_99, _lex_param_1
    repr_defined $I5001, fb_tmp_99
    unless $I5001 goto if525_else1267 
    set $P5003, fb_tmp_99[0]
    set $P5005, $P5003
    goto if525_end1268
  if525_else1267:
    null $P5004
    set $P5005, $P5004
  if525_end1268:
    unless_null $P5005, vivi_5261269
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_5261269:
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5005
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
.annotate 'line', 1037
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend", 10
    $P5013 = $P5012."stages"()
    set $S5002, $P5013
    concat $S5001, "start parse ast ", $S5002
    split $P5009, " ", $S5001
    repr_bind_attr_obj $P5007, $P5008, "@!stages", 0, $P5009
  if524_end1266:
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend", 10
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_123_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1042
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_7, default1272
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5007
  default1272:
    unless _lex_param_1 goto if527_end1271 
.annotate 'line', 1043
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_bind_attr_obj $P5001, $P5002, "$!language", 5, _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if527_end1271:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language", 5
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_124_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1050
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    set $S5001, _lex_param_1
    compreg $P5001, $S5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_125_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_126_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1056
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    .local pmc fb_tmp_100 
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback1275
    nqp_get_sc_object $P5006, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5005, $P5006
    set fb_tmp_100, $P5005
    repr_defined $I5002, fb_tmp_100
    unless $I5002 goto if529_else1276 
    set $P5007, fb_tmp_100["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if529_end1277
  if529_else1276:
    null $P5008
    set $P5009, $P5008
  if529_end1277:
    unless_null $P5009, vivi_5301278
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_5301278:
    unless_null $P5009, vivi_5311279
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_5311279:
    set $P5004, $P5009
  fallback1275:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless528_end1274 
.annotate 'line', 1057
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless528_end1274:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_127_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1061
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5030 = 'cuid_265_1382292146.58822' 
    capture_lex $P5030 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
.annotate 'line', 1062
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5009 = $P5006."print"($P5008)
    getinterp $P5010
    $P5011 = $P5010."stdin_handle"()
    set $P101, $P5011
    set fb_tmp_101, _lex_param_1
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if532_else1280 
    set $P5012, fb_tmp_101["encoding"]
    set $P5014, $P5012
    goto if532_end1281
  if532_else1280:
    null $P5013
    set $P5014, $P5013
  if532_end1281:
    unless_null $P5014, vivi_5331282
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5014, $P5015
  vivi_5331282:
    set $S5001, $P5014
    box $P5016, $S5001
    set $P102, $P5016
    set $P5017, $P102
    unless $P102 goto if535_end1286 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5018, $I5002
    set $P5017, $P5018
  if535_end1286:
    unless $P5017 goto if534_end1284 
.annotate 'line', 1066
    $P5019 = $P101."encoding"($P102)
  if534_end1284:
    set fb_tmp_102, _lex_param_1
    repr_defined $I5003, fb_tmp_102
    unless $I5003 goto if536_else1287 
    set $P5020, fb_tmp_102["target"]
    set $P5022, $P5020
    goto if536_end1288
  if536_else1287:
    null $P5021
    set $P5022, $P5021
  if536_end1288:
    unless_null $P5022, vivi_5371289
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5022, $P5023
  vivi_5371289:
    set $S5004, $P5022
    downcase $S5003, $S5004
    box $P5024, $S5003
    set $P103, $P5024
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while538_handlers1293
    push_eh $P5028
  while538_test1290:
    box $P5029, 1
    set $P5027, $P5029
    unless 1 goto while538_done1294 
  while538_redo1292:
    .const 'Sub' $P5025 = 'cuid_265_1382292146.58822' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
    goto while538_test1290 
  while538_handlers1293:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while538_test1290
    eq $P5028, .CONTROL_LOOP_REDO, while538_redo1292
  while538_done1294:
    pop_eh 
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_265_1382292146.58822") :anon :lex :outer("cuid_127_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1072
    .const 'Sub' $P5029 = 'cuid_264_1382292146.58822' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_103 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    isfalse $I5001, $P5006
    unless $I5001 goto if539_end1296 
    die 0, .CONTROL_LOOP_LAST
  if539_end1296:
.annotate 'line', 1075
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5002, $P5007
    if $I5002, defor1297
    box $P5011, "> "
    set $P5007, $P5011
  defor1297:
    set $P101, $P5007
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5003, $P102
    set $I5006, $I5003
    if $I5003 goto unless541_end1301 
    defined $I5005, $P102
    not $I5004, $I5005
    set $I5006, $I5004
  unless541_end1301:
    unless $I5006 goto if540_end1299 
.annotate 'line', 1077
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if540_end1299:
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if545_end1308 
    .const 'Sub' $P5026 = 'cuid_264_1382292146.58822' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if545_end1308:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_264_1382292146.58822") :anon :lex :outer("cuid_265_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1087
    .const 'Sub' $P5047 = 'cuid_263_1382292146.58822' 
    capture_lex $P5047 
    .lex "$output", $P101 
    .local pmc fb_tmp_104 
    .local pmc fb_tmp_105 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1090
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_5471310
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1091
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_5461309
  catch_handler_5471310:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_263_1382292146.58822' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_5461309
  skip_handler_5461309:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1313
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5014, $P5015
    set fb_tmp_104, $P5014
    repr_defined $I5002, fb_tmp_104
    unless $I5002 goto if549_else1314 
    set $P5016, fb_tmp_104["$MAIN_CTX"]
    set $P5018, $P5016
    goto if549_end1315
  if549_else1314:
    null $P5017
    set $P5018, $P5017
  if549_end1315:
    unless_null $P5018, vivi_5501316
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5018, $P5019
  vivi_5501316:
    unless_null $P5018, vivi_5511317
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_5511317:
    set $P5013, $P5018
  fallback1313:
    defined $I5001, $P5013
    unless $I5001 goto if548_end1312 
.annotate 'line', 1097
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1318
    nqp_get_sc_object $P5023, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5022, $P5023
    set fb_tmp_105, $P5022
    repr_defined $I5003, fb_tmp_105
    unless $I5003 goto if552_else1319 
    set $P5024, fb_tmp_105["$MAIN_CTX"]
    set $P5026, $P5024
    goto if552_end1320
  if552_else1319:
    null $P5025
    set $P5026, $P5025
  if552_end1320:
    unless_null $P5026, vivi_5531321
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5026, $P5027
  vivi_5531321:
    unless_null $P5026, vivi_5541322
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_5541322:
    set $P5021, $P5026
  fallback1318:
    store_lex "$save_ctx", $P5021
  if548_end1312:
    isnull $I5004, $P101
    unless $I5004 goto if555_end1324 
    die 0, .CONTROL_LOOP_NEXT
  if555_end1324:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if556_else1325 
.annotate 'line', 1102
.annotate 'line', 1103
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5046, $P5032
    goto if556_end1326
  if556_else1325:
.annotate 'line', 1104
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    nqp_get_sc_object $P5035, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5036, $P5033, $P5035, "$!backend", 10
    find_lex $P5037, "$target"
    $P5038 = $P5036."is_textual_stage"($P5037)
    unless $P5038 goto if557_else1327 
    set $S5003, $P101
    say $S5003
    box $P5045, $S5003
    set $P5044, $P5045
    goto if557_end1328
  if557_else1327:
.annotate 'line', 1106
.annotate 'line', 1107
    find_lex $P5040, "self"
    nqp_decontainerize $P5039, $P5040
    find_lex $P5041, "$target"
    find_lex $P5042, "%adverbs"
    $P5043 = $P5039."dumper"($P101, $P5041, $P5042 :flat :named)
    set $P5044, $P5043
  if557_end1328:
    set $P5046, $P5044
  if556_end1326:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_263_1382292146.58822") :anon :lex :outer("cuid_264_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1092
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 1093
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_128_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1113
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    set $S5001, _lex_param_1
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_exception" :subid("cuid_129_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1117
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ex", _lex_param_1 
    set $S5002, _lex_param_1
    concat $S5001, $S5002, "\n"
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "eval" :subid("cuid_130_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1121
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5026 = 'cuid_266_1382292146.58822' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_268_1382292146.58822' 
    capture_lex $P5026 
    .lex "$output", $P101 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set fb_tmp_106, _lex_param_3
    repr_defined $I5001, fb_tmp_106
    unless $I5001 goto if559_else1331 
    set $P5002, fb_tmp_106["profile-compile"]
    set $P5004, $P5002
    goto if559_end1332
  if559_else1331:
    null $P5003
    set $P5004, $P5003
  if559_end1332:
    unless_null $P5004, vivi_5601333
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_5601333:
    unless $P5004 goto if558_else1329 
.annotate 'line', 1124
.annotate 'line', 1125
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend", 10
    .const 'Sub' $P5010 = 'cuid_266_1382292146.58822' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5008."run_profiled"($P5009)
    set $P101, $P5011
    goto if558_end1330
  if558_else1329:
.annotate 'line', 1129
.annotate 'line', 1130
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."compile"(_lex_param_1, 1 :named("compunit_ok"), _lex_param_3 :flat :named)
    set $P101, $P5013
  if558_end1330:
.annotate 'line', 1133
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend", 10
    $P5017 = $P5016."is_compunit"($P101)
    set $P5022, $P5017
    unless $P5017 goto if562_end1337 
    set fb_tmp_107, _lex_param_3
    repr_defined $I5003, fb_tmp_107
    unless $I5003 goto if563_else1338 
    set $P5018, fb_tmp_107["target"]
    set $P5020, $P5018
    goto if563_end1339
  if563_else1338:
    null $P5019
    set $P5020, $P5019
  if563_end1339:
    unless_null $P5020, vivi_5641340
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5020, $P5021
  vivi_5641340:
    set $S5001, $P5020
    iseq $I5002, $S5001, ""
    box $P5023, $I5002
    set $P5022, $P5023
  if562_end1337:
    unless $P5022 goto if561_end1335 
    .const 'Sub' $P5024 = 'cuid_268_1382292146.58822' 
    capture_lex $P5024
    $P5025 = $P5024()
  if561_end1335:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_266_1382292146.58822") :anon :lex :outer("cuid_130_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1125

.annotate 'line', 1126
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$code"
    find_lex $P5004, "%adverbs"
    $P5005 = $P5001."compile"($P5003, 1 :named("compunit_ok"), $P5004 :flat :named)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_268_1382292146.58822") :anon :lex :outer("cuid_130_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1133
    .const 'Sub' $P5049 = 'cuid_267_1382292146.58822' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_269_1382292146.58822' 
    capture_lex $P5049 
    .lex "$outer_ctx", $P101 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_108, $P5002
    repr_defined $I5001, fb_tmp_108
    unless $I5001 goto if565_else1341 
    set $P5003, fb_tmp_108["outer_ctx"]
    set $P5005, $P5003
    goto if565_end1342
  if565_else1341:
    null $P5004
    set $P5005, $P5004
  if565_end1342:
    unless_null $P5005, vivi_5661343
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_5661343:
    set $P101, $P5005
.annotate 'line', 1135
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!backend", 10
    find_lex $P5011, "$output"
    $P5012 = $P5010."compunit_mainline"($P5011)
    store_lex "$output", $P5012
    defined $I5002, $P101
    unless $I5002 goto if567_end1345 
.annotate 'line', 1136
    find_lex $P5013, "$output"
    $P5014 = $P5013."set_outer_ctx"($P101)
  if567_end1345:
    find_lex $P5015, "%adverbs"
    set fb_tmp_109, $P5015
    repr_defined $I5003, fb_tmp_109
    unless $I5003 goto if569_else1348 
    set $P5016, fb_tmp_109["profile"]
    set $P5018, $P5016
    goto if569_end1349
  if569_else1348:
    null $P5017
    set $P5018, $P5017
  if569_end1349:
    unless_null $P5018, vivi_5701350
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5018, $P5019
  vivi_5701350:
    unless $P5018 goto if568_else1346 
.annotate 'line', 1140
.annotate 'line', 1141
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5023, $P5020, $P5022, "$!backend", 10
    .const 'Sub' $P5025 = 'cuid_267_1382292146.58822' 
    capture_lex $P5025
    newclosure $P5024, $P5025
    $P5026 = $P5023."run_profiled"($P5024)
    store_lex "$output", $P5026
    set $P5048, $P5026
    goto if568_end1347
  if568_else1346:
    find_lex $P5027, "%adverbs"
    set fb_tmp_110, $P5027
    repr_defined $I5004, fb_tmp_110
    unless $I5004 goto if572_else1353 
    set $P5028, fb_tmp_110["trace"]
    set $P5030, $P5028
    goto if572_end1354
  if572_else1353:
    null $P5029
    set $P5030, $P5029
  if572_end1354:
    unless_null $P5030, vivi_5731355
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5030, $P5031
  vivi_5731355:
    unless $P5030 goto if571_else1351 
.annotate 'line', 1143
.annotate 'line', 1144
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    nqp_get_sc_object $P5034, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5035, $P5032, $P5034, "$!backend", 10
    find_lex $P5036, "%adverbs"
    set fb_tmp_111, $P5036
    repr_defined $I5005, fb_tmp_111
    unless $I5005 goto if574_else1356 
    set $P5037, fb_tmp_111["trace"]
    set $P5039, $P5037
    goto if574_end1357
  if574_else1356:
    null $P5038
    set $P5039, $P5038
  if574_end1357:
    unless_null $P5039, vivi_5751358
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5039, $P5040
  vivi_5751358:
    .const 'Sub' $P5042 = 'cuid_269_1382292146.58822' 
    capture_lex $P5042
    newclosure $P5041, $P5042
    $P5043 = $P5035."run_traced"($P5039, $P5041)
    store_lex "$output", $P5043
    set $P5047, $P5043
    goto if571_end1352
  if571_else1351:
.annotate 'line', 1146
.annotate 'line', 1147
    find_lex $P5045, "@args"
    find_lex $P5044, "$output"
    $P5046 = $P5044($P5045 :flat)
    store_lex "$output", $P5046
    set $P5047, $P5046
  if571_end1352:
    set $P5048, $P5047
  if568_end1347:
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_267_1382292146.58822") :anon :lex :outer("cuid_268_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1141

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_269_1382292146.58822") :anon :lex :outer("cuid_268_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1144

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_131_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1154
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    getinterp $P5002
    set $P5002, $P5002['context']
    getattribute $P5001, $P5002, 'caller_ctx'
    store_dynamic_lex "$*MAIN_CTX", $P5001
    box $P5003, 0
    store_dynamic_lex "$*CTXSAVE", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_132_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
.annotate 'line', 1160
    $P5001 = "&join"("", _lex_param_1)
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_133_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1163
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_8, default1361
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1361:
    set $N5001, _lex_param_1
    unless $N5001 goto if576_end1360 
.annotate 'line', 1164
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_bind_attr_obj $P5001, $P5002, "@!stages", 0, _lex_param_1
  if576_end1360:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages", 0
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_134_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1170
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_112 
    set $N5001, _lex_param_1
    unless $N5001 goto if577_end1363 
.annotate 'line', 1171
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    set fb_tmp_112, _lex_param_1
    repr_defined $I5001, fb_tmp_112
    unless $I5001 goto if578_else1364 
    set $P5003, fb_tmp_112[0]
    set $P5005, $P5003
    goto if578_end1365
  if578_else1364:
    null $P5004
    set $P5005, $P5004
  if578_end1365:
    unless_null $P5005, vivi_5791366
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_5791366:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", 1, $P5005
  if577_end1363:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar", 1
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_135_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1177
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_113 
    set $N5001, _lex_param_1
    unless $N5001 goto if580_end1368 
.annotate 'line', 1178
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if581_else1369 
    set $P5003, fb_tmp_113[0]
    set $P5005, $P5003
    goto if581_end1370
  if581_else1369:
    null $P5004
    set $P5005, $P5004
  if581_end1370:
    unless_null $P5005, vivi_5821371
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_5821371:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", 2, $P5005
  if580_end1368:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions", 2
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_136_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1184
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_137_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1186
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_138_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1188
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_9, default1374
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  default1374:
    defined $I5001, _lex_param_1
    unless $I5001 goto if583_end1373 
.annotate 'line', 1189
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", 4, _lex_param_1
  if583_end1373:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname", 4
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_139_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_10, default1377
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1377:
    set $N5001, _lex_param_1
    unless $N5001 goto if584_end1376 
.annotate 'line', 1197
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", 3, _lex_param_1
  if584_end1376:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions", 3
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_140_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1203
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5040 = 'cuid_270_1382292146.58822' 
    capture_lex $P5040 
    .lex "$program-name", $P101 
    .lex "$res", $P102 
    .lex "%opts", $P103 
    .lex "@a", $P104 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_114 
    .local pmc fb_tmp_115 
    .local pmc fb_tmp_116 
    .local pmc fb_tmp_117 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set fb_tmp_114, _lex_param_1
    repr_defined $I5001, fb_tmp_114
    unless $I5001 goto if585_else1378 
    set $P5005, fb_tmp_114[0]
    set $P5007, $P5005
    goto if585_end1379
  if585_else1378:
    null $P5006
    set $P5007, $P5006
  if585_end1379:
    unless_null $P5007, vivi_5861380
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_5861380:
    set $P101, $P5007
.annotate 'line', 1205
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1206
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1207
    $P5012 = $P102."arguments"()
    set $P104, $P5012
    set $P5013, $P103
    iter $P5015, $P103
  for_next1381:
    unless $P5015, for_done1383
    shift $P5017, $P5015
  for_redo1382:
    .const 'Sub' $P5016 = 'cuid_270_1382292146.58822' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next1381
  for_done1383:
    set fb_tmp_115, _lex_param_2
    repr_defined $I5002, fb_tmp_115
    unless $I5002 goto if589_else1388 
    set $P5018, fb_tmp_115["help"]
    set $P5020, $P5018
    goto if589_end1389
  if589_else1388:
    null $P5019
    set $P5020, $P5019
  if589_end1389:
    unless_null $P5020, vivi_5901390
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5020, $P5021
  vivi_5901390:
    set $P5026, $P5020
    if $P5020 goto unless588_end1387 
    set fb_tmp_116, _lex_param_2
    repr_defined $I5003, fb_tmp_116
    unless $I5003 goto if591_else1391 
    set $P5022, fb_tmp_116["h"]
    set $P5024, $P5022
    goto if591_end1392
  if591_else1391:
    null $P5023
    set $P5024, $P5023
  if591_end1392:
    unless_null $P5024, vivi_5921393
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5024, $P5025
  vivi_5921393:
    set $P5026, $P5024
  unless588_end1387:
    unless $P5026 goto if587_end1385 
.annotate 'line', 1212
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5027."usage"($P101)
  if587_end1385:
.annotate 'line', 1214
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5031, $P5029, $P5030, "$!backend", 10
    set fb_tmp_117, _lex_param_2
    repr_defined $I5004, fb_tmp_117
    unless $I5004 goto if594_else1396 
    set $P5032, fb_tmp_117["target"]
    set $P5034, $P5032
    goto if594_end1397
  if594_else1396:
    null $P5033
    set $P5034, $P5033
  if594_end1397:
    unless_null $P5034, vivi_5951398
    nqp_get_sc_object $P5035, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5034, $P5035
  vivi_5951398:
    $P5036 = $P5031."is_precomp_stage"($P5034)
    unless $P5036 goto if593_end1395 
    box $P5037, 1
    set _lex_param_2["precomp"], $P5037
  if593_end1395:
.annotate 'line', 1218
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_270_1382292146.58822") :anon :lex :outer("cuid_140_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1209
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%adverbs"
.annotate 'line', 1210
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_141_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1222
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5101 = 'cuid_271_1382292146.58822' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_272_1382292146.58822' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_273_1382292146.58822' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_274_1382292146.58822' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_275_1382292146.58822' 
    capture_lex $P5101 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_118 
    .local pmc fb_tmp_119 
    .local pmc fb_tmp_120 
    .local pmc fb_tmp_121 
    .local pmc fb_tmp_122 
    .local pmc fb_tmp_123 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    .local pmc fb_tmp_131 
    .local pmc fb_tmp_133 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    set fb_tmp_118, _lex_param_2
    repr_defined $I5001, fb_tmp_118
    unless $I5001 goto if598_else1403 
    set $P5005, fb_tmp_118["version"]
    set $P5007, $P5005
    goto if598_end1404
  if598_else1403:
    null $P5006
    set $P5007, $P5006
  if598_end1404:
    unless_null $P5007, vivi_5991405
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_5991405:
    set $P5013, $P5007
    if $P5007 goto unless597_end1402 
    set fb_tmp_119, _lex_param_2
    repr_defined $I5002, fb_tmp_119
    unless $I5002 goto if600_else1406 
    set $P5009, fb_tmp_119["v"]
    set $P5011, $P5009
    goto if600_end1407
  if600_else1406:
    null $P5010
    set $P5011, $P5010
  if600_end1407:
    unless_null $P5011, vivi_6011408
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_6011408:
    set $P5013, $P5011
  unless597_end1402:
    unless $P5013 goto if596_end1400 
.annotate 'line', 1223
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."version"()
  if596_end1400:
    set fb_tmp_120, _lex_param_2
    repr_defined $I5003, fb_tmp_120
    unless $I5003 goto if605_else1415 
    set $P5016, fb_tmp_120["verbose-config"]
    set $P5018, $P5016
    goto if605_end1416
  if605_else1415:
    null $P5017
    set $P5018, $P5017
  if605_end1416:
    unless_null $P5018, vivi_6061417
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5018, $P5019
  vivi_6061417:
    set $P5024, $P5018
    if $P5018 goto unless604_end1414 
    set fb_tmp_121, _lex_param_2
    repr_defined $I5004, fb_tmp_121
    unless $I5004 goto if607_else1418 
    set $P5020, fb_tmp_121["V"]
    set $P5022, $P5020
    goto if607_end1419
  if607_else1418:
    null $P5021
    set $P5022, $P5021
  if607_end1419:
    unless_null $P5022, vivi_6081420
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5022, $P5023
  vivi_6081420:
    set $P5024, $P5022
  unless604_end1414:
    set $P5029, $P5024
    if $P5024 goto unless603_end1412 
    set fb_tmp_122, _lex_param_2
    repr_defined $I5005, fb_tmp_122
    unless $I5005 goto if609_else1421 
    set $P5025, fb_tmp_122["show-config"]
    set $P5027, $P5025
    goto if609_end1422
  if609_else1421:
    null $P5026
    set $P5027, $P5026
  if609_end1422:
    unless_null $P5027, vivi_6101423
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5027, $P5028
  vivi_6101423:
    set $P5029, $P5027
  unless603_end1412:
    unless $P5029 goto if602_end1410 
.annotate 'line', 1224
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."verbose-config"()
  if602_end1410:
    set fb_tmp_123, _lex_param_2
    repr_defined $I5006, fb_tmp_123
    unless $I5006 goto if612_else1426 
    set $P5032, fb_tmp_123["nqpevent"]
    set $P5034, $P5032
    goto if612_end1427
  if612_else1426:
    null $P5033
    set $P5034, $P5033
  if612_end1427:
    unless_null $P5034, vivi_6131428
    nqp_get_sc_object $P5035, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5034, $P5035
  vivi_6131428:
    unless $P5034 goto if611_end1425 
.annotate 'line', 1226
    nqp_decontainerize $P5036, _lex_param_0
    set fb_tmp_124, _lex_param_2
    repr_defined $I5007, fb_tmp_124
    unless $I5007 goto if614_else1429 
    set $P5037, fb_tmp_124["nqpevent"]
    set $P5039, $P5037
    goto if614_end1430
  if614_else1429:
    null $P5038
    set $P5039, $P5038
  if614_end1430:
    unless_null $P5039, vivi_6151431
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5039, $P5040
  vivi_6151431:
    $P5041 = $P5036."nqpevent"($P5039)
  if611_end1425:
    box $P5042, 0
    set $P103, $P5042
    set fb_tmp_125, _lex_param_2
    repr_defined $I5008, fb_tmp_125
    unless $I5008 goto if616_else1432 
    set $P5043, fb_tmp_125["target"]
    set $P5045, $P5043
    goto if616_end1433
  if616_else1432:
    null $P5044
    set $P5045, $P5044
  if616_end1433:
    unless_null $P5045, vivi_6171434
    nqp_get_sc_object $P5046, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5045, $P5046
  vivi_6171434:
    set $S5002, $P5045
    downcase $S5001, $S5002
    box $P5047, $S5001
    set $P104, $P5047
    new $P5087, 'ExceptionHandler'
    set_label $P5087, catch_handler_6491486
    $P5087.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5087
.annotate 'line', 1232
    new $P5085, 'ExceptionHandler'
    set_label $P5085, catch_handler_6451481
    $P5085.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5085
    new $P5085, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5085, catch_handler_6461482
    push_eh $P5085
    set fb_tmp_126, _lex_param_2
    repr_defined $I5010, fb_tmp_126
    unless $I5010 goto if619_else1437 
    set $P5048, fb_tmp_126["e"]
    set $P5050, $P5048
    goto if619_end1438
  if619_else1437:
    null $P5049
    set $P5050, $P5049
  if619_end1438:
    unless_null $P5050, vivi_6201439
    nqp_get_sc_object $P5051, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5050, $P5051
  vivi_6201439:
    defined $I5009, $P5050
    unless $I5009 goto if618_else1435 
    .const 'Sub' $P5052 = 'cuid_271_1382292146.58822' 
    capture_lex $P5052
    $P5053 = $P5052()
    goto if618_end1436
  if618_else1435:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if628_else1452 
.annotate 'line', 1241
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5055
    set $P5069, $P101
    goto if628_end1453
  if628_else1452:
    set fb_tmp_129, _lex_param_2
    repr_defined $I5012, fb_tmp_129
    unless $I5012 goto if630_else1456 
    set $P5056, fb_tmp_129["combine"]
    set $P5058, $P5056
    goto if630_end1457
  if630_else1456:
    null $P5057
    set $P5058, $P5057
  if630_end1457:
    unless_null $P5058, vivi_6311458
    nqp_get_sc_object $P5059, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5058, $P5059
  vivi_6311458:
    unless $P5058 goto if629_else1454 
.annotate 'line', 1242
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5061
    set $P5068, $P101
    goto if629_end1455
  if629_else1454:
.annotate 'line', 1243
    nqp_decontainerize $P5062, _lex_param_0
    set fb_tmp_130, _lex_param_1
    repr_defined $I5013, fb_tmp_130
    unless $I5013 goto if632_else1459 
    set $P5063, fb_tmp_130[0]
    set $P5065, $P5063
    goto if632_end1460
  if632_else1459:
    null $P5064
    set $P5065, $P5064
  if632_end1460:
    unless_null $P5065, vivi_6331461
    nqp_get_sc_object $P5066, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5065, $P5066
  vivi_6331461:
    $P5067 = $P5062."evalfiles"($P5065, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5067
    set $P5068, $P101
  if629_end1455:
    set $P5069, $P5068
  if628_end1453:
  if618_end1436:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5080, $I5014
    set $P5079, $P5080
    unless $I5014 goto if635_end1465 
.annotate 'line', 1245
    nqp_decontainerize $P5070, _lex_param_0
    nqp_get_sc_object $P5071, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5072, $P5070, $P5071, "$!backend", 10
    $P5073 = $P5072."is_textual_stage"($P104)
    set $P5078, $P5073
    if $P5073 goto unless636_end1467 
    set fb_tmp_131, _lex_param_2
    repr_defined $I5016, fb_tmp_131
    unless $I5016 goto if637_else1468 
    set $P5074, fb_tmp_131["output"]
    set $P5076, $P5074
    goto if637_end1469
  if637_else1468:
    null $P5075
    set $P5076, $P5075
  if637_end1469:
    unless_null $P5076, vivi_6381470
    nqp_get_sc_object $P5077, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5076, $P5077
  vivi_6381470:
    set $P5078, $P5076
  unless636_end1467:
    set $P5079, $P5078
  if635_end1465:
    unless $P5079 goto if634_end1463 
    .const 'Sub' $P5081 = 'cuid_272_1382292146.58822' 
    capture_lex $P5081
    $P5082 = $P5081()
  if634_end1463:
    nqp_get_sc_object $P5083, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    nqp_get_sc_object $P5084, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5086, $P5084
    pop_eh 
    pop_eh 
    goto skip_handler_6441480
  catch_handler_6451481:
    .get_results ($P5085) 
    .const 'Sub' $P10001 = 'cuid_273_1382292146.58822' 
    capture_lex $P10001
    $P10001($P5085)
    set $I10001, 1
    set $P5085["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10002
    goto skip_handler_6441480
  catch_handler_6461482:
    .get_results ($P5085) 
    .const 'Sub' $P10003 = 'cuid_274_1382292146.58822' 
    capture_lex $P10003
    $P10003($P5085)
    set $I10002, 1
    set $P5085["handled"], $I10002
    nqp_get_sc_object $P10004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10004
    goto skip_handler_6441480
  skip_handler_6441480:
    set $P5088, $P5086
    pop_eh 
    goto skip_handler_6481485
  catch_handler_6491486:
    .get_results ($P5087) 
    set $I10001, 1
    set $P5087["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5087
    pop_upto_eh $P5087
    pop_eh 
    set $P5088, $P10001
    goto skip_handler_6481485
  skip_handler_6481485:
    unless $P103 goto if650_end1488 
.annotate 'line', 1268
    set fb_tmp_133, _lex_param_2
    repr_defined $I5017, fb_tmp_133
    unless $I5017 goto if653_else1493 
    set $P5089, fb_tmp_133["ll-exception"]
    set $P5091, $P5089
    goto if653_end1494
  if653_else1493:
    null $P5090
    set $P5091, $P5090
  if653_end1494:
    unless_null $P5091, vivi_6541495
    nqp_get_sc_object $P5092, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5091, $P5092
  vivi_6541495:
    set $P5094, $P5091
    if $P5091 goto unless652_end1492 
    nqp_decontainerize $P5093, _lex_param_0
    can $I5019, $P5093, "handle-exception"
    not $I5018, $I5019
    box $P5095, $I5018
    set $P5094, $P5095
  unless652_end1492:
    unless $P5094 goto if651_else1489 
    .const 'Sub' $P5096 = 'cuid_275_1382292146.58822' 
    capture_lex $P5096
    $P5097 = $P5096()
    set $P5100, $P5097
    goto if651_end1490
  if651_else1489:
.annotate 'line', 1276
.annotate 'line', 1277
    nqp_decontainerize $P5098, _lex_param_0
    $P5099 = $P5098."handle-exception"($P102)
    set $P5100, $P5099
  if651_end1490:
  if650_end1488:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_271_1382292146.58822") :anon :lex :outer("cuid_141_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1233
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", 7, $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1236
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_127, $P5009
    repr_defined $I5001, fb_tmp_127
    unless $I5001 goto if621_else1440 
    set $P5010, fb_tmp_127["e"]
    set $P5012, $P5010
    goto if621_end1441
  if621_else1440:
    null $P5011
    set $P5012, $P5011
  if621_end1441:
    unless_null $P5012, vivi_6221442
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5013
  vivi_6221442:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    box $P5025, $I5002
    set $P5024, $P5025
    if $I5002 goto unless625_end1448 
.annotate 'line', 1237
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend", 10
    find_lex $P5022, "$target"
    $P5023 = $P5021."is_textual_stage"($P5022)
    set $P5024, $P5023
  unless625_end1448:
    set $P5031, $P5024
    if $P5024 goto unless624_end1446 
    find_lex $P5026, "%adverbs"
    set fb_tmp_128, $P5026
    repr_defined $I5003, fb_tmp_128
    unless $I5003 goto if626_else1449 
    set $P5027, fb_tmp_128["output"]
    set $P5029, $P5027
    goto if626_end1450
  if626_else1449:
    null $P5028
    set $P5029, $P5028
  if626_end1450:
    unless_null $P5029, vivi_6271451
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5029, $P5030
  vivi_6271451:
    set $P5031, $P5029
  unless624_end1446:
    set $P5038, $P5031
    if $P5031 goto unless623_end1444 
.annotate 'line', 1238
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$result"
    find_lex $P5035, "$target"
    find_lex $P5036, "%adverbs"
    $P5037 = $P5032."dumper"($P5034, $P5035, $P5036 :flat :named)
    set $P5038, $P5037
  unless623_end1444:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_272_1382292146.58822") :anon :lex :outer("cuid_141_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1245
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_132, $P5003
    repr_defined $I5001, fb_tmp_132
    unless $I5001 goto if639_else1471 
    set $P5004, fb_tmp_132["output"]
    set $P5006, $P5004
    goto if639_end1472
  if639_else1471:
    null $P5005
    set $P5006, $P5005
  if639_end1472:
    unless_null $P5006, vivi_6401473
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5006, $P5007
  vivi_6401473:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless642_end1477 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless642_end1477:
    unless $I5004 goto if641_else1474 
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5011, $P5009
    goto if641_end1475
  if641_else1474:
    set $S5003, $P101
    open $P5010, $S5003, "w"
    set $P5011, $P5010
  if641_end1475:
    set $P102, $P5011
    if $P102 goto unless643_end1479 
.annotate 'line', 1250
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    set $S5005, $P101
    concat $S5004, "Cannot write to ", $S5005
    $P5014 = $P5012."panic"($S5004)
  unless643_end1479:
    find_lex $P5015, "$result"
    $P5016 = $P102."print"($P5015)
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_273_1382292146.58822") :anon :lex :outer("cuid_141_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1254
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    box $P5001, 1
    store_lex "$has_error", $P5001
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_274_1382292146.58822") :anon :lex :outer("cuid_141_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1258
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if647_else1483 
.annotate 'line', 1259
.annotate 'line', 1260
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if647_end1484
  if647_else1483:
.annotate 'line', 1261
    rethrow _lex_param_0
  if647_end1484:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_275_1382292146.58822") :anon :lex :outer("cuid_141_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1269
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    getinterp $P5002
    $P5003 = $P5002."stderr_handle"()
    set $P101, $P5003
    find_lex $P5004, "$error"
    getattribute $P5005, $P5004, "message"
    set $S5001, $P5005
    $P5006 = $P101."print"($S5001)
    $P5007 = $P101."print"("\n")
    find_lex $P5008, "$error"
    $P5009 = $P5008."backtrace_strings"()
    join $S5002, "\n", $P5009
    $P5010 = $P101."print"($S5002)
    $P5011 = $P101."print"("\n")
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_142_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1283
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_276_1382292146.58822' 
    capture_lex $P5043 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_134 
    .local pmc pkg_lookup_tmp_5 
    .local pmc pkg_lookup_tmp_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
.annotate 'line', 1285
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1287
    nqp_get_sc_object $P5006, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    set pkg_lookup_tmp_4, $P5006
    get_who $P5007, pkg_lookup_tmp_4
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if656_else1498 
    get_who $P5009, pkg_lookup_tmp_4
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if656_end1499
  if656_else1498:
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5010
  if656_end1499:
    set pkg_lookup_tmp_5, $P5011
    get_who $P5012, pkg_lookup_tmp_5
    exists $I5003, $P5012["CommandLine"]
    unless $I5003 goto if657_else1500 
    get_who $P5014, pkg_lookup_tmp_5
    set $P5013, $P5014["CommandLine"]
    set $P5016, $P5013
    goto if657_end1501
  if657_else1500:
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5015
  if657_end1501:
    get_who $P5005, $P5016
    set fb_tmp_134, $P5005
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if655_else1496 
    set $P5017, fb_tmp_134["Parser"]
    set $P5019, $P5017
    goto if655_end1497
  if655_else1496:
    null $P5018
    set $P5019, $P5018
  if655_end1497:
    unless_null $P5019, vivi_6581502
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_6581502:
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions", 3
    $P5024 = $P5019."new"($P5023)
    set $P101, $P5024
.annotate 'line', 1288
    $P101."add-stopper"("-e")
.annotate 'line', 1289
    $P101."stop-after-first-arg"()
    new $P5029, 'ExceptionHandler'
    set_label $P5029, catch_handler_6621506
    $P5029.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5029
.annotate 'line', 1291
    new $P5027, 'ExceptionHandler'
    set_label $P5027, catch_handler_6601504
    $P5027.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5027
.annotate 'line', 1292
    $P5025 = $P101."parse"(_lex_param_1)
    set $P102, $P5025
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5028, $P5026
    pop_eh 
    goto skip_handler_6591503
  catch_handler_6601504:
    .get_results ($P5027) 
    .const 'Sub' $P10001 = 'cuid_276_1382292146.58822' 
    capture_lex $P10001
    $P10001($P5027)
    set $I10001, 1
    set $P5027["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5027
    pop_upto_eh $P5027
    pop_eh 
    set $P5028, $P10002
    goto skip_handler_6591503
  skip_handler_6591503:
    set $P5030, $P5028
    pop_eh 
    goto skip_handler_6611505
  catch_handler_6621506:
    .get_results ($P5029) 
    set $I10001, 1
    set $P5029["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5029
    pop_upto_eh $P5029
    pop_eh 
    set $P5030, $P10001
    goto skip_handler_6611505
  skip_handler_6611505:
    unless $P102 goto if663_else1507 
.annotate 'line', 1299
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
.annotate 'line', 1300
    $P5033 = $P102."options"()
    repr_bind_attr_obj $P5031, $P5032, "%!cli-options", 9, $P5033
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
.annotate 'line', 1301
    $P5036 = $P102."arguments"()
    repr_bind_attr_obj $P5034, $P5035, "@!cli-arguments", 8, $P5036
    goto if663_end1508
  if663_else1507:
.annotate 'line', 1303
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    new $P5039, 'Hash'
    repr_bind_attr_obj $P5037, $P5038, "%!cli-options", 9, $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    new $P5042, 'ResizablePMCArray'
    repr_bind_attr_obj $P5040, $P5041, "@!cli-arguments", 8, $P5042
  if663_end1508:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_276_1382292146.58822") :anon :lex :outer("cuid_142_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1293
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1295
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_143_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5047 = 'cuid_278_1382292146.58822' 
    capture_lex $P5047 
    .lex "$target", $P101 
    .lex "$encoding", $P102 
    .lex "@files", $P103 
    .lex "@codes", $P104 
    .lex "$code", $P105 
    .lex "$?FILES", $P106 
    .lex "$r", $P107 
    .lex "self", _lex_param_0 
    .lex "$files", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    .local pmc fb_tmp_137 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P106, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1509
    .lex "RETURN", $P108
    set fb_tmp_135, _lex_param_3
    repr_defined $I5001, fb_tmp_135
    unless $I5001 goto if664_else1511 
    set $P5008, fb_tmp_135["target"]
    set $P5010, $P5008
    goto if664_end1512
  if664_else1511:
    null $P5009
    set $P5010, $P5009
  if664_end1512:
    unless_null $P5010, vivi_6651513
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5010, $P5011
  vivi_6651513:
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5012, $S5001
    set $P101, $P5012
    set fb_tmp_136, _lex_param_3
    repr_defined $I5002, fb_tmp_136
    unless $I5002 goto if666_else1514 
    set $P5013, fb_tmp_136["encoding"]
    set $P5015, $P5013
    goto if666_end1515
  if666_else1514:
    null $P5014
    set $P5015, $P5014
  if666_end1515:
    unless_null $P5015, vivi_6671516
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5015, $P5016
  vivi_6671516:
    set $P102, $P5015
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if668_else1517 
    set $P5018, _lex_param_1
    goto if668_end1518
  if668_else1517:
    new $P5017, 'ResizablePMCArray'
    push $P5017, _lex_param_1
    set $P5018, $P5017
  if668_end1518:
    set $P103, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
.annotate 'line', 1314
    $P5021 = "&join"(",", $P103)
    repr_bind_attr_obj $P5019, $P5020, "$!user_progname", 7, $P5021
    set $P5022, $P103
    iter $P5024, $P103
  for_next1531:
    unless $P5024, for_done1533
    shift $P5026, $P5024
  for_redo1532:
    .const 'Sub' $P5025 = 'cuid_278_1382292146.58822' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1531
  for_done1533:
.annotate 'line', 1337
    $P5027 = "&join"("", $P104)
    set $P105, $P5027
.annotate 'line', 1338
    $P5028 = "&join"(" ", $P103)
    set $P106, $P5028
.annotate 'line', 1339
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5030
    set $S5003, $P101
    iseq $I5004, $S5003, ""
    box $P5036, $I5004
    set $P5035, $P5036
    if $I5004 goto unless681_end1539 
.annotate 'line', 1340
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!backend", 10
    $P5034 = $P5033."is_textual_stage"($P101)
    set $P5035, $P5034
  unless681_end1539:
    set $P5041, $P5035
    if $P5035 goto unless680_end1537 
    set fb_tmp_137, _lex_param_3
    repr_defined $I5005, fb_tmp_137
    unless $I5005 goto if682_else1540 
    set $P5037, fb_tmp_137["output"]
    set $P5039, $P5037
    goto if682_end1541
  if682_else1540:
    null $P5038
    set $P5039, $P5038
  if682_end1541:
    unless_null $P5039, vivi_6831542
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5039, $P5040
  vivi_6831542:
    set $P5041, $P5039
  unless680_end1537:
    unless $P5041 goto if679_else1534 
    $P5042 = "RETURN"($P107)
    set $P5046, $P5042
    goto if679_end1535
  if679_else1534:
.annotate 'line', 1342
.annotate 'line', 1343
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."dumper"($P107, $P101, _lex_param_3 :flat :named)
    $P5045 = "RETURN"($P5044)
    set $P5046, $P5045
  if679_end1535:
    goto lexotic_1510
  lexotic_1509:
    .get_results ($P5046)
  lexotic_1510:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_278_1382292146.58822") :anon :lex :outer("cuid_143_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1316
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_277_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_279_1382292146.58822' 
    capture_lex $P5021 
    .lex "$err", $P101 
    .lex "$in-handle", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    box $P5003, 0
    set $P101, $P5003
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_6721522
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1319
    new $P5006, 'ExceptionHandler'
    set_label $P5006, catch_handler_6701520
    $P5006.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5006
    set $S5001, _lex_param_0
    open $P5004, $S5001, "r"
    set $P102, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5005
    pop_eh 
    goto skip_handler_6691519
  catch_handler_6701520:
    .get_results ($P5006) 
    .const 'Sub' $P10001 = 'cuid_277_1382292146.58822' 
    capture_lex $P10001
    $P10001($P5006)
    set $I10001, 1
    set $P5006["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5006
    pop_upto_eh $P5006
    pop_eh 
    set $P5007, $P10002
    goto skip_handler_6691519
  skip_handler_6691519:
    set $P5009, $P5007
    pop_eh 
    goto skip_handler_6711521
  catch_handler_6721522:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_6711521
  skip_handler_6711521:
    unless $P101 goto if673_end1524 
    exit 1
  if673_end1524:
    new $P5018, 'ExceptionHandler'
    set_label $P5018, catch_handler_6771528
    $P5018.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5018
.annotate 'line', 1327
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_6751526
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
    find_lex $P5010, "$encoding"
    $P5011 = $P102."encoding"($P5010)
    find_lex $P5012, "@codes"
    $P5013 = $P102."readall"()
    push $P5012, $P5013
    $P5014 = $P102."close"()
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_6741525
  catch_handler_6751526:
    .get_results ($P5016) 
    .const 'Sub' $P10001 = 'cuid_279_1382292146.58822' 
    capture_lex $P10001
    $P10001($P5016)
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10002
    goto skip_handler_6741525
  skip_handler_6741525:
    set $P5019, $P5017
    pop_eh 
    goto skip_handler_6761527
  catch_handler_6771528:
    .get_results ($P5018) 
    set $I10001, 1
    set $P5018["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    finalize $P5018
    pop_upto_eh $P5018
    pop_eh 
    set $P5019, $P10001
    goto skip_handler_6761527
  skip_handler_6761527:
    set $P5020, $P101
    unless $P101 goto if678_end1530 
    die $P101
    set $P5020, $P101
  if678_end1530:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_277_1382292146.58822") :anon :lex :outer("cuid_278_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1321
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5001, "$filename"
    set $S5004, $P5001
    concat $S5003, "Could not open ", $S5004
    concat $S5002, $S5003, ". "
    set $S5005, _lex_param_0
    concat $S5001, $S5002, $S5005
    say $S5001
    box $P5002, 1
    store_lex "$err", $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_279_1382292146.58822") :anon :lex :outer("cuid_278_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1331
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5002, _lex_param_0
    concat $S5001, "Error while reading from file: ", $S5002
    box $P5001, $S5001
    store_lex "$err", $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "exists_stage" :subid("cuid_144_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1347
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_280_1382292146.58822' 
    capture_lex $P5011 
    .lex "$found", $P101 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1543
    .lex "RETURN", $P102
    box $P5002, 0
    set $P101, $P5002
.annotate 'line', 1349
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."stages"()
    set $P5003, $P5007
    iter $P5005, $P5007
  for_next1547:
    unless $P5005, for_done1549
    shift $P5009, $P5005
  for_redo1548:
    .const 'Sub' $P5008 = 'cuid_280_1382292146.58822' 
    capture_lex $P5008
    $P5003 = $P5008($P5009)
    goto for_next1547
  for_done1549:
    $P5010 = "RETURN"(0)
    goto lexotic_1544
  lexotic_1543:
    .get_results ($P5010)
  lexotic_1544:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_280_1382292146.58822") :anon :lex :outer("cuid_144_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1349
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stage"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if684_end1546 
.annotate 'line', 1350
    $P5002 = "RETURN"(1)
    set $P5003, $P5002
  if684_end1546:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compile" :subid("cuid_145_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1357
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("from") :optional 
    .param int haz_param_11 :opt_flag 
    .param pmc _lex_param_3 :named("lineposcache") :optional 
    .param int haz_param_12 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    .const 'Sub' $P5059 = 'cuid_281_1382292146.58822' 
    capture_lex $P5059 
    .lex "%*COMPILING", $P101 
    .lex "$*LINEPOSCACHE", $P102 
    .lex "$target", $P103 
    .lex "$result", $P104 
    .lex "$stderr", $P105 
    .lex "$stdin", $P106 
    .lex "$stagestats", $P107 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$lineposcache", _lex_param_3 
    .lex "%adverbs", _lex_param_4 
    .local pmc fb_tmp_138 
    .local pmc pkg_viv_tmp_15 
    .local pmc fb_tmp_139 
    .local pmc fb_tmp_140 
    .local pmc fb_tmp_141 
    if haz_param_11, default1598
    nqp_get_sc_object $P5057, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_2, $P5057
  default1598:
    if haz_param_12, default1599
    nqp_get_sc_object $P5058, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_3, $P5058
  default1599:
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P106, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1550
    .lex "RETURN", $P108
    unless_null $P101, fallback1552
    nqp_get_sc_object $P5009, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_15, $P5008
    set fb_tmp_138, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if685_else1553 
    set $P5010, fb_tmp_138["%COMPILING"]
    set $P5012, $P5010
    goto if685_end1554
  if685_else1553:
    null $P5011
    set $P5012, $P5011
  if685_end1554:
    unless_null $P5012, vivi_6861555
    new $P5013, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5013
    set $P5012, $P5013
  vivi_6861555:
    unless_null $P5012, vivi_6871556
    die "Contextual %*COMPILING not found"
    box $P5014, "Contextual %*COMPILING not found"
    set $P5012, $P5014
  vivi_6871556:
    set $P101, $P5012
  fallback1552:
    set $P101["%?OPTIONS"], _lex_param_4
    set $P102, _lex_param_3
    set fb_tmp_139, _lex_param_4
    repr_defined $I5002, fb_tmp_139
    unless $I5002 goto if688_else1557 
    set $P5015, fb_tmp_139["target"]
    set $P5017, $P5015
    goto if688_end1558
  if688_else1557:
    null $P5016
    set $P5017, $P5016
  if688_end1558:
    unless_null $P5017, vivi_6891559
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5017, $P5018
  vivi_6891559:
    set $S5002, $P5017
    downcase $S5001, $S5002
    box $P5019, $S5001
    set $P103, $P5019
    set $P104, _lex_param_1
    getinterp $P5020
    $P5021 = $P5020."stderr_handle"()
    set $P105, $P5021
    getinterp $P5022
    $P5023 = $P5022."stdin_handle"()
    set $P106, $P5023
    set fb_tmp_140, _lex_param_4
    repr_defined $I5003, fb_tmp_140
    unless $I5003 goto if690_else1560 
    set $P5024, fb_tmp_140["stagestats"]
    set $P5026, $P5024
    goto if690_end1561
  if690_else1560:
    null $P5025
    set $P5026, $P5025
  if690_end1561:
    unless_null $P5026, vivi_6911562
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5026, $P5027
  vivi_6911562:
    set $P107, $P5026
    set $S5003, _lex_param_2
    iseq $I5004, $S5003, ""
    box $P5031, $I5004
    set $P5030, $P5031
    if $I5004 goto unless693_end1566 
.annotate 'line', 1366
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."exists_stage"(_lex_param_2)
    set $P5030, $P5029
  unless693_end1566:
    if $P5030 goto unless692_end1564 
    set $S5006, _lex_param_2
    concat $S5005, "Unknown compilation input '", $S5006
    concat $S5004, $S5005, "'"
    box $P5032, $S5004
    die $P5032
  unless692_end1564:
    set $S5007, $P103
    iseq $I5005, $S5007, ""
    box $P5036, $I5005
    set $P5035, $P5036
    if $I5005 goto unless695_end1570 
.annotate 'line', 1369
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."exists_stage"($P103)
    set $P5035, $P5034
  unless695_end1570:
    if $P5035 goto unless694_end1568 
    set $S5010, $P103
    concat $S5009, "Unknown compilation target '", $S5010
    concat $S5008, $S5009, "'"
    box $P5037, $S5008
    die $P5037
  unless694_end1568:
.annotate 'line', 1372
    nqp_decontainerize $P5041, _lex_param_0
    $P5042 = $P5041."stages"()
    set $P5038, $P5042
    iter $P5040, $P5042
    new $P5044, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5044, for_handlers1589
    push_eh $P5044
  for_next1590:
    unless $P5040, for_done1592
    shift $P5045, $P5040
  for_redo1591:
    .const 'Sub' $P5043 = 'cuid_281_1382292146.58822' 
    capture_lex $P5043
    $P5038 = $P5043($P5045)
    goto for_next1590
  for_handlers1589:
    .get_results ($P5044)
    pop_upto_eh $P5044
    getattribute $P5044, $P5044, 'type'
    eq $P5044, .CONTROL_LOOP_NEXT, for_next1590
    eq $P5044, .CONTROL_LOOP_REDO, for_redo1591
  for_done1592:
    pop_eh 
    set fb_tmp_141, _lex_param_4
    repr_defined $I5006, fb_tmp_141
    unless $I5006 goto if706_else1595 
    set $P5046, fb_tmp_141["compunit_ok"]
    set $P5048, $P5046
    goto if706_end1596
  if706_else1595:
    null $P5047
    set $P5048, $P5047
  if706_end1596:
    unless_null $P5048, vivi_7071597
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5048, $P5049
  vivi_7071597:
    unless $P5048 goto if705_else1593 
.annotate 'line', 1404
    $P5050 = "RETURN"($P104)
    set $P5056, $P5050
    goto if705_end1594
  if705_else1593:
.annotate 'line', 1407
.annotate 'line', 1408
    nqp_decontainerize $P5051, _lex_param_0
    nqp_get_sc_object $P5052, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5053, $P5051, $P5052, "$!backend", 10
    $P5054 = $P5053."compunit_mainline"($P104)
    $P5055 = "RETURN"($P5054)
    set $P5056, $P5055
  if705_end1594:
    goto lexotic_1551
  lexotic_1550:
    .get_results ($P5056)
  lexotic_1551:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_281_1382292146.58822") :anon :lex :outer("cuid_145_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1372
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    find_lex $P5003, "$from"
    set $S5001, $P5003
    isne $I5001, $S5001, ""
    unless $I5001 goto if696_end1572 
.annotate 'line', 1373
    set $S5002, _lex_param_0
    find_lex $P5004, "$from"
    set $S5003, $P5004
    iseq $I5002, $S5002, $S5003
    unless $I5002 goto if697_end1574 
.annotate 'line', 1374
    box $P5005, ""
    store_lex "$from", $P5005
  if697_end1574:
    die 0, .CONTROL_LOOP_NEXT
  if696_end1572:
    time $N5001
    box $P5006, $N5001
    set $P101, $P5006
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    set $S5004, _lex_param_0
    can $I5003, $P5007, $S5004
    unless $I5003 goto if698_else1575 
.annotate 'line', 1380
.annotate 'line', 1381
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "$result"
    find_lex $P5012, "%adverbs"
    set $S5005, _lex_param_0
    $P5013 = $P5009.$S5005($P5011, $P5012 :flat :named)
    store_lex "$result", $P5013
    goto if698_end1576
  if698_else1575:
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    nqp_get_sc_object $P5016, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5017, $P5014, $P5016, "$!backend", 10
    set $S5006, _lex_param_0
    can $I5004, $P5017, $S5006
    unless $I5004 goto if699_else1577 
.annotate 'line', 1383
.annotate 'line', 1384
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend", 10
    find_lex $P5022, "$result"
    find_lex $P5023, "%adverbs"
    set $S5007, _lex_param_0
    $P5024 = $P5021.$S5007($P5022, $P5023 :flat :named)
    store_lex "$result", $P5024
    set $P5026, $P5024
    goto if699_end1578
  if699_else1577:
.annotate 'line', 1386
    set $S5010, _lex_param_0
    concat $S5009, "Unknown compilation stage '", $S5010
    concat $S5008, $S5009, "'"
    box $P5025, $S5008
    die $P5025
    set $P5026, $P5025
  if699_end1578:
  if698_end1576:
    time $N5003
    set $N5004, $P101
    sub $N5002, $N5003, $N5004
    box $P5027, $N5002
    set $P102, $P5027
    find_lex $P5028, "$stagestats"
    defined $I5005, $P5028
    unless $I5005 goto if700_end1580 
.annotate 'line', 1390
    find_lex $P5029, "$stderr"
    new $P5032, 'ResizablePMCArray'
    push $P5032, _lex_param_0
    push $P5032, $P102
    new $P5031, 'ResizableStringArray'
    push $P5031, "nqp"
    get_root_global $P5030, $P5031, "sprintf"
    $S5011 = $P5030("Stage %-11s: %7.3f", $P5032)
    $P5033 = $P5029."print"($S5011)
    find_lex $P5034, "$stagestats"
    set $I5007, $P5034
    band $I5006, $I5007, 4
    unless $I5006 goto if701_end1582 
.annotate 'line', 1392
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    nqp_get_sc_object $P5037, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5038, $P5035, $P5037, "$!backend", 10
    $P5039 = $P5038."force_gc"()
  if701_end1582:
    find_lex $P5040, "$stagestats"
    set $I5009, $P5040
    band $I5008, $I5009, 2
    unless $I5008 goto if702_end1584 
    find_lex $P5041, "$stderr"
.annotate 'line', 1393
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5045, $P5042, $P5044, "$!backend", 10
    $P5046 = $P5045."vmstat"()
    $P5047 = $P5041."print"($P5046)
  if702_end1584:
    find_lex $P5048, "$stderr"
    $P5049 = $P5048."print"("\n")
    find_lex $P5050, "$stagestats"
    set $I5011, $P5050
    band $I5010, $I5011, 8
    box $P5056, $I5010
    set $P5055, $P5056
    unless $I5010 goto if703_end1586 
.annotate 'line', 1396
    find_lex $P5051, "$stderr"
    $P5052 = $P5051."print"("continue> ")
    find_lex $P5053, "$stdin"
    $P5054 = $P5053."readline"()
    set $P5055, $P5054
  if703_end1586:
  if700_end1580:
    set $S5012, _lex_param_0
    find_lex $P5057, "$target"
    set $S5013, $P5057
    iseq $I5012, $S5012, $S5013
    set $I5013, $I5012
    unless $I5012 goto if704_end1588 
    die 0, .CONTROL_LOOP_LAST
    set $I5013, 0
  if704_end1588:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_146_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_147_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1416
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_142 
    .local pmc fb_tmp_143 
    .local pmc fb_tmp_144 
    .local pmc fb_tmp_145 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1600
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_142, _lex_param_2
    repr_defined $I5001, fb_tmp_142
    unless $I5001 goto if709_else1604 
    set $P5005, fb_tmp_142["transcode"]
    set $P5007, $P5005
    goto if709_end1605
  if709_else1604:
    null $P5006
    set $P5007, $P5006
  if709_end1605:
    unless_null $P5007, vivi_7101606
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_7101606:
    unless $P5007 goto if708_end1603 
.annotate 'line', 1418
.annotate 'line', 1419
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend", 10
    set fb_tmp_143, _lex_param_2
    repr_defined $I5002, fb_tmp_143
    unless $I5002 goto if711_else1607 
    set $P5012, fb_tmp_143["transcode"]
    set $P5014, $P5012
    goto if711_end1608
  if711_else1607:
    null $P5013
    set $P5014, $P5013
  if711_end1608:
    unless_null $P5014, vivi_7121609
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5014, $P5015
  vivi_7121609:
    $P5016 = $P5011."apply_transcodings"($P101, $P5014)
    set $P101, $P5016
  if708_end1603:
.annotate 'line', 1421
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."parsegrammar"()
    set $P102, $P5018
.annotate 'line', 1423
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parseactions"()
    set $P103, $P5020
    set fb_tmp_144, _lex_param_2
    repr_defined $I5003, fb_tmp_144
    unless $I5003 goto if714_else1612 
    set $P5021, fb_tmp_144["rxtrace"]
    set $P5023, $P5021
    goto if714_end1613
  if714_else1612:
    null $P5022
    set $P5023, $P5022
  if714_end1613:
    unless_null $P5023, vivi_7151614
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5023, $P5024
  vivi_7151614:
    unless $P5023 goto if713_end1611 
.annotate 'line', 1424
    get_how $P5025, $P102
    $P5026 = $P5025."trace-on"($P102)
  if713_end1611:
.annotate 'line', 1425
    $P5027 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5027
    set fb_tmp_145, _lex_param_2
    repr_defined $I5004, fb_tmp_145
    unless $I5004 goto if717_else1617 
    set $P5028, fb_tmp_145["rxtrace"]
    set $P5030, $P5028
    goto if717_end1618
  if717_else1617:
    null $P5029
    set $P5030, $P5029
  if717_end1618:
    unless_null $P5030, vivi_7181619
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5030, $P5031
  vivi_7181619:
    unless $P5030 goto if716_end1616 
.annotate 'line', 1426
    get_how $P5032, $P102
    $P5033 = $P5032."trace-off"($P102)
  if716_end1616:
    if $P104 goto unless719_end1621 
.annotate 'line', 1427
    nqp_decontainerize $P5034, _lex_param_0
    $P5035 = $P5034."panic"("Unable to parse source")
  unless719_end1621:
    $P5036 = "RETURN"($P104)
    goto lexotic_1601
  lexotic_1600:
    .get_results ($P5036)
  lexotic_1601:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_148_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 1432
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1434
    nqp_get_sc_object $P5003, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017", 12
    $P5004 = $P5003."ACCEPTS"($P101)
    if $P5004 goto unless720_end1623 
.annotate 'line', 1433
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5006, _lex_param_1
    $P5007 = $P5006."name"(_lex_param_1)
    set $S5002, $P5007
    concat $S5001, "Unable to obtain AST from ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless720_end1623:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_149_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1438
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if721_else1624 
.annotate 'line', 1439
.annotate 'line', 1440
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    box $P5004, $S5001
    set $P5003, $P5004
    goto if721_end1625
  if721_else1624:
.annotate 'line', 1442
    box $P5002, "Cannot dump this object; no dump method"
    die $P5002
    set $P5003, $P5002
  if721_end1625:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_150_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1447
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5013 = 'cuid_282_1382292146.58822' 
    capture_lex $P5013 
    .lex "$usage", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_13, default1631
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5012
  default1631:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    unless _lex_param_1 goto if722_end1627 
.annotate 'line', 1448
.annotate 'line', 1449
    $P5002 = "&say"(_lex_param_1)
  if722_end1627:
    box $P5003, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    set $P101, $P5003
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!cmdoptions", 3
    set $P5004, $P5009
    iter $P5006, $P5009
  for_next1628:
    unless $P5006, for_done1630
    shift $P5011, $P5006
  for_redo1629:
    .const 'Sub' $P5010 = 'cuid_282_1382292146.58822' 
    capture_lex $P5010
    $P5004 = $P5010($P5011)
    goto for_next1628
  for_done1630:
    set $S5001, $P101
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_282_1382292146.58822") :anon :lex :outer("cuid_150_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1452
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$usage"
    set $S5002, $P5001
    set $S5005, _lex_param_0
    concat $S5004, "    ", $S5005
    concat $S5003, $S5004, "\n"
    concat $S5001, $S5002, $S5003
    box $P5002, $S5001
    store_lex "$usage", $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_151_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1459
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$backver", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_146 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!config", 6
    set fb_tmp_146, $P5005
    repr_defined $I5001, fb_tmp_146
    unless $I5001 goto if723_else1632 
    set $P5006, fb_tmp_146["version"]
    set $P5008, $P5006
    goto if723_end1633
  if723_else1632:
    null $P5007
    set $P5008, $P5007
  if723_end1633:
    unless_null $P5008, vivi_7241634
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_7241634:
    set $P101, $P5008
.annotate 'line', 1461
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend", 10
    $P5013 = $P5012."version_string"()
    set $P102, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!language", 5
    set $S5006, $P5016
    concat $S5005, "This is ", $S5006
    concat $S5004, $S5005, " version "
    set $S5007, $P101
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, " built on "
    set $S5008, $P102
    concat $S5001, $S5002, $S5008
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "show-config" :subid("cuid_152_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1466
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_153_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1468
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_283_1382292146.58822' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_284_1382292146.58822' 
    capture_lex $P5023 
    .lex "$bname", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 1469
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!backend", 10
    $P5005 = $P5004."name"()
    set $P101, $P5005
.annotate 'line', 1470
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend", 10
    $P5012 = $P5011."config"()
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next1635:
    unless $P5008, for_done1637
    shift $P5014, $P5008
  for_redo1636:
    .const 'Sub' $P5013 = 'cuid_283_1382292146.58822' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next1635
  for_done1637:
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!config", 6
    set $P5015, $P5020
    iter $P5017, $P5020
  for_next1638:
    unless $P5017, for_done1640
    shift $P5022, $P5017
  for_redo1639:
    .const 'Sub' $P5021 = 'cuid_284_1382292146.58822' 
    capture_lex $P5021
    $P5015 = $P5021($P5022)
    goto for_next1638
  for_done1640:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_283_1382292146.58822") :anon :lex :outer("cuid_153_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1470
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$bname"
    set $S5005, $P5001
    concat $S5004, $S5005, "::"
.annotate 'line', 1471
    $P5002 = _lex_param_0."key"()
    set $S5006, $P5002
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, "="
    $P5003 = _lex_param_0."value"()
    set $S5007, $P5003
    concat $S5001, $S5002, $S5007
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_284_1382292146.58822") :anon :lex :outer("cuid_153_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1473
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language", 5
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1474
    $P5005 = _lex_param_0."key"()
    set $S5006, $P5005
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, "="
    $P5006 = _lex_param_0."value"()
    set $S5007, $P5006
    concat $S5001, $S5002, $S5007
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_154_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1479
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@pos", _lex_param_1 
.annotate 'line', 1480
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    $P5004 = $P5003."nqpevent"(_lex_param_1 :flat)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_155_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1483
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_285_1382292146.58822' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizableStringArray'
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages", 0
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1643:
    unless $P5005, for_done1645
    shift $P5010, $P5005
  for_redo1644:
    .const 'Sub' $P5009 = 'cuid_285_1382292146.58822' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1643
  for_done1645:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_bind_attr_obj $P5011, $P5012, "@!stages", 0, $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_285_1382292146.58822") :anon :lex :outer("cuid_155_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1485
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if725_end1642 
.annotate 'line', 1486
.annotate 'line', 1487
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if725_end1642:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_156_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1493
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_286_1382292146.58822' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_287_1382292146.58822' 
    capture_lex $P5035 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_147 
    .local pmc fb_tmp_148 
    .local pmc fb_tmp_149 
    .local pmc fb_tmp_150 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1646
    .lex "RETURN", $P104
    set fb_tmp_147, _lex_param_2
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if727_else1650 
    set $P5004, fb_tmp_147["before"]
    set $P5006, $P5004
    goto if727_end1651
  if727_else1650:
    null $P5005
    set $P5006, $P5005
  if727_end1651:
    unless_null $P5006, vivi_7281652
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5006, $P5007
  vivi_7281652:
    unless $P5006 goto if726_else1648 
.annotate 'line', 1496
    set fb_tmp_148, _lex_param_2
    repr_defined $I5002, fb_tmp_148
    unless $I5002 goto if729_else1653 
    set $P5008, fb_tmp_148["before"]
    set $P5010, $P5008
    goto if729_end1654
  if729_else1653:
    null $P5009
    set $P5010, $P5009
  if729_end1654:
    unless_null $P5010, vivi_7301655
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5010, $P5011
  vivi_7301655:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if726_end1649
  if726_else1648:
    set fb_tmp_149, _lex_param_2
    repr_defined $I5003, fb_tmp_149
    unless $I5003 goto if732_else1658 
    set $P5013, fb_tmp_149["after"]
    set $P5015, $P5013
    goto if732_end1659
  if732_else1658:
    null $P5014
    set $P5015, $P5014
  if732_end1659:
    unless_null $P5015, vivi_7331660
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5015, $P5016
  vivi_7331660:
    unless $P5015 goto if731_else1656 
.annotate 'line', 1499
    set fb_tmp_150, _lex_param_2
    repr_defined $I5004, fb_tmp_150
    unless $I5004 goto if734_else1661 
    set $P5017, fb_tmp_150["after"]
    set $P5019, $P5017
    goto if734_end1662
  if734_else1661:
    null $P5018
    set $P5019, $P5018
  if734_end1662:
    unless_null $P5019, vivi_7351663
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_7351663:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if731_end1657
  if731_else1656:
    .const 'Sub' $P5022 = 'cuid_286_1382292146.58822' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if731_end1657:
  if726_end1649:
    new $P5025, 'ResizablePMCArray'
    set $P103, $P5025
.annotate 'line', 1509
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1668:
    unless $P5028, for_done1670
    shift $P5032, $P5028
  for_redo1669:
    .const 'Sub' $P5031 = 'cuid_287_1382292146.58822' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1668
  for_done1670:
.annotate 'line', 1522
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1647
  lexotic_1646:
    .get_results ($P5034)
  lexotic_1647:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_286_1382292146.58822") :anon :lex :outer("cuid_156_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1502
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1503
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    push $P101, $P5006
.annotate 'line', 1505
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    $P5009 = "RETURN"(1)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_287_1382292146.58822") :anon :lex :outer("cuid_156_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1509
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if736_else1664 
.annotate 'line', 1510
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if737_else1666 
.annotate 'line', 1511
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    push $P5003, $P5004
    find_lex $P5005, "@new-stages"
    push $P5005, _lex_param_0
    set $P5009, $P5005
    goto if737_end1667
  if737_else1666:
.annotate 'line', 1514
    find_lex $P5006, "@new-stages"
    push $P5006, _lex_param_0
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    push $P5007, $P5008
    set $P5009, $P5007
  if737_end1667:
    set $P5011, $P5009
    goto if736_end1665
  if736_else1664:
.annotate 'line', 1518
    find_lex $P5010, "@new-stages"
    push $P5010, _lex_param_0
    set $P5011, $P5010
  if736_end1665:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_157_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1525
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_288_1382292146.58822' 
    capture_lex $P5027 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_151 
    .local pmc fb_tmp_152 
    .local pmc fb_tmp_153 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_151, $P101
    repr_defined $I5001, fb_tmp_151
    unless $I5001 goto if738_else1671 
    set $P5006, fb_tmp_151[0]
    set $P5008, $P5006
    goto if738_end1672
  if738_else1671:
    null $P5007
    set $P5008, $P5007
  if738_end1672:
    unless_null $P5008, vivi_7391673
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_7391673:
    set $S5003, $P5008
    substr $S5002, $S5003, 0, 1
    box $P5010, $S5002
    set $P102, $P5010
    set $S5004, $P102
    index $I5002, "$@%&", $S5004, 0
    box $P5011, $I5002
    set $P103, $P5011
    set $N5001, $P103
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if740_end1675 
.annotate 'line', 1531
    set fb_tmp_152, $P101
    repr_defined $I5004, fb_tmp_152
    unless $I5004 goto if741_else1676 
    set $P5012, fb_tmp_152[0]
    set $P5014, $P5012
    goto if741_end1677
  if741_else1676:
    null $P5013
    set $P5014, $P5013
  if741_end1677:
    unless_null $P5014, vivi_7421678
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5014, $P5015
  vivi_7421678:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_153, $P101
    repr_defined $I5005, fb_tmp_153
    unless $I5005 goto if743_else1679 
    set $P5017, fb_tmp_153[-1]
    set $P5019, $P5017
    goto if743_end1680
  if743_else1679:
    null $P5018
    set $P5019, $P5018
  if743_end1680:
    unless_null $P5019, vivi_7441681
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_7441681:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if740_end1675:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1684:
    unless $P5024, for_done1686
    shift $P5026, $P5024
  for_redo1685:
    .const 'Sub' $P5025 = 'cuid_288_1382292146.58822' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1684
  for_done1686:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_288_1382292146.58822") :anon :lex :outer("cuid_157_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1539
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless745_end1683 
    find_lex $P5001, "@actual_ns"
    push $P5001, _lex_param_0
    set $P5002, $P5001
  unless745_end1683:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_158_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1545
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 :named("cache") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_289_1382292146.58822' 
    capture_lex $P5012 
    .lex "$linepos", $P101 
    .lex "$lo", $I101 
    .lex "$hi", $I102 
    .lex "$line", $I103 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 
    .local pmc fb_tmp_154 
    if haz_param_14, default1714
    set $I5013, 0
    set _lex_param_3, $I5013
  default1714:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    unless _lex_param_3 goto if746_end1688 
.annotate 'line', 1547
    find_dynamic_lex $P5002, "$*LINEPOSCACHE"
    unless_null $P5002, fallback1689
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5003, $P5004
    set fb_tmp_154, $P5003
    repr_defined $I5001, fb_tmp_154
    unless $I5001 goto if747_else1690 
    set $P5005, fb_tmp_154["$LINEPOSCACHE"]
    set $P5007, $P5005
    goto if747_end1691
  if747_else1690:
    null $P5006
    set $P5007, $P5006
  if747_end1691:
    unless_null $P5007, vivi_7481692
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_7481692:
    unless_null $P5007, vivi_7491693
    die "Contextual $*LINEPOSCACHE not found"
    box $P5009, "Contextual $*LINEPOSCACHE not found"
    set $P5007, $P5009
  vivi_7491693:
    set $P5002, $P5007
  fallback1689:
    set $P101, $P5002
  if746_end1688:
    defined $I5002, $P101
    if $I5002 goto unless750_end1695 
    .const 'Sub' $P5010 = 'cuid_289_1382292146.58822' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless750_end1695:
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while755_test1707:
    islt $I5004, $I101, $I102
    set $I5011, $I5004
    unless $I5004 goto while755_done1711 
  while755_redo1709:
.annotate 'line', 1582
    add $I5006, $I101, $I102
    div $I5005, $I5006, 2
    set $I103, $I5005
    set $I5008, $P101[$I103]
    isgt $I5007, $I5008, _lex_param_2
    unless $I5007 goto if756_else1712 
.annotate 'line', 1584
    set $I102, $I103
    set $I5010, $I102
    goto if756_end1713
  if756_else1712:
.annotate 'line', 1586
    add $I5009, $I103, 1
    set $I101, $I5009
    set $I5010, $I101
  if756_end1713:
    set $I5011, $I5010
    goto while755_test1707 
  while755_done1711:
    add $I5012, $I101, 1
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_289_1382292146.58822") :anon :lex :outer("cuid_158_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1551
    .lex "$s", $S101 
    .lex "$eos", $I101 
    .lex "$jpos", $I102 
    .lex "$ord", $I103 
    set $S101, ""
    set $I101, 0
    set $I102, 0
    set $I103, 0
    new $P5001, 'ResizableIntegerArray'
    store_lex "$linepos", $P5001
    find_lex $I5001, "$cache"
    unless $I5001 goto if751_end1697 
.annotate 'line', 1554
    find_lex $P5002, "$linepos"
    store_dynamic_lex "$*LINEPOSCACHE", $P5002
  if751_end1697:
    find_lex $P5003, "$target"
    set $S5001, $P5003
    set $S101, $S5001
    length $I5002, $S101
    set $I101, $I5002
    set $I102, 0
  while752_test1698:
    find_cclass $I5004, 4096, $S101, $I102, $I101
    set $I102, $I5004
    islt $I5003, $I102, $I101
    set $I5013, $I5003
    unless $I5003 goto while752_done1702 
  while752_redo1700:
.annotate 'line', 1565
    ord $I5005, $S101, $I102
    set $I103, $I5005
    add $I5006, $I102, 1
    set $I102, $I5006
    find_lex $P5004, "$linepos"
    push $P5004, $I102
    iseq $I5007, $I103, 13
    set $I5010, $I5007
    unless $I5007 goto if754_end1706 
    ord $I5009, $S101, $I102
    iseq $I5008, $I5009, 10
    set $I5010, $I5008
  if754_end1706:
    set $I5012, $I5010
    unless $I5010 goto if753_end1704 
.annotate 'line', 1571
    add $I5011, $I102, 1
    set $I102, $I5011
    set $I5012, $I102
  if753_end1704:
    set $I5013, $I5012
    goto while752_test1698 
  while752_done1702:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_159_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1594
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname", 7
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1715
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1715:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_160_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1597
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options", 9
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_161_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1598
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments", 8
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_162_1382292146.58822") :anon :lex :outer("cuid_262_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1601
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$limit", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    can $I5001, $P5003, "recursion_limit"
    unless $I5001 goto if757_else1716 
.annotate 'line', 1602
.annotate 'line', 1603
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!backend", 10
    $P5006."recursion_limit"(_lex_param_1)
    set $I5002, 1
    goto if757_end1717
  if757_else1716:
.annotate 'line', 1606

    set $I5002, 0
  if757_end1717:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_290_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1704
    .const 'Sub' $P5006 = 'cuid_164_1382292146.58822' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_165_1382292146.58822' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_166_1382292146.58822' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_167_1382292146.58822' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_168_1382292146.58822' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_164_1382292146.58822' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_165_1382292146.58822' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_166_1382292146.58822' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_167_1382292146.58822' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_168_1382292146.58822' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_164_1382292146.58822") :anon :lex :outer("cuid_290_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1708
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_165_1382292146.58822") :anon :lex :outer("cuid_290_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1713
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_166_1382292146.58822") :anon :lex :outer("cuid_290_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1714
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_167_1382292146.58822") :anon :lex :outer("cuid_290_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1716
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_168_1382292146.58822") :anon :lex :outer("cuid_290_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1720
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    .local pmc fb_tmp_155 
    .local pmc fb_tmp_156 
    .local pmc fb_tmp_157 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if758_else1718 
.annotate 'line', 1723
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options", 1
    set fb_tmp_155, $P5006
    repr_defined $I5003, fb_tmp_155
    unless $I5003 goto if760_else1722 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_155[$S5002]
    set $P5009, $P5007
    goto if760_end1723
  if760_else1722:
    null $P5008
    set $P5009, $P5008
  if760_end1723:
    unless_null $P5009, vivi_7611724
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_7611724:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if759_else1720 
.annotate 'line', 1724
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options", 1
    set fb_tmp_156, $P5013
    repr_defined $I5004, fb_tmp_156
    unless $I5004 goto if762_else1725 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_156[$S5003]
    set $P5016, $P5014
    goto if762_end1726
  if762_else1725:
    null $P5015
    set $P5016, $P5015
  if762_end1726:
    unless_null $P5016, vivi_7631727
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5017
  vivi_7631727:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if759_end1721
  if759_else1720:
.annotate 'line', 1726
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options", 1
    set $S5004, _lex_param_1
    new $P5021, 'ResizablePMCArray'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options", 1
    set fb_tmp_157, $P5024
    repr_defined $I5005, fb_tmp_157
    unless $I5005 goto if764_else1728 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_157[$S5005]
    set $P5027, $P5025
    goto if764_end1729
  if764_else1728:
    null $P5026
    set $P5027, $P5026
  if764_end1729:
    unless_null $P5027, vivi_7651730
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5027, $P5028
  vivi_7651730:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if759_end1721:
    set $P5033, $P5029
    goto if758_end1719
  if758_else1718:
.annotate 'line', 1729
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options", 1
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if758_end1719:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_291_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1735
    .const 'Sub' $P5011 = 'cuid_169_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_170_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_171_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_172_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_173_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_174_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_175_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_176_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_177_1382292146.58822' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_178_1382292146.58822' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_169_1382292146.58822' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_170_1382292146.58822' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_171_1382292146.58822' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_172_1382292146.58822' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_173_1382292146.58822' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_174_1382292146.58822' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_175_1382292146.58822' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_176_1382292146.58822' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_177_1382292146.58822' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_178_1382292146.58822' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_169_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1741
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 1742
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1743
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_170_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1747
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", 3, $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_171_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1751
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_15 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_292_1382292146.58822' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_15, default1734
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1734:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", 2, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper", 2
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", 3, $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1731:
    unless $P5019, for_done1733
    shift $P5021, $P5019
  for_redo1732:
    .const 'Sub' $P5020 = 'cuid_292_1382292146.58822' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1731
  for_done1733:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_292_1382292146.58822") :anon :lex :outer("cuid_171_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1757
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1758
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_172_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1761
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper", 2
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_173_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1765
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    set $S5001, _lex_param_1
    split $P5001, "|", $S5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add-spec" :subid("cuid_174_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1770
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_293_1382292146.58822' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $S5001, _lex_param_1
    index $I5001, $S5001, "=", 0
    box $P5004, $I5001
    set $P101, $P5004
    set $N5001, $P101
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    unless $I5002 goto if766_else1735 
.annotate 'line', 1774
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1776
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if766_end1736
  if766_else1735:
.annotate 'line', 1777
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1779
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if766_end1736:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1737:
    unless $P5013, for_done1739
    shift $P5015, $P5013
  for_redo1738:
    .const 'Sub' $P5014 = 'cuid_293_1382292146.58822' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1737
  for_done1739:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_293_1382292146.58822") :anon :lex :outer("cuid_174_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1781
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options", 1
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_175_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1787
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1740
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless768_end1745 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless768_end1745:
    unless $I5003 goto if767_end1743 
    $P5001 = "RETURN"(0)
  if767_end1743:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if769_end1747 
    $P5002 = "RETURN"(1)
  if769_end1747:
    box $P5003, 0
    goto lexotic_1741
  lexotic_1740:
    .get_results ($P5003)
  lexotic_1741:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_176_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1793
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_158 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options", 1
    set fb_tmp_158, $P5004
    repr_defined $I5001, fb_tmp_158
    unless $I5001 goto if770_else1748 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_158[$S5001]
    set $P5007, $P5005
    goto if770_end1749
  if770_else1748:
    null $P5006
    set $P5007, $P5006
  if770_end1749:
    unless_null $P5007, vivi_7711750
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_7711750:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_177_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1798
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_159 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options", 1
    set fb_tmp_159, $P5004
    repr_defined $I5001, fb_tmp_159
    unless $I5001 goto if772_else1751 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_159[$S5001]
    set $P5007, $P5005
    goto if772_end1752
  if772_else1751:
    null $P5006
    set $P5007, $P5006
  if772_end1752:
    unless_null $P5007, vivi_7731753
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_7731753:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_178_1382292146.58822") :anon :lex :outer("cuid_291_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1803
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5015 = 'cuid_294_1382292146.58822' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_295_1382292146.58822' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_297_1382292146.58822' 
    capture_lex $P5015 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_294_1382292146.58822' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_295_1382292146.58822' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1767
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1807
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    $P5009 = $P5008."new"()
    set $P103, $P5009
.annotate 'line', 1808
    $P103."init"()
  while780_test1769:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto while780_done1773 
  while780_redo1771:
    .const 'Sub' $P5010 = 'cuid_297_1382292146.58822' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while780_test1769 
  while780_done1773:
    $P5014 = "RETURN"($P103)
    goto lexotic_1768
  lexotic_1767:
    .get_results ($P5014)
  lexotic_1768:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_294_1382292146.58822") :anon :lex :outer("cuid_178_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1811
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_5 
    .local pmc fb_tmp_160 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if774_else1754 
.annotate 'line', 1812
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if774_end1755
  if774_else1754:
.annotate 'line', 1814
    find_lex $P5004, "$i"
    set tmp_5, $P5004
    set $N5006, tmp_5
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5004, "@args"
    set fb_tmp_160, $P5004
    repr_defined $I5002, fb_tmp_160
    unless $I5002 goto if775_else1756 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_160[$I5003]
    set $P5008, $P5005
    goto if775_end1757
  if775_else1756:
    null $P5007
    set $P5008, $P5007
  if775_end1757:
    unless_null $P5008, vivi_7761758
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_7761758:
    set $P5010, $P5008
  if774_end1755:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_295_1382292146.58822") :anon :lex :outer("cuid_178_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1822
    .local pmc tmp_6 
    .local pmc fb_tmp_161 
    .local pmc tmp_7 
    find_lex $P5001, "$i"
    set tmp_6, $P5001
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while777_test1759:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while777_done1763 
  while777_redo1761:
.annotate 'line', 1824
.annotate 'line', 1825
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_161, $P5004
    repr_defined $I5002, fb_tmp_161
    unless $I5002 goto if778_else1764 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_161[$I5003]
    set $P5008, $P5005
    goto if778_end1765
  if778_else1764:
    null $P5007
    set $P5008, $P5007
  if778_end1765:
    unless_null $P5008, vivi_7791766
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_7791766:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_7, $P5010
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_7
    goto while777_test1759 
  while777_done1763:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_297_1382292146.58822") :anon :lex :outer("cuid_178_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1830
    .const 'Sub' $P5033 = 'cuid_296_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_300_1382292146.58822' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_162 
    .local pmc fb_tmp_169 
    .local pmc tmp_9 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_162, $P5002
    repr_defined $I5001, fb_tmp_162
    unless $I5001 goto if781_else1774 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_162[$I5002]
    set $P5006, $P5003
    goto if781_end1775
  if781_else1774:
    null $P5005
    set $P5006, $P5005
  if781_end1775:
    unless_null $P5006, vivi_7821776
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5006, $P5007
  vivi_7821776:
    set $P101, $P5006
.annotate 'line', 1832
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if783_else1777 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if784_else1779 
    .const 'Sub' $P5011 = 'cuid_296_1382292146.58822' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if784_end1780
  if784_else1779:
    .const 'Sub' $P5013 = 'cuid_300_1382292146.58822' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if784_end1780:
    goto if783_end1778
  if783_else1777:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper", 2
    set fb_tmp_169, $P5019
    repr_defined $I5004, fb_tmp_169
    unless $I5004 goto if815_else1837 
    set $S5003, $P101
    set $P5020, fb_tmp_169[$S5003]
    set $P5022, $P5020
    goto if815_end1838
  if815_else1837:
    null $P5021
    set $P5022, $P5021
  if815_end1838:
    unless_null $P5022, vivi_8161839
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5022, $P5023
  vivi_8161839:
    unless $P5022 goto if814_else1835 
.annotate 'line', 1891
.annotate 'line', 1892
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if814_end1836
  if814_else1835:
.annotate 'line', 1893
.annotate 'line', 1894
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg", 3
    set $P5031, $P5029
    unless $P5029 goto if817_end1841 
.annotate 'line', 1895
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if817_end1841:
    set $P5032, $P5031
  if814_end1836:
  if783_end1778:
    find_lex $P5033, "$i"
    set tmp_9, $P5033
    set $N5002, tmp_9
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5034, $N5001
    store_lex "$i", $P5034
    .return (tmp_9) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_296_1382292146.58822") :anon :lex :outer("cuid_297_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1833
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_164 
    .local pmc fb_tmp_165 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_163, $P5005
    repr_defined $I5001, fb_tmp_163
    unless $I5001 goto if785_else1781 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_163[$I5002]
    set $P5009, $P5006
    goto if785_end1782
  if785_else1781:
    null $P5008
    set $P5009, $P5008
  if785_end1782:
    unless_null $P5009, vivi_7861783
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_7861783:
    set $S5002, $P5009
    substr $S5001, $S5002, 2
    box $P5011, $S5001
    set $P101, $P5011
    set $S5003, $P101
    index $I5003, $S5003, "=", 0
    box $P5012, $I5003
    set $P102, $P5012
    box $P5013, 1
    set $P103, $P5013
    box $P5014, 0
    set $P104, $P5014
    set $N5001, $P102
    set $N5002, 0
    isge $I5004, $N5001, $N5002
    unless $I5004 goto if787_else1784 
.annotate 'line', 1840
    set $S5005, $P101
    set $N5004, $P102
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5005, $N5003
    substr $S5004, $S5005, $I5005
    box $P5015, $S5004
    set $P103, $P5015
    set $S5007, $P101
    set $I5006, $P102
    substr $S5006, $S5007, 0, $I5006
    box $P5016, $S5006
    set $P101, $P5016
    box $P5017, 1
    set $P104, $P5017
    goto if787_end1785
  if787_else1784:
.annotate 'line', 1844
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if788_end1787 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if788_end1787:
  if787_end1785:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options", 1
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless789_end1789 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless789_end1789:
.annotate 'line', 1849
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if791_end1793 
    set $P5032, $P104
  if791_end1793:
    unless $P5032 goto if790_end1791 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if790_end1791:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if793_end1797 
.annotate 'line', 1850
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if793_end1797:
    unless $P5038 goto if792_end1795 
.annotate 'line', 1851
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if792_end1795:
.annotate 'line', 1853
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper", 2
    set fb_tmp_164, $P5045
    repr_defined $I5010, fb_tmp_164
    unless $I5010 goto if795_else1800 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_164[$S5016]
    set $P5048, $P5046
    goto if795_end1801
  if795_else1800:
    null $P5047
    set $P5048, $P5047
  if795_end1801:
    unless_null $P5048, vivi_7961802
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5048, $P5049
  vivi_7961802:
    set $P5059, $P5048
    unless $P5048 goto if794_end1799 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_165, $P5050
    repr_defined $I5011, fb_tmp_165
    unless $I5011 goto if797_else1803 
    set $P5052, fb_tmp_165["slurp-rest"]
    set $P5054, $P5052
    goto if797_end1804
  if797_else1803:
    null $P5053
    set $P5054, $P5053
  if797_end1804:
    unless_null $P5054, vivi_7991806
    nqp_get_sc_object $P5057, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_7981805
    nqp_get_sc_object $P5058, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5055, $P5058
  vivi_7981805:
    set $P5054, $P5055
  vivi_7991806:
    set $P5059, $P5054
  if794_end1799:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_300_1382292146.58822") :anon :lex :outer("cuid_297_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1855
    .const 'Sub' $P5036 = 'cuid_299_1382292146.58822' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_166 
    .local pmc fb_tmp_167 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    find_lex $P5003, "$cur"
    set $S5002, $P5003
    substr $S5001, $S5002, 1
    box $P5004, $S5001
    set $P101, $P5004
    set $S5003, $P101
    length $I5001, $S5003
    box $P5005, $I5001
    set $P102, $P5005
    set $N5001, $P102
    set $N5002, 1
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if800_else1807 
.annotate 'line', 1858
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options", 1
    set fb_tmp_166, $P5009
    repr_defined $I5003, fb_tmp_166
    unless $I5003 goto if802_else1811 
    set $S5004, $P101
    set $P5010, fb_tmp_166[$S5004]
    set $P5012, $P5010
    goto if802_end1812
  if802_else1811:
    null $P5011
    set $P5012, $P5011
  if802_end1812:
    unless_null $P5012, vivi_8031813
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5013
  vivi_8031813:
    if $P5012 goto unless801_end1810 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless801_end1810:
.annotate 'line', 1861
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if804_else1814 
.annotate 'line', 1862
    find_lex $P5018, "$result"
.annotate 'line', 1863
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if804_end1815
  if804_else1814:
.annotate 'line', 1864
.annotate 'line', 1865
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if804_end1815:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper", 2
    set fb_tmp_167, $P5026
    repr_defined $I5004, fb_tmp_167
    unless $I5004 goto if806_else1818 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_167[$S5009]
    set $P5029, $P5027
    goto if806_end1819
  if806_else1818:
    null $P5028
    set $P5029, $P5028
  if806_end1819:
    unless_null $P5029, vivi_8071820
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5029, $P5030
  vivi_8071820:
    set $P5032, $P5029
    unless $P5029 goto if805_end1817 
.annotate 'line', 1867
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if805_end1817:
    set $P5035, $P5032
    goto if800_end1808
  if800_else1807:
    .const 'Sub' $P5033 = 'cuid_299_1382292146.58822' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if800_end1808:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_299_1382292146.58822") :anon :lex :outer("cuid_300_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1868
    .const 'Sub' $P5009 = 'cuid_298_1382292146.58822' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while808_handlers1824
    push_eh $P5007
  while808_test1821:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while808_done1825 
  while808_redo1823:
    .const 'Sub' $P5004 = 'cuid_298_1382292146.58822' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while808_test1821 
  while808_handlers1824:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while808_test1821
    eq $P5007, .CONTROL_LOOP_REDO, while808_redo1823
  while808_done1825:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_298_1382292146.58822") :anon :lex :outer("cuid_299_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1870
    .lex "$o", $P101 
    .local pmc fb_tmp_168 
    .local pmc tmp_8 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5002, "$opt"
    set $S5002, $P5002
    find_lex $P5003, "$i"
    set $I5001, $P5003
    substr $S5001, $S5002, $I5001, 1
    box $P5004, $S5001
    set $P101, $P5004
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options", 1
    set fb_tmp_168, $P5008
    repr_defined $I5002, fb_tmp_168
    unless $I5002 goto if810_else1828 
    set $S5003, $P101
    set $P5009, fb_tmp_168[$S5003]
    set $P5011, $P5009
    goto if810_end1829
  if810_else1828:
    null $P5010
    set $P5011, $P5010
  if810_end1829:
    unless_null $P5011, vivi_8111830
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_8111830:
    unless $P5011 goto if809_else1826 
.annotate 'line', 1872
.annotate 'line', 1873
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if812_else1831 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if813_end1834 
.annotate 'line', 1874
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if813_end1834:
.annotate 'line', 1877
    find_lex $P5020, "$result"
    find_lex $P5021, "$opt"
    set $S5011, $P5021
    find_lex $P5022, "$i"
    set $N5006, $P5022
    set $N5007, 1
    add $N5005, $N5006, $N5007
    set $I5004, $N5005
    substr $S5010, $S5011, $I5004
    $P5020."add-option"($P101, $S5010)
    die 0, .CONTROL_LOOP_LAST
    box $P5026, 0
    set $P5025, $P5026
    goto if812_end1832
  if812_else1831:
.annotate 'line', 1880
.annotate 'line', 1881
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if812_end1832:
    goto if809_end1827
  if809_else1826:
.annotate 'line', 1884
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if809_end1827:
    find_lex $P5029, "$i"
    set tmp_8, $P5029
    set $N5009, tmp_8
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5030, $N5008
    store_lex "$i", $P5030
    .return (tmp_8) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_301_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1925
    .const 'Sub' $P5014 = 'cuid_179_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_180_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_181_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_182_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_183_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_184_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_185_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_186_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_187_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_188_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_189_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_190_1382292146.58822' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_191_1382292146.58822' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_179_1382292146.58822' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_180_1382292146.58822' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_181_1382292146.58822' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_182_1382292146.58822' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_183_1382292146.58822' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_184_1382292146.58822' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_185_1382292146.58822' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_186_1382292146.58822' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_187_1382292146.58822' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_188_1382292146.58822' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_189_1382292146.58822' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_190_1382292146.58822' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_191_1382292146.58822' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_179_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1956
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_16 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    .local pmc fb_tmp_170 
    .local pmc fb_tmp_171 
    .local pmc fb_tmp_172 
    .local pmc pkg_viv_tmp_16 
    if haz_param_16, default1853
    box $P5046, "<unknown>"
    set _lex_param_2, $P5046
  default1853:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_bind_attr_obj $P5004, $P5005, "$!handle", 1, _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", 7, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", 6, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", 5, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    find_dynamic_lex $P5017, "%*COMPILING"
    unless_null $P5017, fallback1846
    nqp_get_sc_object $P5019, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5018, $P5019
    set pkg_viv_tmp_16, $P5018
    set fb_tmp_172, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_172
    unless $I5003 goto if820_else1847 
    set $P5020, fb_tmp_172["%COMPILING"]
    set $P5022, $P5020
    goto if820_end1848
  if820_else1847:
    null $P5021
    set $P5022, $P5021
  if820_end1848:
    unless_null $P5022, vivi_8211849
    new $P5023, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5023
    set $P5022, $P5023
  vivi_8211849:
    unless_null $P5022, vivi_8221850
    die "Contextual %*COMPILING not found"
    box $P5024, "Contextual %*COMPILING not found"
    set $P5022, $P5024
  vivi_8221850:
    set $P5017, $P5022
  fallback1846:
    set fb_tmp_171, $P5017
    repr_defined $I5002, fb_tmp_171
    unless $I5002 goto if819_else1844 
    set $P5025, fb_tmp_171["%?OPTIONS"]
    set $P5027, $P5025
    goto if819_end1845
  if819_else1844:
    null $P5026
    set $P5027, $P5026
  if819_end1845:
    unless_null $P5027, vivi_8231851
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5027, $P5028
  vivi_8231851:
    set fb_tmp_170, $P5027
    repr_defined $I5001, fb_tmp_170
    unless $I5001 goto if818_else1842 
    set $P5029, fb_tmp_170["precomp"]
    set $P5031, $P5029
    goto if818_end1843
  if818_else1842:
    null $P5030
    set $P5031, $P5030
  if818_end1843:
    unless_null $P5031, vivi_8241852
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5031, $P5032
  vivi_8241852:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", 2, $P5031
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    box $P5035, 0
    repr_bind_attr_obj $P5033, $P5034, "$!num_code_refs", 3, $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    new $P5038, 'ResizablePMCArray'
    repr_bind_attr_obj $P5036, $P5037, "$!code_ref_blocks", 4, $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc", 0
    $P5042 = $P5041."set_description"(_lex_param_2)
    nqp_decontainerize $P5043, _lex_param_0
    nqp_get_sc_object $P5044, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!sc", 0
    nqp_push_compiling_sc $P5045
    .return ($P5045) 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_180_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1973
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .local pmc fb_tmp_173 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!addr_to_slot", 7
    set fb_tmp_173, $P5004
    repr_defined $I5001, fb_tmp_173
    unless $I5001 goto if825_else1854 
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5005, fb_tmp_173[$S5001]
    set $P5007, $P5005
    goto if825_end1855
  if825_else1854:
    null $P5006
    set $P5007, $P5006
  if825_end1855:
    unless_null $P5007, vivi_8261856
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5007, $P5008
  vivi_8261856:
    set $P101, $P5007
    defined $I5003, $P101
    if $I5003 goto unless827_end1858 
.annotate 'line', 1975
    box $P5009, "slot_for_object called on object not in context"
    die $P5009
  unless827_end1858:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_181_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1982
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc", 0
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc", 0
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc", 0
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot", 7
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_182_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1991
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs", 3
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs", 3
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", 3, $P5010
.annotate 'line', 1994
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks", 4
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc", 0
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_183_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2000
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_184_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2005
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_185_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2011
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_17, default1865
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5015
  default1865:
    if haz_param_18, default1866
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_2, $P5016
  default1866:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if828_else1859 
.annotate 'line', 2012
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if829_end1862 
.annotate 'line', 2013
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks", 5
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if829_end1862:
    set $P5014, $P5008
    goto if828_end1860
  if828_else1859:
.annotate 'line', 2015
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if830_end1864 
.annotate 'line', 2016
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks", 5
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if830_end1864:
    set $P5014, $P5013
  if828_end1860:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_186_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2022
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_19 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_20 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_19, default1873
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5015
  default1873:
    if haz_param_20, default1874
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_2, $P5016
  default1874:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if831_else1867 
.annotate 'line', 2023
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if832_end1870 
.annotate 'line', 2024
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks", 6
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if832_end1870:
    set $P5014, $P5008
    goto if831_end1868
  if831_else1867:
.annotate 'line', 2026
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if833_end1872 
.annotate 'line', 2027
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks", 6
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if833_end1872:
    set $P5014, $P5013
  if831_end1868:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_187_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2032
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_188_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2037
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_189_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2041
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks", 4
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_190_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2046
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_191_1382292146.58822") :anon :lex :outer("cuid_301_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2051
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_302_1382292146.58822") :anon :lex :outer("cuid_231_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2057
    .const 'Sub' $P5018 = 'cuid_303_1382292146.58822' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_304_1382292146.58822' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_305_1382292146.58822' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_306_1382292146.58822' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_307_1382292146.58822' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_326_1382292146.58822' 
    capture_lex $P5018 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "@handlers", $P103 
    .lex "$assert_used_args", $P104 
    .lex "Syntax", $P105 
    .lex "Actions", $P106 
    .lex "$actions", $P107 
    .lex "&sprintf", $P108 
    .lex "Directives", $P109 
    .lex "$directives", $P110 
    .lex "&sprintfdirectives", $P111 
    .lex "&sprintfaddargumenthandler", $P112 
    new $P5001, 'ResizablePMCArray'
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P107, $P5003
    .const 'Sub' $P5004 = 'cuid_303_1382292146.58822' 
    capture_lex $P5004
    set $P108, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P110, $P5005
    .const 'Sub' $P5006 = 'cuid_304_1382292146.58822' 
    capture_lex $P5006
    set $P111, $P5006
    .const 'Sub' $P5007 = 'cuid_305_1382292146.58822' 
    capture_lex $P5007
    set $P112, $P5007
    .const 'Sub' $P5008 = 'cuid_306_1382292146.58822' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_307_1382292146.58822' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 2400
    nqp_get_sc_object $P5012, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 223
    $P5013 = $P5012."new"()
    set $P107, $P5013
    set_hll_global "sprintf", $P108
    .const 'Sub' $P5014 = 'cuid_326_1382292146.58822' 
    capture_lex $P5014
    $P5015 = $P5014()
.annotate 'line', 2422
    nqp_get_sc_object $P5016, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 241
    $P5017 = $P5016."new"()
    set $P110, $P5017
    set_hll_global "sprintfdirectives", $P111
    set_hll_global "sprintfaddargumenthandler", $P112
    .return ($P112) 
.end
.HLL "nqp"
.namespace []
.sub "sprintf" :subid("cuid_303_1382292146.58822") :anon :lex :outer("cuid_302_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2402
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@*ARGS_HAVE", $P101 
    .lex "$format", _lex_param_0 
    .lex "@arguments", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1875
    .lex "RETURN", $P102
    set $P101, _lex_param_1
    box $P5002, 1
    store_lex "$assert_used_args", $P5002
.annotate 'line', 2405
    nqp_get_sc_object $P5003, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 202
    find_lex $P5004, "$actions"
    $P5005 = $P5003."parse"(_lex_param_0, $P5004 :named("actions"))
    $P5006 = $P5005."ast"()
    $P5007 = "RETURN"($P5006)
    goto lexotic_1876
  lexotic_1875:
    .get_results ($P5007)
  lexotic_1876:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfdirectives" :subid("cuid_304_1382292146.58822") :anon :lex :outer("cuid_302_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2424
    .param pmc _lex_param_0 
    .lex "$format", _lex_param_0 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1877
    .lex "RETURN", $P101
.annotate 'line', 2425
    nqp_get_sc_object $P5001, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 202
    find_lex $P5002, "$directives"
    $P5003 = $P5001."parse"(_lex_param_0, $P5002 :named("actions"))
    $P5004 = $P5003."ast"()
    $P5005 = "RETURN"($P5004)
    goto lexotic_1878
  lexotic_1877:
    .get_results ($P5005)
  lexotic_1878:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfaddargumenthandler" :subid("cuid_305_1382292146.58822") :anon :lex :outer("cuid_302_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2430
    .param pmc _lex_param_0 
    .lex "$interface", _lex_param_0 
.annotate 'line', 2431
    find_lex $P5001, "@handlers"
    $P5001."push"(_lex_param_0)
    .return ("Added!") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_306_1382292146.58822") :anon :lex :outer("cuid_302_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2061
    .const 'Sub' $P5021 = 'cuid_192_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_193_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_194_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_195_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_196_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_197_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_198_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_199_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_200_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_201_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_202_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_203_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_204_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_205_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_206_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_207_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_208_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_209_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_210_1382292146.58822' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_211_1382292146.58822' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_192_1382292146.58822' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_193_1382292146.58822' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_194_1382292146.58822' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_195_1382292146.58822' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_196_1382292146.58822' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_197_1382292146.58822' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_198_1382292146.58822' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_199_1382292146.58822' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_200_1382292146.58822' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_201_1382292146.58822' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_202_1382292146.58822' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_203_1382292146.58822' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_204_1382292146.58822' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_205_1382292146.58822' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_206_1382292146.58822' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_207_1382292146.58822' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_208_1382292146.58822' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_209_1382292146.58822' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_210_1382292146.58822' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_211_1382292146.58822' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_192_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2062
    .param pmc _lex_param_0 
    .lex "$*ARGS_USED", $P101 
    .lex utf8:"$\x{a2}", $P102 
    .lex "$/", $P103 
    .lex "self", _lex_param_0 
    .local pmc self 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set self, _lex_param_0
    .local pmc rx834_start
    .local string rx834_tgt
    .local int rx834_pos
    .local int rx834_off
    .local int rx834_eos
    .local int rx834_rep
    .local pmc rx834_cur
    .local pmc rx834_curclass
    .local pmc rx834_bstack
    .local pmc rx834_cstack
    rx834_start = self."!cursor_start_all"()
    set rx834_cur, rx834_start[0]
    set rx834_tgt, rx834_start[1]
    set rx834_pos, rx834_start[2]
    set rx834_curclass, rx834_start[3]
    set rx834_bstack, rx834_start[4]
    set $I19, rx834_start[5]
    store_lex unicode:"$\x{a2}", rx834_cur
    length rx834_eos, rx834_tgt
    eq $I19, 1, rx834_restart1881
    gt rx834_pos, rx834_eos, rx834_fail1882
    repr_get_attr_int $I11, self, rx834_curclass, "$!from"
    ne $I11, -1, rxscan835_done1888
    goto rxscan835_scan1887
  rxscan835_loop1886:
    inc rx834_pos
    gt rx834_pos, rx834_eos, rx834_fail1882
    repr_bind_attr_int rx834_cur, rx834_curclass, "$!from", rx834_pos
  rxscan835_scan1887:
    nqp_rxmark rx834_bstack, rxscan835_loop1886, rx834_pos, 0
  rxscan835_done1888:
    repr_bind_attr_int rx834_cur, rx834_curclass, "$!pos", rx834_pos
    store_lex unicode:"$\x{a2}", rx834_cur
    box $P5002, 0
    set $P101, $P5002
    ne rx834_pos, 0, rx834_fail1882
    nqp_rxmark rx834_bstack, rxquantr837_done1891, rx834_pos, 0
  rxquantr837_loop1890:
    repr_bind_attr_int rx834_cur, rx834_curclass, "$!pos", rx834_pos
    $P11 = rx834_cur."statement"()
    repr_get_attr_int $I11, $P11, rx834_curclass, "$!pos"
    lt $I11, 0, rx834_fail1882
    goto rxsubrule838_pass1892
  rxsubrule838_back1893:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx834_curclass, "$!pos"
    lt $I11, 0, rx834_fail1882
  rxsubrule838_pass1892:
    rx834_cstack = rx834_cur."!cursor_capture"($P11, "statement")
    set_addr $I11, rxsubrule838_back1893
    push rx834_bstack, $I11
    push rx834_bstack, 0
    push rx834_bstack, rx834_pos
    elements $I11, rx834_cstack
    push rx834_bstack, $I11
    repr_get_attr_int rx834_pos, $P11, rx834_curclass, "$!pos"
    nqp_rxpeek $I19, rx834_bstack, rxquantr837_done1891
    inc $I19
    inc $I19
    set rx834_rep, rx834_bstack[$I19]
    nqp_rxcommit rx834_bstack, rxquantr837_done1891
    inc rx834_rep
    nqp_rxmark rx834_bstack, rxquantr837_done1891, rx834_pos, rx834_rep
    goto rxquantr837_loop1890
  rxquantr837_done1891:
    lt rx834_pos, rx834_eos, rx834_fail1882
    rx834_cur."!cursor_pass"(rx834_pos, "TOP", 'backtrack'=>1)
    .return (rx834_cur)
  rx834_restart1881:
    repr_get_attr_obj rx834_cstack, rx834_cur, rx834_curclass, "$!cstack"
  rx834_fail1882:
    unless rx834_bstack, rx834_done1880
    pop $I19, rx834_bstack
    if_null rx834_cstack, rx834_cstack_done1885
    unless rx834_cstack, rx834_cstack_done1885
    dec $I19
    set $P11, rx834_cstack[$I19]
  rx834_cstack_done1885:
    pop rx834_rep, rx834_bstack
    pop rx834_pos, rx834_bstack
    pop $I19, rx834_bstack
    lt rx834_pos, -1, rx834_done1880
    lt rx834_pos, 0, rx834_fail1882
    eq $I19, 0, rx834_fail1882
    nqp_islist $I20, rx834_cstack
    unless $I20, rx834_jump1883
    elements $I18, rx834_bstack
    le $I18, 0, rx834_cut1884
    dec $I18
    set $I18, rx834_bstack[$I18]
  rx834_cut1884:
    assign rx834_cstack, $I18
  rx834_jump1883:
    jump $I19
  rx834_done1880:
    rx834_cur."!cursor_fail"()
    .return (rx834_cur) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_193_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2067
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$msg", _lex_param_1 
    die _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_194_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2069
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx840_start
    .local string rx840_tgt
    .local int rx840_pos
    .local int rx840_off
    .local int rx840_eos
    .local int rx840_rep
    .local pmc rx840_cur
    .local pmc rx840_curclass
    .local pmc rx840_bstack
    .local pmc rx840_cstack
    rx840_start = self."!cursor_start_all"()
    set rx840_cur, rx840_start[0]
    set rx840_tgt, rx840_start[1]
    set rx840_pos, rx840_start[2]
    set rx840_curclass, rx840_start[3]
    set rx840_bstack, rx840_start[4]
    set $I19, rx840_start[5]
    store_lex unicode:"$\x{a2}", rx840_cur
    length rx840_eos, rx840_tgt
    eq $I19, 1, rx840_restart1897
    gt rx840_pos, rx840_eos, rx840_fail1898
    repr_get_attr_int $I11, self, rx840_curclass, "$!from"
    ne $I11, -1, rxscan841_done1904
    goto rxscan841_scan1903
  rxscan841_loop1902:
    inc rx840_pos
    gt rx840_pos, rx840_eos, rx840_fail1898
    repr_bind_attr_int rx840_cur, rx840_curclass, "$!from", rx840_pos
  rxscan841_scan1903:
    nqp_rxmark rx840_bstack, rxscan841_loop1902, rx840_pos, 0
  rxscan841_done1904:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt842_01906
    nqp_push_label $P11, alt842_11916
    nqp_rxmark rx840_bstack, alt842_end1905, -1, 0
    rx840_cur."!alt"(rx840_pos, "alt_nfa__11_1382292152.14169", $P11)
    goto rx840_fail1898
  alt842_01906:
    ge rx840_pos, rx840_eos, rx840_fail1898
    substr $S11, rx840_tgt, rx840_pos, 1
    index $I11, ucs4:"%", $S11
    lt $I11, 0, rx840_fail1898
  alt843_01908:
    nqp_rxmark rx840_bstack, alt843_11914, rx840_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt844_01910
    nqp_push_label $P11, alt844_11912
    nqp_rxmark rx840_bstack, alt844_end1909, -1, 0
    rx840_cur."!alt"(rx840_pos, "alt_nfa__10_1382292152.14139", $P11)
    goto rx840_fail1898
  alt844_01910:
    repr_bind_attr_int rx840_cur, rx840_curclass, "$!pos", rx840_pos
    $P11 = rx840_cur."directive"()
    repr_get_attr_int $I11, $P11, rx840_curclass, "$!pos"
    lt $I11, 0, rx840_fail1898
    nqp_rxmark rx840_bstack, rxsubrule845_pass1911, -1, 0
  rxsubrule845_pass1911:
    rx840_cstack = rx840_cur."!cursor_capture"($P11, "directive")
    repr_get_attr_int rx840_pos, $P11, rx840_curclass, "$!pos"
    goto alt844_end1909
  alt844_11912:
    repr_bind_attr_int rx840_cur, rx840_curclass, "$!pos", rx840_pos
    $P11 = rx840_cur."escape"()
    repr_get_attr_int $I11, $P11, rx840_curclass, "$!pos"
    lt $I11, 0, rx840_fail1898
    nqp_rxmark rx840_bstack, rxsubrule846_pass1913, -1, 0
  rxsubrule846_pass1913:
    rx840_cstack = rx840_cur."!cursor_capture"($P11, "escape")
    repr_get_attr_int rx840_pos, $P11, rx840_curclass, "$!pos"
    goto alt844_end1909
  alt844_end1909:
    nqp_rxcommit rx840_bstack, alt844_end1909
    goto alt843_end1907
  alt843_11914:
.annotate 'line', 2072
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."orig"()
    set $S5006, $P5002
    substr $S5005, $S5006, 1
    concat $S5004, "'", $S5005
    concat $S5003, $S5004, "' is not valid in sprintf format sequence '"
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."orig"()
    set $S5007, $P5004
    concat $S5002, $S5003, $S5007
    concat $S5001, $S5002, "'"
    repr_bind_attr_int rx840_cur, rx840_curclass, "$!pos", rx840_pos
    $P11 = rx840_cur."panic"($S5001)
    repr_get_attr_int $I11, $P11, rx840_curclass, "$!pos"
    lt $I11, 0, rx840_fail1898
    repr_get_attr_int rx840_pos, $P11, rx840_curclass, "$!pos"
  alt843_end1907:
    goto alt842_end1905
  alt842_11916:
    ge rx840_pos, rx840_eos, rx840_fail1898
    substr $S11, rx840_tgt, rx840_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx840_fail1898
    repr_bind_attr_int rx840_cur, rx840_curclass, "$!pos", rx840_pos
    $P11 = rx840_cur."literal"()
    repr_get_attr_int $I11, $P11, rx840_curclass, "$!pos"
    lt $I11, 0, rx840_fail1898
    nqp_rxmark rx840_bstack, rxsubrule848_pass1917, -1, 0
  rxsubrule848_pass1917:
    rx840_cstack = rx840_cur."!cursor_capture"($P11, "literal")
    repr_get_attr_int rx840_pos, $P11, rx840_curclass, "$!pos"
    goto alt842_end1905
  alt842_end1905:
    nqp_rxcommit rx840_bstack, alt842_end1905
    rx840_cur."!cursor_pass"(rx840_pos, "statement", 'backtrack'=>1)
    .return (rx840_cur)
  rx840_restart1897:
    repr_get_attr_obj rx840_cstack, rx840_cur, rx840_curclass, "$!cstack"
  rx840_fail1898:
    unless rx840_bstack, rx840_done1896
    pop $I19, rx840_bstack
    if_null rx840_cstack, rx840_cstack_done1901
    unless rx840_cstack, rx840_cstack_done1901
    dec $I19
    set $P11, rx840_cstack[$I19]
  rx840_cstack_done1901:
    pop rx840_rep, rx840_bstack
    pop rx840_pos, rx840_bstack
    pop $I19, rx840_bstack
    lt rx840_pos, -1, rx840_done1896
    lt rx840_pos, 0, rx840_fail1898
    eq $I19, 0, rx840_fail1898
    nqp_islist $I20, rx840_cstack
    unless $I20, rx840_jump1899
    elements $I18, rx840_bstack
    le $I18, 0, rx840_cut1900
    dec $I18
    set $I18, rx840_bstack[$I18]
  rx840_cut1900:
    assign rx840_cstack, $I18
  rx840_jump1899:
    jump $I19
  rx840_done1896:
    rx840_cur."!cursor_fail"()
    .return (rx840_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive" :subid("cuid_195_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2077
    .param pmc self 
    $P5001 = self."!protoregex"("directive")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_196_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2078
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx849_start
    .local string rx849_tgt
    .local int rx849_pos
    .local int rx849_off
    .local int rx849_eos
    .local int rx849_rep
    .local pmc rx849_cur
    .local pmc rx849_curclass
    .local pmc rx849_bstack
    .local pmc rx849_cstack
    rx849_start = self."!cursor_start_all"()
    set rx849_cur, rx849_start[0]
    set rx849_tgt, rx849_start[1]
    set rx849_pos, rx849_start[2]
    set rx849_curclass, rx849_start[3]
    set rx849_bstack, rx849_start[4]
    set $I19, rx849_start[5]
    store_lex unicode:"$\x{a2}", rx849_cur
    length rx849_eos, rx849_tgt
    eq $I19, 1, rx849_restart1920
    gt rx849_pos, rx849_eos, rx849_fail1921
    repr_get_attr_int $I11, self, rx849_curclass, "$!from"
    ne $I11, -1, rxscan850_done1927
    goto rxscan850_scan1926
  rxscan850_loop1925:
    inc rx849_pos
    index rx849_pos, rx849_tgt, ucs4:"%", rx849_pos
    eq rx849_pos, -1, rx849_fail1921
    gt rx849_pos, rx849_eos, rx849_fail1921
    repr_bind_attr_int rx849_cur, rx849_curclass, "$!from", rx849_pos
  rxscan850_scan1926:
    nqp_rxmark rx849_bstack, rxscan850_loop1925, rx849_pos, 0
  rxscan850_done1927:
    add $I11, rx849_pos, 1
    gt $I11, rx849_eos, rx849_fail1921
    substr $S10, rx849_tgt, rx849_pos, 1
    ne $S10, ucs4:"%", rx849_fail1921
    add rx849_pos, 1
    nqp_rxmark rx849_bstack, rxquantr851_done1929, rx849_pos, 0
  rxquantr851_loop1928:
    repr_bind_attr_int rx849_cur, rx849_curclass, "$!pos", rx849_pos
    $P11 = rx849_cur."idx"()
    repr_get_attr_int $I11, $P11, rx849_curclass, "$!pos"
    lt $I11, 0, rx849_fail1921
    goto rxsubrule852_pass1930
  rxsubrule852_back1931:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx849_curclass, "$!pos"
    lt $I11, 0, rx849_fail1921
  rxsubrule852_pass1930:
    rx849_cstack = rx849_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule852_back1931
    push rx849_bstack, $I11
    push rx849_bstack, 0
    push rx849_bstack, rx849_pos
    elements $I11, rx849_cstack
    push rx849_bstack, $I11
    repr_get_attr_int rx849_pos, $P11, rx849_curclass, "$!pos"
    nqp_rxpeek $I19, rx849_bstack, rxquantr851_done1929
    inc $I19
    inc $I19
    set rx849_rep, rx849_bstack[$I19]
    nqp_rxcommit rx849_bstack, rxquantr851_done1929
    inc rx849_rep
  rxquantr851_done1929:
    nqp_rxmark rx849_bstack, rxquantr853_done1933, rx849_pos, 0
  rxquantr853_loop1932:
    repr_bind_attr_int rx849_cur, rx849_curclass, "$!pos", rx849_pos
    $P11 = rx849_cur."flags"()
    repr_get_attr_int $I11, $P11, rx849_curclass, "$!pos"
    lt $I11, 0, rx849_fail1921
    goto rxsubrule854_pass1934
  rxsubrule854_back1935:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx849_curclass, "$!pos"
    lt $I11, 0, rx849_fail1921
  rxsubrule854_pass1934:
    rx849_cstack = rx849_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule854_back1935
    push rx849_bstack, $I11
    push rx849_bstack, 0
    push rx849_bstack, rx849_pos
    elements $I11, rx849_cstack
    push rx849_bstack, $I11
    repr_get_attr_int rx849_pos, $P11, rx849_curclass, "$!pos"
    nqp_rxpeek $I19, rx849_bstack, rxquantr853_done1933
    inc $I19
    inc $I19
    set rx849_rep, rx849_bstack[$I19]
    nqp_rxcommit rx849_bstack, rxquantr853_done1933
    inc rx849_rep
    nqp_rxmark rx849_bstack, rxquantr853_done1933, rx849_pos, rx849_rep
    goto rxquantr853_loop1932
  rxquantr853_done1933:
    nqp_rxmark rx849_bstack, rxquantr855_done1937, rx849_pos, 0
  rxquantr855_loop1936:
    repr_bind_attr_int rx849_cur, rx849_curclass, "$!pos", rx849_pos
    $P11 = rx849_cur."size"()
    repr_get_attr_int $I11, $P11, rx849_curclass, "$!pos"
    lt $I11, 0, rx849_fail1921
    goto rxsubrule856_pass1938
  rxsubrule856_back1939:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx849_curclass, "$!pos"
    lt $I11, 0, rx849_fail1921
  rxsubrule856_pass1938:
    rx849_cstack = rx849_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule856_back1939
    push rx849_bstack, $I11
    push rx849_bstack, 0
    push rx849_bstack, rx849_pos
    elements $I11, rx849_cstack
    push rx849_bstack, $I11
    repr_get_attr_int rx849_pos, $P11, rx849_curclass, "$!pos"
    nqp_rxpeek $I19, rx849_bstack, rxquantr855_done1937
    inc $I19
    inc $I19
    set rx849_rep, rx849_bstack[$I19]
    nqp_rxcommit rx849_bstack, rxquantr855_done1937
    inc rx849_rep
  rxquantr855_done1937:
    nqp_rxmark rx849_bstack, rxquantr857_done1941, rx849_pos, 0
  rxquantr857_loop1940:
    add $I11, rx849_pos, 1
    gt $I11, rx849_eos, rx849_fail1921
    substr $S10, rx849_tgt, rx849_pos, 1
    ne $S10, ucs4:".", rx849_fail1921
    add rx849_pos, 1
    repr_bind_attr_int rx849_cur, rx849_curclass, "$!pos", rx849_pos
    $P11 = rx849_cur."size"()
    repr_get_attr_int $I11, $P11, rx849_curclass, "$!pos"
    lt $I11, 0, rx849_fail1921
    nqp_rxmark rx849_bstack, rxsubrule858_pass1942, -1, 0
  rxsubrule858_pass1942:
    rx849_cstack = rx849_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx849_pos, $P11, rx849_curclass, "$!pos"
    nqp_rxpeek $I19, rx849_bstack, rxquantr857_done1941
    inc $I19
    inc $I19
    set rx849_rep, rx849_bstack[$I19]
    nqp_rxcommit rx849_bstack, rxquantr857_done1941
    inc rx849_rep
  rxquantr857_done1941:
    nqp_rxmark rx849_bstack, rxcap859_fail1944, rx849_pos, 0
    ge rx849_pos, rx849_eos, rx849_fail1921
    substr $S11, rx849_tgt, rx849_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx849_fail1921
    inc rx849_pos
    nqp_rxpeek $I19, rx849_bstack, rxcap859_fail1944
    inc $I19
    set $I11, rx849_bstack[$I19]
    repr_bind_attr_int rx849_cur, rx849_curclass, "$!pos", rx849_pos
    $P11 = rx849_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx849_pos)
    rx849_cstack = rx849_cur."!cursor_capture"($P11, "sym")
    goto rxcap859_done1943
  rxcap859_fail1944:
    goto rx849_fail1921
  rxcap859_done1943:
    rx849_cur."!cursor_pass"(rx849_pos, "directive:sym<b>", 'backtrack'=>1)
    .return (rx849_cur)
  rx849_restart1920:
    repr_get_attr_obj rx849_cstack, rx849_cur, rx849_curclass, "$!cstack"
  rx849_fail1921:
    unless rx849_bstack, rx849_done1919
    pop $I19, rx849_bstack
    if_null rx849_cstack, rx849_cstack_done1924
    unless rx849_cstack, rx849_cstack_done1924
    dec $I19
    set $P11, rx849_cstack[$I19]
  rx849_cstack_done1924:
    pop rx849_rep, rx849_bstack
    pop rx849_pos, rx849_bstack
    pop $I19, rx849_bstack
    lt rx849_pos, -1, rx849_done1919
    lt rx849_pos, 0, rx849_fail1921
    eq $I19, 0, rx849_fail1921
    nqp_islist $I20, rx849_cstack
    unless $I20, rx849_jump1922
    elements $I18, rx849_bstack
    le $I18, 0, rx849_cut1923
    dec $I18
    set $I18, rx849_bstack[$I18]
  rx849_cut1923:
    assign rx849_cstack, $I18
  rx849_jump1922:
    jump $I19
  rx849_done1919:
    rx849_cur."!cursor_fail"()
    .return (rx849_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_197_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2079
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx860_start
    .local string rx860_tgt
    .local int rx860_pos
    .local int rx860_off
    .local int rx860_eos
    .local int rx860_rep
    .local pmc rx860_cur
    .local pmc rx860_curclass
    .local pmc rx860_bstack
    .local pmc rx860_cstack
    rx860_start = self."!cursor_start_all"()
    set rx860_cur, rx860_start[0]
    set rx860_tgt, rx860_start[1]
    set rx860_pos, rx860_start[2]
    set rx860_curclass, rx860_start[3]
    set rx860_bstack, rx860_start[4]
    set $I19, rx860_start[5]
    store_lex unicode:"$\x{a2}", rx860_cur
    length rx860_eos, rx860_tgt
    eq $I19, 1, rx860_restart1947
    gt rx860_pos, rx860_eos, rx860_fail1948
    repr_get_attr_int $I11, self, rx860_curclass, "$!from"
    ne $I11, -1, rxscan861_done1954
    goto rxscan861_scan1953
  rxscan861_loop1952:
    inc rx860_pos
    index rx860_pos, rx860_tgt, ucs4:"%", rx860_pos
    eq rx860_pos, -1, rx860_fail1948
    gt rx860_pos, rx860_eos, rx860_fail1948
    repr_bind_attr_int rx860_cur, rx860_curclass, "$!from", rx860_pos
  rxscan861_scan1953:
    nqp_rxmark rx860_bstack, rxscan861_loop1952, rx860_pos, 0
  rxscan861_done1954:
    add $I11, rx860_pos, 1
    gt $I11, rx860_eos, rx860_fail1948
    substr $S10, rx860_tgt, rx860_pos, 1
    ne $S10, ucs4:"%", rx860_fail1948
    add rx860_pos, 1
    nqp_rxmark rx860_bstack, rxquantr862_done1956, rx860_pos, 0
  rxquantr862_loop1955:
    repr_bind_attr_int rx860_cur, rx860_curclass, "$!pos", rx860_pos
    $P11 = rx860_cur."idx"()
    repr_get_attr_int $I11, $P11, rx860_curclass, "$!pos"
    lt $I11, 0, rx860_fail1948
    goto rxsubrule863_pass1957
  rxsubrule863_back1958:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx860_curclass, "$!pos"
    lt $I11, 0, rx860_fail1948
  rxsubrule863_pass1957:
    rx860_cstack = rx860_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule863_back1958
    push rx860_bstack, $I11
    push rx860_bstack, 0
    push rx860_bstack, rx860_pos
    elements $I11, rx860_cstack
    push rx860_bstack, $I11
    repr_get_attr_int rx860_pos, $P11, rx860_curclass, "$!pos"
    nqp_rxpeek $I19, rx860_bstack, rxquantr862_done1956
    inc $I19
    inc $I19
    set rx860_rep, rx860_bstack[$I19]
    nqp_rxcommit rx860_bstack, rxquantr862_done1956
    inc rx860_rep
  rxquantr862_done1956:
    nqp_rxmark rx860_bstack, rxquantr864_done1960, rx860_pos, 0
  rxquantr864_loop1959:
    repr_bind_attr_int rx860_cur, rx860_curclass, "$!pos", rx860_pos
    $P11 = rx860_cur."flags"()
    repr_get_attr_int $I11, $P11, rx860_curclass, "$!pos"
    lt $I11, 0, rx860_fail1948
    goto rxsubrule865_pass1961
  rxsubrule865_back1962:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx860_curclass, "$!pos"
    lt $I11, 0, rx860_fail1948
  rxsubrule865_pass1961:
    rx860_cstack = rx860_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule865_back1962
    push rx860_bstack, $I11
    push rx860_bstack, 0
    push rx860_bstack, rx860_pos
    elements $I11, rx860_cstack
    push rx860_bstack, $I11
    repr_get_attr_int rx860_pos, $P11, rx860_curclass, "$!pos"
    nqp_rxpeek $I19, rx860_bstack, rxquantr864_done1960
    inc $I19
    inc $I19
    set rx860_rep, rx860_bstack[$I19]
    nqp_rxcommit rx860_bstack, rxquantr864_done1960
    inc rx860_rep
    nqp_rxmark rx860_bstack, rxquantr864_done1960, rx860_pos, rx860_rep
    goto rxquantr864_loop1959
  rxquantr864_done1960:
    nqp_rxmark rx860_bstack, rxquantr866_done1964, rx860_pos, 0
  rxquantr866_loop1963:
    repr_bind_attr_int rx860_cur, rx860_curclass, "$!pos", rx860_pos
    $P11 = rx860_cur."size"()
    repr_get_attr_int $I11, $P11, rx860_curclass, "$!pos"
    lt $I11, 0, rx860_fail1948
    goto rxsubrule867_pass1965
  rxsubrule867_back1966:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx860_curclass, "$!pos"
    lt $I11, 0, rx860_fail1948
  rxsubrule867_pass1965:
    rx860_cstack = rx860_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule867_back1966
    push rx860_bstack, $I11
    push rx860_bstack, 0
    push rx860_bstack, rx860_pos
    elements $I11, rx860_cstack
    push rx860_bstack, $I11
    repr_get_attr_int rx860_pos, $P11, rx860_curclass, "$!pos"
    nqp_rxpeek $I19, rx860_bstack, rxquantr866_done1964
    inc $I19
    inc $I19
    set rx860_rep, rx860_bstack[$I19]
    nqp_rxcommit rx860_bstack, rxquantr866_done1964
    inc rx860_rep
  rxquantr866_done1964:
    nqp_rxmark rx860_bstack, rxcap868_fail1968, rx860_pos, 0
    add $I11, rx860_pos, 1
    gt $I11, rx860_eos, rx860_fail1948
    substr $S10, rx860_tgt, rx860_pos, 1
    ne $S10, ucs4:"c", rx860_fail1948
    add rx860_pos, 1
    nqp_rxpeek $I19, rx860_bstack, rxcap868_fail1968
    inc $I19
    set $I11, rx860_bstack[$I19]
    repr_bind_attr_int rx860_cur, rx860_curclass, "$!pos", rx860_pos
    $P11 = rx860_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx860_pos)
    rx860_cstack = rx860_cur."!cursor_capture"($P11, "sym")
    goto rxcap868_done1967
  rxcap868_fail1968:
    goto rx860_fail1948
  rxcap868_done1967:
    rx860_cur."!cursor_pass"(rx860_pos, "directive:sym<c>", 'backtrack'=>1)
    .return (rx860_cur)
  rx860_restart1947:
    repr_get_attr_obj rx860_cstack, rx860_cur, rx860_curclass, "$!cstack"
  rx860_fail1948:
    unless rx860_bstack, rx860_done1946
    pop $I19, rx860_bstack
    if_null rx860_cstack, rx860_cstack_done1951
    unless rx860_cstack, rx860_cstack_done1951
    dec $I19
    set $P11, rx860_cstack[$I19]
  rx860_cstack_done1951:
    pop rx860_rep, rx860_bstack
    pop rx860_pos, rx860_bstack
    pop $I19, rx860_bstack
    lt rx860_pos, -1, rx860_done1946
    lt rx860_pos, 0, rx860_fail1948
    eq $I19, 0, rx860_fail1948
    nqp_islist $I20, rx860_cstack
    unless $I20, rx860_jump1949
    elements $I18, rx860_bstack
    le $I18, 0, rx860_cut1950
    dec $I18
    set $I18, rx860_bstack[$I18]
  rx860_cut1950:
    assign rx860_cstack, $I18
  rx860_jump1949:
    jump $I19
  rx860_done1946:
    rx860_cur."!cursor_fail"()
    .return (rx860_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_198_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2080
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx869_start
    .local string rx869_tgt
    .local int rx869_pos
    .local int rx869_off
    .local int rx869_eos
    .local int rx869_rep
    .local pmc rx869_cur
    .local pmc rx869_curclass
    .local pmc rx869_bstack
    .local pmc rx869_cstack
    rx869_start = self."!cursor_start_all"()
    set rx869_cur, rx869_start[0]
    set rx869_tgt, rx869_start[1]
    set rx869_pos, rx869_start[2]
    set rx869_curclass, rx869_start[3]
    set rx869_bstack, rx869_start[4]
    set $I19, rx869_start[5]
    store_lex unicode:"$\x{a2}", rx869_cur
    length rx869_eos, rx869_tgt
    eq $I19, 1, rx869_restart1971
    gt rx869_pos, rx869_eos, rx869_fail1972
    repr_get_attr_int $I11, self, rx869_curclass, "$!from"
    ne $I11, -1, rxscan870_done1978
    goto rxscan870_scan1977
  rxscan870_loop1976:
    inc rx869_pos
    index rx869_pos, rx869_tgt, ucs4:"%", rx869_pos
    eq rx869_pos, -1, rx869_fail1972
    gt rx869_pos, rx869_eos, rx869_fail1972
    repr_bind_attr_int rx869_cur, rx869_curclass, "$!from", rx869_pos
  rxscan870_scan1977:
    nqp_rxmark rx869_bstack, rxscan870_loop1976, rx869_pos, 0
  rxscan870_done1978:
    add $I11, rx869_pos, 1
    gt $I11, rx869_eos, rx869_fail1972
    substr $S10, rx869_tgt, rx869_pos, 1
    ne $S10, ucs4:"%", rx869_fail1972
    add rx869_pos, 1
    nqp_rxmark rx869_bstack, rxquantr871_done1980, rx869_pos, 0
  rxquantr871_loop1979:
    repr_bind_attr_int rx869_cur, rx869_curclass, "$!pos", rx869_pos
    $P11 = rx869_cur."idx"()
    repr_get_attr_int $I11, $P11, rx869_curclass, "$!pos"
    lt $I11, 0, rx869_fail1972
    goto rxsubrule872_pass1981
  rxsubrule872_back1982:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx869_curclass, "$!pos"
    lt $I11, 0, rx869_fail1972
  rxsubrule872_pass1981:
    rx869_cstack = rx869_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule872_back1982
    push rx869_bstack, $I11
    push rx869_bstack, 0
    push rx869_bstack, rx869_pos
    elements $I11, rx869_cstack
    push rx869_bstack, $I11
    repr_get_attr_int rx869_pos, $P11, rx869_curclass, "$!pos"
    nqp_rxpeek $I19, rx869_bstack, rxquantr871_done1980
    inc $I19
    inc $I19
    set rx869_rep, rx869_bstack[$I19]
    nqp_rxcommit rx869_bstack, rxquantr871_done1980
    inc rx869_rep
  rxquantr871_done1980:
    nqp_rxmark rx869_bstack, rxquantr873_done1984, rx869_pos, 0
  rxquantr873_loop1983:
    repr_bind_attr_int rx869_cur, rx869_curclass, "$!pos", rx869_pos
    $P11 = rx869_cur."flags"()
    repr_get_attr_int $I11, $P11, rx869_curclass, "$!pos"
    lt $I11, 0, rx869_fail1972
    goto rxsubrule874_pass1985
  rxsubrule874_back1986:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx869_curclass, "$!pos"
    lt $I11, 0, rx869_fail1972
  rxsubrule874_pass1985:
    rx869_cstack = rx869_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule874_back1986
    push rx869_bstack, $I11
    push rx869_bstack, 0
    push rx869_bstack, rx869_pos
    elements $I11, rx869_cstack
    push rx869_bstack, $I11
    repr_get_attr_int rx869_pos, $P11, rx869_curclass, "$!pos"
    nqp_rxpeek $I19, rx869_bstack, rxquantr873_done1984
    inc $I19
    inc $I19
    set rx869_rep, rx869_bstack[$I19]
    nqp_rxcommit rx869_bstack, rxquantr873_done1984
    inc rx869_rep
    nqp_rxmark rx869_bstack, rxquantr873_done1984, rx869_pos, rx869_rep
    goto rxquantr873_loop1983
  rxquantr873_done1984:
    nqp_rxmark rx869_bstack, rxquantr875_done1988, rx869_pos, 0
  rxquantr875_loop1987:
    repr_bind_attr_int rx869_cur, rx869_curclass, "$!pos", rx869_pos
    $P11 = rx869_cur."size"()
    repr_get_attr_int $I11, $P11, rx869_curclass, "$!pos"
    lt $I11, 0, rx869_fail1972
    goto rxsubrule876_pass1989
  rxsubrule876_back1990:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx869_curclass, "$!pos"
    lt $I11, 0, rx869_fail1972
  rxsubrule876_pass1989:
    rx869_cstack = rx869_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule876_back1990
    push rx869_bstack, $I11
    push rx869_bstack, 0
    push rx869_bstack, rx869_pos
    elements $I11, rx869_cstack
    push rx869_bstack, $I11
    repr_get_attr_int rx869_pos, $P11, rx869_curclass, "$!pos"
    nqp_rxpeek $I19, rx869_bstack, rxquantr875_done1988
    inc $I19
    inc $I19
    set rx869_rep, rx869_bstack[$I19]
    nqp_rxcommit rx869_bstack, rxquantr875_done1988
    inc rx869_rep
  rxquantr875_done1988:
    nqp_rxmark rx869_bstack, rxquantr877_done1992, rx869_pos, 0
  rxquantr877_loop1991:
    add $I11, rx869_pos, 1
    gt $I11, rx869_eos, rx869_fail1972
    substr $S10, rx869_tgt, rx869_pos, 1
    ne $S10, ucs4:".", rx869_fail1972
    add rx869_pos, 1
    repr_bind_attr_int rx869_cur, rx869_curclass, "$!pos", rx869_pos
    $P11 = rx869_cur."size"()
    repr_get_attr_int $I11, $P11, rx869_curclass, "$!pos"
    lt $I11, 0, rx869_fail1972
    nqp_rxmark rx869_bstack, rxsubrule878_pass1993, -1, 0
  rxsubrule878_pass1993:
    rx869_cstack = rx869_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx869_pos, $P11, rx869_curclass, "$!pos"
    nqp_rxpeek $I19, rx869_bstack, rxquantr877_done1992
    inc $I19
    inc $I19
    set rx869_rep, rx869_bstack[$I19]
    nqp_rxcommit rx869_bstack, rxquantr877_done1992
    inc rx869_rep
  rxquantr877_done1992:
    nqp_rxmark rx869_bstack, rxcap879_fail1995, rx869_pos, 0
    ge rx869_pos, rx869_eos, rx869_fail1972
    substr $S11, rx869_tgt, rx869_pos, 1
    index $I11, ucs4:"di", $S11
    lt $I11, 0, rx869_fail1972
    inc rx869_pos
    nqp_rxpeek $I19, rx869_bstack, rxcap879_fail1995
    inc $I19
    set $I11, rx869_bstack[$I19]
    repr_bind_attr_int rx869_cur, rx869_curclass, "$!pos", rx869_pos
    $P11 = rx869_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx869_pos)
    rx869_cstack = rx869_cur."!cursor_capture"($P11, "sym")
    goto rxcap879_done1994
  rxcap879_fail1995:
    goto rx869_fail1972
  rxcap879_done1994:
    rx869_cur."!cursor_pass"(rx869_pos, "directive:sym<d>", 'backtrack'=>1)
    .return (rx869_cur)
  rx869_restart1971:
    repr_get_attr_obj rx869_cstack, rx869_cur, rx869_curclass, "$!cstack"
  rx869_fail1972:
    unless rx869_bstack, rx869_done1970
    pop $I19, rx869_bstack
    if_null rx869_cstack, rx869_cstack_done1975
    unless rx869_cstack, rx869_cstack_done1975
    dec $I19
    set $P11, rx869_cstack[$I19]
  rx869_cstack_done1975:
    pop rx869_rep, rx869_bstack
    pop rx869_pos, rx869_bstack
    pop $I19, rx869_bstack
    lt rx869_pos, -1, rx869_done1970
    lt rx869_pos, 0, rx869_fail1972
    eq $I19, 0, rx869_fail1972
    nqp_islist $I20, rx869_cstack
    unless $I20, rx869_jump1973
    elements $I18, rx869_bstack
    le $I18, 0, rx869_cut1974
    dec $I18
    set $I18, rx869_bstack[$I18]
  rx869_cut1974:
    assign rx869_cstack, $I18
  rx869_jump1973:
    jump $I19
  rx869_done1970:
    rx869_cur."!cursor_fail"()
    .return (rx869_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_199_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2081
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx880_start
    .local string rx880_tgt
    .local int rx880_pos
    .local int rx880_off
    .local int rx880_eos
    .local int rx880_rep
    .local pmc rx880_cur
    .local pmc rx880_curclass
    .local pmc rx880_bstack
    .local pmc rx880_cstack
    rx880_start = self."!cursor_start_all"()
    set rx880_cur, rx880_start[0]
    set rx880_tgt, rx880_start[1]
    set rx880_pos, rx880_start[2]
    set rx880_curclass, rx880_start[3]
    set rx880_bstack, rx880_start[4]
    set $I19, rx880_start[5]
    store_lex unicode:"$\x{a2}", rx880_cur
    length rx880_eos, rx880_tgt
    eq $I19, 1, rx880_restart1998
    gt rx880_pos, rx880_eos, rx880_fail1999
    repr_get_attr_int $I11, self, rx880_curclass, "$!from"
    ne $I11, -1, rxscan881_done2005
    goto rxscan881_scan2004
  rxscan881_loop2003:
    inc rx880_pos
    index rx880_pos, rx880_tgt, ucs4:"%", rx880_pos
    eq rx880_pos, -1, rx880_fail1999
    gt rx880_pos, rx880_eos, rx880_fail1999
    repr_bind_attr_int rx880_cur, rx880_curclass, "$!from", rx880_pos
  rxscan881_scan2004:
    nqp_rxmark rx880_bstack, rxscan881_loop2003, rx880_pos, 0
  rxscan881_done2005:
    add $I11, rx880_pos, 1
    gt $I11, rx880_eos, rx880_fail1999
    substr $S10, rx880_tgt, rx880_pos, 1
    ne $S10, ucs4:"%", rx880_fail1999
    add rx880_pos, 1
    nqp_rxmark rx880_bstack, rxquantr882_done2007, rx880_pos, 0
  rxquantr882_loop2006:
    repr_bind_attr_int rx880_cur, rx880_curclass, "$!pos", rx880_pos
    $P11 = rx880_cur."idx"()
    repr_get_attr_int $I11, $P11, rx880_curclass, "$!pos"
    lt $I11, 0, rx880_fail1999
    goto rxsubrule883_pass2008
  rxsubrule883_back2009:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx880_curclass, "$!pos"
    lt $I11, 0, rx880_fail1999
  rxsubrule883_pass2008:
    rx880_cstack = rx880_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule883_back2009
    push rx880_bstack, $I11
    push rx880_bstack, 0
    push rx880_bstack, rx880_pos
    elements $I11, rx880_cstack
    push rx880_bstack, $I11
    repr_get_attr_int rx880_pos, $P11, rx880_curclass, "$!pos"
    nqp_rxpeek $I19, rx880_bstack, rxquantr882_done2007
    inc $I19
    inc $I19
    set rx880_rep, rx880_bstack[$I19]
    nqp_rxcommit rx880_bstack, rxquantr882_done2007
    inc rx880_rep
  rxquantr882_done2007:
    nqp_rxmark rx880_bstack, rxquantr884_done2011, rx880_pos, 0
  rxquantr884_loop2010:
    repr_bind_attr_int rx880_cur, rx880_curclass, "$!pos", rx880_pos
    $P11 = rx880_cur."flags"()
    repr_get_attr_int $I11, $P11, rx880_curclass, "$!pos"
    lt $I11, 0, rx880_fail1999
    goto rxsubrule885_pass2012
  rxsubrule885_back2013:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx880_curclass, "$!pos"
    lt $I11, 0, rx880_fail1999
  rxsubrule885_pass2012:
    rx880_cstack = rx880_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule885_back2013
    push rx880_bstack, $I11
    push rx880_bstack, 0
    push rx880_bstack, rx880_pos
    elements $I11, rx880_cstack
    push rx880_bstack, $I11
    repr_get_attr_int rx880_pos, $P11, rx880_curclass, "$!pos"
    nqp_rxpeek $I19, rx880_bstack, rxquantr884_done2011
    inc $I19
    inc $I19
    set rx880_rep, rx880_bstack[$I19]
    nqp_rxcommit rx880_bstack, rxquantr884_done2011
    inc rx880_rep
    nqp_rxmark rx880_bstack, rxquantr884_done2011, rx880_pos, rx880_rep
    goto rxquantr884_loop2010
  rxquantr884_done2011:
    nqp_rxmark rx880_bstack, rxquantr886_done2015, rx880_pos, 0
  rxquantr886_loop2014:
    repr_bind_attr_int rx880_cur, rx880_curclass, "$!pos", rx880_pos
    $P11 = rx880_cur."size"()
    repr_get_attr_int $I11, $P11, rx880_curclass, "$!pos"
    lt $I11, 0, rx880_fail1999
    goto rxsubrule887_pass2016
  rxsubrule887_back2017:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx880_curclass, "$!pos"
    lt $I11, 0, rx880_fail1999
  rxsubrule887_pass2016:
    rx880_cstack = rx880_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule887_back2017
    push rx880_bstack, $I11
    push rx880_bstack, 0
    push rx880_bstack, rx880_pos
    elements $I11, rx880_cstack
    push rx880_bstack, $I11
    repr_get_attr_int rx880_pos, $P11, rx880_curclass, "$!pos"
    nqp_rxpeek $I19, rx880_bstack, rxquantr886_done2015
    inc $I19
    inc $I19
    set rx880_rep, rx880_bstack[$I19]
    nqp_rxcommit rx880_bstack, rxquantr886_done2015
    inc rx880_rep
  rxquantr886_done2015:
    nqp_rxmark rx880_bstack, rxquantr888_done2019, rx880_pos, 0
  rxquantr888_loop2018:
    add $I11, rx880_pos, 1
    gt $I11, rx880_eos, rx880_fail1999
    substr $S10, rx880_tgt, rx880_pos, 1
    ne $S10, ucs4:".", rx880_fail1999
    add rx880_pos, 1
    repr_bind_attr_int rx880_cur, rx880_curclass, "$!pos", rx880_pos
    $P11 = rx880_cur."size"()
    repr_get_attr_int $I11, $P11, rx880_curclass, "$!pos"
    lt $I11, 0, rx880_fail1999
    nqp_rxmark rx880_bstack, rxsubrule889_pass2020, -1, 0
  rxsubrule889_pass2020:
    rx880_cstack = rx880_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx880_pos, $P11, rx880_curclass, "$!pos"
    nqp_rxpeek $I19, rx880_bstack, rxquantr888_done2019
    inc $I19
    inc $I19
    set rx880_rep, rx880_bstack[$I19]
    nqp_rxcommit rx880_bstack, rxquantr888_done2019
    inc rx880_rep
  rxquantr888_done2019:
    nqp_rxmark rx880_bstack, rxcap890_fail2022, rx880_pos, 0
    ge rx880_pos, rx880_eos, rx880_fail1999
    substr $S11, rx880_tgt, rx880_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx880_fail1999
    inc rx880_pos
    nqp_rxpeek $I19, rx880_bstack, rxcap890_fail2022
    inc $I19
    set $I11, rx880_bstack[$I19]
    repr_bind_attr_int rx880_cur, rx880_curclass, "$!pos", rx880_pos
    $P11 = rx880_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx880_pos)
    rx880_cstack = rx880_cur."!cursor_capture"($P11, "sym")
    goto rxcap890_done2021
  rxcap890_fail2022:
    goto rx880_fail1999
  rxcap890_done2021:
    rx880_cur."!cursor_pass"(rx880_pos, "directive:sym<e>", 'backtrack'=>1)
    .return (rx880_cur)
  rx880_restart1998:
    repr_get_attr_obj rx880_cstack, rx880_cur, rx880_curclass, "$!cstack"
  rx880_fail1999:
    unless rx880_bstack, rx880_done1997
    pop $I19, rx880_bstack
    if_null rx880_cstack, rx880_cstack_done2002
    unless rx880_cstack, rx880_cstack_done2002
    dec $I19
    set $P11, rx880_cstack[$I19]
  rx880_cstack_done2002:
    pop rx880_rep, rx880_bstack
    pop rx880_pos, rx880_bstack
    pop $I19, rx880_bstack
    lt rx880_pos, -1, rx880_done1997
    lt rx880_pos, 0, rx880_fail1999
    eq $I19, 0, rx880_fail1999
    nqp_islist $I20, rx880_cstack
    unless $I20, rx880_jump2000
    elements $I18, rx880_bstack
    le $I18, 0, rx880_cut2001
    dec $I18
    set $I18, rx880_bstack[$I18]
  rx880_cut2001:
    assign rx880_cstack, $I18
  rx880_jump2000:
    jump $I19
  rx880_done1997:
    rx880_cur."!cursor_fail"()
    .return (rx880_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_200_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2082
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx891_start
    .local string rx891_tgt
    .local int rx891_pos
    .local int rx891_off
    .local int rx891_eos
    .local int rx891_rep
    .local pmc rx891_cur
    .local pmc rx891_curclass
    .local pmc rx891_bstack
    .local pmc rx891_cstack
    rx891_start = self."!cursor_start_all"()
    set rx891_cur, rx891_start[0]
    set rx891_tgt, rx891_start[1]
    set rx891_pos, rx891_start[2]
    set rx891_curclass, rx891_start[3]
    set rx891_bstack, rx891_start[4]
    set $I19, rx891_start[5]
    store_lex unicode:"$\x{a2}", rx891_cur
    length rx891_eos, rx891_tgt
    eq $I19, 1, rx891_restart2025
    gt rx891_pos, rx891_eos, rx891_fail2026
    repr_get_attr_int $I11, self, rx891_curclass, "$!from"
    ne $I11, -1, rxscan892_done2032
    goto rxscan892_scan2031
  rxscan892_loop2030:
    inc rx891_pos
    index rx891_pos, rx891_tgt, ucs4:"%", rx891_pos
    eq rx891_pos, -1, rx891_fail2026
    gt rx891_pos, rx891_eos, rx891_fail2026
    repr_bind_attr_int rx891_cur, rx891_curclass, "$!from", rx891_pos
  rxscan892_scan2031:
    nqp_rxmark rx891_bstack, rxscan892_loop2030, rx891_pos, 0
  rxscan892_done2032:
    add $I11, rx891_pos, 1
    gt $I11, rx891_eos, rx891_fail2026
    substr $S10, rx891_tgt, rx891_pos, 1
    ne $S10, ucs4:"%", rx891_fail2026
    add rx891_pos, 1
    nqp_rxmark rx891_bstack, rxquantr893_done2034, rx891_pos, 0
  rxquantr893_loop2033:
    repr_bind_attr_int rx891_cur, rx891_curclass, "$!pos", rx891_pos
    $P11 = rx891_cur."idx"()
    repr_get_attr_int $I11, $P11, rx891_curclass, "$!pos"
    lt $I11, 0, rx891_fail2026
    goto rxsubrule894_pass2035
  rxsubrule894_back2036:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx891_curclass, "$!pos"
    lt $I11, 0, rx891_fail2026
  rxsubrule894_pass2035:
    rx891_cstack = rx891_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule894_back2036
    push rx891_bstack, $I11
    push rx891_bstack, 0
    push rx891_bstack, rx891_pos
    elements $I11, rx891_cstack
    push rx891_bstack, $I11
    repr_get_attr_int rx891_pos, $P11, rx891_curclass, "$!pos"
    nqp_rxpeek $I19, rx891_bstack, rxquantr893_done2034
    inc $I19
    inc $I19
    set rx891_rep, rx891_bstack[$I19]
    nqp_rxcommit rx891_bstack, rxquantr893_done2034
    inc rx891_rep
  rxquantr893_done2034:
    nqp_rxmark rx891_bstack, rxquantr895_done2038, rx891_pos, 0
  rxquantr895_loop2037:
    repr_bind_attr_int rx891_cur, rx891_curclass, "$!pos", rx891_pos
    $P11 = rx891_cur."flags"()
    repr_get_attr_int $I11, $P11, rx891_curclass, "$!pos"
    lt $I11, 0, rx891_fail2026
    goto rxsubrule896_pass2039
  rxsubrule896_back2040:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx891_curclass, "$!pos"
    lt $I11, 0, rx891_fail2026
  rxsubrule896_pass2039:
    rx891_cstack = rx891_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule896_back2040
    push rx891_bstack, $I11
    push rx891_bstack, 0
    push rx891_bstack, rx891_pos
    elements $I11, rx891_cstack
    push rx891_bstack, $I11
    repr_get_attr_int rx891_pos, $P11, rx891_curclass, "$!pos"
    nqp_rxpeek $I19, rx891_bstack, rxquantr895_done2038
    inc $I19
    inc $I19
    set rx891_rep, rx891_bstack[$I19]
    nqp_rxcommit rx891_bstack, rxquantr895_done2038
    inc rx891_rep
    nqp_rxmark rx891_bstack, rxquantr895_done2038, rx891_pos, rx891_rep
    goto rxquantr895_loop2037
  rxquantr895_done2038:
    nqp_rxmark rx891_bstack, rxquantr897_done2042, rx891_pos, 0
  rxquantr897_loop2041:
    repr_bind_attr_int rx891_cur, rx891_curclass, "$!pos", rx891_pos
    $P11 = rx891_cur."size"()
    repr_get_attr_int $I11, $P11, rx891_curclass, "$!pos"
    lt $I11, 0, rx891_fail2026
    goto rxsubrule898_pass2043
  rxsubrule898_back2044:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx891_curclass, "$!pos"
    lt $I11, 0, rx891_fail2026
  rxsubrule898_pass2043:
    rx891_cstack = rx891_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule898_back2044
    push rx891_bstack, $I11
    push rx891_bstack, 0
    push rx891_bstack, rx891_pos
    elements $I11, rx891_cstack
    push rx891_bstack, $I11
    repr_get_attr_int rx891_pos, $P11, rx891_curclass, "$!pos"
    nqp_rxpeek $I19, rx891_bstack, rxquantr897_done2042
    inc $I19
    inc $I19
    set rx891_rep, rx891_bstack[$I19]
    nqp_rxcommit rx891_bstack, rxquantr897_done2042
    inc rx891_rep
  rxquantr897_done2042:
    nqp_rxmark rx891_bstack, rxquantr899_done2046, rx891_pos, 0
  rxquantr899_loop2045:
    add $I11, rx891_pos, 1
    gt $I11, rx891_eos, rx891_fail2026
    substr $S10, rx891_tgt, rx891_pos, 1
    ne $S10, ucs4:".", rx891_fail2026
    add rx891_pos, 1
    repr_bind_attr_int rx891_cur, rx891_curclass, "$!pos", rx891_pos
    $P11 = rx891_cur."size"()
    repr_get_attr_int $I11, $P11, rx891_curclass, "$!pos"
    lt $I11, 0, rx891_fail2026
    nqp_rxmark rx891_bstack, rxsubrule900_pass2047, -1, 0
  rxsubrule900_pass2047:
    rx891_cstack = rx891_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx891_pos, $P11, rx891_curclass, "$!pos"
    nqp_rxpeek $I19, rx891_bstack, rxquantr899_done2046
    inc $I19
    inc $I19
    set rx891_rep, rx891_bstack[$I19]
    nqp_rxcommit rx891_bstack, rxquantr899_done2046
    inc rx891_rep
  rxquantr899_done2046:
    nqp_rxmark rx891_bstack, rxcap901_fail2049, rx891_pos, 0
    ge rx891_pos, rx891_eos, rx891_fail2026
    substr $S11, rx891_tgt, rx891_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx891_fail2026
    inc rx891_pos
    nqp_rxpeek $I19, rx891_bstack, rxcap901_fail2049
    inc $I19
    set $I11, rx891_bstack[$I19]
    repr_bind_attr_int rx891_cur, rx891_curclass, "$!pos", rx891_pos
    $P11 = rx891_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx891_pos)
    rx891_cstack = rx891_cur."!cursor_capture"($P11, "sym")
    goto rxcap901_done2048
  rxcap901_fail2049:
    goto rx891_fail2026
  rxcap901_done2048:
    rx891_cur."!cursor_pass"(rx891_pos, "directive:sym<f>", 'backtrack'=>1)
    .return (rx891_cur)
  rx891_restart2025:
    repr_get_attr_obj rx891_cstack, rx891_cur, rx891_curclass, "$!cstack"
  rx891_fail2026:
    unless rx891_bstack, rx891_done2024
    pop $I19, rx891_bstack
    if_null rx891_cstack, rx891_cstack_done2029
    unless rx891_cstack, rx891_cstack_done2029
    dec $I19
    set $P11, rx891_cstack[$I19]
  rx891_cstack_done2029:
    pop rx891_rep, rx891_bstack
    pop rx891_pos, rx891_bstack
    pop $I19, rx891_bstack
    lt rx891_pos, -1, rx891_done2024
    lt rx891_pos, 0, rx891_fail2026
    eq $I19, 0, rx891_fail2026
    nqp_islist $I20, rx891_cstack
    unless $I20, rx891_jump2027
    elements $I18, rx891_bstack
    le $I18, 0, rx891_cut2028
    dec $I18
    set $I18, rx891_bstack[$I18]
  rx891_cut2028:
    assign rx891_cstack, $I18
  rx891_jump2027:
    jump $I19
  rx891_done2024:
    rx891_cur."!cursor_fail"()
    .return (rx891_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_201_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2083
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx902_start
    .local string rx902_tgt
    .local int rx902_pos
    .local int rx902_off
    .local int rx902_eos
    .local int rx902_rep
    .local pmc rx902_cur
    .local pmc rx902_curclass
    .local pmc rx902_bstack
    .local pmc rx902_cstack
    rx902_start = self."!cursor_start_all"()
    set rx902_cur, rx902_start[0]
    set rx902_tgt, rx902_start[1]
    set rx902_pos, rx902_start[2]
    set rx902_curclass, rx902_start[3]
    set rx902_bstack, rx902_start[4]
    set $I19, rx902_start[5]
    store_lex unicode:"$\x{a2}", rx902_cur
    length rx902_eos, rx902_tgt
    eq $I19, 1, rx902_restart2052
    gt rx902_pos, rx902_eos, rx902_fail2053
    repr_get_attr_int $I11, self, rx902_curclass, "$!from"
    ne $I11, -1, rxscan903_done2059
    goto rxscan903_scan2058
  rxscan903_loop2057:
    inc rx902_pos
    index rx902_pos, rx902_tgt, ucs4:"%", rx902_pos
    eq rx902_pos, -1, rx902_fail2053
    gt rx902_pos, rx902_eos, rx902_fail2053
    repr_bind_attr_int rx902_cur, rx902_curclass, "$!from", rx902_pos
  rxscan903_scan2058:
    nqp_rxmark rx902_bstack, rxscan903_loop2057, rx902_pos, 0
  rxscan903_done2059:
    add $I11, rx902_pos, 1
    gt $I11, rx902_eos, rx902_fail2053
    substr $S10, rx902_tgt, rx902_pos, 1
    ne $S10, ucs4:"%", rx902_fail2053
    add rx902_pos, 1
    nqp_rxmark rx902_bstack, rxquantr904_done2061, rx902_pos, 0
  rxquantr904_loop2060:
    repr_bind_attr_int rx902_cur, rx902_curclass, "$!pos", rx902_pos
    $P11 = rx902_cur."idx"()
    repr_get_attr_int $I11, $P11, rx902_curclass, "$!pos"
    lt $I11, 0, rx902_fail2053
    goto rxsubrule905_pass2062
  rxsubrule905_back2063:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx902_curclass, "$!pos"
    lt $I11, 0, rx902_fail2053
  rxsubrule905_pass2062:
    rx902_cstack = rx902_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule905_back2063
    push rx902_bstack, $I11
    push rx902_bstack, 0
    push rx902_bstack, rx902_pos
    elements $I11, rx902_cstack
    push rx902_bstack, $I11
    repr_get_attr_int rx902_pos, $P11, rx902_curclass, "$!pos"
    nqp_rxpeek $I19, rx902_bstack, rxquantr904_done2061
    inc $I19
    inc $I19
    set rx902_rep, rx902_bstack[$I19]
    nqp_rxcommit rx902_bstack, rxquantr904_done2061
    inc rx902_rep
  rxquantr904_done2061:
    nqp_rxmark rx902_bstack, rxquantr906_done2065, rx902_pos, 0
  rxquantr906_loop2064:
    repr_bind_attr_int rx902_cur, rx902_curclass, "$!pos", rx902_pos
    $P11 = rx902_cur."flags"()
    repr_get_attr_int $I11, $P11, rx902_curclass, "$!pos"
    lt $I11, 0, rx902_fail2053
    goto rxsubrule907_pass2066
  rxsubrule907_back2067:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx902_curclass, "$!pos"
    lt $I11, 0, rx902_fail2053
  rxsubrule907_pass2066:
    rx902_cstack = rx902_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule907_back2067
    push rx902_bstack, $I11
    push rx902_bstack, 0
    push rx902_bstack, rx902_pos
    elements $I11, rx902_cstack
    push rx902_bstack, $I11
    repr_get_attr_int rx902_pos, $P11, rx902_curclass, "$!pos"
    nqp_rxpeek $I19, rx902_bstack, rxquantr906_done2065
    inc $I19
    inc $I19
    set rx902_rep, rx902_bstack[$I19]
    nqp_rxcommit rx902_bstack, rxquantr906_done2065
    inc rx902_rep
    nqp_rxmark rx902_bstack, rxquantr906_done2065, rx902_pos, rx902_rep
    goto rxquantr906_loop2064
  rxquantr906_done2065:
    nqp_rxmark rx902_bstack, rxquantr908_done2069, rx902_pos, 0
  rxquantr908_loop2068:
    repr_bind_attr_int rx902_cur, rx902_curclass, "$!pos", rx902_pos
    $P11 = rx902_cur."size"()
    repr_get_attr_int $I11, $P11, rx902_curclass, "$!pos"
    lt $I11, 0, rx902_fail2053
    goto rxsubrule909_pass2070
  rxsubrule909_back2071:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx902_curclass, "$!pos"
    lt $I11, 0, rx902_fail2053
  rxsubrule909_pass2070:
    rx902_cstack = rx902_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule909_back2071
    push rx902_bstack, $I11
    push rx902_bstack, 0
    push rx902_bstack, rx902_pos
    elements $I11, rx902_cstack
    push rx902_bstack, $I11
    repr_get_attr_int rx902_pos, $P11, rx902_curclass, "$!pos"
    nqp_rxpeek $I19, rx902_bstack, rxquantr908_done2069
    inc $I19
    inc $I19
    set rx902_rep, rx902_bstack[$I19]
    nqp_rxcommit rx902_bstack, rxquantr908_done2069
    inc rx902_rep
  rxquantr908_done2069:
    nqp_rxmark rx902_bstack, rxquantr910_done2073, rx902_pos, 0
  rxquantr910_loop2072:
    add $I11, rx902_pos, 1
    gt $I11, rx902_eos, rx902_fail2053
    substr $S10, rx902_tgt, rx902_pos, 1
    ne $S10, ucs4:".", rx902_fail2053
    add rx902_pos, 1
    repr_bind_attr_int rx902_cur, rx902_curclass, "$!pos", rx902_pos
    $P11 = rx902_cur."size"()
    repr_get_attr_int $I11, $P11, rx902_curclass, "$!pos"
    lt $I11, 0, rx902_fail2053
    nqp_rxmark rx902_bstack, rxsubrule911_pass2074, -1, 0
  rxsubrule911_pass2074:
    rx902_cstack = rx902_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx902_pos, $P11, rx902_curclass, "$!pos"
    nqp_rxpeek $I19, rx902_bstack, rxquantr910_done2073
    inc $I19
    inc $I19
    set rx902_rep, rx902_bstack[$I19]
    nqp_rxcommit rx902_bstack, rxquantr910_done2073
    inc rx902_rep
  rxquantr910_done2073:
    nqp_rxmark rx902_bstack, rxcap912_fail2076, rx902_pos, 0
    ge rx902_pos, rx902_eos, rx902_fail2053
    substr $S11, rx902_tgt, rx902_pos, 1
    index $I11, ucs4:"gG", $S11
    lt $I11, 0, rx902_fail2053
    inc rx902_pos
    nqp_rxpeek $I19, rx902_bstack, rxcap912_fail2076
    inc $I19
    set $I11, rx902_bstack[$I19]
    repr_bind_attr_int rx902_cur, rx902_curclass, "$!pos", rx902_pos
    $P11 = rx902_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx902_pos)
    rx902_cstack = rx902_cur."!cursor_capture"($P11, "sym")
    goto rxcap912_done2075
  rxcap912_fail2076:
    goto rx902_fail2053
  rxcap912_done2075:
    rx902_cur."!cursor_pass"(rx902_pos, "directive:sym<g>", 'backtrack'=>1)
    .return (rx902_cur)
  rx902_restart2052:
    repr_get_attr_obj rx902_cstack, rx902_cur, rx902_curclass, "$!cstack"
  rx902_fail2053:
    unless rx902_bstack, rx902_done2051
    pop $I19, rx902_bstack
    if_null rx902_cstack, rx902_cstack_done2056
    unless rx902_cstack, rx902_cstack_done2056
    dec $I19
    set $P11, rx902_cstack[$I19]
  rx902_cstack_done2056:
    pop rx902_rep, rx902_bstack
    pop rx902_pos, rx902_bstack
    pop $I19, rx902_bstack
    lt rx902_pos, -1, rx902_done2051
    lt rx902_pos, 0, rx902_fail2053
    eq $I19, 0, rx902_fail2053
    nqp_islist $I20, rx902_cstack
    unless $I20, rx902_jump2054
    elements $I18, rx902_bstack
    le $I18, 0, rx902_cut2055
    dec $I18
    set $I18, rx902_bstack[$I18]
  rx902_cut2055:
    assign rx902_cstack, $I18
  rx902_jump2054:
    jump $I19
  rx902_done2051:
    rx902_cur."!cursor_fail"()
    .return (rx902_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_202_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2084
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx913_start
    .local string rx913_tgt
    .local int rx913_pos
    .local int rx913_off
    .local int rx913_eos
    .local int rx913_rep
    .local pmc rx913_cur
    .local pmc rx913_curclass
    .local pmc rx913_bstack
    .local pmc rx913_cstack
    rx913_start = self."!cursor_start_all"()
    set rx913_cur, rx913_start[0]
    set rx913_tgt, rx913_start[1]
    set rx913_pos, rx913_start[2]
    set rx913_curclass, rx913_start[3]
    set rx913_bstack, rx913_start[4]
    set $I19, rx913_start[5]
    store_lex unicode:"$\x{a2}", rx913_cur
    length rx913_eos, rx913_tgt
    eq $I19, 1, rx913_restart2079
    gt rx913_pos, rx913_eos, rx913_fail2080
    repr_get_attr_int $I11, self, rx913_curclass, "$!from"
    ne $I11, -1, rxscan914_done2086
    goto rxscan914_scan2085
  rxscan914_loop2084:
    inc rx913_pos
    index rx913_pos, rx913_tgt, ucs4:"%", rx913_pos
    eq rx913_pos, -1, rx913_fail2080
    gt rx913_pos, rx913_eos, rx913_fail2080
    repr_bind_attr_int rx913_cur, rx913_curclass, "$!from", rx913_pos
  rxscan914_scan2085:
    nqp_rxmark rx913_bstack, rxscan914_loop2084, rx913_pos, 0
  rxscan914_done2086:
    add $I11, rx913_pos, 1
    gt $I11, rx913_eos, rx913_fail2080
    substr $S10, rx913_tgt, rx913_pos, 1
    ne $S10, ucs4:"%", rx913_fail2080
    add rx913_pos, 1
    nqp_rxmark rx913_bstack, rxquantr915_done2088, rx913_pos, 0
  rxquantr915_loop2087:
    repr_bind_attr_int rx913_cur, rx913_curclass, "$!pos", rx913_pos
    $P11 = rx913_cur."idx"()
    repr_get_attr_int $I11, $P11, rx913_curclass, "$!pos"
    lt $I11, 0, rx913_fail2080
    goto rxsubrule916_pass2089
  rxsubrule916_back2090:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx913_curclass, "$!pos"
    lt $I11, 0, rx913_fail2080
  rxsubrule916_pass2089:
    rx913_cstack = rx913_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule916_back2090
    push rx913_bstack, $I11
    push rx913_bstack, 0
    push rx913_bstack, rx913_pos
    elements $I11, rx913_cstack
    push rx913_bstack, $I11
    repr_get_attr_int rx913_pos, $P11, rx913_curclass, "$!pos"
    nqp_rxpeek $I19, rx913_bstack, rxquantr915_done2088
    inc $I19
    inc $I19
    set rx913_rep, rx913_bstack[$I19]
    nqp_rxcommit rx913_bstack, rxquantr915_done2088
    inc rx913_rep
  rxquantr915_done2088:
    nqp_rxmark rx913_bstack, rxquantr917_done2092, rx913_pos, 0
  rxquantr917_loop2091:
    repr_bind_attr_int rx913_cur, rx913_curclass, "$!pos", rx913_pos
    $P11 = rx913_cur."flags"()
    repr_get_attr_int $I11, $P11, rx913_curclass, "$!pos"
    lt $I11, 0, rx913_fail2080
    goto rxsubrule918_pass2093
  rxsubrule918_back2094:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx913_curclass, "$!pos"
    lt $I11, 0, rx913_fail2080
  rxsubrule918_pass2093:
    rx913_cstack = rx913_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule918_back2094
    push rx913_bstack, $I11
    push rx913_bstack, 0
    push rx913_bstack, rx913_pos
    elements $I11, rx913_cstack
    push rx913_bstack, $I11
    repr_get_attr_int rx913_pos, $P11, rx913_curclass, "$!pos"
    nqp_rxpeek $I19, rx913_bstack, rxquantr917_done2092
    inc $I19
    inc $I19
    set rx913_rep, rx913_bstack[$I19]
    nqp_rxcommit rx913_bstack, rxquantr917_done2092
    inc rx913_rep
    nqp_rxmark rx913_bstack, rxquantr917_done2092, rx913_pos, rx913_rep
    goto rxquantr917_loop2091
  rxquantr917_done2092:
    nqp_rxmark rx913_bstack, rxquantr919_done2096, rx913_pos, 0
  rxquantr919_loop2095:
    repr_bind_attr_int rx913_cur, rx913_curclass, "$!pos", rx913_pos
    $P11 = rx913_cur."size"()
    repr_get_attr_int $I11, $P11, rx913_curclass, "$!pos"
    lt $I11, 0, rx913_fail2080
    goto rxsubrule920_pass2097
  rxsubrule920_back2098:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx913_curclass, "$!pos"
    lt $I11, 0, rx913_fail2080
  rxsubrule920_pass2097:
    rx913_cstack = rx913_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule920_back2098
    push rx913_bstack, $I11
    push rx913_bstack, 0
    push rx913_bstack, rx913_pos
    elements $I11, rx913_cstack
    push rx913_bstack, $I11
    repr_get_attr_int rx913_pos, $P11, rx913_curclass, "$!pos"
    nqp_rxpeek $I19, rx913_bstack, rxquantr919_done2096
    inc $I19
    inc $I19
    set rx913_rep, rx913_bstack[$I19]
    nqp_rxcommit rx913_bstack, rxquantr919_done2096
    inc rx913_rep
  rxquantr919_done2096:
    nqp_rxmark rx913_bstack, rxquantr921_done2100, rx913_pos, 0
  rxquantr921_loop2099:
    add $I11, rx913_pos, 1
    gt $I11, rx913_eos, rx913_fail2080
    substr $S10, rx913_tgt, rx913_pos, 1
    ne $S10, ucs4:".", rx913_fail2080
    add rx913_pos, 1
    repr_bind_attr_int rx913_cur, rx913_curclass, "$!pos", rx913_pos
    $P11 = rx913_cur."size"()
    repr_get_attr_int $I11, $P11, rx913_curclass, "$!pos"
    lt $I11, 0, rx913_fail2080
    nqp_rxmark rx913_bstack, rxsubrule922_pass2101, -1, 0
  rxsubrule922_pass2101:
    rx913_cstack = rx913_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx913_pos, $P11, rx913_curclass, "$!pos"
    nqp_rxpeek $I19, rx913_bstack, rxquantr921_done2100
    inc $I19
    inc $I19
    set rx913_rep, rx913_bstack[$I19]
    nqp_rxcommit rx913_bstack, rxquantr921_done2100
    inc rx913_rep
  rxquantr921_done2100:
    nqp_rxmark rx913_bstack, rxcap923_fail2103, rx913_pos, 0
    add $I11, rx913_pos, 1
    gt $I11, rx913_eos, rx913_fail2080
    substr $S10, rx913_tgt, rx913_pos, 1
    ne $S10, ucs4:"o", rx913_fail2080
    add rx913_pos, 1
    nqp_rxpeek $I19, rx913_bstack, rxcap923_fail2103
    inc $I19
    set $I11, rx913_bstack[$I19]
    repr_bind_attr_int rx913_cur, rx913_curclass, "$!pos", rx913_pos
    $P11 = rx913_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx913_pos)
    rx913_cstack = rx913_cur."!cursor_capture"($P11, "sym")
    goto rxcap923_done2102
  rxcap923_fail2103:
    goto rx913_fail2080
  rxcap923_done2102:
    rx913_cur."!cursor_pass"(rx913_pos, "directive:sym<o>", 'backtrack'=>1)
    .return (rx913_cur)
  rx913_restart2079:
    repr_get_attr_obj rx913_cstack, rx913_cur, rx913_curclass, "$!cstack"
  rx913_fail2080:
    unless rx913_bstack, rx913_done2078
    pop $I19, rx913_bstack
    if_null rx913_cstack, rx913_cstack_done2083
    unless rx913_cstack, rx913_cstack_done2083
    dec $I19
    set $P11, rx913_cstack[$I19]
  rx913_cstack_done2083:
    pop rx913_rep, rx913_bstack
    pop rx913_pos, rx913_bstack
    pop $I19, rx913_bstack
    lt rx913_pos, -1, rx913_done2078
    lt rx913_pos, 0, rx913_fail2080
    eq $I19, 0, rx913_fail2080
    nqp_islist $I20, rx913_cstack
    unless $I20, rx913_jump2081
    elements $I18, rx913_bstack
    le $I18, 0, rx913_cut2082
    dec $I18
    set $I18, rx913_bstack[$I18]
  rx913_cut2082:
    assign rx913_cstack, $I18
  rx913_jump2081:
    jump $I19
  rx913_done2078:
    rx913_cur."!cursor_fail"()
    .return (rx913_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_203_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2085
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx924_start
    .local string rx924_tgt
    .local int rx924_pos
    .local int rx924_off
    .local int rx924_eos
    .local int rx924_rep
    .local pmc rx924_cur
    .local pmc rx924_curclass
    .local pmc rx924_bstack
    .local pmc rx924_cstack
    rx924_start = self."!cursor_start_all"()
    set rx924_cur, rx924_start[0]
    set rx924_tgt, rx924_start[1]
    set rx924_pos, rx924_start[2]
    set rx924_curclass, rx924_start[3]
    set rx924_bstack, rx924_start[4]
    set $I19, rx924_start[5]
    store_lex unicode:"$\x{a2}", rx924_cur
    length rx924_eos, rx924_tgt
    eq $I19, 1, rx924_restart2106
    gt rx924_pos, rx924_eos, rx924_fail2107
    repr_get_attr_int $I11, self, rx924_curclass, "$!from"
    ne $I11, -1, rxscan925_done2113
    goto rxscan925_scan2112
  rxscan925_loop2111:
    inc rx924_pos
    index rx924_pos, rx924_tgt, ucs4:"%", rx924_pos
    eq rx924_pos, -1, rx924_fail2107
    gt rx924_pos, rx924_eos, rx924_fail2107
    repr_bind_attr_int rx924_cur, rx924_curclass, "$!from", rx924_pos
  rxscan925_scan2112:
    nqp_rxmark rx924_bstack, rxscan925_loop2111, rx924_pos, 0
  rxscan925_done2113:
    add $I11, rx924_pos, 1
    gt $I11, rx924_eos, rx924_fail2107
    substr $S10, rx924_tgt, rx924_pos, 1
    ne $S10, ucs4:"%", rx924_fail2107
    add rx924_pos, 1
    nqp_rxmark rx924_bstack, rxquantr926_done2115, rx924_pos, 0
  rxquantr926_loop2114:
    repr_bind_attr_int rx924_cur, rx924_curclass, "$!pos", rx924_pos
    $P11 = rx924_cur."idx"()
    repr_get_attr_int $I11, $P11, rx924_curclass, "$!pos"
    lt $I11, 0, rx924_fail2107
    goto rxsubrule927_pass2116
  rxsubrule927_back2117:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx924_curclass, "$!pos"
    lt $I11, 0, rx924_fail2107
  rxsubrule927_pass2116:
    rx924_cstack = rx924_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule927_back2117
    push rx924_bstack, $I11
    push rx924_bstack, 0
    push rx924_bstack, rx924_pos
    elements $I11, rx924_cstack
    push rx924_bstack, $I11
    repr_get_attr_int rx924_pos, $P11, rx924_curclass, "$!pos"
    nqp_rxpeek $I19, rx924_bstack, rxquantr926_done2115
    inc $I19
    inc $I19
    set rx924_rep, rx924_bstack[$I19]
    nqp_rxcommit rx924_bstack, rxquantr926_done2115
    inc rx924_rep
  rxquantr926_done2115:
    nqp_rxmark rx924_bstack, rxquantr928_done2119, rx924_pos, 0
  rxquantr928_loop2118:
    repr_bind_attr_int rx924_cur, rx924_curclass, "$!pos", rx924_pos
    $P11 = rx924_cur."flags"()
    repr_get_attr_int $I11, $P11, rx924_curclass, "$!pos"
    lt $I11, 0, rx924_fail2107
    goto rxsubrule929_pass2120
  rxsubrule929_back2121:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx924_curclass, "$!pos"
    lt $I11, 0, rx924_fail2107
  rxsubrule929_pass2120:
    rx924_cstack = rx924_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule929_back2121
    push rx924_bstack, $I11
    push rx924_bstack, 0
    push rx924_bstack, rx924_pos
    elements $I11, rx924_cstack
    push rx924_bstack, $I11
    repr_get_attr_int rx924_pos, $P11, rx924_curclass, "$!pos"
    nqp_rxpeek $I19, rx924_bstack, rxquantr928_done2119
    inc $I19
    inc $I19
    set rx924_rep, rx924_bstack[$I19]
    nqp_rxcommit rx924_bstack, rxquantr928_done2119
    inc rx924_rep
    nqp_rxmark rx924_bstack, rxquantr928_done2119, rx924_pos, rx924_rep
    goto rxquantr928_loop2118
  rxquantr928_done2119:
    nqp_rxmark rx924_bstack, rxquantr930_done2123, rx924_pos, 0
  rxquantr930_loop2122:
    repr_bind_attr_int rx924_cur, rx924_curclass, "$!pos", rx924_pos
    $P11 = rx924_cur."size"()
    repr_get_attr_int $I11, $P11, rx924_curclass, "$!pos"
    lt $I11, 0, rx924_fail2107
    goto rxsubrule931_pass2124
  rxsubrule931_back2125:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx924_curclass, "$!pos"
    lt $I11, 0, rx924_fail2107
  rxsubrule931_pass2124:
    rx924_cstack = rx924_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule931_back2125
    push rx924_bstack, $I11
    push rx924_bstack, 0
    push rx924_bstack, rx924_pos
    elements $I11, rx924_cstack
    push rx924_bstack, $I11
    repr_get_attr_int rx924_pos, $P11, rx924_curclass, "$!pos"
    nqp_rxpeek $I19, rx924_bstack, rxquantr930_done2123
    inc $I19
    inc $I19
    set rx924_rep, rx924_bstack[$I19]
    nqp_rxcommit rx924_bstack, rxquantr930_done2123
    inc rx924_rep
  rxquantr930_done2123:
    nqp_rxmark rx924_bstack, rxquantr932_done2127, rx924_pos, 0
  rxquantr932_loop2126:
    add $I11, rx924_pos, 1
    gt $I11, rx924_eos, rx924_fail2107
    substr $S10, rx924_tgt, rx924_pos, 1
    ne $S10, ucs4:".", rx924_fail2107
    add rx924_pos, 1
    repr_bind_attr_int rx924_cur, rx924_curclass, "$!pos", rx924_pos
    $P11 = rx924_cur."size"()
    repr_get_attr_int $I11, $P11, rx924_curclass, "$!pos"
    lt $I11, 0, rx924_fail2107
    nqp_rxmark rx924_bstack, rxsubrule933_pass2128, -1, 0
  rxsubrule933_pass2128:
    rx924_cstack = rx924_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx924_pos, $P11, rx924_curclass, "$!pos"
    nqp_rxpeek $I19, rx924_bstack, rxquantr932_done2127
    inc $I19
    inc $I19
    set rx924_rep, rx924_bstack[$I19]
    nqp_rxcommit rx924_bstack, rxquantr932_done2127
    inc rx924_rep
  rxquantr932_done2127:
    nqp_rxmark rx924_bstack, rxcap934_fail2130, rx924_pos, 0
    add $I11, rx924_pos, 1
    gt $I11, rx924_eos, rx924_fail2107
    substr $S10, rx924_tgt, rx924_pos, 1
    ne $S10, ucs4:"s", rx924_fail2107
    add rx924_pos, 1
    nqp_rxpeek $I19, rx924_bstack, rxcap934_fail2130
    inc $I19
    set $I11, rx924_bstack[$I19]
    repr_bind_attr_int rx924_cur, rx924_curclass, "$!pos", rx924_pos
    $P11 = rx924_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx924_pos)
    rx924_cstack = rx924_cur."!cursor_capture"($P11, "sym")
    goto rxcap934_done2129
  rxcap934_fail2130:
    goto rx924_fail2107
  rxcap934_done2129:
    rx924_cur."!cursor_pass"(rx924_pos, "directive:sym<s>", 'backtrack'=>1)
    .return (rx924_cur)
  rx924_restart2106:
    repr_get_attr_obj rx924_cstack, rx924_cur, rx924_curclass, "$!cstack"
  rx924_fail2107:
    unless rx924_bstack, rx924_done2105
    pop $I19, rx924_bstack
    if_null rx924_cstack, rx924_cstack_done2110
    unless rx924_cstack, rx924_cstack_done2110
    dec $I19
    set $P11, rx924_cstack[$I19]
  rx924_cstack_done2110:
    pop rx924_rep, rx924_bstack
    pop rx924_pos, rx924_bstack
    pop $I19, rx924_bstack
    lt rx924_pos, -1, rx924_done2105
    lt rx924_pos, 0, rx924_fail2107
    eq $I19, 0, rx924_fail2107
    nqp_islist $I20, rx924_cstack
    unless $I20, rx924_jump2108
    elements $I18, rx924_bstack
    le $I18, 0, rx924_cut2109
    dec $I18
    set $I18, rx924_bstack[$I18]
  rx924_cut2109:
    assign rx924_cstack, $I18
  rx924_jump2108:
    jump $I19
  rx924_done2105:
    rx924_cur."!cursor_fail"()
    .return (rx924_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_204_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2086
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx935_start
    .local string rx935_tgt
    .local int rx935_pos
    .local int rx935_off
    .local int rx935_eos
    .local int rx935_rep
    .local pmc rx935_cur
    .local pmc rx935_curclass
    .local pmc rx935_bstack
    .local pmc rx935_cstack
    rx935_start = self."!cursor_start_all"()
    set rx935_cur, rx935_start[0]
    set rx935_tgt, rx935_start[1]
    set rx935_pos, rx935_start[2]
    set rx935_curclass, rx935_start[3]
    set rx935_bstack, rx935_start[4]
    set $I19, rx935_start[5]
    store_lex unicode:"$\x{a2}", rx935_cur
    length rx935_eos, rx935_tgt
    eq $I19, 1, rx935_restart2133
    gt rx935_pos, rx935_eos, rx935_fail2134
    repr_get_attr_int $I11, self, rx935_curclass, "$!from"
    ne $I11, -1, rxscan936_done2140
    goto rxscan936_scan2139
  rxscan936_loop2138:
    inc rx935_pos
    index rx935_pos, rx935_tgt, ucs4:"%", rx935_pos
    eq rx935_pos, -1, rx935_fail2134
    gt rx935_pos, rx935_eos, rx935_fail2134
    repr_bind_attr_int rx935_cur, rx935_curclass, "$!from", rx935_pos
  rxscan936_scan2139:
    nqp_rxmark rx935_bstack, rxscan936_loop2138, rx935_pos, 0
  rxscan936_done2140:
    add $I11, rx935_pos, 1
    gt $I11, rx935_eos, rx935_fail2134
    substr $S10, rx935_tgt, rx935_pos, 1
    ne $S10, ucs4:"%", rx935_fail2134
    add rx935_pos, 1
    nqp_rxmark rx935_bstack, rxquantr937_done2142, rx935_pos, 0
  rxquantr937_loop2141:
    repr_bind_attr_int rx935_cur, rx935_curclass, "$!pos", rx935_pos
    $P11 = rx935_cur."idx"()
    repr_get_attr_int $I11, $P11, rx935_curclass, "$!pos"
    lt $I11, 0, rx935_fail2134
    goto rxsubrule938_pass2143
  rxsubrule938_back2144:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx935_curclass, "$!pos"
    lt $I11, 0, rx935_fail2134
  rxsubrule938_pass2143:
    rx935_cstack = rx935_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule938_back2144
    push rx935_bstack, $I11
    push rx935_bstack, 0
    push rx935_bstack, rx935_pos
    elements $I11, rx935_cstack
    push rx935_bstack, $I11
    repr_get_attr_int rx935_pos, $P11, rx935_curclass, "$!pos"
    nqp_rxpeek $I19, rx935_bstack, rxquantr937_done2142
    inc $I19
    inc $I19
    set rx935_rep, rx935_bstack[$I19]
    nqp_rxcommit rx935_bstack, rxquantr937_done2142
    inc rx935_rep
  rxquantr937_done2142:
    nqp_rxmark rx935_bstack, rxquantr939_done2146, rx935_pos, 0
  rxquantr939_loop2145:
    repr_bind_attr_int rx935_cur, rx935_curclass, "$!pos", rx935_pos
    $P11 = rx935_cur."flags"()
    repr_get_attr_int $I11, $P11, rx935_curclass, "$!pos"
    lt $I11, 0, rx935_fail2134
    goto rxsubrule940_pass2147
  rxsubrule940_back2148:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx935_curclass, "$!pos"
    lt $I11, 0, rx935_fail2134
  rxsubrule940_pass2147:
    rx935_cstack = rx935_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule940_back2148
    push rx935_bstack, $I11
    push rx935_bstack, 0
    push rx935_bstack, rx935_pos
    elements $I11, rx935_cstack
    push rx935_bstack, $I11
    repr_get_attr_int rx935_pos, $P11, rx935_curclass, "$!pos"
    nqp_rxpeek $I19, rx935_bstack, rxquantr939_done2146
    inc $I19
    inc $I19
    set rx935_rep, rx935_bstack[$I19]
    nqp_rxcommit rx935_bstack, rxquantr939_done2146
    inc rx935_rep
    nqp_rxmark rx935_bstack, rxquantr939_done2146, rx935_pos, rx935_rep
    goto rxquantr939_loop2145
  rxquantr939_done2146:
    nqp_rxmark rx935_bstack, rxquantr941_done2150, rx935_pos, 0
  rxquantr941_loop2149:
    repr_bind_attr_int rx935_cur, rx935_curclass, "$!pos", rx935_pos
    $P11 = rx935_cur."size"()
    repr_get_attr_int $I11, $P11, rx935_curclass, "$!pos"
    lt $I11, 0, rx935_fail2134
    goto rxsubrule942_pass2151
  rxsubrule942_back2152:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx935_curclass, "$!pos"
    lt $I11, 0, rx935_fail2134
  rxsubrule942_pass2151:
    rx935_cstack = rx935_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule942_back2152
    push rx935_bstack, $I11
    push rx935_bstack, 0
    push rx935_bstack, rx935_pos
    elements $I11, rx935_cstack
    push rx935_bstack, $I11
    repr_get_attr_int rx935_pos, $P11, rx935_curclass, "$!pos"
    nqp_rxpeek $I19, rx935_bstack, rxquantr941_done2150
    inc $I19
    inc $I19
    set rx935_rep, rx935_bstack[$I19]
    nqp_rxcommit rx935_bstack, rxquantr941_done2150
    inc rx935_rep
  rxquantr941_done2150:
    nqp_rxmark rx935_bstack, rxcap943_fail2154, rx935_pos, 0
    add $I11, rx935_pos, 1
    gt $I11, rx935_eos, rx935_fail2134
    substr $S10, rx935_tgt, rx935_pos, 1
    ne $S10, ucs4:"u", rx935_fail2134
    add rx935_pos, 1
    nqp_rxpeek $I19, rx935_bstack, rxcap943_fail2154
    inc $I19
    set $I11, rx935_bstack[$I19]
    repr_bind_attr_int rx935_cur, rx935_curclass, "$!pos", rx935_pos
    $P11 = rx935_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx935_pos)
    rx935_cstack = rx935_cur."!cursor_capture"($P11, "sym")
    goto rxcap943_done2153
  rxcap943_fail2154:
    goto rx935_fail2134
  rxcap943_done2153:
    rx935_cur."!cursor_pass"(rx935_pos, "directive:sym<u>", 'backtrack'=>1)
    .return (rx935_cur)
  rx935_restart2133:
    repr_get_attr_obj rx935_cstack, rx935_cur, rx935_curclass, "$!cstack"
  rx935_fail2134:
    unless rx935_bstack, rx935_done2132
    pop $I19, rx935_bstack
    if_null rx935_cstack, rx935_cstack_done2137
    unless rx935_cstack, rx935_cstack_done2137
    dec $I19
    set $P11, rx935_cstack[$I19]
  rx935_cstack_done2137:
    pop rx935_rep, rx935_bstack
    pop rx935_pos, rx935_bstack
    pop $I19, rx935_bstack
    lt rx935_pos, -1, rx935_done2132
    lt rx935_pos, 0, rx935_fail2134
    eq $I19, 0, rx935_fail2134
    nqp_islist $I20, rx935_cstack
    unless $I20, rx935_jump2135
    elements $I18, rx935_bstack
    le $I18, 0, rx935_cut2136
    dec $I18
    set $I18, rx935_bstack[$I18]
  rx935_cut2136:
    assign rx935_cstack, $I18
  rx935_jump2135:
    jump $I19
  rx935_done2132:
    rx935_cur."!cursor_fail"()
    .return (rx935_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<x>" :subid("cuid_205_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2087
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx944_start
    .local string rx944_tgt
    .local int rx944_pos
    .local int rx944_off
    .local int rx944_eos
    .local int rx944_rep
    .local pmc rx944_cur
    .local pmc rx944_curclass
    .local pmc rx944_bstack
    .local pmc rx944_cstack
    rx944_start = self."!cursor_start_all"()
    set rx944_cur, rx944_start[0]
    set rx944_tgt, rx944_start[1]
    set rx944_pos, rx944_start[2]
    set rx944_curclass, rx944_start[3]
    set rx944_bstack, rx944_start[4]
    set $I19, rx944_start[5]
    store_lex unicode:"$\x{a2}", rx944_cur
    length rx944_eos, rx944_tgt
    eq $I19, 1, rx944_restart2157
    gt rx944_pos, rx944_eos, rx944_fail2158
    repr_get_attr_int $I11, self, rx944_curclass, "$!from"
    ne $I11, -1, rxscan945_done2164
    goto rxscan945_scan2163
  rxscan945_loop2162:
    inc rx944_pos
    index rx944_pos, rx944_tgt, ucs4:"%", rx944_pos
    eq rx944_pos, -1, rx944_fail2158
    gt rx944_pos, rx944_eos, rx944_fail2158
    repr_bind_attr_int rx944_cur, rx944_curclass, "$!from", rx944_pos
  rxscan945_scan2163:
    nqp_rxmark rx944_bstack, rxscan945_loop2162, rx944_pos, 0
  rxscan945_done2164:
    add $I11, rx944_pos, 1
    gt $I11, rx944_eos, rx944_fail2158
    substr $S10, rx944_tgt, rx944_pos, 1
    ne $S10, ucs4:"%", rx944_fail2158
    add rx944_pos, 1
    nqp_rxmark rx944_bstack, rxquantr946_done2166, rx944_pos, 0
  rxquantr946_loop2165:
    repr_bind_attr_int rx944_cur, rx944_curclass, "$!pos", rx944_pos
    $P11 = rx944_cur."idx"()
    repr_get_attr_int $I11, $P11, rx944_curclass, "$!pos"
    lt $I11, 0, rx944_fail2158
    goto rxsubrule947_pass2167
  rxsubrule947_back2168:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx944_curclass, "$!pos"
    lt $I11, 0, rx944_fail2158
  rxsubrule947_pass2167:
    rx944_cstack = rx944_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule947_back2168
    push rx944_bstack, $I11
    push rx944_bstack, 0
    push rx944_bstack, rx944_pos
    elements $I11, rx944_cstack
    push rx944_bstack, $I11
    repr_get_attr_int rx944_pos, $P11, rx944_curclass, "$!pos"
    nqp_rxpeek $I19, rx944_bstack, rxquantr946_done2166
    inc $I19
    inc $I19
    set rx944_rep, rx944_bstack[$I19]
    nqp_rxcommit rx944_bstack, rxquantr946_done2166
    inc rx944_rep
  rxquantr946_done2166:
    nqp_rxmark rx944_bstack, rxquantr948_done2170, rx944_pos, 0
  rxquantr948_loop2169:
    repr_bind_attr_int rx944_cur, rx944_curclass, "$!pos", rx944_pos
    $P11 = rx944_cur."flags"()
    repr_get_attr_int $I11, $P11, rx944_curclass, "$!pos"
    lt $I11, 0, rx944_fail2158
    goto rxsubrule949_pass2171
  rxsubrule949_back2172:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx944_curclass, "$!pos"
    lt $I11, 0, rx944_fail2158
  rxsubrule949_pass2171:
    rx944_cstack = rx944_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule949_back2172
    push rx944_bstack, $I11
    push rx944_bstack, 0
    push rx944_bstack, rx944_pos
    elements $I11, rx944_cstack
    push rx944_bstack, $I11
    repr_get_attr_int rx944_pos, $P11, rx944_curclass, "$!pos"
    nqp_rxpeek $I19, rx944_bstack, rxquantr948_done2170
    inc $I19
    inc $I19
    set rx944_rep, rx944_bstack[$I19]
    nqp_rxcommit rx944_bstack, rxquantr948_done2170
    inc rx944_rep
    nqp_rxmark rx944_bstack, rxquantr948_done2170, rx944_pos, rx944_rep
    goto rxquantr948_loop2169
  rxquantr948_done2170:
    nqp_rxmark rx944_bstack, rxquantr950_done2174, rx944_pos, 0
  rxquantr950_loop2173:
    repr_bind_attr_int rx944_cur, rx944_curclass, "$!pos", rx944_pos
    $P11 = rx944_cur."size"()
    repr_get_attr_int $I11, $P11, rx944_curclass, "$!pos"
    lt $I11, 0, rx944_fail2158
    goto rxsubrule951_pass2175
  rxsubrule951_back2176:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx944_curclass, "$!pos"
    lt $I11, 0, rx944_fail2158
  rxsubrule951_pass2175:
    rx944_cstack = rx944_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule951_back2176
    push rx944_bstack, $I11
    push rx944_bstack, 0
    push rx944_bstack, rx944_pos
    elements $I11, rx944_cstack
    push rx944_bstack, $I11
    repr_get_attr_int rx944_pos, $P11, rx944_curclass, "$!pos"
    nqp_rxpeek $I19, rx944_bstack, rxquantr950_done2174
    inc $I19
    inc $I19
    set rx944_rep, rx944_bstack[$I19]
    nqp_rxcommit rx944_bstack, rxquantr950_done2174
    inc rx944_rep
  rxquantr950_done2174:
    nqp_rxmark rx944_bstack, rxquantr952_done2178, rx944_pos, 0
  rxquantr952_loop2177:
    add $I11, rx944_pos, 1
    gt $I11, rx944_eos, rx944_fail2158
    substr $S10, rx944_tgt, rx944_pos, 1
    ne $S10, ucs4:".", rx944_fail2158
    add rx944_pos, 1
    repr_bind_attr_int rx944_cur, rx944_curclass, "$!pos", rx944_pos
    $P11 = rx944_cur."size"()
    repr_get_attr_int $I11, $P11, rx944_curclass, "$!pos"
    lt $I11, 0, rx944_fail2158
    nqp_rxmark rx944_bstack, rxsubrule953_pass2179, -1, 0
  rxsubrule953_pass2179:
    rx944_cstack = rx944_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx944_pos, $P11, rx944_curclass, "$!pos"
    nqp_rxpeek $I19, rx944_bstack, rxquantr952_done2178
    inc $I19
    inc $I19
    set rx944_rep, rx944_bstack[$I19]
    nqp_rxcommit rx944_bstack, rxquantr952_done2178
    inc rx944_rep
  rxquantr952_done2178:
    nqp_rxmark rx944_bstack, rxcap954_fail2181, rx944_pos, 0
    ge rx944_pos, rx944_eos, rx944_fail2158
    substr $S11, rx944_tgt, rx944_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx944_fail2158
    inc rx944_pos
    nqp_rxpeek $I19, rx944_bstack, rxcap954_fail2181
    inc $I19
    set $I11, rx944_bstack[$I19]
    repr_bind_attr_int rx944_cur, rx944_curclass, "$!pos", rx944_pos
    $P11 = rx944_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx944_pos)
    rx944_cstack = rx944_cur."!cursor_capture"($P11, "sym")
    goto rxcap954_done2180
  rxcap954_fail2181:
    goto rx944_fail2158
  rxcap954_done2180:
    rx944_cur."!cursor_pass"(rx944_pos, "directive:sym<x>", 'backtrack'=>1)
    .return (rx944_cur)
  rx944_restart2157:
    repr_get_attr_obj rx944_cstack, rx944_cur, rx944_curclass, "$!cstack"
  rx944_fail2158:
    unless rx944_bstack, rx944_done2156
    pop $I19, rx944_bstack
    if_null rx944_cstack, rx944_cstack_done2161
    unless rx944_cstack, rx944_cstack_done2161
    dec $I19
    set $P11, rx944_cstack[$I19]
  rx944_cstack_done2161:
    pop rx944_rep, rx944_bstack
    pop rx944_pos, rx944_bstack
    pop $I19, rx944_bstack
    lt rx944_pos, -1, rx944_done2156
    lt rx944_pos, 0, rx944_fail2158
    eq $I19, 0, rx944_fail2158
    nqp_islist $I20, rx944_cstack
    unless $I20, rx944_jump2159
    elements $I18, rx944_bstack
    le $I18, 0, rx944_cut2160
    dec $I18
    set $I18, rx944_bstack[$I18]
  rx944_cut2160:
    assign rx944_cstack, $I18
  rx944_jump2159:
    jump $I19
  rx944_done2156:
    rx944_cur."!cursor_fail"()
    .return (rx944_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_206_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2089
    .param pmc self 
    $P5001 = self."!protoregex"("escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_207_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2090
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx955_start
    .local string rx955_tgt
    .local int rx955_pos
    .local int rx955_off
    .local int rx955_eos
    .local int rx955_rep
    .local pmc rx955_cur
    .local pmc rx955_curclass
    .local pmc rx955_bstack
    .local pmc rx955_cstack
    rx955_start = self."!cursor_start_all"()
    set rx955_cur, rx955_start[0]
    set rx955_tgt, rx955_start[1]
    set rx955_pos, rx955_start[2]
    set rx955_curclass, rx955_start[3]
    set rx955_bstack, rx955_start[4]
    set $I19, rx955_start[5]
    store_lex unicode:"$\x{a2}", rx955_cur
    length rx955_eos, rx955_tgt
    eq $I19, 1, rx955_restart2184
    gt rx955_pos, rx955_eos, rx955_fail2185
    repr_get_attr_int $I11, self, rx955_curclass, "$!from"
    ne $I11, -1, rxscan956_done2191
    goto rxscan956_scan2190
  rxscan956_loop2189:
    inc rx955_pos
    index rx955_pos, rx955_tgt, ucs4:"%", rx955_pos
    eq rx955_pos, -1, rx955_fail2185
    gt rx955_pos, rx955_eos, rx955_fail2185
    repr_bind_attr_int rx955_cur, rx955_curclass, "$!from", rx955_pos
  rxscan956_scan2190:
    nqp_rxmark rx955_bstack, rxscan956_loop2189, rx955_pos, 0
  rxscan956_done2191:
    add $I11, rx955_pos, 1
    gt $I11, rx955_eos, rx955_fail2185
    substr $S10, rx955_tgt, rx955_pos, 1
    ne $S10, ucs4:"%", rx955_fail2185
    add rx955_pos, 1
    nqp_rxmark rx955_bstack, rxquantr957_done2193, rx955_pos, 0
  rxquantr957_loop2192:
    repr_bind_attr_int rx955_cur, rx955_curclass, "$!pos", rx955_pos
    $P11 = rx955_cur."flags"()
    repr_get_attr_int $I11, $P11, rx955_curclass, "$!pos"
    lt $I11, 0, rx955_fail2185
    goto rxsubrule958_pass2194
  rxsubrule958_back2195:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx955_curclass, "$!pos"
    lt $I11, 0, rx955_fail2185
  rxsubrule958_pass2194:
    rx955_cstack = rx955_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule958_back2195
    push rx955_bstack, $I11
    push rx955_bstack, 0
    push rx955_bstack, rx955_pos
    elements $I11, rx955_cstack
    push rx955_bstack, $I11
    repr_get_attr_int rx955_pos, $P11, rx955_curclass, "$!pos"
    nqp_rxpeek $I19, rx955_bstack, rxquantr957_done2193
    inc $I19
    inc $I19
    set rx955_rep, rx955_bstack[$I19]
    nqp_rxcommit rx955_bstack, rxquantr957_done2193
    inc rx955_rep
    nqp_rxmark rx955_bstack, rxquantr957_done2193, rx955_pos, rx955_rep
    goto rxquantr957_loop2192
  rxquantr957_done2193:
    nqp_rxmark rx955_bstack, rxquantr959_done2197, rx955_pos, 0
  rxquantr959_loop2196:
    repr_bind_attr_int rx955_cur, rx955_curclass, "$!pos", rx955_pos
    $P11 = rx955_cur."size"()
    repr_get_attr_int $I11, $P11, rx955_curclass, "$!pos"
    lt $I11, 0, rx955_fail2185
    goto rxsubrule960_pass2198
  rxsubrule960_back2199:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx955_curclass, "$!pos"
    lt $I11, 0, rx955_fail2185
  rxsubrule960_pass2198:
    rx955_cstack = rx955_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule960_back2199
    push rx955_bstack, $I11
    push rx955_bstack, 0
    push rx955_bstack, rx955_pos
    elements $I11, rx955_cstack
    push rx955_bstack, $I11
    repr_get_attr_int rx955_pos, $P11, rx955_curclass, "$!pos"
    nqp_rxpeek $I19, rx955_bstack, rxquantr959_done2197
    inc $I19
    inc $I19
    set rx955_rep, rx955_bstack[$I19]
    nqp_rxcommit rx955_bstack, rxquantr959_done2197
    inc rx955_rep
  rxquantr959_done2197:
    nqp_rxmark rx955_bstack, rxcap961_fail2201, rx955_pos, 0
    add $I11, rx955_pos, 1
    gt $I11, rx955_eos, rx955_fail2185
    substr $S10, rx955_tgt, rx955_pos, 1
    ne $S10, ucs4:"%", rx955_fail2185
    add rx955_pos, 1
    nqp_rxpeek $I19, rx955_bstack, rxcap961_fail2201
    inc $I19
    set $I11, rx955_bstack[$I19]
    repr_bind_attr_int rx955_cur, rx955_curclass, "$!pos", rx955_pos
    $P11 = rx955_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx955_pos)
    rx955_cstack = rx955_cur."!cursor_capture"($P11, "sym")
    goto rxcap961_done2200
  rxcap961_fail2201:
    goto rx955_fail2185
  rxcap961_done2200:
    rx955_cur."!cursor_pass"(rx955_pos, "escape:sym<%>", 'backtrack'=>1)
    .return (rx955_cur)
  rx955_restart2184:
    repr_get_attr_obj rx955_cstack, rx955_cur, rx955_curclass, "$!cstack"
  rx955_fail2185:
    unless rx955_bstack, rx955_done2183
    pop $I19, rx955_bstack
    if_null rx955_cstack, rx955_cstack_done2188
    unless rx955_cstack, rx955_cstack_done2188
    dec $I19
    set $P11, rx955_cstack[$I19]
  rx955_cstack_done2188:
    pop rx955_rep, rx955_bstack
    pop rx955_pos, rx955_bstack
    pop $I19, rx955_bstack
    lt rx955_pos, -1, rx955_done2183
    lt rx955_pos, 0, rx955_fail2185
    eq $I19, 0, rx955_fail2185
    nqp_islist $I20, rx955_cstack
    unless $I20, rx955_jump2186
    elements $I18, rx955_bstack
    le $I18, 0, rx955_cut2187
    dec $I18
    set $I18, rx955_bstack[$I18]
  rx955_cut2187:
    assign rx955_cstack, $I18
  rx955_jump2186:
    jump $I19
  rx955_done2183:
    rx955_cur."!cursor_fail"()
    .return (rx955_cur) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_208_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2092
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx962_start
    .local string rx962_tgt
    .local int rx962_pos
    .local int rx962_off
    .local int rx962_eos
    .local int rx962_rep
    .local pmc rx962_cur
    .local pmc rx962_curclass
    .local pmc rx962_bstack
    .local pmc rx962_cstack
    rx962_start = self."!cursor_start_all"()
    set rx962_cur, rx962_start[0]
    set rx962_tgt, rx962_start[1]
    set rx962_pos, rx962_start[2]
    set rx962_curclass, rx962_start[3]
    set rx962_bstack, rx962_start[4]
    set $I19, rx962_start[5]
    store_lex unicode:"$\x{a2}", rx962_cur
    length rx962_eos, rx962_tgt
    eq $I19, 1, rx962_restart2204
    gt rx962_pos, rx962_eos, rx962_fail2205
    repr_get_attr_int $I11, self, rx962_curclass, "$!from"
    ne $I11, -1, rxscan963_done2211
    goto rxscan963_scan2210
  rxscan963_loop2209:
    inc rx962_pos
    gt rx962_pos, rx962_eos, rx962_fail2205
    repr_bind_attr_int rx962_cur, rx962_curclass, "$!from", rx962_pos
  rxscan963_scan2210:
    nqp_rxmark rx962_bstack, rxscan963_loop2209, rx962_pos, 0
  rxscan963_done2211:
    nqp_rxmark rx962_bstack, rxquantr964_done2213, -1, 0
  rxquantr964_loop2212:
    ge rx962_pos, rx962_eos, rx962_fail2205
    substr $S11, rx962_tgt, rx962_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx962_fail2205
    inc rx962_pos
    nqp_rxpeek $I19, rx962_bstack, rxquantr964_done2213
    inc $I19
    inc $I19
    set rx962_rep, rx962_bstack[$I19]
    nqp_rxcommit rx962_bstack, rxquantr964_done2213
    inc rx962_rep
    nqp_rxmark rx962_bstack, rxquantr964_done2213, rx962_pos, rx962_rep
    goto rxquantr964_loop2212
  rxquantr964_done2213:
    rx962_cur."!cursor_pass"(rx962_pos, "literal", 'backtrack'=>1)
    .return (rx962_cur)
  rx962_restart2204:
    repr_get_attr_obj rx962_cstack, rx962_cur, rx962_curclass, "$!cstack"
  rx962_fail2205:
    unless rx962_bstack, rx962_done2203
    pop $I19, rx962_bstack
    if_null rx962_cstack, rx962_cstack_done2208
    unless rx962_cstack, rx962_cstack_done2208
    dec $I19
    set $P11, rx962_cstack[$I19]
  rx962_cstack_done2208:
    pop rx962_rep, rx962_bstack
    pop rx962_pos, rx962_bstack
    pop $I19, rx962_bstack
    lt rx962_pos, -1, rx962_done2203
    lt rx962_pos, 0, rx962_fail2205
    eq $I19, 0, rx962_fail2205
    nqp_islist $I20, rx962_cstack
    unless $I20, rx962_jump2206
    elements $I18, rx962_bstack
    le $I18, 0, rx962_cut2207
    dec $I18
    set $I18, rx962_bstack[$I18]
  rx962_cut2207:
    assign rx962_cstack, $I18
  rx962_jump2206:
    jump $I19
  rx962_done2203:
    rx962_cur."!cursor_fail"()
    .return (rx962_cur) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_209_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2094
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx965_start
    .local string rx965_tgt
    .local int rx965_pos
    .local int rx965_off
    .local int rx965_eos
    .local int rx965_rep
    .local pmc rx965_cur
    .local pmc rx965_curclass
    .local pmc rx965_bstack
    .local pmc rx965_cstack
    rx965_start = self."!cursor_start_all"()
    set rx965_cur, rx965_start[0]
    set rx965_tgt, rx965_start[1]
    set rx965_pos, rx965_start[2]
    set rx965_curclass, rx965_start[3]
    set rx965_bstack, rx965_start[4]
    set $I19, rx965_start[5]
    store_lex unicode:"$\x{a2}", rx965_cur
    length rx965_eos, rx965_tgt
    eq $I19, 1, rx965_restart2216
    gt rx965_pos, rx965_eos, rx965_fail2217
    repr_get_attr_int $I11, self, rx965_curclass, "$!from"
    ne $I11, -1, rxscan966_done2223
    goto rxscan966_scan2222
  rxscan966_loop2221:
    inc rx965_pos
    gt rx965_pos, rx965_eos, rx965_fail2217
    repr_bind_attr_int rx965_cur, rx965_curclass, "$!from", rx965_pos
  rxscan966_scan2222:
    nqp_rxmark rx965_bstack, rxscan966_loop2221, rx965_pos, 0
  rxscan966_done2223:
    nqp_rxmark rx965_bstack, rxcap967_fail2225, rx965_pos, 0
    nqp_rxmark rx965_bstack, rxquantr968_done2227, -1, 0
  rxquantr968_loop2226:
    ge rx965_pos, rx965_eos, rx965_fail2217
    is_cclass $I11, .CCLASS_NUMERIC, rx965_tgt, rx965_pos
    unless $I11, rx965_fail2217
    add rx965_pos, 1
    nqp_rxpeek $I19, rx965_bstack, rxquantr968_done2227
    inc $I19
    inc $I19
    set rx965_rep, rx965_bstack[$I19]
    nqp_rxcommit rx965_bstack, rxquantr968_done2227
    inc rx965_rep
    nqp_rxmark rx965_bstack, rxquantr968_done2227, rx965_pos, rx965_rep
    goto rxquantr968_loop2226
  rxquantr968_done2227:
    nqp_rxpeek $I19, rx965_bstack, rxcap967_fail2225
    inc $I19
    set $I11, rx965_bstack[$I19]
    repr_bind_attr_int rx965_cur, rx965_curclass, "$!pos", rx965_pos
    $P11 = rx965_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx965_pos)
    rx965_cstack = rx965_cur."!cursor_capture"($P11, "param_index")
    goto rxcap967_done2224
  rxcap967_fail2225:
    goto rx965_fail2217
  rxcap967_done2224:
    add $I11, rx965_pos, 1
    gt $I11, rx965_eos, rx965_fail2217
    substr $S10, rx965_tgt, rx965_pos, 1
    ne $S10, ucs4:"$", rx965_fail2217
    add rx965_pos, 1
    rx965_cur."!cursor_pass"(rx965_pos, "idx", 'backtrack'=>1)
    .return (rx965_cur)
  rx965_restart2216:
    repr_get_attr_obj rx965_cstack, rx965_cur, rx965_curclass, "$!cstack"
  rx965_fail2217:
    unless rx965_bstack, rx965_done2215
    pop $I19, rx965_bstack
    if_null rx965_cstack, rx965_cstack_done2220
    unless rx965_cstack, rx965_cstack_done2220
    dec $I19
    set $P11, rx965_cstack[$I19]
  rx965_cstack_done2220:
    pop rx965_rep, rx965_bstack
    pop rx965_pos, rx965_bstack
    pop $I19, rx965_bstack
    lt rx965_pos, -1, rx965_done2215
    lt rx965_pos, 0, rx965_fail2217
    eq $I19, 0, rx965_fail2217
    nqp_islist $I20, rx965_cstack
    unless $I20, rx965_jump2218
    elements $I18, rx965_bstack
    le $I18, 0, rx965_cut2219
    dec $I18
    set $I18, rx965_bstack[$I18]
  rx965_cut2219:
    assign rx965_cstack, $I18
  rx965_jump2218:
    jump $I19
  rx965_done2215:
    rx965_cur."!cursor_fail"()
    .return (rx965_cur) 
.end
.HLL "nqp"
.namespace []
.sub "flags" :subid("cuid_210_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2098
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx969_start
    .local string rx969_tgt
    .local int rx969_pos
    .local int rx969_off
    .local int rx969_eos
    .local int rx969_rep
    .local pmc rx969_cur
    .local pmc rx969_curclass
    .local pmc rx969_bstack
    .local pmc rx969_cstack
    rx969_start = self."!cursor_start_all"()
    set rx969_cur, rx969_start[0]
    set rx969_tgt, rx969_start[1]
    set rx969_pos, rx969_start[2]
    set rx969_curclass, rx969_start[3]
    set rx969_bstack, rx969_start[4]
    set $I19, rx969_start[5]
    store_lex unicode:"$\x{a2}", rx969_cur
    length rx969_eos, rx969_tgt
    eq $I19, 1, rx969_restart2230
    gt rx969_pos, rx969_eos, rx969_fail2231
    repr_get_attr_int $I11, self, rx969_curclass, "$!from"
    ne $I11, -1, rxscan970_done2237
    goto rxscan970_scan2236
  rxscan970_loop2235:
    inc rx969_pos
    gt rx969_pos, rx969_eos, rx969_fail2231
    repr_bind_attr_int rx969_cur, rx969_curclass, "$!from", rx969_pos
  rxscan970_scan2236:
    nqp_rxmark rx969_bstack, rxscan970_loop2235, rx969_pos, 0
  rxscan970_done2237:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt971_02239
    nqp_push_label $P11, alt971_12242
    nqp_push_label $P11, alt971_22245
    nqp_push_label $P11, alt971_32248
    nqp_push_label $P11, alt971_42251
    nqp_rxmark rx969_bstack, alt971_end2238, -1, 0
    rx969_cur."!alt"(rx969_pos, "alt_nfa__12_1382292152.39055", $P11)
    goto rx969_fail2231
  alt971_02239:
    nqp_rxmark rx969_bstack, rxcap972_fail2241, rx969_pos, 0
    add $I11, rx969_pos, 1
    gt $I11, rx969_eos, rx969_fail2231
    substr $S10, rx969_tgt, rx969_pos, 1
    ne $S10, ucs4:" ", rx969_fail2231
    add rx969_pos, 1
    nqp_rxpeek $I19, rx969_bstack, rxcap972_fail2241
    inc $I19
    set $I11, rx969_bstack[$I19]
    repr_bind_attr_int rx969_cur, rx969_curclass, "$!pos", rx969_pos
    $P11 = rx969_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx969_pos)
    rx969_cstack = rx969_cur."!cursor_capture"($P11, "space")
    goto rxcap972_done2240
  rxcap972_fail2241:
    goto rx969_fail2231
  rxcap972_done2240:
    goto alt971_end2238
  alt971_12242:
    nqp_rxmark rx969_bstack, rxcap973_fail2244, rx969_pos, 0
    add $I11, rx969_pos, 1
    gt $I11, rx969_eos, rx969_fail2231
    substr $S10, rx969_tgt, rx969_pos, 1
    ne $S10, ucs4:"+", rx969_fail2231
    add rx969_pos, 1
    nqp_rxpeek $I19, rx969_bstack, rxcap973_fail2244
    inc $I19
    set $I11, rx969_bstack[$I19]
    repr_bind_attr_int rx969_cur, rx969_curclass, "$!pos", rx969_pos
    $P11 = rx969_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx969_pos)
    rx969_cstack = rx969_cur."!cursor_capture"($P11, "plus")
    goto rxcap973_done2243
  rxcap973_fail2244:
    goto rx969_fail2231
  rxcap973_done2243:
    goto alt971_end2238
  alt971_22245:
    nqp_rxmark rx969_bstack, rxcap974_fail2247, rx969_pos, 0
    add $I11, rx969_pos, 1
    gt $I11, rx969_eos, rx969_fail2231
    substr $S10, rx969_tgt, rx969_pos, 1
    ne $S10, ucs4:"-", rx969_fail2231
    add rx969_pos, 1
    nqp_rxpeek $I19, rx969_bstack, rxcap974_fail2247
    inc $I19
    set $I11, rx969_bstack[$I19]
    repr_bind_attr_int rx969_cur, rx969_curclass, "$!pos", rx969_pos
    $P11 = rx969_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx969_pos)
    rx969_cstack = rx969_cur."!cursor_capture"($P11, "minus")
    goto rxcap974_done2246
  rxcap974_fail2247:
    goto rx969_fail2231
  rxcap974_done2246:
    goto alt971_end2238
  alt971_32248:
    nqp_rxmark rx969_bstack, rxcap975_fail2250, rx969_pos, 0
    add $I11, rx969_pos, 1
    gt $I11, rx969_eos, rx969_fail2231
    substr $S10, rx969_tgt, rx969_pos, 1
    ne $S10, ucs4:"0", rx969_fail2231
    add rx969_pos, 1
    nqp_rxpeek $I19, rx969_bstack, rxcap975_fail2250
    inc $I19
    set $I11, rx969_bstack[$I19]
    repr_bind_attr_int rx969_cur, rx969_curclass, "$!pos", rx969_pos
    $P11 = rx969_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx969_pos)
    rx969_cstack = rx969_cur."!cursor_capture"($P11, "zero")
    goto rxcap975_done2249
  rxcap975_fail2250:
    goto rx969_fail2231
  rxcap975_done2249:
    goto alt971_end2238
  alt971_42251:
    nqp_rxmark rx969_bstack, rxcap976_fail2253, rx969_pos, 0
    add $I11, rx969_pos, 1
    gt $I11, rx969_eos, rx969_fail2231
    substr $S10, rx969_tgt, rx969_pos, 1
    ne $S10, ucs4:"#", rx969_fail2231
    add rx969_pos, 1
    nqp_rxpeek $I19, rx969_bstack, rxcap976_fail2253
    inc $I19
    set $I11, rx969_bstack[$I19]
    repr_bind_attr_int rx969_cur, rx969_curclass, "$!pos", rx969_pos
    $P11 = rx969_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx969_pos)
    rx969_cstack = rx969_cur."!cursor_capture"($P11, "hash")
    goto rxcap976_done2252
  rxcap976_fail2253:
    goto rx969_fail2231
  rxcap976_done2252:
    goto alt971_end2238
  alt971_end2238:
    rx969_cur."!cursor_pass"(rx969_pos, "flags", 'backtrack'=>1)
    .return (rx969_cur)
  rx969_restart2230:
    repr_get_attr_obj rx969_cstack, rx969_cur, rx969_curclass, "$!cstack"
  rx969_fail2231:
    unless rx969_bstack, rx969_done2229
    pop $I19, rx969_bstack
    if_null rx969_cstack, rx969_cstack_done2234
    unless rx969_cstack, rx969_cstack_done2234
    dec $I19
    set $P11, rx969_cstack[$I19]
  rx969_cstack_done2234:
    pop rx969_rep, rx969_bstack
    pop rx969_pos, rx969_bstack
    pop $I19, rx969_bstack
    lt rx969_pos, -1, rx969_done2229
    lt rx969_pos, 0, rx969_fail2231
    eq $I19, 0, rx969_fail2231
    nqp_islist $I20, rx969_cstack
    unless $I20, rx969_jump2232
    elements $I18, rx969_bstack
    le $I18, 0, rx969_cut2233
    dec $I18
    set $I18, rx969_bstack[$I18]
  rx969_cut2233:
    assign rx969_cstack, $I18
  rx969_jump2232:
    jump $I19
  rx969_done2229:
    rx969_cur."!cursor_fail"()
    .return (rx969_cur) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_211_1382292146.58822") :anon :lex :outer("cuid_306_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2106
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx977_start
    .local string rx977_tgt
    .local int rx977_pos
    .local int rx977_off
    .local int rx977_eos
    .local int rx977_rep
    .local pmc rx977_cur
    .local pmc rx977_curclass
    .local pmc rx977_bstack
    .local pmc rx977_cstack
    rx977_start = self."!cursor_start_all"()
    set rx977_cur, rx977_start[0]
    set rx977_tgt, rx977_start[1]
    set rx977_pos, rx977_start[2]
    set rx977_curclass, rx977_start[3]
    set rx977_bstack, rx977_start[4]
    set $I19, rx977_start[5]
    store_lex unicode:"$\x{a2}", rx977_cur
    length rx977_eos, rx977_tgt
    eq $I19, 1, rx977_restart2256
    gt rx977_pos, rx977_eos, rx977_fail2257
    repr_get_attr_int $I11, self, rx977_curclass, "$!from"
    ne $I11, -1, rxscan978_done2263
    goto rxscan978_scan2262
  rxscan978_loop2261:
    inc rx977_pos
    gt rx977_pos, rx977_eos, rx977_fail2257
    repr_bind_attr_int rx977_cur, rx977_curclass, "$!from", rx977_pos
  rxscan978_scan2262:
    nqp_rxmark rx977_bstack, rxscan978_loop2261, rx977_pos, 0
  rxscan978_done2263:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt979_02265
    nqp_push_label $P11, alt979_12268
    nqp_rxmark rx977_bstack, alt979_end2264, -1, 0
    rx977_cur."!alt"(rx977_pos, "alt_nfa__13_1382292152.39787", $P11)
    goto rx977_fail2257
  alt979_02265:
    nqp_rxmark rx977_bstack, rxquantr980_done2267, rx977_pos, 0
  rxquantr980_loop2266:
    ge rx977_pos, rx977_eos, rx977_fail2257
    is_cclass $I11, .CCLASS_NUMERIC, rx977_tgt, rx977_pos
    unless $I11, rx977_fail2257
    add rx977_pos, 1
    nqp_rxpeek $I19, rx977_bstack, rxquantr980_done2267
    inc $I19
    inc $I19
    set rx977_rep, rx977_bstack[$I19]
    nqp_rxcommit rx977_bstack, rxquantr980_done2267
    inc rx977_rep
    nqp_rxmark rx977_bstack, rxquantr980_done2267, rx977_pos, rx977_rep
    goto rxquantr980_loop2266
  rxquantr980_done2267:
    goto alt979_end2264
  alt979_12268:
    nqp_rxmark rx977_bstack, rxcap981_fail2270, rx977_pos, 0
    add $I11, rx977_pos, 1
    gt $I11, rx977_eos, rx977_fail2257
    substr $S10, rx977_tgt, rx977_pos, 1
    ne $S10, ucs4:"*", rx977_fail2257
    add rx977_pos, 1
    nqp_rxpeek $I19, rx977_bstack, rxcap981_fail2270
    inc $I19
    set $I11, rx977_bstack[$I19]
    repr_bind_attr_int rx977_cur, rx977_curclass, "$!pos", rx977_pos
    $P11 = rx977_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx977_pos)
    rx977_cstack = rx977_cur."!cursor_capture"($P11, "star")
    goto rxcap981_done2269
  rxcap981_fail2270:
    goto rx977_fail2257
  rxcap981_done2269:
    goto alt979_end2264
  alt979_end2264:
    rx977_cur."!cursor_pass"(rx977_pos, "size", 'backtrack'=>1)
    .return (rx977_cur)
  rx977_restart2256:
    repr_get_attr_obj rx977_cstack, rx977_cur, rx977_curclass, "$!cstack"
  rx977_fail2257:
    unless rx977_bstack, rx977_done2255
    pop $I19, rx977_bstack
    if_null rx977_cstack, rx977_cstack_done2260
    unless rx977_cstack, rx977_cstack_done2260
    dec $I19
    set $P11, rx977_cstack[$I19]
  rx977_cstack_done2260:
    pop rx977_rep, rx977_bstack
    pop rx977_pos, rx977_bstack
    pop $I19, rx977_bstack
    lt rx977_pos, -1, rx977_done2255
    lt rx977_pos, 0, rx977_fail2257
    eq $I19, 0, rx977_fail2257
    nqp_islist $I20, rx977_cstack
    unless $I20, rx977_jump2258
    elements $I18, rx977_bstack
    le $I18, 0, rx977_cut2259
    dec $I18
    set $I18, rx977_bstack[$I18]
  rx977_cut2259:
    assign rx977_cstack, $I18
  rx977_jump2258:
    jump $I19
  rx977_done2255:
    rx977_cur."!cursor_fail"()
    .return (rx977_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_307_1382292146.58822") :anon :lex :outer("cuid_302_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2111
    .const 'Sub' $P5033 = 'cuid_308_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_309_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_311_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_312_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_315_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_316_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_317_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_318_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_319_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_320_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_322_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_212_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_214_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_215_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_216_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_217_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_218_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_219_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_220_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_221_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_222_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_223_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_224_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_225_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_226_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_227_1382292146.58822' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_228_1382292146.58822' 
    capture_lex $P5033 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$knowhow", $P103 
    .lex "$zero", $P104 
    .lex "&infix_x", $P105 
    .lex "&next_argument", $P106 
    .lex "&intify", $P107 
    .lex "&padding_char", $P108 
    .lex "&has_flag", $P109 
    .lex "&pad-with-sign", $P110 
    .lex "&stringify-to-precision", $P111 
    .lex "&stringify-to-precision2", $P112 
    .lex "&fixed-point", $P113 
    .lex "&scientific", $P114 
    .lex "&shortest", $P115 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_308_1382292146.58822' 
    capture_lex $P5003
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_309_1382292146.58822' 
    capture_lex $P5004
    set $P106, $P5004
    .const 'Sub' $P5005 = 'cuid_311_1382292146.58822' 
    capture_lex $P5005
    set $P107, $P5005
    .const 'Sub' $P5006 = 'cuid_312_1382292146.58822' 
    capture_lex $P5006
    set $P108, $P5006
    .const 'Sub' $P5007 = 'cuid_315_1382292146.58822' 
    capture_lex $P5007
    set $P109, $P5007
    .const 'Sub' $P5008 = 'cuid_316_1382292146.58822' 
    capture_lex $P5008
    set $P110, $P5008
    .const 'Sub' $P5009 = 'cuid_317_1382292146.58822' 
    capture_lex $P5009
    set $P111, $P5009
    .const 'Sub' $P5010 = 'cuid_318_1382292146.58822' 
    capture_lex $P5010
    set $P112, $P5010
    .const 'Sub' $P5011 = 'cuid_319_1382292146.58822' 
    capture_lex $P5011
    set $P113, $P5011
    .const 'Sub' $P5012 = 'cuid_320_1382292146.58822' 
    capture_lex $P5012
    set $P114, $P5012
    .const 'Sub' $P5013 = 'cuid_322_1382292146.58822' 
    capture_lex $P5013
    set $P115, $P5013
.annotate 'line', 2112
    get_knowhow $P5014
    $P5015 = $P5014."new_type"("P6bigint" :named("repr"))
    set $P103, $P5015
    repr_box_int $P5016, 0, $P103
    set $P104, $P5016
    .const 'Sub' $P5017 = 'cuid_212_1382292146.58822' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_214_1382292146.58822' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_215_1382292146.58822' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_216_1382292146.58822' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_217_1382292146.58822' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_218_1382292146.58822' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_219_1382292146.58822' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_220_1382292146.58822' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_221_1382292146.58822' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_222_1382292146.58822' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_223_1382292146.58822' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_224_1382292146.58822' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_225_1382292146.58822' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_226_1382292146.58822' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_227_1382292146.58822' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_228_1382292146.58822' 
    capture_lex $P5032
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "infix_x" :subid("cuid_308_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2130
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@strings", $P101 
    .lex "$i", $P102 
    .lex "$s", _lex_param_0 
    .lex "$n", _lex_param_1 
    .local pmc tmp_10 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    box $P5003, 0
    set $P102, $P5003
    new $P5006, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5006, while982_handlers2274
    push_eh $P5006
  while982_test2271:
    set tmp_10, $P102
    set $N5002, tmp_10
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5004, $N5001
    set $P102, $P5004
    set $N5001, tmp_10
    set $N5002, _lex_param_1
    islt $I5001, $N5001, $N5002
    box $P5007, $I5001
    set $P5005, $P5007
    unless $I5001 goto while982_done2275 
  while982_redo2273:
.annotate 'line', 2133
    $P5004 = $P101."push"(_lex_param_0)
    set $P5005, $P5004
    goto while982_test2271 
  while982_handlers2274:
    .get_results ($P5006)
    pop_upto_eh $P5006
    getattribute $P5006, $P5006, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, while982_test2271
    eq $P5006, .CONTROL_LOOP_REDO, while982_redo2273
  while982_done2275:
    pop_eh 
    join $S5001, "", $P101
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "next_argument" :subid("cuid_309_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2137
    .param pmc _lex_param_0 
    .lex "$/", _lex_param_0 
    .local pmc fb_tmp_174 
    .local pmc fb_tmp_175 
    .local pmc fb_tmp_176 
    .local pmc pkg_viv_tmp_22 
    .local pmc fb_tmp_177 
    .local pmc fb_tmp_178 
    .local pmc fb_tmp_179 
    .local pmc pkg_viv_tmp_23 
    .local pmc tmp_11 
    .local pmc fb_tmp_180 
    unless_null _lex_param_0, fallback2280
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_0, $P5001
  fallback2280:
    set fb_tmp_174, _lex_param_0
    repr_defined $I5001, fb_tmp_174
    unless $I5001 goto if984_else2278 
    set $P5002, fb_tmp_174["idx"]
    set $P5004, $P5002
    goto if984_end2279
  if984_else2278:
    null $P5003
    set $P5004, $P5003
  if984_end2279:
    unless_null $P5004, vivi_9852281
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_9852281:
    unless $P5004 goto if983_else2276 
.annotate 'line', 2138
    box $P5006, 0
    store_lex "$assert_used_args", $P5006
    find_dynamic_lex $P5007, "@*ARGS_HAVE"
    unless_null $P5007, fallback2284
    nqp_get_sc_object $P5009, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_22, $P5008
    set fb_tmp_176, pkg_viv_tmp_22
    repr_defined $I5003, fb_tmp_176
    unless $I5003 goto if987_else2285 
    set $P5010, fb_tmp_176["@ARGS_HAVE"]
    set $P5012, $P5010
    goto if987_end2286
  if987_else2285:
    null $P5011
    set $P5012, $P5011
  if987_end2286:
    unless_null $P5012, vivi_9882287
    new $P5013, 'ResizablePMCArray'
    set pkg_viv_tmp_22["@ARGS_HAVE"], $P5013
    set $P5012, $P5013
  vivi_9882287:
    unless_null $P5012, vivi_9892288
    die "Contextual @*ARGS_HAVE not found"
    box $P5014, "Contextual @*ARGS_HAVE not found"
    set $P5012, $P5014
  vivi_9892288:
    set $P5007, $P5012
  fallback2284:
    set fb_tmp_175, $P5007
    repr_defined $I5002, fb_tmp_175
    unless $I5002 goto if986_else2282 
.annotate 'line', 2140
    unless_null _lex_param_0, fallback2291
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_0, $P5016
  fallback2291:
    set fb_tmp_177, _lex_param_0
    repr_defined $I5004, fb_tmp_177
    unless $I5004 goto if990_else2289 
    set $P5017, fb_tmp_177["idx"]
    set $P5019, $P5017
    goto if990_end2290
  if990_else2289:
    null $P5018
    set $P5019, $P5018
  if990_end2290:
    unless_null $P5019, vivi_9912292
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_9912292:
    $P5021 = $P5019."ast"()
    set $I5005, $P5021
    set $P5015, fb_tmp_175[$I5005]
    set $P5023, $P5015
    goto if986_end2283
  if986_else2282:
    null $P5022
    set $P5023, $P5022
  if986_end2283:
    unless_null $P5023, vivi_9922293
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5023, $P5024
  vivi_9922293:
    set $P5037, $P5023
    goto if983_end2277
  if983_else2276:
.annotate 'line', 2142
    find_dynamic_lex $P5025, "@*ARGS_HAVE"
    unless_null $P5025, fallback2296
    nqp_get_sc_object $P5027, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5026, $P5027
    set pkg_viv_tmp_23, $P5026
    set fb_tmp_179, pkg_viv_tmp_23
    repr_defined $I5007, fb_tmp_179
    unless $I5007 goto if994_else2297 
    set $P5028, fb_tmp_179["@ARGS_HAVE"]
    set $P5030, $P5028
    goto if994_end2298
  if994_else2297:
    null $P5029
    set $P5030, $P5029
  if994_end2298:
    unless_null $P5030, vivi_9952299
    new $P5031, 'ResizablePMCArray'
    set pkg_viv_tmp_23["@ARGS_HAVE"], $P5031
    set $P5030, $P5031
  vivi_9952299:
    unless_null $P5030, vivi_9962300
    die "Contextual @*ARGS_HAVE not found"
    box $P5032, "Contextual @*ARGS_HAVE not found"
    set $P5030, $P5032
  vivi_9962300:
    set $P5025, $P5030
  fallback2296:
    set fb_tmp_178, $P5025
    repr_defined $I5006, fb_tmp_178
    unless $I5006 goto if993_else2294 
    find_dynamic_lex $P5034, "$*ARGS_USED"
    unless_null $P5034, fallback2301
    nqp_get_sc_object $P5036, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5035, $P5036
    set fb_tmp_180, $P5035
    repr_defined $I5008, fb_tmp_180
    unless $I5008 goto if997_else2302 
    set $P5037, fb_tmp_180["$ARGS_USED"]
    set $P5039, $P5037
    goto if997_end2303
  if997_else2302:
    null $P5038
    set $P5039, $P5038
  if997_end2303:
    unless_null $P5039, vivi_9982304
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5039, $P5040
  vivi_9982304:
    unless_null $P5039, vivi_9992305
    die "Contextual $*ARGS_USED not found"
    box $P5041, "Contextual $*ARGS_USED not found"
    set $P5039, $P5041
  vivi_9992305:
    set $P5034, $P5039
  fallback2301:
    set tmp_11, $P5034
    set $N5002, tmp_11
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5042, $N5001
    store_dynamic_lex "$*ARGS_USED", $P5042
    set $I5008, tmp_11
    set $P5033, fb_tmp_178[$I5008]
    set $P5035, $P5033
    goto if993_end2295
  if993_else2294:
    null $P5034
    set $P5035, $P5034
  if993_end2295:
    unless_null $P5035, vivi_10002306
    nqp_get_sc_object $P5036, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5035, $P5036
  vivi_10002306:
    set $P5037, $P5035
  if983_end2277:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "intify" :subid("cuid_311_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2147
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_310_1382292146.58822' 
    capture_lex $P5016 
    .lex "$number_representation", _lex_param_0 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_2307
    .lex "RETURN", $P101
    find_lex $P5004, "@handlers"
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next2311:
    unless $P5003, for_done2313
    shift $P5006, $P5003
  for_redo2312:
    .const 'Sub' $P5005 = 'cuid_310_1382292146.58822' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next2311
  for_done2313:
    nqp_isint $I5001, _lex_param_0
    unless $I5001 goto if1002_else2314 
.annotate 'line', 2154
    set $I5002, _lex_param_0
    find_lex $P5008, "$knowhow"
    repr_box_int $P5007, $I5002, $P5008
    set $P5015, $P5007
    goto if1002_end2315
  if1002_else2314:
.annotate 'line', 2156
    nqp_isnum $I5003, _lex_param_0
    set $I5005, $I5003
    if $I5003 goto unless1004_end2319 
    nqp_isstr $I5004, _lex_param_0
    set $I5005, $I5004
  unless1004_end2319:
    unless $I5005 goto if1003_else2316 
.annotate 'line', 2158
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    unless $I5006 goto if1005_else2320 
.annotate 'line', 2159
    set $N5004, _lex_param_0
    floor $N5003, $N5004
    find_lex $P5010, "$knowhow"
    nqp_bigint_from_num $P5009, $N5003, $P5010
    set $P5013, $P5009
    goto if1005_end2321
  if1005_else2320:
.annotate 'line', 2162
    set $N5006, _lex_param_0
    ceil $N5005, $N5006
    find_lex $P5012, "$knowhow"
    nqp_bigint_from_num $P5011, $N5005, $P5012
    set $P5013, $P5011
  if1005_end2321:
    set $P5014, $P5013
    goto if1003_end2317
  if1003_else2316:
.annotate 'line', 2165

    set $P5014, _lex_param_0
  if1003_end2317:
    set $P5015, $P5014
  if1002_end2315:
    goto lexotic_2308
  lexotic_2307:
    .get_results ($P5015)
  lexotic_2308:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_310_1382292146.58822") :anon :lex :outer("cuid_311_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2148
    .param pmc _lex_param_0 
    .lex "$handler", _lex_param_0 
.annotate 'line', 2149
    find_lex $P5001, "$number_representation"
    $P5002 = _lex_param_0."mine"($P5001)
    set $P5006, $P5002
    unless $P5002 goto if1001_end2310 
.annotate 'line', 2150
    find_lex $P5003, "$number_representation"
    $P5004 = _lex_param_0."int"($P5003)
    $P5005 = "RETURN"($P5004)
    set $P5006, $P5005
  if1001_end2310:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "padding_char" :subid("cuid_312_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2171
    .param pmc _lex_param_0 
    .const 'Sub' $P5036 = 'cuid_213_1382292146.58822' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_313_1382292146.58822' 
    capture_lex $P5036 
    .lex "$padding_char", $P101 
    .lex "$st", _lex_param_0 
    .local pmc fb_tmp_181 
    .local pmc fb_tmp_182 
    .local pmc fb_tmp_183 
    .local pmc fb_tmp_184 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    box $P5002, " "
    set $P101, $P5002
    set fb_tmp_181, _lex_param_0
    repr_defined $I5002, fb_tmp_181
    unless $I5002 goto if1009_else2328 
    set $P5003, fb_tmp_181["precision"]
    set $P5005, $P5003
    goto if1009_end2329
  if1009_else2328:
    null $P5004
    set $P5005, $P5004
  if1009_end2329:
    unless_null $P5005, vivi_10102330
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_10102330:
    isfalse $I5001, $P5005
    set $I5004, $I5001
    unless $I5001 goto if1008_end2327 
.annotate 'line', 2173
    $P5007 = "&has_flag"(_lex_param_0, "minus")
    isfalse $I5003, $P5007
    set $I5004, $I5003
  if1008_end2327:
    box $P5025, $I5004
    set $P5024, $P5025
    if $I5004 goto unless1007_end2325 
.annotate 'line', 2174
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_182, $P5008
    repr_defined $I5005, fb_tmp_182
    unless $I5005 goto if1011_else2331 
    set $P5010, fb_tmp_182["NQPRegex"]
    set $P5012, $P5010
    goto if1011_end2332
  if1011_else2331:
    null $P5011
    set $P5012, $P5011
  if1011_end2332:
    unless_null $P5012, vivi_10132334
    nqp_get_sc_object $P5015, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5014, $P5015
    set $P5013, $P5014["NQPRegex"]
    unless_null $P5013, vivi_10122333
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5013, $P5016
  vivi_10122333:
    set $P5012, $P5013
  vivi_10132334:
    .const 'Sub' $P5017 = 'cuid_213_1382292146.58822' 
    capture_lex $P5017
    $P5018 = $P5012."new"($P5017)
    set fb_tmp_183, _lex_param_0
    repr_defined $I5006, fb_tmp_183
    unless $I5006 goto if1016_else2345 
    set $P5019, fb_tmp_183["sym"]
    set $P5021, $P5019
    goto if1016_end2346
  if1016_else2345:
    null $P5020
    set $P5021, $P5020
  if1016_end2346:
    unless_null $P5021, vivi_10172347
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5021, $P5022
  vivi_10172347:
    $P5023 = $P5018."ACCEPTS"($P5021)
    set $P5024, $P5023
  unless1007_end2325:
    unless $P5024 goto if1006_end2323 
    set fb_tmp_184, _lex_param_0
    repr_defined $I5007, fb_tmp_184
    unless $I5007 goto if1018_else2348 
    set $P5029, fb_tmp_184["flags"]
    set $P5031, $P5029
    goto if1018_end2349
  if1018_else2348:
    null $P5030
    set $P5031, $P5030
  if1018_end2349:
    unless_null $P5031, vivi_10192350
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5031, $P5032
  vivi_10192350:
    set $P5026, $P5031
    iter $P5028, $P5031
    new $P5034, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5034, for_handlers2356
    push_eh $P5034
  for_next2357:
    unless $P5028, for_done2359
    shift $P5035, $P5028
  for_redo2358:
    .const 'Sub' $P5033 = 'cuid_313_1382292146.58822' 
    capture_lex $P5033
    $P5026 = $P5033($P5035)
    goto for_next2357
  for_handlers2356:
    .get_results ($P5034)
    pop_upto_eh $P5034
    getattribute $P5034, $P5034, 'type'
    eq $P5034, .CONTROL_LOOP_NEXT, for_next2357
    eq $P5034, .CONTROL_LOOP_REDO, for_redo2358
  for_done2359:
    pop_eh 
  if1006_end2323:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1382292146.58822") :anon :lex :outer("cuid_312_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2174
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx1014_start
    .local string rx1014_tgt
    .local int rx1014_pos
    .local int rx1014_off
    .local int rx1014_eos
    .local int rx1014_rep
    .local pmc rx1014_cur
    .local pmc rx1014_curclass
    .local pmc rx1014_bstack
    .local pmc rx1014_cstack
    rx1014_start = self."!cursor_start_all"()
    set rx1014_cur, rx1014_start[0]
    set rx1014_tgt, rx1014_start[1]
    set rx1014_pos, rx1014_start[2]
    set rx1014_curclass, rx1014_start[3]
    set rx1014_bstack, rx1014_start[4]
    set $I19, rx1014_start[5]
    store_lex unicode:"$\x{a2}", rx1014_cur
    length rx1014_eos, rx1014_tgt
    eq $I19, 1, rx1014_restart2337
    gt rx1014_pos, rx1014_eos, rx1014_fail2338
    repr_get_attr_int $I11, self, rx1014_curclass, "$!from"
    ne $I11, -1, rxscan1015_done2344
    goto rxscan1015_scan2343
  rxscan1015_loop2342:
    inc rx1014_pos
    gt rx1014_pos, rx1014_eos, rx1014_fail2338
    repr_bind_attr_int rx1014_cur, rx1014_curclass, "$!from", rx1014_pos
  rxscan1015_scan2343:
    nqp_rxmark rx1014_bstack, rxscan1015_loop2342, rx1014_pos, 0
  rxscan1015_done2344:
    ge rx1014_pos, rx1014_eos, rx1014_fail2338
    substr $S11, rx1014_tgt, rx1014_pos, 1
    index $I11, ucs4:"eEfFgG", $S11
    lt $I11, 0, rx1014_fail2338
    inc rx1014_pos
    rx1014_cur."!cursor_pass"(rx1014_pos, 'backtrack'=>1)
    .return (rx1014_cur)
  rx1014_restart2337:
    repr_get_attr_obj rx1014_cstack, rx1014_cur, rx1014_curclass, "$!cstack"
  rx1014_fail2338:
    unless rx1014_bstack, rx1014_done2336
    pop $I19, rx1014_bstack
    if_null rx1014_cstack, rx1014_cstack_done2341
    unless rx1014_cstack, rx1014_cstack_done2341
    dec $I19
    set $P11, rx1014_cstack[$I19]
  rx1014_cstack_done2341:
    pop rx1014_rep, rx1014_bstack
    pop rx1014_pos, rx1014_bstack
    pop $I19, rx1014_bstack
    lt rx1014_pos, -1, rx1014_done2336
    lt rx1014_pos, 0, rx1014_fail2338
    eq $I19, 0, rx1014_fail2338
    nqp_islist $I20, rx1014_cstack
    unless $I20, rx1014_jump2339
    elements $I18, rx1014_bstack
    le $I18, 0, rx1014_cut2340
    dec $I18
    set $I18, rx1014_bstack[$I18]
  rx1014_cut2340:
    assign rx1014_cstack, $I18
  rx1014_jump2339:
    jump $I19
  rx1014_done2336:
    rx1014_cur."!cursor_fail"()
    .return (rx1014_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_313_1382292146.58822") :anon :lex :outer("cuid_312_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_185 
    set fb_tmp_185, _lex_param_0
    repr_defined $I5001, fb_tmp_185
    unless $I5001 goto if1021_else2353 
    set $P5001, fb_tmp_185["zero"]
    set $P5003, $P5001
    goto if1021_end2354
  if1021_else2353:
    null $P5002
    set $P5003, $P5002
  if1021_end2354:
    unless_null $P5003, vivi_10222355
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5003, $P5004
  vivi_10222355:
    set $P5006, $P5003
    unless $P5003 goto if1020_end2352 
    box $P5005, "0"
    store_lex "$padding_char", $P5005
    set $P5006, $P5005
  if1020_end2352:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "has_flag" :subid("cuid_315_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2180
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_314_1382292146.58822' 
    capture_lex $P5017 
    .lex "$ok", $P101 
    .lex "$st", _lex_param_0 
    .lex "$key", _lex_param_1 
    .local pmc fb_tmp_186 
    .local pmc fb_tmp_187 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    set fb_tmp_186, _lex_param_0
    repr_defined $I5001, fb_tmp_186
    unless $I5001 goto if1024_else2362 
    set $P5003, fb_tmp_186["flags"]
    set $P5005, $P5003
    goto if1024_end2363
  if1024_else2362:
    null $P5004
    set $P5005, $P5004
  if1024_end2363:
    unless_null $P5005, vivi_10252364
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_10252364:
    unless $P5005 goto if1023_end2361 
.annotate 'line', 2182
    set fb_tmp_187, _lex_param_0
    repr_defined $I5002, fb_tmp_187
    unless $I5002 goto if1026_else2365 
    set $P5010, fb_tmp_187["flags"]
    set $P5012, $P5010
    goto if1026_end2366
  if1026_else2365:
    null $P5011
    set $P5012, $P5011
  if1026_end2366:
    unless_null $P5012, vivi_10272367
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5013
  vivi_10272367:
    set $P5007, $P5012
    iter $P5009, $P5012
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, for_handlers2373
    push_eh $P5015
  for_next2374:
    unless $P5009, for_done2376
    shift $P5016, $P5009
  for_redo2375:
    .const 'Sub' $P5014 = 'cuid_314_1382292146.58822' 
    capture_lex $P5014
    $P5007 = $P5014($P5016)
    goto for_next2374
  for_handlers2373:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5015, $P5015, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, for_next2374
    eq $P5015, .CONTROL_LOOP_REDO, for_redo2375
  for_done2376:
    pop_eh 
  if1023_end2361:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_314_1382292146.58822") :anon :lex :outer("cuid_315_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_188 
    set fb_tmp_188, _lex_param_0
    repr_defined $I5001, fb_tmp_188
    unless $I5001 goto if1029_else2370 
    find_lex $P5002, "$key"
    set $S5001, $P5002
    set $P5001, fb_tmp_188[$S5001]
    set $P5004, $P5001
    goto if1029_end2371
  if1029_else2370:
    null $P5003
    set $P5004, $P5003
  if1029_end2371:
    unless_null $P5004, vivi_10302372
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_10302372:
    set $P5007, $P5004
    unless $P5004 goto if1028_end2369 
    box $P5006, 1
    store_lex "$ok", $P5006
    set $P5007, $P5006
  if1028_end2369:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "pad-with-sign" :subid("cuid_316_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2235
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$sign", _lex_param_0 
    .lex "$num", _lex_param_1 
    .lex "$size", _lex_param_2 
    .lex "$pad", _lex_param_3 
    set $S5001, _lex_param_3
    isne $I5001, $S5001, " "
    box $P5002, $I5001
    set $P5001, $P5002
    unless $I5001 goto if1032_end2380 
    set $P5001, _lex_param_2
  if1032_end2380:
    unless $P5001 goto if1031_else2377 
.annotate 'line', 2236
    set $S5004, _lex_param_0
.annotate 'line', 2237
    set $N5003, _lex_param_2
    set $S5005, _lex_param_1
    length $I5002, $S5005
    set $N5004, $I5002
    sub $N5002, $N5003, $N5004
    set $N5005, 1
    sub $N5001, $N5002, $N5005
    $P5003 = "&infix_x"(_lex_param_3, $N5001)
    set $S5006, $P5003
    concat $S5003, $S5004, $S5006
    set $S5007, _lex_param_1
    concat $S5002, $S5003, $S5007
    set $S5011, $S5002
    goto if1031_end2378
  if1031_else2377:
.annotate 'line', 2238
    set $S5009, _lex_param_0
    set $S5010, _lex_param_1
    concat $S5008, $S5009, $S5010
    set $S5011, $S5008
  if1031_end2378:
    .return ($S5011) 
.end
.HLL "nqp"
.namespace []
.sub "stringify-to-precision" :subid("cuid_317_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2242
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$lhs", $P101 
    .lex "$rhs", $P102 
    .lex "$int", $P103 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    set $N5002, _lex_param_0
    abs $N5001, $N5002
    box $P5004, $N5001
    set _lex_param_0, $P5004
    set $N5004, _lex_param_0
    floor $N5003, $N5004
    box $P5005, $N5003
    set $P101, $P5005
    set $N5006, _lex_param_0
    set $N5007, $P101
    sub $N5005, $N5006, $N5007
    box $P5006, $N5005
    set $P102, $P5006
    set $N5008, $P101
    find_lex $P5008, "$knowhow"
    nqp_bigint_from_num $P5007, $N5008, $P5008
    set $P103, $P5007
    nqp_bigint_to_str $S5001, $P103
    box $P5009, $S5001
    set $P101, $P5009
    set $N5010, $P102
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5010, $N5009
    set _lex_param_0, $P5010
    set $N5013, _lex_param_0
    set $N5015, 10
    set $N5016, _lex_param_1
    pow $N5014, $N5015, $N5016
    mul $N5012, $N5013, $N5014
    box $P5011, $N5012
    set _lex_param_0, $P5011
    set $N5019, _lex_param_0
    add $N5018, $N5019, 0.5
    floor $N5017, $N5018
    set $S5002, $N5017
    box $P5012, $S5002
    set _lex_param_0, $P5012
    set $N5021, _lex_param_0
    set $N5023, 10
    set $N5024, _lex_param_1
    pow $N5022, $N5023, $N5024
    sub $N5020, $N5021, $N5022
    box $P5013, $N5020
    set _lex_param_0, $P5013
.annotate 'line', 2255
    set $N5026, _lex_param_1
    set $S5004, _lex_param_0
    length $I5001, $S5004
    set $N5027, $I5001
    sub $N5025, $N5026, $N5027
    $P5014 = "&infix_x"("0", $N5025)
    set $S5005, $P5014
    set $S5006, _lex_param_0
    concat $S5003, $S5005, $S5006
    box $P5015, $S5003
    set $P102, $P5015
    set $S5008, $P102
    set $S5009, $P102
    length $I5002, $S5009
    set $N5029, $I5002
    set $N5030, _lex_param_1
    sub $N5028, $N5029, $N5030
    set $I5003, $N5028
    substr $S5007, $S5008, $I5003
    box $P5016, $S5007
    set $P102, $P5016
    set $S5012, $P101
    concat $S5011, $S5012, "."
    set $S5013, $P102
    concat $S5010, $S5011, $S5013
    .return ($S5010) 
.end
.HLL "nqp"
.namespace []
.sub "stringify-to-precision2" :subid("cuid_318_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2260
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exp", $P101 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set $N5001, _lex_param_0
    iseq $I5001, $N5001, 0.0
    unless $I5001 goto if1033_else2381 
    box $P5003, 0
    set $P5002, $P5003
    goto if1033_end2382
  if1033_else2381:
    set $N5005, _lex_param_0
    ln $N5004, $N5005
    set $N5007, 10
    ln $N5006, $N5007
    div $N5003, $N5004, $N5006
    floor $N5002, $N5003
    box $P5004, $N5002
    set $P5002, $P5004
  if1033_end2382:
    set $P101, $P5002
    set $N5011, _lex_param_0
    abs $N5010, $N5011
    set $N5013, 10
    set $N5015, _lex_param_1
    set $N5017, $P101
    set $N5018, 1
    add $N5016, $N5017, $N5018
    sub $N5014, $N5015, $N5016
    pow $N5012, $N5013, $N5014
    mul $N5009, $N5010, $N5012
    add $N5008, $N5009, 0.5
    box $P5005, $N5008
    set _lex_param_0, $P5005
    set $N5020, _lex_param_0
    floor $N5019, $N5020
    box $P5006, $N5019
    set _lex_param_0, $P5006
    set $N5022, _lex_param_0
    set $N5024, 10
    set $N5026, _lex_param_1
    set $N5028, $P101
    set $N5029, 1
    add $N5027, $N5028, $N5029
    sub $N5025, $N5026, $N5027
    pow $N5023, $N5024, $N5025
    div $N5021, $N5022, $N5023
    box $P5007, $N5021
    set _lex_param_0, $P5007
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "fixed-point" :subid("cuid_319_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2266
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$sign", $P101 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    .lex "$size", _lex_param_2 
    .lex "$pad", _lex_param_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1034_else2383 
    set $S5001, "-"
    goto if1034_end2384
  if1034_else2383:
    set $S5001, ""
  if1034_end2384:
    box $P5002, $S5001
    set $P101, $P5002
.annotate 'line', 2268
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    $P5003 = "&stringify-to-precision"($N5003, _lex_param_1)
    set _lex_param_0, $P5003
.annotate 'line', 2269
    $P5004 = "&pad-with-sign"($P101, _lex_param_0, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "scientific" :subid("cuid_320_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2271
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "$sign", $P101 
    .lex "$exp", $P102 
    .lex "$float", _lex_param_0 
    .lex "$e", _lex_param_1 
    .lex "$precision", _lex_param_2 
    .lex "$size", _lex_param_3 
    .lex "$pad", _lex_param_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1035_else2385 
    set $S5001, "-"
    goto if1035_end2386
  if1035_else2385:
    set $S5001, ""
  if1035_end2386:
    box $P5003, $S5001
    set $P101, $P5003
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    box $P5004, $N5003
    set _lex_param_0, $P5004
    set $N5005, _lex_param_0
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1036_else2387 
    box $P5006, 0
    set $P5005, $P5006
    goto if1036_end2388
  if1036_else2387:
    set $N5009, _lex_param_0
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1036_end2388:
    set $P102, $P5005
    set $N5013, _lex_param_0
    set $N5015, 10
    set $N5016, $P102
    pow $N5014, $N5015, $N5016
    div $N5012, $N5013, $N5014
    box $P5008, $N5012
    set _lex_param_0, $P5008
.annotate 'line', 2276
    $P5009 = "&stringify-to-precision"(_lex_param_0, _lex_param_2)
    set _lex_param_0, $P5009
    set $N5017, $P102
    set $N5018, 0
    islt $I5003, $N5017, $N5018
    unless $I5003 goto if1037_else2389 
.annotate 'line', 2277
    set $N5020, $P102
    neg $N5019, $N5020
    box $P5010, $N5019
    set $P102, $P5010
    set $S5006, _lex_param_0
    set $S5007, _lex_param_1
    concat $S5005, $S5006, $S5007
    concat $S5004, $S5005, "-"
    set $N5021, $P102
    set $N5022, 10
    islt $I5004, $N5021, $N5022
    unless $I5004 goto if1038_else2391 
    set $S5008, "0"
    goto if1038_end2392
  if1038_else2391:
    set $S5008, ""
  if1038_end2392:
    concat $S5003, $S5004, $S5008
    set $S5009, $P102
    concat $S5002, $S5003, $S5009
    box $P5011, $S5002
    set _lex_param_0, $P5011
    goto if1037_end2390
  if1037_else2389:
.annotate 'line', 2280
    set $S5014, _lex_param_0
    set $S5015, _lex_param_1
    concat $S5013, $S5014, $S5015
    concat $S5012, $S5013, "+"
    set $N5023, $P102
    set $N5024, 10
    islt $I5005, $N5023, $N5024
    unless $I5005 goto if1039_else2393 
    set $S5016, "0"
    goto if1039_end2394
  if1039_else2393:
    set $S5016, ""
  if1039_end2394:
    concat $S5011, $S5012, $S5016
    set $S5017, $P102
    concat $S5010, $S5011, $S5017
    box $P5012, $S5010
    set _lex_param_0, $P5012
  if1037_end2390:
.annotate 'line', 2283
    $P5013 = "&pad-with-sign"($P101, _lex_param_0, _lex_param_3, _lex_param_4)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "shortest" :subid("cuid_322_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2285
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .const 'Sub' $P5013 = 'cuid_321_1382292146.58822' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_323_1382292146.58822' 
    capture_lex $P5013 
    .lex "$sign", $P101 
    .lex "$exp", $P102 
    .lex "$float", _lex_param_0 
    .lex "$e", _lex_param_1 
    .lex "$precision", _lex_param_2 
    .lex "$size", _lex_param_3 
    .lex "$pad", _lex_param_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1040_else2395 
    set $S5001, "-"
    goto if1040_end2396
  if1040_else2395:
    set $S5001, ""
  if1040_end2396:
    box $P5003, $S5001
    set $P101, $P5003
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    box $P5004, $N5003
    set _lex_param_0, $P5004
    set $N5005, _lex_param_0
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1041_else2397 
    box $P5006, 0
    set $P5005, $P5006
    goto if1041_end2398
  if1041_else2397:
    set $N5009, _lex_param_0
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1041_end2398:
    set $P102, $P5005
    set $N5013, -2
    set $N5014, _lex_param_2
    sub $N5012, $N5013, $N5014
    set $N5015, $P102
    islt $I5003, $N5012, $N5015
    set $I5005, $I5003
    unless $I5003 goto if1043_end2402 
    set $N5016, $P102
    set $N5017, _lex_param_2
    islt $I5004, $N5016, $N5017
    set $I5005, $I5004
  if1043_end2402:
    unless $I5005 goto if1042_else2399 
    .const 'Sub' $P5008 = 'cuid_321_1382292146.58822' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5012, $P5009
    goto if1042_end2400
  if1042_else2399:
    .const 'Sub' $P5010 = 'cuid_323_1382292146.58822' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
  if1042_end2400:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_321_1382292146.58822") :anon :lex :outer("cuid_322_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2291
    .lex "$fixed-precision", $P101 
    .lex "$fixed", $P102 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    find_lex $P5003, "$exp"
    set $N5001, $P5003
    find_lex $P5004, "$precision"
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    unless $I5001 goto if1044_else2403 
    box $P5008, 0
    set $P5007, $P5008
    goto if1044_end2404
  if1044_else2403:
    find_lex $P5005, "$precision"
    set $N5004, $P5005
    find_lex $P5006, "$exp"
    set $N5006, $P5006
    set $N5007, 1
    add $N5005, $N5006, $N5007
    sub $N5003, $N5004, $N5005
    box $P5009, $N5003
    set $P5007, $P5009
  if1044_end2404:
    set $P101, $P5007
.annotate 'line', 2293
    find_lex $P5010, "$float"
    find_lex $P5011, "$precision"
    $P5012 = "&stringify-to-precision2"($P5010, $P5011)
    set $P102, $P5012
.annotate 'line', 2294
    find_lex $P5013, "$sign"
    find_lex $P5014, "$size"
    find_lex $P5015, "$pad"
    $P5016 = "&pad-with-sign"($P5013, $P102, $P5014, $P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_323_1382292146.58822") :anon :lex :outer("cuid_322_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2295
    .lex "$sci", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    find_lex $P5002, "$float"
    set $N5002, $P5002
    set $N5004, 10
    find_lex $P5003, "$exp"
    set $N5005, $P5003
    pow $N5003, $N5004, $N5005
    div $N5001, $N5002, $N5003
    box $P5004, $N5001
    store_lex "$float", $P5004
.annotate 'line', 2297
    find_lex $P5005, "$float"
    find_lex $P5006, "$precision"
    $P5007 = "&stringify-to-precision2"($P5005, $P5006)
    store_lex "$float", $P5007
    find_lex $P5008, "$exp"
    set $N5006, $P5008
    set $N5007, 0
    islt $I5001, $N5006, $N5007
    unless $I5001 goto if1045_else2405 
.annotate 'line', 2299
    find_lex $P5009, "$exp"
    set $N5009, $P5009
    neg $N5008, $N5009
    box $P5010, $N5008
    store_lex "$exp", $P5010
    find_lex $P5011, "$float"
    set $S5005, $P5011
    find_lex $P5012, "$e"
    set $S5006, $P5012
    concat $S5004, $S5005, $S5006
    concat $S5003, $S5004, "-"
    find_lex $P5013, "$exp"
    set $N5010, $P5013
    set $N5011, 10
    islt $I5002, $N5010, $N5011
    unless $I5002 goto if1046_else2407 
    set $S5007, "0"
    goto if1046_end2408
  if1046_else2407:
    set $S5007, ""
  if1046_end2408:
    concat $S5002, $S5003, $S5007
    find_lex $P5014, "$exp"
    set $S5008, $P5014
    concat $S5001, $S5002, $S5008
    box $P5015, $S5001
    set $P101, $P5015
    goto if1045_end2406
  if1045_else2405:
.annotate 'line', 2302
    find_lex $P5016, "$float"
    set $S5013, $P5016
    find_lex $P5017, "$e"
    set $S5014, $P5017
    concat $S5012, $S5013, $S5014
    concat $S5011, $S5012, "+"
    find_lex $P5018, "$exp"
    set $N5012, $P5018
    set $N5013, 10
    islt $I5003, $N5012, $N5013
    unless $I5003 goto if1047_else2409 
    set $S5015, "0"
    goto if1047_end2410
  if1047_else2409:
    set $S5015, ""
  if1047_end2410:
    concat $S5010, $S5011, $S5015
    find_lex $P5019, "$exp"
    set $S5016, $P5019
    concat $S5009, $S5010, $S5016
    box $P5020, $S5009
    set $P101, $P5020
  if1045_end2406:
.annotate 'line', 2306
    find_lex $P5021, "$sign"
    find_lex $P5022, "$size"
    find_lex $P5023, "$pad"
    $P5024 = "&pad-with-sign"($P5021, $P101, $P5022, $P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_212_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2114
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5091 = 'cuid_324_1382292146.58822' 
    capture_lex $P5091 
    .lex "@statements", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_189 
    .local pmc fb_tmp_190 
    .local pmc fb_tmp_191 
    .local pmc pkg_viv_tmp_17 
    .local pmc fb_tmp_192 
    .local pmc fb_tmp_193 
    .local pmc pkg_viv_tmp_18 
    .local pmc fb_tmp_194 
    .local pmc fb_tmp_195 
    .local pmc pkg_viv_tmp_19 
    .local pmc fb_tmp_196 
    .local pmc fb_tmp_197 
    .local pmc pkg_viv_tmp_20 
    .local pmc fb_tmp_198 
    .local pmc pkg_viv_tmp_21 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    unless_null _lex_param_1, fallback2413
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5005
  fallback2413:
    set fb_tmp_189, _lex_param_1
    repr_defined $I5001, fb_tmp_189
    unless $I5001 goto if1048_else2411 
    set $P5006, fb_tmp_189["statement"]
    set $P5008, $P5006
    goto if1048_end2412
  if1048_else2411:
    null $P5007
    set $P5008, $P5007
  if1048_end2412:
    unless_null $P5008, vivi_10492414
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5008, $P5009
  vivi_10492414:
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, for_handlers2415
    push_eh $P5011
  for_next2416:
    unless $P5004, for_done2418
    shift $P5012, $P5004
  for_redo2417:
    .const 'Sub' $P5010 = 'cuid_324_1382292146.58822' 
    capture_lex $P5010
    $P5002 = $P5010($P5012)
    goto for_next2416
  for_handlers2415:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5011, $P5011, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, for_next2416
    eq $P5011, .CONTROL_LOOP_REDO, for_redo2417
  for_done2418:
    pop_eh 
    find_lex $P5013, "$assert_used_args"
    set $P5030, $P5013
    unless $P5013 goto if1051_end2422 
    find_dynamic_lex $P5014, "$*ARGS_USED"
    unless_null $P5014, fallback2423
    nqp_get_sc_object $P5016, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5015, $P5016
    set fb_tmp_190, $P5015
    repr_defined $I5003, fb_tmp_190
    unless $I5003 goto if1052_else2424 
    set $P5017, fb_tmp_190["$ARGS_USED"]
    set $P5019, $P5017
    goto if1052_end2425
  if1052_else2424:
    null $P5018
    set $P5019, $P5018
  if1052_end2425:
    unless_null $P5019, vivi_10532426
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5019, $P5020
  vivi_10532426:
    unless_null $P5019, vivi_10542427
    die "Contextual $*ARGS_USED not found"
    box $P5021, "Contextual $*ARGS_USED not found"
    set $P5019, $P5021
  vivi_10542427:
    set $P5014, $P5019
  fallback2423:
    set $N5001, $P5014
    find_dynamic_lex $P5022, "@*ARGS_HAVE"
    unless_null $P5022, fallback2428
    nqp_get_sc_object $P5024, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5023, $P5024
    set pkg_viv_tmp_17, $P5023
    set fb_tmp_191, pkg_viv_tmp_17
    repr_defined $I5004, fb_tmp_191
    unless $I5004 goto if1055_else2429 
    set $P5025, fb_tmp_191["@ARGS_HAVE"]
    set $P5027, $P5025
    goto if1055_end2430
  if1055_else2429:
    null $P5026
    set $P5027, $P5026
  if1055_end2430:
    unless_null $P5027, vivi_10562431
    new $P5028, 'ResizablePMCArray'
    set pkg_viv_tmp_17["@ARGS_HAVE"], $P5028
    set $P5027, $P5028
  vivi_10562431:
    unless_null $P5027, vivi_10572432
    die "Contextual @*ARGS_HAVE not found"
    box $P5029, "Contextual @*ARGS_HAVE not found"
    set $P5027, $P5029
  vivi_10572432:
    set $P5022, $P5027
  fallback2428:
    set $N5002, $P5022
    islt $I5002, $N5001, $N5002
    box $P5031, $I5002
    set $P5030, $P5031
  if1051_end2422:
    unless $P5030 goto if1050_end2420 
.annotate 'line', 2118
    find_dynamic_lex $P5032, "$*ARGS_USED"
    unless_null $P5032, fallback2433
    nqp_get_sc_object $P5034, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5033, $P5034
    set fb_tmp_192, $P5033
    repr_defined $I5005, fb_tmp_192
    unless $I5005 goto if1058_else2434 
    set $P5035, fb_tmp_192["$ARGS_USED"]
    set $P5037, $P5035
    goto if1058_end2435
  if1058_else2434:
    null $P5036
    set $P5037, $P5036
  if1058_end2435:
    unless_null $P5037, vivi_10592436
    nqp_get_sc_object $P5038, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5037, $P5038
  vivi_10592436:
    unless_null $P5037, vivi_10602437
    die "Contextual $*ARGS_USED not found"
    box $P5039, "Contextual $*ARGS_USED not found"
    set $P5037, $P5039
  vivi_10602437:
    set $P5032, $P5037
  fallback2433:
    set $S5006, $P5032
    concat $S5005, "Too few directives: found ", $S5006
    concat $S5004, $S5005, ","
    concat $S5003, $S5004, " fewer than the "
    find_dynamic_lex $P5040, "@*ARGS_HAVE"
    unless_null $P5040, fallback2438
    nqp_get_sc_object $P5042, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5041, $P5042
    set pkg_viv_tmp_18, $P5041
    set fb_tmp_193, pkg_viv_tmp_18
    repr_defined $I5006, fb_tmp_193
    unless $I5006 goto if1061_else2439 
    set $P5043, fb_tmp_193["@ARGS_HAVE"]
    set $P5045, $P5043
    goto if1061_end2440
  if1061_else2439:
    null $P5044
    set $P5045, $P5044
  if1061_end2440:
    unless_null $P5045, vivi_10622441
    new $P5046, 'ResizablePMCArray'
    set pkg_viv_tmp_18["@ARGS_HAVE"], $P5046
    set $P5045, $P5046
  vivi_10622441:
    unless_null $P5045, vivi_10632442
    die "Contextual @*ARGS_HAVE not found"
    box $P5047, "Contextual @*ARGS_HAVE not found"
    set $P5045, $P5047
  vivi_10632442:
    set $P5040, $P5045
  fallback2438:
    set $N5003, $P5040
    set $S5007, $N5003
    concat $S5002, $S5003, $S5007
    concat $S5001, $S5002, " arguments after the format string"
    box $P5048, $S5001
    die $P5048
  if1050_end2420:
    find_dynamic_lex $P5049, "$*ARGS_USED"
    unless_null $P5049, fallback2445
    nqp_get_sc_object $P5051, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5050, $P5051
    set fb_tmp_194, $P5050
    repr_defined $I5008, fb_tmp_194
    unless $I5008 goto if1065_else2446 
    set $P5052, fb_tmp_194["$ARGS_USED"]
    set $P5054, $P5052
    goto if1065_end2447
  if1065_else2446:
    null $P5053
    set $P5054, $P5053
  if1065_end2447:
    unless_null $P5054, vivi_10662448
    nqp_get_sc_object $P5055, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5054, $P5055
  vivi_10662448:
    unless_null $P5054, vivi_10672449
    die "Contextual $*ARGS_USED not found"
    box $P5056, "Contextual $*ARGS_USED not found"
    set $P5054, $P5056
  vivi_10672449:
    set $P5049, $P5054
  fallback2445:
    set $N5004, $P5049
    find_dynamic_lex $P5057, "@*ARGS_HAVE"
    unless_null $P5057, fallback2450
    nqp_get_sc_object $P5059, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5058, $P5059
    set pkg_viv_tmp_19, $P5058
    set fb_tmp_195, pkg_viv_tmp_19
    repr_defined $I5009, fb_tmp_195
    unless $I5009 goto if1068_else2451 
    set $P5060, fb_tmp_195["@ARGS_HAVE"]
    set $P5062, $P5060
    goto if1068_end2452
  if1068_else2451:
    null $P5061
    set $P5062, $P5061
  if1068_end2452:
    unless_null $P5062, vivi_10692453
    new $P5063, 'ResizablePMCArray'
    set pkg_viv_tmp_19["@ARGS_HAVE"], $P5063
    set $P5062, $P5063
  vivi_10692453:
    unless_null $P5062, vivi_10702454
    die "Contextual @*ARGS_HAVE not found"
    box $P5064, "Contextual @*ARGS_HAVE not found"
    set $P5062, $P5064
  vivi_10702454:
    set $P5057, $P5062
  fallback2450:
    set $N5005, $P5057
    isgt $I5007, $N5004, $N5005
    unless $I5007 goto if1064_end2444 
.annotate 'line', 2122
    find_dynamic_lex $P5065, "$*ARGS_USED"
    unless_null $P5065, fallback2455
    nqp_get_sc_object $P5067, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5066, $P5067
    set fb_tmp_196, $P5066
    repr_defined $I5010, fb_tmp_196
    unless $I5010 goto if1071_else2456 
    set $P5068, fb_tmp_196["$ARGS_USED"]
    set $P5070, $P5068
    goto if1071_end2457
  if1071_else2456:
    null $P5069
    set $P5070, $P5069
  if1071_end2457:
    unless_null $P5070, vivi_10722458
    nqp_get_sc_object $P5071, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5070, $P5071
  vivi_10722458:
    unless_null $P5070, vivi_10732459
    die "Contextual $*ARGS_USED not found"
    box $P5072, "Contextual $*ARGS_USED not found"
    set $P5070, $P5072
  vivi_10732459:
    set $P5065, $P5070
  fallback2455:
    set $S5012, $P5065
    concat $S5011, "Too many directives: found ", $S5012
    concat $S5010, $S5011, ", but "
    find_dynamic_lex $P5073, "@*ARGS_HAVE"
    unless_null $P5073, fallback2462
    nqp_get_sc_object $P5075, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5074, $P5075
    set pkg_viv_tmp_20, $P5074
    set fb_tmp_197, pkg_viv_tmp_20
    repr_defined $I5012, fb_tmp_197
    unless $I5012 goto if1075_else2463 
    set $P5076, fb_tmp_197["@ARGS_HAVE"]
    set $P5078, $P5076
    goto if1075_end2464
  if1075_else2463:
    null $P5077
    set $P5078, $P5077
  if1075_end2464:
    unless_null $P5078, vivi_10762465
    new $P5079, 'ResizablePMCArray'
    set pkg_viv_tmp_20["@ARGS_HAVE"], $P5079
    set $P5078, $P5079
  vivi_10762465:
    unless_null $P5078, vivi_10772466
    die "Contextual @*ARGS_HAVE not found"
    box $P5080, "Contextual @*ARGS_HAVE not found"
    set $P5078, $P5080
  vivi_10772466:
    set $P5073, $P5078
  fallback2462:
    set $N5006, $P5073
    set $N5007, 0
    isgt $I5011, $N5006, $N5007
    unless $I5011 goto if1074_else2460 
    find_dynamic_lex $P5081, "@*ARGS_HAVE"
    unless_null $P5081, fallback2467
    nqp_get_sc_object $P5083, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    get_who $P5082, $P5083
    set pkg_viv_tmp_21, $P5082
    set fb_tmp_198, pkg_viv_tmp_21
    repr_defined $I5013, fb_tmp_198
    unless $I5013 goto if1078_else2468 
    set $P5084, fb_tmp_198["@ARGS_HAVE"]
    set $P5086, $P5084
    goto if1078_end2469
  if1078_else2468:
    null $P5085
    set $P5086, $P5085
  if1078_end2469:
    unless_null $P5086, vivi_10792470
    new $P5087, 'ResizablePMCArray'
    set pkg_viv_tmp_21["@ARGS_HAVE"], $P5087
    set $P5086, $P5087
  vivi_10792470:
    unless_null $P5086, vivi_10802471
    die "Contextual @*ARGS_HAVE not found"
    box $P5088, "Contextual @*ARGS_HAVE not found"
    set $P5086, $P5088
  vivi_10802471:
    set $P5081, $P5086
  fallback2467:
    set $N5008, $P5081
    set $S5014, $N5008
    concat $S5013, "only ", $S5014
    set $S5015, $S5013
    goto if1074_end2461
  if1074_else2460:
    set $S5015, "no"
  if1074_end2461:
    concat $S5009, $S5010, $S5015
    concat $S5008, $S5009, " arguments after the format string"
    box $P5089, $S5008
    die $P5089
  if1064_end2444:
.annotate 'line', 2127
    join $S5016, "", $P101
    $P5090 = _lex_param_1."!make"($S5016)
    .return ($P5090) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_324_1382292146.58822") :anon :lex :outer("cuid_212_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2116
    find_lex $P5001, "@statements"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_214_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2188
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$st", $P101 
    .lex "@pieces", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_199 
    .local pmc fb_tmp_200 
    .local pmc fb_tmp_201 
    .local pmc fb_tmp_202 
    .local pmc fb_tmp_203 
    .local pmc fb_tmp_204 
    .local pmc fb_tmp_205 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    unless_null _lex_param_1, fallback2476
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5003
  fallback2476:
    set fb_tmp_199, _lex_param_1
    repr_defined $I5001, fb_tmp_199
    unless $I5001 goto if1082_else2474 
    set $P5004, fb_tmp_199["directive"]
    set $P5006, $P5004
    goto if1082_end2475
  if1082_else2474:
    null $P5005
    set $P5006, $P5005
  if1082_end2475:
    unless_null $P5006, vivi_10832477
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5006, $P5007
  vivi_10832477:
    unless $P5006 goto if1081_else2472 
.annotate 'line', 2190
    unless_null _lex_param_1, fallback2480
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5008
  fallback2480:
    set fb_tmp_200, _lex_param_1
    repr_defined $I5002, fb_tmp_200
    unless $I5002 goto if1084_else2478 
    set $P5009, fb_tmp_200["directive"]
    set $P5011, $P5009
    goto if1084_end2479
  if1084_else2478:
    null $P5010
    set $P5011, $P5010
  if1084_end2479:
    unless_null $P5011, vivi_10852481
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_10852481:
    set $P101, $P5011
    goto if1081_end2473
  if1081_else2472:
    unless_null _lex_param_1, fallback2486
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5013
  fallback2486:
    set fb_tmp_201, _lex_param_1
    repr_defined $I5003, fb_tmp_201
    unless $I5003 goto if1087_else2484 
    set $P5014, fb_tmp_201["escape"]
    set $P5016, $P5014
    goto if1087_end2485
  if1087_else2484:
    null $P5015
    set $P5016, $P5015
  if1087_end2485:
    unless_null $P5016, vivi_10882487
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5017
  vivi_10882487:
    unless $P5016 goto if1086_else2482 
.annotate 'line', 2191
    unless_null _lex_param_1, fallback2490
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5018
  fallback2490:
    set fb_tmp_202, _lex_param_1
    repr_defined $I5004, fb_tmp_202
    unless $I5004 goto if1089_else2488 
    set $P5019, fb_tmp_202["escape"]
    set $P5021, $P5019
    goto if1089_end2489
  if1089_else2488:
    null $P5020
    set $P5021, $P5020
  if1089_end2489:
    unless_null $P5021, vivi_10902491
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5021, $P5022
  vivi_10902491:
    set $P101, $P5021
    set $P5028, $P101
    goto if1086_end2483
  if1086_else2482:
.annotate 'line', 2192
    unless_null _lex_param_1, fallback2494
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5023
  fallback2494:
    set fb_tmp_203, _lex_param_1
    repr_defined $I5005, fb_tmp_203
    unless $I5005 goto if1091_else2492 
    set $P5024, fb_tmp_203["literal"]
    set $P5026, $P5024
    goto if1091_end2493
  if1091_else2492:
    null $P5025
    set $P5026, $P5025
  if1091_end2493:
    unless_null $P5026, vivi_10922495
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5026, $P5027
  vivi_10922495:
    set $P101, $P5026
    set $P5028, $P101
  if1086_end2483:
  if1081_end2473:
    set fb_tmp_204, $P101
    repr_defined $I5006, fb_tmp_204
    unless $I5006 goto if1094_else2498 
    set $P5029, fb_tmp_204["size"]
    set $P5031, $P5029
    goto if1094_end2499
  if1094_else2498:
    null $P5030
    set $P5031, $P5030
  if1094_end2499:
    unless_null $P5031, vivi_10952500
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5031, $P5032
  vivi_10952500:
    unless $P5031 goto if1093_end2497 
.annotate 'line', 2194
    $P5033 = "&padding_char"($P101)
    set fb_tmp_205, $P101
    repr_defined $I5007, fb_tmp_205
    unless $I5007 goto if1096_else2501 
    set $P5034, fb_tmp_205["size"]
    set $P5036, $P5034
    goto if1096_end2502
  if1096_else2501:
    null $P5035
    set $P5036, $P5035
  if1096_end2502:
    unless_null $P5036, vivi_10972503
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5036, $P5037
  vivi_10972503:
    $P5038 = $P5036."ast"()
    set $N5002, $P5038
    $P5039 = $P101."ast"()
    set $S5001, $P5039
    length $I5008, $S5001
    set $N5003, $I5008
    sub $N5001, $N5002, $N5003
    $P5040 = "&infix_x"($P5033, $N5001)
    $P5041 = $P102."push"($P5040)
  if1093_end2497:
.annotate 'line', 2195
    $P5042 = "&has_flag"($P101, "minus")
    unless $P5042 goto if1098_else2504 
.annotate 'line', 2196
    $P5043 = $P101."ast"()
    $P5044 = $P102."unshift"($P5043)
    goto if1098_end2505
  if1098_else2504:
.annotate 'line', 2197
    $P5045 = $P101."ast"()
    $P5046 = $P102."push"($P5045)
  if1098_end2505:
.annotate 'line', 2198
    $P5047 = "&join"("", $P102)
    $P5048 = _lex_param_1."!make"($P5047)
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_215_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2201
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pre", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_206 
    .local pmc fb_tmp_207 
    .local pmc fb_tmp_208 
    .local pmc fb_tmp_209 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
.annotate 'line', 2202
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 2
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1100_end2509 
.annotate 'line', 2204
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1100_end2509:
    unless $P5007 goto if1099_end2507 
    unless_null _lex_param_1, fallback2514
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5008
  fallback2514:
    set fb_tmp_206, _lex_param_1
    repr_defined $I5003, fb_tmp_206
    unless $I5003 goto if1102_else2512 
    set $P5009, fb_tmp_206["sym"]
    set $P5011, $P5009
    goto if1102_end2513
  if1102_else2512:
    null $P5010
    set $P5011, $P5010
  if1102_end2513:
    unless_null $P5011, vivi_11032515
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_11032515:
    set $S5002, $P5011
    iseq $I5002, $S5002, "b"
    unless $I5002 goto if1101_else2510 
    set $S5003, "0b"
    goto if1101_end2511
  if1101_else2510:
    set $S5003, "0B"
  if1101_end2511:
    box $P5013, $S5003
    set $P102, $P5013
  if1099_end2507:
    unless_null _lex_param_1, fallback2520
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5014
  fallback2520:
    set fb_tmp_207, _lex_param_1
    repr_defined $I5005, fb_tmp_207
    unless $I5005 goto if1105_else2518 
    set $P5015, fb_tmp_207["precision"]
    set $P5017, $P5015
    goto if1105_end2519
  if1105_else2518:
    null $P5016
    set $P5017, $P5016
  if1105_end2519:
    unless_null $P5017, vivi_11062521
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5017, $P5018
  vivi_11062521:
    set $S5004, $P5017
    length $I5004, $S5004
    unless $I5004 goto if1104_else2516 
.annotate 'line', 2205
.annotate 'line', 2206
    unless_null _lex_param_1, fallback2528
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5019
  fallback2528:
    set fb_tmp_208, _lex_param_1
    repr_defined $I5007, fb_tmp_208
    unless $I5007 goto if1109_else2526 
    set $P5020, fb_tmp_208["precision"]
    set $P5022, $P5020
    goto if1109_end2527
  if1109_else2526:
    null $P5021
    set $P5022, $P5021
  if1109_end2527:
    unless_null $P5022, vivi_11102529
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5022, $P5023
  vivi_11102529:
    $P5024 = $P5022."ast"()
    set $N5001, $P5024
    set $N5002, 0
    iseq $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if1108_end2525 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5008, $N5003, $N5004
    set $I5009, $I5008
  if1108_end2525:
    unless $I5009 goto if1107_end2523 
    box $P5025, ""
    set $P101, $P5025
  if1107_end2523:
    set $S5007, $P102
.annotate 'line', 2207
    unless_null _lex_param_1, fallback2532
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5026
  fallback2532:
    set fb_tmp_209, _lex_param_1
    repr_defined $I5010, fb_tmp_209
    unless $I5010 goto if1111_else2530 
    set $P5027, fb_tmp_209["precision"]
    set $P5029, $P5027
    goto if1111_end2531
  if1111_else2530:
    null $P5028
    set $P5029, $P5028
  if1111_end2531:
    unless_null $P5029, vivi_11122533
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5029, $P5030
  vivi_11122533:
    $P5031 = $P5029."ast"()
    set $N5006, $P5031
    set $S5008, $P101
    length $I5011, $S5008
    set $N5007, $I5011
    sub $N5005, $N5006, $N5007
    $P5032 = "&infix_x"("0", $N5005)
    set $S5009, $P5032
    concat $S5006, $S5007, $S5009
    set $S5010, $P101
    concat $S5005, $S5006, $S5010
    box $P5033, $S5005
    set $P101, $P5033
    goto if1104_end2517
  if1104_else2516:
.annotate 'line', 2209
    set $S5012, $P102
    set $S5013, $P101
    concat $S5011, $S5012, $S5013
    box $P5034, $S5011
    set $P101, $P5034
  if1104_end2517:
.annotate 'line', 2212
    $P5035 = _lex_param_1."!make"($P101)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_216_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2214
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2215
    $P5001 = "&next_argument"(_lex_param_1)
    set $I5001, $P5001
    chr $S5001, $I5001
    $P5002 = _lex_param_1."!make"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_217_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2218
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pad", $P102 
    .lex "$sign", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_210 
    .local pmc fb_tmp_211 
    .local pmc fb_tmp_212 
    .local pmc fb_tmp_213 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
.annotate 'line', 2219
    $P5004 = "&next_argument"(_lex_param_1)
    $P5005 = "&intify"($P5004)
    set $P101, $P5005
.annotate 'line', 2220
    $P5006 = "&padding_char"(_lex_param_1)
    set $P102, $P5006
    find_lex $P5007, "$zero"
    nqp_bigint_lt $I5001, $P101, $P5007
    unless $I5001 goto if1113_else2534 
    set $S5002, "-"
    goto if1113_end2535
  if1113_else2534:
.annotate 'line', 2222
    $P5008 = "&has_flag"(_lex_param_1, "plus")
    unless $P5008 goto if1114_else2536 
    set $S5001, "+"
    goto if1114_end2537
  if1114_else2536:
    set $S5001, ""
  if1114_end2537:
    set $S5002, $S5001
  if1113_end2535:
    box $P5009, $S5002
    set $P103, $P5009
    find_lex $P5011, "$knowhow"
    nqp_bigint_abs $P5010, $P101, $P5011
    nqp_bigint_to_str $S5003, $P5010
    box $P5012, $S5003
    set $P101, $P5012
    unless_null _lex_param_1, fallback2542
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5013
  fallback2542:
    set fb_tmp_210, _lex_param_1
    repr_defined $I5003, fb_tmp_210
    unless $I5003 goto if1116_else2540 
    set $P5014, fb_tmp_210["precision"]
    set $P5016, $P5014
    goto if1116_end2541
  if1116_else2540:
    null $P5015
    set $P5016, $P5015
  if1116_end2541:
    unless_null $P5016, vivi_11172543
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5016, $P5017
  vivi_11172543:
    set $S5004, $P5016
    length $I5002, $S5004
    unless $I5002 goto if1115_end2539 
    set $S5006, $P101
.annotate 'line', 2225
    unless_null _lex_param_1, fallback2546
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5018
  fallback2546:
    set fb_tmp_211, _lex_param_1
    repr_defined $I5004, fb_tmp_211
    unless $I5004 goto if1118_else2544 
    set $P5019, fb_tmp_211["precision"]
    set $P5021, $P5019
    goto if1118_end2545
  if1118_else2544:
    null $P5020
    set $P5021, $P5020
  if1118_end2545:
    unless_null $P5021, vivi_11192547
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5021, $P5022
  vivi_11192547:
    $P5023 = $P5021."ast"()
    set $I5005, $P5023
    substr $S5005, $S5006, 0, $I5005
    box $P5024, $S5005
    set $P101, $P5024
  if1115_end2539:
    set $S5007, $P102
    isne $I5006, $S5007, " "
    box $P5031, $I5006
    set $P5030, $P5031
    unless $I5006 goto if1121_end2551 
    unless_null _lex_param_1, fallback2554
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5025
  fallback2554:
    set fb_tmp_212, _lex_param_1
    repr_defined $I5007, fb_tmp_212
    unless $I5007 goto if1122_else2552 
    set $P5026, fb_tmp_212["size"]
    set $P5028, $P5026
    goto if1122_end2553
  if1122_else2552:
    null $P5027
    set $P5028, $P5027
  if1122_end2553:
    unless_null $P5028, vivi_11232555
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5028, $P5029
  vivi_11232555:
    set $P5030, $P5028
  if1121_end2551:
    unless $P5030 goto if1120_else2548 
.annotate 'line', 2226
    set $S5010, $P103
.annotate 'line', 2227
    unless_null _lex_param_1, fallback2558
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5032
  fallback2558:
    set fb_tmp_213, _lex_param_1
    repr_defined $I5008, fb_tmp_213
    unless $I5008 goto if1124_else2556 
    set $P5033, fb_tmp_213["size"]
    set $P5035, $P5033
    goto if1124_end2557
  if1124_else2556:
    null $P5034
    set $P5035, $P5034
  if1124_end2557:
    unless_null $P5035, vivi_11252559
    nqp_get_sc_object $P5036, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5035, $P5036
  vivi_11252559:
    $P5037 = $P5035."ast"()
    set $N5003, $P5037
    set $S5011, $P101
    length $I5009, $S5011
    set $N5004, $I5009
    sub $N5002, $N5003, $N5004
    set $N5005, 1
    sub $N5001, $N5002, $N5005
    $P5038 = "&infix_x"($P102, $N5001)
    set $S5012, $P5038
    concat $S5009, $S5010, $S5012
    set $S5013, $P101
    concat $S5008, $S5009, $S5013
    box $P5039, $S5008
    set $P101, $P5039
    goto if1120_end2549
  if1120_else2548:
.annotate 'line', 2229
    set $S5015, $P103
    set $S5016, $P101
    concat $S5014, $S5015, $S5016
    box $P5040, $S5014
    set $P101, $P5040
  if1120_end2549:
.annotate 'line', 2232
    $P5041 = _lex_param_1."!make"($P101)
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_218_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$float", $P101 
    .lex "$precision", $P102 
    .lex "$pad", $P103 
    .lex "$size", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_214 
    .local pmc fb_tmp_215 
    .local pmc fb_tmp_216 
    .local pmc fb_tmp_217 
    .local pmc fb_tmp_218 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
.annotate 'line', 2311
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2564
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback2564:
    set fb_tmp_214, _lex_param_1
    repr_defined $I5001, fb_tmp_214
    unless $I5001 goto if1127_else2562 
    set $P5007, fb_tmp_214["precision"]
    set $P5009, $P5007
    goto if1127_end2563
  if1127_else2562:
    null $P5008
    set $P5009, $P5008
  if1127_end2563:
    unless_null $P5009, vivi_11282565
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_11282565:
    unless $P5009 goto if1126_else2560 
.annotate 'line', 2312
    unless_null _lex_param_1, fallback2568
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5011
  fallback2568:
    set fb_tmp_215, _lex_param_1
    repr_defined $I5002, fb_tmp_215
    unless $I5002 goto if1129_else2566 
    set $P5012, fb_tmp_215["precision"]
    set $P5014, $P5012
    goto if1129_end2567
  if1129_else2566:
    null $P5013
    set $P5014, $P5013
  if1129_end2567:
    unless_null $P5014, vivi_11302569
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5014, $P5015
  vivi_11302569:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1126_end2561
  if1126_else2560:
    box $P5018, 6
    set $P5017, $P5018
  if1126_end2561:
    set $P102, $P5017
.annotate 'line', 2313
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2574
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5020
  fallback2574:
    set fb_tmp_216, _lex_param_1
    repr_defined $I5003, fb_tmp_216
    unless $I5003 goto if1132_else2572 
    set $P5021, fb_tmp_216["size"]
    set $P5023, $P5021
    goto if1132_end2573
  if1132_else2572:
    null $P5022
    set $P5023, $P5022
  if1132_end2573:
    unless_null $P5023, vivi_11332575
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5023, $P5024
  vivi_11332575:
    unless $P5023 goto if1131_else2570 
.annotate 'line', 2314
    unless_null _lex_param_1, fallback2578
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5025
  fallback2578:
    set fb_tmp_217, _lex_param_1
    repr_defined $I5004, fb_tmp_217
    unless $I5004 goto if1134_else2576 
    set $P5026, fb_tmp_217["size"]
    set $P5028, $P5026
    goto if1134_end2577
  if1134_else2576:
    null $P5027
    set $P5028, $P5027
  if1134_end2577:
    unless_null $P5028, vivi_11352579
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5028, $P5029
  vivi_11352579:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1131_end2571
  if1131_else2570:
    box $P5032, 0
    set $P5031, $P5032
  if1131_end2571:
    set $P104, $P5031
.annotate 'line', 2315
    unless_null _lex_param_1, fallback2582
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5033
  fallback2582:
    set fb_tmp_218, _lex_param_1
    repr_defined $I5005, fb_tmp_218
    unless $I5005 goto if1136_else2580 
    set $P5034, fb_tmp_218["sym"]
    set $P5036, $P5034
    goto if1136_end2581
  if1136_else2580:
    null $P5035
    set $P5036, $P5035
  if1136_end2581:
    unless_null $P5036, vivi_11372583
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5036, $P5037
  vivi_11372583:
    $P5038 = "&scientific"($P101, $P5036, $P102, $P104, $P103)
    $P5039 = _lex_param_1."!make"($P5038)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_219_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2317
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$precision", $P102 
    .lex "$pad", $P103 
    .lex "$size", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_219 
    .local pmc fb_tmp_220 
    .local pmc fb_tmp_221 
    .local pmc fb_tmp_222 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
.annotate 'line', 2318
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2588
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback2588:
    set fb_tmp_219, _lex_param_1
    repr_defined $I5001, fb_tmp_219
    unless $I5001 goto if1139_else2586 
    set $P5007, fb_tmp_219["precision"]
    set $P5009, $P5007
    goto if1139_end2587
  if1139_else2586:
    null $P5008
    set $P5009, $P5008
  if1139_end2587:
    unless_null $P5009, vivi_11402589
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_11402589:
    unless $P5009 goto if1138_else2584 
.annotate 'line', 2319
    unless_null _lex_param_1, fallback2592
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5011
  fallback2592:
    set fb_tmp_220, _lex_param_1
    repr_defined $I5002, fb_tmp_220
    unless $I5002 goto if1141_else2590 
    set $P5012, fb_tmp_220["precision"]
    set $P5014, $P5012
    goto if1141_end2591
  if1141_else2590:
    null $P5013
    set $P5014, $P5013
  if1141_end2591:
    unless_null $P5014, vivi_11422593
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5014, $P5015
  vivi_11422593:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1138_end2585
  if1138_else2584:
    box $P5018, 6
    set $P5017, $P5018
  if1138_end2585:
    set $P102, $P5017
.annotate 'line', 2320
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2598
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5020
  fallback2598:
    set fb_tmp_221, _lex_param_1
    repr_defined $I5003, fb_tmp_221
    unless $I5003 goto if1144_else2596 
    set $P5021, fb_tmp_221["size"]
    set $P5023, $P5021
    goto if1144_end2597
  if1144_else2596:
    null $P5022
    set $P5023, $P5022
  if1144_end2597:
    unless_null $P5023, vivi_11452599
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5023, $P5024
  vivi_11452599:
    unless $P5023 goto if1143_else2594 
.annotate 'line', 2321
    unless_null _lex_param_1, fallback2602
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5025
  fallback2602:
    set fb_tmp_222, _lex_param_1
    repr_defined $I5004, fb_tmp_222
    unless $I5004 goto if1146_else2600 
    set $P5026, fb_tmp_222["size"]
    set $P5028, $P5026
    goto if1146_end2601
  if1146_else2600:
    null $P5027
    set $P5028, $P5027
  if1146_end2601:
    unless_null $P5028, vivi_11472603
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5028, $P5029
  vivi_11472603:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1143_end2595
  if1143_else2594:
    box $P5032, 0
    set $P5031, $P5032
  if1143_end2595:
    set $P104, $P5031
.annotate 'line', 2322
    $P5033 = "&fixed-point"($P101, $P102, $P104, $P103)
    $P5034 = _lex_param_1."!make"($P5033)
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_220_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2324
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$float", $P101 
    .lex "$precision", $P102 
    .lex "$pad", $P103 
    .lex "$size", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_223 
    .local pmc fb_tmp_224 
    .local pmc fb_tmp_225 
    .local pmc fb_tmp_226 
    .local pmc fb_tmp_227 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P104, $P5004
.annotate 'line', 2325
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2608
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback2608:
    set fb_tmp_223, _lex_param_1
    repr_defined $I5001, fb_tmp_223
    unless $I5001 goto if1149_else2606 
    set $P5007, fb_tmp_223["precision"]
    set $P5009, $P5007
    goto if1149_end2607
  if1149_else2606:
    null $P5008
    set $P5009, $P5008
  if1149_end2607:
    unless_null $P5009, vivi_11502609
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_11502609:
    unless $P5009 goto if1148_else2604 
.annotate 'line', 2326
    unless_null _lex_param_1, fallback2612
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5011
  fallback2612:
    set fb_tmp_224, _lex_param_1
    repr_defined $I5002, fb_tmp_224
    unless $I5002 goto if1151_else2610 
    set $P5012, fb_tmp_224["precision"]
    set $P5014, $P5012
    goto if1151_end2611
  if1151_else2610:
    null $P5013
    set $P5014, $P5013
  if1151_end2611:
    unless_null $P5014, vivi_11522613
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5014, $P5015
  vivi_11522613:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1148_end2605
  if1148_else2604:
    box $P5018, 6
    set $P5017, $P5018
  if1148_end2605:
    set $P102, $P5017
.annotate 'line', 2327
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2618
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5020
  fallback2618:
    set fb_tmp_225, _lex_param_1
    repr_defined $I5003, fb_tmp_225
    unless $I5003 goto if1154_else2616 
    set $P5021, fb_tmp_225["size"]
    set $P5023, $P5021
    goto if1154_end2617
  if1154_else2616:
    null $P5022
    set $P5023, $P5022
  if1154_end2617:
    unless_null $P5023, vivi_11552619
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5023, $P5024
  vivi_11552619:
    unless $P5023 goto if1153_else2614 
.annotate 'line', 2328
    unless_null _lex_param_1, fallback2622
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5025
  fallback2622:
    set fb_tmp_226, _lex_param_1
    repr_defined $I5004, fb_tmp_226
    unless $I5004 goto if1156_else2620 
    set $P5026, fb_tmp_226["size"]
    set $P5028, $P5026
    goto if1156_end2621
  if1156_else2620:
    null $P5027
    set $P5028, $P5027
  if1156_end2621:
    unless_null $P5028, vivi_11572623
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5028, $P5029
  vivi_11572623:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1153_end2615
  if1153_else2614:
    box $P5032, 0
    set $P5031, $P5032
  if1153_end2615:
    set $P104, $P5031
.annotate 'line', 2329
    unless_null _lex_param_1, fallback2628
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5033
  fallback2628:
    set fb_tmp_227, _lex_param_1
    repr_defined $I5006, fb_tmp_227
    unless $I5006 goto if1159_else2626 
    set $P5034, fb_tmp_227["sym"]
    set $P5036, $P5034
    goto if1159_end2627
  if1159_else2626:
    null $P5035
    set $P5036, $P5035
  if1159_end2627:
    unless_null $P5036, vivi_11602629
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5036, $P5037
  vivi_11602629:
    set $S5001, $P5036
    iseq $I5005, $S5001, "G"
    unless $I5005 goto if1158_else2624 
    set $S5002, "E"
    goto if1158_end2625
  if1158_else2624:
    set $S5002, "e"
  if1158_end2625:
    $P5038 = "&shortest"($P101, $S5002, $P102, $P104, $P103)
    $P5039 = _lex_param_1."!make"($P5038)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_221_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2331
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pre", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_228 
    .local pmc fb_tmp_229 
    .local pmc fb_tmp_230 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
.annotate 'line', 2332
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 8
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1162_end2633 
.annotate 'line', 2334
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1162_end2633:
    unless $P5007 goto if1161_end2631 
    box $P5008, "0"
    set $P102, $P5008
  if1161_end2631:
    unless_null _lex_param_1, fallback2638
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5009
  fallback2638:
    set fb_tmp_228, _lex_param_1
    repr_defined $I5003, fb_tmp_228
    unless $I5003 goto if1164_else2636 
    set $P5010, fb_tmp_228["precision"]
    set $P5012, $P5010
    goto if1164_end2637
  if1164_else2636:
    null $P5011
    set $P5012, $P5011
  if1164_end2637:
    unless_null $P5012, vivi_11652639
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5013
  vivi_11652639:
    set $S5002, $P5012
    length $I5002, $S5002
    unless $I5002 goto if1163_else2634 
.annotate 'line', 2335
.annotate 'line', 2336
    unless_null _lex_param_1, fallback2646
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5014
  fallback2646:
    set fb_tmp_229, _lex_param_1
    repr_defined $I5005, fb_tmp_229
    unless $I5005 goto if1168_else2644 
    set $P5015, fb_tmp_229["precision"]
    set $P5017, $P5015
    goto if1168_end2645
  if1168_else2644:
    null $P5016
    set $P5017, $P5016
  if1168_end2645:
    unless_null $P5017, vivi_11692647
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5017, $P5018
  vivi_11692647:
    $P5019 = $P5017."ast"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if1167_end2643 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  if1167_end2643:
    unless $I5007 goto if1166_end2641 
    box $P5020, ""
    set $P101, $P5020
  if1166_end2641:
    set $S5005, $P102
.annotate 'line', 2337
    unless_null _lex_param_1, fallback2650
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5021
  fallback2650:
    set fb_tmp_230, _lex_param_1
    repr_defined $I5008, fb_tmp_230
    unless $I5008 goto if1170_else2648 
    set $P5022, fb_tmp_230["precision"]
    set $P5024, $P5022
    goto if1170_end2649
  if1170_else2648:
    null $P5023
    set $P5024, $P5023
  if1170_end2649:
    unless_null $P5024, vivi_11712651
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5024, $P5025
  vivi_11712651:
    $P5026 = $P5024."ast"()
    $P5027 = "&intify"($P5026)
    set $N5006, $P5027
    set $S5006, $P101
    length $I5009, $S5006
    set $N5007, $I5009
    sub $N5005, $N5006, $N5007
    $P5028 = "&infix_x"("0", $N5005)
    set $S5007, $P5028
    concat $S5004, $S5005, $S5007
    set $S5008, $P101
    concat $S5003, $S5004, $S5008
    box $P5029, $S5003
    set $P101, $P5029
    goto if1163_end2635
  if1163_else2634:
.annotate 'line', 2339
    set $S5010, $P102
    set $S5011, $P101
    concat $S5009, $S5010, $S5011
    box $P5030, $S5009
    set $P101, $P5030
  if1163_end2635:
.annotate 'line', 2342
    $P5031 = _lex_param_1."!make"($P101)
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_222_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2345
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$string", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_231 
    .local pmc fb_tmp_232 
    .local pmc fb_tmp_233 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 2346
    $P5002 = "&next_argument"(_lex_param_1)
    set $P101, $P5002
    unless_null _lex_param_1, fallback2658
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5003
  fallback2658:
    set fb_tmp_231, _lex_param_1
    repr_defined $I5002, fb_tmp_231
    unless $I5002 goto if1174_else2656 
    set $P5004, fb_tmp_231["precision"]
    set $P5006, $P5004
    goto if1174_end2657
  if1174_else2656:
    null $P5005
    set $P5006, $P5005
  if1174_end2657:
    unless_null $P5006, vivi_11752659
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5006, $P5007
  vivi_11752659:
    set $S5001, $P5006
    length $I5001, $S5001
    set $I5006, $I5001
    unless $I5001 goto if1173_end2655 
    set $S5002, $P101
    length $I5004, $S5002
    set $N5001, $I5004
.annotate 'line', 2347
    unless_null _lex_param_1, fallback2662
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5008
  fallback2662:
    set fb_tmp_232, _lex_param_1
    repr_defined $I5005, fb_tmp_232
    unless $I5005 goto if1176_else2660 
    set $P5009, fb_tmp_232["precision"]
    set $P5011, $P5009
    goto if1176_end2661
  if1176_else2660:
    null $P5010
    set $P5011, $P5010
  if1176_end2661:
    unless_null $P5011, vivi_11772663
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5011, $P5012
  vivi_11772663:
    $P5013 = $P5011."ast"()
    set $N5002, $P5013
    isgt $I5003, $N5001, $N5002
    set $I5006, $I5003
  if1173_end2655:
    unless $I5006 goto if1172_end2653 
    set $S5004, $P101
.annotate 'line', 2348
    unless_null _lex_param_1, fallback2666
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5014
  fallback2666:
    set fb_tmp_233, _lex_param_1
    repr_defined $I5007, fb_tmp_233
    unless $I5007 goto if1178_else2664 
    set $P5015, fb_tmp_233["precision"]
    set $P5017, $P5015
    goto if1178_end2665
  if1178_else2664:
    null $P5016
    set $P5017, $P5016
  if1178_end2665:
    unless_null $P5017, vivi_11792667
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5017, $P5018
  vivi_11792667:
    $P5019 = $P5017."ast"()
    set $I5008, $P5019
    substr $S5003, $S5004, 0, $I5008
    box $P5020, $S5003
    set $P101, $P5020
  if1172_end2653:
.annotate 'line', 2350
    $P5021 = _lex_param_1."!make"($P101)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_223_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2354
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_325_1382292146.58822' 
    capture_lex $P5008 
    .lex "$int", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
.annotate 'line', 2355
    $P5002 = "&next_argument"(_lex_param_1)
    $P5003 = "&intify"($P5002)
    set $P101, $P5003
    find_lex $P5004, "$zero"
    nqp_bigint_lt $I5001, $P101, $P5004
    unless $I5001 goto if1180_end2669 
    .const 'Sub' $P5005 = 'cuid_325_1382292146.58822' 
    capture_lex $P5005
    $P5006 = $P5005()
  if1180_end2669:
.annotate 'line', 2365
    nqp_bigint_to_str $S5001, $P101
    $P5007 = _lex_param_1."!make"($S5001)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_325_1382292146.58822") :anon :lex :outer("cuid_223_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2356
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    getinterp $P5002
    $P5003 = $P5002."stderr_handle"()
    set $P101, $P5003
    find_lex $P5004, "$int"
    set $S5003, $P5004
    concat $S5002, "negative value '", $S5003
    concat $S5001, $S5002, "' for %u in sprintf"
    $P5005 = $P101."print"($S5001)
    box $P5006, 0
    store_lex "$int", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<x>" :subid("cuid_224_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2367
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pre", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_234 
    .local pmc fb_tmp_235 
    .local pmc fb_tmp_236 
    .local pmc fb_tmp_237 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P102, $P5002
.annotate 'line', 2368
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 16
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1182_end2673 
.annotate 'line', 2370
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1182_end2673:
    unless $P5007 goto if1181_end2671 
    box $P5008, "0X"
    set $P102, $P5008
  if1181_end2671:
    unless_null _lex_param_1, fallback2678
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5009
  fallback2678:
    set fb_tmp_234, _lex_param_1
    repr_defined $I5003, fb_tmp_234
    unless $I5003 goto if1184_else2676 
    set $P5010, fb_tmp_234["precision"]
    set $P5012, $P5010
    goto if1184_end2677
  if1184_else2676:
    null $P5011
    set $P5012, $P5011
  if1184_end2677:
    unless_null $P5012, vivi_11852679
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5012, $P5013
  vivi_11852679:
    set $S5002, $P5012
    length $I5002, $S5002
    unless $I5002 goto if1183_else2674 
.annotate 'line', 2371
.annotate 'line', 2372
    unless_null _lex_param_1, fallback2686
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5014
  fallback2686:
    set fb_tmp_235, _lex_param_1
    repr_defined $I5005, fb_tmp_235
    unless $I5005 goto if1188_else2684 
    set $P5015, fb_tmp_235["precision"]
    set $P5017, $P5015
    goto if1188_end2685
  if1188_else2684:
    null $P5016
    set $P5017, $P5016
  if1188_end2685:
    unless_null $P5017, vivi_11892687
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5017, $P5018
  vivi_11892687:
    $P5019 = $P5017."ast"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if1187_end2683 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  if1187_end2683:
    unless $I5007 goto if1186_end2681 
    box $P5020, ""
    set $P101, $P5020
  if1186_end2681:
    set $S5005, $P102
.annotate 'line', 2373
    unless_null _lex_param_1, fallback2690
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5021
  fallback2690:
    set fb_tmp_236, _lex_param_1
    repr_defined $I5008, fb_tmp_236
    unless $I5008 goto if1190_else2688 
    set $P5022, fb_tmp_236["precision"]
    set $P5024, $P5022
    goto if1190_end2689
  if1190_else2688:
    null $P5023
    set $P5024, $P5023
  if1190_end2689:
    unless_null $P5024, vivi_11912691
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5024, $P5025
  vivi_11912691:
    $P5026 = $P5024."ast"()
    set $N5006, $P5026
    set $S5006, $P101
    length $I5009, $S5006
    set $N5007, $I5009
    sub $N5005, $N5006, $N5007
    $P5027 = "&infix_x"("0", $N5005)
    set $S5007, $P5027
    concat $S5004, $S5005, $S5007
    set $S5008, $P101
    concat $S5003, $S5004, $S5008
    box $P5028, $S5003
    set $P101, $P5028
    goto if1183_end2675
  if1183_else2674:
.annotate 'line', 2375
    set $S5010, $P102
    set $S5011, $P101
    concat $S5009, $S5010, $S5011
    box $P5029, $S5009
    set $P101, $P5029
  if1183_end2675:
.annotate 'line', 2378
    unless_null _lex_param_1, fallback2696
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5030
  fallback2696:
    set fb_tmp_237, _lex_param_1
    repr_defined $I5011, fb_tmp_237
    unless $I5011 goto if1193_else2694 
    set $P5031, fb_tmp_237["sym"]
    set $P5033, $P5031
    goto if1193_end2695
  if1193_else2694:
    null $P5032
    set $P5033, $P5032
  if1193_end2695:
    unless_null $P5033, vivi_11942697
    nqp_get_sc_object $P5034, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5033, $P5034
  vivi_11942697:
    set $S5012, $P5033
    iseq $I5010, $S5012, "x"
    unless $I5010 goto if1192_else2692 
    set $S5014, $P101
    downcase $S5013, $S5014
    box $P5036, $S5013
    set $P5035, $P5036
    goto if1192_end2693
  if1192_else2692:
    set $P5035, $P101
  if1192_end2693:
    $P5037 = _lex_param_1."!make"($P5035)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_225_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2381
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2382
    $P5001 = _lex_param_1."!make"("%")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_226_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2385
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2386
    set $S5001, _lex_param_1
    $P5001 = _lex_param_1."!make"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_227_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2389
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$index", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_238 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    unless_null _lex_param_1, fallback2700
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5002
  fallback2700:
    set fb_tmp_238, _lex_param_1
    repr_defined $I5001, fb_tmp_238
    unless $I5001 goto if1195_else2698 
    set $P5003, fb_tmp_238["param_index"]
    set $P5005, $P5003
    goto if1195_end2699
  if1195_else2698:
    null $P5004
    set $P5005, $P5004
  if1195_end2699:
    unless_null $P5005, vivi_11962701
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5005, $P5006
  vivi_11962701:
    set $N5002, $P5005
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5007, $N5001
    set $P101, $P5007
    set $N5004, $P101
    set $N5005, 0
    islt $I5002, $N5004, $N5005
    unless $I5002 goto if1197_end2703 
    box $P5008, "Parameter index starts to count at 1 but 0 was passed"
    die $P5008
  if1197_end2703:
.annotate 'line', 2392
    $P5009 = _lex_param_1."!make"($P101)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_228_1382292146.58822") :anon :lex :outer("cuid_307_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2395
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_239 
.annotate 'line', 2396
    unless_null _lex_param_1, fallback2708
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback2708:
    set fb_tmp_239, _lex_param_1
    repr_defined $I5001, fb_tmp_239
    unless $I5001 goto if1199_else2706 
    set $P5002, fb_tmp_239["star"]
    set $P5004, $P5002
    goto if1199_end2707
  if1199_else2706:
    null $P5003
    set $P5004, $P5003
  if1199_end2707:
    unless_null $P5004, vivi_12002709
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_12002709:
    unless $P5004 goto if1198_else2704 
    new $P5006, 'Hash'
    $P5007 = "&next_argument"($P5006)
    set $P5008, $P5007
    goto if1198_end2705
  if1198_else2704:
    set $S5001, _lex_param_1
    box $P5009, $S5001
    set $P5008, $P5009
  if1198_end2705:
    $P5010 = _lex_param_1."!make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_326_1382292146.58822") :anon :lex :outer("cuid_302_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2410
    .const 'Sub' $P5003 = 'cuid_229_1382292146.58822' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_230_1382292146.58822' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_229_1382292146.58822' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_230_1382292146.58822' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_229_1382292146.58822") :anon :lex :outer("cuid_326_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2411
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5015 = 'cuid_327_1382292146.58822' 
    capture_lex $P5015 
    .lex "$count", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_240 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    unless_null _lex_param_1, fallback2712
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback2712:
    set fb_tmp_240, _lex_param_1
    repr_defined $I5001, fb_tmp_240
    unless $I5001 goto if1201_else2710 
    set $P5007, fb_tmp_240["statement"]
    set $P5009, $P5007
    goto if1201_end2711
  if1201_else2710:
    null $P5008
    set $P5009, $P5008
  if1201_end2711:
    unless_null $P5009, vivi_12022713
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_12022713:
    set $P5003, $P5009
    iter $P5005, $P5009
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers2714
    push_eh $P5012
  for_next2715:
    unless $P5005, for_done2717
    shift $P5013, $P5005
  for_redo2716:
    .const 'Sub' $P5011 = 'cuid_327_1382292146.58822' 
    capture_lex $P5011
    $P5003 = $P5011($P5013)
    goto for_next2715
  for_handlers2714:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next2715
    eq $P5012, .CONTROL_LOOP_REDO, for_redo2716
  for_done2717:
    pop_eh 
.annotate 'line', 2414
    $P5014 = _lex_param_1."!make"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_327_1382292146.58822") :anon :lex :outer("cuid_229_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$count"
    set $I5002, $P5001
.annotate 'line', 2413
    $P5002 = _lex_param_0."ast"()
    set $I5003, $P5002
    add $I5001, $I5002, $I5003
    box $P5003, $I5001
    store_lex "$count", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_230_1382292146.58822") :anon :lex :outer("cuid_326_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2417
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_241 
    .local pmc fb_tmp_242 
    .local pmc fb_tmp_243 
.annotate 'line', 2418
    unless_null _lex_param_1, fallback2724
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5001
  fallback2724:
    set fb_tmp_241, _lex_param_1
    repr_defined $I5001, fb_tmp_241
    unless $I5001 goto if1205_else2722 
    set $P5002, fb_tmp_241["directive"]
    set $P5004, $P5002
    goto if1205_end2723
  if1205_else2722:
    null $P5003
    set $P5004, $P5003
  if1205_end2723:
    unless_null $P5004, vivi_12062725
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5004, $P5005
  vivi_12062725:
    set $P5015, $P5004
    unless $P5004 goto if1204_end2721 
    unless_null _lex_param_1, fallback2730
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set _lex_param_1, $P5006
  fallback2730:
    set fb_tmp_243, _lex_param_1
    repr_defined $I5004, fb_tmp_243
    unless $I5004 goto if1208_else2728 
    set $P5007, fb_tmp_243["directive"]
    set $P5009, $P5007
    goto if1208_end2729
  if1208_else2728:
    null $P5008
    set $P5009, $P5008
  if1208_end2729:
    unless_null $P5009, vivi_12092731
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5009, $P5010
  vivi_12092731:
    set fb_tmp_242, $P5009
    repr_defined $I5003, fb_tmp_242
    unless $I5003 goto if1207_else2726 
    set $P5011, fb_tmp_242["idx"]
    set $P5013, $P5011
    goto if1207_end2727
  if1207_else2726:
    null $P5012
    set $P5013, $P5012
  if1207_end2727:
    unless_null $P5013, vivi_12102732
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344", 26
    set $P5013, $P5014
  vivi_12102732:
    isfalse $I5002, $P5013
    box $P5016, $I5002
    set $P5015, $P5016
  if1204_end2721:
    unless $P5015 goto if1203_else2718 
    set $I5005, 1
    goto if1203_end2719
  if1203_else2718:
    set $I5005, 0
  if1203_end2719:
    $P5017 = _lex_param_1."!make"($I5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_329_1382292146.58822") :load :init
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .const 'Sub' $P5001 = 'cuid_328_1382292146.58822' 
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
    .const 'Sub' $P5001 = "cuid_231_1382292146.58822" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/stage2/gen/NQPHLL.nqp")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "QAST"
    push $P5004, "QRegex"
    push $P5004, "NQPCursorRole"
    push $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1382292140.15261"
    push $P5004, "src/stage2/QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1382292134.86344"
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
    push $P5004, "MATCH"
    push $P5004, "Bool"
    push $P5004, "parse"
    push $P5004, "!INTERPOLATE"
    push $P5004, "!INTERPOLATE_REGEX"
    push $P5004, "orig"
    push $P5004, "target"
    push $P5004, "from"
    push $P5004, "pos"
    push $P5004, "CAPHASH"
    push $P5004, "!cursor_init"
    push $P5004, "!cursor_start_all"
    push $P5004, "!cursor_start_cur"
    push $P5004, "!cursor_start_fail"
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
    push $P5004, "throw_unrecog_backslash_seq"
    push $P5004, "termish"
    push $P5004, "term"
    push $P5004, "infix"
    push $P5004, "prefix"
    push $P5004, "postfix"
    push $P5004, "circumfix"
    push $P5004, "postcircumfix"
    push $P5004, "term:sym<circumfix>"
    push $P5004, "infixish"
    push $P5004, "prefixish"
    push $P5004, "postfixish"
    push $P5004, "nullterm"
    push $P5004, "nullterm_alt"
    push $P5004, "nulltermish"
    push $P5004, "quote_delimited"
    push $P5004, "quote_atom"
    push $P5004, "decint"
    push $P5004, "decints"
    push $P5004, "hexint"
    push $P5004, "hexints"
    push $P5004, "octint"
    push $P5004, "octints"
    push $P5004, "binint"
    push $P5004, "binints"
    push $P5004, "integer"
    push $P5004, "dec_number"
    push $P5004, "escale"
    push $P5004, "quote_escape"
    push $P5004, "quote_escape:sym<backslash>"
    push $P5004, "quote_escape:sym<stopper>"
    push $P5004, "quote_escape:sym<bs>"
    push $P5004, "quote_escape:sym<nl>"
    push $P5004, "quote_escape:sym<cr>"
    push $P5004, "quote_escape:sym<tab>"
    push $P5004, "quote_escape:sym<ff>"
    push $P5004, "quote_escape:sym<esc>"
    push $P5004, "quote_escape:sym<hex>"
    push $P5004, "quote_escape:sym<oct>"
    push $P5004, "quote_escape:sym<chr>"
    push $P5004, "quote_escape:sym<0>"
    push $P5004, "quote_escape:sym<misc>"
    push $P5004, "charname"
    push $P5004, "charnames"
    push $P5004, "charspec"
    push $P5004, "O"
    push $P5004, "panic"
    push $P5004, "peek_delimiters"
    push $P5004, "quote_EXPR"
    push $P5004, "quotemod_check"
    push $P5004, "starter"
    push $P5004, "stopper"
    push $P5004, "split_words"
    push $P5004, "EXPR"
    push $P5004, "EXPR_reduce"
    push $P5004, "EXPR_nonassoc"
    push $P5004, "ternary"
    push $P5004, "MARKER"
    push $P5004, "MARKED"
    push $P5004, "LANG"
    push $P5004, "$!shared"
    push $P5004, "$!from"
    push $P5004, "$!pos"
    push $P5004, "$!match"
    push $P5004, "$!name"
    push $P5004, "$!bstack"
    push $P5004, "$!cstack"
    push $P5004, "$!regexsub"
    push $P5004, "$!restart"
    push $P5004, "string_to_int"
    push $P5004, "ints_to_string"
    push $P5004, "CTXSAVE"
    push $P5004, "SET_BLOCK_OUTER_CTX"
    push $P5004, "apply_transcodings"
    push $P5004, "config"
    push $P5004, "force_gc"
    push $P5004, "name"
    push $P5004, "nqpevent"
    push $P5004, "run_profiled"
    push $P5004, "run_traced"
    push $P5004, "version_string"
    push $P5004, "vmstat"
    push $P5004, "stages"
    push $P5004, "is_precomp_stage"
    push $P5004, "is_textual_stage"
    push $P5004, "post"
    push $P5004, "pirbegin"
    push $P5004, "pir"
    push $P5004, "evalpmc"
    push $P5004, "is_compunit"
    push $P5004, "compunit_mainline"
    push $P5004, "compunit_coderefs"
    push $P5004, "recursion_limit"
    push $P5004, "Uninstantiable"
    push $P5004, "BUILD"
    push $P5004, "backend"
    push $P5004, "language"
    push $P5004, "compiler"
    push $P5004, "autoprint"
    push $P5004, "interactive"
    push $P5004, "interactive_result"
    push $P5004, "interactive_exception"
    push $P5004, "eval"
    push $P5004, "ctxsave"
    push $P5004, "parsegrammar"
    push $P5004, "parseactions"
    push $P5004, "interactive_banner"
    push $P5004, "interactive_prompt"
    push $P5004, "compiler_progname"
    push $P5004, "commandline_options"
    push $P5004, "command_line"
    push $P5004, "command_eval"
    push $P5004, "process_args"
    push $P5004, "evalfiles"
    push $P5004, "exists_stage"
    push $P5004, "compile"
    push $P5004, "start"
    push $P5004, "ast"
    push $P5004, "dumper"
    push $P5004, "usage"
    push $P5004, "version"
    push $P5004, "show-config"
    push $P5004, "verbose-config"
    push $P5004, "removestage"
    push $P5004, "addstage"
    push $P5004, "parse_name"
    push $P5004, "lineof"
    push $P5004, "user-progname"
    push $P5004, "cli-options"
    push $P5004, "cli-arguments"
    push $P5004, "default_backend"
    push $P5004, "@!stages"
    push $P5004, "$!parsegrammar"
    push $P5004, "$!parseactions"
    push $P5004, "@!cmdoptions"
    push $P5004, "$!compiler_progname"
    push $P5004, "$!language"
    push $P5004, "%!config"
    push $P5004, "$!user_progname"
    push $P5004, "@!cli-arguments"
    push $P5004, "%!cli-options"
    push $P5004, "$!backend"
    push $P5004, "init"
    push $P5004, "arguments"
    push $P5004, "options"
    push $P5004, "add-argument"
    push $P5004, "add-option"
    push $P5004, "@!arguments"
    push $P5004, "%!options"
    push $P5004, "stop-after-first-arg"
    push $P5004, "add-stopper"
    push $P5004, "split-option-aliases"
    push $P5004, "add-spec"
    push $P5004, "is-option"
    push $P5004, "wants-value"
    push $P5004, "optional-value"
    push $P5004, "@!specs"
    push $P5004, "%!stopper"
    push $P5004, "$!stop-after-first-arg"
    push $P5004, "slot_for_object"
    push $P5004, "add_object"
    push $P5004, "add_root_code_ref"
    push $P5004, "update_root_code_ref"
    push $P5004, "is_precompilation_mode"
    push $P5004, "add_load_dependency_task"
    push $P5004, "add_fixup_task"
    push $P5004, "sc"
    push $P5004, "handle"
    push $P5004, "code_ref_blocks"
    push $P5004, "load_dependency_tasks"
    push $P5004, "fixup_tasks"
    push $P5004, "$!sc"
    push $P5004, "$!handle"
    push $P5004, "$!precomp_mode"
    push $P5004, "$!num_code_refs"
    push $P5004, "$!code_ref_blocks"
    push $P5004, "@!load_dependency_tasks"
    push $P5004, "@!fixup_tasks"
    push $P5004, "%!addr_to_slot"
    push $P5004, "TOP"
    push $P5004, "statement"
    push $P5004, "directive"
    push $P5004, "directive:sym<b>"
    push $P5004, "directive:sym<c>"
    push $P5004, "directive:sym<d>"
    push $P5004, "directive:sym<e>"
    push $P5004, "directive:sym<f>"
    push $P5004, "directive:sym<g>"
    push $P5004, "directive:sym<o>"
    push $P5004, "directive:sym<s>"
    push $P5004, "directive:sym<u>"
    push $P5004, "directive:sym<x>"
    push $P5004, "escape"
    push $P5004, "escape:sym<%>"
    push $P5004, "literal"
    push $P5004, "idx"
    push $P5004, "flags"
    push $P5004, "size"
    push $P5004, ""
    push $P5004, "OPER"
    push $P5004, "alt_nfa__1_1382292146.97348"
    push $P5004, "alt_nfa__2_1382292147.00724"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1382292147.09001"
    push $P5004, "alt_nfa__4_1382292147.09068"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1382292147.11324"
    push $P5004, "Ee"
    push $P5004, "+-"
    push $P5004, "\\"
    push $P5004, "alt_nfa__6_1382292147.22077"
    push $P5004, "alt_nfa__7_1382292147.23499"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1382292147.27845"
    push $P5004, "],#"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1382292147.34126"
    push $P5004, "%"
    push $P5004, "alt_nfa__10_1382292152.14139"
    push $P5004, "alt_nfa__11_1382292152.14169"
    push $P5004, "precision"
    push $P5004, "bB"
    push $P5004, "di"
    push $P5004, "eE"
    push $P5004, "fF"
    push $P5004, "gG"
    push $P5004, "xX"
    push $P5004, "param_index"
    push $P5004, "plus"
    push $P5004, "minus"
    push $P5004, "zero"
    push $P5004, "hash"
    push $P5004, "alt_nfa__12_1382292152.39055"
    push $P5004, "star"
    push $P5004, "alt_nfa__13_1382292152.39787"
    push $P5004, "eEfFgG"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1382292129.71574"
    push $P5004, "src/stage2/gen/nqp-mo.nqp"
    push $P5004, "HLL::Grammar"
    push $P5004, "shared"
    push $P5004, "match"
    push $P5004, "bstack"
    push $P5004, "cstack"
    push $P5004, "regexsub"
    push $P5004, "restart"
    push $P5004, "HLL::Actions"
    push $P5004, "HLL::Backend::Parrot"
    push $P5004, "HLL::Backend::Default"
    push $P5004, "HLL::Compiler"
    push $P5004, "HLL::CommandLine::Result"
    push $P5004, "HLL::CommandLine::Parser"
    push $P5004, "HLL::World"
    push $P5004, "sprintf"
    push $P5004, "Syntax"
    push $P5004, "Actions"
    push $P5004, "Directives"
    push $P5004, "CompileTimeValue"
    push $P5004, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1382292137.35017"
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
    push $P5004, "NFA"
    push $P5004, "Grammar"
    push $P5004, "Backend"
    push $P5004, "Compiler"
    push $P5004, "CommandLine"
    push $P5004, "World"
    push $P5004, "$?PACKAGE"
    push $P5004, "$?ROLE"
    push $P5004, "$?CLASS"
    push $P5004, "Parrot"
    push $P5004, "Default"
    push $P5004, "Result"
    push $P5004, "Parser"
    .const 'Sub' $P5005 = 'cuid_328_1382292146.58822' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BgAAAEAAAAAFAAAAaAAAABUAAABkAQAAgC8AADoBAAAgQwAAYnMBAAEAAAB6cwEAAQAAAIpzAQC8cwEAAAAAAAUAAAAGAAAADgAAAA8AAABEAQAAAAAAAEcBAABIAQAAXAEAAF0BAAABAAAAAAAAAMYAAAABAAAAIgEAAIYBAAABAAAA4gEAADgCAAABAAAAlAIAAAIKAAABAAAAmgsAAGwOAAABAAAA1A4AAOIQAACvAAAAShEAAKARAAABAAAAoBEAAAQVAAABAAAAqBYAAOQXAAABAAAAfBgAAPAZAAABAAAAxBoAAHAcAACvAAAAxB0AABAeAAABAAAAEB4AAE4jAAABAAAA5iQAALwmAAABAAAAJCcAADYoAAABAAAAnigAAAwqAAABAAAAaCoAAMwqAAABAAAAKCsAANIrAACvAAAALiwAAIAsAAABAAAAgCwAAPIsAAABAAAATi0AAMAtAAAAAAAA9AAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAAAAAPUAAAADAAAAAgAAAAAA9gAAAAQAAAACAAEAAAAjAAAABwAAAAIAAQAAAFkAAAAIAAAAAgABAAAAZwAAAAkAAAACAAEAAABtAAAACgAAAAIAAQAAAHIAAAALAAAAAgAAAAAA9wAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAD4AAAAAAAAAAEAAAAKAAEAAAAMAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMA/////////////////////wAAAAD5AAAAAAAAAAIAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAA+gAAAAAAAAADAAAACgAAAAAACgB/AAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAZAAAAAgABAAAAaAAAABoAAAACAAEAAABpAAAAGwAAAAIAAQAAAGoAAAAcAAAAAgABAAAAawAAAB0AAAACAAEAAABsAAAAHgAAAAIAAQAAAH8AAAAfAAAAAgABAAAAgAAAACAAAAACAAEAAACBAAAAIQAAAAIAAQAAAIIAAAAiAAAAAgABAAAAgwAAACMAAAACAAEAAACEAAAAJAAAAAIAAQAAAIUAAAAlAAAAAgABAAAAhgAAACYAAAACAAEAAACHAAAAJwAAAAIAAQAAAIgAAAAoAAAAAgABAAAAiQAAACkAAAACAAEAAACKAAAAKgAAAAIAAQAAAIsAAAArAAAAAgABAAAAjAAAACwAAAACAAEAAACNAAAALQAAAAIAAQAAAI4AAAAuAAAAAgABAAAAjwAAAC8AAAACAAEAAACQAAAAMAAAAAIAAQAAAJEAAAAxAAAAAgABAAAAkgAAADIAAAACAAEAAACTAAAAMwAAAAIAAQAAAJQAAAA0AAAAAgABAAAAlQAAADUAAAACAAEAAACWAAAANgAAAAIAAQAAAJcAAAA3AAAAAgABAAAAmAAAADgAAAACAAEAAACZAAAAOQAAAAIAAQAAAJoAAAA6AAAAAgABAAAAmwAAADsAAAACAAEAAACcAAAAPAAAAAIAAQAAAJ0AAAA9AAAAAgABAAAAngAAAD4AAAACAAEAAACfAAAAPwAAAAIAAQAAAKAAAABAAAAAAgABAAAAoQAAAEEAAAACAAEAAACiAAAAQgAAAAIAAQAAAKMAAABDAAAAAgABAAAApAAAAEQAAAACAAEAAAClAAAARQAAAAIAAQAAAKYAAABGAAAAAgABAAAApwAAAEcAAAACAAEAAACoAAAASAAAAAIAAQAAAKkAAABJAAAAAgABAAAAqgAAAEoAAAACAAEAAACrAAAASwAAAAIAAQAAAKwAAABMAAAAAgABAAAArQAAAE0AAAACAAEAAACuAAAATgAAAAIAAQAAAK8AAABPAAAAAgABAAAAsAAAAFAAAAACAAEAAACxAAAAUQAAAAIAAAAAADYAAABSAAAAAgAAAAAABAAAAFMAAAACAAAAAAAFAAAAVAAAAAIAAAAAAAYAAABVAAAAAgAAAAAABwAAAFYAAAACAAAAAAAIAAAAVwAAAAIAAAAAAAkAAABYAAAAAgAAAAAACgAAAFkAAAACAAAAAAALAAAAWgAAAAIAAAAAAAwAAABbAAAAAgAAAAAADQAAAFwAAAACAAAAAAAOAAAAXQAAAAIAAAAAAA8AAABeAAAAAgAAAAAAEAAAAF8AAAACAAAAAAARAAAAYAAAAAIAAAAAABIAAABhAAAAAgAAAAAAEwAAAGIAAAACAAAAAAAUAAAAYwAAAAIAAAAAABUAAABkAAAAAgAAAAAAFgAAAGUAAAACAAAAAAAXAAAAZgAAAAIAAAAAABgAAABnAAAAAgAAAAAAGQAAAGgAAAACAAAAAAAaAAAAaQAAAAIAAAAAABsAAABqAAAAAgAAAAAAHAAAAGsAAAACAAAAAAAdAAAAbAAAAAIAAAAAAB4AAABtAAAAAgAAAAAAHwAAAG4AAAACAAAAAAAgAAAAbwAAAAIAAAAAACEAAABwAAAAAgAAAAAAIgAAAHEAAAACAAAAAAAjAAAAcgAAAAIAAAAAACQAAABzAAAAAgAAAAAAJQAAAHQAAAACAAAAAAAmAAAAdQAAAAIAAAAAACcAAAB2AAAAAgAAAAAAKAAAAHcAAAACAAAAAAApAAAAeAAAAAIAAAAAACoAAAB5AAAAAgAAAAAAKwAAAHoAAAACAAAAAAAsAAAAewAAAAIAAAAAAC0AAAB8AAAAAgAAAAAAMAAAAH0AAAACAAAAAAAyAAAAfgAAAAIAAAAAADMAAAB/AAAAAgAAAAAANAAAAIAAAAACAAAAAAA1AAAAgQAAAAIAAAAAADcAAACCAAAAAgAAAAAAOAAAAIMAAAACAAAAAAA5AAAAhAAAAAIAAAAAADoAAACFAAAAAgAAAAAAOwAAAIYAAAACAAAAAAA8AAAAhwAAAAIAAAAAAD0AAACIAAAAAgAAAAAAPgAAAIkAAAACAAAAAAA/AAAAigAAAAIAAAAAAEAAAACLAAAAAgAAAAAAQQAAAIwAAAACAAAAAABCAAAAjQAAAAIAAAAAAEMAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAAwAAAAIAAQAAAGcAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgABAAAAaQAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGgAAAAEAAQACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGgAAAAMAAgABAAAAZwAAAAoACQAAAI4AAAAEAAAAAAAAAAAAjwAAAAQAAQAAAAAAAACQAAAABAACAAAAAAAAAJEAAAAEAAMAAAAAAAAAkgAAAAQABAAAAAAAAACTAAAABAAFAAAAAAAAAJQAAAAEAAYAAAAAAAAAlQAAAAQABwAAAAAAAACWAAAABAAIAAAAAAAAAAIAAAAAAAMAAAADAP////////////////////8AAAAA+wAAAAAAAABEAAAACgAAAAAACgAsAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACXAAAAAgAAAAAARQAAAJgAAAACAAAAAABGAAAAmQAAAAIAAAAAAEcAAACaAAAAAgAAAAAASAAAAIcAAAACAAAAAABJAAAAWgAAAAIAAAAAAEoAAABTAAAAAgAAAAAASwAAAF4AAAACAAAAAABMAAAAXwAAAAIAAAAAAE0AAABrAAAAAgAAAAAATgAAAGwAAAACAAAAAABPAAAAYwAAAAIAAAAAAFAAAABlAAAAAgAAAAAAUQAAAGcAAAACAAAAAABSAAAAaQAAAAIAAAAAAFMAAACCAAAAAgAAAAAAVAAAAGEAAAACAAAAAABVAAAAYgAAAAIAAAAAAFYAAABvAAAAAgAAAAAAVwAAAHAAAAACAAAAAABYAAAAcQAAAAIAAAAAAFkAAAByAAAAAgAAAAAAWgAAAHMAAAACAAAAAABbAAAAdAAAAAIAAAAAAFwAAAB1AAAAAgAAAAAAXQAAAHYAAAACAAAAAABeAAAAdwAAAAIAAAAAAF8AAAB4AAAAAgAAAAAAYAAAAHkAAAACAAAAAABhAAAAegAAAAIAAAAAAGIAAAB7AAAAAgAAAAAAYwAAAHwAAAACAAAAAABkAAAAfQAAAAIAAAAAAGUAAAB+AAAAAgAAAAAAZgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABEAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAABEAAAAAwD/////////////////////AAAAAPwAAAAAAAAAZwAAAAoAAAAAAAoAHgAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAmwAAAAIAAAAAAGgAAACcAAAAAgAAAAAAaQAAAJ0AAAACAAAAAABqAAAAngAAAAIAAAAAAGsAAACfAAAAAgAAAAAAbAAAAKAAAAACAAAAAABtAAAAoQAAAAIAAAAAAG4AAACiAAAAAgAAAAAAbwAAAKMAAAACAAAAAABwAAAApAAAAAIAAAAAAHEAAAClAAAAAgAAAAAAcgAAAKYAAAACAAAAAABzAAAApwAAAAIAAAAAAHQAAACoAAAAAgAAAAAAdQAAAKkAAAACAAAAAAB2AAAAqgAAAAIAAAAAAHcAAACrAAAAAgAAAAAAeAAAAKwAAAACAAAAAAB5AAAArQAAAAIAAAAAAHoAAACuAAAAAgAAAAAAewAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABnAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAABnAAAAAwD/////////////////////AAAAAP0AAAAAAAAAfAAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAB8AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/gAAAAAAAAB/AAAACgAAAAAACgA1AAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACwAAAAAgAAAAAAgAAAALEAAAACAAAAAACBAAAAsgAAAAIAAAAAAIIAAACzAAAAAgAAAAAAgwAAAJwAAAACAAAAAACEAAAAtAAAAAIAAAAAAIUAAAC1AAAAAgAAAAAAhgAAALYAAAACAAAAAACHAAAAtwAAAAIAAAAAAIgAAAC4AAAAAgAAAAAAiQAAALkAAAACAAAAAACKAAAAgAAAAAIAAAAAAIsAAACkAAAAAgAAAAAAjAAAALoAAAACAAAAAACNAAAAuwAAAAIAAAAAAI4AAAC8AAAAAgAAAAAAjwAAAL0AAAACAAAAAACQAAAAvgAAAAIAAAAAAJEAAAC/AAAAAgAAAAAAkgAAAMAAAAACAAAAAACTAAAAwQAAAAIAAAAAAJQAAADCAAAAAgAAAAAAlQAAAMMAAAACAAAAAACWAAAAxAAAAAIAAAAAAJcAAADFAAAAAgAAAAAAmAAAAMYAAAACAAAAAACZAAAAGwAAAAIAAAAAAJoAAADHAAAAAgAAAAAAmwAAAMgAAAACAAAAAACcAAAAyQAAAAIAAAAAAJ0AAADKAAAAAgAAAAAAngAAAMsAAAACAAAAAACfAAAAzAAAAAIAAAAAAKAAAACfAAAAAgAAAAAAoQAAAM0AAAACAAAAAACiAAAAzgAAAAIAAAAAAKMAAADPAAAAAgAAAAAApAAAANAAAAACAAAAAAClAAAA0QAAAAIAAAAAAKYAAADSAAAAAgAAAAAApwAAANMAAAACAAAAAACoAAAArgAAAAIAAAAAAKkAAADUAAAAAgAAAAAA/wAAAAAAAAAAAAAABAAAAAAAAAACAAAAAAB/AAAAAgACAAAAGgAAAAIAAAAAAHwAAAACAAAAAAAAAQAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAAGgAAAAIAAgAAABoAAAABAAIAAgAAABoAAAACAAIAAAAaAAAAAQACAAIAAAAaAAAAAQABAAIAAgAAABoAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGgAAAAMAAgAAAAAAfwAAAAoACwAAANUAAAAEAAAAAAAAAAAA1gAAAAQAAQAAAAAAAADXAAAABAACAAAAAAAAANgAAAAEAAMAAAAAAAAA2QAAAAQABAAAAAAAAADaAAAABAAFAAAAAAAAANsAAAAEAAYAAAAAAAAA3AAAAAQABwAAAAAAAADdAAAABAAIAAAAAAAAAN4AAAAEAAkAAAAAAAAA3wAAAAQACgAAAAAAAAD/////////////////////AAAAAAEBAAAAAAAAqgAAAAoAAAAAAAoADwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAA4AAAAAIAAAAAAKsAAADhAAAAAgAAAAAArAAAAOIAAAACAAAAAACtAAAA4wAAAAIAAAAAAK4AAADkAAAAAgAAAAAArwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACqAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGgAAAAMAAgAAAAAAqgAAAAoAAgAAAOUAAAAEAAAAAAAAAAAA5gAAAAQAAQAAAAAAAAD/////////////////////AAAAAAIBAAAAAAAAsAAAAAoAAAAAAAoAEwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAAAAACxAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAA5wAAAAIAAAAAALIAAACwAAAAAgAAAAAAswAAAOgAAAACAAAAAAC0AAAA6QAAAAIAAAAAALUAAADqAAAAAgAAAAAAtgAAAOsAAAACAAAAAAC3AAAA7AAAAAIAAAAAALgAAADtAAAAAgAAAAAAuQAAABsAAAACAAAAAAC6AAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAALAAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAQACAAIAAAAaAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAALAAAAAKAAQAAADuAAAABAAAAAAAAAAAAOYAAAAEAAEAAAAAAAAA7wAAAAQAAgAAAAAAAADwAAAABAADAAAAAAAAAP////////////////////8AAAAAAwEAAAAAAAC7AAAACgAAAAAACgAXAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACwAAAAAgAAAAAAvAAAAPEAAAACAAAAAAC9AAAA8gAAAAIAAAAAAL4AAADzAAAAAgAAAAAAvwAAAPQAAAACAAAAAADAAAAA9QAAAAIAAAAAAMEAAAD2AAAAAgAAAAAAwgAAAPcAAAACAAAAAADDAAAA+AAAAAIAAAAAAMQAAAD5AAAAAgAAAAAAxQAAAPoAAAACAAAAAADGAAAA+wAAAAIAAAAAAMcAAAD8AAAAAgAAAAAAyAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAC7AAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAEAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAAC7AAAACgAIAAAA/QAAAAQAAAAAAAAAAAD+AAAABAABAAAAAAAAAP8AAAAEAAIAAAAAAAAAAAEAAAQAAwAAAAAAAAABAQAABAAEAAAAAAAAAAIBAAAEAAUAAAAAAAAAAwEAAAQABgAAAAAAAAAEAQAABAAHAAAAAAAAAP////////////////////8AAAAABAEAAAAAAADJAAAACgAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUBAAAAAAAAygAAAAoAAAAAAAoAVwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAGQAAAAIAAQAAAGgAAAAaAAAAAgABAAAAaQAAABsAAAACAAEAAABqAAAAHAAAAAIAAQAAAGsAAAAdAAAAAgABAAAAbAAAAB4AAAACAAEAAAB/AAAAHwAAAAIAAQAAAIAAAAAgAAAAAgABAAAAgQAAACEAAAACAAEAAACCAAAAIgAAAAIAAQAAAIMAAAAjAAAAAgABAAAAhAAAACQAAAACAAEAAACFAAAAJQAAAAIAAQAAAIYAAAAmAAAAAgABAAAAhwAAACcAAAACAAEAAACIAAAAKAAAAAIAAQAAAIkAAAApAAAAAgABAAAAigAAACoAAAACAAEAAACLAAAAKwAAAAIAAQAAAIwAAAAsAAAAAgABAAAAjQAAAC0AAAACAAEAAACOAAAALgAAAAIAAQAAAI8AAAAvAAAAAgABAAAAkAAAADAAAAACAAEAAACRAAAAMQAAAAIAAQAAAJIAAAAyAAAAAgABAAAAkwAAADMAAAACAAEAAACUAAAANAAAAAIAAQAAAJUAAAA1AAAAAgABAAAAlgAAADYAAAACAAEAAACXAAAANwAAAAIAAQAAAJgAAAA4AAAAAgABAAAAmQAAADkAAAACAAEAAACaAAAAOgAAAAIAAQAAAJsAAAA7AAAAAgABAAAAnAAAADwAAAACAAEAAACdAAAAPQAAAAIAAQAAAJ4AAAA+AAAAAgABAAAAnwAAAD8AAAACAAEAAACgAAAAQAAAAAIAAQAAAKEAAABBAAAAAgABAAAAogAAAEIAAAACAAEAAACjAAAAQwAAAAIAAQAAAKQAAABEAAAAAgABAAAApQAAAEUAAAACAAEAAACmAAAARgAAAAIAAQAAAKcAAABHAAAAAgABAAAAqAAAAEgAAAACAAEAAACpAAAASQAAAAIAAQAAAKoAAABKAAAAAgABAAAAqwAAAEsAAAACAAEAAACsAAAATAAAAAIAAQAAAK0AAABNAAAAAgABAAAArgAAAE4AAAACAAEAAACvAAAATwAAAAIAAQAAALAAAABQAAAAAgABAAAAsQAAAFEAAAACAAEAAACyAAAABQEAAAIAAAAAAMsAAACAAAAAAgAAAAAAzAAAAAYBAAACAAAAAADNAAAABwEAAAIAAAAAAM4AAAAIAQAAAgAAAAAAzwAAAAkBAAACAAAAAADQAAAACgEAAAIAAAAAANEAAAALAQAAAgAAAAAA0gAAAAwBAAACAAAAAADTAAAADQEAAAIAAAAAANQAAAAOAQAAAgAAAAAA1QAAAA8BAAACAAAAAADWAAAAEAEAAAIAAAAAANcAAAARAQAAAgAAAAAA2AAAABIBAAACAAAAAADZAAAAEwEAAAIAAAAAANoAAAAUAQAAAgAAAAAA2wAAABUBAAACAAAAAADcAAAAFgEAAAIAAAAAAN0AAAAXAQAAAgAAAAAA3gAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAADKAAAAAgABAAAAZwAAAAIAAgAAABoAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABpAAAAAAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAaAAAAAQABAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAaAAAAAwACAAEAAABnAAAACgAJAAAAjgAAAAQAAAAAAAAAAACPAAAABAABAAAAAAAAAJAAAAAEAAIAAAAAAAAAkQAAAAQAAwAAAAAAAACSAAAABAAEAAAAAAAAAJMAAAAEAAUAAAAAAAAAlAAAAAQABgAAAAAAAACVAAAABAAHAAAAAAAAAJYAAAAEAAgAAAAAAAAAAgAAAAAAygAAAAMA/////////////////////wAAAAAGAQAAAAAAAN8AAAAKAAAAAAAKABoAAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAAUBAAACAAAAAADgAAAABgEAAAIAAAAAAOIAAAAIAQAAAgAAAAAA4wAAAAkBAAACAAAAAADkAAAACgEAAAIAAAAAAOUAAAALAQAAAgAAAAAA5gAAAAwBAAACAAAAAADnAAAADQEAAAIAAAAAAOgAAAAOAQAAAgAAAAAA6QAAAA8BAAACAAAAAADqAAAAEAEAAAIAAAAAAOsAAAARAQAAAgAAAAAA7AAAABMBAAACAAAAAADtAAAAFAEAAAIAAAAAAO4AAAAVAQAAAgAAAAAA7wAAABcBAAACAAAAAADwAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAN8AAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAN8AAAADAP////////////////////8AAAAABwEAAAAAAADxAAAACgAAAAAACgAMAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAFAQAAAgAAAAAA8gAAAAYBAAACAAAAAADzAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAPEAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAPEAAAADAP////////////////////8AAAAAMgEAAAAAAAD1AAAACgAUAAAAWwEAAAIABQAAAAMAAABeAQAAAgAFAAAACAAAAF8BAAACAAUAAAAMAAAAYAEAAAIABQAAACIAAABhAQAAAgAFAAAAKwAAAGIBAAACAAUAAAAxAAAAYwEAAAIABQAAADcAAABkAQAAAgAFAAAAPAAAAGUBAAACAAUAAABAAAAAZgEAAAIABQAAAEUAAABnAQAAAgAFAAAASgAAAGgBAAACAAUAAABUAAAAaQEAAAIABQAAAFYAAABqAQAAAgAFAAAAXQAAAGsBAAACAAUAAABiAAAAbAEAAAIABQAAAGcAAABtAQAAAgAFAAAAbAAAAG4BAAACAAUAAAB1AAAAbwEAAAIABQAAAHgAAABwAQAAAgAFAAAAggAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAD1AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA9QAAAAMA/////////////////////wAAAAAzAQAAAAAAAPYAAAAKAAEAAABxAQAAAgABAAAAAwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAD2AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA9gAAAAMA/////////////////////wAAAAA0AQAAAAAAAPcAAAAKAAYAAAByAQAAAgAAAAAAAwAAAFkBAAACAAAAAABEAAAAcwEAAAIAAAAAADUBAAB0AQAAAgAAAAAAfwAAAHUBAAACAAAAAAA2AQAAdgEAAAIAAAAAALsAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAA9wAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAPcAAAADAP////////////////////8AAAAANwEAAAAAAAAAAQAAAwAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAEAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADgBAAAAAAAANQEAAAoAAgAAAHoBAAACAAAAAABnAAAAewEAAAIAAAAAAHwAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAANQEAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAADUBAAADAP////////////////////8AAAAAOQEAAAAAAAA2AQAACgACAAAAfAEAAAIAAAAAAKoAAAB9AQAAAgAAAAAAsAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAA2AQAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAANgEAAAMA/////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAACAAAABQAAAAAAAAABAAAAAgAAAAcAAAAUAAAAAQAAAAIAAAAHAAAADAEAAAEAAAACAAAABwAAACIBAAABAAAAAgAAAAcAAAA4AQAAAQAAAAIAAAAHAAAATgEAAAEAAAACAAAABwAAAGQBAAABAAAAAgAAAAcAAAB6AQAAAQAAAAIAAAAHAAAAkAEAAAEAAAACAAAABwAAAPABAAABAAAAAgAAAAcAAABeAgAAAQAAAAIAAAAHAAAA7AIAAAEAAAACAAAABwAAAOgDAAABAAAAAgAAAAcAAAA+BAAAAQAAAAIAAAAFAAAAngQAAAEAAAACAAAABwAAALIEAAABAAAAAgAAAAcAAACMBQAAAQAAAAIAAAAHAAAATgcAAAEAAAACAAAABwAAAHAIAAABAAAAAgAAAAcAAAB2CQAAAQAAAAIAAAAHAAAAlAoAAAEAAAACAAAABwAAAJoLAAABAAAAAgAAAAcAAAC4DAAAAQAAAAIAAAAHAAAAvg0AAAEAAAACAAAABwAAANwOAAABAAAAAgAAAAcAAADiDwAAAQAAAAIAAAAHAAAASBQAAAEAAAACAAAABwAAANQaAAABAAAAAgAAAAcAAADuGwAAAQAAAAIAAAAHAAAABBwAAAEAAAACAAAABwAAALocAAABAAAAAgAAAAcAAABeHQAAAQAAAAIAAAAHAAAAGB4AAAEAAAACAAAABwAAANIeAAABAAAAAgAAAAcAAACMHwAAAQAAAAIAAAAHAAAARiAAAAEAAAACAAAABwAAAAAhAAABAAAAAgAAAAcAAAC6IQAAAQAAAAIAAAAHAAAAPiMAAAEAAAACAAAABwAAAMIkAAABAAAAAgAAAAcAAACKJQAAAQAAAAIAAAAHAAAAUiYAAAEAAAACAAAABwAAAJwnAAABAAAAAgAAAAcAAADyJwAAAQAAAAIAAAAHAAAASCgAAAEAAAACAAAABwAAAJQoAAABAAAAAgAAAAcAAAAoKQAAAQAAAAIAAAAHAAAALioAAAEAAAACAAAABQAAAJYuAAABAAAAAgAAAAUAAACqLgAAAQAAAAIAAAAFAAAAvi4AAAEAAAACAAAABQAAANIuAAABAAAAAgAAAAcAAADmLgAAAQAAAAIAAAAHAAAAti8AAAEAAAACAAAABQAAAAwwAAABAAAAAgAAAAUAAAAgMAAAAQAAAAIAAAAFAAAANDAAAAEAAAACAAAABQAAAEgwAAABAAAAAgAAAAUAAABcMAAAAQAAAAIAAAAFAAAAcDAAAAEAAAACAAAABQAAAIQwAAABAAAAAgAAAAUAAACYMAAAAQAAAAIAAAAFAAAArDAAAAEAAAACAAAABQAAAMAwAAABAAAAAAAAAAQAAADUMAAAAAAAAAIAAAAFAAAA1DAAAAEAAAACAAAABQAAAOgwAAABAAAAAgAAAAUAAAD8MAAAAQAAAAIAAAAFAAAAEDEAAAEAAAACAAAABQAAACQxAAABAAAAAgAAAAUAAAA4MQAAAQAAAAIAAAAFAAAATDEAAAEAAAACAAAABQAAAGAxAAABAAAAAgAAAAUAAAB0MQAAAQAAAAIAAAAFAAAAiDEAAAEAAAACAAAABQAAAJwxAAABAAAAAgAAAAUAAACwMQAAAQAAAAIAAAAFAAAAxDEAAAEAAAACAAAABQAAANgxAAABAAAAAgAAAAUAAADsMQAAAQAAAAIAAAAFAAAAADIAAAEAAAACAAAABQAAABQyAAABAAAAAgAAAAUAAAAoMgAAAQAAAAIAAAAFAAAAPDIAAAEAAAACAAAABQAAAFAyAAABAAAAAgAAAAUAAABkMgAAAQAAAAIAAAAFAAAAeDIAAAEAAAACAAAABQAAAIwyAAABAAAAAgAAAAUAAACgMgAAAQAAAAIAAAAFAAAAtDIAAAEAAAACAAAABQAAAMgyAAABAAAAAgAAAAUAAADcMgAAAQAAAAIAAAAFAAAA8DIAAAEAAAACAAAABQAAAAQzAAABAAAAAgAAAAUAAAAYMwAAAQAAAAIAAAAFAAAALDMAAAEAAAACAAAABQAAAEAzAAABAAAAAgAAAAUAAABUMwAAAQAAAAIAAAAFAAAAaDMAAAEAAAAAAAAABQAAAHwzAAAAAAAAAgAAAAUAAAB8MwAAAQAAAAIAAAAFAAAAkDMAAAEAAAACAAAABQAAAKQzAAABAAAAAgAAAAUAAAC4MwAAAQAAAAIAAAAFAAAAzDMAAAEAAAACAAAABQAAAOAzAAABAAAAAgAAAAUAAAD0MwAAAQAAAAIAAAAFAAAACDQAAAEAAAACAAAABQAAABw0AAABAAAAAgAAAAUAAAAwNAAAAQAAAAIAAAAFAAAARDQAAAEAAAACAAAABQAAAFg0AAABAAAAAgAAAAUAAABsNAAAAQAAAAIAAAAFAAAAgDQAAAEAAAACAAAABQAAAJQ0AAABAAAAAgAAAAUAAACoNAAAAQAAAAIAAAAFAAAAvDQAAAEAAAACAAAABQAAANA0AAABAAAAAgAAAAUAAADkNAAAAQAAAAIAAAAFAAAA+DQAAAEAAAAAAAAABgAAAAw1AAAAAAAAAgAAAAUAAAAMNQAAAQAAAAIAAAAFAAAAIDUAAAEAAAAAAAAABwAAADQ1AAAAAAAAAgAAAAUAAAA0NQAAAQAAAAIAAAAFAAAASDUAAAEAAAACAAAABQAAAFw1AAABAAAAAgAAAAUAAABwNQAAAQAAAAIAAAAFAAAAhDUAAAEAAAACAAAABQAAAJg1AAABAAAAAgAAAAUAAACsNQAAAQAAAAIAAAAFAAAAwDUAAAEAAAACAAAABQAAANQ1AAABAAAAAgAAAAUAAADoNQAAAQAAAAIAAAAFAAAA/DUAAAEAAAACAAAABQAAABA2AAABAAAAAgAAAAUAAAAkNgAAAQAAAAIAAAAFAAAAODYAAAEAAAACAAAABQAAAEw2AAABAAAAAgAAAAUAAABgNgAAAQAAAAIAAAAFAAAAdDYAAAEAAAACAAAABQAAAIg2AAABAAAAAgAAAAUAAACcNgAAAQAAAAIAAAAFAAAAsDYAAAEAAAACAAAABQAAAMQ2AAABAAAAAgAAAAUAAADYNgAAAQAAAAIAAAAFAAAA7DYAAAEAAAACAAAABQAAAAA3AAABAAAAAgAAAAUAAAAUNwAAAQAAAAIAAAAFAAAAKDcAAAEAAAACAAAABQAAADw3AAABAAAAAgAAAAUAAABQNwAAAQAAAAIAAAAFAAAAZDcAAAEAAAACAAAABQAAAHg3AAABAAAAAgAAAAUAAACMNwAAAQAAAAIAAAAFAAAAoDcAAAEAAAACAAAABQAAALQ3AAABAAAAAgAAAAUAAADINwAAAQAAAAIAAAAFAAAA3DcAAAEAAAACAAAABQAAAPA3AAABAAAAAgAAAAUAAAAEOAAAAQAAAAIAAAAFAAAAGDgAAAEAAAACAAAABQAAACw4AAABAAAAAgAAAAUAAABAOAAAAQAAAAIAAAAFAAAAVDgAAAEAAAACAAAABQAAAGg4AAABAAAAAAAAAAgAAAB8OAAAAAAAAAIAAAAFAAAAfDgAAAEAAAACAAAABQAAAJA4AAABAAAAAgAAAAUAAACkOAAAAQAAAAIAAAAFAAAAuDgAAAEAAAACAAAABQAAAMw4AAABAAAAAAAAAAkAAADgOAAAAAAAAAIAAAAFAAAA4DgAAAEAAAACAAAABQAAAPQ4AAABAAAAAgAAAAUAAAAIOQAAAQAAAAIAAAAFAAAAHDkAAAEAAAACAAAABQAAADA5AAABAAAAAgAAAAUAAABEOQAAAQAAAAIAAAAFAAAAWDkAAAEAAAACAAAABQAAAGw5AAABAAAAAgAAAAUAAACAOQAAAQAAAAIAAAAFAAAAlDkAAAEAAAAAAAAACgAAAKg5AAAAAAAAAgAAAAUAAACoOQAAAQAAAAIAAAAFAAAAvDkAAAEAAAACAAAABQAAANA5AAABAAAAAgAAAAUAAADkOQAAAQAAAAIAAAAFAAAA+DkAAAEAAAACAAAABQAAAAw6AAABAAAAAgAAAAUAAAAgOgAAAQAAAAIAAAAFAAAANDoAAAEAAAACAAAABQAAAEg6AAABAAAAAgAAAAUAAABcOgAAAQAAAAIAAAAFAAAAcDoAAAEAAAACAAAABQAAAIQ6AAABAAAAAgAAAAUAAACYOgAAAQAAAAAAAAALAAAArDoAAAAAAAAAAAAADAAAAKw6AAAAAAAAAgAAAAcAAACsOgAAAQAAAAIAAAAFAAAAljsAAAEAAAACAAAABwAAAKo7AAABAAAAAgAAAAcAAACYPQAAAQAAAAIAAAAHAAAArj0AAAEAAAACAAAABwAAAIY/AAABAAAAAgAAAAcAAADyQAAAAQAAAAIAAAAHAAAAykIAAAEAAAACAAAABwAAAKJEAAABAAAAAgAAAAcAAAB6RgAAAQAAAAIAAAAHAAAAUkgAAAEAAAACAAAABwAAAC5KAAABAAAAAgAAAAcAAAAKTAAAAQAAAAIAAAAHAAAAdk0AAAEAAAACAAAABwAAAE5PAAABAAAAAgAAAAcAAABkTwAAAQAAAAIAAAAHAAAAhFAAAAEAAAACAAAABwAAADxRAAABAAAAAgAAAAcAAAAqUgAAAQAAAAIAAAAHAAAAPFQAAAEAAAAAAAAADQAAAGhVAAAAAAAAAgAAAAUAAABoVQAAAQAAAAIAAAAHAAAAfFUAAAEAAAACAAAABQAAAM5VAAABAAAAAgAAAAUAAADiVQAAAQAAAAIAAAAFAAAA9lUAAAEAAAACAAAABQAAAApWAAABAAAAAgAAAAUAAAAeVgAAAQAAAAIAAAAFAAAAMlYAAAEAAAACAAAABQAAAEZWAAABAAAAAgAAAAUAAABaVgAAAQAAAAIAAAAFAAAAblYAAAEAAAACAAAABQAAAIJWAAABAAAAAgAAAAUAAACWVgAAAQAAAAIAAAAFAAAAqlYAAAEAAAACAAAABQAAAL5WAAABAAAAAgAAAAUAAADSVgAAAQAAAAIAAAAFAAAA5lYAAAEAAAAAAAAADgAAAPpWAAAAAAAAAgAAAAUAAAD6VgAAAQAAAAIAAAAFAAAADlcAAAEAAAADAAAAAAAAACJXAAABAAAAAAAAAA8AAAAyVwAAAAAAAAAAAAAQAAAAMlcAAAAAAAAAAAAAEQAAADJXAAAAAAAAAwAAAAAAAAAyVwAAAQAAAAMAAAAAAAAAQlcAAAEAAAAEAAAABwAAAFJXAAABAAAABAAAAAcAAAAqYAAAAQAAAAQAAAAHAAAACmQAAAEAAAAEAAAABgAAAJpmAAABAAAABAAAAAcAAADaZgAAAQAAAAIAAAAFAAAAUmwAAAEAAAAAAAAAEgAAAGZsAAAAAAAABAAAAAcAAABmbAAAAQAAAAQAAAAHAAAAOm4AAAEAAAAEAAAABwAAADZwAAABAAAABAAAAAoAAACicgAAAQAAAAQAAAAHAAAAsnIAAAEAAAAEAAAABwAAAFp3AAABAAAABAAAAAcAAACKeQAAAQAAAAEAAAADAAAAanoAAAEAAAABAAAAAwAAABh7AAABAAAAAQAAAAMAAAAsigAAAQAAAAEAAAADAAAAZosAAAEAAAABAAAAAwAAACqeAAABAAAAAQAAAAMAAABMpQAAAQAAAAEAAAADAAAAOq0AAAEAAAABAAAAAwAAAM60AAABAAAAAQAAAAMAAAC0uQAAAQAAAAEAAAADAAAAmr4AAAEAAAABAAAAAwAAAMS/AAABAAAABAAAAAkAAACYxAAAAQAAAAQAAAAJAAAAvMQAAAEAAAAEAAAACQAAAOjEAAABAAAABAAAAAkAAAAUxQAAAQAAAAQAAAAJAAAAOMUAAAEAAAAEAAAACQAAAGTFAAABAAAABAAAAAkAAACQxQAAAQAAAAQAAAAJAAAAtMUAAAEAAAAEAAAACQAAAODFAAABAAAABAAAAAkAAAAExgAAAQAAAAQAAAAJAAAAKMYAAAEAAAAEAAAACQAAAFTGAAABAAAABAAAAAkAAAB4xgAAAQAAAAQAAAAJAAAAnMYAAAEAAAAEAAAACQAAAMDGAAABAAAABAAAAAkAAADkxgAAAQAAAAQAAAAJAAAACMcAAAEAAAAEAAAACQAAADTHAAABAAAABAAAAAkAAABgxwAAAQAAAAQAAAAJAAAAjMcAAAEAAAAEAAAACQAAALjHAAABAAAABAAAAAkAAADkxwAAAQAAAAQAAAAJAAAAEMgAAAEAAAAEAAAACQAAADTIAAABAAAABAAAAAkAAABYyAAAAQAAAAEAAAADAAAAfMgAAAEAAAABAAAAAwAAAPD1AAABAAAAAQAAAAMAAACk+AAAAQAAAAEAAAADAAAA5ioBAAEAAAABAAAAAwAAACwsAQABAAAAAQAAAAMAAACCLgEAAQAAAAMAAAAAAAAApi8BAAEAAAADAAAAAAAAALYvAQABAAAAAwAAAAAAAADGLwEAAQAAAAAAAAATAAAA1i8BAAAAAAAAAAAAFAAAANYvAQAAAAAABAAAAAMAAADWLwEAAQAAAAMAAAAAAAAAIjABAAEAAAADAAAAAAAAADIwAQABAAAACwAAAAAAAAAAAAEAAQABAAEAAwALAAAAAAABAAAACgAEAAAAXAAAAAUAAAAAAAAAAEAYAQAABAAAAAAAAAAAAFQAAAAFAAAAAAAAAPA/XQAAAAUAAAAAAAAAAEAHAAQAAAAHAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBcAAAABAABAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFQAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAXQAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAIAAAABAAEAAQABAAEAAwALAAAAAAADAAAAAQABAAEAAQABAAMACwAAAAAABAAAAAEAAQABAAEAAQADAAsAAAAAAAUAAAABAAEAAQABAAEAAwALAAAAAAAGAAAAAQABAAEAAQABAAMACwAAAAAABwAAAAEAAQABAAEAAQADAAsAAAAAAAgAAAAKAAIAAABYAAAABQAAAAAAAADwPxgBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAkAAAAKAAMAAAAZAQAABQAAAAAAAADwP1UAAAAFAAAAAAAAAPA/GAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBVAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACgAAAAoAAwAAABkBAAAFAAAAAAAAAPA/VgAAAAUAAAAAAAAA8D8YAQAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFYAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAsAAAAKAAQAAAAZAQAABAABAAAAAAAAAFcAAAAEAAEAAAAAAAAAGAEAAAQAAAAAAAAAAABZAAAABAABAAAAAAAAAAcAAgAAAAcAAAAAAAcABgAAAAQACAAAAAAAAAAGAFcAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAWQAAAAQAAAAAAAAAAAAKAAEAAAAaAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVwAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBZAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAAAwAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAADQAAAAoAAgAAAFQAAAAFAAAAAAAAAPA/GAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBeAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAACgAEAAAAhAAAAAUAAAAAAAAA8D8YAQAABAAAAAAAAAAAAGIAAAAFAAAAAAAAAABAhQAAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGIAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhQAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABAAAAAKAAUAAAAYAQAABAAAAAAAAAAAAG4AAAAFAAAAAAAAAPA/hAAAAAUAAAAAAAAA8D9iAAAABQAAAAAAAAAAQIUAAAAFAAAAAAAAAPA/BAAAAAAAAAAAAAoAAQAAABsBAAAHAAMAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBuAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYgAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCFAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAABEAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAEgAAAAoAAgAAABgBAAAEAAAAAAAAAAAAYwAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABMAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGABwBAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAUAAAACgACAAAAGAEAAAQAAAAAAAAAAABlAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZQAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFQAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAHQEAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABYAAAAKAAIAAAAYAQAABAAAAAAAAAAAAGcAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBnAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAXAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAeAQAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAGAAAAAoAAgAAABgBAAAEAAAAAAAAAAAAaQAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABkAAAAKAAYAAAAYAQAABAAAAAAAAAAAAB8BAAAFAAAAAAAAAPA/aQAAAAUAAAAAAAAA8D9nAAAABQAAAAAAAADwP2UAAAAFAAAAAAAAAPA/YwAAAAUAAAAAAAAA8D8HAAcAAAAHAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAgAAAAAAAAAEAAgAAAAAAAAABgBjAAAABAAAAAAAAAAAAAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAADAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAAFAAAAAAAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAACgACAAAAIAEAAAcABAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAAIQEAAAcAAgAAAAcABwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAADAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAAFAAAAAAAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAYwAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAaAAAACgADAAAAIgEAAAQAAQAAAAAAAAAYAQAABAAAAAAAAAAAAG0AAAAEAAEAAAAAAAAABwAQAAAABwAAAAAABwAJAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAOAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABwAAAAAACgABAAAAIwEAAAcAAwAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAJAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAUAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAcAAAAAAAEAAQADAAsAAAAAABsAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwAGAAAABQAAAAAAAAAYQAYAJQEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAEAAwALAAAAAAAdAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAB4AAAAKAAIAAAAYAQAABAAAAAAAAAAAAIUAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHwAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIAAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIQAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIgAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIwAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJAAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJQAAAAoAAwAAABgBAAAEAAAAAAAAAAAAZQAAAAUAAAAAAAAA8D9mAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAnAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAZQAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAACYAAAAKAAMAAAAYAQAABAAAAAAAAAAAAGcAAAAFAAAAAAAAAPA/aAAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAKAEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGcAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAnAAAACgACAAAAGAEAAAQAAAAAAAAAAAB+AAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACgAAAAKAAIAAAAYAQAABAAAAAAAAAAAACkBAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAKQAAAAoABAAAABgBAAAFAAAAAAAAAPA/KgEAAAUAAAAAAAAA8D8rAQAABQAAAAAAAADwPywBAAAFAAAAAAAAAPA/BwADAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAtAQAABwACAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAACAAAAAAAuAAAAAgAAAAAALwAAAAMACwAAAAAAKgAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAArAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACwAAAAKAAIAAABrAAAABAABAAAAAAAAABgBAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQAHAAEAAAACAAAAAAAxAAAAAwALAAAAAAAtAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAYAAAAFAAAAAAAAABBABAAgAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAuAQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAALgAAAAoAAgAAABgBAAAEAAAAAAAAAAAAfAAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAAC8AAAAKAAIAAAAYAQAABAAAAAAAAAAAAH0AAAAFAAAAAAAAAPA/BwAKAAAABwAAAAAABwAMAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAAYQAYALwEAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgCAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH0AAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAkAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAACgABAAAAMAEAAAcABAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH0AAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwAIAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYALwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAADAAAAABAAEAAQABAAMACwAAAAAAMQAAAAEAAQABAAEAAwALAAAAAAAyAAAAAQABAAEAAQADAAsAAAAAADMAAAABAAEAAQABAAMACwAAAAAANAAAAAoAAgAAABgBAAAEAAAAAAAAAAAAYQAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADUAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAANgAAAAEAAQABAAEAAwALAAAAAAA3AAAAAQABAAEAAQADAAsAAAAAADgAAAABAAEAAQABAAMACwAAAAAAOQAAAAEAAQABAAEAAwALAAAAAAA6AAAAAQABAAEAAQADAAsAAAAAADsAAAABAAEAAQABAAMACwAAAAAAPAAAAAEAAQABAAEAAwALAAAAAAA9AAAAAQABAAEAAQADAAsAAAAAAD4AAAABAAEAAQABAAMACwAAAAAAPwAAAAEAAQABAAEAAwALAAAAAABAAAAAAQABAAEAAQADAAsAAAAAAEEAAAABAAEAAQABAAMACwAAAAAAQgAAAAEAAQABAAEAAwALAAAAAABDAAAAAQABAAEAAQADAAsAAAAAAEQAAAABAAEAAQABAAMACwAAAAAARQAAAAEAAQABAAEAAwALAAAAAABGAAAAAQABAAEAAQADAAsAAAAAAEcAAAABAAEAAQABAAMACwAAAAAASAAAAAEAAQABAAEAAwALAAAAAABJAAAAAQABAAEAAQADAAsAAAAAAEoAAAABAAEAAQABAAMACwAAAAAASwAAAAEAAQABAAEAAwALAAAAAABMAAAAAQABAAEAAQADAAsAAAAAAE0AAAABAAEAAQABAAMACwAAAAAATgAAAAEAAQABAAEAAwALAAAAAABPAAAAAQABAAEAAQADAAsAAAAAAFAAAAABAAEAAQABAAMACwAAAAAAUQAAAAEAAQABAAEAAwALAAAAAABSAAAAAQABAAEAAQADAAsAAAAAAFMAAAABAAEAAQABAAMACwAAAAAAVAAAAAEAAQABAAEAAwALAAAAAABVAAAAAQABAAEAAQADAAsAAAAAAFYAAAABAAEAAQABAAMACwAAAAAAVwAAAAEAAQABAAEAAwALAAAAAABYAAAAAQABAAEAAQADAAsAAAAAAFkAAAABAAEAAQABAAMACwAAAAAAWgAAAAEAAQABAAEAAwALAAAAAABbAAAAAQABAAEAAQADAAsAAAAAAFwAAAABAAEAAQABAAMACwAAAAAAXQAAAAEAAQABAAEAAwALAAAAAABeAAAAAQABAAEAAQADAAsAAAAAAF8AAAABAAEAAQABAAMACwAAAAAAYAAAAAEAAQABAAEAAwALAAAAAABhAAAAAQABAAEAAQADAAsAAAAAAGIAAAABAAEAAQABAAMACwAAAAAAYwAAAAEAAQABAAEAAwALAAAAAABkAAAAAQABAAEAAQADAAsAAAAAAGUAAAABAAEAAQABAAMACwAAAAAAZgAAAAEAAQABAAEAAwALAAAAAABnAAAAAQABAAEAAQADAAsAAAAAAGgAAAABAAEAAQABAAMACwAAAAAAaQAAAAEAAQABAAEAAwALAAAAAABqAAAAAQABAAEAAQADAAsAAAAAAGsAAAABAAEAAQABAAMACwAAAAAAbAAAAAEAAQABAAEAAwALAAAAAABtAAAAAQABAAEAAQADAAsAAAAAAG4AAAABAAEAAQABAAMACwAAAAAAbwAAAAEAAQABAAEAAwALAAAAAABwAAAAAQABAAEAAQADAAsAAAAAAHEAAAABAAEAAQABAAMACwAAAAAAcgAAAAEAAQABAAEAAwALAAAAAABzAAAAAQABAAEAAQADAAsAAAAAAHQAAAABAAEAAQABAAMACwAAAAAAdQAAAAEAAQABAAEAAwALAAAAAAB2AAAAAQABAAEAAQADAAsAAAAAAHcAAAABAAEAAQABAAMACwAAAAAAeAAAAAEAAQABAAEAAwALAAAAAAB5AAAAAQABAAEAAQADAAsAAAAAAHoAAAABAAEAAQABAAMACwAAAAAAewAAAAEAAQABAAEAAwALAAAAAAB8AAAAAQABAAEAAQADAAsAAAAAAH0AAAABAAEAAQABAAMACwAAAAAAfgAAAAEAAQABAAEAAwALAAAAAAB/AAAAAQABAAEAAQADAAsAAAAAAIAAAAABAAEAAQABAAMACwAAAAAAgQAAAAEAAQABAAEAAwALAAAAAACCAAAAAQABAAEAAQADAAsAAAAAAIMAAAABAAEAAQABAAMACwAAAAAAhAAAAAEAAQABAAEAAwALAAAAAACFAAAAAQABAAEAAQADAAsAAAAAAIYAAAABAAEAAQABAAMACwAAAAAAhwAAAAEAAQABAAEAAwALAAAAAACIAAAAAQABAAEAAQADAAsAAAAAAIkAAAABAAEAAQABAAMACwAAAAAAigAAAAEAAQABAAEAAwALAAAAAACLAAAAAQABAAEAAQADAAsAAAAAAIwAAAABAAEAAQABAAMACwAAAAAAjQAAAAEAAQABAAEAAwALAAAAAACOAAAAAQABAAEAAQADAAsAAAAAAI8AAAABAAEAAQABAAMACwAAAAAAkAAAAAEAAQABAAEAAwALAAAAAACRAAAAAQABAAEAAQADAAsAAAAAAJIAAAABAAEAAQABAAMACwAAAAAAkwAAAAEAAQABAAEAAwALAAAAAACUAAAAAQABAAEAAQADAAsAAAAAAJUAAAABAAEAAQABAAMACwAAAAAAlgAAAAEAAQABAAEAAwALAAAAAACXAAAAAQABAAEAAQADAAsAAAAAAJgAAAABAAEAAQABAAMACwAAAAAAmQAAAAEAAQABAAEAAwALAAAAAACaAAAAAQABAAEAAQADAAsAAAAAAJsAAAABAAEAAQABAAMACwAAAAAAnAAAAAEAAQABAAEAAwALAAAAAACdAAAAAQABAAEAAQADAAsAAAAAAJ4AAAABAAEAAQABAAMACwAAAAAAnwAAAAEAAQABAAEAAwALAAAAAACgAAAAAQABAAEAAQADAAsAAAAAAKEAAAABAAEAAQABAAMACwAAAAAAogAAAAEAAQABAAEAAwALAAAAAACjAAAAAQABAAEAAQADAAsAAAAAAKQAAAABAAEAAQABAAMACwAAAAAApQAAAAEAAQABAAEAAwALAAAAAACmAAAAAQABAAEAAQADAAsAAAAAAKcAAAABAAEAAQABAAMACwAAAAAAqAAAAAEAAQABAAEAAwALAAAAAACpAAAAAQABAAEAAQADAAsAAAAAAKoAAAABAAEAAQABAAMACwAAAAAAqwAAAAEAAQABAAEAAwALAAAAAACsAAAAAQABAAEAAQADAAsAAAAAAK0AAAABAAEAAQABAAMACwAAAAAArgAAAAEAAQABAAEAAwALAAAAAACvAAAAAQABAAEAAQADAAsAAAAAALAAAAABAAEAAQABAAMACwAAAAAAsQAAAAEAAQABAAEAAwALAAAAAACyAAAAAQABAAEAAQADAAsAAAAAALMAAAABAAEAAQABAAMACwAAAAAAtAAAAAEAAQABAAEAAwALAAAAAAC1AAAAAQABAAEAAQADAAsAAAAAALYAAAABAAEAAQABAAMACwAAAAAAtwAAAAEAAQABAAEAAwALAAAAAAC4AAAAAQABAAEAAQADAAsAAAAAALkAAAABAAEAAQABAAMACwAAAAAAugAAAAEAAQABAAEAAwALAAAAAAC7AAAAAQABAAEAAQADAAsAAAAAALwAAAABAAEAAQABAAMACwAAAAAAvQAAAAEAAQABAAEAAwALAAAAAAC+AAAACgACAAAAGAEAAAQAAAAAAAAAAAAGAQAABQAAAAAAAAAAQAcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAAYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAC/AAAAAQABAAEAAQADAAsAAAAAAMAAAAAKAAQAAAAYAQAABAAAAAAAAAAAAAcBAAAFAAAAAAAAAPA/EgEAAAUAAAAAAAAA8D8UAQAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcABgAAAAUAAAAAAAAAGEAGADEBAAAEAAIAAAAAAAAABQAAAAAAAAAcQAYAMQEAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAIAAAAyAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYABwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgASAQAABAAAAAAAAAAAADMBAAAHAAIAAAAHAAMAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAxAQAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAHEAGADEBAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAwQAAAAEAAQABAAEAAQADAAsAAAAAAMIAAAAKAAYAAAAYAQAABAAAAAAAAAAAABUBAAAFAAAAAAAAAPA/FgEAAAUAAAAAAAAAAEAXAQAABQAAAAAAAADwPzQBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFwEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAXAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADUBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADDAAAACgAFAAAAGAEAAAQAAAAAAAAAAAAVAQAABQAAAAAAAADwPxYBAAAFAAAAAAAAAABAFwEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAxAAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANgEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMUAAAAKAAYAAAAYAQAABAAAAAAAAAAAABUBAAAFAAAAAAAAAPA/FgEAAAUAAAAAAAAAAEAXAQAABQAAAAAAAADwPzQBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFwEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAXAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADcBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADGAAAACgAGAAAAGAEAAAQAAAAAAAAAAAAVAQAABQAAAAAAAADwPxYBAAAFAAAAAAAAAABAFwEAAAUAAAAAAAAA8D80AQAABQAAAAAAAADwPykBAAAFAAAAAAAAAPA/BwAIAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFQEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAWAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABcBAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAFwEAAAQABwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA4AQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAxwAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOQEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMgAAAAKAAYAAAAYAQAABAAAAAAAAAAAABUBAAAFAAAAAAAAAPA/FgEAAAUAAAAAAAAAAEAXAQAABQAAAAAAAADwPzQBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFwEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAXAQAABAAHAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAyQAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcwAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADKAAAACgAFAAAAGAEAAAQAAAAAAAAAAAAVAQAABQAAAAAAAADwPxYBAAAFAAAAAAAAAABAFwEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAywAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOgEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMwAAAABAAEAAQABAAEAAwALAAAAAADNAAAACgAEAAAAGAEAAAQAAAAAAAAAAAAWAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAWAQAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABcBAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADOAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABxABgAxAQAABAADAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAzwAAAAoAAgAAADsBAAAFAAAAAAAAAPA/GAEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAABAAEAAQADAAsAAAAAANAAAAAKAAYAAABNAAAABAABAAAAAAAAABgBAAAEAAAAAAAAAAAAPAEAAAQAAQAAAAAAAAA9AQAABAABAAAAAAAAAD4BAAAEAAEAAAAAAAAAPwEAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAAAAAAAAAAAAKAAEAAABAAQAABwAFAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAA0QAAAAoAAgAAABgBAAAEAAAAAAAAAAAAQQEAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAAAAAAAAAAAAKAAEAAABCAQAABwACAAAABwACAAAABwAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAA0gAAAAEAAQABAAEAAwALAAAAAADTAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgBDAQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAA1AAAAAEAAQABAAEAAwALAAAAAADVAAAAAQABAAEAAQADAAsAAAAAANYAAAABAAEAAQABAAMACwAAAAAA1wAAAAEAAQABAAEAAwALAAAAAADYAAAAAQABAAEAAQADAAsAAAAAANkAAAABAAEAAQABAAMACwAAAAAA2gAAAAEAAQABAAEAAwALAAAAAADbAAAAAQABAAEAAQADAAsAAAAAANwAAAABAAEAAQABAAMACwAAAAAA3QAAAAEAAQABAAEAAwALAAAAAADeAAAAAQABAAEAAQADAAsAAAAAAN8AAAABAAEAAQABAAMACwAAAAAA4AAAAAEAAQABAAEAAwALAAAAAADhAAAAAQABAAEAAQADAAsAAAAAAOIAAAABAAEAAQABAAMACwAAAAAA4wAAAAEAAQABAAEAAwALAAAAAADkAAAAAQABAAEAAQADAEUBAAAHAAAAAAAKAAAAAABGAQAABwAAAAAACgAAAAAADAAAAAcAAAAAAAoAAAAAAAYASQEAAAcAAAAAAAoAPQAAAFIAAAACAAAAAAAEAAAAUwAAAAIAAAAAAAUAAABUAAAAAgAAAAAABgAAAFUAAAACAAAAAAAHAAAAVgAAAAIAAAAAAAgAAABXAAAAAgAAAAAACQAAAFgAAAACAAAAAAAKAAAAWQAAAAIAAAAAAAsAAABaAAAAAgAAAAAADAAAAFsAAAACAAAAAAANAAAAXAAAAAIAAAAAAA4AAABdAAAAAgAAAAAADwAAAF4AAAACAAAAAAAQAAAAXwAAAAIAAAAAABEAAABgAAAAAgAAAAAAEgAAAGEAAAACAAAAAAATAAAAYgAAAAIAAAAAABQAAABjAAAAAgAAAAAAFQAAAGQAAAACAAAAAAAWAAAAZQAAAAIAAAAAABcAAABmAAAAAgAAAAAAGAAAAGcAAAACAAAAAAAZAAAAaAAAAAIAAAAAABoAAABpAAAAAgAAAAAAGwAAAGoAAAACAAAAAAAcAAAAawAAAAIAAAAAAB0AAABsAAAAAgAAAAAAHgAAAG0AAAACAAAAAAAfAAAAbgAAAAIAAAAAACAAAABvAAAAAgAAAAAAIQAAAHAAAAACAAAAAAAiAAAAcQAAAAIAAAAAACMAAAByAAAAAgAAAAAAJAAAAHMAAAACAAAAAAAlAAAAdAAAAAIAAAAAACYAAAB1AAAAAgAAAAAAJwAAAHYAAAACAAAAAAAoAAAAdwAAAAIAAAAAACkAAAB4AAAAAgAAAAAAKgAAAHkAAAACAAAAAAArAAAAegAAAAIAAAAAACwAAAB7AAAAAgAAAAAALQAAAHwAAAACAAAAAAAwAAAAfQAAAAIAAAAAADIAAAB+AAAAAgAAAAAAMwAAAH8AAAACAAAAAAA0AAAAgAAAAAIAAAAAADUAAABRAAAAAgAAAAAANgAAAIEAAAACAAAAAAA3AAAAggAAAAIAAAAAADgAAACDAAAAAgAAAAAAOQAAAIQAAAACAAAAAAA6AAAAhQAAAAIAAAAAADsAAACGAAAAAgAAAAAAPAAAAIcAAAACAAAAAAA9AAAAiAAAAAIAAAAAAD4AAACJAAAAAgAAAAAAPwAAAIoAAAACAAAAAABAAAAAiwAAAAIAAAAAAEEAAACMAAAAAgAAAAAAQgAAAI0AAAACAAAAAABDAAAABwA9AAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAAMAAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAcAAAAAAAcAAQAAAAIAAQAAAGcAAAAHAAAAAAACAAEAAABnAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAAMAAAACAAEAAABnAAAAAgACAAAAGgAAAAcAAAAAAAoADAAAADQAAAAKAAIAAABUAAAABwABAAAABgBaAAAAbgAAAAcADQAAAAYAbwAAAAYAcAAAAAYAcQAAAAYAcgAAAAYAcwAAAAYAdAAAAAYAdQAAAAYAdgAAAAYAdwAAAAYAeAAAAAYAeQAAAAYAegAAAAYAewAAAFQAAAACAAAAAAAIAQAAbgAAAAIAAAAAAAkBAAAaAQAAAgAAAAAACgEAABsBAAACAAAAAAALAQAAIAEAAAIAAAAAAAwBAAAhAQAAAgAAAAAADQEAACMBAAACAAAAAAAOAQAAJwEAAAIAAAAAAA8BAAAoAQAAAgAAAAAAEAEAAC0BAAACAAAAAAARAQAAMAEAAAIAAAAAABIBAAAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBKAQAABgCOAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGACAAAAAGAI8AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYAIQAAAAYAkAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBLAQAABgCRAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAJ4AAAAGAJIAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATAEAAAYAkwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBNAQAABgCUAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAE4BAAAGAJUAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATwEAAAYAlgAAAAcAAAAAAAEABgBQAQAABwAAAAAACgAiAAAAlwAAAAIAAAAAAEUAAACYAAAAAgAAAAAARgAAAJkAAAACAAAAAABHAAAAmgAAAAIAAAAAAEgAAACHAAAAAgAAAAAASQAAAFoAAAACAAAAAABKAAAAUwAAAAIAAAAAAEsAAABeAAAAAgAAAAAATAAAAF8AAAACAAAAAABNAAAAawAAAAIAAAAAAE4AAABsAAAAAgAAAAAATwAAAGMAAAACAAAAAABQAAAAZQAAAAIAAAAAAFEAAABnAAAAAgAAAAAAUgAAAGkAAAACAAAAAABTAAAAggAAAAIAAAAAAFQAAABhAAAAAgAAAAAAVQAAAGIAAAACAAAAAABWAAAAbwAAAAIAAAAAAFcAAABwAAAAAgAAAAAAWAAAAHEAAAACAAAAAABZAAAAcgAAAAIAAAAAAFoAAABzAAAAAgAAAAAAWwAAAHQAAAACAAAAAABcAAAAdQAAAAIAAAAAAF0AAAB2AAAAAgAAAAAAXgAAAHcAAAACAAAAAABfAAAAeAAAAAIAAAAAAGAAAAB5AAAAAgAAAAAAYQAAAHoAAAACAAAAAABiAAAAewAAAAIAAAAAAGMAAAB8AAAAAgAAAAAAZAAAAH0AAAACAAAAAABlAAAAfgAAAAIAAAAAAGYAAAAHACIAAAACAAAAAABFAAAAAgAAAAAARgAAAAIAAAAAAEcAAAACAAAAAABIAAAAAgAAAAAASQAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAWAAAAAIAAAAAAFkAAAACAAAAAABaAAAAAgAAAAAAWwAAAAIAAAAAAFwAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZAAAAAIAAAAAAGUAAAACAAAAAABmAAAABwAAAAAABwABAAAAAgACAAAAGgAAAAcAAAAAAAIAAgAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAARAAAAAIAAgAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAAAAAABwAAAAAAAQAGAFEBAAAHAAAAAAAKABQAAACbAAAAAgAAAAAAaAAAAJwAAAACAAAAAABpAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACkAAAAAgAAAAAAcQAAAKUAAAACAAAAAAByAAAApgAAAAIAAAAAAHMAAACnAAAAAgAAAAAAdAAAAKgAAAACAAAAAAB1AAAAqQAAAAIAAAAAAHYAAACqAAAAAgAAAAAAdwAAAKsAAAACAAAAAAB4AAAArAAAAAIAAAAAAHkAAACtAAAAAgAAAAAAegAAAK4AAAACAAAAAAB7AAAABwAUAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABnAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAAAAAAHAAAAAAABAAYAUgEAAAcAAAAAAAoAAQAAANQAAAACAAAAAAB9AAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAH4AAAAGAFMBAAAHAAsAAAACAAAAAAATAQAAAgAAAAAAFAEAAAIAAAAAABUBAAACAAAAAAAWAQAAAgAAAAAAFwEAAAIAAAAAABgBAAACAAAAAAAZAQAAAgAAAAAAGgEAAAIAAAAAABsBAAACAAAAAAAcAQAAAgAAAAAAHQEAAAoAKwAAALAAAAACAAAAAACAAAAAsQAAAAIAAAAAAIEAAACyAAAAAgAAAAAAggAAALMAAAACAAAAAACDAAAAnAAAAAIAAAAAAIQAAAC0AAAAAgAAAAAAhQAAALUAAAACAAAAAACGAAAAtgAAAAIAAAAAAIcAAAC3AAAAAgAAAAAAiAAAALgAAAACAAAAAACJAAAAuQAAAAIAAAAAAIoAAACAAAAAAgAAAAAAiwAAAKQAAAACAAAAAACMAAAAugAAAAIAAAAAAI0AAAC7AAAAAgAAAAAAjgAAALwAAAACAAAAAACPAAAAvQAAAAIAAAAAAJAAAAC+AAAAAgAAAAAAkQAAAL8AAAACAAAAAACSAAAAwAAAAAIAAAAAAJMAAADBAAAAAgAAAAAAlAAAAMIAAAACAAAAAACVAAAAwwAAAAIAAAAAAJYAAADEAAAAAgAAAAAAlwAAAMUAAAACAAAAAACYAAAAxgAAAAIAAAAAAJkAAAAbAAAAAgAAAAAAmgAAAMcAAAACAAAAAACbAAAAyAAAAAIAAAAAAJwAAADJAAAAAgAAAAAAnQAAAMoAAAACAAAAAACeAAAAywAAAAIAAAAAAJ8AAADMAAAAAgAAAAAAoAAAAJ8AAAACAAAAAAChAAAAzQAAAAIAAAAAAKIAAADOAAAAAgAAAAAAowAAAM8AAAACAAAAAACkAAAA0AAAAAIAAAAAAKUAAADRAAAAAgAAAAAApgAAANIAAAACAAAAAACnAAAA0wAAAAIAAAAAAKgAAACuAAAAAgAAAAAAqQAAANQAAAACAAAAAAD/AAAABwArAAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACUAAAAAgAAAAAAlQAAAAIAAAAAAJYAAAACAAAAAACXAAAAAgAAAAAAmAAAAAIAAAAAAJkAAAACAAAAAACaAAAAAgAAAAAAmwAAAAIAAAAAAJwAAAACAAAAAACdAAAAAgAAAAAAngAAAAIAAAAAAJ8AAAACAAAAAACgAAAAAgAAAAAAoQAAAAIAAAAAAKIAAAACAAAAAACjAAAAAgAAAAAApAAAAAIAAAAAAKUAAAACAAAAAACmAAAAAgAAAAAApwAAAAIAAAAAAKgAAAACAAAAAACpAAAAAgAAAAAA/wAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAEAAAACAAAAAAB8AAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAB/AAAAAgACAAAAGgAAAAcAAgAAAAIAAAAAAHwAAAACAAAAAAAAAQAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAIAAAAABAAwAAAAAAOUAAAABAAEAAQABAAMABgBUAQAABwACAAAAAgAAAAAAHgEAAAIAAAAAAB8BAAAKAAUAAADgAAAAAgAAAAAAqwAAAOEAAAACAAAAAACsAAAA4gAAAAIAAAAAAK0AAADjAAAAAgAAAAAArgAAAOQAAAACAAAAAACvAAAABwAFAAAAAgAAAAAAqwAAAAIAAAAAAKwAAAACAAAAAACtAAAAAgAAAAAArgAAAAIAAAAAAK8AAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACqAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAqgAAAAYA4QAAAAYA5QAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACqAAAABgDiAAAABgDmAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAKoAAAAGAOEAAAAGAOUAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAqgAAAAYA4gAAAAYA5gAAAAEABgBVAQAABwAEAAAAAgAAAAAAIAEAAAIAAAAAACEBAAACAAAAAAAiAQAAAgAAAAAAIwEAAAoACgAAABIAAAACAAAAAACxAAAA5wAAAAIAAAAAALIAAACwAAAAAgAAAAAAswAAAOgAAAACAAAAAAC0AAAA6QAAAAIAAAAAALUAAADqAAAAAgAAAAAAtgAAAOsAAAACAAAAAAC3AAAA7AAAAAIAAAAAALgAAADtAAAAAgAAAAAAuQAAABsAAAACAAAAAAC6AAAABwAKAAAAAgAAAAAAsQAAAAIAAAAAALIAAAACAAAAAACzAAAAAgAAAAAAtAAAAAIAAAAAALUAAAACAAAAAAC2AAAAAgAAAAAAtwAAAAIAAAAAALgAAAACAAAAAAC5AAAAAgAAAAAAugAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAALAAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACzAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALMAAAABAAYAVgEAAAcACAAAAAIAAAAAACQBAAACAAAAAAAlAQAAAgAAAAAAJgEAAAIAAAAAACcBAAACAAAAAAAoAQAAAgAAAAAAKQEAAAIAAAAAACoBAAACAAAAAAArAQAACgANAAAAsAAAAAIAAAAAALwAAADxAAAAAgAAAAAAvQAAAPIAAAACAAAAAAC+AAAA8wAAAAIAAAAAAL8AAAD0AAAAAgAAAAAAwAAAAPUAAAACAAAAAADBAAAA9gAAAAIAAAAAAMIAAAD3AAAAAgAAAAAAwwAAAPgAAAACAAAAAADEAAAA+QAAAAIAAAAAAMUAAAD6AAAAAgAAAAAAxgAAAPsAAAACAAAAAADHAAAA/AAAAAIAAAAAAMgAAAAHAA0AAAACAAAAAAC8AAAAAgAAAAAAvQAAAAIAAAAAAL4AAAACAAAAAAC/AAAAAgAAAAAAwAAAAAIAAAAAAMEAAAACAAAAAADCAAAAAgAAAAAAwwAAAAIAAAAAAMQAAAACAAAAAADFAAAAAgAAAAAAxgAAAAIAAAAAAMcAAAACAAAAAADIAAAABwAAAAAABwABAAAAAgACAAAAGgAAAAcAAAAAAAIAAgAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAuwAAAAIAAgAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALwAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAvAAAAAEABgBXAQAABAABAAAAAAAAAAYAWAEAAAcAAAAAAAoAFAAAAAUBAAACAAAAAADLAAAAgAAAAAIAAAAAAMwAAAAGAQAAAgAAAAAAzQAAAAcBAAACAAAAAADOAAAACAEAAAIAAAAAAM8AAAAJAQAAAgAAAAAA0AAAAAoBAAACAAAAAADRAAAACwEAAAIAAAAAANIAAAAMAQAAAgAAAAAA0wAAAA0BAAACAAAAAADUAAAADgEAAAIAAAAAANUAAAAPAQAAAgAAAAAA1gAAABABAAACAAAAAADXAAAAEQEAAAIAAAAAANgAAAASAQAAAgAAAAAA2QAAABMBAAACAAAAAADaAAAAFAEAAAIAAAAAANsAAAAVAQAAAgAAAAAA3AAAABYBAAACAAAAAADdAAAAFwEAAAIAAAAAAN4AAAAHABQAAAACAAAAAADLAAAAAgAAAAAAzAAAAAIAAAAAAM0AAAACAAAAAADOAAAAAgAAAAAAzwAAAAIAAAAAANAAAAACAAAAAADRAAAAAgAAAAAA0gAAAAIAAAAAANMAAAACAAAAAADUAAAAAgAAAAAA1QAAAAIAAAAAANYAAAACAAAAAADXAAAAAgAAAAAA2AAAAAIAAAAAANkAAAACAAAAAADaAAAAAgAAAAAA2wAAAAIAAAAAANwAAAACAAAAAADdAAAAAgAAAAAA3gAAAAcAAAAAAAcAAQAAAAIAAQAAAGcAAAAHAAAAAAACAAEAAABnAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAMoAAAACAAEAAABnAAAAAgACAAAAGgAAAAcAAAAAAAoABwAAADQAAAAKAAIAAAAHAQAABwAKAAAABgAIAQAABgAJAQAABgAKAQAABgALAQAABgAMAQAABgANAQAABgAOAQAABgAPAQAABgAQAQAABgARAQAAEgEAAAcAAQAAAAYAEwEAAAcBAAACAAAAAAAsAQAAEgEAAAIAAAAAAC0BAAAyAQAAAgAAAAAALgEAADMBAAACAAAAAAAvAQAAQAEAAAIAAAAAADABAABCAQAAAgAAAAAAMQEAAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAEoBAAAGAI4AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYAIAAAAAYAjwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgAhAAAABgCQAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAEsBAAAGAJEAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYAngAAAAYAkgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBMAQAABgCTAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAE0BAAAGAJQAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATgEAAAYAlQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBPAQAABgCWAAAABwAAAAAAAQAGAFkBAAAHAAAAAAAKABAAAAAFAQAAAgAAAAAA4AAAAAYBAAACAAAAAADiAAAACAEAAAIAAAAAAOMAAAAJAQAAAgAAAAAA5AAAAAoBAAACAAAAAADlAAAACwEAAAIAAAAAAOYAAAAMAQAAAgAAAAAA5wAAAA0BAAACAAAAAADoAAAADgEAAAIAAAAAAOkAAAAPAQAAAgAAAAAA6gAAABABAAACAAAAAADrAAAAEQEAAAIAAAAAAOwAAAATAQAAAgAAAAAA7QAAABQBAAACAAAAAADuAAAAFQEAAAIAAAAAAO8AAAAXAQAAAgAAAAAA8AAAAAcAEAAAAAIAAAAAAOAAAAACAAAAAADiAAAAAgAAAAAA4wAAAAIAAAAAAOQAAAACAAAAAADlAAAAAgAAAAAA5gAAAAIAAAAAAOcAAAACAAAAAADoAAAAAgAAAAAA6QAAAAIAAAAAAOoAAAACAAAAAADrAAAAAgAAAAAA7AAAAAIAAAAAAO0AAAACAAAAAADuAAAAAgAAAAAA7wAAAAIAAAAAAPAAAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAADfAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAAAAAAHAAAAAAABAAYAWgEAAAcAAAAAAAoAAgAAAAUBAAACAAAAAADyAAAABgEAAAIAAAAAAPMAAAAHAAIAAAACAAAAAADyAAAAAgAAAAAA8wAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAPEAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABwAEAAAABwACAAAAAwAGAFoAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwBYAAAABwAOAAAAAwAGAG8AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAAAHACcAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQALAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAQQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAVgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAABRABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAmQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAACJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAMUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAADhABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAADlABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAA/QAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABQAAAAAAAABAQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgEBABAABAAAAAAAAAAQAAAAAAAAAAAAEACMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAFAAAAAAAAAD1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAQ0AHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABEQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAqAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBEQAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgEZABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAEdABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACAR0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAMQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAUAAAAAAACARUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASEAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAABKQAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABQAAAAAAAIBKQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAEtABAABAAAAAAAAAAQAAAAAAAAAAAAEADgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAFAAAAAAAAAElABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEtABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAACATUAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAATkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBOQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA/AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABQAAAAAAAIBMQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgFBABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFBABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAUUAEAAEAAAAAAAAABAAAAAAAAAAAAAQARgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAUAAAAAAAAAUEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUUAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAEBSQAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABQAAAAAAAIBSQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAwFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAE0AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACwAAAAAAAAAFAAAAAAAAwFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFNABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAVEAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABUAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABQAAAAAAAIBTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAcAAwAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAwFVABwADAAAABAAAAAAAAAAAAAQADQAAAAAAAAAFAAAAAAAAQFVABAABAAAAAAAAAAAAAAAAAAAAAQAHAAYAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFcAAAAFAAAAAAAAAABABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAWQAAAAUAAAAAAAAAEEAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAcAZAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABdAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABhAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAG4AAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwBOAAAABAAIAAAAAAAAAAYAbwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBwAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHEAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBzAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHQAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB2AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHcAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAeAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB5AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAewAAAAUAAAAAAAAAEEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAKQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQANwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQARQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAUwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAWgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAgQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAACJABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAuQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAEABIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAANUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAZAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAADxABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAAD1ABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAIBBQAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABQAAAAAAAABCQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgEJABAABAAAAAAAAAAQAAAAAAAAAAAAEACcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAARUAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAuAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgEhABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAElABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACASUAEAAEAAAAAAAAABAAAAAAAAAAAAAQANQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACASUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAABMQAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABQAAAAAAAIBMQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAEADwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAACAT0AHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAUEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgFFABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFFABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAQASgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAEBTQAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABQAAAAAAAIBTQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAwFNABAABAAAAAAAAAAQAAAAAAAAAAAAEAFEAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAVUAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBVQAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBVQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBVQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAwFZABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFZABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFdABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAAFdABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAACAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgBiAAAABQAAAAAAAIBYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBYQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIUAAAAFAAAAAAAAAFhABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHACYAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAaQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAFAAAAAAAAABhABgAeAQAABQAAAAAAAAAkQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAAAqQAcABgAAAAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAYQAYAHQEAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAUAAAAAAAAAGEAGABwBAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAAD9ABwAGAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAQUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAEAAEAAAAAAAAAAAAAAAAAAAABAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAaQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGUAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgAeAQAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAB0BAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYAHAEAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBjAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAoAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAABBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAABhABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAAAkQAcABgAAAAUAAAAAAAAAGEAGACUBAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAACpABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADFABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAADNABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADVABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGAAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAAA5QAcABgAAAAUAAAAAAAAAGEAGACUBAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAABCQAcABgAAAAUAAAAAAAAAGEAGACUBAAAFAAAAAAAAgEJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGUAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAHAEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZQAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGABwBAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAHQEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBoAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZwAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAB0BAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHAAcAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAYAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAQQAcABgAAAAQACAAAAAAAAAAGAH0AAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAQwAAAAUAAAAAAAAAJEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAYAAAAEAAgAAAAAAAAABgB8AAAABQAAAAAAAAAmQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAACJABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAC5ABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADNABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYALwEAAAUAAAAAAAAANEAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCAAAAABQAAAAAAAAA2QAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABgDVAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDWAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGANcAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA2AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA2QAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDaAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGANsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGANwAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA3QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA3gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA3wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDlAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDmAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDuAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDmAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDvAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDwAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAP0AAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA/gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgD/AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAAABAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYAAQEAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgACAQAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgADAQAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgAEAQAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABwC4AAAABwALAAAAAwAGAAgBAAAGAAkBAAAGAAoBAAAGAAsBAAAGAAwBAAAGAA0BAAAGAA4BAAAGAA8BAAAGABABAAAGABEBAAAHAB4AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAXgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAcQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAhAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAlwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQApgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAEEAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAEABAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADUBAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAACpABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAACRABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADFABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAADFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAADNABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAADdABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAEACMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAADVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAD5ABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAADtABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAAEBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAAEFABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAAENABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAQALQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAyAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAgERABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABAABAAAAAAAAAAQAAAAAAAAAAAAEADQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAAEVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACARUAEAAEAAAAAAAAABAAAAAAAAAAAAAQANgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA2AQAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABHQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBHQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABHQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABIQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAABGQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAIBIQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBEQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABKQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBJQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBJQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBFQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABLQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBKQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBKQAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAIBMQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAEAEAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQARQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAABOQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABOQAQAAQAAAAAAAAAEAAAAAAAAAAAABABHAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAIBOQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAE9ABAABAAAAAAAAAAQAAAAAAAAAAAAEAEkAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANwEAAAUAAAAAAACAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAUEAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUEAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACAT0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAUUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAUUAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAT0AHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAUkAHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAU0AHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAEBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAQFNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFNABAABAAAAAAAAAAQAAAAAAAAAAAAEAFgAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAWgAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAEBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABcAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADgBAAAFAAAAAAAAgFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFVABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQFVABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFVABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAgFRABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFNABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAwFVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFNABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgFZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAQFZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFRABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAFdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAwFZABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAwFdABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAZgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAABYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBYQAQAAQAAAAAAAAAEAAAAAAAAAAAABABrAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAgFhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFhABAABAAAAAAAAAAQAAAAAAAAAAAAEAG0AAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAwFhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAbwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA5AQAABQAAAAAAAEBXQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBZQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABaQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBZQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBaQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAEBZQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAIBaQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBYQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBbQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABbQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABbQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABZQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBbQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBbQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBbQAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAIBcQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAwFxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFxABAABAAAAAAAAAAQAAAAAAAAAAAAEAHkAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAADAXEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAXUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAfgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAEBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABACAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAIBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBdQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAwF1ABAABAAAAAAAAAAQAAAAAAAAAAAAEAIIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAAFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgF5ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAwF5ABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgF5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAF9ABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAAF5ABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFxABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAQF9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQF1ABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAGBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwF9ABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAwF9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwF1ABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQGBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGBABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAIGBABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAoGBABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAADAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAjAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAMBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABACRAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAGFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGFABAABAAAAAAAAAAQAAAAAAAAAAAAEAJMAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAIGFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGFABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAABAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAlQAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABzAAAAAAAAAAUAAAAAAABgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgYUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAYUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADgYUAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAABgYUAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAYkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAYUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABgYkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAYkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABAYkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAYUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACgYkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAYkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACAYkAHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAY0AHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAACBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABACdAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAIGNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGNABAABAAAAAAAAAAQAAAAAAAAAAAAEAKIAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAABgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAQApAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB1AAAAAAAAAAUAAAAAAADAYkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAgY0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAY0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADgY0AHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZEAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACAY0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAgY0AHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAgZEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgY0AHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAZEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgZEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABgZEAHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAADgZEAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAABlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABlQAQAAQAAAAAAAAAEAAAAAAAAAAAABACuAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAAGVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGVABAABAAAAAAAAAAQAAAAAAAAAAAAEALMAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAABAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAtQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAABgZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAIBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC3AAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADoBAAAFAAAAAAAAoGRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GVABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAGZABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGZABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAoGVABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGVABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAQGZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGVABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAoGZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgGZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGVABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAA4GZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwGZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAwGZABAABAAAAAAAAAAAAAAAAAAAAAQAHAAsAAAAHAAIAAAADAAYAEwEAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAAAQQAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAABBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAIkAEAAEAAAAAAAAAAAAAAAAAAAABAAcAyQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAL0AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYABwEAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHADwAAAAEAAgAAAAAAAAABgAIAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAAkBAAAFAAAAAAAAABBABAAIAAAAAAAAAAYACgEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgALAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAAwBAAAFAAAAAAAAABBABAAIAAAAAAAAAAYADQEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgAOAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAA8BAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAEAEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgARAQAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAaAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA8AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAB1AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACqAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAAAgQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAAAAIkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAAAmQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAWAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANQEAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAALEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAM0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANUAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAO0AHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAAA8QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA8QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAgAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAADxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAEACUAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAAAAOUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAAP0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAARUAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAIBFQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBFQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAxAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAgEVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEZABAABAAAAAAAAAAQAAAAAAAAAAAAEADYAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACARkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACARkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAR0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAIBHQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADYBAAAFAAAAAAAAAERABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAElABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgElABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAElABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEpABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAAEhABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAgEpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEZABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAExABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEtABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgEtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgExABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgExABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAgE5ABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAT0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAT0AEAAEAAAAAAAAABAAAAAAAAAAAAAQARAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAABPQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBPQAQAAQAAAAAAAAAEAAAAAAAAAAAABABJAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAFBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFBABAABAAAAAAAAAAQAAAAAAAAAAAAEAEsAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAQFBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFBABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACAUEAEAAEAAAAAAAAABAAAAAAAAAAAAAQATQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA3AQAABQAAAAAAAIBNQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBRQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBRQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBRQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBRQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAMBQQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAABSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABQQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBSQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBSQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABTQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAABUQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAQFRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAFcAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAABAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAXAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAMBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABeAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAABVQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBVQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAQFVABAABAAAAAAAAAAQAAAAAAAAAAAAEAGAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOAEAAAUAAAAAAACAU0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABAVkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAVkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACAVUAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAADAVkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAVEAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAV0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABAV0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAV0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAADAV0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAADAWEAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAABZQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABZQAQAAQAAAAAAAAAEAAAAAAAAAAAABABqAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAAFlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFlABAABAAAAAAAAAAQAAAAAAAAAAAAEAG8AAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAcQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAADAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWkAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAABaQAQAAQAAAAAAAAAEAAAAAAAAAAAABABzAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADkBAAAFAAAAAAAAQFhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFpABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAFtABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFtABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAQFpABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAgFtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFlABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQFxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFxABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAAFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFpABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAwFxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFxABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAgF1ABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAADAXUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAfQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAMBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABeQAQAAQAAAAAAAAAEAAAAAAAAAAAABACCAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAQF5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQF5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAIQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAgF5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwF5ABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAADAXkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAhgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAAAAXUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAX0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAX0AHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAX0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAYEAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAAX0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAXkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgYEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgYEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAgYUAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAEBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABACQAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAQGFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAYGFABAABAAAAAAAAAAQAAAAAAAAAAAAEAJUAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAlwAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAACgYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYUAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAMBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABACZAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHMAAAAAAAAABQAAAAAAAOBgQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBhQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBiQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBiQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBiQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAOBhQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBhQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAIBiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBhQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAOBiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBiQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAMBiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBhQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAACBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABjQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABjQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAIBjQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAoGNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAoGNABAABAAAAAAAAAAQAAAAAAAAAAAAEAKEAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAACgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAY0AEAAEAAAAAAAAABAAAAAAAAAAAAAQApgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAOBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABACoAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABQAAAAAAAEBjQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBjQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBkQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAGBkQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBkQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBkQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAABkQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBjQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAKBkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBjQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBkQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAOBkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAGBlQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAgGVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGVABAABAAAAAAAAAAQAAAAAAAAAAAAEALIAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAACAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgZUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAtwAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAMBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC5AAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAOBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABmQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAGZABAABAAAAAAAAAAQAAAAAAAAAAAAEALsAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOgEAAAUAAAAAAAAgZUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgZkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAZkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgZkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgZkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAgZkAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAADAZkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAZUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAgZ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZ0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAZ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABgZ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAZ0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABAZ0AHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgASAQAABQAAAAAAAIBnQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC/AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBnQAcABgAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAwGdABAABAAAAAAAAAAQAAAAAAAAAAAAEAMEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwGdABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAQGhABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAABAaEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgaEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAxgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAIBoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBoQAQAAQAAAAAAAAAEAAAAAAAAAAAABADIAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAABoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBoQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAKBoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBoQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABpQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBoQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAOBoQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAIAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAxAQAABQAAAAAAAAAQQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAHEAGADEBAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAAAAAAAAAAAAQAHAAwAAAAHAAUAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABAAEAAAAAAAAAAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAAAkQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAACEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAEEAEAAEAAAAAAAAAAAAAAAAAAAABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAAAYAUgEAAAIAAAAAAHwAAAAHAAAAAAAKAAEAAADUAAAAAgAAAAAA/wAAAAcAAAAAAAcAAAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAABzAQAABwAAAAAACgAAAAAAdQEAAAcAAAAAAAoAAAAAAAAAAAB2AAAAAQAAAAEAAAAAAAAA/wAAAAAAAAB3AAAAAAAAAAAAAAADAAAAAAAAAHcBAAACAAAAAAB8AAAAeAEAAAIAAAAAAHwAAAB5AQAAAgAAAAAAfwAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if1211_end2734 
    die "Repossession conflicts occurred during deserialization"
  if1211_end2734:
    .const 'Sub' $P5001 = "cuid_1_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_57_1382292146.58822" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_58_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 179
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 180
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 181
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_174_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 182
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_175_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 183
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_176_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 184
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_177_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 185
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_178_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 186
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_179_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 188
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_180_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 189
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_181_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 190
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_182_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 191
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_183_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 192
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_184_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 193
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_185_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 194
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_186_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 195
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_187_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 196
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_188_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 197
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_189_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 198
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_190_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 199
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_191_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 200
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_192_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 203
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_193_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 204
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_194_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 205
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_195_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 206
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_196_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 207
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_197_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 208
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_198_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 209
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_199_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 210
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_200_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 211
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_201_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 212
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_202_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 213
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_203_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 214
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_204_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 215
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_205_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 216
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_206_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 217
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_207_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 218
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_208_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 219
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_209_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 220
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_210_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 221
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_211_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 222
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_212_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 224
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_213_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 225
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_214_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 226
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_215_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 227
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_216_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 228
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_217_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 229
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_218_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 230
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_219_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 231
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_220_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 232
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_221_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 233
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_222_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 234
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_223_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 235
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_224_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 236
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_225_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 237
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_226_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 238
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_227_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 239
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_228_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 240
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_229_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 242
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_230_1382292146.58822" 
    nqp_get_sc_object $P5002, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 243
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_231_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "GLOBALish"
    push $P5002, "$?PACKAGE"
    push $P5002, "EXPORT"
    push $P5002, "ParseShared"
    push $P5002, "NQPCursorRole"
    push $P5002, "sprintf"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 0
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 1
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1382292140.15261", 32
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1382292140.15261", 35
    push $P5003, $P5008
    nqp_get_sc_object $P5009, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 201
    push $P5003, $P5009
    new $P5010, 'ResizableIntegerArray'
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5010)
    .const "LexInfo" $P5001 = "cuid_232_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 3
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 3
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_245_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 68
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 68
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_257_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 103
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 103
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_120_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?ROLE"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 124
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 124
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_262_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 127
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_290_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 170
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_291_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 176
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_301_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 187
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_302_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    push $P5002, "Syntax"
    push $P5002, "Actions"
    push $P5002, "Directives"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 201
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 201
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 202
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 223
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 241
    push $P5003, $P5008
    new $P5009, 'ResizableIntegerArray'
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5009)
    .const "LexInfo" $P5001 = "cuid_306_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 202
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 202
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_307_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 223
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 223
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_326_1382292146.58822"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 241
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "20A8B78604B6E989C5DC1D669DAFFA35168CF57C-1382292146.64582", 241
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5007 = $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_328_1382292146.58822") :anon :lex :outer("cuid_329_1382292146.58822")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_175_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_176_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_177_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_178_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_179_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_180_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_181_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_182_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_183_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_184_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_185_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_186_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_187_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_188_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_189_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_190_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_191_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_192_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_193_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_194_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_195_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_196_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_197_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_198_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_199_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_200_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_201_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_202_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_203_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_204_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_205_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_206_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_207_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_208_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_209_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_210_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_211_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_212_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_213_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_214_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_215_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_216_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_217_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_218_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_219_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_220_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_221_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_222_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_223_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_224_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_225_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_226_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_227_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_228_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_229_1382292146.58822" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_230_1382292146.58822" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_330_1382292146.58822") :load
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .const 'Sub' $P5001 = "cuid_231_1382292146.58822" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_331_1382292146.58822") :main
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_231_1382292146.58822" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end