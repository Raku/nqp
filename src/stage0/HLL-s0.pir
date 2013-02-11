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
.sub "" :subid("cuid_179_1360623834.732") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5026 = 'cuid_172_1360623834.732' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_181_1360623834.732' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_193_1360623834.732' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_218_1360623834.732' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_219_1360623834.732' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_229_1360623834.732' 
    capture_lex $P5026 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "NQPCursorRole", $P104 
    .lex "$compiler", $P105 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .local pmc fb_tmp_165 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P105, $P5001
.annotate 'line', 1060
    set $S5001, "Parrot/Exception.pbc"
    load_bytecode $S5001
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
    .const 'Sub' $P5006 = 'cuid_172_1360623834.732' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_181_1360623834.732' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_193_1360623834.732' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 1702
    nqp_get_sc_object $P5014, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5013, $P5014, "HLL"
    get_who $P5012, $P5013
    set fb_tmp_165, $P5012
    repr_defined $I5003, fb_tmp_165
    unless $I5003 goto if700_else1543 
    set $P5015, fb_tmp_165["Compiler"]
    set $P5017, $P5015
    goto if700_end1544
  if700_else1543:
    null $P5016
    set $P5017, $P5016
  if700_end1544:
    unless_null $P5017, vivi_7011545
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_7011545:
    $P5019 = $P5017."new"()
    set $P105, $P5019
