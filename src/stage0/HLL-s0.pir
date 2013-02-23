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
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1361633912.325") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5030 = 'cuid_171_1361633912.325' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_186_1361633912.325' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_199_1361633912.325' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_222_1361633912.325' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_223_1361633912.325' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_233_1361633912.325' 
    capture_lex $P5030 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "ParseShared", $P104 
    .lex "NQPCursorRole", $P105 
    .lex "$compiler", $P106 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .local pmc fb_tmp_182 
    .local pmc pkg_lookup_tmp_33 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    .const 'Sub' $P5006 = 'cuid_171_1361633912.325' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_186_1361633912.325' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_199_1361633912.325' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 1477
    nqp_get_sc_object $P5013, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_33, $P5013
    get_who $P5014, pkg_lookup_tmp_33
    exists $I5004, $P5014["HLL"]
    unless $I5004 goto if820_else1793 
    get_who $P5016, pkg_lookup_tmp_33
    set $P5015, $P5016["HLL"]
    set $P5018, $P5015
    goto if820_end1794
  if820_else1793:
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5018, $P5017
  if820_end1794:
    get_who $P5012, $P5018
    set fb_tmp_182, $P5012
    repr_defined $I5003, fb_tmp_182
    unless $I5003 goto if819_else1791 
    set $P5019, fb_tmp_182["Compiler"]
    set $P5021, $P5019
    goto if819_end1792
  if819_else1791:
    null $P5020
    set $P5021, $P5020
  if819_end1792:
    unless_null $P5021, vivi_8211795
    nqp_get_sc_object $P5022, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5022
  vivi_8211795:
    $P5023 = $P5021."new"()
    set $P106, $P5023
.annotate 'line', 1478
    $P106."language"("parrot")
    .const 'Sub' $P5024 = 'cuid_222_1361633912.325' 
    capture_lex $P5024
    $P5025 = $P5024()
    .const 'Sub' $P5026 = 'cuid_223_1361633912.325' 
    capture_lex $P5026
    $P5027 = $P5026()
    .const 'Sub' $P5028 = 'cuid_233_1361633912.325' 
    capture_lex $P5028
    $P5029 = $P5028()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1361633912.325") :anon :lex :outer("cuid_184_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5076 = 'cuid_1_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_2_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_3_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_4_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_5_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_6_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_7_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_8_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_9_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_10_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_11_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_12_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_13_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_14_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_15_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_16_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_17_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_18_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_19_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_20_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_21_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_22_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_23_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_24_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_25_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_26_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_27_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_28_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_29_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_30_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_31_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_32_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_33_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_34_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_35_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_36_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_37_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_38_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_39_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_40_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_41_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_42_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_45_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_47_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_48_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_49_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_50_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_51_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_52_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_53_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_54_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_55_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_56_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_57_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_58_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_59_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_60_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_61_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_62_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_63_1361633912.325' 
    capture_lex $P5076 
    .const 'Sub' $P5076 = 'cuid_64_1361633912.325' 
    capture_lex $P5076 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "%ohash", $P103 
    .lex "$TRUE", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    .local pmc fb_tmp_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    box $P5005, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P5005
    get_who $P5006, $P105
    set fb_tmp_1, $P5006
    repr_defined $I5001, fb_tmp_1
    unless $I5001 goto if12_else14 
    set $P5007, fb_tmp_1["NQPCursor"]
    set $P5009, $P5007
    goto if12_end15
  if12_else14:
    null $P5008
    set $P5009, $P5008
  if12_end15:
    unless_null $P5009, vivi_1417
    nqp_get_sc_object $P5012, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5011, $P5012
    set $P5010, $P5011["NQPCursor"]
    unless_null $P5010, vivi_1316
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5013
  vivi_1316:
    set $P5009, $P5010
  vivi_1417:
    set $P102, $P5009
    .const 'Sub' $P5014 = 'cuid_1_1361633912.325' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_2_1361633912.325' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_3_1361633912.325' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_4_1361633912.325' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_5_1361633912.325' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_6_1361633912.325' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_7_1361633912.325' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_8_1361633912.325' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_9_1361633912.325' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_10_1361633912.325' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_11_1361633912.325' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_12_1361633912.325' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_13_1361633912.325' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_14_1361633912.325' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_15_1361633912.325' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_16_1361633912.325' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_17_1361633912.325' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_18_1361633912.325' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_19_1361633912.325' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_20_1361633912.325' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_21_1361633912.325' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_22_1361633912.325' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_23_1361633912.325' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_24_1361633912.325' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_25_1361633912.325' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_26_1361633912.325' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_27_1361633912.325' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_28_1361633912.325' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_29_1361633912.325' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_30_1361633912.325' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_31_1361633912.325' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_32_1361633912.325' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_33_1361633912.325' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_34_1361633912.325' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_35_1361633912.325' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_36_1361633912.325' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_37_1361633912.325' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_38_1361633912.325' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_39_1361633912.325' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_40_1361633912.325' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_41_1361633912.325' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_42_1361633912.325' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_45_1361633912.325' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_47_1361633912.325' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_48_1361633912.325' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_49_1361633912.325' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_50_1361633912.325' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_51_1361633912.325' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_52_1361633912.325' 
    capture_lex $P5062
    box $P5063, 1
    set $P104, $P5063
    .const 'Sub' $P5064 = 'cuid_53_1361633912.325' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_54_1361633912.325' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_55_1361633912.325' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_56_1361633912.325' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_57_1361633912.325' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_58_1361633912.325' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_59_1361633912.325' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_60_1361633912.325' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_61_1361633912.325' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_62_1361633912.325' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_63_1361633912.325' 
    capture_lex $P5074
    .const 'Sub' $P5075 = 'cuid_64_1361633912.325' 
    capture_lex $P5075
    .return ($P5075) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "termish" :subid("cuid_2_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 15
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx15_start
    .local string rx15_tgt
    .local int rx15_pos
    .local int rx15_off
    .local int rx15_eos
    .local int rx15_rep
    .local pmc rx15_cur
    .local pmc rx15_curclass
    .local pmc rx15_bstack
    .local pmc rx15_cstack
    rx15_start = self."!cursor_start_all"()
    set rx15_cur, rx15_start[0]
    set rx15_tgt, rx15_start[1]
    set rx15_pos, rx15_start[2]
    set rx15_curclass, rx15_start[3]
    set rx15_bstack, rx15_start[4]
    set $I19, rx15_start[5]
    store_lex unicode:"$\x{a2}", rx15_cur
    length rx15_eos, rx15_tgt
    eq $I19, 1, rx15_restart20
    gt rx15_pos, rx15_eos, rx15_fail21
    repr_get_attr_int $I11, self, rx15_curclass, "$!from"
    ne $I11, -1, rxscan16_done27
    goto rxscan16_scan26
  rxscan16_loop25:
    inc rx15_pos
    gt rx15_pos, rx15_eos, rx15_fail21
    repr_bind_attr_int rx15_cur, rx15_curclass, "$!from", rx15_pos
  rxscan16_scan26:
    nqp_rxmark rx15_bstack, rxscan16_loop25, rx15_pos, 0
  rxscan16_done27:
    nqp_rxmark rx15_bstack, rxquantr17_done29, rx15_pos, 0
  rxquantr17_loop28:
    repr_bind_attr_int rx15_cur, rx15_curclass, "$!pos", rx15_pos
    $P11 = rx15_cur."prefixish"()
    repr_get_attr_int $I11, $P11, rx15_curclass, "$!pos"
    lt $I11, 0, rx15_fail21
    goto rxsubrule18_pass30
  rxsubrule18_back31:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx15_curclass, "$!pos"
    lt $I11, 0, rx15_fail21
  rxsubrule18_pass30:
    rx15_cstack = rx15_cur."!cursor_capture"($P11, "prefixish")
    set_addr $I11, rxsubrule18_back31
    push rx15_bstack, $I11
    push rx15_bstack, 0
    push rx15_bstack, rx15_pos
    elements $I11, rx15_cstack
    push rx15_bstack, $I11
    repr_get_attr_int rx15_pos, $P11, rx15_curclass, "$!pos"
    nqp_rxpeek $I19, rx15_bstack, rxquantr17_done29
    inc $I19
    inc $I19
    set rx15_rep, rx15_bstack[$I19]
    nqp_rxcommit rx15_bstack, rxquantr17_done29
    inc rx15_rep
    nqp_rxmark rx15_bstack, rxquantr17_done29, rx15_pos, rx15_rep
    goto rxquantr17_loop28
  rxquantr17_done29:
    repr_bind_attr_int rx15_cur, rx15_curclass, "$!pos", rx15_pos
    $P11 = rx15_cur."term"()
    repr_get_attr_int $I11, $P11, rx15_curclass, "$!pos"
    lt $I11, 0, rx15_fail21
    nqp_rxmark rx15_bstack, rxsubrule19_pass32, -1, 0
  rxsubrule19_pass32:
    rx15_cstack = rx15_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx15_pos, $P11, rx15_curclass, "$!pos"
    nqp_rxmark rx15_bstack, rxquantr20_done34, rx15_pos, 0
  rxquantr20_loop33:
    repr_bind_attr_int rx15_cur, rx15_curclass, "$!pos", rx15_pos
    $P11 = rx15_cur."postfixish"()
    repr_get_attr_int $I11, $P11, rx15_curclass, "$!pos"
    lt $I11, 0, rx15_fail21
    goto rxsubrule21_pass35
  rxsubrule21_back36:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx15_curclass, "$!pos"
    lt $I11, 0, rx15_fail21
  rxsubrule21_pass35:
    rx15_cstack = rx15_cur."!cursor_capture"($P11, "postfixish")
    set_addr $I11, rxsubrule21_back36
    push rx15_bstack, $I11
    push rx15_bstack, 0
    push rx15_bstack, rx15_pos
    elements $I11, rx15_cstack
    push rx15_bstack, $I11
    repr_get_attr_int rx15_pos, $P11, rx15_curclass, "$!pos"
    nqp_rxpeek $I19, rx15_bstack, rxquantr20_done34
    inc $I19
    inc $I19
    set rx15_rep, rx15_bstack[$I19]
    nqp_rxcommit rx15_bstack, rxquantr20_done34
    inc rx15_rep
    nqp_rxmark rx15_bstack, rxquantr20_done34, rx15_pos, rx15_rep
    goto rxquantr20_loop33
  rxquantr20_done34:
    rx15_cur."!cursor_pass"(rx15_pos, "termish", 'backtrack'=>1)
    .return (rx15_cur)
  rx15_restart20:
    repr_get_attr_obj rx15_cstack, rx15_cur, rx15_curclass, "$!cstack"
  rx15_fail21:
    unless rx15_bstack, rx15_done19
    pop $I19, rx15_bstack
    if_null rx15_cstack, rx15_cstack_done24
    unless rx15_cstack, rx15_cstack_done24
    dec $I19
    set $P11, rx15_cstack[$I19]
  rx15_cstack_done24:
    pop rx15_rep, rx15_bstack
    pop rx15_pos, rx15_bstack
    pop $I19, rx15_bstack
    lt rx15_pos, -1, rx15_done19
    lt rx15_pos, 0, rx15_fail21
    eq $I19, 0, rx15_fail21
    nqp_islist $I20, rx15_cstack
    unless $I20, rx15_jump22
    elements $I18, rx15_bstack
    le $I18, 0, rx15_cut23
    dec $I18
    set $I18, rx15_bstack[$I18]
  rx15_cut23:
    assign rx15_cstack, $I18
  rx15_jump22:
    jump $I19
  rx15_done19:
    rx15_cur."!cursor_fail"()
    .return (rx15_cur) 
.end
.HLL "nqp"
.namespace []
.sub "term" :subid("cuid_3_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 28
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
    eq $I19, 1, rx22_restart39
    gt rx22_pos, rx22_eos, rx22_fail40
    repr_get_attr_int $I11, self, rx22_curclass, "$!from"
    ne $I11, -1, rxscan23_done46
    goto rxscan23_scan45
  rxscan23_loop44:
    inc rx22_pos
    gt rx22_pos, rx22_eos, rx22_fail40
    repr_bind_attr_int rx22_cur, rx22_curclass, "$!from", rx22_pos
  rxscan23_scan45:
    nqp_rxmark rx22_bstack, rxscan23_loop44, rx22_pos, 0
  rxscan23_done46:
    repr_bind_attr_int rx22_cur, rx22_curclass, "$!pos", rx22_pos
    $P11 = rx22_cur."circumfix"()
    repr_get_attr_int $I11, $P11, rx22_curclass, "$!pos"
    lt $I11, 0, rx22_fail40
    nqp_rxmark rx22_bstack, rxsubrule24_pass47, -1, 0
  rxsubrule24_pass47:
    rx22_cstack = rx22_cur."!cursor_capture"($P11, "circumfix")
    repr_get_attr_int rx22_pos, $P11, rx22_curclass, "$!pos"
    rx22_cur."!cursor_pass"(rx22_pos, "term:sym<circumfix>", 'backtrack'=>1)
    .return (rx22_cur)
  rx22_restart39:
    repr_get_attr_obj rx22_cstack, rx22_cur, rx22_curclass, "$!cstack"
  rx22_fail40:
    unless rx22_bstack, rx22_done38
    pop $I19, rx22_bstack
    if_null rx22_cstack, rx22_cstack_done43
    unless rx22_cstack, rx22_cstack_done43
    dec $I19
    set $P11, rx22_cstack[$I19]
  rx22_cstack_done43:
    pop rx22_rep, rx22_bstack
    pop rx22_pos, rx22_bstack
    pop $I19, rx22_bstack
    lt rx22_pos, -1, rx22_done38
    lt rx22_pos, 0, rx22_fail40
    eq $I19, 0, rx22_fail40
    nqp_islist $I20, rx22_cstack
    unless $I20, rx22_jump41
    elements $I18, rx22_bstack
    le $I18, 0, rx22_cut42
    dec $I18
    set $I18, rx22_bstack[$I18]
  rx22_cut42:
    assign rx22_cstack, $I18
  rx22_jump41:
    jump $I19
  rx22_done38:
    rx22_cur."!cursor_fail"()
    .return (rx22_cur) 
.end
.HLL "nqp"
.namespace []
.sub "infixish" :subid("cuid_10_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 30
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
    eq $I19, 1, rx25_restart50
    gt rx25_pos, rx25_eos, rx25_fail51
    repr_get_attr_int $I11, self, rx25_curclass, "$!from"
    ne $I11, -1, rxscan26_done57
    goto rxscan26_scan56
  rxscan26_loop55:
    inc rx25_pos
    gt rx25_pos, rx25_eos, rx25_fail51
    repr_bind_attr_int rx25_cur, rx25_curclass, "$!from", rx25_pos
  rxscan26_scan56:
    nqp_rxmark rx25_bstack, rxscan26_loop55, rx25_pos, 0
  rxscan26_done57:
    repr_bind_attr_int rx25_cur, rx25_curclass, "$!pos", rx25_pos
    $P11 = rx25_cur."infix"()
    repr_get_attr_int $I11, $P11, rx25_curclass, "$!pos"
    lt $I11, 0, rx25_fail51
    nqp_rxmark rx25_bstack, rxsubrule27_pass58, -1, 0
  rxsubrule27_pass58:
    rx25_cstack = rx25_cur."!cursor_capture"($P11, "OPER=infix")
    repr_get_attr_int rx25_pos, $P11, rx25_curclass, "$!pos"
    rx25_cur."!cursor_pass"(rx25_pos, "infixish", 'backtrack'=>1)
    .return (rx25_cur)
  rx25_restart50:
    repr_get_attr_obj rx25_cstack, rx25_cur, rx25_curclass, "$!cstack"
  rx25_fail51:
    unless rx25_bstack, rx25_done49
    pop $I19, rx25_bstack
    if_null rx25_cstack, rx25_cstack_done54
    unless rx25_cstack, rx25_cstack_done54
    dec $I19
    set $P11, rx25_cstack[$I19]
  rx25_cstack_done54:
    pop rx25_rep, rx25_bstack
    pop rx25_pos, rx25_bstack
    pop $I19, rx25_bstack
    lt rx25_pos, -1, rx25_done49
    lt rx25_pos, 0, rx25_fail51
    eq $I19, 0, rx25_fail51
    nqp_islist $I20, rx25_cstack
    unless $I20, rx25_jump52
    elements $I18, rx25_bstack
    le $I18, 0, rx25_cut53
    dec $I18
    set $I18, rx25_bstack[$I18]
  rx25_cut53:
    assign rx25_cstack, $I18
  rx25_jump52:
    jump $I19
  rx25_done49:
    rx25_cur."!cursor_fail"()
    .return (rx25_cur) 
.end
.HLL "nqp"
.namespace []
.sub "prefixish" :subid("cuid_11_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 31
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx28_start
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    .local pmc rx28_curclass
    .local pmc rx28_bstack
    .local pmc rx28_cstack
    rx28_start = self."!cursor_start_all"()
    set rx28_cur, rx28_start[0]
    set rx28_tgt, rx28_start[1]
    set rx28_pos, rx28_start[2]
    set rx28_curclass, rx28_start[3]
    set rx28_bstack, rx28_start[4]
    set $I19, rx28_start[5]
    store_lex unicode:"$\x{a2}", rx28_cur
    length rx28_eos, rx28_tgt
    eq $I19, 1, rx28_restart61
    gt rx28_pos, rx28_eos, rx28_fail62
    repr_get_attr_int $I11, self, rx28_curclass, "$!from"
    ne $I11, -1, rxscan29_done68
    goto rxscan29_scan67
  rxscan29_loop66:
    inc rx28_pos
    gt rx28_pos, rx28_eos, rx28_fail62
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!from", rx28_pos
  rxscan29_scan67:
    nqp_rxmark rx28_bstack, rxscan29_loop66, rx28_pos, 0
  rxscan29_done68:
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!pos", rx28_pos
    $P11 = rx28_cur."prefix"()
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail62
    nqp_rxmark rx28_bstack, rxsubrule30_pass69, -1, 0
  rxsubrule30_pass69:
    rx28_cstack = rx28_cur."!cursor_capture"($P11, "OPER=prefix")
    repr_get_attr_int rx28_pos, $P11, rx28_curclass, "$!pos"
    repr_bind_attr_int rx28_cur, rx28_curclass, "$!pos", rx28_pos
    $P11 = rx28_cur."ws"()
    repr_get_attr_int $I11, $P11, rx28_curclass, "$!pos"
    lt $I11, 0, rx28_fail62
    repr_get_attr_int rx28_pos, $P11, rx28_curclass, "$!pos"
    rx28_cur."!cursor_pass"(rx28_pos, "prefixish", 'backtrack'=>1)
    .return (rx28_cur)
  rx28_restart61:
    repr_get_attr_obj rx28_cstack, rx28_cur, rx28_curclass, "$!cstack"
  rx28_fail62:
    unless rx28_bstack, rx28_done60
    pop $I19, rx28_bstack
    if_null rx28_cstack, rx28_cstack_done65
    unless rx28_cstack, rx28_cstack_done65
    dec $I19
    set $P11, rx28_cstack[$I19]
  rx28_cstack_done65:
    pop rx28_rep, rx28_bstack
    pop rx28_pos, rx28_bstack
    pop $I19, rx28_bstack
    lt rx28_pos, -1, rx28_done60
    lt rx28_pos, 0, rx28_fail62
    eq $I19, 0, rx28_fail62
    nqp_islist $I20, rx28_cstack
    unless $I20, rx28_jump63
    elements $I18, rx28_bstack
    le $I18, 0, rx28_cut64
    dec $I18
    set $I18, rx28_bstack[$I18]
  rx28_cut64:
    assign rx28_cstack, $I18
  rx28_jump63:
    jump $I19
  rx28_done60:
    rx28_cur."!cursor_fail"()
    .return (rx28_cur) 
.end
.HLL "nqp"
.namespace []
.sub "postfixish" :subid("cuid_12_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx32_start
    .local string rx32_tgt
    .local int rx32_pos
    .local int rx32_off
    .local int rx32_eos
    .local int rx32_rep
    .local pmc rx32_cur
    .local pmc rx32_curclass
    .local pmc rx32_bstack
    .local pmc rx32_cstack
    rx32_start = self."!cursor_start_all"()
    set rx32_cur, rx32_start[0]
    set rx32_tgt, rx32_start[1]
    set rx32_pos, rx32_start[2]
    set rx32_curclass, rx32_start[3]
    set rx32_bstack, rx32_start[4]
    set $I19, rx32_start[5]
    store_lex unicode:"$\x{a2}", rx32_cur
    length rx32_eos, rx32_tgt
    eq $I19, 1, rx32_restart73
    gt rx32_pos, rx32_eos, rx32_fail74
    repr_get_attr_int $I11, self, rx32_curclass, "$!from"
    ne $I11, -1, rxscan33_done80
    goto rxscan33_scan79
  rxscan33_loop78:
    inc rx32_pos
    gt rx32_pos, rx32_eos, rx32_fail74
    repr_bind_attr_int rx32_cur, rx32_curclass, "$!from", rx32_pos
  rxscan33_scan79:
    nqp_rxmark rx32_bstack, rxscan33_loop78, rx32_pos, 0
  rxscan33_done80:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt34_082
    nqp_push_label $P11, alt34_184
    nqp_rxmark rx32_bstack, alt34_end81, -1, 0
    rx32_cur."!alt"(rx32_pos, "alt_nfa__1_1361633912.457", $P11)
    goto rx32_fail74
  alt34_082:
    repr_bind_attr_int rx32_cur, rx32_curclass, "$!pos", rx32_pos
    $P11 = rx32_cur."postfix"()
    repr_get_attr_int $I11, $P11, rx32_curclass, "$!pos"
    lt $I11, 0, rx32_fail74
    nqp_rxmark rx32_bstack, rxsubrule35_pass83, -1, 0
  rxsubrule35_pass83:
    rx32_cstack = rx32_cur."!cursor_capture"($P11, "OPER=postfix")
    repr_get_attr_int rx32_pos, $P11, rx32_curclass, "$!pos"
    goto alt34_end81
  alt34_184:
    repr_bind_attr_int rx32_cur, rx32_curclass, "$!pos", rx32_pos
    $P11 = rx32_cur."postcircumfix"()
    repr_get_attr_int $I11, $P11, rx32_curclass, "$!pos"
    lt $I11, 0, rx32_fail74
    nqp_rxmark rx32_bstack, rxsubrule36_pass85, -1, 0
  rxsubrule36_pass85:
    rx32_cstack = rx32_cur."!cursor_capture"($P11, "OPER=postcircumfix")
    repr_get_attr_int rx32_pos, $P11, rx32_curclass, "$!pos"
    goto alt34_end81
  alt34_end81:
    rx32_cur."!cursor_pass"(rx32_pos, "postfixish", 'backtrack'=>1)
    .return (rx32_cur)
  rx32_restart73:
    repr_get_attr_obj rx32_cstack, rx32_cur, rx32_curclass, "$!cstack"
  rx32_fail74:
    unless rx32_bstack, rx32_done72
    pop $I19, rx32_bstack
    if_null rx32_cstack, rx32_cstack_done77
    unless rx32_cstack, rx32_cstack_done77
    dec $I19
    set $P11, rx32_cstack[$I19]
  rx32_cstack_done77:
    pop rx32_rep, rx32_bstack
    pop rx32_pos, rx32_bstack
    pop $I19, rx32_bstack
    lt rx32_pos, -1, rx32_done72
    lt rx32_pos, 0, rx32_fail74
    eq $I19, 0, rx32_fail74
    nqp_islist $I20, rx32_cstack
    unless $I20, rx32_jump75
    elements $I18, rx32_bstack
    le $I18, 0, rx32_cut76
    dec $I18
    set $I18, rx32_bstack[$I18]
  rx32_cut76:
    assign rx32_cstack, $I18
  rx32_jump75:
    jump $I19
  rx32_done72:
    rx32_cur."!cursor_fail"()
    .return (rx32_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_13_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 37
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
    eq $I19, 1, rx37_restart88
    gt rx37_pos, rx37_eos, rx37_fail89
    repr_get_attr_int $I11, self, rx37_curclass, "$!from"
    ne $I11, -1, rxscan38_done95
    goto rxscan38_scan94
  rxscan38_loop93:
    inc rx37_pos
    gt rx37_pos, rx37_eos, rx37_fail89
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!from", rx37_pos
  rxscan38_scan94:
    nqp_rxmark rx37_bstack, rxscan38_loop93, rx37_pos, 0
  rxscan38_done95:
    rx37_cur."!cursor_pass"(rx37_pos, "nullterm", 'backtrack'=>1)
    .return (rx37_cur)
  rx37_restart88:
    repr_get_attr_obj rx37_cstack, rx37_cur, rx37_curclass, "$!cstack"
  rx37_fail89:
    unless rx37_bstack, rx37_done87
    pop $I19, rx37_bstack
    if_null rx37_cstack, rx37_cstack_done92
    unless rx37_cstack, rx37_cstack_done92
    dec $I19
    set $P11, rx37_cstack[$I19]
  rx37_cstack_done92:
    pop rx37_rep, rx37_bstack
    pop rx37_pos, rx37_bstack
    pop $I19, rx37_bstack
    lt rx37_pos, -1, rx37_done87
    lt rx37_pos, 0, rx37_fail89
    eq $I19, 0, rx37_fail89
    nqp_islist $I20, rx37_cstack
    unless $I20, rx37_jump90
    elements $I18, rx37_bstack
    le $I18, 0, rx37_cut91
    dec $I18
    set $I18, rx37_bstack[$I18]
  rx37_cut91:
    assign rx37_cstack, $I18
  rx37_jump90:
    jump $I19
  rx37_done87:
    rx37_cur."!cursor_fail"()
    .return (rx37_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_14_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx40_start
    .local string rx40_tgt
    .local int rx40_pos
    .local int rx40_off
    .local int rx40_eos
    .local int rx40_rep
    .local pmc rx40_cur
    .local pmc rx40_curclass
    .local pmc rx40_bstack
    .local pmc rx40_cstack
    rx40_start = self."!cursor_start_all"()
    set rx40_cur, rx40_start[0]
    set rx40_tgt, rx40_start[1]
    set rx40_pos, rx40_start[2]
    set rx40_curclass, rx40_start[3]
    set rx40_bstack, rx40_start[4]
    set $I19, rx40_start[5]
    store_lex unicode:"$\x{a2}", rx40_cur
    length rx40_eos, rx40_tgt
    eq $I19, 1, rx40_restart99
    gt rx40_pos, rx40_eos, rx40_fail100
    repr_get_attr_int $I11, self, rx40_curclass, "$!from"
    ne $I11, -1, rxscan41_done106
    goto rxscan41_scan105
  rxscan41_loop104:
    inc rx40_pos
    gt rx40_pos, rx40_eos, rx40_fail100
    repr_bind_attr_int rx40_cur, rx40_curclass, "$!from", rx40_pos
  rxscan41_scan105:
    nqp_rxmark rx40_bstack, rxscan41_loop104, rx40_pos, 0
  rxscan41_done106:
    repr_bind_attr_int rx40_cur, rx40_curclass, "$!pos", rx40_pos
    $P11 = rx40_cur."nullterm"()
    repr_get_attr_int $I11, $P11, rx40_curclass, "$!pos"
    lt $I11, 0, rx40_fail100
    nqp_rxmark rx40_bstack, rxsubrule42_pass107, -1, 0
  rxsubrule42_pass107:
    rx40_cstack = rx40_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx40_pos, $P11, rx40_curclass, "$!pos"
    rx40_cur."!cursor_pass"(rx40_pos, "nullterm_alt", 'backtrack'=>1)
    .return (rx40_cur)
  rx40_restart99:
    repr_get_attr_obj rx40_cstack, rx40_cur, rx40_curclass, "$!cstack"
  rx40_fail100:
    unless rx40_bstack, rx40_done98
    pop $I19, rx40_bstack
    if_null rx40_cstack, rx40_cstack_done103
    unless rx40_cstack, rx40_cstack_done103
    dec $I19
    set $P11, rx40_cstack[$I19]
  rx40_cstack_done103:
    pop rx40_rep, rx40_bstack
    pop rx40_pos, rx40_bstack
    pop $I19, rx40_bstack
    lt rx40_pos, -1, rx40_done98
    lt rx40_pos, 0, rx40_fail100
    eq $I19, 0, rx40_fail100
    nqp_islist $I20, rx40_cstack
    unless $I20, rx40_jump101
    elements $I18, rx40_bstack
    le $I18, 0, rx40_cut102
    dec $I18
    set $I18, rx40_bstack[$I18]
  rx40_cut102:
    assign rx40_cstack, $I18
  rx40_jump101:
    jump $I19
  rx40_done98:
    rx40_cur."!cursor_fail"()
    .return (rx40_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nulltermish" :subid("cuid_15_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."termish"()
    set $P5005, $P5002
    if $P5002 goto unless43_end109 
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."nullterm_alt"()
    set $P5005, $P5004
  unless43_end109:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_16_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx44_start
    .local string rx44_tgt
    .local int rx44_pos
    .local int rx44_off
    .local int rx44_eos
    .local int rx44_rep
    .local pmc rx44_cur
    .local pmc rx44_curclass
    .local pmc rx44_bstack
    .local pmc rx44_cstack
    rx44_start = self."!cursor_start_all"()
    set rx44_cur, rx44_start[0]
    set rx44_tgt, rx44_start[1]
    set rx44_pos, rx44_start[2]
    set rx44_curclass, rx44_start[3]
    set rx44_bstack, rx44_start[4]
    set $I19, rx44_start[5]
    store_lex unicode:"$\x{a2}", rx44_cur
    length rx44_eos, rx44_tgt
    eq $I19, 1, rx44_restart112
    gt rx44_pos, rx44_eos, rx44_fail113
    repr_get_attr_int $I11, self, rx44_curclass, "$!from"
    ne $I11, -1, rxscan45_done119
    goto rxscan45_scan118
  rxscan45_loop117:
    inc rx44_pos
    gt rx44_pos, rx44_eos, rx44_fail113
    repr_bind_attr_int rx44_cur, rx44_curclass, "$!from", rx44_pos
  rxscan45_scan118:
    nqp_rxmark rx44_bstack, rxscan45_loop117, rx44_pos, 0
  rxscan45_done119:
    repr_bind_attr_int rx44_cur, rx44_curclass, "$!pos", rx44_pos
    $P11 = rx44_cur."starter"()
    repr_get_attr_int $I11, $P11, rx44_curclass, "$!pos"
    lt $I11, 0, rx44_fail113
    nqp_rxmark rx44_bstack, rxsubrule46_pass120, -1, 0
  rxsubrule46_pass120:
    rx44_cstack = rx44_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx44_pos, $P11, rx44_curclass, "$!pos"
    nqp_rxmark rx44_bstack, rxquantr47_done122, rx44_pos, 0
  rxquantr47_loop121:
    repr_bind_attr_int rx44_cur, rx44_curclass, "$!pos", rx44_pos
    $P11 = rx44_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx44_curclass, "$!pos"
    lt $I11, 0, rx44_fail113
    goto rxsubrule48_pass123
  rxsubrule48_back124:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx44_curclass, "$!pos"
    lt $I11, 0, rx44_fail113
  rxsubrule48_pass123:
    rx44_cstack = rx44_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule48_back124
    push rx44_bstack, $I11
    push rx44_bstack, 0
    push rx44_bstack, rx44_pos
    elements $I11, rx44_cstack
    push rx44_bstack, $I11
    repr_get_attr_int rx44_pos, $P11, rx44_curclass, "$!pos"
    nqp_rxpeek $I19, rx44_bstack, rxquantr47_done122
    inc $I19
    inc $I19
    set rx44_rep, rx44_bstack[$I19]
    nqp_rxcommit rx44_bstack, rxquantr47_done122
    inc rx44_rep
    nqp_rxmark rx44_bstack, rxquantr47_done122, rx44_pos, rx44_rep
    goto rxquantr47_loop121
  rxquantr47_done122:
    repr_bind_attr_int rx44_cur, rx44_curclass, "$!pos", rx44_pos
    $P11 = rx44_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx44_curclass, "$!pos"
    lt $I11, 0, rx44_fail113
    nqp_rxmark rx44_bstack, rxsubrule49_pass125, -1, 0
  rxsubrule49_pass125:
    rx44_cstack = rx44_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx44_pos, $P11, rx44_curclass, "$!pos"
    rx44_cur."!cursor_pass"(rx44_pos, "quote_delimited", 'backtrack'=>1)
    .return (rx44_cur)
  rx44_restart112:
    repr_get_attr_obj rx44_cstack, rx44_cur, rx44_curclass, "$!cstack"
  rx44_fail113:
    unless rx44_bstack, rx44_done111
    pop $I19, rx44_bstack
    if_null rx44_cstack, rx44_cstack_done116
    unless rx44_cstack, rx44_cstack_done116
    dec $I19
    set $P11, rx44_cstack[$I19]
  rx44_cstack_done116:
    pop rx44_rep, rx44_bstack
    pop rx44_pos, rx44_bstack
    pop $I19, rx44_bstack
    lt rx44_pos, -1, rx44_done111
    lt rx44_pos, 0, rx44_fail113
    eq $I19, 0, rx44_fail113
    nqp_islist $I20, rx44_cstack
    unless $I20, rx44_jump114
    elements $I18, rx44_bstack
    le $I18, 0, rx44_cut115
    dec $I18
    set $I18, rx44_bstack[$I18]
  rx44_cut115:
    assign rx44_cstack, $I18
  rx44_jump114:
    jump $I19
  rx44_done111:
    rx44_cur."!cursor_fail"()
    .return (rx44_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_17_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx50_start
    .local string rx50_tgt
    .local int rx50_pos
    .local int rx50_off
    .local int rx50_eos
    .local int rx50_rep
    .local pmc rx50_cur
    .local pmc rx50_curclass
    .local pmc rx50_bstack
    .local pmc rx50_cstack
    rx50_start = self."!cursor_start_all"()
    set rx50_cur, rx50_start[0]
    set rx50_tgt, rx50_start[1]
    set rx50_pos, rx50_start[2]
    set rx50_curclass, rx50_start[3]
    set rx50_bstack, rx50_start[4]
    set $I19, rx50_start[5]
    store_lex unicode:"$\x{a2}", rx50_cur
    length rx50_eos, rx50_tgt
    eq $I19, 1, rx50_restart128
    gt rx50_pos, rx50_eos, rx50_fail129
    repr_get_attr_int $I11, self, rx50_curclass, "$!from"
    ne $I11, -1, rxscan51_done135
    goto rxscan51_scan134
  rxscan51_loop133:
    inc rx50_pos
    gt rx50_pos, rx50_eos, rx50_fail129
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!from", rx50_pos
  rxscan51_scan134:
    nqp_rxmark rx50_bstack, rxscan51_loop133, rx50_pos, 0
  rxscan51_done135:
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    ge $I11, 0, rx50_fail129
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt52_0137
    nqp_push_label $P11, alt52_1139
    nqp_push_label $P11, alt52_2142
    nqp_rxmark rx50_bstack, alt52_end136, -1, 0
    rx50_cur."!alt"(rx50_pos, "alt_nfa__2_1361633912.489", $P11)
    goto rx50_fail129
  alt52_0137:
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    lt $I11, 0, rx50_fail129
    nqp_rxmark rx50_bstack, rxsubrule53_pass138, -1, 0
  rxsubrule53_pass138:
    rx50_cstack = rx50_cur."!cursor_capture"($P11, "quote_escape")
    repr_get_attr_int rx50_pos, $P11, rx50_curclass, "$!pos"
    goto alt52_end136
  alt52_1139:
    nqp_rxmark rx50_bstack, rxquantr54_done141, -1, 0
  rxquantr54_loop140:
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."starter"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    ge $I11, 0, rx50_fail129
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    ge $I11, 0, rx50_fail129
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    ge $I11, 0, rx50_fail129
    ge rx50_pos, rx50_eos, rx50_fail129
    add rx50_pos, 1
    nqp_rxpeek $I19, rx50_bstack, rxquantr54_done141
    inc $I19
    inc $I19
    set rx50_rep, rx50_bstack[$I19]
    nqp_rxcommit rx50_bstack, rxquantr54_done141
    inc rx50_rep
    nqp_rxmark rx50_bstack, rxquantr54_done141, rx50_pos, rx50_rep
    goto rxquantr54_loop140
  rxquantr54_done141:
    goto alt52_end136
  alt52_2142:
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."starter"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    lt $I11, 0, rx50_fail129
    nqp_rxmark rx50_bstack, rxsubrule55_pass143, -1, 0
  rxsubrule55_pass143:
    rx50_cstack = rx50_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx50_pos, $P11, rx50_curclass, "$!pos"
    nqp_rxmark rx50_bstack, rxquantr56_done145, rx50_pos, 0
  rxquantr56_loop144:
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    lt $I11, 0, rx50_fail129
    goto rxsubrule57_pass146
  rxsubrule57_back147:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    lt $I11, 0, rx50_fail129
  rxsubrule57_pass146:
    rx50_cstack = rx50_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule57_back147
    push rx50_bstack, $I11
    push rx50_bstack, 0
    push rx50_bstack, rx50_pos
    elements $I11, rx50_cstack
    push rx50_bstack, $I11
    repr_get_attr_int rx50_pos, $P11, rx50_curclass, "$!pos"
    nqp_rxpeek $I19, rx50_bstack, rxquantr56_done145
    inc $I19
    inc $I19
    set rx50_rep, rx50_bstack[$I19]
    nqp_rxcommit rx50_bstack, rxquantr56_done145
    inc rx50_rep
    nqp_rxmark rx50_bstack, rxquantr56_done145, rx50_pos, rx50_rep
    goto rxquantr56_loop144
  rxquantr56_done145:
    repr_bind_attr_int rx50_cur, rx50_curclass, "$!pos", rx50_pos
    $P11 = rx50_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx50_curclass, "$!pos"
    lt $I11, 0, rx50_fail129
    nqp_rxmark rx50_bstack, rxsubrule58_pass148, -1, 0
  rxsubrule58_pass148:
    rx50_cstack = rx50_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx50_pos, $P11, rx50_curclass, "$!pos"
    goto alt52_end136
  alt52_end136:
    nqp_rxcommit rx50_bstack, alt52_end136
    rx50_cur."!cursor_pass"(rx50_pos, "quote_atom", 'backtrack'=>1)
    .return (rx50_cur)
  rx50_restart128:
    repr_get_attr_obj rx50_cstack, rx50_cur, rx50_curclass, "$!cstack"
  rx50_fail129:
    unless rx50_bstack, rx50_done127
    pop $I19, rx50_bstack
    if_null rx50_cstack, rx50_cstack_done132
    unless rx50_cstack, rx50_cstack_done132
    dec $I19
    set $P11, rx50_cstack[$I19]
  rx50_cstack_done132:
    pop rx50_rep, rx50_bstack
    pop rx50_pos, rx50_bstack
    pop $I19, rx50_bstack
    lt rx50_pos, -1, rx50_done127
    lt rx50_pos, 0, rx50_fail129
    eq $I19, 0, rx50_fail129
    nqp_islist $I20, rx50_cstack
    unless $I20, rx50_jump130
    elements $I18, rx50_bstack
    le $I18, 0, rx50_cut131
    dec $I18
    set $I18, rx50_bstack[$I18]
  rx50_cut131:
    assign rx50_cstack, $I18
  rx50_jump130:
    jump $I19
  rx50_done127:
    rx50_cur."!cursor_fail"()
    .return (rx50_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_18_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 56
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx59_start
    .local string rx59_tgt
    .local int rx59_pos
    .local int rx59_off
    .local int rx59_eos
    .local int rx59_rep
    .local pmc rx59_cur
    .local pmc rx59_curclass
    .local pmc rx59_bstack
    .local pmc rx59_cstack
    rx59_start = self."!cursor_start_all"()
    set rx59_cur, rx59_start[0]
    set rx59_tgt, rx59_start[1]
    set rx59_pos, rx59_start[2]
    set rx59_curclass, rx59_start[3]
    set rx59_bstack, rx59_start[4]
    set $I19, rx59_start[5]
    store_lex unicode:"$\x{a2}", rx59_cur
    length rx59_eos, rx59_tgt
    eq $I19, 1, rx59_restart151
    gt rx59_pos, rx59_eos, rx59_fail152
    repr_get_attr_int $I11, self, rx59_curclass, "$!from"
    ne $I11, -1, rxscan60_done158
    goto rxscan60_scan157
  rxscan60_loop156:
    inc rx59_pos
    gt rx59_pos, rx59_eos, rx59_fail152
    repr_bind_attr_int rx59_cur, rx59_curclass, "$!from", rx59_pos
  rxscan60_scan157:
    nqp_rxmark rx59_bstack, rxscan60_loop156, rx59_pos, 0
  rxscan60_done158:
    nqp_rxmark rx59_bstack, rxquantr61_done160, -1, 0
  rxquantr61_loop159:
    nqp_rxmark rx59_bstack, rxquantr62_done162, -1, 0
  rxquantr62_loop161:
    ge rx59_pos, rx59_eos, rx59_fail152
    is_cclass $I11, .CCLASS_NUMERIC, rx59_tgt, rx59_pos
    unless $I11, rx59_fail152
    add rx59_pos, 1
    nqp_rxpeek $I19, rx59_bstack, rxquantr62_done162
    inc $I19
    inc $I19
    set rx59_rep, rx59_bstack[$I19]
    nqp_rxcommit rx59_bstack, rxquantr62_done162
    inc rx59_rep
    nqp_rxmark rx59_bstack, rxquantr62_done162, rx59_pos, rx59_rep
    goto rxquantr62_loop161
  rxquantr62_done162:
    nqp_rxpeek $I19, rx59_bstack, rxquantr61_done160
    inc $I19
    inc $I19
    set rx59_rep, rx59_bstack[$I19]
    nqp_rxcommit rx59_bstack, rxquantr61_done160
    inc rx59_rep
    nqp_rxmark rx59_bstack, rxquantr61_done160, rx59_pos, rx59_rep
    add $I11, rx59_pos, 1
    gt $I11, rx59_eos, rx59_fail152
    substr $S10, rx59_tgt, rx59_pos, 1
    ne $S10, ucs4:"_", rx59_fail152
    add rx59_pos, 1
    goto rxquantr61_loop159
  rxquantr61_done160:
    rx59_cur."!cursor_pass"(rx59_pos, "decint", 'backtrack'=>1)
    .return (rx59_cur)
  rx59_restart151:
    repr_get_attr_obj rx59_cstack, rx59_cur, rx59_curclass, "$!cstack"
  rx59_fail152:
    unless rx59_bstack, rx59_done150
    pop $I19, rx59_bstack
    if_null rx59_cstack, rx59_cstack_done155
    unless rx59_cstack, rx59_cstack_done155
    dec $I19
    set $P11, rx59_cstack[$I19]
  rx59_cstack_done155:
    pop rx59_rep, rx59_bstack
    pop rx59_pos, rx59_bstack
    pop $I19, rx59_bstack
    lt rx59_pos, -1, rx59_done150
    lt rx59_pos, 0, rx59_fail152
    eq $I19, 0, rx59_fail152
    nqp_islist $I20, rx59_cstack
    unless $I20, rx59_jump153
    elements $I18, rx59_bstack
    le $I18, 0, rx59_cut154
    dec $I18
    set $I18, rx59_bstack[$I18]
  rx59_cut154:
    assign rx59_cstack, $I18
  rx59_jump153:
    jump $I19
  rx59_done150:
    rx59_cur."!cursor_fail"()
    .return (rx59_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decints" :subid("cuid_19_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 57
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx63_start
    .local string rx63_tgt
    .local int rx63_pos
    .local int rx63_off
    .local int rx63_eos
    .local int rx63_rep
    .local pmc rx63_cur
    .local pmc rx63_curclass
    .local pmc rx63_bstack
    .local pmc rx63_cstack
    rx63_start = self."!cursor_start_all"()
    set rx63_cur, rx63_start[0]
    set rx63_tgt, rx63_start[1]
    set rx63_pos, rx63_start[2]
    set rx63_curclass, rx63_start[3]
    set rx63_bstack, rx63_start[4]
    set $I19, rx63_start[5]
    store_lex unicode:"$\x{a2}", rx63_cur
    length rx63_eos, rx63_tgt
    eq $I19, 1, rx63_restart165
    gt rx63_pos, rx63_eos, rx63_fail166
    repr_get_attr_int $I11, self, rx63_curclass, "$!from"
    ne $I11, -1, rxscan64_done172
    goto rxscan64_scan171
  rxscan64_loop170:
    inc rx63_pos
    gt rx63_pos, rx63_eos, rx63_fail166
    repr_bind_attr_int rx63_cur, rx63_curclass, "$!from", rx63_pos
  rxscan64_scan171:
    nqp_rxmark rx63_bstack, rxscan64_loop170, rx63_pos, 0
  rxscan64_done172:
    nqp_rxmark rx63_bstack, rxquantr65_done174, -1, 0
  rxquantr65_loop173:
    repr_bind_attr_int rx63_cur, rx63_curclass, "$!pos", rx63_pos
    $P11 = rx63_cur."ws"()
    repr_get_attr_int $I11, $P11, rx63_curclass, "$!pos"
    lt $I11, 0, rx63_fail166
    repr_get_attr_int rx63_pos, $P11, rx63_curclass, "$!pos"
    repr_bind_attr_int rx63_cur, rx63_curclass, "$!pos", rx63_pos
    $P11 = rx63_cur."decint"()
    repr_get_attr_int $I11, $P11, rx63_curclass, "$!pos"
    lt $I11, 0, rx63_fail166
    nqp_rxmark rx63_bstack, rxsubrule67_pass176, -1, 0
  rxsubrule67_pass176:
    rx63_cstack = rx63_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx63_pos, $P11, rx63_curclass, "$!pos"
    repr_bind_attr_int rx63_cur, rx63_curclass, "$!pos", rx63_pos
    $P11 = rx63_cur."ws"()
    repr_get_attr_int $I11, $P11, rx63_curclass, "$!pos"
    lt $I11, 0, rx63_fail166
    repr_get_attr_int rx63_pos, $P11, rx63_curclass, "$!pos"
    nqp_rxpeek $I19, rx63_bstack, rxquantr65_done174
    inc $I19
    inc $I19
    set rx63_rep, rx63_bstack[$I19]
    nqp_rxcommit rx63_bstack, rxquantr65_done174
    inc rx63_rep
    nqp_rxmark rx63_bstack, rxquantr65_done174, rx63_pos, rx63_rep
    add $I11, rx63_pos, 1
    gt $I11, rx63_eos, rx63_fail166
    substr $S10, rx63_tgt, rx63_pos, 1
    ne $S10, ucs4:",", rx63_fail166
    add rx63_pos, 1
    goto rxquantr65_loop173
  rxquantr65_done174:
    rx63_cur."!cursor_pass"(rx63_pos, "decints", 'backtrack'=>1)
    .return (rx63_cur)
  rx63_restart165:
    repr_get_attr_obj rx63_cstack, rx63_cur, rx63_curclass, "$!cstack"
  rx63_fail166:
    unless rx63_bstack, rx63_done164
    pop $I19, rx63_bstack
    if_null rx63_cstack, rx63_cstack_done169
    unless rx63_cstack, rx63_cstack_done169
    dec $I19
    set $P11, rx63_cstack[$I19]
  rx63_cstack_done169:
    pop rx63_rep, rx63_bstack
    pop rx63_pos, rx63_bstack
    pop $I19, rx63_bstack
    lt rx63_pos, -1, rx63_done164
    lt rx63_pos, 0, rx63_fail166
    eq $I19, 0, rx63_fail166
    nqp_islist $I20, rx63_cstack
    unless $I20, rx63_jump167
    elements $I18, rx63_bstack
    le $I18, 0, rx63_cut168
    dec $I18
    set $I18, rx63_bstack[$I18]
  rx63_cut168:
    assign rx63_cstack, $I18
  rx63_jump167:
    jump $I19
  rx63_done164:
    rx63_cur."!cursor_fail"()
    .return (rx63_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_20_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 59
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx69_start
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    .local pmc rx69_curclass
    .local pmc rx69_bstack
    .local pmc rx69_cstack
    rx69_start = self."!cursor_start_all"()
    set rx69_cur, rx69_start[0]
    set rx69_tgt, rx69_start[1]
    set rx69_pos, rx69_start[2]
    set rx69_curclass, rx69_start[3]
    set rx69_bstack, rx69_start[4]
    set $I19, rx69_start[5]
    store_lex unicode:"$\x{a2}", rx69_cur
    length rx69_eos, rx69_tgt
    eq $I19, 1, rx69_restart180
    gt rx69_pos, rx69_eos, rx69_fail181
    repr_get_attr_int $I11, self, rx69_curclass, "$!from"
    ne $I11, -1, rxscan70_done187
    goto rxscan70_scan186
  rxscan70_loop185:
    inc rx69_pos
    gt rx69_pos, rx69_eos, rx69_fail181
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!from", rx69_pos
  rxscan70_scan186:
    nqp_rxmark rx69_bstack, rxscan70_loop185, rx69_pos, 0
  rxscan70_done187:
    nqp_rxmark rx69_bstack, rxquantr71_done189, -1, 0
  rxquantr71_loop188:
    nqp_rxmark rx69_bstack, rxquantr72_done191, -1, 0
  rxquantr72_loop190:
    ge rx69_pos, rx69_eos, rx69_fail181
    substr $S11, rx69_tgt, rx69_pos, 1
    index $I11, ucs4:"0123456789abcdefABCDEF", $S11
    lt $I11, 0, rx69_fail181
    inc rx69_pos
    nqp_rxpeek $I19, rx69_bstack, rxquantr72_done191
    inc $I19
    inc $I19
    set rx69_rep, rx69_bstack[$I19]
    nqp_rxcommit rx69_bstack, rxquantr72_done191
    inc rx69_rep
    nqp_rxmark rx69_bstack, rxquantr72_done191, rx69_pos, rx69_rep
    goto rxquantr72_loop190
  rxquantr72_done191:
    nqp_rxpeek $I19, rx69_bstack, rxquantr71_done189
    inc $I19
    inc $I19
    set rx69_rep, rx69_bstack[$I19]
    nqp_rxcommit rx69_bstack, rxquantr71_done189
    inc rx69_rep
    nqp_rxmark rx69_bstack, rxquantr71_done189, rx69_pos, rx69_rep
    add $I11, rx69_pos, 1
    gt $I11, rx69_eos, rx69_fail181
    substr $S10, rx69_tgt, rx69_pos, 1
    ne $S10, ucs4:"_", rx69_fail181
    add rx69_pos, 1
    goto rxquantr71_loop188
  rxquantr71_done189:
    rx69_cur."!cursor_pass"(rx69_pos, "hexint", 'backtrack'=>1)
    .return (rx69_cur)
  rx69_restart180:
    repr_get_attr_obj rx69_cstack, rx69_cur, rx69_curclass, "$!cstack"
  rx69_fail181:
    unless rx69_bstack, rx69_done179
    pop $I19, rx69_bstack
    if_null rx69_cstack, rx69_cstack_done184
    unless rx69_cstack, rx69_cstack_done184
    dec $I19
    set $P11, rx69_cstack[$I19]
  rx69_cstack_done184:
    pop rx69_rep, rx69_bstack
    pop rx69_pos, rx69_bstack
    pop $I19, rx69_bstack
    lt rx69_pos, -1, rx69_done179
    lt rx69_pos, 0, rx69_fail181
    eq $I19, 0, rx69_fail181
    nqp_islist $I20, rx69_cstack
    unless $I20, rx69_jump182
    elements $I18, rx69_bstack
    le $I18, 0, rx69_cut183
    dec $I18
    set $I18, rx69_bstack[$I18]
  rx69_cut183:
    assign rx69_cstack, $I18
  rx69_jump182:
    jump $I19
  rx69_done179:
    rx69_cur."!cursor_fail"()
    .return (rx69_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_21_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx73_start
    .local string rx73_tgt
    .local int rx73_pos
    .local int rx73_off
    .local int rx73_eos
    .local int rx73_rep
    .local pmc rx73_cur
    .local pmc rx73_curclass
    .local pmc rx73_bstack
    .local pmc rx73_cstack
    rx73_start = self."!cursor_start_all"()
    set rx73_cur, rx73_start[0]
    set rx73_tgt, rx73_start[1]
    set rx73_pos, rx73_start[2]
    set rx73_curclass, rx73_start[3]
    set rx73_bstack, rx73_start[4]
    set $I19, rx73_start[5]
    store_lex unicode:"$\x{a2}", rx73_cur
    length rx73_eos, rx73_tgt
    eq $I19, 1, rx73_restart194
    gt rx73_pos, rx73_eos, rx73_fail195
    repr_get_attr_int $I11, self, rx73_curclass, "$!from"
    ne $I11, -1, rxscan74_done201
    goto rxscan74_scan200
  rxscan74_loop199:
    inc rx73_pos
    gt rx73_pos, rx73_eos, rx73_fail195
    repr_bind_attr_int rx73_cur, rx73_curclass, "$!from", rx73_pos
  rxscan74_scan200:
    nqp_rxmark rx73_bstack, rxscan74_loop199, rx73_pos, 0
  rxscan74_done201:
    nqp_rxmark rx73_bstack, rxquantr75_done203, -1, 0
  rxquantr75_loop202:
    repr_bind_attr_int rx73_cur, rx73_curclass, "$!pos", rx73_pos
    $P11 = rx73_cur."ws"()
    repr_get_attr_int $I11, $P11, rx73_curclass, "$!pos"
    lt $I11, 0, rx73_fail195
    repr_get_attr_int rx73_pos, $P11, rx73_curclass, "$!pos"
    repr_bind_attr_int rx73_cur, rx73_curclass, "$!pos", rx73_pos
    $P11 = rx73_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx73_curclass, "$!pos"
    lt $I11, 0, rx73_fail195
    nqp_rxmark rx73_bstack, rxsubrule77_pass205, -1, 0
  rxsubrule77_pass205:
    rx73_cstack = rx73_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx73_pos, $P11, rx73_curclass, "$!pos"
    repr_bind_attr_int rx73_cur, rx73_curclass, "$!pos", rx73_pos
    $P11 = rx73_cur."ws"()
    repr_get_attr_int $I11, $P11, rx73_curclass, "$!pos"
    lt $I11, 0, rx73_fail195
    repr_get_attr_int rx73_pos, $P11, rx73_curclass, "$!pos"
    nqp_rxpeek $I19, rx73_bstack, rxquantr75_done203
    inc $I19
    inc $I19
    set rx73_rep, rx73_bstack[$I19]
    nqp_rxcommit rx73_bstack, rxquantr75_done203
    inc rx73_rep
    nqp_rxmark rx73_bstack, rxquantr75_done203, rx73_pos, rx73_rep
    add $I11, rx73_pos, 1
    gt $I11, rx73_eos, rx73_fail195
    substr $S10, rx73_tgt, rx73_pos, 1
    ne $S10, ucs4:",", rx73_fail195
    add rx73_pos, 1
    goto rxquantr75_loop202
  rxquantr75_done203:
    rx73_cur."!cursor_pass"(rx73_pos, "hexints", 'backtrack'=>1)
    .return (rx73_cur)
  rx73_restart194:
    repr_get_attr_obj rx73_cstack, rx73_cur, rx73_curclass, "$!cstack"
  rx73_fail195:
    unless rx73_bstack, rx73_done193
    pop $I19, rx73_bstack
    if_null rx73_cstack, rx73_cstack_done198
    unless rx73_cstack, rx73_cstack_done198
    dec $I19
    set $P11, rx73_cstack[$I19]
  rx73_cstack_done198:
    pop rx73_rep, rx73_bstack
    pop rx73_pos, rx73_bstack
    pop $I19, rx73_bstack
    lt rx73_pos, -1, rx73_done193
    lt rx73_pos, 0, rx73_fail195
    eq $I19, 0, rx73_fail195
    nqp_islist $I20, rx73_cstack
    unless $I20, rx73_jump196
    elements $I18, rx73_bstack
    le $I18, 0, rx73_cut197
    dec $I18
    set $I18, rx73_bstack[$I18]
  rx73_cut197:
    assign rx73_cstack, $I18
  rx73_jump196:
    jump $I19
  rx73_done193:
    rx73_cur."!cursor_fail"()
    .return (rx73_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_22_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx79_start
    .local string rx79_tgt
    .local int rx79_pos
    .local int rx79_off
    .local int rx79_eos
    .local int rx79_rep
    .local pmc rx79_cur
    .local pmc rx79_curclass
    .local pmc rx79_bstack
    .local pmc rx79_cstack
    rx79_start = self."!cursor_start_all"()
    set rx79_cur, rx79_start[0]
    set rx79_tgt, rx79_start[1]
    set rx79_pos, rx79_start[2]
    set rx79_curclass, rx79_start[3]
    set rx79_bstack, rx79_start[4]
    set $I19, rx79_start[5]
    store_lex unicode:"$\x{a2}", rx79_cur
    length rx79_eos, rx79_tgt
    eq $I19, 1, rx79_restart209
    gt rx79_pos, rx79_eos, rx79_fail210
    repr_get_attr_int $I11, self, rx79_curclass, "$!from"
    ne $I11, -1, rxscan80_done216
    goto rxscan80_scan215
  rxscan80_loop214:
    inc rx79_pos
    gt rx79_pos, rx79_eos, rx79_fail210
    repr_bind_attr_int rx79_cur, rx79_curclass, "$!from", rx79_pos
  rxscan80_scan215:
    nqp_rxmark rx79_bstack, rxscan80_loop214, rx79_pos, 0
  rxscan80_done216:
    nqp_rxmark rx79_bstack, rxquantr81_done218, -1, 0
  rxquantr81_loop217:
    nqp_rxmark rx79_bstack, rxquantr82_done220, -1, 0
  rxquantr82_loop219:
    ge rx79_pos, rx79_eos, rx79_fail210
    substr $S11, rx79_tgt, rx79_pos, 1
    index $I11, ucs4:"01234567", $S11
    lt $I11, 0, rx79_fail210
    inc rx79_pos
    nqp_rxpeek $I19, rx79_bstack, rxquantr82_done220
    inc $I19
    inc $I19
    set rx79_rep, rx79_bstack[$I19]
    nqp_rxcommit rx79_bstack, rxquantr82_done220
    inc rx79_rep
    nqp_rxmark rx79_bstack, rxquantr82_done220, rx79_pos, rx79_rep
    goto rxquantr82_loop219
  rxquantr82_done220:
    nqp_rxpeek $I19, rx79_bstack, rxquantr81_done218
    inc $I19
    inc $I19
    set rx79_rep, rx79_bstack[$I19]
    nqp_rxcommit rx79_bstack, rxquantr81_done218
    inc rx79_rep
    nqp_rxmark rx79_bstack, rxquantr81_done218, rx79_pos, rx79_rep
    add $I11, rx79_pos, 1
    gt $I11, rx79_eos, rx79_fail210
    substr $S10, rx79_tgt, rx79_pos, 1
    ne $S10, ucs4:"_", rx79_fail210
    add rx79_pos, 1
    goto rxquantr81_loop217
  rxquantr81_done218:
    rx79_cur."!cursor_pass"(rx79_pos, "octint", 'backtrack'=>1)
    .return (rx79_cur)
  rx79_restart209:
    repr_get_attr_obj rx79_cstack, rx79_cur, rx79_curclass, "$!cstack"
  rx79_fail210:
    unless rx79_bstack, rx79_done208
    pop $I19, rx79_bstack
    if_null rx79_cstack, rx79_cstack_done213
    unless rx79_cstack, rx79_cstack_done213
    dec $I19
    set $P11, rx79_cstack[$I19]
  rx79_cstack_done213:
    pop rx79_rep, rx79_bstack
    pop rx79_pos, rx79_bstack
    pop $I19, rx79_bstack
    lt rx79_pos, -1, rx79_done208
    lt rx79_pos, 0, rx79_fail210
    eq $I19, 0, rx79_fail210
    nqp_islist $I20, rx79_cstack
    unless $I20, rx79_jump211
    elements $I18, rx79_bstack
    le $I18, 0, rx79_cut212
    dec $I18
    set $I18, rx79_bstack[$I18]
  rx79_cut212:
    assign rx79_cstack, $I18
  rx79_jump211:
    jump $I19
  rx79_done208:
    rx79_cur."!cursor_fail"()
    .return (rx79_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_23_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx83_start
    .local string rx83_tgt
    .local int rx83_pos
    .local int rx83_off
    .local int rx83_eos
    .local int rx83_rep
    .local pmc rx83_cur
    .local pmc rx83_curclass
    .local pmc rx83_bstack
    .local pmc rx83_cstack
    rx83_start = self."!cursor_start_all"()
    set rx83_cur, rx83_start[0]
    set rx83_tgt, rx83_start[1]
    set rx83_pos, rx83_start[2]
    set rx83_curclass, rx83_start[3]
    set rx83_bstack, rx83_start[4]
    set $I19, rx83_start[5]
    store_lex unicode:"$\x{a2}", rx83_cur
    length rx83_eos, rx83_tgt
    eq $I19, 1, rx83_restart223
    gt rx83_pos, rx83_eos, rx83_fail224
    repr_get_attr_int $I11, self, rx83_curclass, "$!from"
    ne $I11, -1, rxscan84_done230
    goto rxscan84_scan229
  rxscan84_loop228:
    inc rx83_pos
    gt rx83_pos, rx83_eos, rx83_fail224
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!from", rx83_pos
  rxscan84_scan229:
    nqp_rxmark rx83_bstack, rxscan84_loop228, rx83_pos, 0
  rxscan84_done230:
    nqp_rxmark rx83_bstack, rxquantr85_done232, -1, 0
  rxquantr85_loop231:
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."ws"()
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail224
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."octint"()
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail224
    nqp_rxmark rx83_bstack, rxsubrule87_pass234, -1, 0
  rxsubrule87_pass234:
    rx83_cstack = rx83_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."ws"()
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail224
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
    nqp_rxpeek $I19, rx83_bstack, rxquantr85_done232
    inc $I19
    inc $I19
    set rx83_rep, rx83_bstack[$I19]
    nqp_rxcommit rx83_bstack, rxquantr85_done232
    inc rx83_rep
    nqp_rxmark rx83_bstack, rxquantr85_done232, rx83_pos, rx83_rep
    add $I11, rx83_pos, 1
    gt $I11, rx83_eos, rx83_fail224
    substr $S10, rx83_tgt, rx83_pos, 1
    ne $S10, ucs4:",", rx83_fail224
    add rx83_pos, 1
    goto rxquantr85_loop231
  rxquantr85_done232:
    rx83_cur."!cursor_pass"(rx83_pos, "octints", 'backtrack'=>1)
    .return (rx83_cur)
  rx83_restart223:
    repr_get_attr_obj rx83_cstack, rx83_cur, rx83_curclass, "$!cstack"
  rx83_fail224:
    unless rx83_bstack, rx83_done222
    pop $I19, rx83_bstack
    if_null rx83_cstack, rx83_cstack_done227
    unless rx83_cstack, rx83_cstack_done227
    dec $I19
    set $P11, rx83_cstack[$I19]
  rx83_cstack_done227:
    pop rx83_rep, rx83_bstack
    pop rx83_pos, rx83_bstack
    pop $I19, rx83_bstack
    lt rx83_pos, -1, rx83_done222
    lt rx83_pos, 0, rx83_fail224
    eq $I19, 0, rx83_fail224
    nqp_islist $I20, rx83_cstack
    unless $I20, rx83_jump225
    elements $I18, rx83_bstack
    le $I18, 0, rx83_cut226
    dec $I18
    set $I18, rx83_bstack[$I18]
  rx83_cut226:
    assign rx83_cstack, $I18
  rx83_jump225:
    jump $I19
  rx83_done222:
    rx83_cur."!cursor_fail"()
    .return (rx83_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_24_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx89_start
    .local string rx89_tgt
    .local int rx89_pos
    .local int rx89_off
    .local int rx89_eos
    .local int rx89_rep
    .local pmc rx89_cur
    .local pmc rx89_curclass
    .local pmc rx89_bstack
    .local pmc rx89_cstack
    rx89_start = self."!cursor_start_all"()
    set rx89_cur, rx89_start[0]
    set rx89_tgt, rx89_start[1]
    set rx89_pos, rx89_start[2]
    set rx89_curclass, rx89_start[3]
    set rx89_bstack, rx89_start[4]
    set $I19, rx89_start[5]
    store_lex unicode:"$\x{a2}", rx89_cur
    length rx89_eos, rx89_tgt
    eq $I19, 1, rx89_restart238
    gt rx89_pos, rx89_eos, rx89_fail239
    repr_get_attr_int $I11, self, rx89_curclass, "$!from"
    ne $I11, -1, rxscan90_done245
    goto rxscan90_scan244
  rxscan90_loop243:
    inc rx89_pos
    gt rx89_pos, rx89_eos, rx89_fail239
    repr_bind_attr_int rx89_cur, rx89_curclass, "$!from", rx89_pos
  rxscan90_scan244:
    nqp_rxmark rx89_bstack, rxscan90_loop243, rx89_pos, 0
  rxscan90_done245:
    nqp_rxmark rx89_bstack, rxquantr91_done247, -1, 0
  rxquantr91_loop246:
    nqp_rxmark rx89_bstack, rxquantr92_done249, -1, 0
  rxquantr92_loop248:
    ge rx89_pos, rx89_eos, rx89_fail239
    substr $S11, rx89_tgt, rx89_pos, 1
    index $I11, ucs4:"01", $S11
    lt $I11, 0, rx89_fail239
    inc rx89_pos
    nqp_rxpeek $I19, rx89_bstack, rxquantr92_done249
    inc $I19
    inc $I19
    set rx89_rep, rx89_bstack[$I19]
    nqp_rxcommit rx89_bstack, rxquantr92_done249
    inc rx89_rep
    nqp_rxmark rx89_bstack, rxquantr92_done249, rx89_pos, rx89_rep
    goto rxquantr92_loop248
  rxquantr92_done249:
    nqp_rxpeek $I19, rx89_bstack, rxquantr91_done247
    inc $I19
    inc $I19
    set rx89_rep, rx89_bstack[$I19]
    nqp_rxcommit rx89_bstack, rxquantr91_done247
    inc rx89_rep
    nqp_rxmark rx89_bstack, rxquantr91_done247, rx89_pos, rx89_rep
    add $I11, rx89_pos, 1
    gt $I11, rx89_eos, rx89_fail239
    substr $S10, rx89_tgt, rx89_pos, 1
    ne $S10, ucs4:"_", rx89_fail239
    add rx89_pos, 1
    goto rxquantr91_loop246
  rxquantr91_done247:
    rx89_cur."!cursor_pass"(rx89_pos, "binint", 'backtrack'=>1)
    .return (rx89_cur)
  rx89_restart238:
    repr_get_attr_obj rx89_cstack, rx89_cur, rx89_curclass, "$!cstack"
  rx89_fail239:
    unless rx89_bstack, rx89_done237
    pop $I19, rx89_bstack
    if_null rx89_cstack, rx89_cstack_done242
    unless rx89_cstack, rx89_cstack_done242
    dec $I19
    set $P11, rx89_cstack[$I19]
  rx89_cstack_done242:
    pop rx89_rep, rx89_bstack
    pop rx89_pos, rx89_bstack
    pop $I19, rx89_bstack
    lt rx89_pos, -1, rx89_done237
    lt rx89_pos, 0, rx89_fail239
    eq $I19, 0, rx89_fail239
    nqp_islist $I20, rx89_cstack
    unless $I20, rx89_jump240
    elements $I18, rx89_bstack
    le $I18, 0, rx89_cut241
    dec $I18
    set $I18, rx89_bstack[$I18]
  rx89_cut241:
    assign rx89_cstack, $I18
  rx89_jump240:
    jump $I19
  rx89_done237:
    rx89_cur."!cursor_fail"()
    .return (rx89_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_25_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx93_start
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    .local pmc rx93_curclass
    .local pmc rx93_bstack
    .local pmc rx93_cstack
    rx93_start = self."!cursor_start_all"()
    set rx93_cur, rx93_start[0]
    set rx93_tgt, rx93_start[1]
    set rx93_pos, rx93_start[2]
    set rx93_curclass, rx93_start[3]
    set rx93_bstack, rx93_start[4]
    set $I19, rx93_start[5]
    store_lex unicode:"$\x{a2}", rx93_cur
    length rx93_eos, rx93_tgt
    eq $I19, 1, rx93_restart252
    gt rx93_pos, rx93_eos, rx93_fail253
    repr_get_attr_int $I11, self, rx93_curclass, "$!from"
    ne $I11, -1, rxscan94_done259
    goto rxscan94_scan258
  rxscan94_loop257:
    inc rx93_pos
    gt rx93_pos, rx93_eos, rx93_fail253
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!from", rx93_pos
  rxscan94_scan258:
    nqp_rxmark rx93_bstack, rxscan94_loop257, rx93_pos, 0
  rxscan94_done259:
    nqp_rxmark rx93_bstack, rxquantr95_done261, -1, 0
  rxquantr95_loop260:
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."ws"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail253
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."binint"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail253
    nqp_rxmark rx93_bstack, rxsubrule97_pass263, -1, 0
  rxsubrule97_pass263:
    rx93_cstack = rx93_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    repr_bind_attr_int rx93_cur, rx93_curclass, "$!pos", rx93_pos
    $P11 = rx93_cur."ws"()
    repr_get_attr_int $I11, $P11, rx93_curclass, "$!pos"
    lt $I11, 0, rx93_fail253
    repr_get_attr_int rx93_pos, $P11, rx93_curclass, "$!pos"
    nqp_rxpeek $I19, rx93_bstack, rxquantr95_done261
    inc $I19
    inc $I19
    set rx93_rep, rx93_bstack[$I19]
    nqp_rxcommit rx93_bstack, rxquantr95_done261
    inc rx93_rep
    nqp_rxmark rx93_bstack, rxquantr95_done261, rx93_pos, rx93_rep
    add $I11, rx93_pos, 1
    gt $I11, rx93_eos, rx93_fail253
    substr $S10, rx93_tgt, rx93_pos, 1
    ne $S10, ucs4:",", rx93_fail253
    add rx93_pos, 1
    goto rxquantr95_loop260
  rxquantr95_done261:
    rx93_cur."!cursor_pass"(rx93_pos, "binints", 'backtrack'=>1)
    .return (rx93_cur)
  rx93_restart252:
    repr_get_attr_obj rx93_cstack, rx93_cur, rx93_curclass, "$!cstack"
  rx93_fail253:
    unless rx93_bstack, rx93_done251
    pop $I19, rx93_bstack
    if_null rx93_cstack, rx93_cstack_done256
    unless rx93_cstack, rx93_cstack_done256
    dec $I19
    set $P11, rx93_cstack[$I19]
  rx93_cstack_done256:
    pop rx93_rep, rx93_bstack
    pop rx93_pos, rx93_bstack
    pop $I19, rx93_bstack
    lt rx93_pos, -1, rx93_done251
    lt rx93_pos, 0, rx93_fail253
    eq $I19, 0, rx93_fail253
    nqp_islist $I20, rx93_cstack
    unless $I20, rx93_jump254
    elements $I18, rx93_bstack
    le $I18, 0, rx93_cut255
    dec $I18
    set $I18, rx93_bstack[$I18]
  rx93_cut255:
    assign rx93_cstack, $I18
  rx93_jump254:
    jump $I19
  rx93_done251:
    rx93_cur."!cursor_fail"()
    .return (rx93_cur) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_26_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx99_start
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    .local pmc rx99_curclass
    .local pmc rx99_bstack
    .local pmc rx99_cstack
    rx99_start = self."!cursor_start_all"()
    set rx99_cur, rx99_start[0]
    set rx99_tgt, rx99_start[1]
    set rx99_pos, rx99_start[2]
    set rx99_curclass, rx99_start[3]
    set rx99_bstack, rx99_start[4]
    set $I19, rx99_start[5]
    store_lex unicode:"$\x{a2}", rx99_cur
    length rx99_eos, rx99_tgt
    eq $I19, 1, rx99_restart267
    gt rx99_pos, rx99_eos, rx99_fail268
    repr_get_attr_int $I11, self, rx99_curclass, "$!from"
    ne $I11, -1, rxscan100_done274
    goto rxscan100_scan273
  rxscan100_loop272:
    inc rx99_pos
    gt rx99_pos, rx99_eos, rx99_fail268
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!from", rx99_pos
  rxscan100_scan273:
    nqp_rxmark rx99_bstack, rxscan100_loop272, rx99_pos, 0
  rxscan100_done274:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt101_0276
    nqp_push_label $P11, alt101_1286
    nqp_rxmark rx99_bstack, alt101_end275, -1, 0
    rx99_cur."!alt"(rx99_pos, "alt_nfa__4_1361633912.557", $P11)
    goto rx99_fail268
  alt101_0276:
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail268
    substr $S10, rx99_tgt, rx99_pos, 1
    ne $S10, ucs4:"0", rx99_fail268
    add rx99_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt102_0278
    nqp_push_label $P11, alt102_1280
    nqp_push_label $P11, alt102_2282
    nqp_push_label $P11, alt102_3284
    nqp_rxmark rx99_bstack, alt102_end277, -1, 0
    rx99_cur."!alt"(rx99_pos, "alt_nfa__3_1361633912.557", $P11)
    goto rx99_fail268
  alt102_0278:
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail268
    substr $S10, rx99_tgt, rx99_pos, 1
    ne $S10, ucs4:"b", rx99_fail268
    add rx99_pos, 1
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."binint"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail268
    nqp_rxmark rx99_bstack, rxsubrule103_pass279, -1, 0
  rxsubrule103_pass279:
    rx99_cstack = rx99_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    goto alt102_end277
  alt102_1280:
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail268
    substr $S10, rx99_tgt, rx99_pos, 1
    ne $S10, ucs4:"o", rx99_fail268
    add rx99_pos, 1
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."octint"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail268
    nqp_rxmark rx99_bstack, rxsubrule104_pass281, -1, 0
  rxsubrule104_pass281:
    rx99_cstack = rx99_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    goto alt102_end277
  alt102_2282:
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail268
    substr $S10, rx99_tgt, rx99_pos, 1
    ne $S10, ucs4:"x", rx99_fail268
    add rx99_pos, 1
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail268
    nqp_rxmark rx99_bstack, rxsubrule105_pass283, -1, 0
  rxsubrule105_pass283:
    rx99_cstack = rx99_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    goto alt102_end277
  alt102_3284:
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail268
    substr $S10, rx99_tgt, rx99_pos, 1
    ne $S10, ucs4:"d", rx99_fail268
    add rx99_pos, 1
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."decint"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail268
    nqp_rxmark rx99_bstack, rxsubrule106_pass285, -1, 0
  rxsubrule106_pass285:
    rx99_cstack = rx99_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    goto alt102_end277
  alt102_end277:
    nqp_rxcommit rx99_bstack, alt102_end277
    goto alt101_end275
  alt101_1286:
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."decint"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail268
    nqp_rxmark rx99_bstack, rxsubrule107_pass287, -1, 0
  rxsubrule107_pass287:
    rx99_cstack = rx99_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    goto alt101_end275
  alt101_end275:
    nqp_rxcommit rx99_bstack, alt101_end275
    rx99_cur."!cursor_pass"(rx99_pos, "integer", 'backtrack'=>1)
    .return (rx99_cur)
  rx99_restart267:
    repr_get_attr_obj rx99_cstack, rx99_cur, rx99_curclass, "$!cstack"
  rx99_fail268:
    unless rx99_bstack, rx99_done266
    pop $I19, rx99_bstack
    if_null rx99_cstack, rx99_cstack_done271
    unless rx99_cstack, rx99_cstack_done271
    dec $I19
    set $P11, rx99_cstack[$I19]
  rx99_cstack_done271:
    pop rx99_rep, rx99_bstack
    pop rx99_pos, rx99_bstack
    pop $I19, rx99_bstack
    lt rx99_pos, -1, rx99_done266
    lt rx99_pos, 0, rx99_fail268
    eq $I19, 0, rx99_fail268
    nqp_islist $I20, rx99_cstack
    unless $I20, rx99_jump269
    elements $I18, rx99_bstack
    le $I18, 0, rx99_cut270
    dec $I18
    set $I18, rx99_bstack[$I18]
  rx99_cut270:
    assign rx99_cstack, $I18
  rx99_jump269:
    jump $I19
  rx99_done266:
    rx99_cur."!cursor_fail"()
    .return (rx99_cur) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_27_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx108_start
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    .local pmc rx108_curclass
    .local pmc rx108_bstack
    .local pmc rx108_cstack
    rx108_start = self."!cursor_start_all"()
    set rx108_cur, rx108_start[0]
    set rx108_tgt, rx108_start[1]
    set rx108_pos, rx108_start[2]
    set rx108_curclass, rx108_start[3]
    set rx108_bstack, rx108_start[4]
    set $I19, rx108_start[5]
    store_lex unicode:"$\x{a2}", rx108_cur
    length rx108_eos, rx108_tgt
    eq $I19, 1, rx108_restart290
    gt rx108_pos, rx108_eos, rx108_fail291
    repr_get_attr_int $I11, self, rx108_curclass, "$!from"
    ne $I11, -1, rxscan109_done297
    goto rxscan109_scan296
  rxscan109_loop295:
    inc rx108_pos
    gt rx108_pos, rx108_eos, rx108_fail291
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!from", rx108_pos
  rxscan109_scan296:
    nqp_rxmark rx108_bstack, rxscan109_loop295, rx108_pos, 0
  rxscan109_done297:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt110_0299
    nqp_push_label $P11, alt110_1308
    nqp_push_label $P11, alt110_2319
    nqp_rxmark rx108_bstack, alt110_end298, -1, 0
    rx108_cur."!alt"(rx108_pos, "alt_nfa__5_1361633912.577", $P11)
    goto rx108_fail291
  alt110_0299:
    nqp_rxmark rx108_bstack, rxcap111_fail301, rx108_pos, 0
    add $I11, rx108_pos, 1
    gt $I11, rx108_eos, rx108_fail291
    substr $S10, rx108_tgt, rx108_pos, 1
    ne $S10, ucs4:".", rx108_fail291
    add rx108_pos, 1
    nqp_rxmark rx108_bstack, rxquantr112_done303, -1, 0
  rxquantr112_loop302:
    ge rx108_pos, rx108_eos, rx108_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx108_tgt, rx108_pos
    unless $I11, rx108_fail291
    add rx108_pos, 1
    nqp_rxpeek $I19, rx108_bstack, rxquantr112_done303
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr112_done303
    inc rx108_rep
    nqp_rxmark rx108_bstack, rxquantr112_done303, rx108_pos, rx108_rep
    goto rxquantr112_loop302
  rxquantr112_done303:
    nqp_rxpeek $I19, rx108_bstack, rxcap111_fail301
    inc $I19
    set $I11, rx108_bstack[$I19]
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!pos", rx108_pos
    $P11 = rx108_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx108_pos)
    rx108_cstack = rx108_cur."!cursor_capture"($P11, "coeff")
    goto rxcap111_done300
  rxcap111_fail301:
    goto rx108_fail291
  rxcap111_done300:
    nqp_rxmark rx108_bstack, rxquantr113_done305, rx108_pos, 0
  rxquantr113_loop304:
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!pos", rx108_pos
    $P11 = rx108_cur."escale"()
    repr_get_attr_int $I11, $P11, rx108_curclass, "$!pos"
    lt $I11, 0, rx108_fail291
    goto rxsubrule114_pass306
  rxsubrule114_back307:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx108_curclass, "$!pos"
    lt $I11, 0, rx108_fail291
  rxsubrule114_pass306:
    rx108_cstack = rx108_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule114_back307
    push rx108_bstack, $I11
    push rx108_bstack, 0
    push rx108_bstack, rx108_pos
    elements $I11, rx108_cstack
    push rx108_bstack, $I11
    repr_get_attr_int rx108_pos, $P11, rx108_curclass, "$!pos"
    nqp_rxpeek $I19, rx108_bstack, rxquantr113_done305
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr113_done305
    inc rx108_rep
  rxquantr113_done305:
    goto alt110_end298
  alt110_1308:
    nqp_rxmark rx108_bstack, rxcap115_fail310, rx108_pos, 0
    nqp_rxmark rx108_bstack, rxquantr116_done312, -1, 0
  rxquantr116_loop311:
    ge rx108_pos, rx108_eos, rx108_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx108_tgt, rx108_pos
    unless $I11, rx108_fail291
    add rx108_pos, 1
    nqp_rxpeek $I19, rx108_bstack, rxquantr116_done312
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr116_done312
    inc rx108_rep
    nqp_rxmark rx108_bstack, rxquantr116_done312, rx108_pos, rx108_rep
    goto rxquantr116_loop311
  rxquantr116_done312:
    add $I11, rx108_pos, 1
    gt $I11, rx108_eos, rx108_fail291
    substr $S10, rx108_tgt, rx108_pos, 1
    ne $S10, ucs4:".", rx108_fail291
    add rx108_pos, 1
    nqp_rxmark rx108_bstack, rxquantr117_done314, -1, 0
  rxquantr117_loop313:
    ge rx108_pos, rx108_eos, rx108_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx108_tgt, rx108_pos
    unless $I11, rx108_fail291
    add rx108_pos, 1
    nqp_rxpeek $I19, rx108_bstack, rxquantr117_done314
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr117_done314
    inc rx108_rep
    nqp_rxmark rx108_bstack, rxquantr117_done314, rx108_pos, rx108_rep
    goto rxquantr117_loop313
  rxquantr117_done314:
    nqp_rxpeek $I19, rx108_bstack, rxcap115_fail310
    inc $I19
    set $I11, rx108_bstack[$I19]
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!pos", rx108_pos
    $P11 = rx108_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx108_pos)
    rx108_cstack = rx108_cur."!cursor_capture"($P11, "coeff")
    goto rxcap115_done309
  rxcap115_fail310:
    goto rx108_fail291
  rxcap115_done309:
    nqp_rxmark rx108_bstack, rxquantr118_done316, rx108_pos, 0
  rxquantr118_loop315:
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!pos", rx108_pos
    $P11 = rx108_cur."escale"()
    repr_get_attr_int $I11, $P11, rx108_curclass, "$!pos"
    lt $I11, 0, rx108_fail291
    goto rxsubrule119_pass317
  rxsubrule119_back318:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx108_curclass, "$!pos"
    lt $I11, 0, rx108_fail291
  rxsubrule119_pass317:
    rx108_cstack = rx108_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule119_back318
    push rx108_bstack, $I11
    push rx108_bstack, 0
    push rx108_bstack, rx108_pos
    elements $I11, rx108_cstack
    push rx108_bstack, $I11
    repr_get_attr_int rx108_pos, $P11, rx108_curclass, "$!pos"
    nqp_rxpeek $I19, rx108_bstack, rxquantr118_done316
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr118_done316
    inc rx108_rep
  rxquantr118_done316:
    goto alt110_end298
  alt110_2319:
    nqp_rxmark rx108_bstack, rxcap120_fail321, rx108_pos, 0
    nqp_rxmark rx108_bstack, rxquantr121_done323, -1, 0
  rxquantr121_loop322:
    ge rx108_pos, rx108_eos, rx108_fail291
    is_cclass $I11, .CCLASS_NUMERIC, rx108_tgt, rx108_pos
    unless $I11, rx108_fail291
    add rx108_pos, 1
    nqp_rxpeek $I19, rx108_bstack, rxquantr121_done323
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr121_done323
    inc rx108_rep
    nqp_rxmark rx108_bstack, rxquantr121_done323, rx108_pos, rx108_rep
    goto rxquantr121_loop322
  rxquantr121_done323:
    nqp_rxpeek $I19, rx108_bstack, rxcap120_fail321
    inc $I19
    set $I11, rx108_bstack[$I19]
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!pos", rx108_pos
    $P11 = rx108_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx108_pos)
    rx108_cstack = rx108_cur."!cursor_capture"($P11, "coeff")
    goto rxcap120_done320
  rxcap120_fail321:
    goto rx108_fail291
  rxcap120_done320:
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!pos", rx108_pos
    $P11 = rx108_cur."escale"()
    repr_get_attr_int $I11, $P11, rx108_curclass, "$!pos"
    lt $I11, 0, rx108_fail291
    nqp_rxmark rx108_bstack, rxsubrule122_pass324, -1, 0
  rxsubrule122_pass324:
    rx108_cstack = rx108_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx108_pos, $P11, rx108_curclass, "$!pos"
    goto alt110_end298
  alt110_end298:
    rx108_cur."!cursor_pass"(rx108_pos, "dec_number", 'backtrack'=>1)
    .return (rx108_cur)
  rx108_restart290:
    repr_get_attr_obj rx108_cstack, rx108_cur, rx108_curclass, "$!cstack"
  rx108_fail291:
    unless rx108_bstack, rx108_done289
    pop $I19, rx108_bstack
    if_null rx108_cstack, rx108_cstack_done294
    unless rx108_cstack, rx108_cstack_done294
    dec $I19
    set $P11, rx108_cstack[$I19]
  rx108_cstack_done294:
    pop rx108_rep, rx108_bstack
    pop rx108_pos, rx108_bstack
    pop $I19, rx108_bstack
    lt rx108_pos, -1, rx108_done289
    lt rx108_pos, 0, rx108_fail291
    eq $I19, 0, rx108_fail291
    nqp_islist $I20, rx108_cstack
    unless $I20, rx108_jump292
    elements $I18, rx108_bstack
    le $I18, 0, rx108_cut293
    dec $I18
    set $I18, rx108_bstack[$I18]
  rx108_cut293:
    assign rx108_cstack, $I18
  rx108_jump292:
    jump $I19
  rx108_done289:
    rx108_cur."!cursor_fail"()
    .return (rx108_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_28_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 85
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx123_start
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    .local pmc rx123_curclass
    .local pmc rx123_bstack
    .local pmc rx123_cstack
    rx123_start = self."!cursor_start_all"()
    set rx123_cur, rx123_start[0]
    set rx123_tgt, rx123_start[1]
    set rx123_pos, rx123_start[2]
    set rx123_curclass, rx123_start[3]
    set rx123_bstack, rx123_start[4]
    set $I19, rx123_start[5]
    store_lex unicode:"$\x{a2}", rx123_cur
    length rx123_eos, rx123_tgt
    eq $I19, 1, rx123_restart327
    gt rx123_pos, rx123_eos, rx123_fail328
    repr_get_attr_int $I11, self, rx123_curclass, "$!from"
    ne $I11, -1, rxscan124_done334
    goto rxscan124_scan333
  rxscan124_loop332:
    inc rx123_pos
    gt rx123_pos, rx123_eos, rx123_fail328
    repr_bind_attr_int rx123_cur, rx123_curclass, "$!from", rx123_pos
  rxscan124_scan333:
    nqp_rxmark rx123_bstack, rxscan124_loop332, rx123_pos, 0
  rxscan124_done334:
    ge rx123_pos, rx123_eos, rx123_fail328
    substr $S11, rx123_tgt, rx123_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx123_fail328
    inc rx123_pos
    nqp_rxmark rx123_bstack, rxquantr125_done336, rx123_pos, 0
  rxquantr125_loop335:
  alt126_0338:
    nqp_rxmark rx123_bstack, alt126_1339, rx123_pos, 0
    add $I11, rx123_pos, 1
    gt $I11, rx123_eos, rx123_fail328
    substr $S10, rx123_tgt, rx123_pos, 1
    ne $S10, ucs4:"-", rx123_fail328
    add rx123_pos, 1
    goto alt126_end337
  alt126_1339:
    ge rx123_pos, rx123_eos, rx123_fail328
    substr $S11, rx123_tgt, rx123_pos, 1
    index $I11, ucs4:"+", $S11
    lt $I11, 0, rx123_fail328
    inc rx123_pos
  alt126_end337:
    nqp_rxpeek $I19, rx123_bstack, rxquantr125_done336
    inc $I19
    inc $I19
    set rx123_rep, rx123_bstack[$I19]
    nqp_rxcommit rx123_bstack, rxquantr125_done336
    inc rx123_rep
  rxquantr125_done336:
    nqp_rxmark rx123_bstack, rxquantr127_done341, -1, 0
  rxquantr127_loop340:
    ge rx123_pos, rx123_eos, rx123_fail328
    is_cclass $I11, .CCLASS_NUMERIC, rx123_tgt, rx123_pos
    unless $I11, rx123_fail328
    add rx123_pos, 1
    nqp_rxpeek $I19, rx123_bstack, rxquantr127_done341
    inc $I19
    inc $I19
    set rx123_rep, rx123_bstack[$I19]
    nqp_rxcommit rx123_bstack, rxquantr127_done341
    inc rx123_rep
    nqp_rxmark rx123_bstack, rxquantr127_done341, rx123_pos, rx123_rep
    goto rxquantr127_loop340
  rxquantr127_done341:
    rx123_cur."!cursor_pass"(rx123_pos, "escale", 'backtrack'=>1)
    .return (rx123_cur)
  rx123_restart327:
    repr_get_attr_obj rx123_cstack, rx123_cur, rx123_curclass, "$!cstack"
  rx123_fail328:
    unless rx123_bstack, rx123_done326
    pop $I19, rx123_bstack
    if_null rx123_cstack, rx123_cstack_done331
    unless rx123_cstack, rx123_cstack_done331
    dec $I19
    set $P11, rx123_cstack[$I19]
  rx123_cstack_done331:
    pop rx123_rep, rx123_bstack
    pop rx123_pos, rx123_bstack
    pop $I19, rx123_bstack
    lt rx123_pos, -1, rx123_done326
    lt rx123_pos, 0, rx123_fail328
    eq $I19, 0, rx123_fail328
    nqp_islist $I20, rx123_cstack
    unless $I20, rx123_jump329
    elements $I18, rx123_bstack
    le $I18, 0, rx123_cut330
    dec $I18
    set $I18, rx123_bstack[$I18]
  rx123_cut330:
    assign rx123_cstack, $I18
  rx123_jump329:
    jump $I19
  rx123_done326:
    rx123_cur."!cursor_fail"()
    .return (rx123_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_29_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
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
    eq $I19, 1, rx128_restart344
    gt rx128_pos, rx128_eos, rx128_fail345
    repr_get_attr_int $I11, self, rx128_curclass, "$!from"
    ne $I11, -1, rxscan129_done351
    goto rxscan129_scan350
  rxscan129_loop349:
    inc rx128_pos
    gt rx128_pos, rx128_eos, rx128_fail345
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!from", rx128_pos
  rxscan129_scan350:
    nqp_rxmark rx128_bstack, rxscan129_loop349, rx128_pos, 0
  rxscan129_done351:
    add $I11, rx128_pos, 2
    gt $I11, rx128_eos, rx128_fail345
    substr $S10, rx128_tgt, rx128_pos, 2
    ne $S10, ucs4:"\\\\", rx128_fail345
    add rx128_pos, 2
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail345
    rx128_cur."!cursor_pass"(rx128_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx128_cur)
  rx128_restart344:
    repr_get_attr_obj rx128_cstack, rx128_cur, rx128_curclass, "$!cstack"
  rx128_fail345:
    unless rx128_bstack, rx128_done343
    pop $I19, rx128_bstack
    if_null rx128_cstack, rx128_cstack_done348
    unless rx128_cstack, rx128_cstack_done348
    dec $I19
    set $P11, rx128_cstack[$I19]
  rx128_cstack_done348:
    pop rx128_rep, rx128_bstack
    pop rx128_pos, rx128_bstack
    pop $I19, rx128_bstack
    lt rx128_pos, -1, rx128_done343
    lt rx128_pos, 0, rx128_fail345
    eq $I19, 0, rx128_fail345
    nqp_islist $I20, rx128_cstack
    unless $I20, rx128_jump346
    elements $I18, rx128_bstack
    le $I18, 0, rx128_cut347
    dec $I18
    set $I18, rx128_bstack[$I18]
  rx128_cut347:
    assign rx128_cstack, $I18
  rx128_jump346:
    jump $I19
  rx128_done343:
    rx128_cur."!cursor_fail"()
    .return (rx128_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx130_start
    .local string rx130_tgt
    .local int rx130_pos
    .local int rx130_off
    .local int rx130_eos
    .local int rx130_rep
    .local pmc rx130_cur
    .local pmc rx130_curclass
    .local pmc rx130_bstack
    .local pmc rx130_cstack
    rx130_start = self."!cursor_start_all"()
    set rx130_cur, rx130_start[0]
    set rx130_tgt, rx130_start[1]
    set rx130_pos, rx130_start[2]
    set rx130_curclass, rx130_start[3]
    set rx130_bstack, rx130_start[4]
    set $I19, rx130_start[5]
    store_lex unicode:"$\x{a2}", rx130_cur
    length rx130_eos, rx130_tgt
    eq $I19, 1, rx130_restart354
    gt rx130_pos, rx130_eos, rx130_fail355
    repr_get_attr_int $I11, self, rx130_curclass, "$!from"
    ne $I11, -1, rxscan131_done361
    goto rxscan131_scan360
  rxscan131_loop359:
    inc rx130_pos
    gt rx130_pos, rx130_eos, rx130_fail355
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!from", rx130_pos
  rxscan131_scan360:
    nqp_rxmark rx130_bstack, rxscan131_loop359, rx130_pos, 0
  rxscan131_done361:
    add $I11, rx130_pos, 1
    gt $I11, rx130_eos, rx130_fail355
    substr $S10, rx130_tgt, rx130_pos, 1
    ne $S10, ucs4:"\\", rx130_fail355
    add rx130_pos, 1
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx130_curclass, "$!pos"
    lt $I11, 0, rx130_fail355
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx130_curclass, "$!pos"
    lt $I11, 0, rx130_fail355
    nqp_rxmark rx130_bstack, rxsubrule132_pass362, -1, 0
  rxsubrule132_pass362:
    rx130_cstack = rx130_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx130_pos, $P11, rx130_curclass, "$!pos"
    rx130_cur."!cursor_pass"(rx130_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx130_cur)
  rx130_restart354:
    repr_get_attr_obj rx130_cstack, rx130_cur, rx130_curclass, "$!cstack"
  rx130_fail355:
    unless rx130_bstack, rx130_done353
    pop $I19, rx130_bstack
    if_null rx130_cstack, rx130_cstack_done358
    unless rx130_cstack, rx130_cstack_done358
    dec $I19
    set $P11, rx130_cstack[$I19]
  rx130_cstack_done358:
    pop rx130_rep, rx130_bstack
    pop rx130_pos, rx130_bstack
    pop $I19, rx130_bstack
    lt rx130_pos, -1, rx130_done353
    lt rx130_pos, 0, rx130_fail355
    eq $I19, 0, rx130_fail355
    nqp_islist $I20, rx130_cstack
    unless $I20, rx130_jump356
    elements $I18, rx130_bstack
    le $I18, 0, rx130_cut357
    dec $I18
    set $I18, rx130_bstack[$I18]
  rx130_cut357:
    assign rx130_cstack, $I18
  rx130_jump356:
    jump $I19
  rx130_done353:
    rx130_cur."!cursor_fail"()
    .return (rx130_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_32_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
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
    eq $I19, 1, rx133_restart365
    gt rx133_pos, rx133_eos, rx133_fail366
    repr_get_attr_int $I11, self, rx133_curclass, "$!from"
    ne $I11, -1, rxscan134_done372
    goto rxscan134_scan371
  rxscan134_loop370:
    inc rx133_pos
    gt rx133_pos, rx133_eos, rx133_fail366
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!from", rx133_pos
  rxscan134_scan371:
    nqp_rxmark rx133_bstack, rxscan134_loop370, rx133_pos, 0
  rxscan134_done372:
    add $I11, rx133_pos, 2
    gt $I11, rx133_eos, rx133_fail366
    substr $S10, rx133_tgt, rx133_pos, 2
    ne $S10, ucs4:"\\b", rx133_fail366
    add rx133_pos, 2
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!pos", rx133_pos
    $P11 = rx133_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx133_curclass, "$!pos"
    lt $I11, 0, rx133_fail366
    rx133_cur."!cursor_pass"(rx133_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx133_cur)
  rx133_restart365:
    repr_get_attr_obj rx133_cstack, rx133_cur, rx133_curclass, "$!cstack"
  rx133_fail366:
    unless rx133_bstack, rx133_done364
    pop $I19, rx133_bstack
    if_null rx133_cstack, rx133_cstack_done369
    unless rx133_cstack, rx133_cstack_done369
    dec $I19
    set $P11, rx133_cstack[$I19]
  rx133_cstack_done369:
    pop rx133_rep, rx133_bstack
    pop rx133_pos, rx133_bstack
    pop $I19, rx133_bstack
    lt rx133_pos, -1, rx133_done364
    lt rx133_pos, 0, rx133_fail366
    eq $I19, 0, rx133_fail366
    nqp_islist $I20, rx133_cstack
    unless $I20, rx133_jump367
    elements $I18, rx133_bstack
    le $I18, 0, rx133_cut368
    dec $I18
    set $I18, rx133_bstack[$I18]
  rx133_cut368:
    assign rx133_cstack, $I18
  rx133_jump367:
    jump $I19
  rx133_done364:
    rx133_cur."!cursor_fail"()
    .return (rx133_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_33_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
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
    eq $I19, 1, rx135_restart375
    gt rx135_pos, rx135_eos, rx135_fail376
    repr_get_attr_int $I11, self, rx135_curclass, "$!from"
    ne $I11, -1, rxscan136_done382
    goto rxscan136_scan381
  rxscan136_loop380:
    inc rx135_pos
    gt rx135_pos, rx135_eos, rx135_fail376
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!from", rx135_pos
  rxscan136_scan381:
    nqp_rxmark rx135_bstack, rxscan136_loop380, rx135_pos, 0
  rxscan136_done382:
    add $I11, rx135_pos, 2
    gt $I11, rx135_eos, rx135_fail376
    substr $S10, rx135_tgt, rx135_pos, 2
    ne $S10, ucs4:"\\n", rx135_fail376
    add rx135_pos, 2
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!pos", rx135_pos
    $P11 = rx135_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx135_curclass, "$!pos"
    lt $I11, 0, rx135_fail376
    rx135_cur."!cursor_pass"(rx135_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx135_cur)
  rx135_restart375:
    repr_get_attr_obj rx135_cstack, rx135_cur, rx135_curclass, "$!cstack"
  rx135_fail376:
    unless rx135_bstack, rx135_done374
    pop $I19, rx135_bstack
    if_null rx135_cstack, rx135_cstack_done379
    unless rx135_cstack, rx135_cstack_done379
    dec $I19
    set $P11, rx135_cstack[$I19]
  rx135_cstack_done379:
    pop rx135_rep, rx135_bstack
    pop rx135_pos, rx135_bstack
    pop $I19, rx135_bstack
    lt rx135_pos, -1, rx135_done374
    lt rx135_pos, 0, rx135_fail376
    eq $I19, 0, rx135_fail376
    nqp_islist $I20, rx135_cstack
    unless $I20, rx135_jump377
    elements $I18, rx135_bstack
    le $I18, 0, rx135_cut378
    dec $I18
    set $I18, rx135_bstack[$I18]
  rx135_cut378:
    assign rx135_cstack, $I18
  rx135_jump377:
    jump $I19
  rx135_done374:
    rx135_cur."!cursor_fail"()
    .return (rx135_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_34_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
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
    eq $I19, 1, rx137_restart385
    gt rx137_pos, rx137_eos, rx137_fail386
    repr_get_attr_int $I11, self, rx137_curclass, "$!from"
    ne $I11, -1, rxscan138_done392
    goto rxscan138_scan391
  rxscan138_loop390:
    inc rx137_pos
    gt rx137_pos, rx137_eos, rx137_fail386
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!from", rx137_pos
  rxscan138_scan391:
    nqp_rxmark rx137_bstack, rxscan138_loop390, rx137_pos, 0
  rxscan138_done392:
    add $I11, rx137_pos, 2
    gt $I11, rx137_eos, rx137_fail386
    substr $S10, rx137_tgt, rx137_pos, 2
    ne $S10, ucs4:"\\r", rx137_fail386
    add rx137_pos, 2
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail386
    rx137_cur."!cursor_pass"(rx137_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
    .return (rx137_cur)
  rx137_restart385:
    repr_get_attr_obj rx137_cstack, rx137_cur, rx137_curclass, "$!cstack"
  rx137_fail386:
    unless rx137_bstack, rx137_done384
    pop $I19, rx137_bstack
    if_null rx137_cstack, rx137_cstack_done389
    unless rx137_cstack, rx137_cstack_done389
    dec $I19
    set $P11, rx137_cstack[$I19]
  rx137_cstack_done389:
    pop rx137_rep, rx137_bstack
    pop rx137_pos, rx137_bstack
    pop $I19, rx137_bstack
    lt rx137_pos, -1, rx137_done384
    lt rx137_pos, 0, rx137_fail386
    eq $I19, 0, rx137_fail386
    nqp_islist $I20, rx137_cstack
    unless $I20, rx137_jump387
    elements $I18, rx137_bstack
    le $I18, 0, rx137_cut388
    dec $I18
    set $I18, rx137_bstack[$I18]
  rx137_cut388:
    assign rx137_cstack, $I18
  rx137_jump387:
    jump $I19
  rx137_done384:
    rx137_cur."!cursor_fail"()
    .return (rx137_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_35_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 94
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
    eq $I19, 1, rx139_restart395
    gt rx139_pos, rx139_eos, rx139_fail396
    repr_get_attr_int $I11, self, rx139_curclass, "$!from"
    ne $I11, -1, rxscan140_done402
    goto rxscan140_scan401
  rxscan140_loop400:
    inc rx139_pos
    gt rx139_pos, rx139_eos, rx139_fail396
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!from", rx139_pos
  rxscan140_scan401:
    nqp_rxmark rx139_bstack, rxscan140_loop400, rx139_pos, 0
  rxscan140_done402:
    add $I11, rx139_pos, 2
    gt $I11, rx139_eos, rx139_fail396
    substr $S10, rx139_tgt, rx139_pos, 2
    ne $S10, ucs4:"\\t", rx139_fail396
    add rx139_pos, 2
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!pos", rx139_pos
    $P11 = rx139_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx139_curclass, "$!pos"
    lt $I11, 0, rx139_fail396
    rx139_cur."!cursor_pass"(rx139_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
    .return (rx139_cur)
  rx139_restart395:
    repr_get_attr_obj rx139_cstack, rx139_cur, rx139_curclass, "$!cstack"
  rx139_fail396:
    unless rx139_bstack, rx139_done394
    pop $I19, rx139_bstack
    if_null rx139_cstack, rx139_cstack_done399
    unless rx139_cstack, rx139_cstack_done399
    dec $I19
    set $P11, rx139_cstack[$I19]
  rx139_cstack_done399:
    pop rx139_rep, rx139_bstack
    pop rx139_pos, rx139_bstack
    pop $I19, rx139_bstack
    lt rx139_pos, -1, rx139_done394
    lt rx139_pos, 0, rx139_fail396
    eq $I19, 0, rx139_fail396
    nqp_islist $I20, rx139_cstack
    unless $I20, rx139_jump397
    elements $I18, rx139_bstack
    le $I18, 0, rx139_cut398
    dec $I18
    set $I18, rx139_bstack[$I18]
  rx139_cut398:
    assign rx139_cstack, $I18
  rx139_jump397:
    jump $I19
  rx139_done394:
    rx139_cur."!cursor_fail"()
    .return (rx139_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_36_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 95
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
    eq $I19, 1, rx141_restart405
    gt rx141_pos, rx141_eos, rx141_fail406
    repr_get_attr_int $I11, self, rx141_curclass, "$!from"
    ne $I11, -1, rxscan142_done412
    goto rxscan142_scan411
  rxscan142_loop410:
    inc rx141_pos
    gt rx141_pos, rx141_eos, rx141_fail406
    repr_bind_attr_int rx141_cur, rx141_curclass, "$!from", rx141_pos
  rxscan142_scan411:
    nqp_rxmark rx141_bstack, rxscan142_loop410, rx141_pos, 0
  rxscan142_done412:
    add $I11, rx141_pos, 2
    gt $I11, rx141_eos, rx141_fail406
    substr $S10, rx141_tgt, rx141_pos, 2
    ne $S10, ucs4:"\\f", rx141_fail406
    add rx141_pos, 2
    repr_bind_attr_int rx141_cur, rx141_curclass, "$!pos", rx141_pos
    $P11 = rx141_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx141_curclass, "$!pos"
    lt $I11, 0, rx141_fail406
    rx141_cur."!cursor_pass"(rx141_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
    .return (rx141_cur)
  rx141_restart405:
    repr_get_attr_obj rx141_cstack, rx141_cur, rx141_curclass, "$!cstack"
  rx141_fail406:
    unless rx141_bstack, rx141_done404
    pop $I19, rx141_bstack
    if_null rx141_cstack, rx141_cstack_done409
    unless rx141_cstack, rx141_cstack_done409
    dec $I19
    set $P11, rx141_cstack[$I19]
  rx141_cstack_done409:
    pop rx141_rep, rx141_bstack
    pop rx141_pos, rx141_bstack
    pop $I19, rx141_bstack
    lt rx141_pos, -1, rx141_done404
    lt rx141_pos, 0, rx141_fail406
    eq $I19, 0, rx141_fail406
    nqp_islist $I20, rx141_cstack
    unless $I20, rx141_jump407
    elements $I18, rx141_bstack
    le $I18, 0, rx141_cut408
    dec $I18
    set $I18, rx141_bstack[$I18]
  rx141_cut408:
    assign rx141_cstack, $I18
  rx141_jump407:
    jump $I19
  rx141_done404:
    rx141_cur."!cursor_fail"()
    .return (rx141_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_37_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 96
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
    eq $I19, 1, rx143_restart415
    gt rx143_pos, rx143_eos, rx143_fail416
    repr_get_attr_int $I11, self, rx143_curclass, "$!from"
    ne $I11, -1, rxscan144_done422
    goto rxscan144_scan421
  rxscan144_loop420:
    inc rx143_pos
    gt rx143_pos, rx143_eos, rx143_fail416
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!from", rx143_pos
  rxscan144_scan421:
    nqp_rxmark rx143_bstack, rxscan144_loop420, rx143_pos, 0
  rxscan144_done422:
    add $I11, rx143_pos, 2
    gt $I11, rx143_eos, rx143_fail416
    substr $S10, rx143_tgt, rx143_pos, 2
    ne $S10, ucs4:"\\e", rx143_fail416
    add rx143_pos, 2
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail416
    rx143_cur."!cursor_pass"(rx143_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
    .return (rx143_cur)
  rx143_restart415:
    repr_get_attr_obj rx143_cstack, rx143_cur, rx143_curclass, "$!cstack"
  rx143_fail416:
    unless rx143_bstack, rx143_done414
    pop $I19, rx143_bstack
    if_null rx143_cstack, rx143_cstack_done419
    unless rx143_cstack, rx143_cstack_done419
    dec $I19
    set $P11, rx143_cstack[$I19]
  rx143_cstack_done419:
    pop rx143_rep, rx143_bstack
    pop rx143_pos, rx143_bstack
    pop $I19, rx143_bstack
    lt rx143_pos, -1, rx143_done414
    lt rx143_pos, 0, rx143_fail416
    eq $I19, 0, rx143_fail416
    nqp_islist $I20, rx143_cstack
    unless $I20, rx143_jump417
    elements $I18, rx143_bstack
    le $I18, 0, rx143_cut418
    dec $I18
    set $I18, rx143_bstack[$I18]
  rx143_cut418:
    assign rx143_cstack, $I18
  rx143_jump417:
    jump $I19
  rx143_done414:
    rx143_cur."!cursor_fail"()
    .return (rx143_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_38_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 97
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx145_start
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    .local pmc rx145_curclass
    .local pmc rx145_bstack
    .local pmc rx145_cstack
    rx145_start = self."!cursor_start_all"()
    set rx145_cur, rx145_start[0]
    set rx145_tgt, rx145_start[1]
    set rx145_pos, rx145_start[2]
    set rx145_curclass, rx145_start[3]
    set rx145_bstack, rx145_start[4]
    set $I19, rx145_start[5]
    store_lex unicode:"$\x{a2}", rx145_cur
    length rx145_eos, rx145_tgt
    eq $I19, 1, rx145_restart425
    gt rx145_pos, rx145_eos, rx145_fail426
    repr_get_attr_int $I11, self, rx145_curclass, "$!from"
    ne $I11, -1, rxscan146_done432
    goto rxscan146_scan431
  rxscan146_loop430:
    inc rx145_pos
    gt rx145_pos, rx145_eos, rx145_fail426
    repr_bind_attr_int rx145_cur, rx145_curclass, "$!from", rx145_pos
  rxscan146_scan431:
    nqp_rxmark rx145_bstack, rxscan146_loop430, rx145_pos, 0
  rxscan146_done432:
    add $I11, rx145_pos, 2
    gt $I11, rx145_eos, rx145_fail426
    substr $S10, rx145_tgt, rx145_pos, 2
    ne $S10, ucs4:"\\x", rx145_fail426
    add rx145_pos, 2
    repr_bind_attr_int rx145_cur, rx145_curclass, "$!pos", rx145_pos
    $P11 = rx145_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx145_curclass, "$!pos"
    lt $I11, 0, rx145_fail426
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt147_0434
    nqp_push_label $P11, alt147_1436
    nqp_rxmark rx145_bstack, alt147_end433, -1, 0
    rx145_cur."!alt"(rx145_pos, "alt_nfa__6_1361633912.653", $P11)
    goto rx145_fail426
  alt147_0434:
    repr_bind_attr_int rx145_cur, rx145_curclass, "$!pos", rx145_pos
    $P11 = rx145_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx145_curclass, "$!pos"
    lt $I11, 0, rx145_fail426
    nqp_rxmark rx145_bstack, rxsubrule148_pass435, -1, 0
  rxsubrule148_pass435:
    rx145_cstack = rx145_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx145_pos, $P11, rx145_curclass, "$!pos"
    goto alt147_end433
  alt147_1436:
    add $I11, rx145_pos, 1
    gt $I11, rx145_eos, rx145_fail426
    substr $S10, rx145_tgt, rx145_pos, 1
    ne $S10, ucs4:"[", rx145_fail426
    add rx145_pos, 1
    repr_bind_attr_int rx145_cur, rx145_curclass, "$!pos", rx145_pos
    $P11 = rx145_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx145_curclass, "$!pos"
    lt $I11, 0, rx145_fail426
    nqp_rxmark rx145_bstack, rxsubrule149_pass437, -1, 0
  rxsubrule149_pass437:
    rx145_cstack = rx145_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx145_pos, $P11, rx145_curclass, "$!pos"
    add $I11, rx145_pos, 1
    gt $I11, rx145_eos, rx145_fail426
    substr $S10, rx145_tgt, rx145_pos, 1
    ne $S10, ucs4:"]", rx145_fail426
    add rx145_pos, 1
    goto alt147_end433
  alt147_end433:
    nqp_rxcommit rx145_bstack, alt147_end433
    rx145_cur."!cursor_pass"(rx145_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
    .return (rx145_cur)
  rx145_restart425:
    repr_get_attr_obj rx145_cstack, rx145_cur, rx145_curclass, "$!cstack"
  rx145_fail426:
    unless rx145_bstack, rx145_done424
    pop $I19, rx145_bstack
    if_null rx145_cstack, rx145_cstack_done429
    unless rx145_cstack, rx145_cstack_done429
    dec $I19
    set $P11, rx145_cstack[$I19]
  rx145_cstack_done429:
    pop rx145_rep, rx145_bstack
    pop rx145_pos, rx145_bstack
    pop $I19, rx145_bstack
    lt rx145_pos, -1, rx145_done424
    lt rx145_pos, 0, rx145_fail426
    eq $I19, 0, rx145_fail426
    nqp_islist $I20, rx145_cstack
    unless $I20, rx145_jump427
    elements $I18, rx145_bstack
    le $I18, 0, rx145_cut428
    dec $I18
    set $I18, rx145_bstack[$I18]
  rx145_cut428:
    assign rx145_cstack, $I18
  rx145_jump427:
    jump $I19
  rx145_done424:
    rx145_cur."!cursor_fail"()
    .return (rx145_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_39_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx150_start
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    .local pmc rx150_curclass
    .local pmc rx150_bstack
    .local pmc rx150_cstack
    rx150_start = self."!cursor_start_all"()
    set rx150_cur, rx150_start[0]
    set rx150_tgt, rx150_start[1]
    set rx150_pos, rx150_start[2]
    set rx150_curclass, rx150_start[3]
    set rx150_bstack, rx150_start[4]
    set $I19, rx150_start[5]
    store_lex unicode:"$\x{a2}", rx150_cur
    length rx150_eos, rx150_tgt
    eq $I19, 1, rx150_restart440
    gt rx150_pos, rx150_eos, rx150_fail441
    repr_get_attr_int $I11, self, rx150_curclass, "$!from"
    ne $I11, -1, rxscan151_done447
    goto rxscan151_scan446
  rxscan151_loop445:
    inc rx150_pos
    gt rx150_pos, rx150_eos, rx150_fail441
    repr_bind_attr_int rx150_cur, rx150_curclass, "$!from", rx150_pos
  rxscan151_scan446:
    nqp_rxmark rx150_bstack, rxscan151_loop445, rx150_pos, 0
  rxscan151_done447:
    add $I11, rx150_pos, 2
    gt $I11, rx150_eos, rx150_fail441
    substr $S10, rx150_tgt, rx150_pos, 2
    ne $S10, ucs4:"\\o", rx150_fail441
    add rx150_pos, 2
    repr_bind_attr_int rx150_cur, rx150_curclass, "$!pos", rx150_pos
    $P11 = rx150_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx150_curclass, "$!pos"
    lt $I11, 0, rx150_fail441
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt152_0449
    nqp_push_label $P11, alt152_1451
    nqp_rxmark rx150_bstack, alt152_end448, -1, 0
    rx150_cur."!alt"(rx150_pos, "alt_nfa__7_1361633912.666", $P11)
    goto rx150_fail441
  alt152_0449:
    repr_bind_attr_int rx150_cur, rx150_curclass, "$!pos", rx150_pos
    $P11 = rx150_cur."octint"()
    repr_get_attr_int $I11, $P11, rx150_curclass, "$!pos"
    lt $I11, 0, rx150_fail441
    nqp_rxmark rx150_bstack, rxsubrule153_pass450, -1, 0
  rxsubrule153_pass450:
    rx150_cstack = rx150_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx150_pos, $P11, rx150_curclass, "$!pos"
    goto alt152_end448
  alt152_1451:
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail441
    substr $S10, rx150_tgt, rx150_pos, 1
    ne $S10, ucs4:"[", rx150_fail441
    add rx150_pos, 1
    repr_bind_attr_int rx150_cur, rx150_curclass, "$!pos", rx150_pos
    $P11 = rx150_cur."octints"()
    repr_get_attr_int $I11, $P11, rx150_curclass, "$!pos"
    lt $I11, 0, rx150_fail441
    nqp_rxmark rx150_bstack, rxsubrule154_pass452, -1, 0
  rxsubrule154_pass452:
    rx150_cstack = rx150_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx150_pos, $P11, rx150_curclass, "$!pos"
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail441
    substr $S10, rx150_tgt, rx150_pos, 1
    ne $S10, ucs4:"]", rx150_fail441
    add rx150_pos, 1
    goto alt152_end448
  alt152_end448:
    nqp_rxcommit rx150_bstack, alt152_end448
    rx150_cur."!cursor_pass"(rx150_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx150_cur)
  rx150_restart440:
    repr_get_attr_obj rx150_cstack, rx150_cur, rx150_curclass, "$!cstack"
  rx150_fail441:
    unless rx150_bstack, rx150_done439
    pop $I19, rx150_bstack
    if_null rx150_cstack, rx150_cstack_done444
    unless rx150_cstack, rx150_cstack_done444
    dec $I19
    set $P11, rx150_cstack[$I19]
  rx150_cstack_done444:
    pop rx150_rep, rx150_bstack
    pop rx150_pos, rx150_bstack
    pop $I19, rx150_bstack
    lt rx150_pos, -1, rx150_done439
    lt rx150_pos, 0, rx150_fail441
    eq $I19, 0, rx150_fail441
    nqp_islist $I20, rx150_cstack
    unless $I20, rx150_jump442
    elements $I18, rx150_bstack
    le $I18, 0, rx150_cut443
    dec $I18
    set $I18, rx150_bstack[$I18]
  rx150_cut443:
    assign rx150_cstack, $I18
  rx150_jump442:
    jump $I19
  rx150_done439:
    rx150_cur."!cursor_fail"()
    .return (rx150_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_40_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx155_start
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_curclass
    .local pmc rx155_bstack
    .local pmc rx155_cstack
    rx155_start = self."!cursor_start_all"()
    set rx155_cur, rx155_start[0]
    set rx155_tgt, rx155_start[1]
    set rx155_pos, rx155_start[2]
    set rx155_curclass, rx155_start[3]
    set rx155_bstack, rx155_start[4]
    set $I19, rx155_start[5]
    store_lex unicode:"$\x{a2}", rx155_cur
    length rx155_eos, rx155_tgt
    eq $I19, 1, rx155_restart455
    gt rx155_pos, rx155_eos, rx155_fail456
    repr_get_attr_int $I11, self, rx155_curclass, "$!from"
    ne $I11, -1, rxscan156_done462
    goto rxscan156_scan461
  rxscan156_loop460:
    inc rx155_pos
    gt rx155_pos, rx155_eos, rx155_fail456
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!from", rx155_pos
  rxscan156_scan461:
    nqp_rxmark rx155_bstack, rxscan156_loop460, rx155_pos, 0
  rxscan156_done462:
    add $I11, rx155_pos, 2
    gt $I11, rx155_eos, rx155_fail456
    substr $S10, rx155_tgt, rx155_pos, 2
    ne $S10, ucs4:"\\c", rx155_fail456
    add rx155_pos, 2
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx155_curclass, "$!pos"
    lt $I11, 0, rx155_fail456
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx155_curclass, "$!pos"
    lt $I11, 0, rx155_fail456
    nqp_rxmark rx155_bstack, rxsubrule157_pass463, -1, 0
  rxsubrule157_pass463:
    rx155_cstack = rx155_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx155_pos, $P11, rx155_curclass, "$!pos"
    rx155_cur."!cursor_pass"(rx155_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx155_cur)
  rx155_restart455:
    repr_get_attr_obj rx155_cstack, rx155_cur, rx155_curclass, "$!cstack"
  rx155_fail456:
    unless rx155_bstack, rx155_done454
    pop $I19, rx155_bstack
    if_null rx155_cstack, rx155_cstack_done459
    unless rx155_cstack, rx155_cstack_done459
    dec $I19
    set $P11, rx155_cstack[$I19]
  rx155_cstack_done459:
    pop rx155_rep, rx155_bstack
    pop rx155_pos, rx155_bstack
    pop $I19, rx155_bstack
    lt rx155_pos, -1, rx155_done454
    lt rx155_pos, 0, rx155_fail456
    eq $I19, 0, rx155_fail456
    nqp_islist $I20, rx155_cstack
    unless $I20, rx155_jump457
    elements $I18, rx155_bstack
    le $I18, 0, rx155_cut458
    dec $I18
    set $I18, rx155_bstack[$I18]
  rx155_cut458:
    assign rx155_cstack, $I18
  rx155_jump457:
    jump $I19
  rx155_done454:
    rx155_cur."!cursor_fail"()
    .return (rx155_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_41_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 106
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx158_start
    .local string rx158_tgt
    .local int rx158_pos
    .local int rx158_off
    .local int rx158_eos
    .local int rx158_rep
    .local pmc rx158_cur
    .local pmc rx158_curclass
    .local pmc rx158_bstack
    .local pmc rx158_cstack
    rx158_start = self."!cursor_start_all"()
    set rx158_cur, rx158_start[0]
    set rx158_tgt, rx158_start[1]
    set rx158_pos, rx158_start[2]
    set rx158_curclass, rx158_start[3]
    set rx158_bstack, rx158_start[4]
    set $I19, rx158_start[5]
    store_lex unicode:"$\x{a2}", rx158_cur
    length rx158_eos, rx158_tgt
    eq $I19, 1, rx158_restart466
    gt rx158_pos, rx158_eos, rx158_fail467
    repr_get_attr_int $I11, self, rx158_curclass, "$!from"
    ne $I11, -1, rxscan159_done473
    goto rxscan159_scan472
  rxscan159_loop471:
    inc rx158_pos
    gt rx158_pos, rx158_eos, rx158_fail467
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!from", rx158_pos
  rxscan159_scan472:
    nqp_rxmark rx158_bstack, rxscan159_loop471, rx158_pos, 0
  rxscan159_done473:
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail467
    substr $S10, rx158_tgt, rx158_pos, 1
    ne $S10, ucs4:"\\", rx158_fail467
    add rx158_pos, 1
    nqp_rxmark rx158_bstack, rxcap160_fail475, rx158_pos, 0
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail467
    substr $S10, rx158_tgt, rx158_pos, 1
    ne $S10, ucs4:"0", rx158_fail467
    add rx158_pos, 1
    nqp_rxpeek $I19, rx158_bstack, rxcap160_fail475
    inc $I19
    set $I11, rx158_bstack[$I19]
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx158_pos)
    rx158_cstack = rx158_cur."!cursor_capture"($P11, "sym")
    goto rxcap160_done474
  rxcap160_fail475:
    goto rx158_fail467
  rxcap160_done474:
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx158_curclass, "$!pos"
    lt $I11, 0, rx158_fail467
    rx158_cur."!cursor_pass"(rx158_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx158_cur)
  rx158_restart466:
    repr_get_attr_obj rx158_cstack, rx158_cur, rx158_curclass, "$!cstack"
  rx158_fail467:
    unless rx158_bstack, rx158_done465
    pop $I19, rx158_bstack
    if_null rx158_cstack, rx158_cstack_done470
    unless rx158_cstack, rx158_cstack_done470
    dec $I19
    set $P11, rx158_cstack[$I19]
  rx158_cstack_done470:
    pop rx158_rep, rx158_bstack
    pop rx158_pos, rx158_bstack
    pop $I19, rx158_bstack
    lt rx158_pos, -1, rx158_done465
    lt rx158_pos, 0, rx158_fail467
    eq $I19, 0, rx158_fail467
    nqp_islist $I20, rx158_cstack
    unless $I20, rx158_jump468
    elements $I18, rx158_bstack
    le $I18, 0, rx158_cut469
    dec $I18
    set $I18, rx158_bstack[$I18]
  rx158_cut469:
    assign rx158_cstack, $I18
  rx158_jump468:
    jump $I19
  rx158_done465:
    rx158_cur."!cursor_fail"()
    .return (rx158_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_42_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_172_1361633912.325' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_43_1361633912.325' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1361633912.325' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_173_1361633912.325' 
    capture_lex $P5009 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx161_start
    .local string rx161_tgt
    .local int rx161_pos
    .local int rx161_off
    .local int rx161_eos
    .local int rx161_rep
    .local pmc rx161_cur
    .local pmc rx161_curclass
    .local pmc rx161_bstack
    .local pmc rx161_cstack
    rx161_start = self."!cursor_start_all"()
    set rx161_cur, rx161_start[0]
    set rx161_tgt, rx161_start[1]
    set rx161_pos, rx161_start[2]
    set rx161_curclass, rx161_start[3]
    set rx161_bstack, rx161_start[4]
    set $I19, rx161_start[5]
    store_lex unicode:"$\x{a2}", rx161_cur
    length rx161_eos, rx161_tgt
    eq $I19, 1, rx161_restart478
    gt rx161_pos, rx161_eos, rx161_fail479
    repr_get_attr_int $I11, self, rx161_curclass, "$!from"
    ne $I11, -1, rxscan162_done485
    goto rxscan162_scan484
  rxscan162_loop483:
    inc rx161_pos
    gt rx161_pos, rx161_eos, rx161_fail479
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!from", rx161_pos
  rxscan162_scan484:
    nqp_rxmark rx161_bstack, rxscan162_loop483, rx161_pos, 0
  rxscan162_done485:
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!pos", rx161_pos
    store_lex unicode:"$\x{a2}", rx161_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_172_1361633912.325' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx161_pos, 1
    gt $I11, rx161_eos, rx161_fail479
    substr $S10, rx161_tgt, rx161_pos, 1
    ne $S10, ucs4:"\\", rx161_fail479
    add rx161_pos, 1
  alt163_0487:
    nqp_rxmark rx161_bstack, alt163_1516, rx161_pos, 0
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!pos", rx161_pos
    $P11 = rx161_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx161_curclass, "$!pos"
    lt $I11, 0, rx161_fail479
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt164_0489
    nqp_push_label $P11, alt164_1501
    nqp_rxmark rx161_bstack, alt164_end488, -1, 0
    rx161_cur."!alt"(rx161_pos, "alt_nfa__8_1361633912.703", $P11)
    goto rx161_fail479
  alt164_0489:
    .const 'Sub' $P5004 = 'cuid_43_1361633912.325' 
    capture_lex $P5004
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!pos", rx161_pos
    $P11 = rx161_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx161_curclass, "$!pos"
    lt $I11, 0, rx161_fail479
    nqp_rxmark rx161_bstack, rxsubrule167_pass500, -1, 0
  rxsubrule167_pass500:
    rx161_cstack = rx161_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx161_pos, $P11, rx161_curclass, "$!pos"
    goto alt164_end488
  alt164_1501:
    .const 'Sub' $P5005 = 'cuid_44_1361633912.325' 
    capture_lex $P5005
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!pos", rx161_pos
    $P11 = rx161_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx161_curclass, "$!pos"
    lt $I11, 0, rx161_fail479
    nqp_rxmark rx161_bstack, rxsubrule170_pass512, -1, 0
  rxsubrule170_pass512:
    rx161_cstack = rx161_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx161_pos, $P11, rx161_curclass, "$!pos"
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!pos", rx161_pos
    store_lex unicode:"$\x{a2}", rx161_cur
    $P5006 = $P101."MATCH"()
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_173_1361633912.325' 
    capture_lex $P5007
    $P5008 = $P5007()
    goto alt164_end488
  alt164_end488:
    nqp_rxcommit rx161_bstack, alt164_end488
    goto alt163_end486
  alt163_1516:
    nqp_rxmark rx161_bstack, rxcap173_fail518, rx161_pos, 0
    ge rx161_pos, rx161_eos, rx161_fail479
    add rx161_pos, 1
    nqp_rxpeek $I19, rx161_bstack, rxcap173_fail518
    inc $I19
    set $I11, rx161_bstack[$I19]
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!pos", rx161_pos
    $P11 = rx161_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx161_pos)
    rx161_cstack = rx161_cur."!cursor_capture"($P11, "textq")
    goto rxcap173_done517
  rxcap173_fail518:
    goto rx161_fail479
  rxcap173_done517:
  alt163_end486:
    rx161_cur."!cursor_pass"(rx161_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx161_cur)
  rx161_restart478:
    repr_get_attr_obj rx161_cstack, rx161_cur, rx161_curclass, "$!cstack"
  rx161_fail479:
    unless rx161_bstack, rx161_done477
    pop $I19, rx161_bstack
    if_null rx161_cstack, rx161_cstack_done482
    unless rx161_cstack, rx161_cstack_done482
    dec $I19
    set $P11, rx161_cstack[$I19]
  rx161_cstack_done482:
    pop rx161_rep, rx161_bstack
    pop rx161_pos, rx161_bstack
    pop $I19, rx161_bstack
    lt rx161_pos, -1, rx161_done477
    lt rx161_pos, 0, rx161_fail479
    eq $I19, 0, rx161_fail479
    nqp_islist $I20, rx161_cstack
    unless $I20, rx161_jump480
    elements $I18, rx161_bstack
    le $I18, 0, rx161_cut481
    dec $I18
    set $I18, rx161_bstack[$I18]
  rx161_cut481:
    assign rx161_cstack, $I18
  rx161_jump480:
    jump $I19
  rx161_done477:
    rx161_cur."!cursor_fail"()
    .return (rx161_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1361633912.325") :anon :lex :outer("cuid_42_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1361633912.325") :anon :lex :outer("cuid_42_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx165_start
    .local string rx165_tgt
    .local int rx165_pos
    .local int rx165_off
    .local int rx165_eos
    .local int rx165_rep
    .local pmc rx165_cur
    .local pmc rx165_curclass
    .local pmc rx165_bstack
    .local pmc rx165_cstack
    rx165_start = self."!cursor_start_all"()
    set rx165_cur, rx165_start[0]
    set rx165_tgt, rx165_start[1]
    set rx165_pos, rx165_start[2]
    set rx165_curclass, rx165_start[3]
    set rx165_bstack, rx165_start[4]
    set $I19, rx165_start[5]
    store_lex unicode:"$\x{a2}", rx165_cur
    length rx165_eos, rx165_tgt
    eq $I19, 1, rx165_restart492
    gt rx165_pos, rx165_eos, rx165_fail493
    repr_get_attr_int $I11, self, rx165_curclass, "$!from"
    ne $I11, -1, rxscan166_done499
    goto rxscan166_scan498
  rxscan166_loop497:
    inc rx165_pos
    gt rx165_pos, rx165_eos, rx165_fail493
    repr_bind_attr_int rx165_cur, rx165_curclass, "$!from", rx165_pos
  rxscan166_scan498:
    nqp_rxmark rx165_bstack, rxscan166_loop497, rx165_pos, 0
  rxscan166_done499:
    ge rx165_pos, rx165_eos, rx165_fail493
    is_cclass $I11, .CCLASS_WORD, rx165_tgt, rx165_pos
    if $I11, rx165_fail493
    add rx165_pos, 1
    rx165_cur."!cursor_pass"(rx165_pos, 'backtrack'=>1)
    .return (rx165_cur)
  rx165_restart492:
    repr_get_attr_obj rx165_cstack, rx165_cur, rx165_curclass, "$!cstack"
  rx165_fail493:
    unless rx165_bstack, rx165_done491
    pop $I19, rx165_bstack
    if_null rx165_cstack, rx165_cstack_done496
    unless rx165_cstack, rx165_cstack_done496
    dec $I19
    set $P11, rx165_cstack[$I19]
  rx165_cstack_done496:
    pop rx165_rep, rx165_bstack
    pop rx165_pos, rx165_bstack
    pop $I19, rx165_bstack
    lt rx165_pos, -1, rx165_done491
    lt rx165_pos, 0, rx165_fail493
    eq $I19, 0, rx165_fail493
    nqp_islist $I20, rx165_cstack
    unless $I20, rx165_jump494
    elements $I18, rx165_bstack
    le $I18, 0, rx165_cut495
    dec $I18
    set $I18, rx165_bstack[$I18]
  rx165_cut495:
    assign rx165_cstack, $I18
  rx165_jump494:
    jump $I19
  rx165_done491:
    rx165_cur."!cursor_fail"()
    .return (rx165_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_44_1361633912.325") :anon :lex :outer("cuid_42_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx168_start
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_curclass
    .local pmc rx168_bstack
    .local pmc rx168_cstack
    rx168_start = self."!cursor_start_all"()
    set rx168_cur, rx168_start[0]
    set rx168_tgt, rx168_start[1]
    set rx168_pos, rx168_start[2]
    set rx168_curclass, rx168_start[3]
    set rx168_bstack, rx168_start[4]
    set $I19, rx168_start[5]
    store_lex unicode:"$\x{a2}", rx168_cur
    length rx168_eos, rx168_tgt
    eq $I19, 1, rx168_restart504
    gt rx168_pos, rx168_eos, rx168_fail505
    repr_get_attr_int $I11, self, rx168_curclass, "$!from"
    ne $I11, -1, rxscan169_done511
    goto rxscan169_scan510
  rxscan169_loop509:
    inc rx168_pos
    gt rx168_pos, rx168_eos, rx168_fail505
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!from", rx168_pos
  rxscan169_scan510:
    nqp_rxmark rx168_bstack, rxscan169_loop509, rx168_pos, 0
  rxscan169_done511:
    ge rx168_pos, rx168_eos, rx168_fail505
    is_cclass $I11, .CCLASS_WORD, rx168_tgt, rx168_pos
    unless $I11, rx168_fail505
    add rx168_pos, 1
    rx168_cur."!cursor_pass"(rx168_pos, 'backtrack'=>1)
    .return (rx168_cur)
  rx168_restart504:
    repr_get_attr_obj rx168_cstack, rx168_cur, rx168_curclass, "$!cstack"
  rx168_fail505:
    unless rx168_bstack, rx168_done503
    pop $I19, rx168_bstack
    if_null rx168_cstack, rx168_cstack_done508
    unless rx168_cstack, rx168_cstack_done508
    dec $I19
    set $P11, rx168_cstack[$I19]
  rx168_cstack_done508:
    pop rx168_rep, rx168_bstack
    pop rx168_pos, rx168_bstack
    pop $I19, rx168_bstack
    lt rx168_pos, -1, rx168_done503
    lt rx168_pos, 0, rx168_fail505
    eq $I19, 0, rx168_fail505
    nqp_islist $I20, rx168_cstack
    unless $I20, rx168_jump506
    elements $I18, rx168_bstack
    le $I18, 0, rx168_cut507
    dec $I18
    set $I18, rx168_bstack[$I18]
  rx168_cut507:
    assign rx168_cstack, $I18
  rx168_jump506:
    jump $I19
  rx168_done503:
    rx168_cur."!cursor_fail"()
    .return (rx168_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1361633912.325") :anon :lex :outer("cuid_42_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 113
    .local pmc fb_tmp_2 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$/"
    set fb_tmp_2, $P5003
    repr_defined $I5001, fb_tmp_2
    unless $I5001 goto if171_else513 
    set $P5004, fb_tmp_2[0]
    set $P5006, $P5004
    goto if171_end514
  if171_else513:
    null $P5005
    set $P5006, $P5005
  if171_end514:
    unless_null $P5006, vivi_172515
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5006, $P5007
  vivi_172515:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_46_1361633912.325' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx174_start
    .local string rx174_tgt
    .local int rx174_pos
    .local int rx174_off
    .local int rx174_eos
    .local int rx174_rep
    .local pmc rx174_cur
    .local pmc rx174_curclass
    .local pmc rx174_bstack
    .local pmc rx174_cstack
    rx174_start = self."!cursor_start_all"()
    set rx174_cur, rx174_start[0]
    set rx174_tgt, rx174_start[1]
    set rx174_pos, rx174_start[2]
    set rx174_curclass, rx174_start[3]
    set rx174_bstack, rx174_start[4]
    set $I19, rx174_start[5]
    store_lex unicode:"$\x{a2}", rx174_cur
    length rx174_eos, rx174_tgt
    eq $I19, 1, rx174_restart521
    gt rx174_pos, rx174_eos, rx174_fail522
    repr_get_attr_int $I11, self, rx174_curclass, "$!from"
    ne $I11, -1, rxscan175_done528
    goto rxscan175_scan527
  rxscan175_loop526:
    inc rx174_pos
    gt rx174_pos, rx174_eos, rx174_fail522
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!from", rx174_pos
  rxscan175_scan527:
    nqp_rxmark rx174_bstack, rxscan175_loop526, rx174_pos, 0
  rxscan175_done528:
  alt176_0530:
    nqp_rxmark rx174_bstack, alt176_1532, rx174_pos, 0
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."integer"()
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail522
    nqp_rxmark rx174_bstack, rxsubrule177_pass531, -1, 0
  rxsubrule177_pass531:
    rx174_cstack = rx174_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx174_pos, $P11, rx174_curclass, "$!pos"
    goto alt176_end529
  alt176_1532:
    ge rx174_pos, rx174_eos, rx174_fail522
    substr $S11, rx174_tgt, rx174_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx174_fail522
    inc rx174_pos
    set rx174_rep, 0
    nqp_rxmark rx174_bstack, rxquantf178_loop533, rx174_pos, rx174_rep
    goto rxquantf178_done534
  rxquantf178_loop533:
    set $I12, rx174_rep
    nqp_rxmark rx174_bstack, rxconj179_fail536, rx174_pos, 0
    goto rxconj179_first537
  rxconj179_fail536:
    goto rx174_fail522
  rxconj179_first537:
    add $I11, rx174_pos, 1
    gt $I11, rx174_eos, rx174_fail522
    substr $S10, rx174_tgt, rx174_pos, 1
    eq $S10, ucs4:"]", rx174_fail522
    add rx174_pos, 1
    nqp_rxpeek $I19, rx174_bstack, rxconj179_fail536
    inc $I19
    set $I11, rx174_bstack[$I19]
    nqp_rxmark rx174_bstack, rxconj179_fail536, $I11, rx174_pos
    set rx174_pos, $I11
    ge rx174_pos, rx174_eos, rx174_fail522
    substr $S11, rx174_tgt, rx174_pos, 1
    index $I11, ucs4:",#", $S11
    ge $I11, 0, rx174_fail522
    inc rx174_pos
    nqp_rxpeek $I19, rx174_bstack, rxconj179_fail536
    inc $I19
    set $I11, rx174_bstack[$I19]
    inc $I19
    set $I12, rx174_bstack[$I19]
    ne rx174_pos, $I12, rx174_fail522
    set rx174_pos, $I11
    ge rx174_pos, rx174_eos, rx174_fail522
    add rx174_pos, 1
    set rx174_rep, $I12
    inc rx174_rep
    nqp_rxmark rx174_bstack, rxquantf178_loop533, rx174_pos, rx174_rep
  rxquantf178_done534:
    ge rx174_pos, rx174_eos, rx174_fail522
    substr $S11, rx174_tgt, rx174_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx174_fail522
    inc rx174_pos
    .const 'Sub' $P5001 = 'cuid_46_1361633912.325' 
    capture_lex $P5001
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail522
  alt176_end529:
    rx174_cur."!cursor_pass"(rx174_pos, "charname", 'backtrack'=>1)
    .return (rx174_cur)
  rx174_restart521:
    repr_get_attr_obj rx174_cstack, rx174_cur, rx174_curclass, "$!cstack"
  rx174_fail522:
    unless rx174_bstack, rx174_done520
    pop $I19, rx174_bstack
    if_null rx174_cstack, rx174_cstack_done525
    unless rx174_cstack, rx174_cstack_done525
    dec $I19
    set $P11, rx174_cstack[$I19]
  rx174_cstack_done525:
    pop rx174_rep, rx174_bstack
    pop rx174_pos, rx174_bstack
    pop $I19, rx174_bstack
    lt rx174_pos, -1, rx174_done520
    lt rx174_pos, 0, rx174_fail522
    eq $I19, 0, rx174_fail522
    nqp_islist $I20, rx174_cstack
    unless $I20, rx174_jump523
    elements $I18, rx174_bstack
    le $I18, 0, rx174_cut524
    dec $I18
    set $I18, rx174_bstack[$I18]
  rx174_cut524:
    assign rx174_cstack, $I18
  rx174_jump523:
    jump $I19
  rx174_done520:
    rx174_cur."!cursor_fail"()
    .return (rx174_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_46_1361633912.325") :anon :lex :outer("cuid_45_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
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
    eq $I19, 1, rx180_restart540
    gt rx180_pos, rx180_eos, rx180_fail541
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done547
    goto rxscan181_scan546
  rxscan181_loop545:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail541
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan546:
    nqp_rxmark rx180_bstack, rxscan181_loop545, rx180_pos, 0
  rxscan181_done547:
    nqp_rxmark rx180_bstack, rxquantr182_done549, rx180_pos, 0
  rxquantr182_loop548:
    ge rx180_pos, rx180_eos, rx180_fail541
    is_cclass $I11, .CCLASS_WHITESPACE, rx180_tgt, rx180_pos
    unless $I11, rx180_fail541
    add rx180_pos, 1
    nqp_rxpeek $I19, rx180_bstack, rxquantr182_done549
    inc $I19
    inc $I19
    set rx180_rep, rx180_bstack[$I19]
    nqp_rxcommit rx180_bstack, rxquantr182_done549
    inc rx180_rep
    nqp_rxmark rx180_bstack, rxquantr182_done549, rx180_pos, rx180_rep
    goto rxquantr182_loop548
  rxquantr182_done549:
  alt183_0551:
    nqp_rxmark rx180_bstack, alt183_1552, rx180_pos, 0
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail541
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"]", rx180_fail541
    add rx180_pos, 1
    goto alt183_end550
  alt183_1552:
    ge rx180_pos, rx180_eos, rx180_fail541
    substr $S11, rx180_tgt, rx180_pos, 1
    index $I11, ucs4:",#", $S11
    lt $I11, 0, rx180_fail541
    inc rx180_pos
  alt183_end550:
    rx180_cur."!cursor_pass"(rx180_pos, 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart540:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail541:
    unless rx180_bstack, rx180_done539
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done544
    unless rx180_cstack, rx180_cstack_done544
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done544:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done539
    lt rx180_pos, 0, rx180_fail541
    eq $I19, 0, rx180_fail541
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump542
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut543
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut543:
    assign rx180_cstack, $I18
  rx180_jump542:
    jump $I19
  rx180_done539:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_47_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 124
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx184_start
    .local string rx184_tgt
    .local int rx184_pos
    .local int rx184_off
    .local int rx184_eos
    .local int rx184_rep
    .local pmc rx184_cur
    .local pmc rx184_curclass
    .local pmc rx184_bstack
    .local pmc rx184_cstack
    rx184_start = self."!cursor_start_all"()
    set rx184_cur, rx184_start[0]
    set rx184_tgt, rx184_start[1]
    set rx184_pos, rx184_start[2]
    set rx184_curclass, rx184_start[3]
    set rx184_bstack, rx184_start[4]
    set $I19, rx184_start[5]
    store_lex unicode:"$\x{a2}", rx184_cur
    length rx184_eos, rx184_tgt
    eq $I19, 1, rx184_restart555
    gt rx184_pos, rx184_eos, rx184_fail556
    repr_get_attr_int $I11, self, rx184_curclass, "$!from"
    ne $I11, -1, rxscan185_done562
    goto rxscan185_scan561
  rxscan185_loop560:
    inc rx184_pos
    gt rx184_pos, rx184_eos, rx184_fail556
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!from", rx184_pos
  rxscan185_scan561:
    nqp_rxmark rx184_bstack, rxscan185_loop560, rx184_pos, 0
  rxscan185_done562:
    nqp_rxmark rx184_bstack, rxquantr186_done564, -1, 0
  rxquantr186_loop563:
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."ws"()
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail556
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."charname"()
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail556
    nqp_rxmark rx184_bstack, rxsubrule188_pass566, -1, 0
  rxsubrule188_pass566:
    rx184_cstack = rx184_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."ws"()
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail556
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    nqp_rxpeek $I19, rx184_bstack, rxquantr186_done564
    inc $I19
    inc $I19
    set rx184_rep, rx184_bstack[$I19]
    nqp_rxcommit rx184_bstack, rxquantr186_done564
    inc rx184_rep
    nqp_rxmark rx184_bstack, rxquantr186_done564, rx184_pos, rx184_rep
    add $I11, rx184_pos, 1
    gt $I11, rx184_eos, rx184_fail556
    substr $S10, rx184_tgt, rx184_pos, 1
    ne $S10, ucs4:",", rx184_fail556
    add rx184_pos, 1
    goto rxquantr186_loop563
  rxquantr186_done564:
    rx184_cur."!cursor_pass"(rx184_pos, "charnames", 'backtrack'=>1)
    .return (rx184_cur)
  rx184_restart555:
    repr_get_attr_obj rx184_cstack, rx184_cur, rx184_curclass, "$!cstack"
  rx184_fail556:
    unless rx184_bstack, rx184_done554
    pop $I19, rx184_bstack
    if_null rx184_cstack, rx184_cstack_done559
    unless rx184_cstack, rx184_cstack_done559
    dec $I19
    set $P11, rx184_cstack[$I19]
  rx184_cstack_done559:
    pop rx184_rep, rx184_bstack
    pop rx184_pos, rx184_bstack
    pop $I19, rx184_bstack
    lt rx184_pos, -1, rx184_done554
    lt rx184_pos, 0, rx184_fail556
    eq $I19, 0, rx184_fail556
    nqp_islist $I20, rx184_cstack
    unless $I20, rx184_jump557
    elements $I18, rx184_bstack
    le $I18, 0, rx184_cut558
    dec $I18
    set $I18, rx184_bstack[$I18]
  rx184_cut558:
    assign rx184_cstack, $I18
  rx184_jump557:
    jump $I19
  rx184_done554:
    rx184_cur."!cursor_fail"()
    .return (rx184_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_48_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 125
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx190_start
    .local string rx190_tgt
    .local int rx190_pos
    .local int rx190_off
    .local int rx190_eos
    .local int rx190_rep
    .local pmc rx190_cur
    .local pmc rx190_curclass
    .local pmc rx190_bstack
    .local pmc rx190_cstack
    rx190_start = self."!cursor_start_all"()
    set rx190_cur, rx190_start[0]
    set rx190_tgt, rx190_start[1]
    set rx190_pos, rx190_start[2]
    set rx190_curclass, rx190_start[3]
    set rx190_bstack, rx190_start[4]
    set $I19, rx190_start[5]
    store_lex unicode:"$\x{a2}", rx190_cur
    length rx190_eos, rx190_tgt
    eq $I19, 1, rx190_restart570
    gt rx190_pos, rx190_eos, rx190_fail571
    repr_get_attr_int $I11, self, rx190_curclass, "$!from"
    ne $I11, -1, rxscan191_done577
    goto rxscan191_scan576
  rxscan191_loop575:
    inc rx190_pos
    gt rx190_pos, rx190_eos, rx190_fail571
    repr_bind_attr_int rx190_cur, rx190_curclass, "$!from", rx190_pos
  rxscan191_scan576:
    nqp_rxmark rx190_bstack, rxscan191_loop575, rx190_pos, 0
  rxscan191_done577:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt192_0579
    nqp_push_label $P11, alt192_1581
    nqp_push_label $P11, alt192_2588
    nqp_push_label $P11, alt192_3589
    nqp_rxmark rx190_bstack, alt192_end578, -1, 0
    rx190_cur."!alt"(rx190_pos, "alt_nfa__9_1361633912.743", $P11)
    goto rx190_fail571
  alt192_0579:
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail571
    substr $S10, rx190_tgt, rx190_pos, 1
    ne $S10, ucs4:"[", rx190_fail571
    add rx190_pos, 1
    repr_bind_attr_int rx190_cur, rx190_curclass, "$!pos", rx190_pos
    $P11 = rx190_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx190_curclass, "$!pos"
    lt $I11, 0, rx190_fail571
    nqp_rxmark rx190_bstack, rxsubrule193_pass580, -1, 0
  rxsubrule193_pass580:
    rx190_cstack = rx190_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx190_pos, $P11, rx190_curclass, "$!pos"
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail571
    substr $S10, rx190_tgt, rx190_pos, 1
    ne $S10, ucs4:"]", rx190_fail571
    add rx190_pos, 1
    goto alt192_end578
  alt192_1581:
    nqp_rxmark rx190_bstack, rxquantr194_done583, -1, 0
  rxquantr194_loop582:
    ge rx190_pos, rx190_eos, rx190_fail571
    is_cclass $I11, .CCLASS_NUMERIC, rx190_tgt, rx190_pos
    unless $I11, rx190_fail571
    add rx190_pos, 1
    nqp_rxpeek $I19, rx190_bstack, rxquantr194_done583
    inc $I19
    inc $I19
    set rx190_rep, rx190_bstack[$I19]
    nqp_rxcommit rx190_bstack, rxquantr194_done583
    inc rx190_rep
    nqp_rxmark rx190_bstack, rxquantr194_done583, rx190_pos, rx190_rep
    goto rxquantr194_loop582
  rxquantr194_done583:
    nqp_rxmark rx190_bstack, rxquantr195_done585, rx190_pos, 0
  rxquantr195_loop584:
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail571
    substr $S10, rx190_tgt, rx190_pos, 1
    ne $S10, ucs4:"_", rx190_fail571
    add rx190_pos, 1
    nqp_rxmark rx190_bstack, rxquantr196_done587, -1, 0
  rxquantr196_loop586:
    ge rx190_pos, rx190_eos, rx190_fail571
    is_cclass $I11, .CCLASS_NUMERIC, rx190_tgt, rx190_pos
    unless $I11, rx190_fail571
    add rx190_pos, 1
    nqp_rxpeek $I19, rx190_bstack, rxquantr196_done587
    inc $I19
    inc $I19
    set rx190_rep, rx190_bstack[$I19]
    nqp_rxcommit rx190_bstack, rxquantr196_done587
    inc rx190_rep
    nqp_rxmark rx190_bstack, rxquantr196_done587, rx190_pos, rx190_rep
    goto rxquantr196_loop586
  rxquantr196_done587:
    nqp_rxpeek $I19, rx190_bstack, rxquantr195_done585
    inc $I19
    inc $I19
    set rx190_rep, rx190_bstack[$I19]
    nqp_rxcommit rx190_bstack, rxquantr195_done585
    inc rx190_rep
    nqp_rxmark rx190_bstack, rxquantr195_done585, rx190_pos, rx190_rep
    goto rxquantr195_loop584
  rxquantr195_done585:
    goto alt192_end578
  alt192_2588:
    ge rx190_pos, rx190_eos, rx190_fail571
    substr $S11, rx190_tgt, rx190_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx190_fail571
    inc rx190_pos
    goto alt192_end578
  alt192_3589:
    repr_bind_attr_int rx190_cur, rx190_curclass, "$!pos", rx190_pos
    $P11 = rx190_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx190_curclass, "$!pos"
    lt $I11, 0, rx190_fail571
    repr_get_attr_int rx190_pos, $P11, rx190_curclass, "$!pos"
    goto alt192_end578
  alt192_end578:
    nqp_rxcommit rx190_bstack, alt192_end578
    rx190_cur."!cursor_pass"(rx190_pos, "charspec", 'backtrack'=>1)
    .return (rx190_cur)
  rx190_restart570:
    repr_get_attr_obj rx190_cstack, rx190_cur, rx190_curclass, "$!cstack"
  rx190_fail571:
    unless rx190_bstack, rx190_done569
    pop $I19, rx190_bstack
    if_null rx190_cstack, rx190_cstack_done574
    unless rx190_cstack, rx190_cstack_done574
    dec $I19
    set $P11, rx190_cstack[$I19]
  rx190_cstack_done574:
    pop rx190_rep, rx190_bstack
    pop rx190_pos, rx190_bstack
    pop $I19, rx190_bstack
    lt rx190_pos, -1, rx190_done569
    lt rx190_pos, 0, rx190_fail571
    eq $I19, 0, rx190_fail571
    nqp_islist $I20, rx190_cstack
    unless $I20, rx190_jump572
    elements $I18, rx190_bstack
    le $I18, 0, rx190_cut573
    dec $I18
    set $I18, rx190_bstack[$I18]
  rx190_cut573:
    assign rx190_cstack, $I18
  rx190_jump572:
    jump $I19
  rx190_done569:
    rx190_cur."!cursor_fail"()
    .return (rx190_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_49_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5015 = 'cuid_177_1361633912.325' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_178_1361633912.325' 
    capture_lex $P5015 
    .lex "%hash", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    .local pmc fb_tmp_3 
    if haz_param_1, default628
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5014
  default628:
    new $P5001, 'Hash'
    set $P101, $P5001
    find_lex $P5002, "%ohash"
    set fb_tmp_3, $P5002
    repr_defined $I5001, fb_tmp_3
    unless $I5001 goto if198_else591 
    set $P5003, fb_tmp_3[_lex_param_1]
    set $P5005, $P5003
    goto if198_end592
  if198_else591:
    null $P5004
    set $P5005, $P5004
  if198_end592:
    unless_null $P5005, vivi_199593
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_199593:
    set $P101, $P5005
    if $P101 goto unless200_end595 
    .const 'Sub' $P5007 = 'cuid_177_1361633912.325' 
    capture_lex $P5007
    $P5008 = $P5007()
  unless200_end595:
    unless _lex_param_2 goto if214_else626 
.annotate 'line', 246
    find_lex $P5009, "%ohash"
    set $S5001, _lex_param_2
    set $P5009[$S5001], $P101
    nqp_decontainerize $P5010, _lex_param_0
    set $P5013, $P5010
    goto if214_end627
  if214_else626:
    .const 'Sub' $P5011 = 'cuid_178_1361633912.325' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if214_end627:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1361633912.325") :anon :lex :outer("cuid_49_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 182
    .const 'Sub' $P5008 = 'cuid_175_1361633912.325' 
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
  while201_test596:
    find_lex $S5002, "$spec"
    find_not_cclass $I5003, 32, $S5002, $I102, $I101
    set $I102, $I5003
    set $N5001, $I102
    set $N5002, $I101
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while201_done600 
  while201_redo598:
    .const 'Sub' $P5002 = 'cuid_175_1361633912.325' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while201_test596 
  while201_done600:
    find_lex $P5006, "%ohash"
    find_lex $S5003, "$spec"
    find_lex $P5007, "%hash"
    set $P5006[$S5003], $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1361633912.325") :anon :lex :outer("cuid_177_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 189
    .const 'Sub' $P5007 = 'cuid_174_1361633912.325' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_176_1361633912.325' 
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
    unless $I5002 goto if202_else601 
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
    goto if202_end602
  if202_else601:
    iseq $I5003, $S101, ":"
    unless $I5003 goto if203_else603 
    .const 'Sub' $P5001 = 'cuid_174_1361633912.325' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if203_end604
  if203_else603:
    .const 'Sub' $P5003 = 'cuid_176_1361633912.325' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if203_end604:
    set $P5006, $P5005
  if202_end602:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1361633912.325") :anon :lex :outer("cuid_175_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 195
    .lex "$value", $P101 
    .lex "$name", $P102 
    .local pmc tmp_2 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    unless $I5001 goto if204_end606 
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
  if204_end606:
    find_lex $S5003, "$spec"
    find_lex $I5004, "$pos"
    find_lex $I5005, "$eos"
    find_not_cclass $I5003, 8192, $S5003, $I5004, $I5005
    store_lex "$lpos", $I5003
    find_lex $S5005, "$spec"
    find_lex $I5006, "$pos"
    find_lex $I5007, "$lpos"
    set $N5002, $I5007
    find_lex $I5008, "$pos"
    set $N5003, $I5008
    sub $N5001, $N5002, $N5003
    set $I5009, $N5001
    substr $S5004, $S5005, $I5006, $I5009
    box $P5005, $S5004
    set $P102, $P5005
    find_lex $I5010, "$lpos"
    store_lex "$pos", $I5010
    find_lex $S5007, "$spec"
    find_lex $I5012, "$pos"
    substr $S5006, $S5007, $I5012, 1
    iseq $I5011, $S5006, "<"
    unless $I5011 goto if205_end608 
.annotate 'line', 213
    find_lex $I5013, "$pos"
    set $N5005, $I5013
    set $N5006, 1
    add $N5004, $N5005, $N5006
    set $I5014, $N5004
    store_lex "$pos", $I5014
    find_lex $S5008, "$spec"
    find_lex $I5016, "$pos"
    index $I5015, $S5008, ">", $I5016
    store_lex "$lpos", $I5015
    find_lex $S5010, "$spec"
    find_lex $I5017, "$pos"
    find_lex $I5018, "$lpos"
    set $N5008, $I5018
    find_lex $I5019, "$pos"
    set $N5009, $I5019
    sub $N5007, $N5008, $N5009
    set $I5020, $N5007
    substr $S5009, $S5010, $I5017, $I5020
    box $P5006, $S5009
    set $P101, $P5006
    find_lex $I5021, "$lpos"
    set $N5011, $I5021
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5022, $N5010
    store_lex "$pos", $I5022
  if205_end608:
    find_lex $P5007, "%hash"
    set $S5011, $P102
    set $P5007[$S5011], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1361633912.325") :anon :lex :outer("cuid_175_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 222
    .lex "$index", $P101 
    .lex "$lookup", $P102 
    .lex "%lhash", $P103 
    .lex "$lhash_it", $P104 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    if $I5006 goto unless207_end612 
    set $N5003, $P101
    find_lex $I5008, "$lpos"
    set $N5004, $I5008
    isge $I5007, $N5003, $N5004
    set $I5009, $I5007
  unless207_end612:
    if $I5009 goto unless206_end610 
    set $I5010, $P101
    store_lex "$lpos", $I5010
  unless206_end610:
    find_lex $S5004, "$spec"
    find_lex $I5011, "$pos"
    find_lex $I5012, "$lpos"
    set $N5006, $I5012
    find_lex $I5013, "$pos"
    set $N5007, $I5013
    sub $N5005, $N5006, $N5007
    set $I5014, $N5005
    substr $S5003, $S5004, $I5011, $I5014
    box $P5006, $S5003
    set $P102, $P5006
    find_lex $P5007, "%ohash"
    set fb_tmp_4, $P5007
    repr_defined $I5015, fb_tmp_4
    unless $I5015 goto if208_else613 
    set $S5005, $P102
    set $P5008, fb_tmp_4[$S5005]
    set $P5010, $P5008
    goto if208_end614
  if208_else613:
    null $P5009
    set $P5010, $P5009
  if208_end614:
    unless_null $P5010, vivi_209615
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_209615:
    set $P103, $P5010
    if $P103 goto unless210_end617 
.annotate 'line', 232
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."panic"("Unknown operator precedence specification \"", $P102, "\"")
  unless210_end617:
    iter $P5015, $P103
    set $P104, $P5015
  while211_test618:
    set $P5022, $P104
    unless $P104 goto while211_done622 
  while211_redo620:
.annotate 'line', 235
    shift $P5016, $P104
    set $S5006, $P5016
    store_lex "$s", $S5006
    find_lex $P5017, "%hash"
    find_lex $S5007, "$s"
    set fb_tmp_5, $P103
    repr_defined $I5016, fb_tmp_5
    unless $I5016 goto if212_else623 
    find_lex $S5008, "$s"
    set $P5018, fb_tmp_5[$S5008]
    set $P5020, $P5018
    goto if212_end624
  if212_else623:
    null $P5019
    set $P5020, $P5019
  if212_end624:
    unless_null $P5020, vivi_213625
    nqp_get_sc_object $P5021, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5020, $P5021
  vivi_213625:
    set $P5017[$S5007], $P5020
    set $P5022, $P5020
    goto while211_test618 
  while211_done622:
    find_lex $I5017, "$lpos"
    store_lex "$pos", $I5017
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1361633912.325") :anon :lex :outer("cuid_49_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 250
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
.sub "panic" :subid("cuid_50_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 271
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_6 
    .local pmc pkg_lookup_tmp_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_1, $P5008
    get_who $P5009, pkg_lookup_tmp_1
    exists $I5002, $P5009["HLL"]
    unless $I5002 goto if216_else631 
    get_who $P5011, pkg_lookup_tmp_1
    set $P5010, $P5011["HLL"]
    set $P5013, $P5010
    goto if216_end632
  if216_else631:
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5013, $P5012
  if216_end632:
    get_who $P5007, $P5013
    set fb_tmp_6, $P5007
    repr_defined $I5001, fb_tmp_6
    unless $I5001 goto if215_else629 
    set $P5014, fb_tmp_6["Compiler"]
    set $P5016, $P5014
    goto if215_end630
  if215_else629:
    null $P5015
    set $P5016, $P5015
  if215_end630:
    unless_null $P5016, vivi_217633
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_217633:
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
    join $S5004, "", _lex_param_1
    box $P5019, $S5004
    die $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_51_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_2, default636
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5005
  default636:
    if _lex_param_2 goto unless218_end635 
.annotate 'line', 283
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless218_end635:
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
.sub "peek_delimiters" :subid("cuid_52_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_179_1361633912.325' 
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
    unless $I5001 goto if219_end638 
.annotate 'line', 304
.annotate 'line', 305
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if219_end638:
    is_cclass $I5002, 8192, $S101, 0
    unless $I5002 goto if220_end640 
.annotate 'line', 307
.annotate 'line', 308
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if220_end640:
    is_cclass $I5003, 32, $S101, 0
    unless $I5003 goto if221_end642 
.annotate 'line', 310
.annotate 'line', 311
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if221_end642:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if222_end644 
    .const 'Sub' $P5008 = 'cuid_179_1361633912.325' 
    capture_lex $P5008
    $P5009 = $P5008()
  if222_end644:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1361633912.325") :anon :lex :outer("cuid_52_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 317
    .lex "$len", $I101 
    .local pmc tmp_4 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if223_end646 
.annotate 'line', 319
.annotate 'line', 320
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if223_end646:
    find_lex $P5004, "$brackets"
    set $S5002, $P5004
    find_lex $I5002, "$brac"
    set $N5005, $I5002
    set $N5006, 1
    add $N5004, $N5005, $N5006
    set $I5003, $N5004
    substr $S5001, $S5002, $I5003, 1
    store_lex "$stop", $S5001
    set $I101, 1
  while224_test647:
    find_lex $S5004, "$target"
    find_lex $I5005, "$pos"
    set $N5008, $I5005
    set $N5009, 1
    add $N5007, $N5008, $N5009
    set $I5006, $N5007
    store_lex "$pos", $I5006
    substr $S5003, $S5004, $I5006, 1
    find_lex $S5005, "$start"
    iseq $I5004, $S5003, $S5005
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto while224_done651 
  while224_redo649:
.annotate 'line', 328
    box $P5005, $I101
    set tmp_4, $P5005
    set $N5011, tmp_4
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5007, $N5010
    set $I101, $I5007
    set $P5005, tmp_4
    goto while224_test647 
  while224_done651:
    set $N5010, $I101
    set $N5011, 1
    isgt $I5007, $N5010, $N5011
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if225_end653 
.annotate 'line', 331
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if225_end653:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_53_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5028 = 'cuid_181_1361633912.325' 
    capture_lex $P5028 
    .lex "%*QUOTEMOD", $P101 
    .lex "$*QUOTE_START", $P102 
    .lex "$*QUOTE_STOP", $P103 
    .lex utf8:"$\x{a2}", $P104 
    .lex "$/", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc self 
    .local pmc fb_tmp_7 
    .local pmc pkg_viv_tmp_1 
    .local pmc fb_tmp_8 
    .local pmc fb_tmp_9 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx226_start
    .local string rx226_tgt
    .local int rx226_pos
    .local int rx226_off
    .local int rx226_eos
    .local int rx226_rep
    .local pmc rx226_cur
    .local pmc rx226_curclass
    .local pmc rx226_bstack
    .local pmc rx226_cstack
    rx226_start = self."!cursor_start_all"()
    set rx226_cur, rx226_start[0]
    set rx226_tgt, rx226_start[1]
    set rx226_pos, rx226_start[2]
    set rx226_curclass, rx226_start[3]
    set rx226_bstack, rx226_start[4]
    set $I19, rx226_start[5]
    store_lex unicode:"$\x{a2}", rx226_cur
    length rx226_eos, rx226_tgt
    eq $I19, 1, rx226_restart656
    gt rx226_pos, rx226_eos, rx226_fail657
    repr_get_attr_int $I11, self, rx226_curclass, "$!from"
    ne $I11, -1, rxscan227_done663
    goto rxscan227_scan662
  rxscan227_loop661:
    inc rx226_pos
    gt rx226_pos, rx226_eos, rx226_fail657
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!from", rx226_pos
  rxscan227_scan662:
    nqp_rxmark rx226_bstack, rxscan227_loop661, rx226_pos, 0
  rxscan227_done663:
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    store_lex unicode:"$\x{a2}", rx226_cur
    unless_null $P101, fallback664
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_7, pkg_viv_tmp_1
    repr_defined $I5001, fb_tmp_7
    unless $I5001 goto if228_else665 
    set $P5006, fb_tmp_7["%QUOTEMOD"]
    set $P5008, $P5006
    goto if228_end666
  if228_else665:
    null $P5007
    set $P5008, $P5007
  if228_end666:
    unless_null $P5008, vivi_229667
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%QUOTEMOD"], $P5009
    set $P5008, $P5009
  vivi_229667:
    unless_null $P5008, vivi_230668
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5010
  vivi_230668:
    set $P101, $P5008
  fallback664:
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    store_lex unicode:"$\x{a2}", rx226_cur
    unless_null $P102, fallback669
    nqp_get_sc_object $P5012, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5011, $P5012
    set fb_tmp_8, $P5011
    repr_defined $I5002, fb_tmp_8
    unless $I5002 goto if231_else670 
    set $P5013, fb_tmp_8["$QUOTE_START"]
    set $P5015, $P5013
    goto if231_end671
  if231_else670:
    null $P5014
    set $P5015, $P5014
  if231_end671:
    unless_null $P5015, vivi_232672
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_232672:
    unless_null $P5015, vivi_233673
    die "Contextual $*QUOTE_START not found"
    box $P5017, "Contextual $*QUOTE_START not found"
    set $P5015, $P5017
  vivi_233673:
    set $P102, $P5015
  fallback669:
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    store_lex unicode:"$\x{a2}", rx226_cur
    unless_null $P103, fallback674
    nqp_get_sc_object $P5019, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5018, $P5019
    set fb_tmp_9, $P5018
    repr_defined $I5003, fb_tmp_9
    unless $I5003 goto if234_else675 
    set $P5020, fb_tmp_9["$QUOTE_STOP"]
    set $P5022, $P5020
    goto if234_end676
  if234_else675:
    null $P5021
    set $P5022, $P5021
  if234_end676:
    unless_null $P5022, vivi_235677
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_235677:
    unless_null $P5022, vivi_236678
    die "Contextual $*QUOTE_STOP not found"
    box $P5024, "Contextual $*QUOTE_STOP not found"
    set $P5022, $P5024
  vivi_236678:
    set $P103, $P5022
  fallback674:
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    store_lex unicode:"$\x{a2}", rx226_cur
    $P5025 = $P104."MATCH"()
    set $P105, $P5025
    .const 'Sub' $P5026 = 'cuid_181_1361633912.325' 
    capture_lex $P5026
    $P5027 = $P5026()
    repr_bind_attr_int rx226_cur, rx226_curclass, "$!pos", rx226_pos
    $P11 = rx226_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx226_curclass, "$!pos"
    lt $I11, 0, rx226_fail657
    nqp_rxmark rx226_bstack, rxsubrule267_pass732, -1, 0
  rxsubrule267_pass732:
    rx226_cstack = rx226_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx226_pos, $P11, rx226_curclass, "$!pos"
    rx226_cur."!cursor_pass"(rx226_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx226_cur)
  rx226_restart656:
    repr_get_attr_obj rx226_cstack, rx226_cur, rx226_curclass, "$!cstack"
  rx226_fail657:
    unless rx226_bstack, rx226_done655
    pop $I19, rx226_bstack
    if_null rx226_cstack, rx226_cstack_done660
    unless rx226_cstack, rx226_cstack_done660
    dec $I19
    set $P11, rx226_cstack[$I19]
  rx226_cstack_done660:
    pop rx226_rep, rx226_bstack
    pop rx226_pos, rx226_bstack
    pop $I19, rx226_bstack
    lt rx226_pos, -1, rx226_done655
    lt rx226_pos, 0, rx226_fail657
    eq $I19, 0, rx226_fail657
    nqp_islist $I20, rx226_cstack
    unless $I20, rx226_jump658
    elements $I18, rx226_bstack
    le $I18, 0, rx226_cut659
    dec $I18
    set $I18, rx226_bstack[$I18]
  rx226_cut659:
    assign rx226_cstack, $I18
  rx226_jump658:
    jump $I19
  rx226_done655:
    rx226_cur."!cursor_fail"()
    .return (rx226_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1361633912.325") :anon :lex :outer("cuid_53_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 344
    .const 'Sub' $P5025 = 'cuid_180_1361633912.325' 
    capture_lex $P5025 
    .lex "@delims", $P101 
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next723:
    unless $P5004, for_done725
    shift $P5007, $P5004
  for_redo724:
    .const 'Sub' $P5006 = 'cuid_180_1361633912.325' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next723
  for_done725:
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
    set fb_tmp_18, $P101
    repr_defined $I5001, fb_tmp_18
    unless $I5001 goto if263_else726 
    set $P5017, fb_tmp_18[0]
    set $P5019, $P5017
    goto if263_end727
  if263_else726:
    null $P5018
    set $P5019, $P5018
  if263_end727:
    unless_null $P5019, vivi_264728
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_264728:
    store_dynamic_lex "$*QUOTE_START", $P5019
    set fb_tmp_19, $P101
    repr_defined $I5002, fb_tmp_19
    unless $I5002 goto if265_else729 
    set $P5021, fb_tmp_19[1]
    set $P5023, $P5021
    goto if265_end730
  if265_else729:
    null $P5022
    set $P5023, $P5022
  if265_end730:
    unless_null $P5023, vivi_266731
    nqp_get_sc_object $P5024, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5023, $P5024
  vivi_266731:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1361633912.325") :anon :lex :outer("cuid_181_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 345
    .param pmc _lex_param_0 
    .lex "$mod", _lex_param_0 
    .local pmc fb_tmp_10 
    .local pmc pkg_viv_tmp_2 
    .local pmc fb_tmp_11 
    .local pmc pkg_viv_tmp_3 
    .local pmc fb_tmp_12 
    .local pmc pkg_viv_tmp_4 
    .local pmc fb_tmp_13 
    .local pmc pkg_viv_tmp_5 
    .local pmc fb_tmp_14 
    .local pmc pkg_viv_tmp_6 
    .local pmc fb_tmp_15 
    .local pmc pkg_viv_tmp_7 
    .local pmc fb_tmp_16 
    .local pmc pkg_viv_tmp_8 
    .local pmc fb_tmp_17 
    .local pmc pkg_viv_tmp_9 
    set $S5002, _lex_param_0
    substr $S5001, $S5002, 1
    box $P5001, $S5001
    set _lex_param_0, $P5001
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback679
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_2, $P5003
    set fb_tmp_10, pkg_viv_tmp_2
    repr_defined $I5001, fb_tmp_10
    unless $I5001 goto if237_else680 
    set $P5005, fb_tmp_10["%QUOTEMOD"]
    set $P5007, $P5005
    goto if237_end681
  if237_else680:
    null $P5006
    set $P5007, $P5006
  if237_end681:
    unless_null $P5007, vivi_238682
    new $P5008, 'Hash'
    set pkg_viv_tmp_2["%QUOTEMOD"], $P5008
    set $P5007, $P5008
  vivi_238682:
    unless_null $P5007, vivi_239683
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5009
  vivi_239683:
    set $P5002, $P5007
  fallback679:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5002, $S5004, "qq"
    unless $I5002 goto if240_else684 
.annotate 'line', 348
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback686
    nqp_get_sc_object $P5013, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5012, $P5013
    set pkg_viv_tmp_3, $P5012
    set fb_tmp_11, pkg_viv_tmp_3
    repr_defined $I5003, fb_tmp_11
    unless $I5003 goto if241_else687 
    set $P5014, fb_tmp_11["%QUOTEMOD"]
    set $P5016, $P5014
    goto if241_end688
  if241_else687:
    null $P5015
    set $P5016, $P5015
  if241_end688:
    unless_null $P5016, vivi_242689
    new $P5017, 'Hash'
    set pkg_viv_tmp_3["%QUOTEMOD"], $P5017
    set $P5016, $P5017
  vivi_242689:
    unless_null $P5016, vivi_243690
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5016, $P5018
  vivi_243690:
    set $P5011, $P5016
  fallback686:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback691
    nqp_get_sc_object $P5022, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5021, $P5022
    set pkg_viv_tmp_4, $P5021
    set fb_tmp_12, pkg_viv_tmp_4
    repr_defined $I5004, fb_tmp_12
    unless $I5004 goto if244_else692 
    set $P5023, fb_tmp_12["%QUOTEMOD"]
    set $P5025, $P5023
    goto if244_end693
  if244_else692:
    null $P5024
    set $P5025, $P5024
  if244_end693:
    unless_null $P5025, vivi_245694
    new $P5026, 'Hash'
    set pkg_viv_tmp_4["%QUOTEMOD"], $P5026
    set $P5025, $P5026
  vivi_245694:
    unless_null $P5025, vivi_246695
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5025, $P5027
  vivi_246695:
    set $P5020, $P5025
  fallback691:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback696
    nqp_get_sc_object $P5031, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5030, $P5031
    set pkg_viv_tmp_5, $P5030
    set fb_tmp_13, pkg_viv_tmp_5
    repr_defined $I5005, fb_tmp_13
    unless $I5005 goto if247_else697 
    set $P5032, fb_tmp_13["%QUOTEMOD"]
    set $P5034, $P5032
    goto if247_end698
  if247_else697:
    null $P5033
    set $P5034, $P5033
  if247_end698:
    unless_null $P5034, vivi_248699
    new $P5035, 'Hash'
    set pkg_viv_tmp_5["%QUOTEMOD"], $P5035
    set $P5034, $P5035
  vivi_248699:
    unless_null $P5034, vivi_249700
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5034, $P5036
  vivi_249700:
    set $P5029, $P5034
  fallback696:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback701
    nqp_get_sc_object $P5040, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5039, $P5040
    set pkg_viv_tmp_6, $P5039
    set fb_tmp_14, pkg_viv_tmp_6
    repr_defined $I5006, fb_tmp_14
    unless $I5006 goto if250_else702 
    set $P5041, fb_tmp_14["%QUOTEMOD"]
    set $P5043, $P5041
    goto if250_end703
  if250_else702:
    null $P5042
    set $P5043, $P5042
  if250_end703:
    unless_null $P5043, vivi_251704
    new $P5044, 'Hash'
    set pkg_viv_tmp_6["%QUOTEMOD"], $P5044
    set $P5043, $P5044
  vivi_251704:
    unless_null $P5043, vivi_252705
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5043, $P5045
  vivi_252705:
    set $P5038, $P5043
  fallback701:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback706
    nqp_get_sc_object $P5049, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5048, $P5049
    set pkg_viv_tmp_7, $P5048
    set fb_tmp_15, pkg_viv_tmp_7
    repr_defined $I5007, fb_tmp_15
    unless $I5007 goto if253_else707 
    set $P5050, fb_tmp_15["%QUOTEMOD"]
    set $P5052, $P5050
    goto if253_end708
  if253_else707:
    null $P5051
    set $P5052, $P5051
  if253_end708:
    unless_null $P5052, vivi_254709
    new $P5053, 'Hash'
    set pkg_viv_tmp_7["%QUOTEMOD"], $P5053
    set $P5052, $P5053
  vivi_254709:
    unless_null $P5052, vivi_255710
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5052, $P5054
  vivi_255710:
    set $P5047, $P5052
  fallback706:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback711
    nqp_get_sc_object $P5058, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5057, $P5058
    set pkg_viv_tmp_8, $P5057
    set fb_tmp_16, pkg_viv_tmp_8
    repr_defined $I5008, fb_tmp_16
    unless $I5008 goto if256_else712 
    set $P5059, fb_tmp_16["%QUOTEMOD"]
    set $P5061, $P5059
    goto if256_end713
  if256_else712:
    null $P5060
    set $P5061, $P5060
  if256_end713:
    unless_null $P5061, vivi_257714
    new $P5062, 'Hash'
    set pkg_viv_tmp_8["%QUOTEMOD"], $P5062
    set $P5061, $P5062
  vivi_257714:
    unless_null $P5061, vivi_258715
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5061, $P5063
  vivi_258715:
    set $P5056, $P5061
  fallback711:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if240_end685
  if240_else684:
    set $S5005, _lex_param_0
    iseq $I5009, $S5005, "b"
    box $P5075, $I5009
    set $P5074, $P5075
    unless $I5009 goto if259_end717 
.annotate 'line', 356
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback718
    nqp_get_sc_object $P5067, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5066, $P5067
    set pkg_viv_tmp_9, $P5066
    set fb_tmp_17, pkg_viv_tmp_9
    repr_defined $I5010, fb_tmp_17
    unless $I5010 goto if260_else719 
    set $P5068, fb_tmp_17["%QUOTEMOD"]
    set $P5070, $P5068
    goto if260_end720
  if260_else719:
    null $P5069
    set $P5070, $P5069
  if260_end720:
    unless_null $P5070, vivi_261721
    new $P5071, 'Hash'
    set pkg_viv_tmp_9["%QUOTEMOD"], $P5071
    set $P5070, $P5071
  vivi_261721:
    unless_null $P5070, vivi_262722
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5070, $P5072
  vivi_262722:
    set $P5065, $P5070
  fallback718:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if259_end717:
    set $P5076, $P5074
  if240_end685:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_54_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_182_1361633912.325' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx268_start
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    .local pmc rx268_curclass
    .local pmc rx268_bstack
    .local pmc rx268_cstack
    rx268_start = self."!cursor_start_all"()
    set rx268_cur, rx268_start[0]
    set rx268_tgt, rx268_start[1]
    set rx268_pos, rx268_start[2]
    set rx268_curclass, rx268_start[3]
    set rx268_bstack, rx268_start[4]
    set $I19, rx268_start[5]
    store_lex unicode:"$\x{a2}", rx268_cur
    length rx268_eos, rx268_tgt
    eq $I19, 1, rx268_restart735
    gt rx268_pos, rx268_eos, rx268_fail736
    repr_get_attr_int $I11, self, rx268_curclass, "$!from"
    ne $I11, -1, rxscan269_done742
    goto rxscan269_scan741
  rxscan269_loop740:
    inc rx268_pos
    gt rx268_pos, rx268_eos, rx268_fail736
    repr_bind_attr_int rx268_cur, rx268_curclass, "$!from", rx268_pos
  rxscan269_scan741:
    nqp_rxmark rx268_bstack, rxscan269_loop740, rx268_pos, 0
  rxscan269_done742:
    repr_bind_attr_int rx268_cur, rx268_curclass, "$!pos", rx268_pos
    store_lex unicode:"$\x{a2}", rx268_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_182_1361633912.325' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx268_fail736
    rx268_cur."!cursor_pass"(rx268_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx268_cur)
  rx268_restart735:
    repr_get_attr_obj rx268_cstack, rx268_cur, rx268_curclass, "$!cstack"
  rx268_fail736:
    unless rx268_bstack, rx268_done734
    pop $I19, rx268_bstack
    if_null rx268_cstack, rx268_cstack_done739
    unless rx268_cstack, rx268_cstack_done739
    dec $I19
    set $P11, rx268_cstack[$I19]
  rx268_cstack_done739:
    pop rx268_rep, rx268_bstack
    pop rx268_pos, rx268_bstack
    pop $I19, rx268_bstack
    lt rx268_pos, -1, rx268_done734
    lt rx268_pos, 0, rx268_fail736
    eq $I19, 0, rx268_fail736
    nqp_islist $I20, rx268_cstack
    unless $I20, rx268_jump737
    elements $I18, rx268_bstack
    le $I18, 0, rx268_cut738
    dec $I18
    set $I18, rx268_bstack[$I18]
  rx268_cut738:
    assign rx268_cstack, $I18
  rx268_jump737:
    jump $I19
  rx268_done734:
    rx268_cur."!cursor_fail"()
    .return (rx268_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1361633912.325") :anon :lex :outer("cuid_54_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 369
    .local pmc fb_tmp_20 
    .local pmc fb_tmp_21 
    .local pmc pkg_viv_tmp_10 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback745
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_10, $P5002
    set fb_tmp_21, pkg_viv_tmp_10
    repr_defined $I5002, fb_tmp_21
    unless $I5002 goto if271_else746 
    set $P5004, fb_tmp_21["%QUOTEMOD"]
    set $P5006, $P5004
    goto if271_end747
  if271_else746:
    null $P5005
    set $P5006, $P5005
  if271_end747:
    unless_null $P5006, vivi_272748
    new $P5007, 'Hash'
    set pkg_viv_tmp_10["%QUOTEMOD"], $P5007
    set $P5006, $P5007
  vivi_272748:
    unless_null $P5006, vivi_273749
    die "Contextual %*QUOTEMOD not found"
    box $P5008, "Contextual %*QUOTEMOD not found"
    set $P5006, $P5008
  vivi_273749:
    set $P5001, $P5006
  fallback745:
    set fb_tmp_20, $P5001
    repr_defined $I5001, fb_tmp_20
    unless $I5001 goto if270_else743 
    find_lex $S5001, "$mod"
    set $P5009, fb_tmp_20[$S5001]
    set $P5011, $P5009
    goto if270_end744
  if270_else743:
    null $P5010
    set $P5011, $P5010
  if270_end744:
    unless_null $P5011, vivi_274750
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_274750:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_55_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .lex "$start", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_22 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_START"
    unless_null $P5002, fallback751
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5003, $P5004
    set fb_tmp_22, $P5003
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if275_else752 
    set $P5005, fb_tmp_22["$QUOTE_START"]
    set $P5007, $P5005
    goto if275_end753
  if275_else752:
    null $P5006
    set $P5007, $P5006
  if275_end753:
    unless_null $P5007, vivi_276754
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_276754:
    unless_null $P5007, vivi_277755
    die "Contextual $*QUOTE_START not found"
    box $P5009, "Contextual $*QUOTE_START not found"
    set $P5007, $P5009
  vivi_277755:
    set $P5002, $P5007
  fallback751:
    set $P101, $P5002
    isnull $I5002, $P101
    unless $I5002 goto if278_else756 
.annotate 'line', 375
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_cur"()
    set $P5014, $P5011
    goto if278_end757
  if278_else756:
.annotate 'line', 376
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if278_end757:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_56_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 379
    .param pmc _lex_param_0 
    .lex "$stop", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_23 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_STOP"
    unless_null $P5002, fallback758
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5003, $P5004
    set fb_tmp_23, $P5003
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if279_else759 
    set $P5005, fb_tmp_23["$QUOTE_STOP"]
    set $P5007, $P5005
    goto if279_end760
  if279_else759:
    null $P5006
    set $P5007, $P5006
  if279_end760:
    unless_null $P5007, vivi_280761
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_280761:
    unless_null $P5007, vivi_281762
    die "Contextual $*QUOTE_STOP not found"
    box $P5009, "Contextual $*QUOTE_STOP not found"
    set $P5007, $P5009
  vivi_281762:
    set $P5002, $P5007
  fallback758:
    set $P101, $P5002
    isnull $I5002, $P101
    unless $I5002 goto if282_else763 
.annotate 'line', 382
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_cur"()
    set $P5014, $P5011
    goto if282_end764
  if282_else763:
.annotate 'line', 383
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if282_end764:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_57_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
  while283_test765:
    find_not_cclass $I5003, 32, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while283_done769 
  while283_redo767:
.annotate 'line', 391
    find_cclass $I5004, 32, _lex_param_1, $I101, $I102
    set $I103, $I5004
    set $N5004, $I103
    set $N5005, $I101
    sub $N5003, $N5004, $N5005
    set $I5005, $N5003
    substr $S5001, _lex_param_1, $I101, $I5005
    box $P5002, $S5001
    push $P101, $P5002
    set $I101, $I103
    set $I5006, $I101
    goto while283_test765 
  while283_done769:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_58_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5133 = 'cuid_183_1361633912.325' 
    capture_lex $P5133 
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
    .local pmc fb_tmp_31 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    .local pmc fb_tmp_40 
    if haz_param_3, default905
    set $S5005, ""
    set _lex_param_1, $S5005
  default905:
    if haz_param_4, default906
    set $I5034, 0
    set _lex_param_2, $I5034
  default906:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P109, $P5009
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P110, $P5010
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P111, $P5011
    new $P5012, 'Hash'
    set $P112, $P5012
    set $S102, ""
    set $S103, ""
    set $S104, ""
    set $I102, 0
    set $I103, 0
    root_new $P113, ['parrot';'Continuation']
    set_label $P113, lexotic_770
    .lex "RETURN", $P113
.annotate 'line', 408
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."!cursor_start_cur"()
    set $P101, $P5014
    find_lex $P5015, "$cursor_class"
    repr_get_attr_int $I5001, $P101, $P5015, "$!from"
    set $I101, $I5001
    set $S101, "termish"
    new $P5121, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5121, while284_handlers775
    push_eh $P5121
  while284_test772:
    box $P5122, 1
    set $P5120, $P5122
    unless 1 goto while284_done776 
  while284_redo774:
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
    unless $I5003 goto if285_end778 
    find_lex $P5020, "RETURN"
    $P5021 = $P5020($P101)
  if285_end778:
.annotate 'line', 435
    $P5022 = $P104."MATCH"()
    set $P105, $P5022
    set $P106, $P105
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while286_handlers782
    push_eh $P5025
  while286_test779:
    exists $I5004, $P106["OPER"]
    box $P5026, $I5004
    set $P5024, $P5026
    unless $I5004 goto while286_done783 
  while286_redo781:
    set $P5023, $P106["OPER"]
    set $P106, $P5023
    set $P5024, $P106
    goto while286_test779 
  while286_handlers782:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while286_test779
    eq $P5025, .CONTROL_LOOP_REDO, while286_redo781
  while286_done783:
    pop_eh 
    set $P5027, $P106["prefixish"]
    set $P107, $P5027
    set $P5028, $P106["postfixish"]
    set $P108, $P5028
    isnull $I5005, $P107
    set $I5007, $I5005
    if $I5005 goto unless288_end787 
    isnull $I5006, $P108
    set $I5007, $I5006
  unless288_end787:
    if $I5007 goto unless287_end785 
.annotate 'line', 444
  while289_test788:
    set $P5029, $P107
    unless $P107 goto if290_end794 
    set $P5029, $P108
  if290_end794:
    set $P5032, $P5029
    unless $P5029 goto while289_done792 
  while289_redo790:
    .const 'Sub' $P5030 = 'cuid_183_1361633912.325' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
    goto while289_test788 
  while289_done792:
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, while310_handlers827
    push_eh $P5035
  while310_test824:
    set $P5034, $P107
    unless $P107 goto while310_done828 
  while310_redo826:
    shift $P5033, $P107
    push $P102, $P5033
    set $P5034, $P102
    goto while310_test824 
  while310_handlers827:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5035, $P5035, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while310_test824
    eq $P5035, .CONTROL_LOOP_REDO, while310_redo826
  while310_done828:
    pop_eh 
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, while311_handlers832
    push_eh $P5038
  while311_test829:
    set $P5037, $P108
    unless $P108 goto while311_done833 
  while311_redo831:
    pop $P5036, $P108
    push $P102, $P5036
    set $P5037, $P102
    goto while311_test829 
  while311_handlers832:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, while311_test829
    eq $P5038, .CONTROL_LOOP_REDO, while311_redo831
  while311_done833:
    pop_eh 
  unless287_end785:
    delete $P105["prefixish"]
    delete $P105["postfixish"]
    set $P5039, $P105["term"]
    push $P103, $P5039
    unless _lex_param_2 goto if312_end835 
    die 0, .CONTROL_LOOP_LAST
  if312_end835:
    set $I102, 1
    set $I103, 0
    new $P5090, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5090, while313_handlers839
    push_eh $P5090
  while313_test836:
    box $P5091, $I102
    set $P5089, $P5091
    unless $I102 goto while313_done840 
  while313_redo838:
.annotate 'line', 471
    find_lex $P5040, "$cursor_class"
    repr_bind_attr_int $P101, $P5040, "$!pos", $I101
.annotate 'line', 475
    $P5041 = $P101."ws"()
    set $P109, $P5041
    find_lex $P5042, "$cursor_class"
    repr_get_attr_int $I5008, $P109, $P5042, "$!pos"
    set $I101, $I5008
    set $N5003, $I101
    set $N5004, 0
    islt $I5009, $N5003, $N5004
    unless $I5009 goto if314_end842 
.annotate 'line', 477
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if314_end842:
    find_lex $P5043, "$cursor_class"
    repr_bind_attr_int $P101, $P5043, "$!pos", $I101
.annotate 'line', 484
    $P5044 = $P101."infixish"()
    set $P110, $P5044
    find_lex $P5045, "$cursor_class"
    repr_get_attr_int $I5010, $P110, $P5045, "$!pos"
    set $I101, $I5010
    set $N5005, $I101
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    unless $I5011 goto if315_end844 
.annotate 'line', 486
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if315_end844:
.annotate 'line', 490
    $P5046 = $P110."MATCH"()
    set $P111, $P5046
    set fb_tmp_32, $P111
    repr_defined $I5013, fb_tmp_32
    unless $I5013 goto if317_else847 
    set $P5047, fb_tmp_32["OPER"]
    set $P5049, $P5047
    goto if317_end848
  if317_else847:
    null $P5048
    set $P5049, $P5048
  if317_end848:
    unless_null $P5049, vivi_318849
    nqp_get_sc_object $P5050, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5049, $P5050
  vivi_318849:
    set fb_tmp_31, $P5049
    repr_defined $I5012, fb_tmp_31
    unless $I5012 goto if316_else845 
    set $P5051, fb_tmp_31["O"]
    set $P5053, $P5051
    goto if316_end846
  if316_else845:
    null $P5052
    set $P5053, $P5052
  if316_end846:
    unless_null $P5053, vivi_319850
    nqp_get_sc_object $P5054, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5053, $P5054
  vivi_319850:
    set $P112, $P5053
    set $P5055, $P112["nextterm"]
    unless_null $P5055, vivi_320851
    box $P5056, "termish"
    set $P5055, $P5056
  vivi_320851:
    set $S5001, $P5055
    set $S101, $S5001
    set fb_tmp_33, $P112
    repr_defined $I5014, fb_tmp_33
    unless $I5014 goto if321_else852 
    set $P5057, fb_tmp_33["prec"]
    set $P5059, $P5057
    goto if321_end853
  if321_else852:
    null $P5058
    set $P5059, $P5058
  if321_end853:
    unless_null $P5059, vivi_322854
    nqp_get_sc_object $P5060, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5059, $P5060
  vivi_322854:
    set $S5002, $P5059
    set $S102, $S5002
    if $S102 goto unless323_end856 
.annotate 'line', 496
    $P5061 = $P110."panic"("Missing infixish operator precedence")
  unless323_end856:
    islt $I5015, $S102, _lex_param_1
    unless $I5015 goto if324_end858 
.annotate 'line', 498
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if324_end858:
    set $P5062, $P112["sub"]
    unless_null $P5062, vivi_325859
    set $P5063, $P112["prec"]
    set $P5062, $P5063
  vivi_325859:
    set $P112["prec"], $P5062
    new $P5083, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5083, while326_handlers863
    push_eh $P5083
  while326_test860:
    set $P5082, $P102
    unless $P102 goto while326_done864 
  while326_redo862:
.annotate 'line', 505
    set fb_tmp_37, $P102
    repr_defined $I5019, fb_tmp_37
    unless $I5019 goto if330_else871 
    set $N5008, $P102
    set $N5009, 1
    sub $N5007, $N5008, $N5009
    set $I5020, $N5007
    set $P5064, fb_tmp_37[$I5020]
    set $P5066, $P5064
    goto if330_end872
  if330_else871:
    null $P5065
    set $P5066, $P5065
  if330_end872:
    unless_null $P5066, vivi_331873
    nqp_get_sc_object $P5067, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5066, $P5067
  vivi_331873:
    set fb_tmp_36, $P5066
    repr_defined $I5018, fb_tmp_36
    unless $I5018 goto if329_else869 
    set $P5068, fb_tmp_36["OPER"]
    set $P5070, $P5068
    goto if329_end870
  if329_else869:
    null $P5069
    set $P5070, $P5069
  if329_end870:
    unless_null $P5070, vivi_332874
    nqp_get_sc_object $P5071, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5070, $P5071
  vivi_332874:
    set fb_tmp_35, $P5070
    repr_defined $I5017, fb_tmp_35
    unless $I5017 goto if328_else867 
    set $P5072, fb_tmp_35["O"]
    set $P5074, $P5072
    goto if328_end868
  if328_else867:
    null $P5073
    set $P5074, $P5073
  if328_end868:
    unless_null $P5074, vivi_333875
    nqp_get_sc_object $P5075, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5074, $P5075
  vivi_333875:
    set fb_tmp_34, $P5074
    repr_defined $I5016, fb_tmp_34
    unless $I5016 goto if327_else865 
    set $P5076, fb_tmp_34["prec"]
    set $P5078, $P5076
    goto if327_end866
  if327_else865:
    null $P5077
    set $P5078, $P5077
  if327_end866:
    unless_null $P5078, vivi_334876
    nqp_get_sc_object $P5079, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5078, $P5079
  vivi_334876:
    set $S5003, $P5078
    set $S103, $S5003
    isgt $I5021, $S103, $S102
    if $I5021 goto unless335_end878 
    die 0, .CONTROL_LOOP_LAST
  unless335_end878:
.annotate 'line', 508
    nqp_decontainerize $P5080, _lex_param_0
    $P5081 = $P5080."EXPR_reduce"($P103, $P102)
    set $P5082, $P5081
    goto while326_test860 
  while326_handlers863:
    .get_results ($P5083)
    pop_upto_eh $P5083
    getattribute $P5083, $P5083, 'type'
    eq $P5083, .CONTROL_LOOP_NEXT, while326_test860
    eq $P5083, .CONTROL_LOOP_REDO, while326_redo862
  while326_done864:
    pop_eh 
    set $P5084, $P112["fake"]
    isnull $I5022, $P5084
    unless $I5022 goto if336_else879 
.annotate 'line', 511
    set $I102, 0
    box $P5088, $I102
    set $P5087, $P5088
    goto if336_end880
  if336_else879:
.annotate 'line', 514
    push $P102, $P111
.annotate 'line', 516
    nqp_decontainerize $P5085, _lex_param_0
    $P5086 = $P5085."EXPR_reduce"($P103, $P102)
    set $P5087, $P5086
  if336_end880:
    set $P5089, $P5087
    goto while313_test836 
  while313_handlers839:
    .get_results ($P5090)
    pop_upto_eh $P5090
    getattribute $P5090, $P5090, 'type'
    eq $P5090, .CONTROL_LOOP_NEXT, while313_test836
    eq $P5090, .CONTROL_LOOP_REDO, while313_redo838
  while313_done840:
    pop_eh 
    unless $I103 goto if337_end882 
    die 0, .CONTROL_LOOP_LAST
  if337_end882:
    iseq $I5023, $S103, $S102
    unless $I5023 goto if338_end884 
.annotate 'line', 522
    set $P5092, $P112["assoc"]
    set $S5004, $P5092
    set $S104, $S5004
    iseq $I5024, $S104, "non"
    unless $I5024 goto if339_end886 
.annotate 'line', 524
.annotate 'line', 525
    nqp_decontainerize $P5093, _lex_param_0
    set fb_tmp_40, $P102
    repr_defined $I5027, fb_tmp_40
    unless $I5027 goto if342_else891 
    elements $I5028, $P102
    set $N5011, $I5028
    set $N5012, 1
    sub $N5010, $N5011, $N5012
    set $I5029, $N5010
    set $P5094, fb_tmp_40[$I5029]
    set $P5096, $P5094
    goto if342_end892
  if342_else891:
    null $P5095
    set $P5096, $P5095
  if342_end892:
    unless_null $P5096, vivi_343893
    nqp_get_sc_object $P5097, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5096, $P5097
  vivi_343893:
    set fb_tmp_39, $P5096
    repr_defined $I5026, fb_tmp_39
    unless $I5026 goto if341_else889 
    set $P5098, fb_tmp_39["OPER"]
    set $P5100, $P5098
    goto if341_end890
  if341_else889:
    null $P5099
    set $P5100, $P5099
  if341_end890:
    unless_null $P5100, vivi_344894
    nqp_get_sc_object $P5101, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5100, $P5101
  vivi_344894:
    set fb_tmp_38, $P5100
    repr_defined $I5025, fb_tmp_38
    unless $I5025 goto if340_else887 
    set $P5102, fb_tmp_38["sym"]
    set $P5104, $P5102
    goto if340_end888
  if340_else887:
    null $P5103
    set $P5104, $P5103
  if340_end888:
    unless_null $P5104, vivi_345895
    nqp_get_sc_object $P5105, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5104, $P5105
  vivi_345895:
.annotate 'line', 527
    $P5106 = $P111."Str"()
    $P5107 = $P5093."EXPR_nonassoc"($P110, $P5104, $P5106)
  if339_end886:
    iseq $I5030, $S104, "left"
    box $P5111, $I5030
    set $P5110, $P5111
    unless $I5030 goto if346_end897 
.annotate 'line', 529
.annotate 'line', 531
    nqp_decontainerize $P5108, _lex_param_0
    $P5109 = $P5108."EXPR_reduce"($P103, $P102)
    set $P5110, $P5109
  if346_end897:
  if338_end884:
    push $P102, $P111
    find_lex $P5112, "$cursor_class"
    repr_bind_attr_int $P101, $P5112, "$!pos", $I101
.annotate 'line', 537
    $P5113 = $P101."ws"()
    set $P109, $P5113
    find_lex $P5114, "$cursor_class"
    repr_get_attr_int $I5031, $P109, $P5114, "$!pos"
    set $I101, $I5031
    find_lex $P5115, "$cursor_class"
    repr_bind_attr_int $P101, $P5115, "$!pos", $I101
    set $N5013, $I101
    set $N5014, 0
    islt $I5032, $N5013, $N5014
    box $P5119, $I5032
    set $P5118, $P5119
    unless $I5032 goto if347_end899 
    find_lex $P5116, "RETURN"
    $P5117 = $P5116($P101)
    set $P5118, $P5117
  if347_end899:
    set $P5120, $P5118
    goto while284_test772 
  while284_handlers775:
    .get_results ($P5121)
    pop_upto_eh $P5121
    getattribute $P5121, $P5121, 'type'
    eq $P5121, .CONTROL_LOOP_NEXT, while284_test772
    eq $P5121, .CONTROL_LOOP_REDO, while284_redo774
  while284_done776:
    pop_eh 
    new $P5126, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5126, while348_handlers903
    push_eh $P5126
  while348_test900:
    set $P5125, $P102
    unless $P102 goto while348_done904 
  while348_redo902:
.annotate 'line', 543
    nqp_decontainerize $P5123, _lex_param_0
    $P5124 = $P5123."EXPR_reduce"($P103, $P102)
    set $P5125, $P5124
    goto while348_test900 
  while348_handlers903:
    .get_results ($P5126)
    pop_upto_eh $P5126
    getattribute $P5126, $P5126, 'type'
    eq $P5126, .CONTROL_LOOP_NEXT, while348_test900
    eq $P5126, .CONTROL_LOOP_REDO, while348_redo902
  while348_done904:
    pop_eh 
    find_lex $P5127, "$cursor_class"
    repr_get_attr_int $I5033, $P101, $P5127, "$!pos"
    set $I101, $I5033
.annotate 'line', 545
    nqp_decontainerize $P5128, _lex_param_0
    $P5129 = $P5128."!cursor_start_cur"()
    set $P101, $P5129
.annotate 'line', 546
    $P101."!cursor_pass"($I101)
    find_lex $P5130, "$cursor_class"
    repr_bind_attr_int $P101, $P5130, "$!pos", $I101
    find_lex $P5131, "$cursor_class"
    pop $P5132, $P103
    setattribute $P101, $P5131, "$!match", $P5132
.annotate 'line', 549
    $P101."!reduce"("EXPR")
    goto lexotic_771
  lexotic_770:
    .get_results ($P101)
  lexotic_771:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1361633912.325") :anon :lex :outer("cuid_58_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 445
    .lex "%preO", $P101 
    .lex "%postO", $P102 
    .lex "$preprec", $P103 
    .lex "$postprec", $P104 
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    find_lex $P5005, "@prefixish"
    set fb_tmp_26, $P5005
    repr_defined $I5003, fb_tmp_26
    unless $I5003 goto if293_else799 
    set $P5006, fb_tmp_26[0]
    set $P5008, $P5006
    goto if293_end800
  if293_else799:
    null $P5007
    set $P5008, $P5007
  if293_end800:
    unless_null $P5008, vivi_294801
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_294801:
    set fb_tmp_25, $P5008
    repr_defined $I5002, fb_tmp_25
    unless $I5002 goto if292_else797 
    set $P5010, fb_tmp_25["OPER"]
    set $P5012, $P5010
    goto if292_end798
  if292_else797:
    null $P5011
    set $P5012, $P5011
  if292_end798:
    unless_null $P5012, vivi_295802
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_295802:
    set fb_tmp_24, $P5012
    repr_defined $I5001, fb_tmp_24
    unless $I5001 goto if291_else795 
    set $P5014, fb_tmp_24["O"]
    set $P5016, $P5014
    goto if291_end796
  if291_else795:
    null $P5015
    set $P5016, $P5015
  if291_end796:
    unless_null $P5016, vivi_296803
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_296803:
    set $P101, $P5016
    find_lex $P5018, "@postfixish"
    set fb_tmp_29, $P5018
    repr_defined $I5006, fb_tmp_29
    unless $I5006 goto if299_else808 
    find_lex $P5020, "@postfixish"
    elements $I5007, $P5020
    set $N5002, $I5007
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5008, $N5001
    set $P5019, fb_tmp_29[$I5008]
    set $P5022, $P5019
    goto if299_end809
  if299_else808:
    null $P5021
    set $P5022, $P5021
  if299_end809:
    unless_null $P5022, vivi_300810
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_300810:
    set fb_tmp_28, $P5022
    repr_defined $I5005, fb_tmp_28
    unless $I5005 goto if298_else806 
    set $P5024, fb_tmp_28["OPER"]
    set $P5026, $P5024
    goto if298_end807
  if298_else806:
    null $P5025
    set $P5026, $P5025
  if298_end807:
    unless_null $P5026, vivi_301811
    nqp_get_sc_object $P5027, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5026, $P5027
  vivi_301811:
    set fb_tmp_27, $P5026
    repr_defined $I5004, fb_tmp_27
    unless $I5004 goto if297_else804 
    set $P5028, fb_tmp_27["O"]
    set $P5030, $P5028
    goto if297_end805
  if297_else804:
    null $P5029
    set $P5030, $P5029
  if297_end805:
    unless_null $P5030, vivi_302812
    nqp_get_sc_object $P5031, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5030, $P5031
  vivi_302812:
    set $P102, $P5030
    set $P5032, $P101["prec"]
    unless_null $P5032, vivi_303813
    box $P5033, ""
    set $P5032, $P5033
  vivi_303813:
    set $P103, $P5032
    set $P5034, $P102["prec"]
    unless_null $P5034, vivi_304814
    box $P5035, ""
    set $P5034, $P5035
  vivi_304814:
    set $P104, $P5034
    set $S5001, $P104
    set $S5002, $P103
    isgt $I5009, $S5001, $S5002
    set $I5014, $I5009
    if $I5009 goto unless306_end818 
    set $S5003, $P104
    set $S5004, $P103
    iseq $I5010, $S5003, $S5004
    set $I5013, $I5010
    unless $I5010 goto if307_end820 
    set fb_tmp_30, $P102
    repr_defined $I5012, fb_tmp_30
    unless $I5012 goto if308_else821 
    set $P5036, fb_tmp_30["uassoc"]
    set $P5038, $P5036
    goto if308_end822
  if308_else821:
    null $P5037
    set $P5038, $P5037
  if308_end822:
    unless_null $P5038, vivi_309823
    nqp_get_sc_object $P5039, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5038, $P5039
  vivi_309823:
    set $S5005, $P5038
    iseq $I5011, $S5005, "right"
    set $I5013, $I5011
  if307_end820:
    set $I5014, $I5013
  unless306_end818:
    unless $I5014 goto if305_else815 
.annotate 'line', 453
    find_lex $P5040, "@opstack"
    find_lex $P5042, "@prefixish"
    shift $P5041, $P5042
    push $P5040, $P5041
    set $P5046, $P5040
    goto if305_end816
  if305_else815:
.annotate 'line', 456
    find_lex $P5043, "@opstack"
    find_lex $P5045, "@postfixish"
    pop $P5044, $P5045
    push $P5043, $P5044
    set $P5046, $P5043
  if305_end816:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_59_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    set $S102, ""
    set $S103, ""
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    pop $P5006, _lex_param_2
    set $P101, $P5006
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 42
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
    unless $I5001 goto if349_else907 
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
    unless $I5002 goto if350_else909 
    set $S5002, "POSTFIX"
    goto if350_end910
  if350_else909:
    set $S5002, "PREFIX"
  if350_end910:
    set $S102, $S5002
    goto if349_end908
  if349_else907:
    iseq $I5003, $S101, "list"
    unless $I5003 goto if351_else911 
.annotate 'line', 572
    set $P5015, $P102["sym"]
    unless_null $P5015, vivi_352913
    box $P5016, ""
    set $P5015, $P5016
  vivi_352913:
    set $S5003, $P5015
    set $S103, $S5003
    pop $P5017, _lex_param_1
    unshift $P101, $P5017
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while353_handlers917
    push_eh $P5025
  while353_test914:
    set $P5024, _lex_param_2
    unless _lex_param_2 goto while353_done918 
  while353_redo916:
.annotate 'line', 575
    elements $I5005, _lex_param_2
    set $N5004, $I5005
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    set $I5006, $N5003
    set $P5020, _lex_param_2[$I5006]
    set $P5019, $P5020["OPER"]
    set $P5018, $P5019["sym"]
    unless_null $P5018, vivi_355921
    box $P5021, ""
    set $P5018, $P5021
  vivi_355921:
    set $S5004, $P5018
    isne $I5004, $S103, $S5004
    unless $I5004 goto if354_end920 
    die 0, .CONTROL_LOOP_LAST
  if354_end920:
    pop $P5022, _lex_param_1
    unshift $P101, $P5022
    pop $P5023, _lex_param_2
    set $P5024, $P5023
    goto while353_test914 
  while353_handlers917:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while353_test914
    eq $P5025, .CONTROL_LOOP_REDO, while353_redo916
  while353_done918:
    pop_eh 
    pop $P5026, _lex_param_1
    unshift $P101, $P5026
    set $S102, "LIST"
    set $S5006, $S102
    goto if351_end912
  if351_else911:
.annotate 'line', 585
    pop $P5027, _lex_param_1
    set $P101[1], $P5027
    pop $P5028, _lex_param_1
    set $P101[0], $P5028
    set $P5029, $P103["reducecheck"]
    set $P104, $P5029
    isnull $I5007, $P104
    if $I5007 goto unless356_end923 
.annotate 'line', 589
    nqp_decontainerize $P5030, _lex_param_0
    set $S5005, $P104
    $P5031 = $P5030.$S5005($P101)
  unless356_end923:
    set $S102, "INFIX"
    set $S5006, $S102
  if351_end912:
  if349_end908:
.annotate 'line', 592
    nqp_decontainerize $P5032, _lex_param_0
    $P5032."!reduce_with_match"("EXPR", $S102, $P101)
    push _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_nonassoc" :subid("cuid_60_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "ternary" :subid("cuid_61_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 600
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    set fb_tmp_41, _lex_param_1
    repr_defined $I5001, fb_tmp_41
    unless $I5001 goto if357_else924 
    set $P5001, fb_tmp_41[1]
    set $P5003, $P5001
    goto if357_end925
  if357_else924:
    null $P5002
    set $P5003, $P5002
  if357_end925:
    unless_null $P5003, vivi_358926
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5003, $P5004
  vivi_358926:
    set _lex_param_1[2], $P5003
    set fb_tmp_43, _lex_param_1
    repr_defined $I5003, fb_tmp_43
    unless $I5003 goto if360_else929 
    set $P5005, fb_tmp_43["infix"]
    set $P5007, $P5005
    goto if360_end930
  if360_else929:
    null $P5006
    set $P5007, $P5006
  if360_end930:
    unless_null $P5007, vivi_361931
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_361931:
    set fb_tmp_42, $P5007
    repr_defined $I5002, fb_tmp_42
    unless $I5002 goto if359_else927 
    set $P5009, fb_tmp_42["EXPR"]
    set $P5011, $P5009
    goto if359_end928
  if359_else927:
    null $P5010
    set $P5011, $P5010
  if359_end928:
    unless_null $P5011, vivi_362932
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_362932:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_62_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 605
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
.annotate 'line', 609
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."!cursor_start_cur"()
    set $P102, $P5009
.annotate 'line', 610
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."pos"()
    $P102."!cursor_pass"($P5011)
    set $P101[_lex_param_1], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_63_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 614
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    .local pmc fb_tmp_44 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set fb_tmp_44, $P5009
    repr_defined $I5002, fb_tmp_44
    unless $I5002 goto if365_else937 
    set $P5011, fb_tmp_44["NQPCursor"]
    set $P5013, $P5011
    goto if365_end938
  if365_else937:
    null $P5012
    set $P5013, $P5012
  if365_end938:
    unless_null $P5013, vivi_367940
    nqp_get_sc_object $P5016, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5015, $P5016
    set $P5014, $P5015["NQPCursor"]
    unless_null $P5014, vivi_366939
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5014, $P5017
  vivi_366939:
    set $P5013, $P5014
  vivi_367940:
    type_check $I5001, $P102, $P5013
    set $I5004, $I5001
    unless $I5001 goto if364_end936 
.annotate 'line', 619
    $P5018 = $P102."pos"()
    set $N5001, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."pos"()
    set $N5002, $P5020
    iseq $I5003, $N5001, $N5002
    set $I5004, $I5003
  if364_end936:
    if $I5004 goto unless363_end934 
.annotate 'line', 620
    nqp_decontainerize $P5021, _lex_param_0
    $P5022 = $P5021."!cursor_start_cur"()
    set $P102, $P5022
  unless363_end934:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_64_1361633912.325") :anon :lex :outer("cuid_171_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 625
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
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc pkg_viv_tmp_11 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc pkg_viv_tmp_12 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
.annotate 'line', 626
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback943
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_11, $P5004
    set fb_tmp_46, pkg_viv_tmp_11
    repr_defined $I5002, fb_tmp_46
    unless $I5002 goto if369_else944 
    set $P5006, fb_tmp_46["%LANG"]
    set $P5008, $P5006
    goto if369_end945
  if369_else944:
    null $P5007
    set $P5008, $P5007
  if369_end945:
    unless_null $P5008, vivi_370946
    new $P5009, 'Hash'
    set pkg_viv_tmp_11["%LANG"], $P5009
    set $P5008, $P5009
  vivi_370946:
    unless_null $P5008, vivi_371947
    die "Contextual %*LANG not found"
    box $P5010, "Contextual %*LANG not found"
    set $P5008, $P5010
  vivi_371947:
    set $P5003, $P5008
  fallback943:
    set fb_tmp_45, $P5003
    repr_defined $I5001, fb_tmp_45
    unless $I5001 goto if368_else941 
    set $S5001, _lex_param_1
    set $P5011, fb_tmp_45[$S5001]
    set $P5013, $P5011
    goto if368_end942
  if368_else941:
    null $P5012
    set $P5013, $P5012
  if368_end942:
    unless_null $P5013, vivi_372948
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5013, $P5014
  vivi_372948:
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."orig"()
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."pos"()
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."!shared"()
    $P5021 = $P5013."!cursor_init"($P5016, $P5018 :named("p"), $P5020 :named("shared"))
    set $P101, $P5021
.annotate 'line', 627
    nqp_decontainerize $P5023, _lex_param_0
    get_how $P5022, $P5023
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = $P5022."traced"($P5024)
    unless $P5025 goto if373_end950 
.annotate 'line', 628
    get_how $P5026, $P101
    nqp_decontainerize $P5028, _lex_param_0
    get_how $P5027, $P5028
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5027."trace_depth"($P5029)
    $P5031 = $P5026."trace-on"($P101, $P5030)
  if373_end950:
    find_dynamic_lex $P5032, "%*LANG"
    unless_null $P5032, fallback953
    nqp_get_sc_object $P5034, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5033, $P5034
    set pkg_viv_tmp_12, $P5033
    set fb_tmp_48, pkg_viv_tmp_12
    repr_defined $I5004, fb_tmp_48
    unless $I5004 goto if375_else954 
    set $P5035, fb_tmp_48["%LANG"]
    set $P5037, $P5035
    goto if375_end955
  if375_else954:
    null $P5036
    set $P5037, $P5036
  if375_end955:
    unless_null $P5037, vivi_376956
    new $P5038, 'Hash'
    set pkg_viv_tmp_12["%LANG"], $P5038
    set $P5037, $P5038
  vivi_376956:
    unless_null $P5037, vivi_377957
    die "Contextual %*LANG not found"
    box $P5039, "Contextual %*LANG not found"
    set $P5037, $P5039
  vivi_377957:
    set $P5032, $P5037
  fallback953:
    set fb_tmp_47, $P5032
    repr_defined $I5003, fb_tmp_47
    unless $I5003 goto if374_else951 
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5040, fb_tmp_47[$S5002]
    set $P5042, $P5040
    goto if374_end952
  if374_else951:
    null $P5041
    set $P5042, $P5041
  if374_end952:
    unless_null $P5042, vivi_378958
    nqp_get_sc_object $P5043, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5042, $P5043
  vivi_378958:
    set $P102, $P5042
.annotate 'line', 631
    set $S5004, _lex_param_2
    $P5044 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1361633912.325") :anon :lex :outer("cuid_184_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 636
    .const 'Sub' $P5037 = 'cuid_185_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_65_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_66_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1361633912.325' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_97_1361633912.325' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_185_1361633912.325' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_65_1361633912.325' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_66_1361633912.325' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_67_1361633912.325' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_68_1361633912.325' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_69_1361633912.325' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_70_1361633912.325' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_71_1361633912.325' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_72_1361633912.325' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_73_1361633912.325' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_74_1361633912.325' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_75_1361633912.325' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_76_1361633912.325' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_77_1361633912.325' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_78_1361633912.325' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_79_1361633912.325' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_80_1361633912.325' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_81_1361633912.325' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_82_1361633912.325' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_83_1361633912.325' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_84_1361633912.325' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_85_1361633912.325' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_86_1361633912.325' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_87_1361633912.325' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_88_1361633912.325' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_89_1361633912.325' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_90_1361633912.325' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_91_1361633912.325' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_92_1361633912.325' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_93_1361633912.325' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_94_1361633912.325' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_95_1361633912.325' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_96_1361633912.325' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_97_1361633912.325' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_185_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 637
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I5001, _lex_param_1
    set $S5001, _lex_param_0
    nqp_radix $P5002, $I5001, $S5001, 0, 2
    set $P101, $P5002
    set $S5002, 2
    set $P5003, $P101[$S5002]
    set $N5001, $P5003
    set $S5003, _lex_param_0
    length $I5003, $S5003
    set $N5002, $I5003
    iseq $I5002, $N5001, $N5002
    if $I5002 goto unless379_end960 
.annotate 'line', 639
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless379_end960:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_65_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_188_1361633912.325' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if380_else961 
    .const 'Sub' $P5001 = 'cuid_188_1361633912.325' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if380_end962
  if380_else961:
.annotate 'line', 651
.annotate 'line', 652
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if380_end962:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1361633912.325") :anon :lex :outer("cuid_65_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 645
    .const 'Sub' $P5009 = 'cuid_187_1361633912.325' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next963:
    unless $P5005, for_done965
    shift $P5008, $P5005
  for_redo964:
    .const 'Sub' $P5007 = 'cuid_187_1361633912.325' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next963
  for_done965:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1361633912.325") :anon :lex :outer("cuid_188_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 647
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5002, $P5001
.annotate 'line', 648
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
.sub "CTXSAVE" :subid("cuid_66_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 656
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_49 
    .local pmc pkg_lookup_tmp_2 
    .local pmc fb_tmp_50 
    .local pmc pkg_lookup_tmp_3 
    .local pmc fb_tmp_51 
    .local pmc pkg_lookup_tmp_4 
    .local pmc fb_tmp_52 
    .local pmc pkg_lookup_tmp_5 
    .local pmc fb_tmp_53 
    .local pmc pkg_lookup_tmp_6 
    .local pmc fb_tmp_54 
    .local pmc pkg_lookup_tmp_7 
    .local pmc fb_tmp_55 
    .local pmc pkg_lookup_tmp_8 
    .local pmc fb_tmp_56 
    .local pmc pkg_lookup_tmp_9 
    .local pmc fb_tmp_57 
    .local pmc pkg_lookup_tmp_10 
    .local pmc fb_tmp_58 
    .local pmc pkg_lookup_tmp_11 
    .local pmc fb_tmp_59 
    .local pmc pkg_lookup_tmp_12 
    .local pmc fb_tmp_60 
    .local pmc pkg_lookup_tmp_13 
    .local pmc fb_tmp_61 
    .local pmc pkg_lookup_tmp_14 
.annotate 'line', 657
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_2, $P5002
    get_who $P5003, pkg_lookup_tmp_2
    exists $I5002, $P5003["QAST"]
    unless $I5002 goto if382_else968 
    get_who $P5005, pkg_lookup_tmp_2
    set $P5004, $P5005["QAST"]
    set $P5007, $P5004
    goto if382_end969
  if382_else968:
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5006
  if382_end969:
    get_who $P5001, $P5007
    set fb_tmp_49, $P5001
    repr_defined $I5001, fb_tmp_49
    unless $I5001 goto if381_else966 
    set $P5008, fb_tmp_49["Stmts"]
    set $P5010, $P5008
    goto if381_end967
  if381_else966:
    null $P5009
    set $P5010, $P5009
  if381_end967:
    unless_null $P5010, vivi_383970
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_383970:
.annotate 'line', 658
    nqp_get_sc_object $P5013, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_3, $P5013
    get_who $P5014, pkg_lookup_tmp_3
    exists $I5004, $P5014["QAST"]
    unless $I5004 goto if385_else973 
    get_who $P5016, pkg_lookup_tmp_3
    set $P5015, $P5016["QAST"]
    set $P5018, $P5015
    goto if385_end974
  if385_else973:
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5018, $P5017
  if385_end974:
    get_who $P5012, $P5018
    set fb_tmp_50, $P5012
    repr_defined $I5003, fb_tmp_50
    unless $I5003 goto if384_else971 
    set $P5019, fb_tmp_50["Op"]
    set $P5021, $P5019
    goto if384_end972
  if384_else971:
    null $P5020
    set $P5021, $P5020
  if384_end972:
    unless_null $P5021, vivi_386975
    nqp_get_sc_object $P5022, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5022
  vivi_386975:
.annotate 'line', 660
    nqp_get_sc_object $P5024, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_4, $P5024
    get_who $P5025, pkg_lookup_tmp_4
    exists $I5006, $P5025["QAST"]
    unless $I5006 goto if388_else978 
    get_who $P5027, pkg_lookup_tmp_4
    set $P5026, $P5027["QAST"]
    set $P5029, $P5026
    goto if388_end979
  if388_else978:
    nqp_get_sc_object $P5028, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5029, $P5028
  if388_end979:
    get_who $P5023, $P5029
    set fb_tmp_51, $P5023
    repr_defined $I5005, fb_tmp_51
    unless $I5005 goto if387_else976 
    set $P5030, fb_tmp_51["Var"]
    set $P5032, $P5030
    goto if387_end977
  if387_else976:
    null $P5031
    set $P5032, $P5031
  if387_end977:
    unless_null $P5032, vivi_389980
    nqp_get_sc_object $P5033, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5032, $P5033
  vivi_389980:
    $P5034 = $P5032."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 661
    nqp_get_sc_object $P5036, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_5, $P5036
    get_who $P5037, pkg_lookup_tmp_5
    exists $I5008, $P5037["QAST"]
    unless $I5008 goto if391_else983 
    get_who $P5039, pkg_lookup_tmp_5
    set $P5038, $P5039["QAST"]
    set $P5041, $P5038
    goto if391_end984
  if391_else983:
    nqp_get_sc_object $P5040, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5041, $P5040
  if391_end984:
    get_who $P5035, $P5041
    set fb_tmp_52, $P5035
    repr_defined $I5007, fb_tmp_52
    unless $I5007 goto if390_else981 
    set $P5042, fb_tmp_52["Var"]
    set $P5044, $P5042
    goto if390_end982
  if390_else981:
    null $P5043
    set $P5044, $P5043
  if390_end982:
    unless_null $P5044, vivi_392985
    nqp_get_sc_object $P5045, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5044, $P5045
  vivi_392985:
    $P5046 = $P5044."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5047 = $P5021."new"($P5034, $P5046, "bind" :named("op"))
.annotate 'line', 663
    nqp_get_sc_object $P5049, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_6, $P5049
    get_who $P5050, pkg_lookup_tmp_6
    exists $I5010, $P5050["QAST"]
    unless $I5010 goto if394_else988 
    get_who $P5052, pkg_lookup_tmp_6
    set $P5051, $P5052["QAST"]
    set $P5054, $P5051
    goto if394_end989
  if394_else988:
    nqp_get_sc_object $P5053, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5054, $P5053
  if394_end989:
    get_who $P5048, $P5054
    set fb_tmp_53, $P5048
    repr_defined $I5009, fb_tmp_53
    unless $I5009 goto if393_else986 
    set $P5055, fb_tmp_53["Op"]
    set $P5057, $P5055
    goto if393_end987
  if393_else986:
    null $P5056
    set $P5057, $P5056
  if393_end987:
    unless_null $P5057, vivi_395990
    nqp_get_sc_object $P5058, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5057, $P5058
  vivi_395990:
.annotate 'line', 665
    nqp_get_sc_object $P5060, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_7, $P5060
    get_who $P5061, pkg_lookup_tmp_7
    exists $I5012, $P5061["QAST"]
    unless $I5012 goto if397_else993 
    get_who $P5063, pkg_lookup_tmp_7
    set $P5062, $P5063["QAST"]
    set $P5065, $P5062
    goto if397_end994
  if397_else993:
    nqp_get_sc_object $P5064, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5065, $P5064
  if397_end994:
    get_who $P5059, $P5065
    set fb_tmp_54, $P5059
    repr_defined $I5011, fb_tmp_54
    unless $I5011 goto if396_else991 
    set $P5066, fb_tmp_54["Op"]
    set $P5068, $P5066
    goto if396_end992
  if396_else991:
    null $P5067
    set $P5068, $P5067
  if396_end992:
    unless_null $P5068, vivi_398995
    nqp_get_sc_object $P5069, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5068, $P5069
  vivi_398995:
.annotate 'line', 667
    nqp_get_sc_object $P5071, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_8, $P5071
    get_who $P5072, pkg_lookup_tmp_8
    exists $I5014, $P5072["QAST"]
    unless $I5014 goto if400_else998 
    get_who $P5074, pkg_lookup_tmp_8
    set $P5073, $P5074["QAST"]
    set $P5076, $P5073
    goto if400_end999
  if400_else998:
    nqp_get_sc_object $P5075, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5076, $P5075
  if400_end999:
    get_who $P5070, $P5076
    set fb_tmp_55, $P5070
    repr_defined $I5013, fb_tmp_55
    unless $I5013 goto if399_else996 
    set $P5077, fb_tmp_55["Var"]
    set $P5079, $P5077
    goto if399_end997
  if399_else996:
    null $P5078
    set $P5079, $P5078
  if399_end997:
    unless_null $P5079, vivi_4011000
    nqp_get_sc_object $P5080, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5079, $P5080
  vivi_4011000:
    $P5081 = $P5079."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5082 = $P5068."new"($P5081, "isnull" :named("op"))
.annotate 'line', 669
    nqp_get_sc_object $P5084, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_9, $P5084
    get_who $P5085, pkg_lookup_tmp_9
    exists $I5016, $P5085["QAST"]
    unless $I5016 goto if403_else1003 
    get_who $P5087, pkg_lookup_tmp_9
    set $P5086, $P5087["QAST"]
    set $P5089, $P5086
    goto if403_end1004
  if403_else1003:
    nqp_get_sc_object $P5088, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5089, $P5088
  if403_end1004:
    get_who $P5083, $P5089
    set fb_tmp_56, $P5083
    repr_defined $I5015, fb_tmp_56
    unless $I5015 goto if402_else1001 
    set $P5090, fb_tmp_56["Op"]
    set $P5092, $P5090
    goto if402_end1002
  if402_else1001:
    null $P5091
    set $P5092, $P5091
  if402_end1002:
    unless_null $P5092, vivi_4041005
    nqp_get_sc_object $P5093, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5092, $P5093
  vivi_4041005:
.annotate 'line', 671
    nqp_get_sc_object $P5095, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_10, $P5095
    get_who $P5096, pkg_lookup_tmp_10
    exists $I5018, $P5096["QAST"]
    unless $I5018 goto if406_else1008 
    get_who $P5098, pkg_lookup_tmp_10
    set $P5097, $P5098["QAST"]
    set $P5100, $P5097
    goto if406_end1009
  if406_else1008:
    nqp_get_sc_object $P5099, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5100, $P5099
  if406_end1009:
    get_who $P5094, $P5100
    set fb_tmp_57, $P5094
    repr_defined $I5017, fb_tmp_57
    unless $I5017 goto if405_else1006 
    set $P5101, fb_tmp_57["Op"]
    set $P5103, $P5101
    goto if405_end1007
  if405_else1006:
    null $P5102
    set $P5103, $P5102
  if405_end1007:
    unless_null $P5103, vivi_4071010
    nqp_get_sc_object $P5104, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5103, $P5104
  vivi_4071010:
.annotate 'line', 673
    nqp_get_sc_object $P5106, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_11, $P5106
    get_who $P5107, pkg_lookup_tmp_11
    exists $I5020, $P5107["QAST"]
    unless $I5020 goto if409_else1013 
    get_who $P5109, pkg_lookup_tmp_11
    set $P5108, $P5109["QAST"]
    set $P5111, $P5108
    goto if409_end1014
  if409_else1013:
    nqp_get_sc_object $P5110, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5111, $P5110
  if409_end1014:
    get_who $P5105, $P5111
    set fb_tmp_58, $P5105
    repr_defined $I5019, fb_tmp_58
    unless $I5019 goto if408_else1011 
    set $P5112, fb_tmp_58["Var"]
    set $P5114, $P5112
    goto if408_end1012
  if408_else1011:
    null $P5113
    set $P5114, $P5113
  if408_end1012:
    unless_null $P5114, vivi_4101015
    nqp_get_sc_object $P5115, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5114, $P5115
  vivi_4101015:
    $P5116 = $P5114."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 674
    nqp_get_sc_object $P5118, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_12, $P5118
    get_who $P5119, pkg_lookup_tmp_12
    exists $I5022, $P5119["QAST"]
    unless $I5022 goto if412_else1018 
    get_who $P5121, pkg_lookup_tmp_12
    set $P5120, $P5121["QAST"]
    set $P5123, $P5120
    goto if412_end1019
  if412_else1018:
    nqp_get_sc_object $P5122, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5123, $P5122
  if412_end1019:
    get_who $P5117, $P5123
    set fb_tmp_59, $P5117
    repr_defined $I5021, fb_tmp_59
    unless $I5021 goto if411_else1016 
    set $P5124, fb_tmp_59["SVal"]
    set $P5126, $P5124
    goto if411_end1017
  if411_else1016:
    null $P5125
    set $P5126, $P5125
  if411_end1017:
    unless_null $P5126, vivi_4131020
    nqp_get_sc_object $P5127, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5126, $P5127
  vivi_4131020:
    $P5128 = $P5126."new"("ctxsave" :named("value"))
    $P5129 = $P5103."new"($P5116, $P5128, "can" :named("op"))
.annotate 'line', 676
    nqp_get_sc_object $P5131, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_13, $P5131
    get_who $P5132, pkg_lookup_tmp_13
    exists $I5024, $P5132["QAST"]
    unless $I5024 goto if415_else1023 
    get_who $P5134, pkg_lookup_tmp_13
    set $P5133, $P5134["QAST"]
    set $P5136, $P5133
    goto if415_end1024
  if415_else1023:
    nqp_get_sc_object $P5135, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5136, $P5135
  if415_end1024:
    get_who $P5130, $P5136
    set fb_tmp_60, $P5130
    repr_defined $I5023, fb_tmp_60
    unless $I5023 goto if414_else1021 
    set $P5137, fb_tmp_60["Op"]
    set $P5139, $P5137
    goto if414_end1022
  if414_else1021:
    null $P5138
    set $P5139, $P5138
  if414_end1022:
    unless_null $P5139, vivi_4161025
    nqp_get_sc_object $P5140, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5139, $P5140
  vivi_4161025:
.annotate 'line', 678
    nqp_get_sc_object $P5142, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_14, $P5142
    get_who $P5143, pkg_lookup_tmp_14
    exists $I5026, $P5143["QAST"]
    unless $I5026 goto if418_else1028 
    get_who $P5145, pkg_lookup_tmp_14
    set $P5144, $P5145["QAST"]
    set $P5147, $P5144
    goto if418_end1029
  if418_else1028:
    nqp_get_sc_object $P5146, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5147, $P5146
  if418_end1029:
    get_who $P5141, $P5147
    set fb_tmp_61, $P5141
    repr_defined $I5025, fb_tmp_61
    unless $I5025 goto if417_else1026 
    set $P5148, fb_tmp_61["Var"]
    set $P5150, $P5148
    goto if417_end1027
  if417_else1026:
    null $P5149
    set $P5150, $P5149
  if417_end1027:
    unless_null $P5150, vivi_4191030
    nqp_get_sc_object $P5151, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5150, $P5151
  vivi_4191030:
    $P5152 = $P5150."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5153 = $P5139."new"($P5152, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5154 = $P5092."new"($P5129, $P5153, "if" :named("op"))
    $P5155 = $P5057."new"($P5082, $P5154, "unless" :named("op"))
    $P5156 = $P5010."new"($P5047, $P5155)
    .return ($P5156) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_67_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_191_1361633912.325' 
    capture_lex $P5024 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_62 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc pkg_viv_tmp_13 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback1035
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_13, $P5003
    set fb_tmp_64, pkg_viv_tmp_13
    repr_defined $I5003, fb_tmp_64
    unless $I5003 goto if422_else1036 
    set $P5005, fb_tmp_64["%COMPILING"]
    set $P5007, $P5005
    goto if422_end1037
  if422_else1036:
    null $P5006
    set $P5007, $P5006
  if422_end1037:
    unless_null $P5007, vivi_4231038
    new $P5008, 'Hash'
    set pkg_viv_tmp_13["%COMPILING"], $P5008
    set $P5007, $P5008
  vivi_4231038:
    unless_null $P5007, vivi_4241039
    die "Contextual %*COMPILING not found"
    box $P5009, "Contextual %*COMPILING not found"
    set $P5007, $P5009
  vivi_4241039:
    set $P5002, $P5007
  fallback1035:
    set fb_tmp_63, $P5002
    repr_defined $I5002, fb_tmp_63
    unless $I5002 goto if421_else1033 
    set $P5010, fb_tmp_63["%?OPTIONS"]
    set $P5012, $P5010
    goto if421_end1034
  if421_else1033:
    null $P5011
    set $P5012, $P5011
  if421_end1034:
    unless_null $P5012, vivi_4251040
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_4251040:
    set fb_tmp_62, $P5012
    repr_defined $I5001, fb_tmp_62
    unless $I5001 goto if420_else1031 
    set $P5014, fb_tmp_62["outer_ctx"]
    set $P5016, $P5014
    goto if420_end1032
  if420_else1031:
    null $P5015
    set $P5016, $P5015
  if420_end1032:
    unless_null $P5016, vivi_4261041
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_4261041:
    set $P101, $P5016
    defined $I5004, $P101
    box $P5023, $I5004
    set $P5022, $P5023
    unless $I5004 goto if427_end1043 
.annotate 'line', 684
  until428_test1044:
    isnull $I5005, $P101
    box $P5021, $I5005
    set $P5020, $P5021
    if $I5005 goto until428_done1048 
  until428_redo1046:
    .const 'Sub' $P5018 = 'cuid_191_1361633912.325' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
    goto until428_test1044 
  until428_done1048:
    set $P5022, $P5020
  if427_end1043:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1361633912.325") :anon :lex :outer("cuid_67_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 685
    .const 'Sub' $P5011 = 'cuid_190_1361633912.325' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless429_end1050 
.annotate 'line', 687
    set $P5004, $P101
    iter $P5006, $P101
  for_next1061:
    unless $P5006, for_done1063
    shift $P5008, $P5006
  for_redo1062:
    .const 'Sub' $P5007 = 'cuid_190_1361633912.325' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next1061
  for_done1063:
  unless429_end1050:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1361633912.325") :anon :lex :outer("cuid_191_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 688
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_189_1361633912.325' 
    capture_lex $P5006 
    .lex "$key", $S101 
    .lex "$_", _lex_param_0 
    set $S101, ""
    set $S5001, _lex_param_0
    set $S101, $S5001
.annotate 'line', 690
    find_lex $P5001, "$block"
    $P5002 = $P5001."symbol"($S101)
    set $P5005, $P5002
    if $P5002 goto unless430_end1052 
    .const 'Sub' $P5003 = 'cuid_189_1361633912.325' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless430_end1052:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1361633912.325") :anon :lex :outer("cuid_190_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 690
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if431_else1053 
.annotate 'line', 692
.annotate 'line', 693
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if431_end1054
  if431_else1053:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if432_else1055 
.annotate 'line', 695
.annotate 'line', 696
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if432_end1056
  if432_else1055:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if433_else1057 
.annotate 'line', 698
.annotate 'line', 699
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if433_end1058
  if433_else1057:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if434_end1060 
.annotate 'line', 701
.annotate 'line', 702
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if434_end1060:
    set $P5022, $P5020
  if433_end1058:
    set $P5023, $P5022
  if432_end1056:
    set $P5024, $P5023
  if431_end1054:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_68_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 712
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_192_1361633912.325' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_193_1361633912.325' 
    capture_lex $P5028 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_75 
    if haz_param_5, default1123
    nqp_get_sc_object $P5027, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5027
  default1123:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1064
    .lex "RETURN", $P102
    if _lex_param_2 goto unless435_end1067 
.annotate 'line', 713
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless435_end1067:
.annotate 'line', 714
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor1068
    unless_null _lex_param_1, fallback1071
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5006
  fallback1071:
    set fb_tmp_65, _lex_param_1
    repr_defined $I5002, fb_tmp_65
    unless $I5002 goto if436_else1069 
    set $P5007, fb_tmp_65["OPER"]
    set $P5009, $P5007
    goto if436_end1070
  if436_else1069:
    null $P5008
    set $P5009, $P5008
  if436_end1070:
    unless_null $P5009, vivi_4371072
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_4371072:
    $P5011 = $P5009."ast"()
    set $P5004, $P5011
  defor1068:
    set $P101, $P5004
    if $P101 goto unless438_end1074 
    .const 'Sub' $P5012 = 'cuid_192_1361633912.325' 
    capture_lex $P5012
    $P5013 = $P5012()
  unless438_end1074:
    set $S5001, _lex_param_2
    iseq $I5003, $S5001, "POSTFIX"
    unless $I5003 goto if461_else1113 
.annotate 'line', 727
.annotate 'line', 728
    set fb_tmp_75, _lex_param_1
    repr_defined $I5004, fb_tmp_75
    unless $I5004 goto if462_else1115 
    set $P5014, fb_tmp_75[0]
    set $P5016, $P5014
    goto if462_end1116
  if462_else1115:
    null $P5015
    set $P5016, $P5015
  if462_end1116:
    unless_null $P5016, vivi_4631117
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_4631117:
    $P5018 = $P5016."ast"()
    $P5019 = $P101."unshift"($P5018)
    goto if461_end1114
  if461_else1113:
.annotate 'line', 730
.annotate 'line', 731
    $P5023 = _lex_param_1."list"()
    set $P5020, $P5023
    iter $P5022, $P5023
  for_next1120:
    unless $P5022, for_done1122
    shift $P5025, $P5022
  for_redo1121:
    .const 'Sub' $P5024 = 'cuid_193_1361633912.325' 
    capture_lex $P5024
    $P5020 = $P5024($P5025)
    goto for_next1120
  for_done1122:
  if461_end1114:
.annotate 'line', 733
    $P5026 = _lex_param_1."!make"($P101)
    goto lexotic_1065
  lexotic_1064:
    .get_results ($P5026)
  lexotic_1065:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1361633912.325") :anon :lex :outer("cuid_68_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 715
    .lex "$name", $P101 
    .local pmc fb_tmp_66 
    .local pmc pkg_lookup_tmp_15 
    .local pmc fb_tmp_67 
    .local pmc fb_tmp_68 
    .local pmc fb_tmp_69 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
    .local pmc fb_tmp_72 
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_74 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 716
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_15, $P5003
    get_who $P5004, pkg_lookup_tmp_15
    exists $I5002, $P5004["QAST"]
    unless $I5002 goto if440_else1077 
    get_who $P5006, pkg_lookup_tmp_15
    set $P5005, $P5006["QAST"]
    set $P5008, $P5005
    goto if440_end1078
  if440_else1077:
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5007
  if440_end1078:
    get_who $P5002, $P5008
    set fb_tmp_66, $P5002
    repr_defined $I5001, fb_tmp_66
    unless $I5001 goto if439_else1075 
    set $P5009, fb_tmp_66["Op"]
    set $P5011, $P5009
    goto if439_end1076
  if439_else1075:
    null $P5010
    set $P5011, $P5010
  if439_end1076:
    unless_null $P5011, vivi_4411079
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_4411079:
    find_lex $P5013, "$/"
    $P5014 = $P5011."new"($P5013 :named("node"))
    store_lex "$past", $P5014
    find_lex $P5015, "$/"
    unless_null $P5015, fallback1088
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  fallback1088:
    set fb_tmp_69, $P5015
    repr_defined $I5005, fb_tmp_69
    unless $I5005 goto if445_else1086 
    set $P5017, fb_tmp_69["OPER"]
    set $P5019, $P5017
    goto if445_end1087
  if445_else1086:
    null $P5018
    set $P5019, $P5018
  if445_end1087:
    unless_null $P5019, vivi_4461089
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_4461089:
    set fb_tmp_68, $P5019
    repr_defined $I5004, fb_tmp_68
    unless $I5004 goto if444_else1084 
    set $P5021, fb_tmp_68["O"]
    set $P5023, $P5021
    goto if444_end1085
  if444_else1084:
    null $P5022
    set $P5023, $P5022
  if444_end1085:
    unless_null $P5023, vivi_4471090
    nqp_get_sc_object $P5024, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5023, $P5024
  vivi_4471090:
    set fb_tmp_67, $P5023
    repr_defined $I5003, fb_tmp_67
    unless $I5003 goto if443_else1082 
    set $P5025, fb_tmp_67["op"]
    set $P5027, $P5025
    goto if443_end1083
  if443_else1082:
    null $P5026
    set $P5027, $P5026
  if443_end1083:
    unless_null $P5027, vivi_4481091
    nqp_get_sc_object $P5028, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5027, $P5028
  vivi_4481091:
    unless $P5027 goto if442_end1081 
.annotate 'line', 717
.annotate 'line', 718
    find_lex $P5029, "$past"
    find_lex $P5030, "$/"
    unless_null $P5030, fallback1098
    nqp_get_sc_object $P5031, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5030, $P5031
  fallback1098:
    set fb_tmp_72, $P5030
    repr_defined $I5008, fb_tmp_72
    unless $I5008 goto if451_else1096 
    set $P5032, fb_tmp_72["OPER"]
    set $P5034, $P5032
    goto if451_end1097
  if451_else1096:
    null $P5033
    set $P5034, $P5033
  if451_end1097:
    unless_null $P5034, vivi_4521099
    nqp_get_sc_object $P5035, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5034, $P5035
  vivi_4521099:
    set fb_tmp_71, $P5034
    repr_defined $I5007, fb_tmp_71
    unless $I5007 goto if450_else1094 
    set $P5036, fb_tmp_71["O"]
    set $P5038, $P5036
    goto if450_end1095
  if450_else1094:
    null $P5037
    set $P5038, $P5037
  if450_end1095:
    unless_null $P5038, vivi_4531100
    nqp_get_sc_object $P5039, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5038, $P5039
  vivi_4531100:
    set fb_tmp_70, $P5038
    repr_defined $I5006, fb_tmp_70
    unless $I5006 goto if449_else1092 
    set $P5040, fb_tmp_70["op"]
    set $P5042, $P5040
    goto if449_end1093
  if449_else1092:
    null $P5041
    set $P5042, $P5041
  if449_end1093:
    unless_null $P5042, vivi_4541101
    nqp_get_sc_object $P5043, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5042, $P5043
  vivi_4541101:
    set $S5001, $P5042
    $P5044 = $P5029."op"($S5001)
  if442_end1081:
    find_lex $P5045, "$key"
    set $S5002, $P5045
    iseq $I5009, $S5002, "LIST"
    unless $I5009 goto if455_end1103 
.annotate 'line', 720
    box $P5046, "infix"
    store_lex "$key", $P5046
  if455_end1103:
    find_lex $P5047, "$key"
    set $S5007, $P5047
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5048, "$/"
    unless_null $P5048, fallback1108
    nqp_get_sc_object $P5049, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5048, $P5049
  fallback1108:
    set fb_tmp_74, $P5048
    repr_defined $I5011, fb_tmp_74
    unless $I5011 goto if457_else1106 
    set $P5050, fb_tmp_74["OPER"]
    set $P5052, $P5050
    goto if457_end1107
  if457_else1106:
    null $P5051
    set $P5052, $P5051
  if457_end1107:
    unless_null $P5052, vivi_4581109
    nqp_get_sc_object $P5053, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5052, $P5053
  vivi_4581109:
    set fb_tmp_73, $P5052
    repr_defined $I5010, fb_tmp_73
    unless $I5010 goto if456_else1104 
    set $P5054, fb_tmp_73["sym"]
    set $P5056, $P5054
    goto if456_end1105
  if456_else1104:
    null $P5055
    set $P5056, $P5055
  if456_end1105:
    unless_null $P5056, vivi_4591110
    nqp_get_sc_object $P5057, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5056, $P5057
  vivi_4591110:
    set $S5008, $P5056
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5058, $S5003
    set $P101, $P5058
.annotate 'line', 722
    find_lex $P5059, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5059."name"($S5009)
.annotate 'line', 723
    find_lex $P5060, "$past"
    $P5061 = $P5060."op"()
    set $P5064, $P5061
    if $P5061 goto unless460_end1112 
.annotate 'line', 724
    find_lex $P5062, "$past"
    $P5063 = $P5062."op"("call")
    set $P5064, $P5063
  unless460_end1112:
    .return ($P5064) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1361633912.325") :anon :lex :outer("cuid_68_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 731
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if464_end1119 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if464_end1119:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_69_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 736
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_76 
    unless_null _lex_param_1, fallback1126
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1126:
    set fb_tmp_76, _lex_param_1
    repr_defined $I5001, fb_tmp_76
    unless $I5001 goto if465_else1124 
    set $P5002, fb_tmp_76["circumfix"]
    set $P5004, $P5002
    goto if465_end1125
  if465_else1124:
    null $P5003
    set $P5004, $P5003
  if465_end1125:
    unless_null $P5004, vivi_4661127
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_4661127:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_70_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 738
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_77 
    unless_null _lex_param_1, fallback1130
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1130:
    set fb_tmp_77, _lex_param_1
    repr_defined $I5001, fb_tmp_77
    unless $I5001 goto if467_else1128 
    set $P5002, fb_tmp_77["term"]
    set $P5004, $P5002
    goto if467_end1129
  if467_else1128:
    null $P5003
    set $P5004, $P5003
  if467_end1129:
    unless_null $P5004, vivi_4681131
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_4681131:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_71_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 739
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_72_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 740
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_78 
    unless_null _lex_param_1, fallback1134
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1134:
    set fb_tmp_78, _lex_param_1
    repr_defined $I5001, fb_tmp_78
    unless $I5001 goto if469_else1132 
    set $P5002, fb_tmp_78["term"]
    set $P5004, $P5002
    goto if469_end1133
  if469_else1132:
    null $P5003
    set $P5004, $P5003
  if469_end1133:
    unless_null $P5004, vivi_4701135
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_4701135:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_73_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 742
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_79 
    unless_null _lex_param_1, fallback1138
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1138:
    set fb_tmp_79, _lex_param_1
    repr_defined $I5001, fb_tmp_79
    unless $I5001 goto if471_else1136 
    set $P5002, fb_tmp_79["VALUE"]
    set $P5004, $P5002
    goto if471_end1137
  if471_else1136:
    null $P5003
    set $P5004, $P5003
  if471_end1137:
    unless_null $P5004, vivi_4721139
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_4721139:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_74_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 744
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
.sub "decint" :subid("cuid_75_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 746
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = "&string_to_int"(_lex_param_1, 10)
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_76_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 747
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = "&string_to_int"(_lex_param_1, 16)
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_77_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 748
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = "&string_to_int"(_lex_param_1, 8)
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_78_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = "&string_to_int"(_lex_param_1, 2)
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_79_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 751
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5037 = 'cuid_195_1361633912.325' 
    capture_lex $P5037 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_80 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
    .local pmc pkg_viv_tmp_14 
    .local pmc fb_tmp_83 
    .local pmc pkg_lookup_tmp_16 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 752
    unless_null _lex_param_1, fallback1142
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5002
  fallback1142:
    set fb_tmp_80, _lex_param_1
    repr_defined $I5001, fb_tmp_80
    unless $I5001 goto if473_else1140 
    set $P5003, fb_tmp_80["quote_delimited"]
    set $P5005, $P5003
    goto if473_end1141
  if473_else1140:
    null $P5004
    set $P5005, $P5004
  if473_end1141:
    unless_null $P5005, vivi_4741143
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_4741143:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback1148
    nqp_get_sc_object $P5010, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5009, $P5010
    set pkg_viv_tmp_14, $P5009
    set fb_tmp_82, pkg_viv_tmp_14
    repr_defined $I5003, fb_tmp_82
    unless $I5003 goto if477_else1149 
    set $P5011, fb_tmp_82["%QUOTEMOD"]
    set $P5013, $P5011
    goto if477_end1150
  if477_else1149:
    null $P5012
    set $P5013, $P5012
  if477_end1150:
    unless_null $P5013, vivi_4781151
    new $P5014, 'Hash'
    set pkg_viv_tmp_14["%QUOTEMOD"], $P5014
    set $P5013, $P5014
  vivi_4781151:
    unless_null $P5013, vivi_4791152
    die "Contextual %*QUOTEMOD not found"
    box $P5015, "Contextual %*QUOTEMOD not found"
    set $P5013, $P5015
  vivi_4791152:
    set $P5008, $P5013
  fallback1148:
    set fb_tmp_81, $P5008
    repr_defined $I5002, fb_tmp_81
    unless $I5002 goto if476_else1146 
    set $P5016, fb_tmp_81["w"]
    set $P5018, $P5016
    goto if476_end1147
  if476_else1146:
    null $P5017
    set $P5018, $P5017
  if476_end1147:
    unless_null $P5018, vivi_4801153
    nqp_get_sc_object $P5019, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5018, $P5019
  vivi_4801153:
    unless $P5018 goto if475_end1145 
.annotate 'line', 753
    nqp_get_sc_object $P5021, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_16, $P5021
    get_who $P5022, pkg_lookup_tmp_16
    exists $I5006, $P5022["QAST"]
    unless $I5006 goto if483_else1158 
    get_who $P5024, pkg_lookup_tmp_16
    set $P5023, $P5024["QAST"]
    set $P5026, $P5023
    goto if483_end1159
  if483_else1158:
    nqp_get_sc_object $P5025, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5026, $P5025
  if483_end1159:
    get_who $P5020, $P5026
    set fb_tmp_83, $P5020
    repr_defined $I5005, fb_tmp_83
    unless $I5005 goto if482_else1156 
    set $P5027, fb_tmp_83["SVal"]
    set $P5029, $P5027
    goto if482_end1157
  if482_else1156:
    null $P5028
    set $P5029, $P5028
  if482_end1157:
    unless_null $P5029, vivi_4841160
    nqp_get_sc_object $P5030, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5029, $P5030
  vivi_4841160:
    type_check $I5004, $P101, $P5029
    unless $I5004 goto if481_else1154 
    .const 'Sub' $P5031 = 'cuid_195_1361633912.325' 
    capture_lex $P5031
    $P5032 = $P5031()
    set $P5035, $P5032
    goto if481_end1155
  if481_else1154:
.annotate 'line', 764
.annotate 'line', 765
    $P5033 = _lex_param_1."CURSOR"()
    $P5034 = $P5033."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5035, $P5034
  if481_end1155:
  if475_end1145:
.annotate 'line', 768
    $P5036 = _lex_param_1."!make"($P101)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1361633912.325") :anon :lex :outer("cuid_79_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 754
    .const 'Sub' $P5057 = 'cuid_194_1361633912.325' 
    capture_lex $P5057 
    .lex "@words", $P101 
    .local pmc fb_tmp_84 
    .local pmc pkg_lookup_tmp_18 
    .local pmc pkg_lookup_tmp_17 
    .local pmc fb_tmp_85 
    .local pmc pkg_lookup_tmp_19 
    .local pmc fb_tmp_87 
    .local pmc pkg_lookup_tmp_21 
    .local pmc fb_tmp_88 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 755
    find_lex $P5018, "$/"
    find_lex $P5019, "$past"
    $P5020 = $P5019."value"()
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_17, $P5003
    get_who $P5004, pkg_lookup_tmp_17
    exists $I5002, $P5004["HLL"]
    unless $I5002 goto if486_else1163 
    get_who $P5006, pkg_lookup_tmp_17
    set $P5005, $P5006["HLL"]
    set $P5008, $P5005
    goto if486_end1164
  if486_else1163:
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5007
  if486_end1164:
    set pkg_lookup_tmp_18, $P5008
    get_who $P5009, pkg_lookup_tmp_18
    exists $I5003, $P5009["Grammar"]
    unless $I5003 goto if487_else1165 
    get_who $P5011, pkg_lookup_tmp_18
    set $P5010, $P5011["Grammar"]
    set $P5013, $P5010
    goto if487_end1166
  if487_else1165:
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5013, $P5012
  if487_end1166:
    get_who $P5002, $P5013
    set fb_tmp_84, $P5002
    repr_defined $I5001, fb_tmp_84
    unless $I5001 goto if485_else1161 
    set $P5014, fb_tmp_84["split_words"]
    set $P5016, $P5014
    goto if485_end1162
  if485_else1161:
    null $P5015
    set $P5016, $P5015
  if485_end1162:
    unless_null $P5016, vivi_4881167
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_4881167:
    $P5021 = $P5016($P5018, $P5020)
    set $P101, $P5021
    set $N5001, $P101
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    unless $I5004 goto if489_else1168 
.annotate 'line', 756
.annotate 'line', 757
    nqp_get_sc_object $P5023, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_19, $P5023
    get_who $P5024, pkg_lookup_tmp_19
    exists $I5006, $P5024["QAST"]
    unless $I5006 goto if491_else1172 
    get_who $P5026, pkg_lookup_tmp_19
    set $P5025, $P5026["QAST"]
    set $P5028, $P5025
    goto if491_end1173
  if491_else1172:
    nqp_get_sc_object $P5027, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5028, $P5027
  if491_end1173:
    get_who $P5022, $P5028
    set fb_tmp_85, $P5022
    repr_defined $I5005, fb_tmp_85
    unless $I5005 goto if490_else1170 
    set $P5029, fb_tmp_85["Op"]
    set $P5031, $P5029
    goto if490_end1171
  if490_else1170:
    null $P5030
    set $P5031, $P5030
  if490_end1171:
    unless_null $P5031, vivi_4921174
    nqp_get_sc_object $P5032, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5031, $P5032
  vivi_4921174:
    find_lex $P5033, "$/"
    $P5034 = $P5031."new"("list" :named("op"), $P5033 :named("node"))
    store_lex "$past", $P5034
    set $P5035, $P101
    iter $P5037, $P101
  for_next1180:
    unless $P5037, for_done1182
    shift $P5039, $P5037
  for_redo1181:
    .const 'Sub' $P5038 = 'cuid_194_1361633912.325' 
    capture_lex $P5038
    $P5035 = $P5038($P5039)
    goto for_next1180
  for_done1182:
    set $P5056, $P5035
    goto if489_end1169
  if489_else1168:
.annotate 'line', 760
.annotate 'line', 761
    nqp_get_sc_object $P5041, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_21, $P5041
    get_who $P5042, pkg_lookup_tmp_21
    exists $I5008, $P5042["QAST"]
    unless $I5008 goto if497_else1185 
    get_who $P5044, pkg_lookup_tmp_21
    set $P5043, $P5044["QAST"]
    set $P5046, $P5043
    goto if497_end1186
  if497_else1185:
    nqp_get_sc_object $P5045, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5046, $P5045
  if497_end1186:
    get_who $P5040, $P5046
    set fb_tmp_87, $P5040
    repr_defined $I5007, fb_tmp_87
    unless $I5007 goto if496_else1183 
    set $P5047, fb_tmp_87["SVal"]
    set $P5049, $P5047
    goto if496_end1184
  if496_else1183:
    null $P5048
    set $P5049, $P5048
  if496_end1184:
    unless_null $P5049, vivi_4981187
    nqp_get_sc_object $P5050, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5049, $P5050
  vivi_4981187:
    set fb_tmp_88, $P101
    repr_defined $I5009, fb_tmp_88
    unless $I5009 goto if499_else1188 
    set $P5051, fb_tmp_88[0]
    set $P5053, $P5051
    goto if499_end1189
  if499_else1188:
    null $P5052
    set $P5053, $P5052
  if499_end1189:
    unless_null $P5053, vivi_5001190
    nqp_get_sc_object $P5054, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5053, $P5054
  vivi_5001190:
    set $S5001, $P5053
    $P5055 = $P5049."new"($S5001 :named("value"))
    store_lex "$past", $P5055
    set $P5056, $P5055
  if489_end1169:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1361633912.325") :anon :lex :outer("cuid_195_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 758
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_86 
    .local pmc pkg_lookup_tmp_20 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_20, $P5003
    get_who $P5004, pkg_lookup_tmp_20
    exists $I5002, $P5004["QAST"]
    unless $I5002 goto if494_else1177 
    get_who $P5006, pkg_lookup_tmp_20
    set $P5005, $P5006["QAST"]
    set $P5008, $P5005
    goto if494_end1178
  if494_else1177:
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5007
  if494_end1178:
    get_who $P5002, $P5008
    set fb_tmp_86, $P5002
    repr_defined $I5001, fb_tmp_86
    unless $I5001 goto if493_else1175 
    set $P5009, fb_tmp_86["SVal"]
    set $P5011, $P5009
    goto if493_end1176
  if493_else1175:
    null $P5010
    set $P5011, $P5010
  if493_end1176:
    unless_null $P5011, vivi_4951179
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_4951179:
    $P5013 = $P5011."new"(_lex_param_0 :named("value"))
    $P5014 = $P5001."push"($P5013)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_80_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 771
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5057 = 'cuid_196_1361633912.325' 
    capture_lex $P5057 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_89 
    .local pmc fb_tmp_95 
    .local pmc pkg_lookup_tmp_27 
    .local pmc fb_tmp_96 
    .local pmc pkg_lookup_tmp_28 
    .local pmc fb_tmp_97 
    .local pmc pkg_lookup_tmp_29 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback1193
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5008
  fallback1193:
    set fb_tmp_89, _lex_param_1
    repr_defined $I5001, fb_tmp_89
    unless $I5001 goto if501_else1191 
    set $P5009, fb_tmp_89["quote_atom"]
    set $P5011, $P5009
    goto if501_end1192
  if501_else1191:
    null $P5010
    set $P5011, $P5010
  if501_end1192:
    unless_null $P5011, vivi_5021194
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_5021194:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next1228:
    unless $P5007, for_done1230
    shift $P5014, $P5007
  for_redo1229:
    .const 'Sub' $P5013 = 'cuid_196_1361633912.325' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next1228
  for_done1230:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if522_end1232 
.annotate 'line', 792
    nqp_get_sc_object $P5016, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_27, $P5016
    get_who $P5017, pkg_lookup_tmp_27
    exists $I5004, $P5017["QAST"]
    unless $I5004 goto if524_else1235 
    get_who $P5019, pkg_lookup_tmp_27
    set $P5018, $P5019["QAST"]
    set $P5021, $P5018
    goto if524_end1236
  if524_else1235:
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5020
  if524_end1236:
    get_who $P5015, $P5021
    set fb_tmp_95, $P5015
    repr_defined $I5003, fb_tmp_95
    unless $I5003 goto if523_else1233 
    set $P5022, fb_tmp_95["SVal"]
    set $P5024, $P5022
    goto if523_end1234
  if523_else1233:
    null $P5023
    set $P5024, $P5023
  if523_end1234:
    unless_null $P5024, vivi_5251237
    nqp_get_sc_object $P5025, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5024, $P5025
  vivi_5251237:
    $P5026 = $P5024."new"($P102 :named("value"))
    $P5027 = $P101."push"($P5026)
  if522_end1232:
    unless $P101 goto if526_else1238 
.annotate 'line', 793
    $P5028 = $P101."shift"()
    set $P5041, $P5028
    goto if526_end1239
  if526_else1238:
    nqp_get_sc_object $P5030, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_28, $P5030
    get_who $P5031, pkg_lookup_tmp_28
    exists $I5006, $P5031["QAST"]
    unless $I5006 goto if528_else1242 
    get_who $P5033, pkg_lookup_tmp_28
    set $P5032, $P5033["QAST"]
    set $P5035, $P5032
    goto if528_end1243
  if528_else1242:
    nqp_get_sc_object $P5034, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5035, $P5034
  if528_end1243:
    get_who $P5029, $P5035
    set fb_tmp_96, $P5029
    repr_defined $I5005, fb_tmp_96
    unless $I5005 goto if527_else1240 
    set $P5036, fb_tmp_96["SVal"]
    set $P5038, $P5036
    goto if527_end1241
  if527_else1240:
    null $P5037
    set $P5038, $P5037
  if527_end1241:
    unless_null $P5038, vivi_5291244
    nqp_get_sc_object $P5039, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5038, $P5039
  vivi_5291244:
    $P5040 = $P5038."new"("" :named("value"))
    set $P5041, $P5040
  if526_end1239:
    set $P103, $P5041
  while530_test1245:
    set $P5055, $P101
    unless $P101 goto while530_done1249 
  while530_redo1247:
.annotate 'line', 794
.annotate 'line', 795
    nqp_get_sc_object $P5043, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_29, $P5043
    get_who $P5044, pkg_lookup_tmp_29
    exists $I5008, $P5044["QAST"]
    unless $I5008 goto if532_else1252 
    get_who $P5046, pkg_lookup_tmp_29
    set $P5045, $P5046["QAST"]
    set $P5048, $P5045
    goto if532_end1253
  if532_else1252:
    nqp_get_sc_object $P5047, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5048, $P5047
  if532_end1253:
    get_who $P5042, $P5048
    set fb_tmp_97, $P5042
    repr_defined $I5007, fb_tmp_97
    unless $I5007 goto if531_else1250 
    set $P5049, fb_tmp_97["Op"]
    set $P5051, $P5049
    goto if531_end1251
  if531_else1250:
    null $P5050
    set $P5051, $P5050
  if531_end1251:
    unless_null $P5051, vivi_5331254
    nqp_get_sc_object $P5052, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5051, $P5052
  vivi_5331254:
    $P5053 = $P101."shift"()
    $P5054 = $P5051."new"($P103, $P5053, "concat" :named("op"))
    set $P103, $P5054
    set $P5055, $P103
    goto while530_test1245 
  while530_done1249:
.annotate 'line', 797
    $P5056 = _lex_param_1."!make"($P103)
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1361633912.325") :anon :lex :outer("cuid_80_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 774
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_90 
    .local pmc pkg_lookup_tmp_22 
    .local pmc fb_tmp_91 
    .local pmc pkg_lookup_tmp_23 
    .local pmc fb_tmp_92 
    .local pmc pkg_lookup_tmp_24 
    .local pmc fb_tmp_93 
    .local pmc pkg_lookup_tmp_25 
    .local pmc fb_tmp_94 
    .local pmc pkg_lookup_tmp_26 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 775
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_22, $P5004
    get_who $P5005, pkg_lookup_tmp_22
    exists $I5004, $P5005["QAST"]
    unless $I5004 goto if505_else1199 
    get_who $P5007, pkg_lookup_tmp_22
    set $P5006, $P5007["QAST"]
    set $P5009, $P5006
    goto if505_end1200
  if505_else1199:
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5008
  if505_end1200:
    get_who $P5003, $P5009
    set fb_tmp_90, $P5003
    repr_defined $I5003, fb_tmp_90
    unless $I5003 goto if504_else1197 
    set $P5010, fb_tmp_90["Node"]
    set $P5012, $P5010
    goto if504_end1198
  if504_else1197:
    null $P5011
    set $P5012, $P5011
  if504_end1198:
    unless_null $P5012, vivi_5061201
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_5061201:
    type_check $I5002, $P101, $P5012
    not $I5001, $I5002
    unless $I5001 goto if503_else1195 
.annotate 'line', 776
    find_lex $P5014, "$lastlit"
    set $S5002, $P5014
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5015, $S5001
    store_lex "$lastlit", $P5015
    set $P5073, $P5015
    goto if503_end1196
  if503_else1195:
    nqp_get_sc_object $P5017, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_23, $P5017
    get_who $P5018, pkg_lookup_tmp_23
    exists $I5007, $P5018["QAST"]
    unless $I5007 goto if509_else1206 
    get_who $P5020, pkg_lookup_tmp_23
    set $P5019, $P5020["QAST"]
    set $P5022, $P5019
    goto if509_end1207
  if509_else1206:
    nqp_get_sc_object $P5021, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5021
  if509_end1207:
    get_who $P5016, $P5022
    set fb_tmp_91, $P5016
    repr_defined $I5006, fb_tmp_91
    unless $I5006 goto if508_else1204 
    set $P5023, fb_tmp_91["SVal"]
    set $P5025, $P5023
    goto if508_end1205
  if508_else1204:
    null $P5024
    set $P5025, $P5024
  if508_end1205:
    unless_null $P5025, vivi_5101208
    nqp_get_sc_object $P5026, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5025, $P5026
  vivi_5101208:
    type_check $I5005, $P101, $P5025
    unless $I5005 goto if507_else1202 
.annotate 'line', 779
    find_lex $P5027, "$lastlit"
    set $S5005, $P5027
.annotate 'line', 780
    $P5028 = $P101."value"()
    set $S5006, $P5028
    concat $S5004, $S5005, $S5006
    box $P5029, $S5004
    store_lex "$lastlit", $P5029
    set $P5072, $P5029
    goto if507_end1203
  if507_else1202:
.annotate 'line', 782
    find_lex $P5030, "$lastlit"
    set $S5007, $P5030
    isgt $I5008, $S5007, ""
    unless $I5008 goto if511_end1210 
.annotate 'line', 783
.annotate 'line', 784
    find_lex $P5031, "@parts"
    nqp_get_sc_object $P5033, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_24, $P5033
    get_who $P5034, pkg_lookup_tmp_24
    exists $I5010, $P5034["QAST"]
    unless $I5010 goto if513_else1213 
    get_who $P5036, pkg_lookup_tmp_24
    set $P5035, $P5036["QAST"]
    set $P5038, $P5035
    goto if513_end1214
  if513_else1213:
    nqp_get_sc_object $P5037, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5038, $P5037
  if513_end1214:
    get_who $P5032, $P5038
    set fb_tmp_92, $P5032
    repr_defined $I5009, fb_tmp_92
    unless $I5009 goto if512_else1211 
    set $P5039, fb_tmp_92["SVal"]
    set $P5041, $P5039
    goto if512_end1212
  if512_else1211:
    null $P5040
    set $P5041, $P5040
  if512_end1212:
    unless_null $P5041, vivi_5141215
    nqp_get_sc_object $P5042, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5041, $P5042
  vivi_5141215:
    find_lex $P5043, "$lastlit"
    $P5044 = $P5041."new"($P5043 :named("value"))
    $P5045 = $P5031."push"($P5044)
  if511_end1210:
.annotate 'line', 786
    find_lex $P5046, "@parts"
    nqp_get_sc_object $P5048, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_25, $P5048
    get_who $P5049, pkg_lookup_tmp_25
    exists $I5013, $P5049["QAST"]
    unless $I5013 goto if517_else1220 
    get_who $P5051, pkg_lookup_tmp_25
    set $P5050, $P5051["QAST"]
    set $P5053, $P5050
    goto if517_end1221
  if517_else1220:
    nqp_get_sc_object $P5052, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5053, $P5052
  if517_end1221:
    get_who $P5047, $P5053
    set fb_tmp_93, $P5047
    repr_defined $I5012, fb_tmp_93
    unless $I5012 goto if516_else1218 
    set $P5054, fb_tmp_93["Node"]
    set $P5056, $P5054
    goto if516_end1219
  if516_else1218:
    null $P5055
    set $P5056, $P5055
  if516_end1219:
    unless_null $P5056, vivi_5181222
    nqp_get_sc_object $P5057, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5056, $P5057
  vivi_5181222:
    type_check $I5011, $P101, $P5056
    unless $I5011 goto if515_else1216 
    set $P5070, $P101
    goto if515_end1217
  if515_else1216:
.annotate 'line', 788
    nqp_get_sc_object $P5059, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_26, $P5059
    get_who $P5060, pkg_lookup_tmp_26
    exists $I5015, $P5060["QAST"]
    unless $I5015 goto if520_else1225 
    get_who $P5062, pkg_lookup_tmp_26
    set $P5061, $P5062["QAST"]
    set $P5064, $P5061
    goto if520_end1226
  if520_else1225:
    nqp_get_sc_object $P5063, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5064, $P5063
  if520_end1226:
    get_who $P5058, $P5064
    set fb_tmp_94, $P5058
    repr_defined $I5014, fb_tmp_94
    unless $I5014 goto if519_else1223 
    set $P5065, fb_tmp_94["SVal"]
    set $P5067, $P5065
    goto if519_end1224
  if519_else1223:
    null $P5066
    set $P5067, $P5066
  if519_end1224:
    unless_null $P5067, vivi_5211227
    nqp_get_sc_object $P5068, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5067, $P5068
  vivi_5211227:
    $P5069 = $P5067."new"($P101 :named("value"))
    set $P5070, $P5069
  if515_end1217:
    $P5046."push"($P5070)
    box $P5071, ""
    store_lex "$lastlit", $P5071
    set $P5072, $P5071
  if507_end1203:
    set $P5073, $P5072
  if503_end1196:
    .return ($P5073) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_81_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 800
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_98 
    .local pmc fb_tmp_99 
.annotate 'line', 801
    unless_null _lex_param_1, fallback1259
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1259:
    set fb_tmp_98, _lex_param_1
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if535_else1257 
    set $P5002, fb_tmp_98["quote_escape"]
    set $P5004, $P5002
    goto if535_end1258
  if535_else1257:
    null $P5003
    set $P5004, $P5003
  if535_end1258:
    unless_null $P5004, vivi_5361260
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_5361260:
    unless $P5004 goto if534_else1255 
    unless_null _lex_param_1, fallback1263
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5006
  fallback1263:
    set fb_tmp_99, _lex_param_1
    repr_defined $I5002, fb_tmp_99
    unless $I5002 goto if537_else1261 
    set $P5007, fb_tmp_99["quote_escape"]
    set $P5009, $P5007
    goto if537_end1262
  if537_else1261:
    null $P5008
    set $P5009, $P5008
  if537_end1262:
    unless_null $P5009, vivi_5381264
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_5381264:
    $P5011 = $P5009."ast"()
    set $P5012, $P5011
    goto if534_end1256
  if534_else1255:
    set $S5001, _lex_param_1
    box $P5013, $S5001
    set $P5012, $P5013
  if534_end1256:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_82_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 804
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_83_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 805
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_100 
    unless_null _lex_param_1, fallback1267
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1267:
    set fb_tmp_100, _lex_param_1
    repr_defined $I5001, fb_tmp_100
    unless $I5001 goto if539_else1265 
    set $P5002, fb_tmp_100["stopper"]
    set $P5004, $P5002
    goto if539_end1266
  if539_else1265:
    null $P5003
    set $P5004, $P5003
  if539_end1266:
    unless_null $P5004, vivi_5401268
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_5401268:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_84_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 807
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_85_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 808
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_86_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 809
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_87_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 810
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_88_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 811
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_89_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 812
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_90_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
    .local pmc fb_tmp_103 
    .local pmc fb_tmp_104 
.annotate 'line', 815
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1273
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5002
  fallback1273:
    set fb_tmp_101, _lex_param_1
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if542_else1271 
    set $P5003, fb_tmp_101["hexint"]
    set $P5005, $P5003
    goto if542_end1272
  if542_else1271:
    null $P5004
    set $P5005, $P5004
  if542_end1272:
    unless_null $P5005, vivi_5431274
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_5431274:
    unless $P5005 goto if541_else1269 
    unless_null _lex_param_1, fallback1277
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5007
  fallback1277:
    set fb_tmp_102, _lex_param_1
    repr_defined $I5002, fb_tmp_102
    unless $I5002 goto if544_else1275 
    set $P5008, fb_tmp_102["hexint"]
    set $P5010, $P5008
    goto if544_end1276
  if544_else1275:
    null $P5009
    set $P5010, $P5009
  if544_end1276:
    unless_null $P5010, vivi_5451278
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_5451278:
    set $P5021, $P5010
    goto if541_end1270
  if541_else1269:
    unless_null _lex_param_1, fallback1283
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5012
  fallback1283:
    set fb_tmp_104, _lex_param_1
    repr_defined $I5004, fb_tmp_104
    unless $I5004 goto if547_else1281 
    set $P5013, fb_tmp_104["hexints"]
    set $P5015, $P5013
    goto if547_end1282
  if547_else1281:
    null $P5014
    set $P5015, $P5014
  if547_end1282:
    unless_null $P5015, vivi_5481284
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_5481284:
    set fb_tmp_103, $P5015
    repr_defined $I5003, fb_tmp_103
    unless $I5003 goto if546_else1279 
    set $P5017, fb_tmp_103["hexint"]
    set $P5019, $P5017
    goto if546_end1280
  if546_else1279:
    null $P5018
    set $P5019, $P5018
  if546_end1280:
    unless_null $P5019, vivi_5491285
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_5491285:
    set $P5021, $P5019
  if541_end1270:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_91_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 818
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_105 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    .local pmc fb_tmp_108 
.annotate 'line', 819
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1290
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5002
  fallback1290:
    set fb_tmp_105, _lex_param_1
    repr_defined $I5001, fb_tmp_105
    unless $I5001 goto if551_else1288 
    set $P5003, fb_tmp_105["octint"]
    set $P5005, $P5003
    goto if551_end1289
  if551_else1288:
    null $P5004
    set $P5005, $P5004
  if551_end1289:
    unless_null $P5005, vivi_5521291
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_5521291:
    unless $P5005 goto if550_else1286 
    unless_null _lex_param_1, fallback1294
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5007
  fallback1294:
    set fb_tmp_106, _lex_param_1
    repr_defined $I5002, fb_tmp_106
    unless $I5002 goto if553_else1292 
    set $P5008, fb_tmp_106["octint"]
    set $P5010, $P5008
    goto if553_end1293
  if553_else1292:
    null $P5009
    set $P5010, $P5009
  if553_end1293:
    unless_null $P5010, vivi_5541295
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_5541295:
    set $P5021, $P5010
    goto if550_end1287
  if550_else1286:
    unless_null _lex_param_1, fallback1300
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5012
  fallback1300:
    set fb_tmp_108, _lex_param_1
    repr_defined $I5004, fb_tmp_108
    unless $I5004 goto if556_else1298 
    set $P5013, fb_tmp_108["octints"]
    set $P5015, $P5013
    goto if556_end1299
  if556_else1298:
    null $P5014
    set $P5015, $P5014
  if556_end1299:
    unless_null $P5015, vivi_5571301
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_5571301:
    set fb_tmp_107, $P5015
    repr_defined $I5003, fb_tmp_107
    unless $I5003 goto if555_else1296 
    set $P5017, fb_tmp_107["octint"]
    set $P5019, $P5017
    goto if555_end1297
  if555_else1296:
    null $P5018
    set $P5019, $P5018
  if555_end1297:
    unless_null $P5019, vivi_5581302
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_5581302:
    set $P5021, $P5019
  if550_end1287:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_92_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 822
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_109 
.annotate 'line', 823
    unless_null _lex_param_1, fallback1305
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1305:
    set fb_tmp_109, _lex_param_1
    repr_defined $I5001, fb_tmp_109
    unless $I5001 goto if559_else1303 
    set $P5002, fb_tmp_109["charspec"]
    set $P5004, $P5002
    goto if559_end1304
  if559_else1303:
    null $P5003
    set $P5004, $P5003
  if559_end1304:
    unless_null $P5004, vivi_5601306
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_5601306:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_93_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 826
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 827
    $P5001 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_94_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 830
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    .local pmc fb_tmp_112 
.annotate 'line', 831
    unless_null _lex_param_1, fallback1311
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1311:
    set fb_tmp_110, _lex_param_1
    repr_defined $I5001, fb_tmp_110
    unless $I5001 goto if562_else1309 
    set $P5002, fb_tmp_110["textq"]
    set $P5004, $P5002
    goto if562_end1310
  if562_else1309:
    null $P5003
    set $P5004, $P5003
  if562_end1310:
    unless_null $P5004, vivi_5631312
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_5631312:
    unless $P5004 goto if561_else1307 
    unless_null _lex_param_1, fallback1315
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5006
  fallback1315:
    set fb_tmp_111, _lex_param_1
    repr_defined $I5002, fb_tmp_111
    unless $I5002 goto if564_else1313 
    set $P5007, fb_tmp_111["textq"]
    set $P5009, $P5007
    goto if564_end1314
  if564_else1313:
    null $P5008
    set $P5009, $P5008
  if564_end1314:
    unless_null $P5009, vivi_5651316
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_5651316:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if561_end1308
  if561_else1307:
    unless_null _lex_param_1, fallback1319
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5012
  fallback1319:
    set fb_tmp_112, _lex_param_1
    repr_defined $I5003, fb_tmp_112
    unless $I5003 goto if566_else1317 
    set $P5013, fb_tmp_112["textqq"]
    set $P5015, $P5013
    goto if566_end1318
  if566_else1317:
    null $P5014
    set $P5015, $P5014
  if566_end1318:
    unless_null $P5015, vivi_5671320
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_5671320:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if561_end1308:
    $P5020 = _lex_param_1."!make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_95_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 834
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_113 
    .local pmc fb_tmp_114 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    unless_null _lex_param_1, fallback1325
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5002
  fallback1325:
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if569_else1323 
    set $P5003, fb_tmp_113["integer"]
    set $P5005, $P5003
    goto if569_end1324
  if569_else1323:
    null $P5004
    set $P5005, $P5004
  if569_end1324:
    unless_null $P5005, vivi_5701326
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_5701326:
    unless $P5005 goto if568_else1321 
.annotate 'line', 836
    unless_null _lex_param_1, fallback1329
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5007
  fallback1329:
    set fb_tmp_114, _lex_param_1
    repr_defined $I5002, fb_tmp_114
    unless $I5002 goto if571_else1327 
    set $P5008, fb_tmp_114["integer"]
    set $P5010, $P5008
    goto if571_end1328
  if571_else1327:
    null $P5009
    set $P5010, $P5009
  if571_end1328:
    unless_null $P5010, vivi_5721330
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_5721330:
    $P5012 = $P5010."ast"()
    set $P5013, $P5012
    goto if568_end1322
  if568_else1321:
    set $S5002, _lex_param_1
    find_encoding $I5004, "utf8"
    trans_encoding $S5001, $S5002, $I5004
    find_codepoint $I5003, $S5001
    box $P5014, $I5003
    set $P5013, $P5014
  if568_end1322:
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5005, $N5001, $N5002
    unless $I5005 goto if573_end1332 
.annotate 'line', 840
    $P5015 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5016 = $P5015."panic"($S5003)
  if573_end1332:
.annotate 'line', 841
    set $I5006, $P101
    chr $S5005, $I5006
    $P5017 = _lex_param_1."!make"($S5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_96_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_197_1361633912.325' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_115 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1335
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5006
  fallback1335:
    set fb_tmp_115, _lex_param_1
    repr_defined $I5001, fb_tmp_115
    unless $I5001 goto if574_else1333 
    set $P5007, fb_tmp_115["charname"]
    set $P5009, $P5007
    goto if574_end1334
  if574_else1333:
    null $P5008
    set $P5009, $P5008
  if574_end1334:
    unless_null $P5009, vivi_5751336
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_5751336:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1337:
    unless $P5005, for_done1339
    shift $P5012, $P5005
  for_redo1338:
    .const 'Sub' $P5011 = 'cuid_197_1361633912.325' 
    capture_lex $P5011
    $P5003 = $P5011($P5012)
    goto for_next1337
  for_done1339:
.annotate 'line', 847
    $P5013 = _lex_param_1."!make"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1361633912.325") :anon :lex :outer("cuid_96_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 846
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
.sub "charspec" :subid("cuid_97_1361633912.325") :anon :lex :outer("cuid_186_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 850
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_116 
    .local pmc fb_tmp_117 
.annotate 'line', 851
    unless_null _lex_param_1, fallback1344
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5001
  fallback1344:
    set fb_tmp_116, _lex_param_1
    repr_defined $I5001, fb_tmp_116
    unless $I5001 goto if577_else1342 
    set $P5002, fb_tmp_116["charnames"]
    set $P5004, $P5002
    goto if577_end1343
  if577_else1342:
    null $P5003
    set $P5004, $P5003
  if577_end1343:
    unless_null $P5004, vivi_5781345
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_5781345:
    unless $P5004 goto if576_else1340 
    unless_null _lex_param_1, fallback1348
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5006
  fallback1348:
    set fb_tmp_117, _lex_param_1
    repr_defined $I5002, fb_tmp_117
    unless $I5002 goto if579_else1346 
    set $P5007, fb_tmp_117["charnames"]
    set $P5009, $P5007
    goto if579_end1347
  if579_else1346:
    null $P5008
    set $P5009, $P5008
  if579_end1347:
    unless_null $P5009, vivi_5801349
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_5801349:
    $P5011 = $P5009."ast"()
    set $P5013, $P5011
    goto if576_end1341
  if576_else1340:
    $P5012 = "&string_to_int"(_lex_param_1, 10)
    set $I5003, $P5012
    chr $S5001, $I5003
    box $P5014, $S5001
    set $P5013, $P5014
  if576_end1341:
    $P5015 = _lex_param_1."!make"($P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1361633912.325") :anon :lex :outer("cuid_184_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 857
    .const 'Sub' $P5054 = 'cuid_98_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_99_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_100_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_101_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_102_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_103_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_104_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_105_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_106_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_107_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_108_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_109_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_110_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_111_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_112_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_113_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_114_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_115_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_116_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_117_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_118_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_119_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_120_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_121_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_122_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_123_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_124_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_125_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_126_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_127_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_128_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_129_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_130_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_131_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_132_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_133_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_134_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_135_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_136_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_137_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_138_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_139_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_140_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_141_1361633912.325' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_142_1361633912.325' 
    capture_lex $P5054 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_118 
    .const 'Sub' $P5009 = 'cuid_98_1361633912.325' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_99_1361633912.325' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_100_1361633912.325' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_101_1361633912.325' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_102_1361633912.325' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_103_1361633912.325' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_104_1361633912.325' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_105_1361633912.325' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_106_1361633912.325' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_107_1361633912.325' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_108_1361633912.325' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_109_1361633912.325' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_110_1361633912.325' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_111_1361633912.325' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_112_1361633912.325' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_113_1361633912.325' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_114_1361633912.325' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_115_1361633912.325' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_116_1361633912.325' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_117_1361633912.325' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_118_1361633912.325' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_119_1361633912.325' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_120_1361633912.325' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_121_1361633912.325' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_122_1361633912.325' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_123_1361633912.325' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_124_1361633912.325' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_125_1361633912.325' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_126_1361633912.325' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_127_1361633912.325' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_128_1361633912.325' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_129_1361633912.325' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_130_1361633912.325' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_131_1361633912.325' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_132_1361633912.325' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_133_1361633912.325' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_134_1361633912.325' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_135_1361633912.325' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_136_1361633912.325' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_137_1361633912.325' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_138_1361633912.325' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_139_1361633912.325' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_140_1361633912.325' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_141_1361633912.325' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_142_1361633912.325' 
    capture_lex $P5053
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_98_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 872
    .param pmc _lex_param_0 
    .const 'Sub' $P5028 = 'cuid_198_1361633912.325' 
    capture_lex $P5028 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_119 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    split $P5003, " ", "start parse past post pir evalpmc"
    repr_bind_attr_obj $P5001, $P5002, "@!stages", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    split $P5006, " ", "e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5004, $P5005, "@!cmdoptions", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    box $P5009, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5007, $P5008, "$!usage", $P5009
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!cmdoptions"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next1354:
    unless $P5012, for_done1356
    shift $P5017, $P5012
  for_redo1355:
    .const 'Sub' $P5016 = 'cuid_198_1361633912.325' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1354
  for_done1356:
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    getinterp $P5020
    set fb_tmp_119, $P5020
    repr_defined $I5001, fb_tmp_119
    unless $I5001 goto if584_else1357 
    set $P5021, fb_tmp_119[.IGLOBALS_CONFIG_HASH]
    set $P5023, $P5021
    goto if584_end1358
  if584_else1357:
    null $P5022
    set $P5023, $P5022
  if584_end1358:
    unless_null $P5023, vivi_5851359
    nqp_get_sc_object $P5024, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5023, $P5024
  vivi_5851359:
    set $P5018["%parrot_config"], $P5023
    nqp_decontainerize $P5025, _lex_param_0
    nqp_get_sc_object $P5026, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    new $P5027, 'Hash'
    repr_bind_attr_obj $P5025, $P5026, "%!config", $P5027
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1361633912.325") :anon :lex :outer("cuid_98_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 879
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5007, $P5004, $P5006, "$!usage"
    set $S5002, $P5007
    set $S5005, _lex_param_0
    concat $S5004, "    ", $S5005
    concat $S5003, $S5004, "\n"
    concat $S5001, $S5002, $S5003
    box $P5008, $S5001
    repr_bind_attr_obj $P5001, $P5003, "$!usage", $P5008
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_99_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 886
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_6, default1362
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5007
  default1362:
    unless _lex_param_1 goto if586_end1361 
.annotate 'line', 887
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if586_end1361:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_100_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 894
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
.sub "config" :subid("cuid_101_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 898
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_102_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 900
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$base", $P101 
    .lex "$loaded", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
.annotate 'line', 901
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."parse_name"(_lex_param_1)
    join $S5001, "/", $P5004
    box $P5005, $S5001
    set $P101, $P5005
    box $P5006, 0
    set $P102, $P5006
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_5881364
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 903
    set $S5003, $P101
    concat $S5002, $S5003, ".pbc"
    load_bytecode $S5002
    box $P5007, 1
    set $P102, $P5007
    set $P5009, $P102
    pop_eh 
    goto skip_handler_5871363
  catch_handler_5881364:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_5871363
  skip_handler_5871363:
    if $P102 goto unless589_end1366 
.annotate 'line', 904
    set $S5005, $P101
    concat $S5004, $S5005, ".pir"
    load_bytecode $S5004
    box $P5010, 1
    set $P102, $P5010
  unless589_end1366:
.annotate 'line', 905
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."get_module"(_lex_param_1)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_103_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 908
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    .local pmc fb_tmp_120 
.annotate 'line', 910
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback1369
    nqp_get_sc_object $P5006, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5005, $P5006
    set fb_tmp_120, $P5005
    repr_defined $I5002, fb_tmp_120
    unless $I5002 goto if591_else1370 
    set $P5007, fb_tmp_120["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if591_end1371
  if591_else1370:
    null $P5008
    set $P5009, $P5008
  if591_end1371:
    unless_null $P5009, vivi_5921372
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_5921372:
    unless_null $P5009, vivi_5931373
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_5931373:
    set $P5004, $P5009
  fallback1369:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless590_end1368 
.annotate 'line', 909
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless590_end1368:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_104_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 913
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5029 = 'cuid_202_1361633912.325' 
    capture_lex $P5029 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_121 
    .local pmc fb_tmp_122 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
.annotate 'line', 914
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5006."print"($P5008)
.annotate 'line', 916
    getinterp $P5009
    $P5010 = $P5009."stdin_handle"()
    set $P101, $P5010
    set fb_tmp_121, _lex_param_1
    repr_defined $I5001, fb_tmp_121
    unless $I5001 goto if594_else1374 
    set $P5011, fb_tmp_121["encoding"]
    set $P5013, $P5011
    goto if594_end1375
  if594_else1374:
    null $P5012
    set $P5013, $P5012
  if594_end1375:
    unless_null $P5013, vivi_5951376
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5013, $P5014
  vivi_5951376:
    set $S5001, $P5013
    box $P5015, $S5001
    set $P102, $P5015
    set $P5016, $P102
    unless $P102 goto if597_end1380 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5017, $I5002
    set $P5016, $P5017
  if597_end1380:
    unless $P5016 goto if596_end1378 
.annotate 'line', 918
.annotate 'line', 919
    $P5018 = $P101."encoding"($P102)
  if596_end1378:
    set fb_tmp_122, _lex_param_1
    repr_defined $I5003, fb_tmp_122
    unless $I5003 goto if598_else1381 
    set $P5019, fb_tmp_122["target"]
    set $P5021, $P5019
    goto if598_end1382
  if598_else1381:
    null $P5020
    set $P5021, $P5020
  if598_end1382:
    unless_null $P5021, vivi_5991383
    nqp_get_sc_object $P5022, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5022
  vivi_5991383:
    set $S5004, $P5021
    downcase $S5003, $S5004
    box $P5023, $S5003
    set $P103, $P5023
    new $P5027, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5027, while600_handlers1387
    push_eh $P5027
  while600_test1384:
    box $P5028, 1
    set $P5026, $P5028
    unless 1 goto while600_done1388 
  while600_redo1386:
    .const 'Sub' $P5024 = 'cuid_202_1361633912.325' 
    capture_lex $P5024
    $P5025 = $P5024()
    set $P5026, $P5025
    goto while600_test1384 
  while600_handlers1387:
    .get_results ($P5027)
    pop_upto_eh $P5027
    getattribute $P5027, $P5027, 'type'
    eq $P5027, .CONTROL_LOOP_NEXT, while600_test1384
    eq $P5027, .CONTROL_LOOP_REDO, while600_redo1386
  while600_done1388:
    pop_eh 
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1361633912.325") :anon :lex :outer("cuid_104_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 924
    .const 'Sub' $P5029 = 'cuid_201_1361633912.325' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_123 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    if $P5006 goto unless601_end1390 
    die 0, .CONTROL_LOOP_LAST
  unless601_end1390:
.annotate 'line', 927
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5001, $P5007
    if $I5001, defor1391
    box $P5011, "> "
    set $P5007, $P5011
  defor1391:
    set $P101, $P5007
.annotate 'line', 928
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5002, $P102
    set $I5005, $I5002
    if $I5002 goto unless603_end1395 
    defined $I5004, $P102
    not $I5003, $I5004
    set $I5005, $I5003
  unless603_end1395:
    unless $I5005 goto if602_end1393 
.annotate 'line', 929
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if602_end1393:
.annotate 'line', 935
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if607_end1402 
    .const 'Sub' $P5026 = 'cuid_201_1361633912.325' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if607_end1402:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1361633912.325") :anon :lex :outer("cuid_202_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 939
    .const 'Sub' $P5042 = 'cuid_200_1361633912.325' 
    capture_lex $P5042 
    .lex "$output", $P101 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 942
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_6091404
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 943
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_6081403
  catch_handler_6091404:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_200_1361633912.325' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_6081403
  skip_handler_6081403:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1407
    nqp_get_sc_object $P5015, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5014, $P5015
    set fb_tmp_124, $P5014
    repr_defined $I5002, fb_tmp_124
    unless $I5002 goto if611_else1408 
    set $P5016, fb_tmp_124["$MAIN_CTX"]
    set $P5018, $P5016
    goto if611_end1409
  if611_else1408:
    null $P5017
    set $P5018, $P5017
  if611_end1409:
    unless_null $P5018, vivi_6121410
    nqp_get_sc_object $P5019, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5018, $P5019
  vivi_6121410:
    unless_null $P5018, vivi_6131411
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_6131411:
    set $P5013, $P5018
  fallback1407:
    defined $I5001, $P5013
    unless $I5001 goto if610_end1406 
.annotate 'line', 949
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1412
    nqp_get_sc_object $P5023, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5022, $P5023
    set fb_tmp_125, $P5022
    repr_defined $I5003, fb_tmp_125
    unless $I5003 goto if614_else1413 
    set $P5024, fb_tmp_125["$MAIN_CTX"]
    set $P5026, $P5024
    goto if614_end1414
  if614_else1413:
    null $P5025
    set $P5026, $P5025
  if614_end1414:
    unless_null $P5026, vivi_6151415
    nqp_get_sc_object $P5027, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5026, $P5027
  vivi_6151415:
    unless_null $P5026, vivi_6161416
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_6161416:
    set $P5021, $P5026
  fallback1412:
    store_lex "$save_ctx", $P5021
  if610_end1406:
    isnull $I5004, $P101
    unless $I5004 goto if617_end1418 
    die 0, .CONTROL_LOOP_NEXT
  if617_end1418:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if618_else1419 
.annotate 'line', 954
.annotate 'line', 955
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5041, $P5032
    goto if618_end1420
  if618_else1419:
    find_lex $P5033, "$target"
    set $S5003, $P5033
    iseq $I5006, $S5003, "pir"
    unless $I5006 goto if619_else1421 
.annotate 'line', 956
    set $S5004, $P101
    say $S5004
    box $P5040, $S5004
    set $P5039, $P5040
    goto if619_end1422
  if619_else1421:
.annotate 'line', 958
.annotate 'line', 959
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$target"
    find_lex $P5037, "%adverbs"
    $P5038 = $P5034."dumper"($P101, $P5036, $P5037 :flat :named)
    set $P5039, $P5038
  if619_end1422:
    set $P5041, $P5039
  if618_end1420:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1361633912.325") :anon :lex :outer("cuid_201_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 944
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 945
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_105_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 965
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
.sub "interactive_exception" :subid("cuid_106_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 969
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
.sub "eval" :subid("cuid_107_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 973
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5016 = 'cuid_203_1361633912.325' 
    capture_lex $P5016 
    .lex "$output", $P101 
    .lex "$old_runcore", $P102 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_127 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P102, $P5003
    set fb_tmp_126, _lex_param_3
    repr_defined $I5001, fb_tmp_126
    unless $I5001 goto if621_else1425 
    set $P5004, fb_tmp_126["profile-compile"]
    set $P5006, $P5004
    goto if621_end1426
  if621_else1425:
    null $P5005
    set $P5006, $P5005
  if621_end1426:
    unless_null $P5006, vivi_6221427
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5006, $P5007
  vivi_6221427:
    unless $P5006 goto if620_end1424 
.annotate 'line', 977
    set_runcore "subprof_hll"
  if620_end1424:
.annotate 'line', 980
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5009
    isa $I5003, $P101, "String"
    not $I5002, $I5003
    set $I5006, $I5002
    unless $I5002 goto if624_end1431 
    set fb_tmp_127, _lex_param_3
    repr_defined $I5005, fb_tmp_127
    unless $I5005 goto if625_else1432 
    set $P5010, fb_tmp_127["target"]
    set $P5012, $P5010
    goto if625_end1433
  if625_else1432:
    null $P5011
    set $P5012, $P5011
  if625_end1433:
    unless_null $P5012, vivi_6261434
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_6261434:
    set $S5002, $P5012
    iseq $I5004, $S5002, ""
    set $I5006, $I5004
  if624_end1431:
    unless $I5006 goto if623_end1429 
    .const 'Sub' $P5014 = 'cuid_203_1361633912.325' 
    capture_lex $P5014
    $P5015 = $P5014()
  if623_end1429:
    set $S5003, $P102
    set_runcore $S5003
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1361633912.325") :anon :lex :outer("cuid_107_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 983
    .lex "$outer_ctx", $P101 
    .local pmc fb_tmp_128 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    .local pmc fb_tmp_131 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_128, $P5002
    repr_defined $I5001, fb_tmp_128
    unless $I5001 goto if627_else1435 
    set $P5003, fb_tmp_128["outer_ctx"]
    set $P5005, $P5003
    goto if627_end1436
  if627_else1435:
    null $P5004
    set $P5005, $P5004
  if627_end1436:
    unless_null $P5005, vivi_6281437
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_6281437:
    set $P101, $P5005
    defined $I5002, $P101
    unless $I5002 goto if629_end1439 
.annotate 'line', 985
.annotate 'line', 986
    find_lex $P5007, "$output"
    set fb_tmp_129, $P5007
    repr_defined $I5003, fb_tmp_129
    unless $I5003 goto if630_else1440 
    set $P5008, fb_tmp_129[0]
    set $P5010, $P5008
    goto if630_end1441
  if630_else1440:
    null $P5009
    set $P5010, $P5009
  if630_end1441:
    unless_null $P5010, vivi_6311442
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_6311442:
    $P5012 = $P5010."set_outer_ctx"($P101)
  if629_end1439:
    find_lex $P5013, "%adverbs"
    set fb_tmp_130, $P5013
    repr_defined $I5004, fb_tmp_130
    unless $I5004 goto if633_else1445 
    set $P5014, fb_tmp_130["profile"]
    set $P5016, $P5014
    goto if633_end1446
  if633_else1445:
    null $P5015
    set $P5016, $P5015
  if633_end1446:
    unless_null $P5016, vivi_6341447
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_6341447:
    unless $P5016 goto if632_end1444 
.annotate 'line', 989
    set_runcore "subprof_hll"
  if632_end1444:
    find_lex $P5018, "%adverbs"
    set fb_tmp_131, $P5018
    repr_defined $I5005, fb_tmp_131
    unless $I5005 goto if635_else1448 
    set $P5019, fb_tmp_131["trace"]
    set $P5021, $P5019
    goto if635_end1449
  if635_else1448:
    null $P5020
    set $P5021, $P5020
  if635_end1449:
    unless_null $P5021, vivi_6361450
    nqp_get_sc_object $P5022, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5022
  vivi_6361450:
    set $I5006, $P5021
    trace $I5006
.annotate 'line', 993
    find_lex $P5024, "@args"
    find_lex $P5023, "$output"
    $P5025 = $P5023($P5024 :flat)
    store_lex "$output", $P5025
    trace 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_108_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1001
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
.sub "panic" :subid("cuid_109_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    join $S5001, "", _lex_param_1
    box $P5001, $S5001
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_110_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1010
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_7, default1453
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1453:
    set $N5001, _lex_param_1
    unless $N5001 goto if637_end1452 
.annotate 'line', 1011
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if637_end1452:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_111_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1017
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_132 
    set $N5001, _lex_param_1
    unless $N5001 goto if638_end1455 
.annotate 'line', 1018
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    set fb_tmp_132, _lex_param_1
    repr_defined $I5001, fb_tmp_132
    unless $I5001 goto if639_else1456 
    set $P5003, fb_tmp_132[0]
    set $P5005, $P5003
    goto if639_end1457
  if639_else1456:
    null $P5004
    set $P5005, $P5004
  if639_end1457:
    unless_null $P5005, vivi_6401458
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_6401458:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5005
  if638_end1455:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_112_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1024
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_133 
    set $N5001, _lex_param_1
    unless $N5001 goto if641_end1460 
.annotate 'line', 1025
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    set fb_tmp_133, _lex_param_1
    repr_defined $I5001, fb_tmp_133
    unless $I5001 goto if642_else1461 
    set $P5003, fb_tmp_133[0]
    set $P5005, $P5003
    goto if642_end1462
  if642_else1461:
    null $P5004
    set $P5005, $P5004
  if642_end1462:
    unless_null $P5005, vivi_6431463
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_6431463:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5005
  if641_end1460:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_113_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1031
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_114_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1033
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_115_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1035
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_8, default1466
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5006
  default1466:
    defined $I5001, _lex_param_1
    unless $I5001 goto if644_end1465 
.annotate 'line', 1036
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if644_end1465:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_116_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1043
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_9, default1469
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1469:
    set $N5001, _lex_param_1
    unless $N5001 goto if645_end1468 
.annotate 'line', 1044
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if645_end1468:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_117_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1050
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$program-name", $P101 
    .lex "$res", $P102 
    .lex "%opts", $P103 
    .lex "@a", $P104 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_134 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    .local pmc fb_tmp_137 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set fb_tmp_134, _lex_param_1
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if646_else1470 
    set $P5005, fb_tmp_134[0]
    set $P5007, $P5005
    goto if646_end1471
  if646_else1470:
    null $P5006
    set $P5007, $P5006
  if646_end1471:
    unless_null $P5007, vivi_6471472
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_6471472:
    set $P101, $P5007
.annotate 'line', 1052
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1053
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1054
    $P5012 = $P102."arguments"()
    set $P104, $P5012
.annotate 'line', 1056
    _lex_param_2."update"($P103)
    set fb_tmp_135, _lex_param_2
    repr_defined $I5002, fb_tmp_135
    unless $I5002 goto if650_else1477 
    set $P5013, fb_tmp_135["help"]
    set $P5015, $P5013
    goto if650_end1478
  if650_else1477:
    null $P5014
    set $P5015, $P5014
  if650_end1478:
    unless_null $P5015, vivi_6511479
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_6511479:
    set $P5021, $P5015
    if $P5015 goto unless649_end1476 
    set fb_tmp_136, _lex_param_2
    repr_defined $I5003, fb_tmp_136
    unless $I5003 goto if652_else1480 
    set $P5017, fb_tmp_136["h"]
    set $P5019, $P5017
    goto if652_end1481
  if652_else1480:
    null $P5018
    set $P5019, $P5018
  if652_end1481:
    unless_null $P5019, vivi_6531482
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_6531482:
    set $P5021, $P5019
  unless649_end1476:
    unless $P5021 goto if648_end1474 
.annotate 'line', 1057
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5022."usage"($P101)
  if648_end1474:
    exists $I5005, _lex_param_2["precomp"]
    not $I5004, $I5005
    set $I5008, $I5004
    unless $I5004 goto if655_end1486 
    set fb_tmp_137, _lex_param_2
    repr_defined $I5007, fb_tmp_137
    unless $I5007 goto if656_else1487 
    set $P5024, fb_tmp_137["target"]
    set $P5026, $P5024
    goto if656_end1488
  if656_else1487:
    null $P5025
    set $P5026, $P5025
  if656_end1488:
    unless_null $P5026, vivi_6571489
    nqp_get_sc_object $P5027, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5026, $P5027
  vivi_6571489:
    set $S5001, $P5026
    iseq $I5006, $S5001, "pir"
    set $I5008, $I5006
  if655_end1486:
    unless $I5008 goto if654_end1484 
.annotate 'line', 1059
    box $P5028, 1
    set _lex_param_2["precomp"], $P5028
  if654_end1484:
    load_bytecode "dumper.pbc"
.annotate 'line', 1065
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_118_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1069
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5098 = 'cuid_204_1361633912.325' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_205_1361633912.325' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_206_1361633912.325' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_207_1361633912.325' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_208_1361633912.325' 
    capture_lex $P5098 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_138 
    .local pmc fb_tmp_139 
    .local pmc fb_tmp_140 
    .local pmc fb_tmp_141 
    .local pmc fb_tmp_142 
    .local pmc fb_tmp_143 
    .local pmc fb_tmp_144 
    .local pmc fb_tmp_145 
    .local pmc fb_tmp_146 
    .local pmc fb_tmp_149 
    .local pmc fb_tmp_150 
    .local pmc fb_tmp_151 
    .local pmc fb_tmp_153 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    set fb_tmp_138, _lex_param_2
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if660_else1494 
    set $P5005, fb_tmp_138["version"]
    set $P5007, $P5005
    goto if660_end1495
  if660_else1494:
    null $P5006
    set $P5007, $P5006
  if660_end1495:
    unless_null $P5007, vivi_6611496
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_6611496:
    set $P5013, $P5007
    if $P5007 goto unless659_end1493 
    set fb_tmp_139, _lex_param_2
    repr_defined $I5002, fb_tmp_139
    unless $I5002 goto if662_else1497 
    set $P5009, fb_tmp_139["v"]
    set $P5011, $P5009
    goto if662_end1498
  if662_else1497:
    null $P5010
    set $P5011, $P5010
  if662_end1498:
    unless_null $P5011, vivi_6631499
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_6631499:
    set $P5013, $P5011
  unless659_end1493:
    unless $P5013 goto if658_end1491 
.annotate 'line', 1070
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."version"()
  if658_end1491:
    set fb_tmp_140, _lex_param_2
    repr_defined $I5003, fb_tmp_140
    unless $I5003 goto if667_else1506 
    set $P5016, fb_tmp_140["verbose-config"]
    set $P5018, $P5016
    goto if667_end1507
  if667_else1506:
    null $P5017
    set $P5018, $P5017
  if667_end1507:
    unless_null $P5018, vivi_6681508
    nqp_get_sc_object $P5019, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5018, $P5019
  vivi_6681508:
    set $P5024, $P5018
    if $P5018 goto unless666_end1505 
    set fb_tmp_141, _lex_param_2
    repr_defined $I5004, fb_tmp_141
    unless $I5004 goto if669_else1509 
    set $P5020, fb_tmp_141["V"]
    set $P5022, $P5020
    goto if669_end1510
  if669_else1509:
    null $P5021
    set $P5022, $P5021
  if669_end1510:
    unless_null $P5022, vivi_6701511
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_6701511:
    set $P5024, $P5022
  unless666_end1505:
    set $P5029, $P5024
    if $P5024 goto unless665_end1503 
    set fb_tmp_142, _lex_param_2
    repr_defined $I5005, fb_tmp_142
    unless $I5005 goto if671_else1512 
    set $P5025, fb_tmp_142["show-config"]
    set $P5027, $P5025
    goto if671_end1513
  if671_else1512:
    null $P5026
    set $P5027, $P5026
  if671_end1513:
    unless_null $P5027, vivi_6721514
    nqp_get_sc_object $P5028, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5027, $P5028
  vivi_6721514:
    set $P5029, $P5027
  unless665_end1503:
    unless $P5029 goto if664_end1501 
.annotate 'line', 1071
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."verbose-config"()
  if664_end1501:
    set fb_tmp_143, _lex_param_2
    repr_defined $I5006, fb_tmp_143
    unless $I5006 goto if674_else1517 
    set $P5032, fb_tmp_143["nqpevent"]
    set $P5034, $P5032
    goto if674_end1518
  if674_else1517:
    null $P5033
    set $P5034, $P5033
  if674_end1518:
    unless_null $P5034, vivi_6751519
    nqp_get_sc_object $P5035, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5034, $P5035
  vivi_6751519:
    unless $P5034 goto if673_end1516 
.annotate 'line', 1073
    nqp_decontainerize $P5036, _lex_param_0
    set fb_tmp_144, _lex_param_2
    repr_defined $I5007, fb_tmp_144
    unless $I5007 goto if676_else1520 
    set $P5037, fb_tmp_144["nqpevent"]
    set $P5039, $P5037
    goto if676_end1521
  if676_else1520:
    null $P5038
    set $P5039, $P5038
  if676_end1521:
    unless_null $P5039, vivi_6771522
    nqp_get_sc_object $P5040, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5039, $P5040
  vivi_6771522:
    $P5041 = $P5036."nqpevent"($P5039)
  if673_end1516:
    box $P5042, 0
    set $P103, $P5042
    set fb_tmp_145, _lex_param_2
    repr_defined $I5008, fb_tmp_145
    unless $I5008 goto if678_else1523 
    set $P5043, fb_tmp_145["target"]
    set $P5045, $P5043
    goto if678_end1524
  if678_else1523:
    null $P5044
    set $P5045, $P5044
  if678_end1524:
    unless_null $P5045, vivi_6791525
    nqp_get_sc_object $P5046, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5045, $P5046
  vivi_6791525:
    set $S5002, $P5045
    downcase $S5001, $S5002
    box $P5047, $S5001
    set $P104, $P5047
    new $P5084, 'ExceptionHandler'
    set_label $P5084, catch_handler_7111577
    $P5084.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5084
.annotate 'line', 1079
    new $P5082, 'ExceptionHandler'
    set_label $P5082, catch_handler_7071572
    $P5082.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5082
    new $P5082, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5082, catch_handler_7081573
    push_eh $P5082
    set fb_tmp_146, _lex_param_2
    repr_defined $I5010, fb_tmp_146
    unless $I5010 goto if681_else1528 
    set $P5048, fb_tmp_146["e"]
    set $P5050, $P5048
    goto if681_end1529
  if681_else1528:
    null $P5049
    set $P5050, $P5049
  if681_end1529:
    unless_null $P5050, vivi_6821530
    nqp_get_sc_object $P5051, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5050, $P5051
  vivi_6821530:
    defined $I5009, $P5050
    unless $I5009 goto if680_else1526 
    .const 'Sub' $P5052 = 'cuid_204_1361633912.325' 
    capture_lex $P5052
    $P5053 = $P5052()
    goto if680_end1527
  if680_else1526:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if690_else1543 
.annotate 'line', 1088
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5055
    set $P5069, $P101
    goto if690_end1544
  if690_else1543:
    set fb_tmp_149, _lex_param_2
    repr_defined $I5012, fb_tmp_149
    unless $I5012 goto if692_else1547 
    set $P5056, fb_tmp_149["combine"]
    set $P5058, $P5056
    goto if692_end1548
  if692_else1547:
    null $P5057
    set $P5058, $P5057
  if692_end1548:
    unless_null $P5058, vivi_6931549
    nqp_get_sc_object $P5059, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5058, $P5059
  vivi_6931549:
    unless $P5058 goto if691_else1545 
.annotate 'line', 1089
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5061
    set $P5068, $P101
    goto if691_end1546
  if691_else1545:
.annotate 'line', 1090
    nqp_decontainerize $P5062, _lex_param_0
    set fb_tmp_150, _lex_param_1
    repr_defined $I5013, fb_tmp_150
    unless $I5013 goto if694_else1550 
    set $P5063, fb_tmp_150[0]
    set $P5065, $P5063
    goto if694_end1551
  if694_else1550:
    null $P5064
    set $P5065, $P5064
  if694_end1551:
    unless_null $P5065, vivi_6951552
    nqp_get_sc_object $P5066, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5065, $P5066
  vivi_6951552:
    $P5067 = $P5062."evalfiles"($P5065, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5067
    set $P5068, $P101
  if691_end1546:
    set $P5069, $P5068
  if690_end1544:
  if680_end1527:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5077, $I5014
    set $P5076, $P5077
    unless $I5014 goto if697_end1556 
    set $S5003, $P104
    iseq $I5016, $S5003, "pir"
    box $P5075, $I5016
    set $P5074, $P5075
    if $I5016 goto unless698_end1558 
    set fb_tmp_151, _lex_param_2
    repr_defined $I5017, fb_tmp_151
    unless $I5017 goto if699_else1559 
    set $P5070, fb_tmp_151["output"]
    set $P5072, $P5070
    goto if699_end1560
  if699_else1559:
    null $P5071
    set $P5072, $P5071
  if699_end1560:
    unless_null $P5072, vivi_7001561
    nqp_get_sc_object $P5073, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5072, $P5073
  vivi_7001561:
    set $P5074, $P5072
  unless698_end1558:
    set $P5076, $P5074
  if697_end1556:
    unless $P5076 goto if696_end1554 
    .const 'Sub' $P5078 = 'cuid_205_1361633912.325' 
    capture_lex $P5078
    $P5079 = $P5078()
  if696_end1554:
    nqp_get_sc_object $P5080, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    nqp_get_sc_object $P5081, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5083, $P5081
    pop_eh 
    pop_eh 
    goto skip_handler_7061571
  catch_handler_7071572:
    .get_results ($P5082) 
    .const 'Sub' $P10001 = 'cuid_206_1361633912.325' 
    capture_lex $P10001
    $P10001($P5082)
    set $I10001, 1
    set $P5082["handled"], $I10001
    nqp_get_sc_object $P10002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5082
    pop_upto_eh $P5082
    pop_eh 
    set $P5083, $P10002
    goto skip_handler_7061571
  catch_handler_7081573:
    .get_results ($P5082) 
    .const 'Sub' $P10003 = 'cuid_207_1361633912.325' 
    capture_lex $P10003
    $P10003($P5082)
    set $I10002, 1
    set $P5082["handled"], $I10002
    nqp_get_sc_object $P10004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5082
    pop_upto_eh $P5082
    pop_eh 
    set $P5083, $P10004
    goto skip_handler_7061571
  skip_handler_7061571:
    set $P5085, $P5083
    pop_eh 
    goto skip_handler_7101576
  catch_handler_7111577:
    .get_results ($P5084) 
    set $I10001, 1
    set $P5084["handled"], $I10001
    nqp_get_sc_object $P10001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5084
    pop_upto_eh $P5084
    pop_eh 
    set $P5085, $P10001
    goto skip_handler_7101576
  skip_handler_7101576:
    unless $P103 goto if712_end1579 
.annotate 'line', 1115
    set fb_tmp_153, _lex_param_2
    repr_defined $I5018, fb_tmp_153
    unless $I5018 goto if715_else1584 
    set $P5086, fb_tmp_153["ll-exception"]
    set $P5088, $P5086
    goto if715_end1585
  if715_else1584:
    null $P5087
    set $P5088, $P5087
  if715_end1585:
    unless_null $P5088, vivi_7161586
    nqp_get_sc_object $P5089, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5088, $P5089
  vivi_7161586:
    set $P5091, $P5088
    if $P5088 goto unless714_end1583 
    nqp_decontainerize $P5090, _lex_param_0
    can $I5020, $P5090, "handle-exception"
    not $I5019, $I5020
    box $P5092, $I5019
    set $P5091, $P5092
  unless714_end1583:
    unless $P5091 goto if713_else1580 
    .const 'Sub' $P5093 = 'cuid_208_1361633912.325' 
    capture_lex $P5093
    $P5094 = $P5093()
    set $P5097, $P5094
    goto if713_end1581
  if713_else1580:
.annotate 'line', 1122
.annotate 'line', 1123
    nqp_decontainerize $P5095, _lex_param_0
    $P5096 = $P5095."handle-exception"($P102)
    set $P5097, $P5096
  if713_end1581:
  if712_end1579:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1361633912.325") :anon :lex :outer("cuid_118_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1080
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_147 
    .local pmc fb_tmp_148 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1083
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_147, $P5009
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if683_else1531 
    set $P5010, fb_tmp_147["e"]
    set $P5012, $P5010
    goto if683_end1532
  if683_else1531:
    null $P5011
    set $P5012, $P5011
  if683_end1532:
    unless_null $P5012, vivi_6841533
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_6841533:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless687_end1539 
    find_lex $P5018, "$target"
    set $S5002, $P5018
    iseq $I5003, $S5002, "pir"
    set $I5004, $I5003
  unless687_end1539:
    box $P5025, $I5004
    set $P5024, $P5025
    if $I5004 goto unless686_end1537 
    find_lex $P5019, "%adverbs"
    set fb_tmp_148, $P5019
    repr_defined $I5005, fb_tmp_148
    unless $I5005 goto if688_else1540 
    set $P5020, fb_tmp_148["output"]
    set $P5022, $P5020
    goto if688_end1541
  if688_else1540:
    null $P5021
    set $P5022, $P5021
  if688_end1541:
    unless_null $P5022, vivi_6891542
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_6891542:
    set $P5024, $P5022
  unless686_end1537:
    set $P5032, $P5024
    if $P5024 goto unless685_end1535 
.annotate 'line', 1084
.annotate 'line', 1085
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$result"
    find_lex $P5029, "$target"
    find_lex $P5030, "%adverbs"
    $P5031 = $P5026."dumper"($P5028, $P5029, $P5030 :flat :named)
    set $P5032, $P5031
  unless685_end1535:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1361633912.325") :anon :lex :outer("cuid_118_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1092
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_152 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_152, $P5003
    repr_defined $I5001, fb_tmp_152
    unless $I5001 goto if701_else1562 
    set $P5004, fb_tmp_152["output"]
    set $P5006, $P5004
    goto if701_end1563
  if701_else1562:
    null $P5005
    set $P5006, $P5005
  if701_end1563:
    unless_null $P5006, vivi_7021564
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5006, $P5007
  vivi_7021564:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless704_end1568 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless704_end1568:
    unless $I5004 goto if703_else1565 
.annotate 'line', 1095
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5012, $P5009
    goto if703_end1566
  if703_else1565:
.annotate 'line', 1096
    new $P5010, "FileHandle"
    $P5011 = $P5010."open"($P101, "w")
    set $P5012, $P5011
  if703_end1566:
    set $P102, $P5012
    if $P102 goto unless705_end1570 
.annotate 'line', 1097
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    set $S5004, $P101
    concat $S5003, "Cannot write to ", $S5004
    $P5015 = $P5013."panic"($S5003)
  unless705_end1570:
.annotate 'line', 1098
    find_lex $P5016, "$result"
    $P102."print"($P5016)
.annotate 'line', 1099
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1361633912.325") :anon :lex :outer("cuid_118_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1101
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
.sub "" :subid("cuid_207_1361633912.325") :anon :lex :outer("cuid_118_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1105
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if709_else1574 
.annotate 'line', 1106
.annotate 'line', 1107
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if709_end1575
  if709_else1574:
.annotate 'line', 1108
    rethrow _lex_param_0
  if709_end1575:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1361633912.325") :anon :lex :outer("cuid_118_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1116
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    getstderr $P5002
    set $P101, $P5002
.annotate 'line', 1118
    find_lex $P5003, "$error"
    $P101."print"($P5003)
.annotate 'line', 1119
    $P101."print"("\n")
.annotate 'line', 1120
    find_lex $P5004, "$error"
    $P5005 = $P5004."backtrace_strings"()
    join $S5001, "\n", $P5005
    $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_119_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1129
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_209_1361633912.325' 
    capture_lex $P5043 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_154 
    .local pmc pkg_lookup_tmp_31 
    .local pmc pkg_lookup_tmp_30 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
.annotate 'line', 1131
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1133
    nqp_get_sc_object $P5006, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_30, $P5006
    get_who $P5007, pkg_lookup_tmp_30
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if718_else1589 
    get_who $P5009, pkg_lookup_tmp_30
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if718_end1590
  if718_else1589:
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5010
  if718_end1590:
    set pkg_lookup_tmp_31, $P5011
    get_who $P5012, pkg_lookup_tmp_31
    exists $I5003, $P5012["CommandLine"]
    unless $I5003 goto if719_else1591 
    get_who $P5014, pkg_lookup_tmp_31
    set $P5013, $P5014["CommandLine"]
    set $P5016, $P5013
    goto if719_end1592
  if719_else1591:
    nqp_get_sc_object $P5015, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5015
  if719_end1592:
    get_who $P5005, $P5016
    set fb_tmp_154, $P5005
    repr_defined $I5001, fb_tmp_154
    unless $I5001 goto if717_else1587 
    set $P5017, fb_tmp_154["Parser"]
    set $P5019, $P5017
    goto if717_end1588
  if717_else1587:
    null $P5018
    set $P5019, $P5018
  if717_end1588:
    unless_null $P5019, vivi_7201593
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_7201593:
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions"
    $P5024 = $P5019."new"($P5023)
    set $P101, $P5024
.annotate 'line', 1134
    $P101."add-stopper"("-e")
.annotate 'line', 1135
    $P101."stop-after-first-arg"()
    new $P5029, 'ExceptionHandler'
    set_label $P5029, catch_handler_7241597
    $P5029.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5029
.annotate 'line', 1137
    new $P5027, 'ExceptionHandler'
    set_label $P5027, catch_handler_7221595
    $P5027.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5027
.annotate 'line', 1138
    $P5025 = $P101."parse"(_lex_param_1)
    set $P102, $P5025
    nqp_get_sc_object $P5026, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5028, $P5026
    pop_eh 
    goto skip_handler_7211594
  catch_handler_7221595:
    .get_results ($P5027) 
    .const 'Sub' $P10001 = 'cuid_209_1361633912.325' 
    capture_lex $P10001
    $P10001($P5027)
    set $I10001, 1
    set $P5027["handled"], $I10001
    nqp_get_sc_object $P10002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5027
    pop_upto_eh $P5027
    pop_eh 
    set $P5028, $P10002
    goto skip_handler_7211594
  skip_handler_7211594:
    set $P5030, $P5028
    pop_eh 
    goto skip_handler_7231596
  catch_handler_7241597:
    .get_results ($P5029) 
    set $I10001, 1
    set $P5029["handled"], $I10001
    nqp_get_sc_object $P10001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5029
    pop_upto_eh $P5029
    pop_eh 
    set $P5030, $P10001
    goto skip_handler_7231596
  skip_handler_7231596:
    unless $P102 goto if725_else1598 
.annotate 'line', 1145
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
.annotate 'line', 1146
    $P5033 = $P102."options"()
    repr_bind_attr_obj $P5031, $P5032, "%!cli-options", $P5033
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
.annotate 'line', 1147
    $P5036 = $P102."arguments"()
    repr_bind_attr_obj $P5034, $P5035, "@!cli-arguments", $P5036
    goto if725_end1599
  if725_else1598:
.annotate 'line', 1149
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    new $P5039, 'Hash'
    repr_bind_attr_obj $P5037, $P5038, "%!cli-options", $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    new $P5042, 'ResizablePMCArray'
    repr_bind_attr_obj $P5040, $P5041, "@!cli-arguments", $P5042
  if725_end1599:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1361633912.325") :anon :lex :outer("cuid_119_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1139
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1141
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_120_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1156
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5044 = 'cuid_211_1361633912.325' 
    capture_lex $P5044 
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
    .local pmc fb_tmp_155 
    .local pmc fb_tmp_156 
    .local pmc fb_tmp_157 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1600
    .lex "RETURN", $P108
    set fb_tmp_155, _lex_param_3
    repr_defined $I5001, fb_tmp_155
    unless $I5001 goto if726_else1602 
    set $P5008, fb_tmp_155["target"]
    set $P5010, $P5008
    goto if726_end1603
  if726_else1602:
    null $P5009
    set $P5010, $P5009
  if726_end1603:
    unless_null $P5010, vivi_7271604
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_7271604:
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5012, $S5001
    set $P101, $P5012
    set fb_tmp_156, _lex_param_3
    repr_defined $I5002, fb_tmp_156
    unless $I5002 goto if728_else1605 
    set $P5013, fb_tmp_156["encoding"]
    set $P5015, $P5013
    goto if728_end1606
  if728_else1605:
    null $P5014
    set $P5015, $P5014
  if728_end1606:
    unless_null $P5015, vivi_7291607
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_7291607:
    set $P102, $P5015
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if730_else1608 
    set $P5018, _lex_param_1
    goto if730_end1609
  if730_else1608:
    new $P5017, 'ResizablePMCArray'
    push $P5017, _lex_param_1
    set $P5018, $P5017
  if730_end1609:
    set $P103, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    join $S5003, ",", $P103
    box $P5021, $S5003
    repr_bind_attr_obj $P5019, $P5020, "$!user_progname", $P5021
    set $P5022, $P103
    iter $P5024, $P103
  for_next1616:
    unless $P5024, for_done1618
    shift $P5026, $P5024
  for_redo1617:
    .const 'Sub' $P5025 = 'cuid_211_1361633912.325' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1616
  for_done1618:
    join $S5004, "", $P104
    box $P5027, $S5004
    set $P105, $P5027
    join $S5005, " ", $P103
    box $P5028, $S5005
    set $P106, $P5028
.annotate 'line', 1180
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5030
    set $S5006, $P101
    iseq $I5004, $S5006, ""
    set $I5006, $I5004
    if $I5004 goto unless738_end1624 
    set $S5007, $P101
    iseq $I5005, $S5007, "pir"
    set $I5006, $I5005
  unless738_end1624:
    box $P5036, $I5006
    set $P5035, $P5036
    if $I5006 goto unless737_end1622 
    set fb_tmp_157, _lex_param_3
    repr_defined $I5007, fb_tmp_157
    unless $I5007 goto if739_else1625 
    set $P5031, fb_tmp_157["output"]
    set $P5033, $P5031
    goto if739_end1626
  if739_else1625:
    null $P5032
    set $P5033, $P5032
  if739_end1626:
    unless_null $P5033, vivi_7401627
    nqp_get_sc_object $P5034, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5033, $P5034
  vivi_7401627:
    set $P5035, $P5033
  unless737_end1622:
    unless $P5035 goto if736_else1619 
.annotate 'line', 1181
    find_lex $P5037, "RETURN"
    $P5038 = $P5037($P107)
    set $P5043, $P5038
    goto if736_end1620
  if736_else1619:
.annotate 'line', 1183
.annotate 'line', 1184
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5039, "RETURN"
    $P5042 = $P5039($P5041)
    set $P5043, $P5042
  if736_end1620:
    goto lexotic_1601
  lexotic_1600:
    .get_results ($P5043)
  lexotic_1601:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1361633912.325") :anon :lex :outer("cuid_120_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1162
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_210_1361633912.325' 
    capture_lex $P5014 
    .lex "$in-handle", $P101 
    .lex "$err", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, "FileHandle"
    set $P101, $P5003
    box $P5004, 0
    set $P102, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_7341613
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1165
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_7321611
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
.annotate 'line', 1169
    find_lex $P5005, "$encoding"
    $P101."encoding"($P5005)
    find_lex $P5006, "@codes"
.annotate 'line', 1170
    $P5007 = $P101."readall"(_lex_param_0)
    set $S5001, $P5007
    push $P5006, $S5001
.annotate 'line', 1171
    $P101."close"()
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5008
    pop_eh 
    goto skip_handler_7311610
  catch_handler_7321611:
    .get_results ($P5009) 
    .const 'Sub' $P10001 = 'cuid_210_1361633912.325' 
    capture_lex $P10001
    $P10001($P5009)
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10002
    goto skip_handler_7311610
  skip_handler_7311610:
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_7331612
  catch_handler_7341613:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_7331612
  skip_handler_7331612:
    set $P5013, $P102
    unless $P102 goto if735_end1615 
    die $P102
    set $P5013, $P102
  if735_end1615:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1361633912.325") :anon :lex :outer("cuid_211_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1172
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
.sub "compile" :subid("cuid_121_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1188
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5037 = 'cuid_212_1361633912.325' 
    capture_lex $P5037 
    .lex "%*COMPILING", $P101 
    .lex "$target", $P102 
    .lex "$result", $P103 
    .lex "$stderr", $P104 
    .lex "$stdin", $P105 
    .lex "$stagestats", $P106 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_158 
    .local pmc pkg_viv_tmp_15 
    .local pmc fb_tmp_159 
    .local pmc fb_tmp_160 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1628
    .lex "RETURN", $P107
    unless_null $P101, fallback1630
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5007, $P5008
    set pkg_viv_tmp_15, $P5007
    set fb_tmp_158, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_158
    unless $I5001 goto if741_else1631 
    set $P5009, fb_tmp_158["%COMPILING"]
    set $P5011, $P5009
    goto if741_end1632
  if741_else1631:
    null $P5010
    set $P5011, $P5010
  if741_end1632:
    unless_null $P5011, vivi_7421633
    new $P5012, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5012
    set $P5011, $P5012
  vivi_7421633:
    unless_null $P5011, vivi_7431634
    die "Contextual %*COMPILING not found"
    box $P5013, "Contextual %*COMPILING not found"
    set $P5011, $P5013
  vivi_7431634:
    set $P101, $P5011
  fallback1630:
    set $P101["%?OPTIONS"], _lex_param_2
    set fb_tmp_159, _lex_param_2
    repr_defined $I5002, fb_tmp_159
    unless $I5002 goto if744_else1635 
    set $P5014, fb_tmp_159["target"]
    set $P5016, $P5014
    goto if744_end1636
  if744_else1635:
    null $P5015
    set $P5016, $P5015
  if744_end1636:
    unless_null $P5016, vivi_7451637
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_7451637:
    set $S5002, $P5016
    downcase $S5001, $S5002
    box $P5018, $S5001
    set $P102, $P5018
    set $P103, _lex_param_1
.annotate 'line', 1193
    getinterp $P5019
    $P5020 = $P5019."stderr_handle"()
    set $P104, $P5020
.annotate 'line', 1194
    getinterp $P5021
    $P5022 = $P5021."stdin_handle"()
    set $P105, $P5022
    set fb_tmp_160, _lex_param_2
    repr_defined $I5003, fb_tmp_160
    unless $I5003 goto if746_else1638 
    set $P5023, fb_tmp_160["stagestats"]
    set $P5025, $P5023
    goto if746_end1639
  if746_else1638:
    null $P5024
    set $P5025, $P5024
  if746_end1639:
    unless_null $P5025, vivi_7471640
    nqp_get_sc_object $P5026, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5025, $P5026
  vivi_7471640:
    set $P106, $P5025
.annotate 'line', 1196
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."stages"()
    set $P5027, $P5031
    iter $P5029, $P5031
    new $P5033, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5033, for_handlers1651
    push_eh $P5033
  for_next1652:
    unless $P5029, for_done1654
    shift $P5034, $P5029
  for_redo1653:
    .const 'Sub' $P5032 = 'cuid_212_1361633912.325' 
    capture_lex $P5032
    $P5027 = $P5032($P5034)
    goto for_next1652
  for_handlers1651:
    .get_results ($P5033)
    pop_upto_eh $P5033
    getattribute $P5033, $P5033, 'type'
    eq $P5033, .CONTROL_LOOP_NEXT, for_next1652
    eq $P5033, .CONTROL_LOOP_REDO, for_redo1653
  for_done1654:
    pop_eh 
    find_lex $P5035, "RETURN"
    $P5036 = $P5035($P103)
    goto lexotic_1629
  lexotic_1628:
    .get_results ($P5036)
  lexotic_1629:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1361633912.325") :anon :lex :outer("cuid_121_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    time $N5001
    box $P5003, $N5001
    set $P101, $P5003
.annotate 'line', 1198
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$result"
    find_lex $P5007, "%adverbs"
    set $S5001, _lex_param_0
    $P5008 = $P5004.$S5001($P5006, $P5007 :flat :named)
    store_lex "$result", $P5008
    time $N5003
    set $N5004, $P101
    sub $N5002, $N5003, $N5004
    box $P5009, $N5002
    set $P102, $P5009
    find_lex $P5010, "$stagestats"
    defined $I5001, $P5010
    unless $I5001 goto if748_end1642 
.annotate 'line', 1200
.annotate 'line', 1201
    find_lex $P5011, "$stderr"
    new $P5012, 'ResizablePMCArray'
    push $P5012, _lex_param_0
    push $P5012, $P102
    sprintf $S5002, "Stage %-11s: %7.3f", $P5012
    $P5011."print"($S5002)
    find_lex $P5013, "$stagestats"
    set $I5003, $P5013
    band $I5002, $I5003, 4
    unless $I5002 goto if749_end1644 
    sweep 1
  if749_end1644:
    find_lex $P5014, "$stagestats"
    set $I5005, $P5014
    band $I5004, $I5005, 2
    unless $I5004 goto if750_end1646 
.annotate 'line', 1203
    find_lex $P5015, "$stderr"
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."vmstat"()
    sprintf $S5003, " %11d %11d %9d %9d", $P5018
    $P5019 = $P5015."print"($S5003)
  if750_end1646:
.annotate 'line', 1205
    find_lex $P5020, "$stderr"
    $P5020."print"("\n")
    find_lex $P5021, "$stagestats"
    set $I5007, $P5021
    band $I5006, $I5007, 8
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if751_end1648 
.annotate 'line', 1206
.annotate 'line', 1207
    find_lex $P5022, "$stderr"
    $P5022."print"("continue> ")
.annotate 'line', 1208
    find_lex $P5023, "$stdin"
    $P5024 = $P5023."readline"()
    set $P5025, $P5024
  if751_end1648:
  if748_end1642:
    set $S5004, _lex_param_0
    find_lex $P5027, "$target"
    set $S5005, $P5027
    iseq $I5008, $S5004, $S5005
    set $I5009, $I5008
    unless $I5008 goto if752_end1650 
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
  if752_end1650:
    .return ($I5009) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_122_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1216
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
.sub "parse" :subid("cuid_123_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1220
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5044 = 'cuid_213_1361633912.325' 
    capture_lex $P5044 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_161 
    .local pmc fb_tmp_162 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_164 
    .local pmc fb_tmp_165 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1655
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_161, _lex_param_2
    repr_defined $I5001, fb_tmp_161
    unless $I5001 goto if754_else1659 
    set $P5005, fb_tmp_161["transcode"]
    set $P5007, $P5005
    goto if754_end1660
  if754_else1659:
    null $P5006
    set $P5007, $P5006
  if754_end1660:
    unless_null $P5007, vivi_7551661
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_7551661:
    unless $P5007 goto if753_end1658 
.annotate 'line', 1222
    set fb_tmp_162, _lex_param_2
    repr_defined $I5002, fb_tmp_162
    unless $I5002 goto if756_else1662 
    set $P5013, fb_tmp_162["transcode"]
    set $P5015, $P5013
    goto if756_end1663
  if756_else1662:
    null $P5014
    set $P5015, $P5014
  if756_end1663:
    unless_null $P5015, vivi_7571664
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_7571664:
    set $S5001, $P5015
    split $P5012, " ", $S5001
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next1667:
    unless $P5011, for_done1669
    shift $P5018, $P5011
  for_redo1668:
    .const 'Sub' $P5017 = 'cuid_213_1361633912.325' 
    capture_lex $P5017
    $P5009 = $P5017($P5018)
    goto for_next1667
  for_done1669:
  if753_end1658:
.annotate 'line', 1230
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parsegrammar"()
    set $P102, $P5020
    set fb_tmp_163, _lex_param_2
    repr_defined $I5004, fb_tmp_163
    unless $I5004 goto if761_else1672 
    set $P5021, fb_tmp_163["target"]
    set $P5023, $P5021
    goto if761_end1673
  if761_else1672:
    null $P5022
    set $P5023, $P5022
  if761_end1673:
    unless_null $P5023, vivi_7621674
    nqp_get_sc_object $P5024, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5023, $P5024
  vivi_7621674:
    set $S5002, $P5023
    iseq $I5003, $S5002, "parse"
    if $I5003 goto unless760_end1671 
.annotate 'line', 1232
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."parseactions"()
    set $P103, $P5026
  unless760_end1671:
    set fb_tmp_164, _lex_param_2
    repr_defined $I5005, fb_tmp_164
    unless $I5005 goto if764_else1677 
    set $P5027, fb_tmp_164["rxtrace"]
    set $P5029, $P5027
    goto if764_end1678
  if764_else1677:
    null $P5028
    set $P5029, $P5028
  if764_end1678:
    unless_null $P5029, vivi_7651679
    nqp_get_sc_object $P5030, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5029, $P5030
  vivi_7651679:
    unless $P5029 goto if763_end1676 
.annotate 'line', 1233
    get_how $P5031, $P102
    $P5032 = $P5031."trace-on"($P102)
  if763_end1676:
.annotate 'line', 1234
    $P5033 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5033
    set fb_tmp_165, _lex_param_2
    repr_defined $I5006, fb_tmp_165
    unless $I5006 goto if767_else1682 
    set $P5034, fb_tmp_165["rxtrace"]
    set $P5036, $P5034
    goto if767_end1683
  if767_else1682:
    null $P5035
    set $P5036, $P5035
  if767_end1683:
    unless_null $P5036, vivi_7681684
    nqp_get_sc_object $P5037, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5036, $P5037
  vivi_7681684:
    unless $P5036 goto if766_end1681 
.annotate 'line', 1235
    get_how $P5038, $P102
    $P5039 = $P5038."trace-off"($P102)
  if766_end1681:
    if $P104 goto unless769_end1686 
.annotate 'line', 1236
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."panic"("Unable to parse source")
  unless769_end1686:
    find_lex $P5042, "RETURN"
    $P5043 = $P5042($P104)
    goto lexotic_1656
  lexotic_1655:
    .get_results ($P5043)
  lexotic_1656:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1361633912.325") :anon :lex :outer("cuid_123_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1223
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_7591666
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 1224
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_7581665
  catch_handler_7591666:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_7581665
  skip_handler_7581665:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_124_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1240
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_166 
    .local pmc pkg_lookup_tmp_32 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 1241
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1243
    nqp_get_sc_object $P5004, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_32, $P5004
    get_who $P5005, pkg_lookup_tmp_32
    exists $I5002, $P5005["QAST"]
    unless $I5002 goto if772_else1691 
    get_who $P5007, pkg_lookup_tmp_32
    set $P5006, $P5007["QAST"]
    set $P5009, $P5006
    goto if772_end1692
  if772_else1691:
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5008
  if772_end1692:
    get_who $P5003, $P5009
    set fb_tmp_166, $P5003
    repr_defined $I5001, fb_tmp_166
    unless $I5001 goto if771_else1689 
    set $P5010, fb_tmp_166["Node"]
    set $P5012, $P5010
    goto if771_end1690
  if771_else1689:
    null $P5011
    set $P5012, $P5011
  if771_end1690:
    unless_null $P5012, vivi_7731693
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_7731693:
    $P5014 = $P5012."ACCEPTS"($P101)
    if $P5014 goto unless770_end1688 
.annotate 'line', 1242
    nqp_decontainerize $P5015, _lex_param_0
    get_how $P5016, _lex_param_1
    $P5017 = $P5016."name"(_lex_param_1)
    set $S5002, $P5017
    concat $S5001, "Unable to obtain ast from ", $S5002
    $P5018 = $P5015."panic"($S5001)
  unless770_end1688:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_125_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1247
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1248
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_126_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1251
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    concat $S5009, ".include 'cclass.pasm'\n", ".include 'except_severity.pasm'\n"
    concat $S5008, $S5009, ".include 'except_types.pasm'\n"
    concat $S5007, $S5008, ".include 'iglobals.pasm'\n"
    concat $S5006, $S5007, ".include 'interpinfo.pasm'\n"
    concat $S5005, $S5006, ".include 'iterator.pasm'\n"
    concat $S5004, $S5005, ".include 'sysinfo.pasm'\n"
    concat $S5003, $S5004, ".include 'stat.pasm'\n"
    concat $S5002, $S5003, ".include 'datatypes.pasm'\n"
    concat $S5001, $S5002, ".include 'libpaths.pasm'\n"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_127_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1264
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1265
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
.sub "evalpmc" :subid("cuid_128_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1268
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 1270
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_129_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1273
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if774_else1694 
.annotate 'line', 1274
.annotate 'line', 1275
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    box $P5005, $S5001
    set $P5004, $P5005
    goto if774_end1695
  if774_else1694:
.annotate 'line', 1277
.annotate 'line', 1278
 $P5002 = get_root_global ['parrot'], '_dumper' 
    $P5003 = $P5002(_lex_param_1, _lex_param_2)
    set $P5004, $P5003
  if774_end1695:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_130_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_10, default1698
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5005
  default1698:
    unless _lex_param_1 goto if775_end1697 
.annotate 'line', 1283
.annotate 'line', 1284
    $P5001 = "&say"(_lex_param_1)
  if775_end1697:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_131_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1290
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$parver", $P102 
    .lex "$parrev", $P103 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_167 
    .local pmc fb_tmp_168 
    .local pmc fb_tmp_169 
    .local pmc fb_tmp_170 
    .local pmc fb_tmp_171 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!config"
    set fb_tmp_167, $P5006
    repr_defined $I5001, fb_tmp_167
    unless $I5001 goto if776_else1699 
    set $P5007, fb_tmp_167["version"]
    set $P5009, $P5007
    goto if776_end1700
  if776_else1699:
    null $P5008
    set $P5009, $P5008
  if776_end1700:
    unless_null $P5009, vivi_7771701
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_7771701:
    set $P101, $P5009
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set fb_tmp_169, $P5011
    repr_defined $I5003, fb_tmp_169
    unless $I5003 goto if779_else1704 
    set $P5013, fb_tmp_169["%parrot_config"]
    set $P5015, $P5013
    goto if779_end1705
  if779_else1704:
    null $P5014
    set $P5015, $P5014
  if779_end1705:
    unless_null $P5015, vivi_7801706
    new $P5016, 'Hash'
    set $P5015, $P5016
  vivi_7801706:
    set fb_tmp_168, $P5015
    repr_defined $I5002, fb_tmp_168
    unless $I5002 goto if778_else1702 
    set $P5017, fb_tmp_168["VERSION"]
    set $P5019, $P5017
    goto if778_end1703
  if778_else1702:
    null $P5018
    set $P5019, $P5018
  if778_end1703:
    unless_null $P5019, vivi_7811707
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_7811707:
    set $P102, $P5019
    find_lex $P5023, "$?PACKAGE"
    get_who $P5022, $P5023
    set fb_tmp_171, $P5022
    repr_defined $I5006, fb_tmp_171
    unless $I5006 goto if783_else1711 
    set $P5024, fb_tmp_171["%parrot_config"]
    set $P5026, $P5024
    goto if783_end1712
  if783_else1711:
    null $P5025
    set $P5026, $P5025
  if783_end1712:
    unless_null $P5026, vivi_7841713
    new $P5027, 'Hash'
    set $P5026, $P5027
  vivi_7841713:
    set fb_tmp_170, $P5026
    repr_defined $I5005, fb_tmp_170
    unless $I5005 goto if782_else1709 
    set $P5028, fb_tmp_170["git_describe"]
    set $P5030, $P5028
    goto if782_end1710
  if782_else1709:
    null $P5029
    set $P5030, $P5029
  if782_end1710:
    unless_null $P5030, vivi_7851714
    nqp_get_sc_object $P5031, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5030, $P5031
  vivi_7851714:
    set $P5021, $P5030
    defined $I5004, $P5021
    if $I5004, defor1708
    box $P5032, "(unknown)"
    set $P5021, $P5032
  defor1708:
    set $P103, $P5021
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5035, $P5033, $P5034, "$!language"
    set $S5008, $P5035
    concat $S5007, "This is ", $S5008
    concat $S5006, $S5007, " version "
    set $S5009, $P101
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, " built on parrot "
    set $S5010, $P102
    concat $S5003, $S5004, $S5010
    concat $S5002, $S5003, " revision "
    set $S5011, $P103
    concat $S5001, $S5002, $S5011
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "show-config" :subid("cuid_132_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1298
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_133_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1300
    .param pmc _lex_param_0 
    .const 'Sub' $P5020 = 'cuid_214_1361633912.325' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_215_1361633912.325' 
    capture_lex $P5020 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_172 
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set fb_tmp_172, $P5004
    repr_defined $I5001, fb_tmp_172
    unless $I5001 goto if786_else1715 
    set $P5006, fb_tmp_172["%parrot_config"]
    set $P5008, $P5006
    goto if786_end1716
  if786_else1715:
    null $P5007
    set $P5008, $P5007
  if786_end1716:
    unless_null $P5008, vivi_7871717
    new $P5009, 'Hash'
    set $P5008, $P5009
  vivi_7871717:
    set $P5001, $P5008
    iter $P5003, $P5008
  for_next1718:
    unless $P5003, for_done1720
    shift $P5011, $P5003
  for_redo1719:
    .const 'Sub' $P5010 = 'cuid_214_1361633912.325' 
    capture_lex $P5010
    $P5001 = $P5010($P5011)
    goto for_next1718
  for_done1720:
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5017, $P5015, $P5016, "%!config"
    set $P5012, $P5017
    iter $P5014, $P5017
  for_next1721:
    unless $P5014, for_done1723
    shift $P5019, $P5014
  for_redo1722:
    .const 'Sub' $P5018 = 'cuid_215_1361633912.325' 
    capture_lex $P5018
    $P5012 = $P5018($P5019)
    goto for_next1721
  for_done1723:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1361633912.325") :anon :lex :outer("cuid_133_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1301
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1302
    $P5001 = _lex_param_0."key"()
    set $S5004, $P5001
    concat $S5003, "parrot::", $S5004
    concat $S5002, $S5003, "="
    $P5002 = _lex_param_0."value"()
    set $S5005, $P5002
    concat $S5001, $S5002, $S5005
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1361633912.325") :anon :lex :outer("cuid_133_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1304
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1305
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
.sub "vmstat" :subid("cuid_134_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1310
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    interpinfo $I5001, .INTERPINFO_TOTAL_MEM_ALLOC
    box $P5002, $I5001
    push $P5001, $P5002
    interpinfo $I5002, .INTERPINFO_TOTAL_MEM_USED
    box $P5003, $I5002
    push $P5001, $P5003
    interpinfo $I5003, .INTERPINFO_TOTAL_PMCS
    box $P5004, $I5003
    push $P5001, $P5004
    interpinfo $I5004, .INTERPINFO_ACTIVE_PMCS
    box $P5005, $I5004
    push $P5001, $P5005
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_135_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1318
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_217_1361633912.325' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_11, default1742
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5010
  default1742:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if789_end1727 
    set $P5004, $P101
  if789_end1727:
    unless $P5004 goto if788_end1725 
.annotate 'line', 1322
    $P5006 = $P101."flush"()
  if788_end1725:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if790_end1729 
    .const 'Sub' $P5007 = 'cuid_217_1361633912.325' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if790_end1729:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1361633912.325") :anon :lex :outer("cuid_135_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1325
    .const 'Sub' $P5022 = 'cuid_216_1361633912.325' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_173 
    .local pmc fb_tmp_174 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5005, "$spec"
    set fb_tmp_173, $P5005
    repr_defined $I5001, fb_tmp_173
    unless $I5001 goto if791_else1730 
    set $P5006, fb_tmp_173[0]
    set $P5008, $P5006
    goto if791_end1731
  if791_else1730:
    null $P5007
    set $P5008, $P5007
  if791_end1731:
    unless_null $P5008, vivi_7921732
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_7921732:
    set $P101, $P5008
    find_lex $P5010, "$spec"
    set fb_tmp_174, $P5010
    repr_defined $I5002, fb_tmp_174
    unless $I5002 goto if793_else1733 
    set $P5011, fb_tmp_174[1]
    set $P5013, $P5011
    goto if793_end1734
  if793_else1733:
    null $P5012
    set $P5013, $P5012
  if793_end1734:
    unless_null $P5013, vivi_7941735
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5013, $P5014
  vivi_7941735:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if795_else1736 
    .const 'Sub' $P5015 = 'cuid_216_1361633912.325' 
    capture_lex $P5015
    $P5016 = $P5015()
    goto if795_end1737
  if795_else1736:
.annotate 'line', 1334
.annotate 'line', 1335
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    nqpevent_fh $P5017, $P5019
  if795_end1737:
    set $S5003, $P102
    iseq $I5005, $S5003, ""
    unless $I5005 goto if797_else1740 
    box $P5021, 31
    set $P5020, $P5021
    goto if797_end1741
  if797_else1740:
    set $P5020, $P102
  if797_end1741:
    set $I5006, $P5020
    nqpdebflags $I5004, $I5006
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1361633912.325") :anon :lex :outer("cuid_217_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1329
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    new $P5002, "FileHandle"
    set $P101, $P5002
.annotate 'line', 1331
    find_lex $P5003, "$file"
    $P5004 = $P101."open"($P5003, "w")
    if $P5004 goto unless796_end1739 
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$file"
    set $S5002, $P5007
    concat $S5001, "Cannot write to ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless796_end1739:
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_136_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1342
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_218_1361633912.325' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizableStringArray'
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1745:
    unless $P5005, for_done1747
    shift $P5010, $P5005
  for_redo1746:
    .const 'Sub' $P5009 = 'cuid_218_1361633912.325' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1745
  for_done1747:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1361633912.325") :anon :lex :outer("cuid_136_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1344
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if798_end1744 
.annotate 'line', 1345
.annotate 'line', 1346
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if798_end1744:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_137_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1352
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_219_1361633912.325' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_220_1361633912.325' 
    capture_lex $P5035 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_175 
    .local pmc fb_tmp_176 
    .local pmc fb_tmp_177 
    .local pmc fb_tmp_178 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1748
    .lex "RETURN", $P104
    set fb_tmp_175, _lex_param_2
    repr_defined $I5001, fb_tmp_175
    unless $I5001 goto if800_else1752 
    set $P5004, fb_tmp_175["before"]
    set $P5006, $P5004
    goto if800_end1753
  if800_else1752:
    null $P5005
    set $P5006, $P5005
  if800_end1753:
    unless_null $P5006, vivi_8011754
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5006, $P5007
  vivi_8011754:
    unless $P5006 goto if799_else1750 
.annotate 'line', 1355
    set fb_tmp_176, _lex_param_2
    repr_defined $I5002, fb_tmp_176
    unless $I5002 goto if802_else1755 
    set $P5008, fb_tmp_176["before"]
    set $P5010, $P5008
    goto if802_end1756
  if802_else1755:
    null $P5009
    set $P5010, $P5009
  if802_end1756:
    unless_null $P5010, vivi_8031757
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5010, $P5011
  vivi_8031757:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if799_end1751
  if799_else1750:
    set fb_tmp_177, _lex_param_2
    repr_defined $I5003, fb_tmp_177
    unless $I5003 goto if805_else1760 
    set $P5013, fb_tmp_177["after"]
    set $P5015, $P5013
    goto if805_end1761
  if805_else1760:
    null $P5014
    set $P5015, $P5014
  if805_end1761:
    unless_null $P5015, vivi_8061762
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_8061762:
    unless $P5015 goto if804_else1758 
.annotate 'line', 1358
    set fb_tmp_178, _lex_param_2
    repr_defined $I5004, fb_tmp_178
    unless $I5004 goto if807_else1763 
    set $P5017, fb_tmp_178["after"]
    set $P5019, $P5017
    goto if807_end1764
  if807_else1763:
    null $P5018
    set $P5019, $P5018
  if807_end1764:
    unless_null $P5019, vivi_8081765
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_8081765:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if804_end1759
  if804_else1758:
    .const 'Sub' $P5022 = 'cuid_219_1361633912.325' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if804_end1759:
  if799_end1751:
    new $P5025, 'ResizableStringArray'
    set $P103, $P5025
.annotate 'line', 1368
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1770:
    unless $P5028, for_done1772
    shift $P5032, $P5028
  for_redo1771:
    .const 'Sub' $P5031 = 'cuid_220_1361633912.325' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1770
  for_done1772:
.annotate 'line', 1381
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1749
  lexotic_1748:
    .get_results ($P5034)
  lexotic_1749:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1361633912.325") :anon :lex :outer("cuid_137_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1361
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1362
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1364
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1361633912.325") :anon :lex :outer("cuid_137_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1368
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if809_else1766 
.annotate 'line', 1369
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if810_else1768 
.annotate 'line', 1370
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if810_end1769
  if810_else1768:
.annotate 'line', 1373
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if810_end1769:
    set $P5011, $P5009
    goto if809_end1767
  if809_else1766:
.annotate 'line', 1377
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if809_end1767:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_138_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1384
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_221_1361633912.325' 
    capture_lex $P5027 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_179 
    .local pmc fb_tmp_180 
    .local pmc fb_tmp_181 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_179, $P101
    repr_defined $I5001, fb_tmp_179
    unless $I5001 goto if811_else1773 
    set $P5006, fb_tmp_179[0]
    set $P5008, $P5006
    goto if811_end1774
  if811_else1773:
    null $P5007
    set $P5008, $P5007
  if811_end1774:
    unless_null $P5008, vivi_8121775
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_8121775:
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
    unless $I5003 goto if813_end1777 
.annotate 'line', 1390
    set fb_tmp_180, $P101
    repr_defined $I5004, fb_tmp_180
    unless $I5004 goto if814_else1778 
    set $P5012, fb_tmp_180[0]
    set $P5014, $P5012
    goto if814_end1779
  if814_else1778:
    null $P5013
    set $P5014, $P5013
  if814_end1779:
    unless_null $P5014, vivi_8151780
    nqp_get_sc_object $P5015, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5014, $P5015
  vivi_8151780:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_181, $P101
    repr_defined $I5005, fb_tmp_181
    unless $I5005 goto if816_else1781 
    set $P5017, fb_tmp_181[-1]
    set $P5019, $P5017
    goto if816_end1782
  if816_else1781:
    null $P5018
    set $P5019, $P5018
  if816_end1782:
    unless_null $P5019, vivi_8171783
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_8171783:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if813_end1777:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1786:
    unless $P5024, for_done1788
    shift $P5026, $P5024
  for_redo1787:
    .const 'Sub' $P5025 = 'cuid_221_1361633912.325' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1786
  for_done1788:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1361633912.325") :anon :lex :outer("cuid_138_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1398
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless818_end1785 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless818_end1785:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_139_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1404
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("cache") :optional 
    .param int haz_param_12 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 
    if haz_param_12, default1789
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_3, $P5001
  default1789:

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop target, '!linepos'
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
            unless jpos < eos goto linepos_done_1
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
        linepos_done_1:
        linepos_done:

            # We have C<linepos>, so now we (binary) search the array
            # for the largest element that is not greater than C<pos>.
            .local int lo, hi, line
            lo = 0
            hi = elements linepos
        binary_loop:
            if lo >= hi goto binary_done
            line = lo + hi
            line = line / 2
            $I0 = linepos[line]
            if $I0 > pos goto binary_hi
            lo = line + 1
            goto binary_loop
        binary_hi:
            hi = line
            goto binary_loop
        binary_done:
            inc lo
            .return (lo)
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_140_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1470
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1790
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1790:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_141_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1473
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_142_1361633912.325") :anon :lex :outer("cuid_199_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1474
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1361633912.325") :anon :lex :outer("cuid_184_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1572
    .const 'Sub' $P5006 = 'cuid_143_1361633912.325' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_144_1361633912.325' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_145_1361633912.325' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_146_1361633912.325' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_147_1361633912.325' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_143_1361633912.325' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_144_1361633912.325' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_145_1361633912.325' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_146_1361633912.325' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_147_1361633912.325' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_143_1361633912.325") :anon :lex :outer("cuid_222_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1576
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_144_1361633912.325") :anon :lex :outer("cuid_222_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1581
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_145_1361633912.325") :anon :lex :outer("cuid_222_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1582
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_146_1361633912.325") :anon :lex :outer("cuid_222_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1584
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_147_1361633912.325") :anon :lex :outer("cuid_222_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1588
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    .local pmc fb_tmp_183 
    .local pmc fb_tmp_184 
    .local pmc fb_tmp_185 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if822_else1796 
.annotate 'line', 1591
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options"
    set fb_tmp_183, $P5006
    repr_defined $I5003, fb_tmp_183
    unless $I5003 goto if824_else1800 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_183[$S5002]
    set $P5009, $P5007
    goto if824_end1801
  if824_else1800:
    null $P5008
    set $P5009, $P5008
  if824_end1801:
    unless_null $P5009, vivi_8251802
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_8251802:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if823_else1798 
.annotate 'line', 1592
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options"
    set fb_tmp_184, $P5013
    repr_defined $I5004, fb_tmp_184
    unless $I5004 goto if826_else1803 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_184[$S5003]
    set $P5016, $P5014
    goto if826_end1804
  if826_else1803:
    null $P5015
    set $P5016, $P5015
  if826_end1804:
    unless_null $P5016, vivi_8271805
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5017
  vivi_8271805:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if823_end1799
  if823_else1798:
.annotate 'line', 1594
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options"
    set $S5004, _lex_param_1
    new $P5021, 'ResizablePMCArray'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options"
    set fb_tmp_185, $P5024
    repr_defined $I5005, fb_tmp_185
    unless $I5005 goto if828_else1806 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_185[$S5005]
    set $P5027, $P5025
    goto if828_end1807
  if828_else1806:
    null $P5026
    set $P5027, $P5026
  if828_end1807:
    unless_null $P5027, vivi_8291808
    nqp_get_sc_object $P5028, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5027, $P5028
  vivi_8291808:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if823_end1799:
    set $P5033, $P5029
    goto if822_end1797
  if822_else1796:
.annotate 'line', 1597
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options"
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if822_end1797:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1361633912.325") :anon :lex :outer("cuid_184_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1603
    .const 'Sub' $P5011 = 'cuid_148_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_149_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_150_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_151_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_152_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_153_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_154_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_155_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_156_1361633912.325' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_157_1361633912.325' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_148_1361633912.325' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_149_1361633912.325' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_150_1361633912.325' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_151_1361633912.325' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_152_1361633912.325' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_153_1361633912.325' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_154_1361633912.325' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_155_1361633912.325' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_156_1361633912.325' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_157_1361633912.325' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_148_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1609
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 1610
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1611
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_149_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1615
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_150_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1619
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_224_1361633912.325' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_13, default1812
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1812:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1809:
    unless $P5019, for_done1811
    shift $P5021, $P5019
  for_redo1810:
    .const 'Sub' $P5020 = 'cuid_224_1361633912.325' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1809
  for_done1811:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1361633912.325") :anon :lex :outer("cuid_150_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1625
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1626
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_151_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1629
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_152_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1633
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
.sub "add-spec" :subid("cuid_153_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1638
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_225_1361633912.325' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    unless $I5002 goto if830_else1813 
.annotate 'line', 1642
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1644
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if830_end1814
  if830_else1813:
.annotate 'line', 1645
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1647
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if830_end1814:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1815:
    unless $P5013, for_done1817
    shift $P5015, $P5013
  for_redo1816:
    .const 'Sub' $P5014 = 'cuid_225_1361633912.325' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1815
  for_done1817:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1361633912.325") :anon :lex :outer("cuid_153_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1649
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_154_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1655
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1818
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless832_end1823 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless832_end1823:
    unless $I5003 goto if831_end1821 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if831_end1821:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if833_end1825 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if833_end1825:
    box $P5005, 0
    goto lexotic_1819
  lexotic_1818:
    .get_results ($P5005)
  lexotic_1819:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_155_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1661
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_186 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_186, $P5004
    repr_defined $I5001, fb_tmp_186
    unless $I5001 goto if834_else1826 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_186[$S5001]
    set $P5007, $P5005
    goto if834_end1827
  if834_else1826:
    null $P5006
    set $P5007, $P5006
  if834_end1827:
    unless_null $P5007, vivi_8351828
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_8351828:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_156_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1666
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_187 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_187, $P5004
    repr_defined $I5001, fb_tmp_187
    unless $I5001 goto if836_else1829 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_187[$S5001]
    set $P5007, $P5005
    goto if836_end1830
  if836_else1829:
    null $P5006
    set $P5007, $P5006
  if836_end1830:
    unless_null $P5007, vivi_8371831
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_8371831:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_157_1361633912.325") :anon :lex :outer("cuid_223_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1671
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_226_1361633912.325' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_227_1361633912.325' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_229_1361633912.325' 
    capture_lex $P5031 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_190 
    .local pmc pkg_lookup_tmp_35 
    .local pmc pkg_lookup_tmp_34 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_226_1361633912.325' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_227_1361633912.325' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1845
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1675
    nqp_get_sc_object $P5009, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    set pkg_lookup_tmp_34, $P5009
    get_who $P5010, pkg_lookup_tmp_34
    exists $I5002, $P5010["HLL"]
    unless $I5002 goto if845_else1849 
    get_who $P5012, pkg_lookup_tmp_34
    set $P5011, $P5012["HLL"]
    set $P5014, $P5011
    goto if845_end1850
  if845_else1849:
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5014, $P5013
  if845_end1850:
    set pkg_lookup_tmp_35, $P5014
    get_who $P5015, pkg_lookup_tmp_35
    exists $I5003, $P5015["CommandLine"]
    unless $I5003 goto if846_else1851 
    get_who $P5017, pkg_lookup_tmp_35
    set $P5016, $P5017["CommandLine"]
    set $P5019, $P5016
    goto if846_end1852
  if846_else1851:
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5018
  if846_end1852:
    get_who $P5008, $P5019
    set fb_tmp_190, $P5008
    repr_defined $I5001, fb_tmp_190
    unless $I5001 goto if844_else1847 
    set $P5020, fb_tmp_190["Result"]
    set $P5022, $P5020
    goto if844_end1848
  if844_else1847:
    null $P5021
    set $P5022, $P5021
  if844_end1848:
    unless_null $P5022, vivi_8471853
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_8471853:
    $P5024 = $P5022."new"()
    set $P103, $P5024
.annotate 'line', 1676
    $P103."init"()
  while848_test1854:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5004, $N5002, $N5003
    box $P5028, $I5004
    set $P5027, $P5028
    unless $I5004 goto while848_done1858 
  while848_redo1856:
    .const 'Sub' $P5025 = 'cuid_229_1361633912.325' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
    goto while848_test1854 
  while848_done1858:
    find_lex $P5029, "RETURN"
    $P5030 = $P5029($P103)
    goto lexotic_1846
  lexotic_1845:
    .get_results ($P5030)
  lexotic_1846:
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_226_1361633912.325") :anon :lex :outer("cuid_157_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1679
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_5 
    .local pmc fb_tmp_188 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if838_else1832 
.annotate 'line', 1680
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if838_end1833
  if838_else1832:
.annotate 'line', 1682
    find_lex $P5004, "$i"
    set tmp_5, $P5004
    set $N5006, tmp_5
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5004, "@args"
    set fb_tmp_188, $P5004
    repr_defined $I5002, fb_tmp_188
    unless $I5002 goto if839_else1834 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_188[$I5003]
    set $P5008, $P5005
    goto if839_end1835
  if839_else1834:
    null $P5007
    set $P5008, $P5007
  if839_end1835:
    unless_null $P5008, vivi_8401836
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_8401836:
    set $P5010, $P5008
  if838_end1833:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_227_1361633912.325") :anon :lex :outer("cuid_157_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1690
    .local pmc tmp_6 
    .local pmc fb_tmp_189 
    .local pmc tmp_7 
    find_lex $P5001, "$i"
    set tmp_6, $P5001
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while841_test1837:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while841_done1841 
  while841_redo1839:
.annotate 'line', 1692
.annotate 'line', 1693
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_189, $P5004
    repr_defined $I5002, fb_tmp_189
    unless $I5002 goto if842_else1842 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_189[$I5003]
    set $P5008, $P5005
    goto if842_end1843
  if842_else1842:
    null $P5007
    set $P5008, $P5007
  if842_end1843:
    unless_null $P5008, vivi_8431844
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_8431844:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_7, $P5010
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_7
    goto while841_test1837 
  while841_done1841:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1361633912.325") :anon :lex :outer("cuid_157_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1698
    .const 'Sub' $P5033 = 'cuid_228_1361633912.325' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_232_1361633912.325' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_191 
    .local pmc fb_tmp_198 
    .local pmc tmp_9 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_191, $P5002
    repr_defined $I5001, fb_tmp_191
    unless $I5001 goto if849_else1859 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_191[$I5002]
    set $P5006, $P5003
    goto if849_end1860
  if849_else1859:
    null $P5005
    set $P5006, $P5005
  if849_end1860:
    unless_null $P5006, vivi_8501861
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5006, $P5007
  vivi_8501861:
    set $P101, $P5006
.annotate 'line', 1700
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if851_else1862 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if852_else1864 
    .const 'Sub' $P5011 = 'cuid_228_1361633912.325' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if852_end1865
  if852_else1864:
    .const 'Sub' $P5013 = 'cuid_232_1361633912.325' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if852_end1865:
    goto if851_end1863
  if851_else1862:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper"
    set fb_tmp_198, $P5019
    repr_defined $I5004, fb_tmp_198
    unless $I5004 goto if883_else1922 
    set $S5003, $P101
    set $P5020, fb_tmp_198[$S5003]
    set $P5022, $P5020
    goto if883_end1923
  if883_else1922:
    null $P5021
    set $P5022, $P5021
  if883_end1923:
    unless_null $P5022, vivi_8841924
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_8841924:
    unless $P5022 goto if882_else1920 
.annotate 'line', 1759
.annotate 'line', 1760
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if882_end1921
  if882_else1920:
.annotate 'line', 1761
.annotate 'line', 1762
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg"
    set $P5031, $P5029
    unless $P5029 goto if885_end1926 
.annotate 'line', 1763
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if885_end1926:
    set $P5032, $P5031
  if882_end1921:
  if851_end1863:
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
.sub "" :subid("cuid_228_1361633912.325") :anon :lex :outer("cuid_229_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1701
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_192 
    .local pmc fb_tmp_193 
    .local pmc fb_tmp_194 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_192, $P5005
    repr_defined $I5001, fb_tmp_192
    unless $I5001 goto if853_else1866 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_192[$I5002]
    set $P5009, $P5006
    goto if853_end1867
  if853_else1866:
    null $P5008
    set $P5009, $P5008
  if853_end1867:
    unless_null $P5009, vivi_8541868
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_8541868:
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
    unless $I5004 goto if855_else1869 
.annotate 'line', 1708
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
    goto if855_end1870
  if855_else1869:
.annotate 'line', 1712
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if856_end1872 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if856_end1872:
  if855_end1870:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options"
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless857_end1874 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless857_end1874:
.annotate 'line', 1717
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if859_end1878 
    set $P5032, $P104
  if859_end1878:
    unless $P5032 goto if858_end1876 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if858_end1876:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if861_end1882 
.annotate 'line', 1718
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if861_end1882:
    unless $P5038 goto if860_end1880 
.annotate 'line', 1719
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if860_end1880:
.annotate 'line', 1721
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper"
    set fb_tmp_193, $P5045
    repr_defined $I5010, fb_tmp_193
    unless $I5010 goto if863_else1885 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_193[$S5016]
    set $P5048, $P5046
    goto if863_end1886
  if863_else1885:
    null $P5047
    set $P5048, $P5047
  if863_end1886:
    unless_null $P5048, vivi_8641887
    nqp_get_sc_object $P5049, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5048, $P5049
  vivi_8641887:
    set $P5059, $P5048
    unless $P5048 goto if862_end1884 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_194, $P5050
    repr_defined $I5011, fb_tmp_194
    unless $I5011 goto if865_else1888 
    set $P5052, fb_tmp_194["slurp-rest"]
    set $P5054, $P5052
    goto if865_end1889
  if865_else1888:
    null $P5053
    set $P5054, $P5053
  if865_end1889:
    unless_null $P5054, vivi_8671891
    nqp_get_sc_object $P5057, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_8661890
    nqp_get_sc_object $P5058, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5055, $P5058
  vivi_8661890:
    set $P5054, $P5055
  vivi_8671891:
    set $P5059, $P5054
  if862_end1884:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1361633912.325") :anon :lex :outer("cuid_229_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1723
    .const 'Sub' $P5036 = 'cuid_231_1361633912.325' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_195 
    .local pmc fb_tmp_196 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    unless $I5002 goto if868_else1892 
.annotate 'line', 1726
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set fb_tmp_195, $P5009
    repr_defined $I5003, fb_tmp_195
    unless $I5003 goto if870_else1896 
    set $S5004, $P101
    set $P5010, fb_tmp_195[$S5004]
    set $P5012, $P5010
    goto if870_end1897
  if870_else1896:
    null $P5011
    set $P5012, $P5011
  if870_end1897:
    unless_null $P5012, vivi_8711898
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_8711898:
    if $P5012 goto unless869_end1895 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless869_end1895:
.annotate 'line', 1729
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if872_else1899 
.annotate 'line', 1730
    find_lex $P5018, "$result"
.annotate 'line', 1731
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if872_end1900
  if872_else1899:
.annotate 'line', 1732
.annotate 'line', 1733
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if872_end1900:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper"
    set fb_tmp_196, $P5026
    repr_defined $I5004, fb_tmp_196
    unless $I5004 goto if874_else1903 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_196[$S5009]
    set $P5029, $P5027
    goto if874_end1904
  if874_else1903:
    null $P5028
    set $P5029, $P5028
  if874_end1904:
    unless_null $P5029, vivi_8751905
    nqp_get_sc_object $P5030, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5029, $P5030
  vivi_8751905:
    set $P5032, $P5029
    unless $P5029 goto if873_end1902 
.annotate 'line', 1735
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if873_end1902:
    set $P5035, $P5032
    goto if868_end1893
  if868_else1892:
    .const 'Sub' $P5033 = 'cuid_231_1361633912.325' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if868_end1893:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1361633912.325") :anon :lex :outer("cuid_232_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1736
    .const 'Sub' $P5009 = 'cuid_230_1361633912.325' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while876_handlers1909
    push_eh $P5007
  while876_test1906:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while876_done1910 
  while876_redo1908:
    .const 'Sub' $P5004 = 'cuid_230_1361633912.325' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while876_test1906 
  while876_handlers1909:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while876_test1906
    eq $P5007, .CONTROL_LOOP_REDO, while876_redo1908
  while876_done1910:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1361633912.325") :anon :lex :outer("cuid_231_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1738
    .lex "$o", $P101 
    .local pmc fb_tmp_197 
    .local pmc tmp_8 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    nqp_get_sc_object $P5007, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options"
    set fb_tmp_197, $P5008
    repr_defined $I5002, fb_tmp_197
    unless $I5002 goto if878_else1913 
    set $S5003, $P101
    set $P5009, fb_tmp_197[$S5003]
    set $P5011, $P5009
    goto if878_end1914
  if878_else1913:
    null $P5010
    set $P5011, $P5010
  if878_end1914:
    unless_null $P5011, vivi_8791915
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_8791915:
    unless $P5011 goto if877_else1911 
.annotate 'line', 1740
.annotate 'line', 1741
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if880_else1916 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if881_end1919 
.annotate 'line', 1742
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if881_end1919:
.annotate 'line', 1745
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
    goto if880_end1917
  if880_else1916:
.annotate 'line', 1748
.annotate 'line', 1749
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if880_end1917:
    goto if877_end1912
  if877_else1911:
.annotate 'line', 1752
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if877_end1912:
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
.sub "" :subid("cuid_233_1361633912.325") :anon :lex :outer("cuid_184_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1793
    .const 'Sub' $P5014 = 'cuid_158_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_159_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_160_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_161_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_162_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_163_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_164_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_165_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_166_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_167_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_168_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_169_1361633912.325' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_170_1361633912.325' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_158_1361633912.325' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_159_1361633912.325' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_160_1361633912.325' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_161_1361633912.325' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_162_1361633912.325' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_163_1361633912.325' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_164_1361633912.325' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_165_1361633912.325' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_166_1361633912.325' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_167_1361633912.325' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_168_1361633912.325' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_169_1361633912.325' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_170_1361633912.325' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_158_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1824
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_14 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    .local pmc fb_tmp_199 
    .local pmc fb_tmp_200 
    .local pmc fb_tmp_201 
    .local pmc pkg_viv_tmp_16 
    if haz_param_14, default1938
    box $P5046, "<unknown>"
    set _lex_param_2, $P5046
  default1938:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    find_dynamic_lex $P5017, "%*COMPILING"
    unless_null $P5017, fallback1931
    nqp_get_sc_object $P5019, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    get_who $P5018, $P5019
    set pkg_viv_tmp_16, $P5018
    set fb_tmp_201, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_201
    unless $I5003 goto if888_else1932 
    set $P5020, fb_tmp_201["%COMPILING"]
    set $P5022, $P5020
    goto if888_end1933
  if888_else1932:
    null $P5021
    set $P5022, $P5021
  if888_end1933:
    unless_null $P5022, vivi_8891934
    new $P5023, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5023
    set $P5022, $P5023
  vivi_8891934:
    unless_null $P5022, vivi_8901935
    die "Contextual %*COMPILING not found"
    box $P5024, "Contextual %*COMPILING not found"
    set $P5022, $P5024
  vivi_8901935:
    set $P5017, $P5022
  fallback1931:
    set fb_tmp_200, $P5017
    repr_defined $I5002, fb_tmp_200
    unless $I5002 goto if887_else1929 
    set $P5025, fb_tmp_200["%?OPTIONS"]
    set $P5027, $P5025
    goto if887_end1930
  if887_else1929:
    null $P5026
    set $P5027, $P5026
  if887_end1930:
    unless_null $P5027, vivi_8911936
    nqp_get_sc_object $P5028, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5027, $P5028
  vivi_8911936:
    set fb_tmp_199, $P5027
    repr_defined $I5001, fb_tmp_199
    unless $I5001 goto if886_else1927 
    set $P5029, fb_tmp_199["precomp"]
    set $P5031, $P5029
    goto if886_end1928
  if886_else1927:
    null $P5030
    set $P5031, $P5030
  if886_end1928:
    unless_null $P5031, vivi_8921937
    nqp_get_sc_object $P5032, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5031, $P5032
  vivi_8921937:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5031
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    box $P5035, 0
    repr_bind_attr_obj $P5033, $P5034, "$!num_code_refs", $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    new $P5038, 'ResizablePMCArray'
    repr_bind_attr_obj $P5036, $P5037, "$!code_ref_blocks", $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc"
    $P5042 = $P5041."set_description"(_lex_param_2)
    nqp_decontainerize $P5043, _lex_param_0
    nqp_get_sc_object $P5044, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!sc"
    nqp_push_compiling_sc $P5045
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_159_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1841
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .local pmc fb_tmp_202 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!addr_to_slot"
    set fb_tmp_202, $P5004
    repr_defined $I5001, fb_tmp_202
    unless $I5001 goto if893_else1939 
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5005, fb_tmp_202[$S5001]
    set $P5007, $P5005
    goto if893_end1940
  if893_else1939:
    null $P5006
    set $P5007, $P5006
  if893_end1940:
    unless_null $P5007, vivi_8941941
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_8941941:
    set $P101, $P5007
    defined $I5003, $P101
    if $I5003 goto unless895_end1943 
.annotate 'line', 1843
    box $P5009, "slot_for_object called on object not in context"
    die $P5009
  unless895_end1943:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_160_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1850
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_161_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1859
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 1862
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_162_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1868
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_163_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1873
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_164_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1879
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_16 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_15, default1950
    nqp_get_sc_object $P5015, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5015
  default1950:
    if haz_param_16, default1951
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5016
  default1951:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if896_else1944 
.annotate 'line', 1880
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if897_end1947 
.annotate 'line', 1881
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if897_end1947:
    set $P5014, $P5008
    goto if896_end1945
  if896_else1944:
.annotate 'line', 1883
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if898_end1949 
.annotate 'line', 1884
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if898_end1949:
    set $P5014, $P5013
  if896_end1945:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_165_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1890
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_17, default1958
    nqp_get_sc_object $P5015, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5015
  default1958:
    if haz_param_18, default1959
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5016
  default1959:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if899_else1952 
.annotate 'line', 1891
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if900_end1955 
.annotate 'line', 1892
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if900_end1955:
    set $P5014, $P5008
    goto if899_end1953
  if899_else1952:
.annotate 'line', 1894
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if901_end1957 
.annotate 'line', 1895
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if901_end1957:
    set $P5014, $P5013
  if899_end1953:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_166_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1900
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_167_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1905
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_168_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1909
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_169_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1914
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_170_1361633912.325") :anon :lex :outer("cuid_233_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1919
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1361633912.325") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_234_1361633912.325' 
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
    .const 'Sub' $P5001 = "cuid_184_1361633912.325" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\gen\\NQPHLL.pm")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "QAST"
    push $P5004, "QRegex"
    push $P5004, "NQPCursorRole"
    push $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012"
    push $P5004, "src\\stage2\\QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421"
    push $P5004, "src\\stage2\\NQPCORE.setting"
    push $P5004, "bless"
    push $P5004, "BUILDALL"
    push $P5004, "new"
    push $P5004, "Str"
    push $P5004, "Numeric"
    push $P5004, "Int"
    push $P5004, "defined"
    push $P5004, "ACCEPTS"
    push $P5004, "isa"
    push $P5004, "__dump"
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
    push $P5004, "ints_to_string"
    push $P5004, "CTXSAVE"
    push $P5004, "SET_BLOCK_OUTER_CTX"
    push $P5004, "BUILD"
    push $P5004, "language"
    push $P5004, "compiler"
    push $P5004, "config"
    push $P5004, "load_module"
    push $P5004, "autoprint"
    push $P5004, "interactive"
    push $P5004, "interactive_result"
    push $P5004, "interactive_exception"
    push $P5004, "eval"
    push $P5004, "ctxsave"
    push $P5004, "stages"
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
    push $P5004, "compile"
    push $P5004, "start"
    push $P5004, "past"
    push $P5004, "post"
    push $P5004, "pirbegin"
    push $P5004, "pir"
    push $P5004, "evalpmc"
    push $P5004, "dumper"
    push $P5004, "usage"
    push $P5004, "version"
    push $P5004, "show-config"
    push $P5004, "verbose-config"
    push $P5004, "vmstat"
    push $P5004, "nqpevent"
    push $P5004, "removestage"
    push $P5004, "addstage"
    push $P5004, "parse_name"
    push $P5004, "lineof"
    push $P5004, "user-progname"
    push $P5004, "cli-options"
    push $P5004, "cli-arguments"
    push $P5004, "@!stages"
    push $P5004, "$!parsegrammar"
    push $P5004, "$!parseactions"
    push $P5004, "@!cmdoptions"
    push $P5004, "$!usage"
    push $P5004, "$!compiler_progname"
    push $P5004, "$!language"
    push $P5004, "%!config"
    push $P5004, "$!user_progname"
    push $P5004, "@!cli-arguments"
    push $P5004, "%!cli-options"
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
    push $P5004, ""
    push $P5004, "OPER"
    push $P5004, "alt_nfa__1_1361633912.457"
    push $P5004, "alt_nfa__2_1361633912.489"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1361633912.557"
    push $P5004, "alt_nfa__4_1361633912.557"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1361633912.577"
    push $P5004, "Ee"
    push $P5004, "alt_nfa__6_1361633912.653"
    push $P5004, "alt_nfa__7_1361633912.666"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1361633912.703"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1361633912.743"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "46A27B8E73DBD8EFB3FE1AA531DA4577B21729DD-1361633900.785"
    push $P5004, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5004, "HLL::Grammar"
    push $P5004, "shared"
    push $P5004, "match"
    push $P5004, "name"
    push $P5004, "bstack"
    push $P5004, "cstack"
    push $P5004, "regexsub"
    push $P5004, "restart"
    push $P5004, "HLL::Actions"
    push $P5004, "HLL::Compiler"
    push $P5004, "HLL::CommandLine::Result"
    push $P5004, "HLL::CommandLine::Parser"
    push $P5004, "HLL::World"
    push $P5004, "CompileTimeValue"
    push $P5004, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361633906.303"
    push $P5004, "src\\stage2\\QASTNode.nqp"
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
    push $P5004, "Actions"
    push $P5004, "Compiler"
    push $P5004, "CommandLine"
    push $P5004, "World"
    push $P5004, "Result"
    push $P5004, "Parser"
    .const 'Sub' $P5005 = 'cuid_234_1361633912.325' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAAFAAAAaAAAAA0AAADQAAAA8B8AAOgAAABwLgAAKs4AAAAAAAAqzgAAAAAAACrOAAAqzgAAAAAAAAUAAAAGAAAADgAAAA8AAAALAQAAAAAAAA4BAAAPAQAAHgEAAB8BAAABAAAAAAAAAAEAAAAaAQAAAQAAANIBAAABAAAAfAIAAAEAAAB6CwAAAQAAAKwOAAABAAAAwhMAAAEAAACcFQAAAQAAAOoXAAABAAAA8BoAAAEAAACyHAAAAQAAAGodAAABAAAAWh4AAAAAAACzAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAtAAAAAMAAAACAAAAAAC1AAAABAAAAAIAAQAAACEAAAAHAAAAAgABAAAAVgAAAAgAAAACAAEAAABjAAAACQAAAAIAAQAAAGkAAAAKAAAAAgABAAAAbQAAAAsAAAACAAAAAAC2AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAC3AAAAAAAAAAEAAAAKAAEAAAAMAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAADAP////////////////////8AAAAAuAAAAAAAAAACAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMA/////////////////////wAAAAC5AAAAAAAAAAMAAAAKAAAAAAAKAH8AAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAAGgAAAAIAAQAAAGQAAAAbAAAAAgABAAAAZQAAABwAAAACAAEAAABmAAAAHQAAAAIAAQAAAGcAAAAeAAAAAgABAAAAaAAAAB8AAAACAAEAAAB6AAAAIAAAAAIAAQAAAHsAAAAhAAAAAgABAAAAfAAAACIAAAACAAEAAAB9AAAAIwAAAAIAAQAAAH4AAAAkAAAAAgABAAAAfwAAACUAAAACAAEAAACAAAAAJgAAAAIAAQAAAIEAAAAnAAAAAgABAAAAggAAACgAAAACAAEAAACDAAAAKQAAAAIAAQAAAIQAAAAqAAAAAgABAAAAhQAAACsAAAACAAEAAACGAAAALAAAAAIAAQAAAIcAAAAtAAAAAgABAAAAiAAAAC4AAAACAAEAAACJAAAALwAAAAIAAQAAAIoAAAAwAAAAAgABAAAAiwAAADEAAAACAAEAAACMAAAAMgAAAAIAAQAAAI0AAAAzAAAAAgABAAAAjgAAADQAAAACAAEAAACPAAAANQAAAAIAAQAAAJAAAAA2AAAAAgABAAAAkQAAADcAAAACAAEAAACSAAAAOAAAAAIAAQAAAJMAAAA5AAAAAgABAAAAlAAAADoAAAACAAEAAACVAAAAOwAAAAIAAQAAAJYAAAA8AAAAAgABAAAAlwAAAD0AAAACAAEAAACYAAAAPgAAAAIAAQAAAJkAAAA/AAAAAgABAAAAmgAAAEAAAAACAAEAAACbAAAAQQAAAAIAAQAAAJwAAABCAAAAAgABAAAAnQAAAEMAAAACAAEAAACeAAAARAAAAAIAAQAAAJ8AAABFAAAAAgABAAAAoAAAAEYAAAACAAEAAAChAAAARwAAAAIAAQAAAKIAAABIAAAAAgABAAAAowAAAEkAAAACAAEAAACkAAAASgAAAAIAAQAAAKUAAABLAAAAAgABAAAApgAAAEwAAAACAAEAAACnAAAATQAAAAIAAQAAAKgAAABOAAAAAgABAAAAqQAAAE8AAAACAAEAAACqAAAAUAAAAAIAAQAAAKsAAABRAAAAAgAAAAAANgAAAFIAAAACAAAAAAAEAAAAUwAAAAIAAAAAAAUAAABUAAAAAgAAAAAABgAAAFUAAAACAAAAAAAHAAAAVgAAAAIAAAAAAAgAAABXAAAAAgAAAAAACQAAAFgAAAACAAAAAAAKAAAAWQAAAAIAAAAAAAsAAABaAAAAAgAAAAAADAAAAFsAAAACAAAAAAANAAAAXAAAAAIAAAAAAA4AAABdAAAAAgAAAAAADwAAAF4AAAACAAAAAAAQAAAAXwAAAAIAAAAAABEAAABgAAAAAgAAAAAAEgAAAGEAAAACAAAAAAATAAAAYgAAAAIAAAAAABQAAABjAAAAAgAAAAAAFQAAAGQAAAACAAAAAAAWAAAAZQAAAAIAAAAAABcAAABmAAAAAgAAAAAAGAAAAGcAAAACAAAAAAAZAAAAaAAAAAIAAAAAABoAAABpAAAAAgAAAAAAGwAAAGoAAAACAAAAAAAcAAAAawAAAAIAAAAAAB0AAABsAAAAAgAAAAAAHgAAAG0AAAACAAAAAAAfAAAAbgAAAAIAAAAAACAAAABvAAAAAgAAAAAAIQAAAHAAAAACAAAAAAAiAAAAcQAAAAIAAAAAACMAAAByAAAAAgAAAAAAJAAAAHMAAAACAAAAAAAlAAAAdAAAAAIAAAAAACYAAAB1AAAAAgAAAAAAJwAAAHYAAAACAAAAAAAoAAAAdwAAAAIAAAAAACkAAAB4AAAAAgAAAAAAKgAAAHkAAAACAAAAAAArAAAAegAAAAIAAAAAACwAAAB7AAAAAgAAAAAALQAAAHwAAAACAAAAAAAwAAAAfQAAAAIAAAAAADIAAAB+AAAAAgAAAAAAMwAAAH8AAAACAAAAAAA0AAAAgAAAAAIAAAAAADUAAACBAAAAAgAAAAAANwAAAIIAAAACAAAAAAA4AAAAgwAAAAIAAAAAADkAAACEAAAAAgAAAAAAOgAAAIUAAAACAAAAAAA7AAAAhgAAAAIAAAAAADwAAACHAAAAAgAAAAAAPQAAAIgAAAACAAAAAAA+AAAAiQAAAAIAAAAAAD8AAACKAAAAAgAAAAAAQAAAAIsAAAACAAAAAABBAAAAjAAAAAIAAAAAAEIAAACNAAAAAgAAAAAAQwAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAADAAAAAgABAAAAYwAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABlAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGQAAAAEAAQACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGQAAAAMAAgABAAAAYwAAAAoACQAAAI4AAAAEAAAAAAAAAAAAjwAAAAQAAQAAAAAAAACQAAAABAACAAAAAAAAAJEAAAAEAAMAAAAAAAAAkgAAAAQABAAAAAAAAACTAAAABAAFAAAAAAAAAJQAAAAEAAYAAAAAAAAAlQAAAAQABwAAAAAAAACWAAAABAAIAAAAAAAAAAIAAAAAAAMAAAADAP////////////////////8AAAAAugAAAAAAAABEAAAACgAAAAAACgAsAAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAmAAAAGAAAAAIAAgAAACgAAAAZAAAAAgACAAAAKQAAAJcAAAACAAAAAABFAAAAmAAAAAIAAAAAAEYAAACZAAAAAgAAAAAARwAAAIcAAAACAAAAAABIAAAAWgAAAAIAAAAAAEkAAABTAAAAAgAAAAAASgAAAF4AAAACAAAAAABLAAAAXwAAAAIAAAAAAEwAAABrAAAAAgAAAAAATQAAAGwAAAACAAAAAABOAAAAYwAAAAIAAAAAAE8AAABlAAAAAgAAAAAAUAAAAGcAAAACAAAAAABRAAAAaQAAAAIAAAAAAFIAAACCAAAAAgAAAAAAUwAAAGEAAAACAAAAAABUAAAAYgAAAAIAAAAAAFUAAABvAAAAAgAAAAAAVgAAAHAAAAACAAAAAABXAAAAcQAAAAIAAAAAAFgAAAByAAAAAgAAAAAAWQAAAHMAAAACAAAAAABaAAAAdAAAAAIAAAAAAFsAAAB1AAAAAgAAAAAAXAAAAHYAAAACAAAAAABdAAAAdwAAAAIAAAAAAF4AAAB4AAAAAgAAAAAAXwAAAHkAAAACAAAAAABgAAAAegAAAAIAAAAAAGEAAAB7AAAAAgAAAAAAYgAAAHwAAAACAAAAAABjAAAAfQAAAAIAAAAAAGQAAAB+AAAAAgAAAAAAZQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABEAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAARAAAAAMA/////////////////////wAAAAC7AAAAAAAAAGYAAAAKAAAAAAAKADgAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAAmgAAAAIAAAAAAGcAAACbAAAAAgAAAAAAaAAAAJwAAAACAAAAAABpAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACkAAAAAgAAAAAAcQAAAIAAAAACAAAAAAByAAAApQAAAAIAAAAAAHMAAACmAAAAAgAAAAAAdAAAAKcAAAACAAAAAAB1AAAAqAAAAAIAAAAAAHYAAACpAAAAAgAAAAAAdwAAAKoAAAACAAAAAAB4AAAAqwAAAAIAAAAAAHkAAACsAAAAAgAAAAAAegAAAK0AAAACAAAAAAB7AAAArgAAAAIAAAAAAHwAAACvAAAAAgAAAAAAfQAAALAAAAACAAAAAAB+AAAAsQAAAAIAAAAAAH8AAAAcAAAAAgAAAAAAgAAAALIAAAACAAAAAACBAAAAswAAAAIAAAAAAIIAAAC0AAAAAgAAAAAAgwAAALUAAAACAAAAAACEAAAAtgAAAAIAAAAAAIUAAAC3AAAAAgAAAAAAhgAAALgAAAACAAAAAACHAAAAuQAAAAIAAAAAAIgAAAC6AAAAAgAAAAAAiQAAALsAAAACAAAAAACKAAAAvAAAAAIAAAAAAIsAAAC9AAAAAgAAAAAAjAAAAL4AAAACAAAAAACNAAAAvwAAAAIAAAAAAI4AAADAAAAAAgAAAAAAjwAAAMEAAAACAAAAAACQAAAAwgAAAAIAAAAAAJEAAADDAAAAAgAAAAAAkgAAAMQAAAACAAAAAACTAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAGYAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAIAAgAAABkAAAACAAIAAAAZAAAAAQACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAABAAIAAgAAABkAAAABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAGYAAAAKAAsAAADFAAAABAAAAAAAAAAAAMYAAAAEAAEAAAAAAAAAxwAAAAQAAgAAAAAAAADIAAAABAADAAAAAAAAAMkAAAAEAAQAAAAAAAAAygAAAAQABQAAAAAAAADLAAAABAAGAAAAAAAAAMwAAAAEAAcAAAAAAAAAzQAAAAQACAAAAAAAAADOAAAABAAJAAAAAAAAAM8AAAAEAAoAAAAAAAAA/////////////////////wAAAAC8AAAAAAAAAJQAAAAKAAAAAAAKABAAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAA0AAAAAIAAAAAAJUAAADRAAAAAgAAAAAAlgAAANIAAAACAAAAAACXAAAA0wAAAAIAAAAAAJgAAADUAAAAAgAAAAAAmQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACUAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAJQAAAAKAAIAAADVAAAABAAAAAAAAAAAANYAAAAEAAEAAAAAAAAA/////////////////////wAAAAC9AAAAAAAAAJoAAAAKAAAAAAAKABQAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgAAAAAAmwAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAA1wAAAAIAAAAAAJwAAACaAAAAAgAAAAAAnQAAANgAAAACAAAAAACeAAAA2QAAAAIAAAAAAJ8AAADaAAAAAgAAAAAAoAAAANsAAAACAAAAAAChAAAA3AAAAAIAAAAAAKIAAADdAAAAAgAAAAAAowAAABwAAAACAAAAAACkAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAJoAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAEAAgACAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAACaAAAACgAEAAAA3gAAAAQAAAAAAAAAAADWAAAABAABAAAAAAAAAN8AAAAEAAIAAAAAAAAA4AAAAAQAAwAAAAAAAAD/////////////////////AAAAAL4AAAAAAAAApQAAAAoAAAAAAAoAGAAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAAGQAAAAIAAgAAACkAAACaAAAAAgAAAAAApgAAAOEAAAACAAAAAACnAAAA4gAAAAIAAAAAAKgAAADjAAAAAgAAAAAAqQAAAOQAAAACAAAAAACqAAAA5QAAAAIAAAAAAKsAAADmAAAAAgAAAAAArAAAAOcAAAACAAAAAACtAAAA6AAAAAIAAAAAAK4AAADpAAAAAgAAAAAArwAAAOoAAAACAAAAAACwAAAA6wAAAAIAAAAAALEAAADsAAAAAgAAAAAAsgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAClAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAABAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAApQAAAAoACAAAAO0AAAAEAAAAAAAAAAAA7gAAAAQAAQAAAAAAAADvAAAABAACAAAAAAAAAPAAAAAEAAMAAAAAAAAA8QAAAAQABAAAAAAAAADyAAAABAAFAAAAAAAAAPMAAAAEAAYAAAAAAAAA9AAAAAQABwAAAAAAAAD/////////////////////AAAAAOMAAAAAAAAAtAAAAAoAFAAAAB0BAAACAAUAAAADAAAAIAEAAAIABQAAAAgAAAAhAQAAAgAFAAAADAAAACIBAAACAAUAAAAiAAAAIwEAAAIABQAAACoAAAAkAQAAAgAFAAAALwAAACUBAAACAAUAAAA0AAAAJgEAAAIABQAAADkAAAAnAQAAAgAFAAAAPQAAACgBAAACAAUAAABCAAAAKQEAAAIABQAAAEcAAAAqAQAAAgAFAAAAUAAAACsBAAACAAUAAABSAAAALAEAAAIABQAAAFkAAAAtAQAAAgAFAAAAXQAAAC4BAAACAAUAAABiAAAALwEAAAIABQAAAGcAAAAwAQAAAgAFAAAAbwAAADEBAAACAAUAAAByAAAAMgEAAAIABQAAAHwAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAtAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAC0AAAAAwD/////////////////////AAAAAOQAAAAAAAAAtQAAAAoAAQAAADMBAAACAAEAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAALUAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAtQAAAAMA/////////////////////wAAAADlAAAAAAAAALYAAAAKAAUAAAA0AQAAAgAAAAAAAwAAADUBAAACAAAAAABEAAAANgEAAAIAAAAAAGYAAAA3AQAAAgAAAAAA5gAAADgBAAACAAAAAAClAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAALYAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAtgAAAAMA/////////////////////wAAAADnAAAAAAAAAOYAAAAKAAIAAAA5AQAAAgAAAAAAlAAAADoBAAACAAAAAACaAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAOYAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA5gAAAAMA/////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAACAAAABQAAAAAAAAABAAAAAgAAAAcAAAAUAAAAAQAAAAIAAAAHAAAADAEAAAEAAAACAAAABwAAACIBAAABAAAAAgAAAAcAAAA4AQAAAQAAAAIAAAAHAAAATgEAAAEAAAACAAAABwAAAGQBAAABAAAAAgAAAAcAAAB6AQAAAQAAAAIAAAAHAAAAkAEAAAEAAAACAAAABwAAAPABAAABAAAAAgAAAAcAAABeAgAAAQAAAAIAAAAHAAAA7AIAAAEAAAACAAAABwAAAOgDAAABAAAAAgAAAAcAAAA+BAAAAQAAAAIAAAAFAAAAngQAAAEAAAACAAAABwAAALIEAAABAAAAAgAAAAcAAACMBQAAAQAAAAIAAAAHAAAATgcAAAEAAAACAAAABwAAAHAIAAABAAAAAgAAAAcAAAB2CQAAAQAAAAIAAAAHAAAAlAoAAAEAAAACAAAABwAAAJoLAAABAAAAAgAAAAcAAAC4DAAAAQAAAAIAAAAHAAAAvg0AAAEAAAACAAAABwAAANwOAAABAAAAAgAAAAcAAADiDwAAAQAAAAIAAAAHAAAASBQAAAEAAAACAAAABwAAANQaAAABAAAAAgAAAAcAAADyGwAAAQAAAAIAAAAHAAAACBwAAAEAAAACAAAABwAAAMYcAAABAAAAAgAAAAcAAABuHQAAAQAAAAIAAAAHAAAALB4AAAEAAAACAAAABwAAAOoeAAABAAAAAgAAAAcAAACoHwAAAQAAAAIAAAAHAAAAZiAAAAEAAAACAAAABwAAACQhAAABAAAAAgAAAAcAAADiIQAAAQAAAAIAAAAHAAAAaiMAAAEAAAACAAAABwAAAPIkAAABAAAAAgAAAAcAAAC+JQAAAQAAAAIAAAAHAAAAiiYAAAEAAAACAAAABwAAAI4nAAABAAAAAgAAAAcAAADkJwAAAQAAAAIAAAAHAAAAOigAAAEAAAACAAAABwAAAIYoAAABAAAAAgAAAAcAAAAeKQAAAQAAAAIAAAAHAAAAJCoAAAEAAAACAAAABQAAAIwuAAABAAAAAgAAAAUAAACgLgAAAQAAAAIAAAAFAAAAtC4AAAEAAAACAAAABQAAAMguAAABAAAAAgAAAAcAAADcLgAAAQAAAAIAAAAHAAAArC8AAAEAAAACAAAABQAAAAIwAAABAAAAAgAAAAUAAAAWMAAAAQAAAAIAAAAFAAAAKjAAAAEAAAACAAAABQAAAD4wAAABAAAAAgAAAAUAAABSMAAAAQAAAAIAAAAFAAAAZjAAAAEAAAACAAAABQAAAHowAAABAAAAAgAAAAUAAACOMAAAAQAAAAIAAAAFAAAAojAAAAEAAAACAAAABQAAALYwAAABAAAAAAAAAAQAAADKMAAAAAAAAAIAAAAFAAAAyjAAAAEAAAACAAAABQAAAN4wAAABAAAAAgAAAAUAAADyMAAAAQAAAAIAAAAFAAAABjEAAAEAAAACAAAABQAAABoxAAABAAAAAgAAAAUAAAAuMQAAAQAAAAIAAAAFAAAAQjEAAAEAAAACAAAABQAAAFYxAAABAAAAAgAAAAUAAABqMQAAAQAAAAIAAAAFAAAAfjEAAAEAAAACAAAABQAAAJIxAAABAAAAAgAAAAUAAACmMQAAAQAAAAIAAAAFAAAAujEAAAEAAAACAAAABQAAAM4xAAABAAAAAgAAAAUAAADiMQAAAQAAAAIAAAAFAAAA9jEAAAEAAAACAAAABQAAAAoyAAABAAAAAgAAAAUAAAAeMgAAAQAAAAIAAAAFAAAAMjIAAAEAAAACAAAABQAAAEYyAAABAAAAAgAAAAUAAABaMgAAAQAAAAIAAAAFAAAAbjIAAAEAAAACAAAABQAAAIIyAAABAAAAAgAAAAUAAACWMgAAAQAAAAIAAAAFAAAAqjIAAAEAAAACAAAABQAAAL4yAAABAAAAAgAAAAUAAADSMgAAAQAAAAIAAAAFAAAA5jIAAAEAAAACAAAABQAAAPoyAAABAAAAAgAAAAUAAAAOMwAAAQAAAAIAAAAFAAAAIjMAAAEAAAACAAAABQAAADYzAAABAAAAAgAAAAUAAABKMwAAAQAAAAAAAAAFAAAAXjMAAAAAAAACAAAABQAAAF4zAAABAAAAAgAAAAUAAAByMwAAAQAAAAIAAAAFAAAAhjMAAAEAAAACAAAABQAAAJozAAABAAAAAgAAAAUAAACuMwAAAQAAAAIAAAAFAAAAwjMAAAEAAAACAAAABQAAANYzAAABAAAAAgAAAAUAAADqMwAAAQAAAAIAAAAFAAAA/jMAAAEAAAACAAAABQAAABI0AAABAAAAAgAAAAUAAAAmNAAAAQAAAAIAAAAFAAAAOjQAAAEAAAACAAAABQAAAE40AAABAAAAAgAAAAUAAABiNAAAAQAAAAIAAAAFAAAAdjQAAAEAAAACAAAABQAAAIo0AAABAAAAAgAAAAUAAACeNAAAAQAAAAIAAAAFAAAAsjQAAAEAAAACAAAABQAAAMY0AAABAAAAAgAAAAUAAADaNAAAAQAAAAIAAAAFAAAA7jQAAAEAAAACAAAABQAAAAI1AAABAAAAAgAAAAUAAAAWNQAAAQAAAAIAAAAFAAAAKjUAAAEAAAACAAAABQAAAD41AAABAAAAAgAAAAUAAABSNQAAAQAAAAIAAAAFAAAAZjUAAAEAAAACAAAABQAAAHo1AAABAAAAAgAAAAUAAACONQAAAQAAAAIAAAAFAAAAojUAAAEAAAACAAAABQAAALY1AAABAAAAAgAAAAUAAADKNQAAAQAAAAIAAAAFAAAA3jUAAAEAAAACAAAABQAAAPI1AAABAAAAAgAAAAUAAAAGNgAAAQAAAAIAAAAFAAAAGjYAAAEAAAACAAAABQAAAC42AAABAAAAAgAAAAUAAABCNgAAAQAAAAIAAAAFAAAAVjYAAAEAAAACAAAABQAAAGo2AAABAAAAAgAAAAUAAAB+NgAAAQAAAAIAAAAFAAAAkjYAAAEAAAACAAAABQAAAKY2AAABAAAAAgAAAAUAAAC6NgAAAQAAAAIAAAAFAAAAzjYAAAEAAAAAAAAABgAAAOI2AAAAAAAAAgAAAAUAAADiNgAAAQAAAAIAAAAFAAAA9jYAAAEAAAACAAAABQAAAAo3AAABAAAAAgAAAAUAAAAeNwAAAQAAAAIAAAAFAAAAMjcAAAEAAAAAAAAABwAAAEY3AAAAAAAAAgAAAAUAAABGNwAAAQAAAAIAAAAFAAAAWjcAAAEAAAACAAAABQAAAG43AAABAAAAAgAAAAUAAACCNwAAAQAAAAIAAAAFAAAAljcAAAEAAAACAAAABQAAAKo3AAABAAAAAgAAAAUAAAC+NwAAAQAAAAIAAAAFAAAA0jcAAAEAAAACAAAABQAAAOY3AAABAAAAAgAAAAUAAAD6NwAAAQAAAAAAAAAIAAAADjgAAAAAAAACAAAABQAAAA44AAABAAAAAgAAAAUAAAAiOAAAAQAAAAIAAAAFAAAANjgAAAEAAAACAAAABQAAAEo4AAABAAAAAgAAAAUAAABeOAAAAQAAAAIAAAAFAAAAcjgAAAEAAAACAAAABQAAAIY4AAABAAAAAgAAAAUAAACaOAAAAQAAAAIAAAAFAAAArjgAAAEAAAACAAAABQAAAMI4AAABAAAAAgAAAAUAAADWOAAAAQAAAAIAAAAFAAAA6jgAAAEAAAACAAAABQAAAP44AAABAAAAAwAAAAAAAAASOQAAAQAAAAAAAAAJAAAAIjkAAAAAAAAAAAAACgAAACI5AAAAAAAAAAAAAAsAAAAiOQAAAAAAAAMAAAAAAAAAIjkAAAEAAAADAAAAAAAAADI5AAABAAAABAAAAAcAAABCOQAAAQAAAAQAAAAHAAAADkIAAAEAAAAEAAAABwAAAMpFAAABAAAABAAAAAcAAAB0SwAAAQAAAAQAAAAHAAAARE0AAAEAAAAEAAAABwAAAERPAAABAAAAAQAAAAMAAADEUQAAAQAAAAEAAAADAAAAclIAAAEAAAABAAAAAwAAAFJhAAABAAAAAQAAAAMAAACMYgAAAQAAAAEAAAADAAAAHHUAAAEAAAABAAAAAwAAAD58AAABAAAAAQAAAAMAAAAshAAAAQAAAAEAAAADAAAAzIsAAAEAAAABAAAAAwAAALKQAAABAAAAAQAAAAMAAACYlQAAAQAAAAEAAAADAAAAwpYAAAEAAAAEAAAACQAAAJabAAABAAAABAAAAAkAAAC6mwAAAQAAAAQAAAAJAAAA5psAAAEAAAAEAAAACQAAABKcAAABAAAABAAAAAkAAAA2nAAAAQAAAAQAAAAJAAAAYpwAAAEAAAAEAAAACQAAAI6cAAABAAAABAAAAAkAAAC6nAAAAQAAAAQAAAAJAAAA3pwAAAEAAAAEAAAACQAAAAqdAAABAAAABAAAAAkAAAAunQAAAQAAAAQAAAAJAAAAUp0AAAEAAAAEAAAACQAAAHadAAABAAAABAAAAAkAAACanQAAAQAAAAQAAAAJAAAAvp0AAAEAAAAEAAAACQAAAOKdAAABAAAABAAAAAkAAAAGngAAAQAAAAQAAAAJAAAAMp4AAAEAAAAEAAAACQAAAF6eAAABAAAABAAAAAkAAACKngAAAQAAAAQAAAAJAAAAtp4AAAEAAAAEAAAACQAAAOKeAAABAAAABAAAAAkAAAAOnwAAAQAAAAQAAAAJAAAAMp8AAAEAAAAEAAAACQAAAFafAAABAAAAAwAAAAAAAAB6nwAAAQAAAAMAAAAAAAAAip8AAAEAAAADAAAAAAAAAJqfAAABAAAAAAAAAAwAAACqnwAAAAAAAAMAAAAAAAAAqp8AAAEAAAALAAAAAAAAAAAAAQABAAEAAQADAAsAAAAAAAEAAAAKAAQAAABcAAAABQAAAAAAAAAAQPUAAAAEAAAAAAAAAAAAVAAAAAUAAAAAAAAA8D9dAAAABQAAAAAAAAAAQAcABAAAAAcAAAAAAAcABgAAAAQACAAAAAAAAAAGAFwAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAVAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBdAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAAgAAAAEAAQABAAEAAQADAAsAAAAAAAMAAAABAAEAAQABAAEAAwALAAAAAAAEAAAAAQABAAEAAQABAAMACwAAAAAABQAAAAEAAQABAAEAAQADAAsAAAAAAAYAAAABAAEAAQABAAEAAwALAAAAAAAHAAAAAQABAAEAAQABAAMACwAAAAAACAAAAAoAAgAAAFgAAAAFAAAAAAAAAPA/9QAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBYAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACQAAAAoAAwAAAPYAAAAFAAAAAAAAAPA/VQAAAAUAAAAAAAAA8D/1AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFUAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAKAAAACgADAAAA9gAAAAUAAAAAAAAA8D9WAAAABQAAAAAAAADwP/UAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVgAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACwAAAAoABAAAAPYAAAAEAAEAAAAAAAAAVwAAAAQAAQAAAAAAAAD1AAAABAAAAAAAAAAAAFkAAAAEAAEAAAAAAAAABwACAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAVwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgBZAAAABAAAAAAAAAAAAAoAAQAAAPcAAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBXAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFkAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAADAAAAAoAAQAAAPUAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAANAAAACgACAAAAVAAAAAUAAAAAAAAA8D/1AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAF4AAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAOAAAAAQABAAEAAQADAAsAAAAAAA8AAAAKAAQAAACEAAAABQAAAAAAAADwP/UAAAAEAAAAAAAAAAAAYgAAAAUAAAAAAAAAAECFAAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYgAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCFAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAEAAAAAoABQAAAPUAAAAEAAAAAAAAAAAAbgAAAAUAAAAAAAAA8D+EAAAABQAAAAAAAADwP2IAAAAFAAAAAAAAAABAhQAAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAA+AAAAAcAAwAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAG4AAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBiAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIUAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAEQAAAAoAAQAAAPUAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAASAAAACgACAAAA9QAAAAQAAAAAAAAAAABjAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYwAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAEwAAAAoAAQAAAPUAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYA+QAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABQAAAAKAAIAAAD1AAAABAAAAAAAAAAAAGUAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAVAAAACgABAAAA9QAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgD6AAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFgAAAAoAAgAAAPUAAAAEAAAAAAAAAAAAZwAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGcAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABcAAAAKAAEAAAD1AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAPsAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAYAAAACgACAAAA9QAAAAQAAAAAAAAAAABpAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaQAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAGQAAAAoABgAAAPUAAAAEAAAAAAAAAAAA/AAAAAUAAAAAAAAA8D9pAAAABQAAAAAAAADwP2cAAAAFAAAAAAAAAPA/ZQAAAAUAAAAAAAAA8D9jAAAABQAAAAAAAADwPwcABwAAAAcAAAAAAAcABgAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaQAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBnAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGUAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYwAAAAQAAAAAAAAAAAAKAAIAAAD9AAAABwAEAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaQAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBnAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGUAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYwAAAAQAAAAAAAAAAAD+AAAABwACAAAABwAHAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaQAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBnAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGUAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYwAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBjAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAABoAAAAKAAMAAAD/AAAABAABAAAAAAAAAPUAAAAEAAAAAAAAAAAAbQAAAAQAAgAAAAAAAAAHABAAAAAHAAAAAAAHAAkAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABAAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAJAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAALAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAA4AAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAHAAAAAAAKAAEAAAAAAQAABwADAAAABwAGAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAkAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABwAAAAAAAQABAAMACwAAAAAAGwAAAAoAAQAAAPUAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAAQEAAAQAAgAAAAAAAAAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAEAAwALAAAAAAAdAAAACgABAAAA9QAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHgAAAAoAAgAAAPUAAAAEAAAAAAAAAAAAhQAAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHwAAAAoAAQAAAPUAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACAAAAAKAAEAAAD1AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAhAAAACgABAAAA9QAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIgAAAAoAAQAAAPUAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACMAAAAKAAEAAAD1AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAkAAAACgABAAAA9QAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJQAAAAoAAwAAAPUAAAAEAAAAAAAAAAAAZQAAAAUAAAAAAAAA8D9mAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAAgEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGUAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZgAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAmAAAACgADAAAA9QAAAAQAAAAAAAAAAABnAAAABQAAAAAAAADwP2gAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAADAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAACcAAAAKAAIAAAD1AAAABAAAAAAAAAAAAH4AAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACgAAAAKAAIAAAD1AAAABAAAAAAAAAAAAAQBAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACkAAAAKAAQAAAD1AAAABQAAAAAAAADwPwUBAAAFAAAAAAAAAPA/BgEAAAUAAAAAAAAA8D8HAQAABQAAAAAAAADwPwQAAAAAAAAAAAAKAAEAAAAIAQAABwACAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAACAAAAAAAuAAAAAgAAAAAALwAAAAMACwAAAAAAKgAAAAoAAQAAAPUAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAArAAAACgABAAAA9QAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACwAAAAKAAIAAABrAAAABAABAAAAAAAAAPUAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQAHAAEAAAACAAAAAAAxAAAAAwALAAAAAAAtAAAACgABAAAA9QAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAYAAAAFAAAAAAAAABBABAAgAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAC4AAAAKAAIAAAD1AAAABAAAAAAAAAAAAHwAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB8AAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAvAAAACgACAAAA9QAAAAQAAAAAAAAAAAB9AAAABQAAAAAAAADwPwcACgAAAAcAAAAAAAcADAAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAAGEAGAAkBAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAgAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB9AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAJAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAoAAQAAAAoBAAAHAAQAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB9AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcACAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAkBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAgAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAwAAAAAQABAAEAAQADAAsAAAAAADEAAAABAAEAAQABAAMACwAAAAAAMgAAAAEAAQABAAEAAwALAAAAAAAzAAAAAQABAAEAAQADAAsAAAAAADQAAAAKAAIAAAD1AAAABAAAAAAAAAAAAGEAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA1AAAACgABAAAA9QAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADYAAAABAAEAAQABAAMACwAAAAAANwAAAAEAAQABAAEAAwALAAAAAAA4AAAAAQABAAEAAQADAAsAAAAAADkAAAABAAEAAQABAAMACwAAAAAAOgAAAAEAAQABAAEAAwALAAAAAAA7AAAAAQABAAEAAQADAAsAAAAAADwAAAABAAEAAQABAAMACwAAAAAAPQAAAAEAAQABAAEAAwALAAAAAAA+AAAAAQABAAEAAQADAAsAAAAAAD8AAAABAAEAAQABAAMACwAAAAAAQAAAAAEAAQABAAEAAwALAAAAAABBAAAAAQABAAEAAQADAAsAAAAAAEIAAAABAAEAAQABAAMACwAAAAAAQwAAAAEAAQABAAEAAwALAAAAAABEAAAAAQABAAEAAQADAAsAAAAAAEUAAAABAAEAAQABAAMACwAAAAAARgAAAAEAAQABAAEAAwALAAAAAABHAAAAAQABAAEAAQADAAsAAAAAAEgAAAABAAEAAQABAAMACwAAAAAASQAAAAEAAQABAAEAAwALAAAAAABKAAAAAQABAAEAAQADAAsAAAAAAEsAAAABAAEAAQABAAMACwAAAAAATAAAAAEAAQABAAEAAwALAAAAAABNAAAAAQABAAEAAQADAAsAAAAAAE4AAAABAAEAAQABAAMACwAAAAAATwAAAAEAAQABAAEAAwALAAAAAABQAAAAAQABAAEAAQADAAsAAAAAAFEAAAABAAEAAQABAAMACwAAAAAAUgAAAAEAAQABAAEAAwALAAAAAABTAAAAAQABAAEAAQADAAsAAAAAAFQAAAABAAEAAQABAAMACwAAAAAAVQAAAAEAAQABAAEAAwALAAAAAABWAAAAAQABAAEAAQADAAsAAAAAAFcAAAABAAEAAQABAAMACwAAAAAAWAAAAAEAAQABAAEAAwALAAAAAABZAAAAAQABAAEAAQADAAsAAAAAAFoAAAABAAEAAQABAAMACwAAAAAAWwAAAAEAAQABAAEAAwALAAAAAABcAAAAAQABAAEAAQADAAsAAAAAAF0AAAABAAEAAQABAAMACwAAAAAAXgAAAAEAAQABAAEAAwALAAAAAABfAAAAAQABAAEAAQADAAsAAAAAAGAAAAABAAEAAQABAAMACwAAAAAAYQAAAAEAAQABAAEAAwALAAAAAABiAAAAAQABAAEAAQADAAsAAAAAAGMAAAABAAEAAQABAAMACwAAAAAAZAAAAAEAAQABAAEAAwALAAAAAABlAAAAAQABAAEAAQADAAsAAAAAAGYAAAABAAEAAQABAAMACwAAAAAAZwAAAAEAAQABAAEAAwALAAAAAABoAAAAAQABAAEAAQADAAsAAAAAAGkAAAABAAEAAQABAAMACwAAAAAAagAAAAEAAQABAAEAAwALAAAAAABrAAAAAQABAAEAAQADAAsAAAAAAGwAAAABAAEAAQABAAMACwAAAAAAbQAAAAEAAQABAAEAAwALAAAAAABuAAAAAQABAAEAAQADAAsAAAAAAG8AAAABAAEAAQABAAMACwAAAAAAcAAAAAEAAQABAAEAAwALAAAAAABxAAAAAQABAAEAAQADAAsAAAAAAHIAAAABAAEAAQABAAMACwAAAAAAcwAAAAEAAQABAAEAAwALAAAAAAB0AAAAAQABAAEAAQADAAsAAAAAAHUAAAABAAEAAQABAAMACwAAAAAAdgAAAAEAAQABAAEAAwALAAAAAAB3AAAAAQABAAEAAQADAAsAAAAAAHgAAAABAAEAAQABAAMACwAAAAAAeQAAAAEAAQABAAEAAwALAAAAAAB6AAAAAQABAAEAAQADAAsAAAAAAHsAAAABAAEAAQABAAMACwAAAAAAfAAAAAEAAQABAAEAAwALAAAAAAB9AAAAAQABAAEAAQADAAsAAAAAAH4AAAABAAEAAQABAAMACwAAAAAAfwAAAAEAAQABAAEAAwALAAAAAACAAAAAAQABAAEAAQADAAsAAAAAAIEAAAABAAEAAQABAAMACwAAAAAAggAAAAEAAQABAAEAAwALAAAAAACDAAAAAQABAAEAAQADAAsAAAAAAIQAAAABAAEAAQABAAMACwAAAAAAhQAAAAEAAQABAAEAAwALAAAAAACGAAAAAQABAAEAAQADAAsAAAAAAIcAAAABAAEAAQABAAMACwAAAAAAiAAAAAEAAQABAAEAAwALAAAAAACJAAAAAQABAAEAAQADAAsAAAAAAIoAAAABAAEAAQABAAMACwAAAAAAiwAAAAEAAQABAAEAAwALAAAAAACMAAAAAQABAAEAAQADAAsAAAAAAI0AAAABAAEAAQABAAMACwAAAAAAjgAAAAEAAQABAAEAAwALAAAAAACPAAAAAQABAAEAAQADAAsAAAAAAJAAAAABAAEAAQABAAMACwAAAAAAkQAAAAEAAQABAAEAAwALAAAAAACSAAAAAQABAAEAAQADAAsAAAAAAJMAAAABAAEAAQABAAMACwAAAAAAlAAAAAEAAQABAAEAAwALAAAAAACVAAAAAQABAAEAAQADAAsAAAAAAJYAAAABAAEAAQABAAMACwAAAAAAlwAAAAEAAQABAAEAAwALAAAAAACYAAAAAQABAAEAAQADAAsAAAAAAJkAAAABAAEAAQABAAMACwAAAAAAmgAAAAEAAQABAAEAAwALAAAAAACbAAAAAQABAAEAAQADAAsAAAAAAJwAAAABAAEAAQABAAMACwAAAAAAnQAAAAEAAQABAAEAAwALAAAAAACeAAAAAQABAAEAAQADAAsAAAAAAJ8AAAABAAEAAQABAAMACwAAAAAAoAAAAAEAAQABAAEAAwALAAAAAAChAAAAAQABAAEAAQADAAsAAAAAAKIAAAABAAEAAQABAAMACwAAAAAAowAAAAEAAQABAAEAAwALAAAAAACkAAAAAQABAAEAAQADAAsAAAAAAKUAAAABAAEAAQABAAMACwAAAAAApgAAAAEAAQABAAEAAwALAAAAAACnAAAAAQABAAEAAQADAAsAAAAAAKgAAAABAAEAAQABAAMACwAAAAAAqQAAAAEAAQABAAEAAwAMAQAABwAAAAAACgAAAAAADQEAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAAGABABAAAKAAAAAAAKAD0AAABSAAAAAgAAAAAABAAAAFMAAAACAAAAAAAFAAAAVAAAAAIAAAAAAAYAAABVAAAAAgAAAAAABwAAAFYAAAACAAAAAAAIAAAAVwAAAAIAAAAAAAkAAABYAAAAAgAAAAAACgAAAFkAAAACAAAAAAALAAAAWgAAAAIAAAAAAAwAAABbAAAAAgAAAAAADQAAAFwAAAACAAAAAAAOAAAAXQAAAAIAAAAAAA8AAABeAAAAAgAAAAAAEAAAAF8AAAACAAAAAAARAAAAYAAAAAIAAAAAABIAAABhAAAAAgAAAAAAEwAAAGIAAAACAAAAAAAUAAAAYwAAAAIAAAAAABUAAABkAAAAAgAAAAAAFgAAAGUAAAACAAAAAAAXAAAAZgAAAAIAAAAAABgAAABnAAAAAgAAAAAAGQAAAGgAAAACAAAAAAAaAAAAaQAAAAIAAAAAABsAAABqAAAAAgAAAAAAHAAAAGsAAAACAAAAAAAdAAAAbAAAAAIAAAAAAB4AAABtAAAAAgAAAAAAHwAAAG4AAAACAAAAAAAgAAAAbwAAAAIAAAAAACEAAABwAAAAAgAAAAAAIgAAAHEAAAACAAAAAAAjAAAAcgAAAAIAAAAAACQAAABzAAAAAgAAAAAAJQAAAHQAAAACAAAAAAAmAAAAdQAAAAIAAAAAACcAAAB2AAAAAgAAAAAAKAAAAHcAAAACAAAAAAApAAAAeAAAAAIAAAAAACoAAAB5AAAAAgAAAAAAKwAAAHoAAAACAAAAAAAsAAAAewAAAAIAAAAAAC0AAAB8AAAAAgAAAAAAMAAAAH0AAAACAAAAAAAyAAAAfgAAAAIAAAAAADMAAAB/AAAAAgAAAAAANAAAAIAAAAACAAAAAAA1AAAAUQAAAAIAAAAAADYAAACBAAAAAgAAAAAANwAAAIIAAAACAAAAAAA4AAAAgwAAAAIAAAAAADkAAACEAAAAAgAAAAAAOgAAAIUAAAACAAAAAAA7AAAAhgAAAAIAAAAAADwAAACHAAAAAgAAAAAAPQAAAIgAAAACAAAAAAA+AAAAiQAAAAIAAAAAAD8AAACKAAAAAgAAAAAAQAAAAIsAAAACAAAAAABBAAAAjAAAAAIAAAAAAEIAAACNAAAAAgAAAAAAQwAAAAcAPQAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIQAAAAIAAAAAACIAAAACAAAAAAAjAAAAAgAAAAAAJAAAAAIAAAAAACUAAAACAAAAAAAmAAAAAgAAAAAAJwAAAAIAAAAAACgAAAACAAAAAAApAAAAAgAAAAAAKgAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAADAAAAACAAAAAAAyAAAAAgAAAAAAMwAAAAIAAAAAADQAAAACAAAAAAA1AAAAAgAAAAAANgAAAAIAAAAAADcAAAACAAAAAAA4AAAAAgAAAAAAOQAAAAIAAAAAADoAAAACAAAAAAA7AAAAAgAAAAAAPAAAAAIAAAAAAD0AAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAHAAAAAAAHAAEAAAACAAEAAABjAAAABwAAAAAAAgABAAAAYwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAADAAAAAgABAAAAYwAAAAIAAgAAABkAAAAHAAAAAAAKAAwAAAA0AAAACgACAAAAVAAAAAcAAQAAAAYAWgAAAG4AAAAHAA0AAAAGAG8AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAABUAAAAAgAAAAAAvwAAAG4AAAACAAAAAADAAAAA9wAAAAIAAAAAAMEAAAD4AAAAAgAAAAAAwgAAAP0AAAACAAAAAADDAAAA/gAAAAIAAAAAAMQAAAAAAQAAAgAAAAAAxQAAAAIBAAACAAAAAADGAAAAAwEAAAIAAAAAAMcAAAAIAQAAAgAAAAAAyAAAAAoBAAACAAAAAADJAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYwAAAAYAEQEAAAYAjgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABjAAAABgAhAAAABgCPAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGMAAAAGACIAAAAGAJAAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYwAAAAYAEgEAAAYAkQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABjAAAABgATAQAABgCSAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGMAAAAGABQBAAAGAJMAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYwAAAAYAFQEAAAYAlAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABjAAAABgAWAQAABgCVAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGMAAAAGABcBAAAGAJYAAAAHAAAAAAABAAYAGAEAAAoAAAAAAAoAIQAAAJcAAAACAAAAAABFAAAAmAAAAAIAAAAAAEYAAACZAAAAAgAAAAAARwAAAIcAAAACAAAAAABIAAAAWgAAAAIAAAAAAEkAAABTAAAAAgAAAAAASgAAAF4AAAACAAAAAABLAAAAXwAAAAIAAAAAAEwAAABrAAAAAgAAAAAATQAAAGwAAAACAAAAAABOAAAAYwAAAAIAAAAAAE8AAABlAAAAAgAAAAAAUAAAAGcAAAACAAAAAABRAAAAaQAAAAIAAAAAAFIAAACCAAAAAgAAAAAAUwAAAGEAAAACAAAAAABUAAAAYgAAAAIAAAAAAFUAAABvAAAAAgAAAAAAVgAAAHAAAAACAAAAAABXAAAAcQAAAAIAAAAAAFgAAAByAAAAAgAAAAAAWQAAAHMAAAACAAAAAABaAAAAdAAAAAIAAAAAAFsAAAB1AAAAAgAAAAAAXAAAAHYAAAACAAAAAABdAAAAdwAAAAIAAAAAAF4AAAB4AAAAAgAAAAAAXwAAAHkAAAACAAAAAABgAAAAegAAAAIAAAAAAGEAAAB7AAAAAgAAAAAAYgAAAHwAAAACAAAAAABjAAAAfQAAAAIAAAAAAGQAAAB+AAAAAgAAAAAAZQAAAAcAIQAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAIAAAAAAFEAAAACAAAAAABSAAAAAgAAAAAAUwAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAEQAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgAZAQAACgALAAAAxQAAAAIAAAAAAMoAAADGAAAAAgAAAAAAywAAAMcAAAACAAAAAADMAAAAyAAAAAIAAAAAAM0AAADJAAAAAgAAAAAAzgAAAMoAAAACAAAAAADPAAAAywAAAAIAAAAAANAAAADMAAAAAgAAAAAA0QAAAM0AAAACAAAAAADSAAAAzgAAAAIAAAAAANMAAADPAAAAAgAAAAAA1AAAAAoALQAAAJoAAAACAAAAAABnAAAAmwAAAAIAAAAAAGgAAACcAAAAAgAAAAAAaQAAAJ0AAAACAAAAAABqAAAAngAAAAIAAAAAAGsAAACfAAAAAgAAAAAAbAAAAKAAAAACAAAAAABtAAAAoQAAAAIAAAAAAG4AAACiAAAAAgAAAAAAbwAAAKMAAAACAAAAAABwAAAApAAAAAIAAAAAAHEAAACAAAAAAgAAAAAAcgAAAKUAAAACAAAAAABzAAAApgAAAAIAAAAAAHQAAACnAAAAAgAAAAAAdQAAAKgAAAACAAAAAAB2AAAAqQAAAAIAAAAAAHcAAACqAAAAAgAAAAAAeAAAAKsAAAACAAAAAAB5AAAArAAAAAIAAAAAAHoAAACtAAAAAgAAAAAAewAAAK4AAAACAAAAAAB8AAAArwAAAAIAAAAAAH0AAACwAAAAAgAAAAAAfgAAALEAAAACAAAAAAB/AAAAHAAAAAIAAAAAAIAAAACyAAAAAgAAAAAAgQAAALMAAAACAAAAAACCAAAAtAAAAAIAAAAAAIMAAAC1AAAAAgAAAAAAhAAAALYAAAACAAAAAACFAAAAtwAAAAIAAAAAAIYAAAC4AAAAAgAAAAAAhwAAALkAAAACAAAAAACIAAAAugAAAAIAAAAAAIkAAAC7AAAAAgAAAAAAigAAALwAAAACAAAAAACLAAAAvQAAAAIAAAAAAIwAAAC+AAAAAgAAAAAAjQAAAL8AAAACAAAAAACOAAAAwAAAAAIAAAAAAI8AAADBAAAAAgAAAAAAkAAAAMIAAAACAAAAAACRAAAAwwAAAAIAAAAAAJIAAADEAAAAAgAAAAAAkwAAAAcALQAAAAIAAAAAAGcAAAACAAAAAABoAAAAAgAAAAAAaQAAAAIAAAAAAGoAAAACAAAAAABrAAAAAgAAAAAAbAAAAAIAAAAAAG0AAAACAAAAAABuAAAAAgAAAAAAbwAAAAIAAAAAAHAAAAACAAAAAABxAAAAAgAAAAAAcgAAAAIAAAAAAHMAAAACAAAAAAB0AAAAAgAAAAAAdQAAAAIAAAAAAHYAAAACAAAAAAB3AAAAAgAAAAAAeAAAAAIAAAAAAHkAAAACAAAAAAB6AAAAAgAAAAAAewAAAAIAAAAAAHwAAAACAAAAAAB9AAAAAgAAAAAAfgAAAAIAAAAAAH8AAAACAAAAAACAAAAAAgAAAAAAgQAAAAIAAAAAAIIAAAACAAAAAACDAAAAAgAAAAAAhAAAAAIAAAAAAIUAAAACAAAAAACGAAAAAgAAAAAAhwAAAAIAAAAAAIgAAAACAAAAAACJAAAAAgAAAAAAigAAAAIAAAAAAIsAAAACAAAAAACMAAAAAgAAAAAAjQAAAAIAAAAAAI4AAAACAAAAAACPAAAAAgAAAAAAkAAAAAIAAAAAAJEAAAACAAAAAACSAAAAAgAAAAAAkwAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGYAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAABnAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAGcAAAABAAYAGgEAAAoAAgAAANUAAAACAAAAAADVAAAA1gAAAAIAAAAAANYAAAAKAAUAAADQAAAAAgAAAAAAlQAAANEAAAACAAAAAACWAAAA0gAAAAIAAAAAAJcAAADTAAAAAgAAAAAAmAAAANQAAAACAAAAAACZAAAABwAFAAAAAgAAAAAAlQAAAAIAAAAAAJYAAAACAAAAAACXAAAAAgAAAAAAmAAAAAIAAAAAAJkAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACUAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAlAAAAAYA0QAAAAYA1QAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACUAAAABgDSAAAABgDWAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAJQAAAAGANEAAAAGANUAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAlAAAAAYA0gAAAAYA1gAAAAEABgAbAQAACgAEAAAA3gAAAAIAAAAAANcAAADWAAAAAgAAAAAA2AAAAN8AAAACAAAAAADZAAAA4AAAAAIAAAAAANoAAAAKAAoAAAASAAAAAgAAAAAAmwAAANcAAAACAAAAAACcAAAAmgAAAAIAAAAAAJ0AAADYAAAAAgAAAAAAngAAANkAAAACAAAAAACfAAAA2gAAAAIAAAAAAKAAAADbAAAAAgAAAAAAoQAAANwAAAACAAAAAACiAAAA3QAAAAIAAAAAAKMAAAAcAAAAAgAAAAAApAAAAAcACgAAAAIAAAAAAJsAAAACAAAAAACcAAAAAgAAAAAAnQAAAAIAAAAAAJ4AAAACAAAAAACfAAAAAgAAAAAAoAAAAAIAAAAAAKEAAAACAAAAAACiAAAAAgAAAAAAowAAAAIAAAAAAKQAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACaAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAnQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACdAAAAAQAGABwBAAAKAAgAAADtAAAAAgAAAAAA2wAAAO4AAAACAAAAAADcAAAA7wAAAAIAAAAAAN0AAADwAAAAAgAAAAAA3gAAAPEAAAACAAAAAADfAAAA8gAAAAIAAAAAAOAAAADzAAAAAgAAAAAA4QAAAPQAAAACAAAAAADiAAAACgANAAAAmgAAAAIAAAAAAKYAAADhAAAAAgAAAAAApwAAAOIAAAACAAAAAACoAAAA4wAAAAIAAAAAAKkAAADkAAAAAgAAAAAAqgAAAOUAAAACAAAAAACrAAAA5gAAAAIAAAAAAKwAAADnAAAAAgAAAAAArQAAAOgAAAACAAAAAACuAAAA6QAAAAIAAAAAAK8AAADqAAAAAgAAAAAAsAAAAOsAAAACAAAAAACxAAAA7AAAAAIAAAAAALIAAAAHAA0AAAACAAAAAACmAAAAAgAAAAAApwAAAAIAAAAAAKgAAAACAAAAAACpAAAAAgAAAAAAqgAAAAIAAAAAAKsAAAACAAAAAACsAAAAAgAAAAAArQAAAAIAAAAAAK4AAAACAAAAAACvAAAAAgAAAAAAsAAAAAIAAAAAALEAAAACAAAAAACyAAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAAAAAAIAAgAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAApQAAAAIAAgAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAKYAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAApgAAAAEABwAEAAAABwACAAAAAwAGAFoAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwBVAAAABwAOAAAAAwAGAG8AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAAAHACcAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQALAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAQQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAFEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAmQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAACJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADFABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAADJABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAUAAAAAAAAAOUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAA6QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAcAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAaAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA/QAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABQAAAAAAAABAQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgEBABAABAAAAAAAAAAQAAAAAAAAAAAAEACMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAFAAAAAAAAAD1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAENABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAREAEAAEAAAAAAAAABAAAAAAAAAAAAAQAKgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAUAAAAAAAAAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAKAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAREAHAAMAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACARkAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAUAAAAAAAAAR0AHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBHQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAxAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABQAAAAAAAIBFQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAvAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABIQAcAAwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABKQAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABQAAAAAAAIBKQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAEtABAABAAAAAAAAAAQAAAAAAAAAAAAEADgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAFAAAAAAAAAElABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEtABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgE1ABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAAE5ABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACATkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAUAAAAAAACATEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAT0AHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAUEAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAADAUEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABRQAQAAQAAAAAAAAAEAAAAAAAAAAAABABGAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABQAAAAAAAABQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABEAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBRQAcAAwAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAEBSQAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABQAAAAAAAIBSQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAwFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAE0AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACwAAAAAAAAAFAAAAAAAAwFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEsAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFNABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAFRABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAQFRABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAVAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAUAAAAAAACAU0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAUgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAVEAEAAEAAAAAAAAAAAAAAAAAAAABAAcABgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAVwAAAAUAAAAAAAAAAEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBZAAAABQAAAAAAAAAQQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwBhAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAF4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAbgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAE4AAAAEAAgAAAAAAAAABgBvAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgByAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB1AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB4AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB7AAAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAwAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA3AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA+AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAACRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAC5ABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAZAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA8QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA9QAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAD5ABAABAAAAAAAAAAQAAAAAAAAAAAAEACAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEFABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAARUAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAuAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBIQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABJQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgElABAABAAAAAAAAAAQAAAAAAAAAAAAEADUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAExABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgExABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAT0AHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAUEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBRQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBRQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAEoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFNABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFNABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAUQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVUAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBVQAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABWAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBVQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAEBWQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBWQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAwFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAYgAAAAUAAAAAAADAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCFAAAABQAAAAAAAEBXQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwAmAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAQQAcABgAAAAQACAAAAAAAAAAGAGkAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABQAAAAAAAAAYQAYA+wAAAAUAAAAAAAAAJEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAmQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcAAwAAAAUAAAAAAAAAGEAGAPoAAAAFAAAAAAAAADNABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADFABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAADZABwAGAAAABAAIAAAAAAAAAAYAZQAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAFAAAAAAAAABhABgD5AAAABQAAAAAAAAA8QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA6QAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABQAAAAAAAAA/QAcABgAAAAQACAAAAAAAAAAGAGMAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAEACEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEBABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgEJABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEFABAABAAAAAAAAAAAAAAAAAAAAAQAHACkAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAAAQQAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAUQAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAAAYQAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAAAcQAQAAgAAAAAAAAAEAGQAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQACAAAAAAAAAAGAGkAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAZwAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAWAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGMAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABwAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABwADAAAABQAAAAAAAAAYQAYA+wAAAAUAAAAAAAAALEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAM0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAFAAAAAAAAABhABgD6AAAABQAAAAAAAAA0QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA1QAcAAwAAAAUAAAAAAAAAGEAGAPkAAAAFAAAAAAAAADpABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD5ABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAREAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AEAAEAAAAAAAAAAAAAAAAAAAABAAcAKAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAYQAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAQACAAAAAAAAAAGAG0AAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAAQEAAAUAAAAAAAAAJEAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAM0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANUAHAA8AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAEAAgAAAAAAAAABgBtAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAEBAAAFAAAAAAAAADlABwAGAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgABAQAABQAAAAAAAABCQAcABgAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAaAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGAPkAAAAFAAAAAAAAACJABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAAChABwAGAAAABAAIAAAAAAAAAAYAZgAAAAUAAAAAAAAAKkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAJEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAyQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcABgAAAAQACAAAAAAAAAAGAGUAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAQwAAAAUAAAAAAAAAMUAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAANkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABhABgD5AAAABQAAAAAAAAA5QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAAAAAAAAAAAAEABwAaAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGAPoAAAAFAAAAAAAAACJABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAAChABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAKkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAJEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAyQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcABgAAAAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAQwAAAAUAAAAAAAAAMUAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAANkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABhABgD6AAAABQAAAAAAAAA5QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAAAAAAAAAAAAEABwAHAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAEEAEAAEAAAAAAAAAAAAAAAAAAAABAAcAGAAAAAcABAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAEEAHAAYAAAAEAAgAAAAAAAAABgB9AAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAACRABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAACBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwAGAAAABAAIAAAAAAAAAAYAfAAAAAUAAAAAAAAAJkAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAiQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAuQAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAkBAAAFAAAAAAAAADRABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAgAAAAAUAAAAAAAAANkAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAYAxQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYAxgAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDHAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAMgAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAMkAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYAygAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDLAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAMwAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAM0AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYAzgAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYAzwAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA1QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA1gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA3gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA1gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA3wAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA4AAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDtAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAO4AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA7wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDwAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAPEAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA8gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA8wAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA9AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAADcBAAAHAAAAAAAKAAAAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if902_end1961 
    die "Repossession conflicts occurred during deserialization"
  if902_end1961:
    .const "LexInfo" $P5001 = "cuid_184_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_184_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_184_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_184_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_184_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_184_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_184_1361633912.325"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_184_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_184_1361633912.325"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_184_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_57_1361633912.325" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_58_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 67
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_171_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_171_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_171_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_171_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 68
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_185_1361633912.325" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_65_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 101
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_186_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 68
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_186_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_186_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 68
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_186_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_98_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 147
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_199_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_199_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_199_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 102
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_199_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_143_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 153
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_222_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_222_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_222_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 148
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_222_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_148_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 164
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_223_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_223_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_223_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 154
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_223_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_158_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_163_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 176
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1361633912.325" 
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 178
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_233_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_233_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_233_1361633912.325"
    nqp_get_sc_object $P5002, "DB686897BD4868E7DD7B598DFC02D0B24194128A-1361633912.35", 165
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_233_1361633912.325"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1361633912.325") :anon :lex :outer("cuid_235_1361633912.325")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1361633912.325" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1361633912.325" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1361633912.325") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_184_1361633912.325" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1361633912.325") :main
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_184_1361633912.325" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end