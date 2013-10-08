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
.sub "" :subid("cuid_231_1381254434.83594") :anon :lex
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5027 = 'cuid_232_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_245_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_257_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_120_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_261_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_289_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_290_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_300_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_301_1381254434.83594' 
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5006 = 'cuid_232_1381254434.83594' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_245_1381254434.83594' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_257_1381254434.83594' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_120_1381254434.83594' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_261_1381254434.83594' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 1607
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    $P5016 = $P5015."new"()
    set $P106, $P5016
.annotate 'line', 1608
    $P5017 = $P106."backend"()
    $P5018 = $P5017."name"()
    $P106."language"($P5018)
    .const 'Sub' $P5019 = 'cuid_289_1381254434.83594' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_290_1381254434.83594' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_300_1381254434.83594' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_301_1381254434.83594' 
    capture_lex $P5025
    $P5026 = $P5025()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 7
    .const 'Sub' $P5069 = 'cuid_1_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_2_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_3_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_4_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_5_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_6_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_7_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_8_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_9_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_10_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_11_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_12_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_13_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_14_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_15_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_16_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_17_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_18_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_19_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_20_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_21_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_22_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_23_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_24_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_25_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_26_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_27_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_28_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_29_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_30_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_31_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_32_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_33_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_34_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_35_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_36_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_37_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_38_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_39_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_40_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_41_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_42_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_45_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_47_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_48_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_49_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_50_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_51_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_52_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_53_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_54_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_55_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_56_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_57_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_58_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_59_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_60_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_61_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_62_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_63_1381254434.83594' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_64_1381254434.83594' 
    capture_lex $P5069 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$brackets", $P103 
    .lex "$cursor_class", $P104 
    .lex "%ohash", $P105 
    .lex "$TRUE", $P106 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5002
    new $P5003, 'Hash'
    set $P105, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P106, $P5004
    box $P5005, utf8:"<>[](){}()<>[]{}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2018\u2019\u201a\u2019\u201b\u2019\u201c\u201d\u201e\u201d\u201f\u201d\u2039\u203a\u2045\u2046\u207d\u207e\u208d\u208e\u2208\u220b\u2209\u220c\u220a\u220d\u2215\u29f5\u223c\u223d\u2243\u22cd\u2252\u2253\u2254\u2255\u2264\u2265\u2266\u2267\u2268\u2269\u226a\u226b\u226e\u226f\u2270\u2271\u2272\u2273\u2274\u2275\u2276\u2277\u2278\u2279\u227a\u227b\u227c\u227d\u227e\u227f\u2280\u2281\u2282\u2283\u2284\u2285\u2286\u2287\u2288\u2289\u228a\u228b\u228f\u2290\u2291\u2292\u2298\u29b8\u22a2\u22a3\u22a6\u2ade\u22a8\u2ae4\u22a9\u2ae3\u22ab\u2ae5\u22b0\u22b1\u22b2\u22b3\u22b4\u22b5\u22b6\u22b7\u22c9\u22ca\u22cb\u22cc\u22d0\u22d1\u22d6\u22d7\u22d8\u22d9\u22da\u22db\u22dc\u22dd\u22de\u22df\u22e0\u22e1\u22e2\u22e3\u22e4\u22e5\u22e6\u22e7\u22e8\u22e9\u22ea\u22eb\u22ec\u22ed\u22f0\u22f1\u22f2\u22fa\u22f3\u22fb\u22f4\u22fc\u22f6\u22fd\u22f7\u22fe\u2308\u2309\u230a\u230b\u2329\u232a\u23b4\u23b5\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c3\u27c4\u27c5\u27c6\u27d5\u27d6\u27dd\u27de\u27e2\u27e3\u27e4\u27e5\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29c0\u29c1\u29c4\u29c5\u29cf\u29d0\u29d1\u29d2\u29d4\u29d5\u29d8\u29d9\u29da\u29db\u29f8\u29f9\u29fc\u29fd\u2a2b\u2a2c\u2a2d\u2a2e\u2a34\u2a35\u2a3c\u2a3d\u2a64\u2a65\u2a79\u2a7a\u2a7d\u2a7e\u2a7f\u2a80\u2a81\u2a82\u2a83\u2a84\u2a8b\u2a8c\u2a91\u2a92\u2a93\u2a94\u2a95\u2a96\u2a97\u2a98\u2a99\u2a9a\u2a9b\u2a9c\u2aa1\u2aa2\u2aa6\u2aa7\u2aa8\u2aa9\u2aaa\u2aab\u2aac\u2aad\u2aaf\u2ab0\u2ab3\u2ab4\u2abb\u2abc\u2abd\u2abe\u2abf\u2ac0\u2ac1\u2ac2\u2ac3\u2ac4\u2ac5\u2ac6\u2acd\u2ace\u2acf\u2ad0\u2ad1\u2ad2\u2ad3\u2ad4\u2ad5\u2ad6\u2aec\u2aed\u2af7\u2af8\u2af9\u2afa\u2e02\u2e03\u2e04\u2e05\u2e09\u2e0a\u2e0c\u2e0d\u2e1c\u2e1d\u2e20\u2e21\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff1c\uff1e\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P103, $P5005
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381254430.29541", 103
    set $P104, $P5006
    .const 'Sub' $P5007 = 'cuid_1_1381254434.83594' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1381254434.83594' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1381254434.83594' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_4_1381254434.83594' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_5_1381254434.83594' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_6_1381254434.83594' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_7_1381254434.83594' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_8_1381254434.83594' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_9_1381254434.83594' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_10_1381254434.83594' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_11_1381254434.83594' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_12_1381254434.83594' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_13_1381254434.83594' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_14_1381254434.83594' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_15_1381254434.83594' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_16_1381254434.83594' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_17_1381254434.83594' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_18_1381254434.83594' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_19_1381254434.83594' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_20_1381254434.83594' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_21_1381254434.83594' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_22_1381254434.83594' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_23_1381254434.83594' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_24_1381254434.83594' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_25_1381254434.83594' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_26_1381254434.83594' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_27_1381254434.83594' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_28_1381254434.83594' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_29_1381254434.83594' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_30_1381254434.83594' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_31_1381254434.83594' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_32_1381254434.83594' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_33_1381254434.83594' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_34_1381254434.83594' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_35_1381254434.83594' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_36_1381254434.83594' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_37_1381254434.83594' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_38_1381254434.83594' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_39_1381254434.83594' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_40_1381254434.83594' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_41_1381254434.83594' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_42_1381254434.83594' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_45_1381254434.83594' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_47_1381254434.83594' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_48_1381254434.83594' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_49_1381254434.83594' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_50_1381254434.83594' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_51_1381254434.83594' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_52_1381254434.83594' 
    capture_lex $P5055
    box $P5056, 1
    set $P106, $P5056
    .const 'Sub' $P5057 = 'cuid_53_1381254434.83594' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_54_1381254434.83594' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_55_1381254434.83594' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_56_1381254434.83594' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_57_1381254434.83594' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_58_1381254434.83594' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_59_1381254434.83594' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_60_1381254434.83594' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_61_1381254434.83594' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_62_1381254434.83594' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_63_1381254434.83594' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_64_1381254434.83594' 
    capture_lex $P5068
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "termish" :subid("cuid_2_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "term" :subid("cuid_3_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "infixish" :subid("cuid_10_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "prefixish" :subid("cuid_11_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "postfixish" :subid("cuid_12_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    rx29_cur."!alt"(rx29_pos, "alt_nfa__1_1381254435.07781", $P11)
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
.sub "nullterm" :subid("cuid_13_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "nullterm_alt" :subid("cuid_14_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "nulltermish" :subid("cuid_15_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_delimited" :subid("cuid_16_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_atom" :subid("cuid_17_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    rx47_cur."!alt"(rx47_pos, "alt_nfa__2_1381254435.1077", $P11)
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
.sub "decint" :subid("cuid_18_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "decints" :subid("cuid_19_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "hexint" :subid("cuid_20_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "hexints" :subid("cuid_21_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "octint" :subid("cuid_22_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "octints" :subid("cuid_23_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "binint" :subid("cuid_24_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "binints" :subid("cuid_25_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "integer" :subid("cuid_26_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    rx98_cur."!alt"(rx98_pos, "alt_nfa__4_1381254435.17539", $P11)
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
    rx98_cur."!alt"(rx98_pos, "alt_nfa__3_1381254435.17492", $P11)
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
.sub "dec_number" :subid("cuid_27_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    rx107_cur."!alt"(rx107_pos, "alt_nfa__5_1381254435.19486", $P11)
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
.sub "escale" :subid("cuid_28_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape" :subid("cuid_29_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<bs>" :subid("cuid_32_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<nl>" :subid("cuid_33_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<cr>" :subid("cuid_34_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<tab>" :subid("cuid_35_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<ff>" :subid("cuid_36_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<esc>" :subid("cuid_37_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<hex>" :subid("cuid_38_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    rx143_cur."!alt"(rx143_pos, "alt_nfa__6_1381254435.26647", $P11)
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
.sub "quote_escape:sym<oct>" :subid("cuid_39_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    rx148_cur."!alt"(rx148_pos, "alt_nfa__7_1381254435.27886", $P11)
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
.sub "quote_escape:sym<chr>" :subid("cuid_40_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<0>" :subid("cuid_41_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "quote_escape:sym<misc>" :subid("cuid_42_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_233_1381254434.83594' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_43_1381254434.83594' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1381254434.83594' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_234_1381254434.83594' 
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
    .const 'Sub' $P5002 = 'cuid_233_1381254434.83594' 
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
    rx159_cur."!alt"(rx159_pos, "alt_nfa__8_1381254435.36612", $P11)
    goto rx159_fail476
  alt162_0486:
    .const 'Sub' $P5004 = 'cuid_43_1381254434.83594' 
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
    .const 'Sub' $P5005 = 'cuid_44_1381254434.83594' 
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
    .const 'Sub' $P5007 = 'cuid_234_1381254434.83594' 
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
.sub "" :subid("cuid_233_1381254434.83594") :anon :lex :outer("cuid_42_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1381254434.83594") :anon :lex :outer("cuid_42_1381254434.83594")
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
.sub "" :subid("cuid_44_1381254434.83594") :anon :lex :outer("cuid_42_1381254434.83594")
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
.sub "" :subid("cuid_234_1381254434.83594") :anon :lex :outer("cuid_42_1381254434.83594")
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
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5006, $P5007
  vivi_170512:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_46_1381254434.83594' 
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
    .const 'Sub' $P5001 = 'cuid_46_1381254434.83594' 
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
.sub "" :subid("cuid_46_1381254434.83594") :anon :lex :outer("cuid_45_1381254434.83594")
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
.sub "charnames" :subid("cuid_47_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "charspec" :subid("cuid_48_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    rx186_cur."!alt"(rx186_pos, "alt_nfa__9_1381254435.40146", $P11)
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
.sub "O" :subid("cuid_49_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5015 = 'cuid_238_1381254434.83594' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_239_1381254434.83594' 
    capture_lex $P5015 
    .lex "%hash", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    .local pmc fb_tmp_2 
    if haz_param_1, default620
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_195585:
    set $P101, $P5005
    if $P101 goto unless196_end587 
    .const 'Sub' $P5007 = 'cuid_238_1381254434.83594' 
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
    .const 'Sub' $P5011 = 'cuid_239_1381254434.83594' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if210_end619:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1381254434.83594") :anon :lex :outer("cuid_49_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 182
    .const 'Sub' $P5008 = 'cuid_236_1381254434.83594' 
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
    .const 'Sub' $P5002 = 'cuid_236_1381254434.83594' 
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
.sub "" :subid("cuid_236_1381254434.83594") :anon :lex :outer("cuid_238_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 189
    .const 'Sub' $P5007 = 'cuid_235_1381254434.83594' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_237_1381254434.83594' 
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
    .const 'Sub' $P5001 = 'cuid_235_1381254434.83594' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if199_end596
  if199_else595:
    .const 'Sub' $P5003 = 'cuid_237_1381254434.83594' 
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
.sub "" :subid("cuid_235_1381254434.83594") :anon :lex :outer("cuid_236_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 195
    .lex "$value", $P101 
    .lex "$name", $P102 
    .local pmc tmp_2 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "" :subid("cuid_237_1381254434.83594") :anon :lex :outer("cuid_236_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 222
    .lex "$index", $P101 
    .lex "$lookup", $P102 
    .lex "%lhash", $P103 
    .lex "$lhash_it", $P104 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "" :subid("cuid_239_1381254434.83594") :anon :lex :outer("cuid_49_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 250
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "panic" :subid("cuid_50_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    set pkg_lookup_tmp_1, $P5008
    get_who $P5009, pkg_lookup_tmp_1
    exists $I5002, $P5009["HLL"]
    unless $I5002 goto if212_else623 
    get_who $P5011, pkg_lookup_tmp_1
    set $P5010, $P5011["HLL"]
    set $P5013, $P5010
    goto if212_end624
  if212_else623:
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "FAILGOAL" :subid("cuid_51_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "peek_delimiters" :subid("cuid_52_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_240_1381254434.83594' 
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
    .const 'Sub' $P5008 = 'cuid_240_1381254434.83594' 
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
.sub "" :subid("cuid_240_1381254434.83594") :anon :lex :outer("cuid_52_1381254434.83594")
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
.sub "quote_EXPR" :subid("cuid_53_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5028 = 'cuid_242_1381254434.83594' 
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
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5012, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5019, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5026 = 'cuid_242_1381254434.83594' 
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
.sub "" :subid("cuid_242_1381254434.83594") :anon :lex :outer("cuid_53_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 344
    .const 'Sub' $P5025 = 'cuid_241_1381254434.83594' 
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
    .const 'Sub' $P5006 = 'cuid_241_1381254434.83594' 
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
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5023, $P5024
  vivi_262723:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1381254434.83594") :anon :lex :outer("cuid_242_1381254434.83594")
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
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5013, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5022, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5031, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5040, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5049, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5058, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5067, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
.sub "quotemod_check" :subid("cuid_54_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_243_1381254434.83594' 
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
    .const 'Sub' $P5002 = 'cuid_243_1381254434.83594' 
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
.sub "" :subid("cuid_243_1381254434.83594") :anon :lex :outer("cuid_54_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 369
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc pkg_viv_tmp_10 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback737
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_270742:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_55_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .lex "$start", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_21 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_START"
    unless_null $P5002, fallback743
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    isnull $I5002, $P101
    unless $I5002 goto if274_else748 
.annotate 'line', 375
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_fail"()
    set $P5014, $P5011
    goto if274_end749
  if274_else748:
.annotate 'line', 376
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if274_end749:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_56_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 379
    .param pmc _lex_param_0 
    .lex "$stop", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_22 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_STOP"
    unless_null $P5002, fallback750
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    isnull $I5002, $P101
    unless $I5002 goto if278_else755 
.annotate 'line', 382
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_fail"()
    set $P5014, $P5011
    goto if278_end756
  if278_else755:
.annotate 'line', 383
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if278_end756:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_57_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "EXPR" :subid("cuid_58_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5131 = 'cuid_244_1381254434.83594' 
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P109, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P110, $P5010
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5029 = 'cuid_244_1381254434.83594' 
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
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5053, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5059, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5066, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5070, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5074, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5078, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5096, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5100, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5104, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "" :subid("cuid_244_1381254434.83594") :anon :lex :outer("cuid_58_1381254434.83594")
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
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5039, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "EXPR_reduce" :subid("cuid_59_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    set $S102, ""
    set $S103, ""
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P105, $P5005
    pop $P5006, _lex_param_2
    set $P101, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 42
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
.sub "EXPR_nonassoc" :subid("cuid_60_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
.sub "ternary" :subid("cuid_61_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_358924:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_62_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381254430.29541", 32
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
.sub "MARKED" :subid("cuid_63_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381254430.29541", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381254430.29541", 103
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
.sub "LANG" :subid("cuid_64_1381254434.83594") :anon :lex :outer("cuid_232_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
.annotate 'line', 633
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback933
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5034, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5043, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "" :subid("cuid_245_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 643
    .const 'Sub' $P5035 = 'cuid_65_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_66_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_67_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_68_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_69_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_70_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_71_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_72_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_73_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_74_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_75_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_76_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_77_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_78_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_79_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_80_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_81_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_82_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_83_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_84_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_85_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_86_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_87_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_88_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_89_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_90_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_91_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_92_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_93_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_94_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_95_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_96_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_97_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_98_1381254434.83594' 
    capture_lex $P5035 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_65_1381254434.83594' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_66_1381254434.83594' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_67_1381254434.83594' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_68_1381254434.83594' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_69_1381254434.83594' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_70_1381254434.83594' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_71_1381254434.83594' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_72_1381254434.83594' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_73_1381254434.83594' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_74_1381254434.83594' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_75_1381254434.83594' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_76_1381254434.83594' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_77_1381254434.83594' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_78_1381254434.83594' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_79_1381254434.83594' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_80_1381254434.83594' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_81_1381254434.83594' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_82_1381254434.83594' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_83_1381254434.83594' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_84_1381254434.83594' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_85_1381254434.83594' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_86_1381254434.83594' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_87_1381254434.83594' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_88_1381254434.83594' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_89_1381254434.83594' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_90_1381254434.83594' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_91_1381254434.83594' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_92_1381254434.83594' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_93_1381254434.83594' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_94_1381254434.83594' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_95_1381254434.83594' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_96_1381254434.83594' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_97_1381254434.83594' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_98_1381254434.83594' 
    capture_lex $P5034
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_65_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$src", _lex_param_1 
    .lex "$base", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "ints_to_string" :subid("cuid_66_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 651
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_247_1381254434.83594' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if374_else951 
    .const 'Sub' $P5001 = 'cuid_247_1381254434.83594' 
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
.sub "" :subid("cuid_247_1381254434.83594") :anon :lex :outer("cuid_66_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 652
    .const 'Sub' $P5009 = 'cuid_246_1381254434.83594' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5007 = 'cuid_246_1381254434.83594' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next953
  for_done955:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1381254434.83594") :anon :lex :outer("cuid_247_1381254434.83594")
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
.sub "CTXSAVE" :subid("cuid_67_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 663
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 664
    nqp_get_sc_object $P5001, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 98
.annotate 'line', 665
    nqp_get_sc_object $P5002, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
.annotate 'line', 667
    nqp_get_sc_object $P5003, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 74
    $P5004 = $P5003."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 668
    nqp_get_sc_object $P5005, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 74
    $P5006 = $P5005."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5007 = $P5002."new"($P5004, $P5006, "bind" :named("op"))
.annotate 'line', 670
    nqp_get_sc_object $P5008, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
.annotate 'line', 672
    nqp_get_sc_object $P5009, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
.annotate 'line', 674
    nqp_get_sc_object $P5010, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 74
    $P5011 = $P5010."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5012 = $P5009."new"($P5011, "isnull" :named("op"))
.annotate 'line', 676
    nqp_get_sc_object $P5013, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
.annotate 'line', 678
    nqp_get_sc_object $P5014, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
.annotate 'line', 680
    nqp_get_sc_object $P5015, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 74
    $P5016 = $P5015."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 681
    nqp_get_sc_object $P5017, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
    $P5018 = $P5017."new"("ctxsave" :named("value"))
    $P5019 = $P5014."new"($P5016, $P5018, "can" :named("op"))
.annotate 'line', 683
    nqp_get_sc_object $P5020, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
.annotate 'line', 685
    nqp_get_sc_object $P5021, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 74
    $P5022 = $P5021."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5023 = $P5020."new"($P5022, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5024 = $P5013."new"($P5019, $P5023, "if" :named("op"))
    $P5025 = $P5008."new"($P5012, $P5024, "unless" :named("op"))
    $P5026 = $P5001."new"($P5007, $P5025)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_68_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 689
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_250_1381254434.83594' 
    capture_lex $P5024 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc pkg_viv_tmp_13 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback960
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5018 = 'cuid_250_1381254434.83594' 
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
.sub "" :subid("cuid_250_1381254434.83594") :anon :lex :outer("cuid_68_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 692
    .const 'Sub' $P5011 = 'cuid_249_1381254434.83594' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5007 = 'cuid_249_1381254434.83594' 
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
.sub "" :subid("cuid_249_1381254434.83594") :anon :lex :outer("cuid_250_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 695
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_248_1381254434.83594' 
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
    .const 'Sub' $P5003 = 'cuid_248_1381254434.83594' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless385_end977:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1381254434.83594") :anon :lex :outer("cuid_249_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 697
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 2
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
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 3
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
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 4
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
.sub "EXPR" :subid("cuid_69_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5027 = 'cuid_251_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_252_1381254434.83594' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_59 
    if haz_param_5, default1043
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_2, $P5026
  default1043:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5008, $P5009
  vivi_392997:
    $P5010 = $P5008."ast"()
    set $P5003, $P5010
  defor993:
    set $P101, $P5003
    if $P101 goto unless393_end999 
    .const 'Sub' $P5011 = 'cuid_251_1381254434.83594' 
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
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5023 = 'cuid_252_1381254434.83594' 
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
.sub "" :subid("cuid_251_1381254434.83594") :anon :lex :outer("cuid_69_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 723
    nqp_get_sc_object $P5002, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
    find_lex $P5003, "$/"
    $P5004 = $P5002."new"($P5003 :named("node"))
    store_lex "$past", $P5004
    find_lex $P5005, "$/"
    unless_null $P5005, fallback1008
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5017, $P5018
  vivi_4001011:
    unless $P5017 goto if394_end1001 
.annotate 'line', 724
.annotate 'line', 725
    find_lex $P5019, "$past"
    find_lex $P5020, "$/"
    unless_null $P5020, fallback1018
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5039, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5043, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5047, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "" :subid("cuid_252_1381254434.83594") :anon :lex :outer("cuid_69_1381254434.83594")
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
.sub "term:sym<circumfix>" :subid("cuid_70_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 743
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_60 
    unless_null _lex_param_1, fallback1046
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4181047:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_71_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 745
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_61 
    unless_null _lex_param_1, fallback1050
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4201051:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_72_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 746
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_73_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 747
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_62 
    unless_null _lex_param_1, fallback1054
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4221055:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_74_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_63 
    unless_null _lex_param_1, fallback1058
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4241059:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_75_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "decint" :subid("cuid_76_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "hexint" :subid("cuid_77_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "octint" :subid("cuid_78_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "binint" :subid("cuid_79_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_EXPR" :subid("cuid_80_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 758
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_254_1381254434.83594' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc pkg_viv_tmp_14 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 759
    unless_null _lex_param_1, fallback1062
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_4261063:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback1068
    nqp_get_sc_object $P5010, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
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
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5018, $P5019
  vivi_4321073:
    unless $P5018 goto if427_end1065 
.annotate 'line', 760
    nqp_get_sc_object $P5020, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
    type_check $I5004, $P101, $P5020
    unless $I5004 goto if433_else1074 
    .const 'Sub' $P5021 = 'cuid_254_1381254434.83594' 
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
.sub "" :subid("cuid_254_1381254434.83594") :anon :lex :outer("cuid_80_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 761
    .const 'Sub' $P5037 = 'cuid_253_1381254434.83594' 
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
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    set pkg_lookup_tmp_2, $P5003
    get_who $P5004, pkg_lookup_tmp_2
    exists $I5002, $P5004["HLL"]
    unless $I5002 goto if435_else1078 
    get_who $P5006, pkg_lookup_tmp_2
    set $P5005, $P5006["HLL"]
    set $P5008, $P5005
    goto if435_end1079
  if435_else1078:
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5022, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
    find_lex $P5023, "$/"
    $P5024 = $P5022."new"("list" :named("op"), $P5023 :named("node"))
    store_lex "$past", $P5024
    set $P5025, $P101
    iter $P5027, $P101
  for_next1085:
    unless $P5027, for_done1087
    shift $P5029, $P5027
  for_redo1086:
    .const 'Sub' $P5028 = 'cuid_253_1381254434.83594' 
    capture_lex $P5028
    $P5025 = $P5028($P5029)
    goto for_next1085
  for_done1087:
    set $P5036, $P5025
    goto if438_end1084
  if438_else1083:
.annotate 'line', 767
.annotate 'line', 768
    nqp_get_sc_object $P5030, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
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
    nqp_get_sc_object $P5034, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "" :subid("cuid_253_1381254434.83594") :anon :lex :outer("cuid_254_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 765
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5002, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
    $P5003 = $P5002."new"(_lex_param_0 :named("value"))
    $P5004 = $P5001."push"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_81_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 778
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_255_1381254434.83594' 
    capture_lex $P5027 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_69 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback1093
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_4421094:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next1103:
    unless $P5007, for_done1105
    shift $P5014, $P5007
  for_redo1104:
    .const 'Sub' $P5013 = 'cuid_255_1381254434.83594' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next1103
  for_done1105:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if447_end1107 
.annotate 'line', 799
    nqp_get_sc_object $P5015, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
    $P5016 = $P5015."new"($P102 :named("value"))
    $P5017 = $P101."push"($P5016)
  if447_end1107:
    unless $P101 goto if448_else1108 
.annotate 'line', 800
    $P5018 = $P101."shift"()
    set $P5021, $P5018
    goto if448_end1109
  if448_else1108:
    nqp_get_sc_object $P5019, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
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
    nqp_get_sc_object $P5022, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 86
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
.sub "" :subid("cuid_255_1381254434.83594") :anon :lex :outer("cuid_81_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 781
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 782
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5003, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 12
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
    nqp_get_sc_object $P5006, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
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
    nqp_get_sc_object $P5012, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
    find_lex $P5013, "$lastlit"
    $P5014 = $P5012."new"($P5013 :named("value"))
    $P5015 = $P5011."push"($P5014)
  if445_end1100:
.annotate 'line', 793
    find_lex $P5016, "@parts"
    nqp_get_sc_object $P5017, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 12
    type_check $I5005, $P101, $P5017
    unless $I5005 goto if446_else1101 
    set $P5020, $P101
    goto if446_end1102
  if446_else1101:
.annotate 'line', 795
    nqp_get_sc_object $P5018, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 55
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
.sub "quote_atom" :subid("cuid_82_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4521120:
    unless $P5004 goto if450_else1115 
    unless_null _lex_param_1, fallback1123
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "quote_escape:sym<backslash>" :subid("cuid_83_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<stopper>" :subid("cuid_84_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 812
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_72 
    unless_null _lex_param_1, fallback1127
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4561128:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_85_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<nl>" :subid("cuid_86_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<cr>" :subid("cuid_87_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<tab>" :subid("cuid_88_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<ff>" :subid("cuid_89_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<esc>" :subid("cuid_90_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<hex>" :subid("cuid_91_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_4591134:
    unless $P5005 goto if457_else1129 
    unless_null _lex_param_1, fallback1137
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5010, $P5011
  vivi_4611138:
    set $P5021, $P5010
    goto if457_end1130
  if457_else1129:
    unless_null _lex_param_1, fallback1143
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "quote_escape:sym<oct>" :subid("cuid_92_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_4681151:
    unless $P5005 goto if466_else1146 
    unless_null _lex_param_1, fallback1154
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5010, $P5011
  vivi_4701155:
    set $P5021, $P5010
    goto if466_end1147
  if466_else1146:
    unless_null _lex_param_1, fallback1160
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "quote_escape:sym<chr>" :subid("cuid_93_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 829
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_81 
.annotate 'line', 830
    unless_null _lex_param_1, fallback1165
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4761166:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_94_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
.sub "quote_escape:sym<misc>" :subid("cuid_95_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4791172:
    unless $P5004 goto if477_else1167 
    unless_null _lex_param_1, fallback1175
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "charname" :subid("cuid_96_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 841
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    unless_null _lex_param_1, fallback1185
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_4861186:
    unless $P5005 goto if484_else1181 
.annotate 'line', 843
    unless_null _lex_param_1, fallback1189
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "charnames" :subid("cuid_97_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 849
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_256_1381254434.83594' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_87 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1195
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_4911196:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1197:
    unless $P5005, for_done1199
    shift $P5012, $P5005
  for_redo1198:
    .const 'Sub' $P5011 = 'cuid_256_1381254434.83594' 
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
.sub "" :subid("cuid_256_1381254434.83594") :anon :lex :outer("cuid_97_1381254434.83594")
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
.sub "charspec" :subid("cuid_98_1381254434.83594") :anon :lex :outer("cuid_245_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_4941205:
    unless $P5004 goto if492_else1200 
    unless_null _lex_param_1, fallback1208
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "" :subid("cuid_257_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 862
    .const 'Sub' $P5027 = 'cuid_99_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_100_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_101_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_102_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_103_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_104_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_105_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_106_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_107_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_108_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_109_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_110_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_111_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_112_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_113_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_114_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_115_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_116_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_117_1381254434.83594' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_118_1381254434.83594' 
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
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_4981212:
    set $P5001["%parrot_config"], $P5005
    .const 'Sub' $P5007 = 'cuid_99_1381254434.83594' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_100_1381254434.83594' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_101_1381254434.83594' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_102_1381254434.83594' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_103_1381254434.83594' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_104_1381254434.83594' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_105_1381254434.83594' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_106_1381254434.83594' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_107_1381254434.83594' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_108_1381254434.83594' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_109_1381254434.83594' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_110_1381254434.83594' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_111_1381254434.83594' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_112_1381254434.83594' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_113_1381254434.83594' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_114_1381254434.83594' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_115_1381254434.83594' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_116_1381254434.83594' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_117_1381254434.83594' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_118_1381254434.83594' 
    capture_lex $P5026
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "apply_transcodings" :subid("cuid_99_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 865
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5008 = 'cuid_258_1381254434.83594' 
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
    .const 'Sub' $P5005 = 'cuid_258_1381254434.83594' 
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
.sub "" :subid("cuid_258_1381254434.83594") :anon :lex :outer("cuid_99_1381254434.83594")
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
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "config" :subid("cuid_100_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
.sub "force_gc" :subid("cuid_101_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 879
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    sweep 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_102_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 883
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("parrot") 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_103_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 887
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_260_1381254434.83594' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_6, default1241
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5010
  default1241:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    .const 'Sub' $P5007 = 'cuid_260_1381254434.83594' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if505_end1228:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1381254434.83594") :anon :lex :outer("cuid_103_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 894
    .const 'Sub' $P5022 = 'cuid_259_1381254434.83594' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5013, $P5014
  vivi_5091234:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if510_else1235 
    .const 'Sub' $P5015 = 'cuid_259_1381254434.83594' 
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
.sub "" :subid("cuid_259_1381254434.83594") :anon :lex :outer("cuid_260_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 898
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "run_profiled" :subid("cuid_104_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 910
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$old_runcore", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "$what", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "run_traced" :subid("cuid_105_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 918
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$level", _lex_param_1 
    .lex "$what", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "version_string" :subid("cuid_106_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "vmstat" :subid("cuid_107_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
.sub "stages" :subid("cuid_108_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("post pir evalpmc") 
.end
.HLL "nqp"
.namespace []
.sub "is_precomp_stage" :subid("cuid_109_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
.sub "is_textual_stage" :subid("cuid_110_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
.sub "post" :subid("cuid_111_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
.sub "pirbegin" :subid("cuid_112_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
.sub "pir" :subid("cuid_113_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
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
.sub "evalpmc" :subid("cuid_114_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 975
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 977
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "is_compunit" :subid("cuid_115_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 980
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
.sub "compunit_mainline" :subid("cuid_116_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 984
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    .local pmc fb_tmp_98 
    set fb_tmp_98, _lex_param_1
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if521_else1257 
    set $P5001, fb_tmp_98[0]
    set $P5003, $P5001
    goto if521_end1258
  if521_else1257:
    null $P5002
    set $P5003, $P5002
  if521_end1258:
    unless_null $P5003, vivi_5221259
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5003, $P5004
  vivi_5221259:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_coderefs" :subid("cuid_117_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_118_1381254434.83594") :anon :lex :outer("cuid_257_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$limit", _lex_param_1 
.annotate 'line', 993
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
.sub "" :subid("cuid_120_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 998
    .param pmc _lex_param_0 
    .const 'Sub' $P5003 = 'cuid_119_1381254434.83594' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$?CLASS", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_119_1381254434.83594' 
    capture_lex $P5001
    getinterp $P5002
    set $P5002, $P5002['lexpad']
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "default_backend" :subid("cuid_119_1381254434.83594") :anon :lex :outer("cuid_120_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 999
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 103
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1004
    .const 'Sub' $P5043 = 'cuid_121_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_122_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_123_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_124_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_125_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_126_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_127_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_128_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_129_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_130_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_131_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_132_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_133_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_134_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_135_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_136_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_137_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_138_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_139_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_140_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_141_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_142_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_143_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_144_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_145_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_146_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_147_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_148_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_149_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_150_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_151_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_152_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_153_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_154_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_155_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_156_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_157_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_158_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_159_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_160_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_161_1381254434.83594' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_162_1381254434.83594' 
    capture_lex $P5043 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_121_1381254434.83594' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_122_1381254434.83594' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_123_1381254434.83594' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_124_1381254434.83594' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_125_1381254434.83594' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_126_1381254434.83594' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_127_1381254434.83594' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_128_1381254434.83594' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_129_1381254434.83594' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_130_1381254434.83594' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_131_1381254434.83594' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_132_1381254434.83594' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_133_1381254434.83594' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_134_1381254434.83594' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_135_1381254434.83594' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_136_1381254434.83594' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_137_1381254434.83594' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_138_1381254434.83594' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_139_1381254434.83594' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_140_1381254434.83594' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_141_1381254434.83594' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_142_1381254434.83594' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_143_1381254434.83594' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_144_1381254434.83594' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_145_1381254434.83594' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_146_1381254434.83594' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_147_1381254434.83594' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_148_1381254434.83594' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_149_1381254434.83594' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_150_1381254434.83594' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_151_1381254434.83594' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_152_1381254434.83594' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_153_1381254434.83594' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_154_1381254434.83594' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_155_1381254434.83594' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_156_1381254434.83594' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_157_1381254434.83594' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_158_1381254434.83594' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_159_1381254434.83594' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_160_1381254434.83594' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_161_1381254434.83594' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_162_1381254434.83594' 
    capture_lex $P5042
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_121_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1017
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
.annotate 'line', 1019
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."default_backend"()
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
.annotate 'line', 1022
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!backend", 10
    $P5011 = $P5010."stages"()
    set $S5002, $P5011
    concat $S5001, "start parse ast ", $S5002
    split $P5007, " ", $S5001
    repr_bind_attr_obj $P5005, $P5006, "@!stages", 0, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    split $P5014, " ", "e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5012, $P5013, "@!cmdoptions", 3, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    new $P5017, 'Hash'
    repr_bind_attr_obj $P5015, $P5016, "%!config", 6, $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "backend" :subid("cuid_122_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1029
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_99 
    unless _lex_param_1 goto if523_end1261 
.annotate 'line', 1030
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    set fb_tmp_99, _lex_param_1
    repr_defined $I5001, fb_tmp_99
    unless $I5001 goto if524_else1262 
    set $P5003, fb_tmp_99[0]
    set $P5005, $P5003
    goto if524_end1263
  if524_else1262:
    null $P5004
    set $P5005, $P5004
  if524_end1263:
    unless_null $P5005, vivi_5251264
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_5251264:
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5005
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
.annotate 'line', 1032
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend", 10
    $P5013 = $P5012."stages"()
    set $S5002, $P5013
    concat $S5001, "start parse ast ", $S5002
    split $P5009, " ", $S5001
    repr_bind_attr_obj $P5007, $P5008, "@!stages", 0, $P5009
  if523_end1261:
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend", 10
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_123_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1037
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_7, default1267
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5007
  default1267:
    unless _lex_param_1 goto if526_end1266 
.annotate 'line', 1038
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_bind_attr_obj $P5001, $P5002, "$!language", 5, _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if526_end1266:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language", 5
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_124_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1045
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
.sub "config" :subid("cuid_125_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1049
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_126_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1051
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
    unless_null $P5004, fallback1270
    nqp_get_sc_object $P5006, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5005, $P5006
    set fb_tmp_100, $P5005
    repr_defined $I5002, fb_tmp_100
    unless $I5002 goto if528_else1271 
    set $P5007, fb_tmp_100["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if528_end1272
  if528_else1271:
    null $P5008
    set $P5009, $P5008
  if528_end1272:
    unless_null $P5009, vivi_5291273
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_5291273:
    unless_null $P5009, vivi_5301274
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_5301274:
    set $P5004, $P5009
  fallback1270:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless527_end1269 
.annotate 'line', 1052
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless527_end1269:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_127_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1056
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5030 = 'cuid_264_1381254434.83594' 
    capture_lex $P5030 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
.annotate 'line', 1057
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5009 = $P5006."print"($P5008)
    getinterp $P5010
    $P5011 = $P5010."stdin_handle"()
    set $P101, $P5011
    set fb_tmp_101, _lex_param_1
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if531_else1275 
    set $P5012, fb_tmp_101["encoding"]
    set $P5014, $P5012
    goto if531_end1276
  if531_else1275:
    null $P5013
    set $P5014, $P5013
  if531_end1276:
    unless_null $P5014, vivi_5321277
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5014, $P5015
  vivi_5321277:
    set $S5001, $P5014
    box $P5016, $S5001
    set $P102, $P5016
    set $P5017, $P102
    unless $P102 goto if534_end1281 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5018, $I5002
    set $P5017, $P5018
  if534_end1281:
    unless $P5017 goto if533_end1279 
.annotate 'line', 1061
    $P5019 = $P101."encoding"($P102)
  if533_end1279:
    set fb_tmp_102, _lex_param_1
    repr_defined $I5003, fb_tmp_102
    unless $I5003 goto if535_else1282 
    set $P5020, fb_tmp_102["target"]
    set $P5022, $P5020
    goto if535_end1283
  if535_else1282:
    null $P5021
    set $P5022, $P5021
  if535_end1283:
    unless_null $P5022, vivi_5361284
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5022, $P5023
  vivi_5361284:
    set $S5004, $P5022
    downcase $S5003, $S5004
    box $P5024, $S5003
    set $P103, $P5024
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while537_handlers1288
    push_eh $P5028
  while537_test1285:
    box $P5029, 1
    set $P5027, $P5029
    unless 1 goto while537_done1289 
  while537_redo1287:
    .const 'Sub' $P5025 = 'cuid_264_1381254434.83594' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
    goto while537_test1285 
  while537_handlers1288:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while537_test1285
    eq $P5028, .CONTROL_LOOP_REDO, while537_redo1287
  while537_done1289:
    pop_eh 
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_264_1381254434.83594") :anon :lex :outer("cuid_127_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1067
    .const 'Sub' $P5029 = 'cuid_263_1381254434.83594' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_103 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    isfalse $I5001, $P5006
    unless $I5001 goto if538_end1291 
    die 0, .CONTROL_LOOP_LAST
  if538_end1291:
.annotate 'line', 1070
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5002, $P5007
    if $I5002, defor1292
    box $P5011, "> "
    set $P5007, $P5011
  defor1292:
    set $P101, $P5007
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5003, $P102
    set $I5006, $I5003
    if $I5003 goto unless540_end1296 
    defined $I5005, $P102
    not $I5004, $I5005
    set $I5006, $I5004
  unless540_end1296:
    unless $I5006 goto if539_end1294 
.annotate 'line', 1072
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if539_end1294:
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if544_end1303 
    .const 'Sub' $P5026 = 'cuid_263_1381254434.83594' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if544_end1303:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_263_1381254434.83594") :anon :lex :outer("cuid_264_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1082
    .const 'Sub' $P5047 = 'cuid_262_1381254434.83594' 
    capture_lex $P5047 
    .lex "$output", $P101 
    .local pmc fb_tmp_104 
    .local pmc fb_tmp_105 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1085
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_5461305
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1086
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_5451304
  catch_handler_5461305:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_262_1381254434.83594' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_5451304
  skip_handler_5451304:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1308
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5014, $P5015
    set fb_tmp_104, $P5014
    repr_defined $I5002, fb_tmp_104
    unless $I5002 goto if548_else1309 
    set $P5016, fb_tmp_104["$MAIN_CTX"]
    set $P5018, $P5016
    goto if548_end1310
  if548_else1309:
    null $P5017
    set $P5018, $P5017
  if548_end1310:
    unless_null $P5018, vivi_5491311
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5018, $P5019
  vivi_5491311:
    unless_null $P5018, vivi_5501312
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_5501312:
    set $P5013, $P5018
  fallback1308:
    defined $I5001, $P5013
    unless $I5001 goto if547_end1307 
.annotate 'line', 1092
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1313
    nqp_get_sc_object $P5023, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5022, $P5023
    set fb_tmp_105, $P5022
    repr_defined $I5003, fb_tmp_105
    unless $I5003 goto if551_else1314 
    set $P5024, fb_tmp_105["$MAIN_CTX"]
    set $P5026, $P5024
    goto if551_end1315
  if551_else1314:
    null $P5025
    set $P5026, $P5025
  if551_end1315:
    unless_null $P5026, vivi_5521316
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5026, $P5027
  vivi_5521316:
    unless_null $P5026, vivi_5531317
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_5531317:
    set $P5021, $P5026
  fallback1313:
    store_lex "$save_ctx", $P5021
  if547_end1307:
    isnull $I5004, $P101
    unless $I5004 goto if554_end1319 
    die 0, .CONTROL_LOOP_NEXT
  if554_end1319:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if555_else1320 
.annotate 'line', 1097
.annotate 'line', 1098
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5046, $P5032
    goto if555_end1321
  if555_else1320:
.annotate 'line', 1099
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    nqp_get_sc_object $P5035, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5036, $P5033, $P5035, "$!backend", 10
    find_lex $P5037, "$target"
    $P5038 = $P5036."is_textual_stage"($P5037)
    unless $P5038 goto if556_else1322 
    set $S5003, $P101
    say $S5003
    box $P5045, $S5003
    set $P5044, $P5045
    goto if556_end1323
  if556_else1322:
.annotate 'line', 1101
.annotate 'line', 1102
    find_lex $P5040, "self"
    nqp_decontainerize $P5039, $P5040
    find_lex $P5041, "$target"
    find_lex $P5042, "%adverbs"
    $P5043 = $P5039."dumper"($P101, $P5041, $P5042 :flat :named)
    set $P5044, $P5043
  if556_end1323:
    set $P5046, $P5044
  if555_end1321:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1381254434.83594") :anon :lex :outer("cuid_263_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1087
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 1088
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_128_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1108
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
.sub "interactive_exception" :subid("cuid_129_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1112
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
.sub "eval" :subid("cuid_130_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1116
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5026 = 'cuid_265_1381254434.83594' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_267_1381254434.83594' 
    capture_lex $P5026 
    .lex "$output", $P101 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    set fb_tmp_106, _lex_param_3
    repr_defined $I5001, fb_tmp_106
    unless $I5001 goto if558_else1326 
    set $P5002, fb_tmp_106["profile-compile"]
    set $P5004, $P5002
    goto if558_end1327
  if558_else1326:
    null $P5003
    set $P5004, $P5003
  if558_end1327:
    unless_null $P5004, vivi_5591328
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_5591328:
    unless $P5004 goto if557_else1324 
.annotate 'line', 1119
.annotate 'line', 1120
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend", 10
    .const 'Sub' $P5010 = 'cuid_265_1381254434.83594' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5008."run_profiled"($P5009)
    set $P101, $P5011
    goto if557_end1325
  if557_else1324:
.annotate 'line', 1124
.annotate 'line', 1125
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."compile"(_lex_param_1, 1 :named("compunit_ok"), _lex_param_3 :flat :named)
    set $P101, $P5013
  if557_end1325:
.annotate 'line', 1128
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend", 10
    $P5017 = $P5016."is_compunit"($P101)
    set $P5022, $P5017
    unless $P5017 goto if561_end1332 
    set fb_tmp_107, _lex_param_3
    repr_defined $I5003, fb_tmp_107
    unless $I5003 goto if562_else1333 
    set $P5018, fb_tmp_107["target"]
    set $P5020, $P5018
    goto if562_end1334
  if562_else1333:
    null $P5019
    set $P5020, $P5019
  if562_end1334:
    unless_null $P5020, vivi_5631335
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5020, $P5021
  vivi_5631335:
    set $S5001, $P5020
    iseq $I5002, $S5001, ""
    box $P5023, $I5002
    set $P5022, $P5023
  if561_end1332:
    unless $P5022 goto if560_end1330 
    .const 'Sub' $P5024 = 'cuid_267_1381254434.83594' 
    capture_lex $P5024
    $P5025 = $P5024()
  if560_end1330:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_265_1381254434.83594") :anon :lex :outer("cuid_130_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1120

.annotate 'line', 1121
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$code"
    find_lex $P5004, "%adverbs"
    $P5005 = $P5001."compile"($P5003, 1 :named("compunit_ok"), $P5004 :flat :named)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_267_1381254434.83594") :anon :lex :outer("cuid_130_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1128
    .const 'Sub' $P5049 = 'cuid_266_1381254434.83594' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_268_1381254434.83594' 
    capture_lex $P5049 
    .lex "$outer_ctx", $P101 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_108, $P5002
    repr_defined $I5001, fb_tmp_108
    unless $I5001 goto if564_else1336 
    set $P5003, fb_tmp_108["outer_ctx"]
    set $P5005, $P5003
    goto if564_end1337
  if564_else1336:
    null $P5004
    set $P5005, $P5004
  if564_end1337:
    unless_null $P5005, vivi_5651338
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_5651338:
    set $P101, $P5005
.annotate 'line', 1130
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!backend", 10
    find_lex $P5011, "$output"
    $P5012 = $P5010."compunit_mainline"($P5011)
    store_lex "$output", $P5012
    defined $I5002, $P101
    unless $I5002 goto if566_end1340 
.annotate 'line', 1131
    find_lex $P5013, "$output"
    $P5014 = $P5013."set_outer_ctx"($P101)
  if566_end1340:
    find_lex $P5015, "%adverbs"
    set fb_tmp_109, $P5015
    repr_defined $I5003, fb_tmp_109
    unless $I5003 goto if568_else1343 
    set $P5016, fb_tmp_109["profile"]
    set $P5018, $P5016
    goto if568_end1344
  if568_else1343:
    null $P5017
    set $P5018, $P5017
  if568_end1344:
    unless_null $P5018, vivi_5691345
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5018, $P5019
  vivi_5691345:
    unless $P5018 goto if567_else1341 
.annotate 'line', 1135
.annotate 'line', 1136
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5023, $P5020, $P5022, "$!backend", 10
    .const 'Sub' $P5025 = 'cuid_266_1381254434.83594' 
    capture_lex $P5025
    newclosure $P5024, $P5025
    $P5026 = $P5023."run_profiled"($P5024)
    store_lex "$output", $P5026
    set $P5048, $P5026
    goto if567_end1342
  if567_else1341:
    find_lex $P5027, "%adverbs"
    set fb_tmp_110, $P5027
    repr_defined $I5004, fb_tmp_110
    unless $I5004 goto if571_else1348 
    set $P5028, fb_tmp_110["trace"]
    set $P5030, $P5028
    goto if571_end1349
  if571_else1348:
    null $P5029
    set $P5030, $P5029
  if571_end1349:
    unless_null $P5030, vivi_5721350
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5030, $P5031
  vivi_5721350:
    unless $P5030 goto if570_else1346 
.annotate 'line', 1138
.annotate 'line', 1139
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    nqp_get_sc_object $P5034, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5035, $P5032, $P5034, "$!backend", 10
    find_lex $P5036, "%adverbs"
    set fb_tmp_111, $P5036
    repr_defined $I5005, fb_tmp_111
    unless $I5005 goto if573_else1351 
    set $P5037, fb_tmp_111["trace"]
    set $P5039, $P5037
    goto if573_end1352
  if573_else1351:
    null $P5038
    set $P5039, $P5038
  if573_end1352:
    unless_null $P5039, vivi_5741353
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5039, $P5040
  vivi_5741353:
    .const 'Sub' $P5042 = 'cuid_268_1381254434.83594' 
    capture_lex $P5042
    newclosure $P5041, $P5042
    $P5043 = $P5035."run_traced"($P5039, $P5041)
    store_lex "$output", $P5043
    set $P5047, $P5043
    goto if570_end1347
  if570_else1346:
.annotate 'line', 1141
.annotate 'line', 1142
    find_lex $P5045, "@args"
    find_lex $P5044, "$output"
    $P5046 = $P5044($P5045 :flat)
    store_lex "$output", $P5046
    set $P5047, $P5046
  if570_end1347:
    set $P5048, $P5047
  if567_end1342:
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_266_1381254434.83594") :anon :lex :outer("cuid_267_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1136

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_268_1381254434.83594") :anon :lex :outer("cuid_267_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1139

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_131_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1149
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
.sub "panic" :subid("cuid_132_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1154
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
.annotate 'line', 1155
    $P5001 = "&join"("", _lex_param_1)
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_133_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1158
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_8, default1356
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1356:
    set $N5001, _lex_param_1
    unless $N5001 goto if575_end1355 
.annotate 'line', 1159
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_bind_attr_obj $P5001, $P5002, "@!stages", 0, _lex_param_1
  if575_end1355:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages", 0
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_134_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1165
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_112 
    set $N5001, _lex_param_1
    unless $N5001 goto if576_end1358 
.annotate 'line', 1166
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    set fb_tmp_112, _lex_param_1
    repr_defined $I5001, fb_tmp_112
    unless $I5001 goto if577_else1359 
    set $P5003, fb_tmp_112[0]
    set $P5005, $P5003
    goto if577_end1360
  if577_else1359:
    null $P5004
    set $P5005, $P5004
  if577_end1360:
    unless_null $P5005, vivi_5781361
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_5781361:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", 1, $P5005
  if576_end1358:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar", 1
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_135_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_113 
    set $N5001, _lex_param_1
    unless $N5001 goto if579_end1363 
.annotate 'line', 1173
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if580_else1364 
    set $P5003, fb_tmp_113[0]
    set $P5005, $P5003
    goto if580_end1365
  if580_else1364:
    null $P5004
    set $P5005, $P5004
  if580_end1365:
    unless_null $P5005, vivi_5811366
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_5811366:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", 2, $P5005
  if579_end1363:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions", 2
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_136_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1179
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_137_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1181
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_138_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1183
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_9, default1369
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5006
  default1369:
    defined $I5001, _lex_param_1
    unless $I5001 goto if582_end1368 
.annotate 'line', 1184
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", 4, _lex_param_1
  if582_end1368:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname", 4
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_139_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1191
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_10, default1372
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1372:
    set $N5001, _lex_param_1
    unless $N5001 goto if583_end1371 
.annotate 'line', 1192
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", 3, _lex_param_1
  if583_end1371:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions", 3
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_140_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1198
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5040 = 'cuid_269_1381254434.83594' 
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set fb_tmp_114, _lex_param_1
    repr_defined $I5001, fb_tmp_114
    unless $I5001 goto if584_else1373 
    set $P5005, fb_tmp_114[0]
    set $P5007, $P5005
    goto if584_end1374
  if584_else1373:
    null $P5006
    set $P5007, $P5006
  if584_end1374:
    unless_null $P5007, vivi_5851375
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5008
  vivi_5851375:
    set $P101, $P5007
.annotate 'line', 1200
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1201
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1202
    $P5012 = $P102."arguments"()
    set $P104, $P5012
    set $P5013, $P103
    iter $P5015, $P103
  for_next1376:
    unless $P5015, for_done1378
    shift $P5017, $P5015
  for_redo1377:
    .const 'Sub' $P5016 = 'cuid_269_1381254434.83594' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next1376
  for_done1378:
    set fb_tmp_115, _lex_param_2
    repr_defined $I5002, fb_tmp_115
    unless $I5002 goto if588_else1383 
    set $P5018, fb_tmp_115["help"]
    set $P5020, $P5018
    goto if588_end1384
  if588_else1383:
    null $P5019
    set $P5020, $P5019
  if588_end1384:
    unless_null $P5020, vivi_5891385
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5020, $P5021
  vivi_5891385:
    set $P5026, $P5020
    if $P5020 goto unless587_end1382 
    set fb_tmp_116, _lex_param_2
    repr_defined $I5003, fb_tmp_116
    unless $I5003 goto if590_else1386 
    set $P5022, fb_tmp_116["h"]
    set $P5024, $P5022
    goto if590_end1387
  if590_else1386:
    null $P5023
    set $P5024, $P5023
  if590_end1387:
    unless_null $P5024, vivi_5911388
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5024, $P5025
  vivi_5911388:
    set $P5026, $P5024
  unless587_end1382:
    unless $P5026 goto if586_end1380 
.annotate 'line', 1207
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5027."usage"($P101)
  if586_end1380:
.annotate 'line', 1209
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5031, $P5029, $P5030, "$!backend", 10
    set fb_tmp_117, _lex_param_2
    repr_defined $I5004, fb_tmp_117
    unless $I5004 goto if593_else1391 
    set $P5032, fb_tmp_117["target"]
    set $P5034, $P5032
    goto if593_end1392
  if593_else1391:
    null $P5033
    set $P5034, $P5033
  if593_end1392:
    unless_null $P5034, vivi_5941393
    nqp_get_sc_object $P5035, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5034, $P5035
  vivi_5941393:
    $P5036 = $P5031."is_precomp_stage"($P5034)
    unless $P5036 goto if592_end1390 
    box $P5037, 1
    set _lex_param_2["precomp"], $P5037
  if592_end1390:
.annotate 'line', 1213
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_269_1381254434.83594") :anon :lex :outer("cuid_140_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1204
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%adverbs"
.annotate 'line', 1205
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_141_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1217
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5101 = 'cuid_270_1381254434.83594' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_271_1381254434.83594' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_272_1381254434.83594' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_273_1381254434.83594' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_274_1381254434.83594' 
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    set fb_tmp_118, _lex_param_2
    repr_defined $I5001, fb_tmp_118
    unless $I5001 goto if597_else1398 
    set $P5005, fb_tmp_118["version"]
    set $P5007, $P5005
    goto if597_end1399
  if597_else1398:
    null $P5006
    set $P5007, $P5006
  if597_end1399:
    unless_null $P5007, vivi_5981400
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5008
  vivi_5981400:
    set $P5013, $P5007
    if $P5007 goto unless596_end1397 
    set fb_tmp_119, _lex_param_2
    repr_defined $I5002, fb_tmp_119
    unless $I5002 goto if599_else1401 
    set $P5009, fb_tmp_119["v"]
    set $P5011, $P5009
    goto if599_end1402
  if599_else1401:
    null $P5010
    set $P5011, $P5010
  if599_end1402:
    unless_null $P5011, vivi_6001403
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_6001403:
    set $P5013, $P5011
  unless596_end1397:
    unless $P5013 goto if595_end1395 
.annotate 'line', 1218
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."version"()
  if595_end1395:
    set fb_tmp_120, _lex_param_2
    repr_defined $I5003, fb_tmp_120
    unless $I5003 goto if604_else1410 
    set $P5016, fb_tmp_120["verbose-config"]
    set $P5018, $P5016
    goto if604_end1411
  if604_else1410:
    null $P5017
    set $P5018, $P5017
  if604_end1411:
    unless_null $P5018, vivi_6051412
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5018, $P5019
  vivi_6051412:
    set $P5024, $P5018
    if $P5018 goto unless603_end1409 
    set fb_tmp_121, _lex_param_2
    repr_defined $I5004, fb_tmp_121
    unless $I5004 goto if606_else1413 
    set $P5020, fb_tmp_121["V"]
    set $P5022, $P5020
    goto if606_end1414
  if606_else1413:
    null $P5021
    set $P5022, $P5021
  if606_end1414:
    unless_null $P5022, vivi_6071415
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5022, $P5023
  vivi_6071415:
    set $P5024, $P5022
  unless603_end1409:
    set $P5029, $P5024
    if $P5024 goto unless602_end1407 
    set fb_tmp_122, _lex_param_2
    repr_defined $I5005, fb_tmp_122
    unless $I5005 goto if608_else1416 
    set $P5025, fb_tmp_122["show-config"]
    set $P5027, $P5025
    goto if608_end1417
  if608_else1416:
    null $P5026
    set $P5027, $P5026
  if608_end1417:
    unless_null $P5027, vivi_6091418
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5027, $P5028
  vivi_6091418:
    set $P5029, $P5027
  unless602_end1407:
    unless $P5029 goto if601_end1405 
.annotate 'line', 1219
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."verbose-config"()
  if601_end1405:
    set fb_tmp_123, _lex_param_2
    repr_defined $I5006, fb_tmp_123
    unless $I5006 goto if611_else1421 
    set $P5032, fb_tmp_123["nqpevent"]
    set $P5034, $P5032
    goto if611_end1422
  if611_else1421:
    null $P5033
    set $P5034, $P5033
  if611_end1422:
    unless_null $P5034, vivi_6121423
    nqp_get_sc_object $P5035, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5034, $P5035
  vivi_6121423:
    unless $P5034 goto if610_end1420 
.annotate 'line', 1221
    nqp_decontainerize $P5036, _lex_param_0
    set fb_tmp_124, _lex_param_2
    repr_defined $I5007, fb_tmp_124
    unless $I5007 goto if613_else1424 
    set $P5037, fb_tmp_124["nqpevent"]
    set $P5039, $P5037
    goto if613_end1425
  if613_else1424:
    null $P5038
    set $P5039, $P5038
  if613_end1425:
    unless_null $P5039, vivi_6141426
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5039, $P5040
  vivi_6141426:
    $P5041 = $P5036."nqpevent"($P5039)
  if610_end1420:
    box $P5042, 0
    set $P103, $P5042
    set fb_tmp_125, _lex_param_2
    repr_defined $I5008, fb_tmp_125
    unless $I5008 goto if615_else1427 
    set $P5043, fb_tmp_125["target"]
    set $P5045, $P5043
    goto if615_end1428
  if615_else1427:
    null $P5044
    set $P5045, $P5044
  if615_end1428:
    unless_null $P5045, vivi_6161429
    nqp_get_sc_object $P5046, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5045, $P5046
  vivi_6161429:
    set $S5002, $P5045
    downcase $S5001, $S5002
    box $P5047, $S5001
    set $P104, $P5047
    new $P5087, 'ExceptionHandler'
    set_label $P5087, catch_handler_6481481
    $P5087.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5087
.annotate 'line', 1227
    new $P5085, 'ExceptionHandler'
    set_label $P5085, catch_handler_6441476
    $P5085.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5085
    new $P5085, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5085, catch_handler_6451477
    push_eh $P5085
    set fb_tmp_126, _lex_param_2
    repr_defined $I5010, fb_tmp_126
    unless $I5010 goto if618_else1432 
    set $P5048, fb_tmp_126["e"]
    set $P5050, $P5048
    goto if618_end1433
  if618_else1432:
    null $P5049
    set $P5050, $P5049
  if618_end1433:
    unless_null $P5050, vivi_6191434
    nqp_get_sc_object $P5051, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5050, $P5051
  vivi_6191434:
    defined $I5009, $P5050
    unless $I5009 goto if617_else1430 
    .const 'Sub' $P5052 = 'cuid_270_1381254434.83594' 
    capture_lex $P5052
    $P5053 = $P5052()
    goto if617_end1431
  if617_else1430:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if627_else1447 
.annotate 'line', 1236
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5055
    set $P5069, $P101
    goto if627_end1448
  if627_else1447:
    set fb_tmp_129, _lex_param_2
    repr_defined $I5012, fb_tmp_129
    unless $I5012 goto if629_else1451 
    set $P5056, fb_tmp_129["combine"]
    set $P5058, $P5056
    goto if629_end1452
  if629_else1451:
    null $P5057
    set $P5058, $P5057
  if629_end1452:
    unless_null $P5058, vivi_6301453
    nqp_get_sc_object $P5059, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5058, $P5059
  vivi_6301453:
    unless $P5058 goto if628_else1449 
.annotate 'line', 1237
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5061
    set $P5068, $P101
    goto if628_end1450
  if628_else1449:
.annotate 'line', 1238
    nqp_decontainerize $P5062, _lex_param_0
    set fb_tmp_130, _lex_param_1
    repr_defined $I5013, fb_tmp_130
    unless $I5013 goto if631_else1454 
    set $P5063, fb_tmp_130[0]
    set $P5065, $P5063
    goto if631_end1455
  if631_else1454:
    null $P5064
    set $P5065, $P5064
  if631_end1455:
    unless_null $P5065, vivi_6321456
    nqp_get_sc_object $P5066, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5065, $P5066
  vivi_6321456:
    $P5067 = $P5062."evalfiles"($P5065, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5067
    set $P5068, $P101
  if628_end1450:
    set $P5069, $P5068
  if627_end1448:
  if617_end1431:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5080, $I5014
    set $P5079, $P5080
    unless $I5014 goto if634_end1460 
.annotate 'line', 1240
    nqp_decontainerize $P5070, _lex_param_0
    nqp_get_sc_object $P5071, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5072, $P5070, $P5071, "$!backend", 10
    $P5073 = $P5072."is_textual_stage"($P104)
    set $P5078, $P5073
    if $P5073 goto unless635_end1462 
    set fb_tmp_131, _lex_param_2
    repr_defined $I5016, fb_tmp_131
    unless $I5016 goto if636_else1463 
    set $P5074, fb_tmp_131["output"]
    set $P5076, $P5074
    goto if636_end1464
  if636_else1463:
    null $P5075
    set $P5076, $P5075
  if636_end1464:
    unless_null $P5076, vivi_6371465
    nqp_get_sc_object $P5077, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5076, $P5077
  vivi_6371465:
    set $P5078, $P5076
  unless635_end1462:
    set $P5079, $P5078
  if634_end1460:
    unless $P5079 goto if633_end1458 
    .const 'Sub' $P5081 = 'cuid_271_1381254434.83594' 
    capture_lex $P5081
    $P5082 = $P5081()
  if633_end1458:
    nqp_get_sc_object $P5083, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    nqp_get_sc_object $P5084, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5086, $P5084
    pop_eh 
    pop_eh 
    goto skip_handler_6431475
  catch_handler_6441476:
    .get_results ($P5085) 
    .const 'Sub' $P10001 = 'cuid_272_1381254434.83594' 
    capture_lex $P10001
    $P10001($P5085)
    set $I10001, 1
    set $P5085["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10002
    goto skip_handler_6431475
  catch_handler_6451477:
    .get_results ($P5085) 
    .const 'Sub' $P10003 = 'cuid_273_1381254434.83594' 
    capture_lex $P10003
    $P10003($P5085)
    set $I10002, 1
    set $P5085["handled"], $I10002
    nqp_get_sc_object $P10004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10004
    goto skip_handler_6431475
  skip_handler_6431475:
    set $P5088, $P5086
    pop_eh 
    goto skip_handler_6471480
  catch_handler_6481481:
    .get_results ($P5087) 
    set $I10001, 1
    set $P5087["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5087
    pop_upto_eh $P5087
    pop_eh 
    set $P5088, $P10001
    goto skip_handler_6471480
  skip_handler_6471480:
    unless $P103 goto if649_end1483 
.annotate 'line', 1263
    set fb_tmp_133, _lex_param_2
    repr_defined $I5017, fb_tmp_133
    unless $I5017 goto if652_else1488 
    set $P5089, fb_tmp_133["ll-exception"]
    set $P5091, $P5089
    goto if652_end1489
  if652_else1488:
    null $P5090
    set $P5091, $P5090
  if652_end1489:
    unless_null $P5091, vivi_6531490
    nqp_get_sc_object $P5092, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5091, $P5092
  vivi_6531490:
    set $P5094, $P5091
    if $P5091 goto unless651_end1487 
    nqp_decontainerize $P5093, _lex_param_0
    can $I5019, $P5093, "handle-exception"
    not $I5018, $I5019
    box $P5095, $I5018
    set $P5094, $P5095
  unless651_end1487:
    unless $P5094 goto if650_else1484 
    .const 'Sub' $P5096 = 'cuid_274_1381254434.83594' 
    capture_lex $P5096
    $P5097 = $P5096()
    set $P5100, $P5097
    goto if650_end1485
  if650_else1484:
.annotate 'line', 1271
.annotate 'line', 1272
    nqp_decontainerize $P5098, _lex_param_0
    $P5099 = $P5098."handle-exception"($P102)
    set $P5100, $P5099
  if650_end1485:
  if649_end1483:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_270_1381254434.83594") :anon :lex :outer("cuid_141_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1228
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", 7, $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1231
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_127, $P5009
    repr_defined $I5001, fb_tmp_127
    unless $I5001 goto if620_else1435 
    set $P5010, fb_tmp_127["e"]
    set $P5012, $P5010
    goto if620_end1436
  if620_else1435:
    null $P5011
    set $P5012, $P5011
  if620_end1436:
    unless_null $P5012, vivi_6211437
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5012, $P5013
  vivi_6211437:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    box $P5025, $I5002
    set $P5024, $P5025
    if $I5002 goto unless624_end1443 
.annotate 'line', 1232
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend", 10
    find_lex $P5022, "$target"
    $P5023 = $P5021."is_textual_stage"($P5022)
    set $P5024, $P5023
  unless624_end1443:
    set $P5031, $P5024
    if $P5024 goto unless623_end1441 
    find_lex $P5026, "%adverbs"
    set fb_tmp_128, $P5026
    repr_defined $I5003, fb_tmp_128
    unless $I5003 goto if625_else1444 
    set $P5027, fb_tmp_128["output"]
    set $P5029, $P5027
    goto if625_end1445
  if625_else1444:
    null $P5028
    set $P5029, $P5028
  if625_end1445:
    unless_null $P5029, vivi_6261446
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5029, $P5030
  vivi_6261446:
    set $P5031, $P5029
  unless623_end1441:
    set $P5038, $P5031
    if $P5031 goto unless622_end1439 
.annotate 'line', 1233
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$result"
    find_lex $P5035, "$target"
    find_lex $P5036, "%adverbs"
    $P5037 = $P5032."dumper"($P5034, $P5035, $P5036 :flat :named)
    set $P5038, $P5037
  unless622_end1439:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_271_1381254434.83594") :anon :lex :outer("cuid_141_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1240
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_132, $P5003
    repr_defined $I5001, fb_tmp_132
    unless $I5001 goto if638_else1466 
    set $P5004, fb_tmp_132["output"]
    set $P5006, $P5004
    goto if638_end1467
  if638_else1466:
    null $P5005
    set $P5006, $P5005
  if638_end1467:
    unless_null $P5006, vivi_6391468
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5006, $P5007
  vivi_6391468:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless641_end1472 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless641_end1472:
    unless $I5004 goto if640_else1469 
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5011, $P5009
    goto if640_end1470
  if640_else1469:
    set $S5003, $P101
    open $P5010, $S5003, "w"
    set $P5011, $P5010
  if640_end1470:
    set $P102, $P5011
    if $P102 goto unless642_end1474 
.annotate 'line', 1245
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    set $S5005, $P101
    concat $S5004, "Cannot write to ", $S5005
    $P5014 = $P5012."panic"($S5004)
  unless642_end1474:
    find_lex $P5015, "$result"
    $P5016 = $P102."print"($P5015)
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_272_1381254434.83594") :anon :lex :outer("cuid_141_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1249
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
.sub "" :subid("cuid_273_1381254434.83594") :anon :lex :outer("cuid_141_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1253
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if646_else1478 
.annotate 'line', 1254
.annotate 'line', 1255
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if646_end1479
  if646_else1478:
.annotate 'line', 1256
    rethrow _lex_param_0
  if646_end1479:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_274_1381254434.83594") :anon :lex :outer("cuid_141_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1264
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "process_args" :subid("cuid_142_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1278
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_275_1381254434.83594' 
    capture_lex $P5043 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_134 
    .local pmc pkg_lookup_tmp_5 
    .local pmc pkg_lookup_tmp_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
.annotate 'line', 1280
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1282
    nqp_get_sc_object $P5006, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    set pkg_lookup_tmp_4, $P5006
    get_who $P5007, pkg_lookup_tmp_4
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if655_else1493 
    get_who $P5009, pkg_lookup_tmp_4
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if655_end1494
  if655_else1493:
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5010
  if655_end1494:
    set pkg_lookup_tmp_5, $P5011
    get_who $P5012, pkg_lookup_tmp_5
    exists $I5003, $P5012["CommandLine"]
    unless $I5003 goto if656_else1495 
    get_who $P5014, pkg_lookup_tmp_5
    set $P5013, $P5014["CommandLine"]
    set $P5016, $P5013
    goto if656_end1496
  if656_else1495:
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5016, $P5015
  if656_end1496:
    get_who $P5005, $P5016
    set fb_tmp_134, $P5005
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if654_else1491 
    set $P5017, fb_tmp_134["Parser"]
    set $P5019, $P5017
    goto if654_end1492
  if654_else1491:
    null $P5018
    set $P5019, $P5018
  if654_end1492:
    unless_null $P5019, vivi_6571497
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5019, $P5020
  vivi_6571497:
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions", 3
    $P5024 = $P5019."new"($P5023)
    set $P101, $P5024
.annotate 'line', 1283
    $P101."add-stopper"("-e")
.annotate 'line', 1284
    $P101."stop-after-first-arg"()
    new $P5029, 'ExceptionHandler'
    set_label $P5029, catch_handler_6611501
    $P5029.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5029
.annotate 'line', 1286
    new $P5027, 'ExceptionHandler'
    set_label $P5027, catch_handler_6591499
    $P5027.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5027
.annotate 'line', 1287
    $P5025 = $P101."parse"(_lex_param_1)
    set $P102, $P5025
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5028, $P5026
    pop_eh 
    goto skip_handler_6581498
  catch_handler_6591499:
    .get_results ($P5027) 
    .const 'Sub' $P10001 = 'cuid_275_1381254434.83594' 
    capture_lex $P10001
    $P10001($P5027)
    set $I10001, 1
    set $P5027["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5027
    pop_upto_eh $P5027
    pop_eh 
    set $P5028, $P10002
    goto skip_handler_6581498
  skip_handler_6581498:
    set $P5030, $P5028
    pop_eh 
    goto skip_handler_6601500
  catch_handler_6611501:
    .get_results ($P5029) 
    set $I10001, 1
    set $P5029["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5029
    pop_upto_eh $P5029
    pop_eh 
    set $P5030, $P10001
    goto skip_handler_6601500
  skip_handler_6601500:
    unless $P102 goto if662_else1502 
.annotate 'line', 1294
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
.annotate 'line', 1295
    $P5033 = $P102."options"()
    repr_bind_attr_obj $P5031, $P5032, "%!cli-options", 9, $P5033
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
.annotate 'line', 1296
    $P5036 = $P102."arguments"()
    repr_bind_attr_obj $P5034, $P5035, "@!cli-arguments", 8, $P5036
    goto if662_end1503
  if662_else1502:
.annotate 'line', 1298
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    new $P5039, 'Hash'
    repr_bind_attr_obj $P5037, $P5038, "%!cli-options", 9, $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    new $P5042, 'ResizablePMCArray'
    repr_bind_attr_obj $P5040, $P5041, "@!cli-arguments", 8, $P5042
  if662_end1503:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_275_1381254434.83594") :anon :lex :outer("cuid_142_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1288
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1290
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_143_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1305
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5047 = 'cuid_277_1381254434.83594' 
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P106, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1504
    .lex "RETURN", $P108
    set fb_tmp_135, _lex_param_3
    repr_defined $I5001, fb_tmp_135
    unless $I5001 goto if663_else1506 
    set $P5008, fb_tmp_135["target"]
    set $P5010, $P5008
    goto if663_end1507
  if663_else1506:
    null $P5009
    set $P5010, $P5009
  if663_end1507:
    unless_null $P5010, vivi_6641508
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5010, $P5011
  vivi_6641508:
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5012, $S5001
    set $P101, $P5012
    set fb_tmp_136, _lex_param_3
    repr_defined $I5002, fb_tmp_136
    unless $I5002 goto if665_else1509 
    set $P5013, fb_tmp_136["encoding"]
    set $P5015, $P5013
    goto if665_end1510
  if665_else1509:
    null $P5014
    set $P5015, $P5014
  if665_end1510:
    unless_null $P5015, vivi_6661511
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5015, $P5016
  vivi_6661511:
    set $P102, $P5015
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if667_else1512 
    set $P5018, _lex_param_1
    goto if667_end1513
  if667_else1512:
    new $P5017, 'ResizablePMCArray'
    push $P5017, _lex_param_1
    set $P5018, $P5017
  if667_end1513:
    set $P103, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
.annotate 'line', 1309
    $P5021 = "&join"(",", $P103)
    repr_bind_attr_obj $P5019, $P5020, "$!user_progname", 7, $P5021
    set $P5022, $P103
    iter $P5024, $P103
  for_next1526:
    unless $P5024, for_done1528
    shift $P5026, $P5024
  for_redo1527:
    .const 'Sub' $P5025 = 'cuid_277_1381254434.83594' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1526
  for_done1528:
.annotate 'line', 1332
    $P5027 = "&join"("", $P104)
    set $P105, $P5027
.annotate 'line', 1333
    $P5028 = "&join"(" ", $P103)
    set $P106, $P5028
.annotate 'line', 1334
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5030
    set $S5003, $P101
    iseq $I5004, $S5003, ""
    box $P5036, $I5004
    set $P5035, $P5036
    if $I5004 goto unless680_end1534 
.annotate 'line', 1335
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!backend", 10
    $P5034 = $P5033."is_textual_stage"($P101)
    set $P5035, $P5034
  unless680_end1534:
    set $P5041, $P5035
    if $P5035 goto unless679_end1532 
    set fb_tmp_137, _lex_param_3
    repr_defined $I5005, fb_tmp_137
    unless $I5005 goto if681_else1535 
    set $P5037, fb_tmp_137["output"]
    set $P5039, $P5037
    goto if681_end1536
  if681_else1535:
    null $P5038
    set $P5039, $P5038
  if681_end1536:
    unless_null $P5039, vivi_6821537
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5039, $P5040
  vivi_6821537:
    set $P5041, $P5039
  unless679_end1532:
    unless $P5041 goto if678_else1529 
    $P5042 = "RETURN"($P107)
    set $P5046, $P5042
    goto if678_end1530
  if678_else1529:
.annotate 'line', 1337
.annotate 'line', 1338
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."dumper"($P107, $P101, _lex_param_3 :flat :named)
    $P5045 = "RETURN"($P5044)
    set $P5046, $P5045
  if678_end1530:
    goto lexotic_1505
  lexotic_1504:
    .get_results ($P5046)
  lexotic_1505:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_277_1381254434.83594") :anon :lex :outer("cuid_143_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1311
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_276_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_278_1381254434.83594' 
    capture_lex $P5021 
    .lex "$err", $P101 
    .lex "$in-handle", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    box $P5003, 0
    set $P101, $P5003
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_6711517
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1314
    new $P5006, 'ExceptionHandler'
    set_label $P5006, catch_handler_6691515
    $P5006.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5006
    set $S5001, _lex_param_0
    open $P5004, $S5001, "r"
    set $P102, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5005
    pop_eh 
    goto skip_handler_6681514
  catch_handler_6691515:
    .get_results ($P5006) 
    .const 'Sub' $P10001 = 'cuid_276_1381254434.83594' 
    capture_lex $P10001
    $P10001($P5006)
    set $I10001, 1
    set $P5006["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5006
    pop_upto_eh $P5006
    pop_eh 
    set $P5007, $P10002
    goto skip_handler_6681514
  skip_handler_6681514:
    set $P5009, $P5007
    pop_eh 
    goto skip_handler_6701516
  catch_handler_6711517:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_6701516
  skip_handler_6701516:
    unless $P101 goto if672_end1519 
    exit 1
  if672_end1519:
    new $P5018, 'ExceptionHandler'
    set_label $P5018, catch_handler_6761523
    $P5018.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5018
.annotate 'line', 1322
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_6741521
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
    find_lex $P5010, "$encoding"
    $P5011 = $P102."encoding"($P5010)
    find_lex $P5012, "@codes"
    $P5013 = $P102."readall"()
    push $P5012, $P5013
    $P5014 = $P102."close"()
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_6731520
  catch_handler_6741521:
    .get_results ($P5016) 
    .const 'Sub' $P10001 = 'cuid_278_1381254434.83594' 
    capture_lex $P10001
    $P10001($P5016)
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10002
    goto skip_handler_6731520
  skip_handler_6731520:
    set $P5019, $P5017
    pop_eh 
    goto skip_handler_6751522
  catch_handler_6761523:
    .get_results ($P5018) 
    set $I10001, 1
    set $P5018["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    finalize $P5018
    pop_upto_eh $P5018
    pop_eh 
    set $P5019, $P10001
    goto skip_handler_6751522
  skip_handler_6751522:
    set $P5020, $P101
    unless $P101 goto if677_end1525 
    die $P101
    set $P5020, $P101
  if677_end1525:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_276_1381254434.83594") :anon :lex :outer("cuid_277_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1316
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
.sub "" :subid("cuid_278_1381254434.83594") :anon :lex :outer("cuid_277_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1326
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
.sub "exists_stage" :subid("cuid_144_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1342
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_279_1381254434.83594' 
    capture_lex $P5011 
    .lex "$found", $P101 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1538
    .lex "RETURN", $P102
    box $P5002, 0
    set $P101, $P5002
.annotate 'line', 1344
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."stages"()
    set $P5003, $P5007
    iter $P5005, $P5007
  for_next1542:
    unless $P5005, for_done1544
    shift $P5009, $P5005
  for_redo1543:
    .const 'Sub' $P5008 = 'cuid_279_1381254434.83594' 
    capture_lex $P5008
    $P5003 = $P5008($P5009)
    goto for_next1542
  for_done1544:
    $P5010 = "RETURN"(0)
    goto lexotic_1539
  lexotic_1538:
    .get_results ($P5010)
  lexotic_1539:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_279_1381254434.83594") :anon :lex :outer("cuid_144_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1344
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stage"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if683_end1541 
.annotate 'line', 1345
    $P5002 = "RETURN"(1)
    set $P5003, $P5002
  if683_end1541:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compile" :subid("cuid_145_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1352
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("from") :optional 
    .param int haz_param_11 :opt_flag 
    .param pmc _lex_param_3 :named("lineposcache") :optional 
    .param int haz_param_12 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    .const 'Sub' $P5059 = 'cuid_280_1381254434.83594' 
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
    if haz_param_11, default1593
    nqp_get_sc_object $P5057, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_2, $P5057
  default1593:
    if haz_param_12, default1594
    nqp_get_sc_object $P5058, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_3, $P5058
  default1594:
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P106, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1545
    .lex "RETURN", $P108
    unless_null $P101, fallback1547
    nqp_get_sc_object $P5009, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_15, $P5008
    set fb_tmp_138, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if684_else1548 
    set $P5010, fb_tmp_138["%COMPILING"]
    set $P5012, $P5010
    goto if684_end1549
  if684_else1548:
    null $P5011
    set $P5012, $P5011
  if684_end1549:
    unless_null $P5012, vivi_6851550
    new $P5013, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5013
    set $P5012, $P5013
  vivi_6851550:
    unless_null $P5012, vivi_6861551
    die "Contextual %*COMPILING not found"
    box $P5014, "Contextual %*COMPILING not found"
    set $P5012, $P5014
  vivi_6861551:
    set $P101, $P5012
  fallback1547:
    set $P101["%?OPTIONS"], _lex_param_4
    set $P102, _lex_param_3
    set fb_tmp_139, _lex_param_4
    repr_defined $I5002, fb_tmp_139
    unless $I5002 goto if687_else1552 
    set $P5015, fb_tmp_139["target"]
    set $P5017, $P5015
    goto if687_end1553
  if687_else1552:
    null $P5016
    set $P5017, $P5016
  if687_end1553:
    unless_null $P5017, vivi_6881554
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5017, $P5018
  vivi_6881554:
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
    unless $I5003 goto if689_else1555 
    set $P5024, fb_tmp_140["stagestats"]
    set $P5026, $P5024
    goto if689_end1556
  if689_else1555:
    null $P5025
    set $P5026, $P5025
  if689_end1556:
    unless_null $P5026, vivi_6901557
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5026, $P5027
  vivi_6901557:
    set $P107, $P5026
    set $S5003, _lex_param_2
    iseq $I5004, $S5003, ""
    box $P5031, $I5004
    set $P5030, $P5031
    if $I5004 goto unless692_end1561 
.annotate 'line', 1361
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."exists_stage"(_lex_param_2)
    set $P5030, $P5029
  unless692_end1561:
    if $P5030 goto unless691_end1559 
    set $S5006, _lex_param_2
    concat $S5005, "Unknown compilation input '", $S5006
    concat $S5004, $S5005, "'"
    box $P5032, $S5004
    die $P5032
  unless691_end1559:
    set $S5007, $P103
    iseq $I5005, $S5007, ""
    box $P5036, $I5005
    set $P5035, $P5036
    if $I5005 goto unless694_end1565 
.annotate 'line', 1364
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."exists_stage"($P103)
    set $P5035, $P5034
  unless694_end1565:
    if $P5035 goto unless693_end1563 
    set $S5010, $P103
    concat $S5009, "Unknown compilation target '", $S5010
    concat $S5008, $S5009, "'"
    box $P5037, $S5008
    die $P5037
  unless693_end1563:
.annotate 'line', 1367
    nqp_decontainerize $P5041, _lex_param_0
    $P5042 = $P5041."stages"()
    set $P5038, $P5042
    iter $P5040, $P5042
    new $P5044, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5044, for_handlers1584
    push_eh $P5044
  for_next1585:
    unless $P5040, for_done1587
    shift $P5045, $P5040
  for_redo1586:
    .const 'Sub' $P5043 = 'cuid_280_1381254434.83594' 
    capture_lex $P5043
    $P5038 = $P5043($P5045)
    goto for_next1585
  for_handlers1584:
    .get_results ($P5044)
    pop_upto_eh $P5044
    getattribute $P5044, $P5044, 'type'
    eq $P5044, .CONTROL_LOOP_NEXT, for_next1585
    eq $P5044, .CONTROL_LOOP_REDO, for_redo1586
  for_done1587:
    pop_eh 
    set fb_tmp_141, _lex_param_4
    repr_defined $I5006, fb_tmp_141
    unless $I5006 goto if705_else1590 
    set $P5046, fb_tmp_141["compunit_ok"]
    set $P5048, $P5046
    goto if705_end1591
  if705_else1590:
    null $P5047
    set $P5048, $P5047
  if705_end1591:
    unless_null $P5048, vivi_7061592
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5048, $P5049
  vivi_7061592:
    unless $P5048 goto if704_else1588 
.annotate 'line', 1399
    $P5050 = "RETURN"($P104)
    set $P5056, $P5050
    goto if704_end1589
  if704_else1588:
.annotate 'line', 1402
.annotate 'line', 1403
    nqp_decontainerize $P5051, _lex_param_0
    nqp_get_sc_object $P5052, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5053, $P5051, $P5052, "$!backend", 10
    $P5054 = $P5053."compunit_mainline"($P104)
    $P5055 = "RETURN"($P5054)
    set $P5056, $P5055
  if704_end1589:
    goto lexotic_1546
  lexotic_1545:
    .get_results ($P5056)
  lexotic_1546:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_280_1381254434.83594") :anon :lex :outer("cuid_145_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1367
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    find_lex $P5003, "$from"
    set $S5001, $P5003
    isne $I5001, $S5001, ""
    unless $I5001 goto if695_end1567 
.annotate 'line', 1368
    set $S5002, _lex_param_0
    find_lex $P5004, "$from"
    set $S5003, $P5004
    iseq $I5002, $S5002, $S5003
    unless $I5002 goto if696_end1569 
.annotate 'line', 1369
    box $P5005, ""
    store_lex "$from", $P5005
  if696_end1569:
    die 0, .CONTROL_LOOP_NEXT
  if695_end1567:
    time $N5001
    box $P5006, $N5001
    set $P101, $P5006
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    set $S5004, _lex_param_0
    can $I5003, $P5007, $S5004
    unless $I5003 goto if697_else1570 
.annotate 'line', 1375
.annotate 'line', 1376
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "$result"
    find_lex $P5012, "%adverbs"
    set $S5005, _lex_param_0
    $P5013 = $P5009.$S5005($P5011, $P5012 :flat :named)
    store_lex "$result", $P5013
    goto if697_end1571
  if697_else1570:
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    nqp_get_sc_object $P5016, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5017, $P5014, $P5016, "$!backend", 10
    set $S5006, _lex_param_0
    can $I5004, $P5017, $S5006
    unless $I5004 goto if698_else1572 
.annotate 'line', 1378
.annotate 'line', 1379
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend", 10
    find_lex $P5022, "$result"
    find_lex $P5023, "%adverbs"
    set $S5007, _lex_param_0
    $P5024 = $P5021.$S5007($P5022, $P5023 :flat :named)
    store_lex "$result", $P5024
    set $P5026, $P5024
    goto if698_end1573
  if698_else1572:
.annotate 'line', 1381
    set $S5010, _lex_param_0
    concat $S5009, "Unknown compilation stage '", $S5010
    concat $S5008, $S5009, "'"
    box $P5025, $S5008
    die $P5025
    set $P5026, $P5025
  if698_end1573:
  if697_end1571:
    time $N5003
    set $N5004, $P101
    sub $N5002, $N5003, $N5004
    box $P5027, $N5002
    set $P102, $P5027
    find_lex $P5028, "$stagestats"
    defined $I5005, $P5028
    unless $I5005 goto if699_end1575 
.annotate 'line', 1385
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
    unless $I5006 goto if700_end1577 
.annotate 'line', 1387
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    nqp_get_sc_object $P5037, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5038, $P5035, $P5037, "$!backend", 10
    $P5039 = $P5038."force_gc"()
  if700_end1577:
    find_lex $P5040, "$stagestats"
    set $I5009, $P5040
    band $I5008, $I5009, 2
    unless $I5008 goto if701_end1579 
    find_lex $P5041, "$stderr"
.annotate 'line', 1388
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5045, $P5042, $P5044, "$!backend", 10
    $P5046 = $P5045."vmstat"()
    $P5047 = $P5041."print"($P5046)
  if701_end1579:
    find_lex $P5048, "$stderr"
    $P5049 = $P5048."print"("\n")
    find_lex $P5050, "$stagestats"
    set $I5011, $P5050
    band $I5010, $I5011, 8
    box $P5056, $I5010
    set $P5055, $P5056
    unless $I5010 goto if702_end1581 
.annotate 'line', 1391
    find_lex $P5051, "$stderr"
    $P5052 = $P5051."print"("continue> ")
    find_lex $P5053, "$stdin"
    $P5054 = $P5053."readline"()
    set $P5055, $P5054
  if702_end1581:
  if699_end1575:
    set $S5012, _lex_param_0
    find_lex $P5057, "$target"
    set $S5013, $P5057
    iseq $I5012, $S5012, $S5013
    set $I5013, $I5012
    unless $I5012 goto if703_end1583 
    die 0, .CONTROL_LOOP_LAST
    set $I5013, 0
  if703_end1583:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_146_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1407
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
.sub "parse" :subid("cuid_147_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1411
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1595
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_142, _lex_param_2
    repr_defined $I5001, fb_tmp_142
    unless $I5001 goto if708_else1599 
    set $P5005, fb_tmp_142["transcode"]
    set $P5007, $P5005
    goto if708_end1600
  if708_else1599:
    null $P5006
    set $P5007, $P5006
  if708_end1600:
    unless_null $P5007, vivi_7091601
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5008
  vivi_7091601:
    unless $P5007 goto if707_end1598 
.annotate 'line', 1413
.annotate 'line', 1414
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend", 10
    set fb_tmp_143, _lex_param_2
    repr_defined $I5002, fb_tmp_143
    unless $I5002 goto if710_else1602 
    set $P5012, fb_tmp_143["transcode"]
    set $P5014, $P5012
    goto if710_end1603
  if710_else1602:
    null $P5013
    set $P5014, $P5013
  if710_end1603:
    unless_null $P5014, vivi_7111604
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5014, $P5015
  vivi_7111604:
    $P5016 = $P5011."apply_transcodings"($P101, $P5014)
    set $P101, $P5016
  if707_end1598:
.annotate 'line', 1416
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."parsegrammar"()
    set $P102, $P5018
.annotate 'line', 1418
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parseactions"()
    set $P103, $P5020
    set fb_tmp_144, _lex_param_2
    repr_defined $I5003, fb_tmp_144
    unless $I5003 goto if713_else1607 
    set $P5021, fb_tmp_144["rxtrace"]
    set $P5023, $P5021
    goto if713_end1608
  if713_else1607:
    null $P5022
    set $P5023, $P5022
  if713_end1608:
    unless_null $P5023, vivi_7141609
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5023, $P5024
  vivi_7141609:
    unless $P5023 goto if712_end1606 
.annotate 'line', 1419
    get_how $P5025, $P102
    $P5026 = $P5025."trace-on"($P102)
  if712_end1606:
.annotate 'line', 1420
    $P5027 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5027
    set fb_tmp_145, _lex_param_2
    repr_defined $I5004, fb_tmp_145
    unless $I5004 goto if716_else1612 
    set $P5028, fb_tmp_145["rxtrace"]
    set $P5030, $P5028
    goto if716_end1613
  if716_else1612:
    null $P5029
    set $P5030, $P5029
  if716_end1613:
    unless_null $P5030, vivi_7171614
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5030, $P5031
  vivi_7171614:
    unless $P5030 goto if715_end1611 
.annotate 'line', 1421
    get_how $P5032, $P102
    $P5033 = $P5032."trace-off"($P102)
  if715_end1611:
    if $P104 goto unless718_end1616 
.annotate 'line', 1422
    nqp_decontainerize $P5034, _lex_param_0
    $P5035 = $P5034."panic"("Unable to parse source")
  unless718_end1616:
    $P5036 = "RETURN"($P104)
    goto lexotic_1596
  lexotic_1595:
    .get_results ($P5036)
  lexotic_1596:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_148_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1426
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 1427
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1429
    nqp_get_sc_object $P5003, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391", 12
    $P5004 = $P5003."ACCEPTS"($P101)
    if $P5004 goto unless719_end1618 
.annotate 'line', 1428
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5006, _lex_param_1
    $P5007 = $P5006."name"(_lex_param_1)
    set $S5002, $P5007
    concat $S5001, "Unable to obtain AST from ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless719_end1618:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_149_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1433
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if720_else1619 
.annotate 'line', 1434
.annotate 'line', 1435
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    box $P5004, $S5001
    set $P5003, $P5004
    goto if720_end1620
  if720_else1619:
.annotate 'line', 1437
    box $P5002, "Cannot dump this object; no dump method"
    die $P5002
    set $P5003, $P5002
  if720_end1620:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_150_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1442
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5013 = 'cuid_281_1381254434.83594' 
    capture_lex $P5013 
    .lex "$usage", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_13, default1626
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5012
  default1626:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    unless _lex_param_1 goto if721_end1622 
.annotate 'line', 1443
.annotate 'line', 1444
    $P5002 = "&say"(_lex_param_1)
  if721_end1622:
    box $P5003, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    set $P101, $P5003
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!cmdoptions", 3
    set $P5004, $P5009
    iter $P5006, $P5009
  for_next1623:
    unless $P5006, for_done1625
    shift $P5011, $P5006
  for_redo1624:
    .const 'Sub' $P5010 = 'cuid_281_1381254434.83594' 
    capture_lex $P5010
    $P5004 = $P5010($P5011)
    goto for_next1623
  for_done1625:
    set $S5001, $P101
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_281_1381254434.83594") :anon :lex :outer("cuid_150_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1447
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
.sub "version" :subid("cuid_151_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1454
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$backver", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_146 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!config", 6
    set fb_tmp_146, $P5005
    repr_defined $I5001, fb_tmp_146
    unless $I5001 goto if722_else1627 
    set $P5006, fb_tmp_146["version"]
    set $P5008, $P5006
    goto if722_end1628
  if722_else1627:
    null $P5007
    set $P5008, $P5007
  if722_end1628:
    unless_null $P5008, vivi_7231629
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5008, $P5009
  vivi_7231629:
    set $P101, $P5008
.annotate 'line', 1456
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend", 10
    $P5013 = $P5012."version_string"()
    set $P102, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
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
.sub "show-config" :subid("cuid_152_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1461
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_153_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1463
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_282_1381254434.83594' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_283_1381254434.83594' 
    capture_lex $P5023 
    .lex "$bname", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 1464
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!backend", 10
    $P5005 = $P5004."name"()
    set $P101, $P5005
.annotate 'line', 1465
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend", 10
    $P5012 = $P5011."config"()
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next1630:
    unless $P5008, for_done1632
    shift $P5014, $P5008
  for_redo1631:
    .const 'Sub' $P5013 = 'cuid_282_1381254434.83594' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next1630
  for_done1632:
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!config", 6
    set $P5015, $P5020
    iter $P5017, $P5020
  for_next1633:
    unless $P5017, for_done1635
    shift $P5022, $P5017
  for_redo1634:
    .const 'Sub' $P5021 = 'cuid_283_1381254434.83594' 
    capture_lex $P5021
    $P5015 = $P5021($P5022)
    goto for_next1633
  for_done1635:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_282_1381254434.83594") :anon :lex :outer("cuid_153_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1465
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$bname"
    set $S5005, $P5001
    concat $S5004, $S5005, "::"
.annotate 'line', 1466
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
.sub "" :subid("cuid_283_1381254434.83594") :anon :lex :outer("cuid_153_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1468
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language", 5
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1469
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
.sub "nqpevent" :subid("cuid_154_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1474
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@pos", _lex_param_1 
.annotate 'line', 1475
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    $P5004 = $P5003."nqpevent"(_lex_param_1 :flat)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_155_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1478
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_284_1381254434.83594' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizableStringArray'
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages", 0
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1638:
    unless $P5005, for_done1640
    shift $P5010, $P5005
  for_redo1639:
    .const 'Sub' $P5009 = 'cuid_284_1381254434.83594' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1638
  for_done1640:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_bind_attr_obj $P5011, $P5012, "@!stages", 0, $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_284_1381254434.83594") :anon :lex :outer("cuid_155_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1480
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if724_end1637 
.annotate 'line', 1481
.annotate 'line', 1482
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if724_end1637:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_156_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1488
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_285_1381254434.83594' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_286_1381254434.83594' 
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1641
    .lex "RETURN", $P104
    set fb_tmp_147, _lex_param_2
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if726_else1645 
    set $P5004, fb_tmp_147["before"]
    set $P5006, $P5004
    goto if726_end1646
  if726_else1645:
    null $P5005
    set $P5006, $P5005
  if726_end1646:
    unless_null $P5006, vivi_7271647
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5006, $P5007
  vivi_7271647:
    unless $P5006 goto if725_else1643 
.annotate 'line', 1491
    set fb_tmp_148, _lex_param_2
    repr_defined $I5002, fb_tmp_148
    unless $I5002 goto if728_else1648 
    set $P5008, fb_tmp_148["before"]
    set $P5010, $P5008
    goto if728_end1649
  if728_else1648:
    null $P5009
    set $P5010, $P5009
  if728_end1649:
    unless_null $P5010, vivi_7291650
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5010, $P5011
  vivi_7291650:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if725_end1644
  if725_else1643:
    set fb_tmp_149, _lex_param_2
    repr_defined $I5003, fb_tmp_149
    unless $I5003 goto if731_else1653 
    set $P5013, fb_tmp_149["after"]
    set $P5015, $P5013
    goto if731_end1654
  if731_else1653:
    null $P5014
    set $P5015, $P5014
  if731_end1654:
    unless_null $P5015, vivi_7321655
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5015, $P5016
  vivi_7321655:
    unless $P5015 goto if730_else1651 
.annotate 'line', 1494
    set fb_tmp_150, _lex_param_2
    repr_defined $I5004, fb_tmp_150
    unless $I5004 goto if733_else1656 
    set $P5017, fb_tmp_150["after"]
    set $P5019, $P5017
    goto if733_end1657
  if733_else1656:
    null $P5018
    set $P5019, $P5018
  if733_end1657:
    unless_null $P5019, vivi_7341658
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5019, $P5020
  vivi_7341658:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if730_end1652
  if730_else1651:
    .const 'Sub' $P5022 = 'cuid_285_1381254434.83594' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if730_end1652:
  if725_end1644:
    new $P5025, 'ResizablePMCArray'
    set $P103, $P5025
.annotate 'line', 1504
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1663:
    unless $P5028, for_done1665
    shift $P5032, $P5028
  for_redo1664:
    .const 'Sub' $P5031 = 'cuid_286_1381254434.83594' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1663
  for_done1665:
.annotate 'line', 1517
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1642
  lexotic_1641:
    .get_results ($P5034)
  lexotic_1642:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_285_1381254434.83594") :anon :lex :outer("cuid_156_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1497
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1498
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    push $P101, $P5006
.annotate 'line', 1500
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    $P5009 = "RETURN"(1)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_286_1381254434.83594") :anon :lex :outer("cuid_156_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1504
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if735_else1659 
.annotate 'line', 1505
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if736_else1661 
.annotate 'line', 1506
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    push $P5003, $P5004
    find_lex $P5005, "@new-stages"
    push $P5005, _lex_param_0
    set $P5009, $P5005
    goto if736_end1662
  if736_else1661:
.annotate 'line', 1509
    find_lex $P5006, "@new-stages"
    push $P5006, _lex_param_0
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    push $P5007, $P5008
    set $P5009, $P5007
  if736_end1662:
    set $P5011, $P5009
    goto if735_end1660
  if735_else1659:
.annotate 'line', 1513
    find_lex $P5010, "@new-stages"
    push $P5010, _lex_param_0
    set $P5011, $P5010
  if735_end1660:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_157_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1520
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_287_1381254434.83594' 
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
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_151, $P101
    repr_defined $I5001, fb_tmp_151
    unless $I5001 goto if737_else1666 
    set $P5006, fb_tmp_151[0]
    set $P5008, $P5006
    goto if737_end1667
  if737_else1666:
    null $P5007
    set $P5008, $P5007
  if737_end1667:
    unless_null $P5008, vivi_7381668
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5008, $P5009
  vivi_7381668:
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
    unless $I5003 goto if739_end1670 
.annotate 'line', 1526
    set fb_tmp_152, $P101
    repr_defined $I5004, fb_tmp_152
    unless $I5004 goto if740_else1671 
    set $P5012, fb_tmp_152[0]
    set $P5014, $P5012
    goto if740_end1672
  if740_else1671:
    null $P5013
    set $P5014, $P5013
  if740_end1672:
    unless_null $P5014, vivi_7411673
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5014, $P5015
  vivi_7411673:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_153, $P101
    repr_defined $I5005, fb_tmp_153
    unless $I5005 goto if742_else1674 
    set $P5017, fb_tmp_153[-1]
    set $P5019, $P5017
    goto if742_end1675
  if742_else1674:
    null $P5018
    set $P5019, $P5018
  if742_end1675:
    unless_null $P5019, vivi_7431676
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5019, $P5020
  vivi_7431676:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if739_end1670:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1679:
    unless $P5024, for_done1681
    shift $P5026, $P5024
  for_redo1680:
    .const 'Sub' $P5025 = 'cuid_287_1381254434.83594' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1679
  for_done1681:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_287_1381254434.83594") :anon :lex :outer("cuid_157_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1534
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless744_end1678 
    find_lex $P5001, "@actual_ns"
    push $P5001, _lex_param_0
    set $P5002, $P5001
  unless744_end1678:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_158_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1540
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 :named("cache") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_288_1381254434.83594' 
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
    if haz_param_14, default1709
    set $I5013, 0
    set _lex_param_3, $I5013
  default1709:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    unless _lex_param_3 goto if745_end1683 
.annotate 'line', 1542
    find_dynamic_lex $P5002, "$*LINEPOSCACHE"
    unless_null $P5002, fallback1684
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5003, $P5004
    set fb_tmp_154, $P5003
    repr_defined $I5001, fb_tmp_154
    unless $I5001 goto if746_else1685 
    set $P5005, fb_tmp_154["$LINEPOSCACHE"]
    set $P5007, $P5005
    goto if746_end1686
  if746_else1685:
    null $P5006
    set $P5007, $P5006
  if746_end1686:
    unless_null $P5007, vivi_7471687
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5008
  vivi_7471687:
    unless_null $P5007, vivi_7481688
    die "Contextual $*LINEPOSCACHE not found"
    box $P5009, "Contextual $*LINEPOSCACHE not found"
    set $P5007, $P5009
  vivi_7481688:
    set $P5002, $P5007
  fallback1684:
    set $P101, $P5002
  if745_end1683:
    defined $I5002, $P101
    if $I5002 goto unless749_end1690 
    .const 'Sub' $P5010 = 'cuid_288_1381254434.83594' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless749_end1690:
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while754_test1702:
    islt $I5004, $I101, $I102
    set $I5011, $I5004
    unless $I5004 goto while754_done1706 
  while754_redo1704:
.annotate 'line', 1577
    add $I5006, $I101, $I102
    div $I5005, $I5006, 2
    set $I103, $I5005
    set $I5008, $P101[$I103]
    isgt $I5007, $I5008, _lex_param_2
    unless $I5007 goto if755_else1707 
.annotate 'line', 1579
    set $I102, $I103
    set $I5010, $I102
    goto if755_end1708
  if755_else1707:
.annotate 'line', 1581
    add $I5009, $I103, 1
    set $I101, $I5009
    set $I5010, $I101
  if755_end1708:
    set $I5011, $I5010
    goto while754_test1702 
  while754_done1706:
    add $I5012, $I101, 1
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_288_1381254434.83594") :anon :lex :outer("cuid_158_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1546
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
    unless $I5001 goto if750_end1692 
.annotate 'line', 1549
    find_lex $P5002, "$linepos"
    store_dynamic_lex "$*LINEPOSCACHE", $P5002
  if750_end1692:
    find_lex $P5003, "$target"
    set $S5001, $P5003
    set $S101, $S5001
    length $I5002, $S101
    set $I101, $I5002
    set $I102, 0
  while751_test1693:
    find_cclass $I5004, 4096, $S101, $I102, $I101
    set $I102, $I5004
    islt $I5003, $I102, $I101
    set $I5013, $I5003
    unless $I5003 goto while751_done1697 
  while751_redo1695:
.annotate 'line', 1560
    ord $I5005, $S101, $I102
    set $I103, $I5005
    add $I5006, $I102, 1
    set $I102, $I5006
    find_lex $P5004, "$linepos"
    push $P5004, $I102
    iseq $I5007, $I103, 13
    set $I5010, $I5007
    unless $I5007 goto if753_end1701 
    ord $I5009, $S101, $I102
    iseq $I5008, $I5009, 10
    set $I5010, $I5008
  if753_end1701:
    set $I5012, $I5010
    unless $I5010 goto if752_end1699 
.annotate 'line', 1566
    add $I5011, $I102, 1
    set $I102, $I5011
    set $I5012, $I102
  if752_end1699:
    set $I5013, $I5012
    goto while751_test1693 
  while751_done1697:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_159_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1589
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname", 7
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1710
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1710:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_160_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1592
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options", 9
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_161_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1593
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments", 8
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_162_1381254434.83594") :anon :lex :outer("cuid_261_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1596
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$limit", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    can $I5001, $P5003, "recursion_limit"
    unless $I5001 goto if756_else1711 
.annotate 'line', 1597
.annotate 'line', 1598
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!backend", 10
    $P5006."recursion_limit"(_lex_param_1)
    set $I5002, 1
    goto if756_end1712
  if756_else1711:
.annotate 'line', 1601

    set $I5002, 0
  if756_end1712:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_289_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1699
    .const 'Sub' $P5006 = 'cuid_164_1381254434.83594' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_165_1381254434.83594' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_166_1381254434.83594' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_167_1381254434.83594' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_168_1381254434.83594' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_164_1381254434.83594' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_165_1381254434.83594' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_166_1381254434.83594' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_167_1381254434.83594' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_168_1381254434.83594' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_164_1381254434.83594") :anon :lex :outer("cuid_289_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1703
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_165_1381254434.83594") :anon :lex :outer("cuid_289_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1708
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_166_1381254434.83594") :anon :lex :outer("cuid_289_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1709
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_167_1381254434.83594") :anon :lex :outer("cuid_289_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1711
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_168_1381254434.83594") :anon :lex :outer("cuid_289_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1715
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
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if757_else1713 
.annotate 'line', 1718
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options", 1
    set fb_tmp_155, $P5006
    repr_defined $I5003, fb_tmp_155
    unless $I5003 goto if759_else1717 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_155[$S5002]
    set $P5009, $P5007
    goto if759_end1718
  if759_else1717:
    null $P5008
    set $P5009, $P5008
  if759_end1718:
    unless_null $P5009, vivi_7601719
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_7601719:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if758_else1715 
.annotate 'line', 1719
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options", 1
    set fb_tmp_156, $P5013
    repr_defined $I5004, fb_tmp_156
    unless $I5004 goto if761_else1720 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_156[$S5003]
    set $P5016, $P5014
    goto if761_end1721
  if761_else1720:
    null $P5015
    set $P5016, $P5015
  if761_end1721:
    unless_null $P5016, vivi_7621722
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5016, $P5017
  vivi_7621722:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if758_end1716
  if758_else1715:
.annotate 'line', 1721
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options", 1
    set $S5004, _lex_param_1
    new $P5021, 'ResizablePMCArray'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options", 1
    set fb_tmp_157, $P5024
    repr_defined $I5005, fb_tmp_157
    unless $I5005 goto if763_else1723 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_157[$S5005]
    set $P5027, $P5025
    goto if763_end1724
  if763_else1723:
    null $P5026
    set $P5027, $P5026
  if763_end1724:
    unless_null $P5027, vivi_7641725
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5027, $P5028
  vivi_7641725:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if758_end1716:
    set $P5033, $P5029
    goto if757_end1714
  if757_else1713:
.annotate 'line', 1724
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options", 1
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if757_end1714:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_290_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1730
    .const 'Sub' $P5011 = 'cuid_169_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_170_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_171_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_172_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_173_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_174_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_175_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_176_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_177_1381254434.83594' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_178_1381254434.83594' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_169_1381254434.83594' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_170_1381254434.83594' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_171_1381254434.83594' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_172_1381254434.83594' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_173_1381254434.83594' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_174_1381254434.83594' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_175_1381254434.83594' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_176_1381254434.83594' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_177_1381254434.83594' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_178_1381254434.83594' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_169_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1736
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 1737
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1738
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_170_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1742
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", 3, $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_171_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1746
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_15 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_291_1381254434.83594' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_15, default1729
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1729:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", 2, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper", 2
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", 3, $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1726:
    unless $P5019, for_done1728
    shift $P5021, $P5019
  for_redo1727:
    .const 'Sub' $P5020 = 'cuid_291_1381254434.83594' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1726
  for_done1728:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_291_1381254434.83594") :anon :lex :outer("cuid_171_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1752
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1753
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_172_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1756
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper", 2
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_173_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1760
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
.sub "add-spec" :subid("cuid_174_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1765
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_292_1381254434.83594' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    unless $I5002 goto if765_else1730 
.annotate 'line', 1769
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1771
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if765_end1731
  if765_else1730:
.annotate 'line', 1772
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1774
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if765_end1731:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1732:
    unless $P5013, for_done1734
    shift $P5015, $P5013
  for_redo1733:
    .const 'Sub' $P5014 = 'cuid_292_1381254434.83594' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1732
  for_done1734:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_292_1381254434.83594") :anon :lex :outer("cuid_174_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1776
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options", 1
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_175_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1782
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1735
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless767_end1740 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless767_end1740:
    unless $I5003 goto if766_end1738 
    $P5001 = "RETURN"(0)
  if766_end1738:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if768_end1742 
    $P5002 = "RETURN"(1)
  if768_end1742:
    box $P5003, 0
    goto lexotic_1736
  lexotic_1735:
    .get_results ($P5003)
  lexotic_1736:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_176_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1788
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_158 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options", 1
    set fb_tmp_158, $P5004
    repr_defined $I5001, fb_tmp_158
    unless $I5001 goto if769_else1743 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_158[$S5001]
    set $P5007, $P5005
    goto if769_end1744
  if769_else1743:
    null $P5006
    set $P5007, $P5006
  if769_end1744:
    unless_null $P5007, vivi_7701745
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5008
  vivi_7701745:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_177_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1793
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_159 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options", 1
    set fb_tmp_159, $P5004
    repr_defined $I5001, fb_tmp_159
    unless $I5001 goto if771_else1746 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_159[$S5001]
    set $P5007, $P5005
    goto if771_end1747
  if771_else1746:
    null $P5006
    set $P5007, $P5006
  if771_end1747:
    unless_null $P5007, vivi_7721748
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5008
  vivi_7721748:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_178_1381254434.83594") :anon :lex :outer("cuid_290_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1798
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5015 = 'cuid_293_1381254434.83594' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_294_1381254434.83594' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_296_1381254434.83594' 
    capture_lex $P5015 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_293_1381254434.83594' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_294_1381254434.83594' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1762
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1802
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    $P5009 = $P5008."new"()
    set $P103, $P5009
.annotate 'line', 1803
    $P103."init"()
  while779_test1764:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto while779_done1768 
  while779_redo1766:
    .const 'Sub' $P5010 = 'cuid_296_1381254434.83594' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while779_test1764 
  while779_done1768:
    $P5014 = "RETURN"($P103)
    goto lexotic_1763
  lexotic_1762:
    .get_results ($P5014)
  lexotic_1763:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_293_1381254434.83594") :anon :lex :outer("cuid_178_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1806
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
    unless $I5001 goto if773_else1749 
.annotate 'line', 1807
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if773_end1750
  if773_else1749:
.annotate 'line', 1809
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
    unless $I5002 goto if774_else1751 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_160[$I5003]
    set $P5008, $P5005
    goto if774_end1752
  if774_else1751:
    null $P5007
    set $P5008, $P5007
  if774_end1752:
    unless_null $P5008, vivi_7751753
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5008, $P5009
  vivi_7751753:
    set $P5010, $P5008
  if773_end1750:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_294_1381254434.83594") :anon :lex :outer("cuid_178_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1817
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
  while776_test1754:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while776_done1758 
  while776_redo1756:
.annotate 'line', 1819
.annotate 'line', 1820
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_161, $P5004
    repr_defined $I5002, fb_tmp_161
    unless $I5002 goto if777_else1759 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_161[$I5003]
    set $P5008, $P5005
    goto if777_end1760
  if777_else1759:
    null $P5007
    set $P5008, $P5007
  if777_end1760:
    unless_null $P5008, vivi_7781761
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5008, $P5009
  vivi_7781761:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_7, $P5010
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_7
    goto while776_test1754 
  while776_done1758:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_296_1381254434.83594") :anon :lex :outer("cuid_178_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1825
    .const 'Sub' $P5033 = 'cuid_295_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_299_1381254434.83594' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_162 
    .local pmc fb_tmp_169 
    .local pmc tmp_9 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_162, $P5002
    repr_defined $I5001, fb_tmp_162
    unless $I5001 goto if780_else1769 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_162[$I5002]
    set $P5006, $P5003
    goto if780_end1770
  if780_else1769:
    null $P5005
    set $P5006, $P5005
  if780_end1770:
    unless_null $P5006, vivi_7811771
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5006, $P5007
  vivi_7811771:
    set $P101, $P5006
.annotate 'line', 1827
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if782_else1772 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if783_else1774 
    .const 'Sub' $P5011 = 'cuid_295_1381254434.83594' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if783_end1775
  if783_else1774:
    .const 'Sub' $P5013 = 'cuid_299_1381254434.83594' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if783_end1775:
    goto if782_end1773
  if782_else1772:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper", 2
    set fb_tmp_169, $P5019
    repr_defined $I5004, fb_tmp_169
    unless $I5004 goto if814_else1832 
    set $S5003, $P101
    set $P5020, fb_tmp_169[$S5003]
    set $P5022, $P5020
    goto if814_end1833
  if814_else1832:
    null $P5021
    set $P5022, $P5021
  if814_end1833:
    unless_null $P5022, vivi_8151834
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5022, $P5023
  vivi_8151834:
    unless $P5022 goto if813_else1830 
.annotate 'line', 1886
.annotate 'line', 1887
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if813_end1831
  if813_else1830:
.annotate 'line', 1888
.annotate 'line', 1889
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg", 3
    set $P5031, $P5029
    unless $P5029 goto if816_end1836 
.annotate 'line', 1890
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if816_end1836:
    set $P5032, $P5031
  if813_end1831:
  if782_end1773:
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
.sub "" :subid("cuid_295_1381254434.83594") :anon :lex :outer("cuid_296_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1828
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_164 
    .local pmc fb_tmp_165 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_163, $P5005
    repr_defined $I5001, fb_tmp_163
    unless $I5001 goto if784_else1776 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_163[$I5002]
    set $P5009, $P5006
    goto if784_end1777
  if784_else1776:
    null $P5008
    set $P5009, $P5008
  if784_end1777:
    unless_null $P5009, vivi_7851778
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_7851778:
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
    unless $I5004 goto if786_else1779 
.annotate 'line', 1835
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
    goto if786_end1780
  if786_else1779:
.annotate 'line', 1839
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if787_end1782 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if787_end1782:
  if786_end1780:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options", 1
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless788_end1784 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless788_end1784:
.annotate 'line', 1844
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if790_end1788 
    set $P5032, $P104
  if790_end1788:
    unless $P5032 goto if789_end1786 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if789_end1786:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if792_end1792 
.annotate 'line', 1845
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if792_end1792:
    unless $P5038 goto if791_end1790 
.annotate 'line', 1846
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if791_end1790:
.annotate 'line', 1848
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper", 2
    set fb_tmp_164, $P5045
    repr_defined $I5010, fb_tmp_164
    unless $I5010 goto if794_else1795 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_164[$S5016]
    set $P5048, $P5046
    goto if794_end1796
  if794_else1795:
    null $P5047
    set $P5048, $P5047
  if794_end1796:
    unless_null $P5048, vivi_7951797
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5048, $P5049
  vivi_7951797:
    set $P5059, $P5048
    unless $P5048 goto if793_end1794 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_165, $P5050
    repr_defined $I5011, fb_tmp_165
    unless $I5011 goto if796_else1798 
    set $P5052, fb_tmp_165["slurp-rest"]
    set $P5054, $P5052
    goto if796_end1799
  if796_else1798:
    null $P5053
    set $P5054, $P5053
  if796_end1799:
    unless_null $P5054, vivi_7981801
    nqp_get_sc_object $P5057, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_7971800
    nqp_get_sc_object $P5058, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5055, $P5058
  vivi_7971800:
    set $P5054, $P5055
  vivi_7981801:
    set $P5059, $P5054
  if793_end1794:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_299_1381254434.83594") :anon :lex :outer("cuid_296_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1850
    .const 'Sub' $P5036 = 'cuid_298_1381254434.83594' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_166 
    .local pmc fb_tmp_167 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    unless $I5002 goto if799_else1802 
.annotate 'line', 1853
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options", 1
    set fb_tmp_166, $P5009
    repr_defined $I5003, fb_tmp_166
    unless $I5003 goto if801_else1806 
    set $S5004, $P101
    set $P5010, fb_tmp_166[$S5004]
    set $P5012, $P5010
    goto if801_end1807
  if801_else1806:
    null $P5011
    set $P5012, $P5011
  if801_end1807:
    unless_null $P5012, vivi_8021808
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5012, $P5013
  vivi_8021808:
    if $P5012 goto unless800_end1805 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless800_end1805:
.annotate 'line', 1856
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if803_else1809 
.annotate 'line', 1857
    find_lex $P5018, "$result"
.annotate 'line', 1858
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if803_end1810
  if803_else1809:
.annotate 'line', 1859
.annotate 'line', 1860
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if803_end1810:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper", 2
    set fb_tmp_167, $P5026
    repr_defined $I5004, fb_tmp_167
    unless $I5004 goto if805_else1813 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_167[$S5009]
    set $P5029, $P5027
    goto if805_end1814
  if805_else1813:
    null $P5028
    set $P5029, $P5028
  if805_end1814:
    unless_null $P5029, vivi_8061815
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5029, $P5030
  vivi_8061815:
    set $P5032, $P5029
    unless $P5029 goto if804_end1812 
.annotate 'line', 1862
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if804_end1812:
    set $P5035, $P5032
    goto if799_end1803
  if799_else1802:
    .const 'Sub' $P5033 = 'cuid_298_1381254434.83594' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if799_end1803:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_298_1381254434.83594") :anon :lex :outer("cuid_299_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1863
    .const 'Sub' $P5009 = 'cuid_297_1381254434.83594' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while807_handlers1819
    push_eh $P5007
  while807_test1816:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while807_done1820 
  while807_redo1818:
    .const 'Sub' $P5004 = 'cuid_297_1381254434.83594' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while807_test1816 
  while807_handlers1819:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while807_test1816
    eq $P5007, .CONTROL_LOOP_REDO, while807_redo1818
  while807_done1820:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_297_1381254434.83594") :anon :lex :outer("cuid_298_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1865
    .lex "$o", $P101 
    .local pmc fb_tmp_168 
    .local pmc tmp_8 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
    nqp_get_sc_object $P5007, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options", 1
    set fb_tmp_168, $P5008
    repr_defined $I5002, fb_tmp_168
    unless $I5002 goto if809_else1823 
    set $S5003, $P101
    set $P5009, fb_tmp_168[$S5003]
    set $P5011, $P5009
    goto if809_end1824
  if809_else1823:
    null $P5010
    set $P5011, $P5010
  if809_end1824:
    unless_null $P5011, vivi_8101825
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_8101825:
    unless $P5011 goto if808_else1821 
.annotate 'line', 1867
.annotate 'line', 1868
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if811_else1826 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if812_end1829 
.annotate 'line', 1869
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if812_end1829:
.annotate 'line', 1872
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
    goto if811_end1827
  if811_else1826:
.annotate 'line', 1875
.annotate 'line', 1876
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if811_end1827:
    goto if808_end1822
  if808_else1821:
.annotate 'line', 1879
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if808_end1822:
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
.sub "" :subid("cuid_300_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1920
    .const 'Sub' $P5014 = 'cuid_179_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_180_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_181_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_182_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_183_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_184_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_185_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_186_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_187_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_188_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_189_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_190_1381254434.83594' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_191_1381254434.83594' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_179_1381254434.83594' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_180_1381254434.83594' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_181_1381254434.83594' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_182_1381254434.83594' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_183_1381254434.83594' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_184_1381254434.83594' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_185_1381254434.83594' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_186_1381254434.83594' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_187_1381254434.83594' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_188_1381254434.83594' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_189_1381254434.83594' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_190_1381254434.83594' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_191_1381254434.83594' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_179_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1951
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
    if haz_param_16, default1848
    box $P5046, "<unknown>"
    set _lex_param_2, $P5046
  default1848:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_bind_attr_obj $P5004, $P5005, "$!handle", 1, _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", 7, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", 6, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", 5, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    find_dynamic_lex $P5017, "%*COMPILING"
    unless_null $P5017, fallback1841
    nqp_get_sc_object $P5019, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5018, $P5019
    set pkg_viv_tmp_16, $P5018
    set fb_tmp_172, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_172
    unless $I5003 goto if819_else1842 
    set $P5020, fb_tmp_172["%COMPILING"]
    set $P5022, $P5020
    goto if819_end1843
  if819_else1842:
    null $P5021
    set $P5022, $P5021
  if819_end1843:
    unless_null $P5022, vivi_8201844
    new $P5023, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5023
    set $P5022, $P5023
  vivi_8201844:
    unless_null $P5022, vivi_8211845
    die "Contextual %*COMPILING not found"
    box $P5024, "Contextual %*COMPILING not found"
    set $P5022, $P5024
  vivi_8211845:
    set $P5017, $P5022
  fallback1841:
    set fb_tmp_171, $P5017
    repr_defined $I5002, fb_tmp_171
    unless $I5002 goto if818_else1839 
    set $P5025, fb_tmp_171["%?OPTIONS"]
    set $P5027, $P5025
    goto if818_end1840
  if818_else1839:
    null $P5026
    set $P5027, $P5026
  if818_end1840:
    unless_null $P5027, vivi_8221846
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5027, $P5028
  vivi_8221846:
    set fb_tmp_170, $P5027
    repr_defined $I5001, fb_tmp_170
    unless $I5001 goto if817_else1837 
    set $P5029, fb_tmp_170["precomp"]
    set $P5031, $P5029
    goto if817_end1838
  if817_else1837:
    null $P5030
    set $P5031, $P5030
  if817_end1838:
    unless_null $P5031, vivi_8231847
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5031, $P5032
  vivi_8231847:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", 2, $P5031
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    box $P5035, 0
    repr_bind_attr_obj $P5033, $P5034, "$!num_code_refs", 3, $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    new $P5038, 'ResizablePMCArray'
    repr_bind_attr_obj $P5036, $P5037, "$!code_ref_blocks", 4, $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc", 0
    $P5042 = $P5041."set_description"(_lex_param_2)
    nqp_decontainerize $P5043, _lex_param_0
    nqp_get_sc_object $P5044, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!sc", 0
    nqp_push_compiling_sc $P5045
    .return ($P5045) 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_180_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1968
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .local pmc fb_tmp_173 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!addr_to_slot", 7
    set fb_tmp_173, $P5004
    repr_defined $I5001, fb_tmp_173
    unless $I5001 goto if824_else1849 
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5005, fb_tmp_173[$S5001]
    set $P5007, $P5005
    goto if824_end1850
  if824_else1849:
    null $P5006
    set $P5007, $P5006
  if824_end1850:
    unless_null $P5007, vivi_8251851
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5007, $P5008
  vivi_8251851:
    set $P101, $P5007
    defined $I5003, $P101
    if $I5003 goto unless826_end1853 
.annotate 'line', 1970
    box $P5009, "slot_for_object called on object not in context"
    die $P5009
  unless826_end1853:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_181_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1977
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc", 0
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc", 0
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc", 0
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot", 7
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_182_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1986
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs", 3
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs", 3
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", 3, $P5010
.annotate 'line', 1989
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks", 4
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc", 0
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_183_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 1995
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_184_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2000
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_185_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2006
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_17, default1860
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5015
  default1860:
    if haz_param_18, default1861
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_2, $P5016
  default1861:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if827_else1854 
.annotate 'line', 2007
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if828_end1857 
.annotate 'line', 2008
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks", 5
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if828_end1857:
    set $P5014, $P5008
    goto if827_end1855
  if827_else1854:
.annotate 'line', 2010
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if829_end1859 
.annotate 'line', 2011
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks", 5
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if829_end1859:
    set $P5014, $P5013
  if827_end1855:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_186_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2017
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_19 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_20 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_19, default1868
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5015
  default1868:
    if haz_param_20, default1869
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_2, $P5016
  default1869:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if830_else1862 
.annotate 'line', 2018
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if831_end1865 
.annotate 'line', 2019
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks", 6
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if831_end1865:
    set $P5014, $P5008
    goto if830_end1863
  if830_else1862:
.annotate 'line', 2021
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if832_end1867 
.annotate 'line', 2022
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks", 6
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if832_end1867:
    set $P5014, $P5013
  if830_end1863:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_187_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2027
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_188_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2032
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_189_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2036
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks", 4
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_190_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2041
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_191_1381254434.83594") :anon :lex :outer("cuid_300_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2046
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_301_1381254434.83594") :anon :lex :outer("cuid_231_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2052
    .const 'Sub' $P5018 = 'cuid_302_1381254434.83594' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_303_1381254434.83594' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_304_1381254434.83594' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_305_1381254434.83594' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_306_1381254434.83594' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_325_1381254434.83594' 
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
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P107, $P5003
    .const 'Sub' $P5004 = 'cuid_302_1381254434.83594' 
    capture_lex $P5004
    set $P108, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P110, $P5005
    .const 'Sub' $P5006 = 'cuid_303_1381254434.83594' 
    capture_lex $P5006
    set $P111, $P5006
    .const 'Sub' $P5007 = 'cuid_304_1381254434.83594' 
    capture_lex $P5007
    set $P112, $P5007
    .const 'Sub' $P5008 = 'cuid_305_1381254434.83594' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_306_1381254434.83594' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 2395
    nqp_get_sc_object $P5012, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 223
    $P5013 = $P5012."new"()
    set $P107, $P5013
    set_hll_global "sprintf", $P108
    .const 'Sub' $P5014 = 'cuid_325_1381254434.83594' 
    capture_lex $P5014
    $P5015 = $P5014()
.annotate 'line', 2417
    nqp_get_sc_object $P5016, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 241
    $P5017 = $P5016."new"()
    set $P110, $P5017
    set_hll_global "sprintfdirectives", $P111
    set_hll_global "sprintfaddargumenthandler", $P112
    .return ($P112) 
.end
.HLL "nqp"
.namespace []
.sub "sprintf" :subid("cuid_302_1381254434.83594") :anon :lex :outer("cuid_301_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2397
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@*ARGS_HAVE", $P101 
    .lex "$format", _lex_param_0 
    .lex "@arguments", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1870
    .lex "RETURN", $P102
    set $P101, _lex_param_1
    box $P5002, 1
    store_lex "$assert_used_args", $P5002
.annotate 'line', 2400
    nqp_get_sc_object $P5003, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 202
    find_lex $P5004, "$actions"
    $P5005 = $P5003."parse"(_lex_param_0, $P5004 :named("actions"))
    $P5006 = $P5005."ast"()
    $P5007 = "RETURN"($P5006)
    goto lexotic_1871
  lexotic_1870:
    .get_results ($P5007)
  lexotic_1871:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfdirectives" :subid("cuid_303_1381254434.83594") :anon :lex :outer("cuid_301_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2419
    .param pmc _lex_param_0 
    .lex "$format", _lex_param_0 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1872
    .lex "RETURN", $P101
.annotate 'line', 2420
    nqp_get_sc_object $P5001, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 202
    find_lex $P5002, "$directives"
    $P5003 = $P5001."parse"(_lex_param_0, $P5002 :named("actions"))
    $P5004 = $P5003."ast"()
    $P5005 = "RETURN"($P5004)
    goto lexotic_1873
  lexotic_1872:
    .get_results ($P5005)
  lexotic_1873:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfaddargumenthandler" :subid("cuid_304_1381254434.83594") :anon :lex :outer("cuid_301_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2425
    .param pmc _lex_param_0 
    .lex "$interface", _lex_param_0 
.annotate 'line', 2426
    find_lex $P5001, "@handlers"
    $P5001."push"(_lex_param_0)
    .return ("Added!") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_305_1381254434.83594") :anon :lex :outer("cuid_301_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2056
    .const 'Sub' $P5021 = 'cuid_192_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_193_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_194_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_195_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_196_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_197_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_198_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_199_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_200_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_201_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_202_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_203_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_204_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_205_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_206_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_207_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_208_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_209_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_210_1381254434.83594' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_211_1381254434.83594' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_192_1381254434.83594' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_193_1381254434.83594' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_194_1381254434.83594' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_195_1381254434.83594' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_196_1381254434.83594' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_197_1381254434.83594' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_198_1381254434.83594' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_199_1381254434.83594' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_200_1381254434.83594' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_201_1381254434.83594' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_202_1381254434.83594' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_203_1381254434.83594' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_204_1381254434.83594' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_205_1381254434.83594' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_206_1381254434.83594' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_207_1381254434.83594' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_208_1381254434.83594' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_209_1381254434.83594' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_210_1381254434.83594' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_211_1381254434.83594' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_192_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2057
    .param pmc _lex_param_0 
    .lex "$*ARGS_USED", $P101 
    .lex utf8:"$\x{a2}", $P102 
    .lex "$/", $P103 
    .lex "self", _lex_param_0 
    .local pmc self 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    set self, _lex_param_0
    .local pmc rx833_start
    .local string rx833_tgt
    .local int rx833_pos
    .local int rx833_off
    .local int rx833_eos
    .local int rx833_rep
    .local pmc rx833_cur
    .local pmc rx833_curclass
    .local pmc rx833_bstack
    .local pmc rx833_cstack
    rx833_start = self."!cursor_start_all"()
    set rx833_cur, rx833_start[0]
    set rx833_tgt, rx833_start[1]
    set rx833_pos, rx833_start[2]
    set rx833_curclass, rx833_start[3]
    set rx833_bstack, rx833_start[4]
    set $I19, rx833_start[5]
    store_lex unicode:"$\x{a2}", rx833_cur
    length rx833_eos, rx833_tgt
    eq $I19, 1, rx833_restart1876
    gt rx833_pos, rx833_eos, rx833_fail1877
    repr_get_attr_int $I11, self, rx833_curclass, "$!from"
    ne $I11, -1, rxscan834_done1883
    goto rxscan834_scan1882
  rxscan834_loop1881:
    inc rx833_pos
    gt rx833_pos, rx833_eos, rx833_fail1877
    repr_bind_attr_int rx833_cur, rx833_curclass, "$!from", rx833_pos
  rxscan834_scan1882:
    nqp_rxmark rx833_bstack, rxscan834_loop1881, rx833_pos, 0
  rxscan834_done1883:
    repr_bind_attr_int rx833_cur, rx833_curclass, "$!pos", rx833_pos
    store_lex unicode:"$\x{a2}", rx833_cur
    box $P5002, 0
    set $P101, $P5002
    ne rx833_pos, 0, rx833_fail1877
    nqp_rxmark rx833_bstack, rxquantr836_done1886, rx833_pos, 0
  rxquantr836_loop1885:
    repr_bind_attr_int rx833_cur, rx833_curclass, "$!pos", rx833_pos
    $P11 = rx833_cur."statement"()
    repr_get_attr_int $I11, $P11, rx833_curclass, "$!pos"
    lt $I11, 0, rx833_fail1877
    goto rxsubrule837_pass1887
  rxsubrule837_back1888:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx833_curclass, "$!pos"
    lt $I11, 0, rx833_fail1877
  rxsubrule837_pass1887:
    rx833_cstack = rx833_cur."!cursor_capture"($P11, "statement")
    set_addr $I11, rxsubrule837_back1888
    push rx833_bstack, $I11
    push rx833_bstack, 0
    push rx833_bstack, rx833_pos
    elements $I11, rx833_cstack
    push rx833_bstack, $I11
    repr_get_attr_int rx833_pos, $P11, rx833_curclass, "$!pos"
    nqp_rxpeek $I19, rx833_bstack, rxquantr836_done1886
    inc $I19
    inc $I19
    set rx833_rep, rx833_bstack[$I19]
    nqp_rxcommit rx833_bstack, rxquantr836_done1886
    inc rx833_rep
    nqp_rxmark rx833_bstack, rxquantr836_done1886, rx833_pos, rx833_rep
    goto rxquantr836_loop1885
  rxquantr836_done1886:
    lt rx833_pos, rx833_eos, rx833_fail1877
    rx833_cur."!cursor_pass"(rx833_pos, "TOP", 'backtrack'=>1)
    .return (rx833_cur)
  rx833_restart1876:
    repr_get_attr_obj rx833_cstack, rx833_cur, rx833_curclass, "$!cstack"
  rx833_fail1877:
    unless rx833_bstack, rx833_done1875
    pop $I19, rx833_bstack
    if_null rx833_cstack, rx833_cstack_done1880
    unless rx833_cstack, rx833_cstack_done1880
    dec $I19
    set $P11, rx833_cstack[$I19]
  rx833_cstack_done1880:
    pop rx833_rep, rx833_bstack
    pop rx833_pos, rx833_bstack
    pop $I19, rx833_bstack
    lt rx833_pos, -1, rx833_done1875
    lt rx833_pos, 0, rx833_fail1877
    eq $I19, 0, rx833_fail1877
    nqp_islist $I20, rx833_cstack
    unless $I20, rx833_jump1878
    elements $I18, rx833_bstack
    le $I18, 0, rx833_cut1879
    dec $I18
    set $I18, rx833_bstack[$I18]
  rx833_cut1879:
    assign rx833_cstack, $I18
  rx833_jump1878:
    jump $I19
  rx833_done1875:
    rx833_cur."!cursor_fail"()
    .return (rx833_cur) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_193_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2062
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$msg", _lex_param_1 
    die _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_194_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2064
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx839_start
    .local string rx839_tgt
    .local int rx839_pos
    .local int rx839_off
    .local int rx839_eos
    .local int rx839_rep
    .local pmc rx839_cur
    .local pmc rx839_curclass
    .local pmc rx839_bstack
    .local pmc rx839_cstack
    rx839_start = self."!cursor_start_all"()
    set rx839_cur, rx839_start[0]
    set rx839_tgt, rx839_start[1]
    set rx839_pos, rx839_start[2]
    set rx839_curclass, rx839_start[3]
    set rx839_bstack, rx839_start[4]
    set $I19, rx839_start[5]
    store_lex unicode:"$\x{a2}", rx839_cur
    length rx839_eos, rx839_tgt
    eq $I19, 1, rx839_restart1892
    gt rx839_pos, rx839_eos, rx839_fail1893
    repr_get_attr_int $I11, self, rx839_curclass, "$!from"
    ne $I11, -1, rxscan840_done1899
    goto rxscan840_scan1898
  rxscan840_loop1897:
    inc rx839_pos
    gt rx839_pos, rx839_eos, rx839_fail1893
    repr_bind_attr_int rx839_cur, rx839_curclass, "$!from", rx839_pos
  rxscan840_scan1898:
    nqp_rxmark rx839_bstack, rxscan840_loop1897, rx839_pos, 0
  rxscan840_done1899:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt841_01901
    nqp_push_label $P11, alt841_11911
    nqp_rxmark rx839_bstack, alt841_end1900, -1, 0
    rx839_cur."!alt"(rx839_pos, "alt_nfa__11_1381254438.54861", $P11)
    goto rx839_fail1893
  alt841_01901:
    ge rx839_pos, rx839_eos, rx839_fail1893
    substr $S11, rx839_tgt, rx839_pos, 1
    index $I11, ucs4:"%", $S11
    lt $I11, 0, rx839_fail1893
  alt842_01903:
    nqp_rxmark rx839_bstack, alt842_11909, rx839_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt843_01905
    nqp_push_label $P11, alt843_11907
    nqp_rxmark rx839_bstack, alt843_end1904, -1, 0
    rx839_cur."!alt"(rx839_pos, "alt_nfa__10_1381254438.54841", $P11)
    goto rx839_fail1893
  alt843_01905:
    repr_bind_attr_int rx839_cur, rx839_curclass, "$!pos", rx839_pos
    $P11 = rx839_cur."directive"()
    repr_get_attr_int $I11, $P11, rx839_curclass, "$!pos"
    lt $I11, 0, rx839_fail1893
    nqp_rxmark rx839_bstack, rxsubrule844_pass1906, -1, 0
  rxsubrule844_pass1906:
    rx839_cstack = rx839_cur."!cursor_capture"($P11, "directive")
    repr_get_attr_int rx839_pos, $P11, rx839_curclass, "$!pos"
    goto alt843_end1904
  alt843_11907:
    repr_bind_attr_int rx839_cur, rx839_curclass, "$!pos", rx839_pos
    $P11 = rx839_cur."escape"()
    repr_get_attr_int $I11, $P11, rx839_curclass, "$!pos"
    lt $I11, 0, rx839_fail1893
    nqp_rxmark rx839_bstack, rxsubrule845_pass1908, -1, 0
  rxsubrule845_pass1908:
    rx839_cstack = rx839_cur."!cursor_capture"($P11, "escape")
    repr_get_attr_int rx839_pos, $P11, rx839_curclass, "$!pos"
    goto alt843_end1904
  alt843_end1904:
    nqp_rxcommit rx839_bstack, alt843_end1904
    goto alt842_end1902
  alt842_11909:
.annotate 'line', 2067
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
    repr_bind_attr_int rx839_cur, rx839_curclass, "$!pos", rx839_pos
    $P11 = rx839_cur."panic"($S5001)
    repr_get_attr_int $I11, $P11, rx839_curclass, "$!pos"
    lt $I11, 0, rx839_fail1893
    repr_get_attr_int rx839_pos, $P11, rx839_curclass, "$!pos"
  alt842_end1902:
    goto alt841_end1900
  alt841_11911:
    ge rx839_pos, rx839_eos, rx839_fail1893
    substr $S11, rx839_tgt, rx839_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx839_fail1893
    repr_bind_attr_int rx839_cur, rx839_curclass, "$!pos", rx839_pos
    $P11 = rx839_cur."literal"()
    repr_get_attr_int $I11, $P11, rx839_curclass, "$!pos"
    lt $I11, 0, rx839_fail1893
    nqp_rxmark rx839_bstack, rxsubrule847_pass1912, -1, 0
  rxsubrule847_pass1912:
    rx839_cstack = rx839_cur."!cursor_capture"($P11, "literal")
    repr_get_attr_int rx839_pos, $P11, rx839_curclass, "$!pos"
    goto alt841_end1900
  alt841_end1900:
    nqp_rxcommit rx839_bstack, alt841_end1900
    rx839_cur."!cursor_pass"(rx839_pos, "statement", 'backtrack'=>1)
    .return (rx839_cur)
  rx839_restart1892:
    repr_get_attr_obj rx839_cstack, rx839_cur, rx839_curclass, "$!cstack"
  rx839_fail1893:
    unless rx839_bstack, rx839_done1891
    pop $I19, rx839_bstack
    if_null rx839_cstack, rx839_cstack_done1896
    unless rx839_cstack, rx839_cstack_done1896
    dec $I19
    set $P11, rx839_cstack[$I19]
  rx839_cstack_done1896:
    pop rx839_rep, rx839_bstack
    pop rx839_pos, rx839_bstack
    pop $I19, rx839_bstack
    lt rx839_pos, -1, rx839_done1891
    lt rx839_pos, 0, rx839_fail1893
    eq $I19, 0, rx839_fail1893
    nqp_islist $I20, rx839_cstack
    unless $I20, rx839_jump1894
    elements $I18, rx839_bstack
    le $I18, 0, rx839_cut1895
    dec $I18
    set $I18, rx839_bstack[$I18]
  rx839_cut1895:
    assign rx839_cstack, $I18
  rx839_jump1894:
    jump $I19
  rx839_done1891:
    rx839_cur."!cursor_fail"()
    .return (rx839_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive" :subid("cuid_195_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2072
    .param pmc self 
    $P5001 = self."!protoregex"("directive")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_196_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2073
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx848_start
    .local string rx848_tgt
    .local int rx848_pos
    .local int rx848_off
    .local int rx848_eos
    .local int rx848_rep
    .local pmc rx848_cur
    .local pmc rx848_curclass
    .local pmc rx848_bstack
    .local pmc rx848_cstack
    rx848_start = self."!cursor_start_all"()
    set rx848_cur, rx848_start[0]
    set rx848_tgt, rx848_start[1]
    set rx848_pos, rx848_start[2]
    set rx848_curclass, rx848_start[3]
    set rx848_bstack, rx848_start[4]
    set $I19, rx848_start[5]
    store_lex unicode:"$\x{a2}", rx848_cur
    length rx848_eos, rx848_tgt
    eq $I19, 1, rx848_restart1915
    gt rx848_pos, rx848_eos, rx848_fail1916
    repr_get_attr_int $I11, self, rx848_curclass, "$!from"
    ne $I11, -1, rxscan849_done1922
    goto rxscan849_scan1921
  rxscan849_loop1920:
    inc rx848_pos
    gt rx848_pos, rx848_eos, rx848_fail1916
    repr_bind_attr_int rx848_cur, rx848_curclass, "$!from", rx848_pos
  rxscan849_scan1921:
    nqp_rxmark rx848_bstack, rxscan849_loop1920, rx848_pos, 0
  rxscan849_done1922:
    add $I11, rx848_pos, 1
    gt $I11, rx848_eos, rx848_fail1916
    substr $S10, rx848_tgt, rx848_pos, 1
    ne $S10, ucs4:"%", rx848_fail1916
    add rx848_pos, 1
    nqp_rxmark rx848_bstack, rxquantr850_done1924, rx848_pos, 0
  rxquantr850_loop1923:
    repr_bind_attr_int rx848_cur, rx848_curclass, "$!pos", rx848_pos
    $P11 = rx848_cur."idx"()
    repr_get_attr_int $I11, $P11, rx848_curclass, "$!pos"
    lt $I11, 0, rx848_fail1916
    goto rxsubrule851_pass1925
  rxsubrule851_back1926:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx848_curclass, "$!pos"
    lt $I11, 0, rx848_fail1916
  rxsubrule851_pass1925:
    rx848_cstack = rx848_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule851_back1926
    push rx848_bstack, $I11
    push rx848_bstack, 0
    push rx848_bstack, rx848_pos
    elements $I11, rx848_cstack
    push rx848_bstack, $I11
    repr_get_attr_int rx848_pos, $P11, rx848_curclass, "$!pos"
    nqp_rxpeek $I19, rx848_bstack, rxquantr850_done1924
    inc $I19
    inc $I19
    set rx848_rep, rx848_bstack[$I19]
    nqp_rxcommit rx848_bstack, rxquantr850_done1924
    inc rx848_rep
  rxquantr850_done1924:
    nqp_rxmark rx848_bstack, rxquantr852_done1928, rx848_pos, 0
  rxquantr852_loop1927:
    repr_bind_attr_int rx848_cur, rx848_curclass, "$!pos", rx848_pos
    $P11 = rx848_cur."flags"()
    repr_get_attr_int $I11, $P11, rx848_curclass, "$!pos"
    lt $I11, 0, rx848_fail1916
    goto rxsubrule853_pass1929
  rxsubrule853_back1930:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx848_curclass, "$!pos"
    lt $I11, 0, rx848_fail1916
  rxsubrule853_pass1929:
    rx848_cstack = rx848_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule853_back1930
    push rx848_bstack, $I11
    push rx848_bstack, 0
    push rx848_bstack, rx848_pos
    elements $I11, rx848_cstack
    push rx848_bstack, $I11
    repr_get_attr_int rx848_pos, $P11, rx848_curclass, "$!pos"
    nqp_rxpeek $I19, rx848_bstack, rxquantr852_done1928
    inc $I19
    inc $I19
    set rx848_rep, rx848_bstack[$I19]
    nqp_rxcommit rx848_bstack, rxquantr852_done1928
    inc rx848_rep
    nqp_rxmark rx848_bstack, rxquantr852_done1928, rx848_pos, rx848_rep
    goto rxquantr852_loop1927
  rxquantr852_done1928:
    nqp_rxmark rx848_bstack, rxquantr854_done1932, rx848_pos, 0
  rxquantr854_loop1931:
    repr_bind_attr_int rx848_cur, rx848_curclass, "$!pos", rx848_pos
    $P11 = rx848_cur."size"()
    repr_get_attr_int $I11, $P11, rx848_curclass, "$!pos"
    lt $I11, 0, rx848_fail1916
    goto rxsubrule855_pass1933
  rxsubrule855_back1934:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx848_curclass, "$!pos"
    lt $I11, 0, rx848_fail1916
  rxsubrule855_pass1933:
    rx848_cstack = rx848_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule855_back1934
    push rx848_bstack, $I11
    push rx848_bstack, 0
    push rx848_bstack, rx848_pos
    elements $I11, rx848_cstack
    push rx848_bstack, $I11
    repr_get_attr_int rx848_pos, $P11, rx848_curclass, "$!pos"
    nqp_rxpeek $I19, rx848_bstack, rxquantr854_done1932
    inc $I19
    inc $I19
    set rx848_rep, rx848_bstack[$I19]
    nqp_rxcommit rx848_bstack, rxquantr854_done1932
    inc rx848_rep
  rxquantr854_done1932:
    nqp_rxmark rx848_bstack, rxquantr856_done1936, rx848_pos, 0
  rxquantr856_loop1935:
    add $I11, rx848_pos, 1
    gt $I11, rx848_eos, rx848_fail1916
    substr $S10, rx848_tgt, rx848_pos, 1
    ne $S10, ucs4:".", rx848_fail1916
    add rx848_pos, 1
    repr_bind_attr_int rx848_cur, rx848_curclass, "$!pos", rx848_pos
    $P11 = rx848_cur."size"()
    repr_get_attr_int $I11, $P11, rx848_curclass, "$!pos"
    lt $I11, 0, rx848_fail1916
    nqp_rxmark rx848_bstack, rxsubrule857_pass1937, -1, 0
  rxsubrule857_pass1937:
    rx848_cstack = rx848_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx848_pos, $P11, rx848_curclass, "$!pos"
    nqp_rxpeek $I19, rx848_bstack, rxquantr856_done1936
    inc $I19
    inc $I19
    set rx848_rep, rx848_bstack[$I19]
    nqp_rxcommit rx848_bstack, rxquantr856_done1936
    inc rx848_rep
  rxquantr856_done1936:
    nqp_rxmark rx848_bstack, rxcap858_fail1939, rx848_pos, 0
    ge rx848_pos, rx848_eos, rx848_fail1916
    substr $S11, rx848_tgt, rx848_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx848_fail1916
    inc rx848_pos
    nqp_rxpeek $I19, rx848_bstack, rxcap858_fail1939
    inc $I19
    set $I11, rx848_bstack[$I19]
    repr_bind_attr_int rx848_cur, rx848_curclass, "$!pos", rx848_pos
    $P11 = rx848_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx848_pos)
    rx848_cstack = rx848_cur."!cursor_capture"($P11, "sym")
    goto rxcap858_done1938
  rxcap858_fail1939:
    goto rx848_fail1916
  rxcap858_done1938:
    rx848_cur."!cursor_pass"(rx848_pos, "directive:sym<b>", 'backtrack'=>1)
    .return (rx848_cur)
  rx848_restart1915:
    repr_get_attr_obj rx848_cstack, rx848_cur, rx848_curclass, "$!cstack"
  rx848_fail1916:
    unless rx848_bstack, rx848_done1914
    pop $I19, rx848_bstack
    if_null rx848_cstack, rx848_cstack_done1919
    unless rx848_cstack, rx848_cstack_done1919
    dec $I19
    set $P11, rx848_cstack[$I19]
  rx848_cstack_done1919:
    pop rx848_rep, rx848_bstack
    pop rx848_pos, rx848_bstack
    pop $I19, rx848_bstack
    lt rx848_pos, -1, rx848_done1914
    lt rx848_pos, 0, rx848_fail1916
    eq $I19, 0, rx848_fail1916
    nqp_islist $I20, rx848_cstack
    unless $I20, rx848_jump1917
    elements $I18, rx848_bstack
    le $I18, 0, rx848_cut1918
    dec $I18
    set $I18, rx848_bstack[$I18]
  rx848_cut1918:
    assign rx848_cstack, $I18
  rx848_jump1917:
    jump $I19
  rx848_done1914:
    rx848_cur."!cursor_fail"()
    .return (rx848_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_197_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2074
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx859_start
    .local string rx859_tgt
    .local int rx859_pos
    .local int rx859_off
    .local int rx859_eos
    .local int rx859_rep
    .local pmc rx859_cur
    .local pmc rx859_curclass
    .local pmc rx859_bstack
    .local pmc rx859_cstack
    rx859_start = self."!cursor_start_all"()
    set rx859_cur, rx859_start[0]
    set rx859_tgt, rx859_start[1]
    set rx859_pos, rx859_start[2]
    set rx859_curclass, rx859_start[3]
    set rx859_bstack, rx859_start[4]
    set $I19, rx859_start[5]
    store_lex unicode:"$\x{a2}", rx859_cur
    length rx859_eos, rx859_tgt
    eq $I19, 1, rx859_restart1942
    gt rx859_pos, rx859_eos, rx859_fail1943
    repr_get_attr_int $I11, self, rx859_curclass, "$!from"
    ne $I11, -1, rxscan860_done1949
    goto rxscan860_scan1948
  rxscan860_loop1947:
    inc rx859_pos
    gt rx859_pos, rx859_eos, rx859_fail1943
    repr_bind_attr_int rx859_cur, rx859_curclass, "$!from", rx859_pos
  rxscan860_scan1948:
    nqp_rxmark rx859_bstack, rxscan860_loop1947, rx859_pos, 0
  rxscan860_done1949:
    add $I11, rx859_pos, 1
    gt $I11, rx859_eos, rx859_fail1943
    substr $S10, rx859_tgt, rx859_pos, 1
    ne $S10, ucs4:"%", rx859_fail1943
    add rx859_pos, 1
    nqp_rxmark rx859_bstack, rxquantr861_done1951, rx859_pos, 0
  rxquantr861_loop1950:
    repr_bind_attr_int rx859_cur, rx859_curclass, "$!pos", rx859_pos
    $P11 = rx859_cur."idx"()
    repr_get_attr_int $I11, $P11, rx859_curclass, "$!pos"
    lt $I11, 0, rx859_fail1943
    goto rxsubrule862_pass1952
  rxsubrule862_back1953:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx859_curclass, "$!pos"
    lt $I11, 0, rx859_fail1943
  rxsubrule862_pass1952:
    rx859_cstack = rx859_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule862_back1953
    push rx859_bstack, $I11
    push rx859_bstack, 0
    push rx859_bstack, rx859_pos
    elements $I11, rx859_cstack
    push rx859_bstack, $I11
    repr_get_attr_int rx859_pos, $P11, rx859_curclass, "$!pos"
    nqp_rxpeek $I19, rx859_bstack, rxquantr861_done1951
    inc $I19
    inc $I19
    set rx859_rep, rx859_bstack[$I19]
    nqp_rxcommit rx859_bstack, rxquantr861_done1951
    inc rx859_rep
  rxquantr861_done1951:
    nqp_rxmark rx859_bstack, rxquantr863_done1955, rx859_pos, 0
  rxquantr863_loop1954:
    repr_bind_attr_int rx859_cur, rx859_curclass, "$!pos", rx859_pos
    $P11 = rx859_cur."flags"()
    repr_get_attr_int $I11, $P11, rx859_curclass, "$!pos"
    lt $I11, 0, rx859_fail1943
    goto rxsubrule864_pass1956
  rxsubrule864_back1957:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx859_curclass, "$!pos"
    lt $I11, 0, rx859_fail1943
  rxsubrule864_pass1956:
    rx859_cstack = rx859_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule864_back1957
    push rx859_bstack, $I11
    push rx859_bstack, 0
    push rx859_bstack, rx859_pos
    elements $I11, rx859_cstack
    push rx859_bstack, $I11
    repr_get_attr_int rx859_pos, $P11, rx859_curclass, "$!pos"
    nqp_rxpeek $I19, rx859_bstack, rxquantr863_done1955
    inc $I19
    inc $I19
    set rx859_rep, rx859_bstack[$I19]
    nqp_rxcommit rx859_bstack, rxquantr863_done1955
    inc rx859_rep
    nqp_rxmark rx859_bstack, rxquantr863_done1955, rx859_pos, rx859_rep
    goto rxquantr863_loop1954
  rxquantr863_done1955:
    nqp_rxmark rx859_bstack, rxquantr865_done1959, rx859_pos, 0
  rxquantr865_loop1958:
    repr_bind_attr_int rx859_cur, rx859_curclass, "$!pos", rx859_pos
    $P11 = rx859_cur."size"()
    repr_get_attr_int $I11, $P11, rx859_curclass, "$!pos"
    lt $I11, 0, rx859_fail1943
    goto rxsubrule866_pass1960
  rxsubrule866_back1961:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx859_curclass, "$!pos"
    lt $I11, 0, rx859_fail1943
  rxsubrule866_pass1960:
    rx859_cstack = rx859_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule866_back1961
    push rx859_bstack, $I11
    push rx859_bstack, 0
    push rx859_bstack, rx859_pos
    elements $I11, rx859_cstack
    push rx859_bstack, $I11
    repr_get_attr_int rx859_pos, $P11, rx859_curclass, "$!pos"
    nqp_rxpeek $I19, rx859_bstack, rxquantr865_done1959
    inc $I19
    inc $I19
    set rx859_rep, rx859_bstack[$I19]
    nqp_rxcommit rx859_bstack, rxquantr865_done1959
    inc rx859_rep
  rxquantr865_done1959:
    nqp_rxmark rx859_bstack, rxcap867_fail1963, rx859_pos, 0
    add $I11, rx859_pos, 1
    gt $I11, rx859_eos, rx859_fail1943
    substr $S10, rx859_tgt, rx859_pos, 1
    ne $S10, ucs4:"c", rx859_fail1943
    add rx859_pos, 1
    nqp_rxpeek $I19, rx859_bstack, rxcap867_fail1963
    inc $I19
    set $I11, rx859_bstack[$I19]
    repr_bind_attr_int rx859_cur, rx859_curclass, "$!pos", rx859_pos
    $P11 = rx859_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx859_pos)
    rx859_cstack = rx859_cur."!cursor_capture"($P11, "sym")
    goto rxcap867_done1962
  rxcap867_fail1963:
    goto rx859_fail1943
  rxcap867_done1962:
    rx859_cur."!cursor_pass"(rx859_pos, "directive:sym<c>", 'backtrack'=>1)
    .return (rx859_cur)
  rx859_restart1942:
    repr_get_attr_obj rx859_cstack, rx859_cur, rx859_curclass, "$!cstack"
  rx859_fail1943:
    unless rx859_bstack, rx859_done1941
    pop $I19, rx859_bstack
    if_null rx859_cstack, rx859_cstack_done1946
    unless rx859_cstack, rx859_cstack_done1946
    dec $I19
    set $P11, rx859_cstack[$I19]
  rx859_cstack_done1946:
    pop rx859_rep, rx859_bstack
    pop rx859_pos, rx859_bstack
    pop $I19, rx859_bstack
    lt rx859_pos, -1, rx859_done1941
    lt rx859_pos, 0, rx859_fail1943
    eq $I19, 0, rx859_fail1943
    nqp_islist $I20, rx859_cstack
    unless $I20, rx859_jump1944
    elements $I18, rx859_bstack
    le $I18, 0, rx859_cut1945
    dec $I18
    set $I18, rx859_bstack[$I18]
  rx859_cut1945:
    assign rx859_cstack, $I18
  rx859_jump1944:
    jump $I19
  rx859_done1941:
    rx859_cur."!cursor_fail"()
    .return (rx859_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_198_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2075
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx868_start
    .local string rx868_tgt
    .local int rx868_pos
    .local int rx868_off
    .local int rx868_eos
    .local int rx868_rep
    .local pmc rx868_cur
    .local pmc rx868_curclass
    .local pmc rx868_bstack
    .local pmc rx868_cstack
    rx868_start = self."!cursor_start_all"()
    set rx868_cur, rx868_start[0]
    set rx868_tgt, rx868_start[1]
    set rx868_pos, rx868_start[2]
    set rx868_curclass, rx868_start[3]
    set rx868_bstack, rx868_start[4]
    set $I19, rx868_start[5]
    store_lex unicode:"$\x{a2}", rx868_cur
    length rx868_eos, rx868_tgt
    eq $I19, 1, rx868_restart1966
    gt rx868_pos, rx868_eos, rx868_fail1967
    repr_get_attr_int $I11, self, rx868_curclass, "$!from"
    ne $I11, -1, rxscan869_done1973
    goto rxscan869_scan1972
  rxscan869_loop1971:
    inc rx868_pos
    gt rx868_pos, rx868_eos, rx868_fail1967
    repr_bind_attr_int rx868_cur, rx868_curclass, "$!from", rx868_pos
  rxscan869_scan1972:
    nqp_rxmark rx868_bstack, rxscan869_loop1971, rx868_pos, 0
  rxscan869_done1973:
    add $I11, rx868_pos, 1
    gt $I11, rx868_eos, rx868_fail1967
    substr $S10, rx868_tgt, rx868_pos, 1
    ne $S10, ucs4:"%", rx868_fail1967
    add rx868_pos, 1
    nqp_rxmark rx868_bstack, rxquantr870_done1975, rx868_pos, 0
  rxquantr870_loop1974:
    repr_bind_attr_int rx868_cur, rx868_curclass, "$!pos", rx868_pos
    $P11 = rx868_cur."idx"()
    repr_get_attr_int $I11, $P11, rx868_curclass, "$!pos"
    lt $I11, 0, rx868_fail1967
    goto rxsubrule871_pass1976
  rxsubrule871_back1977:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx868_curclass, "$!pos"
    lt $I11, 0, rx868_fail1967
  rxsubrule871_pass1976:
    rx868_cstack = rx868_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule871_back1977
    push rx868_bstack, $I11
    push rx868_bstack, 0
    push rx868_bstack, rx868_pos
    elements $I11, rx868_cstack
    push rx868_bstack, $I11
    repr_get_attr_int rx868_pos, $P11, rx868_curclass, "$!pos"
    nqp_rxpeek $I19, rx868_bstack, rxquantr870_done1975
    inc $I19
    inc $I19
    set rx868_rep, rx868_bstack[$I19]
    nqp_rxcommit rx868_bstack, rxquantr870_done1975
    inc rx868_rep
  rxquantr870_done1975:
    nqp_rxmark rx868_bstack, rxquantr872_done1979, rx868_pos, 0
  rxquantr872_loop1978:
    repr_bind_attr_int rx868_cur, rx868_curclass, "$!pos", rx868_pos
    $P11 = rx868_cur."flags"()
    repr_get_attr_int $I11, $P11, rx868_curclass, "$!pos"
    lt $I11, 0, rx868_fail1967
    goto rxsubrule873_pass1980
  rxsubrule873_back1981:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx868_curclass, "$!pos"
    lt $I11, 0, rx868_fail1967
  rxsubrule873_pass1980:
    rx868_cstack = rx868_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule873_back1981
    push rx868_bstack, $I11
    push rx868_bstack, 0
    push rx868_bstack, rx868_pos
    elements $I11, rx868_cstack
    push rx868_bstack, $I11
    repr_get_attr_int rx868_pos, $P11, rx868_curclass, "$!pos"
    nqp_rxpeek $I19, rx868_bstack, rxquantr872_done1979
    inc $I19
    inc $I19
    set rx868_rep, rx868_bstack[$I19]
    nqp_rxcommit rx868_bstack, rxquantr872_done1979
    inc rx868_rep
    nqp_rxmark rx868_bstack, rxquantr872_done1979, rx868_pos, rx868_rep
    goto rxquantr872_loop1978
  rxquantr872_done1979:
    nqp_rxmark rx868_bstack, rxquantr874_done1983, rx868_pos, 0
  rxquantr874_loop1982:
    repr_bind_attr_int rx868_cur, rx868_curclass, "$!pos", rx868_pos
    $P11 = rx868_cur."size"()
    repr_get_attr_int $I11, $P11, rx868_curclass, "$!pos"
    lt $I11, 0, rx868_fail1967
    goto rxsubrule875_pass1984
  rxsubrule875_back1985:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx868_curclass, "$!pos"
    lt $I11, 0, rx868_fail1967
  rxsubrule875_pass1984:
    rx868_cstack = rx868_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule875_back1985
    push rx868_bstack, $I11
    push rx868_bstack, 0
    push rx868_bstack, rx868_pos
    elements $I11, rx868_cstack
    push rx868_bstack, $I11
    repr_get_attr_int rx868_pos, $P11, rx868_curclass, "$!pos"
    nqp_rxpeek $I19, rx868_bstack, rxquantr874_done1983
    inc $I19
    inc $I19
    set rx868_rep, rx868_bstack[$I19]
    nqp_rxcommit rx868_bstack, rxquantr874_done1983
    inc rx868_rep
  rxquantr874_done1983:
    nqp_rxmark rx868_bstack, rxquantr876_done1987, rx868_pos, 0
  rxquantr876_loop1986:
    add $I11, rx868_pos, 1
    gt $I11, rx868_eos, rx868_fail1967
    substr $S10, rx868_tgt, rx868_pos, 1
    ne $S10, ucs4:".", rx868_fail1967
    add rx868_pos, 1
    repr_bind_attr_int rx868_cur, rx868_curclass, "$!pos", rx868_pos
    $P11 = rx868_cur."size"()
    repr_get_attr_int $I11, $P11, rx868_curclass, "$!pos"
    lt $I11, 0, rx868_fail1967
    nqp_rxmark rx868_bstack, rxsubrule877_pass1988, -1, 0
  rxsubrule877_pass1988:
    rx868_cstack = rx868_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx868_pos, $P11, rx868_curclass, "$!pos"
    nqp_rxpeek $I19, rx868_bstack, rxquantr876_done1987
    inc $I19
    inc $I19
    set rx868_rep, rx868_bstack[$I19]
    nqp_rxcommit rx868_bstack, rxquantr876_done1987
    inc rx868_rep
  rxquantr876_done1987:
    nqp_rxmark rx868_bstack, rxcap878_fail1990, rx868_pos, 0
    ge rx868_pos, rx868_eos, rx868_fail1967
    substr $S11, rx868_tgt, rx868_pos, 1
    index $I11, ucs4:"di", $S11
    lt $I11, 0, rx868_fail1967
    inc rx868_pos
    nqp_rxpeek $I19, rx868_bstack, rxcap878_fail1990
    inc $I19
    set $I11, rx868_bstack[$I19]
    repr_bind_attr_int rx868_cur, rx868_curclass, "$!pos", rx868_pos
    $P11 = rx868_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx868_pos)
    rx868_cstack = rx868_cur."!cursor_capture"($P11, "sym")
    goto rxcap878_done1989
  rxcap878_fail1990:
    goto rx868_fail1967
  rxcap878_done1989:
    rx868_cur."!cursor_pass"(rx868_pos, "directive:sym<d>", 'backtrack'=>1)
    .return (rx868_cur)
  rx868_restart1966:
    repr_get_attr_obj rx868_cstack, rx868_cur, rx868_curclass, "$!cstack"
  rx868_fail1967:
    unless rx868_bstack, rx868_done1965
    pop $I19, rx868_bstack
    if_null rx868_cstack, rx868_cstack_done1970
    unless rx868_cstack, rx868_cstack_done1970
    dec $I19
    set $P11, rx868_cstack[$I19]
  rx868_cstack_done1970:
    pop rx868_rep, rx868_bstack
    pop rx868_pos, rx868_bstack
    pop $I19, rx868_bstack
    lt rx868_pos, -1, rx868_done1965
    lt rx868_pos, 0, rx868_fail1967
    eq $I19, 0, rx868_fail1967
    nqp_islist $I20, rx868_cstack
    unless $I20, rx868_jump1968
    elements $I18, rx868_bstack
    le $I18, 0, rx868_cut1969
    dec $I18
    set $I18, rx868_bstack[$I18]
  rx868_cut1969:
    assign rx868_cstack, $I18
  rx868_jump1968:
    jump $I19
  rx868_done1965:
    rx868_cur."!cursor_fail"()
    .return (rx868_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_199_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2076
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx879_start
    .local string rx879_tgt
    .local int rx879_pos
    .local int rx879_off
    .local int rx879_eos
    .local int rx879_rep
    .local pmc rx879_cur
    .local pmc rx879_curclass
    .local pmc rx879_bstack
    .local pmc rx879_cstack
    rx879_start = self."!cursor_start_all"()
    set rx879_cur, rx879_start[0]
    set rx879_tgt, rx879_start[1]
    set rx879_pos, rx879_start[2]
    set rx879_curclass, rx879_start[3]
    set rx879_bstack, rx879_start[4]
    set $I19, rx879_start[5]
    store_lex unicode:"$\x{a2}", rx879_cur
    length rx879_eos, rx879_tgt
    eq $I19, 1, rx879_restart1993
    gt rx879_pos, rx879_eos, rx879_fail1994
    repr_get_attr_int $I11, self, rx879_curclass, "$!from"
    ne $I11, -1, rxscan880_done2000
    goto rxscan880_scan1999
  rxscan880_loop1998:
    inc rx879_pos
    gt rx879_pos, rx879_eos, rx879_fail1994
    repr_bind_attr_int rx879_cur, rx879_curclass, "$!from", rx879_pos
  rxscan880_scan1999:
    nqp_rxmark rx879_bstack, rxscan880_loop1998, rx879_pos, 0
  rxscan880_done2000:
    add $I11, rx879_pos, 1
    gt $I11, rx879_eos, rx879_fail1994
    substr $S10, rx879_tgt, rx879_pos, 1
    ne $S10, ucs4:"%", rx879_fail1994
    add rx879_pos, 1
    nqp_rxmark rx879_bstack, rxquantr881_done2002, rx879_pos, 0
  rxquantr881_loop2001:
    repr_bind_attr_int rx879_cur, rx879_curclass, "$!pos", rx879_pos
    $P11 = rx879_cur."idx"()
    repr_get_attr_int $I11, $P11, rx879_curclass, "$!pos"
    lt $I11, 0, rx879_fail1994
    goto rxsubrule882_pass2003
  rxsubrule882_back2004:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx879_curclass, "$!pos"
    lt $I11, 0, rx879_fail1994
  rxsubrule882_pass2003:
    rx879_cstack = rx879_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule882_back2004
    push rx879_bstack, $I11
    push rx879_bstack, 0
    push rx879_bstack, rx879_pos
    elements $I11, rx879_cstack
    push rx879_bstack, $I11
    repr_get_attr_int rx879_pos, $P11, rx879_curclass, "$!pos"
    nqp_rxpeek $I19, rx879_bstack, rxquantr881_done2002
    inc $I19
    inc $I19
    set rx879_rep, rx879_bstack[$I19]
    nqp_rxcommit rx879_bstack, rxquantr881_done2002
    inc rx879_rep
  rxquantr881_done2002:
    nqp_rxmark rx879_bstack, rxquantr883_done2006, rx879_pos, 0
  rxquantr883_loop2005:
    repr_bind_attr_int rx879_cur, rx879_curclass, "$!pos", rx879_pos
    $P11 = rx879_cur."flags"()
    repr_get_attr_int $I11, $P11, rx879_curclass, "$!pos"
    lt $I11, 0, rx879_fail1994
    goto rxsubrule884_pass2007
  rxsubrule884_back2008:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx879_curclass, "$!pos"
    lt $I11, 0, rx879_fail1994
  rxsubrule884_pass2007:
    rx879_cstack = rx879_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule884_back2008
    push rx879_bstack, $I11
    push rx879_bstack, 0
    push rx879_bstack, rx879_pos
    elements $I11, rx879_cstack
    push rx879_bstack, $I11
    repr_get_attr_int rx879_pos, $P11, rx879_curclass, "$!pos"
    nqp_rxpeek $I19, rx879_bstack, rxquantr883_done2006
    inc $I19
    inc $I19
    set rx879_rep, rx879_bstack[$I19]
    nqp_rxcommit rx879_bstack, rxquantr883_done2006
    inc rx879_rep
    nqp_rxmark rx879_bstack, rxquantr883_done2006, rx879_pos, rx879_rep
    goto rxquantr883_loop2005
  rxquantr883_done2006:
    nqp_rxmark rx879_bstack, rxquantr885_done2010, rx879_pos, 0
  rxquantr885_loop2009:
    repr_bind_attr_int rx879_cur, rx879_curclass, "$!pos", rx879_pos
    $P11 = rx879_cur."size"()
    repr_get_attr_int $I11, $P11, rx879_curclass, "$!pos"
    lt $I11, 0, rx879_fail1994
    goto rxsubrule886_pass2011
  rxsubrule886_back2012:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx879_curclass, "$!pos"
    lt $I11, 0, rx879_fail1994
  rxsubrule886_pass2011:
    rx879_cstack = rx879_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule886_back2012
    push rx879_bstack, $I11
    push rx879_bstack, 0
    push rx879_bstack, rx879_pos
    elements $I11, rx879_cstack
    push rx879_bstack, $I11
    repr_get_attr_int rx879_pos, $P11, rx879_curclass, "$!pos"
    nqp_rxpeek $I19, rx879_bstack, rxquantr885_done2010
    inc $I19
    inc $I19
    set rx879_rep, rx879_bstack[$I19]
    nqp_rxcommit rx879_bstack, rxquantr885_done2010
    inc rx879_rep
  rxquantr885_done2010:
    nqp_rxmark rx879_bstack, rxquantr887_done2014, rx879_pos, 0
  rxquantr887_loop2013:
    add $I11, rx879_pos, 1
    gt $I11, rx879_eos, rx879_fail1994
    substr $S10, rx879_tgt, rx879_pos, 1
    ne $S10, ucs4:".", rx879_fail1994
    add rx879_pos, 1
    repr_bind_attr_int rx879_cur, rx879_curclass, "$!pos", rx879_pos
    $P11 = rx879_cur."size"()
    repr_get_attr_int $I11, $P11, rx879_curclass, "$!pos"
    lt $I11, 0, rx879_fail1994
    nqp_rxmark rx879_bstack, rxsubrule888_pass2015, -1, 0
  rxsubrule888_pass2015:
    rx879_cstack = rx879_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx879_pos, $P11, rx879_curclass, "$!pos"
    nqp_rxpeek $I19, rx879_bstack, rxquantr887_done2014
    inc $I19
    inc $I19
    set rx879_rep, rx879_bstack[$I19]
    nqp_rxcommit rx879_bstack, rxquantr887_done2014
    inc rx879_rep
  rxquantr887_done2014:
    nqp_rxmark rx879_bstack, rxcap889_fail2017, rx879_pos, 0
    ge rx879_pos, rx879_eos, rx879_fail1994
    substr $S11, rx879_tgt, rx879_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx879_fail1994
    inc rx879_pos
    nqp_rxpeek $I19, rx879_bstack, rxcap889_fail2017
    inc $I19
    set $I11, rx879_bstack[$I19]
    repr_bind_attr_int rx879_cur, rx879_curclass, "$!pos", rx879_pos
    $P11 = rx879_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx879_pos)
    rx879_cstack = rx879_cur."!cursor_capture"($P11, "sym")
    goto rxcap889_done2016
  rxcap889_fail2017:
    goto rx879_fail1994
  rxcap889_done2016:
    rx879_cur."!cursor_pass"(rx879_pos, "directive:sym<e>", 'backtrack'=>1)
    .return (rx879_cur)
  rx879_restart1993:
    repr_get_attr_obj rx879_cstack, rx879_cur, rx879_curclass, "$!cstack"
  rx879_fail1994:
    unless rx879_bstack, rx879_done1992
    pop $I19, rx879_bstack
    if_null rx879_cstack, rx879_cstack_done1997
    unless rx879_cstack, rx879_cstack_done1997
    dec $I19
    set $P11, rx879_cstack[$I19]
  rx879_cstack_done1997:
    pop rx879_rep, rx879_bstack
    pop rx879_pos, rx879_bstack
    pop $I19, rx879_bstack
    lt rx879_pos, -1, rx879_done1992
    lt rx879_pos, 0, rx879_fail1994
    eq $I19, 0, rx879_fail1994
    nqp_islist $I20, rx879_cstack
    unless $I20, rx879_jump1995
    elements $I18, rx879_bstack
    le $I18, 0, rx879_cut1996
    dec $I18
    set $I18, rx879_bstack[$I18]
  rx879_cut1996:
    assign rx879_cstack, $I18
  rx879_jump1995:
    jump $I19
  rx879_done1992:
    rx879_cur."!cursor_fail"()
    .return (rx879_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_200_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2077
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx890_start
    .local string rx890_tgt
    .local int rx890_pos
    .local int rx890_off
    .local int rx890_eos
    .local int rx890_rep
    .local pmc rx890_cur
    .local pmc rx890_curclass
    .local pmc rx890_bstack
    .local pmc rx890_cstack
    rx890_start = self."!cursor_start_all"()
    set rx890_cur, rx890_start[0]
    set rx890_tgt, rx890_start[1]
    set rx890_pos, rx890_start[2]
    set rx890_curclass, rx890_start[3]
    set rx890_bstack, rx890_start[4]
    set $I19, rx890_start[5]
    store_lex unicode:"$\x{a2}", rx890_cur
    length rx890_eos, rx890_tgt
    eq $I19, 1, rx890_restart2020
    gt rx890_pos, rx890_eos, rx890_fail2021
    repr_get_attr_int $I11, self, rx890_curclass, "$!from"
    ne $I11, -1, rxscan891_done2027
    goto rxscan891_scan2026
  rxscan891_loop2025:
    inc rx890_pos
    gt rx890_pos, rx890_eos, rx890_fail2021
    repr_bind_attr_int rx890_cur, rx890_curclass, "$!from", rx890_pos
  rxscan891_scan2026:
    nqp_rxmark rx890_bstack, rxscan891_loop2025, rx890_pos, 0
  rxscan891_done2027:
    add $I11, rx890_pos, 1
    gt $I11, rx890_eos, rx890_fail2021
    substr $S10, rx890_tgt, rx890_pos, 1
    ne $S10, ucs4:"%", rx890_fail2021
    add rx890_pos, 1
    nqp_rxmark rx890_bstack, rxquantr892_done2029, rx890_pos, 0
  rxquantr892_loop2028:
    repr_bind_attr_int rx890_cur, rx890_curclass, "$!pos", rx890_pos
    $P11 = rx890_cur."idx"()
    repr_get_attr_int $I11, $P11, rx890_curclass, "$!pos"
    lt $I11, 0, rx890_fail2021
    goto rxsubrule893_pass2030
  rxsubrule893_back2031:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx890_curclass, "$!pos"
    lt $I11, 0, rx890_fail2021
  rxsubrule893_pass2030:
    rx890_cstack = rx890_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule893_back2031
    push rx890_bstack, $I11
    push rx890_bstack, 0
    push rx890_bstack, rx890_pos
    elements $I11, rx890_cstack
    push rx890_bstack, $I11
    repr_get_attr_int rx890_pos, $P11, rx890_curclass, "$!pos"
    nqp_rxpeek $I19, rx890_bstack, rxquantr892_done2029
    inc $I19
    inc $I19
    set rx890_rep, rx890_bstack[$I19]
    nqp_rxcommit rx890_bstack, rxquantr892_done2029
    inc rx890_rep
  rxquantr892_done2029:
    nqp_rxmark rx890_bstack, rxquantr894_done2033, rx890_pos, 0
  rxquantr894_loop2032:
    repr_bind_attr_int rx890_cur, rx890_curclass, "$!pos", rx890_pos
    $P11 = rx890_cur."flags"()
    repr_get_attr_int $I11, $P11, rx890_curclass, "$!pos"
    lt $I11, 0, rx890_fail2021
    goto rxsubrule895_pass2034
  rxsubrule895_back2035:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx890_curclass, "$!pos"
    lt $I11, 0, rx890_fail2021
  rxsubrule895_pass2034:
    rx890_cstack = rx890_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule895_back2035
    push rx890_bstack, $I11
    push rx890_bstack, 0
    push rx890_bstack, rx890_pos
    elements $I11, rx890_cstack
    push rx890_bstack, $I11
    repr_get_attr_int rx890_pos, $P11, rx890_curclass, "$!pos"
    nqp_rxpeek $I19, rx890_bstack, rxquantr894_done2033
    inc $I19
    inc $I19
    set rx890_rep, rx890_bstack[$I19]
    nqp_rxcommit rx890_bstack, rxquantr894_done2033
    inc rx890_rep
    nqp_rxmark rx890_bstack, rxquantr894_done2033, rx890_pos, rx890_rep
    goto rxquantr894_loop2032
  rxquantr894_done2033:
    nqp_rxmark rx890_bstack, rxquantr896_done2037, rx890_pos, 0
  rxquantr896_loop2036:
    repr_bind_attr_int rx890_cur, rx890_curclass, "$!pos", rx890_pos
    $P11 = rx890_cur."size"()
    repr_get_attr_int $I11, $P11, rx890_curclass, "$!pos"
    lt $I11, 0, rx890_fail2021
    goto rxsubrule897_pass2038
  rxsubrule897_back2039:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx890_curclass, "$!pos"
    lt $I11, 0, rx890_fail2021
  rxsubrule897_pass2038:
    rx890_cstack = rx890_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule897_back2039
    push rx890_bstack, $I11
    push rx890_bstack, 0
    push rx890_bstack, rx890_pos
    elements $I11, rx890_cstack
    push rx890_bstack, $I11
    repr_get_attr_int rx890_pos, $P11, rx890_curclass, "$!pos"
    nqp_rxpeek $I19, rx890_bstack, rxquantr896_done2037
    inc $I19
    inc $I19
    set rx890_rep, rx890_bstack[$I19]
    nqp_rxcommit rx890_bstack, rxquantr896_done2037
    inc rx890_rep
  rxquantr896_done2037:
    nqp_rxmark rx890_bstack, rxquantr898_done2041, rx890_pos, 0
  rxquantr898_loop2040:
    add $I11, rx890_pos, 1
    gt $I11, rx890_eos, rx890_fail2021
    substr $S10, rx890_tgt, rx890_pos, 1
    ne $S10, ucs4:".", rx890_fail2021
    add rx890_pos, 1
    repr_bind_attr_int rx890_cur, rx890_curclass, "$!pos", rx890_pos
    $P11 = rx890_cur."size"()
    repr_get_attr_int $I11, $P11, rx890_curclass, "$!pos"
    lt $I11, 0, rx890_fail2021
    nqp_rxmark rx890_bstack, rxsubrule899_pass2042, -1, 0
  rxsubrule899_pass2042:
    rx890_cstack = rx890_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx890_pos, $P11, rx890_curclass, "$!pos"
    nqp_rxpeek $I19, rx890_bstack, rxquantr898_done2041
    inc $I19
    inc $I19
    set rx890_rep, rx890_bstack[$I19]
    nqp_rxcommit rx890_bstack, rxquantr898_done2041
    inc rx890_rep
  rxquantr898_done2041:
    nqp_rxmark rx890_bstack, rxcap900_fail2044, rx890_pos, 0
    ge rx890_pos, rx890_eos, rx890_fail2021
    substr $S11, rx890_tgt, rx890_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx890_fail2021
    inc rx890_pos
    nqp_rxpeek $I19, rx890_bstack, rxcap900_fail2044
    inc $I19
    set $I11, rx890_bstack[$I19]
    repr_bind_attr_int rx890_cur, rx890_curclass, "$!pos", rx890_pos
    $P11 = rx890_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx890_pos)
    rx890_cstack = rx890_cur."!cursor_capture"($P11, "sym")
    goto rxcap900_done2043
  rxcap900_fail2044:
    goto rx890_fail2021
  rxcap900_done2043:
    rx890_cur."!cursor_pass"(rx890_pos, "directive:sym<f>", 'backtrack'=>1)
    .return (rx890_cur)
  rx890_restart2020:
    repr_get_attr_obj rx890_cstack, rx890_cur, rx890_curclass, "$!cstack"
  rx890_fail2021:
    unless rx890_bstack, rx890_done2019
    pop $I19, rx890_bstack
    if_null rx890_cstack, rx890_cstack_done2024
    unless rx890_cstack, rx890_cstack_done2024
    dec $I19
    set $P11, rx890_cstack[$I19]
  rx890_cstack_done2024:
    pop rx890_rep, rx890_bstack
    pop rx890_pos, rx890_bstack
    pop $I19, rx890_bstack
    lt rx890_pos, -1, rx890_done2019
    lt rx890_pos, 0, rx890_fail2021
    eq $I19, 0, rx890_fail2021
    nqp_islist $I20, rx890_cstack
    unless $I20, rx890_jump2022
    elements $I18, rx890_bstack
    le $I18, 0, rx890_cut2023
    dec $I18
    set $I18, rx890_bstack[$I18]
  rx890_cut2023:
    assign rx890_cstack, $I18
  rx890_jump2022:
    jump $I19
  rx890_done2019:
    rx890_cur."!cursor_fail"()
    .return (rx890_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_201_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2078
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx901_start
    .local string rx901_tgt
    .local int rx901_pos
    .local int rx901_off
    .local int rx901_eos
    .local int rx901_rep
    .local pmc rx901_cur
    .local pmc rx901_curclass
    .local pmc rx901_bstack
    .local pmc rx901_cstack
    rx901_start = self."!cursor_start_all"()
    set rx901_cur, rx901_start[0]
    set rx901_tgt, rx901_start[1]
    set rx901_pos, rx901_start[2]
    set rx901_curclass, rx901_start[3]
    set rx901_bstack, rx901_start[4]
    set $I19, rx901_start[5]
    store_lex unicode:"$\x{a2}", rx901_cur
    length rx901_eos, rx901_tgt
    eq $I19, 1, rx901_restart2047
    gt rx901_pos, rx901_eos, rx901_fail2048
    repr_get_attr_int $I11, self, rx901_curclass, "$!from"
    ne $I11, -1, rxscan902_done2054
    goto rxscan902_scan2053
  rxscan902_loop2052:
    inc rx901_pos
    gt rx901_pos, rx901_eos, rx901_fail2048
    repr_bind_attr_int rx901_cur, rx901_curclass, "$!from", rx901_pos
  rxscan902_scan2053:
    nqp_rxmark rx901_bstack, rxscan902_loop2052, rx901_pos, 0
  rxscan902_done2054:
    add $I11, rx901_pos, 1
    gt $I11, rx901_eos, rx901_fail2048
    substr $S10, rx901_tgt, rx901_pos, 1
    ne $S10, ucs4:"%", rx901_fail2048
    add rx901_pos, 1
    nqp_rxmark rx901_bstack, rxquantr903_done2056, rx901_pos, 0
  rxquantr903_loop2055:
    repr_bind_attr_int rx901_cur, rx901_curclass, "$!pos", rx901_pos
    $P11 = rx901_cur."idx"()
    repr_get_attr_int $I11, $P11, rx901_curclass, "$!pos"
    lt $I11, 0, rx901_fail2048
    goto rxsubrule904_pass2057
  rxsubrule904_back2058:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx901_curclass, "$!pos"
    lt $I11, 0, rx901_fail2048
  rxsubrule904_pass2057:
    rx901_cstack = rx901_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule904_back2058
    push rx901_bstack, $I11
    push rx901_bstack, 0
    push rx901_bstack, rx901_pos
    elements $I11, rx901_cstack
    push rx901_bstack, $I11
    repr_get_attr_int rx901_pos, $P11, rx901_curclass, "$!pos"
    nqp_rxpeek $I19, rx901_bstack, rxquantr903_done2056
    inc $I19
    inc $I19
    set rx901_rep, rx901_bstack[$I19]
    nqp_rxcommit rx901_bstack, rxquantr903_done2056
    inc rx901_rep
  rxquantr903_done2056:
    nqp_rxmark rx901_bstack, rxquantr905_done2060, rx901_pos, 0
  rxquantr905_loop2059:
    repr_bind_attr_int rx901_cur, rx901_curclass, "$!pos", rx901_pos
    $P11 = rx901_cur."flags"()
    repr_get_attr_int $I11, $P11, rx901_curclass, "$!pos"
    lt $I11, 0, rx901_fail2048
    goto rxsubrule906_pass2061
  rxsubrule906_back2062:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx901_curclass, "$!pos"
    lt $I11, 0, rx901_fail2048
  rxsubrule906_pass2061:
    rx901_cstack = rx901_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule906_back2062
    push rx901_bstack, $I11
    push rx901_bstack, 0
    push rx901_bstack, rx901_pos
    elements $I11, rx901_cstack
    push rx901_bstack, $I11
    repr_get_attr_int rx901_pos, $P11, rx901_curclass, "$!pos"
    nqp_rxpeek $I19, rx901_bstack, rxquantr905_done2060
    inc $I19
    inc $I19
    set rx901_rep, rx901_bstack[$I19]
    nqp_rxcommit rx901_bstack, rxquantr905_done2060
    inc rx901_rep
    nqp_rxmark rx901_bstack, rxquantr905_done2060, rx901_pos, rx901_rep
    goto rxquantr905_loop2059
  rxquantr905_done2060:
    nqp_rxmark rx901_bstack, rxquantr907_done2064, rx901_pos, 0
  rxquantr907_loop2063:
    repr_bind_attr_int rx901_cur, rx901_curclass, "$!pos", rx901_pos
    $P11 = rx901_cur."size"()
    repr_get_attr_int $I11, $P11, rx901_curclass, "$!pos"
    lt $I11, 0, rx901_fail2048
    goto rxsubrule908_pass2065
  rxsubrule908_back2066:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx901_curclass, "$!pos"
    lt $I11, 0, rx901_fail2048
  rxsubrule908_pass2065:
    rx901_cstack = rx901_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule908_back2066
    push rx901_bstack, $I11
    push rx901_bstack, 0
    push rx901_bstack, rx901_pos
    elements $I11, rx901_cstack
    push rx901_bstack, $I11
    repr_get_attr_int rx901_pos, $P11, rx901_curclass, "$!pos"
    nqp_rxpeek $I19, rx901_bstack, rxquantr907_done2064
    inc $I19
    inc $I19
    set rx901_rep, rx901_bstack[$I19]
    nqp_rxcommit rx901_bstack, rxquantr907_done2064
    inc rx901_rep
  rxquantr907_done2064:
    nqp_rxmark rx901_bstack, rxquantr909_done2068, rx901_pos, 0
  rxquantr909_loop2067:
    add $I11, rx901_pos, 1
    gt $I11, rx901_eos, rx901_fail2048
    substr $S10, rx901_tgt, rx901_pos, 1
    ne $S10, ucs4:".", rx901_fail2048
    add rx901_pos, 1
    repr_bind_attr_int rx901_cur, rx901_curclass, "$!pos", rx901_pos
    $P11 = rx901_cur."size"()
    repr_get_attr_int $I11, $P11, rx901_curclass, "$!pos"
    lt $I11, 0, rx901_fail2048
    nqp_rxmark rx901_bstack, rxsubrule910_pass2069, -1, 0
  rxsubrule910_pass2069:
    rx901_cstack = rx901_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx901_pos, $P11, rx901_curclass, "$!pos"
    nqp_rxpeek $I19, rx901_bstack, rxquantr909_done2068
    inc $I19
    inc $I19
    set rx901_rep, rx901_bstack[$I19]
    nqp_rxcommit rx901_bstack, rxquantr909_done2068
    inc rx901_rep
  rxquantr909_done2068:
    nqp_rxmark rx901_bstack, rxcap911_fail2071, rx901_pos, 0
    ge rx901_pos, rx901_eos, rx901_fail2048
    substr $S11, rx901_tgt, rx901_pos, 1
    index $I11, ucs4:"gG", $S11
    lt $I11, 0, rx901_fail2048
    inc rx901_pos
    nqp_rxpeek $I19, rx901_bstack, rxcap911_fail2071
    inc $I19
    set $I11, rx901_bstack[$I19]
    repr_bind_attr_int rx901_cur, rx901_curclass, "$!pos", rx901_pos
    $P11 = rx901_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx901_pos)
    rx901_cstack = rx901_cur."!cursor_capture"($P11, "sym")
    goto rxcap911_done2070
  rxcap911_fail2071:
    goto rx901_fail2048
  rxcap911_done2070:
    rx901_cur."!cursor_pass"(rx901_pos, "directive:sym<g>", 'backtrack'=>1)
    .return (rx901_cur)
  rx901_restart2047:
    repr_get_attr_obj rx901_cstack, rx901_cur, rx901_curclass, "$!cstack"
  rx901_fail2048:
    unless rx901_bstack, rx901_done2046
    pop $I19, rx901_bstack
    if_null rx901_cstack, rx901_cstack_done2051
    unless rx901_cstack, rx901_cstack_done2051
    dec $I19
    set $P11, rx901_cstack[$I19]
  rx901_cstack_done2051:
    pop rx901_rep, rx901_bstack
    pop rx901_pos, rx901_bstack
    pop $I19, rx901_bstack
    lt rx901_pos, -1, rx901_done2046
    lt rx901_pos, 0, rx901_fail2048
    eq $I19, 0, rx901_fail2048
    nqp_islist $I20, rx901_cstack
    unless $I20, rx901_jump2049
    elements $I18, rx901_bstack
    le $I18, 0, rx901_cut2050
    dec $I18
    set $I18, rx901_bstack[$I18]
  rx901_cut2050:
    assign rx901_cstack, $I18
  rx901_jump2049:
    jump $I19
  rx901_done2046:
    rx901_cur."!cursor_fail"()
    .return (rx901_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_202_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2079
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx912_start
    .local string rx912_tgt
    .local int rx912_pos
    .local int rx912_off
    .local int rx912_eos
    .local int rx912_rep
    .local pmc rx912_cur
    .local pmc rx912_curclass
    .local pmc rx912_bstack
    .local pmc rx912_cstack
    rx912_start = self."!cursor_start_all"()
    set rx912_cur, rx912_start[0]
    set rx912_tgt, rx912_start[1]
    set rx912_pos, rx912_start[2]
    set rx912_curclass, rx912_start[3]
    set rx912_bstack, rx912_start[4]
    set $I19, rx912_start[5]
    store_lex unicode:"$\x{a2}", rx912_cur
    length rx912_eos, rx912_tgt
    eq $I19, 1, rx912_restart2074
    gt rx912_pos, rx912_eos, rx912_fail2075
    repr_get_attr_int $I11, self, rx912_curclass, "$!from"
    ne $I11, -1, rxscan913_done2081
    goto rxscan913_scan2080
  rxscan913_loop2079:
    inc rx912_pos
    gt rx912_pos, rx912_eos, rx912_fail2075
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!from", rx912_pos
  rxscan913_scan2080:
    nqp_rxmark rx912_bstack, rxscan913_loop2079, rx912_pos, 0
  rxscan913_done2081:
    add $I11, rx912_pos, 1
    gt $I11, rx912_eos, rx912_fail2075
    substr $S10, rx912_tgt, rx912_pos, 1
    ne $S10, ucs4:"%", rx912_fail2075
    add rx912_pos, 1
    nqp_rxmark rx912_bstack, rxquantr914_done2083, rx912_pos, 0
  rxquantr914_loop2082:
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."idx"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2075
    goto rxsubrule915_pass2084
  rxsubrule915_back2085:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2075
  rxsubrule915_pass2084:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule915_back2085
    push rx912_bstack, $I11
    push rx912_bstack, 0
    push rx912_bstack, rx912_pos
    elements $I11, rx912_cstack
    push rx912_bstack, $I11
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr914_done2083
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr914_done2083
    inc rx912_rep
  rxquantr914_done2083:
    nqp_rxmark rx912_bstack, rxquantr916_done2087, rx912_pos, 0
  rxquantr916_loop2086:
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."flags"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2075
    goto rxsubrule917_pass2088
  rxsubrule917_back2089:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2075
  rxsubrule917_pass2088:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule917_back2089
    push rx912_bstack, $I11
    push rx912_bstack, 0
    push rx912_bstack, rx912_pos
    elements $I11, rx912_cstack
    push rx912_bstack, $I11
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr916_done2087
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr916_done2087
    inc rx912_rep
    nqp_rxmark rx912_bstack, rxquantr916_done2087, rx912_pos, rx912_rep
    goto rxquantr916_loop2086
  rxquantr916_done2087:
    nqp_rxmark rx912_bstack, rxquantr918_done2091, rx912_pos, 0
  rxquantr918_loop2090:
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."size"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2075
    goto rxsubrule919_pass2092
  rxsubrule919_back2093:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2075
  rxsubrule919_pass2092:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule919_back2093
    push rx912_bstack, $I11
    push rx912_bstack, 0
    push rx912_bstack, rx912_pos
    elements $I11, rx912_cstack
    push rx912_bstack, $I11
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr918_done2091
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr918_done2091
    inc rx912_rep
  rxquantr918_done2091:
    nqp_rxmark rx912_bstack, rxquantr920_done2095, rx912_pos, 0
  rxquantr920_loop2094:
    add $I11, rx912_pos, 1
    gt $I11, rx912_eos, rx912_fail2075
    substr $S10, rx912_tgt, rx912_pos, 1
    ne $S10, ucs4:".", rx912_fail2075
    add rx912_pos, 1
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."size"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2075
    nqp_rxmark rx912_bstack, rxsubrule921_pass2096, -1, 0
  rxsubrule921_pass2096:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr920_done2095
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr920_done2095
    inc rx912_rep
  rxquantr920_done2095:
    nqp_rxmark rx912_bstack, rxcap922_fail2098, rx912_pos, 0
    add $I11, rx912_pos, 1
    gt $I11, rx912_eos, rx912_fail2075
    substr $S10, rx912_tgt, rx912_pos, 1
    ne $S10, ucs4:"o", rx912_fail2075
    add rx912_pos, 1
    nqp_rxpeek $I19, rx912_bstack, rxcap922_fail2098
    inc $I19
    set $I11, rx912_bstack[$I19]
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx912_pos)
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "sym")
    goto rxcap922_done2097
  rxcap922_fail2098:
    goto rx912_fail2075
  rxcap922_done2097:
    rx912_cur."!cursor_pass"(rx912_pos, "directive:sym<o>", 'backtrack'=>1)
    .return (rx912_cur)
  rx912_restart2074:
    repr_get_attr_obj rx912_cstack, rx912_cur, rx912_curclass, "$!cstack"
  rx912_fail2075:
    unless rx912_bstack, rx912_done2073
    pop $I19, rx912_bstack
    if_null rx912_cstack, rx912_cstack_done2078
    unless rx912_cstack, rx912_cstack_done2078
    dec $I19
    set $P11, rx912_cstack[$I19]
  rx912_cstack_done2078:
    pop rx912_rep, rx912_bstack
    pop rx912_pos, rx912_bstack
    pop $I19, rx912_bstack
    lt rx912_pos, -1, rx912_done2073
    lt rx912_pos, 0, rx912_fail2075
    eq $I19, 0, rx912_fail2075
    nqp_islist $I20, rx912_cstack
    unless $I20, rx912_jump2076
    elements $I18, rx912_bstack
    le $I18, 0, rx912_cut2077
    dec $I18
    set $I18, rx912_bstack[$I18]
  rx912_cut2077:
    assign rx912_cstack, $I18
  rx912_jump2076:
    jump $I19
  rx912_done2073:
    rx912_cur."!cursor_fail"()
    .return (rx912_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_203_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2080
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx923_start
    .local string rx923_tgt
    .local int rx923_pos
    .local int rx923_off
    .local int rx923_eos
    .local int rx923_rep
    .local pmc rx923_cur
    .local pmc rx923_curclass
    .local pmc rx923_bstack
    .local pmc rx923_cstack
    rx923_start = self."!cursor_start_all"()
    set rx923_cur, rx923_start[0]
    set rx923_tgt, rx923_start[1]
    set rx923_pos, rx923_start[2]
    set rx923_curclass, rx923_start[3]
    set rx923_bstack, rx923_start[4]
    set $I19, rx923_start[5]
    store_lex unicode:"$\x{a2}", rx923_cur
    length rx923_eos, rx923_tgt
    eq $I19, 1, rx923_restart2101
    gt rx923_pos, rx923_eos, rx923_fail2102
    repr_get_attr_int $I11, self, rx923_curclass, "$!from"
    ne $I11, -1, rxscan924_done2108
    goto rxscan924_scan2107
  rxscan924_loop2106:
    inc rx923_pos
    gt rx923_pos, rx923_eos, rx923_fail2102
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!from", rx923_pos
  rxscan924_scan2107:
    nqp_rxmark rx923_bstack, rxscan924_loop2106, rx923_pos, 0
  rxscan924_done2108:
    add $I11, rx923_pos, 1
    gt $I11, rx923_eos, rx923_fail2102
    substr $S10, rx923_tgt, rx923_pos, 1
    ne $S10, ucs4:"%", rx923_fail2102
    add rx923_pos, 1
    nqp_rxmark rx923_bstack, rxquantr925_done2110, rx923_pos, 0
  rxquantr925_loop2109:
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."idx"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2102
    goto rxsubrule926_pass2111
  rxsubrule926_back2112:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2102
  rxsubrule926_pass2111:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule926_back2112
    push rx923_bstack, $I11
    push rx923_bstack, 0
    push rx923_bstack, rx923_pos
    elements $I11, rx923_cstack
    push rx923_bstack, $I11
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr925_done2110
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr925_done2110
    inc rx923_rep
  rxquantr925_done2110:
    nqp_rxmark rx923_bstack, rxquantr927_done2114, rx923_pos, 0
  rxquantr927_loop2113:
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."flags"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2102
    goto rxsubrule928_pass2115
  rxsubrule928_back2116:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2102
  rxsubrule928_pass2115:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule928_back2116
    push rx923_bstack, $I11
    push rx923_bstack, 0
    push rx923_bstack, rx923_pos
    elements $I11, rx923_cstack
    push rx923_bstack, $I11
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr927_done2114
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr927_done2114
    inc rx923_rep
    nqp_rxmark rx923_bstack, rxquantr927_done2114, rx923_pos, rx923_rep
    goto rxquantr927_loop2113
  rxquantr927_done2114:
    nqp_rxmark rx923_bstack, rxquantr929_done2118, rx923_pos, 0
  rxquantr929_loop2117:
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."size"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2102
    goto rxsubrule930_pass2119
  rxsubrule930_back2120:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2102
  rxsubrule930_pass2119:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule930_back2120
    push rx923_bstack, $I11
    push rx923_bstack, 0
    push rx923_bstack, rx923_pos
    elements $I11, rx923_cstack
    push rx923_bstack, $I11
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr929_done2118
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr929_done2118
    inc rx923_rep
  rxquantr929_done2118:
    nqp_rxmark rx923_bstack, rxquantr931_done2122, rx923_pos, 0
  rxquantr931_loop2121:
    add $I11, rx923_pos, 1
    gt $I11, rx923_eos, rx923_fail2102
    substr $S10, rx923_tgt, rx923_pos, 1
    ne $S10, ucs4:".", rx923_fail2102
    add rx923_pos, 1
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."size"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2102
    nqp_rxmark rx923_bstack, rxsubrule932_pass2123, -1, 0
  rxsubrule932_pass2123:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr931_done2122
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr931_done2122
    inc rx923_rep
  rxquantr931_done2122:
    nqp_rxmark rx923_bstack, rxcap933_fail2125, rx923_pos, 0
    add $I11, rx923_pos, 1
    gt $I11, rx923_eos, rx923_fail2102
    substr $S10, rx923_tgt, rx923_pos, 1
    ne $S10, ucs4:"s", rx923_fail2102
    add rx923_pos, 1
    nqp_rxpeek $I19, rx923_bstack, rxcap933_fail2125
    inc $I19
    set $I11, rx923_bstack[$I19]
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx923_pos)
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "sym")
    goto rxcap933_done2124
  rxcap933_fail2125:
    goto rx923_fail2102
  rxcap933_done2124:
    rx923_cur."!cursor_pass"(rx923_pos, "directive:sym<s>", 'backtrack'=>1)
    .return (rx923_cur)
  rx923_restart2101:
    repr_get_attr_obj rx923_cstack, rx923_cur, rx923_curclass, "$!cstack"
  rx923_fail2102:
    unless rx923_bstack, rx923_done2100
    pop $I19, rx923_bstack
    if_null rx923_cstack, rx923_cstack_done2105
    unless rx923_cstack, rx923_cstack_done2105
    dec $I19
    set $P11, rx923_cstack[$I19]
  rx923_cstack_done2105:
    pop rx923_rep, rx923_bstack
    pop rx923_pos, rx923_bstack
    pop $I19, rx923_bstack
    lt rx923_pos, -1, rx923_done2100
    lt rx923_pos, 0, rx923_fail2102
    eq $I19, 0, rx923_fail2102
    nqp_islist $I20, rx923_cstack
    unless $I20, rx923_jump2103
    elements $I18, rx923_bstack
    le $I18, 0, rx923_cut2104
    dec $I18
    set $I18, rx923_bstack[$I18]
  rx923_cut2104:
    assign rx923_cstack, $I18
  rx923_jump2103:
    jump $I19
  rx923_done2100:
    rx923_cur."!cursor_fail"()
    .return (rx923_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_204_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2081
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx934_start
    .local string rx934_tgt
    .local int rx934_pos
    .local int rx934_off
    .local int rx934_eos
    .local int rx934_rep
    .local pmc rx934_cur
    .local pmc rx934_curclass
    .local pmc rx934_bstack
    .local pmc rx934_cstack
    rx934_start = self."!cursor_start_all"()
    set rx934_cur, rx934_start[0]
    set rx934_tgt, rx934_start[1]
    set rx934_pos, rx934_start[2]
    set rx934_curclass, rx934_start[3]
    set rx934_bstack, rx934_start[4]
    set $I19, rx934_start[5]
    store_lex unicode:"$\x{a2}", rx934_cur
    length rx934_eos, rx934_tgt
    eq $I19, 1, rx934_restart2128
    gt rx934_pos, rx934_eos, rx934_fail2129
    repr_get_attr_int $I11, self, rx934_curclass, "$!from"
    ne $I11, -1, rxscan935_done2135
    goto rxscan935_scan2134
  rxscan935_loop2133:
    inc rx934_pos
    gt rx934_pos, rx934_eos, rx934_fail2129
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!from", rx934_pos
  rxscan935_scan2134:
    nqp_rxmark rx934_bstack, rxscan935_loop2133, rx934_pos, 0
  rxscan935_done2135:
    add $I11, rx934_pos, 1
    gt $I11, rx934_eos, rx934_fail2129
    substr $S10, rx934_tgt, rx934_pos, 1
    ne $S10, ucs4:"%", rx934_fail2129
    add rx934_pos, 1
    nqp_rxmark rx934_bstack, rxquantr936_done2137, rx934_pos, 0
  rxquantr936_loop2136:
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."idx"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2129
    goto rxsubrule937_pass2138
  rxsubrule937_back2139:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2129
  rxsubrule937_pass2138:
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule937_back2139
    push rx934_bstack, $I11
    push rx934_bstack, 0
    push rx934_bstack, rx934_pos
    elements $I11, rx934_cstack
    push rx934_bstack, $I11
    repr_get_attr_int rx934_pos, $P11, rx934_curclass, "$!pos"
    nqp_rxpeek $I19, rx934_bstack, rxquantr936_done2137
    inc $I19
    inc $I19
    set rx934_rep, rx934_bstack[$I19]
    nqp_rxcommit rx934_bstack, rxquantr936_done2137
    inc rx934_rep
  rxquantr936_done2137:
    nqp_rxmark rx934_bstack, rxquantr938_done2141, rx934_pos, 0
  rxquantr938_loop2140:
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."flags"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2129
    goto rxsubrule939_pass2142
  rxsubrule939_back2143:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2129
  rxsubrule939_pass2142:
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule939_back2143
    push rx934_bstack, $I11
    push rx934_bstack, 0
    push rx934_bstack, rx934_pos
    elements $I11, rx934_cstack
    push rx934_bstack, $I11
    repr_get_attr_int rx934_pos, $P11, rx934_curclass, "$!pos"
    nqp_rxpeek $I19, rx934_bstack, rxquantr938_done2141
    inc $I19
    inc $I19
    set rx934_rep, rx934_bstack[$I19]
    nqp_rxcommit rx934_bstack, rxquantr938_done2141
    inc rx934_rep
    nqp_rxmark rx934_bstack, rxquantr938_done2141, rx934_pos, rx934_rep
    goto rxquantr938_loop2140
  rxquantr938_done2141:
    nqp_rxmark rx934_bstack, rxquantr940_done2145, rx934_pos, 0
  rxquantr940_loop2144:
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."size"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2129
    goto rxsubrule941_pass2146
  rxsubrule941_back2147:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2129
  rxsubrule941_pass2146:
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule941_back2147
    push rx934_bstack, $I11
    push rx934_bstack, 0
    push rx934_bstack, rx934_pos
    elements $I11, rx934_cstack
    push rx934_bstack, $I11
    repr_get_attr_int rx934_pos, $P11, rx934_curclass, "$!pos"
    nqp_rxpeek $I19, rx934_bstack, rxquantr940_done2145
    inc $I19
    inc $I19
    set rx934_rep, rx934_bstack[$I19]
    nqp_rxcommit rx934_bstack, rxquantr940_done2145
    inc rx934_rep
  rxquantr940_done2145:
    nqp_rxmark rx934_bstack, rxcap942_fail2149, rx934_pos, 0
    add $I11, rx934_pos, 1
    gt $I11, rx934_eos, rx934_fail2129
    substr $S10, rx934_tgt, rx934_pos, 1
    ne $S10, ucs4:"u", rx934_fail2129
    add rx934_pos, 1
    nqp_rxpeek $I19, rx934_bstack, rxcap942_fail2149
    inc $I19
    set $I11, rx934_bstack[$I19]
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx934_pos)
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "sym")
    goto rxcap942_done2148
  rxcap942_fail2149:
    goto rx934_fail2129
  rxcap942_done2148:
    rx934_cur."!cursor_pass"(rx934_pos, "directive:sym<u>", 'backtrack'=>1)
    .return (rx934_cur)
  rx934_restart2128:
    repr_get_attr_obj rx934_cstack, rx934_cur, rx934_curclass, "$!cstack"
  rx934_fail2129:
    unless rx934_bstack, rx934_done2127
    pop $I19, rx934_bstack
    if_null rx934_cstack, rx934_cstack_done2132
    unless rx934_cstack, rx934_cstack_done2132
    dec $I19
    set $P11, rx934_cstack[$I19]
  rx934_cstack_done2132:
    pop rx934_rep, rx934_bstack
    pop rx934_pos, rx934_bstack
    pop $I19, rx934_bstack
    lt rx934_pos, -1, rx934_done2127
    lt rx934_pos, 0, rx934_fail2129
    eq $I19, 0, rx934_fail2129
    nqp_islist $I20, rx934_cstack
    unless $I20, rx934_jump2130
    elements $I18, rx934_bstack
    le $I18, 0, rx934_cut2131
    dec $I18
    set $I18, rx934_bstack[$I18]
  rx934_cut2131:
    assign rx934_cstack, $I18
  rx934_jump2130:
    jump $I19
  rx934_done2127:
    rx934_cur."!cursor_fail"()
    .return (rx934_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<x>" :subid("cuid_205_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2082
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx943_start
    .local string rx943_tgt
    .local int rx943_pos
    .local int rx943_off
    .local int rx943_eos
    .local int rx943_rep
    .local pmc rx943_cur
    .local pmc rx943_curclass
    .local pmc rx943_bstack
    .local pmc rx943_cstack
    rx943_start = self."!cursor_start_all"()
    set rx943_cur, rx943_start[0]
    set rx943_tgt, rx943_start[1]
    set rx943_pos, rx943_start[2]
    set rx943_curclass, rx943_start[3]
    set rx943_bstack, rx943_start[4]
    set $I19, rx943_start[5]
    store_lex unicode:"$\x{a2}", rx943_cur
    length rx943_eos, rx943_tgt
    eq $I19, 1, rx943_restart2152
    gt rx943_pos, rx943_eos, rx943_fail2153
    repr_get_attr_int $I11, self, rx943_curclass, "$!from"
    ne $I11, -1, rxscan944_done2159
    goto rxscan944_scan2158
  rxscan944_loop2157:
    inc rx943_pos
    gt rx943_pos, rx943_eos, rx943_fail2153
    repr_bind_attr_int rx943_cur, rx943_curclass, "$!from", rx943_pos
  rxscan944_scan2158:
    nqp_rxmark rx943_bstack, rxscan944_loop2157, rx943_pos, 0
  rxscan944_done2159:
    add $I11, rx943_pos, 1
    gt $I11, rx943_eos, rx943_fail2153
    substr $S10, rx943_tgt, rx943_pos, 1
    ne $S10, ucs4:"%", rx943_fail2153
    add rx943_pos, 1
    nqp_rxmark rx943_bstack, rxquantr945_done2161, rx943_pos, 0
  rxquantr945_loop2160:
    repr_bind_attr_int rx943_cur, rx943_curclass, "$!pos", rx943_pos
    $P11 = rx943_cur."idx"()
    repr_get_attr_int $I11, $P11, rx943_curclass, "$!pos"
    lt $I11, 0, rx943_fail2153
    goto rxsubrule946_pass2162
  rxsubrule946_back2163:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx943_curclass, "$!pos"
    lt $I11, 0, rx943_fail2153
  rxsubrule946_pass2162:
    rx943_cstack = rx943_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule946_back2163
    push rx943_bstack, $I11
    push rx943_bstack, 0
    push rx943_bstack, rx943_pos
    elements $I11, rx943_cstack
    push rx943_bstack, $I11
    repr_get_attr_int rx943_pos, $P11, rx943_curclass, "$!pos"
    nqp_rxpeek $I19, rx943_bstack, rxquantr945_done2161
    inc $I19
    inc $I19
    set rx943_rep, rx943_bstack[$I19]
    nqp_rxcommit rx943_bstack, rxquantr945_done2161
    inc rx943_rep
  rxquantr945_done2161:
    nqp_rxmark rx943_bstack, rxquantr947_done2165, rx943_pos, 0
  rxquantr947_loop2164:
    repr_bind_attr_int rx943_cur, rx943_curclass, "$!pos", rx943_pos
    $P11 = rx943_cur."flags"()
    repr_get_attr_int $I11, $P11, rx943_curclass, "$!pos"
    lt $I11, 0, rx943_fail2153
    goto rxsubrule948_pass2166
  rxsubrule948_back2167:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx943_curclass, "$!pos"
    lt $I11, 0, rx943_fail2153
  rxsubrule948_pass2166:
    rx943_cstack = rx943_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule948_back2167
    push rx943_bstack, $I11
    push rx943_bstack, 0
    push rx943_bstack, rx943_pos
    elements $I11, rx943_cstack
    push rx943_bstack, $I11
    repr_get_attr_int rx943_pos, $P11, rx943_curclass, "$!pos"
    nqp_rxpeek $I19, rx943_bstack, rxquantr947_done2165
    inc $I19
    inc $I19
    set rx943_rep, rx943_bstack[$I19]
    nqp_rxcommit rx943_bstack, rxquantr947_done2165
    inc rx943_rep
    nqp_rxmark rx943_bstack, rxquantr947_done2165, rx943_pos, rx943_rep
    goto rxquantr947_loop2164
  rxquantr947_done2165:
    nqp_rxmark rx943_bstack, rxquantr949_done2169, rx943_pos, 0
  rxquantr949_loop2168:
    repr_bind_attr_int rx943_cur, rx943_curclass, "$!pos", rx943_pos
    $P11 = rx943_cur."size"()
    repr_get_attr_int $I11, $P11, rx943_curclass, "$!pos"
    lt $I11, 0, rx943_fail2153
    goto rxsubrule950_pass2170
  rxsubrule950_back2171:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx943_curclass, "$!pos"
    lt $I11, 0, rx943_fail2153
  rxsubrule950_pass2170:
    rx943_cstack = rx943_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule950_back2171
    push rx943_bstack, $I11
    push rx943_bstack, 0
    push rx943_bstack, rx943_pos
    elements $I11, rx943_cstack
    push rx943_bstack, $I11
    repr_get_attr_int rx943_pos, $P11, rx943_curclass, "$!pos"
    nqp_rxpeek $I19, rx943_bstack, rxquantr949_done2169
    inc $I19
    inc $I19
    set rx943_rep, rx943_bstack[$I19]
    nqp_rxcommit rx943_bstack, rxquantr949_done2169
    inc rx943_rep
  rxquantr949_done2169:
    nqp_rxmark rx943_bstack, rxquantr951_done2173, rx943_pos, 0
  rxquantr951_loop2172:
    add $I11, rx943_pos, 1
    gt $I11, rx943_eos, rx943_fail2153
    substr $S10, rx943_tgt, rx943_pos, 1
    ne $S10, ucs4:".", rx943_fail2153
    add rx943_pos, 1
    repr_bind_attr_int rx943_cur, rx943_curclass, "$!pos", rx943_pos
    $P11 = rx943_cur."size"()
    repr_get_attr_int $I11, $P11, rx943_curclass, "$!pos"
    lt $I11, 0, rx943_fail2153
    nqp_rxmark rx943_bstack, rxsubrule952_pass2174, -1, 0
  rxsubrule952_pass2174:
    rx943_cstack = rx943_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx943_pos, $P11, rx943_curclass, "$!pos"
    nqp_rxpeek $I19, rx943_bstack, rxquantr951_done2173
    inc $I19
    inc $I19
    set rx943_rep, rx943_bstack[$I19]
    nqp_rxcommit rx943_bstack, rxquantr951_done2173
    inc rx943_rep
  rxquantr951_done2173:
    nqp_rxmark rx943_bstack, rxcap953_fail2176, rx943_pos, 0
    ge rx943_pos, rx943_eos, rx943_fail2153
    substr $S11, rx943_tgt, rx943_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx943_fail2153
    inc rx943_pos
    nqp_rxpeek $I19, rx943_bstack, rxcap953_fail2176
    inc $I19
    set $I11, rx943_bstack[$I19]
    repr_bind_attr_int rx943_cur, rx943_curclass, "$!pos", rx943_pos
    $P11 = rx943_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx943_pos)
    rx943_cstack = rx943_cur."!cursor_capture"($P11, "sym")
    goto rxcap953_done2175
  rxcap953_fail2176:
    goto rx943_fail2153
  rxcap953_done2175:
    rx943_cur."!cursor_pass"(rx943_pos, "directive:sym<x>", 'backtrack'=>1)
    .return (rx943_cur)
  rx943_restart2152:
    repr_get_attr_obj rx943_cstack, rx943_cur, rx943_curclass, "$!cstack"
  rx943_fail2153:
    unless rx943_bstack, rx943_done2151
    pop $I19, rx943_bstack
    if_null rx943_cstack, rx943_cstack_done2156
    unless rx943_cstack, rx943_cstack_done2156
    dec $I19
    set $P11, rx943_cstack[$I19]
  rx943_cstack_done2156:
    pop rx943_rep, rx943_bstack
    pop rx943_pos, rx943_bstack
    pop $I19, rx943_bstack
    lt rx943_pos, -1, rx943_done2151
    lt rx943_pos, 0, rx943_fail2153
    eq $I19, 0, rx943_fail2153
    nqp_islist $I20, rx943_cstack
    unless $I20, rx943_jump2154
    elements $I18, rx943_bstack
    le $I18, 0, rx943_cut2155
    dec $I18
    set $I18, rx943_bstack[$I18]
  rx943_cut2155:
    assign rx943_cstack, $I18
  rx943_jump2154:
    jump $I19
  rx943_done2151:
    rx943_cur."!cursor_fail"()
    .return (rx943_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_206_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2084
    .param pmc self 
    $P5001 = self."!protoregex"("escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_207_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2085
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx954_start
    .local string rx954_tgt
    .local int rx954_pos
    .local int rx954_off
    .local int rx954_eos
    .local int rx954_rep
    .local pmc rx954_cur
    .local pmc rx954_curclass
    .local pmc rx954_bstack
    .local pmc rx954_cstack
    rx954_start = self."!cursor_start_all"()
    set rx954_cur, rx954_start[0]
    set rx954_tgt, rx954_start[1]
    set rx954_pos, rx954_start[2]
    set rx954_curclass, rx954_start[3]
    set rx954_bstack, rx954_start[4]
    set $I19, rx954_start[5]
    store_lex unicode:"$\x{a2}", rx954_cur
    length rx954_eos, rx954_tgt
    eq $I19, 1, rx954_restart2179
    gt rx954_pos, rx954_eos, rx954_fail2180
    repr_get_attr_int $I11, self, rx954_curclass, "$!from"
    ne $I11, -1, rxscan955_done2186
    goto rxscan955_scan2185
  rxscan955_loop2184:
    inc rx954_pos
    gt rx954_pos, rx954_eos, rx954_fail2180
    repr_bind_attr_int rx954_cur, rx954_curclass, "$!from", rx954_pos
  rxscan955_scan2185:
    nqp_rxmark rx954_bstack, rxscan955_loop2184, rx954_pos, 0
  rxscan955_done2186:
    add $I11, rx954_pos, 1
    gt $I11, rx954_eos, rx954_fail2180
    substr $S10, rx954_tgt, rx954_pos, 1
    ne $S10, ucs4:"%", rx954_fail2180
    add rx954_pos, 1
    nqp_rxmark rx954_bstack, rxquantr956_done2188, rx954_pos, 0
  rxquantr956_loop2187:
    repr_bind_attr_int rx954_cur, rx954_curclass, "$!pos", rx954_pos
    $P11 = rx954_cur."flags"()
    repr_get_attr_int $I11, $P11, rx954_curclass, "$!pos"
    lt $I11, 0, rx954_fail2180
    goto rxsubrule957_pass2189
  rxsubrule957_back2190:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx954_curclass, "$!pos"
    lt $I11, 0, rx954_fail2180
  rxsubrule957_pass2189:
    rx954_cstack = rx954_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule957_back2190
    push rx954_bstack, $I11
    push rx954_bstack, 0
    push rx954_bstack, rx954_pos
    elements $I11, rx954_cstack
    push rx954_bstack, $I11
    repr_get_attr_int rx954_pos, $P11, rx954_curclass, "$!pos"
    nqp_rxpeek $I19, rx954_bstack, rxquantr956_done2188
    inc $I19
    inc $I19
    set rx954_rep, rx954_bstack[$I19]
    nqp_rxcommit rx954_bstack, rxquantr956_done2188
    inc rx954_rep
    nqp_rxmark rx954_bstack, rxquantr956_done2188, rx954_pos, rx954_rep
    goto rxquantr956_loop2187
  rxquantr956_done2188:
    nqp_rxmark rx954_bstack, rxquantr958_done2192, rx954_pos, 0
  rxquantr958_loop2191:
    repr_bind_attr_int rx954_cur, rx954_curclass, "$!pos", rx954_pos
    $P11 = rx954_cur."size"()
    repr_get_attr_int $I11, $P11, rx954_curclass, "$!pos"
    lt $I11, 0, rx954_fail2180
    goto rxsubrule959_pass2193
  rxsubrule959_back2194:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx954_curclass, "$!pos"
    lt $I11, 0, rx954_fail2180
  rxsubrule959_pass2193:
    rx954_cstack = rx954_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule959_back2194
    push rx954_bstack, $I11
    push rx954_bstack, 0
    push rx954_bstack, rx954_pos
    elements $I11, rx954_cstack
    push rx954_bstack, $I11
    repr_get_attr_int rx954_pos, $P11, rx954_curclass, "$!pos"
    nqp_rxpeek $I19, rx954_bstack, rxquantr958_done2192
    inc $I19
    inc $I19
    set rx954_rep, rx954_bstack[$I19]
    nqp_rxcommit rx954_bstack, rxquantr958_done2192
    inc rx954_rep
  rxquantr958_done2192:
    nqp_rxmark rx954_bstack, rxcap960_fail2196, rx954_pos, 0
    add $I11, rx954_pos, 1
    gt $I11, rx954_eos, rx954_fail2180
    substr $S10, rx954_tgt, rx954_pos, 1
    ne $S10, ucs4:"%", rx954_fail2180
    add rx954_pos, 1
    nqp_rxpeek $I19, rx954_bstack, rxcap960_fail2196
    inc $I19
    set $I11, rx954_bstack[$I19]
    repr_bind_attr_int rx954_cur, rx954_curclass, "$!pos", rx954_pos
    $P11 = rx954_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx954_pos)
    rx954_cstack = rx954_cur."!cursor_capture"($P11, "sym")
    goto rxcap960_done2195
  rxcap960_fail2196:
    goto rx954_fail2180
  rxcap960_done2195:
    rx954_cur."!cursor_pass"(rx954_pos, "escape:sym<%>", 'backtrack'=>1)
    .return (rx954_cur)
  rx954_restart2179:
    repr_get_attr_obj rx954_cstack, rx954_cur, rx954_curclass, "$!cstack"
  rx954_fail2180:
    unless rx954_bstack, rx954_done2178
    pop $I19, rx954_bstack
    if_null rx954_cstack, rx954_cstack_done2183
    unless rx954_cstack, rx954_cstack_done2183
    dec $I19
    set $P11, rx954_cstack[$I19]
  rx954_cstack_done2183:
    pop rx954_rep, rx954_bstack
    pop rx954_pos, rx954_bstack
    pop $I19, rx954_bstack
    lt rx954_pos, -1, rx954_done2178
    lt rx954_pos, 0, rx954_fail2180
    eq $I19, 0, rx954_fail2180
    nqp_islist $I20, rx954_cstack
    unless $I20, rx954_jump2181
    elements $I18, rx954_bstack
    le $I18, 0, rx954_cut2182
    dec $I18
    set $I18, rx954_bstack[$I18]
  rx954_cut2182:
    assign rx954_cstack, $I18
  rx954_jump2181:
    jump $I19
  rx954_done2178:
    rx954_cur."!cursor_fail"()
    .return (rx954_cur) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_208_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2087
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx961_start
    .local string rx961_tgt
    .local int rx961_pos
    .local int rx961_off
    .local int rx961_eos
    .local int rx961_rep
    .local pmc rx961_cur
    .local pmc rx961_curclass
    .local pmc rx961_bstack
    .local pmc rx961_cstack
    rx961_start = self."!cursor_start_all"()
    set rx961_cur, rx961_start[0]
    set rx961_tgt, rx961_start[1]
    set rx961_pos, rx961_start[2]
    set rx961_curclass, rx961_start[3]
    set rx961_bstack, rx961_start[4]
    set $I19, rx961_start[5]
    store_lex unicode:"$\x{a2}", rx961_cur
    length rx961_eos, rx961_tgt
    eq $I19, 1, rx961_restart2199
    gt rx961_pos, rx961_eos, rx961_fail2200
    repr_get_attr_int $I11, self, rx961_curclass, "$!from"
    ne $I11, -1, rxscan962_done2206
    goto rxscan962_scan2205
  rxscan962_loop2204:
    inc rx961_pos
    gt rx961_pos, rx961_eos, rx961_fail2200
    repr_bind_attr_int rx961_cur, rx961_curclass, "$!from", rx961_pos
  rxscan962_scan2205:
    nqp_rxmark rx961_bstack, rxscan962_loop2204, rx961_pos, 0
  rxscan962_done2206:
    nqp_rxmark rx961_bstack, rxquantr963_done2208, -1, 0
  rxquantr963_loop2207:
    ge rx961_pos, rx961_eos, rx961_fail2200
    substr $S11, rx961_tgt, rx961_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx961_fail2200
    inc rx961_pos
    nqp_rxpeek $I19, rx961_bstack, rxquantr963_done2208
    inc $I19
    inc $I19
    set rx961_rep, rx961_bstack[$I19]
    nqp_rxcommit rx961_bstack, rxquantr963_done2208
    inc rx961_rep
    nqp_rxmark rx961_bstack, rxquantr963_done2208, rx961_pos, rx961_rep
    goto rxquantr963_loop2207
  rxquantr963_done2208:
    rx961_cur."!cursor_pass"(rx961_pos, "literal", 'backtrack'=>1)
    .return (rx961_cur)
  rx961_restart2199:
    repr_get_attr_obj rx961_cstack, rx961_cur, rx961_curclass, "$!cstack"
  rx961_fail2200:
    unless rx961_bstack, rx961_done2198
    pop $I19, rx961_bstack
    if_null rx961_cstack, rx961_cstack_done2203
    unless rx961_cstack, rx961_cstack_done2203
    dec $I19
    set $P11, rx961_cstack[$I19]
  rx961_cstack_done2203:
    pop rx961_rep, rx961_bstack
    pop rx961_pos, rx961_bstack
    pop $I19, rx961_bstack
    lt rx961_pos, -1, rx961_done2198
    lt rx961_pos, 0, rx961_fail2200
    eq $I19, 0, rx961_fail2200
    nqp_islist $I20, rx961_cstack
    unless $I20, rx961_jump2201
    elements $I18, rx961_bstack
    le $I18, 0, rx961_cut2202
    dec $I18
    set $I18, rx961_bstack[$I18]
  rx961_cut2202:
    assign rx961_cstack, $I18
  rx961_jump2201:
    jump $I19
  rx961_done2198:
    rx961_cur."!cursor_fail"()
    .return (rx961_cur) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_209_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2089
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx964_start
    .local string rx964_tgt
    .local int rx964_pos
    .local int rx964_off
    .local int rx964_eos
    .local int rx964_rep
    .local pmc rx964_cur
    .local pmc rx964_curclass
    .local pmc rx964_bstack
    .local pmc rx964_cstack
    rx964_start = self."!cursor_start_all"()
    set rx964_cur, rx964_start[0]
    set rx964_tgt, rx964_start[1]
    set rx964_pos, rx964_start[2]
    set rx964_curclass, rx964_start[3]
    set rx964_bstack, rx964_start[4]
    set $I19, rx964_start[5]
    store_lex unicode:"$\x{a2}", rx964_cur
    length rx964_eos, rx964_tgt
    eq $I19, 1, rx964_restart2211
    gt rx964_pos, rx964_eos, rx964_fail2212
    repr_get_attr_int $I11, self, rx964_curclass, "$!from"
    ne $I11, -1, rxscan965_done2218
    goto rxscan965_scan2217
  rxscan965_loop2216:
    inc rx964_pos
    gt rx964_pos, rx964_eos, rx964_fail2212
    repr_bind_attr_int rx964_cur, rx964_curclass, "$!from", rx964_pos
  rxscan965_scan2217:
    nqp_rxmark rx964_bstack, rxscan965_loop2216, rx964_pos, 0
  rxscan965_done2218:
    nqp_rxmark rx964_bstack, rxcap966_fail2220, rx964_pos, 0
    nqp_rxmark rx964_bstack, rxquantr967_done2222, -1, 0
  rxquantr967_loop2221:
    ge rx964_pos, rx964_eos, rx964_fail2212
    is_cclass $I11, .CCLASS_NUMERIC, rx964_tgt, rx964_pos
    unless $I11, rx964_fail2212
    add rx964_pos, 1
    nqp_rxpeek $I19, rx964_bstack, rxquantr967_done2222
    inc $I19
    inc $I19
    set rx964_rep, rx964_bstack[$I19]
    nqp_rxcommit rx964_bstack, rxquantr967_done2222
    inc rx964_rep
    nqp_rxmark rx964_bstack, rxquantr967_done2222, rx964_pos, rx964_rep
    goto rxquantr967_loop2221
  rxquantr967_done2222:
    nqp_rxpeek $I19, rx964_bstack, rxcap966_fail2220
    inc $I19
    set $I11, rx964_bstack[$I19]
    repr_bind_attr_int rx964_cur, rx964_curclass, "$!pos", rx964_pos
    $P11 = rx964_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx964_pos)
    rx964_cstack = rx964_cur."!cursor_capture"($P11, "param_index")
    goto rxcap966_done2219
  rxcap966_fail2220:
    goto rx964_fail2212
  rxcap966_done2219:
    add $I11, rx964_pos, 1
    gt $I11, rx964_eos, rx964_fail2212
    substr $S10, rx964_tgt, rx964_pos, 1
    ne $S10, ucs4:"$", rx964_fail2212
    add rx964_pos, 1
    rx964_cur."!cursor_pass"(rx964_pos, "idx", 'backtrack'=>1)
    .return (rx964_cur)
  rx964_restart2211:
    repr_get_attr_obj rx964_cstack, rx964_cur, rx964_curclass, "$!cstack"
  rx964_fail2212:
    unless rx964_bstack, rx964_done2210
    pop $I19, rx964_bstack
    if_null rx964_cstack, rx964_cstack_done2215
    unless rx964_cstack, rx964_cstack_done2215
    dec $I19
    set $P11, rx964_cstack[$I19]
  rx964_cstack_done2215:
    pop rx964_rep, rx964_bstack
    pop rx964_pos, rx964_bstack
    pop $I19, rx964_bstack
    lt rx964_pos, -1, rx964_done2210
    lt rx964_pos, 0, rx964_fail2212
    eq $I19, 0, rx964_fail2212
    nqp_islist $I20, rx964_cstack
    unless $I20, rx964_jump2213
    elements $I18, rx964_bstack
    le $I18, 0, rx964_cut2214
    dec $I18
    set $I18, rx964_bstack[$I18]
  rx964_cut2214:
    assign rx964_cstack, $I18
  rx964_jump2213:
    jump $I19
  rx964_done2210:
    rx964_cur."!cursor_fail"()
    .return (rx964_cur) 
.end
.HLL "nqp"
.namespace []
.sub "flags" :subid("cuid_210_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2093
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx968_start
    .local string rx968_tgt
    .local int rx968_pos
    .local int rx968_off
    .local int rx968_eos
    .local int rx968_rep
    .local pmc rx968_cur
    .local pmc rx968_curclass
    .local pmc rx968_bstack
    .local pmc rx968_cstack
    rx968_start = self."!cursor_start_all"()
    set rx968_cur, rx968_start[0]
    set rx968_tgt, rx968_start[1]
    set rx968_pos, rx968_start[2]
    set rx968_curclass, rx968_start[3]
    set rx968_bstack, rx968_start[4]
    set $I19, rx968_start[5]
    store_lex unicode:"$\x{a2}", rx968_cur
    length rx968_eos, rx968_tgt
    eq $I19, 1, rx968_restart2225
    gt rx968_pos, rx968_eos, rx968_fail2226
    repr_get_attr_int $I11, self, rx968_curclass, "$!from"
    ne $I11, -1, rxscan969_done2232
    goto rxscan969_scan2231
  rxscan969_loop2230:
    inc rx968_pos
    gt rx968_pos, rx968_eos, rx968_fail2226
    repr_bind_attr_int rx968_cur, rx968_curclass, "$!from", rx968_pos
  rxscan969_scan2231:
    nqp_rxmark rx968_bstack, rxscan969_loop2230, rx968_pos, 0
  rxscan969_done2232:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt970_02234
    nqp_push_label $P11, alt970_12237
    nqp_push_label $P11, alt970_22240
    nqp_push_label $P11, alt970_32243
    nqp_push_label $P11, alt970_42246
    nqp_rxmark rx968_bstack, alt970_end2233, -1, 0
    rx968_cur."!alt"(rx968_pos, "alt_nfa__12_1381254438.74541", $P11)
    goto rx968_fail2226
  alt970_02234:
    nqp_rxmark rx968_bstack, rxcap971_fail2236, rx968_pos, 0
    add $I11, rx968_pos, 1
    gt $I11, rx968_eos, rx968_fail2226
    substr $S10, rx968_tgt, rx968_pos, 1
    ne $S10, ucs4:" ", rx968_fail2226
    add rx968_pos, 1
    nqp_rxpeek $I19, rx968_bstack, rxcap971_fail2236
    inc $I19
    set $I11, rx968_bstack[$I19]
    repr_bind_attr_int rx968_cur, rx968_curclass, "$!pos", rx968_pos
    $P11 = rx968_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx968_pos)
    rx968_cstack = rx968_cur."!cursor_capture"($P11, "space")
    goto rxcap971_done2235
  rxcap971_fail2236:
    goto rx968_fail2226
  rxcap971_done2235:
    goto alt970_end2233
  alt970_12237:
    nqp_rxmark rx968_bstack, rxcap972_fail2239, rx968_pos, 0
    add $I11, rx968_pos, 1
    gt $I11, rx968_eos, rx968_fail2226
    substr $S10, rx968_tgt, rx968_pos, 1
    ne $S10, ucs4:"+", rx968_fail2226
    add rx968_pos, 1
    nqp_rxpeek $I19, rx968_bstack, rxcap972_fail2239
    inc $I19
    set $I11, rx968_bstack[$I19]
    repr_bind_attr_int rx968_cur, rx968_curclass, "$!pos", rx968_pos
    $P11 = rx968_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx968_pos)
    rx968_cstack = rx968_cur."!cursor_capture"($P11, "plus")
    goto rxcap972_done2238
  rxcap972_fail2239:
    goto rx968_fail2226
  rxcap972_done2238:
    goto alt970_end2233
  alt970_22240:
    nqp_rxmark rx968_bstack, rxcap973_fail2242, rx968_pos, 0
    add $I11, rx968_pos, 1
    gt $I11, rx968_eos, rx968_fail2226
    substr $S10, rx968_tgt, rx968_pos, 1
    ne $S10, ucs4:"-", rx968_fail2226
    add rx968_pos, 1
    nqp_rxpeek $I19, rx968_bstack, rxcap973_fail2242
    inc $I19
    set $I11, rx968_bstack[$I19]
    repr_bind_attr_int rx968_cur, rx968_curclass, "$!pos", rx968_pos
    $P11 = rx968_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx968_pos)
    rx968_cstack = rx968_cur."!cursor_capture"($P11, "minus")
    goto rxcap973_done2241
  rxcap973_fail2242:
    goto rx968_fail2226
  rxcap973_done2241:
    goto alt970_end2233
  alt970_32243:
    nqp_rxmark rx968_bstack, rxcap974_fail2245, rx968_pos, 0
    add $I11, rx968_pos, 1
    gt $I11, rx968_eos, rx968_fail2226
    substr $S10, rx968_tgt, rx968_pos, 1
    ne $S10, ucs4:"0", rx968_fail2226
    add rx968_pos, 1
    nqp_rxpeek $I19, rx968_bstack, rxcap974_fail2245
    inc $I19
    set $I11, rx968_bstack[$I19]
    repr_bind_attr_int rx968_cur, rx968_curclass, "$!pos", rx968_pos
    $P11 = rx968_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx968_pos)
    rx968_cstack = rx968_cur."!cursor_capture"($P11, "zero")
    goto rxcap974_done2244
  rxcap974_fail2245:
    goto rx968_fail2226
  rxcap974_done2244:
    goto alt970_end2233
  alt970_42246:
    nqp_rxmark rx968_bstack, rxcap975_fail2248, rx968_pos, 0
    add $I11, rx968_pos, 1
    gt $I11, rx968_eos, rx968_fail2226
    substr $S10, rx968_tgt, rx968_pos, 1
    ne $S10, ucs4:"#", rx968_fail2226
    add rx968_pos, 1
    nqp_rxpeek $I19, rx968_bstack, rxcap975_fail2248
    inc $I19
    set $I11, rx968_bstack[$I19]
    repr_bind_attr_int rx968_cur, rx968_curclass, "$!pos", rx968_pos
    $P11 = rx968_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx968_pos)
    rx968_cstack = rx968_cur."!cursor_capture"($P11, "hash")
    goto rxcap975_done2247
  rxcap975_fail2248:
    goto rx968_fail2226
  rxcap975_done2247:
    goto alt970_end2233
  alt970_end2233:
    rx968_cur."!cursor_pass"(rx968_pos, "flags", 'backtrack'=>1)
    .return (rx968_cur)
  rx968_restart2225:
    repr_get_attr_obj rx968_cstack, rx968_cur, rx968_curclass, "$!cstack"
  rx968_fail2226:
    unless rx968_bstack, rx968_done2224
    pop $I19, rx968_bstack
    if_null rx968_cstack, rx968_cstack_done2229
    unless rx968_cstack, rx968_cstack_done2229
    dec $I19
    set $P11, rx968_cstack[$I19]
  rx968_cstack_done2229:
    pop rx968_rep, rx968_bstack
    pop rx968_pos, rx968_bstack
    pop $I19, rx968_bstack
    lt rx968_pos, -1, rx968_done2224
    lt rx968_pos, 0, rx968_fail2226
    eq $I19, 0, rx968_fail2226
    nqp_islist $I20, rx968_cstack
    unless $I20, rx968_jump2227
    elements $I18, rx968_bstack
    le $I18, 0, rx968_cut2228
    dec $I18
    set $I18, rx968_bstack[$I18]
  rx968_cut2228:
    assign rx968_cstack, $I18
  rx968_jump2227:
    jump $I19
  rx968_done2224:
    rx968_cur."!cursor_fail"()
    .return (rx968_cur) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_211_1381254434.83594") :anon :lex :outer("cuid_305_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx976_start
    .local string rx976_tgt
    .local int rx976_pos
    .local int rx976_off
    .local int rx976_eos
    .local int rx976_rep
    .local pmc rx976_cur
    .local pmc rx976_curclass
    .local pmc rx976_bstack
    .local pmc rx976_cstack
    rx976_start = self."!cursor_start_all"()
    set rx976_cur, rx976_start[0]
    set rx976_tgt, rx976_start[1]
    set rx976_pos, rx976_start[2]
    set rx976_curclass, rx976_start[3]
    set rx976_bstack, rx976_start[4]
    set $I19, rx976_start[5]
    store_lex unicode:"$\x{a2}", rx976_cur
    length rx976_eos, rx976_tgt
    eq $I19, 1, rx976_restart2251
    gt rx976_pos, rx976_eos, rx976_fail2252
    repr_get_attr_int $I11, self, rx976_curclass, "$!from"
    ne $I11, -1, rxscan977_done2258
    goto rxscan977_scan2257
  rxscan977_loop2256:
    inc rx976_pos
    gt rx976_pos, rx976_eos, rx976_fail2252
    repr_bind_attr_int rx976_cur, rx976_curclass, "$!from", rx976_pos
  rxscan977_scan2257:
    nqp_rxmark rx976_bstack, rxscan977_loop2256, rx976_pos, 0
  rxscan977_done2258:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt978_02260
    nqp_push_label $P11, alt978_12263
    nqp_rxmark rx976_bstack, alt978_end2259, -1, 0
    rx976_cur."!alt"(rx976_pos, "alt_nfa__13_1381254438.75105", $P11)
    goto rx976_fail2252
  alt978_02260:
    nqp_rxmark rx976_bstack, rxquantr979_done2262, rx976_pos, 0
  rxquantr979_loop2261:
    ge rx976_pos, rx976_eos, rx976_fail2252
    is_cclass $I11, .CCLASS_NUMERIC, rx976_tgt, rx976_pos
    unless $I11, rx976_fail2252
    add rx976_pos, 1
    nqp_rxpeek $I19, rx976_bstack, rxquantr979_done2262
    inc $I19
    inc $I19
    set rx976_rep, rx976_bstack[$I19]
    nqp_rxcommit rx976_bstack, rxquantr979_done2262
    inc rx976_rep
    nqp_rxmark rx976_bstack, rxquantr979_done2262, rx976_pos, rx976_rep
    goto rxquantr979_loop2261
  rxquantr979_done2262:
    goto alt978_end2259
  alt978_12263:
    nqp_rxmark rx976_bstack, rxcap980_fail2265, rx976_pos, 0
    add $I11, rx976_pos, 1
    gt $I11, rx976_eos, rx976_fail2252
    substr $S10, rx976_tgt, rx976_pos, 1
    ne $S10, ucs4:"*", rx976_fail2252
    add rx976_pos, 1
    nqp_rxpeek $I19, rx976_bstack, rxcap980_fail2265
    inc $I19
    set $I11, rx976_bstack[$I19]
    repr_bind_attr_int rx976_cur, rx976_curclass, "$!pos", rx976_pos
    $P11 = rx976_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx976_pos)
    rx976_cstack = rx976_cur."!cursor_capture"($P11, "star")
    goto rxcap980_done2264
  rxcap980_fail2265:
    goto rx976_fail2252
  rxcap980_done2264:
    goto alt978_end2259
  alt978_end2259:
    rx976_cur."!cursor_pass"(rx976_pos, "size", 'backtrack'=>1)
    .return (rx976_cur)
  rx976_restart2251:
    repr_get_attr_obj rx976_cstack, rx976_cur, rx976_curclass, "$!cstack"
  rx976_fail2252:
    unless rx976_bstack, rx976_done2250
    pop $I19, rx976_bstack
    if_null rx976_cstack, rx976_cstack_done2255
    unless rx976_cstack, rx976_cstack_done2255
    dec $I19
    set $P11, rx976_cstack[$I19]
  rx976_cstack_done2255:
    pop rx976_rep, rx976_bstack
    pop rx976_pos, rx976_bstack
    pop $I19, rx976_bstack
    lt rx976_pos, -1, rx976_done2250
    lt rx976_pos, 0, rx976_fail2252
    eq $I19, 0, rx976_fail2252
    nqp_islist $I20, rx976_cstack
    unless $I20, rx976_jump2253
    elements $I18, rx976_bstack
    le $I18, 0, rx976_cut2254
    dec $I18
    set $I18, rx976_bstack[$I18]
  rx976_cut2254:
    assign rx976_cstack, $I18
  rx976_jump2253:
    jump $I19
  rx976_done2250:
    rx976_cur."!cursor_fail"()
    .return (rx976_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_306_1381254434.83594") :anon :lex :outer("cuid_301_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2106
    .const 'Sub' $P5033 = 'cuid_307_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_308_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_310_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_311_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_314_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_315_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_316_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_317_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_318_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_319_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_321_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_212_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_214_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_215_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_216_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_217_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_218_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_219_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_220_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_221_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_222_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_223_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_224_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_225_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_226_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_227_1381254434.83594' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_228_1381254434.83594' 
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_307_1381254434.83594' 
    capture_lex $P5003
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_308_1381254434.83594' 
    capture_lex $P5004
    set $P106, $P5004
    .const 'Sub' $P5005 = 'cuid_310_1381254434.83594' 
    capture_lex $P5005
    set $P107, $P5005
    .const 'Sub' $P5006 = 'cuid_311_1381254434.83594' 
    capture_lex $P5006
    set $P108, $P5006
    .const 'Sub' $P5007 = 'cuid_314_1381254434.83594' 
    capture_lex $P5007
    set $P109, $P5007
    .const 'Sub' $P5008 = 'cuid_315_1381254434.83594' 
    capture_lex $P5008
    set $P110, $P5008
    .const 'Sub' $P5009 = 'cuid_316_1381254434.83594' 
    capture_lex $P5009
    set $P111, $P5009
    .const 'Sub' $P5010 = 'cuid_317_1381254434.83594' 
    capture_lex $P5010
    set $P112, $P5010
    .const 'Sub' $P5011 = 'cuid_318_1381254434.83594' 
    capture_lex $P5011
    set $P113, $P5011
    .const 'Sub' $P5012 = 'cuid_319_1381254434.83594' 
    capture_lex $P5012
    set $P114, $P5012
    .const 'Sub' $P5013 = 'cuid_321_1381254434.83594' 
    capture_lex $P5013
    set $P115, $P5013
.annotate 'line', 2107
    get_knowhow $P5014
    $P5015 = $P5014."new_type"("P6bigint" :named("repr"))
    set $P103, $P5015
    repr_box_int $P5016, 0, $P103
    set $P104, $P5016
    .const 'Sub' $P5017 = 'cuid_212_1381254434.83594' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_214_1381254434.83594' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_215_1381254434.83594' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_216_1381254434.83594' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_217_1381254434.83594' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_218_1381254434.83594' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_219_1381254434.83594' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_220_1381254434.83594' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_221_1381254434.83594' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_222_1381254434.83594' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_223_1381254434.83594' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_224_1381254434.83594' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_225_1381254434.83594' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_226_1381254434.83594' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_227_1381254434.83594' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_228_1381254434.83594' 
    capture_lex $P5032
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "infix_x" :subid("cuid_307_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2125
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@strings", $P101 
    .lex "$i", $P102 
    .lex "$s", _lex_param_0 
    .lex "$n", _lex_param_1 
    .local pmc tmp_10 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    box $P5003, 0
    set $P102, $P5003
    new $P5006, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5006, while981_handlers2269
    push_eh $P5006
  while981_test2266:
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
    unless $I5001 goto while981_done2270 
  while981_redo2268:
.annotate 'line', 2128
    $P5004 = $P101."push"(_lex_param_0)
    set $P5005, $P5004
    goto while981_test2266 
  while981_handlers2269:
    .get_results ($P5006)
    pop_upto_eh $P5006
    getattribute $P5006, $P5006, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, while981_test2266
    eq $P5006, .CONTROL_LOOP_REDO, while981_redo2268
  while981_done2270:
    pop_eh 
    join $S5001, "", $P101
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "next_argument" :subid("cuid_308_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2132
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
    unless_null _lex_param_0, fallback2275
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_0, $P5001
  fallback2275:
    set fb_tmp_174, _lex_param_0
    repr_defined $I5001, fb_tmp_174
    unless $I5001 goto if983_else2273 
    set $P5002, fb_tmp_174["idx"]
    set $P5004, $P5002
    goto if983_end2274
  if983_else2273:
    null $P5003
    set $P5004, $P5003
  if983_end2274:
    unless_null $P5004, vivi_9842276
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_9842276:
    unless $P5004 goto if982_else2271 
.annotate 'line', 2133
    box $P5006, 0
    store_lex "$assert_used_args", $P5006
    find_dynamic_lex $P5007, "@*ARGS_HAVE"
    unless_null $P5007, fallback2279
    nqp_get_sc_object $P5009, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_22, $P5008
    set fb_tmp_176, pkg_viv_tmp_22
    repr_defined $I5003, fb_tmp_176
    unless $I5003 goto if986_else2280 
    set $P5010, fb_tmp_176["@ARGS_HAVE"]
    set $P5012, $P5010
    goto if986_end2281
  if986_else2280:
    null $P5011
    set $P5012, $P5011
  if986_end2281:
    unless_null $P5012, vivi_9872282
    new $P5013, 'ResizablePMCArray'
    set pkg_viv_tmp_22["@ARGS_HAVE"], $P5013
    set $P5012, $P5013
  vivi_9872282:
    unless_null $P5012, vivi_9882283
    die "Contextual @*ARGS_HAVE not found"
    box $P5014, "Contextual @*ARGS_HAVE not found"
    set $P5012, $P5014
  vivi_9882283:
    set $P5007, $P5012
  fallback2279:
    set fb_tmp_175, $P5007
    repr_defined $I5002, fb_tmp_175
    unless $I5002 goto if985_else2277 
.annotate 'line', 2135
    unless_null _lex_param_0, fallback2286
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_0, $P5016
  fallback2286:
    set fb_tmp_177, _lex_param_0
    repr_defined $I5004, fb_tmp_177
    unless $I5004 goto if989_else2284 
    set $P5017, fb_tmp_177["idx"]
    set $P5019, $P5017
    goto if989_end2285
  if989_else2284:
    null $P5018
    set $P5019, $P5018
  if989_end2285:
    unless_null $P5019, vivi_9902287
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5019, $P5020
  vivi_9902287:
    $P5021 = $P5019."ast"()
    set $I5005, $P5021
    set $P5015, fb_tmp_175[$I5005]
    set $P5023, $P5015
    goto if985_end2278
  if985_else2277:
    null $P5022
    set $P5023, $P5022
  if985_end2278:
    unless_null $P5023, vivi_9912288
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5023, $P5024
  vivi_9912288:
    set $P5037, $P5023
    goto if982_end2272
  if982_else2271:
.annotate 'line', 2137
    find_dynamic_lex $P5025, "@*ARGS_HAVE"
    unless_null $P5025, fallback2291
    nqp_get_sc_object $P5027, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5026, $P5027
    set pkg_viv_tmp_23, $P5026
    set fb_tmp_179, pkg_viv_tmp_23
    repr_defined $I5007, fb_tmp_179
    unless $I5007 goto if993_else2292 
    set $P5028, fb_tmp_179["@ARGS_HAVE"]
    set $P5030, $P5028
    goto if993_end2293
  if993_else2292:
    null $P5029
    set $P5030, $P5029
  if993_end2293:
    unless_null $P5030, vivi_9942294
    new $P5031, 'ResizablePMCArray'
    set pkg_viv_tmp_23["@ARGS_HAVE"], $P5031
    set $P5030, $P5031
  vivi_9942294:
    unless_null $P5030, vivi_9952295
    die "Contextual @*ARGS_HAVE not found"
    box $P5032, "Contextual @*ARGS_HAVE not found"
    set $P5030, $P5032
  vivi_9952295:
    set $P5025, $P5030
  fallback2291:
    set fb_tmp_178, $P5025
    repr_defined $I5006, fb_tmp_178
    unless $I5006 goto if992_else2289 
    find_dynamic_lex $P5034, "$*ARGS_USED"
    unless_null $P5034, fallback2296
    nqp_get_sc_object $P5036, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5035, $P5036
    set fb_tmp_180, $P5035
    repr_defined $I5008, fb_tmp_180
    unless $I5008 goto if996_else2297 
    set $P5037, fb_tmp_180["$ARGS_USED"]
    set $P5039, $P5037
    goto if996_end2298
  if996_else2297:
    null $P5038
    set $P5039, $P5038
  if996_end2298:
    unless_null $P5039, vivi_9972299
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5039, $P5040
  vivi_9972299:
    unless_null $P5039, vivi_9982300
    die "Contextual $*ARGS_USED not found"
    box $P5041, "Contextual $*ARGS_USED not found"
    set $P5039, $P5041
  vivi_9982300:
    set $P5034, $P5039
  fallback2296:
    set tmp_11, $P5034
    set $N5002, tmp_11
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5042, $N5001
    store_dynamic_lex "$*ARGS_USED", $P5042
    set $I5008, tmp_11
    set $P5033, fb_tmp_178[$I5008]
    set $P5035, $P5033
    goto if992_end2290
  if992_else2289:
    null $P5034
    set $P5035, $P5034
  if992_end2290:
    unless_null $P5035, vivi_9992301
    nqp_get_sc_object $P5036, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5035, $P5036
  vivi_9992301:
    set $P5037, $P5035
  if982_end2272:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "intify" :subid("cuid_310_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2142
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_309_1381254434.83594' 
    capture_lex $P5016 
    .lex "$number_representation", _lex_param_0 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_2302
    .lex "RETURN", $P101
    find_lex $P5004, "@handlers"
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next2306:
    unless $P5003, for_done2308
    shift $P5006, $P5003
  for_redo2307:
    .const 'Sub' $P5005 = 'cuid_309_1381254434.83594' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next2306
  for_done2308:
    nqp_isint $I5001, _lex_param_0
    unless $I5001 goto if1001_else2309 
.annotate 'line', 2149
    set $I5002, _lex_param_0
    find_lex $P5008, "$knowhow"
    repr_box_int $P5007, $I5002, $P5008
    set $P5015, $P5007
    goto if1001_end2310
  if1001_else2309:
.annotate 'line', 2151
    nqp_isnum $I5003, _lex_param_0
    set $I5005, $I5003
    if $I5003 goto unless1003_end2314 
    nqp_isstr $I5004, _lex_param_0
    set $I5005, $I5004
  unless1003_end2314:
    unless $I5005 goto if1002_else2311 
.annotate 'line', 2153
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    unless $I5006 goto if1004_else2315 
.annotate 'line', 2154
    set $N5004, _lex_param_0
    floor $N5003, $N5004
    find_lex $P5010, "$knowhow"
    nqp_bigint_from_num $P5009, $N5003, $P5010
    set $P5013, $P5009
    goto if1004_end2316
  if1004_else2315:
.annotate 'line', 2157
    set $N5006, _lex_param_0
    ceil $N5005, $N5006
    find_lex $P5012, "$knowhow"
    nqp_bigint_from_num $P5011, $N5005, $P5012
    set $P5013, $P5011
  if1004_end2316:
    set $P5014, $P5013
    goto if1002_end2312
  if1002_else2311:
.annotate 'line', 2160

    set $P5014, _lex_param_0
  if1002_end2312:
    set $P5015, $P5014
  if1001_end2310:
    goto lexotic_2303
  lexotic_2302:
    .get_results ($P5015)
  lexotic_2303:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_309_1381254434.83594") :anon :lex :outer("cuid_310_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2143
    .param pmc _lex_param_0 
    .lex "$handler", _lex_param_0 
.annotate 'line', 2144
    find_lex $P5001, "$number_representation"
    $P5002 = _lex_param_0."mine"($P5001)
    set $P5006, $P5002
    unless $P5002 goto if1000_end2305 
.annotate 'line', 2145
    find_lex $P5003, "$number_representation"
    $P5004 = _lex_param_0."int"($P5003)
    $P5005 = "RETURN"($P5004)
    set $P5006, $P5005
  if1000_end2305:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "padding_char" :subid("cuid_311_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2166
    .param pmc _lex_param_0 
    .const 'Sub' $P5036 = 'cuid_213_1381254434.83594' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_312_1381254434.83594' 
    capture_lex $P5036 
    .lex "$padding_char", $P101 
    .lex "$st", _lex_param_0 
    .local pmc fb_tmp_181 
    .local pmc fb_tmp_182 
    .local pmc fb_tmp_183 
    .local pmc fb_tmp_184 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    box $P5002, " "
    set $P101, $P5002
    set fb_tmp_181, _lex_param_0
    repr_defined $I5002, fb_tmp_181
    unless $I5002 goto if1008_else2323 
    set $P5003, fb_tmp_181["precision"]
    set $P5005, $P5003
    goto if1008_end2324
  if1008_else2323:
    null $P5004
    set $P5005, $P5004
  if1008_end2324:
    unless_null $P5005, vivi_10092325
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_10092325:
    isfalse $I5001, $P5005
    set $I5004, $I5001
    unless $I5001 goto if1007_end2322 
.annotate 'line', 2168
    $P5007 = "&has_flag"(_lex_param_0, "minus")
    isfalse $I5003, $P5007
    set $I5004, $I5003
  if1007_end2322:
    box $P5025, $I5004
    set $P5024, $P5025
    if $I5004 goto unless1006_end2320 
.annotate 'line', 2169
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_182, $P5008
    repr_defined $I5005, fb_tmp_182
    unless $I5005 goto if1010_else2326 
    set $P5010, fb_tmp_182["NQPRegex"]
    set $P5012, $P5010
    goto if1010_end2327
  if1010_else2326:
    null $P5011
    set $P5012, $P5011
  if1010_end2327:
    unless_null $P5012, vivi_10122329
    nqp_get_sc_object $P5015, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5014, $P5015
    set $P5013, $P5014["NQPRegex"]
    unless_null $P5013, vivi_10112328
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5013, $P5016
  vivi_10112328:
    set $P5012, $P5013
  vivi_10122329:
    .const 'Sub' $P5017 = 'cuid_213_1381254434.83594' 
    capture_lex $P5017
    $P5018 = $P5012."new"($P5017)
    set fb_tmp_183, _lex_param_0
    repr_defined $I5006, fb_tmp_183
    unless $I5006 goto if1015_else2340 
    set $P5019, fb_tmp_183["sym"]
    set $P5021, $P5019
    goto if1015_end2341
  if1015_else2340:
    null $P5020
    set $P5021, $P5020
  if1015_end2341:
    unless_null $P5021, vivi_10162342
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5021, $P5022
  vivi_10162342:
    $P5023 = $P5018."ACCEPTS"($P5021)
    set $P5024, $P5023
  unless1006_end2320:
    unless $P5024 goto if1005_end2318 
    set fb_tmp_184, _lex_param_0
    repr_defined $I5007, fb_tmp_184
    unless $I5007 goto if1017_else2343 
    set $P5029, fb_tmp_184["flags"]
    set $P5031, $P5029
    goto if1017_end2344
  if1017_else2343:
    null $P5030
    set $P5031, $P5030
  if1017_end2344:
    unless_null $P5031, vivi_10182345
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5031, $P5032
  vivi_10182345:
    set $P5026, $P5031
    iter $P5028, $P5031
    new $P5034, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5034, for_handlers2351
    push_eh $P5034
  for_next2352:
    unless $P5028, for_done2354
    shift $P5035, $P5028
  for_redo2353:
    .const 'Sub' $P5033 = 'cuid_312_1381254434.83594' 
    capture_lex $P5033
    $P5026 = $P5033($P5035)
    goto for_next2352
  for_handlers2351:
    .get_results ($P5034)
    pop_upto_eh $P5034
    getattribute $P5034, $P5034, 'type'
    eq $P5034, .CONTROL_LOOP_NEXT, for_next2352
    eq $P5034, .CONTROL_LOOP_REDO, for_redo2353
  for_done2354:
    pop_eh 
  if1005_end2318:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1381254434.83594") :anon :lex :outer("cuid_311_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2169
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx1013_start
    .local string rx1013_tgt
    .local int rx1013_pos
    .local int rx1013_off
    .local int rx1013_eos
    .local int rx1013_rep
    .local pmc rx1013_cur
    .local pmc rx1013_curclass
    .local pmc rx1013_bstack
    .local pmc rx1013_cstack
    rx1013_start = self."!cursor_start_all"()
    set rx1013_cur, rx1013_start[0]
    set rx1013_tgt, rx1013_start[1]
    set rx1013_pos, rx1013_start[2]
    set rx1013_curclass, rx1013_start[3]
    set rx1013_bstack, rx1013_start[4]
    set $I19, rx1013_start[5]
    store_lex unicode:"$\x{a2}", rx1013_cur
    length rx1013_eos, rx1013_tgt
    eq $I19, 1, rx1013_restart2332
    gt rx1013_pos, rx1013_eos, rx1013_fail2333
    repr_get_attr_int $I11, self, rx1013_curclass, "$!from"
    ne $I11, -1, rxscan1014_done2339
    goto rxscan1014_scan2338
  rxscan1014_loop2337:
    inc rx1013_pos
    gt rx1013_pos, rx1013_eos, rx1013_fail2333
    repr_bind_attr_int rx1013_cur, rx1013_curclass, "$!from", rx1013_pos
  rxscan1014_scan2338:
    nqp_rxmark rx1013_bstack, rxscan1014_loop2337, rx1013_pos, 0
  rxscan1014_done2339:
    ge rx1013_pos, rx1013_eos, rx1013_fail2333
    substr $S11, rx1013_tgt, rx1013_pos, 1
    index $I11, ucs4:"eEfFgG", $S11
    lt $I11, 0, rx1013_fail2333
    inc rx1013_pos
    rx1013_cur."!cursor_pass"(rx1013_pos, 'backtrack'=>1)
    .return (rx1013_cur)
  rx1013_restart2332:
    repr_get_attr_obj rx1013_cstack, rx1013_cur, rx1013_curclass, "$!cstack"
  rx1013_fail2333:
    unless rx1013_bstack, rx1013_done2331
    pop $I19, rx1013_bstack
    if_null rx1013_cstack, rx1013_cstack_done2336
    unless rx1013_cstack, rx1013_cstack_done2336
    dec $I19
    set $P11, rx1013_cstack[$I19]
  rx1013_cstack_done2336:
    pop rx1013_rep, rx1013_bstack
    pop rx1013_pos, rx1013_bstack
    pop $I19, rx1013_bstack
    lt rx1013_pos, -1, rx1013_done2331
    lt rx1013_pos, 0, rx1013_fail2333
    eq $I19, 0, rx1013_fail2333
    nqp_islist $I20, rx1013_cstack
    unless $I20, rx1013_jump2334
    elements $I18, rx1013_bstack
    le $I18, 0, rx1013_cut2335
    dec $I18
    set $I18, rx1013_bstack[$I18]
  rx1013_cut2335:
    assign rx1013_cstack, $I18
  rx1013_jump2334:
    jump $I19
  rx1013_done2331:
    rx1013_cur."!cursor_fail"()
    .return (rx1013_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_312_1381254434.83594") :anon :lex :outer("cuid_311_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_185 
    set fb_tmp_185, _lex_param_0
    repr_defined $I5001, fb_tmp_185
    unless $I5001 goto if1020_else2348 
    set $P5001, fb_tmp_185["zero"]
    set $P5003, $P5001
    goto if1020_end2349
  if1020_else2348:
    null $P5002
    set $P5003, $P5002
  if1020_end2349:
    unless_null $P5003, vivi_10212350
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5003, $P5004
  vivi_10212350:
    set $P5006, $P5003
    unless $P5003 goto if1019_end2347 
    box $P5005, "0"
    store_lex "$padding_char", $P5005
    set $P5006, $P5005
  if1019_end2347:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "has_flag" :subid("cuid_314_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2175
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_313_1381254434.83594' 
    capture_lex $P5017 
    .lex "$ok", $P101 
    .lex "$st", _lex_param_0 
    .lex "$key", _lex_param_1 
    .local pmc fb_tmp_186 
    .local pmc fb_tmp_187 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    set fb_tmp_186, _lex_param_0
    repr_defined $I5001, fb_tmp_186
    unless $I5001 goto if1023_else2357 
    set $P5003, fb_tmp_186["flags"]
    set $P5005, $P5003
    goto if1023_end2358
  if1023_else2357:
    null $P5004
    set $P5005, $P5004
  if1023_end2358:
    unless_null $P5005, vivi_10242359
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_10242359:
    unless $P5005 goto if1022_end2356 
.annotate 'line', 2177
    set fb_tmp_187, _lex_param_0
    repr_defined $I5002, fb_tmp_187
    unless $I5002 goto if1025_else2360 
    set $P5010, fb_tmp_187["flags"]
    set $P5012, $P5010
    goto if1025_end2361
  if1025_else2360:
    null $P5011
    set $P5012, $P5011
  if1025_end2361:
    unless_null $P5012, vivi_10262362
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5012, $P5013
  vivi_10262362:
    set $P5007, $P5012
    iter $P5009, $P5012
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, for_handlers2368
    push_eh $P5015
  for_next2369:
    unless $P5009, for_done2371
    shift $P5016, $P5009
  for_redo2370:
    .const 'Sub' $P5014 = 'cuid_313_1381254434.83594' 
    capture_lex $P5014
    $P5007 = $P5014($P5016)
    goto for_next2369
  for_handlers2368:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5015, $P5015, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, for_next2369
    eq $P5015, .CONTROL_LOOP_REDO, for_redo2370
  for_done2371:
    pop_eh 
  if1022_end2356:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_313_1381254434.83594") :anon :lex :outer("cuid_314_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_188 
    set fb_tmp_188, _lex_param_0
    repr_defined $I5001, fb_tmp_188
    unless $I5001 goto if1028_else2365 
    find_lex $P5002, "$key"
    set $S5001, $P5002
    set $P5001, fb_tmp_188[$S5001]
    set $P5004, $P5001
    goto if1028_end2366
  if1028_else2365:
    null $P5003
    set $P5004, $P5003
  if1028_end2366:
    unless_null $P5004, vivi_10292367
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_10292367:
    set $P5007, $P5004
    unless $P5004 goto if1027_end2364 
    box $P5006, 1
    store_lex "$ok", $P5006
    set $P5007, $P5006
  if1027_end2364:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "pad-with-sign" :subid("cuid_315_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2230
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
    unless $I5001 goto if1031_end2375 
    set $P5001, _lex_param_2
  if1031_end2375:
    unless $P5001 goto if1030_else2372 
.annotate 'line', 2231
    set $S5004, _lex_param_0
.annotate 'line', 2232
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
    goto if1030_end2373
  if1030_else2372:
.annotate 'line', 2233
    set $S5009, _lex_param_0
    set $S5010, _lex_param_1
    concat $S5008, $S5009, $S5010
    set $S5011, $S5008
  if1030_end2373:
    .return ($S5011) 
.end
.HLL "nqp"
.namespace []
.sub "stringify-to-precision" :subid("cuid_316_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2237
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$lhs", $P101 
    .lex "$rhs", $P102 
    .lex "$int", $P103 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.annotate 'line', 2250
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
.sub "stringify-to-precision2" :subid("cuid_317_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2255
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exp", $P101 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    set $N5001, _lex_param_0
    iseq $I5001, $N5001, 0.0
    unless $I5001 goto if1032_else2376 
    box $P5003, 0
    set $P5002, $P5003
    goto if1032_end2377
  if1032_else2376:
    set $N5005, _lex_param_0
    ln $N5004, $N5005
    set $N5007, 10
    ln $N5006, $N5007
    div $N5003, $N5004, $N5006
    floor $N5002, $N5003
    box $P5004, $N5002
    set $P5002, $P5004
  if1032_end2377:
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
.sub "fixed-point" :subid("cuid_318_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$sign", $P101 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    .lex "$size", _lex_param_2 
    .lex "$pad", _lex_param_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1033_else2378 
    set $S5001, "-"
    goto if1033_end2379
  if1033_else2378:
    set $S5001, ""
  if1033_end2379:
    box $P5002, $S5001
    set $P101, $P5002
.annotate 'line', 2263
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    $P5003 = "&stringify-to-precision"($N5003, _lex_param_1)
    set _lex_param_0, $P5003
.annotate 'line', 2264
    $P5004 = "&pad-with-sign"($P101, _lex_param_0, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "scientific" :subid("cuid_319_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2266
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1034_else2380 
    set $S5001, "-"
    goto if1034_end2381
  if1034_else2380:
    set $S5001, ""
  if1034_end2381:
    box $P5003, $S5001
    set $P101, $P5003
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    box $P5004, $N5003
    set _lex_param_0, $P5004
    set $N5005, _lex_param_0
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1035_else2382 
    box $P5006, 0
    set $P5005, $P5006
    goto if1035_end2383
  if1035_else2382:
    set $N5009, _lex_param_0
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1035_end2383:
    set $P102, $P5005
    set $N5013, _lex_param_0
    set $N5015, 10
    set $N5016, $P102
    pow $N5014, $N5015, $N5016
    div $N5012, $N5013, $N5014
    box $P5008, $N5012
    set _lex_param_0, $P5008
.annotate 'line', 2271
    $P5009 = "&stringify-to-precision"(_lex_param_0, _lex_param_2)
    set _lex_param_0, $P5009
    set $N5017, $P102
    set $N5018, 0
    islt $I5003, $N5017, $N5018
    unless $I5003 goto if1036_else2384 
.annotate 'line', 2272
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
    unless $I5004 goto if1037_else2386 
    set $S5008, "0"
    goto if1037_end2387
  if1037_else2386:
    set $S5008, ""
  if1037_end2387:
    concat $S5003, $S5004, $S5008
    set $S5009, $P102
    concat $S5002, $S5003, $S5009
    box $P5011, $S5002
    set _lex_param_0, $P5011
    goto if1036_end2385
  if1036_else2384:
.annotate 'line', 2275
    set $S5014, _lex_param_0
    set $S5015, _lex_param_1
    concat $S5013, $S5014, $S5015
    concat $S5012, $S5013, "+"
    set $N5023, $P102
    set $N5024, 10
    islt $I5005, $N5023, $N5024
    unless $I5005 goto if1038_else2388 
    set $S5016, "0"
    goto if1038_end2389
  if1038_else2388:
    set $S5016, ""
  if1038_end2389:
    concat $S5011, $S5012, $S5016
    set $S5017, $P102
    concat $S5010, $S5011, $S5017
    box $P5012, $S5010
    set _lex_param_0, $P5012
  if1036_end2385:
.annotate 'line', 2278
    $P5013 = "&pad-with-sign"($P101, _lex_param_0, _lex_param_3, _lex_param_4)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "shortest" :subid("cuid_321_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2280
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .const 'Sub' $P5013 = 'cuid_320_1381254434.83594' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_322_1381254434.83594' 
    capture_lex $P5013 
    .lex "$sign", $P101 
    .lex "$exp", $P102 
    .lex "$float", _lex_param_0 
    .lex "$e", _lex_param_1 
    .lex "$precision", _lex_param_2 
    .lex "$size", _lex_param_3 
    .lex "$pad", _lex_param_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1039_else2390 
    set $S5001, "-"
    goto if1039_end2391
  if1039_else2390:
    set $S5001, ""
  if1039_end2391:
    box $P5003, $S5001
    set $P101, $P5003
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    box $P5004, $N5003
    set _lex_param_0, $P5004
    set $N5005, _lex_param_0
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1040_else2392 
    box $P5006, 0
    set $P5005, $P5006
    goto if1040_end2393
  if1040_else2392:
    set $N5009, _lex_param_0
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1040_end2393:
    set $P102, $P5005
    set $N5013, -2
    set $N5014, _lex_param_2
    sub $N5012, $N5013, $N5014
    set $N5015, $P102
    islt $I5003, $N5012, $N5015
    set $I5005, $I5003
    unless $I5003 goto if1042_end2397 
    set $N5016, $P102
    set $N5017, _lex_param_2
    islt $I5004, $N5016, $N5017
    set $I5005, $I5004
  if1042_end2397:
    unless $I5005 goto if1041_else2394 
    .const 'Sub' $P5008 = 'cuid_320_1381254434.83594' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5012, $P5009
    goto if1041_end2395
  if1041_else2394:
    .const 'Sub' $P5010 = 'cuid_322_1381254434.83594' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
  if1041_end2395:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_320_1381254434.83594") :anon :lex :outer("cuid_321_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2286
    .lex "$fixed-precision", $P101 
    .lex "$fixed", $P102 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    find_lex $P5003, "$exp"
    set $N5001, $P5003
    find_lex $P5004, "$precision"
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    unless $I5001 goto if1043_else2398 
    box $P5008, 0
    set $P5007, $P5008
    goto if1043_end2399
  if1043_else2398:
    find_lex $P5005, "$precision"
    set $N5004, $P5005
    find_lex $P5006, "$exp"
    set $N5006, $P5006
    set $N5007, 1
    add $N5005, $N5006, $N5007
    sub $N5003, $N5004, $N5005
    box $P5009, $N5003
    set $P5007, $P5009
  if1043_end2399:
    set $P101, $P5007
.annotate 'line', 2288
    find_lex $P5010, "$float"
    find_lex $P5011, "$precision"
    $P5012 = "&stringify-to-precision2"($P5010, $P5011)
    set $P102, $P5012
.annotate 'line', 2289
    find_lex $P5013, "$sign"
    find_lex $P5014, "$size"
    find_lex $P5015, "$pad"
    $P5016 = "&pad-with-sign"($P5013, $P102, $P5014, $P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_322_1381254434.83594") :anon :lex :outer("cuid_321_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2290
    .lex "$sci", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.annotate 'line', 2292
    find_lex $P5005, "$float"
    find_lex $P5006, "$precision"
    $P5007 = "&stringify-to-precision2"($P5005, $P5006)
    store_lex "$float", $P5007
    find_lex $P5008, "$exp"
    set $N5006, $P5008
    set $N5007, 0
    islt $I5001, $N5006, $N5007
    unless $I5001 goto if1044_else2400 
.annotate 'line', 2294
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
    unless $I5002 goto if1045_else2402 
    set $S5007, "0"
    goto if1045_end2403
  if1045_else2402:
    set $S5007, ""
  if1045_end2403:
    concat $S5002, $S5003, $S5007
    find_lex $P5014, "$exp"
    set $S5008, $P5014
    concat $S5001, $S5002, $S5008
    box $P5015, $S5001
    set $P101, $P5015
    goto if1044_end2401
  if1044_else2400:
.annotate 'line', 2297
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
    unless $I5003 goto if1046_else2404 
    set $S5015, "0"
    goto if1046_end2405
  if1046_else2404:
    set $S5015, ""
  if1046_end2405:
    concat $S5010, $S5011, $S5015
    find_lex $P5019, "$exp"
    set $S5016, $P5019
    concat $S5009, $S5010, $S5016
    box $P5020, $S5009
    set $P101, $P5020
  if1044_end2401:
.annotate 'line', 2301
    find_lex $P5021, "$sign"
    find_lex $P5022, "$size"
    find_lex $P5023, "$pad"
    $P5024 = "&pad-with-sign"($P5021, $P101, $P5022, $P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_212_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2109
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5091 = 'cuid_323_1381254434.83594' 
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
    unless_null _lex_param_1, fallback2408
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5005
  fallback2408:
    set fb_tmp_189, _lex_param_1
    repr_defined $I5001, fb_tmp_189
    unless $I5001 goto if1047_else2406 
    set $P5006, fb_tmp_189["statement"]
    set $P5008, $P5006
    goto if1047_end2407
  if1047_else2406:
    null $P5007
    set $P5008, $P5007
  if1047_end2407:
    unless_null $P5008, vivi_10482409
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5008, $P5009
  vivi_10482409:
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, for_handlers2410
    push_eh $P5011
  for_next2411:
    unless $P5004, for_done2413
    shift $P5012, $P5004
  for_redo2412:
    .const 'Sub' $P5010 = 'cuid_323_1381254434.83594' 
    capture_lex $P5010
    $P5002 = $P5010($P5012)
    goto for_next2411
  for_handlers2410:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5011, $P5011, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, for_next2411
    eq $P5011, .CONTROL_LOOP_REDO, for_redo2412
  for_done2413:
    pop_eh 
    find_lex $P5013, "$assert_used_args"
    set $P5030, $P5013
    unless $P5013 goto if1050_end2417 
    find_dynamic_lex $P5014, "$*ARGS_USED"
    unless_null $P5014, fallback2418
    nqp_get_sc_object $P5016, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5015, $P5016
    set fb_tmp_190, $P5015
    repr_defined $I5003, fb_tmp_190
    unless $I5003 goto if1051_else2419 
    set $P5017, fb_tmp_190["$ARGS_USED"]
    set $P5019, $P5017
    goto if1051_end2420
  if1051_else2419:
    null $P5018
    set $P5019, $P5018
  if1051_end2420:
    unless_null $P5019, vivi_10522421
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5019, $P5020
  vivi_10522421:
    unless_null $P5019, vivi_10532422
    die "Contextual $*ARGS_USED not found"
    box $P5021, "Contextual $*ARGS_USED not found"
    set $P5019, $P5021
  vivi_10532422:
    set $P5014, $P5019
  fallback2418:
    set $N5001, $P5014
    find_dynamic_lex $P5022, "@*ARGS_HAVE"
    unless_null $P5022, fallback2423
    nqp_get_sc_object $P5024, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5023, $P5024
    set pkg_viv_tmp_17, $P5023
    set fb_tmp_191, pkg_viv_tmp_17
    repr_defined $I5004, fb_tmp_191
    unless $I5004 goto if1054_else2424 
    set $P5025, fb_tmp_191["@ARGS_HAVE"]
    set $P5027, $P5025
    goto if1054_end2425
  if1054_else2424:
    null $P5026
    set $P5027, $P5026
  if1054_end2425:
    unless_null $P5027, vivi_10552426
    new $P5028, 'ResizablePMCArray'
    set pkg_viv_tmp_17["@ARGS_HAVE"], $P5028
    set $P5027, $P5028
  vivi_10552426:
    unless_null $P5027, vivi_10562427
    die "Contextual @*ARGS_HAVE not found"
    box $P5029, "Contextual @*ARGS_HAVE not found"
    set $P5027, $P5029
  vivi_10562427:
    set $P5022, $P5027
  fallback2423:
    set $N5002, $P5022
    islt $I5002, $N5001, $N5002
    box $P5031, $I5002
    set $P5030, $P5031
  if1050_end2417:
    unless $P5030 goto if1049_end2415 
.annotate 'line', 2113
    find_dynamic_lex $P5032, "$*ARGS_USED"
    unless_null $P5032, fallback2428
    nqp_get_sc_object $P5034, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5033, $P5034
    set fb_tmp_192, $P5033
    repr_defined $I5005, fb_tmp_192
    unless $I5005 goto if1057_else2429 
    set $P5035, fb_tmp_192["$ARGS_USED"]
    set $P5037, $P5035
    goto if1057_end2430
  if1057_else2429:
    null $P5036
    set $P5037, $P5036
  if1057_end2430:
    unless_null $P5037, vivi_10582431
    nqp_get_sc_object $P5038, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5037, $P5038
  vivi_10582431:
    unless_null $P5037, vivi_10592432
    die "Contextual $*ARGS_USED not found"
    box $P5039, "Contextual $*ARGS_USED not found"
    set $P5037, $P5039
  vivi_10592432:
    set $P5032, $P5037
  fallback2428:
    set $S5006, $P5032
    concat $S5005, "Too few directives: found ", $S5006
    concat $S5004, $S5005, ","
    concat $S5003, $S5004, " fewer than the "
    find_dynamic_lex $P5040, "@*ARGS_HAVE"
    unless_null $P5040, fallback2433
    nqp_get_sc_object $P5042, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5041, $P5042
    set pkg_viv_tmp_18, $P5041
    set fb_tmp_193, pkg_viv_tmp_18
    repr_defined $I5006, fb_tmp_193
    unless $I5006 goto if1060_else2434 
    set $P5043, fb_tmp_193["@ARGS_HAVE"]
    set $P5045, $P5043
    goto if1060_end2435
  if1060_else2434:
    null $P5044
    set $P5045, $P5044
  if1060_end2435:
    unless_null $P5045, vivi_10612436
    new $P5046, 'ResizablePMCArray'
    set pkg_viv_tmp_18["@ARGS_HAVE"], $P5046
    set $P5045, $P5046
  vivi_10612436:
    unless_null $P5045, vivi_10622437
    die "Contextual @*ARGS_HAVE not found"
    box $P5047, "Contextual @*ARGS_HAVE not found"
    set $P5045, $P5047
  vivi_10622437:
    set $P5040, $P5045
  fallback2433:
    set $N5003, $P5040
    set $S5007, $N5003
    concat $S5002, $S5003, $S5007
    concat $S5001, $S5002, " arguments after the format string"
    box $P5048, $S5001
    die $P5048
  if1049_end2415:
    find_dynamic_lex $P5049, "$*ARGS_USED"
    unless_null $P5049, fallback2440
    nqp_get_sc_object $P5051, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5050, $P5051
    set fb_tmp_194, $P5050
    repr_defined $I5008, fb_tmp_194
    unless $I5008 goto if1064_else2441 
    set $P5052, fb_tmp_194["$ARGS_USED"]
    set $P5054, $P5052
    goto if1064_end2442
  if1064_else2441:
    null $P5053
    set $P5054, $P5053
  if1064_end2442:
    unless_null $P5054, vivi_10652443
    nqp_get_sc_object $P5055, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5054, $P5055
  vivi_10652443:
    unless_null $P5054, vivi_10662444
    die "Contextual $*ARGS_USED not found"
    box $P5056, "Contextual $*ARGS_USED not found"
    set $P5054, $P5056
  vivi_10662444:
    set $P5049, $P5054
  fallback2440:
    set $N5004, $P5049
    find_dynamic_lex $P5057, "@*ARGS_HAVE"
    unless_null $P5057, fallback2445
    nqp_get_sc_object $P5059, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5058, $P5059
    set pkg_viv_tmp_19, $P5058
    set fb_tmp_195, pkg_viv_tmp_19
    repr_defined $I5009, fb_tmp_195
    unless $I5009 goto if1067_else2446 
    set $P5060, fb_tmp_195["@ARGS_HAVE"]
    set $P5062, $P5060
    goto if1067_end2447
  if1067_else2446:
    null $P5061
    set $P5062, $P5061
  if1067_end2447:
    unless_null $P5062, vivi_10682448
    new $P5063, 'ResizablePMCArray'
    set pkg_viv_tmp_19["@ARGS_HAVE"], $P5063
    set $P5062, $P5063
  vivi_10682448:
    unless_null $P5062, vivi_10692449
    die "Contextual @*ARGS_HAVE not found"
    box $P5064, "Contextual @*ARGS_HAVE not found"
    set $P5062, $P5064
  vivi_10692449:
    set $P5057, $P5062
  fallback2445:
    set $N5005, $P5057
    isgt $I5007, $N5004, $N5005
    unless $I5007 goto if1063_end2439 
.annotate 'line', 2117
    find_dynamic_lex $P5065, "$*ARGS_USED"
    unless_null $P5065, fallback2450
    nqp_get_sc_object $P5067, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5066, $P5067
    set fb_tmp_196, $P5066
    repr_defined $I5010, fb_tmp_196
    unless $I5010 goto if1070_else2451 
    set $P5068, fb_tmp_196["$ARGS_USED"]
    set $P5070, $P5068
    goto if1070_end2452
  if1070_else2451:
    null $P5069
    set $P5070, $P5069
  if1070_end2452:
    unless_null $P5070, vivi_10712453
    nqp_get_sc_object $P5071, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5070, $P5071
  vivi_10712453:
    unless_null $P5070, vivi_10722454
    die "Contextual $*ARGS_USED not found"
    box $P5072, "Contextual $*ARGS_USED not found"
    set $P5070, $P5072
  vivi_10722454:
    set $P5065, $P5070
  fallback2450:
    set $S5012, $P5065
    concat $S5011, "Too many directives: found ", $S5012
    concat $S5010, $S5011, ", but "
    find_dynamic_lex $P5073, "@*ARGS_HAVE"
    unless_null $P5073, fallback2457
    nqp_get_sc_object $P5075, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5074, $P5075
    set pkg_viv_tmp_20, $P5074
    set fb_tmp_197, pkg_viv_tmp_20
    repr_defined $I5012, fb_tmp_197
    unless $I5012 goto if1074_else2458 
    set $P5076, fb_tmp_197["@ARGS_HAVE"]
    set $P5078, $P5076
    goto if1074_end2459
  if1074_else2458:
    null $P5077
    set $P5078, $P5077
  if1074_end2459:
    unless_null $P5078, vivi_10752460
    new $P5079, 'ResizablePMCArray'
    set pkg_viv_tmp_20["@ARGS_HAVE"], $P5079
    set $P5078, $P5079
  vivi_10752460:
    unless_null $P5078, vivi_10762461
    die "Contextual @*ARGS_HAVE not found"
    box $P5080, "Contextual @*ARGS_HAVE not found"
    set $P5078, $P5080
  vivi_10762461:
    set $P5073, $P5078
  fallback2457:
    set $N5006, $P5073
    set $N5007, 0
    isgt $I5011, $N5006, $N5007
    unless $I5011 goto if1073_else2455 
    find_dynamic_lex $P5081, "@*ARGS_HAVE"
    unless_null $P5081, fallback2462
    nqp_get_sc_object $P5083, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    get_who $P5082, $P5083
    set pkg_viv_tmp_21, $P5082
    set fb_tmp_198, pkg_viv_tmp_21
    repr_defined $I5013, fb_tmp_198
    unless $I5013 goto if1077_else2463 
    set $P5084, fb_tmp_198["@ARGS_HAVE"]
    set $P5086, $P5084
    goto if1077_end2464
  if1077_else2463:
    null $P5085
    set $P5086, $P5085
  if1077_end2464:
    unless_null $P5086, vivi_10782465
    new $P5087, 'ResizablePMCArray'
    set pkg_viv_tmp_21["@ARGS_HAVE"], $P5087
    set $P5086, $P5087
  vivi_10782465:
    unless_null $P5086, vivi_10792466
    die "Contextual @*ARGS_HAVE not found"
    box $P5088, "Contextual @*ARGS_HAVE not found"
    set $P5086, $P5088
  vivi_10792466:
    set $P5081, $P5086
  fallback2462:
    set $N5008, $P5081
    set $S5014, $N5008
    concat $S5013, "only ", $S5014
    set $S5015, $S5013
    goto if1073_end2456
  if1073_else2455:
    set $S5015, "no"
  if1073_end2456:
    concat $S5009, $S5010, $S5015
    concat $S5008, $S5009, " arguments after the format string"
    box $P5089, $S5008
    die $P5089
  if1063_end2439:
.annotate 'line', 2122
    join $S5016, "", $P101
    $P5090 = _lex_param_1."!make"($S5016)
    .return ($P5090) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_323_1381254434.83594") :anon :lex :outer("cuid_212_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2111
    find_lex $P5001, "@statements"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_214_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2183
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    unless_null _lex_param_1, fallback2471
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5003
  fallback2471:
    set fb_tmp_199, _lex_param_1
    repr_defined $I5001, fb_tmp_199
    unless $I5001 goto if1081_else2469 
    set $P5004, fb_tmp_199["directive"]
    set $P5006, $P5004
    goto if1081_end2470
  if1081_else2469:
    null $P5005
    set $P5006, $P5005
  if1081_end2470:
    unless_null $P5006, vivi_10822472
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5006, $P5007
  vivi_10822472:
    unless $P5006 goto if1080_else2467 
.annotate 'line', 2185
    unless_null _lex_param_1, fallback2475
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5008
  fallback2475:
    set fb_tmp_200, _lex_param_1
    repr_defined $I5002, fb_tmp_200
    unless $I5002 goto if1083_else2473 
    set $P5009, fb_tmp_200["directive"]
    set $P5011, $P5009
    goto if1083_end2474
  if1083_else2473:
    null $P5010
    set $P5011, $P5010
  if1083_end2474:
    unless_null $P5011, vivi_10842476
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_10842476:
    set $P101, $P5011
    goto if1080_end2468
  if1080_else2467:
    unless_null _lex_param_1, fallback2481
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5013
  fallback2481:
    set fb_tmp_201, _lex_param_1
    repr_defined $I5003, fb_tmp_201
    unless $I5003 goto if1086_else2479 
    set $P5014, fb_tmp_201["escape"]
    set $P5016, $P5014
    goto if1086_end2480
  if1086_else2479:
    null $P5015
    set $P5016, $P5015
  if1086_end2480:
    unless_null $P5016, vivi_10872482
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5016, $P5017
  vivi_10872482:
    unless $P5016 goto if1085_else2477 
.annotate 'line', 2186
    unless_null _lex_param_1, fallback2485
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5018
  fallback2485:
    set fb_tmp_202, _lex_param_1
    repr_defined $I5004, fb_tmp_202
    unless $I5004 goto if1088_else2483 
    set $P5019, fb_tmp_202["escape"]
    set $P5021, $P5019
    goto if1088_end2484
  if1088_else2483:
    null $P5020
    set $P5021, $P5020
  if1088_end2484:
    unless_null $P5021, vivi_10892486
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5021, $P5022
  vivi_10892486:
    set $P101, $P5021
    set $P5028, $P101
    goto if1085_end2478
  if1085_else2477:
.annotate 'line', 2187
    unless_null _lex_param_1, fallback2489
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5023
  fallback2489:
    set fb_tmp_203, _lex_param_1
    repr_defined $I5005, fb_tmp_203
    unless $I5005 goto if1090_else2487 
    set $P5024, fb_tmp_203["literal"]
    set $P5026, $P5024
    goto if1090_end2488
  if1090_else2487:
    null $P5025
    set $P5026, $P5025
  if1090_end2488:
    unless_null $P5026, vivi_10912490
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5026, $P5027
  vivi_10912490:
    set $P101, $P5026
    set $P5028, $P101
  if1085_end2478:
  if1080_end2468:
    set fb_tmp_204, $P101
    repr_defined $I5006, fb_tmp_204
    unless $I5006 goto if1093_else2493 
    set $P5029, fb_tmp_204["size"]
    set $P5031, $P5029
    goto if1093_end2494
  if1093_else2493:
    null $P5030
    set $P5031, $P5030
  if1093_end2494:
    unless_null $P5031, vivi_10942495
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5031, $P5032
  vivi_10942495:
    unless $P5031 goto if1092_end2492 
.annotate 'line', 2189
    $P5033 = "&padding_char"($P101)
    set fb_tmp_205, $P101
    repr_defined $I5007, fb_tmp_205
    unless $I5007 goto if1095_else2496 
    set $P5034, fb_tmp_205["size"]
    set $P5036, $P5034
    goto if1095_end2497
  if1095_else2496:
    null $P5035
    set $P5036, $P5035
  if1095_end2497:
    unless_null $P5036, vivi_10962498
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5036, $P5037
  vivi_10962498:
    $P5038 = $P5036."ast"()
    set $N5002, $P5038
    $P5039 = $P101."ast"()
    set $S5001, $P5039
    length $I5008, $S5001
    set $N5003, $I5008
    sub $N5001, $N5002, $N5003
    $P5040 = "&infix_x"($P5033, $N5001)
    $P5041 = $P102."push"($P5040)
  if1092_end2492:
.annotate 'line', 2190
    $P5042 = "&has_flag"($P101, "minus")
    unless $P5042 goto if1097_else2499 
.annotate 'line', 2191
    $P5043 = $P101."ast"()
    $P5044 = $P102."unshift"($P5043)
    goto if1097_end2500
  if1097_else2499:
.annotate 'line', 2192
    $P5045 = $P101."ast"()
    $P5046 = $P102."push"($P5045)
  if1097_end2500:
.annotate 'line', 2193
    $P5047 = "&join"("", $P102)
    $P5048 = _lex_param_1."!make"($P5047)
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_215_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2196
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
.annotate 'line', 2197
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 2
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1099_end2504 
.annotate 'line', 2199
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1099_end2504:
    unless $P5007 goto if1098_end2502 
    unless_null _lex_param_1, fallback2509
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5008
  fallback2509:
    set fb_tmp_206, _lex_param_1
    repr_defined $I5003, fb_tmp_206
    unless $I5003 goto if1101_else2507 
    set $P5009, fb_tmp_206["sym"]
    set $P5011, $P5009
    goto if1101_end2508
  if1101_else2507:
    null $P5010
    set $P5011, $P5010
  if1101_end2508:
    unless_null $P5011, vivi_11022510
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_11022510:
    set $S5002, $P5011
    iseq $I5002, $S5002, "b"
    unless $I5002 goto if1100_else2505 
    set $S5003, "0b"
    goto if1100_end2506
  if1100_else2505:
    set $S5003, "0B"
  if1100_end2506:
    box $P5013, $S5003
    set $P102, $P5013
  if1098_end2502:
    unless_null _lex_param_1, fallback2515
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5014
  fallback2515:
    set fb_tmp_207, _lex_param_1
    repr_defined $I5005, fb_tmp_207
    unless $I5005 goto if1104_else2513 
    set $P5015, fb_tmp_207["precision"]
    set $P5017, $P5015
    goto if1104_end2514
  if1104_else2513:
    null $P5016
    set $P5017, $P5016
  if1104_end2514:
    unless_null $P5017, vivi_11052516
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5017, $P5018
  vivi_11052516:
    set $S5004, $P5017
    length $I5004, $S5004
    unless $I5004 goto if1103_else2511 
.annotate 'line', 2200
.annotate 'line', 2201
    unless_null _lex_param_1, fallback2523
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5019
  fallback2523:
    set fb_tmp_208, _lex_param_1
    repr_defined $I5007, fb_tmp_208
    unless $I5007 goto if1108_else2521 
    set $P5020, fb_tmp_208["precision"]
    set $P5022, $P5020
    goto if1108_end2522
  if1108_else2521:
    null $P5021
    set $P5022, $P5021
  if1108_end2522:
    unless_null $P5022, vivi_11092524
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5022, $P5023
  vivi_11092524:
    $P5024 = $P5022."ast"()
    set $N5001, $P5024
    set $N5002, 0
    iseq $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if1107_end2520 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5008, $N5003, $N5004
    set $I5009, $I5008
  if1107_end2520:
    unless $I5009 goto if1106_end2518 
    box $P5025, ""
    set $P101, $P5025
  if1106_end2518:
    set $S5007, $P102
.annotate 'line', 2202
    unless_null _lex_param_1, fallback2527
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5026
  fallback2527:
    set fb_tmp_209, _lex_param_1
    repr_defined $I5010, fb_tmp_209
    unless $I5010 goto if1110_else2525 
    set $P5027, fb_tmp_209["precision"]
    set $P5029, $P5027
    goto if1110_end2526
  if1110_else2525:
    null $P5028
    set $P5029, $P5028
  if1110_end2526:
    unless_null $P5029, vivi_11112528
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5029, $P5030
  vivi_11112528:
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
    goto if1103_end2512
  if1103_else2511:
.annotate 'line', 2204
    set $S5012, $P102
    set $S5013, $P101
    concat $S5011, $S5012, $S5013
    box $P5034, $S5011
    set $P101, $P5034
  if1103_end2512:
.annotate 'line', 2207
    $P5035 = _lex_param_1."!make"($P101)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_216_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2209
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2210
    $P5001 = "&next_argument"(_lex_param_1)
    set $I5001, $P5001
    chr $S5001, $I5001
    $P5002 = _lex_param_1."!make"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_217_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2213
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
.annotate 'line', 2214
    $P5004 = "&next_argument"(_lex_param_1)
    $P5005 = "&intify"($P5004)
    set $P101, $P5005
.annotate 'line', 2215
    $P5006 = "&padding_char"(_lex_param_1)
    set $P102, $P5006
    find_lex $P5007, "$zero"
    nqp_bigint_lt $I5001, $P101, $P5007
    unless $I5001 goto if1112_else2529 
    set $S5002, "-"
    goto if1112_end2530
  if1112_else2529:
.annotate 'line', 2217
    $P5008 = "&has_flag"(_lex_param_1, "plus")
    unless $P5008 goto if1113_else2531 
    set $S5001, "+"
    goto if1113_end2532
  if1113_else2531:
    set $S5001, ""
  if1113_end2532:
    set $S5002, $S5001
  if1112_end2530:
    box $P5009, $S5002
    set $P103, $P5009
    find_lex $P5011, "$knowhow"
    nqp_bigint_abs $P5010, $P101, $P5011
    nqp_bigint_to_str $S5003, $P5010
    box $P5012, $S5003
    set $P101, $P5012
    unless_null _lex_param_1, fallback2537
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5013
  fallback2537:
    set fb_tmp_210, _lex_param_1
    repr_defined $I5003, fb_tmp_210
    unless $I5003 goto if1115_else2535 
    set $P5014, fb_tmp_210["precision"]
    set $P5016, $P5014
    goto if1115_end2536
  if1115_else2535:
    null $P5015
    set $P5016, $P5015
  if1115_end2536:
    unless_null $P5016, vivi_11162538
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5016, $P5017
  vivi_11162538:
    set $S5004, $P5016
    length $I5002, $S5004
    unless $I5002 goto if1114_end2534 
    set $S5006, $P101
.annotate 'line', 2220
    unless_null _lex_param_1, fallback2541
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5018
  fallback2541:
    set fb_tmp_211, _lex_param_1
    repr_defined $I5004, fb_tmp_211
    unless $I5004 goto if1117_else2539 
    set $P5019, fb_tmp_211["precision"]
    set $P5021, $P5019
    goto if1117_end2540
  if1117_else2539:
    null $P5020
    set $P5021, $P5020
  if1117_end2540:
    unless_null $P5021, vivi_11182542
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5021, $P5022
  vivi_11182542:
    $P5023 = $P5021."ast"()
    set $I5005, $P5023
    substr $S5005, $S5006, 0, $I5005
    box $P5024, $S5005
    set $P101, $P5024
  if1114_end2534:
    set $S5007, $P102
    isne $I5006, $S5007, " "
    box $P5031, $I5006
    set $P5030, $P5031
    unless $I5006 goto if1120_end2546 
    unless_null _lex_param_1, fallback2549
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5025
  fallback2549:
    set fb_tmp_212, _lex_param_1
    repr_defined $I5007, fb_tmp_212
    unless $I5007 goto if1121_else2547 
    set $P5026, fb_tmp_212["size"]
    set $P5028, $P5026
    goto if1121_end2548
  if1121_else2547:
    null $P5027
    set $P5028, $P5027
  if1121_end2548:
    unless_null $P5028, vivi_11222550
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5028, $P5029
  vivi_11222550:
    set $P5030, $P5028
  if1120_end2546:
    unless $P5030 goto if1119_else2543 
.annotate 'line', 2221
    set $S5010, $P103
.annotate 'line', 2222
    unless_null _lex_param_1, fallback2553
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5032
  fallback2553:
    set fb_tmp_213, _lex_param_1
    repr_defined $I5008, fb_tmp_213
    unless $I5008 goto if1123_else2551 
    set $P5033, fb_tmp_213["size"]
    set $P5035, $P5033
    goto if1123_end2552
  if1123_else2551:
    null $P5034
    set $P5035, $P5034
  if1123_end2552:
    unless_null $P5035, vivi_11242554
    nqp_get_sc_object $P5036, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5035, $P5036
  vivi_11242554:
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
    goto if1119_end2544
  if1119_else2543:
.annotate 'line', 2224
    set $S5015, $P103
    set $S5016, $P101
    concat $S5014, $S5015, $S5016
    box $P5040, $S5014
    set $P101, $P5040
  if1119_end2544:
.annotate 'line', 2227
    $P5041 = _lex_param_1."!make"($P101)
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_218_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2305
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
.annotate 'line', 2306
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2559
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5006
  fallback2559:
    set fb_tmp_214, _lex_param_1
    repr_defined $I5001, fb_tmp_214
    unless $I5001 goto if1126_else2557 
    set $P5007, fb_tmp_214["precision"]
    set $P5009, $P5007
    goto if1126_end2558
  if1126_else2557:
    null $P5008
    set $P5009, $P5008
  if1126_end2558:
    unless_null $P5009, vivi_11272560
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_11272560:
    unless $P5009 goto if1125_else2555 
.annotate 'line', 2307
    unless_null _lex_param_1, fallback2563
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5011
  fallback2563:
    set fb_tmp_215, _lex_param_1
    repr_defined $I5002, fb_tmp_215
    unless $I5002 goto if1128_else2561 
    set $P5012, fb_tmp_215["precision"]
    set $P5014, $P5012
    goto if1128_end2562
  if1128_else2561:
    null $P5013
    set $P5014, $P5013
  if1128_end2562:
    unless_null $P5014, vivi_11292564
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5014, $P5015
  vivi_11292564:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1125_end2556
  if1125_else2555:
    box $P5018, 6
    set $P5017, $P5018
  if1125_end2556:
    set $P102, $P5017
.annotate 'line', 2308
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2569
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5020
  fallback2569:
    set fb_tmp_216, _lex_param_1
    repr_defined $I5003, fb_tmp_216
    unless $I5003 goto if1131_else2567 
    set $P5021, fb_tmp_216["size"]
    set $P5023, $P5021
    goto if1131_end2568
  if1131_else2567:
    null $P5022
    set $P5023, $P5022
  if1131_end2568:
    unless_null $P5023, vivi_11322570
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5023, $P5024
  vivi_11322570:
    unless $P5023 goto if1130_else2565 
.annotate 'line', 2309
    unless_null _lex_param_1, fallback2573
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5025
  fallback2573:
    set fb_tmp_217, _lex_param_1
    repr_defined $I5004, fb_tmp_217
    unless $I5004 goto if1133_else2571 
    set $P5026, fb_tmp_217["size"]
    set $P5028, $P5026
    goto if1133_end2572
  if1133_else2571:
    null $P5027
    set $P5028, $P5027
  if1133_end2572:
    unless_null $P5028, vivi_11342574
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5028, $P5029
  vivi_11342574:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1130_end2566
  if1130_else2565:
    box $P5032, 0
    set $P5031, $P5032
  if1130_end2566:
    set $P104, $P5031
.annotate 'line', 2310
    unless_null _lex_param_1, fallback2577
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5033
  fallback2577:
    set fb_tmp_218, _lex_param_1
    repr_defined $I5005, fb_tmp_218
    unless $I5005 goto if1135_else2575 
    set $P5034, fb_tmp_218["sym"]
    set $P5036, $P5034
    goto if1135_end2576
  if1135_else2575:
    null $P5035
    set $P5036, $P5035
  if1135_end2576:
    unless_null $P5036, vivi_11362578
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5036, $P5037
  vivi_11362578:
    $P5038 = "&scientific"($P101, $P5036, $P102, $P104, $P103)
    $P5039 = _lex_param_1."!make"($P5038)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_219_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2312
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
.annotate 'line', 2313
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2583
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5006
  fallback2583:
    set fb_tmp_219, _lex_param_1
    repr_defined $I5001, fb_tmp_219
    unless $I5001 goto if1138_else2581 
    set $P5007, fb_tmp_219["precision"]
    set $P5009, $P5007
    goto if1138_end2582
  if1138_else2581:
    null $P5008
    set $P5009, $P5008
  if1138_end2582:
    unless_null $P5009, vivi_11392584
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_11392584:
    unless $P5009 goto if1137_else2579 
.annotate 'line', 2314
    unless_null _lex_param_1, fallback2587
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5011
  fallback2587:
    set fb_tmp_220, _lex_param_1
    repr_defined $I5002, fb_tmp_220
    unless $I5002 goto if1140_else2585 
    set $P5012, fb_tmp_220["precision"]
    set $P5014, $P5012
    goto if1140_end2586
  if1140_else2585:
    null $P5013
    set $P5014, $P5013
  if1140_end2586:
    unless_null $P5014, vivi_11412588
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5014, $P5015
  vivi_11412588:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1137_end2580
  if1137_else2579:
    box $P5018, 6
    set $P5017, $P5018
  if1137_end2580:
    set $P102, $P5017
.annotate 'line', 2315
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2593
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5020
  fallback2593:
    set fb_tmp_221, _lex_param_1
    repr_defined $I5003, fb_tmp_221
    unless $I5003 goto if1143_else2591 
    set $P5021, fb_tmp_221["size"]
    set $P5023, $P5021
    goto if1143_end2592
  if1143_else2591:
    null $P5022
    set $P5023, $P5022
  if1143_end2592:
    unless_null $P5023, vivi_11442594
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5023, $P5024
  vivi_11442594:
    unless $P5023 goto if1142_else2589 
.annotate 'line', 2316
    unless_null _lex_param_1, fallback2597
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5025
  fallback2597:
    set fb_tmp_222, _lex_param_1
    repr_defined $I5004, fb_tmp_222
    unless $I5004 goto if1145_else2595 
    set $P5026, fb_tmp_222["size"]
    set $P5028, $P5026
    goto if1145_end2596
  if1145_else2595:
    null $P5027
    set $P5028, $P5027
  if1145_end2596:
    unless_null $P5028, vivi_11462598
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5028, $P5029
  vivi_11462598:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1142_end2590
  if1142_else2589:
    box $P5032, 0
    set $P5031, $P5032
  if1142_end2590:
    set $P104, $P5031
.annotate 'line', 2317
    $P5033 = "&fixed-point"($P101, $P102, $P104, $P103)
    $P5034 = _lex_param_1."!make"($P5033)
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_220_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2319
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P104, $P5004
.annotate 'line', 2320
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2603
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5006
  fallback2603:
    set fb_tmp_223, _lex_param_1
    repr_defined $I5001, fb_tmp_223
    unless $I5001 goto if1148_else2601 
    set $P5007, fb_tmp_223["precision"]
    set $P5009, $P5007
    goto if1148_end2602
  if1148_else2601:
    null $P5008
    set $P5009, $P5008
  if1148_end2602:
    unless_null $P5009, vivi_11492604
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_11492604:
    unless $P5009 goto if1147_else2599 
.annotate 'line', 2321
    unless_null _lex_param_1, fallback2607
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5011
  fallback2607:
    set fb_tmp_224, _lex_param_1
    repr_defined $I5002, fb_tmp_224
    unless $I5002 goto if1150_else2605 
    set $P5012, fb_tmp_224["precision"]
    set $P5014, $P5012
    goto if1150_end2606
  if1150_else2605:
    null $P5013
    set $P5014, $P5013
  if1150_end2606:
    unless_null $P5014, vivi_11512608
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5014, $P5015
  vivi_11512608:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1147_end2600
  if1147_else2599:
    box $P5018, 6
    set $P5017, $P5018
  if1147_end2600:
    set $P102, $P5017
.annotate 'line', 2322
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2613
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5020
  fallback2613:
    set fb_tmp_225, _lex_param_1
    repr_defined $I5003, fb_tmp_225
    unless $I5003 goto if1153_else2611 
    set $P5021, fb_tmp_225["size"]
    set $P5023, $P5021
    goto if1153_end2612
  if1153_else2611:
    null $P5022
    set $P5023, $P5022
  if1153_end2612:
    unless_null $P5023, vivi_11542614
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5023, $P5024
  vivi_11542614:
    unless $P5023 goto if1152_else2609 
.annotate 'line', 2323
    unless_null _lex_param_1, fallback2617
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5025
  fallback2617:
    set fb_tmp_226, _lex_param_1
    repr_defined $I5004, fb_tmp_226
    unless $I5004 goto if1155_else2615 
    set $P5026, fb_tmp_226["size"]
    set $P5028, $P5026
    goto if1155_end2616
  if1155_else2615:
    null $P5027
    set $P5028, $P5027
  if1155_end2616:
    unless_null $P5028, vivi_11562618
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5028, $P5029
  vivi_11562618:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1152_end2610
  if1152_else2609:
    box $P5032, 0
    set $P5031, $P5032
  if1152_end2610:
    set $P104, $P5031
.annotate 'line', 2324
    unless_null _lex_param_1, fallback2623
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5033
  fallback2623:
    set fb_tmp_227, _lex_param_1
    repr_defined $I5006, fb_tmp_227
    unless $I5006 goto if1158_else2621 
    set $P5034, fb_tmp_227["sym"]
    set $P5036, $P5034
    goto if1158_end2622
  if1158_else2621:
    null $P5035
    set $P5036, $P5035
  if1158_end2622:
    unless_null $P5036, vivi_11592624
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5036, $P5037
  vivi_11592624:
    set $S5001, $P5036
    iseq $I5005, $S5001, "G"
    unless $I5005 goto if1157_else2619 
    set $S5002, "E"
    goto if1157_end2620
  if1157_else2619:
    set $S5002, "e"
  if1157_end2620:
    $P5038 = "&shortest"($P101, $S5002, $P102, $P104, $P103)
    $P5039 = _lex_param_1."!make"($P5038)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_221_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2326
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pre", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_228 
    .local pmc fb_tmp_229 
    .local pmc fb_tmp_230 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
.annotate 'line', 2327
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 8
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1161_end2628 
.annotate 'line', 2329
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1161_end2628:
    unless $P5007 goto if1160_end2626 
    box $P5008, "0"
    set $P102, $P5008
  if1160_end2626:
    unless_null _lex_param_1, fallback2633
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5009
  fallback2633:
    set fb_tmp_228, _lex_param_1
    repr_defined $I5003, fb_tmp_228
    unless $I5003 goto if1163_else2631 
    set $P5010, fb_tmp_228["precision"]
    set $P5012, $P5010
    goto if1163_end2632
  if1163_else2631:
    null $P5011
    set $P5012, $P5011
  if1163_end2632:
    unless_null $P5012, vivi_11642634
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5012, $P5013
  vivi_11642634:
    set $S5002, $P5012
    length $I5002, $S5002
    unless $I5002 goto if1162_else2629 
.annotate 'line', 2330
.annotate 'line', 2331
    unless_null _lex_param_1, fallback2641
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5014
  fallback2641:
    set fb_tmp_229, _lex_param_1
    repr_defined $I5005, fb_tmp_229
    unless $I5005 goto if1167_else2639 
    set $P5015, fb_tmp_229["precision"]
    set $P5017, $P5015
    goto if1167_end2640
  if1167_else2639:
    null $P5016
    set $P5017, $P5016
  if1167_end2640:
    unless_null $P5017, vivi_11682642
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5017, $P5018
  vivi_11682642:
    $P5019 = $P5017."ast"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if1166_end2638 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  if1166_end2638:
    unless $I5007 goto if1165_end2636 
    box $P5020, ""
    set $P101, $P5020
  if1165_end2636:
    set $S5005, $P102
.annotate 'line', 2332
    unless_null _lex_param_1, fallback2645
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5021
  fallback2645:
    set fb_tmp_230, _lex_param_1
    repr_defined $I5008, fb_tmp_230
    unless $I5008 goto if1169_else2643 
    set $P5022, fb_tmp_230["precision"]
    set $P5024, $P5022
    goto if1169_end2644
  if1169_else2643:
    null $P5023
    set $P5024, $P5023
  if1169_end2644:
    unless_null $P5024, vivi_11702646
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5024, $P5025
  vivi_11702646:
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
    goto if1162_end2630
  if1162_else2629:
.annotate 'line', 2334
    set $S5010, $P102
    set $S5011, $P101
    concat $S5009, $S5010, $S5011
    box $P5030, $S5009
    set $P101, $P5030
  if1162_end2630:
.annotate 'line', 2337
    $P5031 = _lex_param_1."!make"($P101)
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_222_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$string", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_231 
    .local pmc fb_tmp_232 
    .local pmc fb_tmp_233 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 2341
    $P5002 = "&next_argument"(_lex_param_1)
    set $P101, $P5002
    unless_null _lex_param_1, fallback2653
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5003
  fallback2653:
    set fb_tmp_231, _lex_param_1
    repr_defined $I5002, fb_tmp_231
    unless $I5002 goto if1173_else2651 
    set $P5004, fb_tmp_231["precision"]
    set $P5006, $P5004
    goto if1173_end2652
  if1173_else2651:
    null $P5005
    set $P5006, $P5005
  if1173_end2652:
    unless_null $P5006, vivi_11742654
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5006, $P5007
  vivi_11742654:
    set $S5001, $P5006
    length $I5001, $S5001
    set $I5006, $I5001
    unless $I5001 goto if1172_end2650 
    set $S5002, $P101
    length $I5004, $S5002
    set $N5001, $I5004
.annotate 'line', 2342
    unless_null _lex_param_1, fallback2657
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5008
  fallback2657:
    set fb_tmp_232, _lex_param_1
    repr_defined $I5005, fb_tmp_232
    unless $I5005 goto if1175_else2655 
    set $P5009, fb_tmp_232["precision"]
    set $P5011, $P5009
    goto if1175_end2656
  if1175_else2655:
    null $P5010
    set $P5011, $P5010
  if1175_end2656:
    unless_null $P5011, vivi_11762658
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5011, $P5012
  vivi_11762658:
    $P5013 = $P5011."ast"()
    set $N5002, $P5013
    isgt $I5003, $N5001, $N5002
    set $I5006, $I5003
  if1172_end2650:
    unless $I5006 goto if1171_end2648 
    set $S5004, $P101
.annotate 'line', 2343
    unless_null _lex_param_1, fallback2661
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5014
  fallback2661:
    set fb_tmp_233, _lex_param_1
    repr_defined $I5007, fb_tmp_233
    unless $I5007 goto if1177_else2659 
    set $P5015, fb_tmp_233["precision"]
    set $P5017, $P5015
    goto if1177_end2660
  if1177_else2659:
    null $P5016
    set $P5017, $P5016
  if1177_end2660:
    unless_null $P5017, vivi_11782662
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5017, $P5018
  vivi_11782662:
    $P5019 = $P5017."ast"()
    set $I5008, $P5019
    substr $S5003, $S5004, 0, $I5008
    box $P5020, $S5003
    set $P101, $P5020
  if1171_end2648:
.annotate 'line', 2345
    $P5021 = _lex_param_1."!make"($P101)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_223_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2349
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_324_1381254434.83594' 
    capture_lex $P5008 
    .lex "$int", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
.annotate 'line', 2350
    $P5002 = "&next_argument"(_lex_param_1)
    $P5003 = "&intify"($P5002)
    set $P101, $P5003
    find_lex $P5004, "$zero"
    nqp_bigint_lt $I5001, $P101, $P5004
    unless $I5001 goto if1179_end2664 
    .const 'Sub' $P5005 = 'cuid_324_1381254434.83594' 
    capture_lex $P5005
    $P5006 = $P5005()
  if1179_end2664:
.annotate 'line', 2360
    nqp_bigint_to_str $S5001, $P101
    $P5007 = _lex_param_1."!make"($S5001)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_324_1381254434.83594") :anon :lex :outer("cuid_223_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2351
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
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
.sub "directive:sym<x>" :subid("cuid_224_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2362
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
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P102, $P5002
.annotate 'line', 2363
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 16
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1181_end2668 
.annotate 'line', 2365
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1181_end2668:
    unless $P5007 goto if1180_end2666 
    box $P5008, "0X"
    set $P102, $P5008
  if1180_end2666:
    unless_null _lex_param_1, fallback2673
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5009
  fallback2673:
    set fb_tmp_234, _lex_param_1
    repr_defined $I5003, fb_tmp_234
    unless $I5003 goto if1183_else2671 
    set $P5010, fb_tmp_234["precision"]
    set $P5012, $P5010
    goto if1183_end2672
  if1183_else2671:
    null $P5011
    set $P5012, $P5011
  if1183_end2672:
    unless_null $P5012, vivi_11842674
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5012, $P5013
  vivi_11842674:
    set $S5002, $P5012
    length $I5002, $S5002
    unless $I5002 goto if1182_else2669 
.annotate 'line', 2366
.annotate 'line', 2367
    unless_null _lex_param_1, fallback2681
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5014
  fallback2681:
    set fb_tmp_235, _lex_param_1
    repr_defined $I5005, fb_tmp_235
    unless $I5005 goto if1187_else2679 
    set $P5015, fb_tmp_235["precision"]
    set $P5017, $P5015
    goto if1187_end2680
  if1187_else2679:
    null $P5016
    set $P5017, $P5016
  if1187_end2680:
    unless_null $P5017, vivi_11882682
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5017, $P5018
  vivi_11882682:
    $P5019 = $P5017."ast"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if1186_end2678 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  if1186_end2678:
    unless $I5007 goto if1185_end2676 
    box $P5020, ""
    set $P101, $P5020
  if1185_end2676:
    set $S5005, $P102
.annotate 'line', 2368
    unless_null _lex_param_1, fallback2685
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5021
  fallback2685:
    set fb_tmp_236, _lex_param_1
    repr_defined $I5008, fb_tmp_236
    unless $I5008 goto if1189_else2683 
    set $P5022, fb_tmp_236["precision"]
    set $P5024, $P5022
    goto if1189_end2684
  if1189_else2683:
    null $P5023
    set $P5024, $P5023
  if1189_end2684:
    unless_null $P5024, vivi_11902686
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5024, $P5025
  vivi_11902686:
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
    goto if1182_end2670
  if1182_else2669:
.annotate 'line', 2370
    set $S5010, $P102
    set $S5011, $P101
    concat $S5009, $S5010, $S5011
    box $P5029, $S5009
    set $P101, $P5029
  if1182_end2670:
.annotate 'line', 2373
    unless_null _lex_param_1, fallback2691
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5030
  fallback2691:
    set fb_tmp_237, _lex_param_1
    repr_defined $I5011, fb_tmp_237
    unless $I5011 goto if1192_else2689 
    set $P5031, fb_tmp_237["sym"]
    set $P5033, $P5031
    goto if1192_end2690
  if1192_else2689:
    null $P5032
    set $P5033, $P5032
  if1192_end2690:
    unless_null $P5033, vivi_11932692
    nqp_get_sc_object $P5034, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5033, $P5034
  vivi_11932692:
    set $S5012, $P5033
    iseq $I5010, $S5012, "x"
    unless $I5010 goto if1191_else2687 
    set $S5014, $P101
    downcase $S5013, $S5014
    box $P5036, $S5013
    set $P5035, $P5036
    goto if1191_end2688
  if1191_else2687:
    set $P5035, $P101
  if1191_end2688:
    $P5037 = _lex_param_1."!make"($P5035)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_225_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2376
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2377
    $P5001 = _lex_param_1."!make"("%")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_226_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2380
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2381
    set $S5001, _lex_param_1
    $P5001 = _lex_param_1."!make"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_227_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2384
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$index", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_238 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    unless_null _lex_param_1, fallback2695
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5002
  fallback2695:
    set fb_tmp_238, _lex_param_1
    repr_defined $I5001, fb_tmp_238
    unless $I5001 goto if1194_else2693 
    set $P5003, fb_tmp_238["param_index"]
    set $P5005, $P5003
    goto if1194_end2694
  if1194_else2693:
    null $P5004
    set $P5005, $P5004
  if1194_end2694:
    unless_null $P5005, vivi_11952696
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5005, $P5006
  vivi_11952696:
    set $N5002, $P5005
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5007, $N5001
    set $P101, $P5007
    set $N5004, $P101
    set $N5005, 0
    islt $I5002, $N5004, $N5005
    unless $I5002 goto if1196_end2698 
    box $P5008, "Parameter index starts to count at 1 but 0 was passed"
    die $P5008
  if1196_end2698:
.annotate 'line', 2387
    $P5009 = _lex_param_1."!make"($P101)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_228_1381254434.83594") :anon :lex :outer("cuid_306_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2390
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_239 
.annotate 'line', 2391
    unless_null _lex_param_1, fallback2703
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5001
  fallback2703:
    set fb_tmp_239, _lex_param_1
    repr_defined $I5001, fb_tmp_239
    unless $I5001 goto if1198_else2701 
    set $P5002, fb_tmp_239["star"]
    set $P5004, $P5002
    goto if1198_end2702
  if1198_else2701:
    null $P5003
    set $P5004, $P5003
  if1198_end2702:
    unless_null $P5004, vivi_11992704
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_11992704:
    unless $P5004 goto if1197_else2699 
    new $P5006, 'Hash'
    $P5007 = "&next_argument"($P5006)
    set $P5008, $P5007
    goto if1197_end2700
  if1197_else2699:
    set $S5001, _lex_param_1
    box $P5009, $S5001
    set $P5008, $P5009
  if1197_end2700:
    $P5010 = _lex_param_1."!make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_325_1381254434.83594") :anon :lex :outer("cuid_301_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2405
    .const 'Sub' $P5003 = 'cuid_229_1381254434.83594' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_230_1381254434.83594' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_229_1381254434.83594' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_230_1381254434.83594' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_229_1381254434.83594") :anon :lex :outer("cuid_325_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2406
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5015 = 'cuid_326_1381254434.83594' 
    capture_lex $P5015 
    .lex "$count", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_240 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    unless_null _lex_param_1, fallback2707
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5006
  fallback2707:
    set fb_tmp_240, _lex_param_1
    repr_defined $I5001, fb_tmp_240
    unless $I5001 goto if1200_else2705 
    set $P5007, fb_tmp_240["statement"]
    set $P5009, $P5007
    goto if1200_end2706
  if1200_else2705:
    null $P5008
    set $P5009, $P5008
  if1200_end2706:
    unless_null $P5009, vivi_12012708
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_12012708:
    set $P5003, $P5009
    iter $P5005, $P5009
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers2709
    push_eh $P5012
  for_next2710:
    unless $P5005, for_done2712
    shift $P5013, $P5005
  for_redo2711:
    .const 'Sub' $P5011 = 'cuid_326_1381254434.83594' 
    capture_lex $P5011
    $P5003 = $P5011($P5013)
    goto for_next2710
  for_handlers2709:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next2710
    eq $P5012, .CONTROL_LOOP_REDO, for_redo2711
  for_done2712:
    pop_eh 
.annotate 'line', 2409
    $P5014 = _lex_param_1."!make"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_326_1381254434.83594") :anon :lex :outer("cuid_229_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$count"
    set $I5002, $P5001
.annotate 'line', 2408
    $P5002 = _lex_param_0."ast"()
    set $I5003, $P5002
    add $I5001, $I5002, $I5003
    box $P5003, $I5001
    store_lex "$count", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_230_1381254434.83594") :anon :lex :outer("cuid_325_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
.annotate 'line', 2412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_241 
    .local pmc fb_tmp_242 
    .local pmc fb_tmp_243 
.annotate 'line', 2413
    unless_null _lex_param_1, fallback2719
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5001
  fallback2719:
    set fb_tmp_241, _lex_param_1
    repr_defined $I5001, fb_tmp_241
    unless $I5001 goto if1204_else2717 
    set $P5002, fb_tmp_241["directive"]
    set $P5004, $P5002
    goto if1204_end2718
  if1204_else2717:
    null $P5003
    set $P5004, $P5003
  if1204_end2718:
    unless_null $P5004, vivi_12052720
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5004, $P5005
  vivi_12052720:
    set $P5015, $P5004
    unless $P5004 goto if1203_end2716 
    unless_null _lex_param_1, fallback2725
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set _lex_param_1, $P5006
  fallback2725:
    set fb_tmp_243, _lex_param_1
    repr_defined $I5004, fb_tmp_243
    unless $I5004 goto if1207_else2723 
    set $P5007, fb_tmp_243["directive"]
    set $P5009, $P5007
    goto if1207_end2724
  if1207_else2723:
    null $P5008
    set $P5009, $P5008
  if1207_end2724:
    unless_null $P5009, vivi_12082726
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5009, $P5010
  vivi_12082726:
    set fb_tmp_242, $P5009
    repr_defined $I5003, fb_tmp_242
    unless $I5003 goto if1206_else2721 
    set $P5011, fb_tmp_242["idx"]
    set $P5013, $P5011
    goto if1206_end2722
  if1206_else2721:
    null $P5012
    set $P5013, $P5012
  if1206_end2722:
    unless_null $P5013, vivi_12092727
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265", 26
    set $P5013, $P5014
  vivi_12092727:
    isfalse $I5002, $P5013
    box $P5016, $I5002
    set $P5015, $P5016
  if1203_end2716:
    unless $P5015 goto if1202_else2713 
    set $I5005, 1
    goto if1202_end2714
  if1202_else2713:
    set $I5005, 0
  if1202_end2714:
    $P5017 = _lex_param_1."!make"($I5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_328_1381254434.83594") :load :init
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .const 'Sub' $P5001 = 'cuid_327_1381254434.83594' 
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
    .const 'Sub' $P5001 = "cuid_231_1381254434.83594" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048"
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
    push $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381254430.29541"
    push $P5004, "src/stage2/QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381254426.43265"
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
    push $P5004, "alt_nfa__1_1381254435.07781"
    push $P5004, "alt_nfa__2_1381254435.1077"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1381254435.17492"
    push $P5004, "alt_nfa__4_1381254435.17539"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1381254435.19486"
    push $P5004, "Ee"
    push $P5004, "+-"
    push $P5004, "\\"
    push $P5004, "alt_nfa__6_1381254435.26647"
    push $P5004, "alt_nfa__7_1381254435.27886"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1381254435.36612"
    push $P5004, "],#"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1381254435.40146"
    push $P5004, "%"
    push $P5004, "alt_nfa__10_1381254438.54841"
    push $P5004, "alt_nfa__11_1381254438.54861"
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
    push $P5004, "alt_nfa__12_1381254438.74541"
    push $P5004, "star"
    push $P5004, "alt_nfa__13_1381254438.75105"
    push $P5004, "eEfFgG"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381254422.74848"
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
    push $P5004, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381254428.34391"
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
    .const 'Sub' $P5005 = 'cuid_327_1381254434.83594' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BgAAAEAAAAAFAAAAaAAAABUAAABkAQAAgC8AADoBAAAgQwAAYnMBAAEAAAB6cwEAAQAAAIpzAQC8cwEAAAAAAAUAAAAGAAAADgAAAA8AAABEAQAAAAAAAEcBAABIAQAAXAEAAF0BAAABAAAAAAAAAMYAAAABAAAAIgEAAIYBAAABAAAA4gEAADgCAAABAAAAlAIAAAIKAAABAAAAmgsAAGwOAAABAAAA1A4AAOIQAACvAAAAShEAAKARAAABAAAAoBEAAAQVAAABAAAAqBYAAOQXAAABAAAAfBgAAPAZAAABAAAAxBoAAHAcAACvAAAAxB0AABAeAAABAAAAEB4AAE4jAAABAAAA5iQAALwmAAABAAAAJCcAADYoAAABAAAAnigAAAwqAAABAAAAaCoAAMwqAAABAAAAKCsAANIrAACvAAAALiwAAIAsAAABAAAAgCwAAPIsAAABAAAATi0AAMAtAAAAAAAA9AAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAAAAAPUAAAADAAAAAgAAAAAA9gAAAAQAAAACAAEAAAAjAAAABwAAAAIAAQAAAFkAAAAIAAAAAgABAAAAZwAAAAkAAAACAAEAAABtAAAACgAAAAIAAQAAAHIAAAALAAAAAgAAAAAA9wAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAD4AAAAAAAAAAEAAAAKAAEAAAAMAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMA/////////////////////wAAAAD5AAAAAAAAAAIAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAA+gAAAAAAAAADAAAACgAAAAAACgB/AAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAZAAAAAgABAAAAaAAAABoAAAACAAEAAABpAAAAGwAAAAIAAQAAAGoAAAAcAAAAAgABAAAAawAAAB0AAAACAAEAAABsAAAAHgAAAAIAAQAAAH8AAAAfAAAAAgABAAAAgAAAACAAAAACAAEAAACBAAAAIQAAAAIAAQAAAIIAAAAiAAAAAgABAAAAgwAAACMAAAACAAEAAACEAAAAJAAAAAIAAQAAAIUAAAAlAAAAAgABAAAAhgAAACYAAAACAAEAAACHAAAAJwAAAAIAAQAAAIgAAAAoAAAAAgABAAAAiQAAACkAAAACAAEAAACKAAAAKgAAAAIAAQAAAIsAAAArAAAAAgABAAAAjAAAACwAAAACAAEAAACNAAAALQAAAAIAAQAAAI4AAAAuAAAAAgABAAAAjwAAAC8AAAACAAEAAACQAAAAMAAAAAIAAQAAAJEAAAAxAAAAAgABAAAAkgAAADIAAAACAAEAAACTAAAAMwAAAAIAAQAAAJQAAAA0AAAAAgABAAAAlQAAADUAAAACAAEAAACWAAAANgAAAAIAAQAAAJcAAAA3AAAAAgABAAAAmAAAADgAAAACAAEAAACZAAAAOQAAAAIAAQAAAJoAAAA6AAAAAgABAAAAmwAAADsAAAACAAEAAACcAAAAPAAAAAIAAQAAAJ0AAAA9AAAAAgABAAAAngAAAD4AAAACAAEAAACfAAAAPwAAAAIAAQAAAKAAAABAAAAAAgABAAAAoQAAAEEAAAACAAEAAACiAAAAQgAAAAIAAQAAAKMAAABDAAAAAgABAAAApAAAAEQAAAACAAEAAAClAAAARQAAAAIAAQAAAKYAAABGAAAAAgABAAAApwAAAEcAAAACAAEAAACoAAAASAAAAAIAAQAAAKkAAABJAAAAAgABAAAAqgAAAEoAAAACAAEAAACrAAAASwAAAAIAAQAAAKwAAABMAAAAAgABAAAArQAAAE0AAAACAAEAAACuAAAATgAAAAIAAQAAAK8AAABPAAAAAgABAAAAsAAAAFAAAAACAAEAAACxAAAAUQAAAAIAAAAAADYAAABSAAAAAgAAAAAABAAAAFMAAAACAAAAAAAFAAAAVAAAAAIAAAAAAAYAAABVAAAAAgAAAAAABwAAAFYAAAACAAAAAAAIAAAAVwAAAAIAAAAAAAkAAABYAAAAAgAAAAAACgAAAFkAAAACAAAAAAALAAAAWgAAAAIAAAAAAAwAAABbAAAAAgAAAAAADQAAAFwAAAACAAAAAAAOAAAAXQAAAAIAAAAAAA8AAABeAAAAAgAAAAAAEAAAAF8AAAACAAAAAAARAAAAYAAAAAIAAAAAABIAAABhAAAAAgAAAAAAEwAAAGIAAAACAAAAAAAUAAAAYwAAAAIAAAAAABUAAABkAAAAAgAAAAAAFgAAAGUAAAACAAAAAAAXAAAAZgAAAAIAAAAAABgAAABnAAAAAgAAAAAAGQAAAGgAAAACAAAAAAAaAAAAaQAAAAIAAAAAABsAAABqAAAAAgAAAAAAHAAAAGsAAAACAAAAAAAdAAAAbAAAAAIAAAAAAB4AAABtAAAAAgAAAAAAHwAAAG4AAAACAAAAAAAgAAAAbwAAAAIAAAAAACEAAABwAAAAAgAAAAAAIgAAAHEAAAACAAAAAAAjAAAAcgAAAAIAAAAAACQAAABzAAAAAgAAAAAAJQAAAHQAAAACAAAAAAAmAAAAdQAAAAIAAAAAACcAAAB2AAAAAgAAAAAAKAAAAHcAAAACAAAAAAApAAAAeAAAAAIAAAAAACoAAAB5AAAAAgAAAAAAKwAAAHoAAAACAAAAAAAsAAAAewAAAAIAAAAAAC0AAAB8AAAAAgAAAAAAMAAAAH0AAAACAAAAAAAyAAAAfgAAAAIAAAAAADMAAAB/AAAAAgAAAAAANAAAAIAAAAACAAAAAAA1AAAAgQAAAAIAAAAAADcAAACCAAAAAgAAAAAAOAAAAIMAAAACAAAAAAA5AAAAhAAAAAIAAAAAADoAAACFAAAAAgAAAAAAOwAAAIYAAAACAAAAAAA8AAAAhwAAAAIAAAAAAD0AAACIAAAAAgAAAAAAPgAAAIkAAAACAAAAAAA/AAAAigAAAAIAAAAAAEAAAACLAAAAAgAAAAAAQQAAAIwAAAACAAAAAABCAAAAjQAAAAIAAAAAAEMAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAAwAAAAIAAQAAAGcAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgABAAAAaQAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGgAAAAEAAQACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGgAAAAMAAgABAAAAZwAAAAoACQAAAI4AAAAEAAAAAAAAAAAAjwAAAAQAAQAAAAAAAACQAAAABAACAAAAAAAAAJEAAAAEAAMAAAAAAAAAkgAAAAQABAAAAAAAAACTAAAABAAFAAAAAAAAAJQAAAAEAAYAAAAAAAAAlQAAAAQABwAAAAAAAACWAAAABAAIAAAAAAAAAAIAAAAAAAMAAAADAP////////////////////8AAAAA+wAAAAAAAABEAAAACgAAAAAACgAsAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACXAAAAAgAAAAAARQAAAJgAAAACAAAAAABGAAAAmQAAAAIAAAAAAEcAAACaAAAAAgAAAAAASAAAAIcAAAACAAAAAABJAAAAWgAAAAIAAAAAAEoAAABTAAAAAgAAAAAASwAAAF4AAAACAAAAAABMAAAAXwAAAAIAAAAAAE0AAABrAAAAAgAAAAAATgAAAGwAAAACAAAAAABPAAAAYwAAAAIAAAAAAFAAAABlAAAAAgAAAAAAUQAAAGcAAAACAAAAAABSAAAAaQAAAAIAAAAAAFMAAACCAAAAAgAAAAAAVAAAAGEAAAACAAAAAABVAAAAYgAAAAIAAAAAAFYAAABvAAAAAgAAAAAAVwAAAHAAAAACAAAAAABYAAAAcQAAAAIAAAAAAFkAAAByAAAAAgAAAAAAWgAAAHMAAAACAAAAAABbAAAAdAAAAAIAAAAAAFwAAAB1AAAAAgAAAAAAXQAAAHYAAAACAAAAAABeAAAAdwAAAAIAAAAAAF8AAAB4AAAAAgAAAAAAYAAAAHkAAAACAAAAAABhAAAAegAAAAIAAAAAAGIAAAB7AAAAAgAAAAAAYwAAAHwAAAACAAAAAABkAAAAfQAAAAIAAAAAAGUAAAB+AAAAAgAAAAAAZgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABEAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAABEAAAAAwD/////////////////////AAAAAPwAAAAAAAAAZwAAAAoAAAAAAAoAHgAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAmwAAAAIAAAAAAGgAAACcAAAAAgAAAAAAaQAAAJ0AAAACAAAAAABqAAAAngAAAAIAAAAAAGsAAACfAAAAAgAAAAAAbAAAAKAAAAACAAAAAABtAAAAoQAAAAIAAAAAAG4AAACiAAAAAgAAAAAAbwAAAKMAAAACAAAAAABwAAAApAAAAAIAAAAAAHEAAAClAAAAAgAAAAAAcgAAAKYAAAACAAAAAABzAAAApwAAAAIAAAAAAHQAAACoAAAAAgAAAAAAdQAAAKkAAAACAAAAAAB2AAAAqgAAAAIAAAAAAHcAAACrAAAAAgAAAAAAeAAAAKwAAAACAAAAAAB5AAAArQAAAAIAAAAAAHoAAACuAAAAAgAAAAAAewAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABnAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAABnAAAAAwD/////////////////////AAAAAP0AAAAAAAAAfAAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAB8AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/gAAAAAAAAB/AAAACgAAAAAACgA1AAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACwAAAAAgAAAAAAgAAAALEAAAACAAAAAACBAAAAsgAAAAIAAAAAAIIAAACzAAAAAgAAAAAAgwAAAJwAAAACAAAAAACEAAAAtAAAAAIAAAAAAIUAAAC1AAAAAgAAAAAAhgAAALYAAAACAAAAAACHAAAAtwAAAAIAAAAAAIgAAAC4AAAAAgAAAAAAiQAAALkAAAACAAAAAACKAAAAgAAAAAIAAAAAAIsAAACkAAAAAgAAAAAAjAAAALoAAAACAAAAAACNAAAAuwAAAAIAAAAAAI4AAAC8AAAAAgAAAAAAjwAAAL0AAAACAAAAAACQAAAAvgAAAAIAAAAAAJEAAAC/AAAAAgAAAAAAkgAAAMAAAAACAAAAAACTAAAAwQAAAAIAAAAAAJQAAADCAAAAAgAAAAAAlQAAAMMAAAACAAAAAACWAAAAxAAAAAIAAAAAAJcAAADFAAAAAgAAAAAAmAAAAMYAAAACAAAAAACZAAAAGwAAAAIAAAAAAJoAAADHAAAAAgAAAAAAmwAAAMgAAAACAAAAAACcAAAAyQAAAAIAAAAAAJ0AAADKAAAAAgAAAAAAngAAAMsAAAACAAAAAACfAAAAzAAAAAIAAAAAAKAAAACfAAAAAgAAAAAAoQAAAM0AAAACAAAAAACiAAAAzgAAAAIAAAAAAKMAAADPAAAAAgAAAAAApAAAANAAAAACAAAAAAClAAAA0QAAAAIAAAAAAKYAAADSAAAAAgAAAAAApwAAANMAAAACAAAAAACoAAAArgAAAAIAAAAAAKkAAADUAAAAAgAAAAAA/wAAAAAAAAAAAAAABAAAAAAAAAACAAAAAAB/AAAAAgACAAAAGgAAAAIAAAAAAHwAAAACAAAAAAAAAQAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAAGgAAAAIAAgAAABoAAAABAAIAAgAAABoAAAACAAIAAAAaAAAAAQACAAIAAAAaAAAAAQABAAIAAgAAABoAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGgAAAAMAAgAAAAAAfwAAAAoACwAAANUAAAAEAAAAAAAAAAAA1gAAAAQAAQAAAAAAAADXAAAABAACAAAAAAAAANgAAAAEAAMAAAAAAAAA2QAAAAQABAAAAAAAAADaAAAABAAFAAAAAAAAANsAAAAEAAYAAAAAAAAA3AAAAAQABwAAAAAAAADdAAAABAAIAAAAAAAAAN4AAAAEAAkAAAAAAAAA3wAAAAQACgAAAAAAAAD/////////////////////AAAAAAEBAAAAAAAAqgAAAAoAAAAAAAoADwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAA4AAAAAIAAAAAAKsAAADhAAAAAgAAAAAArAAAAOIAAAACAAAAAACtAAAA4wAAAAIAAAAAAK4AAADkAAAAAgAAAAAArwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACqAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGgAAAAMAAgAAAAAAqgAAAAoAAgAAAOUAAAAEAAAAAAAAAAAA5gAAAAQAAQAAAAAAAAD/////////////////////AAAAAAIBAAAAAAAAsAAAAAoAAAAAAAoAEwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAAAAACxAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAA5wAAAAIAAAAAALIAAACwAAAAAgAAAAAAswAAAOgAAAACAAAAAAC0AAAA6QAAAAIAAAAAALUAAADqAAAAAgAAAAAAtgAAAOsAAAACAAAAAAC3AAAA7AAAAAIAAAAAALgAAADtAAAAAgAAAAAAuQAAABsAAAACAAAAAAC6AAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAALAAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAQACAAIAAAAaAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAALAAAAAKAAQAAADuAAAABAAAAAAAAAAAAOYAAAAEAAEAAAAAAAAA7wAAAAQAAgAAAAAAAADwAAAABAADAAAAAAAAAP////////////////////8AAAAAAwEAAAAAAAC7AAAACgAAAAAACgAXAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACwAAAAAgAAAAAAvAAAAPEAAAACAAAAAAC9AAAA8gAAAAIAAAAAAL4AAADzAAAAAgAAAAAAvwAAAPQAAAACAAAAAADAAAAA9QAAAAIAAAAAAMEAAAD2AAAAAgAAAAAAwgAAAPcAAAACAAAAAADDAAAA+AAAAAIAAAAAAMQAAAD5AAAAAgAAAAAAxQAAAPoAAAACAAAAAADGAAAA+wAAAAIAAAAAAMcAAAD8AAAAAgAAAAAAyAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAC7AAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAEAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAAC7AAAACgAIAAAA/QAAAAQAAAAAAAAAAAD+AAAABAABAAAAAAAAAP8AAAAEAAIAAAAAAAAAAAEAAAQAAwAAAAAAAAABAQAABAAEAAAAAAAAAAIBAAAEAAUAAAAAAAAAAwEAAAQABgAAAAAAAAAEAQAABAAHAAAAAAAAAP////////////////////8AAAAABAEAAAAAAADJAAAACgAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUBAAAAAAAAygAAAAoAAAAAAAoAVwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAGQAAAAIAAQAAAGgAAAAaAAAAAgABAAAAaQAAABsAAAACAAEAAABqAAAAHAAAAAIAAQAAAGsAAAAdAAAAAgABAAAAbAAAAB4AAAACAAEAAAB/AAAAHwAAAAIAAQAAAIAAAAAgAAAAAgABAAAAgQAAACEAAAACAAEAAACCAAAAIgAAAAIAAQAAAIMAAAAjAAAAAgABAAAAhAAAACQAAAACAAEAAACFAAAAJQAAAAIAAQAAAIYAAAAmAAAAAgABAAAAhwAAACcAAAACAAEAAACIAAAAKAAAAAIAAQAAAIkAAAApAAAAAgABAAAAigAAACoAAAACAAEAAACLAAAAKwAAAAIAAQAAAIwAAAAsAAAAAgABAAAAjQAAAC0AAAACAAEAAACOAAAALgAAAAIAAQAAAI8AAAAvAAAAAgABAAAAkAAAADAAAAACAAEAAACRAAAAMQAAAAIAAQAAAJIAAAAyAAAAAgABAAAAkwAAADMAAAACAAEAAACUAAAANAAAAAIAAQAAAJUAAAA1AAAAAgABAAAAlgAAADYAAAACAAEAAACXAAAANwAAAAIAAQAAAJgAAAA4AAAAAgABAAAAmQAAADkAAAACAAEAAACaAAAAOgAAAAIAAQAAAJsAAAA7AAAAAgABAAAAnAAAADwAAAACAAEAAACdAAAAPQAAAAIAAQAAAJ4AAAA+AAAAAgABAAAAnwAAAD8AAAACAAEAAACgAAAAQAAAAAIAAQAAAKEAAABBAAAAAgABAAAAogAAAEIAAAACAAEAAACjAAAAQwAAAAIAAQAAAKQAAABEAAAAAgABAAAApQAAAEUAAAACAAEAAACmAAAARgAAAAIAAQAAAKcAAABHAAAAAgABAAAAqAAAAEgAAAACAAEAAACpAAAASQAAAAIAAQAAAKoAAABKAAAAAgABAAAAqwAAAEsAAAACAAEAAACsAAAATAAAAAIAAQAAAK0AAABNAAAAAgABAAAArgAAAE4AAAACAAEAAACvAAAATwAAAAIAAQAAALAAAABQAAAAAgABAAAAsQAAAFEAAAACAAEAAACyAAAABQEAAAIAAAAAAMsAAACAAAAAAgAAAAAAzAAAAAYBAAACAAAAAADNAAAABwEAAAIAAAAAAM4AAAAIAQAAAgAAAAAAzwAAAAkBAAACAAAAAADQAAAACgEAAAIAAAAAANEAAAALAQAAAgAAAAAA0gAAAAwBAAACAAAAAADTAAAADQEAAAIAAAAAANQAAAAOAQAAAgAAAAAA1QAAAA8BAAACAAAAAADWAAAAEAEAAAIAAAAAANcAAAARAQAAAgAAAAAA2AAAABIBAAACAAAAAADZAAAAEwEAAAIAAAAAANoAAAAUAQAAAgAAAAAA2wAAABUBAAACAAAAAADcAAAAFgEAAAIAAAAAAN0AAAAXAQAAAgAAAAAA3gAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAADKAAAAAgABAAAAZwAAAAIAAgAAABoAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABpAAAAAAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAaAAAAAQABAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAaAAAAAwACAAEAAABnAAAACgAJAAAAjgAAAAQAAAAAAAAAAACPAAAABAABAAAAAAAAAJAAAAAEAAIAAAAAAAAAkQAAAAQAAwAAAAAAAACSAAAABAAEAAAAAAAAAJMAAAAEAAUAAAAAAAAAlAAAAAQABgAAAAAAAACVAAAABAAHAAAAAAAAAJYAAAAEAAgAAAAAAAAAAgAAAAAAygAAAAMA/////////////////////wAAAAAGAQAAAAAAAN8AAAAKAAAAAAAKABoAAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAAUBAAACAAAAAADgAAAABgEAAAIAAAAAAOIAAAAIAQAAAgAAAAAA4wAAAAkBAAACAAAAAADkAAAACgEAAAIAAAAAAOUAAAALAQAAAgAAAAAA5gAAAAwBAAACAAAAAADnAAAADQEAAAIAAAAAAOgAAAAOAQAAAgAAAAAA6QAAAA8BAAACAAAAAADqAAAAEAEAAAIAAAAAAOsAAAARAQAAAgAAAAAA7AAAABMBAAACAAAAAADtAAAAFAEAAAIAAAAAAO4AAAAVAQAAAgAAAAAA7wAAABcBAAACAAAAAADwAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAN8AAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAN8AAAADAP////////////////////8AAAAABwEAAAAAAADxAAAACgAAAAAACgAMAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAFAQAAAgAAAAAA8gAAAAYBAAACAAAAAADzAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAPEAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAPEAAAADAP////////////////////8AAAAAMgEAAAAAAAD1AAAACgAUAAAAWwEAAAIABQAAAAMAAABeAQAAAgAFAAAACAAAAF8BAAACAAUAAAAMAAAAYAEAAAIABQAAACIAAABhAQAAAgAFAAAAKwAAAGIBAAACAAUAAAAxAAAAYwEAAAIABQAAADcAAABkAQAAAgAFAAAAPAAAAGUBAAACAAUAAABAAAAAZgEAAAIABQAAAEUAAABnAQAAAgAFAAAASgAAAGgBAAACAAUAAABUAAAAaQEAAAIABQAAAFYAAABqAQAAAgAFAAAAXQAAAGsBAAACAAUAAABiAAAAbAEAAAIABQAAAGcAAABtAQAAAgAFAAAAbAAAAG4BAAACAAUAAAB1AAAAbwEAAAIABQAAAHgAAABwAQAAAgAFAAAAggAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAD1AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA9QAAAAMA/////////////////////wAAAAAzAQAAAAAAAPYAAAAKAAEAAABxAQAAAgABAAAAAwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAD2AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA9gAAAAMA/////////////////////wAAAAA0AQAAAAAAAPcAAAAKAAYAAAByAQAAAgAAAAAAAwAAAFkBAAACAAAAAABEAAAAcwEAAAIAAAAAADUBAAB0AQAAAgAAAAAAfwAAAHUBAAACAAAAAAA2AQAAdgEAAAIAAAAAALsAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAA9wAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAPcAAAADAP////////////////////8AAAAANwEAAAAAAAAAAQAAAwAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAEAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADgBAAAAAAAANQEAAAoAAgAAAHoBAAACAAAAAABnAAAAewEAAAIAAAAAAHwAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAANQEAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAADUBAAADAP////////////////////8AAAAAOQEAAAAAAAA2AQAACgACAAAAfAEAAAIAAAAAAKoAAAB9AQAAAgAAAAAAsAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAA2AQAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAANgEAAAMA/////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAACAAAABQAAAAAAAAABAAAAAgAAAAcAAAAUAAAAAQAAAAIAAAAHAAAADAEAAAEAAAACAAAABwAAACIBAAABAAAAAgAAAAcAAAA4AQAAAQAAAAIAAAAHAAAATgEAAAEAAAACAAAABwAAAGQBAAABAAAAAgAAAAcAAAB6AQAAAQAAAAIAAAAHAAAAkAEAAAEAAAACAAAABwAAAPABAAABAAAAAgAAAAcAAABeAgAAAQAAAAIAAAAHAAAA7AIAAAEAAAACAAAABwAAAOgDAAABAAAAAgAAAAcAAAA+BAAAAQAAAAIAAAAFAAAAngQAAAEAAAACAAAABwAAALIEAAABAAAAAgAAAAcAAACMBQAAAQAAAAIAAAAHAAAATgcAAAEAAAACAAAABwAAAHAIAAABAAAAAgAAAAcAAAB2CQAAAQAAAAIAAAAHAAAAlAoAAAEAAAACAAAABwAAAJoLAAABAAAAAgAAAAcAAAC4DAAAAQAAAAIAAAAHAAAAvg0AAAEAAAACAAAABwAAANwOAAABAAAAAgAAAAcAAADiDwAAAQAAAAIAAAAHAAAASBQAAAEAAAACAAAABwAAANQaAAABAAAAAgAAAAcAAADuGwAAAQAAAAIAAAAHAAAABBwAAAEAAAACAAAABwAAALocAAABAAAAAgAAAAcAAABeHQAAAQAAAAIAAAAHAAAAGB4AAAEAAAACAAAABwAAANIeAAABAAAAAgAAAAcAAACMHwAAAQAAAAIAAAAHAAAARiAAAAEAAAACAAAABwAAAAAhAAABAAAAAgAAAAcAAAC6IQAAAQAAAAIAAAAHAAAAPiMAAAEAAAACAAAABwAAAMIkAAABAAAAAgAAAAcAAACKJQAAAQAAAAIAAAAHAAAAUiYAAAEAAAACAAAABwAAAJwnAAABAAAAAgAAAAcAAADyJwAAAQAAAAIAAAAHAAAASCgAAAEAAAACAAAABwAAAJQoAAABAAAAAgAAAAcAAAAoKQAAAQAAAAIAAAAHAAAALioAAAEAAAACAAAABQAAAJYuAAABAAAAAgAAAAUAAACqLgAAAQAAAAIAAAAFAAAAvi4AAAEAAAACAAAABQAAANIuAAABAAAAAgAAAAcAAADmLgAAAQAAAAIAAAAHAAAAti8AAAEAAAACAAAABQAAAAwwAAABAAAAAgAAAAUAAAAgMAAAAQAAAAIAAAAFAAAANDAAAAEAAAACAAAABQAAAEgwAAABAAAAAgAAAAUAAABcMAAAAQAAAAIAAAAFAAAAcDAAAAEAAAACAAAABQAAAIQwAAABAAAAAgAAAAUAAACYMAAAAQAAAAIAAAAFAAAArDAAAAEAAAACAAAABQAAAMAwAAABAAAAAAAAAAQAAADUMAAAAAAAAAIAAAAFAAAA1DAAAAEAAAACAAAABQAAAOgwAAABAAAAAgAAAAUAAAD8MAAAAQAAAAIAAAAFAAAAEDEAAAEAAAACAAAABQAAACQxAAABAAAAAgAAAAUAAAA4MQAAAQAAAAIAAAAFAAAATDEAAAEAAAACAAAABQAAAGAxAAABAAAAAgAAAAUAAAB0MQAAAQAAAAIAAAAFAAAAiDEAAAEAAAACAAAABQAAAJwxAAABAAAAAgAAAAUAAACwMQAAAQAAAAIAAAAFAAAAxDEAAAEAAAACAAAABQAAANgxAAABAAAAAgAAAAUAAADsMQAAAQAAAAIAAAAFAAAAADIAAAEAAAACAAAABQAAABQyAAABAAAAAgAAAAUAAAAoMgAAAQAAAAIAAAAFAAAAPDIAAAEAAAACAAAABQAAAFAyAAABAAAAAgAAAAUAAABkMgAAAQAAAAIAAAAFAAAAeDIAAAEAAAACAAAABQAAAIwyAAABAAAAAgAAAAUAAACgMgAAAQAAAAIAAAAFAAAAtDIAAAEAAAACAAAABQAAAMgyAAABAAAAAgAAAAUAAADcMgAAAQAAAAIAAAAFAAAA8DIAAAEAAAACAAAABQAAAAQzAAABAAAAAgAAAAUAAAAYMwAAAQAAAAIAAAAFAAAALDMAAAEAAAACAAAABQAAAEAzAAABAAAAAgAAAAUAAABUMwAAAQAAAAIAAAAFAAAAaDMAAAEAAAAAAAAABQAAAHwzAAAAAAAAAgAAAAUAAAB8MwAAAQAAAAIAAAAFAAAAkDMAAAEAAAACAAAABQAAAKQzAAABAAAAAgAAAAUAAAC4MwAAAQAAAAIAAAAFAAAAzDMAAAEAAAACAAAABQAAAOAzAAABAAAAAgAAAAUAAAD0MwAAAQAAAAIAAAAFAAAACDQAAAEAAAACAAAABQAAABw0AAABAAAAAgAAAAUAAAAwNAAAAQAAAAIAAAAFAAAARDQAAAEAAAACAAAABQAAAFg0AAABAAAAAgAAAAUAAABsNAAAAQAAAAIAAAAFAAAAgDQAAAEAAAACAAAABQAAAJQ0AAABAAAAAgAAAAUAAACoNAAAAQAAAAIAAAAFAAAAvDQAAAEAAAACAAAABQAAANA0AAABAAAAAgAAAAUAAADkNAAAAQAAAAIAAAAFAAAA+DQAAAEAAAAAAAAABgAAAAw1AAAAAAAAAgAAAAUAAAAMNQAAAQAAAAIAAAAFAAAAIDUAAAEAAAAAAAAABwAAADQ1AAAAAAAAAgAAAAUAAAA0NQAAAQAAAAIAAAAFAAAASDUAAAEAAAACAAAABQAAAFw1AAABAAAAAgAAAAUAAABwNQAAAQAAAAIAAAAFAAAAhDUAAAEAAAACAAAABQAAAJg1AAABAAAAAgAAAAUAAACsNQAAAQAAAAIAAAAFAAAAwDUAAAEAAAACAAAABQAAANQ1AAABAAAAAgAAAAUAAADoNQAAAQAAAAIAAAAFAAAA/DUAAAEAAAACAAAABQAAABA2AAABAAAAAgAAAAUAAAAkNgAAAQAAAAIAAAAFAAAAODYAAAEAAAACAAAABQAAAEw2AAABAAAAAgAAAAUAAABgNgAAAQAAAAIAAAAFAAAAdDYAAAEAAAACAAAABQAAAIg2AAABAAAAAgAAAAUAAACcNgAAAQAAAAIAAAAFAAAAsDYAAAEAAAACAAAABQAAAMQ2AAABAAAAAgAAAAUAAADYNgAAAQAAAAIAAAAFAAAA7DYAAAEAAAACAAAABQAAAAA3AAABAAAAAgAAAAUAAAAUNwAAAQAAAAIAAAAFAAAAKDcAAAEAAAACAAAABQAAADw3AAABAAAAAgAAAAUAAABQNwAAAQAAAAIAAAAFAAAAZDcAAAEAAAACAAAABQAAAHg3AAABAAAAAgAAAAUAAACMNwAAAQAAAAIAAAAFAAAAoDcAAAEAAAACAAAABQAAALQ3AAABAAAAAgAAAAUAAADINwAAAQAAAAIAAAAFAAAA3DcAAAEAAAACAAAABQAAAPA3AAABAAAAAgAAAAUAAAAEOAAAAQAAAAIAAAAFAAAAGDgAAAEAAAACAAAABQAAACw4AAABAAAAAgAAAAUAAABAOAAAAQAAAAIAAAAFAAAAVDgAAAEAAAACAAAABQAAAGg4AAABAAAAAAAAAAgAAAB8OAAAAAAAAAIAAAAFAAAAfDgAAAEAAAACAAAABQAAAJA4AAABAAAAAgAAAAUAAACkOAAAAQAAAAIAAAAFAAAAuDgAAAEAAAACAAAABQAAAMw4AAABAAAAAAAAAAkAAADgOAAAAAAAAAIAAAAFAAAA4DgAAAEAAAACAAAABQAAAPQ4AAABAAAAAgAAAAUAAAAIOQAAAQAAAAIAAAAFAAAAHDkAAAEAAAACAAAABQAAADA5AAABAAAAAgAAAAUAAABEOQAAAQAAAAIAAAAFAAAAWDkAAAEAAAACAAAABQAAAGw5AAABAAAAAgAAAAUAAACAOQAAAQAAAAIAAAAFAAAAlDkAAAEAAAAAAAAACgAAAKg5AAAAAAAAAgAAAAUAAACoOQAAAQAAAAIAAAAFAAAAvDkAAAEAAAACAAAABQAAANA5AAABAAAAAgAAAAUAAADkOQAAAQAAAAIAAAAFAAAA+DkAAAEAAAACAAAABQAAAAw6AAABAAAAAgAAAAUAAAAgOgAAAQAAAAIAAAAFAAAANDoAAAEAAAACAAAABQAAAEg6AAABAAAAAgAAAAUAAABcOgAAAQAAAAIAAAAFAAAAcDoAAAEAAAACAAAABQAAAIQ6AAABAAAAAgAAAAUAAACYOgAAAQAAAAAAAAALAAAArDoAAAAAAAAAAAAADAAAAKw6AAAAAAAAAgAAAAcAAACsOgAAAQAAAAIAAAAFAAAAljsAAAEAAAACAAAABwAAAKo7AAABAAAAAgAAAAcAAACYPQAAAQAAAAIAAAAHAAAArj0AAAEAAAACAAAABwAAAIY/AAABAAAAAgAAAAcAAADyQAAAAQAAAAIAAAAHAAAAykIAAAEAAAACAAAABwAAAKJEAAABAAAAAgAAAAcAAAB6RgAAAQAAAAIAAAAHAAAAUkgAAAEAAAACAAAABwAAAC5KAAABAAAAAgAAAAcAAAAKTAAAAQAAAAIAAAAHAAAAdk0AAAEAAAACAAAABwAAAE5PAAABAAAAAgAAAAcAAABkTwAAAQAAAAIAAAAHAAAAhFAAAAEAAAACAAAABwAAADxRAAABAAAAAgAAAAcAAAAqUgAAAQAAAAIAAAAHAAAAPFQAAAEAAAAAAAAADQAAAGhVAAAAAAAAAgAAAAUAAABoVQAAAQAAAAIAAAAHAAAAfFUAAAEAAAACAAAABQAAAM5VAAABAAAAAgAAAAUAAADiVQAAAQAAAAIAAAAFAAAA9lUAAAEAAAACAAAABQAAAApWAAABAAAAAgAAAAUAAAAeVgAAAQAAAAIAAAAFAAAAMlYAAAEAAAACAAAABQAAAEZWAAABAAAAAgAAAAUAAABaVgAAAQAAAAIAAAAFAAAAblYAAAEAAAACAAAABQAAAIJWAAABAAAAAgAAAAUAAACWVgAAAQAAAAIAAAAFAAAAqlYAAAEAAAACAAAABQAAAL5WAAABAAAAAgAAAAUAAADSVgAAAQAAAAIAAAAFAAAA5lYAAAEAAAAAAAAADgAAAPpWAAAAAAAAAgAAAAUAAAD6VgAAAQAAAAIAAAAFAAAADlcAAAEAAAADAAAAAAAAACJXAAABAAAAAAAAAA8AAAAyVwAAAAAAAAAAAAAQAAAAMlcAAAAAAAAAAAAAEQAAADJXAAAAAAAAAwAAAAAAAAAyVwAAAQAAAAMAAAAAAAAAQlcAAAEAAAAEAAAABwAAAFJXAAABAAAABAAAAAcAAAAqYAAAAQAAAAQAAAAHAAAACmQAAAEAAAAEAAAABgAAAJpmAAABAAAABAAAAAcAAADaZgAAAQAAAAIAAAAFAAAAUmwAAAEAAAAAAAAAEgAAAGZsAAAAAAAABAAAAAcAAABmbAAAAQAAAAQAAAAHAAAAOm4AAAEAAAAEAAAABwAAADZwAAABAAAABAAAAAoAAACicgAAAQAAAAQAAAAHAAAAsnIAAAEAAAAEAAAABwAAAFp3AAABAAAABAAAAAcAAACKeQAAAQAAAAEAAAADAAAAanoAAAEAAAABAAAAAwAAABh7AAABAAAAAQAAAAMAAAAsigAAAQAAAAEAAAADAAAAZosAAAEAAAABAAAAAwAAACqeAAABAAAAAQAAAAMAAABMpQAAAQAAAAEAAAADAAAAOq0AAAEAAAABAAAAAwAAAM60AAABAAAAAQAAAAMAAAC0uQAAAQAAAAEAAAADAAAAmr4AAAEAAAABAAAAAwAAAMS/AAABAAAABAAAAAkAAACYxAAAAQAAAAQAAAAJAAAAvMQAAAEAAAAEAAAACQAAAOjEAAABAAAABAAAAAkAAAAUxQAAAQAAAAQAAAAJAAAAOMUAAAEAAAAEAAAACQAAAGTFAAABAAAABAAAAAkAAACQxQAAAQAAAAQAAAAJAAAAtMUAAAEAAAAEAAAACQAAAODFAAABAAAABAAAAAkAAAAExgAAAQAAAAQAAAAJAAAAKMYAAAEAAAAEAAAACQAAAFTGAAABAAAABAAAAAkAAAB4xgAAAQAAAAQAAAAJAAAAnMYAAAEAAAAEAAAACQAAAMDGAAABAAAABAAAAAkAAADkxgAAAQAAAAQAAAAJAAAACMcAAAEAAAAEAAAACQAAADTHAAABAAAABAAAAAkAAABgxwAAAQAAAAQAAAAJAAAAjMcAAAEAAAAEAAAACQAAALjHAAABAAAABAAAAAkAAADkxwAAAQAAAAQAAAAJAAAAEMgAAAEAAAAEAAAACQAAADTIAAABAAAABAAAAAkAAABYyAAAAQAAAAEAAAADAAAAfMgAAAEAAAABAAAAAwAAAPD1AAABAAAAAQAAAAMAAACk+AAAAQAAAAEAAAADAAAA5ioBAAEAAAABAAAAAwAAACwsAQABAAAAAQAAAAMAAACCLgEAAQAAAAMAAAAAAAAApi8BAAEAAAADAAAAAAAAALYvAQABAAAAAwAAAAAAAADGLwEAAQAAAAAAAAATAAAA1i8BAAAAAAAAAAAAFAAAANYvAQAAAAAABAAAAAMAAADWLwEAAQAAAAMAAAAAAAAAIjABAAEAAAADAAAAAAAAADIwAQABAAAACwAAAAAAAAAAAAEAAQABAAEAAwALAAAAAAABAAAACgAEAAAAXAAAAAUAAAAAAAAAAEAYAQAABAAAAAAAAAAAAFQAAAAFAAAAAAAAAPA/XQAAAAUAAAAAAAAAAEAHAAQAAAAHAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBcAAAABAABAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFQAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAXQAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAIAAAABAAEAAQABAAEAAwALAAAAAAADAAAAAQABAAEAAQABAAMACwAAAAAABAAAAAEAAQABAAEAAQADAAsAAAAAAAUAAAABAAEAAQABAAEAAwALAAAAAAAGAAAAAQABAAEAAQABAAMACwAAAAAABwAAAAEAAQABAAEAAQADAAsAAAAAAAgAAAAKAAIAAABYAAAABQAAAAAAAADwPxgBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAkAAAAKAAMAAAAZAQAABQAAAAAAAADwP1UAAAAFAAAAAAAAAPA/GAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBVAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACgAAAAoAAwAAABkBAAAFAAAAAAAAAPA/VgAAAAUAAAAAAAAA8D8YAQAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFYAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAsAAAAKAAQAAAAZAQAABAABAAAAAAAAAFcAAAAEAAEAAAAAAAAAGAEAAAQAAAAAAAAAAABZAAAABAABAAAAAAAAAAcAAgAAAAcAAAAAAAcABgAAAAQACAAAAAAAAAAGAFcAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAWQAAAAQAAAAAAAAAAAAKAAEAAAAaAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVwAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBZAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAAAwAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAADQAAAAoAAgAAAFQAAAAFAAAAAAAAAPA/GAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBeAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAACgAEAAAAhAAAAAUAAAAAAAAA8D8YAQAABAAAAAAAAAAAAGIAAAAFAAAAAAAAAABAhQAAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGIAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhQAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABAAAAAKAAUAAAAYAQAABAAAAAAAAAAAAG4AAAAFAAAAAAAAAPA/hAAAAAUAAAAAAAAA8D9iAAAABQAAAAAAAAAAQIUAAAAFAAAAAAAAAPA/BAAAAAAAAAAAAAoAAQAAABsBAAAHAAMAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBuAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYgAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCFAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAABEAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAEgAAAAoAAgAAABgBAAAEAAAAAAAAAAAAYwAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABMAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGABwBAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAUAAAACgACAAAAGAEAAAQAAAAAAAAAAABlAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZQAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFQAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAHQEAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABYAAAAKAAIAAAAYAQAABAAAAAAAAAAAAGcAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBnAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAXAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAeAQAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAGAAAAAoAAgAAABgBAAAEAAAAAAAAAAAAaQAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABkAAAAKAAYAAAAYAQAABAAAAAAAAAAAAB8BAAAFAAAAAAAAAPA/aQAAAAUAAAAAAAAA8D9nAAAABQAAAAAAAADwP2UAAAAFAAAAAAAAAPA/YwAAAAUAAAAAAAAA8D8HAAcAAAAHAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAgAAAAAAAAAEAAgAAAAAAAAABgBjAAAABAAAAAAAAAAAAAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAADAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAAFAAAAAAAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAACgACAAAAIAEAAAcABAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAAIQEAAAcAAgAAAAcABwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAADAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAAFAAAAAAAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAYwAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAaAAAACgADAAAAIgEAAAQAAQAAAAAAAAAYAQAABAAAAAAAAAAAAG0AAAAEAAEAAAAAAAAABwAQAAAABwAAAAAABwAJAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAOAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABwAAAAAACgABAAAAIwEAAAcAAwAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAJAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAUAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAcAAAAAAAEAAQADAAsAAAAAABsAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwAGAAAABQAAAAAAAAAYQAYAJQEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAEAAwALAAAAAAAdAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAB4AAAAKAAIAAAAYAQAABAAAAAAAAAAAAIUAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHwAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIAAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIQAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIgAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIwAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJAAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJQAAAAoAAwAAABgBAAAEAAAAAAAAAAAAZQAAAAUAAAAAAAAA8D9mAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAnAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAZQAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAACYAAAAKAAMAAAAYAQAABAAAAAAAAAAAAGcAAAAFAAAAAAAAAPA/aAAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAKAEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGcAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAnAAAACgACAAAAGAEAAAQAAAAAAAAAAAB+AAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACgAAAAKAAIAAAAYAQAABAAAAAAAAAAAACkBAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAKQAAAAoABAAAABgBAAAFAAAAAAAAAPA/KgEAAAUAAAAAAAAA8D8rAQAABQAAAAAAAADwPywBAAAFAAAAAAAAAPA/BwADAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAtAQAABwACAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAACAAAAAAAuAAAAAgAAAAAALwAAAAMACwAAAAAAKgAAAAoAAQAAABgBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAArAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACwAAAAKAAIAAABrAAAABAABAAAAAAAAABgBAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQAHAAEAAAACAAAAAAAxAAAAAwALAAAAAAAtAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAYAAAAFAAAAAAAAABBABAAgAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAuAQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAALgAAAAoAAgAAABgBAAAEAAAAAAAAAAAAfAAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAAC8AAAAKAAIAAAAYAQAABAAAAAAAAAAAAH0AAAAFAAAAAAAAAPA/BwAKAAAABwAAAAAABwAMAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAAYQAYALwEAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgCAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH0AAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAkAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAACgABAAAAMAEAAAcABAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH0AAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwAIAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYALwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAADAAAAABAAEAAQABAAMACwAAAAAAMQAAAAEAAQABAAEAAwALAAAAAAAyAAAAAQABAAEAAQADAAsAAAAAADMAAAABAAEAAQABAAMACwAAAAAANAAAAAoAAgAAABgBAAAEAAAAAAAAAAAAYQAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADUAAAAKAAEAAAAYAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAANgAAAAEAAQABAAEAAwALAAAAAAA3AAAAAQABAAEAAQADAAsAAAAAADgAAAABAAEAAQABAAMACwAAAAAAOQAAAAEAAQABAAEAAwALAAAAAAA6AAAAAQABAAEAAQADAAsAAAAAADsAAAABAAEAAQABAAMACwAAAAAAPAAAAAEAAQABAAEAAwALAAAAAAA9AAAAAQABAAEAAQADAAsAAAAAAD4AAAABAAEAAQABAAMACwAAAAAAPwAAAAEAAQABAAEAAwALAAAAAABAAAAAAQABAAEAAQADAAsAAAAAAEEAAAABAAEAAQABAAMACwAAAAAAQgAAAAEAAQABAAEAAwALAAAAAABDAAAAAQABAAEAAQADAAsAAAAAAEQAAAABAAEAAQABAAMACwAAAAAARQAAAAEAAQABAAEAAwALAAAAAABGAAAAAQABAAEAAQADAAsAAAAAAEcAAAABAAEAAQABAAMACwAAAAAASAAAAAEAAQABAAEAAwALAAAAAABJAAAAAQABAAEAAQADAAsAAAAAAEoAAAABAAEAAQABAAMACwAAAAAASwAAAAEAAQABAAEAAwALAAAAAABMAAAAAQABAAEAAQADAAsAAAAAAE0AAAABAAEAAQABAAMACwAAAAAATgAAAAEAAQABAAEAAwALAAAAAABPAAAAAQABAAEAAQADAAsAAAAAAFAAAAABAAEAAQABAAMACwAAAAAAUQAAAAEAAQABAAEAAwALAAAAAABSAAAAAQABAAEAAQADAAsAAAAAAFMAAAABAAEAAQABAAMACwAAAAAAVAAAAAEAAQABAAEAAwALAAAAAABVAAAAAQABAAEAAQADAAsAAAAAAFYAAAABAAEAAQABAAMACwAAAAAAVwAAAAEAAQABAAEAAwALAAAAAABYAAAAAQABAAEAAQADAAsAAAAAAFkAAAABAAEAAQABAAMACwAAAAAAWgAAAAEAAQABAAEAAwALAAAAAABbAAAAAQABAAEAAQADAAsAAAAAAFwAAAABAAEAAQABAAMACwAAAAAAXQAAAAEAAQABAAEAAwALAAAAAABeAAAAAQABAAEAAQADAAsAAAAAAF8AAAABAAEAAQABAAMACwAAAAAAYAAAAAEAAQABAAEAAwALAAAAAABhAAAAAQABAAEAAQADAAsAAAAAAGIAAAABAAEAAQABAAMACwAAAAAAYwAAAAEAAQABAAEAAwALAAAAAABkAAAAAQABAAEAAQADAAsAAAAAAGUAAAABAAEAAQABAAMACwAAAAAAZgAAAAEAAQABAAEAAwALAAAAAABnAAAAAQABAAEAAQADAAsAAAAAAGgAAAABAAEAAQABAAMACwAAAAAAaQAAAAEAAQABAAEAAwALAAAAAABqAAAAAQABAAEAAQADAAsAAAAAAGsAAAABAAEAAQABAAMACwAAAAAAbAAAAAEAAQABAAEAAwALAAAAAABtAAAAAQABAAEAAQADAAsAAAAAAG4AAAABAAEAAQABAAMACwAAAAAAbwAAAAEAAQABAAEAAwALAAAAAABwAAAAAQABAAEAAQADAAsAAAAAAHEAAAABAAEAAQABAAMACwAAAAAAcgAAAAEAAQABAAEAAwALAAAAAABzAAAAAQABAAEAAQADAAsAAAAAAHQAAAABAAEAAQABAAMACwAAAAAAdQAAAAEAAQABAAEAAwALAAAAAAB2AAAAAQABAAEAAQADAAsAAAAAAHcAAAABAAEAAQABAAMACwAAAAAAeAAAAAEAAQABAAEAAwALAAAAAAB5AAAAAQABAAEAAQADAAsAAAAAAHoAAAABAAEAAQABAAMACwAAAAAAewAAAAEAAQABAAEAAwALAAAAAAB8AAAAAQABAAEAAQADAAsAAAAAAH0AAAABAAEAAQABAAMACwAAAAAAfgAAAAEAAQABAAEAAwALAAAAAAB/AAAAAQABAAEAAQADAAsAAAAAAIAAAAABAAEAAQABAAMACwAAAAAAgQAAAAEAAQABAAEAAwALAAAAAACCAAAAAQABAAEAAQADAAsAAAAAAIMAAAABAAEAAQABAAMACwAAAAAAhAAAAAEAAQABAAEAAwALAAAAAACFAAAAAQABAAEAAQADAAsAAAAAAIYAAAABAAEAAQABAAMACwAAAAAAhwAAAAEAAQABAAEAAwALAAAAAACIAAAAAQABAAEAAQADAAsAAAAAAIkAAAABAAEAAQABAAMACwAAAAAAigAAAAEAAQABAAEAAwALAAAAAACLAAAAAQABAAEAAQADAAsAAAAAAIwAAAABAAEAAQABAAMACwAAAAAAjQAAAAEAAQABAAEAAwALAAAAAACOAAAAAQABAAEAAQADAAsAAAAAAI8AAAABAAEAAQABAAMACwAAAAAAkAAAAAEAAQABAAEAAwALAAAAAACRAAAAAQABAAEAAQADAAsAAAAAAJIAAAABAAEAAQABAAMACwAAAAAAkwAAAAEAAQABAAEAAwALAAAAAACUAAAAAQABAAEAAQADAAsAAAAAAJUAAAABAAEAAQABAAMACwAAAAAAlgAAAAEAAQABAAEAAwALAAAAAACXAAAAAQABAAEAAQADAAsAAAAAAJgAAAABAAEAAQABAAMACwAAAAAAmQAAAAEAAQABAAEAAwALAAAAAACaAAAAAQABAAEAAQADAAsAAAAAAJsAAAABAAEAAQABAAMACwAAAAAAnAAAAAEAAQABAAEAAwALAAAAAACdAAAAAQABAAEAAQADAAsAAAAAAJ4AAAABAAEAAQABAAMACwAAAAAAnwAAAAEAAQABAAEAAwALAAAAAACgAAAAAQABAAEAAQADAAsAAAAAAKEAAAABAAEAAQABAAMACwAAAAAAogAAAAEAAQABAAEAAwALAAAAAACjAAAAAQABAAEAAQADAAsAAAAAAKQAAAABAAEAAQABAAMACwAAAAAApQAAAAEAAQABAAEAAwALAAAAAACmAAAAAQABAAEAAQADAAsAAAAAAKcAAAABAAEAAQABAAMACwAAAAAAqAAAAAEAAQABAAEAAwALAAAAAACpAAAAAQABAAEAAQADAAsAAAAAAKoAAAABAAEAAQABAAMACwAAAAAAqwAAAAEAAQABAAEAAwALAAAAAACsAAAAAQABAAEAAQADAAsAAAAAAK0AAAABAAEAAQABAAMACwAAAAAArgAAAAEAAQABAAEAAwALAAAAAACvAAAAAQABAAEAAQADAAsAAAAAALAAAAABAAEAAQABAAMACwAAAAAAsQAAAAEAAQABAAEAAwALAAAAAACyAAAAAQABAAEAAQADAAsAAAAAALMAAAABAAEAAQABAAMACwAAAAAAtAAAAAEAAQABAAEAAwALAAAAAAC1AAAAAQABAAEAAQADAAsAAAAAALYAAAABAAEAAQABAAMACwAAAAAAtwAAAAEAAQABAAEAAwALAAAAAAC4AAAAAQABAAEAAQADAAsAAAAAALkAAAABAAEAAQABAAMACwAAAAAAugAAAAEAAQABAAEAAwALAAAAAAC7AAAAAQABAAEAAQADAAsAAAAAALwAAAABAAEAAQABAAMACwAAAAAAvQAAAAEAAQABAAEAAwALAAAAAAC+AAAACgACAAAAGAEAAAQAAAAAAAAAAAAGAQAABQAAAAAAAAAAQAcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAAYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAC/AAAAAQABAAEAAQADAAsAAAAAAMAAAAAKAAQAAAAYAQAABAAAAAAAAAAAAAcBAAAFAAAAAAAAAPA/EgEAAAUAAAAAAAAA8D8UAQAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcABgAAAAUAAAAAAAAAGEAGADEBAAAEAAIAAAAAAAAABQAAAAAAAAAcQAYAMQEAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAIAAAAyAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYABwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgASAQAABAAAAAAAAAAAADMBAAAHAAIAAAAHAAMAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAxAQAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAHEAGADEBAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAwQAAAAEAAQABAAEAAQADAAsAAAAAAMIAAAAKAAYAAAAYAQAABAAAAAAAAAAAABUBAAAFAAAAAAAAAPA/FgEAAAUAAAAAAAAAAEAXAQAABQAAAAAAAADwPzQBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFwEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAXAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADUBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADDAAAACgAFAAAAGAEAAAQAAAAAAAAAAAAVAQAABQAAAAAAAADwPxYBAAAFAAAAAAAAAABAFwEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAxAAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANgEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMUAAAAKAAYAAAAYAQAABAAAAAAAAAAAABUBAAAFAAAAAAAAAPA/FgEAAAUAAAAAAAAAAEAXAQAABQAAAAAAAADwPzQBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFwEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAXAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADcBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADGAAAACgAGAAAAGAEAAAQAAAAAAAAAAAAVAQAABQAAAAAAAADwPxYBAAAFAAAAAAAAAABAFwEAAAUAAAAAAAAA8D80AQAABQAAAAAAAADwPykBAAAFAAAAAAAAAPA/BwAIAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFQEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAWAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABcBAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAFwEAAAQABwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA4AQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAxwAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOQEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMgAAAAKAAYAAAAYAQAABAAAAAAAAAAAABUBAAAFAAAAAAAAAPA/FgEAAAUAAAAAAAAAAEAXAQAABQAAAAAAAADwPzQBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABYBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFwEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAXAQAABAAHAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAyQAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcwAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADKAAAACgAFAAAAGAEAAAQAAAAAAAAAAAAVAQAABQAAAAAAAADwPxYBAAAFAAAAAAAAAABAFwEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAywAAAAoABgAAABgBAAAEAAAAAAAAAAAAFQEAAAUAAAAAAAAA8D8WAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/NAEAAAUAAAAAAAAA8D8pAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFgEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAXAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABcBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOgEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMwAAAABAAEAAQABAAEAAwALAAAAAADNAAAACgAEAAAAGAEAAAQAAAAAAAAAAAAWAQAABQAAAAAAAAAAQBcBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAWAQAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABcBAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADOAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABxABgAxAQAABAADAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAzwAAAAoAAgAAADsBAAAFAAAAAAAAAPA/GAEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAABAAEAAQADAAsAAAAAANAAAAAKAAYAAABNAAAABAABAAAAAAAAABgBAAAEAAAAAAAAAAAAPAEAAAQAAQAAAAAAAAA9AQAABAABAAAAAAAAAD4BAAAEAAEAAAAAAAAAPwEAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAAAAAAAAAAAAKAAEAAABAAQAABwAFAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAA0QAAAAoAAgAAABgBAAAEAAAAAAAAAAAAQQEAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAAAAAAAAAAAAKAAEAAABCAQAABwACAAAABwACAAAABwAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAA0gAAAAEAAQABAAEAAwALAAAAAADTAAAACgABAAAAGAEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgBDAQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAA1AAAAAEAAQABAAEAAwALAAAAAADVAAAAAQABAAEAAQADAAsAAAAAANYAAAABAAEAAQABAAMACwAAAAAA1wAAAAEAAQABAAEAAwALAAAAAADYAAAAAQABAAEAAQADAAsAAAAAANkAAAABAAEAAQABAAMACwAAAAAA2gAAAAEAAQABAAEAAwALAAAAAADbAAAAAQABAAEAAQADAAsAAAAAANwAAAABAAEAAQABAAMACwAAAAAA3QAAAAEAAQABAAEAAwALAAAAAADeAAAAAQABAAEAAQADAAsAAAAAAN8AAAABAAEAAQABAAMACwAAAAAA4AAAAAEAAQABAAEAAwALAAAAAADhAAAAAQABAAEAAQADAAsAAAAAAOIAAAABAAEAAQABAAMACwAAAAAA4wAAAAEAAQABAAEAAwALAAAAAADkAAAAAQABAAEAAQADAEUBAAAHAAAAAAAKAAAAAABGAQAABwAAAAAACgAAAAAADAAAAAcAAAAAAAoAAAAAAAYASQEAAAcAAAAAAAoAPQAAAFIAAAACAAAAAAAEAAAAUwAAAAIAAAAAAAUAAABUAAAAAgAAAAAABgAAAFUAAAACAAAAAAAHAAAAVgAAAAIAAAAAAAgAAABXAAAAAgAAAAAACQAAAFgAAAACAAAAAAAKAAAAWQAAAAIAAAAAAAsAAABaAAAAAgAAAAAADAAAAFsAAAACAAAAAAANAAAAXAAAAAIAAAAAAA4AAABdAAAAAgAAAAAADwAAAF4AAAACAAAAAAAQAAAAXwAAAAIAAAAAABEAAABgAAAAAgAAAAAAEgAAAGEAAAACAAAAAAATAAAAYgAAAAIAAAAAABQAAABjAAAAAgAAAAAAFQAAAGQAAAACAAAAAAAWAAAAZQAAAAIAAAAAABcAAABmAAAAAgAAAAAAGAAAAGcAAAACAAAAAAAZAAAAaAAAAAIAAAAAABoAAABpAAAAAgAAAAAAGwAAAGoAAAACAAAAAAAcAAAAawAAAAIAAAAAAB0AAABsAAAAAgAAAAAAHgAAAG0AAAACAAAAAAAfAAAAbgAAAAIAAAAAACAAAABvAAAAAgAAAAAAIQAAAHAAAAACAAAAAAAiAAAAcQAAAAIAAAAAACMAAAByAAAAAgAAAAAAJAAAAHMAAAACAAAAAAAlAAAAdAAAAAIAAAAAACYAAAB1AAAAAgAAAAAAJwAAAHYAAAACAAAAAAAoAAAAdwAAAAIAAAAAACkAAAB4AAAAAgAAAAAAKgAAAHkAAAACAAAAAAArAAAAegAAAAIAAAAAACwAAAB7AAAAAgAAAAAALQAAAHwAAAACAAAAAAAwAAAAfQAAAAIAAAAAADIAAAB+AAAAAgAAAAAAMwAAAH8AAAACAAAAAAA0AAAAgAAAAAIAAAAAADUAAABRAAAAAgAAAAAANgAAAIEAAAACAAAAAAA3AAAAggAAAAIAAAAAADgAAACDAAAAAgAAAAAAOQAAAIQAAAACAAAAAAA6AAAAhQAAAAIAAAAAADsAAACGAAAAAgAAAAAAPAAAAIcAAAACAAAAAAA9AAAAiAAAAAIAAAAAAD4AAACJAAAAAgAAAAAAPwAAAIoAAAACAAAAAABAAAAAiwAAAAIAAAAAAEEAAACMAAAAAgAAAAAAQgAAAI0AAAACAAAAAABDAAAABwA9AAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAAMAAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAcAAAAAAAcAAQAAAAIAAQAAAGcAAAAHAAAAAAACAAEAAABnAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAAMAAAACAAEAAABnAAAAAgACAAAAGgAAAAcAAAAAAAoADAAAADQAAAAKAAIAAABUAAAABwABAAAABgBaAAAAbgAAAAcADQAAAAYAbwAAAAYAcAAAAAYAcQAAAAYAcgAAAAYAcwAAAAYAdAAAAAYAdQAAAAYAdgAAAAYAdwAAAAYAeAAAAAYAeQAAAAYAegAAAAYAewAAAFQAAAACAAAAAAAIAQAAbgAAAAIAAAAAAAkBAAAaAQAAAgAAAAAACgEAABsBAAACAAAAAAALAQAAIAEAAAIAAAAAAAwBAAAhAQAAAgAAAAAADQEAACMBAAACAAAAAAAOAQAAJwEAAAIAAAAAAA8BAAAoAQAAAgAAAAAAEAEAAC0BAAACAAAAAAARAQAAMAEAAAIAAAAAABIBAAAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBKAQAABgCOAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGACAAAAAGAI8AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYAIQAAAAYAkAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBLAQAABgCRAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAJ4AAAAGAJIAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATAEAAAYAkwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBNAQAABgCUAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAE4BAAAGAJUAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATwEAAAYAlgAAAAcAAAAAAAEABgBQAQAABwAAAAAACgAiAAAAlwAAAAIAAAAAAEUAAACYAAAAAgAAAAAARgAAAJkAAAACAAAAAABHAAAAmgAAAAIAAAAAAEgAAACHAAAAAgAAAAAASQAAAFoAAAACAAAAAABKAAAAUwAAAAIAAAAAAEsAAABeAAAAAgAAAAAATAAAAF8AAAACAAAAAABNAAAAawAAAAIAAAAAAE4AAABsAAAAAgAAAAAATwAAAGMAAAACAAAAAABQAAAAZQAAAAIAAAAAAFEAAABnAAAAAgAAAAAAUgAAAGkAAAACAAAAAABTAAAAggAAAAIAAAAAAFQAAABhAAAAAgAAAAAAVQAAAGIAAAACAAAAAABWAAAAbwAAAAIAAAAAAFcAAABwAAAAAgAAAAAAWAAAAHEAAAACAAAAAABZAAAAcgAAAAIAAAAAAFoAAABzAAAAAgAAAAAAWwAAAHQAAAACAAAAAABcAAAAdQAAAAIAAAAAAF0AAAB2AAAAAgAAAAAAXgAAAHcAAAACAAAAAABfAAAAeAAAAAIAAAAAAGAAAAB5AAAAAgAAAAAAYQAAAHoAAAACAAAAAABiAAAAewAAAAIAAAAAAGMAAAB8AAAAAgAAAAAAZAAAAH0AAAACAAAAAABlAAAAfgAAAAIAAAAAAGYAAAAHACIAAAACAAAAAABFAAAAAgAAAAAARgAAAAIAAAAAAEcAAAACAAAAAABIAAAAAgAAAAAASQAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAWAAAAAIAAAAAAFkAAAACAAAAAABaAAAAAgAAAAAAWwAAAAIAAAAAAFwAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZAAAAAIAAAAAAGUAAAACAAAAAABmAAAABwAAAAAABwABAAAAAgACAAAAGgAAAAcAAAAAAAIAAgAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAARAAAAAIAAgAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAAAAAABwAAAAAAAQAGAFEBAAAHAAAAAAAKABQAAACbAAAAAgAAAAAAaAAAAJwAAAACAAAAAABpAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACkAAAAAgAAAAAAcQAAAKUAAAACAAAAAAByAAAApgAAAAIAAAAAAHMAAACnAAAAAgAAAAAAdAAAAKgAAAACAAAAAAB1AAAAqQAAAAIAAAAAAHYAAACqAAAAAgAAAAAAdwAAAKsAAAACAAAAAAB4AAAArAAAAAIAAAAAAHkAAACtAAAAAgAAAAAAegAAAK4AAAACAAAAAAB7AAAABwAUAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABnAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAAAAAAHAAAAAAABAAYAUgEAAAcAAAAAAAoAAQAAANQAAAACAAAAAAB9AAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAH4AAAAGAFMBAAAHAAsAAAACAAAAAAATAQAAAgAAAAAAFAEAAAIAAAAAABUBAAACAAAAAAAWAQAAAgAAAAAAFwEAAAIAAAAAABgBAAACAAAAAAAZAQAAAgAAAAAAGgEAAAIAAAAAABsBAAACAAAAAAAcAQAAAgAAAAAAHQEAAAoAKwAAALAAAAACAAAAAACAAAAAsQAAAAIAAAAAAIEAAACyAAAAAgAAAAAAggAAALMAAAACAAAAAACDAAAAnAAAAAIAAAAAAIQAAAC0AAAAAgAAAAAAhQAAALUAAAACAAAAAACGAAAAtgAAAAIAAAAAAIcAAAC3AAAAAgAAAAAAiAAAALgAAAACAAAAAACJAAAAuQAAAAIAAAAAAIoAAACAAAAAAgAAAAAAiwAAAKQAAAACAAAAAACMAAAAugAAAAIAAAAAAI0AAAC7AAAAAgAAAAAAjgAAALwAAAACAAAAAACPAAAAvQAAAAIAAAAAAJAAAAC+AAAAAgAAAAAAkQAAAL8AAAACAAAAAACSAAAAwAAAAAIAAAAAAJMAAADBAAAAAgAAAAAAlAAAAMIAAAACAAAAAACVAAAAwwAAAAIAAAAAAJYAAADEAAAAAgAAAAAAlwAAAMUAAAACAAAAAACYAAAAxgAAAAIAAAAAAJkAAAAbAAAAAgAAAAAAmgAAAMcAAAACAAAAAACbAAAAyAAAAAIAAAAAAJwAAADJAAAAAgAAAAAAnQAAAMoAAAACAAAAAACeAAAAywAAAAIAAAAAAJ8AAADMAAAAAgAAAAAAoAAAAJ8AAAACAAAAAAChAAAAzQAAAAIAAAAAAKIAAADOAAAAAgAAAAAAowAAAM8AAAACAAAAAACkAAAA0AAAAAIAAAAAAKUAAADRAAAAAgAAAAAApgAAANIAAAACAAAAAACnAAAA0wAAAAIAAAAAAKgAAACuAAAAAgAAAAAAqQAAANQAAAACAAAAAAD/AAAABwArAAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACUAAAAAgAAAAAAlQAAAAIAAAAAAJYAAAACAAAAAACXAAAAAgAAAAAAmAAAAAIAAAAAAJkAAAACAAAAAACaAAAAAgAAAAAAmwAAAAIAAAAAAJwAAAACAAAAAACdAAAAAgAAAAAAngAAAAIAAAAAAJ8AAAACAAAAAACgAAAAAgAAAAAAoQAAAAIAAAAAAKIAAAACAAAAAACjAAAAAgAAAAAApAAAAAIAAAAAAKUAAAACAAAAAACmAAAAAgAAAAAApwAAAAIAAAAAAKgAAAACAAAAAACpAAAAAgAAAAAA/wAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAEAAAACAAAAAAB8AAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAB/AAAAAgACAAAAGgAAAAcAAgAAAAIAAAAAAHwAAAACAAAAAAAAAQAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAIAAAAABAAwAAAAAAOUAAAABAAEAAQABAAMABgBUAQAABwACAAAAAgAAAAAAHgEAAAIAAAAAAB8BAAAKAAUAAADgAAAAAgAAAAAAqwAAAOEAAAACAAAAAACsAAAA4gAAAAIAAAAAAK0AAADjAAAAAgAAAAAArgAAAOQAAAACAAAAAACvAAAABwAFAAAAAgAAAAAAqwAAAAIAAAAAAKwAAAACAAAAAACtAAAAAgAAAAAArgAAAAIAAAAAAK8AAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACqAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAqgAAAAYA4QAAAAYA5QAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACqAAAABgDiAAAABgDmAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAKoAAAAGAOEAAAAGAOUAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAqgAAAAYA4gAAAAYA5gAAAAEABgBVAQAABwAEAAAAAgAAAAAAIAEAAAIAAAAAACEBAAACAAAAAAAiAQAAAgAAAAAAIwEAAAoACgAAABIAAAACAAAAAACxAAAA5wAAAAIAAAAAALIAAACwAAAAAgAAAAAAswAAAOgAAAACAAAAAAC0AAAA6QAAAAIAAAAAALUAAADqAAAAAgAAAAAAtgAAAOsAAAACAAAAAAC3AAAA7AAAAAIAAAAAALgAAADtAAAAAgAAAAAAuQAAABsAAAACAAAAAAC6AAAABwAKAAAAAgAAAAAAsQAAAAIAAAAAALIAAAACAAAAAACzAAAAAgAAAAAAtAAAAAIAAAAAALUAAAACAAAAAAC2AAAAAgAAAAAAtwAAAAIAAAAAALgAAAACAAAAAAC5AAAAAgAAAAAAugAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAALAAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACzAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALMAAAABAAYAVgEAAAcACAAAAAIAAAAAACQBAAACAAAAAAAlAQAAAgAAAAAAJgEAAAIAAAAAACcBAAACAAAAAAAoAQAAAgAAAAAAKQEAAAIAAAAAACoBAAACAAAAAAArAQAACgANAAAAsAAAAAIAAAAAALwAAADxAAAAAgAAAAAAvQAAAPIAAAACAAAAAAC+AAAA8wAAAAIAAAAAAL8AAAD0AAAAAgAAAAAAwAAAAPUAAAACAAAAAADBAAAA9gAAAAIAAAAAAMIAAAD3AAAAAgAAAAAAwwAAAPgAAAACAAAAAADEAAAA+QAAAAIAAAAAAMUAAAD6AAAAAgAAAAAAxgAAAPsAAAACAAAAAADHAAAA/AAAAAIAAAAAAMgAAAAHAA0AAAACAAAAAAC8AAAAAgAAAAAAvQAAAAIAAAAAAL4AAAACAAAAAAC/AAAAAgAAAAAAwAAAAAIAAAAAAMEAAAACAAAAAADCAAAAAgAAAAAAwwAAAAIAAAAAAMQAAAACAAAAAADFAAAAAgAAAAAAxgAAAAIAAAAAAMcAAAACAAAAAADIAAAABwAAAAAABwABAAAAAgACAAAAGgAAAAcAAAAAAAIAAgAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAuwAAAAIAAgAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALwAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAvAAAAAEABgBXAQAABAABAAAAAAAAAAYAWAEAAAcAAAAAAAoAFAAAAAUBAAACAAAAAADLAAAAgAAAAAIAAAAAAMwAAAAGAQAAAgAAAAAAzQAAAAcBAAACAAAAAADOAAAACAEAAAIAAAAAAM8AAAAJAQAAAgAAAAAA0AAAAAoBAAACAAAAAADRAAAACwEAAAIAAAAAANIAAAAMAQAAAgAAAAAA0wAAAA0BAAACAAAAAADUAAAADgEAAAIAAAAAANUAAAAPAQAAAgAAAAAA1gAAABABAAACAAAAAADXAAAAEQEAAAIAAAAAANgAAAASAQAAAgAAAAAA2QAAABMBAAACAAAAAADaAAAAFAEAAAIAAAAAANsAAAAVAQAAAgAAAAAA3AAAABYBAAACAAAAAADdAAAAFwEAAAIAAAAAAN4AAAAHABQAAAACAAAAAADLAAAAAgAAAAAAzAAAAAIAAAAAAM0AAAACAAAAAADOAAAAAgAAAAAAzwAAAAIAAAAAANAAAAACAAAAAADRAAAAAgAAAAAA0gAAAAIAAAAAANMAAAACAAAAAADUAAAAAgAAAAAA1QAAAAIAAAAAANYAAAACAAAAAADXAAAAAgAAAAAA2AAAAAIAAAAAANkAAAACAAAAAADaAAAAAgAAAAAA2wAAAAIAAAAAANwAAAACAAAAAADdAAAAAgAAAAAA3gAAAAcAAAAAAAcAAQAAAAIAAQAAAGcAAAAHAAAAAAACAAEAAABnAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAMoAAAACAAEAAABnAAAAAgACAAAAGgAAAAcAAAAAAAoABwAAADQAAAAKAAIAAAAHAQAABwAKAAAABgAIAQAABgAJAQAABgAKAQAABgALAQAABgAMAQAABgANAQAABgAOAQAABgAPAQAABgAQAQAABgARAQAAEgEAAAcAAQAAAAYAEwEAAAcBAAACAAAAAAAsAQAAEgEAAAIAAAAAAC0BAAAyAQAAAgAAAAAALgEAADMBAAACAAAAAAAvAQAAQAEAAAIAAAAAADABAABCAQAAAgAAAAAAMQEAAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAEoBAAAGAI4AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYAIAAAAAYAjwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgAhAAAABgCQAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAEsBAAAGAJEAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYAngAAAAYAkgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBMAQAABgCTAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAE0BAAAGAJQAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATgEAAAYAlQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBPAQAABgCWAAAABwAAAAAAAQAGAFkBAAAHAAAAAAAKABAAAAAFAQAAAgAAAAAA4AAAAAYBAAACAAAAAADiAAAACAEAAAIAAAAAAOMAAAAJAQAAAgAAAAAA5AAAAAoBAAACAAAAAADlAAAACwEAAAIAAAAAAOYAAAAMAQAAAgAAAAAA5wAAAA0BAAACAAAAAADoAAAADgEAAAIAAAAAAOkAAAAPAQAAAgAAAAAA6gAAABABAAACAAAAAADrAAAAEQEAAAIAAAAAAOwAAAATAQAAAgAAAAAA7QAAABQBAAACAAAAAADuAAAAFQEAAAIAAAAAAO8AAAAXAQAAAgAAAAAA8AAAAAcAEAAAAAIAAAAAAOAAAAACAAAAAADiAAAAAgAAAAAA4wAAAAIAAAAAAOQAAAACAAAAAADlAAAAAgAAAAAA5gAAAAIAAAAAAOcAAAACAAAAAADoAAAAAgAAAAAA6QAAAAIAAAAAAOoAAAACAAAAAADrAAAAAgAAAAAA7AAAAAIAAAAAAO0AAAACAAAAAADuAAAAAgAAAAAA7wAAAAIAAAAAAPAAAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAADfAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAAAAAAHAAAAAAABAAYAWgEAAAcAAAAAAAoAAgAAAAUBAAACAAAAAADyAAAABgEAAAIAAAAAAPMAAAAHAAIAAAACAAAAAADyAAAAAgAAAAAA8wAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAPEAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABwAEAAAABwACAAAAAwAGAFoAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwBYAAAABwAOAAAAAwAGAG8AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAAAHACcAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQALAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAQQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAVgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAABRABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAmQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAACJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAMUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAADhABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAADlABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAA/QAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABQAAAAAAAABAQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgEBABAABAAAAAAAAAAQAAAAAAAAAAAAEACMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAFAAAAAAAAAD1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAQ0AHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABEQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAqAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBEQAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgEZABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAEdABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACAR0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAMQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAUAAAAAAACARUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASEAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAABKQAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABQAAAAAAAIBKQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAEtABAABAAAAAAAAAAQAAAAAAAAAAAAEADgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAFAAAAAAAAAElABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEtABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAACATUAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAATkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBOQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA/AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABQAAAAAAAIBMQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgFBABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFBABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAUUAEAAEAAAAAAAAABAAAAAAAAAAAAAQARgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAUAAAAAAAAAUEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUUAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAEBSQAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABQAAAAAAAIBSQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAwFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAE0AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACwAAAAAAAAAFAAAAAAAAwFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFNABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAVEAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABUAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABQAAAAAAAIBTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAcAAwAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAwFVABwADAAAABAAAAAAAAAAAAAQADQAAAAAAAAAFAAAAAAAAQFVABAABAAAAAAAAAAAAAAAAAAAAAQAHAAYAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFcAAAAFAAAAAAAAAABABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAWQAAAAUAAAAAAAAAEEAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAcAZAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABdAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABhAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAG4AAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwBOAAAABAAIAAAAAAAAAAYAbwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBwAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHEAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBzAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHQAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB2AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHcAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAeAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB5AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAewAAAAUAAAAAAAAAEEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAKQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQANwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQARQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAUwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAWgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAgQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAACJABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAAAuQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAEABIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAANUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAZAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAADxABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAAD1ABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAIBBQAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABQAAAAAAAABCQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgEJABAABAAAAAAAAAAQAAAAAAAAAAAAEACcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAARUAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAuAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgEhABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAElABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACASUAEAAEAAAAAAAAABAAAAAAAAAAAAAQANQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACASUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAABMQAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABQAAAAAAAIBMQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAEADwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAACAT0AHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAUEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAgFFABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFFABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAQASgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAmAQAABQAAAAAAAEBTQAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABQAAAAAAAIBTQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAwFNABAABAAAAAAAAAAQAAAAAAAAAAAAEAFEAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJgEAAAUAAAAAAAAAVUAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBVQAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBVQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBVQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACYBAAAFAAAAAAAAwFZABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFZABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFdABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAAFdABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAACAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgBiAAAABQAAAAAAAIBYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBYQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIUAAAAFAAAAAAAAAFhABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHACYAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAaQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAFAAAAAAAAABhABgAeAQAABQAAAAAAAAAkQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAAAqQAcABgAAAAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAYQAYAHQEAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAUAAAAAAAAAGEAGABwBAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAAD9ABwAGAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAQUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAEAAEAAAAAAAAAAAAAAAAAAAABAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAaQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGUAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgAeAQAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAB0BAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYAHAEAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBjAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAoAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAABBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAABhABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAAAkQAcABgAAAAUAAAAAAAAAGEAGACUBAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAACpABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADFABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAADNABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADVABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGAAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAAA5QAcABgAAAAUAAAAAAAAAGEAGACUBAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAABCQAcABgAAAAUAAAAAAAAAGEAGACUBAAAFAAAAAAAAgEJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGUAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAHAEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZQAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGABwBAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAHQEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBoAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZwAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAB0BAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHAAcAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAYAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAQQAcABgAAAAQACAAAAAAAAAAGAH0AAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAQwAAAAUAAAAAAAAAJEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAYAAAAEAAgAAAAAAAAABgB8AAAABQAAAAAAAAAmQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAACJABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAC5ABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADNABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYALwEAAAUAAAAAAAAANEAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCAAAAABQAAAAAAAAA2QAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABgDVAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDWAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGANcAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA2AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA2QAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDaAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGANsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGANwAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA3QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA3gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA3wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDlAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDmAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDuAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDmAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDvAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDwAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAP0AAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA/gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgD/AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAAABAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYAAQEAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgACAQAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgADAQAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgAEAQAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABwC4AAAABwALAAAAAwAGAAgBAAAGAAkBAAAGAAoBAAAGAAsBAAAGAAwBAAAGAA0BAAAGAA4BAAAGAA8BAAAGABABAAAGABEBAAAHAB4AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAXgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAcQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAhAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAlwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQApgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAEEAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAEABAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADUBAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAACpABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAACRABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAAC5ABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADFABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAADFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAADNABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAADdABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAEACMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAADVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAD5ABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAADtABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAAEBABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAAEBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAAEFABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAAENABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAQALQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAyAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAgERABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABAABAAAAAAAAAAQAAAAAAAAAAAAEADQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAAEVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACARUAEAAEAAAAAAAAABAAAAAAAAAAAAAQANgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA2AQAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABHQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBHQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABHQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABIQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAABGQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAIBIQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAIBIQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBEQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABKQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBJQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBJQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBFQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABLQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBKQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBKQAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAIBMQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAEAEAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQARQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAABOQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABOQAQAAQAAAAAAAAAEAAAAAAAAAAAABABHAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAIBOQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAE9ABAABAAAAAAAAAAQAAAAAAAAAAAAEAEkAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANwEAAAUAAAAAAACAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAUEAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUEAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACAT0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAUUAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAUUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAUUAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAT0AHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAUkAHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAU0AHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAEBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAQFNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFNABAABAAAAAAAAAAQAAAAAAAAAAAAEAFgAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAWgAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAEBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABcAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADgBAAAFAAAAAAAAgFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFVABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQFVABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFVABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAgFRABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFNABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAwFVABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAwFVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFNABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgFZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAQFZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFRABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAFdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAwFZABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAwFdABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAZgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAABYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBYQAQAAQAAAAAAAAAEAAAAAAAAAAAABABrAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAgFhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFhABAABAAAAAAAAAAQAAAAAAAAAAAAEAG0AAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAwFhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAbwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA5AQAABQAAAAAAAEBXQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBZQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABaQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBZQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBaQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAEBZQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAIBaQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAIBaQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBYQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBbQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABbQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABbQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABZQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBbQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBbQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBbQAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAIBcQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAwFxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFxABAABAAAAAAAAAAQAAAAAAAAAAAAEAHkAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAADAXEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAXUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAfgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAEBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABACAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAIBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBdQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAwF1ABAABAAAAAAAAAAQAAAAAAAAAAAAEAIIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAAFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgF5ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAwF5ABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgF5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAF9ABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAAF5ABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFxABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAQF9ABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAQF9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQF1ABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAGBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwF9ABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAwF9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwF1ABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQGBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGBABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAIGBABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAoGBABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAADAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAjAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAMBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABACRAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAGFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGFABAABAAAAAAAAAAQAAAAAAAAAAAAEAJMAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAIGFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGFABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAABAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAlQAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABzAAAAAAAAAAUAAAAAAABgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgYUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAYUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADgYUAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAABgYUAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAYkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAYkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAYUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABgYkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAYkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABAYkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAYUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACgYkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAYkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACAYkAHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAY0AHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAACBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABACdAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAIGNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGNABAABAAAAAAAAAAQAAAAAAAAAAAAEAKIAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAABgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAQApAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB1AAAAAAAAAAUAAAAAAADAYkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAgY0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAY0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADgY0AHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZEAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACAY0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAgY0AHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAgZEAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAgZEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgY0AHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAZEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgZEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABgZEAHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAADgZEAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAABlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABlQAQAAQAAAAAAAAAEAAAAAAAAAAAABACuAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAAGVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGVABAABAAAAAAAAAAQAAAAAAAAAAAAEALMAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAABAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAtQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAABgZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAIBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC3AAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADoBAAAFAAAAAAAAoGRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GVABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAGZABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGZABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAoGVABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGVABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAQGZABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAQGZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGVABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAoGZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgGZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGVABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAA4GZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwGZABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAwGZABAABAAAAAAAAAAAAAAAAAAAAAQAHAAsAAAAHAAIAAAADAAYAEwEAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAAAQQAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAABBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAIkAEAAEAAAAAAAAAAAAAAAAAAAABAAcAyQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAL0AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYABwEAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHADwAAAAEAAgAAAAAAAAABgAIAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAAkBAAAFAAAAAAAAABBABAAIAAAAAAAAAAYACgEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgALAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAAwBAAAFAAAAAAAAABBABAAIAAAAAAAAAAYADQEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgAOAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAA8BAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAEAEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgARAQAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAaAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA8AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAB1AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACqAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAAAgQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAAAAIkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAAAmQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAWAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANQEAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAALEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAM0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANUAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAO0AHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAAA8QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA8QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAgAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAADxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAEACUAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAAAAOUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAAP0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAQkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAARUAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAIBFQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBFQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAxAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAgEVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEZABAABAAAAAAAAAAQAAAAAAAAAAAAEADYAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACARkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACARkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAR0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAIBHQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADYBAAAFAAAAAAAAAERABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAElABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgElABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAElABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEpABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAAEhABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAgEpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEZABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAExABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEtABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgEtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAE1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgExABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgExABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAgE5ABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAT0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAT0AEAAEAAAAAAAAABAAAAAAAAAAAAAQARAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAABPQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBPQAQAAQAAAAAAAAAEAAAAAAAAAAAABABJAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAFBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFBABAABAAAAAAAAAAQAAAAAAAAAAAAEAEsAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAQFBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFBABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACAUEAEAAEAAAAAAAAABAAAAAAAAAAAAAQATQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA3AQAABQAAAAAAAIBNQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBRQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBRQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBRQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBRQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAMBQQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAABSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABQQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBSQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBSQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABTQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAABUQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAQFRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAFcAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAABAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAXAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAMBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABeAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAABVQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBVQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAQFVABAABAAAAAAAAAAQAAAAAAAAAAAAEAGAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOAEAAAUAAAAAAACAU0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABAVkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAVkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACAVUAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAADAVkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAVEAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAV0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABAV0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAV0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAADAV0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAADAWEAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAABZQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABZQAQAAQAAAAAAAAAEAAAAAAAAAAAABABqAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAAFlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFlABAABAAAAAAAAAAQAAAAAAAAAAAAEAG8AAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAcQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAADAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWkAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAABaQAQAAQAAAAAAAAAEAAAAAAAAAAAABABzAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADkBAAAFAAAAAAAAQFhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFpABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAFtABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFtABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAQFpABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAgFtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFlABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQFxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFxABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAAFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFpABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAwFxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFxABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgFxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAgF1ABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAADAXUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAfQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAWAQAABQAAAAAAAMBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABeQAQAAQAAAAAAAAAEAAAAAAAAAAAABACCAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAQF5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQF5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAIQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAgF5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwF5ABwAGAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAADAXkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAhgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAAAAXUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAX0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAX0AHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAX0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAYEAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAAX0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAXkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgYEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgYEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACgYEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAgYUAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAEBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABACQAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABYBAAAFAAAAAAAAQGFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAYGFABAABAAAAAAAAAAQAAAAAAAAAAAAEAJUAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFwEAAAUAAAAAAACAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAlwAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAACgYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAYUAHAAYAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAMBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABACZAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHMAAAAAAAAABQAAAAAAAOBgQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBhQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBiQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBiQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBiQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAOBhQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBhQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAIBiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBhQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAOBiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBiQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAMBiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBhQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAACBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABjQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABjQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAIBjQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAoGNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAoGNABAABAAAAAAAAAAQAAAAAAAAAAAAEAKEAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAACgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAY0AEAAEAAAAAAAAABAAAAAAAAAAAAAQApgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAOBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABACoAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABQAAAAAAAEBjQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBjQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBkQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAGBkQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBkQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBkQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAABkQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBjQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAKBkQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAKBkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBjQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBkQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAOBkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAGBlQAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAgGVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGVABAABAAAAAAAAAAQAAAAAAAAAAAAEALIAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAACAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgZUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAtwAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAMBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC5AAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAOBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABmQAcABgAAAAQACAAAAAAAAAAGABcBAAAFAAAAAAAAAGZABAABAAAAAAAAAAQAAAAAAAAAAAAEALsAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOgEAAAUAAAAAAAAgZUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgZkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAZkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgZkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgZkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAgZkAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAADAZkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAZUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAgZ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZ0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAZ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABgZ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAZ0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABAZ0AHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgASAQAABQAAAAAAAIBnQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC/AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBnQAcABgAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAwGdABAABAAAAAAAAAAQAAAAAAAAAAAAEAMEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwGdABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAQGhABwAJAAAABAAIAAAAAAAAAAYAFgEAAAUAAAAAAABAaEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgaEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAxgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAXAQAABQAAAAAAAIBoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBoQAQAAQAAAAAAAAAEAAAAAAAAAAAABADIAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAABoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBoQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAKBoQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAKBoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBoQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABpQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBoQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAOBoQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAIAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAxAQAABQAAAAAAAAAQQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAHEAGADEBAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAAAAAAAAAAAAQAHAAwAAAAHAAUAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABAAEAAAAAAAAAAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAAAkQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAACEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAEEAEAAEAAAAAAAAAAAAAAAAAAAABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAAAYAUgEAAAIAAAAAAHwAAAAHAAAAAAAKAAEAAADUAAAAAgAAAAAA/wAAAAcAAAAAAAcAAAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAABzAQAABwAAAAAACgAAAAAAdQEAAAcAAAAAAAoAAAAAAAAAAAB2AAAAAQAAAAEAAAAAAAAA/wAAAAAAAAB3AAAAAAAAAAAAAAADAAAAAAAAAHcBAAACAAAAAAB8AAAAeAEAAAIAAAAAAHwAAAB5AQAAAgAAAAAAfwAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if1210_end2729 
    die "Repossession conflicts occurred during deserialization"
  if1210_end2729:
    .const 'Sub' $P5001 = "cuid_1_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_57_1381254434.83594" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_58_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 179
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 180
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 181
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_174_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 182
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_175_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 183
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_176_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 184
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_177_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 185
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_178_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 186
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_179_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 188
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_180_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 189
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_181_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 190
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_182_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 191
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_183_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 192
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_184_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 193
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_185_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 194
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_186_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 195
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_187_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 196
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_188_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 197
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_189_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 198
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_190_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 199
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_191_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 200
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_192_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 203
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_193_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 204
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_194_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 205
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_195_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 206
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_196_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 207
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_197_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 208
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_198_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 209
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_199_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 210
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_200_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 211
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_201_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 212
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_202_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 213
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_203_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 214
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_204_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 215
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_205_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 216
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_206_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 217
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_207_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 218
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_208_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 219
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_209_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 220
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_210_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 221
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_211_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 222
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_212_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 224
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_213_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 225
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_214_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 226
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_215_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 227
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_216_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 228
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_217_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 229
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_218_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 230
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_219_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 231
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_220_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 232
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_221_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 233
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_222_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 234
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_223_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 235
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_224_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 236
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_225_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 237
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_226_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 238
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_227_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 239
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_228_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 240
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_229_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 242
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_230_1381254434.83594" 
    nqp_get_sc_object $P5002, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 243
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_231_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "GLOBALish"
    push $P5002, "$?PACKAGE"
    push $P5002, "EXPORT"
    push $P5002, "ParseShared"
    push $P5002, "NQPCursorRole"
    push $P5002, "sprintf"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 0
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 1
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381254430.29541", 32
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381254430.29541", 35
    push $P5003, $P5008
    nqp_get_sc_object $P5009, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 201
    push $P5003, $P5009
    new $P5010, 'ResizableIntegerArray'
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5010)
    .const "LexInfo" $P5001 = "cuid_232_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 3
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 3
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_245_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 68
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 68
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_257_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 103
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 103
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_120_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?ROLE"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 124
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 124
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_261_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 127
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_289_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 170
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_290_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 176
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_300_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 187
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_301_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    push $P5002, "Syntax"
    push $P5002, "Actions"
    push $P5002, "Directives"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 201
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 201
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 202
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 223
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 241
    push $P5003, $P5008
    new $P5009, 'ResizableIntegerArray'
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5009)
    .const "LexInfo" $P5001 = "cuid_305_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 202
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 202
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_306_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 223
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 223
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_325_1381254434.83594"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 241
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "4C7D5FE7F3F24E1C01B0F7AF6BF1EC7E12DE8660-1381254434.88048", 241
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5007 = $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_327_1381254434.83594") :anon :lex :outer("cuid_328_1381254434.83594")
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_175_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_176_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_177_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_178_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_179_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_180_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_181_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_182_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_183_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_184_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_185_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_186_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_187_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_188_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_189_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_190_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_191_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_192_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_193_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_194_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_195_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_196_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_197_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_198_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_199_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_200_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_201_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_202_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_203_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_204_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_205_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_206_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_207_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_208_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_209_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_210_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_211_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_212_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_213_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_214_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_215_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_216_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_217_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_218_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_219_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_220_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_221_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_222_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_223_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_224_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_225_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_226_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_227_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_228_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_229_1381254434.83594" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_230_1381254434.83594" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_329_1381254434.83594") :load
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .const 'Sub' $P5001 = "cuid_231_1381254434.83594" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_330_1381254434.83594") :main
.annotate 'file', "src/stage2/gen/NQPHLL.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_231_1381254434.83594" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end