.annotate 'line', 1703
    $P105."language"("parrot")
    .const 'Sub' $P5020 = 'cuid_218_1360623834.732' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_219_1360623834.732' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_229_1360623834.732' 
    capture_lex $P5024
    $P5025 = $P5024()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1360623834.732") :anon :lex :outer("cuid_179_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5075 = 'cuid_1_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_2_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_3_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_4_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_5_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_6_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_7_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_8_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_9_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_10_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_11_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_12_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_13_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_14_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_15_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_16_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_17_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_18_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_19_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_20_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_21_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_22_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_23_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_24_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_25_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_26_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_27_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_28_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_29_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_30_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_31_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_32_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_33_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_34_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_35_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_36_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_37_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_38_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_39_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_40_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_41_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_42_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_45_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_47_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_48_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_49_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_50_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_51_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_52_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_53_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_54_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_55_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_56_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_57_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_58_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_59_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_60_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_61_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_62_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_63_1360623834.732' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_64_1360623834.732' 
    capture_lex $P5075 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "$TRUE", $P103 
    .lex "$?PACKAGE", $P104 
    .lex "$?CLASS", $P105 
    .local pmc fb_tmp_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    box $P5004, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P5004
    get_who $P5005, $P104
    set fb_tmp_1, $P5005
    repr_defined $I5001, fb_tmp_1
    unless $I5001 goto if12_else14 
    set $P5006, fb_tmp_1["NQPCursor"]
    set $P5008, $P5006
    goto if12_end15
  if12_else14:
    null $P5007
    set $P5008, $P5007
  if12_end15:
    unless_null $P5008, vivi_1417
    nqp_get_sc_object $P5011, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5010, $P5011
    set $P5009, $P5010["NQPCursor"]
    unless_null $P5009, vivi_1316
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5012
  vivi_1316:
    set $P5008, $P5009
  vivi_1417:
    set $P102, $P5008
    .const 'Sub' $P5013 = 'cuid_1_1360623834.732' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_2_1360623834.732' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_3_1360623834.732' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_4_1360623834.732' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_5_1360623834.732' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_6_1360623834.732' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_7_1360623834.732' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_8_1360623834.732' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_9_1360623834.732' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_10_1360623834.732' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_11_1360623834.732' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_12_1360623834.732' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_13_1360623834.732' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_14_1360623834.732' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_15_1360623834.732' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_16_1360623834.732' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_17_1360623834.732' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_18_1360623834.732' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_19_1360623834.732' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_20_1360623834.732' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_21_1360623834.732' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_22_1360623834.732' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_23_1360623834.732' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_24_1360623834.732' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_25_1360623834.732' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_26_1360623834.732' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_27_1360623834.732' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_28_1360623834.732' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_29_1360623834.732' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_30_1360623834.732' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_31_1360623834.732' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_32_1360623834.732' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_33_1360623834.732' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_34_1360623834.732' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_35_1360623834.732' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_36_1360623834.732' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_37_1360623834.732' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_38_1360623834.732' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_39_1360623834.732' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_40_1360623834.732' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_41_1360623834.732' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_42_1360623834.732' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_45_1360623834.732' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_47_1360623834.732' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_48_1360623834.732' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_49_1360623834.732' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_50_1360623834.732' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_51_1360623834.732' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_52_1360623834.732' 
    capture_lex $P5061
    box $P5062, 1
    set $P103, $P5062
    .const 'Sub' $P5063 = 'cuid_53_1360623834.732' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_54_1360623834.732' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_55_1360623834.732' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_56_1360623834.732' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_57_1360623834.732' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_58_1360623834.732' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_59_1360623834.732' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_60_1360623834.732' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_61_1360623834.732' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_62_1360623834.732' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_63_1360623834.732' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_64_1360623834.732' 
    capture_lex $P5074
    .return ($P5074) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "termish" :subid("cuid_2_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "term" :subid("cuid_3_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "infixish" :subid("cuid_10_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "prefixish" :subid("cuid_11_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "postfixish" :subid("cuid_12_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
    rx32_cur."!alt"(rx32_pos, "alt_nfa__1_1360623834.868", $P11)
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
.sub "nullterm" :subid("cuid_13_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "nullterm_alt" :subid("cuid_14_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "nulltermish" :subid("cuid_15_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_delimited" :subid("cuid_16_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_atom" :subid("cuid_17_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
    rx50_cur."!alt"(rx50_pos, "alt_nfa__2_1360623834.896", $P11)
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
.sub "decint" :subid("cuid_18_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "decints" :subid("cuid_19_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "hexint" :subid("cuid_20_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "hexints" :subid("cuid_21_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "octint" :subid("cuid_22_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "octints" :subid("cuid_23_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "binint" :subid("cuid_24_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "binints" :subid("cuid_25_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "integer" :subid("cuid_26_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
    rx99_cur."!alt"(rx99_pos, "alt_nfa__4_1360623834.958", $P11)
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
    rx99_cur."!alt"(rx99_pos, "alt_nfa__3_1360623834.957", $P11)
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
.sub "dec_number" :subid("cuid_27_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
    rx108_cur."!alt"(rx108_pos, "alt_nfa__5_1360623834.975", $P11)
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
.sub "escale" :subid("cuid_28_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape" :subid("cuid_29_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<bs>" :subid("cuid_32_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<nl>" :subid("cuid_33_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<cr>" :subid("cuid_34_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<tab>" :subid("cuid_35_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<ff>" :subid("cuid_36_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<esc>" :subid("cuid_37_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<hex>" :subid("cuid_38_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
    rx145_cur."!alt"(rx145_pos, "alt_nfa__6_1360623835.043", $P11)
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
.sub "quote_escape:sym<oct>" :subid("cuid_39_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
    rx150_cur."!alt"(rx150_pos, "alt_nfa__7_1360623835.054", $P11)
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
.sub "quote_escape:sym<chr>" :subid("cuid_40_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<0>" :subid("cuid_41_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "quote_escape:sym<misc>" :subid("cuid_42_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_173_1360623834.732' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_43_1360623834.732' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1360623834.732' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_174_1360623834.732' 
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
    .const 'Sub' $P5002 = 'cuid_173_1360623834.732' 
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
    rx161_cur."!alt"(rx161_pos, "alt_nfa__8_1360623835.088", $P11)
    goto rx161_fail479
  alt164_0489:
    .const 'Sub' $P5004 = 'cuid_43_1360623834.732' 
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
    .const 'Sub' $P5005 = 'cuid_44_1360623834.732' 
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
    .const 'Sub' $P5007 = 'cuid_174_1360623834.732' 
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
.sub "" :subid("cuid_173_1360623834.732") :anon :lex :outer("cuid_42_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1360623834.732") :anon :lex :outer("cuid_42_1360623834.732")
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
.sub "" :subid("cuid_44_1360623834.732") :anon :lex :outer("cuid_42_1360623834.732")
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
.sub "" :subid("cuid_174_1360623834.732") :anon :lex :outer("cuid_42_1360623834.732")
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
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_172515:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_46_1360623834.732' 
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
    .const 'Sub' $P5001 = 'cuid_46_1360623834.732' 
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
.sub "" :subid("cuid_46_1360623834.732") :anon :lex :outer("cuid_45_1360623834.732")
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
.sub "charnames" :subid("cuid_47_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
.sub "charspec" :subid("cuid_48_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
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
    rx190_cur."!alt"(rx190_pos, "alt_nfa__9_1360623835.123", $P11)
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
.sub "O" :subid("cuid_49_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    if haz_param_1, default591
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_2, $P5001
  default591:

            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
            spec = find_lex '$spec'
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
            $P1 = self.'!cursor_start_all'()
            $P0 = $P1[0]
            $I0 = $P1[2]
            $P0.'!cursor_pass'($I0, '')
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_50_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 323
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_3 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
.annotate 'line', 324
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."pos"()
    set $P101, $P5004
.annotate 'line', 325
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."target"()
    set $P102, $P5006
.annotate 'line', 326
    _lex_param_1."push"(" at line ")
.annotate 'line', 327
    nqp_get_sc_object $P5009, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5008, $P5009, "HLL"
    get_who $P5007, $P5008
    set fb_tmp_3, $P5007
    repr_defined $I5001, fb_tmp_3
    unless $I5001 goto if198_else592 
    set $P5010, fb_tmp_3["Compiler"]
    set $P5012, $P5010
    goto if198_end593
  if198_else592:
    null $P5011
    set $P5012, $P5011
  if198_end593:
    unless_null $P5012, vivi_199594
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_199594:
    $P5014 = $P5012."lineof"($P102, $P101)
    set $N5002, $P5014
    set $N5003, 1
    add $N5001, $N5002, $N5003
    _lex_param_1."push"($N5001)
.annotate 'line', 328
    _lex_param_1."push"(", near \"")
.annotate 'line', 329
    set $S5003, $P102
    set $I5002, $P101
    substr $S5002, $S5003, $I5002, 10
    escape $S5001, $S5002
    _lex_param_1."push"($S5001)
.annotate 'line', 330
    _lex_param_1."push"("\"")
    join $S5004, "", _lex_param_1
    box $P5015, $S5004
    die $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_51_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 334
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_2, default597
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_2, $P5005
  default597:
    if _lex_param_2 goto unless200_end596 
.annotate 'line', 335
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless200_end596:
.annotate 'line', 338
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
.sub "peek_delimiters" :subid("cuid_52_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 351
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_175_1360623834.732' 
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
    unless $I5001 goto if201_end599 
.annotate 'line', 356
.annotate 'line', 357
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if201_end599:
    is_cclass $I5002, .CCLASS_WORD, $S101, 0
    unless $I5002 goto if202_end601 
.annotate 'line', 359
.annotate 'line', 360
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if202_end601:
    is_cclass $I5003, .CCLASS_WHITESPACE, $S101, 0
    unless $I5003 goto if203_end603 
.annotate 'line', 362
.annotate 'line', 363
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if203_end603:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if204_end605 
    .const 'Sub' $P5008 = 'cuid_175_1360623834.732' 
    capture_lex $P5008
    $P5009 = $P5008()
  if204_end605:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1360623834.732") :anon :lex :outer("cuid_52_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 369
    .lex "$len", $I101 
    .local pmc tmp_1 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if205_end607 
.annotate 'line', 371
.annotate 'line', 372
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if205_end607:
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
  while206_test608:
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
    unless $I5004 goto while206_done612 
  while206_redo610:
.annotate 'line', 380
    box $P5005, $I101
    set tmp_1, $P5005
    set $N5011, tmp_1
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5007, $N5010
    set $I101, $I5007
    set $P5005, tmp_1
    goto while206_test608 
  while206_done612:
    set $N5010, $I101
    set $N5011, 1
    isgt $I5007, $N5010, $N5011
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if207_end614 
.annotate 'line', 383
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if207_end614:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_53_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 392
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5030 = 'cuid_177_1360623834.732' 
    capture_lex $P5030 
    .lex "%*QUOTEMOD", $P101 
    .lex "$*QUOTE_START", $P102 
    .lex "$*QUOTE_STOP", $P103 
    .lex utf8:"$\x{a2}", $P104 
    .lex "$/", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc self 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx208_start
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    .local pmc rx208_curclass
    .local pmc rx208_bstack
    .local pmc rx208_cstack
    rx208_start = self."!cursor_start_all"()
    set rx208_cur, rx208_start[0]
    set rx208_tgt, rx208_start[1]
    set rx208_pos, rx208_start[2]
    set rx208_curclass, rx208_start[3]
    set rx208_bstack, rx208_start[4]
    set $I19, rx208_start[5]
    store_lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    eq $I19, 1, rx208_restart617
    gt rx208_pos, rx208_eos, rx208_fail618
    repr_get_attr_int $I11, self, rx208_curclass, "$!from"
    ne $I11, -1, rxscan209_done624
    goto rxscan209_scan623
  rxscan209_loop622:
    inc rx208_pos
    gt rx208_pos, rx208_eos, rx208_fail618
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!from", rx208_pos
  rxscan209_scan623:
    nqp_rxmark rx208_bstack, rxscan209_loop622, rx208_pos, 0
  rxscan209_done624:
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    store_lex unicode:"$\x{a2}", rx208_cur
    unless_null $P101, fallback625
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5004, $P5005
    set fb_tmp_4, $P5004
    repr_defined $I5001, fb_tmp_4
    unless $I5001 goto if210_else626 
    set $P5006, fb_tmp_4["%QUOTEMOD"]
    set $P5008, $P5006
    goto if210_end627
  if210_else626:
    null $P5007
    set $P5008, $P5007
  if210_end627:
    unless_null $P5008, vivi_211628
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%QUOTEMOD"], $P5011
    set $P5008, $P5011
  vivi_211628:
    unless_null $P5008, vivi_212629
    die "Contextual %*QUOTEMOD not found"
    box $P5012, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5012
  vivi_212629:
    set $P101, $P5008
  fallback625:
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    store_lex unicode:"$\x{a2}", rx208_cur
    unless_null $P102, fallback630
    nqp_get_sc_object $P5014, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5013, $P5014
    set fb_tmp_5, $P5013
    repr_defined $I5002, fb_tmp_5
    unless $I5002 goto if213_else631 
    set $P5015, fb_tmp_5["$QUOTE_START"]
    set $P5017, $P5015
    goto if213_end632
  if213_else631:
    null $P5016
    set $P5017, $P5016
  if213_end632:
    unless_null $P5017, vivi_214633
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_214633:
    unless_null $P5017, vivi_215634
    die "Contextual $*QUOTE_START not found"
    box $P5019, "Contextual $*QUOTE_START not found"
    set $P5017, $P5019
  vivi_215634:
    set $P102, $P5017
  fallback630:
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    store_lex unicode:"$\x{a2}", rx208_cur
    unless_null $P103, fallback635
    nqp_get_sc_object $P5021, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5020, $P5021
    set fb_tmp_6, $P5020
    repr_defined $I5003, fb_tmp_6
    unless $I5003 goto if216_else636 
    set $P5022, fb_tmp_6["$QUOTE_STOP"]
    set $P5024, $P5022
    goto if216_end637
  if216_else636:
    null $P5023
    set $P5024, $P5023
  if216_end637:
    unless_null $P5024, vivi_217638
    nqp_get_sc_object $P5025, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5024, $P5025
  vivi_217638:
    unless_null $P5024, vivi_218639
    die "Contextual $*QUOTE_STOP not found"
    box $P5026, "Contextual $*QUOTE_STOP not found"
    set $P5024, $P5026
  vivi_218639:
    set $P103, $P5024
  fallback635:
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    store_lex unicode:"$\x{a2}", rx208_cur
    $P5027 = $P104."MATCH"()
    set $P105, $P5027
    .const 'Sub' $P5028 = 'cuid_177_1360623834.732' 
    capture_lex $P5028
    $P5029 = $P5028()
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    $P11 = rx208_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx208_curclass, "$!pos"
    lt $I11, 0, rx208_fail618
    nqp_rxmark rx208_bstack, rxsubrule249_pass693, -1, 0
  rxsubrule249_pass693:
    rx208_cstack = rx208_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx208_pos, $P11, rx208_curclass, "$!pos"
    rx208_cur."!cursor_pass"(rx208_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx208_cur)
  rx208_restart617:
    repr_get_attr_obj rx208_cstack, rx208_cur, rx208_curclass, "$!cstack"
  rx208_fail618:
    unless rx208_bstack, rx208_done616
    pop $I19, rx208_bstack
    if_null rx208_cstack, rx208_cstack_done621
    unless rx208_cstack, rx208_cstack_done621
    dec $I19
    set $P11, rx208_cstack[$I19]
  rx208_cstack_done621:
    pop rx208_rep, rx208_bstack
    pop rx208_pos, rx208_bstack
    pop $I19, rx208_bstack
    lt rx208_pos, -1, rx208_done616
    lt rx208_pos, 0, rx208_fail618
    eq $I19, 0, rx208_fail618
    nqp_islist $I20, rx208_cstack
    unless $I20, rx208_jump619
    elements $I18, rx208_bstack
    le $I18, 0, rx208_cut620
    dec $I18
    set $I18, rx208_bstack[$I18]
  rx208_cut620:
    assign rx208_cstack, $I18
  rx208_jump619:
    jump $I19
  rx208_done616:
    rx208_cur."!cursor_fail"()
    .return (rx208_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1360623834.732") :anon :lex :outer("cuid_53_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 396
    .const 'Sub' $P5025 = 'cuid_176_1360623834.732' 
    capture_lex $P5025 
    .lex "@delims", $P101 
    .local pmc fb_tmp_15 
    .local pmc fb_tmp_16 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next684:
    unless $P5004, for_done686
    shift $P5007, $P5004
  for_redo685:
    .const 'Sub' $P5006 = 'cuid_176_1360623834.732' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next684
  for_done686:
.annotate 'line', 413
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
    set fb_tmp_15, $P101
    repr_defined $I5001, fb_tmp_15
    unless $I5001 goto if245_else687 
    set $P5017, fb_tmp_15[0]
    set $P5019, $P5017
    goto if245_end688
  if245_else687:
    null $P5018
    set $P5019, $P5018
  if245_end688:
    unless_null $P5019, vivi_246689
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_246689:
    store_dynamic_lex "$*QUOTE_START", $P5019
    set fb_tmp_16, $P101
    repr_defined $I5002, fb_tmp_16
    unless $I5002 goto if247_else690 
    set $P5021, fb_tmp_16[1]
    set $P5023, $P5021
    goto if247_end691
  if247_else690:
    null $P5022
    set $P5023, $P5022
  if247_end691:
    unless_null $P5023, vivi_248692
    nqp_get_sc_object $P5024, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5023, $P5024
  vivi_248692:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1360623834.732") :anon :lex :outer("cuid_177_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 397
    .param pmc _lex_param_0 
    .lex "$mod", _lex_param_0 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    .local pmc fb_tmp_9 
    .local pmc fb_tmp_10 
    .local pmc fb_tmp_11 
    .local pmc fb_tmp_12 
    .local pmc fb_tmp_13 
    .local pmc fb_tmp_14 
    set $S5002, _lex_param_0
    substr $S5001, $S5002, 1
    box $P5001, $S5001
    set _lex_param_0, $P5001
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback640
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5003, $P5004
    set fb_tmp_7, $P5003
    repr_defined $I5001, fb_tmp_7
    unless $I5001 goto if219_else641 
    set $P5005, fb_tmp_7["%QUOTEMOD"]
    set $P5007, $P5005
    goto if219_end642
  if219_else641:
    null $P5006
    set $P5007, $P5006
  if219_end642:
    unless_null $P5007, vivi_220643
    nqp_get_sc_object $P5009, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%QUOTEMOD"], $P5010
    set $P5007, $P5010
  vivi_220643:
    unless_null $P5007, vivi_221644
    die "Contextual %*QUOTEMOD not found"
    box $P5011, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5011
  vivi_221644:
    set $P5002, $P5007
  fallback640:
    set $S5003, _lex_param_0
    find_lex $P5012, "$TRUE"
    set $P5002[$S5003], $P5012
    set $S5004, _lex_param_0
    iseq $I5002, $S5004, "qq"
    unless $I5002 goto if222_else645 
.annotate 'line', 400
    find_dynamic_lex $P5013, "%*QUOTEMOD"
    unless_null $P5013, fallback647
    nqp_get_sc_object $P5015, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5014, $P5015
    set fb_tmp_8, $P5014
    repr_defined $I5003, fb_tmp_8
    unless $I5003 goto if223_else648 
    set $P5016, fb_tmp_8["%QUOTEMOD"]
    set $P5018, $P5016
    goto if223_end649
  if223_else648:
    null $P5017
    set $P5018, $P5017
  if223_end649:
    unless_null $P5018, vivi_224650
    nqp_get_sc_object $P5020, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5019, $P5020
    new $P5021, 'Hash'
    set $P5019["%QUOTEMOD"], $P5021
    set $P5018, $P5021
  vivi_224650:
    unless_null $P5018, vivi_225651
    die "Contextual %*QUOTEMOD not found"
    box $P5022, "Contextual %*QUOTEMOD not found"
    set $P5018, $P5022
  vivi_225651:
    set $P5013, $P5018
  fallback647:
    find_lex $P5023, "$TRUE"
    set $P5013["s"], $P5023
    find_dynamic_lex $P5024, "%*QUOTEMOD"
    unless_null $P5024, fallback652
    nqp_get_sc_object $P5026, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5025, $P5026
    set fb_tmp_9, $P5025
    repr_defined $I5004, fb_tmp_9
    unless $I5004 goto if226_else653 
    set $P5027, fb_tmp_9["%QUOTEMOD"]
    set $P5029, $P5027
    goto if226_end654
  if226_else653:
    null $P5028
    set $P5029, $P5028
  if226_end654:
    unless_null $P5029, vivi_227655
    nqp_get_sc_object $P5031, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5030, $P5031
    new $P5032, 'Hash'
    set $P5030["%QUOTEMOD"], $P5032
    set $P5029, $P5032
  vivi_227655:
    unless_null $P5029, vivi_228656
    die "Contextual %*QUOTEMOD not found"
    box $P5033, "Contextual %*QUOTEMOD not found"
    set $P5029, $P5033
  vivi_228656:
    set $P5024, $P5029
  fallback652:
    find_lex $P5034, "$TRUE"
    set $P5024["a"], $P5034
    find_dynamic_lex $P5035, "%*QUOTEMOD"
    unless_null $P5035, fallback657
    nqp_get_sc_object $P5037, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5036, $P5037
    set fb_tmp_10, $P5036
    repr_defined $I5005, fb_tmp_10
    unless $I5005 goto if229_else658 
    set $P5038, fb_tmp_10["%QUOTEMOD"]
    set $P5040, $P5038
    goto if229_end659
  if229_else658:
    null $P5039
    set $P5040, $P5039
  if229_end659:
    unless_null $P5040, vivi_230660
    nqp_get_sc_object $P5042, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5041, $P5042
    new $P5043, 'Hash'
    set $P5041["%QUOTEMOD"], $P5043
    set $P5040, $P5043
  vivi_230660:
    unless_null $P5040, vivi_231661
    die "Contextual %*QUOTEMOD not found"
    box $P5044, "Contextual %*QUOTEMOD not found"
    set $P5040, $P5044
  vivi_231661:
    set $P5035, $P5040
  fallback657:
    find_lex $P5045, "$TRUE"
    set $P5035["h"], $P5045
    find_dynamic_lex $P5046, "%*QUOTEMOD"
    unless_null $P5046, fallback662
    nqp_get_sc_object $P5048, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5047, $P5048
    set fb_tmp_11, $P5047
    repr_defined $I5006, fb_tmp_11
    unless $I5006 goto if232_else663 
    set $P5049, fb_tmp_11["%QUOTEMOD"]
    set $P5051, $P5049
    goto if232_end664
  if232_else663:
    null $P5050
    set $P5051, $P5050
  if232_end664:
    unless_null $P5051, vivi_233665
    nqp_get_sc_object $P5053, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5052, $P5053
    new $P5054, 'Hash'
    set $P5052["%QUOTEMOD"], $P5054
    set $P5051, $P5054
  vivi_233665:
    unless_null $P5051, vivi_234666
    die "Contextual %*QUOTEMOD not found"
    box $P5055, "Contextual %*QUOTEMOD not found"
    set $P5051, $P5055
  vivi_234666:
    set $P5046, $P5051
  fallback662:
    find_lex $P5056, "$TRUE"
    set $P5046["f"], $P5056
    find_dynamic_lex $P5057, "%*QUOTEMOD"
    unless_null $P5057, fallback667
    nqp_get_sc_object $P5059, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5058, $P5059
    set fb_tmp_12, $P5058
    repr_defined $I5007, fb_tmp_12
    unless $I5007 goto if235_else668 
    set $P5060, fb_tmp_12["%QUOTEMOD"]
    set $P5062, $P5060
    goto if235_end669
  if235_else668:
    null $P5061
    set $P5062, $P5061
  if235_end669:
    unless_null $P5062, vivi_236670
    nqp_get_sc_object $P5064, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5063, $P5064
    new $P5065, 'Hash'
    set $P5063["%QUOTEMOD"], $P5065
    set $P5062, $P5065
  vivi_236670:
    unless_null $P5062, vivi_237671
    die "Contextual %*QUOTEMOD not found"
    box $P5066, "Contextual %*QUOTEMOD not found"
    set $P5062, $P5066
  vivi_237671:
    set $P5057, $P5062
  fallback667:
    find_lex $P5067, "$TRUE"
    set $P5057["c"], $P5067
    find_dynamic_lex $P5068, "%*QUOTEMOD"
    unless_null $P5068, fallback672
    nqp_get_sc_object $P5070, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5069, $P5070
    set fb_tmp_13, $P5069
    repr_defined $I5008, fb_tmp_13
    unless $I5008 goto if238_else673 
    set $P5071, fb_tmp_13["%QUOTEMOD"]
    set $P5073, $P5071
    goto if238_end674
  if238_else673:
    null $P5072
    set $P5073, $P5072
  if238_end674:
    unless_null $P5073, vivi_239675
    nqp_get_sc_object $P5075, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5074, $P5075
    new $P5076, 'Hash'
    set $P5074["%QUOTEMOD"], $P5076
    set $P5073, $P5076
  vivi_239675:
    unless_null $P5073, vivi_240676
    die "Contextual %*QUOTEMOD not found"
    box $P5077, "Contextual %*QUOTEMOD not found"
    set $P5073, $P5077
  vivi_240676:
    set $P5068, $P5073
  fallback672:
    find_lex $P5078, "$TRUE"
    set $P5068["b"], $P5078
    set $P5092, $P5078
    goto if222_end646
  if222_else645:
    set $S5005, _lex_param_0
    iseq $I5009, $S5005, "b"
    box $P5091, $I5009
    set $P5090, $P5091
    unless $I5009 goto if241_end678 
.annotate 'line', 408
    find_dynamic_lex $P5079, "%*QUOTEMOD"
    unless_null $P5079, fallback679
    nqp_get_sc_object $P5081, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5080, $P5081
    set fb_tmp_14, $P5080
    repr_defined $I5010, fb_tmp_14
    unless $I5010 goto if242_else680 
    set $P5082, fb_tmp_14["%QUOTEMOD"]
    set $P5084, $P5082
    goto if242_end681
  if242_else680:
    null $P5083
    set $P5084, $P5083
  if242_end681:
    unless_null $P5084, vivi_243682
    nqp_get_sc_object $P5086, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5085, $P5086
    new $P5087, 'Hash'
    set $P5085["%QUOTEMOD"], $P5087
    set $P5084, $P5087
  vivi_243682:
    unless_null $P5084, vivi_244683
    die "Contextual %*QUOTEMOD not found"
    box $P5088, "Contextual %*QUOTEMOD not found"
    set $P5084, $P5088
  vivi_244683:
    set $P5079, $P5084
  fallback679:
    find_lex $P5089, "$TRUE"
    set $P5079["q"], $P5089
    set $P5090, $P5089
  if241_end678:
    set $P5092, $P5090
  if222_end646:
    .return ($P5092) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_54_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_178_1360623834.732' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx250_start
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    .local pmc rx250_curclass
    .local pmc rx250_bstack
    .local pmc rx250_cstack
    rx250_start = self."!cursor_start_all"()
    set rx250_cur, rx250_start[0]
    set rx250_tgt, rx250_start[1]
    set rx250_pos, rx250_start[2]
    set rx250_curclass, rx250_start[3]
    set rx250_bstack, rx250_start[4]
    set $I19, rx250_start[5]
    store_lex unicode:"$\x{a2}", rx250_cur
    length rx250_eos, rx250_tgt
    eq $I19, 1, rx250_restart696
    gt rx250_pos, rx250_eos, rx250_fail697
    repr_get_attr_int $I11, self, rx250_curclass, "$!from"
    ne $I11, -1, rxscan251_done703
    goto rxscan251_scan702
  rxscan251_loop701:
    inc rx250_pos
    gt rx250_pos, rx250_eos, rx250_fail697
    repr_bind_attr_int rx250_cur, rx250_curclass, "$!from", rx250_pos
  rxscan251_scan702:
    nqp_rxmark rx250_bstack, rxscan251_loop701, rx250_pos, 0
  rxscan251_done703:
    repr_bind_attr_int rx250_cur, rx250_curclass, "$!pos", rx250_pos
    store_lex unicode:"$\x{a2}", rx250_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_178_1360623834.732' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx250_fail697
    rx250_cur."!cursor_pass"(rx250_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx250_cur)
  rx250_restart696:
    repr_get_attr_obj rx250_cstack, rx250_cur, rx250_curclass, "$!cstack"
  rx250_fail697:
    unless rx250_bstack, rx250_done695
    pop $I19, rx250_bstack
    if_null rx250_cstack, rx250_cstack_done700
    unless rx250_cstack, rx250_cstack_done700
    dec $I19
    set $P11, rx250_cstack[$I19]
  rx250_cstack_done700:
    pop rx250_rep, rx250_bstack
    pop rx250_pos, rx250_bstack
    pop $I19, rx250_bstack
    lt rx250_pos, -1, rx250_done695
    lt rx250_pos, 0, rx250_fail697
    eq $I19, 0, rx250_fail697
    nqp_islist $I20, rx250_cstack
    unless $I20, rx250_jump698
    elements $I18, rx250_bstack
    le $I18, 0, rx250_cut699
    dec $I18
    set $I18, rx250_bstack[$I18]
  rx250_cut699:
    assign rx250_cstack, $I18
  rx250_jump698:
    jump $I19
  rx250_done695:
    rx250_cur."!cursor_fail"()
    .return (rx250_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1360623834.732") :anon :lex :outer("cuid_54_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 421
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback706
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5002, $P5003
    set fb_tmp_18, $P5002
    repr_defined $I5002, fb_tmp_18
    unless $I5002 goto if253_else707 
    set $P5004, fb_tmp_18["%QUOTEMOD"]
    set $P5006, $P5004
    goto if253_end708
  if253_else707:
    null $P5005
    set $P5006, $P5005
  if253_end708:
    unless_null $P5006, vivi_254709
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%QUOTEMOD"], $P5009
    set $P5006, $P5009
  vivi_254709:
    unless_null $P5006, vivi_255710
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5006, $P5010
  vivi_255710:
    set $P5001, $P5006
  fallback706:
    set fb_tmp_17, $P5001
    repr_defined $I5001, fb_tmp_17
    unless $I5001 goto if252_else704 
    find_lex $S5001, "$mod"
    set $P5011, fb_tmp_17[$S5001]
    set $P5013, $P5011
    goto if252_end705
  if252_else704:
    null $P5012
    set $P5013, $P5012
  if252_end705:
    unless_null $P5013, vivi_256711
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_256711:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_55_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 424
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            $P0 = self.'!cursor_start_all'()
            cur = $P0[0]
            target = $P0[1]
            pos = $P0[2]

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
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_56_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 450
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            $P0 = self.'!cursor_start_all'()
            cur = $P0[0]
            target = $P0[1]
            pos = $P0[2]

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
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_57_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 476
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
  while257_test712:
    find_not_cclass $I5003, .CCLASS_WHITESPACE, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while257_done716 
  while257_redo714:
.annotate 'line', 481
    find_cclass $I5004, .CCLASS_WHITESPACE, _lex_param_1, $I101, $I102
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
    goto while257_test712 
  while257_done716:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_58_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 497
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$preclim", _lex_param_1 
    .lex "$noinfix", _lex_param_2 
    if haz_param_3, default717
    set $S5001, ""
    set _lex_param_1, $S5001
  default717:
    if haz_param_4, default718
    set $I5001, 0
    set _lex_param_2, $I5001
  default718:

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

            .local string preclim
            .local int noinfix
            preclim = find_lex '$preclim'
            noinfix = find_lex '$noinfix'
            
            .local pmc here
            .local string tgt
            .local int pos
            $P0 = self.'!cursor_start_all'()
            here = $P0[0]
            tgt = $P0[1]
            pos = $P0[2]

            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            .local pmc termcur
            repr_bind_attr_int here, cur_class, "$!pos", pos
            termcur = here.termishrx()
            pos = repr_get_attr_int termcur, cur_class, "$!pos"
            repr_bind_attr_int here, cur_class, "$!pos", pos
            if pos < 0 goto fail
            .local pmc termish
            termish = termcur.'MATCH'()

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
            
            if noinfix goto term_done

          next_infix:
            # Now see if we can fetch an infix operator
            .local pmc wscur, infixcur, infix
            
            # First, we need ws to match.
            repr_bind_attr_int here, cur_class, "$!pos", pos
            wscur = here.'ws'()
            pos = repr_get_attr_int wscur, cur_class, '$!pos'
            if pos < 0 goto term_done
            repr_bind_attr_int here, cur_class, "$!pos", pos
            
            # Next, try the infix itself.
            infixcur = here.'infixish'()
            pos = repr_get_attr_int infixcur, cur_class, '$!pos'
            if pos < 0 goto term_done
            infix = infixcur.'MATCH'()

            # We got an infix.
            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
          nonextterm:
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec, infake
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec < preclim goto term_done

            $P0 = inO['sub']
            if null $P0 goto subprec_done
            inO['prec'] = $P0
          subprec_done:

          infake = inO['fake']

          reduce_loop:
            unless opstack goto reduce_gt_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['O']
            opprec = $P0['prec']
            unless opprec > inprec goto reduce_gt_done
            self.'EXPR_reduce'(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless infake goto fake_done
            push opstack, infix
            self.'EXPR_reduce'(termstack, opstack)
            goto next_infix  # not really an infix, so keep trying
          fake_done:
          
            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            inassoc = inO['assoc']
            unless inassoc == 'non' goto assoc_ok
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            $P1 = infix.'Str'()
            self.'EXPR_nonassoc'(infixcur, $P0, $P1)
          assoc_ok:
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            self.'EXPR_reduce'(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            repr_bind_attr_int here, cur_class, "$!pos", pos
            wscur = here.'ws'()
            pos = repr_get_attr_int wscur, cur_class, '$!pos'
            repr_bind_attr_int here, cur_class, "$!pos", pos
            if pos < 0 goto fail
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            self.'EXPR_reduce'(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start_cur'()
            here.'!cursor_pass'(pos)
            repr_bind_attr_int here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            goto done

          fail:
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_59_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 706
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$termstack", _lex_param_1 
    .lex "$opstack", _lex_param_2 

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            
            # Give it a fresh capture list, since we'll have assumed it has
            # no positional captures and not taken them.
            .local pmc cap_class
            cap_class = find_lex 'NQPCapture'
            $P0 = new ['ResizablePMCArray']
            setattribute op, cap_class, '@!array', $P0
            
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
            self.'!reduce_with_match'('EXPR', 'INFIX', op)
            goto done

          op_unary:
            .local pmc arg, afrom, ofrom
            arg = pop termstack
            op[0] = arg
            afrom = arg.'from'()
            ofrom = op.'from'()
            if afrom < ofrom goto op_postfix
          op_prefix:
            self.'!reduce_with_match'('EXPR', 'PREFIX', op)
            goto done
          op_postfix:
            self.'!reduce_with_match'('EXPR', 'POSTFIX', op)
            goto done

          op_list:
            .local string sym
            sym = ''
            $P0 = opOPER['sym']
            if null $P0 goto op_list_1
            sym = $P0
          op_list_1:
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $S0 = ''
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            if null $P0 goto op_sym_1
            $S0 = $P0
          op_sym_1:
            if sym != $S0 goto op_sym_done
            arg = pop termstack
            unshift op, arg
            $P0 = pop opstack
            goto op_sym_loop
          op_sym_done:
            arg = pop termstack
            unshift op, arg
            self.'!reduce_with_match'('EXPR', 'LIST', op)
            goto done

          done:
            push termstack, op
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_nonassoc" :subid("cuid_60_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 792
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    .lex "$op1", _lex_param_2 
    .lex "$op2", _lex_param_3 
.annotate 'line', 793
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
.sub "ternary" :subid("cuid_61_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 796
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc fb_tmp_21 
    set fb_tmp_19, _lex_param_1
    repr_defined $I5001, fb_tmp_19
    unless $I5001 goto if258_else719 
    set $P5001, fb_tmp_19[1]
    set $P5003, $P5001
    goto if258_end720
  if258_else719:
    null $P5002
    set $P5003, $P5002
  if258_end720:
    unless_null $P5003, vivi_259721
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5003, $P5004
  vivi_259721:
    set _lex_param_1[2], $P5003
    set fb_tmp_21, _lex_param_1
    repr_defined $I5003, fb_tmp_21
    unless $I5003 goto if261_else724 
    set $P5005, fb_tmp_21["infix"]
    set $P5007, $P5005
    goto if261_end725
  if261_else724:
    null $P5006
    set $P5007, $P5006
  if261_end725:
    unless_null $P5007, vivi_262726
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_262726:
    set fb_tmp_20, $P5007
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if260_else722 
    set $P5009, fb_tmp_20["EXPR"]
    set $P5011, $P5009
    goto if260_end723
  if260_else722:
    null $P5010
    set $P5011, $P5010
  if260_end723:
    unless_null $P5011, vivi_263727
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_263727:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_62_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 801
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
.annotate 'line', 809
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!cursor_start_cur"()
    set $P102, $P5005
.annotate 'line', 810
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."pos"()
    $P102."!cursor_pass"($P5007)
    set $P101[_lex_param_1], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_63_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    .local pmc fb_tmp_22 
    .local pmc fb_tmp_23 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
    set fb_tmp_22, $P101
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if264_else728 
    set $P5004, fb_tmp_22[_lex_param_1]
    set $P5006, $P5004
    goto if264_end729
  if264_else728:
    null $P5005
    set $P5006, $P5005
  if264_end729:
    unless_null $P5006, vivi_265730
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_265730:
    set $P102, $P5006
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_23, $P5008
    repr_defined $I5003, fb_tmp_23
    unless $I5003 goto if268_else735 
    set $P5010, fb_tmp_23["NQPCursor"]
    set $P5012, $P5010
    goto if268_end736
  if268_else735:
    null $P5011
    set $P5012, $P5011
  if268_end736:
    unless_null $P5012, vivi_270738
    nqp_get_sc_object $P5015, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5014, $P5015
    set $P5013, $P5014["NQPCursor"]
    unless_null $P5013, vivi_269737
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5016
  vivi_269737:
    set $P5012, $P5013
  vivi_270738:
    type_check $I5002, $P102, $P5012
    set $I5005, $I5002
    unless $I5002 goto if267_end734 
.annotate 'line', 823
    $P5017 = $P102."pos"()
    set $N5001, $P5017
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."pos"()
    set $N5002, $P5019
    iseq $I5004, $N5001, $N5002
    set $I5005, $I5004
  if267_end734:
    if $I5005 goto unless266_end732 
.annotate 'line', 824
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."!cursor_start_cur"()
    set $P102, $P5021
  unless266_end732:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_64_1360623834.732") :anon :lex :outer("cuid_172_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 829
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
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
.annotate 'line', 830
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback741
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5004, $P5005
    set fb_tmp_25, $P5004
    repr_defined $I5002, fb_tmp_25
    unless $I5002 goto if272_else742 
    set $P5006, fb_tmp_25["%LANG"]
    set $P5008, $P5006
    goto if272_end743
  if272_else742:
    null $P5007
    set $P5008, $P5007
  if272_end743:
    unless_null $P5008, vivi_273744
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5009, $P5010
    new $P5011, 'Hash'
    set $P5009["%LANG"], $P5011
    set $P5008, $P5011
  vivi_273744:
    unless_null $P5008, vivi_274745
    die "Contextual %*LANG not found"
    box $P5012, "Contextual %*LANG not found"
    set $P5008, $P5012
  vivi_274745:
    set $P5003, $P5008
  fallback741:
    set fb_tmp_24, $P5003
    repr_defined $I5001, fb_tmp_24
    unless $I5001 goto if271_else739 
    set $S5001, _lex_param_1
    set $P5013, fb_tmp_24[$S5001]
    set $P5015, $P5013
    goto if271_end740
  if271_else739:
    null $P5014
    set $P5015, $P5014
  if271_end740:
    unless_null $P5015, vivi_275746
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_275746:
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."orig"()
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."pos"()
    nqp_decontainerize $P5021, _lex_param_0
    $P5022 = $P5021."!shared"()
    $P5023 = $P5015."!cursor_init"($P5018, $P5020 :named("p"), $P5022 :named("shared"))
    set $P101, $P5023
.annotate 'line', 831
    nqp_decontainerize $P5025, _lex_param_0
    get_how $P5024, $P5025
    nqp_decontainerize $P5026, _lex_param_0
    $P5027 = $P5024."traced"($P5026)
    unless $P5027 goto if276_end748 
.annotate 'line', 832
    get_how $P5028, $P101
    nqp_decontainerize $P5030, _lex_param_0
    get_how $P5029, $P5030
    nqp_decontainerize $P5031, _lex_param_0
    $P5032 = $P5029."trace_depth"($P5031)
    $P5033 = $P5028."trace-on"($P101, $P5032)
  if276_end748:
    find_dynamic_lex $P5034, "%*LANG"
    unless_null $P5034, fallback751
    nqp_get_sc_object $P5036, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5035, $P5036
    set fb_tmp_27, $P5035
    repr_defined $I5004, fb_tmp_27
    unless $I5004 goto if278_else752 
    set $P5037, fb_tmp_27["%LANG"]
    set $P5039, $P5037
    goto if278_end753
  if278_else752:
    null $P5038
    set $P5039, $P5038
  if278_end753:
    unless_null $P5039, vivi_279754
    nqp_get_sc_object $P5041, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5040, $P5041
    new $P5042, 'Hash'
    set $P5040["%LANG"], $P5042
    set $P5039, $P5042
  vivi_279754:
    unless_null $P5039, vivi_280755
    die "Contextual %*LANG not found"
    box $P5043, "Contextual %*LANG not found"
    set $P5039, $P5043
  vivi_280755:
    set $P5034, $P5039
  fallback751:
    set fb_tmp_26, $P5034
    repr_defined $I5003, fb_tmp_26
    unless $I5003 goto if277_else749 
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5044, fb_tmp_26[$S5002]
    set $P5046, $P5044
    goto if277_end750
  if277_else749:
    null $P5045
    set $P5046, $P5045
  if277_end750:
    unless_null $P5046, vivi_281756
    nqp_get_sc_object $P5047, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5046, $P5047
  vivi_281756:
    set $P102, $P5046
.annotate 'line', 835
    set $S5004, _lex_param_2
    $P5048 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1360623834.732") :anon :lex :outer("cuid_179_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 840
    .const 'Sub' $P5037 = 'cuid_180_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_65_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_66_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1360623834.732' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_97_1360623834.732' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_180_1360623834.732' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_65_1360623834.732' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_66_1360623834.732' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_67_1360623834.732' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_68_1360623834.732' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_69_1360623834.732' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_70_1360623834.732' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_71_1360623834.732' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_72_1360623834.732' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_73_1360623834.732' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_74_1360623834.732' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_75_1360623834.732' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_76_1360623834.732' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_77_1360623834.732' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_78_1360623834.732' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_79_1360623834.732' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_80_1360623834.732' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_81_1360623834.732' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_82_1360623834.732' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_83_1360623834.732' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_84_1360623834.732' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_85_1360623834.732' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_86_1360623834.732' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_87_1360623834.732' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_88_1360623834.732' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_89_1360623834.732' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_90_1360623834.732' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_91_1360623834.732' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_92_1360623834.732' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_93_1360623834.732' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_94_1360623834.732' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_95_1360623834.732' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_96_1360623834.732' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_97_1360623834.732' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_180_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 841
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    if $I5002 goto unless282_end758 
.annotate 'line', 843
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless282_end758:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_65_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 848
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_183_1360623834.732' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if283_else759 
    .const 'Sub' $P5001 = 'cuid_183_1360623834.732' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if283_end760
  if283_else759:
.annotate 'line', 855
.annotate 'line', 856
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if283_end760:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1360623834.732") :anon :lex :outer("cuid_65_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 849
    .const 'Sub' $P5009 = 'cuid_182_1360623834.732' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next761:
    unless $P5005, for_done763
    shift $P5008, $P5005
  for_redo762:
    .const 'Sub' $P5007 = 'cuid_182_1360623834.732' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next761
  for_done763:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1360623834.732") :anon :lex :outer("cuid_183_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 851
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5002, $P5001
.annotate 'line', 852
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
.sub "CTXSAVE" :subid("cuid_66_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 860
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
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
    .local pmc fb_tmp_40 
.annotate 'line', 861
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5002, $P5003, "QAST"
    get_who $P5001, $P5002
    set fb_tmp_28, $P5001
    repr_defined $I5001, fb_tmp_28
    unless $I5001 goto if284_else764 
    set $P5004, fb_tmp_28["Stmts"]
    set $P5006, $P5004
    goto if284_end765
  if284_else764:
    null $P5005
    set $P5006, $P5005
  if284_end765:
    unless_null $P5006, vivi_285766
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_285766:
.annotate 'line', 862
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set fb_tmp_29, $P5008
    repr_defined $I5002, fb_tmp_29
    unless $I5002 goto if286_else767 
    set $P5011, fb_tmp_29["Op"]
    set $P5013, $P5011
    goto if286_end768
  if286_else767:
    null $P5012
    set $P5013, $P5012
  if286_end768:
    unless_null $P5013, vivi_287769
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_287769:
.annotate 'line', 864
    nqp_get_sc_object $P5017, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set fb_tmp_30, $P5015
    repr_defined $I5003, fb_tmp_30
    unless $I5003 goto if288_else770 
    set $P5018, fb_tmp_30["Var"]
    set $P5020, $P5018
    goto if288_end771
  if288_else770:
    null $P5019
    set $P5020, $P5019
  if288_end771:
    unless_null $P5020, vivi_289772
    nqp_get_sc_object $P5021, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5020, $P5021
  vivi_289772:
    $P5022 = $P5020."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 865
    nqp_get_sc_object $P5025, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5024, $P5025, "QAST"
    get_who $P5023, $P5024
    set fb_tmp_31, $P5023
    repr_defined $I5004, fb_tmp_31
    unless $I5004 goto if290_else773 
    set $P5026, fb_tmp_31["Var"]
    set $P5028, $P5026
    goto if290_end774
  if290_else773:
    null $P5027
    set $P5028, $P5027
  if290_end774:
    unless_null $P5028, vivi_291775
    nqp_get_sc_object $P5029, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5028, $P5029
  vivi_291775:
    $P5030 = $P5028."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5031 = $P5013."new"($P5022, $P5030, "bind" :named("op"))
.annotate 'line', 867
    nqp_get_sc_object $P5034, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5033, $P5034, "QAST"
    get_who $P5032, $P5033
    set fb_tmp_32, $P5032
    repr_defined $I5005, fb_tmp_32
    unless $I5005 goto if292_else776 
    set $P5035, fb_tmp_32["Op"]
    set $P5037, $P5035
    goto if292_end777
  if292_else776:
    null $P5036
    set $P5037, $P5036
  if292_end777:
    unless_null $P5037, vivi_293778
    nqp_get_sc_object $P5038, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5037, $P5038
  vivi_293778:
.annotate 'line', 869
    nqp_get_sc_object $P5041, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5040, $P5041, "QAST"
    get_who $P5039, $P5040
    set fb_tmp_33, $P5039
    repr_defined $I5006, fb_tmp_33
    unless $I5006 goto if294_else779 
    set $P5042, fb_tmp_33["Op"]
    set $P5044, $P5042
    goto if294_end780
  if294_else779:
    null $P5043
    set $P5044, $P5043
  if294_end780:
    unless_null $P5044, vivi_295781
    nqp_get_sc_object $P5045, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5044, $P5045
  vivi_295781:
.annotate 'line', 871
    nqp_get_sc_object $P5048, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5047, $P5048, "QAST"
    get_who $P5046, $P5047
    set fb_tmp_34, $P5046
    repr_defined $I5007, fb_tmp_34
    unless $I5007 goto if296_else782 
    set $P5049, fb_tmp_34["Var"]
    set $P5051, $P5049
    goto if296_end783
  if296_else782:
    null $P5050
    set $P5051, $P5050
  if296_end783:
    unless_null $P5051, vivi_297784
    nqp_get_sc_object $P5052, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5051, $P5052
  vivi_297784:
    $P5053 = $P5051."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5054 = $P5044."new"($P5053, "isnull" :named("op"))
.annotate 'line', 873
    nqp_get_sc_object $P5057, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5056, $P5057, "QAST"
    get_who $P5055, $P5056
    set fb_tmp_35, $P5055
    repr_defined $I5008, fb_tmp_35
    unless $I5008 goto if298_else785 
    set $P5058, fb_tmp_35["Op"]
    set $P5060, $P5058
    goto if298_end786
  if298_else785:
    null $P5059
    set $P5060, $P5059
  if298_end786:
    unless_null $P5060, vivi_299787
    nqp_get_sc_object $P5061, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5060, $P5061
  vivi_299787:
.annotate 'line', 875
    nqp_get_sc_object $P5064, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5063, $P5064, "QAST"
    get_who $P5062, $P5063
    set fb_tmp_36, $P5062
    repr_defined $I5009, fb_tmp_36
    unless $I5009 goto if300_else788 
    set $P5065, fb_tmp_36["Op"]
    set $P5067, $P5065
    goto if300_end789
  if300_else788:
    null $P5066
    set $P5067, $P5066
  if300_end789:
    unless_null $P5067, vivi_301790
    nqp_get_sc_object $P5068, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5067, $P5068
  vivi_301790:
.annotate 'line', 877
    nqp_get_sc_object $P5071, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5070, $P5071, "QAST"
    get_who $P5069, $P5070
    set fb_tmp_37, $P5069
    repr_defined $I5010, fb_tmp_37
    unless $I5010 goto if302_else791 
    set $P5072, fb_tmp_37["Var"]
    set $P5074, $P5072
    goto if302_end792
  if302_else791:
    null $P5073
    set $P5074, $P5073
  if302_end792:
    unless_null $P5074, vivi_303793
    nqp_get_sc_object $P5075, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5074, $P5075
  vivi_303793:
    $P5076 = $P5074."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 878
    nqp_get_sc_object $P5079, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5078, $P5079, "QAST"
    get_who $P5077, $P5078
    set fb_tmp_38, $P5077
    repr_defined $I5011, fb_tmp_38
    unless $I5011 goto if304_else794 
    set $P5080, fb_tmp_38["SVal"]
    set $P5082, $P5080
    goto if304_end795
  if304_else794:
    null $P5081
    set $P5082, $P5081
  if304_end795:
    unless_null $P5082, vivi_305796
    nqp_get_sc_object $P5083, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5082, $P5083
  vivi_305796:
    $P5084 = $P5082."new"("ctxsave" :named("value"))
    $P5085 = $P5067."new"($P5076, $P5084, "can" :named("op"))
.annotate 'line', 880
    nqp_get_sc_object $P5088, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5087, $P5088, "QAST"
    get_who $P5086, $P5087
    set fb_tmp_39, $P5086
    repr_defined $I5012, fb_tmp_39
    unless $I5012 goto if306_else797 
    set $P5089, fb_tmp_39["Op"]
    set $P5091, $P5089
    goto if306_end798
  if306_else797:
    null $P5090
    set $P5091, $P5090
  if306_end798:
    unless_null $P5091, vivi_307799
    nqp_get_sc_object $P5092, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5091, $P5092
  vivi_307799:
.annotate 'line', 882
    nqp_get_sc_object $P5095, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5094, $P5095, "QAST"
    get_who $P5093, $P5094
    set fb_tmp_40, $P5093
    repr_defined $I5013, fb_tmp_40
    unless $I5013 goto if308_else800 
    set $P5096, fb_tmp_40["Var"]
    set $P5098, $P5096
    goto if308_end801
  if308_else800:
    null $P5097
    set $P5098, $P5097
  if308_end801:
    unless_null $P5098, vivi_309802
    nqp_get_sc_object $P5099, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5098, $P5099
  vivi_309802:
    $P5100 = $P5098."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5101 = $P5091."new"($P5100, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5102 = $P5060."new"($P5085, $P5101, "if" :named("op"))
    $P5103 = $P5037."new"($P5054, $P5102, "unless" :named("op"))
    $P5104 = $P5006."new"($P5031, $P5103)
    .return ($P5104) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_67_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 886
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_186_1360623834.732' 
    capture_lex $P5026 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback807
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5003, $P5004
    set fb_tmp_43, $P5003
    repr_defined $I5003, fb_tmp_43
    unless $I5003 goto if312_else808 
    set $P5005, fb_tmp_43["%COMPILING"]
    set $P5007, $P5005
    goto if312_end809
  if312_else808:
    null $P5006
    set $P5007, $P5006
  if312_end809:
    unless_null $P5007, vivi_313810
    nqp_get_sc_object $P5009, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%COMPILING"], $P5010
    set $P5007, $P5010
  vivi_313810:
    unless_null $P5007, vivi_314811
    die "Contextual %*COMPILING not found"
    box $P5011, "Contextual %*COMPILING not found"
    set $P5007, $P5011
  vivi_314811:
    set $P5002, $P5007
  fallback807:
    set fb_tmp_42, $P5002
    repr_defined $I5002, fb_tmp_42
    unless $I5002 goto if311_else805 
    set $P5012, fb_tmp_42["%?OPTIONS"]
    set $P5014, $P5012
    goto if311_end806
  if311_else805:
    null $P5013
    set $P5014, $P5013
  if311_end806:
    unless_null $P5014, vivi_315812
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5014, $P5015
  vivi_315812:
    set fb_tmp_41, $P5014
    repr_defined $I5001, fb_tmp_41
    unless $I5001 goto if310_else803 
    set $P5016, fb_tmp_41["outer_ctx"]
    set $P5018, $P5016
    goto if310_end804
  if310_else803:
    null $P5017
    set $P5018, $P5017
  if310_end804:
    unless_null $P5018, vivi_316813
    nqp_get_sc_object $P5019, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5018, $P5019
  vivi_316813:
    set $P101, $P5018
    defined $I5004, $P101
    box $P5025, $I5004
    set $P5024, $P5025
    unless $I5004 goto if317_end815 
.annotate 'line', 888
  until318_test816:
    isnull $I5005, $P101
    box $P5023, $I5005
    set $P5022, $P5023
    if $I5005 goto until318_done820 
  until318_redo818:
    .const 'Sub' $P5020 = 'cuid_186_1360623834.732' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5022, $P5021
    goto until318_test816 
  until318_done820:
    set $P5024, $P5022
  if317_end815:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1360623834.732") :anon :lex :outer("cuid_67_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 889
    .const 'Sub' $P5011 = 'cuid_185_1360623834.732' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless319_end822 
.annotate 'line', 891
    set $P5004, $P101
    iter $P5006, $P101
  for_next833:
    unless $P5006, for_done835
    shift $P5008, $P5006
  for_redo834:
    .const 'Sub' $P5007 = 'cuid_185_1360623834.732' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next833
  for_done835:
  unless319_end822:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1360623834.732") :anon :lex :outer("cuid_186_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 892
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_184_1360623834.732' 
    capture_lex $P5006 
    .lex "$key", $S101 
    .lex "$_", _lex_param_0 
    set $S101, ""
    set $S5001, _lex_param_0
    set $S101, $S5001
.annotate 'line', 894
    find_lex $P5001, "$block"
    $P5002 = $P5001."symbol"($S101)
    set $P5005, $P5002
    if $P5002 goto unless320_end824 
    .const 'Sub' $P5003 = 'cuid_184_1360623834.732' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless320_end824:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1360623834.732") :anon :lex :outer("cuid_185_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 894
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if321_else825 
.annotate 'line', 896
.annotate 'line', 897
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if321_end826
  if321_else825:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if322_else827 
.annotate 'line', 899
.annotate 'line', 900
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if322_end828
  if322_else827:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if323_else829 
.annotate 'line', 902
.annotate 'line', 903
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if323_end830
  if323_else829:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if324_end832 
.annotate 'line', 905
.annotate 'line', 906
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if324_end832:
    set $P5022, $P5020
  if323_end830:
    set $P5023, $P5022
  if322_end828:
    set $P5024, $P5023
  if321_end826:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_68_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 916
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_187_1360623834.732' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_188_1360623834.732' 
    capture_lex $P5028 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_54 
    if haz_param_5, default893
    nqp_get_sc_object $P5027, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_2, $P5027
  default893:
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_836
    .lex "RETURN", $P102
    if _lex_param_2 goto unless325_end839 
.annotate 'line', 917
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless325_end839:
.annotate 'line', 918
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor840
    unless_null _lex_param_1, fallback843
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5006
  fallback843:
    set fb_tmp_44, _lex_param_1
    repr_defined $I5002, fb_tmp_44
    unless $I5002 goto if326_else841 
    set $P5007, fb_tmp_44["OPER"]
    set $P5009, $P5007
    goto if326_end842
  if326_else841:
    null $P5008
    set $P5009, $P5008
  if326_end842:
    unless_null $P5009, vivi_327844
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_327844:
    $P5011 = $P5009."ast"()
    set $P5004, $P5011
  defor840:
    set $P101, $P5004
    if $P101 goto unless328_end846 
    .const 'Sub' $P5012 = 'cuid_187_1360623834.732' 
    capture_lex $P5012
    $P5013 = $P5012()
  unless328_end846:
    set $S5001, _lex_param_2
    iseq $I5003, $S5001, "POSTFIX"
    unless $I5003 goto if350_else883 
.annotate 'line', 931
.annotate 'line', 932
    set fb_tmp_54, _lex_param_1
    repr_defined $I5004, fb_tmp_54
    unless $I5004 goto if351_else885 
    set $P5014, fb_tmp_54[0]
    set $P5016, $P5014
    goto if351_end886
  if351_else885:
    null $P5015
    set $P5016, $P5015
  if351_end886:
    unless_null $P5016, vivi_352887
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5016, $P5017
  vivi_352887:
    $P5018 = $P5016."ast"()
    $P5019 = $P101."unshift"($P5018)
    goto if350_end884
  if350_else883:
.annotate 'line', 934
.annotate 'line', 935
    $P5023 = _lex_param_1."list"()
    set $P5020, $P5023
    iter $P5022, $P5023
  for_next890:
    unless $P5022, for_done892
    shift $P5025, $P5022
  for_redo891:
    .const 'Sub' $P5024 = 'cuid_188_1360623834.732' 
    capture_lex $P5024
    $P5020 = $P5024($P5025)
    goto for_next890
  for_done892:
  if350_end884:
.annotate 'line', 937
    $P5026 = _lex_param_1."!make"($P101)
    goto lexotic_837
  lexotic_836:
    .get_results ($P5026)
  lexotic_837:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1360623834.732") :anon :lex :outer("cuid_68_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 919
    .lex "$name", $P101 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 920
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set fb_tmp_45, $P5002
    repr_defined $I5001, fb_tmp_45
    unless $I5001 goto if329_else847 
    set $P5005, fb_tmp_45["Op"]
    set $P5007, $P5005
    goto if329_end848
  if329_else847:
    null $P5006
    set $P5007, $P5006
  if329_end848:
    unless_null $P5007, vivi_330849
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_330849:
    find_lex $P5009, "$/"
    $P5010 = $P5007."new"($P5009 :named("node"))
    store_lex "$past", $P5010
    find_lex $P5011, "$/"
    unless_null $P5011, fallback858
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  fallback858:
    set fb_tmp_48, $P5011
    repr_defined $I5004, fb_tmp_48
    unless $I5004 goto if334_else856 
    set $P5013, fb_tmp_48["OPER"]
    set $P5015, $P5013
    goto if334_end857
  if334_else856:
    null $P5014
    set $P5015, $P5014
  if334_end857:
    unless_null $P5015, vivi_335859
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_335859:
    set fb_tmp_47, $P5015
    repr_defined $I5003, fb_tmp_47
    unless $I5003 goto if333_else854 
    set $P5017, fb_tmp_47["O"]
    set $P5019, $P5017
    goto if333_end855
  if333_else854:
    null $P5018
    set $P5019, $P5018
  if333_end855:
    unless_null $P5019, vivi_336860
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_336860:
    set fb_tmp_46, $P5019
    repr_defined $I5002, fb_tmp_46
    unless $I5002 goto if332_else852 
    set $P5021, fb_tmp_46["op"]
    set $P5023, $P5021
    goto if332_end853
  if332_else852:
    null $P5022
    set $P5023, $P5022
  if332_end853:
    unless_null $P5023, vivi_337861
    nqp_get_sc_object $P5024, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5023, $P5024
  vivi_337861:
    unless $P5023 goto if331_end851 
.annotate 'line', 921
.annotate 'line', 922
    find_lex $P5025, "$past"
    find_lex $P5026, "$/"
    unless_null $P5026, fallback868
    nqp_get_sc_object $P5027, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5026, $P5027
  fallback868:
    set fb_tmp_51, $P5026
    repr_defined $I5007, fb_tmp_51
    unless $I5007 goto if340_else866 
    set $P5028, fb_tmp_51["OPER"]
    set $P5030, $P5028
    goto if340_end867
  if340_else866:
    null $P5029
    set $P5030, $P5029
  if340_end867:
    unless_null $P5030, vivi_341869
    nqp_get_sc_object $P5031, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5030, $P5031
  vivi_341869:
    set fb_tmp_50, $P5030
    repr_defined $I5006, fb_tmp_50
    unless $I5006 goto if339_else864 
    set $P5032, fb_tmp_50["O"]
    set $P5034, $P5032
    goto if339_end865
  if339_else864:
    null $P5033
    set $P5034, $P5033
  if339_end865:
    unless_null $P5034, vivi_342870
    nqp_get_sc_object $P5035, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5034, $P5035
  vivi_342870:
    set fb_tmp_49, $P5034
    repr_defined $I5005, fb_tmp_49
    unless $I5005 goto if338_else862 
    set $P5036, fb_tmp_49["op"]
    set $P5038, $P5036
    goto if338_end863
  if338_else862:
    null $P5037
    set $P5038, $P5037
  if338_end863:
    unless_null $P5038, vivi_343871
    nqp_get_sc_object $P5039, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5038, $P5039
  vivi_343871:
    set $S5001, $P5038
    $P5040 = $P5025."op"($S5001)
  if331_end851:
    find_lex $P5041, "$key"
    set $S5002, $P5041
    iseq $I5008, $S5002, "LIST"
    unless $I5008 goto if344_end873 
.annotate 'line', 924
    box $P5042, "infix"
    store_lex "$key", $P5042
  if344_end873:
    find_lex $P5043, "$key"
    set $S5007, $P5043
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5044, "$/"
    unless_null $P5044, fallback878
    nqp_get_sc_object $P5045, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5044, $P5045
  fallback878:
    set fb_tmp_53, $P5044
    repr_defined $I5010, fb_tmp_53
    unless $I5010 goto if346_else876 
    set $P5046, fb_tmp_53["OPER"]
    set $P5048, $P5046
    goto if346_end877
  if346_else876:
    null $P5047
    set $P5048, $P5047
  if346_end877:
    unless_null $P5048, vivi_347879
    nqp_get_sc_object $P5049, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5048, $P5049
  vivi_347879:
    set fb_tmp_52, $P5048
    repr_defined $I5009, fb_tmp_52
    unless $I5009 goto if345_else874 
    set $P5050, fb_tmp_52["sym"]
    set $P5052, $P5050
    goto if345_end875
  if345_else874:
    null $P5051
    set $P5052, $P5051
  if345_end875:
    unless_null $P5052, vivi_348880
    nqp_get_sc_object $P5053, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5052, $P5053
  vivi_348880:
    set $S5008, $P5052
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5054, $S5003
    set $P101, $P5054
.annotate 'line', 926
    find_lex $P5055, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5055."name"($S5009)
.annotate 'line', 927
    find_lex $P5056, "$past"
    $P5057 = $P5056."op"()
    set $P5060, $P5057
    if $P5057 goto unless349_end882 
.annotate 'line', 928
    find_lex $P5058, "$past"
    $P5059 = $P5058."op"("call")
    set $P5060, $P5059
  unless349_end882:
    .return ($P5060) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1360623834.732") :anon :lex :outer("cuid_68_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 935
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if353_end889 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if353_end889:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_69_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_55 
    unless_null _lex_param_1, fallback896
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback896:
    set fb_tmp_55, _lex_param_1
    repr_defined $I5001, fb_tmp_55
    unless $I5001 goto if354_else894 
    set $P5002, fb_tmp_55["circumfix"]
    set $P5004, $P5002
    goto if354_end895
  if354_else894:
    null $P5003
    set $P5004, $P5003
  if354_end895:
    unless_null $P5004, vivi_355897
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_355897:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_70_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 942
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_56 
    unless_null _lex_param_1, fallback900
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback900:
    set fb_tmp_56, _lex_param_1
    repr_defined $I5001, fb_tmp_56
    unless $I5001 goto if356_else898 
    set $P5002, fb_tmp_56["term"]
    set $P5004, $P5002
    goto if356_end899
  if356_else898:
    null $P5003
    set $P5004, $P5003
  if356_end899:
    unless_null $P5004, vivi_357901
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_357901:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_71_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 943
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    new $P5001, "Undef"
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_72_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 944
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_57 
    unless_null _lex_param_1, fallback904
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback904:
    set fb_tmp_57, _lex_param_1
    repr_defined $I5001, fb_tmp_57
    unless $I5001 goto if358_else902 
    set $P5002, fb_tmp_57["term"]
    set $P5004, $P5002
    goto if358_end903
  if358_else902:
    null $P5003
    set $P5004, $P5003
  if358_end903:
    unless_null $P5004, vivi_359905
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_359905:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_73_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 946
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_58 
    unless_null _lex_param_1, fallback908
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback908:
    set fb_tmp_58, _lex_param_1
    repr_defined $I5001, fb_tmp_58
    unless $I5001 goto if360_else906 
    set $P5002, fb_tmp_58["VALUE"]
    set $P5004, $P5002
    goto if360_end907
  if360_else906:
    null $P5003
    set $P5004, $P5003
  if360_end907:
    unless_null $P5004, vivi_361909
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_361909:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_74_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 948
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
.sub "decint" :subid("cuid_75_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 950
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
.sub "hexint" :subid("cuid_76_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 951
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
.sub "octint" :subid("cuid_77_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 952
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
.sub "binint" :subid("cuid_78_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 953
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
.sub "quote_EXPR" :subid("cuid_79_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 955
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5035 = 'cuid_190_1360623834.732' 
    capture_lex $P5035 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_59 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
    .local pmc fb_tmp_62 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 956
    unless_null _lex_param_1, fallback912
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5002
  fallback912:
    set fb_tmp_59, _lex_param_1
    repr_defined $I5001, fb_tmp_59
    unless $I5001 goto if362_else910 
    set $P5003, fb_tmp_59["quote_delimited"]
    set $P5005, $P5003
    goto if362_end911
  if362_else910:
    null $P5004
    set $P5005, $P5004
  if362_end911:
    unless_null $P5005, vivi_363913
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_363913:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback918
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5009, $P5010
    set fb_tmp_61, $P5009
    repr_defined $I5003, fb_tmp_61
    unless $I5003 goto if366_else919 
    set $P5011, fb_tmp_61["%QUOTEMOD"]
    set $P5013, $P5011
    goto if366_end920
  if366_else919:
    null $P5012
    set $P5013, $P5012
  if366_end920:
    unless_null $P5013, vivi_367921
    nqp_get_sc_object $P5015, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5014, $P5015
    new $P5016, 'Hash'
    set $P5014["%QUOTEMOD"], $P5016
    set $P5013, $P5016
  vivi_367921:
    unless_null $P5013, vivi_368922
    die "Contextual %*QUOTEMOD not found"
    box $P5017, "Contextual %*QUOTEMOD not found"
    set $P5013, $P5017
  vivi_368922:
    set $P5008, $P5013
  fallback918:
    set fb_tmp_60, $P5008
    repr_defined $I5002, fb_tmp_60
    unless $I5002 goto if365_else916 
    set $P5018, fb_tmp_60["w"]
    set $P5020, $P5018
    goto if365_end917
  if365_else916:
    null $P5019
    set $P5020, $P5019
  if365_end917:
    unless_null $P5020, vivi_369923
    nqp_get_sc_object $P5021, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5020, $P5021
  vivi_369923:
    unless $P5020 goto if364_end915 
.annotate 'line', 957
    nqp_get_sc_object $P5024, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5023, $P5024, "QAST"
    get_who $P5022, $P5023
    set fb_tmp_62, $P5022
    repr_defined $I5005, fb_tmp_62
    unless $I5005 goto if371_else926 
    set $P5025, fb_tmp_62["SVal"]
    set $P5027, $P5025
    goto if371_end927
  if371_else926:
    null $P5026
    set $P5027, $P5026
  if371_end927:
    unless_null $P5027, vivi_372928
    nqp_get_sc_object $P5028, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5027, $P5028
  vivi_372928:
    type_check $I5004, $P101, $P5027
    unless $I5004 goto if370_else924 
    .const 'Sub' $P5029 = 'cuid_190_1360623834.732' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5033, $P5030
    goto if370_end925
  if370_else924:
.annotate 'line', 968
.annotate 'line', 969
    $P5031 = _lex_param_1."CURSOR"()
    $P5032 = $P5031."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5033, $P5032
  if370_end925:
  if364_end915:
.annotate 'line', 972
    $P5034 = _lex_param_1."!make"($P101)
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1360623834.732") :anon :lex :outer("cuid_79_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 958
    .const 'Sub' $P5041 = 'cuid_189_1360623834.732' 
    capture_lex $P5041 
    .lex "@words", $P101 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 959
    find_lex $P5010, "$/"
    find_lex $P5011, "$past"
    $P5012 = $P5011."value"()
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    nqp_get_package_through_who $P5003, $P5004, "Grammar"
    get_who $P5002, $P5003
    set fb_tmp_63, $P5002
    repr_defined $I5001, fb_tmp_63
    unless $I5001 goto if373_else929 
    set $P5006, fb_tmp_63["split_words"]
    set $P5008, $P5006
    goto if373_end930
  if373_else929:
    null $P5007
    set $P5008, $P5007
  if373_end930:
    unless_null $P5008, vivi_374931
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_374931:
    $P5013 = $P5008($P5010, $P5012)
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 1
    isne $I5002, $N5001, $N5002
    unless $I5002 goto if375_else932 
.annotate 'line', 960
.annotate 'line', 961
    nqp_get_sc_object $P5016, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set fb_tmp_64, $P5014
    repr_defined $I5003, fb_tmp_64
    unless $I5003 goto if376_else934 
    set $P5017, fb_tmp_64["Op"]
    set $P5019, $P5017
    goto if376_end935
  if376_else934:
    null $P5018
    set $P5019, $P5018
  if376_end935:
    unless_null $P5019, vivi_377936
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_377936:
    find_lex $P5021, "$/"
    $P5022 = $P5019."new"("list" :named("op"), $P5021 :named("node"))
    store_lex "$past", $P5022
    set $P5023, $P101
    iter $P5025, $P101
  for_next940:
    unless $P5025, for_done942
    shift $P5027, $P5025
  for_redo941:
    .const 'Sub' $P5026 = 'cuid_189_1360623834.732' 
    capture_lex $P5026
    $P5023 = $P5026($P5027)
    goto for_next940
  for_done942:
    set $P5040, $P5023
    goto if375_end933
  if375_else932:
.annotate 'line', 964
.annotate 'line', 965
    nqp_get_sc_object $P5030, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5029, $P5030, "QAST"
    get_who $P5028, $P5029
    set fb_tmp_66, $P5028
    repr_defined $I5004, fb_tmp_66
    unless $I5004 goto if380_else943 
    set $P5031, fb_tmp_66["SVal"]
    set $P5033, $P5031
    goto if380_end944
  if380_else943:
    null $P5032
    set $P5033, $P5032
  if380_end944:
    unless_null $P5033, vivi_381945
    nqp_get_sc_object $P5034, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5033, $P5034
  vivi_381945:
    set fb_tmp_67, $P101
    repr_defined $I5005, fb_tmp_67
    unless $I5005 goto if382_else946 
    set $P5035, fb_tmp_67[0]
    set $P5037, $P5035
    goto if382_end947
  if382_else946:
    null $P5036
    set $P5037, $P5036
  if382_end947:
    unless_null $P5037, vivi_383948
    nqp_get_sc_object $P5038, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5037, $P5038
  vivi_383948:
    set $S5001, $P5037
    $P5039 = $P5033."new"($S5001 :named("value"))
    store_lex "$past", $P5039
    set $P5040, $P5039
  if375_end933:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1360623834.732") :anon :lex :outer("cuid_190_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 962
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_65 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set fb_tmp_65, $P5002
    repr_defined $I5001, fb_tmp_65
    unless $I5001 goto if378_else937 
    set $P5005, fb_tmp_65["SVal"]
    set $P5007, $P5005
    goto if378_end938
  if378_else937:
    null $P5006
    set $P5007, $P5006
  if378_end938:
    unless_null $P5007, vivi_379939
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_379939:
    $P5009 = $P5007."new"(_lex_param_0 :named("value"))
    $P5010 = $P5001."push"($P5009)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_80_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 975
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5045 = 'cuid_191_1360623834.732' 
    capture_lex $P5045 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_68 
    .local pmc fb_tmp_74 
    .local pmc fb_tmp_75 
    .local pmc fb_tmp_76 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback951
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5008
  fallback951:
    set fb_tmp_68, _lex_param_1
    repr_defined $I5001, fb_tmp_68
    unless $I5001 goto if384_else949 
    set $P5009, fb_tmp_68["quote_atom"]
    set $P5011, $P5009
    goto if384_end950
  if384_else949:
    null $P5010
    set $P5011, $P5010
  if384_end950:
    unless_null $P5011, vivi_385952
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_385952:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next976:
    unless $P5007, for_done978
    shift $P5014, $P5007
  for_redo977:
    .const 'Sub' $P5013 = 'cuid_191_1360623834.732' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next976
  for_done978:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if400_end980 
.annotate 'line', 996
    nqp_get_sc_object $P5017, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set fb_tmp_74, $P5015
    repr_defined $I5003, fb_tmp_74
    unless $I5003 goto if401_else981 
    set $P5018, fb_tmp_74["SVal"]
    set $P5020, $P5018
    goto if401_end982
  if401_else981:
    null $P5019
    set $P5020, $P5019
  if401_end982:
    unless_null $P5020, vivi_402983
    nqp_get_sc_object $P5021, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5020, $P5021
  vivi_402983:
    $P5022 = $P5020."new"($P102 :named("value"))
    $P5023 = $P101."push"($P5022)
  if400_end980:
    unless $P101 goto if403_else984 
.annotate 'line', 997
    $P5024 = $P101."shift"()
    set $P5033, $P5024
    goto if403_end985
  if403_else984:
    nqp_get_sc_object $P5027, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set fb_tmp_75, $P5025
    repr_defined $I5004, fb_tmp_75
    unless $I5004 goto if404_else986 
    set $P5028, fb_tmp_75["SVal"]
    set $P5030, $P5028
    goto if404_end987
  if404_else986:
    null $P5029
    set $P5030, $P5029
  if404_end987:
    unless_null $P5030, vivi_405988
    nqp_get_sc_object $P5031, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5030, $P5031
  vivi_405988:
    $P5032 = $P5030."new"("" :named("value"))
    set $P5033, $P5032
  if403_end985:
    set $P103, $P5033
  while406_test989:
    set $P5043, $P101
    unless $P101 goto while406_done993 
  while406_redo991:
.annotate 'line', 998
.annotate 'line', 999
    nqp_get_sc_object $P5036, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5035, $P5036, "QAST"
    get_who $P5034, $P5035
    set fb_tmp_76, $P5034
    repr_defined $I5005, fb_tmp_76
    unless $I5005 goto if407_else994 
    set $P5037, fb_tmp_76["Op"]
    set $P5039, $P5037
    goto if407_end995
  if407_else994:
    null $P5038
    set $P5039, $P5038
  if407_end995:
    unless_null $P5039, vivi_408996
    nqp_get_sc_object $P5040, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5039, $P5040
  vivi_408996:
    $P5041 = $P101."shift"()
    $P5042 = $P5039."new"($P103, $P5041, "concat" :named("op"))
    set $P103, $P5042
    set $P5043, $P103
    goto while406_test989 
  while406_done993:
.annotate 'line', 1001
    $P5044 = _lex_param_1."!make"($P103)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1360623834.732") :anon :lex :outer("cuid_80_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 978
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_69 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
    .local pmc fb_tmp_72 
    .local pmc fb_tmp_73 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 979
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set fb_tmp_69, $P5003
    repr_defined $I5003, fb_tmp_69
    unless $I5003 goto if387_else955 
    set $P5006, fb_tmp_69["Node"]
    set $P5008, $P5006
    goto if387_end956
  if387_else955:
    null $P5007
    set $P5008, $P5007
  if387_end956:
    unless_null $P5008, vivi_388957
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_388957:
    type_check $I5002, $P101, $P5008
    not $I5001, $I5002
    unless $I5001 goto if386_else953 
.annotate 'line', 980
    find_lex $P5010, "$lastlit"
    set $S5002, $P5010
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5011, $S5001
    store_lex "$lastlit", $P5011
    set $P5053, $P5011
    goto if386_end954
  if386_else953:
    nqp_get_sc_object $P5014, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set fb_tmp_70, $P5012
    repr_defined $I5005, fb_tmp_70
    unless $I5005 goto if390_else960 
    set $P5015, fb_tmp_70["SVal"]
    set $P5017, $P5015
    goto if390_end961
  if390_else960:
    null $P5016
    set $P5017, $P5016
  if390_end961:
    unless_null $P5017, vivi_391962
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_391962:
    type_check $I5004, $P101, $P5017
    unless $I5004 goto if389_else958 
.annotate 'line', 983
    find_lex $P5019, "$lastlit"
    set $S5005, $P5019
.annotate 'line', 984
    $P5020 = $P101."value"()
    set $S5006, $P5020
    concat $S5004, $S5005, $S5006
    box $P5021, $S5004
    store_lex "$lastlit", $P5021
    set $P5052, $P5021
    goto if389_end959
  if389_else958:
.annotate 'line', 986
    find_lex $P5022, "$lastlit"
    set $S5007, $P5022
    isgt $I5006, $S5007, ""
    unless $I5006 goto if392_end964 
.annotate 'line', 987
.annotate 'line', 988
    find_lex $P5023, "@parts"
    nqp_get_sc_object $P5026, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5025, $P5026, "QAST"
    get_who $P5024, $P5025
    set fb_tmp_71, $P5024
    repr_defined $I5007, fb_tmp_71
    unless $I5007 goto if393_else965 
    set $P5027, fb_tmp_71["SVal"]
    set $P5029, $P5027
    goto if393_end966
  if393_else965:
    null $P5028
    set $P5029, $P5028
  if393_end966:
    unless_null $P5029, vivi_394967
    nqp_get_sc_object $P5030, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5029, $P5030
  vivi_394967:
    find_lex $P5031, "$lastlit"
    $P5032 = $P5029."new"($P5031 :named("value"))
    $P5033 = $P5023."push"($P5032)
  if392_end964:
.annotate 'line', 990
    find_lex $P5034, "@parts"
    nqp_get_sc_object $P5037, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set fb_tmp_72, $P5035
    repr_defined $I5009, fb_tmp_72
    unless $I5009 goto if396_else970 
    set $P5038, fb_tmp_72["Node"]
    set $P5040, $P5038
    goto if396_end971
  if396_else970:
    null $P5039
    set $P5040, $P5039
  if396_end971:
    unless_null $P5040, vivi_397972
    nqp_get_sc_object $P5041, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5040, $P5041
  vivi_397972:
    type_check $I5008, $P101, $P5040
    unless $I5008 goto if395_else968 
    set $P5050, $P101
    goto if395_end969
  if395_else968:
.annotate 'line', 992
    nqp_get_sc_object $P5044, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5043, $P5044, "QAST"
    get_who $P5042, $P5043
    set fb_tmp_73, $P5042
    repr_defined $I5010, fb_tmp_73
    unless $I5010 goto if398_else973 
    set $P5045, fb_tmp_73["SVal"]
    set $P5047, $P5045
    goto if398_end974
  if398_else973:
    null $P5046
    set $P5047, $P5046
  if398_end974:
    unless_null $P5047, vivi_399975
    nqp_get_sc_object $P5048, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5047, $P5048
  vivi_399975:
    $P5049 = $P5047."new"($P101 :named("value"))
    set $P5050, $P5049
  if395_end969:
    $P5034."push"($P5050)
    box $P5051, ""
    store_lex "$lastlit", $P5051
    set $P5052, $P5051
  if389_end959:
    set $P5053, $P5052
  if386_end954:
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_81_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1004
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_77 
    .local pmc fb_tmp_78 
.annotate 'line', 1005
    unless_null _lex_param_1, fallback1001
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback1001:
    set fb_tmp_77, _lex_param_1
    repr_defined $I5001, fb_tmp_77
    unless $I5001 goto if410_else999 
    set $P5002, fb_tmp_77["quote_escape"]
    set $P5004, $P5002
    goto if410_end1000
  if410_else999:
    null $P5003
    set $P5004, $P5003
  if410_end1000:
    unless_null $P5004, vivi_4111002
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_4111002:
    unless $P5004 goto if409_else997 
    unless_null _lex_param_1, fallback1005
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5006
  fallback1005:
    set fb_tmp_78, _lex_param_1
    repr_defined $I5002, fb_tmp_78
    unless $I5002 goto if412_else1003 
    set $P5007, fb_tmp_78["quote_escape"]
    set $P5009, $P5007
    goto if412_end1004
  if412_else1003:
    null $P5008
    set $P5009, $P5008
  if412_end1004:
    unless_null $P5009, vivi_4131006
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_4131006:
    $P5011 = $P5009."ast"()
    set $P5012, $P5011
    goto if409_end998
  if409_else997:
    set $S5001, _lex_param_1
    box $P5013, $S5001
    set $P5012, $P5013
  if409_end998:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_82_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1008
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_83_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1009
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_79 
    unless_null _lex_param_1, fallback1009
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback1009:
    set fb_tmp_79, _lex_param_1
    repr_defined $I5001, fb_tmp_79
    unless $I5001 goto if414_else1007 
    set $P5002, fb_tmp_79["stopper"]
    set $P5004, $P5002
    goto if414_end1008
  if414_else1007:
    null $P5003
    set $P5004, $P5003
  if414_end1008:
    unless_null $P5004, vivi_4151010
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_4151010:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_84_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1011
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_85_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1012
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_86_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1013
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_87_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1014
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_88_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1015
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_89_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1016
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_90_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1018
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_80 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
    .local pmc fb_tmp_83 
.annotate 'line', 1019
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1015
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5002
  fallback1015:
    set fb_tmp_80, _lex_param_1
    repr_defined $I5001, fb_tmp_80
    unless $I5001 goto if417_else1013 
    set $P5003, fb_tmp_80["hexint"]
    set $P5005, $P5003
    goto if417_end1014
  if417_else1013:
    null $P5004
    set $P5005, $P5004
  if417_end1014:
    unless_null $P5005, vivi_4181016
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_4181016:
    unless $P5005 goto if416_else1011 
    unless_null _lex_param_1, fallback1019
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5007
  fallback1019:
    set fb_tmp_81, _lex_param_1
    repr_defined $I5002, fb_tmp_81
    unless $I5002 goto if419_else1017 
    set $P5008, fb_tmp_81["hexint"]
    set $P5010, $P5008
    goto if419_end1018
  if419_else1017:
    null $P5009
    set $P5010, $P5009
  if419_end1018:
    unless_null $P5010, vivi_4201020
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_4201020:
    set $P5021, $P5010
    goto if416_end1012
  if416_else1011:
    unless_null _lex_param_1, fallback1025
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5012
  fallback1025:
    set fb_tmp_83, _lex_param_1
    repr_defined $I5004, fb_tmp_83
    unless $I5004 goto if422_else1023 
    set $P5013, fb_tmp_83["hexints"]
    set $P5015, $P5013
    goto if422_end1024
  if422_else1023:
    null $P5014
    set $P5015, $P5014
  if422_end1024:
    unless_null $P5015, vivi_4231026
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_4231026:
    set fb_tmp_82, $P5015
    repr_defined $I5003, fb_tmp_82
    unless $I5003 goto if421_else1021 
    set $P5017, fb_tmp_82["hexint"]
    set $P5019, $P5017
    goto if421_end1022
  if421_else1021:
    null $P5018
    set $P5019, $P5018
  if421_end1022:
    unless_null $P5019, vivi_4241027
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_4241027:
    set $P5021, $P5019
  if416_end1012:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_91_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1022
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_84 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    .local pmc fb_tmp_87 
.annotate 'line', 1023
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1032
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5002
  fallback1032:
    set fb_tmp_84, _lex_param_1
    repr_defined $I5001, fb_tmp_84
    unless $I5001 goto if426_else1030 
    set $P5003, fb_tmp_84["octint"]
    set $P5005, $P5003
    goto if426_end1031
  if426_else1030:
    null $P5004
    set $P5005, $P5004
  if426_end1031:
    unless_null $P5005, vivi_4271033
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_4271033:
    unless $P5005 goto if425_else1028 
    unless_null _lex_param_1, fallback1036
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5007
  fallback1036:
    set fb_tmp_85, _lex_param_1
    repr_defined $I5002, fb_tmp_85
    unless $I5002 goto if428_else1034 
    set $P5008, fb_tmp_85["octint"]
    set $P5010, $P5008
    goto if428_end1035
  if428_else1034:
    null $P5009
    set $P5010, $P5009
  if428_end1035:
    unless_null $P5010, vivi_4291037
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_4291037:
    set $P5021, $P5010
    goto if425_end1029
  if425_else1028:
    unless_null _lex_param_1, fallback1042
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5012
  fallback1042:
    set fb_tmp_87, _lex_param_1
    repr_defined $I5004, fb_tmp_87
    unless $I5004 goto if431_else1040 
    set $P5013, fb_tmp_87["octints"]
    set $P5015, $P5013
    goto if431_end1041
  if431_else1040:
    null $P5014
    set $P5015, $P5014
  if431_end1041:
    unless_null $P5015, vivi_4321043
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_4321043:
    set fb_tmp_86, $P5015
    repr_defined $I5003, fb_tmp_86
    unless $I5003 goto if430_else1038 
    set $P5017, fb_tmp_86["octint"]
    set $P5019, $P5017
    goto if430_end1039
  if430_else1038:
    null $P5018
    set $P5019, $P5018
  if430_end1039:
    unless_null $P5019, vivi_4331044
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_4331044:
    set $P5021, $P5019
  if425_end1029:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_92_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1026
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_88 
.annotate 'line', 1027
    unless_null _lex_param_1, fallback1047
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback1047:
    set fb_tmp_88, _lex_param_1
    repr_defined $I5001, fb_tmp_88
    unless $I5001 goto if434_else1045 
    set $P5002, fb_tmp_88["charspec"]
    set $P5004, $P5002
    goto if434_end1046
  if434_else1045:
    null $P5003
    set $P5004, $P5003
  if434_end1046:
    unless_null $P5004, vivi_4351048
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_4351048:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_93_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1031
    $P5001 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_94_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1034
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_89 
    .local pmc fb_tmp_90 
    .local pmc fb_tmp_91 
.annotate 'line', 1035
    unless_null _lex_param_1, fallback1053
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback1053:
    set fb_tmp_89, _lex_param_1
    repr_defined $I5001, fb_tmp_89
    unless $I5001 goto if437_else1051 
    set $P5002, fb_tmp_89["textq"]
    set $P5004, $P5002
    goto if437_end1052
  if437_else1051:
    null $P5003
    set $P5004, $P5003
  if437_end1052:
    unless_null $P5004, vivi_4381054
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_4381054:
    unless $P5004 goto if436_else1049 
    unless_null _lex_param_1, fallback1057
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5006
  fallback1057:
    set fb_tmp_90, _lex_param_1
    repr_defined $I5002, fb_tmp_90
    unless $I5002 goto if439_else1055 
    set $P5007, fb_tmp_90["textq"]
    set $P5009, $P5007
    goto if439_end1056
  if439_else1055:
    null $P5008
    set $P5009, $P5008
  if439_end1056:
    unless_null $P5009, vivi_4401058
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_4401058:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if436_end1050
  if436_else1049:
    unless_null _lex_param_1, fallback1061
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5012
  fallback1061:
    set fb_tmp_91, _lex_param_1
    repr_defined $I5003, fb_tmp_91
    unless $I5003 goto if441_else1059 
    set $P5013, fb_tmp_91["textqq"]
    set $P5015, $P5013
    goto if441_end1060
  if441_else1059:
    null $P5014
    set $P5015, $P5014
  if441_end1060:
    unless_null $P5015, vivi_4421062
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_4421062:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if436_end1050:
    $P5020 = _lex_param_1."!make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_95_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1038
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    unless_null _lex_param_1, fallback1067
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5002
  fallback1067:
    set fb_tmp_92, _lex_param_1
    repr_defined $I5001, fb_tmp_92
    unless $I5001 goto if444_else1065 
    set $P5003, fb_tmp_92["integer"]
    set $P5005, $P5003
    goto if444_end1066
  if444_else1065:
    null $P5004
    set $P5005, $P5004
  if444_end1066:
    unless_null $P5005, vivi_4451068
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_4451068:
    unless $P5005 goto if443_else1063 
.annotate 'line', 1040
    unless_null _lex_param_1, fallback1071
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5007
  fallback1071:
    set fb_tmp_93, _lex_param_1
    repr_defined $I5002, fb_tmp_93
    unless $I5002 goto if446_else1069 
    set $P5008, fb_tmp_93["integer"]
    set $P5010, $P5008
    goto if446_end1070
  if446_else1069:
    null $P5009
    set $P5010, $P5009
  if446_end1070:
    unless_null $P5010, vivi_4471072
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_4471072:
    $P5012 = $P5010."ast"()
    set $P5013, $P5012
    goto if443_end1064
  if443_else1063:
    set $S5002, _lex_param_1
    find_encoding $I5004, "utf8"
    trans_encoding $S5001, $S5002, $I5004
    find_codepoint $I5003, $S5001
    box $P5014, $I5003
    set $P5013, $P5014
  if443_end1064:
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5005, $N5001, $N5002
    unless $I5005 goto if448_end1074 
.annotate 'line', 1044
    $P5015 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5016 = $P5015."panic"($S5003)
  if448_end1074:
.annotate 'line', 1045
    set $I5006, $P101
    chr $S5005, $I5006
    $P5017 = _lex_param_1."!make"($S5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_96_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1048
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_192_1360623834.732' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_94 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1077
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5006
  fallback1077:
    set fb_tmp_94, _lex_param_1
    repr_defined $I5001, fb_tmp_94
    unless $I5001 goto if449_else1075 
    set $P5007, fb_tmp_94["charname"]
    set $P5009, $P5007
    goto if449_end1076
  if449_else1075:
    null $P5008
    set $P5009, $P5008
  if449_end1076:
    unless_null $P5009, vivi_4501078
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_4501078:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1079:
    unless $P5005, for_done1081
    shift $P5012, $P5005
  for_redo1080:
    .const 'Sub' $P5011 = 'cuid_192_1360623834.732' 
    capture_lex $P5011
    $P5003 = $P5011($P5012)
    goto for_next1079
  for_done1081:
.annotate 'line', 1051
    $P5013 = _lex_param_1."!make"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1360623834.732") :anon :lex :outer("cuid_96_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1050
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
.sub "charspec" :subid("cuid_97_1360623834.732") :anon :lex :outer("cuid_181_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_95 
    .local pmc fb_tmp_96 
.annotate 'line', 1055
    unless_null _lex_param_1, fallback1086
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5001
  fallback1086:
    set fb_tmp_95, _lex_param_1
    repr_defined $I5001, fb_tmp_95
    unless $I5001 goto if452_else1084 
    set $P5002, fb_tmp_95["charnames"]
    set $P5004, $P5002
    goto if452_end1085
  if452_else1084:
    null $P5003
    set $P5004, $P5003
  if452_end1085:
    unless_null $P5004, vivi_4531087
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_4531087:
    unless $P5004 goto if451_else1082 
    unless_null _lex_param_1, fallback1090
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5006
  fallback1090:
    set fb_tmp_96, _lex_param_1
    repr_defined $I5002, fb_tmp_96
    unless $I5002 goto if454_else1088 
    set $P5007, fb_tmp_96["charnames"]
    set $P5009, $P5007
    goto if454_end1089
  if454_else1088:
    null $P5008
    set $P5009, $P5008
  if454_end1089:
    unless_null $P5009, vivi_4551091
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_4551091:
    $P5011 = $P5009."ast"()
    set $P5013, $P5011
    goto if451_end1083
  if451_else1082:
    $P5012 = "&string_to_int"(_lex_param_1, 10)
    set $I5003, $P5012
    chr $S5001, $I5003
    box $P5014, $S5001
    set $P5013, $P5014
  if451_end1083:
    $P5015 = _lex_param_1."!make"($P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1360623834.732") :anon :lex :outer("cuid_179_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1068
    .const 'Sub' $P5055 = 'cuid_98_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_99_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_100_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_101_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_102_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_103_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_104_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_105_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_106_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_107_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_108_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_109_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_110_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_111_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_112_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_113_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_114_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_115_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_116_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_117_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_118_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_119_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_120_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_121_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_122_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_123_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_124_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_125_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_126_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_127_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_128_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_129_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_130_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_131_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_132_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_133_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_134_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_135_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_136_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_137_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_138_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_139_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_140_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_141_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_142_1360623834.732' 
    capture_lex $P5055 
    .const 'Sub' $P5055 = 'cuid_143_1360623834.732' 
    capture_lex $P5055 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_97 
    .const 'Sub' $P5009 = 'cuid_98_1360623834.732' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_99_1360623834.732' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_100_1360623834.732' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_101_1360623834.732' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_102_1360623834.732' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_103_1360623834.732' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_104_1360623834.732' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_105_1360623834.732' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_106_1360623834.732' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_107_1360623834.732' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_108_1360623834.732' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_109_1360623834.732' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_110_1360623834.732' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_111_1360623834.732' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_112_1360623834.732' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_113_1360623834.732' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_114_1360623834.732' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_115_1360623834.732' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_116_1360623834.732' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_117_1360623834.732' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_118_1360623834.732' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_119_1360623834.732' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_120_1360623834.732' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_121_1360623834.732' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_122_1360623834.732' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_123_1360623834.732' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_124_1360623834.732' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_125_1360623834.732' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_126_1360623834.732' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_127_1360623834.732' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_128_1360623834.732' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_129_1360623834.732' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_130_1360623834.732' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_131_1360623834.732' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_132_1360623834.732' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_133_1360623834.732' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_134_1360623834.732' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_135_1360623834.732' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_136_1360623834.732' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_137_1360623834.732' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_138_1360623834.732' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_139_1360623834.732' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_140_1360623834.732' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_141_1360623834.732' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_142_1360623834.732' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_143_1360623834.732' 
    capture_lex $P5054
    .return ($P5054) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_98_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1084
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1086
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_99_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1090
    .param pmc _lex_param_0 
    .const 'Sub' $P5028 = 'cuid_194_1360623834.732' 
    capture_lex $P5028 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_98 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    split $P5003, " ", "start parse past post pir evalpmc"
    repr_bind_attr_obj $P5001, $P5002, "@!stages", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    split $P5006, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5004, $P5005, "@!cmdoptions", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    box $P5009, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5007, $P5008, "$!usage", $P5009
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!cmdoptions"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next1096:
    unless $P5012, for_done1098
    shift $P5017, $P5012
  for_redo1097:
    .const 'Sub' $P5016 = 'cuid_194_1360623834.732' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1096
  for_done1098:
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    getinterp $P5020
    set fb_tmp_98, $P5020
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if459_else1099 
    set $P5021, fb_tmp_98[.IGLOBALS_CONFIG_HASH]
    set $P5023, $P5021
    goto if459_end1100
  if459_else1099:
    null $P5022
    set $P5023, $P5022
  if459_end1100:
    unless_null $P5023, vivi_4601101
    nqp_get_sc_object $P5024, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5023, $P5024
  vivi_4601101:
    set $P5018["%parrot_config"], $P5023
    nqp_decontainerize $P5025, _lex_param_0
    nqp_get_sc_object $P5026, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    new $P5027, 'Hash'
    repr_bind_attr_obj $P5025, $P5026, "%!config", $P5027
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1360623834.732") :anon :lex :outer("cuid_99_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1097
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
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
.sub "language" :subid("cuid_100_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1104
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_6, default1104
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5007
  default1104:
    unless _lex_param_1 goto if461_end1103 
.annotate 'line', 1105
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if461_end1103:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_101_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1112
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
.sub "config" :subid("cuid_102_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1116
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_103_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1118
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$base", $P101 
    .lex "$loaded", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
.annotate 'line', 1119
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."parse_name"(_lex_param_1)
    join $S5001, "/", $P5004
    box $P5005, $S5001
    set $P101, $P5005
    box $P5006, 0
    set $P102, $P5006
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_4631106
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1121
    set $S5003, $P101
    concat $S5002, $S5003, ".pbc"
    load_bytecode $S5002
    box $P5007, 1
    set $P102, $P5007
    set $P5009, $P102
    pop_eh 
    goto skip_handler_4621105
  catch_handler_4631106:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_4621105
  skip_handler_4621105:
    if $P102 goto unless464_end1108 
.annotate 'line', 1122
    set $S5005, $P101
    concat $S5004, $S5005, ".pir"
    load_bytecode $S5004
    box $P5010, 1
    set $P102, $P5010
  unless464_end1108:
.annotate 'line', 1123
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."get_module"(_lex_param_1)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_104_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    .local pmc fb_tmp_99 
.annotate 'line', 1128
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback1111
    nqp_get_sc_object $P5006, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5005, $P5006
    set fb_tmp_99, $P5005
    repr_defined $I5002, fb_tmp_99
    unless $I5002 goto if466_else1112 
    set $P5007, fb_tmp_99["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if466_end1113
  if466_else1112:
    null $P5008
    set $P5009, $P5008
  if466_end1113:
    unless_null $P5009, vivi_4671114
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_4671114:
    unless_null $P5009, vivi_4681115
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_4681115:
    set $P5004, $P5009
  fallback1111:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless465_end1110 
.annotate 'line', 1127
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless465_end1110:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_105_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1131
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5029 = 'cuid_197_1360623834.732' 
    capture_lex $P5029 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_100 
    .local pmc fb_tmp_101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
.annotate 'line', 1132
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5006."print"($P5008)
.annotate 'line', 1134
    getinterp $P5009
    $P5010 = $P5009."stdin_handle"()
    set $P101, $P5010
    set fb_tmp_100, _lex_param_1
    repr_defined $I5001, fb_tmp_100
    unless $I5001 goto if469_else1116 
    set $P5011, fb_tmp_100["encoding"]
    set $P5013, $P5011
    goto if469_end1117
  if469_else1116:
    null $P5012
    set $P5013, $P5012
  if469_end1117:
    unless_null $P5013, vivi_4701118
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_4701118:
    set $S5001, $P5013
    box $P5015, $S5001
    set $P102, $P5015
    set $P5016, $P102
    unless $P102 goto if472_end1122 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5017, $I5002
    set $P5016, $P5017
  if472_end1122:
    unless $P5016 goto if471_end1120 
.annotate 'line', 1136
.annotate 'line', 1137
    $P5018 = $P101."encoding"($P102)
  if471_end1120:
    set fb_tmp_101, _lex_param_1
    repr_defined $I5003, fb_tmp_101
    unless $I5003 goto if473_else1123 
    set $P5019, fb_tmp_101["target"]
    set $P5021, $P5019
    goto if473_end1124
  if473_else1123:
    null $P5020
    set $P5021, $P5020
  if473_end1124:
    unless_null $P5021, vivi_4741125
    nqp_get_sc_object $P5022, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5021, $P5022
  vivi_4741125:
    set $S5004, $P5021
    downcase $S5003, $S5004
    box $P5023, $S5003
    set $P103, $P5023
    new $P5027, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5027, while475_handlers1129
    push_eh $P5027
  while475_test1126:
    box $P5028, 1
    set $P5026, $P5028
    unless 1 goto while475_done1130 
  while475_redo1128:
    .const 'Sub' $P5024 = 'cuid_197_1360623834.732' 
    capture_lex $P5024
    $P5025 = $P5024()
    set $P5026, $P5025
    goto while475_test1126 
  while475_handlers1129:
    .get_results ($P5027)
    pop_upto_eh $P5027
    getattribute $P5027, $P5027, 'type'
    eq $P5027, .CONTROL_LOOP_NEXT, while475_test1126
    eq $P5027, .CONTROL_LOOP_REDO, while475_redo1128
  while475_done1130:
    pop_eh 
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1360623834.732") :anon :lex :outer("cuid_105_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1142
    .const 'Sub' $P5029 = 'cuid_196_1360623834.732' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_102 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    if $P5006 goto unless476_end1132 
    die 0, .CONTROL_LOOP_LAST
  unless476_end1132:
.annotate 'line', 1145
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5001, $P5007
    if $I5001, defor1133
    box $P5011, "> "
    set $P5007, $P5011
  defor1133:
    set $P101, $P5007
.annotate 'line', 1146
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5002, $P102
    set $I5005, $I5002
    if $I5002 goto unless478_end1137 
    defined $I5004, $P102
    not $I5003, $I5004
    set $I5005, $I5003
  unless478_end1137:
    unless $I5005 goto if477_end1135 
.annotate 'line', 1147
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if477_end1135:
.annotate 'line', 1153
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if482_end1144 
    .const 'Sub' $P5026 = 'cuid_196_1360623834.732' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if482_end1144:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1360623834.732") :anon :lex :outer("cuid_197_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1157
    .const 'Sub' $P5042 = 'cuid_195_1360623834.732' 
    capture_lex $P5042 
    .lex "$output", $P101 
    .local pmc fb_tmp_103 
    .local pmc fb_tmp_104 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1160
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_4841146
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1161
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_4831145
  catch_handler_4841146:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_195_1360623834.732' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_4831145
  skip_handler_4831145:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1149
    nqp_get_sc_object $P5015, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5014, $P5015
    set fb_tmp_103, $P5014
    repr_defined $I5002, fb_tmp_103
    unless $I5002 goto if486_else1150 
    set $P5016, fb_tmp_103["$MAIN_CTX"]
    set $P5018, $P5016
    goto if486_end1151
  if486_else1150:
    null $P5017
    set $P5018, $P5017
  if486_end1151:
    unless_null $P5018, vivi_4871152
    nqp_get_sc_object $P5019, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5018, $P5019
  vivi_4871152:
    unless_null $P5018, vivi_4881153
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_4881153:
    set $P5013, $P5018
  fallback1149:
    defined $I5001, $P5013
    unless $I5001 goto if485_end1148 
.annotate 'line', 1167
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1154
    nqp_get_sc_object $P5023, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5022, $P5023
    set fb_tmp_104, $P5022
    repr_defined $I5003, fb_tmp_104
    unless $I5003 goto if489_else1155 
    set $P5024, fb_tmp_104["$MAIN_CTX"]
    set $P5026, $P5024
    goto if489_end1156
  if489_else1155:
    null $P5025
    set $P5026, $P5025
  if489_end1156:
    unless_null $P5026, vivi_4901157
    nqp_get_sc_object $P5027, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5026, $P5027
  vivi_4901157:
    unless_null $P5026, vivi_4911158
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_4911158:
    set $P5021, $P5026
  fallback1154:
    store_lex "$save_ctx", $P5021
  if485_end1148:
    isnull $I5004, $P101
    unless $I5004 goto if492_end1160 
    die 0, .CONTROL_LOOP_NEXT
  if492_end1160:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if493_else1161 
.annotate 'line', 1172
.annotate 'line', 1173
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5041, $P5032
    goto if493_end1162
  if493_else1161:
    find_lex $P5033, "$target"
    set $S5003, $P5033
    iseq $I5006, $S5003, "pir"
    unless $I5006 goto if494_else1163 
.annotate 'line', 1174
    set $S5004, $P101
    say $S5004
    box $P5040, $S5004
    set $P5039, $P5040
    goto if494_end1164
  if494_else1163:
.annotate 'line', 1176
.annotate 'line', 1177
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$target"
    find_lex $P5037, "%adverbs"
    $P5038 = $P5034."dumper"($P101, $P5036, $P5037 :flat :named)
    set $P5039, $P5038
  if494_end1164:
    set $P5041, $P5039
  if493_end1162:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1360623834.732") :anon :lex :outer("cuid_196_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1162
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 1163
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_106_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1183
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
.sub "interactive_exception" :subid("cuid_107_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1187
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
.sub "eval" :subid("cuid_108_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1191
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5016 = 'cuid_198_1360623834.732' 
    capture_lex $P5016 
    .lex "$output", $P101 
    .lex "$old_runcore", $P102 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_105 
    .local pmc fb_tmp_106 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P102, $P5003
    set fb_tmp_105, _lex_param_3
    repr_defined $I5001, fb_tmp_105
    unless $I5001 goto if496_else1167 
    set $P5004, fb_tmp_105["profile-compile"]
    set $P5006, $P5004
    goto if496_end1168
  if496_else1167:
    null $P5005
    set $P5006, $P5005
  if496_end1168:
    unless_null $P5006, vivi_4971169
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_4971169:
    unless $P5006 goto if495_end1166 
.annotate 'line', 1195
    set_runcore "subprof_hll"
  if495_end1166:
.annotate 'line', 1198
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5009
    isa $I5003, $P101, "String"
    not $I5002, $I5003
    set $I5006, $I5002
    unless $I5002 goto if499_end1173 
    set fb_tmp_106, _lex_param_3
    repr_defined $I5005, fb_tmp_106
    unless $I5005 goto if500_else1174 
    set $P5010, fb_tmp_106["target"]
    set $P5012, $P5010
    goto if500_end1175
  if500_else1174:
    null $P5011
    set $P5012, $P5011
  if500_end1175:
    unless_null $P5012, vivi_5011176
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_5011176:
    set $S5002, $P5012
    iseq $I5004, $S5002, ""
    set $I5006, $I5004
  if499_end1173:
    unless $I5006 goto if498_end1171 
    .const 'Sub' $P5014 = 'cuid_198_1360623834.732' 
    capture_lex $P5014
    $P5015 = $P5014()
  if498_end1171:
    set $S5003, $P102
    set_runcore $S5003
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1360623834.732") :anon :lex :outer("cuid_108_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1201
    .lex "$outer_ctx", $P101 
    .local pmc fb_tmp_107 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_107, $P5002
    repr_defined $I5001, fb_tmp_107
    unless $I5001 goto if502_else1177 
    set $P5003, fb_tmp_107["outer_ctx"]
    set $P5005, $P5003
    goto if502_end1178
  if502_else1177:
    null $P5004
    set $P5005, $P5004
  if502_end1178:
    unless_null $P5005, vivi_5031179
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_5031179:
    set $P101, $P5005
    defined $I5002, $P101
    unless $I5002 goto if504_end1181 
.annotate 'line', 1203
.annotate 'line', 1204
    find_lex $P5007, "$output"
    set fb_tmp_108, $P5007
    repr_defined $I5003, fb_tmp_108
    unless $I5003 goto if505_else1182 
    set $P5008, fb_tmp_108[0]
    set $P5010, $P5008
    goto if505_end1183
  if505_else1182:
    null $P5009
    set $P5010, $P5009
  if505_end1183:
    unless_null $P5010, vivi_5061184
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_5061184:
    $P5012 = $P5010."set_outer_ctx"($P101)
  if504_end1181:
    find_lex $P5013, "%adverbs"
    set fb_tmp_109, $P5013
    repr_defined $I5004, fb_tmp_109
    unless $I5004 goto if508_else1187 
    set $P5014, fb_tmp_109["profile"]
    set $P5016, $P5014
    goto if508_end1188
  if508_else1187:
    null $P5015
    set $P5016, $P5015
  if508_end1188:
    unless_null $P5016, vivi_5091189
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5016, $P5017
  vivi_5091189:
    unless $P5016 goto if507_end1186 
.annotate 'line', 1207
    set_runcore "subprof_hll"
  if507_end1186:
    find_lex $P5018, "%adverbs"
    set fb_tmp_110, $P5018
    repr_defined $I5005, fb_tmp_110
    unless $I5005 goto if510_else1190 
    set $P5019, fb_tmp_110["trace"]
    set $P5021, $P5019
    goto if510_end1191
  if510_else1190:
    null $P5020
    set $P5021, $P5020
  if510_end1191:
    unless_null $P5021, vivi_5111192
    nqp_get_sc_object $P5022, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5021, $P5022
  vivi_5111192:
    set $I5006, $P5021
    trace $I5006
.annotate 'line', 1211
    find_lex $P5024, "@args"
    find_lex $P5023, "$output"
    $P5025 = $P5023($P5024 :flat)
    store_lex "$output", $P5025
    trace 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_109_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1219
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
.sub "panic" :subid("cuid_110_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1224
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
.sub "stages" :subid("cuid_111_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1228
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_7, default1195
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1195:
    set $N5001, _lex_param_1
    unless $N5001 goto if512_end1194 
.annotate 'line', 1229
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if512_end1194:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_112_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1235
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_111 
    set $N5001, _lex_param_1
    unless $N5001 goto if513_end1197 
.annotate 'line', 1236
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    set fb_tmp_111, _lex_param_1
    repr_defined $I5001, fb_tmp_111
    unless $I5001 goto if514_else1198 
    set $P5003, fb_tmp_111[0]
    set $P5005, $P5003
    goto if514_end1199
  if514_else1198:
    null $P5004
    set $P5005, $P5004
  if514_end1199:
    unless_null $P5005, vivi_5151200
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_5151200:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5005
  if513_end1197:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_113_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1242
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_112 
    set $N5001, _lex_param_1
    unless $N5001 goto if516_end1202 
.annotate 'line', 1243
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    set fb_tmp_112, _lex_param_1
    repr_defined $I5001, fb_tmp_112
    unless $I5001 goto if517_else1203 
    set $P5003, fb_tmp_112[0]
    set $P5005, $P5003
    goto if517_end1204
  if517_else1203:
    null $P5004
    set $P5005, $P5004
  if517_end1204:
    unless_null $P5005, vivi_5181205
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_5181205:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5005
  if516_end1202:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_114_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1249
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_115_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1251
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_116_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1253
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_8, default1208
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5006
  default1208:
    defined $I5001, _lex_param_1
    unless $I5001 goto if519_end1207 
.annotate 'line', 1254
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if519_end1207:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_117_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_9, default1211
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1211:
    set $N5001, _lex_param_1
    unless $N5001 goto if520_end1210 
.annotate 'line', 1262
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if520_end1210:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_118_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1268
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
    .local pmc fb_tmp_113 
    .local pmc fb_tmp_114 
    .local pmc fb_tmp_115 
    .local pmc fb_tmp_116 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if521_else1212 
    set $P5005, fb_tmp_113[0]
    set $P5007, $P5005
    goto if521_end1213
  if521_else1212:
    null $P5006
    set $P5007, $P5006
  if521_end1213:
    unless_null $P5007, vivi_5221214
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_5221214:
    set $P101, $P5007
.annotate 'line', 1270
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1271
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1272
    $P5012 = $P102."arguments"()
    set $P104, $P5012
.annotate 'line', 1274
    _lex_param_2."update"($P103)
    set fb_tmp_114, _lex_param_2
    repr_defined $I5002, fb_tmp_114
    unless $I5002 goto if525_else1219 
    set $P5013, fb_tmp_114["help"]
    set $P5015, $P5013
    goto if525_end1220
  if525_else1219:
    null $P5014
    set $P5015, $P5014
  if525_end1220:
    unless_null $P5015, vivi_5261221
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_5261221:
    set $P5021, $P5015
    if $P5015 goto unless524_end1218 
    set fb_tmp_115, _lex_param_2
    repr_defined $I5003, fb_tmp_115
    unless $I5003 goto if527_else1222 
    set $P5017, fb_tmp_115["h"]
    set $P5019, $P5017
    goto if527_end1223
  if527_else1222:
    null $P5018
    set $P5019, $P5018
  if527_end1223:
    unless_null $P5019, vivi_5281224
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_5281224:
    set $P5021, $P5019
  unless524_end1218:
    unless $P5021 goto if523_end1216 
.annotate 'line', 1275
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5022."usage"($P101)
  if523_end1216:
    exists $I5005, _lex_param_2["precomp"]
    not $I5004, $I5005
    set $I5008, $I5004
    unless $I5004 goto if530_end1228 
    set fb_tmp_116, _lex_param_2
    repr_defined $I5007, fb_tmp_116
    unless $I5007 goto if531_else1229 
    set $P5024, fb_tmp_116["target"]
    set $P5026, $P5024
    goto if531_end1230
  if531_else1229:
    null $P5025
    set $P5026, $P5025
  if531_end1230:
    unless_null $P5026, vivi_5321231
    nqp_get_sc_object $P5027, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5026, $P5027
  vivi_5321231:
    set $S5001, $P5026
    iseq $I5006, $S5001, "pir"
    set $I5008, $I5006
  if530_end1228:
    unless $I5008 goto if529_end1226 
.annotate 'line', 1277
    box $P5028, 1
    set _lex_param_2["precomp"], $P5028
  if529_end1226:
    load_bytecode "dumper.pbc"
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1284
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_119_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1288
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5098 = 'cuid_199_1360623834.732' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_200_1360623834.732' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_201_1360623834.732' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_202_1360623834.732' 
    capture_lex $P5098 
    .const 'Sub' $P5098 = 'cuid_203_1360623834.732' 
    capture_lex $P5098 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_117 
    .local pmc fb_tmp_118 
    .local pmc fb_tmp_119 
    .local pmc fb_tmp_120 
    .local pmc fb_tmp_121 
    .local pmc fb_tmp_122 
    .local pmc fb_tmp_123 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    .local pmc fb_tmp_128 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
    set fb_tmp_117, _lex_param_2
    repr_defined $I5001, fb_tmp_117
    unless $I5001 goto if535_else1236 
    set $P5005, fb_tmp_117["version"]
    set $P5007, $P5005
    goto if535_end1237
  if535_else1236:
    null $P5006
    set $P5007, $P5006
  if535_end1237:
    unless_null $P5007, vivi_5361238
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_5361238:
    set $P5013, $P5007
    if $P5007 goto unless534_end1235 
    set fb_tmp_118, _lex_param_2
    repr_defined $I5002, fb_tmp_118
    unless $I5002 goto if537_else1239 
    set $P5009, fb_tmp_118["v"]
    set $P5011, $P5009
    goto if537_end1240
  if537_else1239:
    null $P5010
    set $P5011, $P5010
  if537_end1240:
    unless_null $P5011, vivi_5381241
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_5381241:
    set $P5013, $P5011
  unless534_end1235:
    unless $P5013 goto if533_end1233 
.annotate 'line', 1289
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."version"()
  if533_end1233:
    set fb_tmp_119, _lex_param_2
    repr_defined $I5003, fb_tmp_119
    unless $I5003 goto if542_else1248 
    set $P5016, fb_tmp_119["verbose-config"]
    set $P5018, $P5016
    goto if542_end1249
  if542_else1248:
    null $P5017
    set $P5018, $P5017
  if542_end1249:
    unless_null $P5018, vivi_5431250
    nqp_get_sc_object $P5019, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5018, $P5019
  vivi_5431250:
    set $P5024, $P5018
    if $P5018 goto unless541_end1247 
    set fb_tmp_120, _lex_param_2
    repr_defined $I5004, fb_tmp_120
    unless $I5004 goto if544_else1251 
    set $P5020, fb_tmp_120["V"]
    set $P5022, $P5020
    goto if544_end1252
  if544_else1251:
    null $P5021
    set $P5022, $P5021
  if544_end1252:
    unless_null $P5022, vivi_5451253
    nqp_get_sc_object $P5023, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5022, $P5023
  vivi_5451253:
    set $P5024, $P5022
  unless541_end1247:
    set $P5029, $P5024
    if $P5024 goto unless540_end1245 
    set fb_tmp_121, _lex_param_2
    repr_defined $I5005, fb_tmp_121
    unless $I5005 goto if546_else1254 
    set $P5025, fb_tmp_121["show-config"]
    set $P5027, $P5025
    goto if546_end1255
  if546_else1254:
    null $P5026
    set $P5027, $P5026
  if546_end1255:
    unless_null $P5027, vivi_5471256
    nqp_get_sc_object $P5028, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5027, $P5028
  vivi_5471256:
    set $P5029, $P5027
  unless540_end1245:
    unless $P5029 goto if539_end1243 
.annotate 'line', 1290
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."verbose-config"()
  if539_end1243:
    set fb_tmp_122, _lex_param_2
    repr_defined $I5006, fb_tmp_122
    unless $I5006 goto if549_else1259 
    set $P5032, fb_tmp_122["nqpevent"]
    set $P5034, $P5032
    goto if549_end1260
  if549_else1259:
    null $P5033
    set $P5034, $P5033
  if549_end1260:
    unless_null $P5034, vivi_5501261
    nqp_get_sc_object $P5035, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5034, $P5035
  vivi_5501261:
    unless $P5034 goto if548_end1258 
.annotate 'line', 1292
    nqp_decontainerize $P5036, _lex_param_0
    set fb_tmp_123, _lex_param_2
    repr_defined $I5007, fb_tmp_123
    unless $I5007 goto if551_else1262 
    set $P5037, fb_tmp_123["nqpevent"]
    set $P5039, $P5037
    goto if551_end1263
  if551_else1262:
    null $P5038
    set $P5039, $P5038
  if551_end1263:
    unless_null $P5039, vivi_5521264
    nqp_get_sc_object $P5040, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5039, $P5040
  vivi_5521264:
    $P5041 = $P5036."nqpevent"($P5039)
  if548_end1258:
    box $P5042, 0
    set $P103, $P5042
    set fb_tmp_124, _lex_param_2
    repr_defined $I5008, fb_tmp_124
    unless $I5008 goto if553_else1265 
    set $P5043, fb_tmp_124["target"]
    set $P5045, $P5043
    goto if553_end1266
  if553_else1265:
    null $P5044
    set $P5045, $P5044
  if553_end1266:
    unless_null $P5045, vivi_5541267
    nqp_get_sc_object $P5046, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5045, $P5046
  vivi_5541267:
    set $S5002, $P5045
    downcase $S5001, $S5002
    box $P5047, $S5001
    set $P104, $P5047
    new $P5084, 'ExceptionHandler'
    set_label $P5084, catch_handler_5861319
    $P5084.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5084
.annotate 'line', 1298
    new $P5082, 'ExceptionHandler'
    set_label $P5082, catch_handler_5821314
    $P5082.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5082
    new $P5082, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5082, catch_handler_5831315
    push_eh $P5082
    set fb_tmp_125, _lex_param_2
    repr_defined $I5010, fb_tmp_125
    unless $I5010 goto if556_else1270 
    set $P5048, fb_tmp_125["e"]
    set $P5050, $P5048
    goto if556_end1271
  if556_else1270:
    null $P5049
    set $P5050, $P5049
  if556_end1271:
    unless_null $P5050, vivi_5571272
    nqp_get_sc_object $P5051, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5050, $P5051
  vivi_5571272:
    defined $I5009, $P5050
    unless $I5009 goto if555_else1268 
    .const 'Sub' $P5052 = 'cuid_199_1360623834.732' 
    capture_lex $P5052
    $P5053 = $P5052()
    goto if555_end1269
  if555_else1268:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if565_else1285 
.annotate 'line', 1307
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5055
    set $P5069, $P101
    goto if565_end1286
  if565_else1285:
    set fb_tmp_128, _lex_param_2
    repr_defined $I5012, fb_tmp_128
    unless $I5012 goto if567_else1289 
    set $P5056, fb_tmp_128["combine"]
    set $P5058, $P5056
    goto if567_end1290
  if567_else1289:
    null $P5057
    set $P5058, $P5057
  if567_end1290:
    unless_null $P5058, vivi_5681291
    nqp_get_sc_object $P5059, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5058, $P5059
  vivi_5681291:
    unless $P5058 goto if566_else1287 
.annotate 'line', 1308
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5061
    set $P5068, $P101
    goto if566_end1288
  if566_else1287:
.annotate 'line', 1309
    nqp_decontainerize $P5062, _lex_param_0
    set fb_tmp_129, _lex_param_1
    repr_defined $I5013, fb_tmp_129
    unless $I5013 goto if569_else1292 
    set $P5063, fb_tmp_129[0]
    set $P5065, $P5063
    goto if569_end1293
  if569_else1292:
    null $P5064
    set $P5065, $P5064
  if569_end1293:
    unless_null $P5065, vivi_5701294
    nqp_get_sc_object $P5066, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5065, $P5066
  vivi_5701294:
    $P5067 = $P5062."evalfiles"($P5065, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5067
    set $P5068, $P101
  if566_end1288:
    set $P5069, $P5068
  if565_end1286:
  if555_end1269:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5077, $I5014
    set $P5076, $P5077
    unless $I5014 goto if572_end1298 
    set $S5003, $P104
    iseq $I5016, $S5003, "pir"
    box $P5075, $I5016
    set $P5074, $P5075
    if $I5016 goto unless573_end1300 
    set fb_tmp_130, _lex_param_2
    repr_defined $I5017, fb_tmp_130
    unless $I5017 goto if574_else1301 
    set $P5070, fb_tmp_130["output"]
    set $P5072, $P5070
    goto if574_end1302
  if574_else1301:
    null $P5071
    set $P5072, $P5071
  if574_end1302:
    unless_null $P5072, vivi_5751303
    nqp_get_sc_object $P5073, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5072, $P5073
  vivi_5751303:
    set $P5074, $P5072
  unless573_end1300:
    set $P5076, $P5074
  if572_end1298:
    unless $P5076 goto if571_end1296 
    .const 'Sub' $P5078 = 'cuid_200_1360623834.732' 
    capture_lex $P5078
    $P5079 = $P5078()
  if571_end1296:
    nqp_get_sc_object $P5080, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    nqp_get_sc_object $P5081, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5083, $P5081
    pop_eh 
    pop_eh 
    goto skip_handler_5811313
  catch_handler_5821314:
    .get_results ($P5082) 
    .const 'Sub' $P10001 = 'cuid_201_1360623834.732' 
    capture_lex $P10001
    $P10001($P5082)
    set $I10001, 1
    set $P5082["handled"], $I10001
    nqp_get_sc_object $P10002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5082
    pop_upto_eh $P5082
    pop_eh 
    set $P5083, $P10002
    goto skip_handler_5811313
  catch_handler_5831315:
    .get_results ($P5082) 
    .const 'Sub' $P10003 = 'cuid_202_1360623834.732' 
    capture_lex $P10003
    $P10003($P5082)
    set $I10002, 1
    set $P5082["handled"], $I10002
    nqp_get_sc_object $P10004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5082
    pop_upto_eh $P5082
    pop_eh 
    set $P5083, $P10004
    goto skip_handler_5811313
  skip_handler_5811313:
    set $P5085, $P5083
    pop_eh 
    goto skip_handler_5851318
  catch_handler_5861319:
    .get_results ($P5084) 
    set $I10001, 1
    set $P5084["handled"], $I10001
    nqp_get_sc_object $P10001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5084
    pop_upto_eh $P5084
    pop_eh 
    set $P5085, $P10001
    goto skip_handler_5851318
  skip_handler_5851318:
    unless $P103 goto if587_end1321 
.annotate 'line', 1334
    set fb_tmp_132, _lex_param_2
    repr_defined $I5018, fb_tmp_132
    unless $I5018 goto if590_else1326 
    set $P5086, fb_tmp_132["ll-exception"]
    set $P5088, $P5086
    goto if590_end1327
  if590_else1326:
    null $P5087
    set $P5088, $P5087
  if590_end1327:
    unless_null $P5088, vivi_5911328
    nqp_get_sc_object $P5089, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5088, $P5089
  vivi_5911328:
    set $P5091, $P5088
    if $P5088 goto unless589_end1325 
    nqp_decontainerize $P5090, _lex_param_0
    can $I5020, $P5090, "handle-exception"
    not $I5019, $I5020
    box $P5092, $I5019
    set $P5091, $P5092
  unless589_end1325:
    unless $P5091 goto if588_else1322 
    .const 'Sub' $P5093 = 'cuid_203_1360623834.732' 
    capture_lex $P5093
    $P5094 = $P5093()
    set $P5097, $P5094
    goto if588_end1323
  if588_else1322:
.annotate 'line', 1341
.annotate 'line', 1342
    nqp_decontainerize $P5095, _lex_param_0
    $P5096 = $P5095."handle-exception"($P102)
    set $P5097, $P5096
  if588_end1323:
  if587_end1321:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1360623834.732") :anon :lex :outer("cuid_119_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1299
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_127 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1302
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_126, $P5009
    repr_defined $I5001, fb_tmp_126
    unless $I5001 goto if558_else1273 
    set $P5010, fb_tmp_126["e"]
    set $P5012, $P5010
    goto if558_end1274
  if558_else1273:
    null $P5011
    set $P5012, $P5011
  if558_end1274:
    unless_null $P5012, vivi_5591275
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_5591275:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless562_end1281 
    find_lex $P5018, "$target"
    set $S5002, $P5018
    iseq $I5003, $S5002, "pir"
    set $I5004, $I5003
  unless562_end1281:
    box $P5025, $I5004
    set $P5024, $P5025
    if $I5004 goto unless561_end1279 
    find_lex $P5019, "%adverbs"
    set fb_tmp_127, $P5019
    repr_defined $I5005, fb_tmp_127
    unless $I5005 goto if563_else1282 
    set $P5020, fb_tmp_127["output"]
    set $P5022, $P5020
    goto if563_end1283
  if563_else1282:
    null $P5021
    set $P5022, $P5021
  if563_end1283:
    unless_null $P5022, vivi_5641284
    nqp_get_sc_object $P5023, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5022, $P5023
  vivi_5641284:
    set $P5024, $P5022
  unless561_end1279:
    set $P5032, $P5024
    if $P5024 goto unless560_end1277 
.annotate 'line', 1303
.annotate 'line', 1304
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$result"
    find_lex $P5029, "$target"
    find_lex $P5030, "%adverbs"
    $P5031 = $P5026."dumper"($P5028, $P5029, $P5030 :flat :named)
    set $P5032, $P5031
  unless560_end1277:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1360623834.732") :anon :lex :outer("cuid_119_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1311
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_131 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_131, $P5003
    repr_defined $I5001, fb_tmp_131
    unless $I5001 goto if576_else1304 
    set $P5004, fb_tmp_131["output"]
    set $P5006, $P5004
    goto if576_end1305
  if576_else1304:
    null $P5005
    set $P5006, $P5005
  if576_end1305:
    unless_null $P5006, vivi_5771306
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_5771306:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless579_end1310 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless579_end1310:
    unless $I5004 goto if578_else1307 
.annotate 'line', 1314
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5012, $P5009
    goto if578_end1308
  if578_else1307:
.annotate 'line', 1315
    new $P5010, "FileHandle"
    $P5011 = $P5010."open"($P101, "w")
    set $P5012, $P5011
  if578_end1308:
    set $P102, $P5012
    if $P102 goto unless580_end1312 
.annotate 'line', 1316
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    set $S5004, $P101
    concat $S5003, "Cannot write to ", $S5004
    $P5015 = $P5013."panic"($S5003)
  unless580_end1312:
.annotate 'line', 1317
    find_lex $P5016, "$result"
    $P102."print"($P5016)
.annotate 'line', 1318
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1360623834.732") :anon :lex :outer("cuid_119_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1320
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
.sub "" :subid("cuid_202_1360623834.732") :anon :lex :outer("cuid_119_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1324
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if584_else1316 
.annotate 'line', 1325
.annotate 'line', 1326
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if584_end1317
  if584_else1316:
.annotate 'line', 1327
    rethrow _lex_param_0
  if584_end1317:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1360623834.732") :anon :lex :outer("cuid_119_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1335
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    getstderr $P5002
    set $P101, $P5002
.annotate 'line', 1337
    find_lex $P5003, "$error"
    $P101."print"($P5003)
.annotate 'line', 1338
    $P101."print"("\n")
.annotate 'line', 1339
    find_lex $P5004, "$error"
    $P5005 = $P5004."backtrace_strings"()
    join $S5001, "\n", $P5005
    $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_120_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1348
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5035 = 'cuid_204_1360623834.732' 
    capture_lex $P5035 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_133 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
.annotate 'line', 1350
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1352
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5007, $P5008, "HLL"
    nqp_get_package_through_who $P5006, $P5007, "CommandLine"
    get_who $P5005, $P5006
    set fb_tmp_133, $P5005
    repr_defined $I5001, fb_tmp_133
    unless $I5001 goto if592_else1329 
    set $P5009, fb_tmp_133["Parser"]
    set $P5011, $P5009
    goto if592_end1330
  if592_else1329:
    null $P5010
    set $P5011, $P5010
  if592_end1330:
    unless_null $P5011, vivi_5931331
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_5931331:
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!cmdoptions"
    $P5016 = $P5011."new"($P5015)
    set $P101, $P5016
.annotate 'line', 1353
    $P101."add-stopper"("-e")
.annotate 'line', 1354
    $P101."stop-after-first-arg"()
    new $P5021, 'ExceptionHandler'
    set_label $P5021, catch_handler_5971335
    $P5021.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5021
.annotate 'line', 1356
    new $P5019, 'ExceptionHandler'
    set_label $P5019, catch_handler_5951333
    $P5019.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5019
.annotate 'line', 1357
    $P5017 = $P101."parse"(_lex_param_1)
    set $P102, $P5017
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5020, $P5018
    pop_eh 
    goto skip_handler_5941332
  catch_handler_5951333:
    .get_results ($P5019) 
    .const 'Sub' $P10001 = 'cuid_204_1360623834.732' 
    capture_lex $P10001
    $P10001($P5019)
    set $I10001, 1
    set $P5019["handled"], $I10001
    nqp_get_sc_object $P10002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5019
    pop_upto_eh $P5019
    pop_eh 
    set $P5020, $P10002
    goto skip_handler_5941332
  skip_handler_5941332:
    set $P5022, $P5020
    pop_eh 
    goto skip_handler_5961334
  catch_handler_5971335:
    .get_results ($P5021) 
    set $I10001, 1
    set $P5021["handled"], $I10001
    nqp_get_sc_object $P10001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5021
    pop_upto_eh $P5021
    pop_eh 
    set $P5022, $P10001
    goto skip_handler_5961334
  skip_handler_5961334:
    unless $P102 goto if598_else1336 
.annotate 'line', 1364
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
.annotate 'line', 1365
    $P5025 = $P102."options"()
    repr_bind_attr_obj $P5023, $P5024, "%!cli-options", $P5025
    nqp_decontainerize $P5026, _lex_param_0
    nqp_get_sc_object $P5027, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
.annotate 'line', 1366
    $P5028 = $P102."arguments"()
    repr_bind_attr_obj $P5026, $P5027, "@!cli-arguments", $P5028
    goto if598_end1337
  if598_else1336:
.annotate 'line', 1368
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    new $P5031, 'Hash'
    repr_bind_attr_obj $P5029, $P5030, "%!cli-options", $P5031
    nqp_decontainerize $P5032, _lex_param_0
    nqp_get_sc_object $P5033, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    new $P5034, 'ResizablePMCArray'
    repr_bind_attr_obj $P5032, $P5033, "@!cli-arguments", $P5034
  if598_end1337:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1360623834.732") :anon :lex :outer("cuid_120_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1358
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1360
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_121_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1375
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5044 = 'cuid_206_1360623834.732' 
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
    .local pmc fb_tmp_134 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1338
    .lex "RETURN", $P108
    set fb_tmp_134, _lex_param_3
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if599_else1340 
    set $P5008, fb_tmp_134["target"]
    set $P5010, $P5008
    goto if599_end1341
  if599_else1340:
    null $P5009
    set $P5010, $P5009
  if599_end1341:
    unless_null $P5010, vivi_6001342
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_6001342:
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5012, $S5001
    set $P101, $P5012
    set fb_tmp_135, _lex_param_3
    repr_defined $I5002, fb_tmp_135
    unless $I5002 goto if601_else1343 
    set $P5013, fb_tmp_135["encoding"]
    set $P5015, $P5013
    goto if601_end1344
  if601_else1343:
    null $P5014
    set $P5015, $P5014
  if601_end1344:
    unless_null $P5015, vivi_6021345
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_6021345:
    set $P102, $P5015
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if603_else1346 
    set $P5018, _lex_param_1
    goto if603_end1347
  if603_else1346:
    new $P5017, 'ResizablePMCArray'
    push $P5017, _lex_param_1
    set $P5018, $P5017
  if603_end1347:
    set $P103, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    join $S5003, ",", $P103
    box $P5021, $S5003
    repr_bind_attr_obj $P5019, $P5020, "$!user_progname", $P5021
    set $P5022, $P103
    iter $P5024, $P103
  for_next1354:
    unless $P5024, for_done1356
    shift $P5026, $P5024
  for_redo1355:
    .const 'Sub' $P5025 = 'cuid_206_1360623834.732' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1354
  for_done1356:
    join $S5004, "", $P104
    box $P5027, $S5004
    set $P105, $P5027
    join $S5005, " ", $P103
    box $P5028, $S5005
    set $P106, $P5028
.annotate 'line', 1399
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5030
    set $S5006, $P101
    iseq $I5004, $S5006, ""
    set $I5006, $I5004
    if $I5004 goto unless611_end1362 
    set $S5007, $P101
    iseq $I5005, $S5007, "pir"
    set $I5006, $I5005
  unless611_end1362:
    box $P5036, $I5006
    set $P5035, $P5036
    if $I5006 goto unless610_end1360 
    set fb_tmp_136, _lex_param_3
    repr_defined $I5007, fb_tmp_136
    unless $I5007 goto if612_else1363 
    set $P5031, fb_tmp_136["output"]
    set $P5033, $P5031
    goto if612_end1364
  if612_else1363:
    null $P5032
    set $P5033, $P5032
  if612_end1364:
    unless_null $P5033, vivi_6131365
    nqp_get_sc_object $P5034, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5033, $P5034
  vivi_6131365:
    set $P5035, $P5033
  unless610_end1360:
    unless $P5035 goto if609_else1357 
.annotate 'line', 1400
    find_lex $P5037, "RETURN"
    $P5038 = $P5037($P107)
    set $P5043, $P5038
    goto if609_end1358
  if609_else1357:
.annotate 'line', 1402
.annotate 'line', 1403
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5039, "RETURN"
    $P5042 = $P5039($P5041)
    set $P5043, $P5042
  if609_end1358:
    goto lexotic_1339
  lexotic_1338:
    .get_results ($P5043)
  lexotic_1339:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1360623834.732") :anon :lex :outer("cuid_121_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1381
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_205_1360623834.732' 
    capture_lex $P5014 
    .lex "$in-handle", $P101 
    .lex "$err", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, "FileHandle"
    set $P101, $P5003
    box $P5004, 0
    set $P102, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_6071351
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1384
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_6051349
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
.annotate 'line', 1388
    find_lex $P5005, "$encoding"
    $P101."encoding"($P5005)
    find_lex $P5006, "@codes"
.annotate 'line', 1389
    $P5007 = $P101."readall"(_lex_param_0)
    set $S5001, $P5007
    push $P5006, $S5001
.annotate 'line', 1390
    $P101."close"()
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5008
    pop_eh 
    goto skip_handler_6041348
  catch_handler_6051349:
    .get_results ($P5009) 
    .const 'Sub' $P10001 = 'cuid_205_1360623834.732' 
    capture_lex $P10001
    $P10001($P5009)
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10002
    goto skip_handler_6041348
  skip_handler_6041348:
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_6061350
  catch_handler_6071351:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_6061350
  skip_handler_6061350:
    set $P5013, $P102
    unless $P102 goto if608_end1353 
    die $P102
    set $P5013, $P102
  if608_end1353:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1360623834.732") :anon :lex :outer("cuid_206_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1391
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
.sub "compile" :subid("cuid_122_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1407
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5039 = 'cuid_207_1360623834.732' 
    capture_lex $P5039 
    .lex "%*COMPILING", $P101 
    .lex "$target", $P102 
    .lex "$result", $P103 
    .lex "$stderr", $P104 
    .lex "$stdin", $P105 
    .lex "$stagestats", $P106 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_137 
    .local pmc fb_tmp_138 
    .local pmc fb_tmp_139 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1366
    .lex "RETURN", $P107
    unless_null $P101, fallback1368
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5007, $P5008
    set fb_tmp_137, $P5007
    repr_defined $I5001, fb_tmp_137
    unless $I5001 goto if614_else1369 
    set $P5009, fb_tmp_137["%COMPILING"]
    set $P5011, $P5009
    goto if614_end1370
  if614_else1369:
    null $P5010
    set $P5011, $P5010
  if614_end1370:
    unless_null $P5011, vivi_6151371
    nqp_get_sc_object $P5013, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5012, $P5013
    new $P5014, 'Hash'
    set $P5012["%COMPILING"], $P5014
    set $P5011, $P5014
  vivi_6151371:
    unless_null $P5011, vivi_6161372
    die "Contextual %*COMPILING not found"
    box $P5015, "Contextual %*COMPILING not found"
    set $P5011, $P5015
  vivi_6161372:
    set $P101, $P5011
  fallback1368:
    set $P101["%?OPTIONS"], _lex_param_2
    set fb_tmp_138, _lex_param_2
    repr_defined $I5002, fb_tmp_138
    unless $I5002 goto if617_else1373 
    set $P5016, fb_tmp_138["target"]
    set $P5018, $P5016
    goto if617_end1374
  if617_else1373:
    null $P5017
    set $P5018, $P5017
  if617_end1374:
    unless_null $P5018, vivi_6181375
    nqp_get_sc_object $P5019, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5018, $P5019
  vivi_6181375:
    set $S5002, $P5018
    downcase $S5001, $S5002
    box $P5020, $S5001
    set $P102, $P5020
    set $P103, _lex_param_1
.annotate 'line', 1412
    getinterp $P5021
    $P5022 = $P5021."stderr_handle"()
    set $P104, $P5022
.annotate 'line', 1413
    getinterp $P5023
    $P5024 = $P5023."stdin_handle"()
    set $P105, $P5024
    set fb_tmp_139, _lex_param_2
    repr_defined $I5003, fb_tmp_139
    unless $I5003 goto if619_else1376 
    set $P5025, fb_tmp_139["stagestats"]
    set $P5027, $P5025
    goto if619_end1377
  if619_else1376:
    null $P5026
    set $P5027, $P5026
  if619_end1377:
    unless_null $P5027, vivi_6201378
    nqp_get_sc_object $P5028, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5027, $P5028
  vivi_6201378:
    set $P106, $P5027
.annotate 'line', 1415
    nqp_decontainerize $P5032, _lex_param_0
    $P5033 = $P5032."stages"()
    set $P5029, $P5033
    iter $P5031, $P5033
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, for_handlers1389
    push_eh $P5035
  for_next1390:
    unless $P5031, for_done1392
    shift $P5036, $P5031
  for_redo1391:
    .const 'Sub' $P5034 = 'cuid_207_1360623834.732' 
    capture_lex $P5034
    $P5029 = $P5034($P5036)
    goto for_next1390
  for_handlers1389:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5035, $P5035, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, for_next1390
    eq $P5035, .CONTROL_LOOP_REDO, for_redo1391
  for_done1392:
    pop_eh 
    find_lex $P5037, "RETURN"
    $P5038 = $P5037($P103)
    goto lexotic_1367
  lexotic_1366:
    .get_results ($P5038)
  lexotic_1367:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1360623834.732") :anon :lex :outer("cuid_122_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1415
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    time $N5001
    box $P5003, $N5001
    set $P101, $P5003
.annotate 'line', 1417
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
    unless $I5001 goto if621_end1380 
.annotate 'line', 1419
.annotate 'line', 1420
    find_lex $P5011, "$stderr"
    new $P5012, 'ResizablePMCArray'
    push $P5012, _lex_param_0
    push $P5012, $P102
    sprintf $S5002, "Stage %-11s: %7.3f", $P5012
    $P5011."print"($S5002)
    find_lex $P5013, "$stagestats"
    set $I5003, $P5013
    band $I5002, $I5003, 4
    unless $I5002 goto if622_end1382 
    sweep 1
  if622_end1382:
    find_lex $P5014, "$stagestats"
    set $I5005, $P5014
    band $I5004, $I5005, 2
    unless $I5004 goto if623_end1384 
.annotate 'line', 1422
    find_lex $P5015, "$stderr"
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."vmstat"()
    sprintf $S5003, " %11d %11d %9d %9d", $P5018
    $P5019 = $P5015."print"($S5003)
  if623_end1384:
.annotate 'line', 1424
    find_lex $P5020, "$stderr"
    $P5020."print"("\n")
    find_lex $P5021, "$stagestats"
    set $I5007, $P5021
    band $I5006, $I5007, 8
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if624_end1386 
.annotate 'line', 1425
.annotate 'line', 1426
    find_lex $P5022, "$stderr"
    $P5022."print"("continue> ")
.annotate 'line', 1427
    find_lex $P5023, "$stdin"
    $P5024 = $P5023."readline"()
    set $P5025, $P5024
  if624_end1386:
  if621_end1380:
    set $S5004, _lex_param_0
    find_lex $P5027, "$target"
    set $S5005, $P5027
    iseq $I5008, $S5004, $S5005
    set $I5009, $I5008
    unless $I5008 goto if625_end1388 
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
  if625_end1388:
    .return ($I5009) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_123_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1435
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
.sub "parse" :subid("cuid_124_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1439
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5044 = 'cuid_208_1360623834.732' 
    capture_lex $P5044 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_140 
    .local pmc fb_tmp_141 
    .local pmc fb_tmp_142 
    .local pmc fb_tmp_143 
    .local pmc fb_tmp_144 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1393
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_140, _lex_param_2
    repr_defined $I5001, fb_tmp_140
    unless $I5001 goto if627_else1397 
    set $P5005, fb_tmp_140["transcode"]
    set $P5007, $P5005
    goto if627_end1398
  if627_else1397:
    null $P5006
    set $P5007, $P5006
  if627_end1398:
    unless_null $P5007, vivi_6281399
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_6281399:
    unless $P5007 goto if626_end1396 
.annotate 'line', 1441
    set fb_tmp_141, _lex_param_2
    repr_defined $I5002, fb_tmp_141
    unless $I5002 goto if629_else1400 
    set $P5013, fb_tmp_141["transcode"]
    set $P5015, $P5013
    goto if629_end1401
  if629_else1400:
    null $P5014
    set $P5015, $P5014
  if629_end1401:
    unless_null $P5015, vivi_6301402
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_6301402:
    set $S5001, $P5015
    split $P5012, " ", $S5001
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next1405:
    unless $P5011, for_done1407
    shift $P5018, $P5011
  for_redo1406:
    .const 'Sub' $P5017 = 'cuid_208_1360623834.732' 
    capture_lex $P5017
    $P5009 = $P5017($P5018)
    goto for_next1405
  for_done1407:
  if626_end1396:
.annotate 'line', 1449
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parsegrammar"()
    set $P102, $P5020
    set fb_tmp_142, _lex_param_2
    repr_defined $I5004, fb_tmp_142
    unless $I5004 goto if634_else1410 
    set $P5021, fb_tmp_142["target"]
    set $P5023, $P5021
    goto if634_end1411
  if634_else1410:
    null $P5022
    set $P5023, $P5022
  if634_end1411:
    unless_null $P5023, vivi_6351412
    nqp_get_sc_object $P5024, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5023, $P5024
  vivi_6351412:
    set $S5002, $P5023
    iseq $I5003, $S5002, "parse"
    if $I5003 goto unless633_end1409 
.annotate 'line', 1451
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."parseactions"()
    set $P103, $P5026
  unless633_end1409:
    set fb_tmp_143, _lex_param_2
    repr_defined $I5005, fb_tmp_143
    unless $I5005 goto if637_else1415 
    set $P5027, fb_tmp_143["rxtrace"]
    set $P5029, $P5027
    goto if637_end1416
  if637_else1415:
    null $P5028
    set $P5029, $P5028
  if637_end1416:
    unless_null $P5029, vivi_6381417
    nqp_get_sc_object $P5030, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5029, $P5030
  vivi_6381417:
    unless $P5029 goto if636_end1414 
.annotate 'line', 1452
    get_how $P5031, $P102
    $P5032 = $P5031."trace-on"($P102)
  if636_end1414:
.annotate 'line', 1453
    $P5033 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5033
    set fb_tmp_144, _lex_param_2
    repr_defined $I5006, fb_tmp_144
    unless $I5006 goto if640_else1420 
    set $P5034, fb_tmp_144["rxtrace"]
    set $P5036, $P5034
    goto if640_end1421
  if640_else1420:
    null $P5035
    set $P5036, $P5035
  if640_end1421:
    unless_null $P5036, vivi_6411422
    nqp_get_sc_object $P5037, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5036, $P5037
  vivi_6411422:
    unless $P5036 goto if639_end1419 
.annotate 'line', 1454
    get_how $P5038, $P102
    $P5039 = $P5038."trace-off"($P102)
  if639_end1419:
    if $P104 goto unless642_end1424 
.annotate 'line', 1455
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."panic"("Unable to parse source")
  unless642_end1424:
    find_lex $P5042, "RETURN"
    $P5043 = $P5042($P104)
    goto lexotic_1394
  lexotic_1393:
    .get_results ($P5043)
  lexotic_1394:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1360623834.732") :anon :lex :outer("cuid_124_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1442
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_6321404
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 1443
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_6311403
  catch_handler_6321404:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_6311403
  skip_handler_6311403:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_125_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1459
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_145 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 1460
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1462
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set fb_tmp_145, $P5003
    repr_defined $I5001, fb_tmp_145
    unless $I5001 goto if644_else1427 
    set $P5006, fb_tmp_145["Node"]
    set $P5008, $P5006
    goto if644_end1428
  if644_else1427:
    null $P5007
    set $P5008, $P5007
  if644_end1428:
    unless_null $P5008, vivi_6451429
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_6451429:
    $P5010 = $P5008."ACCEPTS"($P101)
    if $P5010 goto unless643_end1426 
.annotate 'line', 1461
    nqp_decontainerize $P5011, _lex_param_0
    typeof $S5002, _lex_param_1
    concat $S5001, "Unable to obtain ast from ", $S5002
    $P5012 = $P5011."panic"($S5001)
  unless643_end1426:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_126_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1466
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1467
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_127_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1470
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
.sub "pir" :subid("cuid_128_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1483
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1484
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
.sub "evalpmc" :subid("cuid_129_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 1489
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_130_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1492
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5013 = 'cuid_209_1360623834.732' 
    capture_lex $P5013 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    .local pmc fb_tmp_146 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1430
    .lex "RETURN", $P101
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if646_end1433 
.annotate 'line', 1493
.annotate 'line', 1494
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  if646_end1433:
    set fb_tmp_146, _lex_param_3
    repr_defined $I5002, fb_tmp_146
    unless $I5002 goto if648_else1436 
    set $P5004, fb_tmp_146["dumper"]
    set $P5006, $P5004
    goto if648_end1437
  if648_else1436:
    null $P5005
    set $P5006, $P5005
  if648_end1437:
    unless_null $P5006, vivi_6491438
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_6491438:
    unless $P5006 goto if647_else1434 
    .const 'Sub' $P5008 = 'cuid_209_1360623834.732' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5012, $P5009
    goto if647_end1435
  if647_else1434:
.annotate 'line', 1502
.annotate 'line', 1503
 $P5010 = get_root_global ['parrot'], '_dumper' 
    $P5011 = $P5010(_lex_param_1, _lex_param_2)
    set $P5012, $P5011
  if647_end1435:
    goto lexotic_1431
  lexotic_1430:
    .get_results ($P5012)
  lexotic_1431:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1360623834.732") :anon :lex :outer("cuid_130_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1497
    .lex "$dumper", $P101 
    .local pmc fb_tmp_147 
    .local pmc fb_tmp_148 
    .local pmc fb_tmp_149 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    load_bytecode "PCT/Dumper.pbc"
    nqp_get_sc_object $P5004, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5003, $P5004, "PCT"
    get_who $P5002, $P5003
    set fb_tmp_148, $P5002
    repr_defined $I5002, fb_tmp_148
    unless $I5002 goto if651_else1441 
    set $P5005, fb_tmp_148["Dumper"]
    set $P5007, $P5005
    goto if651_end1442
  if651_else1441:
    null $P5006
    set $P5007, $P5006
  if651_end1442:
    unless_null $P5007, vivi_6521443
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_6521443:
    set fb_tmp_147, $P5007
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if650_else1439 
    find_lex $P5010, "%options"
    set fb_tmp_149, $P5010
    repr_defined $I5003, fb_tmp_149
    unless $I5003 goto if653_else1444 
    set $P5011, fb_tmp_149["dumper"]
    set $P5013, $P5011
    goto if653_end1445
  if653_else1444:
    null $P5012
    set $P5013, $P5012
  if653_end1445:
    unless_null $P5013, vivi_6541446
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_6541446:
    set $S5002, $P5013
    downcase $S5001, $S5002
    set $P5009, fb_tmp_147[$S5001]
    set $P5016, $P5009
    goto if650_end1440
  if650_else1439:
    null $P5015
    set $P5016, $P5015
  if650_end1440:
    unless_null $P5016, vivi_6551447
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5016, $P5017
  vivi_6551447:
    set $P101, $P5016
.annotate 'line', 1500
    find_lex $P5018, "$obj"
    find_lex $P5019, "$name"
    $P5020 = $P101($P5018, $P5019)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_131_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1507
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_10, default1450
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5005
  default1450:
    unless _lex_param_1 goto if656_end1449 
.annotate 'line', 1508
.annotate 'line', 1509
    $P5001 = "&say"(_lex_param_1)
  if656_end1449:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_132_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1515
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$parver", $P102 
    .lex "$parrev", $P103 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_150 
    .local pmc fb_tmp_151 
    .local pmc fb_tmp_152 
    .local pmc fb_tmp_153 
    .local pmc fb_tmp_154 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!config"
    set fb_tmp_150, $P5006
    repr_defined $I5001, fb_tmp_150
    unless $I5001 goto if657_else1451 
    set $P5007, fb_tmp_150["version"]
    set $P5009, $P5007
    goto if657_end1452
  if657_else1451:
    null $P5008
    set $P5009, $P5008
  if657_end1452:
    unless_null $P5009, vivi_6581453
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_6581453:
    set $P101, $P5009
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set fb_tmp_152, $P5011
    repr_defined $I5003, fb_tmp_152
    unless $I5003 goto if660_else1456 
    set $P5013, fb_tmp_152["%parrot_config"]
    set $P5015, $P5013
    goto if660_end1457
  if660_else1456:
    null $P5014
    set $P5015, $P5014
  if660_end1457:
    unless_null $P5015, vivi_6611458
    new $P5016, 'Hash'
    set $P5015, $P5016
  vivi_6611458:
    set fb_tmp_151, $P5015
    repr_defined $I5002, fb_tmp_151
    unless $I5002 goto if659_else1454 
    set $P5017, fb_tmp_151["VERSION"]
    set $P5019, $P5017
    goto if659_end1455
  if659_else1454:
    null $P5018
    set $P5019, $P5018
  if659_end1455:
    unless_null $P5019, vivi_6621459
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_6621459:
    set $P102, $P5019
    find_lex $P5023, "$?PACKAGE"
    get_who $P5022, $P5023
    set fb_tmp_154, $P5022
    repr_defined $I5006, fb_tmp_154
    unless $I5006 goto if664_else1463 
    set $P5024, fb_tmp_154["%parrot_config"]
    set $P5026, $P5024
    goto if664_end1464
  if664_else1463:
    null $P5025
    set $P5026, $P5025
  if664_end1464:
    unless_null $P5026, vivi_6651465
    new $P5027, 'Hash'
    set $P5026, $P5027
  vivi_6651465:
    set fb_tmp_153, $P5026
    repr_defined $I5005, fb_tmp_153
    unless $I5005 goto if663_else1461 
    set $P5028, fb_tmp_153["git_describe"]
    set $P5030, $P5028
    goto if663_end1462
  if663_else1461:
    null $P5029
    set $P5030, $P5029
  if663_end1462:
    unless_null $P5030, vivi_6661466
    nqp_get_sc_object $P5031, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5030, $P5031
  vivi_6661466:
    set $P5021, $P5030
    defined $I5004, $P5021
    if $I5004, defor1460
    box $P5032, "(unknown)"
    set $P5021, $P5032
  defor1460:
    set $P103, $P5021
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
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
.sub "show-config" :subid("cuid_133_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1523
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_134_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1525
    .param pmc _lex_param_0 
    .const 'Sub' $P5020 = 'cuid_210_1360623834.732' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_211_1360623834.732' 
    capture_lex $P5020 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_155 
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set fb_tmp_155, $P5004
    repr_defined $I5001, fb_tmp_155
    unless $I5001 goto if667_else1467 
    set $P5006, fb_tmp_155["%parrot_config"]
    set $P5008, $P5006
    goto if667_end1468
  if667_else1467:
    null $P5007
    set $P5008, $P5007
  if667_end1468:
    unless_null $P5008, vivi_6681469
    new $P5009, 'Hash'
    set $P5008, $P5009
  vivi_6681469:
    set $P5001, $P5008
    iter $P5003, $P5008
  for_next1470:
    unless $P5003, for_done1472
    shift $P5011, $P5003
  for_redo1471:
    .const 'Sub' $P5010 = 'cuid_210_1360623834.732' 
    capture_lex $P5010
    $P5001 = $P5010($P5011)
    goto for_next1470
  for_done1472:
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5017, $P5015, $P5016, "%!config"
    set $P5012, $P5017
    iter $P5014, $P5017
  for_next1473:
    unless $P5014, for_done1475
    shift $P5019, $P5014
  for_redo1474:
    .const 'Sub' $P5018 = 'cuid_211_1360623834.732' 
    capture_lex $P5018
    $P5012 = $P5018($P5019)
    goto for_next1473
  for_done1475:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1360623834.732") :anon :lex :outer("cuid_134_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1526
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1527
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
.sub "" :subid("cuid_211_1360623834.732") :anon :lex :outer("cuid_134_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1529
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1530
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
.sub "vmstat" :subid("cuid_135_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1535
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
.sub "nqpevent" :subid("cuid_136_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1543
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_213_1360623834.732' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_11, default1494
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5010
  default1494:
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if670_end1479 
    set $P5004, $P101
  if670_end1479:
    unless $P5004 goto if669_end1477 
.annotate 'line', 1547
    $P5006 = $P101."flush"()
  if669_end1477:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if671_end1481 
    .const 'Sub' $P5007 = 'cuid_213_1360623834.732' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if671_end1481:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1360623834.732") :anon :lex :outer("cuid_136_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1550
    .const 'Sub' $P5022 = 'cuid_212_1360623834.732' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_156 
    .local pmc fb_tmp_157 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5005, "$spec"
    set fb_tmp_156, $P5005
    repr_defined $I5001, fb_tmp_156
    unless $I5001 goto if672_else1482 
    set $P5006, fb_tmp_156[0]
    set $P5008, $P5006
    goto if672_end1483
  if672_else1482:
    null $P5007
    set $P5008, $P5007
  if672_end1483:
    unless_null $P5008, vivi_6731484
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_6731484:
    set $P101, $P5008
    find_lex $P5010, "$spec"
    set fb_tmp_157, $P5010
    repr_defined $I5002, fb_tmp_157
    unless $I5002 goto if674_else1485 
    set $P5011, fb_tmp_157[1]
    set $P5013, $P5011
    goto if674_end1486
  if674_else1485:
    null $P5012
    set $P5013, $P5012
  if674_end1486:
    unless_null $P5013, vivi_6751487
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_6751487:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if676_else1488 
    .const 'Sub' $P5015 = 'cuid_212_1360623834.732' 
    capture_lex $P5015
    $P5016 = $P5015()
    goto if676_end1489
  if676_else1488:
.annotate 'line', 1559
.annotate 'line', 1560
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    nqpevent_fh $P5017, $P5019
  if676_end1489:
    set $S5003, $P102
    iseq $I5005, $S5003, ""
    unless $I5005 goto if678_else1492 
    box $P5021, 31
    set $P5020, $P5021
    goto if678_end1493
  if678_else1492:
    set $P5020, $P102
  if678_end1493:
    set $I5006, $P5020
    nqpdebflags $I5004, $I5006
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1360623834.732") :anon :lex :outer("cuid_213_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1554
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    new $P5002, "FileHandle"
    set $P101, $P5002
.annotate 'line', 1556
    find_lex $P5003, "$file"
    $P5004 = $P101."open"($P5003, "w")
    if $P5004 goto unless677_end1491 
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$file"
    set $S5002, $P5007
    concat $S5001, "Cannot write to ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless677_end1491:
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_137_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1567
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_214_1360623834.732' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, "ResizableStringArray"
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1497:
    unless $P5005, for_done1499
    shift $P5010, $P5005
  for_redo1498:
    .const 'Sub' $P5009 = 'cuid_214_1360623834.732' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1497
  for_done1499:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1360623834.732") :anon :lex :outer("cuid_137_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1569
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if679_end1496 
.annotate 'line', 1570
.annotate 'line', 1571
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if679_end1496:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_138_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1577
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_215_1360623834.732' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_216_1360623834.732' 
    capture_lex $P5035 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_158 
    .local pmc fb_tmp_159 
    .local pmc fb_tmp_160 
    .local pmc fb_tmp_161 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1500
    .lex "RETURN", $P104
    set fb_tmp_158, _lex_param_2
    repr_defined $I5001, fb_tmp_158
    unless $I5001 goto if681_else1504 
    set $P5004, fb_tmp_158["before"]
    set $P5006, $P5004
    goto if681_end1505
  if681_else1504:
    null $P5005
    set $P5006, $P5005
  if681_end1505:
    unless_null $P5006, vivi_6821506
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_6821506:
    unless $P5006 goto if680_else1502 
.annotate 'line', 1580
    set fb_tmp_159, _lex_param_2
    repr_defined $I5002, fb_tmp_159
    unless $I5002 goto if683_else1507 
    set $P5008, fb_tmp_159["before"]
    set $P5010, $P5008
    goto if683_end1508
  if683_else1507:
    null $P5009
    set $P5010, $P5009
  if683_end1508:
    unless_null $P5010, vivi_6841509
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_6841509:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if680_end1503
  if680_else1502:
    set fb_tmp_160, _lex_param_2
    repr_defined $I5003, fb_tmp_160
    unless $I5003 goto if686_else1512 
    set $P5013, fb_tmp_160["after"]
    set $P5015, $P5013
    goto if686_end1513
  if686_else1512:
    null $P5014
    set $P5015, $P5014
  if686_end1513:
    unless_null $P5015, vivi_6871514
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_6871514:
    unless $P5015 goto if685_else1510 
.annotate 'line', 1583
    set fb_tmp_161, _lex_param_2
    repr_defined $I5004, fb_tmp_161
    unless $I5004 goto if688_else1515 
    set $P5017, fb_tmp_161["after"]
    set $P5019, $P5017
    goto if688_end1516
  if688_else1515:
    null $P5018
    set $P5019, $P5018
  if688_end1516:
    unless_null $P5019, vivi_6891517
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_6891517:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if685_end1511
  if685_else1510:
    .const 'Sub' $P5022 = 'cuid_215_1360623834.732' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if685_end1511:
  if680_end1503:
    new $P5025, "ResizableStringArray"
    set $P103, $P5025
.annotate 'line', 1593
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1522:
    unless $P5028, for_done1524
    shift $P5032, $P5028
  for_redo1523:
    .const 'Sub' $P5031 = 'cuid_216_1360623834.732' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1522
  for_done1524:
.annotate 'line', 1606
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1501
  lexotic_1500:
    .get_results ($P5034)
  lexotic_1501:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1360623834.732") :anon :lex :outer("cuid_138_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1586
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1587
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1589
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1360623834.732") :anon :lex :outer("cuid_138_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1593
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if690_else1518 
.annotate 'line', 1594
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if691_else1520 
.annotate 'line', 1595
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if691_end1521
  if691_else1520:
.annotate 'line', 1598
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if691_end1521:
    set $P5011, $P5009
    goto if690_end1519
  if690_else1518:
.annotate 'line', 1602
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if690_end1519:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_139_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1609
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_217_1360623834.732' 
    capture_lex $P5027 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_162 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_164 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_162, $P101
    repr_defined $I5001, fb_tmp_162
    unless $I5001 goto if692_else1525 
    set $P5006, fb_tmp_162[0]
    set $P5008, $P5006
    goto if692_end1526
  if692_else1525:
    null $P5007
    set $P5008, $P5007
  if692_end1526:
    unless_null $P5008, vivi_6931527
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_6931527:
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
    unless $I5003 goto if694_end1529 
.annotate 'line', 1615
    set fb_tmp_163, $P101
    repr_defined $I5004, fb_tmp_163
    unless $I5004 goto if695_else1530 
    set $P5012, fb_tmp_163[0]
    set $P5014, $P5012
    goto if695_end1531
  if695_else1530:
    null $P5013
    set $P5014, $P5013
  if695_end1531:
    unless_null $P5014, vivi_6961532
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5014, $P5015
  vivi_6961532:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_164, $P101
    repr_defined $I5005, fb_tmp_164
    unless $I5005 goto if697_else1533 
    set $P5017, fb_tmp_164[-1]
    set $P5019, $P5017
    goto if697_end1534
  if697_else1533:
    null $P5018
    set $P5019, $P5018
  if697_end1534:
    unless_null $P5019, vivi_6981535
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_6981535:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if694_end1529:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1538:
    unless $P5024, for_done1540
    shift $P5026, $P5024
  for_redo1539:
    .const 'Sub' $P5025 = 'cuid_217_1360623834.732' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1538
  for_done1540:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1360623834.732") :anon :lex :outer("cuid_139_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1623
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless699_end1537 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless699_end1537:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_140_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1629
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("cache") :optional 
    .param int haz_param_12 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 
    if haz_param_12, default1541
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_3, $P5001
  default1541:

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
.sub "user-progname" :subid("cuid_141_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1695
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1542
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1542:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_142_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1698
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_143_1360623834.732") :anon :lex :outer("cuid_193_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1699
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1360623834.732") :anon :lex :outer("cuid_179_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1797
    .const 'Sub' $P5006 = 'cuid_144_1360623834.732' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_145_1360623834.732' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_146_1360623834.732' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_147_1360623834.732' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_148_1360623834.732' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_144_1360623834.732' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_145_1360623834.732' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_146_1360623834.732' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_147_1360623834.732' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_148_1360623834.732' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_144_1360623834.732") :anon :lex :outer("cuid_218_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1801
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_145_1360623834.732") :anon :lex :outer("cuid_218_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1806
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_146_1360623834.732") :anon :lex :outer("cuid_218_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1807
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_147_1360623834.732") :anon :lex :outer("cuid_218_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1809
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_148_1360623834.732") :anon :lex :outer("cuid_218_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1813
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    .local pmc fb_tmp_166 
    .local pmc fb_tmp_167 
    .local pmc fb_tmp_168 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if702_else1546 
.annotate 'line', 1816
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options"
    set fb_tmp_166, $P5006
    repr_defined $I5003, fb_tmp_166
    unless $I5003 goto if704_else1550 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_166[$S5002]
    set $P5009, $P5007
    goto if704_end1551
  if704_else1550:
    null $P5008
    set $P5009, $P5008
  if704_end1551:
    unless_null $P5009, vivi_7051552
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_7051552:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if703_else1548 
.annotate 'line', 1817
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options"
    set fb_tmp_167, $P5013
    repr_defined $I5004, fb_tmp_167
    unless $I5004 goto if706_else1553 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_167[$S5003]
    set $P5016, $P5014
    goto if706_end1554
  if706_else1553:
    null $P5015
    set $P5016, $P5015
  if706_end1554:
    unless_null $P5016, vivi_7071555
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5016, $P5017
  vivi_7071555:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if703_end1549
  if703_else1548:
.annotate 'line', 1819
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options"
    set $S5004, _lex_param_1
    new $P5021, 'ResizablePMCArray'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options"
    set fb_tmp_168, $P5024
    repr_defined $I5005, fb_tmp_168
    unless $I5005 goto if708_else1556 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_168[$S5005]
    set $P5027, $P5025
    goto if708_end1557
  if708_else1556:
    null $P5026
    set $P5027, $P5026
  if708_end1557:
    unless_null $P5027, vivi_7091558
    nqp_get_sc_object $P5028, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5027, $P5028
  vivi_7091558:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if703_end1549:
    set $P5033, $P5029
    goto if702_end1547
  if702_else1546:
.annotate 'line', 1822
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options"
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if702_end1547:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1360623834.732") :anon :lex :outer("cuid_179_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1828
    .const 'Sub' $P5011 = 'cuid_149_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_150_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_151_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_152_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_153_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_154_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_155_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_156_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_157_1360623834.732' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_158_1360623834.732' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_149_1360623834.732' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_150_1360623834.732' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_151_1360623834.732' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_152_1360623834.732' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_153_1360623834.732' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_154_1360623834.732' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_155_1360623834.732' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_156_1360623834.732' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_157_1360623834.732' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_158_1360623834.732' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_149_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1834
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 1835
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1836
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_150_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1840
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_151_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1844
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_220_1360623834.732' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_13, default1562
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1562:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1559:
    unless $P5019, for_done1561
    shift $P5021, $P5019
  for_redo1560:
    .const 'Sub' $P5020 = 'cuid_220_1360623834.732' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1559
  for_done1561:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1360623834.732") :anon :lex :outer("cuid_151_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1850
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1851
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_152_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1854
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_153_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1858
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
.sub "add-spec" :subid("cuid_154_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1863
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_221_1360623834.732' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    unless $I5002 goto if710_else1563 
.annotate 'line', 1867
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1869
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if710_end1564
  if710_else1563:
.annotate 'line', 1870
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1872
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if710_end1564:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1565:
    unless $P5013, for_done1567
    shift $P5015, $P5013
  for_redo1566:
    .const 'Sub' $P5014 = 'cuid_221_1360623834.732' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1565
  for_done1567:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1360623834.732") :anon :lex :outer("cuid_154_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1874
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_155_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1880
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1568
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless712_end1573 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless712_end1573:
    unless $I5003 goto if711_end1571 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if711_end1571:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if713_end1575 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if713_end1575:
    box $P5005, 0
    goto lexotic_1569
  lexotic_1568:
    .get_results ($P5005)
  lexotic_1569:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_156_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1886
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_169 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_169, $P5004
    repr_defined $I5001, fb_tmp_169
    unless $I5001 goto if714_else1576 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_169[$S5001]
    set $P5007, $P5005
    goto if714_end1577
  if714_else1576:
    null $P5006
    set $P5007, $P5006
  if714_end1577:
    unless_null $P5007, vivi_7151578
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_7151578:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_157_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1891
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_170 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_170, $P5004
    repr_defined $I5001, fb_tmp_170
    unless $I5001 goto if716_else1579 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_170[$S5001]
    set $P5007, $P5005
    goto if716_end1580
  if716_else1579:
    null $P5006
    set $P5007, $P5006
  if716_end1580:
    unless_null $P5007, vivi_7171581
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_7171581:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_158_1360623834.732") :anon :lex :outer("cuid_219_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1896
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5023 = 'cuid_222_1360623834.732' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_223_1360623834.732' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_225_1360623834.732' 
    capture_lex $P5023 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_173 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_222_1360623834.732' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_223_1360623834.732' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1595
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1900
    nqp_get_sc_object $P5011, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    nqp_get_package_through_who $P5010, $P5011, "HLL"
    nqp_get_package_through_who $P5009, $P5010, "CommandLine"
    get_who $P5008, $P5009
    set fb_tmp_173, $P5008
    repr_defined $I5001, fb_tmp_173
    unless $I5001 goto if724_else1597 
    set $P5012, fb_tmp_173["Result"]
    set $P5014, $P5012
    goto if724_end1598
  if724_else1597:
    null $P5013
    set $P5014, $P5013
  if724_end1598:
    unless_null $P5014, vivi_7251599
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5014, $P5015
  vivi_7251599:
    $P5016 = $P5014."new"()
    set $P103, $P5016
.annotate 'line', 1901
    $P103."init"()
  while726_test1600:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5002, $N5002, $N5003
    box $P5020, $I5002
    set $P5019, $P5020
    unless $I5002 goto while726_done1604 
  while726_redo1602:
    .const 'Sub' $P5017 = 'cuid_225_1360623834.732' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
    goto while726_test1600 
  while726_done1604:
    find_lex $P5021, "RETURN"
    $P5022 = $P5021($P103)
    goto lexotic_1596
  lexotic_1595:
    .get_results ($P5022)
  lexotic_1596:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_222_1360623834.732") :anon :lex :outer("cuid_158_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1904
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_2 
    .local pmc fb_tmp_171 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if718_else1582 
.annotate 'line', 1905
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if718_end1583
  if718_else1582:
.annotate 'line', 1907
    find_lex $P5004, "$i"
    set tmp_2, $P5004
    set $N5006, tmp_2
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5004, "@args"
    set fb_tmp_171, $P5004
    repr_defined $I5002, fb_tmp_171
    unless $I5002 goto if719_else1584 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_171[$I5003]
    set $P5008, $P5005
    goto if719_end1585
  if719_else1584:
    null $P5007
    set $P5008, $P5007
  if719_end1585:
    unless_null $P5008, vivi_7201586
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_7201586:
    set $P5010, $P5008
  if718_end1583:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_223_1360623834.732") :anon :lex :outer("cuid_158_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1915
    .local pmc tmp_3 
    .local pmc fb_tmp_172 
    .local pmc tmp_4 
    find_lex $P5001, "$i"
    set tmp_3, $P5001
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while721_test1587:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while721_done1591 
  while721_redo1589:
.annotate 'line', 1917
.annotate 'line', 1918
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_172, $P5004
    repr_defined $I5002, fb_tmp_172
    unless $I5002 goto if722_else1592 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_172[$I5003]
    set $P5008, $P5005
    goto if722_end1593
  if722_else1592:
    null $P5007
    set $P5008, $P5007
  if722_end1593:
    unless_null $P5008, vivi_7231594
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_7231594:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_4, $P5010
    set $N5004, tmp_4
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_4
    goto while721_test1587 
  while721_done1591:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1360623834.732") :anon :lex :outer("cuid_158_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1923
    .const 'Sub' $P5033 = 'cuid_224_1360623834.732' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_228_1360623834.732' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_174 
    .local pmc fb_tmp_181 
    .local pmc tmp_6 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_174, $P5002
    repr_defined $I5001, fb_tmp_174
    unless $I5001 goto if727_else1605 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_174[$I5002]
    set $P5006, $P5003
    goto if727_end1606
  if727_else1605:
    null $P5005
    set $P5006, $P5005
  if727_end1606:
    unless_null $P5006, vivi_7281607
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_7281607:
    set $P101, $P5006
.annotate 'line', 1925
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if729_else1608 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if730_else1610 
    .const 'Sub' $P5011 = 'cuid_224_1360623834.732' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if730_end1611
  if730_else1610:
    .const 'Sub' $P5013 = 'cuid_228_1360623834.732' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if730_end1611:
    goto if729_end1609
  if729_else1608:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper"
    set fb_tmp_181, $P5019
    repr_defined $I5004, fb_tmp_181
    unless $I5004 goto if761_else1668 
    set $S5003, $P101
    set $P5020, fb_tmp_181[$S5003]
    set $P5022, $P5020
    goto if761_end1669
  if761_else1668:
    null $P5021
    set $P5022, $P5021
  if761_end1669:
    unless_null $P5022, vivi_7621670
    nqp_get_sc_object $P5023, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5022, $P5023
  vivi_7621670:
    unless $P5022 goto if760_else1666 
.annotate 'line', 1984
.annotate 'line', 1985
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if760_end1667
  if760_else1666:
.annotate 'line', 1986
.annotate 'line', 1987
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg"
    set $P5031, $P5029
    unless $P5029 goto if763_end1672 
.annotate 'line', 1988
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if763_end1672:
    set $P5032, $P5031
  if760_end1667:
  if729_end1609:
    find_lex $P5033, "$i"
    set tmp_6, $P5033
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5034, $N5001
    store_lex "$i", $P5034
    .return (tmp_6) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1360623834.732") :anon :lex :outer("cuid_225_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1926
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_175 
    .local pmc fb_tmp_176 
    .local pmc fb_tmp_177 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_175, $P5005
    repr_defined $I5001, fb_tmp_175
    unless $I5001 goto if731_else1612 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_175[$I5002]
    set $P5009, $P5006
    goto if731_end1613
  if731_else1612:
    null $P5008
    set $P5009, $P5008
  if731_end1613:
    unless_null $P5009, vivi_7321614
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_7321614:
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
    unless $I5004 goto if733_else1615 
.annotate 'line', 1933
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
    goto if733_end1616
  if733_else1615:
.annotate 'line', 1937
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if734_end1618 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if734_end1618:
  if733_end1616:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options"
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless735_end1620 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless735_end1620:
.annotate 'line', 1942
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if737_end1624 
    set $P5032, $P104
  if737_end1624:
    unless $P5032 goto if736_end1622 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if736_end1622:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if739_end1628 
.annotate 'line', 1943
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if739_end1628:
    unless $P5038 goto if738_end1626 
.annotate 'line', 1944
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if738_end1626:
.annotate 'line', 1946
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper"
    set fb_tmp_176, $P5045
    repr_defined $I5010, fb_tmp_176
    unless $I5010 goto if741_else1631 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_176[$S5016]
    set $P5048, $P5046
    goto if741_end1632
  if741_else1631:
    null $P5047
    set $P5048, $P5047
  if741_end1632:
    unless_null $P5048, vivi_7421633
    nqp_get_sc_object $P5049, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5048, $P5049
  vivi_7421633:
    set $P5059, $P5048
    unless $P5048 goto if740_end1630 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_177, $P5050
    repr_defined $I5011, fb_tmp_177
    unless $I5011 goto if743_else1634 
    set $P5052, fb_tmp_177["slurp-rest"]
    set $P5054, $P5052
    goto if743_end1635
  if743_else1634:
    null $P5053
    set $P5054, $P5053
  if743_end1635:
    unless_null $P5054, vivi_7451637
    nqp_get_sc_object $P5057, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_7441636
    nqp_get_sc_object $P5058, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5055, $P5058
  vivi_7441636:
    set $P5054, $P5055
  vivi_7451637:
    set $P5059, $P5054
  if740_end1630:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1360623834.732") :anon :lex :outer("cuid_225_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1948
    .const 'Sub' $P5036 = 'cuid_227_1360623834.732' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_178 
    .local pmc fb_tmp_179 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    unless $I5002 goto if746_else1638 
.annotate 'line', 1951
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set fb_tmp_178, $P5009
    repr_defined $I5003, fb_tmp_178
    unless $I5003 goto if748_else1642 
    set $S5004, $P101
    set $P5010, fb_tmp_178[$S5004]
    set $P5012, $P5010
    goto if748_end1643
  if748_else1642:
    null $P5011
    set $P5012, $P5011
  if748_end1643:
    unless_null $P5012, vivi_7491644
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_7491644:
    if $P5012 goto unless747_end1641 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless747_end1641:
.annotate 'line', 1954
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if750_else1645 
.annotate 'line', 1955
    find_lex $P5018, "$result"
.annotate 'line', 1956
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if750_end1646
  if750_else1645:
.annotate 'line', 1957
.annotate 'line', 1958
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if750_end1646:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper"
    set fb_tmp_179, $P5026
    repr_defined $I5004, fb_tmp_179
    unless $I5004 goto if752_else1649 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_179[$S5009]
    set $P5029, $P5027
    goto if752_end1650
  if752_else1649:
    null $P5028
    set $P5029, $P5028
  if752_end1650:
    unless_null $P5029, vivi_7531651
    nqp_get_sc_object $P5030, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5029, $P5030
  vivi_7531651:
    set $P5032, $P5029
    unless $P5029 goto if751_end1648 
.annotate 'line', 1960
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if751_end1648:
    set $P5035, $P5032
    goto if746_end1639
  if746_else1638:
    .const 'Sub' $P5033 = 'cuid_227_1360623834.732' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if746_end1639:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1360623834.732") :anon :lex :outer("cuid_228_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1961
    .const 'Sub' $P5009 = 'cuid_226_1360623834.732' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while754_handlers1655
    push_eh $P5007
  while754_test1652:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while754_done1656 
  while754_redo1654:
    .const 'Sub' $P5004 = 'cuid_226_1360623834.732' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while754_test1652 
  while754_handlers1655:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while754_test1652
    eq $P5007, .CONTROL_LOOP_REDO, while754_redo1654
  while754_done1656:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1360623834.732") :anon :lex :outer("cuid_227_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1963
    .lex "$o", $P101 
    .local pmc fb_tmp_180 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    nqp_get_sc_object $P5007, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options"
    set fb_tmp_180, $P5008
    repr_defined $I5002, fb_tmp_180
    unless $I5002 goto if756_else1659 
    set $S5003, $P101
    set $P5009, fb_tmp_180[$S5003]
    set $P5011, $P5009
    goto if756_end1660
  if756_else1659:
    null $P5010
    set $P5011, $P5010
  if756_end1660:
    unless_null $P5011, vivi_7571661
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_7571661:
    unless $P5011 goto if755_else1657 
.annotate 'line', 1965
.annotate 'line', 1966
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if758_else1662 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if759_end1665 
.annotate 'line', 1967
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if759_end1665:
.annotate 'line', 1970
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
    goto if758_end1663
  if758_else1662:
.annotate 'line', 1973
.annotate 'line', 1974
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if758_end1663:
    goto if755_end1658
  if755_else1657:
.annotate 'line', 1977
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if755_end1658:
    find_lex $P5029, "$i"
    set tmp_5, $P5029
    set $N5009, tmp_5
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5030, $N5008
    store_lex "$i", $P5030
    .return (tmp_5) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1360623834.732") :anon :lex :outer("cuid_179_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2018
    .const 'Sub' $P5014 = 'cuid_159_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_160_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_161_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_162_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_163_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_164_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_165_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_166_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_167_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_168_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_169_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_170_1360623834.732' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_171_1360623834.732' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_159_1360623834.732' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_160_1360623834.732' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_161_1360623834.732' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_162_1360623834.732' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_163_1360623834.732' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_164_1360623834.732' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_165_1360623834.732' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_166_1360623834.732' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_167_1360623834.732' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_168_1360623834.732' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_169_1360623834.732' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_170_1360623834.732' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_171_1360623834.732' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_159_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2049
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_14 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    .local pmc fb_tmp_182 
    .local pmc fb_tmp_183 
    .local pmc fb_tmp_184 
    if haz_param_14, default1684
    box $P5048, "<unknown>"
    set _lex_param_2, $P5048
  default1684:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    find_dynamic_lex $P5017, "%*COMPILING"
    unless_null $P5017, fallback1677
    nqp_get_sc_object $P5019, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5018, $P5019
    set fb_tmp_184, $P5018
    repr_defined $I5003, fb_tmp_184
    unless $I5003 goto if766_else1678 
    set $P5020, fb_tmp_184["%COMPILING"]
    set $P5022, $P5020
    goto if766_end1679
  if766_else1678:
    null $P5021
    set $P5022, $P5021
  if766_end1679:
    unless_null $P5022, vivi_7671680
    nqp_get_sc_object $P5024, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    get_who $P5023, $P5024
    new $P5025, 'Hash'
    set $P5023["%COMPILING"], $P5025
    set $P5022, $P5025
  vivi_7671680:
    unless_null $P5022, vivi_7681681
    die "Contextual %*COMPILING not found"
    box $P5026, "Contextual %*COMPILING not found"
    set $P5022, $P5026
  vivi_7681681:
    set $P5017, $P5022
  fallback1677:
    set fb_tmp_183, $P5017
    repr_defined $I5002, fb_tmp_183
    unless $I5002 goto if765_else1675 
    set $P5027, fb_tmp_183["%?OPTIONS"]
    set $P5029, $P5027
    goto if765_end1676
  if765_else1675:
    null $P5028
    set $P5029, $P5028
  if765_end1676:
    unless_null $P5029, vivi_7691682
    nqp_get_sc_object $P5030, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5029, $P5030
  vivi_7691682:
    set fb_tmp_182, $P5029
    repr_defined $I5001, fb_tmp_182
    unless $I5001 goto if764_else1673 
    set $P5031, fb_tmp_182["precomp"]
    set $P5033, $P5031
    goto if764_end1674
  if764_else1673:
    null $P5032
    set $P5033, $P5032
  if764_end1674:
    unless_null $P5033, vivi_7701683
    nqp_get_sc_object $P5034, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5033, $P5034
  vivi_7701683:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5033
    nqp_decontainerize $P5035, _lex_param_0
    nqp_get_sc_object $P5036, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    box $P5037, 0
    repr_bind_attr_obj $P5035, $P5036, "$!num_code_refs", $P5037
    nqp_decontainerize $P5038, _lex_param_0
    nqp_get_sc_object $P5039, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    new $P5040, 'ResizablePMCArray'
    repr_bind_attr_obj $P5038, $P5039, "$!code_ref_blocks", $P5040
    nqp_decontainerize $P5041, _lex_param_0
    nqp_get_sc_object $P5042, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5043, $P5041, $P5042, "$!sc"
    $P5044 = $P5043."set_description"(_lex_param_2)
    nqp_decontainerize $P5045, _lex_param_0
    nqp_get_sc_object $P5046, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5047, $P5045, $P5046, "$!sc"
    nqp_push_compiling_sc $P5047
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_160_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2066
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .local pmc fb_tmp_185 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!addr_to_slot"
    set fb_tmp_185, $P5004
    repr_defined $I5001, fb_tmp_185
    unless $I5001 goto if771_else1685 
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5005, fb_tmp_185[$S5001]
    set $P5007, $P5005
    goto if771_end1686
  if771_else1685:
    null $P5006
    set $P5007, $P5006
  if771_end1686:
    unless_null $P5007, vivi_7721687
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_7721687:
    set $P101, $P5007
    defined $I5003, $P101
    if $I5003 goto unless773_end1689 
.annotate 'line', 2068
    box $P5009, "slot_for_object called on object not in context"
    die $P5009
  unless773_end1689:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_161_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2075
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_162_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2084
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 2087
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_163_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2093
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_164_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2098
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_165_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2104
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_16 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_15, default1696
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5015
  default1696:
    if haz_param_16, default1697
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_2, $P5016
  default1697:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if774_else1690 
.annotate 'line', 2105
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if775_end1693 
.annotate 'line', 2106
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if775_end1693:
    set $P5014, $P5008
    goto if774_end1691
  if774_else1690:
.annotate 'line', 2108
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if776_end1695 
.annotate 'line', 2109
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if776_end1695:
    set $P5014, $P5013
  if774_end1691:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_166_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2115
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_17, default1704
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5015
  default1704:
    if haz_param_18, default1705
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_2, $P5016
  default1705:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if777_else1698 
.annotate 'line', 2116
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if778_end1701 
.annotate 'line', 2117
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if778_end1701:
    set $P5014, $P5008
    goto if777_end1699
  if777_else1698:
.annotate 'line', 2119
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if779_end1703 
.annotate 'line', 2120
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if779_end1703:
    set $P5014, $P5013
  if777_end1699:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_167_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2125
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_168_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2130
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_169_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2134
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_170_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2139
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_171_1360623834.732") :anon :lex :outer("cuid_229_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2144
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1360623834.732") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_230_1360623834.732' 
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
    .const 'Sub' $P5001 = "cuid_179_1360623834.732" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771"
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
    push $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578"
    push $P5004, "src\\stage2\\QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213"
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
    push $P5004, "!cursor_start"
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
    push $P5004, "alt_nfa__1_1360623834.868"
    push $P5004, "alt_nfa__2_1360623834.896"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1360623834.957"
    push $P5004, "alt_nfa__4_1360623834.958"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1360623834.975"
    push $P5004, "Ee"
    push $P5004, "alt_nfa__6_1360623835.043"
    push $P5004, "alt_nfa__7_1360623835.054"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1360623835.088"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1360623835.123"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "46A27B8E73DBD8EFB3FE1AA531DA4577B21729DD-1360623823.905"
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
    push $P5004, "6A529C03C57FF1539F71263163E1D04547746F2E-1360623828.987"
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
    .const 'Sub' $P5005 = 'cuid_230_1360623834.732' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAAFAAAAaAAAAA0AAADQAAAA/h8AAOkAAACOLgAAdM4AAAAAAAB0zgAAAAAAAHTOAAB0zgAAAAAAAAUAAAAGAAAADgAAAA8AAAAMAQAAAAAAAA8BAAAQAQAAHwEAACABAAABAAAAAAAAAAEAAAAaAQAAAQAAANIBAAABAAAAfAIAAAEAAACICwAAAQAAALoOAAABAAAA0BMAAAEAAACqFQAAAQAAAPgXAAABAAAA/hoAAAEAAADAHAAAAQAAAHgdAAABAAAAaB4AAAAAAAC0AAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAtQAAAAMAAAACAAAAAAC2AAAABAAAAAIAAQAAACEAAAAHAAAAAgABAAAAVwAAAAgAAAACAAEAAABkAAAACQAAAAIAAQAAAGoAAAAKAAAAAgABAAAAbgAAAAsAAAACAAAAAAC3AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAC4AAAAAAAAAAEAAAAKAAEAAAAMAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAADAP////////////////////8AAAAAuQAAAAAAAAACAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMA/////////////////////wAAAAC6AAAAAAAAAAMAAAAKAAAAAAAKAIAAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAAGgAAAAIAAQAAAGUAAAAbAAAAAgABAAAAZgAAABwAAAACAAEAAABnAAAAHQAAAAIAAQAAAGgAAAAeAAAAAgABAAAAaQAAAB8AAAACAAEAAAB7AAAAIAAAAAIAAQAAAHwAAAAhAAAAAgABAAAAfQAAACIAAAACAAEAAAB+AAAAIwAAAAIAAQAAAH8AAAAkAAAAAgABAAAAgAAAACUAAAACAAEAAACBAAAAJgAAAAIAAQAAAIIAAAAnAAAAAgABAAAAgwAAACgAAAACAAEAAACEAAAAKQAAAAIAAQAAAIUAAAAqAAAAAgABAAAAhgAAACsAAAACAAEAAACHAAAALAAAAAIAAQAAAIgAAAAtAAAAAgABAAAAiQAAAC4AAAACAAEAAACKAAAALwAAAAIAAQAAAIsAAAAwAAAAAgABAAAAjAAAADEAAAACAAEAAACNAAAAMgAAAAIAAQAAAI4AAAAzAAAAAgABAAAAjwAAADQAAAACAAEAAACQAAAANQAAAAIAAQAAAJEAAAA2AAAAAgABAAAAkgAAADcAAAACAAEAAACTAAAAOAAAAAIAAQAAAJQAAAA5AAAAAgABAAAAlQAAADoAAAACAAEAAACWAAAAOwAAAAIAAQAAAJcAAAA8AAAAAgABAAAAmAAAAD0AAAACAAEAAACZAAAAPgAAAAIAAQAAAJoAAAA/AAAAAgABAAAAmwAAAEAAAAACAAEAAACcAAAAQQAAAAIAAQAAAJ0AAABCAAAAAgABAAAAngAAAEMAAAACAAEAAACfAAAARAAAAAIAAQAAAKAAAABFAAAAAgABAAAAoQAAAEYAAAACAAEAAACiAAAARwAAAAIAAQAAAKMAAABIAAAAAgABAAAApAAAAEkAAAACAAEAAAClAAAASgAAAAIAAQAAAKYAAABLAAAAAgABAAAApwAAAEwAAAACAAEAAACoAAAATQAAAAIAAQAAAKkAAABOAAAAAgABAAAAqgAAAE8AAAACAAEAAACrAAAAUAAAAAIAAQAAAKwAAABRAAAAAgABAAAArQAAAFIAAAACAAAAAAA2AAAAUwAAAAIAAAAAAAQAAABUAAAAAgAAAAAABQAAAFUAAAACAAAAAAAGAAAAVgAAAAIAAAAAAAcAAABXAAAAAgAAAAAACAAAAFgAAAACAAAAAAAJAAAAWQAAAAIAAAAAAAoAAABaAAAAAgAAAAAACwAAAFsAAAACAAAAAAAMAAAAXAAAAAIAAAAAAA0AAABdAAAAAgAAAAAADgAAAF4AAAACAAAAAAAPAAAAXwAAAAIAAAAAABAAAABgAAAAAgAAAAAAEQAAAGEAAAACAAAAAAASAAAAYgAAAAIAAAAAABMAAABjAAAAAgAAAAAAFAAAAGQAAAACAAAAAAAVAAAAZQAAAAIAAAAAABYAAABmAAAAAgAAAAAAFwAAAGcAAAACAAAAAAAYAAAAaAAAAAIAAAAAABkAAABpAAAAAgAAAAAAGgAAAGoAAAACAAAAAAAbAAAAawAAAAIAAAAAABwAAABsAAAAAgAAAAAAHQAAAG0AAAACAAAAAAAeAAAAbgAAAAIAAAAAAB8AAABvAAAAAgAAAAAAIAAAAHAAAAACAAAAAAAhAAAAcQAAAAIAAAAAACIAAAByAAAAAgAAAAAAIwAAAHMAAAACAAAAAAAkAAAAdAAAAAIAAAAAACUAAAB1AAAAAgAAAAAAJgAAAHYAAAACAAAAAAAnAAAAdwAAAAIAAAAAACgAAAB4AAAAAgAAAAAAKQAAAHkAAAACAAAAAAAqAAAAegAAAAIAAAAAACsAAAB7AAAAAgAAAAAALAAAAHwAAAACAAAAAAAtAAAAfQAAAAIAAAAAADAAAAB+AAAAAgAAAAAAMgAAAH8AAAACAAAAAAAzAAAAgAAAAAIAAAAAADQAAACBAAAAAgAAAAAANQAAAIIAAAACAAAAAAA3AAAAgwAAAAIAAAAAADgAAACEAAAAAgAAAAAAOQAAAIUAAAACAAAAAAA6AAAAhgAAAAIAAAAAADsAAACHAAAAAgAAAAAAPAAAAIgAAAACAAAAAAA9AAAAiQAAAAIAAAAAAD4AAACKAAAAAgAAAAAAPwAAAIsAAAACAAAAAABAAAAAjAAAAAIAAAAAAEEAAACNAAAAAgAAAAAAQgAAAI4AAAACAAAAAABDAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAAMAAAACAAEAAABkAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAQAAAGYAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAZAAAAAQABAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAZAAAAAwACAAEAAABkAAAACgAJAAAAjwAAAAQAAAAAAAAAAACQAAAABAABAAAAAAAAAJEAAAAEAAIAAAAAAAAAkgAAAAQAAwAAAAAAAACTAAAABAAEAAAAAAAAAJQAAAAEAAUAAAAAAAAAlQAAAAQABgAAAAAAAACWAAAABAAHAAAAAAAAAJcAAAAEAAgAAAAAAAAAAgAAAAAAAwAAAAMA/////////////////////wAAAAC7AAAAAAAAAEQAAAAKAAAAAAAKACwAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAAmAAAAAIAAAAAAEUAAACZAAAAAgAAAAAARgAAAJoAAAACAAAAAABHAAAAiAAAAAIAAAAAAEgAAABbAAAAAgAAAAAASQAAAFQAAAACAAAAAABKAAAAXwAAAAIAAAAAAEsAAABgAAAAAgAAAAAATAAAAGwAAAACAAAAAABNAAAAbQAAAAIAAAAAAE4AAABkAAAAAgAAAAAATwAAAGYAAAACAAAAAABQAAAAaAAAAAIAAAAAAFEAAABqAAAAAgAAAAAAUgAAAIMAAAACAAAAAABTAAAAYgAAAAIAAAAAAFQAAABjAAAAAgAAAAAAVQAAAHAAAAACAAAAAABWAAAAcQAAAAIAAAAAAFcAAAByAAAAAgAAAAAAWAAAAHMAAAACAAAAAABZAAAAdAAAAAIAAAAAAFoAAAB1AAAAAgAAAAAAWwAAAHYAAAACAAAAAABcAAAAdwAAAAIAAAAAAF0AAAB4AAAAAgAAAAAAXgAAAHkAAAACAAAAAABfAAAAegAAAAIAAAAAAGAAAAB7AAAAAgAAAAAAYQAAAHwAAAACAAAAAABiAAAAfQAAAAIAAAAAAGMAAAB+AAAAAgAAAAAAZAAAAH8AAAACAAAAAABlAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAEQAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAABEAAAAAwD/////////////////////AAAAALwAAAAAAAAAZgAAAAoAAAAAAAoAOAAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAAAAABnAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAAGQAAAAIAAgAAACkAAACbAAAAAgAAAAAAaAAAAJwAAAACAAAAAABpAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACkAAAAAgAAAAAAcQAAAKUAAAACAAAAAAByAAAAgQAAAAIAAAAAAHMAAACmAAAAAgAAAAAAdAAAAKcAAAACAAAAAAB1AAAAqAAAAAIAAAAAAHYAAACpAAAAAgAAAAAAdwAAAKoAAAACAAAAAAB4AAAAqwAAAAIAAAAAAHkAAACsAAAAAgAAAAAAegAAAK0AAAACAAAAAAB7AAAArgAAAAIAAAAAAHwAAACvAAAAAgAAAAAAfQAAALAAAAACAAAAAAB+AAAAsQAAAAIAAAAAAH8AAACyAAAAAgAAAAAAgAAAABwAAAACAAAAAACBAAAAswAAAAIAAAAAAIIAAAC0AAAAAgAAAAAAgwAAALUAAAACAAAAAACEAAAAtgAAAAIAAAAAAIUAAAC3AAAAAgAAAAAAhgAAALgAAAACAAAAAACHAAAAuQAAAAIAAAAAAIgAAAC6AAAAAgAAAAAAiQAAALsAAAACAAAAAACKAAAAvAAAAAIAAAAAAIsAAAC9AAAAAgAAAAAAjAAAAL4AAAACAAAAAACNAAAAvwAAAAIAAAAAAI4AAADAAAAAAgAAAAAAjwAAAMEAAAACAAAAAACQAAAAwgAAAAIAAAAAAJEAAADDAAAAAgAAAAAAkgAAAMQAAAACAAAAAACTAAAAxQAAAAIAAAAAAJQAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAZgAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAAGQAAAAIAAgAAABkAAAABAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAEAAgACAAAAGQAAAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAAZgAAAAoACwAAAMYAAAAEAAAAAAAAAAAAxwAAAAQAAQAAAAAAAADIAAAABAACAAAAAAAAAMkAAAAEAAMAAAAAAAAAygAAAAQABAAAAAAAAADLAAAABAAFAAAAAAAAAMwAAAAEAAYAAAAAAAAAzQAAAAQABwAAAAAAAADOAAAABAAIAAAAAAAAAM8AAAAEAAkAAAAAAAAA0AAAAAQACgAAAAAAAAD/////////////////////AAAAAL0AAAAAAAAAlQAAAAoAAAAAAAoAEAAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAAGQAAAAIAAgAAACkAAADRAAAAAgAAAAAAlgAAANIAAAACAAAAAACXAAAA0wAAAAIAAAAAAJgAAADUAAAAAgAAAAAAmQAAANUAAAACAAAAAACaAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAJUAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAAlQAAAAoAAgAAANYAAAAEAAAAAAAAAAAA1wAAAAQAAQAAAAAAAAD/////////////////////AAAAAL4AAAAAAAAAmwAAAAoAAAAAAAoAFAAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAAAAACcAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAAGQAAAAIAAgAAACkAAADYAAAAAgAAAAAAnQAAAJsAAAACAAAAAACeAAAA2QAAAAIAAAAAAJ8AAADaAAAAAgAAAAAAoAAAANsAAAACAAAAAAChAAAA3AAAAAIAAAAAAKIAAADdAAAAAgAAAAAAowAAAN4AAAACAAAAAACkAAAAHAAAAAIAAAAAAKUAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAmwAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAQACAAIAAAAZAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAJsAAAAKAAQAAADfAAAABAAAAAAAAAAAANcAAAAEAAEAAAAAAAAA4AAAAAQAAgAAAAAAAADhAAAABAADAAAAAAAAAP////////////////////8AAAAAvwAAAAAAAACmAAAACgAAAAAACgAYAAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAmAAAAGAAAAAIAAgAAACgAAAAZAAAAAgACAAAAKQAAAJsAAAACAAAAAACnAAAA4gAAAAIAAAAAAKgAAADjAAAAAgAAAAAAqQAAAOQAAAACAAAAAACqAAAA5QAAAAIAAAAAAKsAAADmAAAAAgAAAAAArAAAAOcAAAACAAAAAACtAAAA6AAAAAIAAAAAAK4AAADpAAAAAgAAAAAArwAAAOoAAAACAAAAAACwAAAA6wAAAAIAAAAAALEAAADsAAAAAgAAAAAAsgAAAO0AAAACAAAAAACzAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAKYAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAEAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAACmAAAACgAIAAAA7gAAAAQAAAAAAAAAAADvAAAABAABAAAAAAAAAPAAAAAEAAIAAAAAAAAA8QAAAAQAAwAAAAAAAADyAAAABAAEAAAAAAAAAPMAAAAEAAUAAAAAAAAA9AAAAAQABgAAAAAAAAD1AAAABAAHAAAAAAAAAP////////////////////8AAAAA5AAAAAAAAAC1AAAACgAUAAAAHgEAAAIABQAAAAMAAAAhAQAAAgAFAAAACAAAACIBAAACAAUAAAAMAAAAIwEAAAIABQAAACIAAAAkAQAAAgAFAAAAKgAAACUBAAACAAUAAAAvAAAAJgEAAAIABQAAADQAAAAnAQAAAgAFAAAAOQAAACgBAAACAAUAAAA9AAAAKQEAAAIABQAAAEIAAAAqAQAAAgAFAAAARwAAACsBAAACAAUAAABQAAAALAEAAAIABQAAAFIAAAAtAQAAAgAFAAAAWQAAAC4BAAACAAUAAABdAAAALwEAAAIABQAAAGEAAAAwAQAAAgAFAAAAZQAAADEBAAACAAUAAABtAAAAMgEAAAIABQAAAHAAAAAzAQAAAgAFAAAAegAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAC1AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAALUAAAADAP////////////////////8AAAAA5QAAAAAAAAC2AAAACgABAAAANAEAAAIAAQAAAAMAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAtgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAC2AAAAAwD/////////////////////AAAAAOYAAAAAAAAAtwAAAAoABQAAADUBAAACAAAAAAADAAAANgEAAAIAAAAAAEQAAAA3AQAAAgAAAAAAZgAAADgBAAACAAAAAADnAAAAOQEAAAIAAAAAAKYAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAtwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAC3AAAAAwD/////////////////////AAAAAOgAAAAAAAAA5wAAAAoAAgAAADoBAAACAAAAAACVAAAAOwEAAAIAAAAAAJsAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAA5wAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAADnAAAAAwD/////////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAIAAAAFAAAAAAAAAAEAAAACAAAABwAAABQAAAABAAAAAgAAAAcAAAAMAQAAAQAAAAIAAAAHAAAAIgEAAAEAAAACAAAABwAAADgBAAABAAAAAgAAAAcAAABOAQAAAQAAAAIAAAAHAAAAZAEAAAEAAAACAAAABwAAAHoBAAABAAAAAgAAAAcAAACQAQAAAQAAAAIAAAAHAAAA8AEAAAEAAAACAAAABwAAAF4CAAABAAAAAgAAAAcAAADsAgAAAQAAAAIAAAAHAAAA6AMAAAEAAAACAAAABwAAAD4EAAABAAAAAgAAAAUAAACeBAAAAQAAAAIAAAAHAAAAsgQAAAEAAAACAAAABwAAAIwFAAABAAAAAgAAAAcAAABOBwAAAQAAAAIAAAAHAAAAcAgAAAEAAAACAAAABwAAAHYJAAABAAAAAgAAAAcAAACUCgAAAQAAAAIAAAAHAAAAmgsAAAEAAAACAAAABwAAALgMAAABAAAAAgAAAAcAAAC+DQAAAQAAAAIAAAAHAAAA3A4AAAEAAAACAAAABwAAAOIPAAABAAAAAgAAAAcAAABIFAAAAQAAAAIAAAAHAAAA1BoAAAEAAAACAAAABwAAAPIbAAABAAAAAgAAAAcAAAAIHAAAAQAAAAIAAAAHAAAAxhwAAAEAAAACAAAABwAAAG4dAAABAAAAAgAAAAcAAAAsHgAAAQAAAAIAAAAHAAAA6h4AAAEAAAACAAAABwAAAKgfAAABAAAAAgAAAAcAAABmIAAAAQAAAAIAAAAHAAAAJCEAAAEAAAACAAAABwAAAOIhAAABAAAAAgAAAAcAAABqIwAAAQAAAAIAAAAHAAAA8iQAAAEAAAACAAAABwAAAL4lAAABAAAAAgAAAAcAAACKJgAAAQAAAAIAAAAHAAAAjicAAAEAAAACAAAABwAAAOQnAAABAAAAAgAAAAcAAAA6KAAAAQAAAAIAAAAHAAAAhigAAAEAAAACAAAABwAAAB4pAAABAAAAAgAAAAcAAAAkKgAAAQAAAAIAAAAFAAAAjC4AAAEAAAACAAAABQAAAKAuAAABAAAAAgAAAAUAAAC0LgAAAQAAAAIAAAAFAAAAyC4AAAEAAAACAAAABwAAANwuAAABAAAAAgAAAAcAAACsLwAAAQAAAAIAAAAFAAAAAjAAAAEAAAACAAAABQAAABYwAAABAAAAAgAAAAUAAAAqMAAAAQAAAAIAAAAFAAAAPjAAAAEAAAACAAAABQAAAFIwAAABAAAAAgAAAAUAAABmMAAAAQAAAAIAAAAFAAAAejAAAAEAAAACAAAABQAAAI4wAAABAAAAAgAAAAUAAACiMAAAAQAAAAIAAAAFAAAAtjAAAAEAAAAAAAAABAAAAMowAAAAAAAAAgAAAAUAAADKMAAAAQAAAAIAAAAFAAAA3jAAAAEAAAACAAAABQAAAPIwAAABAAAAAgAAAAUAAAAGMQAAAQAAAAIAAAAFAAAAGjEAAAEAAAACAAAABQAAAC4xAAABAAAAAgAAAAUAAABCMQAAAQAAAAIAAAAFAAAAVjEAAAEAAAACAAAABQAAAGoxAAABAAAAAgAAAAUAAAB+MQAAAQAAAAIAAAAFAAAAkjEAAAEAAAACAAAABQAAAKYxAAABAAAAAgAAAAUAAAC6MQAAAQAAAAIAAAAFAAAAzjEAAAEAAAACAAAABQAAAOIxAAABAAAAAgAAAAUAAAD2MQAAAQAAAAIAAAAFAAAACjIAAAEAAAACAAAABQAAAB4yAAABAAAAAgAAAAUAAAAyMgAAAQAAAAIAAAAFAAAARjIAAAEAAAACAAAABQAAAFoyAAABAAAAAgAAAAUAAABuMgAAAQAAAAIAAAAFAAAAgjIAAAEAAAACAAAABQAAAJYyAAABAAAAAgAAAAUAAACqMgAAAQAAAAIAAAAFAAAAvjIAAAEAAAACAAAABQAAANIyAAABAAAAAgAAAAUAAADmMgAAAQAAAAIAAAAFAAAA+jIAAAEAAAACAAAABQAAAA4zAAABAAAAAgAAAAUAAAAiMwAAAQAAAAIAAAAFAAAANjMAAAEAAAACAAAABQAAAEozAAABAAAAAAAAAAUAAABeMwAAAAAAAAIAAAAFAAAAXjMAAAEAAAACAAAABQAAAHIzAAABAAAAAgAAAAUAAACGMwAAAQAAAAIAAAAFAAAAmjMAAAEAAAACAAAABQAAAK4zAAABAAAAAgAAAAUAAADCMwAAAQAAAAIAAAAFAAAA1jMAAAEAAAACAAAABQAAAOozAAABAAAAAgAAAAUAAAD+MwAAAQAAAAIAAAAFAAAAEjQAAAEAAAACAAAABQAAACY0AAABAAAAAgAAAAUAAAA6NAAAAQAAAAIAAAAFAAAATjQAAAEAAAACAAAABQAAAGI0AAABAAAAAgAAAAUAAAB2NAAAAQAAAAIAAAAFAAAAijQAAAEAAAACAAAABQAAAJ40AAABAAAAAgAAAAUAAACyNAAAAQAAAAIAAAAFAAAAxjQAAAEAAAACAAAABQAAANo0AAABAAAAAgAAAAUAAADuNAAAAQAAAAIAAAAFAAAAAjUAAAEAAAACAAAABQAAABY1AAABAAAAAgAAAAUAAAAqNQAAAQAAAAIAAAAFAAAAPjUAAAEAAAACAAAABQAAAFI1AAABAAAAAgAAAAUAAABmNQAAAQAAAAIAAAAFAAAAejUAAAEAAAACAAAABQAAAI41AAABAAAAAgAAAAUAAACiNQAAAQAAAAIAAAAFAAAAtjUAAAEAAAACAAAABQAAAMo1AAABAAAAAgAAAAUAAADeNQAAAQAAAAIAAAAFAAAA8jUAAAEAAAACAAAABQAAAAY2AAABAAAAAgAAAAUAAAAaNgAAAQAAAAIAAAAFAAAALjYAAAEAAAACAAAABQAAAEI2AAABAAAAAgAAAAUAAABWNgAAAQAAAAIAAAAFAAAAajYAAAEAAAACAAAABQAAAH42AAABAAAAAgAAAAUAAACSNgAAAQAAAAIAAAAFAAAApjYAAAEAAAACAAAABQAAALo2AAABAAAAAgAAAAUAAADONgAAAQAAAAIAAAAFAAAA4jYAAAEAAAAAAAAABgAAAPY2AAAAAAAAAgAAAAUAAAD2NgAAAQAAAAIAAAAFAAAACjcAAAEAAAACAAAABQAAAB43AAABAAAAAgAAAAUAAAAyNwAAAQAAAAIAAAAFAAAARjcAAAEAAAAAAAAABwAAAFo3AAAAAAAAAgAAAAUAAABaNwAAAQAAAAIAAAAFAAAAbjcAAAEAAAACAAAABQAAAII3AAABAAAAAgAAAAUAAACWNwAAAQAAAAIAAAAFAAAAqjcAAAEAAAACAAAABQAAAL43AAABAAAAAgAAAAUAAADSNwAAAQAAAAIAAAAFAAAA5jcAAAEAAAACAAAABQAAAPo3AAABAAAAAgAAAAUAAAAOOAAAAQAAAAAAAAAIAAAAIjgAAAAAAAACAAAABQAAACI4AAABAAAAAgAAAAUAAAA2OAAAAQAAAAIAAAAFAAAASjgAAAEAAAACAAAABQAAAF44AAABAAAAAgAAAAUAAAByOAAAAQAAAAIAAAAFAAAAhjgAAAEAAAACAAAABQAAAJo4AAABAAAAAgAAAAUAAACuOAAAAQAAAAIAAAAFAAAAwjgAAAEAAAACAAAABQAAANY4AAABAAAAAgAAAAUAAADqOAAAAQAAAAIAAAAFAAAA/jgAAAEAAAACAAAABQAAABI5AAABAAAAAwAAAAAAAAAmOQAAAQAAAAAAAAAJAAAANjkAAAAAAAAAAAAACgAAADY5AAAAAAAAAAAAAAsAAAA2OQAAAAAAAAMAAAAAAAAANjkAAAEAAAADAAAAAAAAAEY5AAABAAAABAAAAAcAAABWOQAAAQAAAAQAAAAHAAAAIkIAAAEAAAAEAAAABwAAAN5FAAABAAAABAAAAAcAAACgSwAAAQAAAAQAAAAHAAAAcE0AAAEAAAAEAAAABwAAAHBPAAABAAAAAQAAAAMAAADwUQAAAQAAAAEAAAADAAAAnlIAAAEAAAABAAAAAwAAAH5hAAABAAAAAQAAAAMAAAC4YgAAAQAAAAEAAAADAAAASHUAAAEAAAABAAAAAwAAAGp8AAABAAAAAQAAAAMAAABYhAAAAQAAAAEAAAADAAAA+IsAAAEAAAABAAAAAwAAAN6QAAABAAAAAQAAAAMAAADElQAAAQAAAAEAAAADAAAA7pYAAAEAAAAEAAAACQAAAMKbAAABAAAABAAAAAkAAADmmwAAAQAAAAQAAAAJAAAAEpwAAAEAAAAEAAAACQAAAD6cAAABAAAABAAAAAkAAABinAAAAQAAAAQAAAAJAAAAjpwAAAEAAAAEAAAACQAAALqcAAABAAAABAAAAAkAAADmnAAAAQAAAAQAAAAJAAAACp0AAAEAAAAEAAAACQAAADadAAABAAAABAAAAAkAAABanQAAAQAAAAQAAAAJAAAAfp0AAAEAAAAEAAAACQAAAKKdAAABAAAABAAAAAkAAADGnQAAAQAAAAQAAAAJAAAA6p0AAAEAAAAEAAAACQAAAA6eAAABAAAABAAAAAkAAAAyngAAAQAAAAQAAAAJAAAAXp4AAAEAAAAEAAAACQAAAIqeAAABAAAABAAAAAkAAAC2ngAAAQAAAAQAAAAJAAAA4p4AAAEAAAAEAAAACQAAAA6fAAABAAAABAAAAAkAAAA6nwAAAQAAAAQAAAAJAAAAXp8AAAEAAAAEAAAACQAAAIKfAAABAAAAAwAAAAAAAACmnwAAAQAAAAMAAAAAAAAAtp8AAAEAAAADAAAAAAAAAMafAAABAAAAAAAAAAwAAADWnwAAAAAAAAMAAAAAAAAA1p8AAAEAAAALAAAAAAAAAAAAAQABAAEAAQADAAsAAAAAAAEAAAAKAAQAAABdAAAABQAAAAAAAAAAQPYAAAAEAAAAAAAAAAAAVQAAAAUAAAAAAAAA8D9eAAAABQAAAAAAAAAAQAcABAAAAAcAAAAAAAcABgAAAAQACAAAAAAAAAAGAF0AAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAVQAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBeAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAAgAAAAEAAQABAAEAAQADAAsAAAAAAAMAAAABAAEAAQABAAEAAwALAAAAAAAEAAAAAQABAAEAAQABAAMACwAAAAAABQAAAAEAAQABAAEAAQADAAsAAAAAAAYAAAABAAEAAQABAAEAAwALAAAAAAAHAAAAAQABAAEAAQABAAMACwAAAAAACAAAAAoAAgAAAFkAAAAFAAAAAAAAAPA/9gAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBZAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACQAAAAoAAwAAAPcAAAAFAAAAAAAAAPA/VgAAAAUAAAAAAAAA8D/2AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFYAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAKAAAACgADAAAA9wAAAAUAAAAAAAAA8D9XAAAABQAAAAAAAADwP/YAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVwAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACwAAAAoABAAAAPcAAAAEAAEAAAAAAAAAWAAAAAQAAQAAAAAAAAD2AAAABAAAAAAAAAAAAFoAAAAEAAEAAAAAAAAABwACAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAWAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgBaAAAABAAAAAAAAAAAAAoAAQAAAPgAAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBYAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFoAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAADAAAAAoAAQAAAPYAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAANAAAACgACAAAAVQAAAAUAAAAAAAAA8D/2AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAF8AAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAOAAAAAQABAAEAAQADAAsAAAAAAA8AAAAKAAQAAACFAAAABQAAAAAAAADwP/YAAAAEAAAAAAAAAAAAYwAAAAUAAAAAAAAAAECGAAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIUAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYwAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCGAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAEAAAAAoABQAAAPYAAAAEAAAAAAAAAAAAbwAAAAUAAAAAAAAA8D+FAAAABQAAAAAAAADwP2MAAAAFAAAAAAAAAABAhgAAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAA+QAAAAcAAwAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAG8AAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAhQAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBjAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIYAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAEQAAAAoAAQAAAPYAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAASAAAACgACAAAA9gAAAAQAAAAAAAAAAABkAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAEwAAAAoAAQAAAPYAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYA+gAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABQAAAAKAAIAAAD2AAAABAAAAAAAAAAAAGYAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAVAAAACgABAAAA9gAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgD7AAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFgAAAAoAAgAAAPYAAAAEAAAAAAAAAAAAaAAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGgAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABcAAAAKAAEAAAD2AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAPwAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAYAAAACgACAAAA9gAAAAQAAAAAAAAAAABqAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAGQAAAAoABgAAAPYAAAAEAAAAAAAAAAAA/QAAAAUAAAAAAAAA8D9qAAAABQAAAAAAAADwP2gAAAAFAAAAAAAAAPA/ZgAAAAUAAAAAAAAA8D9kAAAABQAAAAAAAADwPwcABwAAAAcAAAAAAAcABgAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAKAAIAAAD+AAAABwAEAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAD/AAAABwACAAAABwAHAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBkAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAABoAAAAKAAMAAAAAAQAABAABAAAAAAAAAPYAAAAEAAAAAAAAAAAAbgAAAAQAAgAAAAAAAAAHABAAAAAHAAAAAAAHAAkAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABAAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAgAAAAAAAAABgBuAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAJAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAALAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQACAAAAAAAAAAGAG4AAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAA4AAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAAIAAAAAAAAAAYAbgAAAAQAAAAAAAAAAAAHAAAAAAAKAAEAAAABAQAABwADAAAABwAGAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAbgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAkAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAgAAAAAAAAABgBuAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQACAAAAAAAAAAGAG4AAAAEAAAAAAAAAAAABwAAAAAAAQABAAMACwAAAAAAGwAAAAoAAQAAAPYAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAAgEAAAQAAgAAAAAAAAAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAEAAwALAAAAAAAdAAAACgABAAAA9gAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHgAAAAoAAgAAAPYAAAAEAAAAAAAAAAAAhgAAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHwAAAAoAAQAAAPYAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACAAAAAKAAEAAAD2AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAhAAAACgABAAAA9gAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIgAAAAoAAQAAAPYAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACMAAAAKAAEAAAD2AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAkAAAACgABAAAA9gAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJQAAAAoAAwAAAPYAAAAEAAAAAAAAAAAAZgAAAAUAAAAAAAAA8D9nAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAAwEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAmAAAACgADAAAA9gAAAAQAAAAAAAAAAABoAAAABQAAAAAAAADwP2kAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAEAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBpAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAACcAAAAKAAIAAAD2AAAABAAAAAAAAAAAAH8AAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACgAAAAKAAIAAAD2AAAABAAAAAAAAAAAAAUBAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACkAAAAKAAQAAAD2AAAABQAAAAAAAADwPwYBAAAFAAAAAAAAAPA/BwEAAAUAAAAAAAAA8D8IAQAABQAAAAAAAADwPwQAAAAAAAAAAAAKAAEAAAAJAQAABwACAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAACAAAAAAAuAAAAAgAAAAAALwAAAAMACwAAAAAAKgAAAAoAAQAAAPYAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAArAAAACgABAAAA9gAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACwAAAAKAAIAAABsAAAABAABAAAAAAAAAPYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQAHAAEAAAACAAAAAAAxAAAAAwALAAAAAAAtAAAACgABAAAA9gAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAYAAAAFAAAAAAAAABBABAAgAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAC4AAAAKAAIAAAD2AAAABAAAAAAAAAAAAH0AAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB9AAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAvAAAACgACAAAA9gAAAAQAAAAAAAAAAAB+AAAABQAAAAAAAADwPwcACgAAAAcAAAAAAAcADAAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAAGEAGAAoBAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAgQAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB+AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAJAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAoAAQAAAAsBAAAHAAQAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB+AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcACAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAoBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAgQAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAwAAAAAQABAAEAAQADAAsAAAAAADEAAAABAAEAAQABAAMACwAAAAAAMgAAAAEAAQABAAEAAwALAAAAAAAzAAAAAQABAAEAAQADAAsAAAAAADQAAAAKAAIAAAD2AAAABAAAAAAAAAAAAGIAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA1AAAACgABAAAA9gAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADYAAAABAAEAAQABAAMACwAAAAAANwAAAAEAAQABAAEAAwALAAAAAAA4AAAAAQABAAEAAQADAAsAAAAAADkAAAABAAEAAQABAAMACwAAAAAAOgAAAAEAAQABAAEAAwALAAAAAAA7AAAAAQABAAEAAQADAAsAAAAAADwAAAABAAEAAQABAAMACwAAAAAAPQAAAAEAAQABAAEAAwALAAAAAAA+AAAAAQABAAEAAQADAAsAAAAAAD8AAAABAAEAAQABAAMACwAAAAAAQAAAAAEAAQABAAEAAwALAAAAAABBAAAAAQABAAEAAQADAAsAAAAAAEIAAAABAAEAAQABAAMACwAAAAAAQwAAAAEAAQABAAEAAwALAAAAAABEAAAAAQABAAEAAQADAAsAAAAAAEUAAAABAAEAAQABAAMACwAAAAAARgAAAAEAAQABAAEAAwALAAAAAABHAAAAAQABAAEAAQADAAsAAAAAAEgAAAABAAEAAQABAAMACwAAAAAASQAAAAEAAQABAAEAAwALAAAAAABKAAAAAQABAAEAAQADAAsAAAAAAEsAAAABAAEAAQABAAMACwAAAAAATAAAAAEAAQABAAEAAwALAAAAAABNAAAAAQABAAEAAQADAAsAAAAAAE4AAAABAAEAAQABAAMACwAAAAAATwAAAAEAAQABAAEAAwALAAAAAABQAAAAAQABAAEAAQADAAsAAAAAAFEAAAABAAEAAQABAAMACwAAAAAAUgAAAAEAAQABAAEAAwALAAAAAABTAAAAAQABAAEAAQADAAsAAAAAAFQAAAABAAEAAQABAAMACwAAAAAAVQAAAAEAAQABAAEAAwALAAAAAABWAAAAAQABAAEAAQADAAsAAAAAAFcAAAABAAEAAQABAAMACwAAAAAAWAAAAAEAAQABAAEAAwALAAAAAABZAAAAAQABAAEAAQADAAsAAAAAAFoAAAABAAEAAQABAAMACwAAAAAAWwAAAAEAAQABAAEAAwALAAAAAABcAAAAAQABAAEAAQADAAsAAAAAAF0AAAABAAEAAQABAAMACwAAAAAAXgAAAAEAAQABAAEAAwALAAAAAABfAAAAAQABAAEAAQADAAsAAAAAAGAAAAABAAEAAQABAAMACwAAAAAAYQAAAAEAAQABAAEAAwALAAAAAABiAAAAAQABAAEAAQADAAsAAAAAAGMAAAABAAEAAQABAAMACwAAAAAAZAAAAAEAAQABAAEAAwALAAAAAABlAAAAAQABAAEAAQADAAsAAAAAAGYAAAABAAEAAQABAAMACwAAAAAAZwAAAAEAAQABAAEAAwALAAAAAABoAAAAAQABAAEAAQADAAsAAAAAAGkAAAABAAEAAQABAAMACwAAAAAAagAAAAEAAQABAAEAAwALAAAAAABrAAAAAQABAAEAAQADAAsAAAAAAGwAAAABAAEAAQABAAMACwAAAAAAbQAAAAEAAQABAAEAAwALAAAAAABuAAAAAQABAAEAAQADAAsAAAAAAG8AAAABAAEAAQABAAMACwAAAAAAcAAAAAEAAQABAAEAAwALAAAAAABxAAAAAQABAAEAAQADAAsAAAAAAHIAAAABAAEAAQABAAMACwAAAAAAcwAAAAEAAQABAAEAAwALAAAAAAB0AAAAAQABAAEAAQADAAsAAAAAAHUAAAABAAEAAQABAAMACwAAAAAAdgAAAAEAAQABAAEAAwALAAAAAAB3AAAAAQABAAEAAQADAAsAAAAAAHgAAAABAAEAAQABAAMACwAAAAAAeQAAAAEAAQABAAEAAwALAAAAAAB6AAAAAQABAAEAAQADAAsAAAAAAHsAAAABAAEAAQABAAMACwAAAAAAfAAAAAEAAQABAAEAAwALAAAAAAB9AAAAAQABAAEAAQADAAsAAAAAAH4AAAABAAEAAQABAAMACwAAAAAAfwAAAAEAAQABAAEAAwALAAAAAACAAAAAAQABAAEAAQADAAsAAAAAAIEAAAABAAEAAQABAAMACwAAAAAAggAAAAEAAQABAAEAAwALAAAAAACDAAAAAQABAAEAAQADAAsAAAAAAIQAAAABAAEAAQABAAMACwAAAAAAhQAAAAEAAQABAAEAAwALAAAAAACGAAAAAQABAAEAAQADAAsAAAAAAIcAAAABAAEAAQABAAMACwAAAAAAiAAAAAEAAQABAAEAAwALAAAAAACJAAAAAQABAAEAAQADAAsAAAAAAIoAAAABAAEAAQABAAMACwAAAAAAiwAAAAEAAQABAAEAAwALAAAAAACMAAAAAQABAAEAAQADAAsAAAAAAI0AAAABAAEAAQABAAMACwAAAAAAjgAAAAEAAQABAAEAAwALAAAAAACPAAAAAQABAAEAAQADAAsAAAAAAJAAAAABAAEAAQABAAMACwAAAAAAkQAAAAEAAQABAAEAAwALAAAAAACSAAAAAQABAAEAAQADAAsAAAAAAJMAAAABAAEAAQABAAMACwAAAAAAlAAAAAEAAQABAAEAAwALAAAAAACVAAAAAQABAAEAAQADAAsAAAAAAJYAAAABAAEAAQABAAMACwAAAAAAlwAAAAEAAQABAAEAAwALAAAAAACYAAAAAQABAAEAAQADAAsAAAAAAJkAAAABAAEAAQABAAMACwAAAAAAmgAAAAEAAQABAAEAAwALAAAAAACbAAAAAQABAAEAAQADAAsAAAAAAJwAAAABAAEAAQABAAMACwAAAAAAnQAAAAEAAQABAAEAAwALAAAAAACeAAAAAQABAAEAAQADAAsAAAAAAJ8AAAABAAEAAQABAAMACwAAAAAAoAAAAAEAAQABAAEAAwALAAAAAAChAAAAAQABAAEAAQADAAsAAAAAAKIAAAABAAEAAQABAAMACwAAAAAAowAAAAEAAQABAAEAAwALAAAAAACkAAAAAQABAAEAAQADAAsAAAAAAKUAAAABAAEAAQABAAMACwAAAAAApgAAAAEAAQABAAEAAwALAAAAAACnAAAAAQABAAEAAQADAAsAAAAAAKgAAAABAAEAAQABAAMACwAAAAAAqQAAAAEAAQABAAEAAwALAAAAAACqAAAAAQABAAEAAQADAA0BAAAHAAAAAAAKAAAAAAAOAQAABwAAAAAACgAAAAAADAAAAAcAAAAAAAoAAAAAAAYAEQEAAAoAAAAAAAoAPQAAAFMAAAACAAAAAAAEAAAAVAAAAAIAAAAAAAUAAABVAAAAAgAAAAAABgAAAFYAAAACAAAAAAAHAAAAVwAAAAIAAAAAAAgAAABYAAAAAgAAAAAACQAAAFkAAAACAAAAAAAKAAAAWgAAAAIAAAAAAAsAAABbAAAAAgAAAAAADAAAAFwAAAACAAAAAAANAAAAXQAAAAIAAAAAAA4AAABeAAAAAgAAAAAADwAAAF8AAAACAAAAAAAQAAAAYAAAAAIAAAAAABEAAABhAAAAAgAAAAAAEgAAAGIAAAACAAAAAAATAAAAYwAAAAIAAAAAABQAAABkAAAAAgAAAAAAFQAAAGUAAAACAAAAAAAWAAAAZgAAAAIAAAAAABcAAABnAAAAAgAAAAAAGAAAAGgAAAACAAAAAAAZAAAAaQAAAAIAAAAAABoAAABqAAAAAgAAAAAAGwAAAGsAAAACAAAAAAAcAAAAbAAAAAIAAAAAAB0AAABtAAAAAgAAAAAAHgAAAG4AAAACAAAAAAAfAAAAbwAAAAIAAAAAACAAAABwAAAAAgAAAAAAIQAAAHEAAAACAAAAAAAiAAAAcgAAAAIAAAAAACMAAABzAAAAAgAAAAAAJAAAAHQAAAACAAAAAAAlAAAAdQAAAAIAAAAAACYAAAB2AAAAAgAAAAAAJwAAAHcAAAACAAAAAAAoAAAAeAAAAAIAAAAAACkAAAB5AAAAAgAAAAAAKgAAAHoAAAACAAAAAAArAAAAewAAAAIAAAAAACwAAAB8AAAAAgAAAAAALQAAAH0AAAACAAAAAAAwAAAAfgAAAAIAAAAAADIAAAB/AAAAAgAAAAAAMwAAAIAAAAACAAAAAAA0AAAAgQAAAAIAAAAAADUAAABSAAAAAgAAAAAANgAAAIIAAAACAAAAAAA3AAAAgwAAAAIAAAAAADgAAACEAAAAAgAAAAAAOQAAAIUAAAACAAAAAAA6AAAAhgAAAAIAAAAAADsAAACHAAAAAgAAAAAAPAAAAIgAAAACAAAAAAA9AAAAiQAAAAIAAAAAAD4AAACKAAAAAgAAAAAAPwAAAIsAAAACAAAAAABAAAAAjAAAAAIAAAAAAEEAAACNAAAAAgAAAAAAQgAAAI4AAAACAAAAAABDAAAABwA9AAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAAMAAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAcAAAAAAAcAAQAAAAIAAQAAAGQAAAAHAAAAAAACAAEAAABkAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAAMAAAACAAEAAABkAAAAAgACAAAAGQAAAAcAAAAAAAoADAAAADUAAAAKAAIAAABVAAAABwABAAAABgBbAAAAbwAAAAcADQAAAAYAcAAAAAYAcQAAAAYAcgAAAAYAcwAAAAYAdAAAAAYAdQAAAAYAdgAAAAYAdwAAAAYAeAAAAAYAeQAAAAYAegAAAAYAewAAAAYAfAAAAFUAAAACAAAAAADAAAAAbwAAAAIAAAAAAMEAAAD4AAAAAgAAAAAAwgAAAPkAAAACAAAAAADDAAAA/gAAAAIAAAAAAMQAAAD/AAAAAgAAAAAAxQAAAAEBAAACAAAAAADGAAAAAwEAAAIAAAAAAMcAAAAEAQAAAgAAAAAAyAAAAAkBAAACAAAAAADJAAAACwEAAAIAAAAAAMoAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgASAQAABgCPAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGACEAAAAGAJAAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAIgAAAAYAkQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgATAQAABgCSAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGABQBAAAGAJMAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAFQEAAAYAlAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgAWAQAABgCVAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGABcBAAAGAJYAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAGAEAAAYAlwAAAAcAAAAAAAEABgAZAQAACgAAAAAACgAhAAAAmAAAAAIAAAAAAEUAAACZAAAAAgAAAAAARgAAAJoAAAACAAAAAABHAAAAiAAAAAIAAAAAAEgAAABbAAAAAgAAAAAASQAAAFQAAAACAAAAAABKAAAAXwAAAAIAAAAAAEsAAABgAAAAAgAAAAAATAAAAGwAAAACAAAAAABNAAAAbQAAAAIAAAAAAE4AAABkAAAAAgAAAAAATwAAAGYAAAACAAAAAABQAAAAaAAAAAIAAAAAAFEAAABqAAAAAgAAAAAAUgAAAIMAAAACAAAAAABTAAAAYgAAAAIAAAAAAFQAAABjAAAAAgAAAAAAVQAAAHAAAAACAAAAAABWAAAAcQAAAAIAAAAAAFcAAAByAAAAAgAAAAAAWAAAAHMAAAACAAAAAABZAAAAdAAAAAIAAAAAAFoAAAB1AAAAAgAAAAAAWwAAAHYAAAACAAAAAABcAAAAdwAAAAIAAAAAAF0AAAB4AAAAAgAAAAAAXgAAAHkAAAACAAAAAABfAAAAegAAAAIAAAAAAGAAAAB7AAAAAgAAAAAAYQAAAHwAAAACAAAAAABiAAAAfQAAAAIAAAAAAGMAAAB+AAAAAgAAAAAAZAAAAH8AAAACAAAAAABlAAAABwAhAAAAAgAAAAAARQAAAAIAAAAAAEYAAAACAAAAAABHAAAAAgAAAAAASAAAAAIAAAAAAEkAAAACAAAAAABKAAAAAgAAAAAASwAAAAIAAAAAAEwAAAACAAAAAABNAAAAAgAAAAAATgAAAAIAAAAAAE8AAAACAAAAAABQAAAAAgAAAAAAUQAAAAIAAAAAAFIAAAACAAAAAABTAAAAAgAAAAAAVAAAAAIAAAAAAFUAAAACAAAAAABWAAAAAgAAAAAAVwAAAAIAAAAAAFgAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABcAAAAAgAAAAAAXQAAAAIAAAAAAF4AAAACAAAAAABfAAAAAgAAAAAAYAAAAAIAAAAAAGEAAAACAAAAAABiAAAAAgAAAAAAYwAAAAIAAAAAAGQAAAACAAAAAABlAAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAAAAAAIAAgAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAARAAAAAIAAgAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGABoBAAAKAAsAAADGAAAAAgAAAAAAywAAAMcAAAACAAAAAADMAAAAyAAAAAIAAAAAAM0AAADJAAAAAgAAAAAAzgAAAMoAAAACAAAAAADPAAAAywAAAAIAAAAAANAAAADMAAAAAgAAAAAA0QAAAM0AAAACAAAAAADSAAAAzgAAAAIAAAAAANMAAADPAAAAAgAAAAAA1AAAANAAAAACAAAAAADVAAAACgAuAAAAEgAAAAIAAAAAAGcAAACbAAAAAgAAAAAAaAAAAJwAAAACAAAAAABpAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACkAAAAAgAAAAAAcQAAAKUAAAACAAAAAAByAAAAgQAAAAIAAAAAAHMAAACmAAAAAgAAAAAAdAAAAKcAAAACAAAAAAB1AAAAqAAAAAIAAAAAAHYAAACpAAAAAgAAAAAAdwAAAKoAAAACAAAAAAB4AAAAqwAAAAIAAAAAAHkAAACsAAAAAgAAAAAAegAAAK0AAAACAAAAAAB7AAAArgAAAAIAAAAAAHwAAACvAAAAAgAAAAAAfQAAALAAAAACAAAAAAB+AAAAsQAAAAIAAAAAAH8AAACyAAAAAgAAAAAAgAAAABwAAAACAAAAAACBAAAAswAAAAIAAAAAAIIAAAC0AAAAAgAAAAAAgwAAALUAAAACAAAAAACEAAAAtgAAAAIAAAAAAIUAAAC3AAAAAgAAAAAAhgAAALgAAAACAAAAAACHAAAAuQAAAAIAAAAAAIgAAAC6AAAAAgAAAAAAiQAAALsAAAACAAAAAACKAAAAvAAAAAIAAAAAAIsAAAC9AAAAAgAAAAAAjAAAAL4AAAACAAAAAACNAAAAvwAAAAIAAAAAAI4AAADAAAAAAgAAAAAAjwAAAMEAAAACAAAAAACQAAAAwgAAAAIAAAAAAJEAAADDAAAAAgAAAAAAkgAAAMQAAAACAAAAAACTAAAAxQAAAAIAAAAAAJQAAAAHAC4AAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACUAAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAAAAAAIAAgAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAZgAAAAIAAgAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAGgAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAaAAAAAEABgAbAQAACgACAAAA1gAAAAIAAAAAANYAAADXAAAAAgAAAAAA1wAAAAoABQAAANEAAAACAAAAAACWAAAA0gAAAAIAAAAAAJcAAADTAAAAAgAAAAAAmAAAANQAAAACAAAAAACZAAAA1QAAAAIAAAAAAJoAAAAHAAUAAAACAAAAAACWAAAAAgAAAAAAlwAAAAIAAAAAAJgAAAACAAAAAACZAAAAAgAAAAAAmgAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAJUAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcABAAAAAQAAgAAAAAAAAACAAAAAACVAAAABgDSAAAABgDWAAAABwAEAAAABAADAAAAAAAAAAIAAAAAAJUAAAAGANMAAAAGANcAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAlQAAAAYA0gAAAAYA1gAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACVAAAABgDTAAAABgDXAAAAAQAGABwBAAAKAAQAAADfAAAAAgAAAAAA2AAAANcAAAACAAAAAADZAAAA4AAAAAIAAAAAANoAAADhAAAAAgAAAAAA2wAAAAoACgAAABIAAAACAAAAAACcAAAA2AAAAAIAAAAAAJ0AAACbAAAAAgAAAAAAngAAANkAAAACAAAAAACfAAAA2gAAAAIAAAAAAKAAAADbAAAAAgAAAAAAoQAAANwAAAACAAAAAACiAAAA3QAAAAIAAAAAAKMAAADeAAAAAgAAAAAApAAAABwAAAACAAAAAAClAAAABwAKAAAAAgAAAAAAnAAAAAIAAAAAAJ0AAAACAAAAAACeAAAAAgAAAAAAnwAAAAIAAAAAAKAAAAACAAAAAAChAAAAAgAAAAAAogAAAAIAAAAAAKMAAAACAAAAAACkAAAAAgAAAAAApQAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAJsAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACeAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAJ4AAAABAAYAHQEAAAoACAAAAO4AAAACAAAAAADcAAAA7wAAAAIAAAAAAN0AAADwAAAAAgAAAAAA3gAAAPEAAAACAAAAAADfAAAA8gAAAAIAAAAAAOAAAADzAAAAAgAAAAAA4QAAAPQAAAACAAAAAADiAAAA9QAAAAIAAAAAAOMAAAAKAA0AAACbAAAAAgAAAAAApwAAAOIAAAACAAAAAACoAAAA4wAAAAIAAAAAAKkAAADkAAAAAgAAAAAAqgAAAOUAAAACAAAAAACrAAAA5gAAAAIAAAAAAKwAAADnAAAAAgAAAAAArQAAAOgAAAACAAAAAACuAAAA6QAAAAIAAAAAAK8AAADqAAAAAgAAAAAAsAAAAOsAAAACAAAAAACxAAAA7AAAAAIAAAAAALIAAADtAAAAAgAAAAAAswAAAAcADQAAAAIAAAAAAKcAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAIAAAAAAK0AAAACAAAAAACuAAAAAgAAAAAArwAAAAIAAAAAALAAAAACAAAAAACxAAAAAgAAAAAAsgAAAAIAAAAAALMAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACmAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAApwAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACnAAAAAQAHAAQAAAAHAAIAAAADAAYAWwAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFkAAAAFAAAAAAAAAABABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHAFUAAAAHAA4AAAADAAYAcAAAAAYAcQAAAAYAcgAAAAYAcwAAAAYAdAAAAAYAdQAAAAYAdgAAAAYAdwAAAAYAeAAAAAYAeQAAAAYAegAAAAYAewAAAAYAfAAAAAcAJwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAlAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAzAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAUQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACZABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAQADgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA5QAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAEABwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEBABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAABEQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAqAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAoAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBEQAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABHQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAgEdABAABAAAAAAAAAAQAAAAAAAAAAAAEADEAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAFAAAAAAAAgEVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAC8AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEhABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgEpABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAS0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAOAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAUAAAAAAAAASUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQANgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAS0AHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAATkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAIBOQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA/AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABQAAAAAAAIBMQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA9AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBQQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAAFFABAABAAAAAAAAAAQAAAAAAAAAAAAEAEYAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAFAAAAAAAAAFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFFABwADAAAABAAAAAAAAAAAAAQACwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFJABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAADAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAQATQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAUAAAAAAADAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAU0AHAAMAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVEAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAIBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABUAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABQAAAAAAAIBTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABSAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFoAAAAFAAAAAAAAABBABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHAGEAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAWgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAXgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBvAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcATgAAAAQACAAAAAAAAAAGAHAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgByAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB1AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB4AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB7AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHwAAAAFAAAAAAAAABBABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABsAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACkAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAD4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFMAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACJABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAALkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABAASAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA1QAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAEABkAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADxABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAAD1ABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAQUAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAnAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAlAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABFQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBFQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAAEZABAABAAAAAAAAAAQAAAAAAAAAAAAEAC4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAERABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACwAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEhABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAElABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAACASUAEAAEAAAAAAAAABAAAAAAAAAAAAAQANQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAATEAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAUAAAAAAACATEAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAABNQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA8AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABLQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBNQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBPQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABQQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAQFBABAABAAAAAAAAAAQAAAAAAAAAAAAEAEMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgFFABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFFABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAQASgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAABAU0AHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAACAU0AHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAMBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABABRAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABVQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBVQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAgFVABAABAAAAAAAAAAQAAAAAAAAAAAAEAFgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFVABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAQFZABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFZABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAhQAAAAUAAAAAAADAV0AEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgBjAAAABQAAAAAAAMBXQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAQFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHACYAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAagAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAFAAAAAAAAABhABgD8AAAABQAAAAAAAAAkQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAAAqQAcABgAAAAQACAAAAAAAAAAGAGgAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAYQAYA+wAAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAUAAAAAAAAAGEAGAPoAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAAD9ABwAGAAAABAAIAAAAAAAAAAYAZAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAQUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAEAAEAAAAAAAAAAAAAAAAAAAABAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAagAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBoAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAZAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgD8AAAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAPsAAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYA+gAAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBkAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAoAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAABBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAABhABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABAAIAAAAAAAAAAYAbgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgACAQAABQAAAAAAAAAkQAcABgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAqQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAxQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAzQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAA1QAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAQACAAAAAAAAAAGAG4AAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABwADAAAABQAAAAAAAAAYQAYAAgEAAAUAAAAAAAAAOUAHAAYAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAEAAgAAAAAAAAABgBuAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAjAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAdAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAIBAAAFAAAAAAAAAEJABwAGAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYA+gAAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEQAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZgAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBEAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAPoAAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGgAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYA+wAAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBpAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEQAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBEAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAPsAAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHAAcAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAYAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAQQAcABgAAAAQACAAAAAAAAAAGAH4AAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYARAAAAAUAAAAAAAAAJEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAYAAAAEAAgAAAAAAAAABgB9AAAABQAAAAAAAAAmQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAEQAAAAFAAAAAAAAACJABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAC5ABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADNABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYACgEAAAUAAAAAAAAANEAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCBAAAABQAAAAAAAAA2QAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABgDGAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDHAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAMgAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYAyQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYAygAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDLAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAMwAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYAzQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYAzgAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDPAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDQAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDWAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDXAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDfAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDXAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDgAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDhAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAO4AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA7wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDwAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAPEAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA8gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDzAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgD0AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgD1AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAAAAAKAAAAAAALAAAABwAAAAAACgAAAAAAOAEAAAcAAAAAAAoAAAAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if780_end1707 
    die "Repossession conflicts occurred during deserialization"
  if780_end1707:
    .const "LexInfo" $P5001 = "cuid_179_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_179_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_179_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_179_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_179_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_179_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_179_1360623834.732"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_179_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_57_1360623834.732" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_58_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 67
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_172_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_172_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_172_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_172_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 68
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_180_1360623834.732" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_65_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 101
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_181_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 68
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_181_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_181_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 68
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_181_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_98_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 148
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_193_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_193_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_193_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 102
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_193_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_144_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 154
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_218_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_218_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_218_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 149
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_218_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_149_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 165
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_219_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_219_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_219_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 155
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_219_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_159_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_163_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 176
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1360623834.732" 
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 179
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_229_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_229_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_229_1360623834.732"
    nqp_get_sc_object $P5002, "2DB3D36DA056732D47EE6E9E7C410867ACFEB60B-1360623834.771", 166
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_229_1360623834.732"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1360623834.732") :anon :lex :outer("cuid_231_1360623834.732")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1360623834.732" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1360623834.732" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1360623834.732") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_179_1360623834.732" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1360623834.732") :main
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_179_1360623834.732" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end