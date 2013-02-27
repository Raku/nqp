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
.sub "" :subid("cuid_201_1361964161.189") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5023 = 'cuid_188_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_203_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_216_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_118_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_220_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_247_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_248_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_258_1361964161.189' 
    capture_lex $P5023 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "ParseShared", $P104 
    .lex "NQPCursorRole", $P105 
    .lex "$compiler", $P106 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    .const 'Sub' $P5006 = 'cuid_188_1361964161.189' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_203_1361964161.189' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_216_1361964161.189' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_118_1361964161.189' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_220_1361964161.189' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 1568
    nqp_get_sc_object $P5015, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    $P5016 = $P5015."new"()
    set $P106, $P5016
.annotate 'line', 1569
    $P106."language"("parrot")
    .const 'Sub' $P5017 = 'cuid_247_1361964161.189' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_248_1361964161.189' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_258_1361964161.189' 
    capture_lex $P5021
    $P5022 = $P5021()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5069 = 'cuid_1_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_2_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_3_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_4_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_5_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_6_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_7_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_8_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_9_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_10_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_11_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_12_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_13_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_14_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_15_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_16_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_17_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_18_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_19_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_20_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_21_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_22_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_23_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_24_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_25_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_26_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_27_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_28_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_29_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_30_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_31_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_32_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_33_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_34_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_35_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_36_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_37_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_38_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_39_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_40_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_41_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_42_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_45_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_47_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_48_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_49_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_50_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_51_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_52_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_53_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_54_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_55_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_56_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_57_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_58_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_59_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_60_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_61_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_62_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_63_1361964161.189' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_64_1361964161.189' 
    capture_lex $P5069 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "%ohash", $P103 
    .lex "$TRUE", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    box $P5005, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "41BC6126A6537720F2A162E1AE4506906D3B7795-1361964156.879", 100
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_1_1361964161.189' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1361964161.189' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1361964161.189' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_4_1361964161.189' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_5_1361964161.189' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_6_1361964161.189' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_7_1361964161.189' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_8_1361964161.189' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_9_1361964161.189' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_10_1361964161.189' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_11_1361964161.189' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_12_1361964161.189' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_13_1361964161.189' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_14_1361964161.189' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_15_1361964161.189' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_16_1361964161.189' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_17_1361964161.189' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_18_1361964161.189' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_19_1361964161.189' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_20_1361964161.189' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_21_1361964161.189' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_22_1361964161.189' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_23_1361964161.189' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_24_1361964161.189' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_25_1361964161.189' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_26_1361964161.189' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_27_1361964161.189' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_28_1361964161.189' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_29_1361964161.189' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_30_1361964161.189' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_31_1361964161.189' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_32_1361964161.189' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_33_1361964161.189' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_34_1361964161.189' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_35_1361964161.189' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_36_1361964161.189' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_37_1361964161.189' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_38_1361964161.189' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_39_1361964161.189' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_40_1361964161.189' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_41_1361964161.189' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_42_1361964161.189' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_45_1361964161.189' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_47_1361964161.189' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_48_1361964161.189' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_49_1361964161.189' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_50_1361964161.189' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_51_1361964161.189' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_52_1361964161.189' 
    capture_lex $P5055
    box $P5056, 1
    set $P104, $P5056
    .const 'Sub' $P5057 = 'cuid_53_1361964161.189' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_54_1361964161.189' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_55_1361964161.189' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_56_1361964161.189' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_57_1361964161.189' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_58_1361964161.189' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_59_1361964161.189' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_60_1361964161.189' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_61_1361964161.189' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_62_1361964161.189' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_63_1361964161.189' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_64_1361964161.189' 
    capture_lex $P5068
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
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
.sub "termish" :subid("cuid_2_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "term" :subid("cuid_3_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "infixish" :subid("cuid_10_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "prefixish" :subid("cuid_11_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "postfixish" :subid("cuid_12_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    rx29_cur."!alt"(rx29_pos, "alt_nfa__1_1361964161.318", $P11)
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
.sub "nullterm" :subid("cuid_13_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "nullterm_alt" :subid("cuid_14_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "nulltermish" :subid("cuid_15_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "quote_delimited" :subid("cuid_16_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "quote_atom" :subid("cuid_17_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    nqp_push_label $P11, alt49_2138
    nqp_rxmark rx47_bstack, alt49_end132, -1, 0
    rx47_cur."!alt"(rx47_pos, "alt_nfa__2_1361964161.348", $P11)
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
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."starter"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    ge $I11, 0, rx47_fail125
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    ge $I11, 0, rx47_fail125
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
  alt49_2138:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."starter"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
    nqp_rxmark rx47_bstack, rxsubrule52_pass139, -1, 0
  rxsubrule52_pass139:
    rx47_cstack = rx47_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
    nqp_rxmark rx47_bstack, rxquantr53_done141, rx47_pos, 0
  rxquantr53_loop140:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
    goto rxsubrule54_pass142
  rxsubrule54_back143:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
  rxsubrule54_pass142:
    rx47_cstack = rx47_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule54_back143
    push rx47_bstack, $I11
    push rx47_bstack, 0
    push rx47_bstack, rx47_pos
    elements $I11, rx47_cstack
    push rx47_bstack, $I11
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
    nqp_rxpeek $I19, rx47_bstack, rxquantr53_done141
    inc $I19
    inc $I19
    set rx47_rep, rx47_bstack[$I19]
    nqp_rxcommit rx47_bstack, rxquantr53_done141
    inc rx47_rep
    nqp_rxmark rx47_bstack, rxquantr53_done141, rx47_pos, rx47_rep
    goto rxquantr53_loop140
  rxquantr53_done141:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail125
    nqp_rxmark rx47_bstack, rxsubrule55_pass144, -1, 0
  rxsubrule55_pass144:
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
.sub "decint" :subid("cuid_18_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 56
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx56_start
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    .local pmc rx56_curclass
    .local pmc rx56_bstack
    .local pmc rx56_cstack
    rx56_start = self."!cursor_start_all"()
    set rx56_cur, rx56_start[0]
    set rx56_tgt, rx56_start[1]
    set rx56_pos, rx56_start[2]
    set rx56_curclass, rx56_start[3]
    set rx56_bstack, rx56_start[4]
    set $I19, rx56_start[5]
    store_lex unicode:"$\x{a2}", rx56_cur
    length rx56_eos, rx56_tgt
    eq $I19, 1, rx56_restart147
    gt rx56_pos, rx56_eos, rx56_fail148
    repr_get_attr_int $I11, self, rx56_curclass, "$!from"
    ne $I11, -1, rxscan57_done154
    goto rxscan57_scan153
  rxscan57_loop152:
    inc rx56_pos
    gt rx56_pos, rx56_eos, rx56_fail148
    repr_bind_attr_int rx56_cur, rx56_curclass, "$!from", rx56_pos
  rxscan57_scan153:
    nqp_rxmark rx56_bstack, rxscan57_loop152, rx56_pos, 0
  rxscan57_done154:
    nqp_rxmark rx56_bstack, rxquantr58_done156, -1, 0
  rxquantr58_loop155:
    nqp_rxmark rx56_bstack, rxquantr59_done158, -1, 0
  rxquantr59_loop157:
    ge rx56_pos, rx56_eos, rx56_fail148
    is_cclass $I11, .CCLASS_NUMERIC, rx56_tgt, rx56_pos
    unless $I11, rx56_fail148
    add rx56_pos, 1
    nqp_rxpeek $I19, rx56_bstack, rxquantr59_done158
    inc $I19
    inc $I19
    set rx56_rep, rx56_bstack[$I19]
    nqp_rxcommit rx56_bstack, rxquantr59_done158
    inc rx56_rep
    nqp_rxmark rx56_bstack, rxquantr59_done158, rx56_pos, rx56_rep
    goto rxquantr59_loop157
  rxquantr59_done158:
    nqp_rxpeek $I19, rx56_bstack, rxquantr58_done156
    inc $I19
    inc $I19
    set rx56_rep, rx56_bstack[$I19]
    nqp_rxcommit rx56_bstack, rxquantr58_done156
    inc rx56_rep
    nqp_rxmark rx56_bstack, rxquantr58_done156, rx56_pos, rx56_rep
    add $I11, rx56_pos, 1
    gt $I11, rx56_eos, rx56_fail148
    substr $S10, rx56_tgt, rx56_pos, 1
    ne $S10, ucs4:"_", rx56_fail148
    add rx56_pos, 1
    goto rxquantr58_loop155
  rxquantr58_done156:
    rx56_cur."!cursor_pass"(rx56_pos, "decint", 'backtrack'=>1)
    .return (rx56_cur)
  rx56_restart147:
    repr_get_attr_obj rx56_cstack, rx56_cur, rx56_curclass, "$!cstack"
  rx56_fail148:
    unless rx56_bstack, rx56_done146
    pop $I19, rx56_bstack
    if_null rx56_cstack, rx56_cstack_done151
    unless rx56_cstack, rx56_cstack_done151
    dec $I19
    set $P11, rx56_cstack[$I19]
  rx56_cstack_done151:
    pop rx56_rep, rx56_bstack
    pop rx56_pos, rx56_bstack
    pop $I19, rx56_bstack
    lt rx56_pos, -1, rx56_done146
    lt rx56_pos, 0, rx56_fail148
    eq $I19, 0, rx56_fail148
    nqp_islist $I20, rx56_cstack
    unless $I20, rx56_jump149
    elements $I18, rx56_bstack
    le $I18, 0, rx56_cut150
    dec $I18
    set $I18, rx56_bstack[$I18]
  rx56_cut150:
    assign rx56_cstack, $I18
  rx56_jump149:
    jump $I19
  rx56_done146:
    rx56_cur."!cursor_fail"()
    .return (rx56_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decints" :subid("cuid_19_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 57
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx60_start
    .local string rx60_tgt
    .local int rx60_pos
    .local int rx60_off
    .local int rx60_eos
    .local int rx60_rep
    .local pmc rx60_cur
    .local pmc rx60_curclass
    .local pmc rx60_bstack
    .local pmc rx60_cstack
    rx60_start = self."!cursor_start_all"()
    set rx60_cur, rx60_start[0]
    set rx60_tgt, rx60_start[1]
    set rx60_pos, rx60_start[2]
    set rx60_curclass, rx60_start[3]
    set rx60_bstack, rx60_start[4]
    set $I19, rx60_start[5]
    store_lex unicode:"$\x{a2}", rx60_cur
    length rx60_eos, rx60_tgt
    eq $I19, 1, rx60_restart161
    gt rx60_pos, rx60_eos, rx60_fail162
    repr_get_attr_int $I11, self, rx60_curclass, "$!from"
    ne $I11, -1, rxscan61_done168
    goto rxscan61_scan167
  rxscan61_loop166:
    inc rx60_pos
    gt rx60_pos, rx60_eos, rx60_fail162
    repr_bind_attr_int rx60_cur, rx60_curclass, "$!from", rx60_pos
  rxscan61_scan167:
    nqp_rxmark rx60_bstack, rxscan61_loop166, rx60_pos, 0
  rxscan61_done168:
    nqp_rxmark rx60_bstack, rxquantr62_done170, -1, 0
  rxquantr62_loop169:
    repr_bind_attr_int rx60_cur, rx60_curclass, "$!pos", rx60_pos
    $P11 = rx60_cur."ws"()
    repr_get_attr_int $I11, $P11, rx60_curclass, "$!pos"
    lt $I11, 0, rx60_fail162
    repr_get_attr_int rx60_pos, $P11, rx60_curclass, "$!pos"
    repr_bind_attr_int rx60_cur, rx60_curclass, "$!pos", rx60_pos
    $P11 = rx60_cur."decint"()
    repr_get_attr_int $I11, $P11, rx60_curclass, "$!pos"
    lt $I11, 0, rx60_fail162
    nqp_rxmark rx60_bstack, rxsubrule64_pass172, -1, 0
  rxsubrule64_pass172:
    rx60_cstack = rx60_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx60_pos, $P11, rx60_curclass, "$!pos"
    repr_bind_attr_int rx60_cur, rx60_curclass, "$!pos", rx60_pos
    $P11 = rx60_cur."ws"()
    repr_get_attr_int $I11, $P11, rx60_curclass, "$!pos"
    lt $I11, 0, rx60_fail162
    repr_get_attr_int rx60_pos, $P11, rx60_curclass, "$!pos"
    nqp_rxpeek $I19, rx60_bstack, rxquantr62_done170
    inc $I19
    inc $I19
    set rx60_rep, rx60_bstack[$I19]
    nqp_rxcommit rx60_bstack, rxquantr62_done170
    inc rx60_rep
    nqp_rxmark rx60_bstack, rxquantr62_done170, rx60_pos, rx60_rep
    add $I11, rx60_pos, 1
    gt $I11, rx60_eos, rx60_fail162
    substr $S10, rx60_tgt, rx60_pos, 1
    ne $S10, ucs4:",", rx60_fail162
    add rx60_pos, 1
    goto rxquantr62_loop169
  rxquantr62_done170:
    rx60_cur."!cursor_pass"(rx60_pos, "decints", 'backtrack'=>1)
    .return (rx60_cur)
  rx60_restart161:
    repr_get_attr_obj rx60_cstack, rx60_cur, rx60_curclass, "$!cstack"
  rx60_fail162:
    unless rx60_bstack, rx60_done160
    pop $I19, rx60_bstack
    if_null rx60_cstack, rx60_cstack_done165
    unless rx60_cstack, rx60_cstack_done165
    dec $I19
    set $P11, rx60_cstack[$I19]
  rx60_cstack_done165:
    pop rx60_rep, rx60_bstack
    pop rx60_pos, rx60_bstack
    pop $I19, rx60_bstack
    lt rx60_pos, -1, rx60_done160
    lt rx60_pos, 0, rx60_fail162
    eq $I19, 0, rx60_fail162
    nqp_islist $I20, rx60_cstack
    unless $I20, rx60_jump163
    elements $I18, rx60_bstack
    le $I18, 0, rx60_cut164
    dec $I18
    set $I18, rx60_bstack[$I18]
  rx60_cut164:
    assign rx60_cstack, $I18
  rx60_jump163:
    jump $I19
  rx60_done160:
    rx60_cur."!cursor_fail"()
    .return (rx60_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_20_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 59
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx66_start
    .local string rx66_tgt
    .local int rx66_pos
    .local int rx66_off
    .local int rx66_eos
    .local int rx66_rep
    .local pmc rx66_cur
    .local pmc rx66_curclass
    .local pmc rx66_bstack
    .local pmc rx66_cstack
    rx66_start = self."!cursor_start_all"()
    set rx66_cur, rx66_start[0]
    set rx66_tgt, rx66_start[1]
    set rx66_pos, rx66_start[2]
    set rx66_curclass, rx66_start[3]
    set rx66_bstack, rx66_start[4]
    set $I19, rx66_start[5]
    store_lex unicode:"$\x{a2}", rx66_cur
    length rx66_eos, rx66_tgt
    eq $I19, 1, rx66_restart176
    gt rx66_pos, rx66_eos, rx66_fail177
    repr_get_attr_int $I11, self, rx66_curclass, "$!from"
    ne $I11, -1, rxscan67_done183
    goto rxscan67_scan182
  rxscan67_loop181:
    inc rx66_pos
    gt rx66_pos, rx66_eos, rx66_fail177
    repr_bind_attr_int rx66_cur, rx66_curclass, "$!from", rx66_pos
  rxscan67_scan182:
    nqp_rxmark rx66_bstack, rxscan67_loop181, rx66_pos, 0
  rxscan67_done183:
    nqp_rxmark rx66_bstack, rxquantr68_done185, -1, 0
  rxquantr68_loop184:
    nqp_rxmark rx66_bstack, rxquantr69_done187, -1, 0
  rxquantr69_loop186:
    ge rx66_pos, rx66_eos, rx66_fail177
    substr $S11, rx66_tgt, rx66_pos, 1
    index $I11, ucs4:"0123456789abcdefABCDEF", $S11
    lt $I11, 0, rx66_fail177
    inc rx66_pos
    nqp_rxpeek $I19, rx66_bstack, rxquantr69_done187
    inc $I19
    inc $I19
    set rx66_rep, rx66_bstack[$I19]
    nqp_rxcommit rx66_bstack, rxquantr69_done187
    inc rx66_rep
    nqp_rxmark rx66_bstack, rxquantr69_done187, rx66_pos, rx66_rep
    goto rxquantr69_loop186
  rxquantr69_done187:
    nqp_rxpeek $I19, rx66_bstack, rxquantr68_done185
    inc $I19
    inc $I19
    set rx66_rep, rx66_bstack[$I19]
    nqp_rxcommit rx66_bstack, rxquantr68_done185
    inc rx66_rep
    nqp_rxmark rx66_bstack, rxquantr68_done185, rx66_pos, rx66_rep
    add $I11, rx66_pos, 1
    gt $I11, rx66_eos, rx66_fail177
    substr $S10, rx66_tgt, rx66_pos, 1
    ne $S10, ucs4:"_", rx66_fail177
    add rx66_pos, 1
    goto rxquantr68_loop184
  rxquantr68_done185:
    rx66_cur."!cursor_pass"(rx66_pos, "hexint", 'backtrack'=>1)
    .return (rx66_cur)
  rx66_restart176:
    repr_get_attr_obj rx66_cstack, rx66_cur, rx66_curclass, "$!cstack"
  rx66_fail177:
    unless rx66_bstack, rx66_done175
    pop $I19, rx66_bstack
    if_null rx66_cstack, rx66_cstack_done180
    unless rx66_cstack, rx66_cstack_done180
    dec $I19
    set $P11, rx66_cstack[$I19]
  rx66_cstack_done180:
    pop rx66_rep, rx66_bstack
    pop rx66_pos, rx66_bstack
    pop $I19, rx66_bstack
    lt rx66_pos, -1, rx66_done175
    lt rx66_pos, 0, rx66_fail177
    eq $I19, 0, rx66_fail177
    nqp_islist $I20, rx66_cstack
    unless $I20, rx66_jump178
    elements $I18, rx66_bstack
    le $I18, 0, rx66_cut179
    dec $I18
    set $I18, rx66_bstack[$I18]
  rx66_cut179:
    assign rx66_cstack, $I18
  rx66_jump178:
    jump $I19
  rx66_done175:
    rx66_cur."!cursor_fail"()
    .return (rx66_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_21_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx70_start
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    .local pmc rx70_curclass
    .local pmc rx70_bstack
    .local pmc rx70_cstack
    rx70_start = self."!cursor_start_all"()
    set rx70_cur, rx70_start[0]
    set rx70_tgt, rx70_start[1]
    set rx70_pos, rx70_start[2]
    set rx70_curclass, rx70_start[3]
    set rx70_bstack, rx70_start[4]
    set $I19, rx70_start[5]
    store_lex unicode:"$\x{a2}", rx70_cur
    length rx70_eos, rx70_tgt
    eq $I19, 1, rx70_restart190
    gt rx70_pos, rx70_eos, rx70_fail191
    repr_get_attr_int $I11, self, rx70_curclass, "$!from"
    ne $I11, -1, rxscan71_done197
    goto rxscan71_scan196
  rxscan71_loop195:
    inc rx70_pos
    gt rx70_pos, rx70_eos, rx70_fail191
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!from", rx70_pos
  rxscan71_scan196:
    nqp_rxmark rx70_bstack, rxscan71_loop195, rx70_pos, 0
  rxscan71_done197:
    nqp_rxmark rx70_bstack, rxquantr72_done199, -1, 0
  rxquantr72_loop198:
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!pos", rx70_pos
    $P11 = rx70_cur."ws"()
    repr_get_attr_int $I11, $P11, rx70_curclass, "$!pos"
    lt $I11, 0, rx70_fail191
    repr_get_attr_int rx70_pos, $P11, rx70_curclass, "$!pos"
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!pos", rx70_pos
    $P11 = rx70_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx70_curclass, "$!pos"
    lt $I11, 0, rx70_fail191
    nqp_rxmark rx70_bstack, rxsubrule74_pass201, -1, 0
  rxsubrule74_pass201:
    rx70_cstack = rx70_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx70_pos, $P11, rx70_curclass, "$!pos"
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!pos", rx70_pos
    $P11 = rx70_cur."ws"()
    repr_get_attr_int $I11, $P11, rx70_curclass, "$!pos"
    lt $I11, 0, rx70_fail191
    repr_get_attr_int rx70_pos, $P11, rx70_curclass, "$!pos"
    nqp_rxpeek $I19, rx70_bstack, rxquantr72_done199
    inc $I19
    inc $I19
    set rx70_rep, rx70_bstack[$I19]
    nqp_rxcommit rx70_bstack, rxquantr72_done199
    inc rx70_rep
    nqp_rxmark rx70_bstack, rxquantr72_done199, rx70_pos, rx70_rep
    add $I11, rx70_pos, 1
    gt $I11, rx70_eos, rx70_fail191
    substr $S10, rx70_tgt, rx70_pos, 1
    ne $S10, ucs4:",", rx70_fail191
    add rx70_pos, 1
    goto rxquantr72_loop198
  rxquantr72_done199:
    rx70_cur."!cursor_pass"(rx70_pos, "hexints", 'backtrack'=>1)
    .return (rx70_cur)
  rx70_restart190:
    repr_get_attr_obj rx70_cstack, rx70_cur, rx70_curclass, "$!cstack"
  rx70_fail191:
    unless rx70_bstack, rx70_done189
    pop $I19, rx70_bstack
    if_null rx70_cstack, rx70_cstack_done194
    unless rx70_cstack, rx70_cstack_done194
    dec $I19
    set $P11, rx70_cstack[$I19]
  rx70_cstack_done194:
    pop rx70_rep, rx70_bstack
    pop rx70_pos, rx70_bstack
    pop $I19, rx70_bstack
    lt rx70_pos, -1, rx70_done189
    lt rx70_pos, 0, rx70_fail191
    eq $I19, 0, rx70_fail191
    nqp_islist $I20, rx70_cstack
    unless $I20, rx70_jump192
    elements $I18, rx70_bstack
    le $I18, 0, rx70_cut193
    dec $I18
    set $I18, rx70_bstack[$I18]
  rx70_cut193:
    assign rx70_cstack, $I18
  rx70_jump192:
    jump $I19
  rx70_done189:
    rx70_cur."!cursor_fail"()
    .return (rx70_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_22_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx76_start
    .local string rx76_tgt
    .local int rx76_pos
    .local int rx76_off
    .local int rx76_eos
    .local int rx76_rep
    .local pmc rx76_cur
    .local pmc rx76_curclass
    .local pmc rx76_bstack
    .local pmc rx76_cstack
    rx76_start = self."!cursor_start_all"()
    set rx76_cur, rx76_start[0]
    set rx76_tgt, rx76_start[1]
    set rx76_pos, rx76_start[2]
    set rx76_curclass, rx76_start[3]
    set rx76_bstack, rx76_start[4]
    set $I19, rx76_start[5]
    store_lex unicode:"$\x{a2}", rx76_cur
    length rx76_eos, rx76_tgt
    eq $I19, 1, rx76_restart205
    gt rx76_pos, rx76_eos, rx76_fail206
    repr_get_attr_int $I11, self, rx76_curclass, "$!from"
    ne $I11, -1, rxscan77_done212
    goto rxscan77_scan211
  rxscan77_loop210:
    inc rx76_pos
    gt rx76_pos, rx76_eos, rx76_fail206
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!from", rx76_pos
  rxscan77_scan211:
    nqp_rxmark rx76_bstack, rxscan77_loop210, rx76_pos, 0
  rxscan77_done212:
    nqp_rxmark rx76_bstack, rxquantr78_done214, -1, 0
  rxquantr78_loop213:
    nqp_rxmark rx76_bstack, rxquantr79_done216, -1, 0
  rxquantr79_loop215:
    ge rx76_pos, rx76_eos, rx76_fail206
    substr $S11, rx76_tgt, rx76_pos, 1
    index $I11, ucs4:"01234567", $S11
    lt $I11, 0, rx76_fail206
    inc rx76_pos
    nqp_rxpeek $I19, rx76_bstack, rxquantr79_done216
    inc $I19
    inc $I19
    set rx76_rep, rx76_bstack[$I19]
    nqp_rxcommit rx76_bstack, rxquantr79_done216
    inc rx76_rep
    nqp_rxmark rx76_bstack, rxquantr79_done216, rx76_pos, rx76_rep
    goto rxquantr79_loop215
  rxquantr79_done216:
    nqp_rxpeek $I19, rx76_bstack, rxquantr78_done214
    inc $I19
    inc $I19
    set rx76_rep, rx76_bstack[$I19]
    nqp_rxcommit rx76_bstack, rxquantr78_done214
    inc rx76_rep
    nqp_rxmark rx76_bstack, rxquantr78_done214, rx76_pos, rx76_rep
    add $I11, rx76_pos, 1
    gt $I11, rx76_eos, rx76_fail206
    substr $S10, rx76_tgt, rx76_pos, 1
    ne $S10, ucs4:"_", rx76_fail206
    add rx76_pos, 1
    goto rxquantr78_loop213
  rxquantr78_done214:
    rx76_cur."!cursor_pass"(rx76_pos, "octint", 'backtrack'=>1)
    .return (rx76_cur)
  rx76_restart205:
    repr_get_attr_obj rx76_cstack, rx76_cur, rx76_curclass, "$!cstack"
  rx76_fail206:
    unless rx76_bstack, rx76_done204
    pop $I19, rx76_bstack
    if_null rx76_cstack, rx76_cstack_done209
    unless rx76_cstack, rx76_cstack_done209
    dec $I19
    set $P11, rx76_cstack[$I19]
  rx76_cstack_done209:
    pop rx76_rep, rx76_bstack
    pop rx76_pos, rx76_bstack
    pop $I19, rx76_bstack
    lt rx76_pos, -1, rx76_done204
    lt rx76_pos, 0, rx76_fail206
    eq $I19, 0, rx76_fail206
    nqp_islist $I20, rx76_cstack
    unless $I20, rx76_jump207
    elements $I18, rx76_bstack
    le $I18, 0, rx76_cut208
    dec $I18
    set $I18, rx76_bstack[$I18]
  rx76_cut208:
    assign rx76_cstack, $I18
  rx76_jump207:
    jump $I19
  rx76_done204:
    rx76_cur."!cursor_fail"()
    .return (rx76_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_23_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx80_start
    .local string rx80_tgt
    .local int rx80_pos
    .local int rx80_off
    .local int rx80_eos
    .local int rx80_rep
    .local pmc rx80_cur
    .local pmc rx80_curclass
    .local pmc rx80_bstack
    .local pmc rx80_cstack
    rx80_start = self."!cursor_start_all"()
    set rx80_cur, rx80_start[0]
    set rx80_tgt, rx80_start[1]
    set rx80_pos, rx80_start[2]
    set rx80_curclass, rx80_start[3]
    set rx80_bstack, rx80_start[4]
    set $I19, rx80_start[5]
    store_lex unicode:"$\x{a2}", rx80_cur
    length rx80_eos, rx80_tgt
    eq $I19, 1, rx80_restart219
    gt rx80_pos, rx80_eos, rx80_fail220
    repr_get_attr_int $I11, self, rx80_curclass, "$!from"
    ne $I11, -1, rxscan81_done226
    goto rxscan81_scan225
  rxscan81_loop224:
    inc rx80_pos
    gt rx80_pos, rx80_eos, rx80_fail220
    repr_bind_attr_int rx80_cur, rx80_curclass, "$!from", rx80_pos
  rxscan81_scan225:
    nqp_rxmark rx80_bstack, rxscan81_loop224, rx80_pos, 0
  rxscan81_done226:
    nqp_rxmark rx80_bstack, rxquantr82_done228, -1, 0
  rxquantr82_loop227:
    repr_bind_attr_int rx80_cur, rx80_curclass, "$!pos", rx80_pos
    $P11 = rx80_cur."ws"()
    repr_get_attr_int $I11, $P11, rx80_curclass, "$!pos"
    lt $I11, 0, rx80_fail220
    repr_get_attr_int rx80_pos, $P11, rx80_curclass, "$!pos"
    repr_bind_attr_int rx80_cur, rx80_curclass, "$!pos", rx80_pos
    $P11 = rx80_cur."octint"()
    repr_get_attr_int $I11, $P11, rx80_curclass, "$!pos"
    lt $I11, 0, rx80_fail220
    nqp_rxmark rx80_bstack, rxsubrule84_pass230, -1, 0
  rxsubrule84_pass230:
    rx80_cstack = rx80_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx80_pos, $P11, rx80_curclass, "$!pos"
    repr_bind_attr_int rx80_cur, rx80_curclass, "$!pos", rx80_pos
    $P11 = rx80_cur."ws"()
    repr_get_attr_int $I11, $P11, rx80_curclass, "$!pos"
    lt $I11, 0, rx80_fail220
    repr_get_attr_int rx80_pos, $P11, rx80_curclass, "$!pos"
    nqp_rxpeek $I19, rx80_bstack, rxquantr82_done228
    inc $I19
    inc $I19
    set rx80_rep, rx80_bstack[$I19]
    nqp_rxcommit rx80_bstack, rxquantr82_done228
    inc rx80_rep
    nqp_rxmark rx80_bstack, rxquantr82_done228, rx80_pos, rx80_rep
    add $I11, rx80_pos, 1
    gt $I11, rx80_eos, rx80_fail220
    substr $S10, rx80_tgt, rx80_pos, 1
    ne $S10, ucs4:",", rx80_fail220
    add rx80_pos, 1
    goto rxquantr82_loop227
  rxquantr82_done228:
    rx80_cur."!cursor_pass"(rx80_pos, "octints", 'backtrack'=>1)
    .return (rx80_cur)
  rx80_restart219:
    repr_get_attr_obj rx80_cstack, rx80_cur, rx80_curclass, "$!cstack"
  rx80_fail220:
    unless rx80_bstack, rx80_done218
    pop $I19, rx80_bstack
    if_null rx80_cstack, rx80_cstack_done223
    unless rx80_cstack, rx80_cstack_done223
    dec $I19
    set $P11, rx80_cstack[$I19]
  rx80_cstack_done223:
    pop rx80_rep, rx80_bstack
    pop rx80_pos, rx80_bstack
    pop $I19, rx80_bstack
    lt rx80_pos, -1, rx80_done218
    lt rx80_pos, 0, rx80_fail220
    eq $I19, 0, rx80_fail220
    nqp_islist $I20, rx80_cstack
    unless $I20, rx80_jump221
    elements $I18, rx80_bstack
    le $I18, 0, rx80_cut222
    dec $I18
    set $I18, rx80_bstack[$I18]
  rx80_cut222:
    assign rx80_cstack, $I18
  rx80_jump221:
    jump $I19
  rx80_done218:
    rx80_cur."!cursor_fail"()
    .return (rx80_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_24_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx86_start
    .local string rx86_tgt
    .local int rx86_pos
    .local int rx86_off
    .local int rx86_eos
    .local int rx86_rep
    .local pmc rx86_cur
    .local pmc rx86_curclass
    .local pmc rx86_bstack
    .local pmc rx86_cstack
    rx86_start = self."!cursor_start_all"()
    set rx86_cur, rx86_start[0]
    set rx86_tgt, rx86_start[1]
    set rx86_pos, rx86_start[2]
    set rx86_curclass, rx86_start[3]
    set rx86_bstack, rx86_start[4]
    set $I19, rx86_start[5]
    store_lex unicode:"$\x{a2}", rx86_cur
    length rx86_eos, rx86_tgt
    eq $I19, 1, rx86_restart234
    gt rx86_pos, rx86_eos, rx86_fail235
    repr_get_attr_int $I11, self, rx86_curclass, "$!from"
    ne $I11, -1, rxscan87_done241
    goto rxscan87_scan240
  rxscan87_loop239:
    inc rx86_pos
    gt rx86_pos, rx86_eos, rx86_fail235
    repr_bind_attr_int rx86_cur, rx86_curclass, "$!from", rx86_pos
  rxscan87_scan240:
    nqp_rxmark rx86_bstack, rxscan87_loop239, rx86_pos, 0
  rxscan87_done241:
    nqp_rxmark rx86_bstack, rxquantr88_done243, -1, 0
  rxquantr88_loop242:
    nqp_rxmark rx86_bstack, rxquantr89_done245, -1, 0
  rxquantr89_loop244:
    ge rx86_pos, rx86_eos, rx86_fail235
    substr $S11, rx86_tgt, rx86_pos, 1
    index $I11, ucs4:"01", $S11
    lt $I11, 0, rx86_fail235
    inc rx86_pos
    nqp_rxpeek $I19, rx86_bstack, rxquantr89_done245
    inc $I19
    inc $I19
    set rx86_rep, rx86_bstack[$I19]
    nqp_rxcommit rx86_bstack, rxquantr89_done245
    inc rx86_rep
    nqp_rxmark rx86_bstack, rxquantr89_done245, rx86_pos, rx86_rep
    goto rxquantr89_loop244
  rxquantr89_done245:
    nqp_rxpeek $I19, rx86_bstack, rxquantr88_done243
    inc $I19
    inc $I19
    set rx86_rep, rx86_bstack[$I19]
    nqp_rxcommit rx86_bstack, rxquantr88_done243
    inc rx86_rep
    nqp_rxmark rx86_bstack, rxquantr88_done243, rx86_pos, rx86_rep
    add $I11, rx86_pos, 1
    gt $I11, rx86_eos, rx86_fail235
    substr $S10, rx86_tgt, rx86_pos, 1
    ne $S10, ucs4:"_", rx86_fail235
    add rx86_pos, 1
    goto rxquantr88_loop242
  rxquantr88_done243:
    rx86_cur."!cursor_pass"(rx86_pos, "binint", 'backtrack'=>1)
    .return (rx86_cur)
  rx86_restart234:
    repr_get_attr_obj rx86_cstack, rx86_cur, rx86_curclass, "$!cstack"
  rx86_fail235:
    unless rx86_bstack, rx86_done233
    pop $I19, rx86_bstack
    if_null rx86_cstack, rx86_cstack_done238
    unless rx86_cstack, rx86_cstack_done238
    dec $I19
    set $P11, rx86_cstack[$I19]
  rx86_cstack_done238:
    pop rx86_rep, rx86_bstack
    pop rx86_pos, rx86_bstack
    pop $I19, rx86_bstack
    lt rx86_pos, -1, rx86_done233
    lt rx86_pos, 0, rx86_fail235
    eq $I19, 0, rx86_fail235
    nqp_islist $I20, rx86_cstack
    unless $I20, rx86_jump236
    elements $I18, rx86_bstack
    le $I18, 0, rx86_cut237
    dec $I18
    set $I18, rx86_bstack[$I18]
  rx86_cut237:
    assign rx86_cstack, $I18
  rx86_jump236:
    jump $I19
  rx86_done233:
    rx86_cur."!cursor_fail"()
    .return (rx86_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_25_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx90_start
    .local string rx90_tgt
    .local int rx90_pos
    .local int rx90_off
    .local int rx90_eos
    .local int rx90_rep
    .local pmc rx90_cur
    .local pmc rx90_curclass
    .local pmc rx90_bstack
    .local pmc rx90_cstack
    rx90_start = self."!cursor_start_all"()
    set rx90_cur, rx90_start[0]
    set rx90_tgt, rx90_start[1]
    set rx90_pos, rx90_start[2]
    set rx90_curclass, rx90_start[3]
    set rx90_bstack, rx90_start[4]
    set $I19, rx90_start[5]
    store_lex unicode:"$\x{a2}", rx90_cur
    length rx90_eos, rx90_tgt
    eq $I19, 1, rx90_restart248
    gt rx90_pos, rx90_eos, rx90_fail249
    repr_get_attr_int $I11, self, rx90_curclass, "$!from"
    ne $I11, -1, rxscan91_done255
    goto rxscan91_scan254
  rxscan91_loop253:
    inc rx90_pos
    gt rx90_pos, rx90_eos, rx90_fail249
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!from", rx90_pos
  rxscan91_scan254:
    nqp_rxmark rx90_bstack, rxscan91_loop253, rx90_pos, 0
  rxscan91_done255:
    nqp_rxmark rx90_bstack, rxquantr92_done257, -1, 0
  rxquantr92_loop256:
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    $P11 = rx90_cur."ws"()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail249
    repr_get_attr_int rx90_pos, $P11, rx90_curclass, "$!pos"
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    $P11 = rx90_cur."binint"()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail249
    nqp_rxmark rx90_bstack, rxsubrule94_pass259, -1, 0
  rxsubrule94_pass259:
    rx90_cstack = rx90_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx90_pos, $P11, rx90_curclass, "$!pos"
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    $P11 = rx90_cur."ws"()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail249
    repr_get_attr_int rx90_pos, $P11, rx90_curclass, "$!pos"
    nqp_rxpeek $I19, rx90_bstack, rxquantr92_done257
    inc $I19
    inc $I19
    set rx90_rep, rx90_bstack[$I19]
    nqp_rxcommit rx90_bstack, rxquantr92_done257
    inc rx90_rep
    nqp_rxmark rx90_bstack, rxquantr92_done257, rx90_pos, rx90_rep
    add $I11, rx90_pos, 1
    gt $I11, rx90_eos, rx90_fail249
    substr $S10, rx90_tgt, rx90_pos, 1
    ne $S10, ucs4:",", rx90_fail249
    add rx90_pos, 1
    goto rxquantr92_loop256
  rxquantr92_done257:
    rx90_cur."!cursor_pass"(rx90_pos, "binints", 'backtrack'=>1)
    .return (rx90_cur)
  rx90_restart248:
    repr_get_attr_obj rx90_cstack, rx90_cur, rx90_curclass, "$!cstack"
  rx90_fail249:
    unless rx90_bstack, rx90_done247
    pop $I19, rx90_bstack
    if_null rx90_cstack, rx90_cstack_done252
    unless rx90_cstack, rx90_cstack_done252
    dec $I19
    set $P11, rx90_cstack[$I19]
  rx90_cstack_done252:
    pop rx90_rep, rx90_bstack
    pop rx90_pos, rx90_bstack
    pop $I19, rx90_bstack
    lt rx90_pos, -1, rx90_done247
    lt rx90_pos, 0, rx90_fail249
    eq $I19, 0, rx90_fail249
    nqp_islist $I20, rx90_cstack
    unless $I20, rx90_jump250
    elements $I18, rx90_bstack
    le $I18, 0, rx90_cut251
    dec $I18
    set $I18, rx90_bstack[$I18]
  rx90_cut251:
    assign rx90_cstack, $I18
  rx90_jump250:
    jump $I19
  rx90_done247:
    rx90_cur."!cursor_fail"()
    .return (rx90_cur) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_26_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx96_start
    .local string rx96_tgt
    .local int rx96_pos
    .local int rx96_off
    .local int rx96_eos
    .local int rx96_rep
    .local pmc rx96_cur
    .local pmc rx96_curclass
    .local pmc rx96_bstack
    .local pmc rx96_cstack
    rx96_start = self."!cursor_start_all"()
    set rx96_cur, rx96_start[0]
    set rx96_tgt, rx96_start[1]
    set rx96_pos, rx96_start[2]
    set rx96_curclass, rx96_start[3]
    set rx96_bstack, rx96_start[4]
    set $I19, rx96_start[5]
    store_lex unicode:"$\x{a2}", rx96_cur
    length rx96_eos, rx96_tgt
    eq $I19, 1, rx96_restart263
    gt rx96_pos, rx96_eos, rx96_fail264
    repr_get_attr_int $I11, self, rx96_curclass, "$!from"
    ne $I11, -1, rxscan97_done270
    goto rxscan97_scan269
  rxscan97_loop268:
    inc rx96_pos
    gt rx96_pos, rx96_eos, rx96_fail264
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!from", rx96_pos
  rxscan97_scan269:
    nqp_rxmark rx96_bstack, rxscan97_loop268, rx96_pos, 0
  rxscan97_done270:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt98_0272
    nqp_push_label $P11, alt98_1282
    nqp_rxmark rx96_bstack, alt98_end271, -1, 0
    rx96_cur."!alt"(rx96_pos, "alt_nfa__4_1361964161.416", $P11)
    goto rx96_fail264
  alt98_0272:
    add $I11, rx96_pos, 1
    gt $I11, rx96_eos, rx96_fail264
    substr $S10, rx96_tgt, rx96_pos, 1
    ne $S10, ucs4:"0", rx96_fail264
    add rx96_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt99_0274
    nqp_push_label $P11, alt99_1276
    nqp_push_label $P11, alt99_2278
    nqp_push_label $P11, alt99_3280
    nqp_rxmark rx96_bstack, alt99_end273, -1, 0
    rx96_cur."!alt"(rx96_pos, "alt_nfa__3_1361964161.415", $P11)
    goto rx96_fail264
  alt99_0274:
    add $I11, rx96_pos, 1
    gt $I11, rx96_eos, rx96_fail264
    substr $S10, rx96_tgt, rx96_pos, 1
    ne $S10, ucs4:"b", rx96_fail264
    add rx96_pos, 1
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!pos", rx96_pos
    $P11 = rx96_cur."binint"()
    repr_get_attr_int $I11, $P11, rx96_curclass, "$!pos"
    lt $I11, 0, rx96_fail264
    nqp_rxmark rx96_bstack, rxsubrule100_pass275, -1, 0
  rxsubrule100_pass275:
    rx96_cstack = rx96_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx96_pos, $P11, rx96_curclass, "$!pos"
    goto alt99_end273
  alt99_1276:
    add $I11, rx96_pos, 1
    gt $I11, rx96_eos, rx96_fail264
    substr $S10, rx96_tgt, rx96_pos, 1
    ne $S10, ucs4:"o", rx96_fail264
    add rx96_pos, 1
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!pos", rx96_pos
    $P11 = rx96_cur."octint"()
    repr_get_attr_int $I11, $P11, rx96_curclass, "$!pos"
    lt $I11, 0, rx96_fail264
    nqp_rxmark rx96_bstack, rxsubrule101_pass277, -1, 0
  rxsubrule101_pass277:
    rx96_cstack = rx96_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx96_pos, $P11, rx96_curclass, "$!pos"
    goto alt99_end273
  alt99_2278:
    add $I11, rx96_pos, 1
    gt $I11, rx96_eos, rx96_fail264
    substr $S10, rx96_tgt, rx96_pos, 1
    ne $S10, ucs4:"x", rx96_fail264
    add rx96_pos, 1
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!pos", rx96_pos
    $P11 = rx96_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx96_curclass, "$!pos"
    lt $I11, 0, rx96_fail264
    nqp_rxmark rx96_bstack, rxsubrule102_pass279, -1, 0
  rxsubrule102_pass279:
    rx96_cstack = rx96_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx96_pos, $P11, rx96_curclass, "$!pos"
    goto alt99_end273
  alt99_3280:
    add $I11, rx96_pos, 1
    gt $I11, rx96_eos, rx96_fail264
    substr $S10, rx96_tgt, rx96_pos, 1
    ne $S10, ucs4:"d", rx96_fail264
    add rx96_pos, 1
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!pos", rx96_pos
    $P11 = rx96_cur."decint"()
    repr_get_attr_int $I11, $P11, rx96_curclass, "$!pos"
    lt $I11, 0, rx96_fail264
    nqp_rxmark rx96_bstack, rxsubrule103_pass281, -1, 0
  rxsubrule103_pass281:
    rx96_cstack = rx96_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx96_pos, $P11, rx96_curclass, "$!pos"
    goto alt99_end273
  alt99_end273:
    nqp_rxcommit rx96_bstack, alt99_end273
    goto alt98_end271
  alt98_1282:
    repr_bind_attr_int rx96_cur, rx96_curclass, "$!pos", rx96_pos
    $P11 = rx96_cur."decint"()
    repr_get_attr_int $I11, $P11, rx96_curclass, "$!pos"
    lt $I11, 0, rx96_fail264
    nqp_rxmark rx96_bstack, rxsubrule104_pass283, -1, 0
  rxsubrule104_pass283:
    rx96_cstack = rx96_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx96_pos, $P11, rx96_curclass, "$!pos"
    goto alt98_end271
  alt98_end271:
    nqp_rxcommit rx96_bstack, alt98_end271
    rx96_cur."!cursor_pass"(rx96_pos, "integer", 'backtrack'=>1)
    .return (rx96_cur)
  rx96_restart263:
    repr_get_attr_obj rx96_cstack, rx96_cur, rx96_curclass, "$!cstack"
  rx96_fail264:
    unless rx96_bstack, rx96_done262
    pop $I19, rx96_bstack
    if_null rx96_cstack, rx96_cstack_done267
    unless rx96_cstack, rx96_cstack_done267
    dec $I19
    set $P11, rx96_cstack[$I19]
  rx96_cstack_done267:
    pop rx96_rep, rx96_bstack
    pop rx96_pos, rx96_bstack
    pop $I19, rx96_bstack
    lt rx96_pos, -1, rx96_done262
    lt rx96_pos, 0, rx96_fail264
    eq $I19, 0, rx96_fail264
    nqp_islist $I20, rx96_cstack
    unless $I20, rx96_jump265
    elements $I18, rx96_bstack
    le $I18, 0, rx96_cut266
    dec $I18
    set $I18, rx96_bstack[$I18]
  rx96_cut266:
    assign rx96_cstack, $I18
  rx96_jump265:
    jump $I19
  rx96_done262:
    rx96_cur."!cursor_fail"()
    .return (rx96_cur) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_27_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx105_start
    .local string rx105_tgt
    .local int rx105_pos
    .local int rx105_off
    .local int rx105_eos
    .local int rx105_rep
    .local pmc rx105_cur
    .local pmc rx105_curclass
    .local pmc rx105_bstack
    .local pmc rx105_cstack
    rx105_start = self."!cursor_start_all"()
    set rx105_cur, rx105_start[0]
    set rx105_tgt, rx105_start[1]
    set rx105_pos, rx105_start[2]
    set rx105_curclass, rx105_start[3]
    set rx105_bstack, rx105_start[4]
    set $I19, rx105_start[5]
    store_lex unicode:"$\x{a2}", rx105_cur
    length rx105_eos, rx105_tgt
    eq $I19, 1, rx105_restart286
    gt rx105_pos, rx105_eos, rx105_fail287
    repr_get_attr_int $I11, self, rx105_curclass, "$!from"
    ne $I11, -1, rxscan106_done293
    goto rxscan106_scan292
  rxscan106_loop291:
    inc rx105_pos
    gt rx105_pos, rx105_eos, rx105_fail287
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!from", rx105_pos
  rxscan106_scan292:
    nqp_rxmark rx105_bstack, rxscan106_loop291, rx105_pos, 0
  rxscan106_done293:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt107_0295
    nqp_push_label $P11, alt107_1304
    nqp_push_label $P11, alt107_2315
    nqp_rxmark rx105_bstack, alt107_end294, -1, 0
    rx105_cur."!alt"(rx105_pos, "alt_nfa__5_1361964161.435", $P11)
    goto rx105_fail287
  alt107_0295:
    nqp_rxmark rx105_bstack, rxcap108_fail297, rx105_pos, 0
    add $I11, rx105_pos, 1
    gt $I11, rx105_eos, rx105_fail287
    substr $S10, rx105_tgt, rx105_pos, 1
    ne $S10, ucs4:".", rx105_fail287
    add rx105_pos, 1
    nqp_rxmark rx105_bstack, rxquantr109_done299, -1, 0
  rxquantr109_loop298:
    ge rx105_pos, rx105_eos, rx105_fail287
    is_cclass $I11, .CCLASS_NUMERIC, rx105_tgt, rx105_pos
    unless $I11, rx105_fail287
    add rx105_pos, 1
    nqp_rxpeek $I19, rx105_bstack, rxquantr109_done299
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr109_done299
    inc rx105_rep
    nqp_rxmark rx105_bstack, rxquantr109_done299, rx105_pos, rx105_rep
    goto rxquantr109_loop298
  rxquantr109_done299:
    nqp_rxpeek $I19, rx105_bstack, rxcap108_fail297
    inc $I19
    set $I11, rx105_bstack[$I19]
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!pos", rx105_pos
    $P11 = rx105_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx105_pos)
    rx105_cstack = rx105_cur."!cursor_capture"($P11, "coeff")
    goto rxcap108_done296
  rxcap108_fail297:
    goto rx105_fail287
  rxcap108_done296:
    nqp_rxmark rx105_bstack, rxquantr110_done301, rx105_pos, 0
  rxquantr110_loop300:
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!pos", rx105_pos
    $P11 = rx105_cur."escale"()
    repr_get_attr_int $I11, $P11, rx105_curclass, "$!pos"
    lt $I11, 0, rx105_fail287
    goto rxsubrule111_pass302
  rxsubrule111_back303:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx105_curclass, "$!pos"
    lt $I11, 0, rx105_fail287
  rxsubrule111_pass302:
    rx105_cstack = rx105_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule111_back303
    push rx105_bstack, $I11
    push rx105_bstack, 0
    push rx105_bstack, rx105_pos
    elements $I11, rx105_cstack
    push rx105_bstack, $I11
    repr_get_attr_int rx105_pos, $P11, rx105_curclass, "$!pos"
    nqp_rxpeek $I19, rx105_bstack, rxquantr110_done301
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr110_done301
    inc rx105_rep
  rxquantr110_done301:
    goto alt107_end294
  alt107_1304:
    nqp_rxmark rx105_bstack, rxcap112_fail306, rx105_pos, 0
    nqp_rxmark rx105_bstack, rxquantr113_done308, -1, 0
  rxquantr113_loop307:
    ge rx105_pos, rx105_eos, rx105_fail287
    is_cclass $I11, .CCLASS_NUMERIC, rx105_tgt, rx105_pos
    unless $I11, rx105_fail287
    add rx105_pos, 1
    nqp_rxpeek $I19, rx105_bstack, rxquantr113_done308
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr113_done308
    inc rx105_rep
    nqp_rxmark rx105_bstack, rxquantr113_done308, rx105_pos, rx105_rep
    goto rxquantr113_loop307
  rxquantr113_done308:
    add $I11, rx105_pos, 1
    gt $I11, rx105_eos, rx105_fail287
    substr $S10, rx105_tgt, rx105_pos, 1
    ne $S10, ucs4:".", rx105_fail287
    add rx105_pos, 1
    nqp_rxmark rx105_bstack, rxquantr114_done310, -1, 0
  rxquantr114_loop309:
    ge rx105_pos, rx105_eos, rx105_fail287
    is_cclass $I11, .CCLASS_NUMERIC, rx105_tgt, rx105_pos
    unless $I11, rx105_fail287
    add rx105_pos, 1
    nqp_rxpeek $I19, rx105_bstack, rxquantr114_done310
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr114_done310
    inc rx105_rep
    nqp_rxmark rx105_bstack, rxquantr114_done310, rx105_pos, rx105_rep
    goto rxquantr114_loop309
  rxquantr114_done310:
    nqp_rxpeek $I19, rx105_bstack, rxcap112_fail306
    inc $I19
    set $I11, rx105_bstack[$I19]
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!pos", rx105_pos
    $P11 = rx105_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx105_pos)
    rx105_cstack = rx105_cur."!cursor_capture"($P11, "coeff")
    goto rxcap112_done305
  rxcap112_fail306:
    goto rx105_fail287
  rxcap112_done305:
    nqp_rxmark rx105_bstack, rxquantr115_done312, rx105_pos, 0
  rxquantr115_loop311:
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!pos", rx105_pos
    $P11 = rx105_cur."escale"()
    repr_get_attr_int $I11, $P11, rx105_curclass, "$!pos"
    lt $I11, 0, rx105_fail287
    goto rxsubrule116_pass313
  rxsubrule116_back314:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx105_curclass, "$!pos"
    lt $I11, 0, rx105_fail287
  rxsubrule116_pass313:
    rx105_cstack = rx105_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule116_back314
    push rx105_bstack, $I11
    push rx105_bstack, 0
    push rx105_bstack, rx105_pos
    elements $I11, rx105_cstack
    push rx105_bstack, $I11
    repr_get_attr_int rx105_pos, $P11, rx105_curclass, "$!pos"
    nqp_rxpeek $I19, rx105_bstack, rxquantr115_done312
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr115_done312
    inc rx105_rep
  rxquantr115_done312:
    goto alt107_end294
  alt107_2315:
    nqp_rxmark rx105_bstack, rxcap117_fail317, rx105_pos, 0
    nqp_rxmark rx105_bstack, rxquantr118_done319, -1, 0
  rxquantr118_loop318:
    ge rx105_pos, rx105_eos, rx105_fail287
    is_cclass $I11, .CCLASS_NUMERIC, rx105_tgt, rx105_pos
    unless $I11, rx105_fail287
    add rx105_pos, 1
    nqp_rxpeek $I19, rx105_bstack, rxquantr118_done319
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr118_done319
    inc rx105_rep
    nqp_rxmark rx105_bstack, rxquantr118_done319, rx105_pos, rx105_rep
    goto rxquantr118_loop318
  rxquantr118_done319:
    nqp_rxpeek $I19, rx105_bstack, rxcap117_fail317
    inc $I19
    set $I11, rx105_bstack[$I19]
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!pos", rx105_pos
    $P11 = rx105_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx105_pos)
    rx105_cstack = rx105_cur."!cursor_capture"($P11, "coeff")
    goto rxcap117_done316
  rxcap117_fail317:
    goto rx105_fail287
  rxcap117_done316:
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!pos", rx105_pos
    $P11 = rx105_cur."escale"()
    repr_get_attr_int $I11, $P11, rx105_curclass, "$!pos"
    lt $I11, 0, rx105_fail287
    nqp_rxmark rx105_bstack, rxsubrule119_pass320, -1, 0
  rxsubrule119_pass320:
    rx105_cstack = rx105_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx105_pos, $P11, rx105_curclass, "$!pos"
    goto alt107_end294
  alt107_end294:
    rx105_cur."!cursor_pass"(rx105_pos, "dec_number", 'backtrack'=>1)
    .return (rx105_cur)
  rx105_restart286:
    repr_get_attr_obj rx105_cstack, rx105_cur, rx105_curclass, "$!cstack"
  rx105_fail287:
    unless rx105_bstack, rx105_done285
    pop $I19, rx105_bstack
    if_null rx105_cstack, rx105_cstack_done290
    unless rx105_cstack, rx105_cstack_done290
    dec $I19
    set $P11, rx105_cstack[$I19]
  rx105_cstack_done290:
    pop rx105_rep, rx105_bstack
    pop rx105_pos, rx105_bstack
    pop $I19, rx105_bstack
    lt rx105_pos, -1, rx105_done285
    lt rx105_pos, 0, rx105_fail287
    eq $I19, 0, rx105_fail287
    nqp_islist $I20, rx105_cstack
    unless $I20, rx105_jump288
    elements $I18, rx105_bstack
    le $I18, 0, rx105_cut289
    dec $I18
    set $I18, rx105_bstack[$I18]
  rx105_cut289:
    assign rx105_cstack, $I18
  rx105_jump288:
    jump $I19
  rx105_done285:
    rx105_cur."!cursor_fail"()
    .return (rx105_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_28_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 85
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx120_start
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    .local pmc rx120_curclass
    .local pmc rx120_bstack
    .local pmc rx120_cstack
    rx120_start = self."!cursor_start_all"()
    set rx120_cur, rx120_start[0]
    set rx120_tgt, rx120_start[1]
    set rx120_pos, rx120_start[2]
    set rx120_curclass, rx120_start[3]
    set rx120_bstack, rx120_start[4]
    set $I19, rx120_start[5]
    store_lex unicode:"$\x{a2}", rx120_cur
    length rx120_eos, rx120_tgt
    eq $I19, 1, rx120_restart323
    gt rx120_pos, rx120_eos, rx120_fail324
    repr_get_attr_int $I11, self, rx120_curclass, "$!from"
    ne $I11, -1, rxscan121_done330
    goto rxscan121_scan329
  rxscan121_loop328:
    inc rx120_pos
    gt rx120_pos, rx120_eos, rx120_fail324
    repr_bind_attr_int rx120_cur, rx120_curclass, "$!from", rx120_pos
  rxscan121_scan329:
    nqp_rxmark rx120_bstack, rxscan121_loop328, rx120_pos, 0
  rxscan121_done330:
    ge rx120_pos, rx120_eos, rx120_fail324
    substr $S11, rx120_tgt, rx120_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx120_fail324
    inc rx120_pos
    nqp_rxmark rx120_bstack, rxquantr122_done332, rx120_pos, 0
  rxquantr122_loop331:
  alt123_0334:
    nqp_rxmark rx120_bstack, alt123_1335, rx120_pos, 0
    add $I11, rx120_pos, 1
    gt $I11, rx120_eos, rx120_fail324
    substr $S10, rx120_tgt, rx120_pos, 1
    ne $S10, ucs4:"-", rx120_fail324
    add rx120_pos, 1
    goto alt123_end333
  alt123_1335:
    ge rx120_pos, rx120_eos, rx120_fail324
    substr $S11, rx120_tgt, rx120_pos, 1
    index $I11, ucs4:"+", $S11
    lt $I11, 0, rx120_fail324
    inc rx120_pos
  alt123_end333:
    nqp_rxpeek $I19, rx120_bstack, rxquantr122_done332
    inc $I19
    inc $I19
    set rx120_rep, rx120_bstack[$I19]
    nqp_rxcommit rx120_bstack, rxquantr122_done332
    inc rx120_rep
  rxquantr122_done332:
    nqp_rxmark rx120_bstack, rxquantr124_done337, -1, 0
  rxquantr124_loop336:
    ge rx120_pos, rx120_eos, rx120_fail324
    is_cclass $I11, .CCLASS_NUMERIC, rx120_tgt, rx120_pos
    unless $I11, rx120_fail324
    add rx120_pos, 1
    nqp_rxpeek $I19, rx120_bstack, rxquantr124_done337
    inc $I19
    inc $I19
    set rx120_rep, rx120_bstack[$I19]
    nqp_rxcommit rx120_bstack, rxquantr124_done337
    inc rx120_rep
    nqp_rxmark rx120_bstack, rxquantr124_done337, rx120_pos, rx120_rep
    goto rxquantr124_loop336
  rxquantr124_done337:
    rx120_cur."!cursor_pass"(rx120_pos, "escale", 'backtrack'=>1)
    .return (rx120_cur)
  rx120_restart323:
    repr_get_attr_obj rx120_cstack, rx120_cur, rx120_curclass, "$!cstack"
  rx120_fail324:
    unless rx120_bstack, rx120_done322
    pop $I19, rx120_bstack
    if_null rx120_cstack, rx120_cstack_done327
    unless rx120_cstack, rx120_cstack_done327
    dec $I19
    set $P11, rx120_cstack[$I19]
  rx120_cstack_done327:
    pop rx120_rep, rx120_bstack
    pop rx120_pos, rx120_bstack
    pop $I19, rx120_bstack
    lt rx120_pos, -1, rx120_done322
    lt rx120_pos, 0, rx120_fail324
    eq $I19, 0, rx120_fail324
    nqp_islist $I20, rx120_cstack
    unless $I20, rx120_jump325
    elements $I18, rx120_bstack
    le $I18, 0, rx120_cut326
    dec $I18
    set $I18, rx120_bstack[$I18]
  rx120_cut326:
    assign rx120_cstack, $I18
  rx120_jump325:
    jump $I19
  rx120_done322:
    rx120_cur."!cursor_fail"()
    .return (rx120_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_29_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx125_start
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    .local pmc rx125_curclass
    .local pmc rx125_bstack
    .local pmc rx125_cstack
    rx125_start = self."!cursor_start_all"()
    set rx125_cur, rx125_start[0]
    set rx125_tgt, rx125_start[1]
    set rx125_pos, rx125_start[2]
    set rx125_curclass, rx125_start[3]
    set rx125_bstack, rx125_start[4]
    set $I19, rx125_start[5]
    store_lex unicode:"$\x{a2}", rx125_cur
    length rx125_eos, rx125_tgt
    eq $I19, 1, rx125_restart340
    gt rx125_pos, rx125_eos, rx125_fail341
    repr_get_attr_int $I11, self, rx125_curclass, "$!from"
    ne $I11, -1, rxscan126_done347
    goto rxscan126_scan346
  rxscan126_loop345:
    inc rx125_pos
    gt rx125_pos, rx125_eos, rx125_fail341
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!from", rx125_pos
  rxscan126_scan346:
    nqp_rxmark rx125_bstack, rxscan126_loop345, rx125_pos, 0
  rxscan126_done347:
    add $I11, rx125_pos, 2
    gt $I11, rx125_eos, rx125_fail341
    substr $S10, rx125_tgt, rx125_pos, 2
    ne $S10, ucs4:"\\\\", rx125_fail341
    add rx125_pos, 2
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!pos", rx125_pos
    $P11 = rx125_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx125_curclass, "$!pos"
    lt $I11, 0, rx125_fail341
    rx125_cur."!cursor_pass"(rx125_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx125_cur)
  rx125_restart340:
    repr_get_attr_obj rx125_cstack, rx125_cur, rx125_curclass, "$!cstack"
  rx125_fail341:
    unless rx125_bstack, rx125_done339
    pop $I19, rx125_bstack
    if_null rx125_cstack, rx125_cstack_done344
    unless rx125_cstack, rx125_cstack_done344
    dec $I19
    set $P11, rx125_cstack[$I19]
  rx125_cstack_done344:
    pop rx125_rep, rx125_bstack
    pop rx125_pos, rx125_bstack
    pop $I19, rx125_bstack
    lt rx125_pos, -1, rx125_done339
    lt rx125_pos, 0, rx125_fail341
    eq $I19, 0, rx125_fail341
    nqp_islist $I20, rx125_cstack
    unless $I20, rx125_jump342
    elements $I18, rx125_bstack
    le $I18, 0, rx125_cut343
    dec $I18
    set $I18, rx125_bstack[$I18]
  rx125_cut343:
    assign rx125_cstack, $I18
  rx125_jump342:
    jump $I19
  rx125_done339:
    rx125_cur."!cursor_fail"()
    .return (rx125_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx127_start
    .local string rx127_tgt
    .local int rx127_pos
    .local int rx127_off
    .local int rx127_eos
    .local int rx127_rep
    .local pmc rx127_cur
    .local pmc rx127_curclass
    .local pmc rx127_bstack
    .local pmc rx127_cstack
    rx127_start = self."!cursor_start_all"()
    set rx127_cur, rx127_start[0]
    set rx127_tgt, rx127_start[1]
    set rx127_pos, rx127_start[2]
    set rx127_curclass, rx127_start[3]
    set rx127_bstack, rx127_start[4]
    set $I19, rx127_start[5]
    store_lex unicode:"$\x{a2}", rx127_cur
    length rx127_eos, rx127_tgt
    eq $I19, 1, rx127_restart350
    gt rx127_pos, rx127_eos, rx127_fail351
    repr_get_attr_int $I11, self, rx127_curclass, "$!from"
    ne $I11, -1, rxscan128_done357
    goto rxscan128_scan356
  rxscan128_loop355:
    inc rx127_pos
    gt rx127_pos, rx127_eos, rx127_fail351
    repr_bind_attr_int rx127_cur, rx127_curclass, "$!from", rx127_pos
  rxscan128_scan356:
    nqp_rxmark rx127_bstack, rxscan128_loop355, rx127_pos, 0
  rxscan128_done357:
    add $I11, rx127_pos, 1
    gt $I11, rx127_eos, rx127_fail351
    substr $S10, rx127_tgt, rx127_pos, 1
    ne $S10, ucs4:"\\", rx127_fail351
    add rx127_pos, 1
    repr_bind_attr_int rx127_cur, rx127_curclass, "$!pos", rx127_pos
    $P11 = rx127_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx127_curclass, "$!pos"
    lt $I11, 0, rx127_fail351
    repr_bind_attr_int rx127_cur, rx127_curclass, "$!pos", rx127_pos
    $P11 = rx127_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx127_curclass, "$!pos"
    lt $I11, 0, rx127_fail351
    nqp_rxmark rx127_bstack, rxsubrule129_pass358, -1, 0
  rxsubrule129_pass358:
    rx127_cstack = rx127_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx127_pos, $P11, rx127_curclass, "$!pos"
    rx127_cur."!cursor_pass"(rx127_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx127_cur)
  rx127_restart350:
    repr_get_attr_obj rx127_cstack, rx127_cur, rx127_curclass, "$!cstack"
  rx127_fail351:
    unless rx127_bstack, rx127_done349
    pop $I19, rx127_bstack
    if_null rx127_cstack, rx127_cstack_done354
    unless rx127_cstack, rx127_cstack_done354
    dec $I19
    set $P11, rx127_cstack[$I19]
  rx127_cstack_done354:
    pop rx127_rep, rx127_bstack
    pop rx127_pos, rx127_bstack
    pop $I19, rx127_bstack
    lt rx127_pos, -1, rx127_done349
    lt rx127_pos, 0, rx127_fail351
    eq $I19, 0, rx127_fail351
    nqp_islist $I20, rx127_cstack
    unless $I20, rx127_jump352
    elements $I18, rx127_bstack
    le $I18, 0, rx127_cut353
    dec $I18
    set $I18, rx127_bstack[$I18]
  rx127_cut353:
    assign rx127_cstack, $I18
  rx127_jump352:
    jump $I19
  rx127_done349:
    rx127_cur."!cursor_fail"()
    .return (rx127_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_32_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
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
    eq $I19, 1, rx130_restart361
    gt rx130_pos, rx130_eos, rx130_fail362
    repr_get_attr_int $I11, self, rx130_curclass, "$!from"
    ne $I11, -1, rxscan131_done368
    goto rxscan131_scan367
  rxscan131_loop366:
    inc rx130_pos
    gt rx130_pos, rx130_eos, rx130_fail362
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!from", rx130_pos
  rxscan131_scan367:
    nqp_rxmark rx130_bstack, rxscan131_loop366, rx130_pos, 0
  rxscan131_done368:
    add $I11, rx130_pos, 2
    gt $I11, rx130_eos, rx130_fail362
    substr $S10, rx130_tgt, rx130_pos, 2
    ne $S10, ucs4:"\\b", rx130_fail362
    add rx130_pos, 2
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx130_curclass, "$!pos"
    lt $I11, 0, rx130_fail362
    rx130_cur."!cursor_pass"(rx130_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx130_cur)
  rx130_restart361:
    repr_get_attr_obj rx130_cstack, rx130_cur, rx130_curclass, "$!cstack"
  rx130_fail362:
    unless rx130_bstack, rx130_done360
    pop $I19, rx130_bstack
    if_null rx130_cstack, rx130_cstack_done365
    unless rx130_cstack, rx130_cstack_done365
    dec $I19
    set $P11, rx130_cstack[$I19]
  rx130_cstack_done365:
    pop rx130_rep, rx130_bstack
    pop rx130_pos, rx130_bstack
    pop $I19, rx130_bstack
    lt rx130_pos, -1, rx130_done360
    lt rx130_pos, 0, rx130_fail362
    eq $I19, 0, rx130_fail362
    nqp_islist $I20, rx130_cstack
    unless $I20, rx130_jump363
    elements $I18, rx130_bstack
    le $I18, 0, rx130_cut364
    dec $I18
    set $I18, rx130_bstack[$I18]
  rx130_cut364:
    assign rx130_cstack, $I18
  rx130_jump363:
    jump $I19
  rx130_done360:
    rx130_cur."!cursor_fail"()
    .return (rx130_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_33_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx132_start
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    .local pmc rx132_curclass
    .local pmc rx132_bstack
    .local pmc rx132_cstack
    rx132_start = self."!cursor_start_all"()
    set rx132_cur, rx132_start[0]
    set rx132_tgt, rx132_start[1]
    set rx132_pos, rx132_start[2]
    set rx132_curclass, rx132_start[3]
    set rx132_bstack, rx132_start[4]
    set $I19, rx132_start[5]
    store_lex unicode:"$\x{a2}", rx132_cur
    length rx132_eos, rx132_tgt
    eq $I19, 1, rx132_restart371
    gt rx132_pos, rx132_eos, rx132_fail372
    repr_get_attr_int $I11, self, rx132_curclass, "$!from"
    ne $I11, -1, rxscan133_done378
    goto rxscan133_scan377
  rxscan133_loop376:
    inc rx132_pos
    gt rx132_pos, rx132_eos, rx132_fail372
    repr_bind_attr_int rx132_cur, rx132_curclass, "$!from", rx132_pos
  rxscan133_scan377:
    nqp_rxmark rx132_bstack, rxscan133_loop376, rx132_pos, 0
  rxscan133_done378:
    add $I11, rx132_pos, 2
    gt $I11, rx132_eos, rx132_fail372
    substr $S10, rx132_tgt, rx132_pos, 2
    ne $S10, ucs4:"\\n", rx132_fail372
    add rx132_pos, 2
    repr_bind_attr_int rx132_cur, rx132_curclass, "$!pos", rx132_pos
    $P11 = rx132_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx132_curclass, "$!pos"
    lt $I11, 0, rx132_fail372
    rx132_cur."!cursor_pass"(rx132_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx132_cur)
  rx132_restart371:
    repr_get_attr_obj rx132_cstack, rx132_cur, rx132_curclass, "$!cstack"
  rx132_fail372:
    unless rx132_bstack, rx132_done370
    pop $I19, rx132_bstack
    if_null rx132_cstack, rx132_cstack_done375
    unless rx132_cstack, rx132_cstack_done375
    dec $I19
    set $P11, rx132_cstack[$I19]
  rx132_cstack_done375:
    pop rx132_rep, rx132_bstack
    pop rx132_pos, rx132_bstack
    pop $I19, rx132_bstack
    lt rx132_pos, -1, rx132_done370
    lt rx132_pos, 0, rx132_fail372
    eq $I19, 0, rx132_fail372
    nqp_islist $I20, rx132_cstack
    unless $I20, rx132_jump373
    elements $I18, rx132_bstack
    le $I18, 0, rx132_cut374
    dec $I18
    set $I18, rx132_bstack[$I18]
  rx132_cut374:
    assign rx132_cstack, $I18
  rx132_jump373:
    jump $I19
  rx132_done370:
    rx132_cur."!cursor_fail"()
    .return (rx132_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_34_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx134_start
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_curclass
    .local pmc rx134_bstack
    .local pmc rx134_cstack
    rx134_start = self."!cursor_start_all"()
    set rx134_cur, rx134_start[0]
    set rx134_tgt, rx134_start[1]
    set rx134_pos, rx134_start[2]
    set rx134_curclass, rx134_start[3]
    set rx134_bstack, rx134_start[4]
    set $I19, rx134_start[5]
    store_lex unicode:"$\x{a2}", rx134_cur
    length rx134_eos, rx134_tgt
    eq $I19, 1, rx134_restart381
    gt rx134_pos, rx134_eos, rx134_fail382
    repr_get_attr_int $I11, self, rx134_curclass, "$!from"
    ne $I11, -1, rxscan135_done388
    goto rxscan135_scan387
  rxscan135_loop386:
    inc rx134_pos
    gt rx134_pos, rx134_eos, rx134_fail382
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!from", rx134_pos
  rxscan135_scan387:
    nqp_rxmark rx134_bstack, rxscan135_loop386, rx134_pos, 0
  rxscan135_done388:
    add $I11, rx134_pos, 2
    gt $I11, rx134_eos, rx134_fail382
    substr $S10, rx134_tgt, rx134_pos, 2
    ne $S10, ucs4:"\\r", rx134_fail382
    add rx134_pos, 2
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail382
    rx134_cur."!cursor_pass"(rx134_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
    .return (rx134_cur)
  rx134_restart381:
    repr_get_attr_obj rx134_cstack, rx134_cur, rx134_curclass, "$!cstack"
  rx134_fail382:
    unless rx134_bstack, rx134_done380
    pop $I19, rx134_bstack
    if_null rx134_cstack, rx134_cstack_done385
    unless rx134_cstack, rx134_cstack_done385
    dec $I19
    set $P11, rx134_cstack[$I19]
  rx134_cstack_done385:
    pop rx134_rep, rx134_bstack
    pop rx134_pos, rx134_bstack
    pop $I19, rx134_bstack
    lt rx134_pos, -1, rx134_done380
    lt rx134_pos, 0, rx134_fail382
    eq $I19, 0, rx134_fail382
    nqp_islist $I20, rx134_cstack
    unless $I20, rx134_jump383
    elements $I18, rx134_bstack
    le $I18, 0, rx134_cut384
    dec $I18
    set $I18, rx134_bstack[$I18]
  rx134_cut384:
    assign rx134_cstack, $I18
  rx134_jump383:
    jump $I19
  rx134_done380:
    rx134_cur."!cursor_fail"()
    .return (rx134_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_35_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 94
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx136_start
    .local string rx136_tgt
    .local int rx136_pos
    .local int rx136_off
    .local int rx136_eos
    .local int rx136_rep
    .local pmc rx136_cur
    .local pmc rx136_curclass
    .local pmc rx136_bstack
    .local pmc rx136_cstack
    rx136_start = self."!cursor_start_all"()
    set rx136_cur, rx136_start[0]
    set rx136_tgt, rx136_start[1]
    set rx136_pos, rx136_start[2]
    set rx136_curclass, rx136_start[3]
    set rx136_bstack, rx136_start[4]
    set $I19, rx136_start[5]
    store_lex unicode:"$\x{a2}", rx136_cur
    length rx136_eos, rx136_tgt
    eq $I19, 1, rx136_restart391
    gt rx136_pos, rx136_eos, rx136_fail392
    repr_get_attr_int $I11, self, rx136_curclass, "$!from"
    ne $I11, -1, rxscan137_done398
    goto rxscan137_scan397
  rxscan137_loop396:
    inc rx136_pos
    gt rx136_pos, rx136_eos, rx136_fail392
    repr_bind_attr_int rx136_cur, rx136_curclass, "$!from", rx136_pos
  rxscan137_scan397:
    nqp_rxmark rx136_bstack, rxscan137_loop396, rx136_pos, 0
  rxscan137_done398:
    add $I11, rx136_pos, 2
    gt $I11, rx136_eos, rx136_fail392
    substr $S10, rx136_tgt, rx136_pos, 2
    ne $S10, ucs4:"\\t", rx136_fail392
    add rx136_pos, 2
    repr_bind_attr_int rx136_cur, rx136_curclass, "$!pos", rx136_pos
    $P11 = rx136_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx136_curclass, "$!pos"
    lt $I11, 0, rx136_fail392
    rx136_cur."!cursor_pass"(rx136_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
    .return (rx136_cur)
  rx136_restart391:
    repr_get_attr_obj rx136_cstack, rx136_cur, rx136_curclass, "$!cstack"
  rx136_fail392:
    unless rx136_bstack, rx136_done390
    pop $I19, rx136_bstack
    if_null rx136_cstack, rx136_cstack_done395
    unless rx136_cstack, rx136_cstack_done395
    dec $I19
    set $P11, rx136_cstack[$I19]
  rx136_cstack_done395:
    pop rx136_rep, rx136_bstack
    pop rx136_pos, rx136_bstack
    pop $I19, rx136_bstack
    lt rx136_pos, -1, rx136_done390
    lt rx136_pos, 0, rx136_fail392
    eq $I19, 0, rx136_fail392
    nqp_islist $I20, rx136_cstack
    unless $I20, rx136_jump393
    elements $I18, rx136_bstack
    le $I18, 0, rx136_cut394
    dec $I18
    set $I18, rx136_bstack[$I18]
  rx136_cut394:
    assign rx136_cstack, $I18
  rx136_jump393:
    jump $I19
  rx136_done390:
    rx136_cur."!cursor_fail"()
    .return (rx136_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_36_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 95
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx138_start
    .local string rx138_tgt
    .local int rx138_pos
    .local int rx138_off
    .local int rx138_eos
    .local int rx138_rep
    .local pmc rx138_cur
    .local pmc rx138_curclass
    .local pmc rx138_bstack
    .local pmc rx138_cstack
    rx138_start = self."!cursor_start_all"()
    set rx138_cur, rx138_start[0]
    set rx138_tgt, rx138_start[1]
    set rx138_pos, rx138_start[2]
    set rx138_curclass, rx138_start[3]
    set rx138_bstack, rx138_start[4]
    set $I19, rx138_start[5]
    store_lex unicode:"$\x{a2}", rx138_cur
    length rx138_eos, rx138_tgt
    eq $I19, 1, rx138_restart401
    gt rx138_pos, rx138_eos, rx138_fail402
    repr_get_attr_int $I11, self, rx138_curclass, "$!from"
    ne $I11, -1, rxscan139_done408
    goto rxscan139_scan407
  rxscan139_loop406:
    inc rx138_pos
    gt rx138_pos, rx138_eos, rx138_fail402
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!from", rx138_pos
  rxscan139_scan407:
    nqp_rxmark rx138_bstack, rxscan139_loop406, rx138_pos, 0
  rxscan139_done408:
    add $I11, rx138_pos, 2
    gt $I11, rx138_eos, rx138_fail402
    substr $S10, rx138_tgt, rx138_pos, 2
    ne $S10, ucs4:"\\f", rx138_fail402
    add rx138_pos, 2
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail402
    rx138_cur."!cursor_pass"(rx138_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
    .return (rx138_cur)
  rx138_restart401:
    repr_get_attr_obj rx138_cstack, rx138_cur, rx138_curclass, "$!cstack"
  rx138_fail402:
    unless rx138_bstack, rx138_done400
    pop $I19, rx138_bstack
    if_null rx138_cstack, rx138_cstack_done405
    unless rx138_cstack, rx138_cstack_done405
    dec $I19
    set $P11, rx138_cstack[$I19]
  rx138_cstack_done405:
    pop rx138_rep, rx138_bstack
    pop rx138_pos, rx138_bstack
    pop $I19, rx138_bstack
    lt rx138_pos, -1, rx138_done400
    lt rx138_pos, 0, rx138_fail402
    eq $I19, 0, rx138_fail402
    nqp_islist $I20, rx138_cstack
    unless $I20, rx138_jump403
    elements $I18, rx138_bstack
    le $I18, 0, rx138_cut404
    dec $I18
    set $I18, rx138_bstack[$I18]
  rx138_cut404:
    assign rx138_cstack, $I18
  rx138_jump403:
    jump $I19
  rx138_done400:
    rx138_cur."!cursor_fail"()
    .return (rx138_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_37_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 96
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx140_start
    .local string rx140_tgt
    .local int rx140_pos
    .local int rx140_off
    .local int rx140_eos
    .local int rx140_rep
    .local pmc rx140_cur
    .local pmc rx140_curclass
    .local pmc rx140_bstack
    .local pmc rx140_cstack
    rx140_start = self."!cursor_start_all"()
    set rx140_cur, rx140_start[0]
    set rx140_tgt, rx140_start[1]
    set rx140_pos, rx140_start[2]
    set rx140_curclass, rx140_start[3]
    set rx140_bstack, rx140_start[4]
    set $I19, rx140_start[5]
    store_lex unicode:"$\x{a2}", rx140_cur
    length rx140_eos, rx140_tgt
    eq $I19, 1, rx140_restart411
    gt rx140_pos, rx140_eos, rx140_fail412
    repr_get_attr_int $I11, self, rx140_curclass, "$!from"
    ne $I11, -1, rxscan141_done418
    goto rxscan141_scan417
  rxscan141_loop416:
    inc rx140_pos
    gt rx140_pos, rx140_eos, rx140_fail412
    repr_bind_attr_int rx140_cur, rx140_curclass, "$!from", rx140_pos
  rxscan141_scan417:
    nqp_rxmark rx140_bstack, rxscan141_loop416, rx140_pos, 0
  rxscan141_done418:
    add $I11, rx140_pos, 2
    gt $I11, rx140_eos, rx140_fail412
    substr $S10, rx140_tgt, rx140_pos, 2
    ne $S10, ucs4:"\\e", rx140_fail412
    add rx140_pos, 2
    repr_bind_attr_int rx140_cur, rx140_curclass, "$!pos", rx140_pos
    $P11 = rx140_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx140_curclass, "$!pos"
    lt $I11, 0, rx140_fail412
    rx140_cur."!cursor_pass"(rx140_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
    .return (rx140_cur)
  rx140_restart411:
    repr_get_attr_obj rx140_cstack, rx140_cur, rx140_curclass, "$!cstack"
  rx140_fail412:
    unless rx140_bstack, rx140_done410
    pop $I19, rx140_bstack
    if_null rx140_cstack, rx140_cstack_done415
    unless rx140_cstack, rx140_cstack_done415
    dec $I19
    set $P11, rx140_cstack[$I19]
  rx140_cstack_done415:
    pop rx140_rep, rx140_bstack
    pop rx140_pos, rx140_bstack
    pop $I19, rx140_bstack
    lt rx140_pos, -1, rx140_done410
    lt rx140_pos, 0, rx140_fail412
    eq $I19, 0, rx140_fail412
    nqp_islist $I20, rx140_cstack
    unless $I20, rx140_jump413
    elements $I18, rx140_bstack
    le $I18, 0, rx140_cut414
    dec $I18
    set $I18, rx140_bstack[$I18]
  rx140_cut414:
    assign rx140_cstack, $I18
  rx140_jump413:
    jump $I19
  rx140_done410:
    rx140_cur."!cursor_fail"()
    .return (rx140_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_38_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 97
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx142_start
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    .local pmc rx142_curclass
    .local pmc rx142_bstack
    .local pmc rx142_cstack
    rx142_start = self."!cursor_start_all"()
    set rx142_cur, rx142_start[0]
    set rx142_tgt, rx142_start[1]
    set rx142_pos, rx142_start[2]
    set rx142_curclass, rx142_start[3]
    set rx142_bstack, rx142_start[4]
    set $I19, rx142_start[5]
    store_lex unicode:"$\x{a2}", rx142_cur
    length rx142_eos, rx142_tgt
    eq $I19, 1, rx142_restart421
    gt rx142_pos, rx142_eos, rx142_fail422
    repr_get_attr_int $I11, self, rx142_curclass, "$!from"
    ne $I11, -1, rxscan143_done428
    goto rxscan143_scan427
  rxscan143_loop426:
    inc rx142_pos
    gt rx142_pos, rx142_eos, rx142_fail422
    repr_bind_attr_int rx142_cur, rx142_curclass, "$!from", rx142_pos
  rxscan143_scan427:
    nqp_rxmark rx142_bstack, rxscan143_loop426, rx142_pos, 0
  rxscan143_done428:
    add $I11, rx142_pos, 2
    gt $I11, rx142_eos, rx142_fail422
    substr $S10, rx142_tgt, rx142_pos, 2
    ne $S10, ucs4:"\\x", rx142_fail422
    add rx142_pos, 2
    repr_bind_attr_int rx142_cur, rx142_curclass, "$!pos", rx142_pos
    $P11 = rx142_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx142_curclass, "$!pos"
    lt $I11, 0, rx142_fail422
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt144_0430
    nqp_push_label $P11, alt144_1432
    nqp_rxmark rx142_bstack, alt144_end429, -1, 0
    rx142_cur."!alt"(rx142_pos, "alt_nfa__6_1361964161.51", $P11)
    goto rx142_fail422
  alt144_0430:
    repr_bind_attr_int rx142_cur, rx142_curclass, "$!pos", rx142_pos
    $P11 = rx142_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx142_curclass, "$!pos"
    lt $I11, 0, rx142_fail422
    nqp_rxmark rx142_bstack, rxsubrule145_pass431, -1, 0
  rxsubrule145_pass431:
    rx142_cstack = rx142_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx142_pos, $P11, rx142_curclass, "$!pos"
    goto alt144_end429
  alt144_1432:
    add $I11, rx142_pos, 1
    gt $I11, rx142_eos, rx142_fail422
    substr $S10, rx142_tgt, rx142_pos, 1
    ne $S10, ucs4:"[", rx142_fail422
    add rx142_pos, 1
    repr_bind_attr_int rx142_cur, rx142_curclass, "$!pos", rx142_pos
    $P11 = rx142_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx142_curclass, "$!pos"
    lt $I11, 0, rx142_fail422
    nqp_rxmark rx142_bstack, rxsubrule146_pass433, -1, 0
  rxsubrule146_pass433:
    rx142_cstack = rx142_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx142_pos, $P11, rx142_curclass, "$!pos"
    add $I11, rx142_pos, 1
    gt $I11, rx142_eos, rx142_fail422
    substr $S10, rx142_tgt, rx142_pos, 1
    ne $S10, ucs4:"]", rx142_fail422
    add rx142_pos, 1
    goto alt144_end429
  alt144_end429:
    nqp_rxcommit rx142_bstack, alt144_end429
    rx142_cur."!cursor_pass"(rx142_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
    .return (rx142_cur)
  rx142_restart421:
    repr_get_attr_obj rx142_cstack, rx142_cur, rx142_curclass, "$!cstack"
  rx142_fail422:
    unless rx142_bstack, rx142_done420
    pop $I19, rx142_bstack
    if_null rx142_cstack, rx142_cstack_done425
    unless rx142_cstack, rx142_cstack_done425
    dec $I19
    set $P11, rx142_cstack[$I19]
  rx142_cstack_done425:
    pop rx142_rep, rx142_bstack
    pop rx142_pos, rx142_bstack
    pop $I19, rx142_bstack
    lt rx142_pos, -1, rx142_done420
    lt rx142_pos, 0, rx142_fail422
    eq $I19, 0, rx142_fail422
    nqp_islist $I20, rx142_cstack
    unless $I20, rx142_jump423
    elements $I18, rx142_bstack
    le $I18, 0, rx142_cut424
    dec $I18
    set $I18, rx142_bstack[$I18]
  rx142_cut424:
    assign rx142_cstack, $I18
  rx142_jump423:
    jump $I19
  rx142_done420:
    rx142_cur."!cursor_fail"()
    .return (rx142_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_39_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx147_start
    .local string rx147_tgt
    .local int rx147_pos
    .local int rx147_off
    .local int rx147_eos
    .local int rx147_rep
    .local pmc rx147_cur
    .local pmc rx147_curclass
    .local pmc rx147_bstack
    .local pmc rx147_cstack
    rx147_start = self."!cursor_start_all"()
    set rx147_cur, rx147_start[0]
    set rx147_tgt, rx147_start[1]
    set rx147_pos, rx147_start[2]
    set rx147_curclass, rx147_start[3]
    set rx147_bstack, rx147_start[4]
    set $I19, rx147_start[5]
    store_lex unicode:"$\x{a2}", rx147_cur
    length rx147_eos, rx147_tgt
    eq $I19, 1, rx147_restart436
    gt rx147_pos, rx147_eos, rx147_fail437
    repr_get_attr_int $I11, self, rx147_curclass, "$!from"
    ne $I11, -1, rxscan148_done443
    goto rxscan148_scan442
  rxscan148_loop441:
    inc rx147_pos
    gt rx147_pos, rx147_eos, rx147_fail437
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!from", rx147_pos
  rxscan148_scan442:
    nqp_rxmark rx147_bstack, rxscan148_loop441, rx147_pos, 0
  rxscan148_done443:
    add $I11, rx147_pos, 2
    gt $I11, rx147_eos, rx147_fail437
    substr $S10, rx147_tgt, rx147_pos, 2
    ne $S10, ucs4:"\\o", rx147_fail437
    add rx147_pos, 2
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!pos", rx147_pos
    $P11 = rx147_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx147_curclass, "$!pos"
    lt $I11, 0, rx147_fail437
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt149_0445
    nqp_push_label $P11, alt149_1447
    nqp_rxmark rx147_bstack, alt149_end444, -1, 0
    rx147_cur."!alt"(rx147_pos, "alt_nfa__7_1361964161.524", $P11)
    goto rx147_fail437
  alt149_0445:
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!pos", rx147_pos
    $P11 = rx147_cur."octint"()
    repr_get_attr_int $I11, $P11, rx147_curclass, "$!pos"
    lt $I11, 0, rx147_fail437
    nqp_rxmark rx147_bstack, rxsubrule150_pass446, -1, 0
  rxsubrule150_pass446:
    rx147_cstack = rx147_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx147_pos, $P11, rx147_curclass, "$!pos"
    goto alt149_end444
  alt149_1447:
    add $I11, rx147_pos, 1
    gt $I11, rx147_eos, rx147_fail437
    substr $S10, rx147_tgt, rx147_pos, 1
    ne $S10, ucs4:"[", rx147_fail437
    add rx147_pos, 1
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!pos", rx147_pos
    $P11 = rx147_cur."octints"()
    repr_get_attr_int $I11, $P11, rx147_curclass, "$!pos"
    lt $I11, 0, rx147_fail437
    nqp_rxmark rx147_bstack, rxsubrule151_pass448, -1, 0
  rxsubrule151_pass448:
    rx147_cstack = rx147_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx147_pos, $P11, rx147_curclass, "$!pos"
    add $I11, rx147_pos, 1
    gt $I11, rx147_eos, rx147_fail437
    substr $S10, rx147_tgt, rx147_pos, 1
    ne $S10, ucs4:"]", rx147_fail437
    add rx147_pos, 1
    goto alt149_end444
  alt149_end444:
    nqp_rxcommit rx147_bstack, alt149_end444
    rx147_cur."!cursor_pass"(rx147_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx147_cur)
  rx147_restart436:
    repr_get_attr_obj rx147_cstack, rx147_cur, rx147_curclass, "$!cstack"
  rx147_fail437:
    unless rx147_bstack, rx147_done435
    pop $I19, rx147_bstack
    if_null rx147_cstack, rx147_cstack_done440
    unless rx147_cstack, rx147_cstack_done440
    dec $I19
    set $P11, rx147_cstack[$I19]
  rx147_cstack_done440:
    pop rx147_rep, rx147_bstack
    pop rx147_pos, rx147_bstack
    pop $I19, rx147_bstack
    lt rx147_pos, -1, rx147_done435
    lt rx147_pos, 0, rx147_fail437
    eq $I19, 0, rx147_fail437
    nqp_islist $I20, rx147_cstack
    unless $I20, rx147_jump438
    elements $I18, rx147_bstack
    le $I18, 0, rx147_cut439
    dec $I18
    set $I18, rx147_bstack[$I18]
  rx147_cut439:
    assign rx147_cstack, $I18
  rx147_jump438:
    jump $I19
  rx147_done435:
    rx147_cur."!cursor_fail"()
    .return (rx147_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_40_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx152_start
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    .local pmc rx152_curclass
    .local pmc rx152_bstack
    .local pmc rx152_cstack
    rx152_start = self."!cursor_start_all"()
    set rx152_cur, rx152_start[0]
    set rx152_tgt, rx152_start[1]
    set rx152_pos, rx152_start[2]
    set rx152_curclass, rx152_start[3]
    set rx152_bstack, rx152_start[4]
    set $I19, rx152_start[5]
    store_lex unicode:"$\x{a2}", rx152_cur
    length rx152_eos, rx152_tgt
    eq $I19, 1, rx152_restart451
    gt rx152_pos, rx152_eos, rx152_fail452
    repr_get_attr_int $I11, self, rx152_curclass, "$!from"
    ne $I11, -1, rxscan153_done458
    goto rxscan153_scan457
  rxscan153_loop456:
    inc rx152_pos
    gt rx152_pos, rx152_eos, rx152_fail452
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!from", rx152_pos
  rxscan153_scan457:
    nqp_rxmark rx152_bstack, rxscan153_loop456, rx152_pos, 0
  rxscan153_done458:
    add $I11, rx152_pos, 2
    gt $I11, rx152_eos, rx152_fail452
    substr $S10, rx152_tgt, rx152_pos, 2
    ne $S10, ucs4:"\\c", rx152_fail452
    add rx152_pos, 2
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!pos", rx152_pos
    $P11 = rx152_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx152_curclass, "$!pos"
    lt $I11, 0, rx152_fail452
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!pos", rx152_pos
    $P11 = rx152_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx152_curclass, "$!pos"
    lt $I11, 0, rx152_fail452
    nqp_rxmark rx152_bstack, rxsubrule154_pass459, -1, 0
  rxsubrule154_pass459:
    rx152_cstack = rx152_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx152_pos, $P11, rx152_curclass, "$!pos"
    rx152_cur."!cursor_pass"(rx152_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx152_cur)
  rx152_restart451:
    repr_get_attr_obj rx152_cstack, rx152_cur, rx152_curclass, "$!cstack"
  rx152_fail452:
    unless rx152_bstack, rx152_done450
    pop $I19, rx152_bstack
    if_null rx152_cstack, rx152_cstack_done455
    unless rx152_cstack, rx152_cstack_done455
    dec $I19
    set $P11, rx152_cstack[$I19]
  rx152_cstack_done455:
    pop rx152_rep, rx152_bstack
    pop rx152_pos, rx152_bstack
    pop $I19, rx152_bstack
    lt rx152_pos, -1, rx152_done450
    lt rx152_pos, 0, rx152_fail452
    eq $I19, 0, rx152_fail452
    nqp_islist $I20, rx152_cstack
    unless $I20, rx152_jump453
    elements $I18, rx152_bstack
    le $I18, 0, rx152_cut454
    dec $I18
    set $I18, rx152_bstack[$I18]
  rx152_cut454:
    assign rx152_cstack, $I18
  rx152_jump453:
    jump $I19
  rx152_done450:
    rx152_cur."!cursor_fail"()
    .return (rx152_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_41_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 106
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
    eq $I19, 1, rx155_restart462
    gt rx155_pos, rx155_eos, rx155_fail463
    repr_get_attr_int $I11, self, rx155_curclass, "$!from"
    ne $I11, -1, rxscan156_done469
    goto rxscan156_scan468
  rxscan156_loop467:
    inc rx155_pos
    gt rx155_pos, rx155_eos, rx155_fail463
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!from", rx155_pos
  rxscan156_scan468:
    nqp_rxmark rx155_bstack, rxscan156_loop467, rx155_pos, 0
  rxscan156_done469:
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail463
    substr $S10, rx155_tgt, rx155_pos, 1
    ne $S10, ucs4:"\\", rx155_fail463
    add rx155_pos, 1
    nqp_rxmark rx155_bstack, rxcap157_fail471, rx155_pos, 0
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail463
    substr $S10, rx155_tgt, rx155_pos, 1
    ne $S10, ucs4:"0", rx155_fail463
    add rx155_pos, 1
    nqp_rxpeek $I19, rx155_bstack, rxcap157_fail471
    inc $I19
    set $I11, rx155_bstack[$I19]
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx155_pos)
    rx155_cstack = rx155_cur."!cursor_capture"($P11, "sym")
    goto rxcap157_done470
  rxcap157_fail471:
    goto rx155_fail463
  rxcap157_done470:
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx155_curclass, "$!pos"
    lt $I11, 0, rx155_fail463
    rx155_cur."!cursor_pass"(rx155_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx155_cur)
  rx155_restart462:
    repr_get_attr_obj rx155_cstack, rx155_cur, rx155_curclass, "$!cstack"
  rx155_fail463:
    unless rx155_bstack, rx155_done461
    pop $I19, rx155_bstack
    if_null rx155_cstack, rx155_cstack_done466
    unless rx155_cstack, rx155_cstack_done466
    dec $I19
    set $P11, rx155_cstack[$I19]
  rx155_cstack_done466:
    pop rx155_rep, rx155_bstack
    pop rx155_pos, rx155_bstack
    pop $I19, rx155_bstack
    lt rx155_pos, -1, rx155_done461
    lt rx155_pos, 0, rx155_fail463
    eq $I19, 0, rx155_fail463
    nqp_islist $I20, rx155_cstack
    unless $I20, rx155_jump464
    elements $I18, rx155_bstack
    le $I18, 0, rx155_cut465
    dec $I18
    set $I18, rx155_bstack[$I18]
  rx155_cut465:
    assign rx155_cstack, $I18
  rx155_jump464:
    jump $I19
  rx155_done461:
    rx155_cur."!cursor_fail"()
    .return (rx155_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_42_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_189_1361964161.189' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_43_1361964161.189' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1361964161.189' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_190_1361964161.189' 
    capture_lex $P5009 
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
    eq $I19, 1, rx158_restart474
    gt rx158_pos, rx158_eos, rx158_fail475
    repr_get_attr_int $I11, self, rx158_curclass, "$!from"
    ne $I11, -1, rxscan159_done481
    goto rxscan159_scan480
  rxscan159_loop479:
    inc rx158_pos
    gt rx158_pos, rx158_eos, rx158_fail475
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!from", rx158_pos
  rxscan159_scan480:
    nqp_rxmark rx158_bstack, rxscan159_loop479, rx158_pos, 0
  rxscan159_done481:
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    store_lex unicode:"$\x{a2}", rx158_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_189_1361964161.189' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail475
    substr $S10, rx158_tgt, rx158_pos, 1
    ne $S10, ucs4:"\\", rx158_fail475
    add rx158_pos, 1
  alt160_0483:
    nqp_rxmark rx158_bstack, alt160_1512, rx158_pos, 0
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx158_curclass, "$!pos"
    lt $I11, 0, rx158_fail475
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt161_0485
    nqp_push_label $P11, alt161_1497
    nqp_rxmark rx158_bstack, alt161_end484, -1, 0
    rx158_cur."!alt"(rx158_pos, "alt_nfa__8_1361964161.561", $P11)
    goto rx158_fail475
  alt161_0485:
    .const 'Sub' $P5004 = 'cuid_43_1361964161.189' 
    capture_lex $P5004
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx158_curclass, "$!pos"
    lt $I11, 0, rx158_fail475
    nqp_rxmark rx158_bstack, rxsubrule164_pass496, -1, 0
  rxsubrule164_pass496:
    rx158_cstack = rx158_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx158_pos, $P11, rx158_curclass, "$!pos"
    goto alt161_end484
  alt161_1497:
    .const 'Sub' $P5005 = 'cuid_44_1361964161.189' 
    capture_lex $P5005
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx158_curclass, "$!pos"
    lt $I11, 0, rx158_fail475
    nqp_rxmark rx158_bstack, rxsubrule167_pass508, -1, 0
  rxsubrule167_pass508:
    rx158_cstack = rx158_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx158_pos, $P11, rx158_curclass, "$!pos"
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    store_lex unicode:"$\x{a2}", rx158_cur
    $P5006 = $P101."MATCH"()
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_190_1361964161.189' 
    capture_lex $P5007
    $P5008 = $P5007()
    goto alt161_end484
  alt161_end484:
    nqp_rxcommit rx158_bstack, alt161_end484
    goto alt160_end482
  alt160_1512:
    nqp_rxmark rx158_bstack, rxcap170_fail514, rx158_pos, 0
    ge rx158_pos, rx158_eos, rx158_fail475
    add rx158_pos, 1
    nqp_rxpeek $I19, rx158_bstack, rxcap170_fail514
    inc $I19
    set $I11, rx158_bstack[$I19]
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx158_pos)
    rx158_cstack = rx158_cur."!cursor_capture"($P11, "textq")
    goto rxcap170_done513
  rxcap170_fail514:
    goto rx158_fail475
  rxcap170_done513:
  alt160_end482:
    rx158_cur."!cursor_pass"(rx158_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx158_cur)
  rx158_restart474:
    repr_get_attr_obj rx158_cstack, rx158_cur, rx158_curclass, "$!cstack"
  rx158_fail475:
    unless rx158_bstack, rx158_done473
    pop $I19, rx158_bstack
    if_null rx158_cstack, rx158_cstack_done478
    unless rx158_cstack, rx158_cstack_done478
    dec $I19
    set $P11, rx158_cstack[$I19]
  rx158_cstack_done478:
    pop rx158_rep, rx158_bstack
    pop rx158_pos, rx158_bstack
    pop $I19, rx158_bstack
    lt rx158_pos, -1, rx158_done473
    lt rx158_pos, 0, rx158_fail475
    eq $I19, 0, rx158_fail475
    nqp_islist $I20, rx158_cstack
    unless $I20, rx158_jump476
    elements $I18, rx158_bstack
    le $I18, 0, rx158_cut477
    dec $I18
    set $I18, rx158_bstack[$I18]
  rx158_cut477:
    assign rx158_cstack, $I18
  rx158_jump476:
    jump $I19
  rx158_done473:
    rx158_cur."!cursor_fail"()
    .return (rx158_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1361964161.189") :anon :lex :outer("cuid_42_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1361964161.189") :anon :lex :outer("cuid_42_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx162_start
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_curclass
    .local pmc rx162_bstack
    .local pmc rx162_cstack
    rx162_start = self."!cursor_start_all"()
    set rx162_cur, rx162_start[0]
    set rx162_tgt, rx162_start[1]
    set rx162_pos, rx162_start[2]
    set rx162_curclass, rx162_start[3]
    set rx162_bstack, rx162_start[4]
    set $I19, rx162_start[5]
    store_lex unicode:"$\x{a2}", rx162_cur
    length rx162_eos, rx162_tgt
    eq $I19, 1, rx162_restart488
    gt rx162_pos, rx162_eos, rx162_fail489
    repr_get_attr_int $I11, self, rx162_curclass, "$!from"
    ne $I11, -1, rxscan163_done495
    goto rxscan163_scan494
  rxscan163_loop493:
    inc rx162_pos
    gt rx162_pos, rx162_eos, rx162_fail489
    repr_bind_attr_int rx162_cur, rx162_curclass, "$!from", rx162_pos
  rxscan163_scan494:
    nqp_rxmark rx162_bstack, rxscan163_loop493, rx162_pos, 0
  rxscan163_done495:
    ge rx162_pos, rx162_eos, rx162_fail489
    is_cclass $I11, .CCLASS_WORD, rx162_tgt, rx162_pos
    if $I11, rx162_fail489
    add rx162_pos, 1
    rx162_cur."!cursor_pass"(rx162_pos, 'backtrack'=>1)
    .return (rx162_cur)
  rx162_restart488:
    repr_get_attr_obj rx162_cstack, rx162_cur, rx162_curclass, "$!cstack"
  rx162_fail489:
    unless rx162_bstack, rx162_done487
    pop $I19, rx162_bstack
    if_null rx162_cstack, rx162_cstack_done492
    unless rx162_cstack, rx162_cstack_done492
    dec $I19
    set $P11, rx162_cstack[$I19]
  rx162_cstack_done492:
    pop rx162_rep, rx162_bstack
    pop rx162_pos, rx162_bstack
    pop $I19, rx162_bstack
    lt rx162_pos, -1, rx162_done487
    lt rx162_pos, 0, rx162_fail489
    eq $I19, 0, rx162_fail489
    nqp_islist $I20, rx162_cstack
    unless $I20, rx162_jump490
    elements $I18, rx162_bstack
    le $I18, 0, rx162_cut491
    dec $I18
    set $I18, rx162_bstack[$I18]
  rx162_cut491:
    assign rx162_cstack, $I18
  rx162_jump490:
    jump $I19
  rx162_done487:
    rx162_cur."!cursor_fail"()
    .return (rx162_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_44_1361964161.189") :anon :lex :outer("cuid_42_1361964161.189")
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
    eq $I19, 1, rx165_restart500
    gt rx165_pos, rx165_eos, rx165_fail501
    repr_get_attr_int $I11, self, rx165_curclass, "$!from"
    ne $I11, -1, rxscan166_done507
    goto rxscan166_scan506
  rxscan166_loop505:
    inc rx165_pos
    gt rx165_pos, rx165_eos, rx165_fail501
    repr_bind_attr_int rx165_cur, rx165_curclass, "$!from", rx165_pos
  rxscan166_scan506:
    nqp_rxmark rx165_bstack, rxscan166_loop505, rx165_pos, 0
  rxscan166_done507:
    ge rx165_pos, rx165_eos, rx165_fail501
    is_cclass $I11, .CCLASS_WORD, rx165_tgt, rx165_pos
    unless $I11, rx165_fail501
    add rx165_pos, 1
    rx165_cur."!cursor_pass"(rx165_pos, 'backtrack'=>1)
    .return (rx165_cur)
  rx165_restart500:
    repr_get_attr_obj rx165_cstack, rx165_cur, rx165_curclass, "$!cstack"
  rx165_fail501:
    unless rx165_bstack, rx165_done499
    pop $I19, rx165_bstack
    if_null rx165_cstack, rx165_cstack_done504
    unless rx165_cstack, rx165_cstack_done504
    dec $I19
    set $P11, rx165_cstack[$I19]
  rx165_cstack_done504:
    pop rx165_rep, rx165_bstack
    pop rx165_pos, rx165_bstack
    pop $I19, rx165_bstack
    lt rx165_pos, -1, rx165_done499
    lt rx165_pos, 0, rx165_fail501
    eq $I19, 0, rx165_fail501
    nqp_islist $I20, rx165_cstack
    unless $I20, rx165_jump502
    elements $I18, rx165_bstack
    le $I18, 0, rx165_cut503
    dec $I18
    set $I18, rx165_bstack[$I18]
  rx165_cut503:
    assign rx165_cstack, $I18
  rx165_jump502:
    jump $I19
  rx165_done499:
    rx165_cur."!cursor_fail"()
    .return (rx165_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1361964161.189") :anon :lex :outer("cuid_42_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 113
    .local pmc fb_tmp_1 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$/"
    set fb_tmp_1, $P5003
    repr_defined $I5001, fb_tmp_1
    unless $I5001 goto if168_else509 
    set $P5004, fb_tmp_1[0]
    set $P5006, $P5004
    goto if168_end510
  if168_else509:
    null $P5005
    set $P5006, $P5005
  if168_end510:
    unless_null $P5006, vivi_169511
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5006, $P5007
  vivi_169511:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_46_1361964161.189' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx171_start
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    .local pmc rx171_curclass
    .local pmc rx171_bstack
    .local pmc rx171_cstack
    rx171_start = self."!cursor_start_all"()
    set rx171_cur, rx171_start[0]
    set rx171_tgt, rx171_start[1]
    set rx171_pos, rx171_start[2]
    set rx171_curclass, rx171_start[3]
    set rx171_bstack, rx171_start[4]
    set $I19, rx171_start[5]
    store_lex unicode:"$\x{a2}", rx171_cur
    length rx171_eos, rx171_tgt
    eq $I19, 1, rx171_restart517
    gt rx171_pos, rx171_eos, rx171_fail518
    repr_get_attr_int $I11, self, rx171_curclass, "$!from"
    ne $I11, -1, rxscan172_done524
    goto rxscan172_scan523
  rxscan172_loop522:
    inc rx171_pos
    gt rx171_pos, rx171_eos, rx171_fail518
    repr_bind_attr_int rx171_cur, rx171_curclass, "$!from", rx171_pos
  rxscan172_scan523:
    nqp_rxmark rx171_bstack, rxscan172_loop522, rx171_pos, 0
  rxscan172_done524:
  alt173_0526:
    nqp_rxmark rx171_bstack, alt173_1528, rx171_pos, 0
    repr_bind_attr_int rx171_cur, rx171_curclass, "$!pos", rx171_pos
    $P11 = rx171_cur."integer"()
    repr_get_attr_int $I11, $P11, rx171_curclass, "$!pos"
    lt $I11, 0, rx171_fail518
    nqp_rxmark rx171_bstack, rxsubrule174_pass527, -1, 0
  rxsubrule174_pass527:
    rx171_cstack = rx171_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx171_pos, $P11, rx171_curclass, "$!pos"
    goto alt173_end525
  alt173_1528:
    ge rx171_pos, rx171_eos, rx171_fail518
    substr $S11, rx171_tgt, rx171_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx171_fail518
    inc rx171_pos
    set rx171_rep, 0
    nqp_rxmark rx171_bstack, rxquantf175_loop529, rx171_pos, rx171_rep
    goto rxquantf175_done530
  rxquantf175_loop529:
    set $I12, rx171_rep
    nqp_rxmark rx171_bstack, rxconj176_fail532, rx171_pos, 0
    goto rxconj176_first533
  rxconj176_fail532:
    goto rx171_fail518
  rxconj176_first533:
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail518
    substr $S10, rx171_tgt, rx171_pos, 1
    eq $S10, ucs4:"]", rx171_fail518
    add rx171_pos, 1
    nqp_rxpeek $I19, rx171_bstack, rxconj176_fail532
    inc $I19
    set $I11, rx171_bstack[$I19]
    nqp_rxmark rx171_bstack, rxconj176_fail532, $I11, rx171_pos
    set rx171_pos, $I11
    ge rx171_pos, rx171_eos, rx171_fail518
    substr $S11, rx171_tgt, rx171_pos, 1
    index $I11, ucs4:",#", $S11
    ge $I11, 0, rx171_fail518
    inc rx171_pos
    nqp_rxpeek $I19, rx171_bstack, rxconj176_fail532
    inc $I19
    set $I11, rx171_bstack[$I19]
    inc $I19
    set $I12, rx171_bstack[$I19]
    ne rx171_pos, $I12, rx171_fail518
    set rx171_pos, $I11
    ge rx171_pos, rx171_eos, rx171_fail518
    add rx171_pos, 1
    set rx171_rep, $I12
    inc rx171_rep
    nqp_rxmark rx171_bstack, rxquantf175_loop529, rx171_pos, rx171_rep
  rxquantf175_done530:
    ge rx171_pos, rx171_eos, rx171_fail518
    substr $S11, rx171_tgt, rx171_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx171_fail518
    inc rx171_pos
    .const 'Sub' $P5001 = 'cuid_46_1361964161.189' 
    capture_lex $P5001
    repr_bind_attr_int rx171_cur, rx171_curclass, "$!pos", rx171_pos
    $P11 = rx171_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx171_curclass, "$!pos"
    lt $I11, 0, rx171_fail518
  alt173_end525:
    rx171_cur."!cursor_pass"(rx171_pos, "charname", 'backtrack'=>1)
    .return (rx171_cur)
  rx171_restart517:
    repr_get_attr_obj rx171_cstack, rx171_cur, rx171_curclass, "$!cstack"
  rx171_fail518:
    unless rx171_bstack, rx171_done516
    pop $I19, rx171_bstack
    if_null rx171_cstack, rx171_cstack_done521
    unless rx171_cstack, rx171_cstack_done521
    dec $I19
    set $P11, rx171_cstack[$I19]
  rx171_cstack_done521:
    pop rx171_rep, rx171_bstack
    pop rx171_pos, rx171_bstack
    pop $I19, rx171_bstack
    lt rx171_pos, -1, rx171_done516
    lt rx171_pos, 0, rx171_fail518
    eq $I19, 0, rx171_fail518
    nqp_islist $I20, rx171_cstack
    unless $I20, rx171_jump519
    elements $I18, rx171_bstack
    le $I18, 0, rx171_cut520
    dec $I18
    set $I18, rx171_bstack[$I18]
  rx171_cut520:
    assign rx171_cstack, $I18
  rx171_jump519:
    jump $I19
  rx171_done516:
    rx171_cur."!cursor_fail"()
    .return (rx171_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_46_1361964161.189") :anon :lex :outer("cuid_45_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    eq $I19, 1, rx177_restart536
    gt rx177_pos, rx177_eos, rx177_fail537
    repr_get_attr_int $I11, self, rx177_curclass, "$!from"
    ne $I11, -1, rxscan178_done543
    goto rxscan178_scan542
  rxscan178_loop541:
    inc rx177_pos
    gt rx177_pos, rx177_eos, rx177_fail537
    repr_bind_attr_int rx177_cur, rx177_curclass, "$!from", rx177_pos
  rxscan178_scan542:
    nqp_rxmark rx177_bstack, rxscan178_loop541, rx177_pos, 0
  rxscan178_done543:
    nqp_rxmark rx177_bstack, rxquantr179_done545, rx177_pos, 0
  rxquantr179_loop544:
    ge rx177_pos, rx177_eos, rx177_fail537
    is_cclass $I11, .CCLASS_WHITESPACE, rx177_tgt, rx177_pos
    unless $I11, rx177_fail537
    add rx177_pos, 1
    nqp_rxpeek $I19, rx177_bstack, rxquantr179_done545
    inc $I19
    inc $I19
    set rx177_rep, rx177_bstack[$I19]
    nqp_rxcommit rx177_bstack, rxquantr179_done545
    inc rx177_rep
    nqp_rxmark rx177_bstack, rxquantr179_done545, rx177_pos, rx177_rep
    goto rxquantr179_loop544
  rxquantr179_done545:
  alt180_0547:
    nqp_rxmark rx177_bstack, alt180_1548, rx177_pos, 0
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail537
    substr $S10, rx177_tgt, rx177_pos, 1
    ne $S10, ucs4:"]", rx177_fail537
    add rx177_pos, 1
    goto alt180_end546
  alt180_1548:
    ge rx177_pos, rx177_eos, rx177_fail537
    substr $S11, rx177_tgt, rx177_pos, 1
    index $I11, ucs4:",#", $S11
    lt $I11, 0, rx177_fail537
    inc rx177_pos
  alt180_end546:
    rx177_cur."!cursor_pass"(rx177_pos, 'backtrack'=>1)
    .return (rx177_cur)
  rx177_restart536:
    repr_get_attr_obj rx177_cstack, rx177_cur, rx177_curclass, "$!cstack"
  rx177_fail537:
    unless rx177_bstack, rx177_done535
    pop $I19, rx177_bstack
    if_null rx177_cstack, rx177_cstack_done540
    unless rx177_cstack, rx177_cstack_done540
    dec $I19
    set $P11, rx177_cstack[$I19]
  rx177_cstack_done540:
    pop rx177_rep, rx177_bstack
    pop rx177_pos, rx177_bstack
    pop $I19, rx177_bstack
    lt rx177_pos, -1, rx177_done535
    lt rx177_pos, 0, rx177_fail537
    eq $I19, 0, rx177_fail537
    nqp_islist $I20, rx177_cstack
    unless $I20, rx177_jump538
    elements $I18, rx177_bstack
    le $I18, 0, rx177_cut539
    dec $I18
    set $I18, rx177_bstack[$I18]
  rx177_cut539:
    assign rx177_cstack, $I18
  rx177_jump538:
    jump $I19
  rx177_done535:
    rx177_cur."!cursor_fail"()
    .return (rx177_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_47_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 124
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx181_start
    .local string rx181_tgt
    .local int rx181_pos
    .local int rx181_off
    .local int rx181_eos
    .local int rx181_rep
    .local pmc rx181_cur
    .local pmc rx181_curclass
    .local pmc rx181_bstack
    .local pmc rx181_cstack
    rx181_start = self."!cursor_start_all"()
    set rx181_cur, rx181_start[0]
    set rx181_tgt, rx181_start[1]
    set rx181_pos, rx181_start[2]
    set rx181_curclass, rx181_start[3]
    set rx181_bstack, rx181_start[4]
    set $I19, rx181_start[5]
    store_lex unicode:"$\x{a2}", rx181_cur
    length rx181_eos, rx181_tgt
    eq $I19, 1, rx181_restart551
    gt rx181_pos, rx181_eos, rx181_fail552
    repr_get_attr_int $I11, self, rx181_curclass, "$!from"
    ne $I11, -1, rxscan182_done558
    goto rxscan182_scan557
  rxscan182_loop556:
    inc rx181_pos
    gt rx181_pos, rx181_eos, rx181_fail552
    repr_bind_attr_int rx181_cur, rx181_curclass, "$!from", rx181_pos
  rxscan182_scan557:
    nqp_rxmark rx181_bstack, rxscan182_loop556, rx181_pos, 0
  rxscan182_done558:
    nqp_rxmark rx181_bstack, rxquantr183_done560, -1, 0
  rxquantr183_loop559:
    repr_bind_attr_int rx181_cur, rx181_curclass, "$!pos", rx181_pos
    $P11 = rx181_cur."ws"()
    repr_get_attr_int $I11, $P11, rx181_curclass, "$!pos"
    lt $I11, 0, rx181_fail552
    repr_get_attr_int rx181_pos, $P11, rx181_curclass, "$!pos"
    repr_bind_attr_int rx181_cur, rx181_curclass, "$!pos", rx181_pos
    $P11 = rx181_cur."charname"()
    repr_get_attr_int $I11, $P11, rx181_curclass, "$!pos"
    lt $I11, 0, rx181_fail552
    nqp_rxmark rx181_bstack, rxsubrule185_pass562, -1, 0
  rxsubrule185_pass562:
    rx181_cstack = rx181_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx181_pos, $P11, rx181_curclass, "$!pos"
    repr_bind_attr_int rx181_cur, rx181_curclass, "$!pos", rx181_pos
    $P11 = rx181_cur."ws"()
    repr_get_attr_int $I11, $P11, rx181_curclass, "$!pos"
    lt $I11, 0, rx181_fail552
    repr_get_attr_int rx181_pos, $P11, rx181_curclass, "$!pos"
    nqp_rxpeek $I19, rx181_bstack, rxquantr183_done560
    inc $I19
    inc $I19
    set rx181_rep, rx181_bstack[$I19]
    nqp_rxcommit rx181_bstack, rxquantr183_done560
    inc rx181_rep
    nqp_rxmark rx181_bstack, rxquantr183_done560, rx181_pos, rx181_rep
    add $I11, rx181_pos, 1
    gt $I11, rx181_eos, rx181_fail552
    substr $S10, rx181_tgt, rx181_pos, 1
    ne $S10, ucs4:",", rx181_fail552
    add rx181_pos, 1
    goto rxquantr183_loop559
  rxquantr183_done560:
    rx181_cur."!cursor_pass"(rx181_pos, "charnames", 'backtrack'=>1)
    .return (rx181_cur)
  rx181_restart551:
    repr_get_attr_obj rx181_cstack, rx181_cur, rx181_curclass, "$!cstack"
  rx181_fail552:
    unless rx181_bstack, rx181_done550
    pop $I19, rx181_bstack
    if_null rx181_cstack, rx181_cstack_done555
    unless rx181_cstack, rx181_cstack_done555
    dec $I19
    set $P11, rx181_cstack[$I19]
  rx181_cstack_done555:
    pop rx181_rep, rx181_bstack
    pop rx181_pos, rx181_bstack
    pop $I19, rx181_bstack
    lt rx181_pos, -1, rx181_done550
    lt rx181_pos, 0, rx181_fail552
    eq $I19, 0, rx181_fail552
    nqp_islist $I20, rx181_cstack
    unless $I20, rx181_jump553
    elements $I18, rx181_bstack
    le $I18, 0, rx181_cut554
    dec $I18
    set $I18, rx181_bstack[$I18]
  rx181_cut554:
    assign rx181_cstack, $I18
  rx181_jump553:
    jump $I19
  rx181_done550:
    rx181_cur."!cursor_fail"()
    .return (rx181_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_48_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 125
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx187_start
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    .local pmc rx187_curclass
    .local pmc rx187_bstack
    .local pmc rx187_cstack
    rx187_start = self."!cursor_start_all"()
    set rx187_cur, rx187_start[0]
    set rx187_tgt, rx187_start[1]
    set rx187_pos, rx187_start[2]
    set rx187_curclass, rx187_start[3]
    set rx187_bstack, rx187_start[4]
    set $I19, rx187_start[5]
    store_lex unicode:"$\x{a2}", rx187_cur
    length rx187_eos, rx187_tgt
    eq $I19, 1, rx187_restart566
    gt rx187_pos, rx187_eos, rx187_fail567
    repr_get_attr_int $I11, self, rx187_curclass, "$!from"
    ne $I11, -1, rxscan188_done573
    goto rxscan188_scan572
  rxscan188_loop571:
    inc rx187_pos
    gt rx187_pos, rx187_eos, rx187_fail567
    repr_bind_attr_int rx187_cur, rx187_curclass, "$!from", rx187_pos
  rxscan188_scan572:
    nqp_rxmark rx187_bstack, rxscan188_loop571, rx187_pos, 0
  rxscan188_done573:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt189_0575
    nqp_push_label $P11, alt189_1577
    nqp_push_label $P11, alt189_2584
    nqp_push_label $P11, alt189_3585
    nqp_rxmark rx187_bstack, alt189_end574, -1, 0
    rx187_cur."!alt"(rx187_pos, "alt_nfa__9_1361964161.601", $P11)
    goto rx187_fail567
  alt189_0575:
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail567
    substr $S10, rx187_tgt, rx187_pos, 1
    ne $S10, ucs4:"[", rx187_fail567
    add rx187_pos, 1
    repr_bind_attr_int rx187_cur, rx187_curclass, "$!pos", rx187_pos
    $P11 = rx187_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx187_curclass, "$!pos"
    lt $I11, 0, rx187_fail567
    nqp_rxmark rx187_bstack, rxsubrule190_pass576, -1, 0
  rxsubrule190_pass576:
    rx187_cstack = rx187_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx187_pos, $P11, rx187_curclass, "$!pos"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail567
    substr $S10, rx187_tgt, rx187_pos, 1
    ne $S10, ucs4:"]", rx187_fail567
    add rx187_pos, 1
    goto alt189_end574
  alt189_1577:
    nqp_rxmark rx187_bstack, rxquantr191_done579, -1, 0
  rxquantr191_loop578:
    ge rx187_pos, rx187_eos, rx187_fail567
    is_cclass $I11, .CCLASS_NUMERIC, rx187_tgt, rx187_pos
    unless $I11, rx187_fail567
    add rx187_pos, 1
    nqp_rxpeek $I19, rx187_bstack, rxquantr191_done579
    inc $I19
    inc $I19
    set rx187_rep, rx187_bstack[$I19]
    nqp_rxcommit rx187_bstack, rxquantr191_done579
    inc rx187_rep
    nqp_rxmark rx187_bstack, rxquantr191_done579, rx187_pos, rx187_rep
    goto rxquantr191_loop578
  rxquantr191_done579:
    nqp_rxmark rx187_bstack, rxquantr192_done581, rx187_pos, 0
  rxquantr192_loop580:
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail567
    substr $S10, rx187_tgt, rx187_pos, 1
    ne $S10, ucs4:"_", rx187_fail567
    add rx187_pos, 1
    nqp_rxmark rx187_bstack, rxquantr193_done583, -1, 0
  rxquantr193_loop582:
    ge rx187_pos, rx187_eos, rx187_fail567
    is_cclass $I11, .CCLASS_NUMERIC, rx187_tgt, rx187_pos
    unless $I11, rx187_fail567
    add rx187_pos, 1
    nqp_rxpeek $I19, rx187_bstack, rxquantr193_done583
    inc $I19
    inc $I19
    set rx187_rep, rx187_bstack[$I19]
    nqp_rxcommit rx187_bstack, rxquantr193_done583
    inc rx187_rep
    nqp_rxmark rx187_bstack, rxquantr193_done583, rx187_pos, rx187_rep
    goto rxquantr193_loop582
  rxquantr193_done583:
    nqp_rxpeek $I19, rx187_bstack, rxquantr192_done581
    inc $I19
    inc $I19
    set rx187_rep, rx187_bstack[$I19]
    nqp_rxcommit rx187_bstack, rxquantr192_done581
    inc rx187_rep
    nqp_rxmark rx187_bstack, rxquantr192_done581, rx187_pos, rx187_rep
    goto rxquantr192_loop580
  rxquantr192_done581:
    goto alt189_end574
  alt189_2584:
    ge rx187_pos, rx187_eos, rx187_fail567
    substr $S11, rx187_tgt, rx187_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx187_fail567
    inc rx187_pos
    goto alt189_end574
  alt189_3585:
    repr_bind_attr_int rx187_cur, rx187_curclass, "$!pos", rx187_pos
    $P11 = rx187_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx187_curclass, "$!pos"
    lt $I11, 0, rx187_fail567
    repr_get_attr_int rx187_pos, $P11, rx187_curclass, "$!pos"
    goto alt189_end574
  alt189_end574:
    nqp_rxcommit rx187_bstack, alt189_end574
    rx187_cur."!cursor_pass"(rx187_pos, "charspec", 'backtrack'=>1)
    .return (rx187_cur)
  rx187_restart566:
    repr_get_attr_obj rx187_cstack, rx187_cur, rx187_curclass, "$!cstack"
  rx187_fail567:
    unless rx187_bstack, rx187_done565
    pop $I19, rx187_bstack
    if_null rx187_cstack, rx187_cstack_done570
    unless rx187_cstack, rx187_cstack_done570
    dec $I19
    set $P11, rx187_cstack[$I19]
  rx187_cstack_done570:
    pop rx187_rep, rx187_bstack
    pop rx187_pos, rx187_bstack
    pop $I19, rx187_bstack
    lt rx187_pos, -1, rx187_done565
    lt rx187_pos, 0, rx187_fail567
    eq $I19, 0, rx187_fail567
    nqp_islist $I20, rx187_cstack
    unless $I20, rx187_jump568
    elements $I18, rx187_bstack
    le $I18, 0, rx187_cut569
    dec $I18
    set $I18, rx187_bstack[$I18]
  rx187_cut569:
    assign rx187_cstack, $I18
  rx187_jump568:
    jump $I19
  rx187_done565:
    rx187_cur."!cursor_fail"()
    .return (rx187_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_49_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5015 = 'cuid_194_1361964161.189' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_195_1361964161.189' 
    capture_lex $P5015 
    .lex "%hash", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    .local pmc fb_tmp_2 
    if haz_param_1, default624
    nqp_get_sc_object $P5014, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_2, $P5014
  default624:
    new $P5001, 'Hash'
    set $P101, $P5001
    find_lex $P5002, "%ohash"
    set fb_tmp_2, $P5002
    repr_defined $I5001, fb_tmp_2
    unless $I5001 goto if195_else587 
    set $P5003, fb_tmp_2[_lex_param_1]
    set $P5005, $P5003
    goto if195_end588
  if195_else587:
    null $P5004
    set $P5005, $P5004
  if195_end588:
    unless_null $P5005, vivi_196589
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_196589:
    set $P101, $P5005
    if $P101 goto unless197_end591 
    .const 'Sub' $P5007 = 'cuid_194_1361964161.189' 
    capture_lex $P5007
    $P5008 = $P5007()
  unless197_end591:
    unless _lex_param_2 goto if211_else622 
.annotate 'line', 246
    find_lex $P5009, "%ohash"
    set $S5001, _lex_param_2
    set $P5009[$S5001], $P101
    nqp_decontainerize $P5010, _lex_param_0
    set $P5013, $P5010
    goto if211_end623
  if211_else622:
    .const 'Sub' $P5011 = 'cuid_195_1361964161.189' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if211_end623:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1361964161.189") :anon :lex :outer("cuid_49_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 182
    .const 'Sub' $P5008 = 'cuid_192_1361964161.189' 
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
  while198_test592:
    find_lex $S5002, "$spec"
    find_not_cclass $I5003, 32, $S5002, $I102, $I101
    set $I102, $I5003
    set $N5001, $I102
    set $N5002, $I101
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while198_done596 
  while198_redo594:
    .const 'Sub' $P5002 = 'cuid_192_1361964161.189' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while198_test592 
  while198_done596:
    find_lex $P5006, "%ohash"
    find_lex $S5003, "$spec"
    find_lex $P5007, "%hash"
    set $P5006[$S5003], $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1361964161.189") :anon :lex :outer("cuid_194_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 189
    .const 'Sub' $P5007 = 'cuid_191_1361964161.189' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_193_1361964161.189' 
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
    unless $I5002 goto if199_else597 
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
    goto if199_end598
  if199_else597:
    iseq $I5003, $S101, ":"
    unless $I5003 goto if200_else599 
    .const 'Sub' $P5001 = 'cuid_191_1361964161.189' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if200_end600
  if200_else599:
    .const 'Sub' $P5003 = 'cuid_193_1361964161.189' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if200_end600:
    set $P5006, $P5005
  if199_end598:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1361964161.189") :anon :lex :outer("cuid_192_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 195
    .lex "$value", $P101 
    .lex "$name", $P102 
    .local pmc tmp_2 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    unless $I5001 goto if201_end602 
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
  if201_end602:
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
    unless $I5011 goto if202_end604 
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
  if202_end604:
    find_lex $P5007, "%hash"
    set $S5011, $P102
    set $P5007[$S5011], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1361964161.189") :anon :lex :outer("cuid_192_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 222
    .lex "$index", $P101 
    .lex "$lookup", $P102 
    .lex "%lhash", $P103 
    .lex "$lhash_it", $P104 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    if $I5006 goto unless204_end608 
    set $N5003, $P101
    find_lex $I5008, "$lpos"
    set $N5004, $I5008
    isge $I5007, $N5003, $N5004
    set $I5009, $I5007
  unless204_end608:
    if $I5009 goto unless203_end606 
    set $I5010, $P101
    store_lex "$lpos", $I5010
  unless203_end606:
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
    set fb_tmp_3, $P5007
    repr_defined $I5015, fb_tmp_3
    unless $I5015 goto if205_else609 
    set $S5005, $P102
    set $P5008, fb_tmp_3[$S5005]
    set $P5010, $P5008
    goto if205_end610
  if205_else609:
    null $P5009
    set $P5010, $P5009
  if205_end610:
    unless_null $P5010, vivi_206611
    nqp_get_sc_object $P5011, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5010, $P5011
  vivi_206611:
    set $P103, $P5010
    if $P103 goto unless207_end613 
.annotate 'line', 232
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."panic"("Unknown operator precedence specification \"", $P102, "\"")
  unless207_end613:
    iter $P5015, $P103
    set $P104, $P5015
  while208_test614:
    set $P5022, $P104
    unless $P104 goto while208_done618 
  while208_redo616:
.annotate 'line', 235
    shift $P5016, $P104
    set $S5006, $P5016
    store_lex "$s", $S5006
    find_lex $P5017, "%hash"
    find_lex $S5007, "$s"
    set fb_tmp_4, $P103
    repr_defined $I5016, fb_tmp_4
    unless $I5016 goto if209_else619 
    find_lex $S5008, "$s"
    set $P5018, fb_tmp_4[$S5008]
    set $P5020, $P5018
    goto if209_end620
  if209_else619:
    null $P5019
    set $P5020, $P5019
  if209_end620:
    unless_null $P5020, vivi_210621
    nqp_get_sc_object $P5021, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5020, $P5021
  vivi_210621:
    set $P5017[$S5007], $P5020
    set $P5022, $P5020
    goto while208_test614 
  while208_done618:
    find_lex $I5017, "$lpos"
    store_lex "$pos", $I5017
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1361964161.189") :anon :lex :outer("cuid_49_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 250
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
.sub "panic" :subid("cuid_50_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 271
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_5 
    .local pmc pkg_lookup_tmp_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    set pkg_lookup_tmp_1, $P5008
    get_who $P5009, pkg_lookup_tmp_1
    exists $I5002, $P5009["HLL"]
    unless $I5002 goto if213_else627 
    get_who $P5011, pkg_lookup_tmp_1
    set $P5010, $P5011["HLL"]
    set $P5013, $P5010
    goto if213_end628
  if213_else627:
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5013, $P5012
  if213_end628:
    get_who $P5007, $P5013
    set fb_tmp_5, $P5007
    repr_defined $I5001, fb_tmp_5
    unless $I5001 goto if212_else625 
    set $P5014, fb_tmp_5["Compiler"]
    set $P5016, $P5014
    goto if212_end626
  if212_else625:
    null $P5015
    set $P5016, $P5015
  if212_end626:
    unless_null $P5016, vivi_214629
    nqp_get_sc_object $P5017, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5016, $P5017
  vivi_214629:
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
.sub "FAILGOAL" :subid("cuid_51_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_2, default632
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_2, $P5005
  default632:
    if _lex_param_2 goto unless215_end631 
.annotate 'line', 283
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless215_end631:
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
.sub "peek_delimiters" :subid("cuid_52_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_196_1361964161.189' 
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
    unless $I5001 goto if216_end634 
.annotate 'line', 304
.annotate 'line', 305
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if216_end634:
    is_cclass $I5002, 8192, $S101, 0
    unless $I5002 goto if217_end636 
.annotate 'line', 307
.annotate 'line', 308
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if217_end636:
    is_cclass $I5003, 32, $S101, 0
    unless $I5003 goto if218_end638 
.annotate 'line', 310
.annotate 'line', 311
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if218_end638:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if219_end640 
    .const 'Sub' $P5008 = 'cuid_196_1361964161.189' 
    capture_lex $P5008
    $P5009 = $P5008()
  if219_end640:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1361964161.189") :anon :lex :outer("cuid_52_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 317
    .lex "$len", $I101 
    .local pmc tmp_4 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if220_end642 
.annotate 'line', 319
.annotate 'line', 320
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if220_end642:
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
  while221_test643:
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
    unless $I5004 goto while221_done647 
  while221_redo645:
.annotate 'line', 328
    box $P5005, $I101
    set tmp_4, $P5005
    set $N5011, tmp_4
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5007, $N5010
    set $I101, $I5007
    set $P5005, tmp_4
    goto while221_test643 
  while221_done647:
    set $N5010, $I101
    set $N5011, 1
    isgt $I5007, $N5010, $N5011
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if222_end649 
.annotate 'line', 331
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if222_end649:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_53_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5028 = 'cuid_198_1361964161.189' 
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
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx223_start
    .local string rx223_tgt
    .local int rx223_pos
    .local int rx223_off
    .local int rx223_eos
    .local int rx223_rep
    .local pmc rx223_cur
    .local pmc rx223_curclass
    .local pmc rx223_bstack
    .local pmc rx223_cstack
    rx223_start = self."!cursor_start_all"()
    set rx223_cur, rx223_start[0]
    set rx223_tgt, rx223_start[1]
    set rx223_pos, rx223_start[2]
    set rx223_curclass, rx223_start[3]
    set rx223_bstack, rx223_start[4]
    set $I19, rx223_start[5]
    store_lex unicode:"$\x{a2}", rx223_cur
    length rx223_eos, rx223_tgt
    eq $I19, 1, rx223_restart652
    gt rx223_pos, rx223_eos, rx223_fail653
    repr_get_attr_int $I11, self, rx223_curclass, "$!from"
    ne $I11, -1, rxscan224_done659
    goto rxscan224_scan658
  rxscan224_loop657:
    inc rx223_pos
    gt rx223_pos, rx223_eos, rx223_fail653
    repr_bind_attr_int rx223_cur, rx223_curclass, "$!from", rx223_pos
  rxscan224_scan658:
    nqp_rxmark rx223_bstack, rxscan224_loop657, rx223_pos, 0
  rxscan224_done659:
    repr_bind_attr_int rx223_cur, rx223_curclass, "$!pos", rx223_pos
    store_lex unicode:"$\x{a2}", rx223_cur
    unless_null $P101, fallback660
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_6, pkg_viv_tmp_1
    repr_defined $I5001, fb_tmp_6
    unless $I5001 goto if225_else661 
    set $P5006, fb_tmp_6["%QUOTEMOD"]
    set $P5008, $P5006
    goto if225_end662
  if225_else661:
    null $P5007
    set $P5008, $P5007
  if225_end662:
    unless_null $P5008, vivi_226663
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%QUOTEMOD"], $P5009
    set $P5008, $P5009
  vivi_226663:
    unless_null $P5008, vivi_227664
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5010
  vivi_227664:
    set $P101, $P5008
  fallback660:
    repr_bind_attr_int rx223_cur, rx223_curclass, "$!pos", rx223_pos
    store_lex unicode:"$\x{a2}", rx223_cur
    unless_null $P102, fallback665
    nqp_get_sc_object $P5012, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5011, $P5012
    set fb_tmp_7, $P5011
    repr_defined $I5002, fb_tmp_7
    unless $I5002 goto if228_else666 
    set $P5013, fb_tmp_7["$QUOTE_START"]
    set $P5015, $P5013
    goto if228_end667
  if228_else666:
    null $P5014
    set $P5015, $P5014
  if228_end667:
    unless_null $P5015, vivi_229668
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5015, $P5016
  vivi_229668:
    unless_null $P5015, vivi_230669
    die "Contextual $*QUOTE_START not found"
    box $P5017, "Contextual $*QUOTE_START not found"
    set $P5015, $P5017
  vivi_230669:
    set $P102, $P5015
  fallback665:
    repr_bind_attr_int rx223_cur, rx223_curclass, "$!pos", rx223_pos
    store_lex unicode:"$\x{a2}", rx223_cur
    unless_null $P103, fallback670
    nqp_get_sc_object $P5019, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5018, $P5019
    set fb_tmp_8, $P5018
    repr_defined $I5003, fb_tmp_8
    unless $I5003 goto if231_else671 
    set $P5020, fb_tmp_8["$QUOTE_STOP"]
    set $P5022, $P5020
    goto if231_end672
  if231_else671:
    null $P5021
    set $P5022, $P5021
  if231_end672:
    unless_null $P5022, vivi_232673
    nqp_get_sc_object $P5023, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5022, $P5023
  vivi_232673:
    unless_null $P5022, vivi_233674
    die "Contextual $*QUOTE_STOP not found"
    box $P5024, "Contextual $*QUOTE_STOP not found"
    set $P5022, $P5024
  vivi_233674:
    set $P103, $P5022
  fallback670:
    repr_bind_attr_int rx223_cur, rx223_curclass, "$!pos", rx223_pos
    store_lex unicode:"$\x{a2}", rx223_cur
    $P5025 = $P104."MATCH"()
    set $P105, $P5025
    .const 'Sub' $P5026 = 'cuid_198_1361964161.189' 
    capture_lex $P5026
    $P5027 = $P5026()
    repr_bind_attr_int rx223_cur, rx223_curclass, "$!pos", rx223_pos
    $P11 = rx223_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx223_curclass, "$!pos"
    lt $I11, 0, rx223_fail653
    nqp_rxmark rx223_bstack, rxsubrule264_pass728, -1, 0
  rxsubrule264_pass728:
    rx223_cstack = rx223_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx223_pos, $P11, rx223_curclass, "$!pos"
    rx223_cur."!cursor_pass"(rx223_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx223_cur)
  rx223_restart652:
    repr_get_attr_obj rx223_cstack, rx223_cur, rx223_curclass, "$!cstack"
  rx223_fail653:
    unless rx223_bstack, rx223_done651
    pop $I19, rx223_bstack
    if_null rx223_cstack, rx223_cstack_done656
    unless rx223_cstack, rx223_cstack_done656
    dec $I19
    set $P11, rx223_cstack[$I19]
  rx223_cstack_done656:
    pop rx223_rep, rx223_bstack
    pop rx223_pos, rx223_bstack
    pop $I19, rx223_bstack
    lt rx223_pos, -1, rx223_done651
    lt rx223_pos, 0, rx223_fail653
    eq $I19, 0, rx223_fail653
    nqp_islist $I20, rx223_cstack
    unless $I20, rx223_jump654
    elements $I18, rx223_bstack
    le $I18, 0, rx223_cut655
    dec $I18
    set $I18, rx223_bstack[$I18]
  rx223_cut655:
    assign rx223_cstack, $I18
  rx223_jump654:
    jump $I19
  rx223_done651:
    rx223_cur."!cursor_fail"()
    .return (rx223_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1361964161.189") :anon :lex :outer("cuid_53_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 344
    .const 'Sub' $P5025 = 'cuid_197_1361964161.189' 
    capture_lex $P5025 
    .lex "@delims", $P101 
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next719:
    unless $P5004, for_done721
    shift $P5007, $P5004
  for_redo720:
    .const 'Sub' $P5006 = 'cuid_197_1361964161.189' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next719
  for_done721:
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
    unless $I5001 goto if260_else722 
    set $P5017, fb_tmp_17[0]
    set $P5019, $P5017
    goto if260_end723
  if260_else722:
    null $P5018
    set $P5019, $P5018
  if260_end723:
    unless_null $P5019, vivi_261724
    nqp_get_sc_object $P5020, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5019, $P5020
  vivi_261724:
    store_dynamic_lex "$*QUOTE_START", $P5019
    set fb_tmp_18, $P101
    repr_defined $I5002, fb_tmp_18
    unless $I5002 goto if262_else725 
    set $P5021, fb_tmp_18[1]
    set $P5023, $P5021
    goto if262_end726
  if262_else725:
    null $P5022
    set $P5023, $P5022
  if262_end726:
    unless_null $P5023, vivi_263727
    nqp_get_sc_object $P5024, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5023, $P5024
  vivi_263727:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1361964161.189") :anon :lex :outer("cuid_198_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    unless_null $P5002, fallback675
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_2, $P5003
    set fb_tmp_9, pkg_viv_tmp_2
    repr_defined $I5001, fb_tmp_9
    unless $I5001 goto if234_else676 
    set $P5005, fb_tmp_9["%QUOTEMOD"]
    set $P5007, $P5005
    goto if234_end677
  if234_else676:
    null $P5006
    set $P5007, $P5006
  if234_end677:
    unless_null $P5007, vivi_235678
    new $P5008, 'Hash'
    set pkg_viv_tmp_2["%QUOTEMOD"], $P5008
    set $P5007, $P5008
  vivi_235678:
    unless_null $P5007, vivi_236679
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5009
  vivi_236679:
    set $P5002, $P5007
  fallback675:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5002, $S5004, "qq"
    unless $I5002 goto if237_else680 
.annotate 'line', 348
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback682
    nqp_get_sc_object $P5013, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5012, $P5013
    set pkg_viv_tmp_3, $P5012
    set fb_tmp_10, pkg_viv_tmp_3
    repr_defined $I5003, fb_tmp_10
    unless $I5003 goto if238_else683 
    set $P5014, fb_tmp_10["%QUOTEMOD"]
    set $P5016, $P5014
    goto if238_end684
  if238_else683:
    null $P5015
    set $P5016, $P5015
  if238_end684:
    unless_null $P5016, vivi_239685
    new $P5017, 'Hash'
    set pkg_viv_tmp_3["%QUOTEMOD"], $P5017
    set $P5016, $P5017
  vivi_239685:
    unless_null $P5016, vivi_240686
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5016, $P5018
  vivi_240686:
    set $P5011, $P5016
  fallback682:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback687
    nqp_get_sc_object $P5022, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5021, $P5022
    set pkg_viv_tmp_4, $P5021
    set fb_tmp_11, pkg_viv_tmp_4
    repr_defined $I5004, fb_tmp_11
    unless $I5004 goto if241_else688 
    set $P5023, fb_tmp_11["%QUOTEMOD"]
    set $P5025, $P5023
    goto if241_end689
  if241_else688:
    null $P5024
    set $P5025, $P5024
  if241_end689:
    unless_null $P5025, vivi_242690
    new $P5026, 'Hash'
    set pkg_viv_tmp_4["%QUOTEMOD"], $P5026
    set $P5025, $P5026
  vivi_242690:
    unless_null $P5025, vivi_243691
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5025, $P5027
  vivi_243691:
    set $P5020, $P5025
  fallback687:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback692
    nqp_get_sc_object $P5031, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5030, $P5031
    set pkg_viv_tmp_5, $P5030
    set fb_tmp_12, pkg_viv_tmp_5
    repr_defined $I5005, fb_tmp_12
    unless $I5005 goto if244_else693 
    set $P5032, fb_tmp_12["%QUOTEMOD"]
    set $P5034, $P5032
    goto if244_end694
  if244_else693:
    null $P5033
    set $P5034, $P5033
  if244_end694:
    unless_null $P5034, vivi_245695
    new $P5035, 'Hash'
    set pkg_viv_tmp_5["%QUOTEMOD"], $P5035
    set $P5034, $P5035
  vivi_245695:
    unless_null $P5034, vivi_246696
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5034, $P5036
  vivi_246696:
    set $P5029, $P5034
  fallback692:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback697
    nqp_get_sc_object $P5040, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5039, $P5040
    set pkg_viv_tmp_6, $P5039
    set fb_tmp_13, pkg_viv_tmp_6
    repr_defined $I5006, fb_tmp_13
    unless $I5006 goto if247_else698 
    set $P5041, fb_tmp_13["%QUOTEMOD"]
    set $P5043, $P5041
    goto if247_end699
  if247_else698:
    null $P5042
    set $P5043, $P5042
  if247_end699:
    unless_null $P5043, vivi_248700
    new $P5044, 'Hash'
    set pkg_viv_tmp_6["%QUOTEMOD"], $P5044
    set $P5043, $P5044
  vivi_248700:
    unless_null $P5043, vivi_249701
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5043, $P5045
  vivi_249701:
    set $P5038, $P5043
  fallback697:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback702
    nqp_get_sc_object $P5049, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5048, $P5049
    set pkg_viv_tmp_7, $P5048
    set fb_tmp_14, pkg_viv_tmp_7
    repr_defined $I5007, fb_tmp_14
    unless $I5007 goto if250_else703 
    set $P5050, fb_tmp_14["%QUOTEMOD"]
    set $P5052, $P5050
    goto if250_end704
  if250_else703:
    null $P5051
    set $P5052, $P5051
  if250_end704:
    unless_null $P5052, vivi_251705
    new $P5053, 'Hash'
    set pkg_viv_tmp_7["%QUOTEMOD"], $P5053
    set $P5052, $P5053
  vivi_251705:
    unless_null $P5052, vivi_252706
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5052, $P5054
  vivi_252706:
    set $P5047, $P5052
  fallback702:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback707
    nqp_get_sc_object $P5058, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5057, $P5058
    set pkg_viv_tmp_8, $P5057
    set fb_tmp_15, pkg_viv_tmp_8
    repr_defined $I5008, fb_tmp_15
    unless $I5008 goto if253_else708 
    set $P5059, fb_tmp_15["%QUOTEMOD"]
    set $P5061, $P5059
    goto if253_end709
  if253_else708:
    null $P5060
    set $P5061, $P5060
  if253_end709:
    unless_null $P5061, vivi_254710
    new $P5062, 'Hash'
    set pkg_viv_tmp_8["%QUOTEMOD"], $P5062
    set $P5061, $P5062
  vivi_254710:
    unless_null $P5061, vivi_255711
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5061, $P5063
  vivi_255711:
    set $P5056, $P5061
  fallback707:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if237_end681
  if237_else680:
    set $S5005, _lex_param_0
    iseq $I5009, $S5005, "b"
    box $P5075, $I5009
    set $P5074, $P5075
    unless $I5009 goto if256_end713 
.annotate 'line', 356
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback714
    nqp_get_sc_object $P5067, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5066, $P5067
    set pkg_viv_tmp_9, $P5066
    set fb_tmp_16, pkg_viv_tmp_9
    repr_defined $I5010, fb_tmp_16
    unless $I5010 goto if257_else715 
    set $P5068, fb_tmp_16["%QUOTEMOD"]
    set $P5070, $P5068
    goto if257_end716
  if257_else715:
    null $P5069
    set $P5070, $P5069
  if257_end716:
    unless_null $P5070, vivi_258717
    new $P5071, 'Hash'
    set pkg_viv_tmp_9["%QUOTEMOD"], $P5071
    set $P5070, $P5071
  vivi_258717:
    unless_null $P5070, vivi_259718
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5070, $P5072
  vivi_259718:
    set $P5065, $P5070
  fallback714:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if256_end713:
    set $P5076, $P5074
  if237_end681:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_54_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_199_1361964161.189' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx265_start
    .local string rx265_tgt
    .local int rx265_pos
    .local int rx265_off
    .local int rx265_eos
    .local int rx265_rep
    .local pmc rx265_cur
    .local pmc rx265_curclass
    .local pmc rx265_bstack
    .local pmc rx265_cstack
    rx265_start = self."!cursor_start_all"()
    set rx265_cur, rx265_start[0]
    set rx265_tgt, rx265_start[1]
    set rx265_pos, rx265_start[2]
    set rx265_curclass, rx265_start[3]
    set rx265_bstack, rx265_start[4]
    set $I19, rx265_start[5]
    store_lex unicode:"$\x{a2}", rx265_cur
    length rx265_eos, rx265_tgt
    eq $I19, 1, rx265_restart731
    gt rx265_pos, rx265_eos, rx265_fail732
    repr_get_attr_int $I11, self, rx265_curclass, "$!from"
    ne $I11, -1, rxscan266_done738
    goto rxscan266_scan737
  rxscan266_loop736:
    inc rx265_pos
    gt rx265_pos, rx265_eos, rx265_fail732
    repr_bind_attr_int rx265_cur, rx265_curclass, "$!from", rx265_pos
  rxscan266_scan737:
    nqp_rxmark rx265_bstack, rxscan266_loop736, rx265_pos, 0
  rxscan266_done738:
    repr_bind_attr_int rx265_cur, rx265_curclass, "$!pos", rx265_pos
    store_lex unicode:"$\x{a2}", rx265_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_199_1361964161.189' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx265_fail732
    rx265_cur."!cursor_pass"(rx265_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx265_cur)
  rx265_restart731:
    repr_get_attr_obj rx265_cstack, rx265_cur, rx265_curclass, "$!cstack"
  rx265_fail732:
    unless rx265_bstack, rx265_done730
    pop $I19, rx265_bstack
    if_null rx265_cstack, rx265_cstack_done735
    unless rx265_cstack, rx265_cstack_done735
    dec $I19
    set $P11, rx265_cstack[$I19]
  rx265_cstack_done735:
    pop rx265_rep, rx265_bstack
    pop rx265_pos, rx265_bstack
    pop $I19, rx265_bstack
    lt rx265_pos, -1, rx265_done730
    lt rx265_pos, 0, rx265_fail732
    eq $I19, 0, rx265_fail732
    nqp_islist $I20, rx265_cstack
    unless $I20, rx265_jump733
    elements $I18, rx265_bstack
    le $I18, 0, rx265_cut734
    dec $I18
    set $I18, rx265_bstack[$I18]
  rx265_cut734:
    assign rx265_cstack, $I18
  rx265_jump733:
    jump $I19
  rx265_done730:
    rx265_cur."!cursor_fail"()
    .return (rx265_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1361964161.189") :anon :lex :outer("cuid_54_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 369
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc pkg_viv_tmp_10 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback741
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_10, $P5002
    set fb_tmp_20, pkg_viv_tmp_10
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if268_else742 
    set $P5004, fb_tmp_20["%QUOTEMOD"]
    set $P5006, $P5004
    goto if268_end743
  if268_else742:
    null $P5005
    set $P5006, $P5005
  if268_end743:
    unless_null $P5006, vivi_269744
    new $P5007, 'Hash'
    set pkg_viv_tmp_10["%QUOTEMOD"], $P5007
    set $P5006, $P5007
  vivi_269744:
    unless_null $P5006, vivi_270745
    die "Contextual %*QUOTEMOD not found"
    box $P5008, "Contextual %*QUOTEMOD not found"
    set $P5006, $P5008
  vivi_270745:
    set $P5001, $P5006
  fallback741:
    set fb_tmp_19, $P5001
    repr_defined $I5001, fb_tmp_19
    unless $I5001 goto if267_else739 
    find_lex $S5001, "$mod"
    set $P5009, fb_tmp_19[$S5001]
    set $P5011, $P5009
    goto if267_end740
  if267_else739:
    null $P5010
    set $P5011, $P5010
  if267_end740:
    unless_null $P5011, vivi_271746
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5012
  vivi_271746:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_55_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .lex "$start", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_21 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_START"
    unless_null $P5002, fallback747
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5003, $P5004
    set fb_tmp_21, $P5003
    repr_defined $I5001, fb_tmp_21
    unless $I5001 goto if272_else748 
    set $P5005, fb_tmp_21["$QUOTE_START"]
    set $P5007, $P5005
    goto if272_end749
  if272_else748:
    null $P5006
    set $P5007, $P5006
  if272_end749:
    unless_null $P5007, vivi_273750
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_273750:
    unless_null $P5007, vivi_274751
    die "Contextual $*QUOTE_START not found"
    box $P5009, "Contextual $*QUOTE_START not found"
    set $P5007, $P5009
  vivi_274751:
    set $P5002, $P5007
  fallback747:
    set $P101, $P5002
    isnull $I5002, $P101
    unless $I5002 goto if275_else752 
.annotate 'line', 375
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_cur"()
    set $P5014, $P5011
    goto if275_end753
  if275_else752:
.annotate 'line', 376
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if275_end753:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_56_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 379
    .param pmc _lex_param_0 
    .lex "$stop", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_22 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_STOP"
    unless_null $P5002, fallback754
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5003, $P5004
    set fb_tmp_22, $P5003
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if276_else755 
    set $P5005, fb_tmp_22["$QUOTE_STOP"]
    set $P5007, $P5005
    goto if276_end756
  if276_else755:
    null $P5006
    set $P5007, $P5006
  if276_end756:
    unless_null $P5007, vivi_277757
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_277757:
    unless_null $P5007, vivi_278758
    die "Contextual $*QUOTE_STOP not found"
    box $P5009, "Contextual $*QUOTE_STOP not found"
    set $P5007, $P5009
  vivi_278758:
    set $P5002, $P5007
  fallback754:
    set $P101, $P5002
    isnull $I5002, $P101
    unless $I5002 goto if279_else759 
.annotate 'line', 382
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_cur"()
    set $P5014, $P5011
    goto if279_end760
  if279_else759:
.annotate 'line', 383
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if279_end760:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_57_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
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
  while280_test761:
    find_not_cclass $I5003, 32, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while280_done765 
  while280_redo763:
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
    goto while280_test761 
  while280_done765:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_58_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5133 = 'cuid_200_1361964161.189' 
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
    if haz_param_3, default901
    set $S5005, ""
    set _lex_param_1, $S5005
  default901:
    if haz_param_4, default902
    set $I5034, 0
    set _lex_param_2, $I5034
  default902:
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P109, $P5009
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P110, $P5010
    nqp_get_sc_object $P5011, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P111, $P5011
    new $P5012, 'Hash'
    set $P112, $P5012
    set $S102, ""
    set $S103, ""
    set $S104, ""
    set $I102, 0
    set $I103, 0
    root_new $P113, ['parrot';'Continuation']
    set_label $P113, lexotic_766
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
    set_label $P5121, while281_handlers771
    push_eh $P5121
  while281_test768:
    box $P5122, 1
    set $P5120, $P5122
    unless 1 goto while281_done772 
  while281_redo770:
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
    unless $I5003 goto if282_end774 
    find_lex $P5020, "RETURN"
    $P5021 = $P5020($P101)
  if282_end774:
.annotate 'line', 435
    $P5022 = $P104."MATCH"()
    set $P105, $P5022
    set $P106, $P105
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while283_handlers778
    push_eh $P5025
  while283_test775:
    exists $I5004, $P106["OPER"]
    box $P5026, $I5004
    set $P5024, $P5026
    unless $I5004 goto while283_done779 
  while283_redo777:
    set $P5023, $P106["OPER"]
    set $P106, $P5023
    set $P5024, $P106
    goto while283_test775 
  while283_handlers778:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while283_test775
    eq $P5025, .CONTROL_LOOP_REDO, while283_redo777
  while283_done779:
    pop_eh 
    set $P5027, $P106["prefixish"]
    set $P107, $P5027
    set $P5028, $P106["postfixish"]
    set $P108, $P5028
    isnull $I5005, $P107
    set $I5007, $I5005
    if $I5005 goto unless285_end783 
    isnull $I5006, $P108
    set $I5007, $I5006
  unless285_end783:
    if $I5007 goto unless284_end781 
.annotate 'line', 444
  while286_test784:
    set $P5029, $P107
    unless $P107 goto if287_end790 
    set $P5029, $P108
  if287_end790:
    set $P5032, $P5029
    unless $P5029 goto while286_done788 
  while286_redo786:
    .const 'Sub' $P5030 = 'cuid_200_1361964161.189' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
    goto while286_test784 
  while286_done788:
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, while307_handlers823
    push_eh $P5035
  while307_test820:
    set $P5034, $P107
    unless $P107 goto while307_done824 
  while307_redo822:
    shift $P5033, $P107
    push $P102, $P5033
    set $P5034, $P102
    goto while307_test820 
  while307_handlers823:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5035, $P5035, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while307_test820
    eq $P5035, .CONTROL_LOOP_REDO, while307_redo822
  while307_done824:
    pop_eh 
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, while308_handlers828
    push_eh $P5038
  while308_test825:
    set $P5037, $P108
    unless $P108 goto while308_done829 
  while308_redo827:
    pop $P5036, $P108
    push $P102, $P5036
    set $P5037, $P102
    goto while308_test825 
  while308_handlers828:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, while308_test825
    eq $P5038, .CONTROL_LOOP_REDO, while308_redo827
  while308_done829:
    pop_eh 
  unless284_end781:
    delete $P105["prefixish"]
    delete $P105["postfixish"]
    set $P5039, $P105["term"]
    push $P103, $P5039
    unless _lex_param_2 goto if309_end831 
    die 0, .CONTROL_LOOP_LAST
  if309_end831:
    set $I102, 1
    set $I103, 0
    new $P5090, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5090, while310_handlers835
    push_eh $P5090
  while310_test832:
    box $P5091, $I102
    set $P5089, $P5091
    unless $I102 goto while310_done836 
  while310_redo834:
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
    unless $I5009 goto if311_end838 
.annotate 'line', 477
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if311_end838:
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
    unless $I5011 goto if312_end840 
.annotate 'line', 486
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if312_end840:
.annotate 'line', 490
    $P5046 = $P110."MATCH"()
    set $P111, $P5046
    set fb_tmp_31, $P111
    repr_defined $I5013, fb_tmp_31
    unless $I5013 goto if314_else843 
    set $P5047, fb_tmp_31["OPER"]
    set $P5049, $P5047
    goto if314_end844
  if314_else843:
    null $P5048
    set $P5049, $P5048
  if314_end844:
    unless_null $P5049, vivi_315845
    nqp_get_sc_object $P5050, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5049, $P5050
  vivi_315845:
    set fb_tmp_30, $P5049
    repr_defined $I5012, fb_tmp_30
    unless $I5012 goto if313_else841 
    set $P5051, fb_tmp_30["O"]
    set $P5053, $P5051
    goto if313_end842
  if313_else841:
    null $P5052
    set $P5053, $P5052
  if313_end842:
    unless_null $P5053, vivi_316846
    nqp_get_sc_object $P5054, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5053, $P5054
  vivi_316846:
    set $P112, $P5053
    set $P5055, $P112["nextterm"]
    unless_null $P5055, vivi_317847
    box $P5056, "termish"
    set $P5055, $P5056
  vivi_317847:
    set $S5001, $P5055
    set $S101, $S5001
    set fb_tmp_32, $P112
    repr_defined $I5014, fb_tmp_32
    unless $I5014 goto if318_else848 
    set $P5057, fb_tmp_32["prec"]
    set $P5059, $P5057
    goto if318_end849
  if318_else848:
    null $P5058
    set $P5059, $P5058
  if318_end849:
    unless_null $P5059, vivi_319850
    nqp_get_sc_object $P5060, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5059, $P5060
  vivi_319850:
    set $S5002, $P5059
    set $S102, $S5002
    if $S102 goto unless320_end852 
.annotate 'line', 496
    $P5061 = $P110."panic"("Missing infixish operator precedence")
  unless320_end852:
    islt $I5015, $S102, _lex_param_1
    unless $I5015 goto if321_end854 
.annotate 'line', 498
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if321_end854:
    set $P5062, $P112["sub"]
    unless_null $P5062, vivi_322855
    set $P5063, $P112["prec"]
    set $P5062, $P5063
  vivi_322855:
    set $P112["prec"], $P5062
    new $P5083, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5083, while323_handlers859
    push_eh $P5083
  while323_test856:
    set $P5082, $P102
    unless $P102 goto while323_done860 
  while323_redo858:
.annotate 'line', 505
    set fb_tmp_36, $P102
    repr_defined $I5019, fb_tmp_36
    unless $I5019 goto if327_else867 
    set $N5008, $P102
    set $N5009, 1
    sub $N5007, $N5008, $N5009
    set $I5020, $N5007
    set $P5064, fb_tmp_36[$I5020]
    set $P5066, $P5064
    goto if327_end868
  if327_else867:
    null $P5065
    set $P5066, $P5065
  if327_end868:
    unless_null $P5066, vivi_328869
    nqp_get_sc_object $P5067, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5066, $P5067
  vivi_328869:
    set fb_tmp_35, $P5066
    repr_defined $I5018, fb_tmp_35
    unless $I5018 goto if326_else865 
    set $P5068, fb_tmp_35["OPER"]
    set $P5070, $P5068
    goto if326_end866
  if326_else865:
    null $P5069
    set $P5070, $P5069
  if326_end866:
    unless_null $P5070, vivi_329870
    nqp_get_sc_object $P5071, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5070, $P5071
  vivi_329870:
    set fb_tmp_34, $P5070
    repr_defined $I5017, fb_tmp_34
    unless $I5017 goto if325_else863 
    set $P5072, fb_tmp_34["O"]
    set $P5074, $P5072
    goto if325_end864
  if325_else863:
    null $P5073
    set $P5074, $P5073
  if325_end864:
    unless_null $P5074, vivi_330871
    nqp_get_sc_object $P5075, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5074, $P5075
  vivi_330871:
    set fb_tmp_33, $P5074
    repr_defined $I5016, fb_tmp_33
    unless $I5016 goto if324_else861 
    set $P5076, fb_tmp_33["prec"]
    set $P5078, $P5076
    goto if324_end862
  if324_else861:
    null $P5077
    set $P5078, $P5077
  if324_end862:
    unless_null $P5078, vivi_331872
    nqp_get_sc_object $P5079, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5078, $P5079
  vivi_331872:
    set $S5003, $P5078
    set $S103, $S5003
    isgt $I5021, $S103, $S102
    if $I5021 goto unless332_end874 
    die 0, .CONTROL_LOOP_LAST
  unless332_end874:
.annotate 'line', 508
    nqp_decontainerize $P5080, _lex_param_0
    $P5081 = $P5080."EXPR_reduce"($P103, $P102)
    set $P5082, $P5081
    goto while323_test856 
  while323_handlers859:
    .get_results ($P5083)
    pop_upto_eh $P5083
    getattribute $P5083, $P5083, 'type'
    eq $P5083, .CONTROL_LOOP_NEXT, while323_test856
    eq $P5083, .CONTROL_LOOP_REDO, while323_redo858
  while323_done860:
    pop_eh 
    set $P5084, $P112["fake"]
    isnull $I5022, $P5084
    unless $I5022 goto if333_else875 
.annotate 'line', 511
    set $I102, 0
    box $P5088, $I102
    set $P5087, $P5088
    goto if333_end876
  if333_else875:
.annotate 'line', 514
    push $P102, $P111
.annotate 'line', 516
    nqp_decontainerize $P5085, _lex_param_0
    $P5086 = $P5085."EXPR_reduce"($P103, $P102)
    set $P5087, $P5086
  if333_end876:
    set $P5089, $P5087
    goto while310_test832 
  while310_handlers835:
    .get_results ($P5090)
    pop_upto_eh $P5090
    getattribute $P5090, $P5090, 'type'
    eq $P5090, .CONTROL_LOOP_NEXT, while310_test832
    eq $P5090, .CONTROL_LOOP_REDO, while310_redo834
  while310_done836:
    pop_eh 
    unless $I103 goto if334_end878 
    die 0, .CONTROL_LOOP_LAST
  if334_end878:
    iseq $I5023, $S103, $S102
    unless $I5023 goto if335_end880 
.annotate 'line', 522
    set $P5092, $P112["assoc"]
    set $S5004, $P5092
    set $S104, $S5004
    iseq $I5024, $S104, "non"
    unless $I5024 goto if336_end882 
.annotate 'line', 524
.annotate 'line', 525
    nqp_decontainerize $P5093, _lex_param_0
    set fb_tmp_39, $P102
    repr_defined $I5027, fb_tmp_39
    unless $I5027 goto if339_else887 
    elements $I5028, $P102
    set $N5011, $I5028
    set $N5012, 1
    sub $N5010, $N5011, $N5012
    set $I5029, $N5010
    set $P5094, fb_tmp_39[$I5029]
    set $P5096, $P5094
    goto if339_end888
  if339_else887:
    null $P5095
    set $P5096, $P5095
  if339_end888:
    unless_null $P5096, vivi_340889
    nqp_get_sc_object $P5097, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5096, $P5097
  vivi_340889:
    set fb_tmp_38, $P5096
    repr_defined $I5026, fb_tmp_38
    unless $I5026 goto if338_else885 
    set $P5098, fb_tmp_38["OPER"]
    set $P5100, $P5098
    goto if338_end886
  if338_else885:
    null $P5099
    set $P5100, $P5099
  if338_end886:
    unless_null $P5100, vivi_341890
    nqp_get_sc_object $P5101, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5100, $P5101
  vivi_341890:
    set fb_tmp_37, $P5100
    repr_defined $I5025, fb_tmp_37
    unless $I5025 goto if337_else883 
    set $P5102, fb_tmp_37["sym"]
    set $P5104, $P5102
    goto if337_end884
  if337_else883:
    null $P5103
    set $P5104, $P5103
  if337_end884:
    unless_null $P5104, vivi_342891
    nqp_get_sc_object $P5105, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5104, $P5105
  vivi_342891:
.annotate 'line', 527
    $P5106 = $P111."Str"()
    $P5107 = $P5093."EXPR_nonassoc"($P110, $P5104, $P5106)
  if336_end882:
    iseq $I5030, $S104, "left"
    box $P5111, $I5030
    set $P5110, $P5111
    unless $I5030 goto if343_end893 
.annotate 'line', 529
.annotate 'line', 531
    nqp_decontainerize $P5108, _lex_param_0
    $P5109 = $P5108."EXPR_reduce"($P103, $P102)
    set $P5110, $P5109
  if343_end893:
  if335_end880:
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
    unless $I5032 goto if344_end895 
    find_lex $P5116, "RETURN"
    $P5117 = $P5116($P101)
    set $P5118, $P5117
  if344_end895:
    set $P5120, $P5118
    goto while281_test768 
  while281_handlers771:
    .get_results ($P5121)
    pop_upto_eh $P5121
    getattribute $P5121, $P5121, 'type'
    eq $P5121, .CONTROL_LOOP_NEXT, while281_test768
    eq $P5121, .CONTROL_LOOP_REDO, while281_redo770
  while281_done772:
    pop_eh 
    new $P5126, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5126, while345_handlers899
    push_eh $P5126
  while345_test896:
    set $P5125, $P102
    unless $P102 goto while345_done900 
  while345_redo898:
.annotate 'line', 543
    nqp_decontainerize $P5123, _lex_param_0
    $P5124 = $P5123."EXPR_reduce"($P103, $P102)
    set $P5125, $P5124
    goto while345_test896 
  while345_handlers899:
    .get_results ($P5126)
    pop_upto_eh $P5126
    getattribute $P5126, $P5126, 'type'
    eq $P5126, .CONTROL_LOOP_NEXT, while345_test896
    eq $P5126, .CONTROL_LOOP_REDO, while345_redo898
  while345_done900:
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
    goto lexotic_767
  lexotic_766:
    .get_results ($P101)
  lexotic_767:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1361964161.189") :anon :lex :outer("cuid_58_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    find_lex $P5005, "@prefixish"
    set fb_tmp_25, $P5005
    repr_defined $I5003, fb_tmp_25
    unless $I5003 goto if290_else795 
    set $P5006, fb_tmp_25[0]
    set $P5008, $P5006
    goto if290_end796
  if290_else795:
    null $P5007
    set $P5008, $P5007
  if290_end796:
    unless_null $P5008, vivi_291797
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5008, $P5009
  vivi_291797:
    set fb_tmp_24, $P5008
    repr_defined $I5002, fb_tmp_24
    unless $I5002 goto if289_else793 
    set $P5010, fb_tmp_24["OPER"]
    set $P5012, $P5010
    goto if289_end794
  if289_else793:
    null $P5011
    set $P5012, $P5011
  if289_end794:
    unless_null $P5012, vivi_292798
    nqp_get_sc_object $P5013, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5012, $P5013
  vivi_292798:
    set fb_tmp_23, $P5012
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if288_else791 
    set $P5014, fb_tmp_23["O"]
    set $P5016, $P5014
    goto if288_end792
  if288_else791:
    null $P5015
    set $P5016, $P5015
  if288_end792:
    unless_null $P5016, vivi_293799
    nqp_get_sc_object $P5017, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5016, $P5017
  vivi_293799:
    set $P101, $P5016
    find_lex $P5018, "@postfixish"
    set fb_tmp_28, $P5018
    repr_defined $I5006, fb_tmp_28
    unless $I5006 goto if296_else804 
    find_lex $P5020, "@postfixish"
    elements $I5007, $P5020
    set $N5002, $I5007
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5008, $N5001
    set $P5019, fb_tmp_28[$I5008]
    set $P5022, $P5019
    goto if296_end805
  if296_else804:
    null $P5021
    set $P5022, $P5021
  if296_end805:
    unless_null $P5022, vivi_297806
    nqp_get_sc_object $P5023, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5022, $P5023
  vivi_297806:
    set fb_tmp_27, $P5022
    repr_defined $I5005, fb_tmp_27
    unless $I5005 goto if295_else802 
    set $P5024, fb_tmp_27["OPER"]
    set $P5026, $P5024
    goto if295_end803
  if295_else802:
    null $P5025
    set $P5026, $P5025
  if295_end803:
    unless_null $P5026, vivi_298807
    nqp_get_sc_object $P5027, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5026, $P5027
  vivi_298807:
    set fb_tmp_26, $P5026
    repr_defined $I5004, fb_tmp_26
    unless $I5004 goto if294_else800 
    set $P5028, fb_tmp_26["O"]
    set $P5030, $P5028
    goto if294_end801
  if294_else800:
    null $P5029
    set $P5030, $P5029
  if294_end801:
    unless_null $P5030, vivi_299808
    nqp_get_sc_object $P5031, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5030, $P5031
  vivi_299808:
    set $P102, $P5030
    set $P5032, $P101["prec"]
    unless_null $P5032, vivi_300809
    box $P5033, ""
    set $P5032, $P5033
  vivi_300809:
    set $P103, $P5032
    set $P5034, $P102["prec"]
    unless_null $P5034, vivi_301810
    box $P5035, ""
    set $P5034, $P5035
  vivi_301810:
    set $P104, $P5034
    set $S5001, $P104
    set $S5002, $P103
    isgt $I5009, $S5001, $S5002
    set $I5014, $I5009
    if $I5009 goto unless303_end814 
    set $S5003, $P104
    set $S5004, $P103
    iseq $I5010, $S5003, $S5004
    set $I5013, $I5010
    unless $I5010 goto if304_end816 
    set fb_tmp_29, $P102
    repr_defined $I5012, fb_tmp_29
    unless $I5012 goto if305_else817 
    set $P5036, fb_tmp_29["uassoc"]
    set $P5038, $P5036
    goto if305_end818
  if305_else817:
    null $P5037
    set $P5038, $P5037
  if305_end818:
    unless_null $P5038, vivi_306819
    nqp_get_sc_object $P5039, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5038, $P5039
  vivi_306819:
    set $S5005, $P5038
    iseq $I5011, $S5005, "right"
    set $I5013, $I5011
  if304_end816:
    set $I5014, $I5013
  unless303_end814:
    unless $I5014 goto if302_else811 
.annotate 'line', 453
    find_lex $P5040, "@opstack"
    find_lex $P5042, "@prefixish"
    shift $P5041, $P5042
    push $P5040, $P5041
    set $P5046, $P5040
    goto if302_end812
  if302_else811:
.annotate 'line', 456
    find_lex $P5043, "@opstack"
    find_lex $P5045, "@postfixish"
    pop $P5044, $P5045
    push $P5043, $P5044
    set $P5046, $P5043
  if302_end812:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_59_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
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
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    set $S102, ""
    set $S103, ""
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P105, $P5005
    pop $P5006, _lex_param_2
    set $P101, $P5006
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 41
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
    unless $I5001 goto if346_else903 
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
    unless $I5002 goto if347_else905 
    set $S5002, "POSTFIX"
    goto if347_end906
  if347_else905:
    set $S5002, "PREFIX"
  if347_end906:
    set $S102, $S5002
    goto if346_end904
  if346_else903:
    iseq $I5003, $S101, "list"
    unless $I5003 goto if348_else907 
.annotate 'line', 572
    set $P5015, $P102["sym"]
    unless_null $P5015, vivi_349909
    box $P5016, ""
    set $P5015, $P5016
  vivi_349909:
    set $S5003, $P5015
    set $S103, $S5003
    pop $P5017, _lex_param_1
    unshift $P101, $P5017
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while350_handlers913
    push_eh $P5025
  while350_test910:
    set $P5024, _lex_param_2
    unless _lex_param_2 goto while350_done914 
  while350_redo912:
.annotate 'line', 575
    elements $I5005, _lex_param_2
    set $N5004, $I5005
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    set $I5006, $N5003
    set $P5020, _lex_param_2[$I5006]
    set $P5019, $P5020["OPER"]
    set $P5018, $P5019["sym"]
    unless_null $P5018, vivi_352917
    box $P5021, ""
    set $P5018, $P5021
  vivi_352917:
    set $S5004, $P5018
    isne $I5004, $S103, $S5004
    unless $I5004 goto if351_end916 
    die 0, .CONTROL_LOOP_LAST
  if351_end916:
    pop $P5022, _lex_param_1
    unshift $P101, $P5022
    pop $P5023, _lex_param_2
    set $P5024, $P5023
    goto while350_test910 
  while350_handlers913:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while350_test910
    eq $P5025, .CONTROL_LOOP_REDO, while350_redo912
  while350_done914:
    pop_eh 
    pop $P5026, _lex_param_1
    unshift $P101, $P5026
    set $S102, "LIST"
    set $S5006, $S102
    goto if348_end908
  if348_else907:
.annotate 'line', 585
    pop $P5027, _lex_param_1
    set $P101[1], $P5027
    pop $P5028, _lex_param_1
    set $P101[0], $P5028
    set $P5029, $P103["reducecheck"]
    set $P104, $P5029
    isnull $I5007, $P104
    if $I5007 goto unless353_end919 
.annotate 'line', 589
    nqp_decontainerize $P5030, _lex_param_0
    set $S5005, $P104
    $P5031 = $P5030.$S5005($P101)
  unless353_end919:
    set $S102, "INFIX"
    set $S5006, $S102
  if348_end908:
  if346_end904:
.annotate 'line', 592
    nqp_decontainerize $P5032, _lex_param_0
    $P5032."!reduce_with_match"("EXPR", $S102, $P101)
    push _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_nonassoc" :subid("cuid_60_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
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
.sub "ternary" :subid("cuid_61_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    unless $I5001 goto if354_else920 
    set $P5001, fb_tmp_40[1]
    set $P5003, $P5001
    goto if354_end921
  if354_else920:
    null $P5002
    set $P5003, $P5002
  if354_end921:
    unless_null $P5003, vivi_355922
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5003, $P5004
  vivi_355922:
    set _lex_param_1[2], $P5003
    set fb_tmp_42, _lex_param_1
    repr_defined $I5003, fb_tmp_42
    unless $I5003 goto if357_else925 
    set $P5005, fb_tmp_42["infix"]
    set $P5007, $P5005
    goto if357_end926
  if357_else925:
    null $P5006
    set $P5007, $P5006
  if357_end926:
    unless_null $P5007, vivi_358927
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_358927:
    set fb_tmp_41, $P5007
    repr_defined $I5002, fb_tmp_41
    unless $I5002 goto if356_else923 
    set $P5009, fb_tmp_41["EXPR"]
    set $P5011, $P5009
    goto if356_end924
  if356_else923:
    null $P5010
    set $P5011, $P5010
  if356_end924:
    unless_null $P5011, vivi_359928
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5012
  vivi_359928:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_62_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
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
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "41BC6126A6537720F2A162E1AE4506906D3B7795-1361964156.879", 32
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
.sub "MARKED" :subid("cuid_63_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 614
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "41BC6126A6537720F2A162E1AE4506906D3B7795-1361964156.879", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    nqp_get_sc_object $P5009, "41BC6126A6537720F2A162E1AE4506906D3B7795-1361964156.879", 100
    type_check $I5001, $P102, $P5009
    set $I5003, $I5001
    unless $I5001 goto if361_end932 
.annotate 'line', 619
    $P5010 = $P102."pos"()
    set $N5001, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."pos"()
    set $N5002, $P5012
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if361_end932:
    if $I5003 goto unless360_end930 
.annotate 'line', 620
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."!cursor_start_cur"()
    set $P102, $P5014
  unless360_end930:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_64_1361964161.189") :anon :lex :outer("cuid_188_1361964161.189")
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
    .local pmc fb_tmp_43 
    .local pmc fb_tmp_44 
    .local pmc pkg_viv_tmp_11 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc pkg_viv_tmp_12 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
.annotate 'line', 626
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback935
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_11, $P5004
    set fb_tmp_44, pkg_viv_tmp_11
    repr_defined $I5002, fb_tmp_44
    unless $I5002 goto if363_else936 
    set $P5006, fb_tmp_44["%LANG"]
    set $P5008, $P5006
    goto if363_end937
  if363_else936:
    null $P5007
    set $P5008, $P5007
  if363_end937:
    unless_null $P5008, vivi_364938
    new $P5009, 'Hash'
    set pkg_viv_tmp_11["%LANG"], $P5009
    set $P5008, $P5009
  vivi_364938:
    unless_null $P5008, vivi_365939
    die "Contextual %*LANG not found"
    box $P5010, "Contextual %*LANG not found"
    set $P5008, $P5010
  vivi_365939:
    set $P5003, $P5008
  fallback935:
    set fb_tmp_43, $P5003
    repr_defined $I5001, fb_tmp_43
    unless $I5001 goto if362_else933 
    set $S5001, _lex_param_1
    set $P5011, fb_tmp_43[$S5001]
    set $P5013, $P5011
    goto if362_end934
  if362_else933:
    null $P5012
    set $P5013, $P5012
  if362_end934:
    unless_null $P5013, vivi_366940
    nqp_get_sc_object $P5014, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5013, $P5014
  vivi_366940:
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
    unless $P5025 goto if367_end942 
.annotate 'line', 628
    get_how $P5026, $P101
    nqp_decontainerize $P5028, _lex_param_0
    get_how $P5027, $P5028
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5027."trace_depth"($P5029)
    $P5031 = $P5026."trace-on"($P101, $P5030)
  if367_end942:
    find_dynamic_lex $P5032, "%*LANG"
    unless_null $P5032, fallback945
    nqp_get_sc_object $P5034, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5033, $P5034
    set pkg_viv_tmp_12, $P5033
    set fb_tmp_46, pkg_viv_tmp_12
    repr_defined $I5004, fb_tmp_46
    unless $I5004 goto if369_else946 
    set $P5035, fb_tmp_46["%LANG"]
    set $P5037, $P5035
    goto if369_end947
  if369_else946:
    null $P5036
    set $P5037, $P5036
  if369_end947:
    unless_null $P5037, vivi_370948
    new $P5038, 'Hash'
    set pkg_viv_tmp_12["%LANG"], $P5038
    set $P5037, $P5038
  vivi_370948:
    unless_null $P5037, vivi_371949
    die "Contextual %*LANG not found"
    box $P5039, "Contextual %*LANG not found"
    set $P5037, $P5039
  vivi_371949:
    set $P5032, $P5037
  fallback945:
    set fb_tmp_45, $P5032
    repr_defined $I5003, fb_tmp_45
    unless $I5003 goto if368_else943 
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5040, fb_tmp_45[$S5002]
    set $P5042, $P5040
    goto if368_end944
  if368_else943:
    null $P5041
    set $P5042, $P5041
  if368_end944:
    unless_null $P5042, vivi_372950
    nqp_get_sc_object $P5043, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5042, $P5043
  vivi_372950:
    set $P102, $P5042
.annotate 'line', 631
    set $S5004, _lex_param_2
    $P5044 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 636
    .const 'Sub' $P5037 = 'cuid_202_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_65_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_66_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1361964161.189' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_97_1361964161.189' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_202_1361964161.189' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_65_1361964161.189' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_66_1361964161.189' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_67_1361964161.189' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_68_1361964161.189' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_69_1361964161.189' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_70_1361964161.189' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_71_1361964161.189' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_72_1361964161.189' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_73_1361964161.189' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_74_1361964161.189' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_75_1361964161.189' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_76_1361964161.189' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_77_1361964161.189' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_78_1361964161.189' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_79_1361964161.189' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_80_1361964161.189' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_81_1361964161.189' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_82_1361964161.189' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_83_1361964161.189' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_84_1361964161.189' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_85_1361964161.189' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_86_1361964161.189' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_87_1361964161.189' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_88_1361964161.189' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_89_1361964161.189' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_90_1361964161.189' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_91_1361964161.189' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_92_1361964161.189' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_93_1361964161.189' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_94_1361964161.189' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_95_1361964161.189' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_96_1361964161.189' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_97_1361964161.189' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_202_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 637
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    if $I5002 goto unless373_end952 
.annotate 'line', 639
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless373_end952:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_65_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_205_1361964161.189' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if374_else953 
    .const 'Sub' $P5001 = 'cuid_205_1361964161.189' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if374_end954
  if374_else953:
.annotate 'line', 651
.annotate 'line', 652
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if374_end954:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1361964161.189") :anon :lex :outer("cuid_65_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 645
    .const 'Sub' $P5009 = 'cuid_204_1361964161.189' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next955:
    unless $P5005, for_done957
    shift $P5008, $P5005
  for_redo956:
    .const 'Sub' $P5007 = 'cuid_204_1361964161.189' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next955
  for_done957:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1361964161.189") :anon :lex :outer("cuid_205_1361964161.189")
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
.sub "CTXSAVE" :subid("cuid_66_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 656
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 657
    nqp_get_sc_object $P5001, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 93
.annotate 'line', 658
    nqp_get_sc_object $P5002, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
.annotate 'line', 660
    nqp_get_sc_object $P5003, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 71
    $P5004 = $P5003."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 661
    nqp_get_sc_object $P5005, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 71
    $P5006 = $P5005."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5007 = $P5002."new"($P5004, $P5006, "bind" :named("op"))
.annotate 'line', 663
    nqp_get_sc_object $P5008, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
.annotate 'line', 665
    nqp_get_sc_object $P5009, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
.annotate 'line', 667
    nqp_get_sc_object $P5010, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 71
    $P5011 = $P5010."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5012 = $P5009."new"($P5011, "isnull" :named("op"))
.annotate 'line', 669
    nqp_get_sc_object $P5013, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
.annotate 'line', 671
    nqp_get_sc_object $P5014, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
.annotate 'line', 673
    nqp_get_sc_object $P5015, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 71
    $P5016 = $P5015."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 674
    nqp_get_sc_object $P5017, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    $P5018 = $P5017."new"("ctxsave" :named("value"))
    $P5019 = $P5014."new"($P5016, $P5018, "can" :named("op"))
.annotate 'line', 676
    nqp_get_sc_object $P5020, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
.annotate 'line', 678
    nqp_get_sc_object $P5021, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 71
    $P5022 = $P5021."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5023 = $P5020."new"($P5022, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5024 = $P5013."new"($P5019, $P5023, "if" :named("op"))
    $P5025 = $P5008."new"($P5012, $P5024, "unless" :named("op"))
    $P5026 = $P5001."new"($P5007, $P5025)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_67_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_208_1361964161.189' 
    capture_lex $P5024 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc pkg_viv_tmp_13 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback962
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_13, $P5003
    set fb_tmp_49, pkg_viv_tmp_13
    repr_defined $I5003, fb_tmp_49
    unless $I5003 goto if377_else963 
    set $P5005, fb_tmp_49["%COMPILING"]
    set $P5007, $P5005
    goto if377_end964
  if377_else963:
    null $P5006
    set $P5007, $P5006
  if377_end964:
    unless_null $P5007, vivi_378965
    new $P5008, 'Hash'
    set pkg_viv_tmp_13["%COMPILING"], $P5008
    set $P5007, $P5008
  vivi_378965:
    unless_null $P5007, vivi_379966
    die "Contextual %*COMPILING not found"
    box $P5009, "Contextual %*COMPILING not found"
    set $P5007, $P5009
  vivi_379966:
    set $P5002, $P5007
  fallback962:
    set fb_tmp_48, $P5002
    repr_defined $I5002, fb_tmp_48
    unless $I5002 goto if376_else960 
    set $P5010, fb_tmp_48["%?OPTIONS"]
    set $P5012, $P5010
    goto if376_end961
  if376_else960:
    null $P5011
    set $P5012, $P5011
  if376_end961:
    unless_null $P5012, vivi_380967
    nqp_get_sc_object $P5013, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5012, $P5013
  vivi_380967:
    set fb_tmp_47, $P5012
    repr_defined $I5001, fb_tmp_47
    unless $I5001 goto if375_else958 
    set $P5014, fb_tmp_47["outer_ctx"]
    set $P5016, $P5014
    goto if375_end959
  if375_else958:
    null $P5015
    set $P5016, $P5015
  if375_end959:
    unless_null $P5016, vivi_381968
    nqp_get_sc_object $P5017, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5016, $P5017
  vivi_381968:
    set $P101, $P5016
    defined $I5004, $P101
    box $P5023, $I5004
    set $P5022, $P5023
    unless $I5004 goto if382_end970 
.annotate 'line', 684
  until383_test971:
    isnull $I5005, $P101
    box $P5021, $I5005
    set $P5020, $P5021
    if $I5005 goto until383_done975 
  until383_redo973:
    .const 'Sub' $P5018 = 'cuid_208_1361964161.189' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
    goto until383_test971 
  until383_done975:
    set $P5022, $P5020
  if382_end970:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1361964161.189") :anon :lex :outer("cuid_67_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 685
    .const 'Sub' $P5011 = 'cuid_207_1361964161.189' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless384_end977 
.annotate 'line', 687
    set $P5004, $P101
    iter $P5006, $P101
  for_next988:
    unless $P5006, for_done990
    shift $P5008, $P5006
  for_redo989:
    .const 'Sub' $P5007 = 'cuid_207_1361964161.189' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next988
  for_done990:
  unless384_end977:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1361964161.189") :anon :lex :outer("cuid_208_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 688
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_206_1361964161.189' 
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
    if $P5002 goto unless385_end979 
    .const 'Sub' $P5003 = 'cuid_206_1361964161.189' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless385_end979:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1361964161.189") :anon :lex :outer("cuid_207_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 690
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if386_else980 
.annotate 'line', 692
.annotate 'line', 693
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if386_end981
  if386_else980:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if387_else982 
.annotate 'line', 695
.annotate 'line', 696
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if387_end983
  if387_else982:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if388_else984 
.annotate 'line', 698
.annotate 'line', 699
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if388_end985
  if388_else984:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if389_end987 
.annotate 'line', 701
.annotate 'line', 702
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if389_end987:
    set $P5022, $P5020
  if388_end985:
    set $P5023, $P5022
  if387_end983:
    set $P5024, $P5023
  if386_end981:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_68_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 712
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_209_1361964161.189' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_210_1361964161.189' 
    capture_lex $P5028 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_59 
    if haz_param_5, default1045
    nqp_get_sc_object $P5027, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_2, $P5027
  default1045:
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_991
    .lex "RETURN", $P102
    if _lex_param_2 goto unless390_end994 
.annotate 'line', 713
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless390_end994:
.annotate 'line', 714
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor995
    unless_null _lex_param_1, fallback998
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5006
  fallback998:
    set fb_tmp_50, _lex_param_1
    repr_defined $I5002, fb_tmp_50
    unless $I5002 goto if391_else996 
    set $P5007, fb_tmp_50["OPER"]
    set $P5009, $P5007
    goto if391_end997
  if391_else996:
    null $P5008
    set $P5009, $P5008
  if391_end997:
    unless_null $P5009, vivi_392999
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_392999:
    $P5011 = $P5009."ast"()
    set $P5004, $P5011
  defor995:
    set $P101, $P5004
    if $P101 goto unless393_end1001 
    .const 'Sub' $P5012 = 'cuid_209_1361964161.189' 
    capture_lex $P5012
    $P5013 = $P5012()
  unless393_end1001:
    set $S5001, _lex_param_2
    iseq $I5003, $S5001, "POSTFIX"
    unless $I5003 goto if413_else1035 
.annotate 'line', 727
.annotate 'line', 728
    set fb_tmp_59, _lex_param_1
    repr_defined $I5004, fb_tmp_59
    unless $I5004 goto if414_else1037 
    set $P5014, fb_tmp_59[0]
    set $P5016, $P5014
    goto if414_end1038
  if414_else1037:
    null $P5015
    set $P5016, $P5015
  if414_end1038:
    unless_null $P5016, vivi_4151039
    nqp_get_sc_object $P5017, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5016, $P5017
  vivi_4151039:
    $P5018 = $P5016."ast"()
    $P5019 = $P101."unshift"($P5018)
    goto if413_end1036
  if413_else1035:
.annotate 'line', 730
.annotate 'line', 731
    $P5023 = _lex_param_1."list"()
    set $P5020, $P5023
    iter $P5022, $P5023
  for_next1042:
    unless $P5022, for_done1044
    shift $P5025, $P5022
  for_redo1043:
    .const 'Sub' $P5024 = 'cuid_210_1361964161.189' 
    capture_lex $P5024
    $P5020 = $P5024($P5025)
    goto for_next1042
  for_done1044:
  if413_end1036:
.annotate 'line', 733
    $P5026 = _lex_param_1."!make"($P101)
    goto lexotic_992
  lexotic_991:
    .get_results ($P5026)
  lexotic_992:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1361964161.189") :anon :lex :outer("cuid_68_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 715
    .lex "$name", $P101 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
.annotate 'line', 716
    nqp_get_sc_object $P5002, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
    find_lex $P5003, "$/"
    $P5004 = $P5002."new"($P5003 :named("node"))
    store_lex "$past", $P5004
    find_lex $P5005, "$/"
    unless_null $P5005, fallback1010
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  fallback1010:
    set fb_tmp_53, $P5005
    repr_defined $I5003, fb_tmp_53
    unless $I5003 goto if397_else1008 
    set $P5007, fb_tmp_53["OPER"]
    set $P5009, $P5007
    goto if397_end1009
  if397_else1008:
    null $P5008
    set $P5009, $P5008
  if397_end1009:
    unless_null $P5009, vivi_3981011
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_3981011:
    set fb_tmp_52, $P5009
    repr_defined $I5002, fb_tmp_52
    unless $I5002 goto if396_else1006 
    set $P5011, fb_tmp_52["O"]
    set $P5013, $P5011
    goto if396_end1007
  if396_else1006:
    null $P5012
    set $P5013, $P5012
  if396_end1007:
    unless_null $P5013, vivi_3991012
    nqp_get_sc_object $P5014, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5013, $P5014
  vivi_3991012:
    set fb_tmp_51, $P5013
    repr_defined $I5001, fb_tmp_51
    unless $I5001 goto if395_else1004 
    set $P5015, fb_tmp_51["op"]
    set $P5017, $P5015
    goto if395_end1005
  if395_else1004:
    null $P5016
    set $P5017, $P5016
  if395_end1005:
    unless_null $P5017, vivi_4001013
    nqp_get_sc_object $P5018, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5017, $P5018
  vivi_4001013:
    unless $P5017 goto if394_end1003 
.annotate 'line', 717
.annotate 'line', 718
    find_lex $P5019, "$past"
    find_lex $P5020, "$/"
    unless_null $P5020, fallback1020
    nqp_get_sc_object $P5021, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5020, $P5021
  fallback1020:
    set fb_tmp_56, $P5020
    repr_defined $I5006, fb_tmp_56
    unless $I5006 goto if403_else1018 
    set $P5022, fb_tmp_56["OPER"]
    set $P5024, $P5022
    goto if403_end1019
  if403_else1018:
    null $P5023
    set $P5024, $P5023
  if403_end1019:
    unless_null $P5024, vivi_4041021
    nqp_get_sc_object $P5025, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5024, $P5025
  vivi_4041021:
    set fb_tmp_55, $P5024
    repr_defined $I5005, fb_tmp_55
    unless $I5005 goto if402_else1016 
    set $P5026, fb_tmp_55["O"]
    set $P5028, $P5026
    goto if402_end1017
  if402_else1016:
    null $P5027
    set $P5028, $P5027
  if402_end1017:
    unless_null $P5028, vivi_4051022
    nqp_get_sc_object $P5029, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5028, $P5029
  vivi_4051022:
    set fb_tmp_54, $P5028
    repr_defined $I5004, fb_tmp_54
    unless $I5004 goto if401_else1014 
    set $P5030, fb_tmp_54["op"]
    set $P5032, $P5030
    goto if401_end1015
  if401_else1014:
    null $P5031
    set $P5032, $P5031
  if401_end1015:
    unless_null $P5032, vivi_4061023
    nqp_get_sc_object $P5033, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5032, $P5033
  vivi_4061023:
    set $S5001, $P5032
    $P5034 = $P5019."op"($S5001)
  if394_end1003:
    find_lex $P5035, "$key"
    set $S5002, $P5035
    iseq $I5007, $S5002, "LIST"
    unless $I5007 goto if407_end1025 
.annotate 'line', 720
    box $P5036, "infix"
    store_lex "$key", $P5036
  if407_end1025:
    find_lex $P5037, "$key"
    set $S5007, $P5037
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5038, "$/"
    unless_null $P5038, fallback1030
    nqp_get_sc_object $P5039, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5038, $P5039
  fallback1030:
    set fb_tmp_58, $P5038
    repr_defined $I5009, fb_tmp_58
    unless $I5009 goto if409_else1028 
    set $P5040, fb_tmp_58["OPER"]
    set $P5042, $P5040
    goto if409_end1029
  if409_else1028:
    null $P5041
    set $P5042, $P5041
  if409_end1029:
    unless_null $P5042, vivi_4101031
    nqp_get_sc_object $P5043, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5042, $P5043
  vivi_4101031:
    set fb_tmp_57, $P5042
    repr_defined $I5008, fb_tmp_57
    unless $I5008 goto if408_else1026 
    set $P5044, fb_tmp_57["sym"]
    set $P5046, $P5044
    goto if408_end1027
  if408_else1026:
    null $P5045
    set $P5046, $P5045
  if408_end1027:
    unless_null $P5046, vivi_4111032
    nqp_get_sc_object $P5047, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5046, $P5047
  vivi_4111032:
    set $S5008, $P5046
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5048, $S5003
    set $P101, $P5048
.annotate 'line', 722
    find_lex $P5049, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5049."name"($S5009)
.annotate 'line', 723
    find_lex $P5050, "$past"
    $P5051 = $P5050."op"()
    set $P5054, $P5051
    if $P5051 goto unless412_end1034 
.annotate 'line', 724
    find_lex $P5052, "$past"
    $P5053 = $P5052."op"("call")
    set $P5054, $P5053
  unless412_end1034:
    .return ($P5054) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1361964161.189") :anon :lex :outer("cuid_68_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 731
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if416_end1041 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if416_end1041:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_69_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 736
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_60 
    unless_null _lex_param_1, fallback1048
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1048:
    set fb_tmp_60, _lex_param_1
    repr_defined $I5001, fb_tmp_60
    unless $I5001 goto if417_else1046 
    set $P5002, fb_tmp_60["circumfix"]
    set $P5004, $P5002
    goto if417_end1047
  if417_else1046:
    null $P5003
    set $P5004, $P5003
  if417_end1047:
    unless_null $P5004, vivi_4181049
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4181049:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_70_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 738
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_61 
    unless_null _lex_param_1, fallback1052
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1052:
    set fb_tmp_61, _lex_param_1
    repr_defined $I5001, fb_tmp_61
    unless $I5001 goto if419_else1050 
    set $P5002, fb_tmp_61["term"]
    set $P5004, $P5002
    goto if419_end1051
  if419_else1050:
    null $P5003
    set $P5004, $P5003
  if419_end1051:
    unless_null $P5004, vivi_4201053
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4201053:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_71_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 739
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_72_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 740
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_62 
    unless_null _lex_param_1, fallback1056
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1056:
    set fb_tmp_62, _lex_param_1
    repr_defined $I5001, fb_tmp_62
    unless $I5001 goto if421_else1054 
    set $P5002, fb_tmp_62["term"]
    set $P5004, $P5002
    goto if421_end1055
  if421_else1054:
    null $P5003
    set $P5004, $P5003
  if421_end1055:
    unless_null $P5004, vivi_4221057
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4221057:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_73_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 742
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_63 
    unless_null _lex_param_1, fallback1060
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1060:
    set fb_tmp_63, _lex_param_1
    repr_defined $I5001, fb_tmp_63
    unless $I5001 goto if423_else1058 
    set $P5002, fb_tmp_63["VALUE"]
    set $P5004, $P5002
    goto if423_end1059
  if423_else1058:
    null $P5003
    set $P5004, $P5003
  if423_end1059:
    unless_null $P5004, vivi_4241061
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4241061:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_74_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "decint" :subid("cuid_75_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "hexint" :subid("cuid_76_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "octint" :subid("cuid_77_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "binint" :subid("cuid_78_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_EXPR" :subid("cuid_79_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 751
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_212_1361964161.189' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc pkg_viv_tmp_14 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
.annotate 'line', 752
    unless_null _lex_param_1, fallback1064
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5002
  fallback1064:
    set fb_tmp_64, _lex_param_1
    repr_defined $I5001, fb_tmp_64
    unless $I5001 goto if425_else1062 
    set $P5003, fb_tmp_64["quote_delimited"]
    set $P5005, $P5003
    goto if425_end1063
  if425_else1062:
    null $P5004
    set $P5005, $P5004
  if425_end1063:
    unless_null $P5005, vivi_4261065
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_4261065:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback1070
    nqp_get_sc_object $P5010, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5009, $P5010
    set pkg_viv_tmp_14, $P5009
    set fb_tmp_66, pkg_viv_tmp_14
    repr_defined $I5003, fb_tmp_66
    unless $I5003 goto if429_else1071 
    set $P5011, fb_tmp_66["%QUOTEMOD"]
    set $P5013, $P5011
    goto if429_end1072
  if429_else1071:
    null $P5012
    set $P5013, $P5012
  if429_end1072:
    unless_null $P5013, vivi_4301073
    new $P5014, 'Hash'
    set pkg_viv_tmp_14["%QUOTEMOD"], $P5014
    set $P5013, $P5014
  vivi_4301073:
    unless_null $P5013, vivi_4311074
    die "Contextual %*QUOTEMOD not found"
    box $P5015, "Contextual %*QUOTEMOD not found"
    set $P5013, $P5015
  vivi_4311074:
    set $P5008, $P5013
  fallback1070:
    set fb_tmp_65, $P5008
    repr_defined $I5002, fb_tmp_65
    unless $I5002 goto if428_else1068 
    set $P5016, fb_tmp_65["w"]
    set $P5018, $P5016
    goto if428_end1069
  if428_else1068:
    null $P5017
    set $P5018, $P5017
  if428_end1069:
    unless_null $P5018, vivi_4321075
    nqp_get_sc_object $P5019, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5018, $P5019
  vivi_4321075:
    unless $P5018 goto if427_end1067 
.annotate 'line', 753
    nqp_get_sc_object $P5020, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    type_check $I5004, $P101, $P5020
    unless $I5004 goto if433_else1076 
    .const 'Sub' $P5021 = 'cuid_212_1361964161.189' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if433_end1077
  if433_else1076:
.annotate 'line', 764
.annotate 'line', 765
    $P5023 = _lex_param_1."CURSOR"()
    $P5024 = $P5023."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5025, $P5024
  if433_end1077:
  if427_end1067:
.annotate 'line', 768
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1361964161.189") :anon :lex :outer("cuid_79_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 754
    .const 'Sub' $P5037 = 'cuid_211_1361964161.189' 
    capture_lex $P5037 
    .lex "@words", $P101 
    .local pmc fb_tmp_67 
    .local pmc pkg_lookup_tmp_3 
    .local pmc pkg_lookup_tmp_2 
    .local pmc fb_tmp_68 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 755
    find_lex $P5018, "$/"
    find_lex $P5019, "$past"
    $P5020 = $P5019."value"()
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    set pkg_lookup_tmp_2, $P5003
    get_who $P5004, pkg_lookup_tmp_2
    exists $I5002, $P5004["HLL"]
    unless $I5002 goto if435_else1080 
    get_who $P5006, pkg_lookup_tmp_2
    set $P5005, $P5006["HLL"]
    set $P5008, $P5005
    goto if435_end1081
  if435_else1080:
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5008, $P5007
  if435_end1081:
    set pkg_lookup_tmp_3, $P5008
    get_who $P5009, pkg_lookup_tmp_3
    exists $I5003, $P5009["Grammar"]
    unless $I5003 goto if436_else1082 
    get_who $P5011, pkg_lookup_tmp_3
    set $P5010, $P5011["Grammar"]
    set $P5013, $P5010
    goto if436_end1083
  if436_else1082:
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5013, $P5012
  if436_end1083:
    get_who $P5002, $P5013
    set fb_tmp_67, $P5002
    repr_defined $I5001, fb_tmp_67
    unless $I5001 goto if434_else1078 
    set $P5014, fb_tmp_67["split_words"]
    set $P5016, $P5014
    goto if434_end1079
  if434_else1078:
    null $P5015
    set $P5016, $P5015
  if434_end1079:
    unless_null $P5016, vivi_4371084
    nqp_get_sc_object $P5017, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5016, $P5017
  vivi_4371084:
    $P5021 = $P5016($P5018, $P5020)
    set $P101, $P5021
    set $N5001, $P101
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    unless $I5004 goto if438_else1085 
.annotate 'line', 756
.annotate 'line', 757
    nqp_get_sc_object $P5022, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
    find_lex $P5023, "$/"
    $P5024 = $P5022."new"("list" :named("op"), $P5023 :named("node"))
    store_lex "$past", $P5024
    set $P5025, $P101
    iter $P5027, $P101
  for_next1087:
    unless $P5027, for_done1089
    shift $P5029, $P5027
  for_redo1088:
    .const 'Sub' $P5028 = 'cuid_211_1361964161.189' 
    capture_lex $P5028
    $P5025 = $P5028($P5029)
    goto for_next1087
  for_done1089:
    set $P5036, $P5025
    goto if438_end1086
  if438_else1085:
.annotate 'line', 760
.annotate 'line', 761
    nqp_get_sc_object $P5030, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    set fb_tmp_68, $P101
    repr_defined $I5005, fb_tmp_68
    unless $I5005 goto if439_else1090 
    set $P5031, fb_tmp_68[0]
    set $P5033, $P5031
    goto if439_end1091
  if439_else1090:
    null $P5032
    set $P5033, $P5032
  if439_end1091:
    unless_null $P5033, vivi_4401092
    nqp_get_sc_object $P5034, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5033, $P5034
  vivi_4401092:
    set $S5001, $P5033
    $P5035 = $P5030."new"($S5001 :named("value"))
    store_lex "$past", $P5035
    set $P5036, $P5035
  if438_end1086:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1361964161.189") :anon :lex :outer("cuid_212_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 758
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5002, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    $P5003 = $P5002."new"(_lex_param_0 :named("value"))
    $P5004 = $P5001."push"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_80_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 771
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_213_1361964161.189' 
    capture_lex $P5027 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_69 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback1095
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5008
  fallback1095:
    set fb_tmp_69, _lex_param_1
    repr_defined $I5001, fb_tmp_69
    unless $I5001 goto if441_else1093 
    set $P5009, fb_tmp_69["quote_atom"]
    set $P5011, $P5009
    goto if441_end1094
  if441_else1093:
    null $P5010
    set $P5011, $P5010
  if441_end1094:
    unless_null $P5011, vivi_4421096
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5012
  vivi_4421096:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next1105:
    unless $P5007, for_done1107
    shift $P5014, $P5007
  for_redo1106:
    .const 'Sub' $P5013 = 'cuid_213_1361964161.189' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next1105
  for_done1107:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if447_end1109 
.annotate 'line', 792
    nqp_get_sc_object $P5015, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    $P5016 = $P5015."new"($P102 :named("value"))
    $P5017 = $P101."push"($P5016)
  if447_end1109:
    unless $P101 goto if448_else1110 
.annotate 'line', 793
    $P5018 = $P101."shift"()
    set $P5021, $P5018
    goto if448_end1111
  if448_else1110:
    nqp_get_sc_object $P5019, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    $P5020 = $P5019."new"("" :named("value"))
    set $P5021, $P5020
  if448_end1111:
    set $P103, $P5021
  while449_test1112:
    set $P5025, $P101
    unless $P101 goto while449_done1116 
  while449_redo1114:
.annotate 'line', 794
.annotate 'line', 795
    nqp_get_sc_object $P5022, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 82
    $P5023 = $P101."shift"()
    $P5024 = $P5022."new"($P103, $P5023, "concat" :named("op"))
    set $P103, $P5024
    set $P5025, $P103
    goto while449_test1112 
  while449_done1116:
.annotate 'line', 797
    $P5026 = _lex_param_1."!make"($P103)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1361964161.189") :anon :lex :outer("cuid_80_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 774
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
.annotate 'line', 775
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5003, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 12
    type_check $I5002, $P101, $P5003
    not $I5001, $I5002
    unless $I5001 goto if443_else1097 
.annotate 'line', 776
    find_lex $P5004, "$lastlit"
    set $S5002, $P5004
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5005, $S5001
    store_lex "$lastlit", $P5005
    set $P5023, $P5005
    goto if443_end1098
  if443_else1097:
    nqp_get_sc_object $P5006, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    type_check $I5003, $P101, $P5006
    unless $I5003 goto if444_else1099 
.annotate 'line', 779
    find_lex $P5007, "$lastlit"
    set $S5005, $P5007
.annotate 'line', 780
    $P5008 = $P101."value"()
    set $S5006, $P5008
    concat $S5004, $S5005, $S5006
    box $P5009, $S5004
    store_lex "$lastlit", $P5009
    set $P5022, $P5009
    goto if444_end1100
  if444_else1099:
.annotate 'line', 782
    find_lex $P5010, "$lastlit"
    set $S5007, $P5010
    isgt $I5004, $S5007, ""
    unless $I5004 goto if445_end1102 
.annotate 'line', 783
.annotate 'line', 784
    find_lex $P5011, "@parts"
    nqp_get_sc_object $P5012, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    find_lex $P5013, "$lastlit"
    $P5014 = $P5012."new"($P5013 :named("value"))
    $P5015 = $P5011."push"($P5014)
  if445_end1102:
.annotate 'line', 786
    find_lex $P5016, "@parts"
    nqp_get_sc_object $P5017, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 12
    type_check $I5005, $P101, $P5017
    unless $I5005 goto if446_else1103 
    set $P5020, $P101
    goto if446_end1104
  if446_else1103:
.annotate 'line', 788
    nqp_get_sc_object $P5018, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 52
    $P5019 = $P5018."new"($P101 :named("value"))
    set $P5020, $P5019
  if446_end1104:
    $P5016."push"($P5020)
    box $P5021, ""
    store_lex "$lastlit", $P5021
    set $P5022, $P5021
  if444_end1100:
    set $P5023, $P5022
  if443_end1098:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_81_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 800
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
.annotate 'line', 801
    unless_null _lex_param_1, fallback1121
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1121:
    set fb_tmp_70, _lex_param_1
    repr_defined $I5001, fb_tmp_70
    unless $I5001 goto if451_else1119 
    set $P5002, fb_tmp_70["quote_escape"]
    set $P5004, $P5002
    goto if451_end1120
  if451_else1119:
    null $P5003
    set $P5004, $P5003
  if451_end1120:
    unless_null $P5004, vivi_4521122
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4521122:
    unless $P5004 goto if450_else1117 
    unless_null _lex_param_1, fallback1125
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5006
  fallback1125:
    set fb_tmp_71, _lex_param_1
    repr_defined $I5002, fb_tmp_71
    unless $I5002 goto if453_else1123 
    set $P5007, fb_tmp_71["quote_escape"]
    set $P5009, $P5007
    goto if453_end1124
  if453_else1123:
    null $P5008
    set $P5009, $P5008
  if453_end1124:
    unless_null $P5009, vivi_4541126
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_4541126:
    $P5011 = $P5009."ast"()
    set $P5012, $P5011
    goto if450_end1118
  if450_else1117:
    set $S5001, _lex_param_1
    box $P5013, $S5001
    set $P5012, $P5013
  if450_end1118:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_82_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<stopper>" :subid("cuid_83_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 805
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_72 
    unless_null _lex_param_1, fallback1129
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1129:
    set fb_tmp_72, _lex_param_1
    repr_defined $I5001, fb_tmp_72
    unless $I5001 goto if455_else1127 
    set $P5002, fb_tmp_72["stopper"]
    set $P5004, $P5002
    goto if455_end1128
  if455_else1127:
    null $P5003
    set $P5004, $P5003
  if455_end1128:
    unless_null $P5004, vivi_4561130
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4561130:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_84_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<nl>" :subid("cuid_85_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<cr>" :subid("cuid_86_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<tab>" :subid("cuid_87_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<ff>" :subid("cuid_88_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<esc>" :subid("cuid_89_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<hex>" :subid("cuid_90_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_74 
    .local pmc fb_tmp_75 
    .local pmc fb_tmp_76 
.annotate 'line', 815
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1135
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5002
  fallback1135:
    set fb_tmp_73, _lex_param_1
    repr_defined $I5001, fb_tmp_73
    unless $I5001 goto if458_else1133 
    set $P5003, fb_tmp_73["hexint"]
    set $P5005, $P5003
    goto if458_end1134
  if458_else1133:
    null $P5004
    set $P5005, $P5004
  if458_end1134:
    unless_null $P5005, vivi_4591136
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_4591136:
    unless $P5005 goto if457_else1131 
    unless_null _lex_param_1, fallback1139
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5007
  fallback1139:
    set fb_tmp_74, _lex_param_1
    repr_defined $I5002, fb_tmp_74
    unless $I5002 goto if460_else1137 
    set $P5008, fb_tmp_74["hexint"]
    set $P5010, $P5008
    goto if460_end1138
  if460_else1137:
    null $P5009
    set $P5010, $P5009
  if460_end1138:
    unless_null $P5010, vivi_4611140
    nqp_get_sc_object $P5011, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5010, $P5011
  vivi_4611140:
    set $P5021, $P5010
    goto if457_end1132
  if457_else1131:
    unless_null _lex_param_1, fallback1145
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5012
  fallback1145:
    set fb_tmp_76, _lex_param_1
    repr_defined $I5004, fb_tmp_76
    unless $I5004 goto if463_else1143 
    set $P5013, fb_tmp_76["hexints"]
    set $P5015, $P5013
    goto if463_end1144
  if463_else1143:
    null $P5014
    set $P5015, $P5014
  if463_end1144:
    unless_null $P5015, vivi_4641146
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5015, $P5016
  vivi_4641146:
    set fb_tmp_75, $P5015
    repr_defined $I5003, fb_tmp_75
    unless $I5003 goto if462_else1141 
    set $P5017, fb_tmp_75["hexint"]
    set $P5019, $P5017
    goto if462_end1142
  if462_else1141:
    null $P5018
    set $P5019, $P5018
  if462_end1142:
    unless_null $P5019, vivi_4651147
    nqp_get_sc_object $P5020, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5019, $P5020
  vivi_4651147:
    set $P5021, $P5019
  if457_end1132:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_91_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 818
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_77 
    .local pmc fb_tmp_78 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
.annotate 'line', 819
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1152
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5002
  fallback1152:
    set fb_tmp_77, _lex_param_1
    repr_defined $I5001, fb_tmp_77
    unless $I5001 goto if467_else1150 
    set $P5003, fb_tmp_77["octint"]
    set $P5005, $P5003
    goto if467_end1151
  if467_else1150:
    null $P5004
    set $P5005, $P5004
  if467_end1151:
    unless_null $P5005, vivi_4681153
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_4681153:
    unless $P5005 goto if466_else1148 
    unless_null _lex_param_1, fallback1156
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5007
  fallback1156:
    set fb_tmp_78, _lex_param_1
    repr_defined $I5002, fb_tmp_78
    unless $I5002 goto if469_else1154 
    set $P5008, fb_tmp_78["octint"]
    set $P5010, $P5008
    goto if469_end1155
  if469_else1154:
    null $P5009
    set $P5010, $P5009
  if469_end1155:
    unless_null $P5010, vivi_4701157
    nqp_get_sc_object $P5011, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5010, $P5011
  vivi_4701157:
    set $P5021, $P5010
    goto if466_end1149
  if466_else1148:
    unless_null _lex_param_1, fallback1162
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5012
  fallback1162:
    set fb_tmp_80, _lex_param_1
    repr_defined $I5004, fb_tmp_80
    unless $I5004 goto if472_else1160 
    set $P5013, fb_tmp_80["octints"]
    set $P5015, $P5013
    goto if472_end1161
  if472_else1160:
    null $P5014
    set $P5015, $P5014
  if472_end1161:
    unless_null $P5015, vivi_4731163
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5015, $P5016
  vivi_4731163:
    set fb_tmp_79, $P5015
    repr_defined $I5003, fb_tmp_79
    unless $I5003 goto if471_else1158 
    set $P5017, fb_tmp_79["octint"]
    set $P5019, $P5017
    goto if471_end1159
  if471_else1158:
    null $P5018
    set $P5019, $P5018
  if471_end1159:
    unless_null $P5019, vivi_4741164
    nqp_get_sc_object $P5020, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5019, $P5020
  vivi_4741164:
    set $P5021, $P5019
  if466_end1149:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_92_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 822
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_81 
.annotate 'line', 823
    unless_null _lex_param_1, fallback1167
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1167:
    set fb_tmp_81, _lex_param_1
    repr_defined $I5001, fb_tmp_81
    unless $I5001 goto if475_else1165 
    set $P5002, fb_tmp_81["charspec"]
    set $P5004, $P5002
    goto if475_end1166
  if475_else1165:
    null $P5003
    set $P5004, $P5003
  if475_end1166:
    unless_null $P5004, vivi_4761168
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4761168:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_93_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
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
.sub "quote_escape:sym<misc>" :subid("cuid_94_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 830
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_82 
    .local pmc fb_tmp_83 
    .local pmc fb_tmp_84 
.annotate 'line', 831
    unless_null _lex_param_1, fallback1173
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1173:
    set fb_tmp_82, _lex_param_1
    repr_defined $I5001, fb_tmp_82
    unless $I5001 goto if478_else1171 
    set $P5002, fb_tmp_82["textq"]
    set $P5004, $P5002
    goto if478_end1172
  if478_else1171:
    null $P5003
    set $P5004, $P5003
  if478_end1172:
    unless_null $P5004, vivi_4791174
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4791174:
    unless $P5004 goto if477_else1169 
    unless_null _lex_param_1, fallback1177
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5006
  fallback1177:
    set fb_tmp_83, _lex_param_1
    repr_defined $I5002, fb_tmp_83
    unless $I5002 goto if480_else1175 
    set $P5007, fb_tmp_83["textq"]
    set $P5009, $P5007
    goto if480_end1176
  if480_else1175:
    null $P5008
    set $P5009, $P5008
  if480_end1176:
    unless_null $P5009, vivi_4811178
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_4811178:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if477_end1170
  if477_else1169:
    unless_null _lex_param_1, fallback1181
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5012
  fallback1181:
    set fb_tmp_84, _lex_param_1
    repr_defined $I5003, fb_tmp_84
    unless $I5003 goto if482_else1179 
    set $P5013, fb_tmp_84["textqq"]
    set $P5015, $P5013
    goto if482_end1180
  if482_else1179:
    null $P5014
    set $P5015, $P5014
  if482_end1180:
    unless_null $P5015, vivi_4831182
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5015, $P5016
  vivi_4831182:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if477_end1170:
    $P5020 = _lex_param_1."!make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_95_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 834
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    unless_null _lex_param_1, fallback1187
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5002
  fallback1187:
    set fb_tmp_85, _lex_param_1
    repr_defined $I5001, fb_tmp_85
    unless $I5001 goto if485_else1185 
    set $P5003, fb_tmp_85["integer"]
    set $P5005, $P5003
    goto if485_end1186
  if485_else1185:
    null $P5004
    set $P5005, $P5004
  if485_end1186:
    unless_null $P5005, vivi_4861188
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_4861188:
    unless $P5005 goto if484_else1183 
.annotate 'line', 836
    unless_null _lex_param_1, fallback1191
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5007
  fallback1191:
    set fb_tmp_86, _lex_param_1
    repr_defined $I5002, fb_tmp_86
    unless $I5002 goto if487_else1189 
    set $P5008, fb_tmp_86["integer"]
    set $P5010, $P5008
    goto if487_end1190
  if487_else1189:
    null $P5009
    set $P5010, $P5009
  if487_end1190:
    unless_null $P5010, vivi_4881192
    nqp_get_sc_object $P5011, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5010, $P5011
  vivi_4881192:
    $P5012 = $P5010."ast"()
    set $P5013, $P5012
    goto if484_end1184
  if484_else1183:
    set $S5002, _lex_param_1
    find_encoding $I5003, 'utf8'
    trans_encoding $S5001, $S5002, $I5003
    find_codepoint $I5003, $S5001
    box $P5014, $I5003
    set $P5013, $P5014
  if484_end1184:
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5004, $N5001, $N5002
    unless $I5004 goto if489_end1194 
.annotate 'line', 838
    $P5015 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5016 = $P5015."panic"($S5003)
  if489_end1194:
.annotate 'line', 839
    set $I5005, $P101
    chr $S5005, $I5005
    $P5017 = _lex_param_1."!make"($S5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_96_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 842
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_214_1361964161.189' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_87 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1197
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5006
  fallback1197:
    set fb_tmp_87, _lex_param_1
    repr_defined $I5001, fb_tmp_87
    unless $I5001 goto if490_else1195 
    set $P5007, fb_tmp_87["charname"]
    set $P5009, $P5007
    goto if490_end1196
  if490_else1195:
    null $P5008
    set $P5009, $P5008
  if490_end1196:
    unless_null $P5009, vivi_4911198
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_4911198:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1199:
    unless $P5005, for_done1201
    shift $P5012, $P5005
  for_redo1200:
    .const 'Sub' $P5011 = 'cuid_214_1361964161.189' 
    capture_lex $P5011
    $P5003 = $P5011($P5012)
    goto for_next1199
  for_done1201:
.annotate 'line', 845
    $P5013 = _lex_param_1."!make"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1361964161.189") :anon :lex :outer("cuid_96_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 844
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
.sub "charspec" :subid("cuid_97_1361964161.189") :anon :lex :outer("cuid_203_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 848
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_88 
    .local pmc fb_tmp_89 
.annotate 'line', 849
    unless_null _lex_param_1, fallback1206
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5001
  fallback1206:
    set fb_tmp_88, _lex_param_1
    repr_defined $I5001, fb_tmp_88
    unless $I5001 goto if493_else1204 
    set $P5002, fb_tmp_88["charnames"]
    set $P5004, $P5002
    goto if493_end1205
  if493_else1204:
    null $P5003
    set $P5004, $P5003
  if493_end1205:
    unless_null $P5004, vivi_4941207
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_4941207:
    unless $P5004 goto if492_else1202 
    unless_null _lex_param_1, fallback1210
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5006
  fallback1210:
    set fb_tmp_89, _lex_param_1
    repr_defined $I5002, fb_tmp_89
    unless $I5002 goto if495_else1208 
    set $P5007, fb_tmp_89["charnames"]
    set $P5009, $P5007
    goto if495_end1209
  if495_else1208:
    null $P5008
    set $P5009, $P5008
  if495_end1209:
    unless_null $P5009, vivi_4961211
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_4961211:
    $P5011 = $P5009."ast"()
    set $P5013, $P5011
    goto if492_end1203
  if492_else1202:
    $P5012 = "&string_to_int"(_lex_param_1, 10)
    set $I5003, $P5012
    chr $S5001, $I5003
    box $P5014, $S5001
    set $P5013, $P5014
  if492_end1203:
    $P5015 = _lex_param_1."!make"($P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 855
    .const 'Sub' $P5026 = 'cuid_98_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_99_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_100_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_101_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_102_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_103_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_104_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_105_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_106_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_107_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_108_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_109_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_110_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_111_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_112_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_113_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_114_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_115_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_116_1361964161.189' 
    capture_lex $P5026 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_90 
    get_who $P5001, $P101
    getinterp $P5002
    set fb_tmp_90, $P5002
    repr_defined $I5001, fb_tmp_90
    unless $I5001 goto if497_else1212 
    set $P5003, fb_tmp_90[.IGLOBALS_CONFIG_HASH]
    set $P5005, $P5003
    goto if497_end1213
  if497_else1212:
    null $P5004
    set $P5005, $P5004
  if497_end1213:
    unless_null $P5005, vivi_4981214
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_4981214:
    set $P5001["%parrot_config"], $P5005
    .const 'Sub' $P5007 = 'cuid_98_1361964161.189' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_99_1361964161.189' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_100_1361964161.189' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_101_1361964161.189' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_102_1361964161.189' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_103_1361964161.189' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_104_1361964161.189' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_105_1361964161.189' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_106_1361964161.189' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_107_1361964161.189' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_108_1361964161.189' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_109_1361964161.189' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_110_1361964161.189' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_111_1361964161.189' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_112_1361964161.189' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_113_1361964161.189' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_114_1361964161.189' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_115_1361964161.189' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_116_1361964161.189' 
    capture_lex $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "apply_transcodings" :subid("cuid_98_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 858
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5009 = 'cuid_215_1361964161.189' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    .lex "$transcode", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1215
    .lex "RETURN", $P101
    set $S5001, _lex_param_2
    split $P5004, " ", $S5001
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1219:
    unless $P5003, for_done1221
    shift $P5006, $P5003
  for_redo1220:
    .const 'Sub' $P5005 = 'cuid_215_1361964161.189' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1219
  for_done1221:
    find_lex $P5007, "RETURN"
    $P5008 = $P5007(_lex_param_1)
    goto lexotic_1216
  lexotic_1215:
    .get_results ($P5008)
  lexotic_1216:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1361964161.189") :anon :lex :outer("cuid_98_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 859
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_5001218
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 860
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_4991217
  catch_handler_5001218:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_4991217
  skip_handler_4991217:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_99_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 868
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_91 
    find_lex $P5002, "$?PACKAGE"
    get_who $P5001, $P5002
    set fb_tmp_91, $P5001
    repr_defined $I5001, fb_tmp_91
    unless $I5001 goto if501_else1222 
    set $P5003, fb_tmp_91["%parrot_config"]
    set $P5005, $P5003
    goto if501_end1223
  if501_else1222:
    null $P5004
    set $P5005, $P5004
  if501_end1223:
    unless_null $P5005, vivi_5021224
    new $P5006, 'Hash'
    set $P5005, $P5006
  vivi_5021224:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "force_gc" :subid("cuid_100_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 872
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    sweep 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_101_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 876
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("parrot") 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_102_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 880
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_218_1361964161.189' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_6, default1243
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5010
  default1243:
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if504_end1228 
    set $P5004, $P101
  if504_end1228:
    unless $P5004 goto if503_end1226 
.annotate 'line', 884
    $P5006 = $P101."flush"()
  if503_end1226:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if505_end1230 
    .const 'Sub' $P5007 = 'cuid_218_1361964161.189' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if505_end1230:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1361964161.189") :anon :lex :outer("cuid_102_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 887
    .const 'Sub' $P5022 = 'cuid_217_1361964161.189' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5005, "$spec"
    set fb_tmp_92, $P5005
    repr_defined $I5001, fb_tmp_92
    unless $I5001 goto if506_else1231 
    set $P5006, fb_tmp_92[0]
    set $P5008, $P5006
    goto if506_end1232
  if506_else1231:
    null $P5007
    set $P5008, $P5007
  if506_end1232:
    unless_null $P5008, vivi_5071233
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5008, $P5009
  vivi_5071233:
    set $P101, $P5008
    find_lex $P5010, "$spec"
    set fb_tmp_93, $P5010
    repr_defined $I5002, fb_tmp_93
    unless $I5002 goto if508_else1234 
    set $P5011, fb_tmp_93[1]
    set $P5013, $P5011
    goto if508_end1235
  if508_else1234:
    null $P5012
    set $P5013, $P5012
  if508_end1235:
    unless_null $P5013, vivi_5091236
    nqp_get_sc_object $P5014, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5013, $P5014
  vivi_5091236:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if510_else1237 
    .const 'Sub' $P5015 = 'cuid_217_1361964161.189' 
    capture_lex $P5015
    $P5016 = $P5015()
    goto if510_end1238
  if510_else1237:
.annotate 'line', 895
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    nqpevent_fh $P5017, $P5019
  if510_end1238:
    set $S5003, $P102
    iseq $I5005, $S5003, ""
    unless $I5005 goto if512_else1241 
    box $P5021, 31
    set $P5020, $P5021
    goto if512_end1242
  if512_else1241:
    set $P5020, $P102
  if512_end1242:
    set $I5006, $P5020
    nqpdebflags $I5004, $I5006
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1361964161.189") :anon :lex :outer("cuid_218_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 891
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_lex $P5003, "$file"
    set $S5001, $P5003
    open $P5002, $S5001, "w"
    set $P5008, $P5002
    if $P5002 goto unless511_end1240 
.annotate 'line', 892
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$file"
    set $S5003, $P5006
    concat $S5002, "Cannot write to ", $S5003
    $P5007 = $P5004."panic"($S5002)
    set $P5008, $P5007
  unless511_end1240:
    set $P101, $P5008
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "run_profiled" :subid("cuid_103_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$old_runcore", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "$what", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P101, $P5003
    set_runcore "subprof_hll"
.annotate 'line', 906
    $P5004 = _lex_param_1()
    set $P102, $P5004
    set $S5002, $P101
    set_runcore $S5002
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "run_traced" :subid("cuid_104_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 911
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$level", _lex_param_1 
    .lex "$what", _lex_param_2 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    set $I5001, _lex_param_1
    trace $I5001
.annotate 'line', 913
    $P5002 = _lex_param_2()
    set $P101, $P5002
    trace 0
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "version_string" :subid("cuid_105_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 918
    .param pmc _lex_param_0 
    .lex "$parver", $P101 
    .lex "$parrev", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_94 
    .local pmc fb_tmp_95 
    .local pmc fb_tmp_96 
    .local pmc fb_tmp_97 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_1244
    .lex "RETURN", $P103
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set fb_tmp_95, $P5003
    repr_defined $I5002, fb_tmp_95
    unless $I5002 goto if514_else1248 
    set $P5005, fb_tmp_95["%parrot_config"]
    set $P5007, $P5005
    goto if514_end1249
  if514_else1248:
    null $P5006
    set $P5007, $P5006
  if514_end1249:
    unless_null $P5007, vivi_5151250
    new $P5008, 'Hash'
    set $P5007, $P5008
  vivi_5151250:
    set fb_tmp_94, $P5007
    repr_defined $I5001, fb_tmp_94
    unless $I5001 goto if513_else1246 
    set $P5009, fb_tmp_94["VERSION"]
    set $P5011, $P5009
    goto if513_end1247
  if513_else1246:
    null $P5010
    set $P5011, $P5010
  if513_end1247:
    unless_null $P5011, vivi_5161251
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5012
  vivi_5161251:
    set $P101, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set fb_tmp_97, $P5014
    repr_defined $I5005, fb_tmp_97
    unless $I5005 goto if518_else1255 
    set $P5016, fb_tmp_97["%parrot_config"]
    set $P5018, $P5016
    goto if518_end1256
  if518_else1255:
    null $P5017
    set $P5018, $P5017
  if518_end1256:
    unless_null $P5018, vivi_5191257
    new $P5019, 'Hash'
    set $P5018, $P5019
  vivi_5191257:
    set fb_tmp_96, $P5018
    repr_defined $I5004, fb_tmp_96
    unless $I5004 goto if517_else1253 
    set $P5020, fb_tmp_96["git_describe"]
    set $P5022, $P5020
    goto if517_end1254
  if517_else1253:
    null $P5021
    set $P5022, $P5021
  if517_end1254:
    unless_null $P5022, vivi_5201258
    nqp_get_sc_object $P5023, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5022, $P5023
  vivi_5201258:
    set $P5013, $P5022
    defined $I5003, $P5013
    if $I5003, defor1252
    box $P5024, "(unknown)"
    set $P5013, $P5024
  defor1252:
    set $P102, $P5013
    set $S5004, $P101
    concat $S5003, "parrot ", $S5004
    concat $S5002, $S5003, " revision "
    set $S5005, $P102
    concat $S5001, $S5002, $S5005
    find_lex $P5025, "RETURN"
    $P5026 = $P5025($S5001)
    goto lexotic_1245
  lexotic_1244:
    .get_results ($P5026)
  lexotic_1245:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "vmstat" :subid("cuid_106_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 924
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
    sprintf $S5001, " %11d %11d %9d %9d", $P5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_107_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 933
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("post pir evalpmc") 
.end
.HLL "nqp"
.namespace []
.sub "is_precomp_stage" :subid("cuid_108_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 937
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
.sub "is_textual_stage" :subid("cuid_109_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 942
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
.sub "post" :subid("cuid_110_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 946
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 947
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_111_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 950
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
.sub "pir" :subid("cuid_112_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 963
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 964
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
.sub "evalpmc" :subid("cuid_113_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 967
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 969
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "is_compunit" :subid("cuid_114_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 972
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
.sub "compunit_mainline" :subid("cuid_115_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 976
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    .local pmc fb_tmp_98 
    set fb_tmp_98, _lex_param_1
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if521_else1259 
    set $P5001, fb_tmp_98[0]
    set $P5003, $P5001
    goto if521_end1260
  if521_else1259:
    null $P5002
    set $P5003, $P5002
  if521_end1260:
    unless_null $P5003, vivi_5221261
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5003, $P5004
  vivi_5221261:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_coderefs" :subid("cuid_116_1361964161.189") :anon :lex :outer("cuid_216_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 980
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    .return (_lex_param_1) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 986
    .param pmc _lex_param_0 
    .const 'Sub' $P5003 = 'cuid_117_1361964161.189' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$?CLASS", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_117_1361964161.189' 
    capture_lex $P5001
    getinterp $P5002
    set $P5002, $P5002['lexpad']
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "default_backend" :subid("cuid_117_1361964161.189") :anon :lex :outer("cuid_118_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 987
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 102
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 991
    .const 'Sub' $P5042 = 'cuid_119_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_120_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_121_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_122_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_123_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_124_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_125_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_126_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_127_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_128_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_129_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_130_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_131_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_132_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_133_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_134_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_135_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_136_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_137_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_138_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_139_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_140_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_141_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_142_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_143_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_144_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_145_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_146_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_147_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_148_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_149_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_150_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_151_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_152_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_153_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_154_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_155_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_156_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_157_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_158_1361964161.189' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_159_1361964161.189' 
    capture_lex $P5042 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_119_1361964161.189' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_120_1361964161.189' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_121_1361964161.189' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_122_1361964161.189' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_123_1361964161.189' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_124_1361964161.189' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_125_1361964161.189' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_126_1361964161.189' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_127_1361964161.189' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_128_1361964161.189' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_129_1361964161.189' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_130_1361964161.189' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_131_1361964161.189' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_132_1361964161.189' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_133_1361964161.189' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_134_1361964161.189' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_135_1361964161.189' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_136_1361964161.189' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_137_1361964161.189' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_138_1361964161.189' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_139_1361964161.189' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_140_1361964161.189' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_141_1361964161.189' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_142_1361964161.189' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_143_1361964161.189' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_144_1361964161.189' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_145_1361964161.189' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_146_1361964161.189' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_147_1361964161.189' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_148_1361964161.189' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_149_1361964161.189' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_150_1361964161.189' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_151_1361964161.189' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_152_1361964161.189' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_153_1361964161.189' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_154_1361964161.189' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_155_1361964161.189' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_156_1361964161.189' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_157_1361964161.189' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_158_1361964161.189' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_159_1361964161.189' 
    capture_lex $P5041
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_119_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1005
    .param pmc _lex_param_0 
    .const 'Sub' $P5029 = 'cuid_219_1361964161.189' 
    capture_lex $P5029 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
.annotate 'line', 1007
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."default_backend"()
    repr_bind_attr_obj $P5001, $P5002, "$!backend", $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
.annotate 'line', 1010
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!backend"
    $P5011 = $P5010."stages"()
    set $S5002, $P5011
    concat $S5001, "start parse ast ", $S5002
    split $P5007, " ", $S5001
    repr_bind_attr_obj $P5005, $P5006, "@!stages", $P5007
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    split $P5014, " ", "e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5012, $P5013, "@!cmdoptions", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    box $P5017, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5015, $P5016, "$!usage", $P5017
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions"
    set $P5018, $P5023
    iter $P5020, $P5023
  for_next1262:
    unless $P5020, for_done1264
    shift $P5025, $P5020
  for_redo1263:
    .const 'Sub' $P5024 = 'cuid_219_1361964161.189' 
    capture_lex $P5024
    $P5018 = $P5024($P5025)
    goto for_next1262
  for_done1264:
    nqp_decontainerize $P5026, _lex_param_0
    nqp_get_sc_object $P5027, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    new $P5028, 'Hash'
    repr_bind_attr_obj $P5026, $P5027, "%!config", $P5028
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1361964161.189") :anon :lex :outer("cuid_119_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1015
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
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
.sub "backend" :subid("cuid_120_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1021
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_99 
    unless _lex_param_1 goto if523_end1266 
.annotate 'line', 1022
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    set fb_tmp_99, _lex_param_1
    repr_defined $I5001, fb_tmp_99
    unless $I5001 goto if524_else1267 
    set $P5003, fb_tmp_99[0]
    set $P5005, $P5003
    goto if524_end1268
  if524_else1267:
    null $P5004
    set $P5005, $P5004
  if524_end1268:
    unless_null $P5005, vivi_5251269
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_5251269:
    repr_bind_attr_obj $P5001, $P5002, "$!backend", $P5005
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
.annotate 'line', 1024
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend"
    $P5013 = $P5012."stages"()
    set $S5002, $P5013
    concat $S5001, "start parse ast ", $S5002
    split $P5009, " ", $S5001
    repr_bind_attr_obj $P5007, $P5008, "@!stages", $P5009
  if523_end1266:
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend"
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_121_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1029
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_7, default1272
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5007
  default1272:
    unless _lex_param_1 goto if526_end1271 
.annotate 'line', 1030
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if526_end1271:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_122_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1037
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
.sub "config" :subid("cuid_123_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1041
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_124_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1043
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
    nqp_get_sc_object $P5006, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5005, $P5006
    set fb_tmp_100, $P5005
    repr_defined $I5002, fb_tmp_100
    unless $I5002 goto if528_else1276 
    set $P5007, fb_tmp_100["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if528_end1277
  if528_else1276:
    null $P5008
    set $P5009, $P5008
  if528_end1277:
    unless_null $P5009, vivi_5291278
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_5291278:
    unless_null $P5009, vivi_5301279
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_5301279:
    set $P5004, $P5009
  fallback1275:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless527_end1274 
.annotate 'line', 1044
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless527_end1274:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_125_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1048
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5030 = 'cuid_223_1361964161.189' 
    capture_lex $P5030 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
.annotate 'line', 1049
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5009 = $P5006."print"($P5008)
    getinterp $P5010
    $P5011 = $P5010."stdin_handle"()
    set $P101, $P5011
    set fb_tmp_101, _lex_param_1
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if531_else1280 
    set $P5012, fb_tmp_101["encoding"]
    set $P5014, $P5012
    goto if531_end1281
  if531_else1280:
    null $P5013
    set $P5014, $P5013
  if531_end1281:
    unless_null $P5014, vivi_5321282
    nqp_get_sc_object $P5015, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5014, $P5015
  vivi_5321282:
    set $S5001, $P5014
    box $P5016, $S5001
    set $P102, $P5016
    set $P5017, $P102
    unless $P102 goto if534_end1286 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5018, $I5002
    set $P5017, $P5018
  if534_end1286:
    unless $P5017 goto if533_end1284 
.annotate 'line', 1053
    $P5019 = $P101."encoding"($P102)
  if533_end1284:
    set fb_tmp_102, _lex_param_1
    repr_defined $I5003, fb_tmp_102
    unless $I5003 goto if535_else1287 
    set $P5020, fb_tmp_102["target"]
    set $P5022, $P5020
    goto if535_end1288
  if535_else1287:
    null $P5021
    set $P5022, $P5021
  if535_end1288:
    unless_null $P5022, vivi_5361289
    nqp_get_sc_object $P5023, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5022, $P5023
  vivi_5361289:
    set $S5004, $P5022
    downcase $S5003, $S5004
    box $P5024, $S5003
    set $P103, $P5024
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while537_handlers1293
    push_eh $P5028
  while537_test1290:
    box $P5029, 1
    set $P5027, $P5029
    unless 1 goto while537_done1294 
  while537_redo1292:
    .const 'Sub' $P5025 = 'cuid_223_1361964161.189' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
    goto while537_test1290 
  while537_handlers1293:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while537_test1290
    eq $P5028, .CONTROL_LOOP_REDO, while537_redo1292
  while537_done1294:
    pop_eh 
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1361964161.189") :anon :lex :outer("cuid_125_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1059
    .const 'Sub' $P5029 = 'cuid_222_1361964161.189' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_103 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    isfalse $I5001, $P5006
    unless $I5001 goto if538_end1296 
    die 0, .CONTROL_LOOP_LAST
  if538_end1296:
.annotate 'line', 1062
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
    if $I5003 goto unless540_end1301 
    defined $I5005, $P102
    not $I5004, $I5005
    set $I5006, $I5004
  unless540_end1301:
    unless $I5006 goto if539_end1299 
.annotate 'line', 1064
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if539_end1299:
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if544_end1308 
    .const 'Sub' $P5026 = 'cuid_222_1361964161.189' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if544_end1308:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1361964161.189") :anon :lex :outer("cuid_223_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1074
    .const 'Sub' $P5047 = 'cuid_221_1361964161.189' 
    capture_lex $P5047 
    .lex "$output", $P101 
    .local pmc fb_tmp_104 
    .local pmc fb_tmp_105 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1077
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_5461310
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1078
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_5451309
  catch_handler_5461310:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_221_1361964161.189' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_5451309
  skip_handler_5451309:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1313
    nqp_get_sc_object $P5015, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5014, $P5015
    set fb_tmp_104, $P5014
    repr_defined $I5002, fb_tmp_104
    unless $I5002 goto if548_else1314 
    set $P5016, fb_tmp_104["$MAIN_CTX"]
    set $P5018, $P5016
    goto if548_end1315
  if548_else1314:
    null $P5017
    set $P5018, $P5017
  if548_end1315:
    unless_null $P5018, vivi_5491316
    nqp_get_sc_object $P5019, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5018, $P5019
  vivi_5491316:
    unless_null $P5018, vivi_5501317
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_5501317:
    set $P5013, $P5018
  fallback1313:
    defined $I5001, $P5013
    unless $I5001 goto if547_end1312 
.annotate 'line', 1084
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1318
    nqp_get_sc_object $P5023, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5022, $P5023
    set fb_tmp_105, $P5022
    repr_defined $I5003, fb_tmp_105
    unless $I5003 goto if551_else1319 
    set $P5024, fb_tmp_105["$MAIN_CTX"]
    set $P5026, $P5024
    goto if551_end1320
  if551_else1319:
    null $P5025
    set $P5026, $P5025
  if551_end1320:
    unless_null $P5026, vivi_5521321
    nqp_get_sc_object $P5027, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5026, $P5027
  vivi_5521321:
    unless_null $P5026, vivi_5531322
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_5531322:
    set $P5021, $P5026
  fallback1318:
    store_lex "$save_ctx", $P5021
  if547_end1312:
    isnull $I5004, $P101
    unless $I5004 goto if554_end1324 
    die 0, .CONTROL_LOOP_NEXT
  if554_end1324:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if555_else1325 
.annotate 'line', 1089
.annotate 'line', 1090
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5046, $P5032
    goto if555_end1326
  if555_else1325:
.annotate 'line', 1091
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    nqp_get_sc_object $P5035, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5036, $P5033, $P5035, "$!backend"
    find_lex $P5037, "$target"
    $P5038 = $P5036."is_textual_stage"($P5037)
    unless $P5038 goto if556_else1327 
    set $S5003, $P101
    say $S5003
    box $P5045, $S5003
    set $P5044, $P5045
    goto if556_end1328
  if556_else1327:
.annotate 'line', 1093
.annotate 'line', 1094
    find_lex $P5040, "self"
    nqp_decontainerize $P5039, $P5040
    find_lex $P5041, "$target"
    find_lex $P5042, "%adverbs"
    $P5043 = $P5039."dumper"($P101, $P5041, $P5042 :flat :named)
    set $P5044, $P5043
  if556_end1328:
    set $P5046, $P5044
  if555_end1326:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1361964161.189") :anon :lex :outer("cuid_222_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1079
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 1080
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_126_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1100
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
.sub "interactive_exception" :subid("cuid_127_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1104
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
.sub "eval" :subid("cuid_128_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1108
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5026 = 'cuid_224_1361964161.189' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_226_1361964161.189' 
    capture_lex $P5026 
    .lex "$output", $P101 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    set fb_tmp_106, _lex_param_3
    repr_defined $I5001, fb_tmp_106
    unless $I5001 goto if558_else1331 
    set $P5002, fb_tmp_106["profile-compile"]
    set $P5004, $P5002
    goto if558_end1332
  if558_else1331:
    null $P5003
    set $P5004, $P5003
  if558_end1332:
    unless_null $P5004, vivi_5591333
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5004, $P5005
  vivi_5591333:
    unless $P5004 goto if557_else1329 
.annotate 'line', 1111
.annotate 'line', 1112
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend"
    .const 'Sub' $P5010 = 'cuid_224_1361964161.189' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5008."run_profiled"($P5009)
    set $P101, $P5011
    goto if557_end1330
  if557_else1329:
.annotate 'line', 1116
.annotate 'line', 1117
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5013
  if557_end1330:
.annotate 'line', 1120
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend"
    $P5017 = $P5016."is_compunit"($P101)
    set $P5022, $P5017
    unless $P5017 goto if561_end1337 
    set fb_tmp_107, _lex_param_3
    repr_defined $I5003, fb_tmp_107
    unless $I5003 goto if562_else1338 
    set $P5018, fb_tmp_107["target"]
    set $P5020, $P5018
    goto if562_end1339
  if562_else1338:
    null $P5019
    set $P5020, $P5019
  if562_end1339:
    unless_null $P5020, vivi_5631340
    nqp_get_sc_object $P5021, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5020, $P5021
  vivi_5631340:
    set $S5001, $P5020
    iseq $I5002, $S5001, ""
    box $P5023, $I5002
    set $P5022, $P5023
  if561_end1337:
    unless $P5022 goto if560_end1335 
    .const 'Sub' $P5024 = 'cuid_226_1361964161.189' 
    capture_lex $P5024
    $P5025 = $P5024()
  if560_end1335:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1361964161.189") :anon :lex :outer("cuid_128_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1112

.annotate 'line', 1113
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$code"
    find_lex $P5004, "%adverbs"
    $P5005 = $P5001."compile"($P5003, $P5004 :flat :named)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1361964161.189") :anon :lex :outer("cuid_128_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1120
    .const 'Sub' $P5048 = 'cuid_225_1361964161.189' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_227_1361964161.189' 
    capture_lex $P5048 
    .lex "$outer_ctx", $P101 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_108, $P5002
    repr_defined $I5001, fb_tmp_108
    unless $I5001 goto if564_else1341 
    set $P5003, fb_tmp_108["outer_ctx"]
    set $P5005, $P5003
    goto if564_end1342
  if564_else1341:
    null $P5004
    set $P5005, $P5004
  if564_end1342:
    unless_null $P5005, vivi_5651343
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_5651343:
    set $P101, $P5005
    defined $I5002, $P101
    unless $I5002 goto if566_end1345 
.annotate 'line', 1122
.annotate 'line', 1123
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!backend"
    find_lex $P5011, "$output"
    $P5012 = $P5010."compunit_mainline"($P5011)
    $P5013 = $P5012."set_outer_ctx"($P101)
  if566_end1345:
    find_lex $P5014, "%adverbs"
    set fb_tmp_109, $P5014
    repr_defined $I5003, fb_tmp_109
    unless $I5003 goto if568_else1348 
    set $P5015, fb_tmp_109["profile"]
    set $P5017, $P5015
    goto if568_end1349
  if568_else1348:
    null $P5016
    set $P5017, $P5016
  if568_end1349:
    unless_null $P5017, vivi_5691350
    nqp_get_sc_object $P5018, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5017, $P5018
  vivi_5691350:
    unless $P5017 goto if567_else1346 
.annotate 'line', 1126
.annotate 'line', 1127
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    nqp_get_sc_object $P5021, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5022, $P5019, $P5021, "$!backend"
    .const 'Sub' $P5024 = 'cuid_225_1361964161.189' 
    capture_lex $P5024
    newclosure $P5023, $P5024
    $P5025 = $P5022."run_profiled"($P5023)
    store_lex "$output", $P5025
    set $P5047, $P5025
    goto if567_end1347
  if567_else1346:
    find_lex $P5026, "%adverbs"
    set fb_tmp_110, $P5026
    repr_defined $I5004, fb_tmp_110
    unless $I5004 goto if571_else1353 
    set $P5027, fb_tmp_110["trace"]
    set $P5029, $P5027
    goto if571_end1354
  if571_else1353:
    null $P5028
    set $P5029, $P5028
  if571_end1354:
    unless_null $P5029, vivi_5721355
    nqp_get_sc_object $P5030, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5029, $P5030
  vivi_5721355:
    unless $P5029 goto if570_else1351 
.annotate 'line', 1129
.annotate 'line', 1130
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    nqp_get_sc_object $P5033, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5034, $P5031, $P5033, "$!backend"
    find_lex $P5035, "%adverbs"
    set fb_tmp_111, $P5035
    repr_defined $I5005, fb_tmp_111
    unless $I5005 goto if573_else1356 
    set $P5036, fb_tmp_111["trace"]
    set $P5038, $P5036
    goto if573_end1357
  if573_else1356:
    null $P5037
    set $P5038, $P5037
  if573_end1357:
    unless_null $P5038, vivi_5741358
    nqp_get_sc_object $P5039, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5038, $P5039
  vivi_5741358:
    .const 'Sub' $P5041 = 'cuid_227_1361964161.189' 
    capture_lex $P5041
    newclosure $P5040, $P5041
    $P5042 = $P5034."run_traced"($P5038, $P5040)
    store_lex "$output", $P5042
    set $P5046, $P5042
    goto if570_end1352
  if570_else1351:
.annotate 'line', 1132
.annotate 'line', 1133
    find_lex $P5044, "@args"
    find_lex $P5043, "$output"
    $P5045 = $P5043($P5044 :flat)
    store_lex "$output", $P5045
    set $P5046, $P5045
  if570_end1352:
    set $P5047, $P5046
  if567_end1347:
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1361964161.189") :anon :lex :outer("cuid_226_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1127

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1361964161.189") :anon :lex :outer("cuid_226_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1130

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_129_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1140
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
.sub "panic" :subid("cuid_130_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1145
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
.sub "stages" :subid("cuid_131_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1149
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
    unless $N5001 goto if575_end1360 
.annotate 'line', 1150
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if575_end1360:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_132_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1156
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_112 
    set $N5001, _lex_param_1
    unless $N5001 goto if576_end1363 
.annotate 'line', 1157
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    set fb_tmp_112, _lex_param_1
    repr_defined $I5001, fb_tmp_112
    unless $I5001 goto if577_else1364 
    set $P5003, fb_tmp_112[0]
    set $P5005, $P5003
    goto if577_end1365
  if577_else1364:
    null $P5004
    set $P5005, $P5004
  if577_end1365:
    unless_null $P5005, vivi_5781366
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_5781366:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5005
  if576_end1363:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_133_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1163
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_113 
    set $N5001, _lex_param_1
    unless $N5001 goto if579_end1368 
.annotate 'line', 1164
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if580_else1369 
    set $P5003, fb_tmp_113[0]
    set $P5005, $P5003
    goto if580_end1370
  if580_else1369:
    null $P5004
    set $P5005, $P5004
  if580_end1370:
    unless_null $P5005, vivi_5811371
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5005, $P5006
  vivi_5811371:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5005
  if579_end1368:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_134_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1170
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_135_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1172
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_136_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1174
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_9, default1374
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5006
  default1374:
    defined $I5001, _lex_param_1
    unless $I5001 goto if582_end1373 
.annotate 'line', 1175
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if582_end1373:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_137_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1182
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
    unless $N5001 goto if583_end1376 
.annotate 'line', 1183
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if583_end1376:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_138_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1189
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5040 = 'cuid_228_1361964161.189' 
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
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set fb_tmp_114, _lex_param_1
    repr_defined $I5001, fb_tmp_114
    unless $I5001 goto if584_else1378 
    set $P5005, fb_tmp_114[0]
    set $P5007, $P5005
    goto if584_end1379
  if584_else1378:
    null $P5006
    set $P5007, $P5006
  if584_end1379:
    unless_null $P5007, vivi_5851380
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_5851380:
    set $P101, $P5007
.annotate 'line', 1191
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1192
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1193
    $P5012 = $P102."arguments"()
    set $P104, $P5012
    set $P5013, $P103
    iter $P5015, $P103
  for_next1381:
    unless $P5015, for_done1383
    shift $P5017, $P5015
  for_redo1382:
    .const 'Sub' $P5016 = 'cuid_228_1361964161.189' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next1381
  for_done1383:
    set fb_tmp_115, _lex_param_2
    repr_defined $I5002, fb_tmp_115
    unless $I5002 goto if588_else1388 
    set $P5018, fb_tmp_115["help"]
    set $P5020, $P5018
    goto if588_end1389
  if588_else1388:
    null $P5019
    set $P5020, $P5019
  if588_end1389:
    unless_null $P5020, vivi_5891390
    nqp_get_sc_object $P5021, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5020, $P5021
  vivi_5891390:
    set $P5026, $P5020
    if $P5020 goto unless587_end1387 
    set fb_tmp_116, _lex_param_2
    repr_defined $I5003, fb_tmp_116
    unless $I5003 goto if590_else1391 
    set $P5022, fb_tmp_116["h"]
    set $P5024, $P5022
    goto if590_end1392
  if590_else1391:
    null $P5023
    set $P5024, $P5023
  if590_end1392:
    unless_null $P5024, vivi_5911393
    nqp_get_sc_object $P5025, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5024, $P5025
  vivi_5911393:
    set $P5026, $P5024
  unless587_end1387:
    unless $P5026 goto if586_end1385 
.annotate 'line', 1198
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5027."usage"($P101)
  if586_end1385:
.annotate 'line', 1200
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5031, $P5029, $P5030, "$!backend"
    set fb_tmp_117, _lex_param_2
    repr_defined $I5004, fb_tmp_117
    unless $I5004 goto if593_else1396 
    set $P5032, fb_tmp_117["target"]
    set $P5034, $P5032
    goto if593_end1397
  if593_else1396:
    null $P5033
    set $P5034, $P5033
  if593_end1397:
    unless_null $P5034, vivi_5941398
    nqp_get_sc_object $P5035, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5034, $P5035
  vivi_5941398:
    $P5036 = $P5031."is_precomp_stage"($P5034)
    unless $P5036 goto if592_end1395 
    box $P5037, 1
    set _lex_param_2["precomp"], $P5037
  if592_end1395:
.annotate 'line', 1204
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1361964161.189") :anon :lex :outer("cuid_138_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1195
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%adverbs"
.annotate 'line', 1196
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_139_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1208
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5101 = 'cuid_229_1361964161.189' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_230_1361964161.189' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_231_1361964161.189' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_232_1361964161.189' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_233_1361964161.189' 
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
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    set fb_tmp_118, _lex_param_2
    repr_defined $I5001, fb_tmp_118
    unless $I5001 goto if597_else1403 
    set $P5005, fb_tmp_118["version"]
    set $P5007, $P5005
    goto if597_end1404
  if597_else1403:
    null $P5006
    set $P5007, $P5006
  if597_end1404:
    unless_null $P5007, vivi_5981405
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_5981405:
    set $P5013, $P5007
    if $P5007 goto unless596_end1402 
    set fb_tmp_119, _lex_param_2
    repr_defined $I5002, fb_tmp_119
    unless $I5002 goto if599_else1406 
    set $P5009, fb_tmp_119["v"]
    set $P5011, $P5009
    goto if599_end1407
  if599_else1406:
    null $P5010
    set $P5011, $P5010
  if599_end1407:
    unless_null $P5011, vivi_6001408
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5012
  vivi_6001408:
    set $P5013, $P5011
  unless596_end1402:
    unless $P5013 goto if595_end1400 
.annotate 'line', 1209
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."version"()
  if595_end1400:
    set fb_tmp_120, _lex_param_2
    repr_defined $I5003, fb_tmp_120
    unless $I5003 goto if604_else1415 
    set $P5016, fb_tmp_120["verbose-config"]
    set $P5018, $P5016
    goto if604_end1416
  if604_else1415:
    null $P5017
    set $P5018, $P5017
  if604_end1416:
    unless_null $P5018, vivi_6051417
    nqp_get_sc_object $P5019, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5018, $P5019
  vivi_6051417:
    set $P5024, $P5018
    if $P5018 goto unless603_end1414 
    set fb_tmp_121, _lex_param_2
    repr_defined $I5004, fb_tmp_121
    unless $I5004 goto if606_else1418 
    set $P5020, fb_tmp_121["V"]
    set $P5022, $P5020
    goto if606_end1419
  if606_else1418:
    null $P5021
    set $P5022, $P5021
  if606_end1419:
    unless_null $P5022, vivi_6071420
    nqp_get_sc_object $P5023, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5022, $P5023
  vivi_6071420:
    set $P5024, $P5022
  unless603_end1414:
    set $P5029, $P5024
    if $P5024 goto unless602_end1412 
    set fb_tmp_122, _lex_param_2
    repr_defined $I5005, fb_tmp_122
    unless $I5005 goto if608_else1421 
    set $P5025, fb_tmp_122["show-config"]
    set $P5027, $P5025
    goto if608_end1422
  if608_else1421:
    null $P5026
    set $P5027, $P5026
  if608_end1422:
    unless_null $P5027, vivi_6091423
    nqp_get_sc_object $P5028, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5027, $P5028
  vivi_6091423:
    set $P5029, $P5027
  unless602_end1412:
    unless $P5029 goto if601_end1410 
.annotate 'line', 1210
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."verbose-config"()
  if601_end1410:
    set fb_tmp_123, _lex_param_2
    repr_defined $I5006, fb_tmp_123
    unless $I5006 goto if611_else1426 
    set $P5032, fb_tmp_123["nqpevent"]
    set $P5034, $P5032
    goto if611_end1427
  if611_else1426:
    null $P5033
    set $P5034, $P5033
  if611_end1427:
    unless_null $P5034, vivi_6121428
    nqp_get_sc_object $P5035, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5034, $P5035
  vivi_6121428:
    unless $P5034 goto if610_end1425 
.annotate 'line', 1212
    nqp_decontainerize $P5036, _lex_param_0
    set fb_tmp_124, _lex_param_2
    repr_defined $I5007, fb_tmp_124
    unless $I5007 goto if613_else1429 
    set $P5037, fb_tmp_124["nqpevent"]
    set $P5039, $P5037
    goto if613_end1430
  if613_else1429:
    null $P5038
    set $P5039, $P5038
  if613_end1430:
    unless_null $P5039, vivi_6141431
    nqp_get_sc_object $P5040, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5039, $P5040
  vivi_6141431:
    $P5041 = $P5036."nqpevent"($P5039)
  if610_end1425:
    box $P5042, 0
    set $P103, $P5042
    set fb_tmp_125, _lex_param_2
    repr_defined $I5008, fb_tmp_125
    unless $I5008 goto if615_else1432 
    set $P5043, fb_tmp_125["target"]
    set $P5045, $P5043
    goto if615_end1433
  if615_else1432:
    null $P5044
    set $P5045, $P5044
  if615_end1433:
    unless_null $P5045, vivi_6161434
    nqp_get_sc_object $P5046, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5045, $P5046
  vivi_6161434:
    set $S5002, $P5045
    downcase $S5001, $S5002
    box $P5047, $S5001
    set $P104, $P5047
    new $P5087, 'ExceptionHandler'
    set_label $P5087, catch_handler_6481486
    $P5087.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5087
.annotate 'line', 1218
    new $P5085, 'ExceptionHandler'
    set_label $P5085, catch_handler_6441481
    $P5085.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5085
    new $P5085, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5085, catch_handler_6451482
    push_eh $P5085
    set fb_tmp_126, _lex_param_2
    repr_defined $I5010, fb_tmp_126
    unless $I5010 goto if618_else1437 
    set $P5048, fb_tmp_126["e"]
    set $P5050, $P5048
    goto if618_end1438
  if618_else1437:
    null $P5049
    set $P5050, $P5049
  if618_end1438:
    unless_null $P5050, vivi_6191439
    nqp_get_sc_object $P5051, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5050, $P5051
  vivi_6191439:
    defined $I5009, $P5050
    unless $I5009 goto if617_else1435 
    .const 'Sub' $P5052 = 'cuid_229_1361964161.189' 
    capture_lex $P5052
    $P5053 = $P5052()
    goto if617_end1436
  if617_else1435:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if627_else1452 
.annotate 'line', 1227
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5055
    set $P5069, $P101
    goto if627_end1453
  if627_else1452:
    set fb_tmp_129, _lex_param_2
    repr_defined $I5012, fb_tmp_129
    unless $I5012 goto if629_else1456 
    set $P5056, fb_tmp_129["combine"]
    set $P5058, $P5056
    goto if629_end1457
  if629_else1456:
    null $P5057
    set $P5058, $P5057
  if629_end1457:
    unless_null $P5058, vivi_6301458
    nqp_get_sc_object $P5059, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5058, $P5059
  vivi_6301458:
    unless $P5058 goto if628_else1454 
.annotate 'line', 1228
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5061
    set $P5068, $P101
    goto if628_end1455
  if628_else1454:
.annotate 'line', 1229
    nqp_decontainerize $P5062, _lex_param_0
    set fb_tmp_130, _lex_param_1
    repr_defined $I5013, fb_tmp_130
    unless $I5013 goto if631_else1459 
    set $P5063, fb_tmp_130[0]
    set $P5065, $P5063
    goto if631_end1460
  if631_else1459:
    null $P5064
    set $P5065, $P5064
  if631_end1460:
    unless_null $P5065, vivi_6321461
    nqp_get_sc_object $P5066, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5065, $P5066
  vivi_6321461:
    $P5067 = $P5062."evalfiles"($P5065, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5067
    set $P5068, $P101
  if628_end1455:
    set $P5069, $P5068
  if627_end1453:
  if617_end1436:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5080, $I5014
    set $P5079, $P5080
    unless $I5014 goto if634_end1465 
.annotate 'line', 1231
    nqp_decontainerize $P5070, _lex_param_0
    nqp_get_sc_object $P5071, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5072, $P5070, $P5071, "$!backend"
    $P5073 = $P5072."is_textual_stage"($P104)
    set $P5078, $P5073
    if $P5073 goto unless635_end1467 
    set fb_tmp_131, _lex_param_2
    repr_defined $I5016, fb_tmp_131
    unless $I5016 goto if636_else1468 
    set $P5074, fb_tmp_131["output"]
    set $P5076, $P5074
    goto if636_end1469
  if636_else1468:
    null $P5075
    set $P5076, $P5075
  if636_end1469:
    unless_null $P5076, vivi_6371470
    nqp_get_sc_object $P5077, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5076, $P5077
  vivi_6371470:
    set $P5078, $P5076
  unless635_end1467:
    set $P5079, $P5078
  if634_end1465:
    unless $P5079 goto if633_end1463 
    .const 'Sub' $P5081 = 'cuid_230_1361964161.189' 
    capture_lex $P5081
    $P5082 = $P5081()
  if633_end1463:
    nqp_get_sc_object $P5083, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    nqp_get_sc_object $P5084, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5086, $P5084
    pop_eh 
    pop_eh 
    goto skip_handler_6431480
  catch_handler_6441481:
    .get_results ($P5085) 
    .const 'Sub' $P10001 = 'cuid_231_1361964161.189' 
    capture_lex $P10001
    $P10001($P5085)
    set $I10001, 1
    set $P5085["handled"], $I10001
    nqp_get_sc_object $P10002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10002
    goto skip_handler_6431480
  catch_handler_6451482:
    .get_results ($P5085) 
    .const 'Sub' $P10003 = 'cuid_232_1361964161.189' 
    capture_lex $P10003
    $P10003($P5085)
    set $I10002, 1
    set $P5085["handled"], $I10002
    nqp_get_sc_object $P10004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10004
    goto skip_handler_6431480
  skip_handler_6431480:
    set $P5088, $P5086
    pop_eh 
    goto skip_handler_6471485
  catch_handler_6481486:
    .get_results ($P5087) 
    set $I10001, 1
    set $P5087["handled"], $I10001
    nqp_get_sc_object $P10001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5087
    pop_upto_eh $P5087
    pop_eh 
    set $P5088, $P10001
    goto skip_handler_6471485
  skip_handler_6471485:
    unless $P103 goto if649_end1488 
.annotate 'line', 1254
    set fb_tmp_133, _lex_param_2
    repr_defined $I5017, fb_tmp_133
    unless $I5017 goto if652_else1493 
    set $P5089, fb_tmp_133["ll-exception"]
    set $P5091, $P5089
    goto if652_end1494
  if652_else1493:
    null $P5090
    set $P5091, $P5090
  if652_end1494:
    unless_null $P5091, vivi_6531495
    nqp_get_sc_object $P5092, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5091, $P5092
  vivi_6531495:
    set $P5094, $P5091
    if $P5091 goto unless651_end1492 
    nqp_decontainerize $P5093, _lex_param_0
    can $I5019, $P5093, "handle-exception"
    not $I5018, $I5019
    box $P5095, $I5018
    set $P5094, $P5095
  unless651_end1492:
    unless $P5094 goto if650_else1489 
    .const 'Sub' $P5096 = 'cuid_233_1361964161.189' 
    capture_lex $P5096
    $P5097 = $P5096()
    set $P5100, $P5097
    goto if650_end1490
  if650_else1489:
.annotate 'line', 1261
.annotate 'line', 1262
    nqp_decontainerize $P5098, _lex_param_0
    $P5099 = $P5098."handle-exception"($P102)
    set $P5100, $P5099
  if650_end1490:
  if649_end1488:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1361964161.189") :anon :lex :outer("cuid_139_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1219
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1222
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_127, $P5009
    repr_defined $I5001, fb_tmp_127
    unless $I5001 goto if620_else1440 
    set $P5010, fb_tmp_127["e"]
    set $P5012, $P5010
    goto if620_end1441
  if620_else1440:
    null $P5011
    set $P5012, $P5011
  if620_end1441:
    unless_null $P5012, vivi_6211442
    nqp_get_sc_object $P5013, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5012, $P5013
  vivi_6211442:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    box $P5025, $I5002
    set $P5024, $P5025
    if $I5002 goto unless624_end1448 
.annotate 'line', 1223
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend"
    find_lex $P5022, "$target"
    $P5023 = $P5021."is_textual_stage"($P5022)
    set $P5024, $P5023
  unless624_end1448:
    set $P5031, $P5024
    if $P5024 goto unless623_end1446 
    find_lex $P5026, "%adverbs"
    set fb_tmp_128, $P5026
    repr_defined $I5003, fb_tmp_128
    unless $I5003 goto if625_else1449 
    set $P5027, fb_tmp_128["output"]
    set $P5029, $P5027
    goto if625_end1450
  if625_else1449:
    null $P5028
    set $P5029, $P5028
  if625_end1450:
    unless_null $P5029, vivi_6261451
    nqp_get_sc_object $P5030, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5029, $P5030
  vivi_6261451:
    set $P5031, $P5029
  unless623_end1446:
    set $P5038, $P5031
    if $P5031 goto unless622_end1444 
.annotate 'line', 1224
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$result"
    find_lex $P5035, "$target"
    find_lex $P5036, "%adverbs"
    $P5037 = $P5032."dumper"($P5034, $P5035, $P5036 :flat :named)
    set $P5038, $P5037
  unless622_end1444:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1361964161.189") :anon :lex :outer("cuid_139_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1231
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_132, $P5003
    repr_defined $I5001, fb_tmp_132
    unless $I5001 goto if638_else1471 
    set $P5004, fb_tmp_132["output"]
    set $P5006, $P5004
    goto if638_end1472
  if638_else1471:
    null $P5005
    set $P5006, $P5005
  if638_end1472:
    unless_null $P5006, vivi_6391473
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5006, $P5007
  vivi_6391473:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless641_end1477 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless641_end1477:
    unless $I5004 goto if640_else1474 
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5011, $P5009
    goto if640_end1475
  if640_else1474:
    set $S5003, $P101
    open $P5010, $S5003, "w"
    set $P5011, $P5010
  if640_end1475:
    set $P102, $P5011
    if $P102 goto unless642_end1479 
.annotate 'line', 1236
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    set $S5005, $P101
    concat $S5004, "Cannot write to ", $S5005
    $P5014 = $P5012."panic"($S5004)
  unless642_end1479:
    find_lex $P5015, "$result"
    $P5016 = $P102."print"($P5015)
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1361964161.189") :anon :lex :outer("cuid_139_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1240
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
.sub "" :subid("cuid_232_1361964161.189") :anon :lex :outer("cuid_139_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1244
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if646_else1483 
.annotate 'line', 1245
.annotate 'line', 1246
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if646_end1484
  if646_else1483:
.annotate 'line', 1247
    rethrow _lex_param_0
  if646_end1484:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1361964161.189") :anon :lex :outer("cuid_139_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1255
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    getinterp $P5002
    $P5003 = $P5002."stderr_handle"()
    set $P101, $P5003
    find_lex $P5004, "$error"
    $P5005 = $P101."print"($P5004)
    $P5006 = $P101."print"("\n")
.annotate 'line', 1259
    find_lex $P5007, "$error"
    $P5008 = $P5007."backtrace_strings"()
    join $S5001, "\n", $P5008
    $P5009 = $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_140_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1268
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_234_1361964161.189' 
    capture_lex $P5043 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_134 
    .local pmc pkg_lookup_tmp_5 
    .local pmc pkg_lookup_tmp_4 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
.annotate 'line', 1270
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1272
    nqp_get_sc_object $P5006, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    set pkg_lookup_tmp_4, $P5006
    get_who $P5007, pkg_lookup_tmp_4
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if655_else1498 
    get_who $P5009, pkg_lookup_tmp_4
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if655_end1499
  if655_else1498:
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5010
  if655_end1499:
    set pkg_lookup_tmp_5, $P5011
    get_who $P5012, pkg_lookup_tmp_5
    exists $I5003, $P5012["CommandLine"]
    unless $I5003 goto if656_else1500 
    get_who $P5014, pkg_lookup_tmp_5
    set $P5013, $P5014["CommandLine"]
    set $P5016, $P5013
    goto if656_end1501
  if656_else1500:
    nqp_get_sc_object $P5015, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5016, $P5015
  if656_end1501:
    get_who $P5005, $P5016
    set fb_tmp_134, $P5005
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if654_else1496 
    set $P5017, fb_tmp_134["Parser"]
    set $P5019, $P5017
    goto if654_end1497
  if654_else1496:
    null $P5018
    set $P5019, $P5018
  if654_end1497:
    unless_null $P5019, vivi_6571502
    nqp_get_sc_object $P5020, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5019, $P5020
  vivi_6571502:
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions"
    $P5024 = $P5019."new"($P5023)
    set $P101, $P5024
.annotate 'line', 1273
    $P101."add-stopper"("-e")
.annotate 'line', 1274
    $P101."stop-after-first-arg"()
    new $P5029, 'ExceptionHandler'
    set_label $P5029, catch_handler_6611506
    $P5029.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5029
.annotate 'line', 1276
    new $P5027, 'ExceptionHandler'
    set_label $P5027, catch_handler_6591504
    $P5027.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5027
.annotate 'line', 1277
    $P5025 = $P101."parse"(_lex_param_1)
    set $P102, $P5025
    nqp_get_sc_object $P5026, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5028, $P5026
    pop_eh 
    goto skip_handler_6581503
  catch_handler_6591504:
    .get_results ($P5027) 
    .const 'Sub' $P10001 = 'cuid_234_1361964161.189' 
    capture_lex $P10001
    $P10001($P5027)
    set $I10001, 1
    set $P5027["handled"], $I10001
    nqp_get_sc_object $P10002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5027
    pop_upto_eh $P5027
    pop_eh 
    set $P5028, $P10002
    goto skip_handler_6581503
  skip_handler_6581503:
    set $P5030, $P5028
    pop_eh 
    goto skip_handler_6601505
  catch_handler_6611506:
    .get_results ($P5029) 
    set $I10001, 1
    set $P5029["handled"], $I10001
    nqp_get_sc_object $P10001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5029
    pop_upto_eh $P5029
    pop_eh 
    set $P5030, $P10001
    goto skip_handler_6601505
  skip_handler_6601505:
    unless $P102 goto if662_else1507 
.annotate 'line', 1284
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
.annotate 'line', 1285
    $P5033 = $P102."options"()
    repr_bind_attr_obj $P5031, $P5032, "%!cli-options", $P5033
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
.annotate 'line', 1286
    $P5036 = $P102."arguments"()
    repr_bind_attr_obj $P5034, $P5035, "@!cli-arguments", $P5036
    goto if662_end1508
  if662_else1507:
.annotate 'line', 1288
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    new $P5039, 'Hash'
    repr_bind_attr_obj $P5037, $P5038, "%!cli-options", $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    new $P5042, 'ResizablePMCArray'
    repr_bind_attr_obj $P5040, $P5041, "@!cli-arguments", $P5042
  if662_end1508:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1361964161.189") :anon :lex :outer("cuid_140_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1278
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1280
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_141_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1295
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5049 = 'cuid_237_1361964161.189' 
    capture_lex $P5049 
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
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1509
    .lex "RETURN", $P108
    set fb_tmp_135, _lex_param_3
    repr_defined $I5001, fb_tmp_135
    unless $I5001 goto if663_else1511 
    set $P5008, fb_tmp_135["target"]
    set $P5010, $P5008
    goto if663_end1512
  if663_else1511:
    null $P5009
    set $P5010, $P5009
  if663_end1512:
    unless_null $P5010, vivi_6641513
    nqp_get_sc_object $P5011, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5010, $P5011
  vivi_6641513:
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5012, $S5001
    set $P101, $P5012
    set fb_tmp_136, _lex_param_3
    repr_defined $I5002, fb_tmp_136
    unless $I5002 goto if665_else1514 
    set $P5013, fb_tmp_136["encoding"]
    set $P5015, $P5013
    goto if665_end1515
  if665_else1514:
    null $P5014
    set $P5015, $P5014
  if665_end1515:
    unless_null $P5015, vivi_6661516
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5015, $P5016
  vivi_6661516:
    set $P102, $P5015
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if667_else1517 
    set $P5018, _lex_param_1
    goto if667_end1518
  if667_else1517:
    new $P5017, 'ResizablePMCArray'
    push $P5017, _lex_param_1
    set $P5018, $P5017
  if667_end1518:
    set $P103, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    join $S5003, ",", $P103
    box $P5021, $S5003
    repr_bind_attr_obj $P5019, $P5020, "$!user_progname", $P5021
    set $P5022, $P103
    iter $P5024, $P103
  for_next1523:
    unless $P5024, for_done1525
    shift $P5026, $P5024
  for_redo1524:
    .const 'Sub' $P5025 = 'cuid_237_1361964161.189' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1523
  for_done1525:
    join $S5004, "", $P104
    box $P5027, $S5004
    set $P105, $P5027
    join $S5005, " ", $P103
    box $P5028, $S5005
    set $P106, $P5028
.annotate 'line', 1316
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5030
    set $S5006, $P101
    iseq $I5004, $S5006, ""
    box $P5036, $I5004
    set $P5035, $P5036
    if $I5004 goto unless673_end1531 
.annotate 'line', 1317
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!backend"
    $P5034 = $P5033."is_textual_stage"($P101)
    set $P5035, $P5034
  unless673_end1531:
    set $P5041, $P5035
    if $P5035 goto unless672_end1529 
    set fb_tmp_137, _lex_param_3
    repr_defined $I5005, fb_tmp_137
    unless $I5005 goto if674_else1532 
    set $P5037, fb_tmp_137["output"]
    set $P5039, $P5037
    goto if674_end1533
  if674_else1532:
    null $P5038
    set $P5039, $P5038
  if674_end1533:
    unless_null $P5039, vivi_6751534
    nqp_get_sc_object $P5040, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5039, $P5040
  vivi_6751534:
    set $P5041, $P5039
  unless672_end1529:
    unless $P5041 goto if671_else1526 
    find_lex $P5042, "RETURN"
    $P5043 = $P5042($P107)
    set $P5048, $P5043
    goto if671_end1527
  if671_else1526:
.annotate 'line', 1319
.annotate 'line', 1320
    nqp_decontainerize $P5045, _lex_param_0
    $P5046 = $P5045."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5044, "RETURN"
    $P5047 = $P5044($P5046)
    set $P5048, $P5047
  if671_end1527:
    goto lexotic_1510
  lexotic_1509:
    .get_results ($P5048)
  lexotic_1510:
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1361964161.189") :anon :lex :outer("cuid_141_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1301
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_236_1361964161.189' 
    capture_lex $P5006 
    .lex "$err", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    .const 'Sub' $P5003 = 'cuid_236_1361964161.189' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P101
    unless $P101 goto if670_end1522 
    die $P101
    set $P5005, $P101
  if670_end1522:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1361964161.189") :anon :lex :outer("cuid_237_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1303
    .const 'Sub' $P5012 = 'cuid_235_1361964161.189' 
    capture_lex $P5012 
    .lex "$in-handle", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    new $P5010, 'ExceptionHandler'
    set_label $P5010, catch_handler_6691520
    $P5010.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5010
    find_lex $P5003, "$_"
    set $S5001, $P5003
    open $P5002, $S5001, "r"
    set $P101, $P5002
    find_lex $P5004, "$encoding"
    $P5005 = $P101."encoding"($P5004)
    find_lex $P5006, "@codes"
    $P5007 = $P101."readall"()
    set $S5002, $P5007
    push $P5006, $S5002
    $P5008 = $P101."close"()
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5009
    pop_eh 
    goto skip_handler_6681519
  catch_handler_6691520:
    .get_results ($P5010) 
    .const 'Sub' $P10001 = 'cuid_235_1361964161.189' 
    capture_lex $P10001
    $P10001($P5010)
    set $I10001, 1
    set $P5010["handled"], $I10001
    nqp_get_sc_object $P10002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    finalize $P5010
    pop_upto_eh $P5010
    pop_eh 
    set $P5011, $P10002
    goto skip_handler_6681519
  skip_handler_6681519:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1361964161.189") :anon :lex :outer("cuid_236_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1308
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
.sub "exists_stage" :subid("cuid_142_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1324
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_238_1361964161.189' 
    capture_lex $P5012 
    .lex "$found", $P101 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1535
    .lex "RETURN", $P102
    box $P5002, 0
    set $P101, $P5002
.annotate 'line', 1326
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."stages"()
    set $P5003, $P5007
    iter $P5005, $P5007
  for_next1539:
    unless $P5005, for_done1541
    shift $P5009, $P5005
  for_redo1540:
    .const 'Sub' $P5008 = 'cuid_238_1361964161.189' 
    capture_lex $P5008
    $P5003 = $P5008($P5009)
    goto for_next1539
  for_done1541:
    find_lex $P5010, "RETURN"
    $P5011 = $P5010(0)
    goto lexotic_1536
  lexotic_1535:
    .get_results ($P5011)
  lexotic_1536:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1361964161.189") :anon :lex :outer("cuid_142_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1326
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stage"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if676_end1538 
.annotate 'line', 1327
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(1)
    set $P5004, $P5003
  if676_end1538:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "compile" :subid("cuid_143_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1334
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("from") :optional 
    .param int haz_param_11 :opt_flag 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5056 = 'cuid_239_1361964161.189' 
    capture_lex $P5056 
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
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_138 
    .local pmc pkg_viv_tmp_15 
    .local pmc fb_tmp_139 
    .local pmc fb_tmp_140 
    .local pmc fb_tmp_141 
    if haz_param_11, default1590
    nqp_get_sc_object $P5055, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_2, $P5055
  default1590:
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1542
    .lex "RETURN", $P108
    unless_null $P101, fallback1544
    nqp_get_sc_object $P5009, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_15, $P5008
    set fb_tmp_138, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if677_else1545 
    set $P5010, fb_tmp_138["%COMPILING"]
    set $P5012, $P5010
    goto if677_end1546
  if677_else1545:
    null $P5011
    set $P5012, $P5011
  if677_end1546:
    unless_null $P5012, vivi_6781547
    new $P5013, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5013
    set $P5012, $P5013
  vivi_6781547:
    unless_null $P5012, vivi_6791548
    die "Contextual %*COMPILING not found"
    box $P5014, "Contextual %*COMPILING not found"
    set $P5012, $P5014
  vivi_6791548:
    set $P101, $P5012
  fallback1544:
    set $P101["%?OPTIONS"], _lex_param_3
    set fb_tmp_140, _lex_param_3
    repr_defined $I5003, fb_tmp_140
    unless $I5003 goto if683_else1554 
    set $P5022, fb_tmp_140["target"]
    set $P5024, $P5022
    goto if683_end1555
  if683_else1554:
    null $P5023
    set $P5024, $P5023
  if683_end1555:
    unless_null $P5024, vivi_6841556
    nqp_get_sc_object $P5025, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5024, $P5025
  vivi_6841556:
    set $S5002, $P5024
    downcase $S5001, $S5002
    box $P5026, $S5001
    set $P103, $P5026
    set $P104, _lex_param_1
    getinterp $P5027
    $P5028 = $P5027."stderr_handle"()
    set $P105, $P5028
    getinterp $P5029
    $P5030 = $P5029."stdin_handle"()
    set $P106, $P5030
    set fb_tmp_141, _lex_param_3
    repr_defined $I5004, fb_tmp_141
    unless $I5004 goto if685_else1557 
    set $P5031, fb_tmp_141["stagestats"]
    set $P5033, $P5031
    goto if685_end1558
  if685_else1557:
    null $P5032
    set $P5033, $P5032
  if685_end1558:
    unless_null $P5033, vivi_6861559
    nqp_get_sc_object $P5034, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5033, $P5034
  vivi_6861559:
    set $P107, $P5033
    set $S5003, _lex_param_2
    iseq $I5005, $S5003, ""
    box $P5038, $I5005
    set $P5037, $P5038
    if $I5005 goto unless688_end1563 
.annotate 'line', 1343
    nqp_decontainerize $P5035, _lex_param_0
    $P5036 = $P5035."exists_stage"(_lex_param_2)
    set $P5037, $P5036
  unless688_end1563:
    if $P5037 goto unless687_end1561 
    set $S5006, _lex_param_2
    concat $S5005, "Unknown compilation input '", $S5006
    concat $S5004, $S5005, "'"
    box $P5039, $S5004
    die $P5039
  unless687_end1561:
    set $S5007, $P103
    iseq $I5006, $S5007, ""
    box $P5043, $I5006
    set $P5042, $P5043
    if $I5006 goto unless690_end1567 
.annotate 'line', 1346
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."exists_stage"($P103)
    set $P5042, $P5041
  unless690_end1567:
    if $P5042 goto unless689_end1565 
    set $S5010, $P103
    concat $S5009, "Unknown compilation target '", $S5010
    concat $S5008, $S5009, "'"
    box $P5044, $S5008
    die $P5044
  unless689_end1565:
.annotate 'line', 1349
    nqp_decontainerize $P5048, _lex_param_0
    $P5049 = $P5048."stages"()
    set $P5045, $P5049
    iter $P5047, $P5049
    new $P5051, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5051, for_handlers1586
    push_eh $P5051
  for_next1587:
    unless $P5047, for_done1589
    shift $P5052, $P5047
  for_redo1588:
    .const 'Sub' $P5050 = 'cuid_239_1361964161.189' 
    capture_lex $P5050
    $P5045 = $P5050($P5052)
    goto for_next1587
  for_handlers1586:
    .get_results ($P5051)
    pop_upto_eh $P5051
    getattribute $P5051, $P5051, 'type'
    eq $P5051, .CONTROL_LOOP_NEXT, for_next1587
    eq $P5051, .CONTROL_LOOP_REDO, for_redo1588
  for_done1589:
    pop_eh 
    find_lex $P5053, "RETURN"
    $P5054 = $P5053($P104)
    goto lexotic_1543
  lexotic_1542:
    .get_results ($P5054)
  lexotic_1543:
    .return ($P5054) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1361964161.189") :anon :lex :outer("cuid_143_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1349
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    find_lex $P5003, "$from"
    set $S5001, $P5003
    isne $I5001, $S5001, ""
    unless $I5001 goto if691_end1569 
.annotate 'line', 1350
    set $S5002, _lex_param_0
    find_lex $P5004, "$from"
    set $S5003, $P5004
    iseq $I5002, $S5002, $S5003
    unless $I5002 goto if692_end1571 
.annotate 'line', 1351
    box $P5005, ""
    store_lex "$from", $P5005
  if692_end1571:
    die 0, .CONTROL_LOOP_NEXT
  if691_end1569:
    time $N5001
    box $P5006, $N5001
    set $P101, $P5006
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    set $S5004, _lex_param_0
    can $I5003, $P5007, $S5004
    unless $I5003 goto if693_else1572 
.annotate 'line', 1357
.annotate 'line', 1358
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "$result"
    find_lex $P5012, "%adverbs"
    set $S5005, _lex_param_0
    $P5013 = $P5009.$S5005($P5011, $P5012 :flat :named)
    store_lex "$result", $P5013
    goto if693_end1573
  if693_else1572:
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    nqp_get_sc_object $P5016, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5017, $P5014, $P5016, "$!backend"
    set $S5006, _lex_param_0
    can $I5004, $P5017, $S5006
    unless $I5004 goto if694_else1574 
.annotate 'line', 1360
.annotate 'line', 1361
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend"
    find_lex $P5022, "$result"
    find_lex $P5023, "%adverbs"
    set $S5007, _lex_param_0
    $P5024 = $P5021.$S5007($P5022, $P5023 :flat :named)
    store_lex "$result", $P5024
    set $P5026, $P5024
    goto if694_end1575
  if694_else1574:
.annotate 'line', 1363
    set $S5010, _lex_param_0
    concat $S5009, "Unknown compilation stage '", $S5010
    concat $S5008, $S5009, "'"
    box $P5025, $S5008
    die $P5025
    set $P5026, $P5025
  if694_end1575:
  if693_end1573:
    time $N5003
    set $N5004, $P101
    sub $N5002, $N5003, $N5004
    box $P5027, $N5002
    set $P102, $P5027
    find_lex $P5028, "$stagestats"
    defined $I5005, $P5028
    unless $I5005 goto if695_end1577 
.annotate 'line', 1367
    find_lex $P5029, "$stderr"
    new $P5030, 'ResizablePMCArray'
    push $P5030, _lex_param_0
    push $P5030, $P102
    sprintf $S5011, "Stage %-11s: %7.3f", $P5030
    $P5031 = $P5029."print"($S5011)
    find_lex $P5032, "$stagestats"
    set $I5007, $P5032
    band $I5006, $I5007, 4
    unless $I5006 goto if696_end1579 
.annotate 'line', 1369
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    nqp_get_sc_object $P5035, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5036, $P5033, $P5035, "$!backend"
    $P5037 = $P5036."force_gc"()
  if696_end1579:
    find_lex $P5038, "$stagestats"
    set $I5009, $P5038
    band $I5008, $I5009, 2
    unless $I5008 goto if697_end1581 
    find_lex $P5039, "$stderr"
.annotate 'line', 1370
    find_lex $P5041, "self"
    nqp_decontainerize $P5040, $P5041
    nqp_get_sc_object $P5042, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5043, $P5040, $P5042, "$!backend"
    $P5044 = $P5043."vmstat"()
    $P5045 = $P5039."print"($P5044)
  if697_end1581:
    find_lex $P5046, "$stderr"
    $P5047 = $P5046."print"("\n")
    find_lex $P5048, "$stagestats"
    set $I5011, $P5048
    band $I5010, $I5011, 8
    box $P5054, $I5010
    set $P5053, $P5054
    unless $I5010 goto if698_end1583 
.annotate 'line', 1373
    find_lex $P5049, "$stderr"
    $P5050 = $P5049."print"("continue> ")
    find_lex $P5051, "$stdin"
    $P5052 = $P5051."readline"()
    set $P5053, $P5052
  if698_end1583:
  if695_end1577:
    set $S5012, _lex_param_0
    find_lex $P5055, "$target"
    set $S5013, $P5055
    iseq $I5012, $S5012, $S5013
    set $I5013, $I5012
    unless $I5012 goto if699_end1585 
    die 0, .CONTROL_LOOP_LAST
    set $I5013, 0
  if699_end1585:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_144_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1383
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
.sub "parse" :subid("cuid_145_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1387
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
    .local pmc fb_tmp_146 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1591
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_142, _lex_param_2
    repr_defined $I5001, fb_tmp_142
    unless $I5001 goto if701_else1595 
    set $P5005, fb_tmp_142["transcode"]
    set $P5007, $P5005
    goto if701_end1596
  if701_else1595:
    null $P5006
    set $P5007, $P5006
  if701_end1596:
    unless_null $P5007, vivi_7021597
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_7021597:
    unless $P5007 goto if700_end1594 
.annotate 'line', 1389
.annotate 'line', 1390
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend"
    set fb_tmp_143, _lex_param_2
    repr_defined $I5002, fb_tmp_143
    unless $I5002 goto if703_else1598 
    set $P5012, fb_tmp_143["transcode"]
    set $P5014, $P5012
    goto if703_end1599
  if703_else1598:
    null $P5013
    set $P5014, $P5013
  if703_end1599:
    unless_null $P5014, vivi_7041600
    nqp_get_sc_object $P5015, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5014, $P5015
  vivi_7041600:
    $P5016 = $P5011."apply_transcodings"($P101, $P5014)
    set $P101, $P5016
  if700_end1594:
.annotate 'line', 1392
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."parsegrammar"()
    set $P102, $P5018
    set fb_tmp_144, _lex_param_2
    repr_defined $I5004, fb_tmp_144
    unless $I5004 goto if706_else1603 
    set $P5019, fb_tmp_144["target"]
    set $P5021, $P5019
    goto if706_end1604
  if706_else1603:
    null $P5020
    set $P5021, $P5020
  if706_end1604:
    unless_null $P5021, vivi_7071605
    nqp_get_sc_object $P5022, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5021, $P5022
  vivi_7071605:
    set $S5001, $P5021
    iseq $I5003, $S5001, "parse"
    if $I5003 goto unless705_end1602 
.annotate 'line', 1394
    nqp_decontainerize $P5023, _lex_param_0
    $P5024 = $P5023."parseactions"()
    set $P103, $P5024
  unless705_end1602:
    set fb_tmp_145, _lex_param_2
    repr_defined $I5005, fb_tmp_145
    unless $I5005 goto if709_else1608 
    set $P5025, fb_tmp_145["rxtrace"]
    set $P5027, $P5025
    goto if709_end1609
  if709_else1608:
    null $P5026
    set $P5027, $P5026
  if709_end1609:
    unless_null $P5027, vivi_7101610
    nqp_get_sc_object $P5028, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5027, $P5028
  vivi_7101610:
    unless $P5027 goto if708_end1607 
.annotate 'line', 1395
    get_how $P5029, $P102
    $P5030 = $P5029."trace-on"($P102)
  if708_end1607:
.annotate 'line', 1396
    $P5031 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5031
    set fb_tmp_146, _lex_param_2
    repr_defined $I5006, fb_tmp_146
    unless $I5006 goto if712_else1613 
    set $P5032, fb_tmp_146["rxtrace"]
    set $P5034, $P5032
    goto if712_end1614
  if712_else1613:
    null $P5033
    set $P5034, $P5033
  if712_end1614:
    unless_null $P5034, vivi_7131615
    nqp_get_sc_object $P5035, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5034, $P5035
  vivi_7131615:
    unless $P5034 goto if711_end1612 
.annotate 'line', 1397
    get_how $P5036, $P102
    $P5037 = $P5036."trace-off"($P102)
  if711_end1612:
    if $P104 goto unless714_end1617 
.annotate 'line', 1398
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."panic"("Unable to parse source")
  unless714_end1617:
    find_lex $P5040, "RETURN"
    $P5041 = $P5040($P104)
    goto lexotic_1592
  lexotic_1591:
    .get_results ($P5041)
  lexotic_1592:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_146_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1402
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
.annotate 'line', 1403
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1405
    nqp_get_sc_object $P5003, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22", 12
    $P5004 = $P5003."ACCEPTS"($P101)
    if $P5004 goto unless715_end1619 
.annotate 'line', 1404
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5006, _lex_param_1
    $P5007 = $P5006."name"(_lex_param_1)
    set $S5002, $P5007
    concat $S5001, "Unable to obtain AST from ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless715_end1619:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_147_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1409
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if716_else1620 
.annotate 'line', 1410
.annotate 'line', 1411
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    box $P5004, $S5001
    set $P5003, $P5004
    goto if716_end1621
  if716_else1620:
.annotate 'line', 1413
    box $P5002, "Cannot dump this object; no dump method"
    die $P5002
    set $P5003, $P5002
  if716_end1621:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_148_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1418
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_12 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_12, default1624
    nqp_get_sc_object $P5005, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5005
  default1624:
    unless _lex_param_1 goto if717_end1623 
.annotate 'line', 1419
.annotate 'line', 1420
    $P5001 = "&say"(_lex_param_1)
  if717_end1623:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_149_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1426
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$backver", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_147 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!config"
    set fb_tmp_147, $P5005
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if718_else1625 
    set $P5006, fb_tmp_147["version"]
    set $P5008, $P5006
    goto if718_end1626
  if718_else1625:
    null $P5007
    set $P5008, $P5007
  if718_end1626:
    unless_null $P5008, vivi_7191627
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5008, $P5009
  vivi_7191627:
    set $P101, $P5008
.annotate 'line', 1428
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend"
    $P5013 = $P5012."version_string"()
    set $P102, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!language"
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
.sub "show-config" :subid("cuid_150_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1433
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_151_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1435
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_240_1361964161.189' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_241_1361964161.189' 
    capture_lex $P5023 
    .lex "$bname", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
.annotate 'line', 1436
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!backend"
    $P5005 = $P5004."name"()
    set $P101, $P5005
.annotate 'line', 1437
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend"
    $P5012 = $P5011."config"()
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next1628:
    unless $P5008, for_done1630
    shift $P5014, $P5008
  for_redo1629:
    .const 'Sub' $P5013 = 'cuid_240_1361964161.189' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next1628
  for_done1630:
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!config"
    set $P5015, $P5020
    iter $P5017, $P5020
  for_next1631:
    unless $P5017, for_done1633
    shift $P5022, $P5017
  for_redo1632:
    .const 'Sub' $P5021 = 'cuid_241_1361964161.189' 
    capture_lex $P5021
    $P5015 = $P5021($P5022)
    goto for_next1631
  for_done1633:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1361964161.189") :anon :lex :outer("cuid_151_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1437
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$bname"
    set $S5005, $P5001
    concat $S5004, $S5005, "::"
.annotate 'line', 1438
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
.sub "" :subid("cuid_241_1361964161.189") :anon :lex :outer("cuid_151_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1440
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1441
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
.sub "nqpevent" :subid("cuid_152_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1446
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@pos", _lex_param_1 
.annotate 'line', 1447
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend"
    $P5004 = $P5003."nqpevent"(_lex_param_1 :flat)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_153_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1450
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_242_1361964161.189' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizableStringArray'
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1636:
    unless $P5005, for_done1638
    shift $P5010, $P5005
  for_redo1637:
    .const 'Sub' $P5009 = 'cuid_242_1361964161.189' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1636
  for_done1638:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1361964161.189") :anon :lex :outer("cuid_153_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1452
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if720_end1635 
.annotate 'line', 1453
.annotate 'line', 1454
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if720_end1635:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_154_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1460
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_243_1361964161.189' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_244_1361964161.189' 
    capture_lex $P5035 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_148 
    .local pmc fb_tmp_149 
    .local pmc fb_tmp_150 
    .local pmc fb_tmp_151 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1639
    .lex "RETURN", $P104
    set fb_tmp_148, _lex_param_2
    repr_defined $I5001, fb_tmp_148
    unless $I5001 goto if722_else1643 
    set $P5004, fb_tmp_148["before"]
    set $P5006, $P5004
    goto if722_end1644
  if722_else1643:
    null $P5005
    set $P5006, $P5005
  if722_end1644:
    unless_null $P5006, vivi_7231645
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5006, $P5007
  vivi_7231645:
    unless $P5006 goto if721_else1641 
.annotate 'line', 1463
    set fb_tmp_149, _lex_param_2
    repr_defined $I5002, fb_tmp_149
    unless $I5002 goto if724_else1646 
    set $P5008, fb_tmp_149["before"]
    set $P5010, $P5008
    goto if724_end1647
  if724_else1646:
    null $P5009
    set $P5010, $P5009
  if724_end1647:
    unless_null $P5010, vivi_7251648
    nqp_get_sc_object $P5011, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5010, $P5011
  vivi_7251648:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if721_end1642
  if721_else1641:
    set fb_tmp_150, _lex_param_2
    repr_defined $I5003, fb_tmp_150
    unless $I5003 goto if727_else1651 
    set $P5013, fb_tmp_150["after"]
    set $P5015, $P5013
    goto if727_end1652
  if727_else1651:
    null $P5014
    set $P5015, $P5014
  if727_end1652:
    unless_null $P5015, vivi_7281653
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5015, $P5016
  vivi_7281653:
    unless $P5015 goto if726_else1649 
.annotate 'line', 1466
    set fb_tmp_151, _lex_param_2
    repr_defined $I5004, fb_tmp_151
    unless $I5004 goto if729_else1654 
    set $P5017, fb_tmp_151["after"]
    set $P5019, $P5017
    goto if729_end1655
  if729_else1654:
    null $P5018
    set $P5019, $P5018
  if729_end1655:
    unless_null $P5019, vivi_7301656
    nqp_get_sc_object $P5020, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5019, $P5020
  vivi_7301656:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if726_end1650
  if726_else1649:
    .const 'Sub' $P5022 = 'cuid_243_1361964161.189' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if726_end1650:
  if721_end1642:
    new $P5025, 'ResizableStringArray'
    set $P103, $P5025
.annotate 'line', 1476
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1661:
    unless $P5028, for_done1663
    shift $P5032, $P5028
  for_redo1662:
    .const 'Sub' $P5031 = 'cuid_244_1361964161.189' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1661
  for_done1663:
.annotate 'line', 1489
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1640
  lexotic_1639:
    .get_results ($P5034)
  lexotic_1640:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1361964161.189") :anon :lex :outer("cuid_154_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1469
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1470
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1472
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1361964161.189") :anon :lex :outer("cuid_154_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1476
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if731_else1657 
.annotate 'line', 1477
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if732_else1659 
.annotate 'line', 1478
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if732_end1660
  if732_else1659:
.annotate 'line', 1481
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if732_end1660:
    set $P5011, $P5009
    goto if731_end1658
  if731_else1657:
.annotate 'line', 1485
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if731_end1658:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_155_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1492
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_245_1361964161.189' 
    capture_lex $P5027 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_152 
    .local pmc fb_tmp_153 
    .local pmc fb_tmp_154 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_152, $P101
    repr_defined $I5001, fb_tmp_152
    unless $I5001 goto if733_else1664 
    set $P5006, fb_tmp_152[0]
    set $P5008, $P5006
    goto if733_end1665
  if733_else1664:
    null $P5007
    set $P5008, $P5007
  if733_end1665:
    unless_null $P5008, vivi_7341666
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5008, $P5009
  vivi_7341666:
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
    unless $I5003 goto if735_end1668 
.annotate 'line', 1498
    set fb_tmp_153, $P101
    repr_defined $I5004, fb_tmp_153
    unless $I5004 goto if736_else1669 
    set $P5012, fb_tmp_153[0]
    set $P5014, $P5012
    goto if736_end1670
  if736_else1669:
    null $P5013
    set $P5014, $P5013
  if736_end1670:
    unless_null $P5014, vivi_7371671
    nqp_get_sc_object $P5015, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5014, $P5015
  vivi_7371671:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_154, $P101
    repr_defined $I5005, fb_tmp_154
    unless $I5005 goto if738_else1672 
    set $P5017, fb_tmp_154[-1]
    set $P5019, $P5017
    goto if738_end1673
  if738_else1672:
    null $P5018
    set $P5019, $P5018
  if738_end1673:
    unless_null $P5019, vivi_7391674
    nqp_get_sc_object $P5020, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5019, $P5020
  vivi_7391674:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if735_end1668:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1677:
    unless $P5024, for_done1679
    shift $P5026, $P5024
  for_redo1678:
    .const 'Sub' $P5025 = 'cuid_245_1361964161.189' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1677
  for_done1679:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1361964161.189") :anon :lex :outer("cuid_155_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1506
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless740_end1676 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless740_end1676:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_156_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1512
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 :named("cache") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_246_1361964161.189' 
    capture_lex $P5012 
    .lex "$linepos", $P101 
    .lex "$lo", $I101 
    .lex "$hi", $I102 
    .lex "$line", $I103 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 
    .local pmc fb_tmp_155 
    if haz_param_13, default1707
    set $I5013, 0
    set _lex_param_3, $I5013
  default1707:
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    unless _lex_param_3 goto if741_end1681 
.annotate 'line', 1514
    find_dynamic_lex $P5002, "$*LINEPOSCACHE"
    unless_null $P5002, fallback1682
    nqp_get_sc_object $P5004, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5003, $P5004
    set fb_tmp_155, $P5003
    repr_defined $I5001, fb_tmp_155
    unless $I5001 goto if742_else1683 
    set $P5005, fb_tmp_155["$LINEPOSCACHE"]
    set $P5007, $P5005
    goto if742_end1684
  if742_else1683:
    null $P5006
    set $P5007, $P5006
  if742_end1684:
    unless_null $P5007, vivi_7431685
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_7431685:
    unless_null $P5007, vivi_7441686
    die "Contextual $*LINEPOSCACHE not found"
    box $P5009, "Contextual $*LINEPOSCACHE not found"
    set $P5007, $P5009
  vivi_7441686:
    set $P5002, $P5007
  fallback1682:
    set $P101, $P5002
  if741_end1681:
    defined $I5002, $P101
    if $I5002 goto unless745_end1688 
    .const 'Sub' $P5010 = 'cuid_246_1361964161.189' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless745_end1688:
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while750_test1700:
    islt $I5004, $I101, $I102
    set $I5011, $I5004
    unless $I5004 goto while750_done1704 
  while750_redo1702:
.annotate 'line', 1549
    add $I5006, $I101, $I102
    div $I5005, $I5006, 2
    set $I103, $I5005
    set $I5008, $P101[$I103]
    isgt $I5007, $I5008, _lex_param_2
    unless $I5007 goto if751_else1705 
.annotate 'line', 1551
    set $I102, $I103
    set $I5010, $I102
    goto if751_end1706
  if751_else1705:
.annotate 'line', 1553
    add $I5009, $I103, 1
    set $I101, $I5009
    set $I5010, $I101
  if751_end1706:
    set $I5011, $I5010
    goto while750_test1700 
  while750_done1704:
    add $I5012, $I101, 1
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1361964161.189") :anon :lex :outer("cuid_156_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1518
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
    unless $I5001 goto if746_end1690 
.annotate 'line', 1521
    find_lex $P5002, "$linepos"
    store_dynamic_lex "$*LINEPOSCACHE", $P5002
  if746_end1690:
    find_lex $P5003, "$target"
    set $S5001, $P5003
    set $S101, $S5001
    length $I5002, $S101
    set $I101, $I5002
    set $I102, 0
  while747_test1691:
    find_cclass $I5004, 4096, $S101, $I102, $I101
    set $I102, $I5004
    islt $I5003, $I102, $I101
    set $I5013, $I5003
    unless $I5003 goto while747_done1695 
  while747_redo1693:
.annotate 'line', 1532
    ord $I5005, $S101, $I102
    set $I103, $I5005
    add $I5006, $I102, 1
    set $I102, $I5006
    find_lex $P5004, "$linepos"
    push $P5004, $I102
    iseq $I5007, $I103, 13
    set $I5010, $I5007
    unless $I5007 goto if749_end1699 
    ord $I5009, $S101, $I102
    iseq $I5008, $I5009, 10
    set $I5010, $I5008
  if749_end1699:
    set $I5012, $I5010
    unless $I5010 goto if748_end1697 
.annotate 'line', 1538
    add $I5011, $I102, 1
    set $I102, $I5011
    set $I5012, $I102
  if748_end1697:
    set $I5013, $I5012
    goto while747_test1691 
  while747_done1695:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_157_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1561
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1708
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1708:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_158_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1564
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_159_1361964161.189") :anon :lex :outer("cuid_220_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1565
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1663
    .const 'Sub' $P5006 = 'cuid_160_1361964161.189' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_161_1361964161.189' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_162_1361964161.189' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_163_1361964161.189' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_164_1361964161.189' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_160_1361964161.189' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_161_1361964161.189' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_162_1361964161.189' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_163_1361964161.189' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_164_1361964161.189' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_160_1361964161.189") :anon :lex :outer("cuid_247_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1667
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_161_1361964161.189") :anon :lex :outer("cuid_247_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1672
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_162_1361964161.189") :anon :lex :outer("cuid_247_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1673
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_163_1361964161.189") :anon :lex :outer("cuid_247_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1675
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_164_1361964161.189") :anon :lex :outer("cuid_247_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1679
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    .local pmc fb_tmp_156 
    .local pmc fb_tmp_157 
    .local pmc fb_tmp_158 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if752_else1709 
.annotate 'line', 1682
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options"
    set fb_tmp_156, $P5006
    repr_defined $I5003, fb_tmp_156
    unless $I5003 goto if754_else1713 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_156[$S5002]
    set $P5009, $P5007
    goto if754_end1714
  if754_else1713:
    null $P5008
    set $P5009, $P5008
  if754_end1714:
    unless_null $P5009, vivi_7551715
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_7551715:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if753_else1711 
.annotate 'line', 1683
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options"
    set fb_tmp_157, $P5013
    repr_defined $I5004, fb_tmp_157
    unless $I5004 goto if756_else1716 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_157[$S5003]
    set $P5016, $P5014
    goto if756_end1717
  if756_else1716:
    null $P5015
    set $P5016, $P5015
  if756_end1717:
    unless_null $P5016, vivi_7571718
    nqp_get_sc_object $P5017, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5016, $P5017
  vivi_7571718:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if753_end1712
  if753_else1711:
.annotate 'line', 1685
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options"
    set $S5004, _lex_param_1
    new $P5021, 'ResizablePMCArray'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options"
    set fb_tmp_158, $P5024
    repr_defined $I5005, fb_tmp_158
    unless $I5005 goto if758_else1719 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_158[$S5005]
    set $P5027, $P5025
    goto if758_end1720
  if758_else1719:
    null $P5026
    set $P5027, $P5026
  if758_end1720:
    unless_null $P5027, vivi_7591721
    nqp_get_sc_object $P5028, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5027, $P5028
  vivi_7591721:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if753_end1712:
    set $P5033, $P5029
    goto if752_end1710
  if752_else1709:
.annotate 'line', 1688
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options"
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if752_end1710:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1694
    .const 'Sub' $P5011 = 'cuid_165_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_166_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_167_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_168_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_169_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_170_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_171_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_172_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_173_1361964161.189' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_174_1361964161.189' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_165_1361964161.189' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_166_1361964161.189' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_167_1361964161.189' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_168_1361964161.189' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_169_1361964161.189' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_170_1361964161.189' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_171_1361964161.189' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_172_1361964161.189' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_173_1361964161.189' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_174_1361964161.189' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_165_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1700
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
.annotate 'line', 1701
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1702
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_166_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1706
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_167_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1710
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_249_1361964161.189' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_14, default1725
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1725:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1722:
    unless $P5019, for_done1724
    shift $P5021, $P5019
  for_redo1723:
    .const 'Sub' $P5020 = 'cuid_249_1361964161.189' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1722
  for_done1724:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_249_1361964161.189") :anon :lex :outer("cuid_167_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1716
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1717
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_168_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1720
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_169_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1724
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
.sub "add-spec" :subid("cuid_170_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1729
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_250_1361964161.189' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    unless $I5002 goto if760_else1726 
.annotate 'line', 1733
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1735
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if760_end1727
  if760_else1726:
.annotate 'line', 1736
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1738
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if760_end1727:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1728:
    unless $P5013, for_done1730
    shift $P5015, $P5013
  for_redo1729:
    .const 'Sub' $P5014 = 'cuid_250_1361964161.189' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1728
  for_done1730:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_250_1361964161.189") :anon :lex :outer("cuid_170_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1740
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_171_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1746
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1731
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless762_end1736 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless762_end1736:
    unless $I5003 goto if761_end1734 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if761_end1734:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if763_end1738 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if763_end1738:
    box $P5005, 0
    goto lexotic_1732
  lexotic_1731:
    .get_results ($P5005)
  lexotic_1732:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_172_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1752
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_159 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_159, $P5004
    repr_defined $I5001, fb_tmp_159
    unless $I5001 goto if764_else1739 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_159[$S5001]
    set $P5007, $P5005
    goto if764_end1740
  if764_else1739:
    null $P5006
    set $P5007, $P5006
  if764_end1740:
    unless_null $P5007, vivi_7651741
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_7651741:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_173_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1757
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_160 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_160, $P5004
    repr_defined $I5001, fb_tmp_160
    unless $I5001 goto if766_else1742 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_160[$S5001]
    set $P5007, $P5005
    goto if766_end1743
  if766_else1742:
    null $P5006
    set $P5007, $P5006
  if766_end1743:
    unless_null $P5007, vivi_7671744
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_7671744:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_174_1361964161.189") :anon :lex :outer("cuid_248_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1762
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_251_1361964161.189' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_252_1361964161.189' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_254_1361964161.189' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_251_1361964161.189' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_252_1361964161.189' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1758
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1766
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    $P5009 = $P5008."new"()
    set $P103, $P5009
.annotate 'line', 1767
    $P103."init"()
  while774_test1760:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto while774_done1764 
  while774_redo1762:
    .const 'Sub' $P5010 = 'cuid_254_1361964161.189' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while774_test1760 
  while774_done1764:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P103)
    goto lexotic_1759
  lexotic_1758:
    .get_results ($P5015)
  lexotic_1759:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_251_1361964161.189") :anon :lex :outer("cuid_174_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1770
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_5 
    .local pmc fb_tmp_161 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if768_else1745 
.annotate 'line', 1771
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if768_end1746
  if768_else1745:
.annotate 'line', 1773
    find_lex $P5004, "$i"
    set tmp_5, $P5004
    set $N5006, tmp_5
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5004, "@args"
    set fb_tmp_161, $P5004
    repr_defined $I5002, fb_tmp_161
    unless $I5002 goto if769_else1747 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_161[$I5003]
    set $P5008, $P5005
    goto if769_end1748
  if769_else1747:
    null $P5007
    set $P5008, $P5007
  if769_end1748:
    unless_null $P5008, vivi_7701749
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5008, $P5009
  vivi_7701749:
    set $P5010, $P5008
  if768_end1746:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_252_1361964161.189") :anon :lex :outer("cuid_174_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1781
    .local pmc tmp_6 
    .local pmc fb_tmp_162 
    .local pmc tmp_7 
    find_lex $P5001, "$i"
    set tmp_6, $P5001
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while771_test1750:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while771_done1754 
  while771_redo1752:
.annotate 'line', 1783
.annotate 'line', 1784
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_162, $P5004
    repr_defined $I5002, fb_tmp_162
    unless $I5002 goto if772_else1755 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_162[$I5003]
    set $P5008, $P5005
    goto if772_end1756
  if772_else1755:
    null $P5007
    set $P5008, $P5007
  if772_end1756:
    unless_null $P5008, vivi_7731757
    nqp_get_sc_object $P5009, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5008, $P5009
  vivi_7731757:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_7, $P5010
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_7
    goto while771_test1750 
  while771_done1754:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1361964161.189") :anon :lex :outer("cuid_174_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1789
    .const 'Sub' $P5033 = 'cuid_253_1361964161.189' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_257_1361964161.189' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_170 
    .local pmc tmp_9 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_163, $P5002
    repr_defined $I5001, fb_tmp_163
    unless $I5001 goto if775_else1765 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_163[$I5002]
    set $P5006, $P5003
    goto if775_end1766
  if775_else1765:
    null $P5005
    set $P5006, $P5005
  if775_end1766:
    unless_null $P5006, vivi_7761767
    nqp_get_sc_object $P5007, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5006, $P5007
  vivi_7761767:
    set $P101, $P5006
.annotate 'line', 1791
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if777_else1768 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if778_else1770 
    .const 'Sub' $P5011 = 'cuid_253_1361964161.189' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if778_end1771
  if778_else1770:
    .const 'Sub' $P5013 = 'cuid_257_1361964161.189' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if778_end1771:
    goto if777_end1769
  if777_else1768:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper"
    set fb_tmp_170, $P5019
    repr_defined $I5004, fb_tmp_170
    unless $I5004 goto if809_else1828 
    set $S5003, $P101
    set $P5020, fb_tmp_170[$S5003]
    set $P5022, $P5020
    goto if809_end1829
  if809_else1828:
    null $P5021
    set $P5022, $P5021
  if809_end1829:
    unless_null $P5022, vivi_8101830
    nqp_get_sc_object $P5023, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5022, $P5023
  vivi_8101830:
    unless $P5022 goto if808_else1826 
.annotate 'line', 1850
.annotate 'line', 1851
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if808_end1827
  if808_else1826:
.annotate 'line', 1852
.annotate 'line', 1853
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg"
    set $P5031, $P5029
    unless $P5029 goto if811_end1832 
.annotate 'line', 1854
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if811_end1832:
    set $P5032, $P5031
  if808_end1827:
  if777_end1769:
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
.sub "" :subid("cuid_253_1361964161.189") :anon :lex :outer("cuid_254_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1792
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_164 
    .local pmc fb_tmp_165 
    .local pmc fb_tmp_166 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_164, $P5005
    repr_defined $I5001, fb_tmp_164
    unless $I5001 goto if779_else1772 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_164[$I5002]
    set $P5009, $P5006
    goto if779_end1773
  if779_else1772:
    null $P5008
    set $P5009, $P5008
  if779_end1773:
    unless_null $P5009, vivi_7801774
    nqp_get_sc_object $P5010, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5009, $P5010
  vivi_7801774:
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
    unless $I5004 goto if781_else1775 
.annotate 'line', 1799
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
    goto if781_end1776
  if781_else1775:
.annotate 'line', 1803
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if782_end1778 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if782_end1778:
  if781_end1776:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options"
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless783_end1780 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless783_end1780:
.annotate 'line', 1808
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if785_end1784 
    set $P5032, $P104
  if785_end1784:
    unless $P5032 goto if784_end1782 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if784_end1782:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if787_end1788 
.annotate 'line', 1809
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if787_end1788:
    unless $P5038 goto if786_end1786 
.annotate 'line', 1810
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if786_end1786:
.annotate 'line', 1812
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper"
    set fb_tmp_165, $P5045
    repr_defined $I5010, fb_tmp_165
    unless $I5010 goto if789_else1791 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_165[$S5016]
    set $P5048, $P5046
    goto if789_end1792
  if789_else1791:
    null $P5047
    set $P5048, $P5047
  if789_end1792:
    unless_null $P5048, vivi_7901793
    nqp_get_sc_object $P5049, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5048, $P5049
  vivi_7901793:
    set $P5059, $P5048
    unless $P5048 goto if788_end1790 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_166, $P5050
    repr_defined $I5011, fb_tmp_166
    unless $I5011 goto if791_else1794 
    set $P5052, fb_tmp_166["slurp-rest"]
    set $P5054, $P5052
    goto if791_end1795
  if791_else1794:
    null $P5053
    set $P5054, $P5053
  if791_end1795:
    unless_null $P5054, vivi_7931797
    nqp_get_sc_object $P5057, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_7921796
    nqp_get_sc_object $P5058, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5055, $P5058
  vivi_7921796:
    set $P5054, $P5055
  vivi_7931797:
    set $P5059, $P5054
  if788_end1790:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_257_1361964161.189") :anon :lex :outer("cuid_254_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1814
    .const 'Sub' $P5036 = 'cuid_256_1361964161.189' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_167 
    .local pmc fb_tmp_168 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    unless $I5002 goto if794_else1798 
.annotate 'line', 1817
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set fb_tmp_167, $P5009
    repr_defined $I5003, fb_tmp_167
    unless $I5003 goto if796_else1802 
    set $S5004, $P101
    set $P5010, fb_tmp_167[$S5004]
    set $P5012, $P5010
    goto if796_end1803
  if796_else1802:
    null $P5011
    set $P5012, $P5011
  if796_end1803:
    unless_null $P5012, vivi_7971804
    nqp_get_sc_object $P5013, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5012, $P5013
  vivi_7971804:
    if $P5012 goto unless795_end1801 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless795_end1801:
.annotate 'line', 1820
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if798_else1805 
.annotate 'line', 1821
    find_lex $P5018, "$result"
.annotate 'line', 1822
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if798_end1806
  if798_else1805:
.annotate 'line', 1823
.annotate 'line', 1824
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if798_end1806:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper"
    set fb_tmp_168, $P5026
    repr_defined $I5004, fb_tmp_168
    unless $I5004 goto if800_else1809 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_168[$S5009]
    set $P5029, $P5027
    goto if800_end1810
  if800_else1809:
    null $P5028
    set $P5029, $P5028
  if800_end1810:
    unless_null $P5029, vivi_8011811
    nqp_get_sc_object $P5030, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5029, $P5030
  vivi_8011811:
    set $P5032, $P5029
    unless $P5029 goto if799_end1808 
.annotate 'line', 1826
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if799_end1808:
    set $P5035, $P5032
    goto if794_end1799
  if794_else1798:
    .const 'Sub' $P5033 = 'cuid_256_1361964161.189' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if794_end1799:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_256_1361964161.189") :anon :lex :outer("cuid_257_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1827
    .const 'Sub' $P5009 = 'cuid_255_1361964161.189' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while802_handlers1815
    push_eh $P5007
  while802_test1812:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while802_done1816 
  while802_redo1814:
    .const 'Sub' $P5004 = 'cuid_255_1361964161.189' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while802_test1812 
  while802_handlers1815:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while802_test1812
    eq $P5007, .CONTROL_LOOP_REDO, while802_redo1814
  while802_done1816:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_255_1361964161.189") :anon :lex :outer("cuid_256_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1829
    .lex "$o", $P101 
    .local pmc fb_tmp_169 
    .local pmc tmp_8 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
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
    nqp_get_sc_object $P5007, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options"
    set fb_tmp_169, $P5008
    repr_defined $I5002, fb_tmp_169
    unless $I5002 goto if804_else1819 
    set $S5003, $P101
    set $P5009, fb_tmp_169[$S5003]
    set $P5011, $P5009
    goto if804_end1820
  if804_else1819:
    null $P5010
    set $P5011, $P5010
  if804_end1820:
    unless_null $P5011, vivi_8051821
    nqp_get_sc_object $P5012, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5011, $P5012
  vivi_8051821:
    unless $P5011 goto if803_else1817 
.annotate 'line', 1831
.annotate 'line', 1832
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if806_else1822 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if807_end1825 
.annotate 'line', 1833
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if807_end1825:
.annotate 'line', 1836
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
    goto if806_end1823
  if806_else1822:
.annotate 'line', 1839
.annotate 'line', 1840
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if806_end1823:
    goto if803_end1818
  if803_else1817:
.annotate 'line', 1843
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if803_end1818:
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
.sub "" :subid("cuid_258_1361964161.189") :anon :lex :outer("cuid_201_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1884
    .const 'Sub' $P5014 = 'cuid_175_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_176_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_177_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_178_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_179_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_180_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_181_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_182_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_183_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_184_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_185_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_186_1361964161.189' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_187_1361964161.189' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_175_1361964161.189' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_176_1361964161.189' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_177_1361964161.189' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_178_1361964161.189' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_179_1361964161.189' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_180_1361964161.189' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_181_1361964161.189' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_182_1361964161.189' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_183_1361964161.189' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_184_1361964161.189' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_185_1361964161.189' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_186_1361964161.189' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_187_1361964161.189' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_175_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1915
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_15 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    .local pmc fb_tmp_171 
    .local pmc fb_tmp_172 
    .local pmc fb_tmp_173 
    .local pmc pkg_viv_tmp_16 
    if haz_param_15, default1844
    box $P5046, "<unknown>"
    set _lex_param_2, $P5046
  default1844:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    find_dynamic_lex $P5017, "%*COMPILING"
    unless_null $P5017, fallback1837
    nqp_get_sc_object $P5019, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    get_who $P5018, $P5019
    set pkg_viv_tmp_16, $P5018
    set fb_tmp_173, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_173
    unless $I5003 goto if814_else1838 
    set $P5020, fb_tmp_173["%COMPILING"]
    set $P5022, $P5020
    goto if814_end1839
  if814_else1838:
    null $P5021
    set $P5022, $P5021
  if814_end1839:
    unless_null $P5022, vivi_8151840
    new $P5023, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5023
    set $P5022, $P5023
  vivi_8151840:
    unless_null $P5022, vivi_8161841
    die "Contextual %*COMPILING not found"
    box $P5024, "Contextual %*COMPILING not found"
    set $P5022, $P5024
  vivi_8161841:
    set $P5017, $P5022
  fallback1837:
    set fb_tmp_172, $P5017
    repr_defined $I5002, fb_tmp_172
    unless $I5002 goto if813_else1835 
    set $P5025, fb_tmp_172["%?OPTIONS"]
    set $P5027, $P5025
    goto if813_end1836
  if813_else1835:
    null $P5026
    set $P5027, $P5026
  if813_end1836:
    unless_null $P5027, vivi_8171842
    nqp_get_sc_object $P5028, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5027, $P5028
  vivi_8171842:
    set fb_tmp_171, $P5027
    repr_defined $I5001, fb_tmp_171
    unless $I5001 goto if812_else1833 
    set $P5029, fb_tmp_171["precomp"]
    set $P5031, $P5029
    goto if812_end1834
  if812_else1833:
    null $P5030
    set $P5031, $P5030
  if812_end1834:
    unless_null $P5031, vivi_8181843
    nqp_get_sc_object $P5032, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5031, $P5032
  vivi_8181843:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5031
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    box $P5035, 0
    repr_bind_attr_obj $P5033, $P5034, "$!num_code_refs", $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    new $P5038, 'ResizablePMCArray'
    repr_bind_attr_obj $P5036, $P5037, "$!code_ref_blocks", $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc"
    $P5042 = $P5041."set_description"(_lex_param_2)
    nqp_decontainerize $P5043, _lex_param_0
    nqp_get_sc_object $P5044, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!sc"
    nqp_push_compiling_sc $P5045
    .return ($P5045) 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_176_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1932
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .local pmc fb_tmp_174 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!addr_to_slot"
    set fb_tmp_174, $P5004
    repr_defined $I5001, fb_tmp_174
    unless $I5001 goto if819_else1845 
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5005, fb_tmp_174[$S5001]
    set $P5007, $P5005
    goto if819_end1846
  if819_else1845:
    null $P5006
    set $P5007, $P5006
  if819_end1846:
    unless_null $P5007, vivi_8201847
    nqp_get_sc_object $P5008, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P5007, $P5008
  vivi_8201847:
    set $P101, $P5007
    defined $I5003, $P101
    if $I5003 goto unless821_end1849 
.annotate 'line', 1934
    box $P5009, "slot_for_object called on object not in context"
    die $P5009
  unless821_end1849:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_177_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1941
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_178_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1950
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 1953
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_179_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1959
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_180_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1964
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_181_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1970
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_16 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_17 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_16, default1856
    nqp_get_sc_object $P5015, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5015
  default1856:
    if haz_param_17, default1857
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_2, $P5016
  default1857:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if822_else1850 
.annotate 'line', 1971
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if823_end1853 
.annotate 'line', 1972
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if823_end1853:
    set $P5014, $P5008
    goto if822_end1851
  if822_else1850:
.annotate 'line', 1974
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if824_end1855 
.annotate 'line', 1975
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if824_end1855:
    set $P5014, $P5013
  if822_end1851:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_182_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1981
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_18 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_19 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_18, default1864
    nqp_get_sc_object $P5015, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_1, $P5015
  default1864:
    if haz_param_19, default1865
    nqp_get_sc_object $P5016, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45", 25
    set _lex_param_2, $P5016
  default1865:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if825_else1858 
.annotate 'line', 1982
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if826_end1861 
.annotate 'line', 1983
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if826_end1861:
    set $P5014, $P5008
    goto if825_end1859
  if825_else1858:
.annotate 'line', 1985
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if827_end1863 
.annotate 'line', 1986
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if827_end1863:
    set $P5014, $P5013
  if825_end1859:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_183_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1991
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_184_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1996
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_185_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2000
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_186_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2005
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_187_1361964161.189") :anon :lex :outer("cuid_258_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2010
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1361964161.189") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_259_1361964161.189' 
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
    .const 'Sub' $P5001 = "cuid_201_1361964161.189" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213"
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
    push $P5004, "41BC6126A6537720F2A162E1AE4506906D3B7795-1361964156.879"
    push $P5004, "src\\stage2\\QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "B8F544C5FEA1A7D7A30ACCA89349053B94404B42-1361964153.45"
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
    push $P5004, "$!usage"
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
    push $P5004, ""
    push $P5004, "OPER"
    push $P5004, "alt_nfa__1_1361964161.318"
    push $P5004, "alt_nfa__2_1361964161.348"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1361964161.415"
    push $P5004, "alt_nfa__4_1361964161.416"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1361964161.435"
    push $P5004, "Ee"
    push $P5004, "alt_nfa__6_1361964161.51"
    push $P5004, "alt_nfa__7_1361964161.524"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1361964161.561"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1361964161.601"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "5E1A9226ADF1F89B3A6172DD75C456ECBCF40100-1361964149.843"
    push $P5004, "src\\stage2\\gen\\nqp-mo.pm"
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
    push $P5004, "CompileTimeValue"
    push $P5004, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361964155.22"
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
    .const 'Sub' $P5005 = 'cuid_259_1361964161.189' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAAFAAAAaAAAABEAAADwAAAAkiMAAAMBAADCMwAA/NcAAAEAAAAU2AAAAQAAACTYAABG2AAAAAAAAAUAAAAGAAAADgAAAA8AAAAZAQAAAAAAABwBAAAdAQAALQEAAC4BAAABAAAAAAAAAAEAAAAaAQAAAQAAANIBAAABAAAAfAIAAAEAAABsCwAAAQAAAJAOAACsAAAA8BAAAAEAAAA+EQAAAQAAAFAWAAABAAAAHBgAAAEAAABcGgAAAQAAAFQdAAABAAAAFh8AAAEAAADOHwAArAAAAMwgAAABAAAAFiEAAAEAAADcIQAAAAAAAMYAAAAAAAAAAAAAAAoACAAAAAIAAAACAAAAAADHAAAAAwAAAAIAAAAAAMgAAAAEAAAAAgABAAAAIQAAAAcAAAACAAEAAABWAAAACAAAAAIAAQAAAGQAAAAJAAAAAgABAAAAagAAAAoAAAACAAEAAABuAAAACwAAAAIAAAAAAMkAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAAMoAAAAAAAAAAQAAAAoAAQAAAAwAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMA/////////////////////wAAAADLAAAAAAAAAAIAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAAAwD/////////////////////AAAAAMwAAAAAAAAAAwAAAAoAAAAAAAoAfgAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAAGQAAAAIAAQAAAGUAAAAaAAAAAgABAAAAZgAAABsAAAACAAEAAABnAAAAHAAAAAIAAQAAAGgAAAAdAAAAAgABAAAAaQAAAB4AAAACAAEAAAB7AAAAHwAAAAIAAQAAAHwAAAAgAAAAAgABAAAAfQAAACEAAAACAAEAAAB+AAAAIgAAAAIAAQAAAH8AAAAjAAAAAgABAAAAgAAAACQAAAACAAEAAACBAAAAJQAAAAIAAQAAAIIAAAAmAAAAAgABAAAAgwAAACcAAAACAAEAAACEAAAAKAAAAAIAAQAAAIUAAAApAAAAAgABAAAAhgAAACoAAAACAAEAAACHAAAAKwAAAAIAAQAAAIgAAAAsAAAAAgABAAAAiQAAAC0AAAACAAEAAACKAAAALgAAAAIAAQAAAIsAAAAvAAAAAgABAAAAjAAAADAAAAACAAEAAACNAAAAMQAAAAIAAQAAAI4AAAAyAAAAAgABAAAAjwAAADMAAAACAAEAAACQAAAANAAAAAIAAQAAAJEAAAA1AAAAAgABAAAAkgAAADYAAAACAAEAAACTAAAANwAAAAIAAQAAAJQAAAA4AAAAAgABAAAAlQAAADkAAAACAAEAAACWAAAAOgAAAAIAAQAAAJcAAAA7AAAAAgABAAAAmAAAADwAAAACAAEAAACZAAAAPQAAAAIAAQAAAJoAAAA+AAAAAgABAAAAmwAAAD8AAAACAAEAAACcAAAAQAAAAAIAAQAAAJ0AAABBAAAAAgABAAAAngAAAEIAAAACAAEAAACfAAAAQwAAAAIAAQAAAKAAAABEAAAAAgABAAAAoQAAAEUAAAACAAEAAACiAAAARgAAAAIAAQAAAKMAAABHAAAAAgABAAAApAAAAEgAAAACAAEAAAClAAAASQAAAAIAAQAAAKYAAABKAAAAAgABAAAApwAAAEsAAAACAAEAAACoAAAATAAAAAIAAQAAAKkAAABNAAAAAgABAAAAqgAAAE4AAAACAAEAAACrAAAATwAAAAIAAQAAAKwAAABQAAAAAgAAAAAANgAAAFEAAAACAAAAAAAEAAAAUgAAAAIAAAAAAAUAAABTAAAAAgAAAAAABgAAAFQAAAACAAAAAAAHAAAAVQAAAAIAAAAAAAgAAABWAAAAAgAAAAAACQAAAFcAAAACAAAAAAAKAAAAWAAAAAIAAAAAAAsAAABZAAAAAgAAAAAADAAAAFoAAAACAAAAAAANAAAAWwAAAAIAAAAAAA4AAABcAAAAAgAAAAAADwAAAF0AAAACAAAAAAAQAAAAXgAAAAIAAAAAABEAAABfAAAAAgAAAAAAEgAAAGAAAAACAAAAAAATAAAAYQAAAAIAAAAAABQAAABiAAAAAgAAAAAAFQAAAGMAAAACAAAAAAAWAAAAZAAAAAIAAAAAABcAAABlAAAAAgAAAAAAGAAAAGYAAAACAAAAAAAZAAAAZwAAAAIAAAAAABoAAABoAAAAAgAAAAAAGwAAAGkAAAACAAAAAAAcAAAAagAAAAIAAAAAAB0AAABrAAAAAgAAAAAAHgAAAGwAAAACAAAAAAAfAAAAbQAAAAIAAAAAACAAAABuAAAAAgAAAAAAIQAAAG8AAAACAAAAAAAiAAAAcAAAAAIAAAAAACMAAABxAAAAAgAAAAAAJAAAAHIAAAACAAAAAAAlAAAAcwAAAAIAAAAAACYAAAB0AAAAAgAAAAAAJwAAAHUAAAACAAAAAAAoAAAAdgAAAAIAAAAAACkAAAB3AAAAAgAAAAAAKgAAAHgAAAACAAAAAAArAAAAeQAAAAIAAAAAACwAAAB6AAAAAgAAAAAALQAAAHsAAAACAAAAAAAwAAAAfAAAAAIAAAAAADIAAAB9AAAAAgAAAAAAMwAAAH4AAAACAAAAAAA0AAAAfwAAAAIAAAAAADUAAACAAAAAAgAAAAAANwAAAIEAAAACAAAAAAA4AAAAggAAAAIAAAAAADkAAACDAAAAAgAAAAAAOgAAAIQAAAACAAAAAAA7AAAAhQAAAAIAAAAAADwAAACGAAAAAgAAAAAAPQAAAIcAAAACAAAAAAA+AAAAiAAAAAIAAAAAAD8AAACJAAAAAgAAAAAAQAAAAIoAAAACAAAAAABBAAAAiwAAAAIAAAAAAEIAAACMAAAAAgAAAAAAQwAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAADAAAAAgABAAAAZAAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABmAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGQAAAAEAAQACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGQAAAAMAAgABAAAAZAAAAAoACQAAAI0AAAAEAAAAAAAAAAAAjgAAAAQAAQAAAAAAAACPAAAABAACAAAAAAAAAJAAAAAEAAMAAAAAAAAAkQAAAAQABAAAAAAAAACSAAAABAAFAAAAAAAAAJMAAAAEAAYAAAAAAAAAlAAAAAQABwAAAAAAAACVAAAABAAIAAAAAAAAAAIAAAAAAAMAAAADAP////////////////////8AAAAAzQAAAAAAAABEAAAACgAAAAAACgArAAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAmAAAAGAAAAAIAAgAAACgAAACWAAAAAgAAAAAARQAAAJcAAAACAAAAAABGAAAAmAAAAAIAAAAAAEcAAACGAAAAAgAAAAAASAAAAFkAAAACAAAAAABJAAAAUgAAAAIAAAAAAEoAAABdAAAAAgAAAAAASwAAAF4AAAACAAAAAABMAAAAagAAAAIAAAAAAE0AAABrAAAAAgAAAAAATgAAAGIAAAACAAAAAABPAAAAZAAAAAIAAAAAAFAAAABmAAAAAgAAAAAAUQAAAGgAAAACAAAAAABSAAAAgQAAAAIAAAAAAFMAAABgAAAAAgAAAAAAVAAAAGEAAAACAAAAAABVAAAAbgAAAAIAAAAAAFYAAABvAAAAAgAAAAAAVwAAAHAAAAACAAAAAABYAAAAcQAAAAIAAAAAAFkAAAByAAAAAgAAAAAAWgAAAHMAAAACAAAAAABbAAAAdAAAAAIAAAAAAFwAAAB1AAAAAgAAAAAAXQAAAHYAAAACAAAAAABeAAAAdwAAAAIAAAAAAF8AAAB4AAAAAgAAAAAAYAAAAHkAAAACAAAAAABhAAAAegAAAAIAAAAAAGIAAAB7AAAAAgAAAAAAYwAAAHwAAAACAAAAAABkAAAAfQAAAAIAAAAAAGUAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAARAAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAEQAAAADAP////////////////////8AAAAAzgAAAAAAAABmAAAACgAAAAAACgAdAAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAmAAAAGAAAAAIAAgAAACgAAACZAAAAAgAAAAAAZwAAAJoAAAACAAAAAABoAAAAmwAAAAIAAAAAAGkAAACcAAAAAgAAAAAAagAAAJ0AAAACAAAAAABrAAAAngAAAAIAAAAAAGwAAACfAAAAAgAAAAAAbQAAAKAAAAACAAAAAABuAAAAoQAAAAIAAAAAAG8AAACiAAAAAgAAAAAAcAAAAKMAAAACAAAAAABxAAAApAAAAAIAAAAAAHIAAAClAAAAAgAAAAAAcwAAAKYAAAACAAAAAAB0AAAApwAAAAIAAAAAAHUAAACoAAAAAgAAAAAAdgAAAKkAAAACAAAAAAB3AAAAqgAAAAIAAAAAAHgAAACrAAAAAgAAAAAAeQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABmAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAAZgAAAAMA/////////////////////wAAAADPAAAAAAAAAHoAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAegAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQAAAAAAAAAH0AAAAKAAAAAAAKADQAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAAK0AAAACAAAAAAB+AAAArgAAAAIAAAAAAH8AAACvAAAAAgAAAAAAgAAAALAAAAACAAAAAACBAAAAmgAAAAIAAAAAAIIAAACxAAAAAgAAAAAAgwAAALIAAAACAAAAAACEAAAAswAAAAIAAAAAAIUAAAC0AAAAAgAAAAAAhgAAALUAAAACAAAAAACHAAAAtgAAAAIAAAAAAIgAAAB/AAAAAgAAAAAAiQAAAKIAAAACAAAAAACKAAAAtwAAAAIAAAAAAIsAAAC4AAAAAgAAAAAAjAAAALkAAAACAAAAAACNAAAAugAAAAIAAAAAAI4AAAC7AAAAAgAAAAAAjwAAALwAAAACAAAAAACQAAAAvQAAAAIAAAAAAJEAAAC+AAAAAgAAAAAAkgAAAL8AAAACAAAAAACTAAAAwAAAAAIAAAAAAJQAAADBAAAAAgAAAAAAlQAAAMIAAAACAAAAAACWAAAAwwAAAAIAAAAAAJcAAAAbAAAAAgAAAAAAmAAAAMQAAAACAAAAAACZAAAAxQAAAAIAAAAAAJoAAADGAAAAAgAAAAAAmwAAAMcAAAACAAAAAACcAAAAyAAAAAIAAAAAAJ0AAADJAAAAAgAAAAAAngAAAJ0AAAACAAAAAACfAAAAygAAAAIAAAAAAKAAAADLAAAAAgAAAAAAoQAAAMwAAAACAAAAAACiAAAAzQAAAAIAAAAAAKMAAADOAAAAAgAAAAAApAAAAM8AAAACAAAAAAClAAAA0AAAAAIAAAAAAKYAAADRAAAAAgAAAAAA0QAAAAAAAAAAAAAABAAAAAAAAAACAAAAAAB9AAAAAgACAAAAGQAAAAIAAAAAAHoAAAACAAAAAADSAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAAGQAAAAIAAgAAABkAAAABAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAEAAgACAAAAGQAAAAEAAQACAAIAAAAZAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAH0AAAAKAAwAAADSAAAABAAAAAAAAAAAANMAAAAEAAEAAAAAAAAA1AAAAAQAAgAAAAAAAADVAAAABAADAAAAAAAAANYAAAAEAAQAAAAAAAAA1wAAAAQABQAAAAAAAADYAAAABAAGAAAAAAAAANkAAAAEAAcAAAAAAAAA2gAAAAQACAAAAAAAAADbAAAABAAJAAAAAAAAANwAAAAEAAoAAAAAAAAA3QAAAAQACwAAAAAAAAD/////////////////////AAAAANMAAAAAAAAApwAAAAoAAAAAAAoADwAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAA3gAAAAIAAAAAAKgAAADfAAAAAgAAAAAAqQAAAOAAAAACAAAAAACqAAAA4QAAAAIAAAAAAKsAAADiAAAAAgAAAAAArAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACnAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAKcAAAAKAAIAAADjAAAABAAAAAAAAAAAAOQAAAAEAAEAAAAAAAAA/////////////////////wAAAADUAAAAAAAAAK0AAAAKAAAAAAAKABMAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgAAAAAArgAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAAOUAAAACAAAAAACvAAAArQAAAAIAAAAAALAAAADmAAAAAgAAAAAAsQAAAOcAAAACAAAAAACyAAAA6AAAAAIAAAAAALMAAADpAAAAAgAAAAAAtAAAAOoAAAACAAAAAAC1AAAA6wAAAAIAAAAAALYAAAAbAAAAAgAAAAAAtwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACtAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQABAAIAAgAAABkAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAArQAAAAoABAAAAOwAAAAEAAAAAAAAAAAA5AAAAAQAAQAAAAAAAADtAAAABAACAAAAAAAAAO4AAAAEAAMAAAAAAAAA/////////////////////wAAAADVAAAAAAAAALgAAAAKAAAAAAAKABcAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAAK0AAAACAAAAAAC5AAAA7wAAAAIAAAAAALoAAADwAAAAAgAAAAAAuwAAAPEAAAACAAAAAAC8AAAA8gAAAAIAAAAAAL0AAADzAAAAAgAAAAAAvgAAAPQAAAACAAAAAAC/AAAA9QAAAAIAAAAAAMAAAAD2AAAAAgAAAAAAwQAAAPcAAAACAAAAAADCAAAA+AAAAAIAAAAAAMMAAAD5AAAAAgAAAAAAxAAAAPoAAAACAAAAAADFAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAALgAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAEAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAAC4AAAACgAIAAAA+wAAAAQAAAAAAAAAAAD8AAAABAABAAAAAAAAAP0AAAAEAAIAAAAAAAAA/gAAAAQAAwAAAAAAAAD/AAAABAAEAAAAAAAAAAABAAAEAAUAAAAAAAAAAQEAAAQABgAAAAAAAAACAQAABAAHAAAAAAAAAP////////////////////8AAAAA+wAAAAAAAADHAAAACgAUAAAALAEAAAIABQAAAAMAAAAvAQAAAgAFAAAACAAAADABAAACAAUAAAAMAAAAMQEAAAIABQAAACIAAAAyAQAAAgAFAAAAKgAAADMBAAACAAUAAAAvAAAANAEAAAIABQAAADQAAAA1AQAAAgAFAAAAOQAAADYBAAACAAUAAAA9AAAANwEAAAIABQAAAEIAAAA4AQAAAgAFAAAARwAAADkBAAACAAUAAABQAAAAOgEAAAIABQAAAFIAAAA7AQAAAgAFAAAAWQAAADwBAAACAAUAAABdAAAAPQEAAAIABQAAAGIAAAA+AQAAAgAFAAAAZwAAAD8BAAACAAUAAABvAAAAQAEAAAIABQAAAHIAAABBAQAAAgAFAAAAfAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAADHAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAMcAAAADAP////////////////////8AAAAA/AAAAAAAAADIAAAACgABAAAAQgEAAAIAAQAAAAMAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAyAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAADIAAAAAwD/////////////////////AAAAAP0AAAAAAAAAyQAAAAoABgAAAEMBAAACAAAAAAADAAAARAEAAAIAAAAAAEQAAABFAQAAAgAAAAAA/gAAAEYBAAACAAAAAAB9AAAARwEAAAIAAAAAAP8AAABIAQAAAgAAAAAAuAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAADJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAMkAAAADAP////////////////////8AAAAAAAEAAAAAAADSAAAAAwAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAA0gAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAQAAAAAAAP4AAAAKAAIAAABMAQAAAgAAAAAAZgAAAE0BAAACAAAAAAB6AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAP4AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA/gAAAAMA/////////////////////wAAAAACAQAAAAAAAP8AAAAKAAIAAABOAQAAAgAAAAAApwAAAE8BAAACAAAAAACtAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAP8AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA/wAAAAMA/////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAACAAAABQAAAAAAAAABAAAAAgAAAAcAAAAUAAAAAQAAAAIAAAAHAAAADAEAAAEAAAACAAAABwAAACIBAAABAAAAAgAAAAcAAAA4AQAAAQAAAAIAAAAHAAAATgEAAAEAAAACAAAABwAAAGQBAAABAAAAAgAAAAcAAAB6AQAAAQAAAAIAAAAHAAAAkAEAAAEAAAACAAAABwAAAPABAAABAAAAAgAAAAcAAABeAgAAAQAAAAIAAAAHAAAA7AIAAAEAAAACAAAABwAAAOgDAAABAAAAAgAAAAcAAAA+BAAAAQAAAAIAAAAFAAAAngQAAAEAAAACAAAABwAAALIEAAABAAAAAgAAAAcAAACMBQAAAQAAAAIAAAAHAAAATgcAAAEAAAACAAAABwAAAHAIAAABAAAAAgAAAAcAAAB2CQAAAQAAAAIAAAAHAAAAlAoAAAEAAAACAAAABwAAAJoLAAABAAAAAgAAAAcAAAC4DAAAAQAAAAIAAAAHAAAAvg0AAAEAAAACAAAABwAAANwOAAABAAAAAgAAAAcAAADiDwAAAQAAAAIAAAAHAAAASBQAAAEAAAACAAAABwAAANQaAAABAAAAAgAAAAcAAADyGwAAAQAAAAIAAAAHAAAACBwAAAEAAAACAAAABwAAAMYcAAABAAAAAgAAAAcAAABuHQAAAQAAAAIAAAAHAAAALB4AAAEAAAACAAAABwAAAOoeAAABAAAAAgAAAAcAAACoHwAAAQAAAAIAAAAHAAAAZiAAAAEAAAACAAAABwAAACQhAAABAAAAAgAAAAcAAADiIQAAAQAAAAIAAAAHAAAAaiMAAAEAAAACAAAABwAAAPIkAAABAAAAAgAAAAcAAAC+JQAAAQAAAAIAAAAHAAAAiiYAAAEAAAACAAAABwAAAI4nAAABAAAAAgAAAAcAAADkJwAAAQAAAAIAAAAHAAAAOigAAAEAAAACAAAABwAAAIYoAAABAAAAAgAAAAcAAAAeKQAAAQAAAAIAAAAHAAAAJCoAAAEAAAACAAAABQAAAIwuAAABAAAAAgAAAAUAAACgLgAAAQAAAAIAAAAFAAAAtC4AAAEAAAACAAAABQAAAMguAAABAAAAAgAAAAcAAADcLgAAAQAAAAIAAAAHAAAArC8AAAEAAAACAAAABQAAAAIwAAABAAAAAgAAAAUAAAAWMAAAAQAAAAIAAAAFAAAAKjAAAAEAAAACAAAABQAAAD4wAAABAAAAAgAAAAUAAABSMAAAAQAAAAIAAAAFAAAAZjAAAAEAAAACAAAABQAAAHowAAABAAAAAgAAAAUAAACOMAAAAQAAAAIAAAAFAAAAojAAAAEAAAACAAAABQAAALYwAAABAAAAAAAAAAQAAADKMAAAAAAAAAIAAAAFAAAAyjAAAAEAAAACAAAABQAAAN4wAAABAAAAAgAAAAUAAADyMAAAAQAAAAIAAAAFAAAABjEAAAEAAAACAAAABQAAABoxAAABAAAAAgAAAAUAAAAuMQAAAQAAAAIAAAAFAAAAQjEAAAEAAAACAAAABQAAAFYxAAABAAAAAgAAAAUAAABqMQAAAQAAAAIAAAAFAAAAfjEAAAEAAAACAAAABQAAAJIxAAABAAAAAgAAAAUAAACmMQAAAQAAAAIAAAAFAAAAujEAAAEAAAACAAAABQAAAM4xAAABAAAAAgAAAAUAAADiMQAAAQAAAAIAAAAFAAAA9jEAAAEAAAACAAAABQAAAAoyAAABAAAAAgAAAAUAAAAeMgAAAQAAAAIAAAAFAAAAMjIAAAEAAAACAAAABQAAAEYyAAABAAAAAgAAAAUAAABaMgAAAQAAAAIAAAAFAAAAbjIAAAEAAAACAAAABQAAAIIyAAABAAAAAgAAAAUAAACWMgAAAQAAAAIAAAAFAAAAqjIAAAEAAAACAAAABQAAAL4yAAABAAAAAgAAAAUAAADSMgAAAQAAAAIAAAAFAAAA5jIAAAEAAAACAAAABQAAAPoyAAABAAAAAgAAAAUAAAAOMwAAAQAAAAIAAAAFAAAAIjMAAAEAAAACAAAABQAAADYzAAABAAAAAgAAAAUAAABKMwAAAQAAAAAAAAAFAAAAXjMAAAAAAAACAAAABQAAAF4zAAABAAAAAgAAAAUAAAByMwAAAQAAAAIAAAAFAAAAhjMAAAEAAAACAAAABQAAAJozAAABAAAAAgAAAAUAAACuMwAAAQAAAAIAAAAFAAAAwjMAAAEAAAACAAAABQAAANYzAAABAAAAAgAAAAUAAADqMwAAAQAAAAIAAAAFAAAA/jMAAAEAAAACAAAABQAAABI0AAABAAAAAgAAAAUAAAAmNAAAAQAAAAIAAAAFAAAAOjQAAAEAAAACAAAABQAAAE40AAABAAAAAgAAAAUAAABiNAAAAQAAAAIAAAAFAAAAdjQAAAEAAAACAAAABQAAAIo0AAABAAAAAgAAAAUAAACeNAAAAQAAAAIAAAAFAAAAsjQAAAEAAAACAAAABQAAAMY0AAABAAAAAAAAAAYAAADaNAAAAAAAAAIAAAAFAAAA2jQAAAEAAAACAAAABQAAAO40AAABAAAAAAAAAAcAAAACNQAAAAAAAAIAAAAFAAAAAjUAAAEAAAACAAAABQAAABY1AAABAAAAAgAAAAUAAAAqNQAAAQAAAAIAAAAFAAAAPjUAAAEAAAACAAAABQAAAFI1AAABAAAAAgAAAAUAAABmNQAAAQAAAAIAAAAFAAAAejUAAAEAAAACAAAABQAAAI41AAABAAAAAgAAAAUAAACiNQAAAQAAAAIAAAAFAAAAtjUAAAEAAAACAAAABQAAAMo1AAABAAAAAgAAAAUAAADeNQAAAQAAAAIAAAAFAAAA8jUAAAEAAAACAAAABQAAAAY2AAABAAAAAgAAAAUAAAAaNgAAAQAAAAIAAAAFAAAALjYAAAEAAAACAAAABQAAAEI2AAABAAAAAgAAAAUAAABWNgAAAQAAAAIAAAAFAAAAajYAAAEAAAACAAAABQAAAH42AAABAAAAAgAAAAUAAACSNgAAAQAAAAIAAAAFAAAApjYAAAEAAAACAAAABQAAALo2AAABAAAAAgAAAAUAAADONgAAAQAAAAIAAAAFAAAA4jYAAAEAAAACAAAABQAAAPY2AAABAAAAAgAAAAUAAAAKNwAAAQAAAAIAAAAFAAAAHjcAAAEAAAACAAAABQAAADI3AAABAAAAAgAAAAUAAABGNwAAAQAAAAIAAAAFAAAAWjcAAAEAAAACAAAABQAAAG43AAABAAAAAgAAAAUAAACCNwAAAQAAAAIAAAAFAAAAljcAAAEAAAACAAAABQAAAKo3AAABAAAAAgAAAAUAAAC+NwAAAQAAAAIAAAAFAAAA0jcAAAEAAAACAAAABQAAAOY3AAABAAAAAgAAAAUAAAD6NwAAAQAAAAIAAAAFAAAADjgAAAEAAAACAAAABQAAACI4AAABAAAAAAAAAAgAAAA2OAAAAAAAAAIAAAAFAAAANjgAAAEAAAACAAAABQAAAEo4AAABAAAAAgAAAAUAAABeOAAAAQAAAAIAAAAFAAAAcjgAAAEAAAACAAAABQAAAIY4AAABAAAAAAAAAAkAAACaOAAAAAAAAAIAAAAFAAAAmjgAAAEAAAACAAAABQAAAK44AAABAAAAAgAAAAUAAADCOAAAAQAAAAIAAAAFAAAA1jgAAAEAAAACAAAABQAAAOo4AAABAAAAAgAAAAUAAAD+OAAAAQAAAAIAAAAFAAAAEjkAAAEAAAACAAAABQAAACY5AAABAAAAAgAAAAUAAAA6OQAAAQAAAAIAAAAFAAAATjkAAAEAAAAAAAAACgAAAGI5AAAAAAAAAgAAAAUAAABiOQAAAQAAAAIAAAAFAAAAdjkAAAEAAAACAAAABQAAAIo5AAABAAAAAgAAAAUAAACeOQAAAQAAAAIAAAAFAAAAsjkAAAEAAAACAAAABQAAAMY5AAABAAAAAgAAAAUAAADaOQAAAQAAAAIAAAAFAAAA7jkAAAEAAAACAAAABQAAAAI6AAABAAAAAgAAAAUAAAAWOgAAAQAAAAIAAAAFAAAAKjoAAAEAAAACAAAABQAAAD46AAABAAAAAgAAAAUAAABSOgAAAQAAAAMAAAAAAAAAZjoAAAEAAAAAAAAACwAAAHY6AAAAAAAAAAAAAAwAAAB2OgAAAAAAAAAAAAANAAAAdjoAAAAAAAADAAAAAAAAAHY6AAABAAAAAwAAAAAAAACGOgAAAQAAAAQAAAAHAAAAljoAAAEAAAAEAAAABwAAAGJDAAABAAAABAAAAAcAAAAeRwAAAQAAAAQAAAAGAAAAikkAAAEAAAAEAAAABwAAAMpJAAABAAAAAgAAAAUAAABYTwAAAQAAAAAAAAAOAAAAbE8AAAAAAAAEAAAABwAAAGxPAAABAAAABAAAAAcAAAA8UQAAAQAAAAQAAAAHAAAAPFMAAAEAAAABAAAAAwAAALxVAAABAAAAAQAAAAMAAABqVgAAAQAAAAEAAAADAAAASmUAAAEAAAABAAAAAwAAAIRmAAABAAAAAQAAAAMAAAAUeQAAAQAAAAEAAAADAAAANoAAAAEAAAABAAAAAwAAACSIAAABAAAAAQAAAAMAAADEjwAAAQAAAAEAAAADAAAAqpQAAAEAAAABAAAAAwAAAJCZAAABAAAAAQAAAAMAAAC6mgAAAQAAAAQAAAAJAAAAjp8AAAEAAAAEAAAACQAAALKfAAABAAAABAAAAAkAAADenwAAAQAAAAQAAAAJAAAACqAAAAEAAAAEAAAACQAAAC6gAAABAAAABAAAAAkAAABaoAAAAQAAAAQAAAAJAAAAhqAAAAEAAAAEAAAACQAAALKgAAABAAAABAAAAAkAAADWoAAAAQAAAAQAAAAJAAAAAqEAAAEAAAAEAAAACQAAACahAAABAAAABAAAAAkAAABKoQAAAQAAAAQAAAAJAAAAdqEAAAEAAAAEAAAACQAAAJqhAAABAAAABAAAAAkAAAC+oQAAAQAAAAQAAAAJAAAA4qEAAAEAAAAEAAAACQAAAAaiAAABAAAABAAAAAkAAAAqogAAAQAAAAQAAAAJAAAAVqIAAAEAAAAEAAAACQAAAIKiAAABAAAABAAAAAkAAACuogAAAQAAAAQAAAAJAAAA2qIAAAEAAAAEAAAACQAAAAajAAABAAAABAAAAAkAAAAyowAAAQAAAAQAAAAJAAAAVqMAAAEAAAAEAAAACQAAAHqjAAABAAAAAwAAAAAAAACeowAAAQAAAAMAAAAAAAAArqMAAAEAAAADAAAAAAAAAL6jAAABAAAAAAAAAA8AAADOowAAAAAAAAAAAAAQAAAAzqMAAAAAAAAEAAAAAwAAAM6jAAABAAAAAwAAAAAAAAAapAAAAQAAAAMAAAAAAAAAKqQAAAEAAAALAAAAAAAAAAAAAQABAAEAAQADAAsAAAAAAAEAAAAKAAQAAABbAAAABQAAAAAAAAAAQAMBAAAEAAAAAAAAAAAAUwAAAAUAAAAAAAAA8D9cAAAABQAAAAAAAAAAQAcABAAAAAcAAAAAAAcABgAAAAQACAAAAAAAAAAGAFsAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAUwAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBcAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAAgAAAAEAAQABAAEAAQADAAsAAAAAAAMAAAABAAEAAQABAAEAAwALAAAAAAAEAAAAAQABAAEAAQABAAMACwAAAAAABQAAAAEAAQABAAEAAQADAAsAAAAAAAYAAAABAAEAAQABAAEAAwALAAAAAAAHAAAAAQABAAEAAQABAAMACwAAAAAACAAAAAoAAgAAAFcAAAAFAAAAAAAAAPA/AwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBXAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACQAAAAoAAwAAAAQBAAAFAAAAAAAAAPA/VAAAAAUAAAAAAAAA8D8DAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFQAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAKAAAACgADAAAABAEAAAUAAAAAAAAA8D9VAAAABQAAAAAAAADwPwMBAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVQAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBCAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACwAAAAoABAAAAAQBAAAEAAEAAAAAAAAAVgAAAAQAAQAAAAAAAAADAQAABAAAAAAAAAAAAFgAAAAEAAEAAAAAAAAABwACAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAVgAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgBYAAAABAAAAAAAAAAAAAoAAQAAAAUBAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBWAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFgAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAADAAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAANAAAACgACAAAAUwAAAAUAAAAAAAAA8D8DAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAF0AAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAOAAAAAQABAAEAAQADAAsAAAAAAA8AAAAKAAQAAACDAAAABQAAAAAAAADwPwMBAAAEAAAAAAAAAAAAYQAAAAUAAAAAAAAAAECEAAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYQAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAEAAAAAoABQAAAAMBAAAEAAAAAAAAAAAAbQAAAAUAAAAAAAAA8D+DAAAABQAAAAAAAADwP2EAAAAFAAAAAAAAAABAhAAAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAABgEAAAcAAwAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBhAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAEQAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAASAAAACgACAAAAAwEAAAQAAAAAAAAAAABiAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYgAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBCAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAEwAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYABwEAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABQAAAAKAAIAAAADAQAABAAAAAAAAAAAAGQAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQgAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBkAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAVAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAIAQAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFgAAAAoAAgAAAAMBAAAEAAAAAAAAAAAAZgAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBCAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQgAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABcAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAkBAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAYAAAACgACAAAAAwEAAAQAAAAAAAAAAABoAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBCAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAGQAAAAoABgAAAAMBAAAEAAAAAAAAAAAACgEAAAUAAAAAAAAA8D9oAAAABQAAAAAAAADwP2YAAAAFAAAAAAAAAPA/ZAAAAAUAAAAAAAAA8D9iAAAABQAAAAAAAADwPwcABwAAAAcAAAAAAAcABgAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAQACAAAAAAAAAAGAGIAAAAEAAAAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYgAAAAQAAAAAAAAAAAAKAAIAAAALAQAABwAEAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYgAAAAQAAAAAAAAAAAAMAQAABwACAAAABwAHAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYgAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBiAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAABoAAAAKAAMAAAANAQAABAABAAAAAAAAAAMBAAAEAAAAAAAAAAAAbAAAAAQAAgAAAAAAAAAHABAAAAAHAAAAAAAHAAkAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABAAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAJAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAALAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQACAAAAAAAAAAGAGwAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAA4AAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAAIAAAAAAAAAAYAbAAAAAQAAAAAAAAAAAAHAAAAAAAKAAEAAAAOAQAABwADAAAABwAGAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAbAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAkAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQACAAAAAAAAAAGAGwAAAAEAAAAAAAAAAAABwAAAAAAAQABAAMACwAAAAAAGwAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYADwEAAAQAAgAAAAAAAAAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAEAAwALAAAAAAAdAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHgAAAAoAAgAAAAMBAAAEAAAAAAAAAAAAhAAAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHwAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACAAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIIAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAhAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIgAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACMAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIIAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAkAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJQAAAAoAAwAAAAMBAAAEAAAAAAAAAAAAZAAAAAUAAAAAAAAA8D9lAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIIAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAEAEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZQAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAmAAAACgADAAAAAwEAAAQAAAAAAAAAAABmAAAABQAAAAAAAADwP2cAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAARAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAZgAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBnAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAACcAAAAKAAIAAAADAQAABAAAAAAAAAAAAH0AAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACgAAAAKAAIAAAADAQAABAAAAAAAAAAAABIBAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACkAAAAKAAQAAAADAQAABQAAAAAAAADwPxMBAAAFAAAAAAAAAPA/FAEAAAUAAAAAAAAA8D8VAQAABQAAAAAAAADwPwQAAAAAAAAAAAAKAAEAAAAWAQAABwACAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAACAAAAAAAuAAAAAgAAAAAALwAAAAMACwAAAAAAKgAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAArAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACwAAAAKAAIAAABqAAAABAABAAAAAAAAAAMBAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQAHAAEAAAACAAAAAAAxAAAAAwALAAAAAAAtAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAYAAAAFAAAAAAAAABBABAAgAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAC4AAAAKAAIAAAADAQAABAAAAAAAAAAAAHsAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQgAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB7AAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAvAAAACgACAAAAAwEAAAQAAAAAAAAAAAB8AAAABQAAAAAAAADwPwcACgAAAAcAAAAAAAcADAAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAAGEAGABcBAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAfwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB8AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAJAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAoAAQAAABgBAAAHAAQAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB8AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcACAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGABcBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAfwAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAwAAAAAQABAAEAAQADAAsAAAAAADEAAAABAAEAAQABAAMACwAAAAAAMgAAAAEAAQABAAEAAwALAAAAAAAzAAAAAQABAAEAAQADAAsAAAAAADQAAAAKAAIAAAADAQAABAAAAAAAAAAAAGAAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA1AAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADYAAAABAAEAAQABAAMACwAAAAAANwAAAAEAAQABAAEAAwALAAAAAAA4AAAAAQABAAEAAQADAAsAAAAAADkAAAABAAEAAQABAAMACwAAAAAAOgAAAAEAAQABAAEAAwALAAAAAAA7AAAAAQABAAEAAQADAAsAAAAAADwAAAABAAEAAQABAAMACwAAAAAAPQAAAAEAAQABAAEAAwALAAAAAAA+AAAAAQABAAEAAQADAAsAAAAAAD8AAAABAAEAAQABAAMACwAAAAAAQAAAAAEAAQABAAEAAwALAAAAAABBAAAAAQABAAEAAQADAAsAAAAAAEIAAAABAAEAAQABAAMACwAAAAAAQwAAAAEAAQABAAEAAwALAAAAAABEAAAAAQABAAEAAQADAAsAAAAAAEUAAAABAAEAAQABAAMACwAAAAAARgAAAAEAAQABAAEAAwALAAAAAABHAAAAAQABAAEAAQADAAsAAAAAAEgAAAABAAEAAQABAAMACwAAAAAASQAAAAEAAQABAAEAAwALAAAAAABKAAAAAQABAAEAAQADAAsAAAAAAEsAAAABAAEAAQABAAMACwAAAAAATAAAAAEAAQABAAEAAwALAAAAAABNAAAAAQABAAEAAQADAAsAAAAAAE4AAAABAAEAAQABAAMACwAAAAAATwAAAAEAAQABAAEAAwALAAAAAABQAAAAAQABAAEAAQADAAsAAAAAAFEAAAABAAEAAQABAAMACwAAAAAAUgAAAAEAAQABAAEAAwALAAAAAABTAAAAAQABAAEAAQADAAsAAAAAAFQAAAABAAEAAQABAAMACwAAAAAAVQAAAAEAAQABAAEAAwALAAAAAABWAAAAAQABAAEAAQADAAsAAAAAAFcAAAABAAEAAQABAAMACwAAAAAAWAAAAAEAAQABAAEAAwALAAAAAABZAAAAAQABAAEAAQADAAsAAAAAAFoAAAABAAEAAQABAAMACwAAAAAAWwAAAAEAAQABAAEAAwALAAAAAABcAAAAAQABAAEAAQADAAsAAAAAAF0AAAABAAEAAQABAAMACwAAAAAAXgAAAAEAAQABAAEAAwALAAAAAABfAAAAAQABAAEAAQADAAsAAAAAAGAAAAABAAEAAQABAAMACwAAAAAAYQAAAAEAAQABAAEAAwALAAAAAABiAAAAAQABAAEAAQADAAsAAAAAAGMAAAABAAEAAQABAAMACwAAAAAAZAAAAAEAAQABAAEAAwALAAAAAABlAAAAAQABAAEAAQADAAsAAAAAAGYAAAABAAEAAQABAAMACwAAAAAAZwAAAAEAAQABAAEAAwALAAAAAABoAAAAAQABAAEAAQADAAsAAAAAAGkAAAABAAEAAQABAAMACwAAAAAAagAAAAEAAQABAAEAAwALAAAAAABrAAAAAQABAAEAAQADAAsAAAAAAGwAAAABAAEAAQABAAMACwAAAAAAbQAAAAEAAQABAAEAAwALAAAAAABuAAAAAQABAAEAAQADAAsAAAAAAG8AAAABAAEAAQABAAMACwAAAAAAcAAAAAEAAQABAAEAAwALAAAAAABxAAAAAQABAAEAAQADAAsAAAAAAHIAAAABAAEAAQABAAMACwAAAAAAcwAAAAEAAQABAAEAAwALAAAAAAB0AAAAAQABAAEAAQADAAsAAAAAAHUAAAABAAEAAQABAAMACwAAAAAAdgAAAAEAAQABAAEAAwALAAAAAAB3AAAAAQABAAEAAQADAAsAAAAAAHgAAAABAAEAAQABAAMACwAAAAAAeQAAAAEAAQABAAEAAwALAAAAAAB6AAAAAQABAAEAAQADAAsAAAAAAHsAAAABAAEAAQABAAMACwAAAAAAfAAAAAEAAQABAAEAAwALAAAAAAB9AAAAAQABAAEAAQADAAsAAAAAAH4AAAABAAEAAQABAAMACwAAAAAAfwAAAAEAAQABAAEAAwALAAAAAACAAAAAAQABAAEAAQADAAsAAAAAAIEAAAABAAEAAQABAAMACwAAAAAAggAAAAEAAQABAAEAAwALAAAAAACDAAAAAQABAAEAAQADAAsAAAAAAIQAAAABAAEAAQABAAMACwAAAAAAhQAAAAEAAQABAAEAAwALAAAAAACGAAAAAQABAAEAAQADAAsAAAAAAIcAAAABAAEAAQABAAMACwAAAAAAiAAAAAEAAQABAAEAAwALAAAAAACJAAAAAQABAAEAAQADAAsAAAAAAIoAAAABAAEAAQABAAMACwAAAAAAiwAAAAEAAQABAAEAAwALAAAAAACMAAAAAQABAAEAAQADAAsAAAAAAI0AAAABAAEAAQABAAMACwAAAAAAjgAAAAEAAQABAAEAAwALAAAAAACPAAAAAQABAAEAAQADAAsAAAAAAJAAAAABAAEAAQABAAMACwAAAAAAkQAAAAEAAQABAAEAAwALAAAAAACSAAAAAQABAAEAAQADAAsAAAAAAJMAAAABAAEAAQABAAMACwAAAAAAlAAAAAEAAQABAAEAAwALAAAAAACVAAAAAQABAAEAAQADAAsAAAAAAJYAAAABAAEAAQABAAMACwAAAAAAlwAAAAEAAQABAAEAAwALAAAAAACYAAAAAQABAAEAAQADAAsAAAAAAJkAAAABAAEAAQABAAMACwAAAAAAmgAAAAEAAQABAAEAAwALAAAAAACbAAAAAQABAAEAAQADAAsAAAAAAJwAAAABAAEAAQABAAMACwAAAAAAnQAAAAEAAQABAAEAAwALAAAAAACeAAAAAQABAAEAAQADAAsAAAAAAJ8AAAABAAEAAQABAAMACwAAAAAAoAAAAAEAAQABAAEAAwALAAAAAAChAAAAAQABAAEAAQADAAsAAAAAAKIAAAABAAEAAQABAAMACwAAAAAAowAAAAEAAQABAAEAAwALAAAAAACkAAAAAQABAAEAAQADAAsAAAAAAKUAAAABAAEAAQABAAMACwAAAAAApgAAAAEAAQABAAEAAwALAAAAAACnAAAAAQABAAEAAQADAAsAAAAAAKgAAAABAAEAAQABAAMACwAAAAAAqQAAAAEAAQABAAEAAwALAAAAAACqAAAAAQABAAEAAQADAAsAAAAAAKsAAAABAAEAAQABAAMACwAAAAAArAAAAAEAAQABAAEAAwALAAAAAACtAAAAAQABAAEAAQADAAsAAAAAAK4AAAABAAEAAQABAAMACwAAAAAArwAAAAEAAQABAAEAAwALAAAAAACwAAAAAQABAAEAAQADAAsAAAAAALEAAAABAAEAAQABAAMACwAAAAAAsgAAAAEAAQABAAEAAwALAAAAAACzAAAAAQABAAEAAQADAAsAAAAAALQAAAABAAEAAQABAAMACwAAAAAAtQAAAAEAAQABAAEAAwALAAAAAAC2AAAAAQABAAEAAQADAAsAAAAAALcAAAABAAEAAQABAAMACwAAAAAAuAAAAAEAAQABAAEAAwALAAAAAAC5AAAAAQABAAEAAQADAAsAAAAAALoAAAABAAEAAQABAAMAGgEAAAcAAAAAAAoAAAAAABsBAAAHAAAAAAAKAAAAAAAMAAAABwAAAAAACgAAAAAABgAeAQAACgAAAAAACgA9AAAAUQAAAAIAAAAAAAQAAABSAAAAAgAAAAAABQAAAFMAAAACAAAAAAAGAAAAVAAAAAIAAAAAAAcAAABVAAAAAgAAAAAACAAAAFYAAAACAAAAAAAJAAAAVwAAAAIAAAAAAAoAAABYAAAAAgAAAAAACwAAAFkAAAACAAAAAAAMAAAAWgAAAAIAAAAAAA0AAABbAAAAAgAAAAAADgAAAFwAAAACAAAAAAAPAAAAXQAAAAIAAAAAABAAAABeAAAAAgAAAAAAEQAAAF8AAAACAAAAAAASAAAAYAAAAAIAAAAAABMAAABhAAAAAgAAAAAAFAAAAGIAAAACAAAAAAAVAAAAYwAAAAIAAAAAABYAAABkAAAAAgAAAAAAFwAAAGUAAAACAAAAAAAYAAAAZgAAAAIAAAAAABkAAABnAAAAAgAAAAAAGgAAAGgAAAACAAAAAAAbAAAAaQAAAAIAAAAAABwAAABqAAAAAgAAAAAAHQAAAGsAAAACAAAAAAAeAAAAbAAAAAIAAAAAAB8AAABtAAAAAgAAAAAAIAAAAG4AAAACAAAAAAAhAAAAbwAAAAIAAAAAACIAAABwAAAAAgAAAAAAIwAAAHEAAAACAAAAAAAkAAAAcgAAAAIAAAAAACUAAABzAAAAAgAAAAAAJgAAAHQAAAACAAAAAAAnAAAAdQAAAAIAAAAAACgAAAB2AAAAAgAAAAAAKQAAAHcAAAACAAAAAAAqAAAAeAAAAAIAAAAAACsAAAB5AAAAAgAAAAAALAAAAHoAAAACAAAAAAAtAAAAewAAAAIAAAAAADAAAAB8AAAAAgAAAAAAMgAAAH0AAAACAAAAAAAzAAAAfgAAAAIAAAAAADQAAAB/AAAAAgAAAAAANQAAAFAAAAACAAAAAAA2AAAAgAAAAAIAAAAAADcAAACBAAAAAgAAAAAAOAAAAIIAAAACAAAAAAA5AAAAgwAAAAIAAAAAADoAAACEAAAAAgAAAAAAOwAAAIUAAAACAAAAAAA8AAAAhgAAAAIAAAAAAD0AAACHAAAAAgAAAAAAPgAAAIgAAAACAAAAAAA/AAAAiQAAAAIAAAAAAEAAAACKAAAAAgAAAAAAQQAAAIsAAAACAAAAAABCAAAAjAAAAAIAAAAAAEMAAAAHAD0AAAACAAAAAAAEAAAAAgAAAAAABQAAAAIAAAAAAAYAAAACAAAAAAAHAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAANAAAAAgAAAAAADgAAAAIAAAAAAA8AAAACAAAAAAAQAAAAAgAAAAAAEQAAAAIAAAAAABIAAAACAAAAAAATAAAAAgAAAAAAFAAAAAIAAAAAABUAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAACAAAAAAAwAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAAAgAAAAAANQAAAAIAAAAAADYAAAACAAAAAAA3AAAAAgAAAAAAOAAAAAIAAAAAADkAAAACAAAAAAA6AAAAAgAAAAAAOwAAAAIAAAAAADwAAAACAAAAAAA9AAAAAgAAAAAAPgAAAAIAAAAAAD8AAAACAAAAAABAAAAAAgAAAAAAQQAAAAIAAAAAAEIAAAACAAAAAABDAAAABwAAAAAABwABAAAAAgABAAAAZAAAAAcAAAAAAAIAAQAAAGQAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAAwAAAAIAAQAAAGQAAAACAAIAAAAZAAAABwAAAAAACgAMAAAAMwAAAAoAAgAAAFMAAAAHAAEAAAAGAFkAAABtAAAABwANAAAABgBuAAAABgBvAAAABgBwAAAABgBxAAAABgByAAAABgBzAAAABgB0AAAABgB1AAAABgB2AAAABgB3AAAABgB4AAAABgB5AAAABgB6AAAAUwAAAAIAAAAAANYAAABtAAAAAgAAAAAA1wAAAAUBAAACAAAAAADYAAAABgEAAAIAAAAAANkAAAALAQAAAgAAAAAA2gAAAAwBAAACAAAAAADbAAAADgEAAAIAAAAAANwAAAAQAQAAAgAAAAAA3QAAABEBAAACAAAAAADeAAAAFgEAAAIAAAAAAN8AAAAYAQAAAgAAAAAA4AAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGAB8BAAAGAI0AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAIAAAAAYAjgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgAhAAAABgCPAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGACABAAAGAJAAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAnAAAAAYAkQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgAhAQAABgCSAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGACIBAAAGAJMAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAIwEAAAYAlAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgAkAQAABgCVAAAABwAAAAAAAQAGACUBAAAKAAAAAAAKACEAAACWAAAAAgAAAAAARQAAAJcAAAACAAAAAABGAAAAmAAAAAIAAAAAAEcAAACGAAAAAgAAAAAASAAAAFkAAAACAAAAAABJAAAAUgAAAAIAAAAAAEoAAABdAAAAAgAAAAAASwAAAF4AAAACAAAAAABMAAAAagAAAAIAAAAAAE0AAABrAAAAAgAAAAAATgAAAGIAAAACAAAAAABPAAAAZAAAAAIAAAAAAFAAAABmAAAAAgAAAAAAUQAAAGgAAAACAAAAAABSAAAAgQAAAAIAAAAAAFMAAABgAAAAAgAAAAAAVAAAAGEAAAACAAAAAABVAAAAbgAAAAIAAAAAAFYAAABvAAAAAgAAAAAAVwAAAHAAAAACAAAAAABYAAAAcQAAAAIAAAAAAFkAAAByAAAAAgAAAAAAWgAAAHMAAAACAAAAAABbAAAAdAAAAAIAAAAAAFwAAAB1AAAAAgAAAAAAXQAAAHYAAAACAAAAAABeAAAAdwAAAAIAAAAAAF8AAAB4AAAAAgAAAAAAYAAAAHkAAAACAAAAAABhAAAAegAAAAIAAAAAAGIAAAB7AAAAAgAAAAAAYwAAAHwAAAACAAAAAABkAAAAfQAAAAIAAAAAAGUAAAAHACEAAAACAAAAAABFAAAAAgAAAAAARgAAAAIAAAAAAEcAAAACAAAAAABIAAAAAgAAAAAASQAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAWAAAAAIAAAAAAFkAAAACAAAAAABaAAAAAgAAAAAAWwAAAAIAAAAAAFwAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZAAAAAIAAAAAAGUAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABEAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAAAAAABAAYAJgEAAAoAAAAAAAoAEwAAAJkAAAACAAAAAABnAAAAmgAAAAIAAAAAAGgAAACbAAAAAgAAAAAAaQAAAJwAAAACAAAAAABqAAAAnQAAAAIAAAAAAGsAAACeAAAAAgAAAAAAbAAAAJ8AAAACAAAAAABtAAAAoAAAAAIAAAAAAG4AAAChAAAAAgAAAAAAbwAAAKIAAAACAAAAAABwAAAAowAAAAIAAAAAAHEAAACkAAAAAgAAAAAAcgAAAKUAAAACAAAAAABzAAAApgAAAAIAAAAAAHQAAACnAAAAAgAAAAAAdQAAAKgAAAACAAAAAAB2AAAAqQAAAAIAAAAAAHcAAACqAAAAAgAAAAAAeAAAAKsAAAACAAAAAAB5AAAABwATAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGYAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgAnAQAACgAAAAAACgABAAAA0QAAAAIAAAAAAHsAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAgAAAAAAfAAAAAYAKAEAAAoADAAAANIAAAACAAAAAADhAAAA0wAAAAIAAAAAAOIAAADUAAAAAgAAAAAA4wAAANUAAAACAAAAAADkAAAA1gAAAAIAAAAAAOUAAADXAAAAAgAAAAAA5gAAANgAAAACAAAAAADnAAAA2QAAAAIAAAAAAOgAAADaAAAAAgAAAAAA6QAAANsAAAACAAAAAADqAAAA3AAAAAIAAAAAAOsAAADdAAAAAgAAAAAA7AAAAAoAKgAAAK0AAAACAAAAAAB+AAAArgAAAAIAAAAAAH8AAACvAAAAAgAAAAAAgAAAALAAAAACAAAAAACBAAAAmgAAAAIAAAAAAIIAAACxAAAAAgAAAAAAgwAAALIAAAACAAAAAACEAAAAswAAAAIAAAAAAIUAAAC0AAAAAgAAAAAAhgAAALUAAAACAAAAAACHAAAAtgAAAAIAAAAAAIgAAAB/AAAAAgAAAAAAiQAAAKIAAAACAAAAAACKAAAAtwAAAAIAAAAAAIsAAAC4AAAAAgAAAAAAjAAAALkAAAACAAAAAACNAAAAugAAAAIAAAAAAI4AAAC7AAAAAgAAAAAAjwAAALwAAAACAAAAAACQAAAAvQAAAAIAAAAAAJEAAAC+AAAAAgAAAAAAkgAAAL8AAAACAAAAAACTAAAAwAAAAAIAAAAAAJQAAADBAAAAAgAAAAAAlQAAAMIAAAACAAAAAACWAAAAwwAAAAIAAAAAAJcAAAAbAAAAAgAAAAAAmAAAAMQAAAACAAAAAACZAAAAxQAAAAIAAAAAAJoAAADGAAAAAgAAAAAAmwAAAMcAAAACAAAAAACcAAAAyAAAAAIAAAAAAJ0AAADJAAAAAgAAAAAAngAAAJ0AAAACAAAAAACfAAAAygAAAAIAAAAAAKAAAADLAAAAAgAAAAAAoQAAAMwAAAACAAAAAACiAAAAzQAAAAIAAAAAAKMAAADOAAAAAgAAAAAApAAAAM8AAAACAAAAAAClAAAA0AAAAAIAAAAAAKYAAADRAAAAAgAAAAAA0QAAAAcAKgAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACUAAAAAgAAAAAAlQAAAAIAAAAAAJYAAAACAAAAAACXAAAAAgAAAAAAmAAAAAIAAAAAAJkAAAACAAAAAACaAAAAAgAAAAAAmwAAAAIAAAAAAJwAAAACAAAAAACdAAAAAgAAAAAAngAAAAIAAAAAAJ8AAAACAAAAAACgAAAAAgAAAAAAoQAAAAIAAAAAAKIAAAACAAAAAACjAAAAAgAAAAAApAAAAAIAAAAAAKUAAAACAAAAAACmAAAAAgAAAAAA0QAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAEAAAACAAAAAAB6AAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAB9AAAAAgACAAAAGQAAAAcAAgAAAAIAAAAAAHoAAAACAAAAAADSAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAB+AAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAH4AAAABAAwAAAAAALsAAAABAAEAAQABAAMABgApAQAACgACAAAA4wAAAAIAAAAAAO0AAADkAAAAAgAAAAAA7gAAAAoABQAAAN4AAAACAAAAAACoAAAA3wAAAAIAAAAAAKkAAADgAAAAAgAAAAAAqgAAAOEAAAACAAAAAACrAAAA4gAAAAIAAAAAAKwAAAAHAAUAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAKcAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcABAAAAAQAAgAAAAAAAAACAAAAAACnAAAABgDfAAAABgDjAAAABwAEAAAABAADAAAAAAAAAAIAAAAAAKcAAAAGAOAAAAAGAOQAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAApwAAAAYA3wAAAAYA4wAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACnAAAABgDgAAAABgDkAAAAAQAGACoBAAAKAAQAAADsAAAAAgAAAAAA7wAAAOQAAAACAAAAAADwAAAA7QAAAAIAAAAAAPEAAADuAAAAAgAAAAAA8gAAAAoACgAAABIAAAACAAAAAACuAAAA5QAAAAIAAAAAAK8AAACtAAAAAgAAAAAAsAAAAOYAAAACAAAAAACxAAAA5wAAAAIAAAAAALIAAADoAAAAAgAAAAAAswAAAOkAAAACAAAAAAC0AAAA6gAAAAIAAAAAALUAAADrAAAAAgAAAAAAtgAAABsAAAACAAAAAAC3AAAABwAKAAAAAgAAAAAArgAAAAIAAAAAAK8AAAACAAAAAACwAAAAAgAAAAAAsQAAAAIAAAAAALIAAAACAAAAAACzAAAAAgAAAAAAtAAAAAIAAAAAALUAAAACAAAAAAC2AAAAAgAAAAAAtwAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAK0AAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACwAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALAAAAABAAYAKwEAAAoACAAAAPsAAAACAAAAAADzAAAA/AAAAAIAAAAAAPQAAAD9AAAAAgAAAAAA9QAAAP4AAAACAAAAAAD2AAAA/wAAAAIAAAAAAPcAAAAAAQAAAgAAAAAA+AAAAAEBAAACAAAAAAD5AAAAAgEAAAIAAAAAAPoAAAAKAA0AAACtAAAAAgAAAAAAuQAAAO8AAAACAAAAAAC6AAAA8AAAAAIAAAAAALsAAADxAAAAAgAAAAAAvAAAAPIAAAACAAAAAAC9AAAA8wAAAAIAAAAAAL4AAAD0AAAAAgAAAAAAvwAAAPUAAAACAAAAAADAAAAA9gAAAAIAAAAAAMEAAAD3AAAAAgAAAAAAwgAAAPgAAAACAAAAAADDAAAA+QAAAAIAAAAAAMQAAAD6AAAAAgAAAAAAxQAAAAcADQAAAAIAAAAAALkAAAACAAAAAAC6AAAAAgAAAAAAuwAAAAIAAAAAALwAAAACAAAAAAC9AAAAAgAAAAAAvgAAAAIAAAAAAL8AAAACAAAAAADAAAAAAgAAAAAAwQAAAAIAAAAAAMIAAAACAAAAAADDAAAAAgAAAAAAxAAAAAIAAAAAAMUAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAC4AAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAuQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAC5AAAAAQAHAAQAAAAHAAIAAAADAAYAWQAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFcAAAAFAAAAAAAAAABABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHAFUAAAAHAA4AAAADAAYAbgAAAAYAbwAAAAYAcAAAAAYAcQAAAAYAcgAAAAYAcwAAAAYAdAAAAAYAdQAAAAYAdgAAAAYAdwAAAAYAeAAAAAYAeQAAAAYAegAAAAcAJwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAlAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAzAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAUQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACZABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAQADgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA5QAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAEABwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEBABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAABEQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAqAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAoAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBEQAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABHQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAgEdABAABAAAAAAAAAAQAAAAAAAAAAAAEADEAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAFAAAAAAAAgEVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAC8AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEhABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgEpABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAS0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAOAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAUAAAAAAAAASUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQANgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAS0AHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAATkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAIBOQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA/AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABQAAAAAAAIBMQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA9AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBQQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAAFFABAABAAAAAAAAAAQAAAAAAAAAAAAEAEYAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAFAAAAAAAAAFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFFABwADAAAABAAAAAAAAAAAAAQACwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFJABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAADAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAQATQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAUAAAAAAADAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAU0AHAAMAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVEAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAIBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABUAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABQAAAAAAAIBTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABSAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBWAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFgAAAAFAAAAAAAAABBABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHAGEAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAWgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAXgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBtAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcATgAAAAQACAAAAAAAAAAGAG4AAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAbwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBwAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHEAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBzAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHQAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB2AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHcAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAeAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB5AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAABBABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABsAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACkAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAD4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFMAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACJABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAALkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABAASAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA1QAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAEABkAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADxABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAAD1ABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAQUAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAnAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAlAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABFQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBFQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAAEZABAABAAAAAAAAAAQAAAAAAAAAAAAEAC4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAERABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACwAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEhABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAElABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAACASUAEAAEAAAAAAAAABAAAAAAAAAAAAAQANQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAATEAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAUAAAAAAACATEAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAABNQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA8AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABLQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBNQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBPQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABQQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAQFBABAABAAAAAAAAAAQAAAAAAAAAAAAEAEMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgFFABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFFABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAQASgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAABAU0AHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAACAU0AHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAMBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABABRAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABVQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBVQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAgFVABAABAAAAAAAAAAQAAAAAAAAAAAAEAFgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFVABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAQFZABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFZABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAADAV0AEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgBhAAAABQAAAAAAAMBXQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAQFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHACYAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAFAAAAAAAAABhABgAJAQAABQAAAAAAAAAkQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAAAqQAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAYQAYACAEAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgBkAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAUAAAAAAAAAGEAGAAcBAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAAD9ABwAGAAAABAAIAAAAAAAAAAYAYgAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAQUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAEAAEAAAAAAAAAAAAAAAAAAAABAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGQAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgAJAQAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAAgBAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYABwEAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBiAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAoAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAABBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAABhABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABAAIAAAAAAAAAAYAbAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAPAQAABQAAAAAAAAAkQAcABgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAqQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAxQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAzQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAA1QAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAQACAAAAAAAAAAGAGwAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABwADAAAABQAAAAAAAAAYQAYADwEAAAUAAAAAAAAAOUAHAAYAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAEAAgAAAAAAAAABgBsAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAjAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAdAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAA8BAAAFAAAAAAAAAEJABwAGAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGQAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYABwEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEIAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZAAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBCAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAAcBAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYACAEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEIAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZgAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBCAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAAgBAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHAAcAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAYAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAQQAcABgAAAAQACAAAAAAAAAAGAHwAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAQgAAAAUAAAAAAAAAJEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAYAAAAEAAgAAAAAAAAABgB7AAAABQAAAAAAAAAmQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAEIAAAAFAAAAAAAAACJABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAC5ABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADNABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAFwEAAAUAAAAAAAAANEAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgB/AAAABQAAAAAAAAA2QAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABgDSAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDTAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGANQAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA1QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA1gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDXAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGANgAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA2QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA2gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDbAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDcAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDdAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAOMAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOwAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAO0AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAO4AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA+wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgD8AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAP0AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA/gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgD/AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAAABAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAAEBAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAAIBAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAAGACcBAAACAAAAAAB6AAAACgAAAAAACgABAAAA0QAAAAIAAAAAANEAAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAARQEAAAcAAAAAAAoAAAAAAEcBAAAHAAAAAAAKAAAAAAAAAAAAdAAAAAEAAAABAAAAAAAAANEAAAAAAAAAdQAAAAAAAAAAAAAAAwAAAAAAAABJAQAAAwBKAQAAAwBLAQAAAgAAAAAAfQAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if828_end1867 
    die "Repossession conflicts occurred during deserialization"
  if828_end1867:
    .const "LexInfo" $P5001 = "cuid_201_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1361964161.189"
    nqp_get_sc_object $P5002, "41BC6126A6537720F2A162E1AE4506906D3B7795-1361964156.879", 32
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1361964161.189"
    nqp_get_sc_object $P5002, "41BC6126A6537720F2A162E1AE4506906D3B7795-1361964156.879", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_57_1361964161.189" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_58_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 67
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_188_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_188_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_188_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_188_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 68
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_202_1361964161.189" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_65_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 101
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_203_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 68
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_203_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_203_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 68
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_203_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_98_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 121
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_216_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 102
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_216_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_216_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 102
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_216_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_117_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 124
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_118_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 122
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_118_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_118_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 122
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_118_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_119_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 166
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_220_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_220_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_220_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 125
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_220_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_160_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_163_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 172
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_247_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_247_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_247_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 167
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_247_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_165_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 176
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 179
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 180
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 181
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 182
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_174_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 183
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_248_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_248_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_248_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 173
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_248_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_175_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 185
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_176_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 186
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_177_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 187
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_178_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 188
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_179_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 189
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_180_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 190
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_181_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 191
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_182_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 192
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_183_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 193
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_184_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 194
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_185_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 195
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_186_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 196
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_187_1361964161.189" 
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 197
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_258_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_258_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_258_1361964161.189"
    nqp_get_sc_object $P5002, "418C4F29E7130D41CFB1A39FD341B4E57625BC63-1361964161.213", 184
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_258_1361964161.189"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1361964161.189") :anon :lex :outer("cuid_260_1361964161.189")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_175_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_176_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_177_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_178_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_179_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_180_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_181_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_182_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_183_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_184_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_185_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_186_1361964161.189" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_187_1361964161.189" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1361964161.189") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_201_1361964161.189" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1361964161.189") :main
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_201_1361964161.189" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end