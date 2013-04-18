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
.sub "" :subid("cuid_201_1365879968.631") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5023 = 'cuid_188_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_203_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_216_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_118_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_220_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_247_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_248_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_258_1365879968.631' 
    capture_lex $P5023 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "ParseShared", $P104 
    .lex "NQPCursorRole", $P105 
    .lex "$compiler", $P106 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    .const 'Sub' $P5006 = 'cuid_188_1365879968.631' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_203_1365879968.631' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_216_1365879968.631' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_118_1365879968.631' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_220_1365879968.631' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 1577
    nqp_get_sc_object $P5015, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    $P5016 = $P5015."new"()
    set $P106, $P5016
.annotate 'line', 1578
    $P106."language"("parrot")
    .const 'Sub' $P5017 = 'cuid_247_1365879968.631' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_248_1365879968.631' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_258_1365879968.631' 
    capture_lex $P5021
    $P5022 = $P5021()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5069 = 'cuid_1_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_2_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_3_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_4_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_5_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_6_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_7_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_8_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_9_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_10_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_11_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_12_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_13_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_14_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_15_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_16_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_17_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_18_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_19_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_20_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_21_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_22_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_23_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_24_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_25_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_26_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_27_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_28_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_29_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_30_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_31_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_32_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_33_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_34_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_35_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_36_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_37_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_38_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_39_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_40_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_41_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_42_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_45_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_47_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_48_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_49_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_50_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_51_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_52_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_53_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_54_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_55_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_56_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_57_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_58_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_59_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_60_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_61_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_62_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_63_1365879968.631' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_64_1365879968.631' 
    capture_lex $P5069 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "%ohash", $P103 
    .lex "$TRUE", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    box $P5005, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "CB6D7C261AAF0D8B4B26A009A161E31DD17426AF-1365879963.875", 100
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_1_1365879968.631' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1365879968.631' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1365879968.631' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_4_1365879968.631' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_5_1365879968.631' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_6_1365879968.631' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_7_1365879968.631' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_8_1365879968.631' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_9_1365879968.631' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_10_1365879968.631' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_11_1365879968.631' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_12_1365879968.631' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_13_1365879968.631' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_14_1365879968.631' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_15_1365879968.631' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_16_1365879968.631' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_17_1365879968.631' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_18_1365879968.631' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_19_1365879968.631' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_20_1365879968.631' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_21_1365879968.631' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_22_1365879968.631' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_23_1365879968.631' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_24_1365879968.631' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_25_1365879968.631' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_26_1365879968.631' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_27_1365879968.631' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_28_1365879968.631' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_29_1365879968.631' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_30_1365879968.631' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_31_1365879968.631' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_32_1365879968.631' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_33_1365879968.631' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_34_1365879968.631' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_35_1365879968.631' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_36_1365879968.631' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_37_1365879968.631' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_38_1365879968.631' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_39_1365879968.631' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_40_1365879968.631' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_41_1365879968.631' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_42_1365879968.631' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_45_1365879968.631' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_47_1365879968.631' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_48_1365879968.631' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_49_1365879968.631' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_50_1365879968.631' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_51_1365879968.631' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_52_1365879968.631' 
    capture_lex $P5055
    box $P5056, 1
    set $P104, $P5056
    .const 'Sub' $P5057 = 'cuid_53_1365879968.631' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_54_1365879968.631' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_55_1365879968.631' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_56_1365879968.631' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_57_1365879968.631' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_58_1365879968.631' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_59_1365879968.631' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_60_1365879968.631' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_61_1365879968.631' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_62_1365879968.631' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_63_1365879968.631' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_64_1365879968.631' 
    capture_lex $P5068
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "termish" :subid("cuid_2_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "term" :subid("cuid_3_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "infixish" :subid("cuid_10_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "prefixish" :subid("cuid_11_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "postfixish" :subid("cuid_12_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    rx29_cur."!alt"(rx29_pos, "alt_nfa__1_1365879968.77", $P11)
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
.sub "nullterm" :subid("cuid_13_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "nullterm_alt" :subid("cuid_14_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "nulltermish" :subid("cuid_15_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "quote_delimited" :subid("cuid_16_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "quote_atom" :subid("cuid_17_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    nqp_push_label $P11, alt49_2142
    nqp_rxmark rx47_bstack, alt49_end132, -1, 0
    rx47_cur."!alt"(rx47_pos, "alt_nfa__2_1365879968.804", $P11)
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
.sub "decint" :subid("cuid_18_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "decints" :subid("cuid_19_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "hexint" :subid("cuid_20_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "hexints" :subid("cuid_21_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "octint" :subid("cuid_22_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "octints" :subid("cuid_23_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "binint" :subid("cuid_24_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "binints" :subid("cuid_25_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
.sub "integer" :subid("cuid_26_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    rx98_cur."!alt"(rx98_pos, "alt_nfa__4_1365879968.878", $P11)
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
    rx98_cur."!alt"(rx98_pos, "alt_nfa__3_1365879968.878", $P11)
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
.sub "dec_number" :subid("cuid_27_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
    rx107_cur."!alt"(rx107_pos, "alt_nfa__5_1365879968.899", $P11)
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
.sub "escale" :subid("cuid_28_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
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
  alt125_0338:
    nqp_rxmark rx122_bstack, alt125_1339, rx122_pos, 0
    add $I11, rx122_pos, 1
    gt $I11, rx122_eos, rx122_fail328
    substr $S10, rx122_tgt, rx122_pos, 1
    ne $S10, ucs4:"-", rx122_fail328
    add rx122_pos, 1
    goto alt125_end337
  alt125_1339:
    ge rx122_pos, rx122_eos, rx122_fail328
    substr $S11, rx122_tgt, rx122_pos, 1
    index $I11, ucs4:"+", $S11
    lt $I11, 0, rx122_fail328
    inc rx122_pos
  alt125_end337:
    nqp_rxpeek $I19, rx122_bstack, rxquantr124_done336
    inc $I19
    inc $I19
    set rx122_rep, rx122_bstack[$I19]
    nqp_rxcommit rx122_bstack, rxquantr124_done336
    inc rx122_rep
  rxquantr124_done336:
    nqp_rxmark rx122_bstack, rxquantr126_done341, -1, 0
  rxquantr126_loop340:
    ge rx122_pos, rx122_eos, rx122_fail328
    is_cclass $I11, .CCLASS_NUMERIC, rx122_tgt, rx122_pos
    unless $I11, rx122_fail328
    add rx122_pos, 1
    nqp_rxpeek $I19, rx122_bstack, rxquantr126_done341
    inc $I19
    inc $I19
    set rx122_rep, rx122_bstack[$I19]
    nqp_rxcommit rx122_bstack, rxquantr126_done341
    inc rx122_rep
    nqp_rxmark rx122_bstack, rxquantr126_done341, rx122_pos, rx122_rep
    goto rxquantr126_loop340
  rxquantr126_done341:
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
.sub "quote_escape" :subid("cuid_29_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
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
    eq $I19, 1, rx127_restart344
    gt rx127_pos, rx127_eos, rx127_fail345
    repr_get_attr_int $I11, self, rx127_curclass, "$!from"
    ne $I11, -1, rxscan128_done351
    goto rxscan128_scan350
  rxscan128_loop349:
    inc rx127_pos
    gt rx127_pos, rx127_eos, rx127_fail345
    repr_bind_attr_int rx127_cur, rx127_curclass, "$!from", rx127_pos
  rxscan128_scan350:
    nqp_rxmark rx127_bstack, rxscan128_loop349, rx127_pos, 0
  rxscan128_done351:
    add $I11, rx127_pos, 2
    gt $I11, rx127_eos, rx127_fail345
    substr $S10, rx127_tgt, rx127_pos, 2
    ne $S10, ucs4:"\\\\", rx127_fail345
    add rx127_pos, 2
    repr_bind_attr_int rx127_cur, rx127_curclass, "$!pos", rx127_pos
    $P11 = rx127_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx127_curclass, "$!pos"
    lt $I11, 0, rx127_fail345
    rx127_cur."!cursor_pass"(rx127_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx127_cur)
  rx127_restart344:
    repr_get_attr_obj rx127_cstack, rx127_cur, rx127_curclass, "$!cstack"
  rx127_fail345:
    unless rx127_bstack, rx127_done343
    pop $I19, rx127_bstack
    if_null rx127_cstack, rx127_cstack_done348
    unless rx127_cstack, rx127_cstack_done348
    dec $I19
    set $P11, rx127_cstack[$I19]
  rx127_cstack_done348:
    pop rx127_rep, rx127_bstack
    pop rx127_pos, rx127_bstack
    pop $I19, rx127_bstack
    lt rx127_pos, -1, rx127_done343
    lt rx127_pos, 0, rx127_fail345
    eq $I19, 0, rx127_fail345
    nqp_islist $I20, rx127_cstack
    unless $I20, rx127_jump346
    elements $I18, rx127_bstack
    le $I18, 0, rx127_cut347
    dec $I18
    set $I18, rx127_bstack[$I18]
  rx127_cut347:
    assign rx127_cstack, $I18
  rx127_jump346:
    jump $I19
  rx127_done343:
    rx127_cur."!cursor_fail"()
    .return (rx127_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx129_start
    .local string rx129_tgt
    .local int rx129_pos
    .local int rx129_off
    .local int rx129_eos
    .local int rx129_rep
    .local pmc rx129_cur
    .local pmc rx129_curclass
    .local pmc rx129_bstack
    .local pmc rx129_cstack
    rx129_start = self."!cursor_start_all"()
    set rx129_cur, rx129_start[0]
    set rx129_tgt, rx129_start[1]
    set rx129_pos, rx129_start[2]
    set rx129_curclass, rx129_start[3]
    set rx129_bstack, rx129_start[4]
    set $I19, rx129_start[5]
    store_lex unicode:"$\x{a2}", rx129_cur
    length rx129_eos, rx129_tgt
    eq $I19, 1, rx129_restart354
    gt rx129_pos, rx129_eos, rx129_fail355
    repr_get_attr_int $I11, self, rx129_curclass, "$!from"
    ne $I11, -1, rxscan130_done361
    goto rxscan130_scan360
  rxscan130_loop359:
    inc rx129_pos
    gt rx129_pos, rx129_eos, rx129_fail355
    repr_bind_attr_int rx129_cur, rx129_curclass, "$!from", rx129_pos
  rxscan130_scan360:
    nqp_rxmark rx129_bstack, rxscan130_loop359, rx129_pos, 0
  rxscan130_done361:
    add $I11, rx129_pos, 1
    gt $I11, rx129_eos, rx129_fail355
    substr $S10, rx129_tgt, rx129_pos, 1
    ne $S10, ucs4:"\\", rx129_fail355
    add rx129_pos, 1
    repr_bind_attr_int rx129_cur, rx129_curclass, "$!pos", rx129_pos
    $P11 = rx129_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx129_curclass, "$!pos"
    lt $I11, 0, rx129_fail355
    repr_bind_attr_int rx129_cur, rx129_curclass, "$!pos", rx129_pos
    $P11 = rx129_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx129_curclass, "$!pos"
    lt $I11, 0, rx129_fail355
    nqp_rxmark rx129_bstack, rxsubrule131_pass362, -1, 0
  rxsubrule131_pass362:
    rx129_cstack = rx129_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx129_pos, $P11, rx129_curclass, "$!pos"
    rx129_cur."!cursor_pass"(rx129_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx129_cur)
  rx129_restart354:
    repr_get_attr_obj rx129_cstack, rx129_cur, rx129_curclass, "$!cstack"
  rx129_fail355:
    unless rx129_bstack, rx129_done353
    pop $I19, rx129_bstack
    if_null rx129_cstack, rx129_cstack_done358
    unless rx129_cstack, rx129_cstack_done358
    dec $I19
    set $P11, rx129_cstack[$I19]
  rx129_cstack_done358:
    pop rx129_rep, rx129_bstack
    pop rx129_pos, rx129_bstack
    pop $I19, rx129_bstack
    lt rx129_pos, -1, rx129_done353
    lt rx129_pos, 0, rx129_fail355
    eq $I19, 0, rx129_fail355
    nqp_islist $I20, rx129_cstack
    unless $I20, rx129_jump356
    elements $I18, rx129_bstack
    le $I18, 0, rx129_cut357
    dec $I18
    set $I18, rx129_bstack[$I18]
  rx129_cut357:
    assign rx129_cstack, $I18
  rx129_jump356:
    jump $I19
  rx129_done353:
    rx129_cur."!cursor_fail"()
    .return (rx129_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_32_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
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
    eq $I19, 1, rx132_restart365
    gt rx132_pos, rx132_eos, rx132_fail366
    repr_get_attr_int $I11, self, rx132_curclass, "$!from"
    ne $I11, -1, rxscan133_done372
    goto rxscan133_scan371
  rxscan133_loop370:
    inc rx132_pos
    gt rx132_pos, rx132_eos, rx132_fail366
    repr_bind_attr_int rx132_cur, rx132_curclass, "$!from", rx132_pos
  rxscan133_scan371:
    nqp_rxmark rx132_bstack, rxscan133_loop370, rx132_pos, 0
  rxscan133_done372:
    add $I11, rx132_pos, 2
    gt $I11, rx132_eos, rx132_fail366
    substr $S10, rx132_tgt, rx132_pos, 2
    ne $S10, ucs4:"\\b", rx132_fail366
    add rx132_pos, 2
    repr_bind_attr_int rx132_cur, rx132_curclass, "$!pos", rx132_pos
    $P11 = rx132_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx132_curclass, "$!pos"
    lt $I11, 0, rx132_fail366
    rx132_cur."!cursor_pass"(rx132_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx132_cur)
  rx132_restart365:
    repr_get_attr_obj rx132_cstack, rx132_cur, rx132_curclass, "$!cstack"
  rx132_fail366:
    unless rx132_bstack, rx132_done364
    pop $I19, rx132_bstack
    if_null rx132_cstack, rx132_cstack_done369
    unless rx132_cstack, rx132_cstack_done369
    dec $I19
    set $P11, rx132_cstack[$I19]
  rx132_cstack_done369:
    pop rx132_rep, rx132_bstack
    pop rx132_pos, rx132_bstack
    pop $I19, rx132_bstack
    lt rx132_pos, -1, rx132_done364
    lt rx132_pos, 0, rx132_fail366
    eq $I19, 0, rx132_fail366
    nqp_islist $I20, rx132_cstack
    unless $I20, rx132_jump367
    elements $I18, rx132_bstack
    le $I18, 0, rx132_cut368
    dec $I18
    set $I18, rx132_bstack[$I18]
  rx132_cut368:
    assign rx132_cstack, $I18
  rx132_jump367:
    jump $I19
  rx132_done364:
    rx132_cur."!cursor_fail"()
    .return (rx132_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_33_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
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
    eq $I19, 1, rx134_restart375
    gt rx134_pos, rx134_eos, rx134_fail376
    repr_get_attr_int $I11, self, rx134_curclass, "$!from"
    ne $I11, -1, rxscan135_done382
    goto rxscan135_scan381
  rxscan135_loop380:
    inc rx134_pos
    gt rx134_pos, rx134_eos, rx134_fail376
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!from", rx134_pos
  rxscan135_scan381:
    nqp_rxmark rx134_bstack, rxscan135_loop380, rx134_pos, 0
  rxscan135_done382:
    add $I11, rx134_pos, 2
    gt $I11, rx134_eos, rx134_fail376
    substr $S10, rx134_tgt, rx134_pos, 2
    ne $S10, ucs4:"\\n", rx134_fail376
    add rx134_pos, 2
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail376
    rx134_cur."!cursor_pass"(rx134_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx134_cur)
  rx134_restart375:
    repr_get_attr_obj rx134_cstack, rx134_cur, rx134_curclass, "$!cstack"
  rx134_fail376:
    unless rx134_bstack, rx134_done374
    pop $I19, rx134_bstack
    if_null rx134_cstack, rx134_cstack_done379
    unless rx134_cstack, rx134_cstack_done379
    dec $I19
    set $P11, rx134_cstack[$I19]
  rx134_cstack_done379:
    pop rx134_rep, rx134_bstack
    pop rx134_pos, rx134_bstack
    pop $I19, rx134_bstack
    lt rx134_pos, -1, rx134_done374
    lt rx134_pos, 0, rx134_fail376
    eq $I19, 0, rx134_fail376
    nqp_islist $I20, rx134_cstack
    unless $I20, rx134_jump377
    elements $I18, rx134_bstack
    le $I18, 0, rx134_cut378
    dec $I18
    set $I18, rx134_bstack[$I18]
  rx134_cut378:
    assign rx134_cstack, $I18
  rx134_jump377:
    jump $I19
  rx134_done374:
    rx134_cur."!cursor_fail"()
    .return (rx134_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_34_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
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
    eq $I19, 1, rx136_restart385
    gt rx136_pos, rx136_eos, rx136_fail386
    repr_get_attr_int $I11, self, rx136_curclass, "$!from"
    ne $I11, -1, rxscan137_done392
    goto rxscan137_scan391
  rxscan137_loop390:
    inc rx136_pos
    gt rx136_pos, rx136_eos, rx136_fail386
    repr_bind_attr_int rx136_cur, rx136_curclass, "$!from", rx136_pos
  rxscan137_scan391:
    nqp_rxmark rx136_bstack, rxscan137_loop390, rx136_pos, 0
  rxscan137_done392:
    add $I11, rx136_pos, 2
    gt $I11, rx136_eos, rx136_fail386
    substr $S10, rx136_tgt, rx136_pos, 2
    ne $S10, ucs4:"\\r", rx136_fail386
    add rx136_pos, 2
    repr_bind_attr_int rx136_cur, rx136_curclass, "$!pos", rx136_pos
    $P11 = rx136_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx136_curclass, "$!pos"
    lt $I11, 0, rx136_fail386
    rx136_cur."!cursor_pass"(rx136_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
    .return (rx136_cur)
  rx136_restart385:
    repr_get_attr_obj rx136_cstack, rx136_cur, rx136_curclass, "$!cstack"
  rx136_fail386:
    unless rx136_bstack, rx136_done384
    pop $I19, rx136_bstack
    if_null rx136_cstack, rx136_cstack_done389
    unless rx136_cstack, rx136_cstack_done389
    dec $I19
    set $P11, rx136_cstack[$I19]
  rx136_cstack_done389:
    pop rx136_rep, rx136_bstack
    pop rx136_pos, rx136_bstack
    pop $I19, rx136_bstack
    lt rx136_pos, -1, rx136_done384
    lt rx136_pos, 0, rx136_fail386
    eq $I19, 0, rx136_fail386
    nqp_islist $I20, rx136_cstack
    unless $I20, rx136_jump387
    elements $I18, rx136_bstack
    le $I18, 0, rx136_cut388
    dec $I18
    set $I18, rx136_bstack[$I18]
  rx136_cut388:
    assign rx136_cstack, $I18
  rx136_jump387:
    jump $I19
  rx136_done384:
    rx136_cur."!cursor_fail"()
    .return (rx136_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_35_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 94
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
    eq $I19, 1, rx138_restart395
    gt rx138_pos, rx138_eos, rx138_fail396
    repr_get_attr_int $I11, self, rx138_curclass, "$!from"
    ne $I11, -1, rxscan139_done402
    goto rxscan139_scan401
  rxscan139_loop400:
    inc rx138_pos
    gt rx138_pos, rx138_eos, rx138_fail396
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!from", rx138_pos
  rxscan139_scan401:
    nqp_rxmark rx138_bstack, rxscan139_loop400, rx138_pos, 0
  rxscan139_done402:
    add $I11, rx138_pos, 2
    gt $I11, rx138_eos, rx138_fail396
    substr $S10, rx138_tgt, rx138_pos, 2
    ne $S10, ucs4:"\\t", rx138_fail396
    add rx138_pos, 2
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail396
    rx138_cur."!cursor_pass"(rx138_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
    .return (rx138_cur)
  rx138_restart395:
    repr_get_attr_obj rx138_cstack, rx138_cur, rx138_curclass, "$!cstack"
  rx138_fail396:
    unless rx138_bstack, rx138_done394
    pop $I19, rx138_bstack
    if_null rx138_cstack, rx138_cstack_done399
    unless rx138_cstack, rx138_cstack_done399
    dec $I19
    set $P11, rx138_cstack[$I19]
  rx138_cstack_done399:
    pop rx138_rep, rx138_bstack
    pop rx138_pos, rx138_bstack
    pop $I19, rx138_bstack
    lt rx138_pos, -1, rx138_done394
    lt rx138_pos, 0, rx138_fail396
    eq $I19, 0, rx138_fail396
    nqp_islist $I20, rx138_cstack
    unless $I20, rx138_jump397
    elements $I18, rx138_bstack
    le $I18, 0, rx138_cut398
    dec $I18
    set $I18, rx138_bstack[$I18]
  rx138_cut398:
    assign rx138_cstack, $I18
  rx138_jump397:
    jump $I19
  rx138_done394:
    rx138_cur."!cursor_fail"()
    .return (rx138_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_36_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 95
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
    eq $I19, 1, rx140_restart405
    gt rx140_pos, rx140_eos, rx140_fail406
    repr_get_attr_int $I11, self, rx140_curclass, "$!from"
    ne $I11, -1, rxscan141_done412
    goto rxscan141_scan411
  rxscan141_loop410:
    inc rx140_pos
    gt rx140_pos, rx140_eos, rx140_fail406
    repr_bind_attr_int rx140_cur, rx140_curclass, "$!from", rx140_pos
  rxscan141_scan411:
    nqp_rxmark rx140_bstack, rxscan141_loop410, rx140_pos, 0
  rxscan141_done412:
    add $I11, rx140_pos, 2
    gt $I11, rx140_eos, rx140_fail406
    substr $S10, rx140_tgt, rx140_pos, 2
    ne $S10, ucs4:"\\f", rx140_fail406
    add rx140_pos, 2
    repr_bind_attr_int rx140_cur, rx140_curclass, "$!pos", rx140_pos
    $P11 = rx140_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx140_curclass, "$!pos"
    lt $I11, 0, rx140_fail406
    rx140_cur."!cursor_pass"(rx140_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
    .return (rx140_cur)
  rx140_restart405:
    repr_get_attr_obj rx140_cstack, rx140_cur, rx140_curclass, "$!cstack"
  rx140_fail406:
    unless rx140_bstack, rx140_done404
    pop $I19, rx140_bstack
    if_null rx140_cstack, rx140_cstack_done409
    unless rx140_cstack, rx140_cstack_done409
    dec $I19
    set $P11, rx140_cstack[$I19]
  rx140_cstack_done409:
    pop rx140_rep, rx140_bstack
    pop rx140_pos, rx140_bstack
    pop $I19, rx140_bstack
    lt rx140_pos, -1, rx140_done404
    lt rx140_pos, 0, rx140_fail406
    eq $I19, 0, rx140_fail406
    nqp_islist $I20, rx140_cstack
    unless $I20, rx140_jump407
    elements $I18, rx140_bstack
    le $I18, 0, rx140_cut408
    dec $I18
    set $I18, rx140_bstack[$I18]
  rx140_cut408:
    assign rx140_cstack, $I18
  rx140_jump407:
    jump $I19
  rx140_done404:
    rx140_cur."!cursor_fail"()
    .return (rx140_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_37_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 96
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
    eq $I19, 1, rx142_restart415
    gt rx142_pos, rx142_eos, rx142_fail416
    repr_get_attr_int $I11, self, rx142_curclass, "$!from"
    ne $I11, -1, rxscan143_done422
    goto rxscan143_scan421
  rxscan143_loop420:
    inc rx142_pos
    gt rx142_pos, rx142_eos, rx142_fail416
    repr_bind_attr_int rx142_cur, rx142_curclass, "$!from", rx142_pos
  rxscan143_scan421:
    nqp_rxmark rx142_bstack, rxscan143_loop420, rx142_pos, 0
  rxscan143_done422:
    add $I11, rx142_pos, 2
    gt $I11, rx142_eos, rx142_fail416
    substr $S10, rx142_tgt, rx142_pos, 2
    ne $S10, ucs4:"\\e", rx142_fail416
    add rx142_pos, 2
    repr_bind_attr_int rx142_cur, rx142_curclass, "$!pos", rx142_pos
    $P11 = rx142_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx142_curclass, "$!pos"
    lt $I11, 0, rx142_fail416
    rx142_cur."!cursor_pass"(rx142_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
    .return (rx142_cur)
  rx142_restart415:
    repr_get_attr_obj rx142_cstack, rx142_cur, rx142_curclass, "$!cstack"
  rx142_fail416:
    unless rx142_bstack, rx142_done414
    pop $I19, rx142_bstack
    if_null rx142_cstack, rx142_cstack_done419
    unless rx142_cstack, rx142_cstack_done419
    dec $I19
    set $P11, rx142_cstack[$I19]
  rx142_cstack_done419:
    pop rx142_rep, rx142_bstack
    pop rx142_pos, rx142_bstack
    pop $I19, rx142_bstack
    lt rx142_pos, -1, rx142_done414
    lt rx142_pos, 0, rx142_fail416
    eq $I19, 0, rx142_fail416
    nqp_islist $I20, rx142_cstack
    unless $I20, rx142_jump417
    elements $I18, rx142_bstack
    le $I18, 0, rx142_cut418
    dec $I18
    set $I18, rx142_bstack[$I18]
  rx142_cut418:
    assign rx142_cstack, $I18
  rx142_jump417:
    jump $I19
  rx142_done414:
    rx142_cur."!cursor_fail"()
    .return (rx142_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_38_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 97
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx144_start
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    .local pmc rx144_curclass
    .local pmc rx144_bstack
    .local pmc rx144_cstack
    rx144_start = self."!cursor_start_all"()
    set rx144_cur, rx144_start[0]
    set rx144_tgt, rx144_start[1]
    set rx144_pos, rx144_start[2]
    set rx144_curclass, rx144_start[3]
    set rx144_bstack, rx144_start[4]
    set $I19, rx144_start[5]
    store_lex unicode:"$\x{a2}", rx144_cur
    length rx144_eos, rx144_tgt
    eq $I19, 1, rx144_restart425
    gt rx144_pos, rx144_eos, rx144_fail426
    repr_get_attr_int $I11, self, rx144_curclass, "$!from"
    ne $I11, -1, rxscan145_done432
    goto rxscan145_scan431
  rxscan145_loop430:
    inc rx144_pos
    gt rx144_pos, rx144_eos, rx144_fail426
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!from", rx144_pos
  rxscan145_scan431:
    nqp_rxmark rx144_bstack, rxscan145_loop430, rx144_pos, 0
  rxscan145_done432:
    add $I11, rx144_pos, 2
    gt $I11, rx144_eos, rx144_fail426
    substr $S10, rx144_tgt, rx144_pos, 2
    ne $S10, ucs4:"\\x", rx144_fail426
    add rx144_pos, 2
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!pos", rx144_pos
    $P11 = rx144_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx144_curclass, "$!pos"
    lt $I11, 0, rx144_fail426
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt146_0434
    nqp_push_label $P11, alt146_1436
    nqp_rxmark rx144_bstack, alt146_end433, -1, 0
    rx144_cur."!alt"(rx144_pos, "alt_nfa__6_1365879968.982", $P11)
    goto rx144_fail426
  alt146_0434:
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!pos", rx144_pos
    $P11 = rx144_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx144_curclass, "$!pos"
    lt $I11, 0, rx144_fail426
    nqp_rxmark rx144_bstack, rxsubrule147_pass435, -1, 0
  rxsubrule147_pass435:
    rx144_cstack = rx144_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx144_pos, $P11, rx144_curclass, "$!pos"
    goto alt146_end433
  alt146_1436:
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail426
    substr $S10, rx144_tgt, rx144_pos, 1
    ne $S10, ucs4:"[", rx144_fail426
    add rx144_pos, 1
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!pos", rx144_pos
    $P11 = rx144_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx144_curclass, "$!pos"
    lt $I11, 0, rx144_fail426
    nqp_rxmark rx144_bstack, rxsubrule148_pass437, -1, 0
  rxsubrule148_pass437:
    rx144_cstack = rx144_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx144_pos, $P11, rx144_curclass, "$!pos"
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail426
    substr $S10, rx144_tgt, rx144_pos, 1
    ne $S10, ucs4:"]", rx144_fail426
    add rx144_pos, 1
    goto alt146_end433
  alt146_end433:
    nqp_rxcommit rx144_bstack, alt146_end433
    rx144_cur."!cursor_pass"(rx144_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
    .return (rx144_cur)
  rx144_restart425:
    repr_get_attr_obj rx144_cstack, rx144_cur, rx144_curclass, "$!cstack"
  rx144_fail426:
    unless rx144_bstack, rx144_done424
    pop $I19, rx144_bstack
    if_null rx144_cstack, rx144_cstack_done429
    unless rx144_cstack, rx144_cstack_done429
    dec $I19
    set $P11, rx144_cstack[$I19]
  rx144_cstack_done429:
    pop rx144_rep, rx144_bstack
    pop rx144_pos, rx144_bstack
    pop $I19, rx144_bstack
    lt rx144_pos, -1, rx144_done424
    lt rx144_pos, 0, rx144_fail426
    eq $I19, 0, rx144_fail426
    nqp_islist $I20, rx144_cstack
    unless $I20, rx144_jump427
    elements $I18, rx144_bstack
    le $I18, 0, rx144_cut428
    dec $I18
    set $I18, rx144_bstack[$I18]
  rx144_cut428:
    assign rx144_cstack, $I18
  rx144_jump427:
    jump $I19
  rx144_done424:
    rx144_cur."!cursor_fail"()
    .return (rx144_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_39_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx149_start
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_curclass
    .local pmc rx149_bstack
    .local pmc rx149_cstack
    rx149_start = self."!cursor_start_all"()
    set rx149_cur, rx149_start[0]
    set rx149_tgt, rx149_start[1]
    set rx149_pos, rx149_start[2]
    set rx149_curclass, rx149_start[3]
    set rx149_bstack, rx149_start[4]
    set $I19, rx149_start[5]
    store_lex unicode:"$\x{a2}", rx149_cur
    length rx149_eos, rx149_tgt
    eq $I19, 1, rx149_restart440
    gt rx149_pos, rx149_eos, rx149_fail441
    repr_get_attr_int $I11, self, rx149_curclass, "$!from"
    ne $I11, -1, rxscan150_done447
    goto rxscan150_scan446
  rxscan150_loop445:
    inc rx149_pos
    gt rx149_pos, rx149_eos, rx149_fail441
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!from", rx149_pos
  rxscan150_scan446:
    nqp_rxmark rx149_bstack, rxscan150_loop445, rx149_pos, 0
  rxscan150_done447:
    add $I11, rx149_pos, 2
    gt $I11, rx149_eos, rx149_fail441
    substr $S10, rx149_tgt, rx149_pos, 2
    ne $S10, ucs4:"\\o", rx149_fail441
    add rx149_pos, 2
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail441
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt151_0449
    nqp_push_label $P11, alt151_1451
    nqp_rxmark rx149_bstack, alt151_end448, -1, 0
    rx149_cur."!alt"(rx149_pos, "alt_nfa__7_1365879968.997", $P11)
    goto rx149_fail441
  alt151_0449:
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."octint"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail441
    nqp_rxmark rx149_bstack, rxsubrule152_pass450, -1, 0
  rxsubrule152_pass450:
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx149_pos, $P11, rx149_curclass, "$!pos"
    goto alt151_end448
  alt151_1451:
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail441
    substr $S10, rx149_tgt, rx149_pos, 1
    ne $S10, ucs4:"[", rx149_fail441
    add rx149_pos, 1
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!pos", rx149_pos
    $P11 = rx149_cur."octints"()
    repr_get_attr_int $I11, $P11, rx149_curclass, "$!pos"
    lt $I11, 0, rx149_fail441
    nqp_rxmark rx149_bstack, rxsubrule153_pass452, -1, 0
  rxsubrule153_pass452:
    rx149_cstack = rx149_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx149_pos, $P11, rx149_curclass, "$!pos"
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail441
    substr $S10, rx149_tgt, rx149_pos, 1
    ne $S10, ucs4:"]", rx149_fail441
    add rx149_pos, 1
    goto alt151_end448
  alt151_end448:
    nqp_rxcommit rx149_bstack, alt151_end448
    rx149_cur."!cursor_pass"(rx149_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx149_cur)
  rx149_restart440:
    repr_get_attr_obj rx149_cstack, rx149_cur, rx149_curclass, "$!cstack"
  rx149_fail441:
    unless rx149_bstack, rx149_done439
    pop $I19, rx149_bstack
    if_null rx149_cstack, rx149_cstack_done444
    unless rx149_cstack, rx149_cstack_done444
    dec $I19
    set $P11, rx149_cstack[$I19]
  rx149_cstack_done444:
    pop rx149_rep, rx149_bstack
    pop rx149_pos, rx149_bstack
    pop $I19, rx149_bstack
    lt rx149_pos, -1, rx149_done439
    lt rx149_pos, 0, rx149_fail441
    eq $I19, 0, rx149_fail441
    nqp_islist $I20, rx149_cstack
    unless $I20, rx149_jump442
    elements $I18, rx149_bstack
    le $I18, 0, rx149_cut443
    dec $I18
    set $I18, rx149_bstack[$I18]
  rx149_cut443:
    assign rx149_cstack, $I18
  rx149_jump442:
    jump $I19
  rx149_done439:
    rx149_cur."!cursor_fail"()
    .return (rx149_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_40_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx154_start
    .local string rx154_tgt
    .local int rx154_pos
    .local int rx154_off
    .local int rx154_eos
    .local int rx154_rep
    .local pmc rx154_cur
    .local pmc rx154_curclass
    .local pmc rx154_bstack
    .local pmc rx154_cstack
    rx154_start = self."!cursor_start_all"()
    set rx154_cur, rx154_start[0]
    set rx154_tgt, rx154_start[1]
    set rx154_pos, rx154_start[2]
    set rx154_curclass, rx154_start[3]
    set rx154_bstack, rx154_start[4]
    set $I19, rx154_start[5]
    store_lex unicode:"$\x{a2}", rx154_cur
    length rx154_eos, rx154_tgt
    eq $I19, 1, rx154_restart455
    gt rx154_pos, rx154_eos, rx154_fail456
    repr_get_attr_int $I11, self, rx154_curclass, "$!from"
    ne $I11, -1, rxscan155_done462
    goto rxscan155_scan461
  rxscan155_loop460:
    inc rx154_pos
    gt rx154_pos, rx154_eos, rx154_fail456
    repr_bind_attr_int rx154_cur, rx154_curclass, "$!from", rx154_pos
  rxscan155_scan461:
    nqp_rxmark rx154_bstack, rxscan155_loop460, rx154_pos, 0
  rxscan155_done462:
    add $I11, rx154_pos, 2
    gt $I11, rx154_eos, rx154_fail456
    substr $S10, rx154_tgt, rx154_pos, 2
    ne $S10, ucs4:"\\c", rx154_fail456
    add rx154_pos, 2
    repr_bind_attr_int rx154_cur, rx154_curclass, "$!pos", rx154_pos
    $P11 = rx154_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx154_curclass, "$!pos"
    lt $I11, 0, rx154_fail456
    repr_bind_attr_int rx154_cur, rx154_curclass, "$!pos", rx154_pos
    $P11 = rx154_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx154_curclass, "$!pos"
    lt $I11, 0, rx154_fail456
    nqp_rxmark rx154_bstack, rxsubrule156_pass463, -1, 0
  rxsubrule156_pass463:
    rx154_cstack = rx154_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx154_pos, $P11, rx154_curclass, "$!pos"
    rx154_cur."!cursor_pass"(rx154_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx154_cur)
  rx154_restart455:
    repr_get_attr_obj rx154_cstack, rx154_cur, rx154_curclass, "$!cstack"
  rx154_fail456:
    unless rx154_bstack, rx154_done454
    pop $I19, rx154_bstack
    if_null rx154_cstack, rx154_cstack_done459
    unless rx154_cstack, rx154_cstack_done459
    dec $I19
    set $P11, rx154_cstack[$I19]
  rx154_cstack_done459:
    pop rx154_rep, rx154_bstack
    pop rx154_pos, rx154_bstack
    pop $I19, rx154_bstack
    lt rx154_pos, -1, rx154_done454
    lt rx154_pos, 0, rx154_fail456
    eq $I19, 0, rx154_fail456
    nqp_islist $I20, rx154_cstack
    unless $I20, rx154_jump457
    elements $I18, rx154_bstack
    le $I18, 0, rx154_cut458
    dec $I18
    set $I18, rx154_bstack[$I18]
  rx154_cut458:
    assign rx154_cstack, $I18
  rx154_jump457:
    jump $I19
  rx154_done454:
    rx154_cur."!cursor_fail"()
    .return (rx154_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_41_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 106
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx157_start
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    .local pmc rx157_curclass
    .local pmc rx157_bstack
    .local pmc rx157_cstack
    rx157_start = self."!cursor_start_all"()
    set rx157_cur, rx157_start[0]
    set rx157_tgt, rx157_start[1]
    set rx157_pos, rx157_start[2]
    set rx157_curclass, rx157_start[3]
    set rx157_bstack, rx157_start[4]
    set $I19, rx157_start[5]
    store_lex unicode:"$\x{a2}", rx157_cur
    length rx157_eos, rx157_tgt
    eq $I19, 1, rx157_restart466
    gt rx157_pos, rx157_eos, rx157_fail467
    repr_get_attr_int $I11, self, rx157_curclass, "$!from"
    ne $I11, -1, rxscan158_done473
    goto rxscan158_scan472
  rxscan158_loop471:
    inc rx157_pos
    gt rx157_pos, rx157_eos, rx157_fail467
    repr_bind_attr_int rx157_cur, rx157_curclass, "$!from", rx157_pos
  rxscan158_scan472:
    nqp_rxmark rx157_bstack, rxscan158_loop471, rx157_pos, 0
  rxscan158_done473:
    add $I11, rx157_pos, 1
    gt $I11, rx157_eos, rx157_fail467
    substr $S10, rx157_tgt, rx157_pos, 1
    ne $S10, ucs4:"\\", rx157_fail467
    add rx157_pos, 1
    nqp_rxmark rx157_bstack, rxcap159_fail475, rx157_pos, 0
    add $I11, rx157_pos, 1
    gt $I11, rx157_eos, rx157_fail467
    substr $S10, rx157_tgt, rx157_pos, 1
    ne $S10, ucs4:"0", rx157_fail467
    add rx157_pos, 1
    nqp_rxpeek $I19, rx157_bstack, rxcap159_fail475
    inc $I19
    set $I11, rx157_bstack[$I19]
    repr_bind_attr_int rx157_cur, rx157_curclass, "$!pos", rx157_pos
    $P11 = rx157_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx157_pos)
    rx157_cstack = rx157_cur."!cursor_capture"($P11, "sym")
    goto rxcap159_done474
  rxcap159_fail475:
    goto rx157_fail467
  rxcap159_done474:
    repr_bind_attr_int rx157_cur, rx157_curclass, "$!pos", rx157_pos
    $P11 = rx157_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx157_curclass, "$!pos"
    lt $I11, 0, rx157_fail467
    rx157_cur."!cursor_pass"(rx157_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx157_cur)
  rx157_restart466:
    repr_get_attr_obj rx157_cstack, rx157_cur, rx157_curclass, "$!cstack"
  rx157_fail467:
    unless rx157_bstack, rx157_done465
    pop $I19, rx157_bstack
    if_null rx157_cstack, rx157_cstack_done470
    unless rx157_cstack, rx157_cstack_done470
    dec $I19
    set $P11, rx157_cstack[$I19]
  rx157_cstack_done470:
    pop rx157_rep, rx157_bstack
    pop rx157_pos, rx157_bstack
    pop $I19, rx157_bstack
    lt rx157_pos, -1, rx157_done465
    lt rx157_pos, 0, rx157_fail467
    eq $I19, 0, rx157_fail467
    nqp_islist $I20, rx157_cstack
    unless $I20, rx157_jump468
    elements $I18, rx157_bstack
    le $I18, 0, rx157_cut469
    dec $I18
    set $I18, rx157_bstack[$I18]
  rx157_cut469:
    assign rx157_cstack, $I18
  rx157_jump468:
    jump $I19
  rx157_done465:
    rx157_cur."!cursor_fail"()
    .return (rx157_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_42_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_189_1365879968.631' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_43_1365879968.631' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1365879968.631' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_190_1365879968.631' 
    capture_lex $P5009 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx160_start
    .local string rx160_tgt
    .local int rx160_pos
    .local int rx160_off
    .local int rx160_eos
    .local int rx160_rep
    .local pmc rx160_cur
    .local pmc rx160_curclass
    .local pmc rx160_bstack
    .local pmc rx160_cstack
    rx160_start = self."!cursor_start_all"()
    set rx160_cur, rx160_start[0]
    set rx160_tgt, rx160_start[1]
    set rx160_pos, rx160_start[2]
    set rx160_curclass, rx160_start[3]
    set rx160_bstack, rx160_start[4]
    set $I19, rx160_start[5]
    store_lex unicode:"$\x{a2}", rx160_cur
    length rx160_eos, rx160_tgt
    eq $I19, 1, rx160_restart478
    gt rx160_pos, rx160_eos, rx160_fail479
    repr_get_attr_int $I11, self, rx160_curclass, "$!from"
    ne $I11, -1, rxscan161_done485
    goto rxscan161_scan484
  rxscan161_loop483:
    inc rx160_pos
    gt rx160_pos, rx160_eos, rx160_fail479
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!from", rx160_pos
  rxscan161_scan484:
    nqp_rxmark rx160_bstack, rxscan161_loop483, rx160_pos, 0
  rxscan161_done485:
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    store_lex unicode:"$\x{a2}", rx160_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_189_1365879968.631' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx160_pos, 1
    gt $I11, rx160_eos, rx160_fail479
    substr $S10, rx160_tgt, rx160_pos, 1
    ne $S10, ucs4:"\\", rx160_fail479
    add rx160_pos, 1
  alt162_0487:
    nqp_rxmark rx160_bstack, alt162_1516, rx160_pos, 0
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    $P11 = rx160_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx160_curclass, "$!pos"
    lt $I11, 0, rx160_fail479
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt163_0489
    nqp_push_label $P11, alt163_1501
    nqp_rxmark rx160_bstack, alt163_end488, -1, 0
    rx160_cur."!alt"(rx160_pos, "alt_nfa__8_1365879969.039", $P11)
    goto rx160_fail479
  alt163_0489:
    .const 'Sub' $P5004 = 'cuid_43_1365879968.631' 
    capture_lex $P5004
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    $P11 = rx160_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx160_curclass, "$!pos"
    lt $I11, 0, rx160_fail479
    nqp_rxmark rx160_bstack, rxsubrule166_pass500, -1, 0
  rxsubrule166_pass500:
    rx160_cstack = rx160_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx160_pos, $P11, rx160_curclass, "$!pos"
    goto alt163_end488
  alt163_1501:
    .const 'Sub' $P5005 = 'cuid_44_1365879968.631' 
    capture_lex $P5005
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    $P11 = rx160_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx160_curclass, "$!pos"
    lt $I11, 0, rx160_fail479
    nqp_rxmark rx160_bstack, rxsubrule169_pass512, -1, 0
  rxsubrule169_pass512:
    rx160_cstack = rx160_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx160_pos, $P11, rx160_curclass, "$!pos"
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    store_lex unicode:"$\x{a2}", rx160_cur
    $P5006 = $P101."MATCH"()
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_190_1365879968.631' 
    capture_lex $P5007
    $P5008 = $P5007()
    goto alt163_end488
  alt163_end488:
    nqp_rxcommit rx160_bstack, alt163_end488
    goto alt162_end486
  alt162_1516:
    nqp_rxmark rx160_bstack, rxcap172_fail518, rx160_pos, 0
    ge rx160_pos, rx160_eos, rx160_fail479
    add rx160_pos, 1
    nqp_rxpeek $I19, rx160_bstack, rxcap172_fail518
    inc $I19
    set $I11, rx160_bstack[$I19]
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    $P11 = rx160_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx160_pos)
    rx160_cstack = rx160_cur."!cursor_capture"($P11, "textq")
    goto rxcap172_done517
  rxcap172_fail518:
    goto rx160_fail479
  rxcap172_done517:
  alt162_end486:
    rx160_cur."!cursor_pass"(rx160_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx160_cur)
  rx160_restart478:
    repr_get_attr_obj rx160_cstack, rx160_cur, rx160_curclass, "$!cstack"
  rx160_fail479:
    unless rx160_bstack, rx160_done477
    pop $I19, rx160_bstack
    if_null rx160_cstack, rx160_cstack_done482
    unless rx160_cstack, rx160_cstack_done482
    dec $I19
    set $P11, rx160_cstack[$I19]
  rx160_cstack_done482:
    pop rx160_rep, rx160_bstack
    pop rx160_pos, rx160_bstack
    pop $I19, rx160_bstack
    lt rx160_pos, -1, rx160_done477
    lt rx160_pos, 0, rx160_fail479
    eq $I19, 0, rx160_fail479
    nqp_islist $I20, rx160_cstack
    unless $I20, rx160_jump480
    elements $I18, rx160_bstack
    le $I18, 0, rx160_cut481
    dec $I18
    set $I18, rx160_bstack[$I18]
  rx160_cut481:
    assign rx160_cstack, $I18
  rx160_jump480:
    jump $I19
  rx160_done477:
    rx160_cur."!cursor_fail"()
    .return (rx160_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1365879968.631") :anon :lex :outer("cuid_42_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1365879968.631") :anon :lex :outer("cuid_42_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx164_start
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_curclass
    .local pmc rx164_bstack
    .local pmc rx164_cstack
    rx164_start = self."!cursor_start_all"()
    set rx164_cur, rx164_start[0]
    set rx164_tgt, rx164_start[1]
    set rx164_pos, rx164_start[2]
    set rx164_curclass, rx164_start[3]
    set rx164_bstack, rx164_start[4]
    set $I19, rx164_start[5]
    store_lex unicode:"$\x{a2}", rx164_cur
    length rx164_eos, rx164_tgt
    eq $I19, 1, rx164_restart492
    gt rx164_pos, rx164_eos, rx164_fail493
    repr_get_attr_int $I11, self, rx164_curclass, "$!from"
    ne $I11, -1, rxscan165_done499
    goto rxscan165_scan498
  rxscan165_loop497:
    inc rx164_pos
    gt rx164_pos, rx164_eos, rx164_fail493
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!from", rx164_pos
  rxscan165_scan498:
    nqp_rxmark rx164_bstack, rxscan165_loop497, rx164_pos, 0
  rxscan165_done499:
    ge rx164_pos, rx164_eos, rx164_fail493
    is_cclass $I11, .CCLASS_WORD, rx164_tgt, rx164_pos
    if $I11, rx164_fail493
    add rx164_pos, 1
    rx164_cur."!cursor_pass"(rx164_pos, 'backtrack'=>1)
    .return (rx164_cur)
  rx164_restart492:
    repr_get_attr_obj rx164_cstack, rx164_cur, rx164_curclass, "$!cstack"
  rx164_fail493:
    unless rx164_bstack, rx164_done491
    pop $I19, rx164_bstack
    if_null rx164_cstack, rx164_cstack_done496
    unless rx164_cstack, rx164_cstack_done496
    dec $I19
    set $P11, rx164_cstack[$I19]
  rx164_cstack_done496:
    pop rx164_rep, rx164_bstack
    pop rx164_pos, rx164_bstack
    pop $I19, rx164_bstack
    lt rx164_pos, -1, rx164_done491
    lt rx164_pos, 0, rx164_fail493
    eq $I19, 0, rx164_fail493
    nqp_islist $I20, rx164_cstack
    unless $I20, rx164_jump494
    elements $I18, rx164_bstack
    le $I18, 0, rx164_cut495
    dec $I18
    set $I18, rx164_bstack[$I18]
  rx164_cut495:
    assign rx164_cstack, $I18
  rx164_jump494:
    jump $I19
  rx164_done491:
    rx164_cur."!cursor_fail"()
    .return (rx164_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_44_1365879968.631") :anon :lex :outer("cuid_42_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx167_start
    .local string rx167_tgt
    .local int rx167_pos
    .local int rx167_off
    .local int rx167_eos
    .local int rx167_rep
    .local pmc rx167_cur
    .local pmc rx167_curclass
    .local pmc rx167_bstack
    .local pmc rx167_cstack
    rx167_start = self."!cursor_start_all"()
    set rx167_cur, rx167_start[0]
    set rx167_tgt, rx167_start[1]
    set rx167_pos, rx167_start[2]
    set rx167_curclass, rx167_start[3]
    set rx167_bstack, rx167_start[4]
    set $I19, rx167_start[5]
    store_lex unicode:"$\x{a2}", rx167_cur
    length rx167_eos, rx167_tgt
    eq $I19, 1, rx167_restart504
    gt rx167_pos, rx167_eos, rx167_fail505
    repr_get_attr_int $I11, self, rx167_curclass, "$!from"
    ne $I11, -1, rxscan168_done511
    goto rxscan168_scan510
  rxscan168_loop509:
    inc rx167_pos
    gt rx167_pos, rx167_eos, rx167_fail505
    repr_bind_attr_int rx167_cur, rx167_curclass, "$!from", rx167_pos
  rxscan168_scan510:
    nqp_rxmark rx167_bstack, rxscan168_loop509, rx167_pos, 0
  rxscan168_done511:
    ge rx167_pos, rx167_eos, rx167_fail505
    is_cclass $I11, .CCLASS_WORD, rx167_tgt, rx167_pos
    unless $I11, rx167_fail505
    add rx167_pos, 1
    rx167_cur."!cursor_pass"(rx167_pos, 'backtrack'=>1)
    .return (rx167_cur)
  rx167_restart504:
    repr_get_attr_obj rx167_cstack, rx167_cur, rx167_curclass, "$!cstack"
  rx167_fail505:
    unless rx167_bstack, rx167_done503
    pop $I19, rx167_bstack
    if_null rx167_cstack, rx167_cstack_done508
    unless rx167_cstack, rx167_cstack_done508
    dec $I19
    set $P11, rx167_cstack[$I19]
  rx167_cstack_done508:
    pop rx167_rep, rx167_bstack
    pop rx167_pos, rx167_bstack
    pop $I19, rx167_bstack
    lt rx167_pos, -1, rx167_done503
    lt rx167_pos, 0, rx167_fail505
    eq $I19, 0, rx167_fail505
    nqp_islist $I20, rx167_cstack
    unless $I20, rx167_jump506
    elements $I18, rx167_bstack
    le $I18, 0, rx167_cut507
    dec $I18
    set $I18, rx167_bstack[$I18]
  rx167_cut507:
    assign rx167_cstack, $I18
  rx167_jump506:
    jump $I19
  rx167_done503:
    rx167_cur."!cursor_fail"()
    .return (rx167_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1365879968.631") :anon :lex :outer("cuid_42_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 113
    .local pmc fb_tmp_1 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$/"
    set fb_tmp_1, $P5003
    repr_defined $I5001, fb_tmp_1
    unless $I5001 goto if170_else513 
    set $P5004, fb_tmp_1[0]
    set $P5006, $P5004
    goto if170_end514
  if170_else513:
    null $P5005
    set $P5006, $P5005
  if170_end514:
    unless_null $P5006, vivi_171515
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5006, $P5007
  vivi_171515:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_46_1365879968.631' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx173_start
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    .local pmc rx173_curclass
    .local pmc rx173_bstack
    .local pmc rx173_cstack
    rx173_start = self."!cursor_start_all"()
    set rx173_cur, rx173_start[0]
    set rx173_tgt, rx173_start[1]
    set rx173_pos, rx173_start[2]
    set rx173_curclass, rx173_start[3]
    set rx173_bstack, rx173_start[4]
    set $I19, rx173_start[5]
    store_lex unicode:"$\x{a2}", rx173_cur
    length rx173_eos, rx173_tgt
    eq $I19, 1, rx173_restart521
    gt rx173_pos, rx173_eos, rx173_fail522
    repr_get_attr_int $I11, self, rx173_curclass, "$!from"
    ne $I11, -1, rxscan174_done528
    goto rxscan174_scan527
  rxscan174_loop526:
    inc rx173_pos
    gt rx173_pos, rx173_eos, rx173_fail522
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!from", rx173_pos
  rxscan174_scan527:
    nqp_rxmark rx173_bstack, rxscan174_loop526, rx173_pos, 0
  rxscan174_done528:
  alt175_0530:
    nqp_rxmark rx173_bstack, alt175_1532, rx173_pos, 0
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!pos", rx173_pos
    $P11 = rx173_cur."integer"()
    repr_get_attr_int $I11, $P11, rx173_curclass, "$!pos"
    lt $I11, 0, rx173_fail522
    nqp_rxmark rx173_bstack, rxsubrule176_pass531, -1, 0
  rxsubrule176_pass531:
    rx173_cstack = rx173_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx173_pos, $P11, rx173_curclass, "$!pos"
    goto alt175_end529
  alt175_1532:
    ge rx173_pos, rx173_eos, rx173_fail522
    substr $S11, rx173_tgt, rx173_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx173_fail522
    inc rx173_pos
    set rx173_rep, 0
    nqp_rxmark rx173_bstack, rxquantf177_loop533, rx173_pos, rx173_rep
    goto rxquantf177_done534
  rxquantf177_loop533:
    set $I12, rx173_rep
    nqp_rxmark rx173_bstack, rxconj178_fail536, rx173_pos, 0
    goto rxconj178_first537
  rxconj178_fail536:
    goto rx173_fail522
  rxconj178_first537:
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail522
    substr $S10, rx173_tgt, rx173_pos, 1
    eq $S10, ucs4:"]", rx173_fail522
    add rx173_pos, 1
    nqp_rxpeek $I19, rx173_bstack, rxconj178_fail536
    inc $I19
    set $I11, rx173_bstack[$I19]
    nqp_rxmark rx173_bstack, rxconj178_fail536, $I11, rx173_pos
    set rx173_pos, $I11
    ge rx173_pos, rx173_eos, rx173_fail522
    substr $S11, rx173_tgt, rx173_pos, 1
    index $I11, ucs4:",#", $S11
    ge $I11, 0, rx173_fail522
    inc rx173_pos
    nqp_rxpeek $I19, rx173_bstack, rxconj178_fail536
    inc $I19
    set $I11, rx173_bstack[$I19]
    inc $I19
    set $I12, rx173_bstack[$I19]
    ne rx173_pos, $I12, rx173_fail522
    set rx173_pos, $I11
    ge rx173_pos, rx173_eos, rx173_fail522
    add rx173_pos, 1
    set rx173_rep, $I12
    inc rx173_rep
    nqp_rxmark rx173_bstack, rxquantf177_loop533, rx173_pos, rx173_rep
  rxquantf177_done534:
    ge rx173_pos, rx173_eos, rx173_fail522
    substr $S11, rx173_tgt, rx173_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx173_fail522
    inc rx173_pos
    .const 'Sub' $P5001 = 'cuid_46_1365879968.631' 
    capture_lex $P5001
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!pos", rx173_pos
    $P11 = rx173_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx173_curclass, "$!pos"
    lt $I11, 0, rx173_fail522
  alt175_end529:
    rx173_cur."!cursor_pass"(rx173_pos, "charname", 'backtrack'=>1)
    .return (rx173_cur)
  rx173_restart521:
    repr_get_attr_obj rx173_cstack, rx173_cur, rx173_curclass, "$!cstack"
  rx173_fail522:
    unless rx173_bstack, rx173_done520
    pop $I19, rx173_bstack
    if_null rx173_cstack, rx173_cstack_done525
    unless rx173_cstack, rx173_cstack_done525
    dec $I19
    set $P11, rx173_cstack[$I19]
  rx173_cstack_done525:
    pop rx173_rep, rx173_bstack
    pop rx173_pos, rx173_bstack
    pop $I19, rx173_bstack
    lt rx173_pos, -1, rx173_done520
    lt rx173_pos, 0, rx173_fail522
    eq $I19, 0, rx173_fail522
    nqp_islist $I20, rx173_cstack
    unless $I20, rx173_jump523
    elements $I18, rx173_bstack
    le $I18, 0, rx173_cut524
    dec $I18
    set $I18, rx173_bstack[$I18]
  rx173_cut524:
    assign rx173_cstack, $I18
  rx173_jump523:
    jump $I19
  rx173_done520:
    rx173_cur."!cursor_fail"()
    .return (rx173_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_46_1365879968.631") :anon :lex :outer("cuid_45_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx179_start
    .local string rx179_tgt
    .local int rx179_pos
    .local int rx179_off
    .local int rx179_eos
    .local int rx179_rep
    .local pmc rx179_cur
    .local pmc rx179_curclass
    .local pmc rx179_bstack
    .local pmc rx179_cstack
    rx179_start = self."!cursor_start_all"()
    set rx179_cur, rx179_start[0]
    set rx179_tgt, rx179_start[1]
    set rx179_pos, rx179_start[2]
    set rx179_curclass, rx179_start[3]
    set rx179_bstack, rx179_start[4]
    set $I19, rx179_start[5]
    store_lex unicode:"$\x{a2}", rx179_cur
    length rx179_eos, rx179_tgt
    eq $I19, 1, rx179_restart540
    gt rx179_pos, rx179_eos, rx179_fail541
    repr_get_attr_int $I11, self, rx179_curclass, "$!from"
    ne $I11, -1, rxscan180_done547
    goto rxscan180_scan546
  rxscan180_loop545:
    inc rx179_pos
    gt rx179_pos, rx179_eos, rx179_fail541
    repr_bind_attr_int rx179_cur, rx179_curclass, "$!from", rx179_pos
  rxscan180_scan546:
    nqp_rxmark rx179_bstack, rxscan180_loop545, rx179_pos, 0
  rxscan180_done547:
    nqp_rxmark rx179_bstack, rxquantr181_done549, rx179_pos, 0
  rxquantr181_loop548:
    ge rx179_pos, rx179_eos, rx179_fail541
    is_cclass $I11, .CCLASS_WHITESPACE, rx179_tgt, rx179_pos
    unless $I11, rx179_fail541
    add rx179_pos, 1
    nqp_rxpeek $I19, rx179_bstack, rxquantr181_done549
    inc $I19
    inc $I19
    set rx179_rep, rx179_bstack[$I19]
    nqp_rxcommit rx179_bstack, rxquantr181_done549
    inc rx179_rep
    nqp_rxmark rx179_bstack, rxquantr181_done549, rx179_pos, rx179_rep
    goto rxquantr181_loop548
  rxquantr181_done549:
  alt182_0551:
    nqp_rxmark rx179_bstack, alt182_1552, rx179_pos, 0
    add $I11, rx179_pos, 1
    gt $I11, rx179_eos, rx179_fail541
    substr $S10, rx179_tgt, rx179_pos, 1
    ne $S10, ucs4:"]", rx179_fail541
    add rx179_pos, 1
    goto alt182_end550
  alt182_1552:
    ge rx179_pos, rx179_eos, rx179_fail541
    substr $S11, rx179_tgt, rx179_pos, 1
    index $I11, ucs4:",#", $S11
    lt $I11, 0, rx179_fail541
    inc rx179_pos
  alt182_end550:
    rx179_cur."!cursor_pass"(rx179_pos, 'backtrack'=>1)
    .return (rx179_cur)
  rx179_restart540:
    repr_get_attr_obj rx179_cstack, rx179_cur, rx179_curclass, "$!cstack"
  rx179_fail541:
    unless rx179_bstack, rx179_done539
    pop $I19, rx179_bstack
    if_null rx179_cstack, rx179_cstack_done544
    unless rx179_cstack, rx179_cstack_done544
    dec $I19
    set $P11, rx179_cstack[$I19]
  rx179_cstack_done544:
    pop rx179_rep, rx179_bstack
    pop rx179_pos, rx179_bstack
    pop $I19, rx179_bstack
    lt rx179_pos, -1, rx179_done539
    lt rx179_pos, 0, rx179_fail541
    eq $I19, 0, rx179_fail541
    nqp_islist $I20, rx179_cstack
    unless $I20, rx179_jump542
    elements $I18, rx179_bstack
    le $I18, 0, rx179_cut543
    dec $I18
    set $I18, rx179_bstack[$I18]
  rx179_cut543:
    assign rx179_cstack, $I18
  rx179_jump542:
    jump $I19
  rx179_done539:
    rx179_cur."!cursor_fail"()
    .return (rx179_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_47_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 124
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx183_start
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    .local pmc rx183_curclass
    .local pmc rx183_bstack
    .local pmc rx183_cstack
    rx183_start = self."!cursor_start_all"()
    set rx183_cur, rx183_start[0]
    set rx183_tgt, rx183_start[1]
    set rx183_pos, rx183_start[2]
    set rx183_curclass, rx183_start[3]
    set rx183_bstack, rx183_start[4]
    set $I19, rx183_start[5]
    store_lex unicode:"$\x{a2}", rx183_cur
    length rx183_eos, rx183_tgt
    eq $I19, 1, rx183_restart555
    gt rx183_pos, rx183_eos, rx183_fail556
    repr_get_attr_int $I11, self, rx183_curclass, "$!from"
    ne $I11, -1, rxscan184_done562
    goto rxscan184_scan561
  rxscan184_loop560:
    inc rx183_pos
    gt rx183_pos, rx183_eos, rx183_fail556
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!from", rx183_pos
  rxscan184_scan561:
    nqp_rxmark rx183_bstack, rxscan184_loop560, rx183_pos, 0
  rxscan184_done562:
    nqp_rxmark rx183_bstack, rxquantr185_done564, -1, 0
  rxquantr185_loop563:
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."ws"()
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail556
    repr_get_attr_int rx183_pos, $P11, rx183_curclass, "$!pos"
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."charname"()
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail556
    nqp_rxmark rx183_bstack, rxsubrule187_pass566, -1, 0
  rxsubrule187_pass566:
    rx183_cstack = rx183_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx183_pos, $P11, rx183_curclass, "$!pos"
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."ws"()
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail556
    repr_get_attr_int rx183_pos, $P11, rx183_curclass, "$!pos"
    nqp_rxpeek $I19, rx183_bstack, rxquantr185_done564
    inc $I19
    inc $I19
    set rx183_rep, rx183_bstack[$I19]
    nqp_rxcommit rx183_bstack, rxquantr185_done564
    inc rx183_rep
    nqp_rxmark rx183_bstack, rxquantr185_done564, rx183_pos, rx183_rep
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail556
    substr $S10, rx183_tgt, rx183_pos, 1
    ne $S10, ucs4:",", rx183_fail556
    add rx183_pos, 1
    goto rxquantr185_loop563
  rxquantr185_done564:
    rx183_cur."!cursor_pass"(rx183_pos, "charnames", 'backtrack'=>1)
    .return (rx183_cur)
  rx183_restart555:
    repr_get_attr_obj rx183_cstack, rx183_cur, rx183_curclass, "$!cstack"
  rx183_fail556:
    unless rx183_bstack, rx183_done554
    pop $I19, rx183_bstack
    if_null rx183_cstack, rx183_cstack_done559
    unless rx183_cstack, rx183_cstack_done559
    dec $I19
    set $P11, rx183_cstack[$I19]
  rx183_cstack_done559:
    pop rx183_rep, rx183_bstack
    pop rx183_pos, rx183_bstack
    pop $I19, rx183_bstack
    lt rx183_pos, -1, rx183_done554
    lt rx183_pos, 0, rx183_fail556
    eq $I19, 0, rx183_fail556
    nqp_islist $I20, rx183_cstack
    unless $I20, rx183_jump557
    elements $I18, rx183_bstack
    le $I18, 0, rx183_cut558
    dec $I18
    set $I18, rx183_bstack[$I18]
  rx183_cut558:
    assign rx183_cstack, $I18
  rx183_jump557:
    jump $I19
  rx183_done554:
    rx183_cur."!cursor_fail"()
    .return (rx183_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_48_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 125
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx189_start
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    .local pmc rx189_curclass
    .local pmc rx189_bstack
    .local pmc rx189_cstack
    rx189_start = self."!cursor_start_all"()
    set rx189_cur, rx189_start[0]
    set rx189_tgt, rx189_start[1]
    set rx189_pos, rx189_start[2]
    set rx189_curclass, rx189_start[3]
    set rx189_bstack, rx189_start[4]
    set $I19, rx189_start[5]
    store_lex unicode:"$\x{a2}", rx189_cur
    length rx189_eos, rx189_tgt
    eq $I19, 1, rx189_restart570
    gt rx189_pos, rx189_eos, rx189_fail571
    repr_get_attr_int $I11, self, rx189_curclass, "$!from"
    ne $I11, -1, rxscan190_done577
    goto rxscan190_scan576
  rxscan190_loop575:
    inc rx189_pos
    gt rx189_pos, rx189_eos, rx189_fail571
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!from", rx189_pos
  rxscan190_scan576:
    nqp_rxmark rx189_bstack, rxscan190_loop575, rx189_pos, 0
  rxscan190_done577:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt191_0579
    nqp_push_label $P11, alt191_1581
    nqp_push_label $P11, alt191_2588
    nqp_push_label $P11, alt191_3589
    nqp_rxmark rx189_bstack, alt191_end578, -1, 0
    rx189_cur."!alt"(rx189_pos, "alt_nfa__9_1365879969.082", $P11)
    goto rx189_fail571
  alt191_0579:
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail571
    substr $S10, rx189_tgt, rx189_pos, 1
    ne $S10, ucs4:"[", rx189_fail571
    add rx189_pos, 1
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx189_curclass, "$!pos"
    lt $I11, 0, rx189_fail571
    nqp_rxmark rx189_bstack, rxsubrule192_pass580, -1, 0
  rxsubrule192_pass580:
    rx189_cstack = rx189_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx189_pos, $P11, rx189_curclass, "$!pos"
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail571
    substr $S10, rx189_tgt, rx189_pos, 1
    ne $S10, ucs4:"]", rx189_fail571
    add rx189_pos, 1
    goto alt191_end578
  alt191_1581:
    nqp_rxmark rx189_bstack, rxquantr193_done583, -1, 0
  rxquantr193_loop582:
    ge rx189_pos, rx189_eos, rx189_fail571
    is_cclass $I11, .CCLASS_NUMERIC, rx189_tgt, rx189_pos
    unless $I11, rx189_fail571
    add rx189_pos, 1
    nqp_rxpeek $I19, rx189_bstack, rxquantr193_done583
    inc $I19
    inc $I19
    set rx189_rep, rx189_bstack[$I19]
    nqp_rxcommit rx189_bstack, rxquantr193_done583
    inc rx189_rep
    nqp_rxmark rx189_bstack, rxquantr193_done583, rx189_pos, rx189_rep
    goto rxquantr193_loop582
  rxquantr193_done583:
    nqp_rxmark rx189_bstack, rxquantr194_done585, rx189_pos, 0
  rxquantr194_loop584:
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail571
    substr $S10, rx189_tgt, rx189_pos, 1
    ne $S10, ucs4:"_", rx189_fail571
    add rx189_pos, 1
    nqp_rxmark rx189_bstack, rxquantr195_done587, -1, 0
  rxquantr195_loop586:
    ge rx189_pos, rx189_eos, rx189_fail571
    is_cclass $I11, .CCLASS_NUMERIC, rx189_tgt, rx189_pos
    unless $I11, rx189_fail571
    add rx189_pos, 1
    nqp_rxpeek $I19, rx189_bstack, rxquantr195_done587
    inc $I19
    inc $I19
    set rx189_rep, rx189_bstack[$I19]
    nqp_rxcommit rx189_bstack, rxquantr195_done587
    inc rx189_rep
    nqp_rxmark rx189_bstack, rxquantr195_done587, rx189_pos, rx189_rep
    goto rxquantr195_loop586
  rxquantr195_done587:
    nqp_rxpeek $I19, rx189_bstack, rxquantr194_done585
    inc $I19
    inc $I19
    set rx189_rep, rx189_bstack[$I19]
    nqp_rxcommit rx189_bstack, rxquantr194_done585
    inc rx189_rep
    nqp_rxmark rx189_bstack, rxquantr194_done585, rx189_pos, rx189_rep
    goto rxquantr194_loop584
  rxquantr194_done585:
    goto alt191_end578
  alt191_2588:
    ge rx189_pos, rx189_eos, rx189_fail571
    substr $S11, rx189_tgt, rx189_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx189_fail571
    inc rx189_pos
    goto alt191_end578
  alt191_3589:
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx189_curclass, "$!pos"
    lt $I11, 0, rx189_fail571
    repr_get_attr_int rx189_pos, $P11, rx189_curclass, "$!pos"
    goto alt191_end578
  alt191_end578:
    nqp_rxcommit rx189_bstack, alt191_end578
    rx189_cur."!cursor_pass"(rx189_pos, "charspec", 'backtrack'=>1)
    .return (rx189_cur)
  rx189_restart570:
    repr_get_attr_obj rx189_cstack, rx189_cur, rx189_curclass, "$!cstack"
  rx189_fail571:
    unless rx189_bstack, rx189_done569
    pop $I19, rx189_bstack
    if_null rx189_cstack, rx189_cstack_done574
    unless rx189_cstack, rx189_cstack_done574
    dec $I19
    set $P11, rx189_cstack[$I19]
  rx189_cstack_done574:
    pop rx189_rep, rx189_bstack
    pop rx189_pos, rx189_bstack
    pop $I19, rx189_bstack
    lt rx189_pos, -1, rx189_done569
    lt rx189_pos, 0, rx189_fail571
    eq $I19, 0, rx189_fail571
    nqp_islist $I20, rx189_cstack
    unless $I20, rx189_jump572
    elements $I18, rx189_bstack
    le $I18, 0, rx189_cut573
    dec $I18
    set $I18, rx189_bstack[$I18]
  rx189_cut573:
    assign rx189_cstack, $I18
  rx189_jump572:
    jump $I19
  rx189_done569:
    rx189_cur."!cursor_fail"()
    .return (rx189_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_49_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5015 = 'cuid_194_1365879968.631' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_195_1365879968.631' 
    capture_lex $P5015 
    .lex "%hash", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    .local pmc fb_tmp_2 
    if haz_param_1, default628
    nqp_get_sc_object $P5014, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_2, $P5014
  default628:
    new $P5001, 'Hash'
    set $P101, $P5001
    find_lex $P5002, "%ohash"
    set fb_tmp_2, $P5002
    repr_defined $I5001, fb_tmp_2
    unless $I5001 goto if197_else591 
    set $P5003, fb_tmp_2[_lex_param_1]
    set $P5005, $P5003
    goto if197_end592
  if197_else591:
    null $P5004
    set $P5005, $P5004
  if197_end592:
    unless_null $P5005, vivi_198593
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_198593:
    set $P101, $P5005
    if $P101 goto unless199_end595 
    .const 'Sub' $P5007 = 'cuid_194_1365879968.631' 
    capture_lex $P5007
    $P5008 = $P5007()
  unless199_end595:
    unless _lex_param_2 goto if213_else626 
.annotate 'line', 246
    find_lex $P5009, "%ohash"
    set $S5001, _lex_param_2
    set $P5009[$S5001], $P101
    nqp_decontainerize $P5010, _lex_param_0
    set $P5013, $P5010
    goto if213_end627
  if213_else626:
    .const 'Sub' $P5011 = 'cuid_195_1365879968.631' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if213_end627:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1365879968.631") :anon :lex :outer("cuid_49_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 182
    .const 'Sub' $P5008 = 'cuid_192_1365879968.631' 
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
  while200_test596:
    find_lex $S5002, "$spec"
    find_not_cclass $I5003, 32, $S5002, $I102, $I101
    set $I102, $I5003
    set $N5001, $I102
    set $N5002, $I101
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while200_done600 
  while200_redo598:
    .const 'Sub' $P5002 = 'cuid_192_1365879968.631' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while200_test596 
  while200_done600:
    find_lex $P5006, "%ohash"
    find_lex $S5003, "$spec"
    find_lex $P5007, "%hash"
    set $P5006[$S5003], $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1365879968.631") :anon :lex :outer("cuid_194_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 189
    .const 'Sub' $P5007 = 'cuid_191_1365879968.631' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_193_1365879968.631' 
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
    unless $I5002 goto if201_else601 
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
    goto if201_end602
  if201_else601:
    iseq $I5003, $S101, ":"
    unless $I5003 goto if202_else603 
    .const 'Sub' $P5001 = 'cuid_191_1365879968.631' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if202_end604
  if202_else603:
    .const 'Sub' $P5003 = 'cuid_193_1365879968.631' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if202_end604:
    set $P5006, $P5005
  if201_end602:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1365879968.631") :anon :lex :outer("cuid_192_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 195
    .lex "$value", $P101 
    .lex "$name", $P102 
    .local pmc tmp_2 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    unless $I5001 goto if203_end606 
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
  if203_end606:
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
    unless $I5011 goto if204_end608 
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
  if204_end608:
    find_lex $P5007, "%hash"
    set $S5011, $P102
    set $P5007[$S5011], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1365879968.631") :anon :lex :outer("cuid_192_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 222
    .lex "$index", $P101 
    .lex "$lookup", $P102 
    .lex "%lhash", $P103 
    .lex "$lhash_it", $P104 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    if $I5006 goto unless206_end612 
    set $N5003, $P101
    find_lex $I5008, "$lpos"
    set $N5004, $I5008
    isge $I5007, $N5003, $N5004
    set $I5009, $I5007
  unless206_end612:
    if $I5009 goto unless205_end610 
    set $I5010, $P101
    store_lex "$lpos", $I5010
  unless205_end610:
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
    unless $I5015 goto if207_else613 
    set $S5005, $P102
    set $P5008, fb_tmp_3[$S5005]
    set $P5010, $P5008
    goto if207_end614
  if207_else613:
    null $P5009
    set $P5010, $P5009
  if207_end614:
    unless_null $P5010, vivi_208615
    nqp_get_sc_object $P5011, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5010, $P5011
  vivi_208615:
    set $P103, $P5010
    if $P103 goto unless209_end617 
.annotate 'line', 232
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."panic"("Unknown operator precedence specification \"", $P102, "\"")
  unless209_end617:
    iter $P5015, $P103
    set $P104, $P5015
  while210_test618:
    set $P5022, $P104
    unless $P104 goto while210_done622 
  while210_redo620:
.annotate 'line', 235
    shift $P5016, $P104
    set $S5006, $P5016
    store_lex "$s", $S5006
    find_lex $P5017, "%hash"
    find_lex $S5007, "$s"
    set fb_tmp_4, $P103
    repr_defined $I5016, fb_tmp_4
    unless $I5016 goto if211_else623 
    find_lex $S5008, "$s"
    set $P5018, fb_tmp_4[$S5008]
    set $P5020, $P5018
    goto if211_end624
  if211_else623:
    null $P5019
    set $P5020, $P5019
  if211_end624:
    unless_null $P5020, vivi_212625
    nqp_get_sc_object $P5021, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5020, $P5021
  vivi_212625:
    set $P5017[$S5007], $P5020
    set $P5022, $P5020
    goto while210_test618 
  while210_done622:
    find_lex $I5017, "$lpos"
    store_lex "$pos", $I5017
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1365879968.631") :anon :lex :outer("cuid_49_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 250
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
.sub "panic" :subid("cuid_50_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    set pkg_lookup_tmp_1, $P5008
    get_who $P5009, pkg_lookup_tmp_1
    exists $I5002, $P5009["HLL"]
    unless $I5002 goto if215_else631 
    get_who $P5011, pkg_lookup_tmp_1
    set $P5010, $P5011["HLL"]
    set $P5013, $P5010
    goto if215_end632
  if215_else631:
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5013, $P5012
  if215_end632:
    get_who $P5007, $P5013
    set fb_tmp_5, $P5007
    repr_defined $I5001, fb_tmp_5
    unless $I5001 goto if214_else629 
    set $P5014, fb_tmp_5["Compiler"]
    set $P5016, $P5014
    goto if214_end630
  if214_else629:
    null $P5015
    set $P5016, $P5015
  if214_end630:
    unless_null $P5016, vivi_216633
    nqp_get_sc_object $P5017, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5016, $P5017
  vivi_216633:
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
.sub "FAILGOAL" :subid("cuid_51_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_2, $P5005
  default636:
    if _lex_param_2 goto unless217_end635 
.annotate 'line', 283
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless217_end635:
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
.sub "peek_delimiters" :subid("cuid_52_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_196_1365879968.631' 
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
    unless $I5001 goto if218_end638 
.annotate 'line', 304
.annotate 'line', 305
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if218_end638:
    is_cclass $I5002, 8192, $S101, 0
    unless $I5002 goto if219_end640 
.annotate 'line', 307
.annotate 'line', 308
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if219_end640:
    is_cclass $I5003, 32, $S101, 0
    unless $I5003 goto if220_end642 
.annotate 'line', 310
.annotate 'line', 311
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if220_end642:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if221_end644 
    .const 'Sub' $P5008 = 'cuid_196_1365879968.631' 
    capture_lex $P5008
    $P5009 = $P5008()
  if221_end644:
    new $P5010, 'QRPA'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1365879968.631") :anon :lex :outer("cuid_52_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 317
    .lex "$len", $I101 
    .local pmc tmp_4 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if222_end646 
.annotate 'line', 319
.annotate 'line', 320
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if222_end646:
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
  while223_test647:
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
    unless $I5004 goto while223_done651 
  while223_redo649:
.annotate 'line', 328
    box $P5005, $I101
    set tmp_4, $P5005
    set $N5011, tmp_4
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5007, $N5010
    set $I101, $I5007
    set $P5005, tmp_4
    goto while223_test647 
  while223_done651:
    set $N5010, $I101
    set $N5011, 1
    isgt $I5007, $N5010, $N5011
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if224_end653 
.annotate 'line', 331
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if224_end653:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_53_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5028 = 'cuid_198_1365879968.631' 
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
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx225_start
    .local string rx225_tgt
    .local int rx225_pos
    .local int rx225_off
    .local int rx225_eos
    .local int rx225_rep
    .local pmc rx225_cur
    .local pmc rx225_curclass
    .local pmc rx225_bstack
    .local pmc rx225_cstack
    rx225_start = self."!cursor_start_all"()
    set rx225_cur, rx225_start[0]
    set rx225_tgt, rx225_start[1]
    set rx225_pos, rx225_start[2]
    set rx225_curclass, rx225_start[3]
    set rx225_bstack, rx225_start[4]
    set $I19, rx225_start[5]
    store_lex unicode:"$\x{a2}", rx225_cur
    length rx225_eos, rx225_tgt
    eq $I19, 1, rx225_restart656
    gt rx225_pos, rx225_eos, rx225_fail657
    repr_get_attr_int $I11, self, rx225_curclass, "$!from"
    ne $I11, -1, rxscan226_done663
    goto rxscan226_scan662
  rxscan226_loop661:
    inc rx225_pos
    gt rx225_pos, rx225_eos, rx225_fail657
    repr_bind_attr_int rx225_cur, rx225_curclass, "$!from", rx225_pos
  rxscan226_scan662:
    nqp_rxmark rx225_bstack, rxscan226_loop661, rx225_pos, 0
  rxscan226_done663:
    repr_bind_attr_int rx225_cur, rx225_curclass, "$!pos", rx225_pos
    store_lex unicode:"$\x{a2}", rx225_cur
    unless_null $P101, fallback664
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_6, pkg_viv_tmp_1
    repr_defined $I5001, fb_tmp_6
    unless $I5001 goto if227_else665 
    set $P5006, fb_tmp_6["%QUOTEMOD"]
    set $P5008, $P5006
    goto if227_end666
  if227_else665:
    null $P5007
    set $P5008, $P5007
  if227_end666:
    unless_null $P5008, vivi_228667
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%QUOTEMOD"], $P5009
    set $P5008, $P5009
  vivi_228667:
    unless_null $P5008, vivi_229668
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5010
  vivi_229668:
    set $P101, $P5008
  fallback664:
    repr_bind_attr_int rx225_cur, rx225_curclass, "$!pos", rx225_pos
    store_lex unicode:"$\x{a2}", rx225_cur
    unless_null $P102, fallback669
    nqp_get_sc_object $P5012, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5011, $P5012
    set fb_tmp_7, $P5011
    repr_defined $I5002, fb_tmp_7
    unless $I5002 goto if230_else670 
    set $P5013, fb_tmp_7["$QUOTE_START"]
    set $P5015, $P5013
    goto if230_end671
  if230_else670:
    null $P5014
    set $P5015, $P5014
  if230_end671:
    unless_null $P5015, vivi_231672
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5015, $P5016
  vivi_231672:
    unless_null $P5015, vivi_232673
    die "Contextual $*QUOTE_START not found"
    box $P5017, "Contextual $*QUOTE_START not found"
    set $P5015, $P5017
  vivi_232673:
    set $P102, $P5015
  fallback669:
    repr_bind_attr_int rx225_cur, rx225_curclass, "$!pos", rx225_pos
    store_lex unicode:"$\x{a2}", rx225_cur
    unless_null $P103, fallback674
    nqp_get_sc_object $P5019, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5018, $P5019
    set fb_tmp_8, $P5018
    repr_defined $I5003, fb_tmp_8
    unless $I5003 goto if233_else675 
    set $P5020, fb_tmp_8["$QUOTE_STOP"]
    set $P5022, $P5020
    goto if233_end676
  if233_else675:
    null $P5021
    set $P5022, $P5021
  if233_end676:
    unless_null $P5022, vivi_234677
    nqp_get_sc_object $P5023, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5022, $P5023
  vivi_234677:
    unless_null $P5022, vivi_235678
    die "Contextual $*QUOTE_STOP not found"
    box $P5024, "Contextual $*QUOTE_STOP not found"
    set $P5022, $P5024
  vivi_235678:
    set $P103, $P5022
  fallback674:
    repr_bind_attr_int rx225_cur, rx225_curclass, "$!pos", rx225_pos
    store_lex unicode:"$\x{a2}", rx225_cur
    $P5025 = $P104."MATCH"()
    set $P105, $P5025
    .const 'Sub' $P5026 = 'cuid_198_1365879968.631' 
    capture_lex $P5026
    $P5027 = $P5026()
    repr_bind_attr_int rx225_cur, rx225_curclass, "$!pos", rx225_pos
    $P11 = rx225_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx225_curclass, "$!pos"
    lt $I11, 0, rx225_fail657
    nqp_rxmark rx225_bstack, rxsubrule266_pass732, -1, 0
  rxsubrule266_pass732:
    rx225_cstack = rx225_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx225_pos, $P11, rx225_curclass, "$!pos"
    rx225_cur."!cursor_pass"(rx225_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx225_cur)
  rx225_restart656:
    repr_get_attr_obj rx225_cstack, rx225_cur, rx225_curclass, "$!cstack"
  rx225_fail657:
    unless rx225_bstack, rx225_done655
    pop $I19, rx225_bstack
    if_null rx225_cstack, rx225_cstack_done660
    unless rx225_cstack, rx225_cstack_done660
    dec $I19
    set $P11, rx225_cstack[$I19]
  rx225_cstack_done660:
    pop rx225_rep, rx225_bstack
    pop rx225_pos, rx225_bstack
    pop $I19, rx225_bstack
    lt rx225_pos, -1, rx225_done655
    lt rx225_pos, 0, rx225_fail657
    eq $I19, 0, rx225_fail657
    nqp_islist $I20, rx225_cstack
    unless $I20, rx225_jump658
    elements $I18, rx225_bstack
    le $I18, 0, rx225_cut659
    dec $I18
    set $I18, rx225_bstack[$I18]
  rx225_cut659:
    assign rx225_cstack, $I18
  rx225_jump658:
    jump $I19
  rx225_done655:
    rx225_cur."!cursor_fail"()
    .return (rx225_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1365879968.631") :anon :lex :outer("cuid_53_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 344
    .const 'Sub' $P5025 = 'cuid_197_1365879968.631' 
    capture_lex $P5025 
    .lex "@delims", $P101 
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    new $P5001, 'QRPA'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next723:
    unless $P5004, for_done725
    shift $P5007, $P5004
  for_redo724:
    .const 'Sub' $P5006 = 'cuid_197_1365879968.631' 
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
    set fb_tmp_17, $P101
    repr_defined $I5001, fb_tmp_17
    unless $I5001 goto if262_else726 
    set $P5017, fb_tmp_17[0]
    set $P5019, $P5017
    goto if262_end727
  if262_else726:
    null $P5018
    set $P5019, $P5018
  if262_end727:
    unless_null $P5019, vivi_263728
    nqp_get_sc_object $P5020, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5019, $P5020
  vivi_263728:
    store_dynamic_lex "$*QUOTE_START", $P5019
    set fb_tmp_18, $P101
    repr_defined $I5002, fb_tmp_18
    unless $I5002 goto if264_else729 
    set $P5021, fb_tmp_18[1]
    set $P5023, $P5021
    goto if264_end730
  if264_else729:
    null $P5022
    set $P5023, $P5022
  if264_end730:
    unless_null $P5023, vivi_265731
    nqp_get_sc_object $P5024, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5023, $P5024
  vivi_265731:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1365879968.631") :anon :lex :outer("cuid_198_1365879968.631")
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
    unless_null $P5002, fallback679
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_2, $P5003
    set fb_tmp_9, pkg_viv_tmp_2
    repr_defined $I5001, fb_tmp_9
    unless $I5001 goto if236_else680 
    set $P5005, fb_tmp_9["%QUOTEMOD"]
    set $P5007, $P5005
    goto if236_end681
  if236_else680:
    null $P5006
    set $P5007, $P5006
  if236_end681:
    unless_null $P5007, vivi_237682
    new $P5008, 'Hash'
    set pkg_viv_tmp_2["%QUOTEMOD"], $P5008
    set $P5007, $P5008
  vivi_237682:
    unless_null $P5007, vivi_238683
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5009
  vivi_238683:
    set $P5002, $P5007
  fallback679:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5002, $S5004, "qq"
    unless $I5002 goto if239_else684 
.annotate 'line', 348
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback686
    nqp_get_sc_object $P5013, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5012, $P5013
    set pkg_viv_tmp_3, $P5012
    set fb_tmp_10, pkg_viv_tmp_3
    repr_defined $I5003, fb_tmp_10
    unless $I5003 goto if240_else687 
    set $P5014, fb_tmp_10["%QUOTEMOD"]
    set $P5016, $P5014
    goto if240_end688
  if240_else687:
    null $P5015
    set $P5016, $P5015
  if240_end688:
    unless_null $P5016, vivi_241689
    new $P5017, 'Hash'
    set pkg_viv_tmp_3["%QUOTEMOD"], $P5017
    set $P5016, $P5017
  vivi_241689:
    unless_null $P5016, vivi_242690
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5016, $P5018
  vivi_242690:
    set $P5011, $P5016
  fallback686:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback691
    nqp_get_sc_object $P5022, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5021, $P5022
    set pkg_viv_tmp_4, $P5021
    set fb_tmp_11, pkg_viv_tmp_4
    repr_defined $I5004, fb_tmp_11
    unless $I5004 goto if243_else692 
    set $P5023, fb_tmp_11["%QUOTEMOD"]
    set $P5025, $P5023
    goto if243_end693
  if243_else692:
    null $P5024
    set $P5025, $P5024
  if243_end693:
    unless_null $P5025, vivi_244694
    new $P5026, 'Hash'
    set pkg_viv_tmp_4["%QUOTEMOD"], $P5026
    set $P5025, $P5026
  vivi_244694:
    unless_null $P5025, vivi_245695
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5025, $P5027
  vivi_245695:
    set $P5020, $P5025
  fallback691:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback696
    nqp_get_sc_object $P5031, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5030, $P5031
    set pkg_viv_tmp_5, $P5030
    set fb_tmp_12, pkg_viv_tmp_5
    repr_defined $I5005, fb_tmp_12
    unless $I5005 goto if246_else697 
    set $P5032, fb_tmp_12["%QUOTEMOD"]
    set $P5034, $P5032
    goto if246_end698
  if246_else697:
    null $P5033
    set $P5034, $P5033
  if246_end698:
    unless_null $P5034, vivi_247699
    new $P5035, 'Hash'
    set pkg_viv_tmp_5["%QUOTEMOD"], $P5035
    set $P5034, $P5035
  vivi_247699:
    unless_null $P5034, vivi_248700
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5034, $P5036
  vivi_248700:
    set $P5029, $P5034
  fallback696:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback701
    nqp_get_sc_object $P5040, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5039, $P5040
    set pkg_viv_tmp_6, $P5039
    set fb_tmp_13, pkg_viv_tmp_6
    repr_defined $I5006, fb_tmp_13
    unless $I5006 goto if249_else702 
    set $P5041, fb_tmp_13["%QUOTEMOD"]
    set $P5043, $P5041
    goto if249_end703
  if249_else702:
    null $P5042
    set $P5043, $P5042
  if249_end703:
    unless_null $P5043, vivi_250704
    new $P5044, 'Hash'
    set pkg_viv_tmp_6["%QUOTEMOD"], $P5044
    set $P5043, $P5044
  vivi_250704:
    unless_null $P5043, vivi_251705
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5043, $P5045
  vivi_251705:
    set $P5038, $P5043
  fallback701:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback706
    nqp_get_sc_object $P5049, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5048, $P5049
    set pkg_viv_tmp_7, $P5048
    set fb_tmp_14, pkg_viv_tmp_7
    repr_defined $I5007, fb_tmp_14
    unless $I5007 goto if252_else707 
    set $P5050, fb_tmp_14["%QUOTEMOD"]
    set $P5052, $P5050
    goto if252_end708
  if252_else707:
    null $P5051
    set $P5052, $P5051
  if252_end708:
    unless_null $P5052, vivi_253709
    new $P5053, 'Hash'
    set pkg_viv_tmp_7["%QUOTEMOD"], $P5053
    set $P5052, $P5053
  vivi_253709:
    unless_null $P5052, vivi_254710
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5052, $P5054
  vivi_254710:
    set $P5047, $P5052
  fallback706:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback711
    nqp_get_sc_object $P5058, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5057, $P5058
    set pkg_viv_tmp_8, $P5057
    set fb_tmp_15, pkg_viv_tmp_8
    repr_defined $I5008, fb_tmp_15
    unless $I5008 goto if255_else712 
    set $P5059, fb_tmp_15["%QUOTEMOD"]
    set $P5061, $P5059
    goto if255_end713
  if255_else712:
    null $P5060
    set $P5061, $P5060
  if255_end713:
    unless_null $P5061, vivi_256714
    new $P5062, 'Hash'
    set pkg_viv_tmp_8["%QUOTEMOD"], $P5062
    set $P5061, $P5062
  vivi_256714:
    unless_null $P5061, vivi_257715
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5061, $P5063
  vivi_257715:
    set $P5056, $P5061
  fallback711:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if239_end685
  if239_else684:
    set $S5005, _lex_param_0
    iseq $I5009, $S5005, "b"
    box $P5075, $I5009
    set $P5074, $P5075
    unless $I5009 goto if258_end717 
.annotate 'line', 356
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback718
    nqp_get_sc_object $P5067, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5066, $P5067
    set pkg_viv_tmp_9, $P5066
    set fb_tmp_16, pkg_viv_tmp_9
    repr_defined $I5010, fb_tmp_16
    unless $I5010 goto if259_else719 
    set $P5068, fb_tmp_16["%QUOTEMOD"]
    set $P5070, $P5068
    goto if259_end720
  if259_else719:
    null $P5069
    set $P5070, $P5069
  if259_end720:
    unless_null $P5070, vivi_260721
    new $P5071, 'Hash'
    set pkg_viv_tmp_9["%QUOTEMOD"], $P5071
    set $P5070, $P5071
  vivi_260721:
    unless_null $P5070, vivi_261722
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5070, $P5072
  vivi_261722:
    set $P5065, $P5070
  fallback718:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if258_end717:
    set $P5076, $P5074
  if239_end685:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_54_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_199_1365879968.631' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx267_start
    .local string rx267_tgt
    .local int rx267_pos
    .local int rx267_off
    .local int rx267_eos
    .local int rx267_rep
    .local pmc rx267_cur
    .local pmc rx267_curclass
    .local pmc rx267_bstack
    .local pmc rx267_cstack
    rx267_start = self."!cursor_start_all"()
    set rx267_cur, rx267_start[0]
    set rx267_tgt, rx267_start[1]
    set rx267_pos, rx267_start[2]
    set rx267_curclass, rx267_start[3]
    set rx267_bstack, rx267_start[4]
    set $I19, rx267_start[5]
    store_lex unicode:"$\x{a2}", rx267_cur
    length rx267_eos, rx267_tgt
    eq $I19, 1, rx267_restart735
    gt rx267_pos, rx267_eos, rx267_fail736
    repr_get_attr_int $I11, self, rx267_curclass, "$!from"
    ne $I11, -1, rxscan268_done742
    goto rxscan268_scan741
  rxscan268_loop740:
    inc rx267_pos
    gt rx267_pos, rx267_eos, rx267_fail736
    repr_bind_attr_int rx267_cur, rx267_curclass, "$!from", rx267_pos
  rxscan268_scan741:
    nqp_rxmark rx267_bstack, rxscan268_loop740, rx267_pos, 0
  rxscan268_done742:
    repr_bind_attr_int rx267_cur, rx267_curclass, "$!pos", rx267_pos
    store_lex unicode:"$\x{a2}", rx267_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_199_1365879968.631' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx267_fail736
    rx267_cur."!cursor_pass"(rx267_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx267_cur)
  rx267_restart735:
    repr_get_attr_obj rx267_cstack, rx267_cur, rx267_curclass, "$!cstack"
  rx267_fail736:
    unless rx267_bstack, rx267_done734
    pop $I19, rx267_bstack
    if_null rx267_cstack, rx267_cstack_done739
    unless rx267_cstack, rx267_cstack_done739
    dec $I19
    set $P11, rx267_cstack[$I19]
  rx267_cstack_done739:
    pop rx267_rep, rx267_bstack
    pop rx267_pos, rx267_bstack
    pop $I19, rx267_bstack
    lt rx267_pos, -1, rx267_done734
    lt rx267_pos, 0, rx267_fail736
    eq $I19, 0, rx267_fail736
    nqp_islist $I20, rx267_cstack
    unless $I20, rx267_jump737
    elements $I18, rx267_bstack
    le $I18, 0, rx267_cut738
    dec $I18
    set $I18, rx267_bstack[$I18]
  rx267_cut738:
    assign rx267_cstack, $I18
  rx267_jump737:
    jump $I19
  rx267_done734:
    rx267_cur."!cursor_fail"()
    .return (rx267_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1365879968.631") :anon :lex :outer("cuid_54_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 369
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc pkg_viv_tmp_10 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback745
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_10, $P5002
    set fb_tmp_20, pkg_viv_tmp_10
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if270_else746 
    set $P5004, fb_tmp_20["%QUOTEMOD"]
    set $P5006, $P5004
    goto if270_end747
  if270_else746:
    null $P5005
    set $P5006, $P5005
  if270_end747:
    unless_null $P5006, vivi_271748
    new $P5007, 'Hash'
    set pkg_viv_tmp_10["%QUOTEMOD"], $P5007
    set $P5006, $P5007
  vivi_271748:
    unless_null $P5006, vivi_272749
    die "Contextual %*QUOTEMOD not found"
    box $P5008, "Contextual %*QUOTEMOD not found"
    set $P5006, $P5008
  vivi_272749:
    set $P5001, $P5006
  fallback745:
    set fb_tmp_19, $P5001
    repr_defined $I5001, fb_tmp_19
    unless $I5001 goto if269_else743 
    find_lex $S5001, "$mod"
    set $P5009, fb_tmp_19[$S5001]
    set $P5011, $P5009
    goto if269_end744
  if269_else743:
    null $P5010
    set $P5011, $P5010
  if269_end744:
    unless_null $P5011, vivi_273750
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5011, $P5012
  vivi_273750:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_55_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .lex "$start", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_21 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_START"
    unless_null $P5002, fallback751
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5003, $P5004
    set fb_tmp_21, $P5003
    repr_defined $I5001, fb_tmp_21
    unless $I5001 goto if274_else752 
    set $P5005, fb_tmp_21["$QUOTE_START"]
    set $P5007, $P5005
    goto if274_end753
  if274_else752:
    null $P5006
    set $P5007, $P5006
  if274_end753:
    unless_null $P5007, vivi_275754
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_275754:
    unless_null $P5007, vivi_276755
    die "Contextual $*QUOTE_START not found"
    box $P5009, "Contextual $*QUOTE_START not found"
    set $P5007, $P5009
  vivi_276755:
    set $P5002, $P5007
  fallback751:
    set $P101, $P5002
    isnull $I5002, $P101
    unless $I5002 goto if277_else756 
.annotate 'line', 375
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_cur"()
    set $P5014, $P5011
    goto if277_end757
  if277_else756:
.annotate 'line', 376
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if277_end757:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_56_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 379
    .param pmc _lex_param_0 
    .lex "$stop", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_22 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_STOP"
    unless_null $P5002, fallback758
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5003, $P5004
    set fb_tmp_22, $P5003
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if278_else759 
    set $P5005, fb_tmp_22["$QUOTE_STOP"]
    set $P5007, $P5005
    goto if278_end760
  if278_else759:
    null $P5006
    set $P5007, $P5006
  if278_end760:
    unless_null $P5007, vivi_279761
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_279761:
    unless_null $P5007, vivi_280762
    die "Contextual $*QUOTE_STOP not found"
    box $P5009, "Contextual $*QUOTE_STOP not found"
    set $P5007, $P5009
  vivi_280762:
    set $P5002, $P5007
  fallback758:
    set $P101, $P5002
    isnull $I5002, $P101
    unless $I5002 goto if281_else763 
.annotate 'line', 382
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_cur"()
    set $P5014, $P5011
    goto if281_end764
  if281_else763:
.annotate 'line', 383
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!LITERAL"($P101)
    set $P5014, $P5013
  if281_end764:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_57_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    new $P5001, 'QRPA'
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    length $I5001, _lex_param_1
    set $I102, $I5001
  while282_test765:
    find_not_cclass $I5003, 32, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while282_done769 
  while282_redo767:
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
    goto while282_test765 
  while282_done769:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_58_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5133 = 'cuid_200_1365879968.631' 
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
    if haz_param_3, default905
    set $S5005, ""
    set _lex_param_1, $S5005
  default905:
    if haz_param_4, default906
    set $I5034, 0
    set _lex_param_2, $I5034
  default906:
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    new $P5002, 'QRPA'
    set $P102, $P5002
    new $P5003, 'QRPA'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'QRPA'
    set $P107, $P5007
    new $P5008, 'QRPA'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P109, $P5009
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P110, $P5010
    nqp_get_sc_object $P5011, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    set_label $P5121, while283_handlers775
    push_eh $P5121
  while283_test772:
    box $P5122, 1
    set $P5120, $P5122
    unless 1 goto while283_done776 
  while283_redo774:
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
    unless $I5003 goto if284_end778 
    find_lex $P5020, "RETURN"
    $P5021 = $P5020($P101)
  if284_end778:
.annotate 'line', 435
    $P5022 = $P104."MATCH"()
    set $P105, $P5022
    set $P106, $P105
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while285_handlers782
    push_eh $P5025
  while285_test779:
    exists $I5004, $P106["OPER"]
    box $P5026, $I5004
    set $P5024, $P5026
    unless $I5004 goto while285_done783 
  while285_redo781:
    set $P5023, $P106["OPER"]
    set $P106, $P5023
    set $P5024, $P106
    goto while285_test779 
  while285_handlers782:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while285_test779
    eq $P5025, .CONTROL_LOOP_REDO, while285_redo781
  while285_done783:
    pop_eh 
    set $P5027, $P106["prefixish"]
    set $P107, $P5027
    set $P5028, $P106["postfixish"]
    set $P108, $P5028
    isnull $I5005, $P107
    set $I5007, $I5005
    if $I5005 goto unless287_end787 
    isnull $I5006, $P108
    set $I5007, $I5006
  unless287_end787:
    if $I5007 goto unless286_end785 
.annotate 'line', 444
  while288_test788:
    set $P5029, $P107
    unless $P107 goto if289_end794 
    set $P5029, $P108
  if289_end794:
    set $P5032, $P5029
    unless $P5029 goto while288_done792 
  while288_redo790:
    .const 'Sub' $P5030 = 'cuid_200_1365879968.631' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
    goto while288_test788 
  while288_done792:
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, while309_handlers827
    push_eh $P5035
  while309_test824:
    set $P5034, $P107
    unless $P107 goto while309_done828 
  while309_redo826:
    shift $P5033, $P107
    push $P102, $P5033
    set $P5034, $P102
    goto while309_test824 
  while309_handlers827:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5035, $P5035, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while309_test824
    eq $P5035, .CONTROL_LOOP_REDO, while309_redo826
  while309_done828:
    pop_eh 
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, while310_handlers832
    push_eh $P5038
  while310_test829:
    set $P5037, $P108
    unless $P108 goto while310_done833 
  while310_redo831:
    pop $P5036, $P108
    push $P102, $P5036
    set $P5037, $P102
    goto while310_test829 
  while310_handlers832:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, while310_test829
    eq $P5038, .CONTROL_LOOP_REDO, while310_redo831
  while310_done833:
    pop_eh 
  unless286_end785:
    delete $P105["prefixish"]
    delete $P105["postfixish"]
    set $P5039, $P105["term"]
    push $P103, $P5039
    unless _lex_param_2 goto if311_end835 
    die 0, .CONTROL_LOOP_LAST
  if311_end835:
    set $I102, 1
    set $I103, 0
    new $P5090, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5090, while312_handlers839
    push_eh $P5090
  while312_test836:
    box $P5091, $I102
    set $P5089, $P5091
    unless $I102 goto while312_done840 
  while312_redo838:
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
    unless $I5009 goto if313_end842 
.annotate 'line', 477
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if313_end842:
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
    unless $I5011 goto if314_end844 
.annotate 'line', 486
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if314_end844:
.annotate 'line', 490
    $P5046 = $P110."MATCH"()
    set $P111, $P5046
    set fb_tmp_31, $P111
    repr_defined $I5013, fb_tmp_31
    unless $I5013 goto if316_else847 
    set $P5047, fb_tmp_31["OPER"]
    set $P5049, $P5047
    goto if316_end848
  if316_else847:
    null $P5048
    set $P5049, $P5048
  if316_end848:
    unless_null $P5049, vivi_317849
    nqp_get_sc_object $P5050, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5049, $P5050
  vivi_317849:
    set fb_tmp_30, $P5049
    repr_defined $I5012, fb_tmp_30
    unless $I5012 goto if315_else845 
    set $P5051, fb_tmp_30["O"]
    set $P5053, $P5051
    goto if315_end846
  if315_else845:
    null $P5052
    set $P5053, $P5052
  if315_end846:
    unless_null $P5053, vivi_318850
    nqp_get_sc_object $P5054, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5053, $P5054
  vivi_318850:
    set $P112, $P5053
    set $P5055, $P112["nextterm"]
    unless_null $P5055, vivi_319851
    box $P5056, "termish"
    set $P5055, $P5056
  vivi_319851:
    set $S5001, $P5055
    set $S101, $S5001
    set fb_tmp_32, $P112
    repr_defined $I5014, fb_tmp_32
    unless $I5014 goto if320_else852 
    set $P5057, fb_tmp_32["prec"]
    set $P5059, $P5057
    goto if320_end853
  if320_else852:
    null $P5058
    set $P5059, $P5058
  if320_end853:
    unless_null $P5059, vivi_321854
    nqp_get_sc_object $P5060, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5059, $P5060
  vivi_321854:
    set $S5002, $P5059
    set $S102, $S5002
    if $S102 goto unless322_end856 
.annotate 'line', 496
    $P5061 = $P110."panic"("Missing infixish operator precedence")
  unless322_end856:
    islt $I5015, $S102, _lex_param_1
    unless $I5015 goto if323_end858 
.annotate 'line', 498
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if323_end858:
    set $P5062, $P112["sub"]
    unless_null $P5062, vivi_324859
    set $P5063, $P112["prec"]
    set $P5062, $P5063
  vivi_324859:
    set $P112["prec"], $P5062
    new $P5083, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5083, while325_handlers863
    push_eh $P5083
  while325_test860:
    set $P5082, $P102
    unless $P102 goto while325_done864 
  while325_redo862:
.annotate 'line', 505
    set fb_tmp_36, $P102
    repr_defined $I5019, fb_tmp_36
    unless $I5019 goto if329_else871 
    set $N5008, $P102
    set $N5009, 1
    sub $N5007, $N5008, $N5009
    set $I5020, $N5007
    set $P5064, fb_tmp_36[$I5020]
    set $P5066, $P5064
    goto if329_end872
  if329_else871:
    null $P5065
    set $P5066, $P5065
  if329_end872:
    unless_null $P5066, vivi_330873
    nqp_get_sc_object $P5067, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5066, $P5067
  vivi_330873:
    set fb_tmp_35, $P5066
    repr_defined $I5018, fb_tmp_35
    unless $I5018 goto if328_else869 
    set $P5068, fb_tmp_35["OPER"]
    set $P5070, $P5068
    goto if328_end870
  if328_else869:
    null $P5069
    set $P5070, $P5069
  if328_end870:
    unless_null $P5070, vivi_331874
    nqp_get_sc_object $P5071, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5070, $P5071
  vivi_331874:
    set fb_tmp_34, $P5070
    repr_defined $I5017, fb_tmp_34
    unless $I5017 goto if327_else867 
    set $P5072, fb_tmp_34["O"]
    set $P5074, $P5072
    goto if327_end868
  if327_else867:
    null $P5073
    set $P5074, $P5073
  if327_end868:
    unless_null $P5074, vivi_332875
    nqp_get_sc_object $P5075, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5074, $P5075
  vivi_332875:
    set fb_tmp_33, $P5074
    repr_defined $I5016, fb_tmp_33
    unless $I5016 goto if326_else865 
    set $P5076, fb_tmp_33["prec"]
    set $P5078, $P5076
    goto if326_end866
  if326_else865:
    null $P5077
    set $P5078, $P5077
  if326_end866:
    unless_null $P5078, vivi_333876
    nqp_get_sc_object $P5079, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5078, $P5079
  vivi_333876:
    set $S5003, $P5078
    set $S103, $S5003
    isgt $I5021, $S103, $S102
    if $I5021 goto unless334_end878 
    die 0, .CONTROL_LOOP_LAST
  unless334_end878:
.annotate 'line', 508
    nqp_decontainerize $P5080, _lex_param_0
    $P5081 = $P5080."EXPR_reduce"($P103, $P102)
    set $P5082, $P5081
    goto while325_test860 
  while325_handlers863:
    .get_results ($P5083)
    pop_upto_eh $P5083
    getattribute $P5083, $P5083, 'type'
    eq $P5083, .CONTROL_LOOP_NEXT, while325_test860
    eq $P5083, .CONTROL_LOOP_REDO, while325_redo862
  while325_done864:
    pop_eh 
    set $P5084, $P112["fake"]
    isnull $I5022, $P5084
    unless $I5022 goto if335_else879 
.annotate 'line', 511
    set $I102, 0
    box $P5088, $I102
    set $P5087, $P5088
    goto if335_end880
  if335_else879:
.annotate 'line', 514
    push $P102, $P111
.annotate 'line', 516
    nqp_decontainerize $P5085, _lex_param_0
    $P5086 = $P5085."EXPR_reduce"($P103, $P102)
    set $P5087, $P5086
  if335_end880:
    set $P5089, $P5087
    goto while312_test836 
  while312_handlers839:
    .get_results ($P5090)
    pop_upto_eh $P5090
    getattribute $P5090, $P5090, 'type'
    eq $P5090, .CONTROL_LOOP_NEXT, while312_test836
    eq $P5090, .CONTROL_LOOP_REDO, while312_redo838
  while312_done840:
    pop_eh 
    unless $I103 goto if336_end882 
    die 0, .CONTROL_LOOP_LAST
  if336_end882:
    iseq $I5023, $S103, $S102
    unless $I5023 goto if337_end884 
.annotate 'line', 522
    set $P5092, $P112["assoc"]
    set $S5004, $P5092
    set $S104, $S5004
    iseq $I5024, $S104, "non"
    unless $I5024 goto if338_end886 
.annotate 'line', 524
.annotate 'line', 525
    nqp_decontainerize $P5093, _lex_param_0
    set fb_tmp_39, $P102
    repr_defined $I5027, fb_tmp_39
    unless $I5027 goto if341_else891 
    elements $I5028, $P102
    set $N5011, $I5028
    set $N5012, 1
    sub $N5010, $N5011, $N5012
    set $I5029, $N5010
    set $P5094, fb_tmp_39[$I5029]
    set $P5096, $P5094
    goto if341_end892
  if341_else891:
    null $P5095
    set $P5096, $P5095
  if341_end892:
    unless_null $P5096, vivi_342893
    nqp_get_sc_object $P5097, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5096, $P5097
  vivi_342893:
    set fb_tmp_38, $P5096
    repr_defined $I5026, fb_tmp_38
    unless $I5026 goto if340_else889 
    set $P5098, fb_tmp_38["OPER"]
    set $P5100, $P5098
    goto if340_end890
  if340_else889:
    null $P5099
    set $P5100, $P5099
  if340_end890:
    unless_null $P5100, vivi_343894
    nqp_get_sc_object $P5101, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5100, $P5101
  vivi_343894:
    set fb_tmp_37, $P5100
    repr_defined $I5025, fb_tmp_37
    unless $I5025 goto if339_else887 
    set $P5102, fb_tmp_37["sym"]
    set $P5104, $P5102
    goto if339_end888
  if339_else887:
    null $P5103
    set $P5104, $P5103
  if339_end888:
    unless_null $P5104, vivi_344895
    nqp_get_sc_object $P5105, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5104, $P5105
  vivi_344895:
.annotate 'line', 527
    $P5106 = $P111."Str"()
    $P5107 = $P5093."EXPR_nonassoc"($P110, $P5104, $P5106)
  if338_end886:
    iseq $I5030, $S104, "left"
    box $P5111, $I5030
    set $P5110, $P5111
    unless $I5030 goto if345_end897 
.annotate 'line', 529
.annotate 'line', 531
    nqp_decontainerize $P5108, _lex_param_0
    $P5109 = $P5108."EXPR_reduce"($P103, $P102)
    set $P5110, $P5109
  if345_end897:
  if337_end884:
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
    unless $I5032 goto if346_end899 
    find_lex $P5116, "RETURN"
    $P5117 = $P5116($P101)
    set $P5118, $P5117
  if346_end899:
    set $P5120, $P5118
    goto while283_test772 
  while283_handlers775:
    .get_results ($P5121)
    pop_upto_eh $P5121
    getattribute $P5121, $P5121, 'type'
    eq $P5121, .CONTROL_LOOP_NEXT, while283_test772
    eq $P5121, .CONTROL_LOOP_REDO, while283_redo774
  while283_done776:
    pop_eh 
    new $P5126, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5126, while347_handlers903
    push_eh $P5126
  while347_test900:
    set $P5125, $P102
    unless $P102 goto while347_done904 
  while347_redo902:
.annotate 'line', 543
    nqp_decontainerize $P5123, _lex_param_0
    $P5124 = $P5123."EXPR_reduce"($P103, $P102)
    set $P5125, $P5124
    goto while347_test900 
  while347_handlers903:
    .get_results ($P5126)
    pop_upto_eh $P5126
    getattribute $P5126, $P5126, 'type'
    eq $P5126, .CONTROL_LOOP_NEXT, while347_test900
    eq $P5126, .CONTROL_LOOP_REDO, while347_redo902
  while347_done904:
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
.sub "" :subid("cuid_200_1365879968.631") :anon :lex :outer("cuid_58_1365879968.631")
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
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    find_lex $P5005, "@prefixish"
    set fb_tmp_25, $P5005
    repr_defined $I5003, fb_tmp_25
    unless $I5003 goto if292_else799 
    set $P5006, fb_tmp_25[0]
    set $P5008, $P5006
    goto if292_end800
  if292_else799:
    null $P5007
    set $P5008, $P5007
  if292_end800:
    unless_null $P5008, vivi_293801
    nqp_get_sc_object $P5009, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5008, $P5009
  vivi_293801:
    set fb_tmp_24, $P5008
    repr_defined $I5002, fb_tmp_24
    unless $I5002 goto if291_else797 
    set $P5010, fb_tmp_24["OPER"]
    set $P5012, $P5010
    goto if291_end798
  if291_else797:
    null $P5011
    set $P5012, $P5011
  if291_end798:
    unless_null $P5012, vivi_294802
    nqp_get_sc_object $P5013, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5012, $P5013
  vivi_294802:
    set fb_tmp_23, $P5012
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if290_else795 
    set $P5014, fb_tmp_23["O"]
    set $P5016, $P5014
    goto if290_end796
  if290_else795:
    null $P5015
    set $P5016, $P5015
  if290_end796:
    unless_null $P5016, vivi_295803
    nqp_get_sc_object $P5017, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5016, $P5017
  vivi_295803:
    set $P101, $P5016
    find_lex $P5018, "@postfixish"
    set fb_tmp_28, $P5018
    repr_defined $I5006, fb_tmp_28
    unless $I5006 goto if298_else808 
    find_lex $P5020, "@postfixish"
    elements $I5007, $P5020
    set $N5002, $I5007
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5008, $N5001
    set $P5019, fb_tmp_28[$I5008]
    set $P5022, $P5019
    goto if298_end809
  if298_else808:
    null $P5021
    set $P5022, $P5021
  if298_end809:
    unless_null $P5022, vivi_299810
    nqp_get_sc_object $P5023, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5022, $P5023
  vivi_299810:
    set fb_tmp_27, $P5022
    repr_defined $I5005, fb_tmp_27
    unless $I5005 goto if297_else806 
    set $P5024, fb_tmp_27["OPER"]
    set $P5026, $P5024
    goto if297_end807
  if297_else806:
    null $P5025
    set $P5026, $P5025
  if297_end807:
    unless_null $P5026, vivi_300811
    nqp_get_sc_object $P5027, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5026, $P5027
  vivi_300811:
    set fb_tmp_26, $P5026
    repr_defined $I5004, fb_tmp_26
    unless $I5004 goto if296_else804 
    set $P5028, fb_tmp_26["O"]
    set $P5030, $P5028
    goto if296_end805
  if296_else804:
    null $P5029
    set $P5030, $P5029
  if296_end805:
    unless_null $P5030, vivi_301812
    nqp_get_sc_object $P5031, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5030, $P5031
  vivi_301812:
    set $P102, $P5030
    set $P5032, $P101["prec"]
    unless_null $P5032, vivi_302813
    box $P5033, ""
    set $P5032, $P5033
  vivi_302813:
    set $P103, $P5032
    set $P5034, $P102["prec"]
    unless_null $P5034, vivi_303814
    box $P5035, ""
    set $P5034, $P5035
  vivi_303814:
    set $P104, $P5034
    set $S5001, $P104
    set $S5002, $P103
    isgt $I5009, $S5001, $S5002
    set $I5014, $I5009
    if $I5009 goto unless305_end818 
    set $S5003, $P104
    set $S5004, $P103
    iseq $I5010, $S5003, $S5004
    set $I5013, $I5010
    unless $I5010 goto if306_end820 
    set fb_tmp_29, $P102
    repr_defined $I5012, fb_tmp_29
    unless $I5012 goto if307_else821 
    set $P5036, fb_tmp_29["uassoc"]
    set $P5038, $P5036
    goto if307_end822
  if307_else821:
    null $P5037
    set $P5038, $P5037
  if307_end822:
    unless_null $P5038, vivi_308823
    nqp_get_sc_object $P5039, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5038, $P5039
  vivi_308823:
    set $S5005, $P5038
    iseq $I5011, $S5005, "right"
    set $I5013, $I5011
  if306_end820:
    set $I5014, $I5013
  unless305_end818:
    unless $I5014 goto if304_else815 
.annotate 'line', 453
    find_lex $P5040, "@opstack"
    find_lex $P5042, "@prefixish"
    shift $P5041, $P5042
    push $P5040, $P5041
    set $P5046, $P5040
    goto if304_end816
  if304_else815:
.annotate 'line', 456
    find_lex $P5043, "@opstack"
    find_lex $P5045, "@postfixish"
    pop $P5044, $P5045
    push $P5043, $P5044
    set $P5046, $P5043
  if304_end816:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_59_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    set $S102, ""
    set $S103, ""
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P105, $P5005
    pop $P5006, _lex_param_2
    set $P101, $P5006
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 41
    new $P5008, 'QRPA'
    setattribute $P101, $P5007, "@!array", $P5008
    set $P5009, $P101["OPER"]
    set $P102, $P5009
    set $P5010, $P102["O"]
    set $P103, $P5010
    set $P5011, $P103["assoc"]
    set $S5001, $P5011
    set $S101, $S5001
    iseq $I5001, $S101, "unary"
    unless $I5001 goto if348_else907 
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
    unless $I5002 goto if349_else909 
    set $S5002, "POSTFIX"
    goto if349_end910
  if349_else909:
    set $S5002, "PREFIX"
  if349_end910:
    set $S102, $S5002
    goto if348_end908
  if348_else907:
    iseq $I5003, $S101, "list"
    unless $I5003 goto if350_else911 
.annotate 'line', 572
    set $P5015, $P102["sym"]
    unless_null $P5015, vivi_351913
    box $P5016, ""
    set $P5015, $P5016
  vivi_351913:
    set $S5003, $P5015
    set $S103, $S5003
    pop $P5017, _lex_param_1
    unshift $P101, $P5017
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while352_handlers917
    push_eh $P5025
  while352_test914:
    set $P5024, _lex_param_2
    unless _lex_param_2 goto while352_done918 
  while352_redo916:
.annotate 'line', 575
    elements $I5005, _lex_param_2
    set $N5004, $I5005
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    set $I5006, $N5003
    set $P5020, _lex_param_2[$I5006]
    set $P5019, $P5020["OPER"]
    set $P5018, $P5019["sym"]
    unless_null $P5018, vivi_354921
    box $P5021, ""
    set $P5018, $P5021
  vivi_354921:
    set $S5004, $P5018
    isne $I5004, $S103, $S5004
    unless $I5004 goto if353_end920 
    die 0, .CONTROL_LOOP_LAST
  if353_end920:
    pop $P5022, _lex_param_1
    unshift $P101, $P5022
    pop $P5023, _lex_param_2
    set $P5024, $P5023
    goto while352_test914 
  while352_handlers917:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while352_test914
    eq $P5025, .CONTROL_LOOP_REDO, while352_redo916
  while352_done918:
    pop_eh 
    pop $P5026, _lex_param_1
    unshift $P101, $P5026
    set $S102, "LIST"
    set $S5006, $S102
    goto if350_end912
  if350_else911:
.annotate 'line', 585
    pop $P5027, _lex_param_1
    set $P101[1], $P5027
    pop $P5028, _lex_param_1
    set $P101[0], $P5028
    set $P5029, $P103["reducecheck"]
    set $P104, $P5029
    isnull $I5007, $P104
    if $I5007 goto unless355_end923 
.annotate 'line', 589
    nqp_decontainerize $P5030, _lex_param_0
    set $S5005, $P104
    $P5031 = $P5030.$S5005($P101)
  unless355_end923:
    set $S102, "INFIX"
    set $S5006, $S102
  if350_end912:
  if348_end908:
.annotate 'line', 592
    nqp_decontainerize $P5032, _lex_param_0
    $P5032."!reduce_with_match"("EXPR", $S102, $P101)
    push _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_nonassoc" :subid("cuid_60_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
.sub "ternary" :subid("cuid_61_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    unless $I5001 goto if356_else924 
    set $P5001, fb_tmp_40[1]
    set $P5003, $P5001
    goto if356_end925
  if356_else924:
    null $P5002
    set $P5003, $P5002
  if356_end925:
    unless_null $P5003, vivi_357926
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5003, $P5004
  vivi_357926:
    set _lex_param_1[2], $P5003
    set fb_tmp_42, _lex_param_1
    repr_defined $I5003, fb_tmp_42
    unless $I5003 goto if359_else929 
    set $P5005, fb_tmp_42["infix"]
    set $P5007, $P5005
    goto if359_end930
  if359_else929:
    null $P5006
    set $P5007, $P5006
  if359_end930:
    unless_null $P5007, vivi_360931
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_360931:
    set fb_tmp_41, $P5007
    repr_defined $I5002, fb_tmp_41
    unless $I5002 goto if358_else927 
    set $P5009, fb_tmp_41["EXPR"]
    set $P5011, $P5009
    goto if358_end928
  if358_else927:
    null $P5010
    set $P5011, $P5010
  if358_end928:
    unless_null $P5011, vivi_361932
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5011, $P5012
  vivi_361932:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_62_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "CB6D7C261AAF0D8B4B26A009A161E31DD17426AF-1365879963.875", 32
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
.sub "MARKED" :subid("cuid_63_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "CB6D7C261AAF0D8B4B26A009A161E31DD17426AF-1365879963.875", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    nqp_get_sc_object $P5009, "CB6D7C261AAF0D8B4B26A009A161E31DD17426AF-1365879963.875", 100
    type_check $I5001, $P102, $P5009
    set $I5003, $I5001
    unless $I5001 goto if363_end936 
.annotate 'line', 619
    $P5010 = $P102."pos"()
    set $N5001, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."pos"()
    set $N5002, $P5012
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if363_end936:
    if $I5003 goto unless362_end934 
.annotate 'line', 620
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."!cursor_start_cur"()
    set $P102, $P5014
  unless362_end934:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_64_1365879968.631") :anon :lex :outer("cuid_188_1365879968.631")
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
.annotate 'line', 626
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback939
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_11, $P5004
    set fb_tmp_44, pkg_viv_tmp_11
    repr_defined $I5002, fb_tmp_44
    unless $I5002 goto if365_else940 
    set $P5006, fb_tmp_44["%LANG"]
    set $P5008, $P5006
    goto if365_end941
  if365_else940:
    null $P5007
    set $P5008, $P5007
  if365_end941:
    unless_null $P5008, vivi_366942
    new $P5009, 'Hash'
    set pkg_viv_tmp_11["%LANG"], $P5009
    set $P5008, $P5009
  vivi_366942:
    unless_null $P5008, vivi_367943
    die "Contextual %*LANG not found"
    box $P5010, "Contextual %*LANG not found"
    set $P5008, $P5010
  vivi_367943:
    set $P5003, $P5008
  fallback939:
    set fb_tmp_43, $P5003
    repr_defined $I5001, fb_tmp_43
    unless $I5001 goto if364_else937 
    set $S5001, _lex_param_1
    set $P5011, fb_tmp_43[$S5001]
    set $P5013, $P5011
    goto if364_end938
  if364_else937:
    null $P5012
    set $P5013, $P5012
  if364_end938:
    unless_null $P5013, vivi_368944
    nqp_get_sc_object $P5014, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5013, $P5014
  vivi_368944:
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
    unless $P5025 goto if369_end946 
.annotate 'line', 628
    get_how $P5026, $P101
    nqp_decontainerize $P5028, _lex_param_0
    get_how $P5027, $P5028
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5027."trace_depth"($P5029)
    $P5031 = $P5026."trace-on"($P101, $P5030)
  if369_end946:
    find_dynamic_lex $P5032, "%*LANG"
    unless_null $P5032, fallback949
    nqp_get_sc_object $P5034, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5033, $P5034
    set pkg_viv_tmp_12, $P5033
    set fb_tmp_46, pkg_viv_tmp_12
    repr_defined $I5004, fb_tmp_46
    unless $I5004 goto if371_else950 
    set $P5035, fb_tmp_46["%LANG"]
    set $P5037, $P5035
    goto if371_end951
  if371_else950:
    null $P5036
    set $P5037, $P5036
  if371_end951:
    unless_null $P5037, vivi_372952
    new $P5038, 'Hash'
    set pkg_viv_tmp_12["%LANG"], $P5038
    set $P5037, $P5038
  vivi_372952:
    unless_null $P5037, vivi_373953
    die "Contextual %*LANG not found"
    box $P5039, "Contextual %*LANG not found"
    set $P5037, $P5039
  vivi_373953:
    set $P5032, $P5037
  fallback949:
    set fb_tmp_45, $P5032
    repr_defined $I5003, fb_tmp_45
    unless $I5003 goto if370_else947 
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5040, fb_tmp_45[$S5002]
    set $P5042, $P5040
    goto if370_end948
  if370_else947:
    null $P5041
    set $P5042, $P5041
  if370_end948:
    unless_null $P5042, vivi_374954
    nqp_get_sc_object $P5043, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5042, $P5043
  vivi_374954:
    set $P102, $P5042
.annotate 'line', 631
    set $S5004, _lex_param_2
    $P5044 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 636
    .const 'Sub' $P5037 = 'cuid_202_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_65_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_66_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1365879968.631' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_97_1365879968.631' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_202_1365879968.631' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_65_1365879968.631' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_66_1365879968.631' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_67_1365879968.631' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_68_1365879968.631' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_69_1365879968.631' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_70_1365879968.631' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_71_1365879968.631' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_72_1365879968.631' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_73_1365879968.631' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_74_1365879968.631' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_75_1365879968.631' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_76_1365879968.631' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_77_1365879968.631' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_78_1365879968.631' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_79_1365879968.631' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_80_1365879968.631' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_81_1365879968.631' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_82_1365879968.631' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_83_1365879968.631' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_84_1365879968.631' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_85_1365879968.631' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_86_1365879968.631' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_87_1365879968.631' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_88_1365879968.631' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_89_1365879968.631' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_90_1365879968.631' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_91_1365879968.631' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_92_1365879968.631' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_93_1365879968.631' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_94_1365879968.631' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_95_1365879968.631' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_96_1365879968.631' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_97_1365879968.631' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_202_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 637
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    if $I5002 goto unless375_end956 
.annotate 'line', 639
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless375_end956:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_65_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_205_1365879968.631' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if376_else957 
    .const 'Sub' $P5001 = 'cuid_205_1365879968.631' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if376_end958
  if376_else957:
.annotate 'line', 651
.annotate 'line', 652
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if376_end958:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1365879968.631") :anon :lex :outer("cuid_65_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 645
    .const 'Sub' $P5009 = 'cuid_204_1365879968.631' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next959:
    unless $P5005, for_done961
    shift $P5008, $P5005
  for_redo960:
    .const 'Sub' $P5007 = 'cuid_204_1365879968.631' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next959
  for_done961:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1365879968.631") :anon :lex :outer("cuid_205_1365879968.631")
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
.sub "CTXSAVE" :subid("cuid_66_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 656
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 657
    nqp_get_sc_object $P5001, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 93
.annotate 'line', 658
    nqp_get_sc_object $P5002, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
.annotate 'line', 660
    nqp_get_sc_object $P5003, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 71
    $P5004 = $P5003."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 661
    nqp_get_sc_object $P5005, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 71
    $P5006 = $P5005."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5007 = $P5002."new"($P5004, $P5006, "bind" :named("op"))
.annotate 'line', 663
    nqp_get_sc_object $P5008, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
.annotate 'line', 665
    nqp_get_sc_object $P5009, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
.annotate 'line', 667
    nqp_get_sc_object $P5010, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 71
    $P5011 = $P5010."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5012 = $P5009."new"($P5011, "isnull" :named("op"))
.annotate 'line', 669
    nqp_get_sc_object $P5013, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
.annotate 'line', 671
    nqp_get_sc_object $P5014, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
.annotate 'line', 673
    nqp_get_sc_object $P5015, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 71
    $P5016 = $P5015."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 674
    nqp_get_sc_object $P5017, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    $P5018 = $P5017."new"("ctxsave" :named("value"))
    $P5019 = $P5014."new"($P5016, $P5018, "can" :named("op"))
.annotate 'line', 676
    nqp_get_sc_object $P5020, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
.annotate 'line', 678
    nqp_get_sc_object $P5021, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 71
    $P5022 = $P5021."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5023 = $P5020."new"($P5022, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5024 = $P5013."new"($P5019, $P5023, "if" :named("op"))
    $P5025 = $P5008."new"($P5012, $P5024, "unless" :named("op"))
    $P5026 = $P5001."new"($P5007, $P5025)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_67_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_208_1365879968.631' 
    capture_lex $P5024 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc pkg_viv_tmp_13 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback966
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_13, $P5003
    set fb_tmp_49, pkg_viv_tmp_13
    repr_defined $I5003, fb_tmp_49
    unless $I5003 goto if379_else967 
    set $P5005, fb_tmp_49["%COMPILING"]
    set $P5007, $P5005
    goto if379_end968
  if379_else967:
    null $P5006
    set $P5007, $P5006
  if379_end968:
    unless_null $P5007, vivi_380969
    new $P5008, 'Hash'
    set pkg_viv_tmp_13["%COMPILING"], $P5008
    set $P5007, $P5008
  vivi_380969:
    unless_null $P5007, vivi_381970
    die "Contextual %*COMPILING not found"
    box $P5009, "Contextual %*COMPILING not found"
    set $P5007, $P5009
  vivi_381970:
    set $P5002, $P5007
  fallback966:
    set fb_tmp_48, $P5002
    repr_defined $I5002, fb_tmp_48
    unless $I5002 goto if378_else964 
    set $P5010, fb_tmp_48["%?OPTIONS"]
    set $P5012, $P5010
    goto if378_end965
  if378_else964:
    null $P5011
    set $P5012, $P5011
  if378_end965:
    unless_null $P5012, vivi_382971
    nqp_get_sc_object $P5013, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5012, $P5013
  vivi_382971:
    set fb_tmp_47, $P5012
    repr_defined $I5001, fb_tmp_47
    unless $I5001 goto if377_else962 
    set $P5014, fb_tmp_47["outer_ctx"]
    set $P5016, $P5014
    goto if377_end963
  if377_else962:
    null $P5015
    set $P5016, $P5015
  if377_end963:
    unless_null $P5016, vivi_383972
    nqp_get_sc_object $P5017, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5016, $P5017
  vivi_383972:
    set $P101, $P5016
    defined $I5004, $P101
    box $P5023, $I5004
    set $P5022, $P5023
    unless $I5004 goto if384_end974 
.annotate 'line', 684
  until385_test975:
    isnull $I5005, $P101
    box $P5021, $I5005
    set $P5020, $P5021
    if $I5005 goto until385_done979 
  until385_redo977:
    .const 'Sub' $P5018 = 'cuid_208_1365879968.631' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
    goto until385_test975 
  until385_done979:
    set $P5022, $P5020
  if384_end974:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1365879968.631") :anon :lex :outer("cuid_67_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 685
    .const 'Sub' $P5011 = 'cuid_207_1365879968.631' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless386_end981 
.annotate 'line', 687
    set $P5004, $P101
    iter $P5006, $P101
  for_next992:
    unless $P5006, for_done994
    shift $P5008, $P5006
  for_redo993:
    .const 'Sub' $P5007 = 'cuid_207_1365879968.631' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next992
  for_done994:
  unless386_end981:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1365879968.631") :anon :lex :outer("cuid_208_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 688
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_206_1365879968.631' 
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
    if $P5002 goto unless387_end983 
    .const 'Sub' $P5003 = 'cuid_206_1365879968.631' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless387_end983:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1365879968.631") :anon :lex :outer("cuid_207_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 690
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if388_else984 
.annotate 'line', 692
.annotate 'line', 693
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if388_end985
  if388_else984:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if389_else986 
.annotate 'line', 695
.annotate 'line', 696
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if389_end987
  if389_else986:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if390_else988 
.annotate 'line', 698
.annotate 'line', 699
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if390_end989
  if390_else988:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if391_end991 
.annotate 'line', 701
.annotate 'line', 702
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if391_end991:
    set $P5022, $P5020
  if390_end989:
    set $P5023, $P5022
  if389_end987:
    set $P5024, $P5023
  if388_end985:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_68_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 712
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_209_1365879968.631' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_210_1365879968.631' 
    capture_lex $P5028 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_59 
    if haz_param_5, default1049
    nqp_get_sc_object $P5027, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_2, $P5027
  default1049:
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_995
    .lex "RETURN", $P102
    if _lex_param_2 goto unless392_end998 
.annotate 'line', 713
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless392_end998:
.annotate 'line', 714
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor999
    unless_null _lex_param_1, fallback1002
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5006
  fallback1002:
    set fb_tmp_50, _lex_param_1
    repr_defined $I5002, fb_tmp_50
    unless $I5002 goto if393_else1000 
    set $P5007, fb_tmp_50["OPER"]
    set $P5009, $P5007
    goto if393_end1001
  if393_else1000:
    null $P5008
    set $P5009, $P5008
  if393_end1001:
    unless_null $P5009, vivi_3941003
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_3941003:
    $P5011 = $P5009."ast"()
    set $P5004, $P5011
  defor999:
    set $P101, $P5004
    if $P101 goto unless395_end1005 
    .const 'Sub' $P5012 = 'cuid_209_1365879968.631' 
    capture_lex $P5012
    $P5013 = $P5012()
  unless395_end1005:
    set $S5001, _lex_param_2
    iseq $I5003, $S5001, "POSTFIX"
    unless $I5003 goto if415_else1039 
.annotate 'line', 727
.annotate 'line', 728
    set fb_tmp_59, _lex_param_1
    repr_defined $I5004, fb_tmp_59
    unless $I5004 goto if416_else1041 
    set $P5014, fb_tmp_59[0]
    set $P5016, $P5014
    goto if416_end1042
  if416_else1041:
    null $P5015
    set $P5016, $P5015
  if416_end1042:
    unless_null $P5016, vivi_4171043
    nqp_get_sc_object $P5017, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5016, $P5017
  vivi_4171043:
    $P5018 = $P5016."ast"()
    $P5019 = $P101."unshift"($P5018)
    goto if415_end1040
  if415_else1039:
.annotate 'line', 730
.annotate 'line', 731
    $P5023 = _lex_param_1."list"()
    set $P5020, $P5023
    iter $P5022, $P5023
  for_next1046:
    unless $P5022, for_done1048
    shift $P5025, $P5022
  for_redo1047:
    .const 'Sub' $P5024 = 'cuid_210_1365879968.631' 
    capture_lex $P5024
    $P5020 = $P5024($P5025)
    goto for_next1046
  for_done1048:
  if415_end1040:
.annotate 'line', 733
    $P5026 = _lex_param_1."!make"($P101)
    goto lexotic_996
  lexotic_995:
    .get_results ($P5026)
  lexotic_996:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1365879968.631") :anon :lex :outer("cuid_68_1365879968.631")
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
.annotate 'line', 716
    nqp_get_sc_object $P5002, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
    find_lex $P5003, "$/"
    $P5004 = $P5002."new"($P5003 :named("node"))
    store_lex "$past", $P5004
    find_lex $P5005, "$/"
    unless_null $P5005, fallback1014
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  fallback1014:
    set fb_tmp_53, $P5005
    repr_defined $I5003, fb_tmp_53
    unless $I5003 goto if399_else1012 
    set $P5007, fb_tmp_53["OPER"]
    set $P5009, $P5007
    goto if399_end1013
  if399_else1012:
    null $P5008
    set $P5009, $P5008
  if399_end1013:
    unless_null $P5009, vivi_4001015
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_4001015:
    set fb_tmp_52, $P5009
    repr_defined $I5002, fb_tmp_52
    unless $I5002 goto if398_else1010 
    set $P5011, fb_tmp_52["O"]
    set $P5013, $P5011
    goto if398_end1011
  if398_else1010:
    null $P5012
    set $P5013, $P5012
  if398_end1011:
    unless_null $P5013, vivi_4011016
    nqp_get_sc_object $P5014, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5013, $P5014
  vivi_4011016:
    set fb_tmp_51, $P5013
    repr_defined $I5001, fb_tmp_51
    unless $I5001 goto if397_else1008 
    set $P5015, fb_tmp_51["op"]
    set $P5017, $P5015
    goto if397_end1009
  if397_else1008:
    null $P5016
    set $P5017, $P5016
  if397_end1009:
    unless_null $P5017, vivi_4021017
    nqp_get_sc_object $P5018, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5017, $P5018
  vivi_4021017:
    unless $P5017 goto if396_end1007 
.annotate 'line', 717
.annotate 'line', 718
    find_lex $P5019, "$past"
    find_lex $P5020, "$/"
    unless_null $P5020, fallback1024
    nqp_get_sc_object $P5021, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5020, $P5021
  fallback1024:
    set fb_tmp_56, $P5020
    repr_defined $I5006, fb_tmp_56
    unless $I5006 goto if405_else1022 
    set $P5022, fb_tmp_56["OPER"]
    set $P5024, $P5022
    goto if405_end1023
  if405_else1022:
    null $P5023
    set $P5024, $P5023
  if405_end1023:
    unless_null $P5024, vivi_4061025
    nqp_get_sc_object $P5025, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5024, $P5025
  vivi_4061025:
    set fb_tmp_55, $P5024
    repr_defined $I5005, fb_tmp_55
    unless $I5005 goto if404_else1020 
    set $P5026, fb_tmp_55["O"]
    set $P5028, $P5026
    goto if404_end1021
  if404_else1020:
    null $P5027
    set $P5028, $P5027
  if404_end1021:
    unless_null $P5028, vivi_4071026
    nqp_get_sc_object $P5029, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5028, $P5029
  vivi_4071026:
    set fb_tmp_54, $P5028
    repr_defined $I5004, fb_tmp_54
    unless $I5004 goto if403_else1018 
    set $P5030, fb_tmp_54["op"]
    set $P5032, $P5030
    goto if403_end1019
  if403_else1018:
    null $P5031
    set $P5032, $P5031
  if403_end1019:
    unless_null $P5032, vivi_4081027
    nqp_get_sc_object $P5033, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5032, $P5033
  vivi_4081027:
    set $S5001, $P5032
    $P5034 = $P5019."op"($S5001)
  if396_end1007:
    find_lex $P5035, "$key"
    set $S5002, $P5035
    iseq $I5007, $S5002, "LIST"
    unless $I5007 goto if409_end1029 
.annotate 'line', 720
    box $P5036, "infix"
    store_lex "$key", $P5036
  if409_end1029:
    find_lex $P5037, "$key"
    set $S5007, $P5037
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5038, "$/"
    unless_null $P5038, fallback1034
    nqp_get_sc_object $P5039, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5038, $P5039
  fallback1034:
    set fb_tmp_58, $P5038
    repr_defined $I5009, fb_tmp_58
    unless $I5009 goto if411_else1032 
    set $P5040, fb_tmp_58["OPER"]
    set $P5042, $P5040
    goto if411_end1033
  if411_else1032:
    null $P5041
    set $P5042, $P5041
  if411_end1033:
    unless_null $P5042, vivi_4121035
    nqp_get_sc_object $P5043, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5042, $P5043
  vivi_4121035:
    set fb_tmp_57, $P5042
    repr_defined $I5008, fb_tmp_57
    unless $I5008 goto if410_else1030 
    set $P5044, fb_tmp_57["sym"]
    set $P5046, $P5044
    goto if410_end1031
  if410_else1030:
    null $P5045
    set $P5046, $P5045
  if410_end1031:
    unless_null $P5046, vivi_4131036
    nqp_get_sc_object $P5047, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5046, $P5047
  vivi_4131036:
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
    if $P5051 goto unless414_end1038 
.annotate 'line', 724
    find_lex $P5052, "$past"
    $P5053 = $P5052."op"("call")
    set $P5054, $P5053
  unless414_end1038:
    .return ($P5054) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1365879968.631") :anon :lex :outer("cuid_68_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 731
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if418_end1045 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if418_end1045:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_69_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 736
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_60 
    unless_null _lex_param_1, fallback1052
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1052:
    set fb_tmp_60, _lex_param_1
    repr_defined $I5001, fb_tmp_60
    unless $I5001 goto if419_else1050 
    set $P5002, fb_tmp_60["circumfix"]
    set $P5004, $P5002
    goto if419_end1051
  if419_else1050:
    null $P5003
    set $P5004, $P5003
  if419_end1051:
    unless_null $P5004, vivi_4201053
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4201053:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_70_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 738
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_61 
    unless_null _lex_param_1, fallback1056
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1056:
    set fb_tmp_61, _lex_param_1
    repr_defined $I5001, fb_tmp_61
    unless $I5001 goto if421_else1054 
    set $P5002, fb_tmp_61["term"]
    set $P5004, $P5002
    goto if421_end1055
  if421_else1054:
    null $P5003
    set $P5004, $P5003
  if421_end1055:
    unless_null $P5004, vivi_4221057
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4221057:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_71_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 739
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_72_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 740
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_62 
    unless_null _lex_param_1, fallback1060
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1060:
    set fb_tmp_62, _lex_param_1
    repr_defined $I5001, fb_tmp_62
    unless $I5001 goto if423_else1058 
    set $P5002, fb_tmp_62["term"]
    set $P5004, $P5002
    goto if423_end1059
  if423_else1058:
    null $P5003
    set $P5004, $P5003
  if423_end1059:
    unless_null $P5004, vivi_4241061
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4241061:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_73_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 742
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_63 
    unless_null _lex_param_1, fallback1064
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1064:
    set fb_tmp_63, _lex_param_1
    repr_defined $I5001, fb_tmp_63
    unless $I5001 goto if425_else1062 
    set $P5002, fb_tmp_63["VALUE"]
    set $P5004, $P5002
    goto if425_end1063
  if425_else1062:
    null $P5003
    set $P5004, $P5003
  if425_end1063:
    unless_null $P5004, vivi_4261065
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4261065:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_74_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "decint" :subid("cuid_75_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "hexint" :subid("cuid_76_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "octint" :subid("cuid_77_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "binint" :subid("cuid_78_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_EXPR" :subid("cuid_79_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 751
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_212_1365879968.631' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc pkg_viv_tmp_14 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
.annotate 'line', 752
    unless_null _lex_param_1, fallback1068
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5002
  fallback1068:
    set fb_tmp_64, _lex_param_1
    repr_defined $I5001, fb_tmp_64
    unless $I5001 goto if427_else1066 
    set $P5003, fb_tmp_64["quote_delimited"]
    set $P5005, $P5003
    goto if427_end1067
  if427_else1066:
    null $P5004
    set $P5005, $P5004
  if427_end1067:
    unless_null $P5005, vivi_4281069
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_4281069:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback1074
    nqp_get_sc_object $P5010, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5009, $P5010
    set pkg_viv_tmp_14, $P5009
    set fb_tmp_66, pkg_viv_tmp_14
    repr_defined $I5003, fb_tmp_66
    unless $I5003 goto if431_else1075 
    set $P5011, fb_tmp_66["%QUOTEMOD"]
    set $P5013, $P5011
    goto if431_end1076
  if431_else1075:
    null $P5012
    set $P5013, $P5012
  if431_end1076:
    unless_null $P5013, vivi_4321077
    new $P5014, 'Hash'
    set pkg_viv_tmp_14["%QUOTEMOD"], $P5014
    set $P5013, $P5014
  vivi_4321077:
    unless_null $P5013, vivi_4331078
    die "Contextual %*QUOTEMOD not found"
    box $P5015, "Contextual %*QUOTEMOD not found"
    set $P5013, $P5015
  vivi_4331078:
    set $P5008, $P5013
  fallback1074:
    set fb_tmp_65, $P5008
    repr_defined $I5002, fb_tmp_65
    unless $I5002 goto if430_else1072 
    set $P5016, fb_tmp_65["w"]
    set $P5018, $P5016
    goto if430_end1073
  if430_else1072:
    null $P5017
    set $P5018, $P5017
  if430_end1073:
    unless_null $P5018, vivi_4341079
    nqp_get_sc_object $P5019, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5018, $P5019
  vivi_4341079:
    unless $P5018 goto if429_end1071 
.annotate 'line', 753
    nqp_get_sc_object $P5020, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    type_check $I5004, $P101, $P5020
    unless $I5004 goto if435_else1080 
    .const 'Sub' $P5021 = 'cuid_212_1365879968.631' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if435_end1081
  if435_else1080:
.annotate 'line', 764
.annotate 'line', 765
    $P5023 = _lex_param_1."CURSOR"()
    $P5024 = $P5023."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5025, $P5024
  if435_end1081:
  if429_end1071:
.annotate 'line', 768
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1365879968.631") :anon :lex :outer("cuid_79_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 754
    .const 'Sub' $P5037 = 'cuid_211_1365879968.631' 
    capture_lex $P5037 
    .lex "@words", $P101 
    .local pmc fb_tmp_67 
    .local pmc pkg_lookup_tmp_3 
    .local pmc pkg_lookup_tmp_2 
    .local pmc fb_tmp_68 
    new $P5001, 'QRPA'
    set $P101, $P5001
.annotate 'line', 755
    find_lex $P5018, "$/"
    find_lex $P5019, "$past"
    $P5020 = $P5019."value"()
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    set pkg_lookup_tmp_2, $P5003
    get_who $P5004, pkg_lookup_tmp_2
    exists $I5002, $P5004["HLL"]
    unless $I5002 goto if437_else1084 
    get_who $P5006, pkg_lookup_tmp_2
    set $P5005, $P5006["HLL"]
    set $P5008, $P5005
    goto if437_end1085
  if437_else1084:
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5008, $P5007
  if437_end1085:
    set pkg_lookup_tmp_3, $P5008
    get_who $P5009, pkg_lookup_tmp_3
    exists $I5003, $P5009["Grammar"]
    unless $I5003 goto if438_else1086 
    get_who $P5011, pkg_lookup_tmp_3
    set $P5010, $P5011["Grammar"]
    set $P5013, $P5010
    goto if438_end1087
  if438_else1086:
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5013, $P5012
  if438_end1087:
    get_who $P5002, $P5013
    set fb_tmp_67, $P5002
    repr_defined $I5001, fb_tmp_67
    unless $I5001 goto if436_else1082 
    set $P5014, fb_tmp_67["split_words"]
    set $P5016, $P5014
    goto if436_end1083
  if436_else1082:
    null $P5015
    set $P5016, $P5015
  if436_end1083:
    unless_null $P5016, vivi_4391088
    nqp_get_sc_object $P5017, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5016, $P5017
  vivi_4391088:
    $P5021 = $P5016($P5018, $P5020)
    set $P101, $P5021
    set $N5001, $P101
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    unless $I5004 goto if440_else1089 
.annotate 'line', 756
.annotate 'line', 757
    nqp_get_sc_object $P5022, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
    find_lex $P5023, "$/"
    $P5024 = $P5022."new"("list" :named("op"), $P5023 :named("node"))
    store_lex "$past", $P5024
    set $P5025, $P101
    iter $P5027, $P101
  for_next1091:
    unless $P5027, for_done1093
    shift $P5029, $P5027
  for_redo1092:
    .const 'Sub' $P5028 = 'cuid_211_1365879968.631' 
    capture_lex $P5028
    $P5025 = $P5028($P5029)
    goto for_next1091
  for_done1093:
    set $P5036, $P5025
    goto if440_end1090
  if440_else1089:
.annotate 'line', 760
.annotate 'line', 761
    nqp_get_sc_object $P5030, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    set fb_tmp_68, $P101
    repr_defined $I5005, fb_tmp_68
    unless $I5005 goto if441_else1094 
    set $P5031, fb_tmp_68[0]
    set $P5033, $P5031
    goto if441_end1095
  if441_else1094:
    null $P5032
    set $P5033, $P5032
  if441_end1095:
    unless_null $P5033, vivi_4421096
    nqp_get_sc_object $P5034, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5033, $P5034
  vivi_4421096:
    set $S5001, $P5033
    $P5035 = $P5030."new"($S5001 :named("value"))
    store_lex "$past", $P5035
    set $P5036, $P5035
  if440_end1090:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1365879968.631") :anon :lex :outer("cuid_212_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 758
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5002, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    $P5003 = $P5002."new"(_lex_param_0 :named("value"))
    $P5004 = $P5001."push"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_80_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 771
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_213_1365879968.631' 
    capture_lex $P5027 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_69 
    new $P5001, 'QRPA'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback1099
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5008
  fallback1099:
    set fb_tmp_69, _lex_param_1
    repr_defined $I5001, fb_tmp_69
    unless $I5001 goto if443_else1097 
    set $P5009, fb_tmp_69["quote_atom"]
    set $P5011, $P5009
    goto if443_end1098
  if443_else1097:
    null $P5010
    set $P5011, $P5010
  if443_end1098:
    unless_null $P5011, vivi_4441100
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5011, $P5012
  vivi_4441100:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next1109:
    unless $P5007, for_done1111
    shift $P5014, $P5007
  for_redo1110:
    .const 'Sub' $P5013 = 'cuid_213_1365879968.631' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next1109
  for_done1111:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if449_end1113 
.annotate 'line', 792
    nqp_get_sc_object $P5015, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    $P5016 = $P5015."new"($P102 :named("value"))
    $P5017 = $P101."push"($P5016)
  if449_end1113:
    unless $P101 goto if450_else1114 
.annotate 'line', 793
    $P5018 = $P101."shift"()
    set $P5021, $P5018
    goto if450_end1115
  if450_else1114:
    nqp_get_sc_object $P5019, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    $P5020 = $P5019."new"("" :named("value"))
    set $P5021, $P5020
  if450_end1115:
    set $P103, $P5021
  while451_test1116:
    set $P5025, $P101
    unless $P101 goto while451_done1120 
  while451_redo1118:
.annotate 'line', 794
.annotate 'line', 795
    nqp_get_sc_object $P5022, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 82
    $P5023 = $P101."shift"()
    $P5024 = $P5022."new"($P103, $P5023, "concat" :named("op"))
    set $P103, $P5024
    set $P5025, $P103
    goto while451_test1116 
  while451_done1120:
.annotate 'line', 797
    $P5026 = _lex_param_1."!make"($P103)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1365879968.631") :anon :lex :outer("cuid_80_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 774
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
.annotate 'line', 775
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5003, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 12
    type_check $I5002, $P101, $P5003
    not $I5001, $I5002
    unless $I5001 goto if445_else1101 
.annotate 'line', 776
    find_lex $P5004, "$lastlit"
    set $S5002, $P5004
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5005, $S5001
    store_lex "$lastlit", $P5005
    set $P5023, $P5005
    goto if445_end1102
  if445_else1101:
    nqp_get_sc_object $P5006, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    type_check $I5003, $P101, $P5006
    unless $I5003 goto if446_else1103 
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
    goto if446_end1104
  if446_else1103:
.annotate 'line', 782
    find_lex $P5010, "$lastlit"
    set $S5007, $P5010
    isgt $I5004, $S5007, ""
    unless $I5004 goto if447_end1106 
.annotate 'line', 783
.annotate 'line', 784
    find_lex $P5011, "@parts"
    nqp_get_sc_object $P5012, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    find_lex $P5013, "$lastlit"
    $P5014 = $P5012."new"($P5013 :named("value"))
    $P5015 = $P5011."push"($P5014)
  if447_end1106:
.annotate 'line', 786
    find_lex $P5016, "@parts"
    nqp_get_sc_object $P5017, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 12
    type_check $I5005, $P101, $P5017
    unless $I5005 goto if448_else1107 
    set $P5020, $P101
    goto if448_end1108
  if448_else1107:
.annotate 'line', 788
    nqp_get_sc_object $P5018, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 52
    $P5019 = $P5018."new"($P101 :named("value"))
    set $P5020, $P5019
  if448_end1108:
    $P5016."push"($P5020)
    box $P5021, ""
    store_lex "$lastlit", $P5021
    set $P5022, $P5021
  if446_end1104:
    set $P5023, $P5022
  if445_end1102:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_81_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 800
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
.annotate 'line', 801
    unless_null _lex_param_1, fallback1125
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1125:
    set fb_tmp_70, _lex_param_1
    repr_defined $I5001, fb_tmp_70
    unless $I5001 goto if453_else1123 
    set $P5002, fb_tmp_70["quote_escape"]
    set $P5004, $P5002
    goto if453_end1124
  if453_else1123:
    null $P5003
    set $P5004, $P5003
  if453_end1124:
    unless_null $P5004, vivi_4541126
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4541126:
    unless $P5004 goto if452_else1121 
    unless_null _lex_param_1, fallback1129
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5006
  fallback1129:
    set fb_tmp_71, _lex_param_1
    repr_defined $I5002, fb_tmp_71
    unless $I5002 goto if455_else1127 
    set $P5007, fb_tmp_71["quote_escape"]
    set $P5009, $P5007
    goto if455_end1128
  if455_else1127:
    null $P5008
    set $P5009, $P5008
  if455_end1128:
    unless_null $P5009, vivi_4561130
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_4561130:
    $P5011 = $P5009."ast"()
    set $P5012, $P5011
    goto if452_end1122
  if452_else1121:
    set $S5001, _lex_param_1
    box $P5013, $S5001
    set $P5012, $P5013
  if452_end1122:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_82_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<stopper>" :subid("cuid_83_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 805
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_72 
    unless_null _lex_param_1, fallback1133
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1133:
    set fb_tmp_72, _lex_param_1
    repr_defined $I5001, fb_tmp_72
    unless $I5001 goto if457_else1131 
    set $P5002, fb_tmp_72["stopper"]
    set $P5004, $P5002
    goto if457_end1132
  if457_else1131:
    null $P5003
    set $P5004, $P5003
  if457_end1132:
    unless_null $P5004, vivi_4581134
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4581134:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_84_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<nl>" :subid("cuid_85_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<cr>" :subid("cuid_86_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<tab>" :subid("cuid_87_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<ff>" :subid("cuid_88_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<esc>" :subid("cuid_89_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<hex>" :subid("cuid_90_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
    unless_null _lex_param_1, fallback1139
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5002
  fallback1139:
    set fb_tmp_73, _lex_param_1
    repr_defined $I5001, fb_tmp_73
    unless $I5001 goto if460_else1137 
    set $P5003, fb_tmp_73["hexint"]
    set $P5005, $P5003
    goto if460_end1138
  if460_else1137:
    null $P5004
    set $P5005, $P5004
  if460_end1138:
    unless_null $P5005, vivi_4611140
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_4611140:
    unless $P5005 goto if459_else1135 
    unless_null _lex_param_1, fallback1143
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5007
  fallback1143:
    set fb_tmp_74, _lex_param_1
    repr_defined $I5002, fb_tmp_74
    unless $I5002 goto if462_else1141 
    set $P5008, fb_tmp_74["hexint"]
    set $P5010, $P5008
    goto if462_end1142
  if462_else1141:
    null $P5009
    set $P5010, $P5009
  if462_end1142:
    unless_null $P5010, vivi_4631144
    nqp_get_sc_object $P5011, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5010, $P5011
  vivi_4631144:
    set $P5021, $P5010
    goto if459_end1136
  if459_else1135:
    unless_null _lex_param_1, fallback1149
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5012
  fallback1149:
    set fb_tmp_76, _lex_param_1
    repr_defined $I5004, fb_tmp_76
    unless $I5004 goto if465_else1147 
    set $P5013, fb_tmp_76["hexints"]
    set $P5015, $P5013
    goto if465_end1148
  if465_else1147:
    null $P5014
    set $P5015, $P5014
  if465_end1148:
    unless_null $P5015, vivi_4661150
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5015, $P5016
  vivi_4661150:
    set fb_tmp_75, $P5015
    repr_defined $I5003, fb_tmp_75
    unless $I5003 goto if464_else1145 
    set $P5017, fb_tmp_75["hexint"]
    set $P5019, $P5017
    goto if464_end1146
  if464_else1145:
    null $P5018
    set $P5019, $P5018
  if464_end1146:
    unless_null $P5019, vivi_4671151
    nqp_get_sc_object $P5020, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5019, $P5020
  vivi_4671151:
    set $P5021, $P5019
  if459_end1136:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_91_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
    unless_null _lex_param_1, fallback1156
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5002
  fallback1156:
    set fb_tmp_77, _lex_param_1
    repr_defined $I5001, fb_tmp_77
    unless $I5001 goto if469_else1154 
    set $P5003, fb_tmp_77["octint"]
    set $P5005, $P5003
    goto if469_end1155
  if469_else1154:
    null $P5004
    set $P5005, $P5004
  if469_end1155:
    unless_null $P5005, vivi_4701157
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_4701157:
    unless $P5005 goto if468_else1152 
    unless_null _lex_param_1, fallback1160
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5007
  fallback1160:
    set fb_tmp_78, _lex_param_1
    repr_defined $I5002, fb_tmp_78
    unless $I5002 goto if471_else1158 
    set $P5008, fb_tmp_78["octint"]
    set $P5010, $P5008
    goto if471_end1159
  if471_else1158:
    null $P5009
    set $P5010, $P5009
  if471_end1159:
    unless_null $P5010, vivi_4721161
    nqp_get_sc_object $P5011, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5010, $P5011
  vivi_4721161:
    set $P5021, $P5010
    goto if468_end1153
  if468_else1152:
    unless_null _lex_param_1, fallback1166
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5012
  fallback1166:
    set fb_tmp_80, _lex_param_1
    repr_defined $I5004, fb_tmp_80
    unless $I5004 goto if474_else1164 
    set $P5013, fb_tmp_80["octints"]
    set $P5015, $P5013
    goto if474_end1165
  if474_else1164:
    null $P5014
    set $P5015, $P5014
  if474_end1165:
    unless_null $P5015, vivi_4751167
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5015, $P5016
  vivi_4751167:
    set fb_tmp_79, $P5015
    repr_defined $I5003, fb_tmp_79
    unless $I5003 goto if473_else1162 
    set $P5017, fb_tmp_79["octint"]
    set $P5019, $P5017
    goto if473_end1163
  if473_else1162:
    null $P5018
    set $P5019, $P5018
  if473_end1163:
    unless_null $P5019, vivi_4761168
    nqp_get_sc_object $P5020, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5019, $P5020
  vivi_4761168:
    set $P5021, $P5019
  if468_end1153:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_92_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 822
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_81 
.annotate 'line', 823
    unless_null _lex_param_1, fallback1171
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1171:
    set fb_tmp_81, _lex_param_1
    repr_defined $I5001, fb_tmp_81
    unless $I5001 goto if477_else1169 
    set $P5002, fb_tmp_81["charspec"]
    set $P5004, $P5002
    goto if477_end1170
  if477_else1169:
    null $P5003
    set $P5004, $P5003
  if477_end1170:
    unless_null $P5004, vivi_4781172
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4781172:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_93_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
.sub "quote_escape:sym<misc>" :subid("cuid_94_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
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
    unless_null _lex_param_1, fallback1177
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1177:
    set fb_tmp_82, _lex_param_1
    repr_defined $I5001, fb_tmp_82
    unless $I5001 goto if480_else1175 
    set $P5002, fb_tmp_82["textq"]
    set $P5004, $P5002
    goto if480_end1176
  if480_else1175:
    null $P5003
    set $P5004, $P5003
  if480_end1176:
    unless_null $P5004, vivi_4811178
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4811178:
    unless $P5004 goto if479_else1173 
    unless_null _lex_param_1, fallback1181
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5006
  fallback1181:
    set fb_tmp_83, _lex_param_1
    repr_defined $I5002, fb_tmp_83
    unless $I5002 goto if482_else1179 
    set $P5007, fb_tmp_83["textq"]
    set $P5009, $P5007
    goto if482_end1180
  if482_else1179:
    null $P5008
    set $P5009, $P5008
  if482_end1180:
    unless_null $P5009, vivi_4831182
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_4831182:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if479_end1174
  if479_else1173:
    unless_null _lex_param_1, fallback1185
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5012
  fallback1185:
    set fb_tmp_84, _lex_param_1
    repr_defined $I5003, fb_tmp_84
    unless $I5003 goto if484_else1183 
    set $P5013, fb_tmp_84["textqq"]
    set $P5015, $P5013
    goto if484_end1184
  if484_else1183:
    null $P5014
    set $P5015, $P5014
  if484_end1184:
    unless_null $P5015, vivi_4851186
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5015, $P5016
  vivi_4851186:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if479_end1174:
    $P5020 = _lex_param_1."!make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_95_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 834
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    unless_null _lex_param_1, fallback1191
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5002
  fallback1191:
    set fb_tmp_85, _lex_param_1
    repr_defined $I5001, fb_tmp_85
    unless $I5001 goto if487_else1189 
    set $P5003, fb_tmp_85["integer"]
    set $P5005, $P5003
    goto if487_end1190
  if487_else1189:
    null $P5004
    set $P5005, $P5004
  if487_end1190:
    unless_null $P5005, vivi_4881192
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_4881192:
    unless $P5005 goto if486_else1187 
.annotate 'line', 836
    unless_null _lex_param_1, fallback1195
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5007
  fallback1195:
    set fb_tmp_86, _lex_param_1
    repr_defined $I5002, fb_tmp_86
    unless $I5002 goto if489_else1193 
    set $P5008, fb_tmp_86["integer"]
    set $P5010, $P5008
    goto if489_end1194
  if489_else1193:
    null $P5009
    set $P5010, $P5009
  if489_end1194:
    unless_null $P5010, vivi_4901196
    nqp_get_sc_object $P5011, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5010, $P5011
  vivi_4901196:
    $P5012 = $P5010."ast"()
    set $P5013, $P5012
    goto if486_end1188
  if486_else1187:
    set $S5002, _lex_param_1
    find_encoding $I5003, 'utf8'
    trans_encoding $S5001, $S5002, $I5003
    find_codepoint $I5003, $S5001
    box $P5014, $I5003
    set $P5013, $P5014
  if486_end1188:
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5004, $N5001, $N5002
    unless $I5004 goto if491_end1198 
.annotate 'line', 838
    $P5015 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5016 = $P5015."panic"($S5003)
  if491_end1198:
.annotate 'line', 839
    set $I5005, $P101
    chr $S5005, $I5005
    $P5017 = _lex_param_1."!make"($S5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_96_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 842
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_214_1365879968.631' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_87 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1201
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5006
  fallback1201:
    set fb_tmp_87, _lex_param_1
    repr_defined $I5001, fb_tmp_87
    unless $I5001 goto if492_else1199 
    set $P5007, fb_tmp_87["charname"]
    set $P5009, $P5007
    goto if492_end1200
  if492_else1199:
    null $P5008
    set $P5009, $P5008
  if492_end1200:
    unless_null $P5009, vivi_4931202
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_4931202:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1203:
    unless $P5005, for_done1205
    shift $P5012, $P5005
  for_redo1204:
    .const 'Sub' $P5011 = 'cuid_214_1365879968.631' 
    capture_lex $P5011
    $P5003 = $P5011($P5012)
    goto for_next1203
  for_done1205:
.annotate 'line', 845
    $P5013 = _lex_param_1."!make"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1365879968.631") :anon :lex :outer("cuid_96_1365879968.631")
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
.sub "charspec" :subid("cuid_97_1365879968.631") :anon :lex :outer("cuid_203_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 848
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_88 
    .local pmc fb_tmp_89 
.annotate 'line', 849
    unless_null _lex_param_1, fallback1210
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5001
  fallback1210:
    set fb_tmp_88, _lex_param_1
    repr_defined $I5001, fb_tmp_88
    unless $I5001 goto if495_else1208 
    set $P5002, fb_tmp_88["charnames"]
    set $P5004, $P5002
    goto if495_end1209
  if495_else1208:
    null $P5003
    set $P5004, $P5003
  if495_end1209:
    unless_null $P5004, vivi_4961211
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_4961211:
    unless $P5004 goto if494_else1206 
    unless_null _lex_param_1, fallback1214
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5006
  fallback1214:
    set fb_tmp_89, _lex_param_1
    repr_defined $I5002, fb_tmp_89
    unless $I5002 goto if497_else1212 
    set $P5007, fb_tmp_89["charnames"]
    set $P5009, $P5007
    goto if497_end1213
  if497_else1212:
    null $P5008
    set $P5009, $P5008
  if497_end1213:
    unless_null $P5009, vivi_4981215
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_4981215:
    $P5011 = $P5009."ast"()
    set $P5013, $P5011
    goto if494_end1207
  if494_else1206:
    $P5012 = "&string_to_int"(_lex_param_1, 10)
    set $I5003, $P5012
    chr $S5001, $I5003
    box $P5014, $S5001
    set $P5013, $P5014
  if494_end1207:
    $P5015 = _lex_param_1."!make"($P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 855
    .const 'Sub' $P5026 = 'cuid_98_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_99_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_100_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_101_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_102_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_103_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_104_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_105_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_106_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_107_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_108_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_109_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_110_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_111_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_112_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_113_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_114_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_115_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_116_1365879968.631' 
    capture_lex $P5026 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_90 
    get_who $P5001, $P101
    getinterp $P5002
    set fb_tmp_90, $P5002
    repr_defined $I5001, fb_tmp_90
    unless $I5001 goto if499_else1216 
    set $P5003, fb_tmp_90[.IGLOBALS_CONFIG_HASH]
    set $P5005, $P5003
    goto if499_end1217
  if499_else1216:
    null $P5004
    set $P5005, $P5004
  if499_end1217:
    unless_null $P5005, vivi_5001218
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_5001218:
    set $P5001["%parrot_config"], $P5005
    .const 'Sub' $P5007 = 'cuid_98_1365879968.631' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_99_1365879968.631' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_100_1365879968.631' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_101_1365879968.631' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_102_1365879968.631' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_103_1365879968.631' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_104_1365879968.631' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_105_1365879968.631' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_106_1365879968.631' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_107_1365879968.631' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_108_1365879968.631' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_109_1365879968.631' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_110_1365879968.631' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_111_1365879968.631' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_112_1365879968.631' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_113_1365879968.631' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_114_1365879968.631' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_115_1365879968.631' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_116_1365879968.631' 
    capture_lex $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "apply_transcodings" :subid("cuid_98_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 858
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5009 = 'cuid_215_1365879968.631' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    .lex "$transcode", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1219
    .lex "RETURN", $P101
    set $S5001, _lex_param_2
    split $P5004, " ", $S5001
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1223:
    unless $P5003, for_done1225
    shift $P5006, $P5003
  for_redo1224:
    .const 'Sub' $P5005 = 'cuid_215_1365879968.631' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1223
  for_done1225:
    find_lex $P5007, "RETURN"
    $P5008 = $P5007(_lex_param_1)
    goto lexotic_1220
  lexotic_1219:
    .get_results ($P5008)
  lexotic_1220:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1365879968.631") :anon :lex :outer("cuid_98_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 859
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_5021222
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
    goto skip_handler_5011221
  catch_handler_5021222:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_5011221
  skip_handler_5011221:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_99_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 868
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_91 
    find_lex $P5002, "$?PACKAGE"
    get_who $P5001, $P5002
    set fb_tmp_91, $P5001
    repr_defined $I5001, fb_tmp_91
    unless $I5001 goto if503_else1226 
    set $P5003, fb_tmp_91["%parrot_config"]
    set $P5005, $P5003
    goto if503_end1227
  if503_else1226:
    null $P5004
    set $P5005, $P5004
  if503_end1227:
    unless_null $P5005, vivi_5041228
    new $P5006, 'Hash'
    set $P5005, $P5006
  vivi_5041228:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "force_gc" :subid("cuid_100_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 872
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    sweep 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_101_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 876
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("parrot") 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_102_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 880
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_218_1365879968.631' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_6, default1247
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5010
  default1247:
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if506_end1232 
    set $P5004, $P101
  if506_end1232:
    unless $P5004 goto if505_end1230 
.annotate 'line', 884
    $P5006 = $P101."flush"()
  if505_end1230:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if507_end1234 
    .const 'Sub' $P5007 = 'cuid_218_1365879968.631' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if507_end1234:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1365879968.631") :anon :lex :outer("cuid_102_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 887
    .const 'Sub' $P5022 = 'cuid_217_1365879968.631' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5005, "$spec"
    set fb_tmp_92, $P5005
    repr_defined $I5001, fb_tmp_92
    unless $I5001 goto if508_else1235 
    set $P5006, fb_tmp_92[0]
    set $P5008, $P5006
    goto if508_end1236
  if508_else1235:
    null $P5007
    set $P5008, $P5007
  if508_end1236:
    unless_null $P5008, vivi_5091237
    nqp_get_sc_object $P5009, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5008, $P5009
  vivi_5091237:
    set $P101, $P5008
    find_lex $P5010, "$spec"
    set fb_tmp_93, $P5010
    repr_defined $I5002, fb_tmp_93
    unless $I5002 goto if510_else1238 
    set $P5011, fb_tmp_93[1]
    set $P5013, $P5011
    goto if510_end1239
  if510_else1238:
    null $P5012
    set $P5013, $P5012
  if510_end1239:
    unless_null $P5013, vivi_5111240
    nqp_get_sc_object $P5014, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5013, $P5014
  vivi_5111240:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if512_else1241 
    .const 'Sub' $P5015 = 'cuid_217_1365879968.631' 
    capture_lex $P5015
    $P5016 = $P5015()
    goto if512_end1242
  if512_else1241:
.annotate 'line', 895
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    nqpevent_fh $P5017, $P5019
  if512_end1242:
    set $S5003, $P102
    iseq $I5005, $S5003, ""
    unless $I5005 goto if514_else1245 
    box $P5021, 31
    set $P5020, $P5021
    goto if514_end1246
  if514_else1245:
    set $P5020, $P102
  if514_end1246:
    set $I5006, $P5020
    nqpdebflags $I5004, $I5006
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1365879968.631") :anon :lex :outer("cuid_218_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 891
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_lex $P5003, "$file"
    set $S5001, $P5003
    open $P5002, $S5001, "w"
    set $P5008, $P5002
    if $P5002 goto unless513_end1244 
.annotate 'line', 892
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$file"
    set $S5003, $P5006
    concat $S5002, "Cannot write to ", $S5003
    $P5007 = $P5004."panic"($S5002)
    set $P5008, $P5007
  unless513_end1244:
    set $P101, $P5008
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "run_profiled" :subid("cuid_103_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$old_runcore", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "$what", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
.sub "run_traced" :subid("cuid_104_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 911
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$level", _lex_param_1 
    .lex "$what", _lex_param_2 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
.sub "version_string" :subid("cuid_105_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_1248
    .lex "RETURN", $P103
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set fb_tmp_95, $P5003
    repr_defined $I5002, fb_tmp_95
    unless $I5002 goto if516_else1252 
    set $P5005, fb_tmp_95["%parrot_config"]
    set $P5007, $P5005
    goto if516_end1253
  if516_else1252:
    null $P5006
    set $P5007, $P5006
  if516_end1253:
    unless_null $P5007, vivi_5171254
    new $P5008, 'Hash'
    set $P5007, $P5008
  vivi_5171254:
    set fb_tmp_94, $P5007
    repr_defined $I5001, fb_tmp_94
    unless $I5001 goto if515_else1250 
    set $P5009, fb_tmp_94["VERSION"]
    set $P5011, $P5009
    goto if515_end1251
  if515_else1250:
    null $P5010
    set $P5011, $P5010
  if515_end1251:
    unless_null $P5011, vivi_5181255
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5011, $P5012
  vivi_5181255:
    set $P101, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set fb_tmp_97, $P5014
    repr_defined $I5005, fb_tmp_97
    unless $I5005 goto if520_else1259 
    set $P5016, fb_tmp_97["%parrot_config"]
    set $P5018, $P5016
    goto if520_end1260
  if520_else1259:
    null $P5017
    set $P5018, $P5017
  if520_end1260:
    unless_null $P5018, vivi_5211261
    new $P5019, 'Hash'
    set $P5018, $P5019
  vivi_5211261:
    set fb_tmp_96, $P5018
    repr_defined $I5004, fb_tmp_96
    unless $I5004 goto if519_else1257 
    set $P5020, fb_tmp_96["git_describe"]
    set $P5022, $P5020
    goto if519_end1258
  if519_else1257:
    null $P5021
    set $P5022, $P5021
  if519_end1258:
    unless_null $P5022, vivi_5221262
    nqp_get_sc_object $P5023, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5022, $P5023
  vivi_5221262:
    set $P5013, $P5022
    defined $I5003, $P5013
    if $I5003, defor1256
    box $P5024, "(unknown)"
    set $P5013, $P5024
  defor1256:
    set $P102, $P5013
    set $S5004, $P101
    concat $S5003, "parrot ", $S5004
    concat $S5002, $S5003, " revision "
    set $S5005, $P102
    concat $S5001, $S5002, $S5005
    find_lex $P5025, "RETURN"
    $P5026 = $P5025($S5001)
    goto lexotic_1249
  lexotic_1248:
    .get_results ($P5026)
  lexotic_1249:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "vmstat" :subid("cuid_106_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 924
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    new $P5001, 'QRPA'
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
.sub "stages" :subid("cuid_107_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 933
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("post pir evalpmc") 
.end
.HLL "nqp"
.namespace []
.sub "is_precomp_stage" :subid("cuid_108_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
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
.sub "is_textual_stage" :subid("cuid_109_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
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
.sub "post" :subid("cuid_110_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
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
.sub "pirbegin" :subid("cuid_111_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 950
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
.sub "pir" :subid("cuid_112_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 964
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 965
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
.sub "evalpmc" :subid("cuid_113_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 968
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 970
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "is_compunit" :subid("cuid_114_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 973
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
.sub "compunit_mainline" :subid("cuid_115_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 977
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    .local pmc fb_tmp_98 
    set fb_tmp_98, _lex_param_1
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if523_else1263 
    set $P5001, fb_tmp_98[0]
    set $P5003, $P5001
    goto if523_end1264
  if523_else1263:
    null $P5002
    set $P5003, $P5002
  if523_end1264:
    unless_null $P5003, vivi_5241265
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5003, $P5004
  vivi_5241265:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_coderefs" :subid("cuid_116_1365879968.631") :anon :lex :outer("cuid_216_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 981
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
.sub "" :subid("cuid_118_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 987
    .param pmc _lex_param_0 
    .const 'Sub' $P5003 = 'cuid_117_1365879968.631' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$?CLASS", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_117_1365879968.631' 
    capture_lex $P5001
    getinterp $P5002
    set $P5002, $P5002['lexpad']
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "default_backend" :subid("cuid_117_1365879968.631") :anon :lex :outer("cuid_118_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 102
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 992
    .const 'Sub' $P5042 = 'cuid_119_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_120_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_121_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_122_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_123_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_124_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_125_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_126_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_127_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_128_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_129_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_130_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_131_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_132_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_133_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_134_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_135_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_136_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_137_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_138_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_139_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_140_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_141_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_142_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_143_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_144_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_145_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_146_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_147_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_148_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_149_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_150_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_151_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_152_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_153_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_154_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_155_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_156_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_157_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_158_1365879968.631' 
    capture_lex $P5042 
    .const 'Sub' $P5042 = 'cuid_159_1365879968.631' 
    capture_lex $P5042 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_119_1365879968.631' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_120_1365879968.631' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_121_1365879968.631' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_122_1365879968.631' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_123_1365879968.631' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_124_1365879968.631' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_125_1365879968.631' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_126_1365879968.631' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_127_1365879968.631' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_128_1365879968.631' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_129_1365879968.631' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_130_1365879968.631' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_131_1365879968.631' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_132_1365879968.631' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_133_1365879968.631' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_134_1365879968.631' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_135_1365879968.631' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_136_1365879968.631' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_137_1365879968.631' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_138_1365879968.631' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_139_1365879968.631' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_140_1365879968.631' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_141_1365879968.631' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_142_1365879968.631' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_143_1365879968.631' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_144_1365879968.631' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_145_1365879968.631' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_146_1365879968.631' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_147_1365879968.631' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_148_1365879968.631' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_149_1365879968.631' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_150_1365879968.631' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_151_1365879968.631' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_152_1365879968.631' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_153_1365879968.631' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_154_1365879968.631' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_155_1365879968.631' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_156_1365879968.631' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_157_1365879968.631' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_158_1365879968.631' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_159_1365879968.631' 
    capture_lex $P5041
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_119_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .const 'Sub' $P5029 = 'cuid_219_1365879968.631' 
    capture_lex $P5029 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
.annotate 'line', 1008
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."default_backend"()
    repr_bind_attr_obj $P5001, $P5002, "$!backend", $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
.annotate 'line', 1011
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!backend"
    $P5011 = $P5010."stages"()
    set $S5002, $P5011
    concat $S5001, "start parse ast ", $S5002
    split $P5007, " ", $S5001
    repr_bind_attr_obj $P5005, $P5006, "@!stages", $P5007
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    split $P5014, " ", "e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5012, $P5013, "@!cmdoptions", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    box $P5017, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5015, $P5016, "$!usage", $P5017
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions"
    set $P5018, $P5023
    iter $P5020, $P5023
  for_next1266:
    unless $P5020, for_done1268
    shift $P5025, $P5020
  for_redo1267:
    .const 'Sub' $P5024 = 'cuid_219_1365879968.631' 
    capture_lex $P5024
    $P5018 = $P5024($P5025)
    goto for_next1266
  for_done1268:
    nqp_decontainerize $P5026, _lex_param_0
    nqp_get_sc_object $P5027, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    new $P5028, 'Hash'
    repr_bind_attr_obj $P5026, $P5027, "%!config", $P5028
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1365879968.631") :anon :lex :outer("cuid_119_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1016
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
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
.sub "backend" :subid("cuid_120_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1022
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_99 
    unless _lex_param_1 goto if525_end1270 
.annotate 'line', 1023
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    set fb_tmp_99, _lex_param_1
    repr_defined $I5001, fb_tmp_99
    unless $I5001 goto if526_else1271 
    set $P5003, fb_tmp_99[0]
    set $P5005, $P5003
    goto if526_end1272
  if526_else1271:
    null $P5004
    set $P5005, $P5004
  if526_end1272:
    unless_null $P5005, vivi_5271273
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_5271273:
    repr_bind_attr_obj $P5001, $P5002, "$!backend", $P5005
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
.annotate 'line', 1025
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend"
    $P5013 = $P5012."stages"()
    set $S5002, $P5013
    concat $S5001, "start parse ast ", $S5002
    split $P5009, " ", $S5001
    repr_bind_attr_obj $P5007, $P5008, "@!stages", $P5009
  if525_end1270:
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend"
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_121_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_7, default1276
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5007
  default1276:
    unless _lex_param_1 goto if528_end1275 
.annotate 'line', 1031
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if528_end1275:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_122_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1038
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
.sub "config" :subid("cuid_123_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1042
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_124_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1044
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
    unless_null $P5004, fallback1279
    nqp_get_sc_object $P5006, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5005, $P5006
    set fb_tmp_100, $P5005
    repr_defined $I5002, fb_tmp_100
    unless $I5002 goto if530_else1280 
    set $P5007, fb_tmp_100["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if530_end1281
  if530_else1280:
    null $P5008
    set $P5009, $P5008
  if530_end1281:
    unless_null $P5009, vivi_5311282
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_5311282:
    unless_null $P5009, vivi_5321283
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_5321283:
    set $P5004, $P5009
  fallback1279:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless529_end1278 
.annotate 'line', 1045
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless529_end1278:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_125_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1049
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5030 = 'cuid_223_1365879968.631' 
    capture_lex $P5030 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
.annotate 'line', 1050
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5009 = $P5006."print"($P5008)
    getinterp $P5010
    $P5011 = $P5010."stdin_handle"()
    set $P101, $P5011
    set fb_tmp_101, _lex_param_1
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if533_else1284 
    set $P5012, fb_tmp_101["encoding"]
    set $P5014, $P5012
    goto if533_end1285
  if533_else1284:
    null $P5013
    set $P5014, $P5013
  if533_end1285:
    unless_null $P5014, vivi_5341286
    nqp_get_sc_object $P5015, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5014, $P5015
  vivi_5341286:
    set $S5001, $P5014
    box $P5016, $S5001
    set $P102, $P5016
    set $P5017, $P102
    unless $P102 goto if536_end1290 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5018, $I5002
    set $P5017, $P5018
  if536_end1290:
    unless $P5017 goto if535_end1288 
.annotate 'line', 1054
    $P5019 = $P101."encoding"($P102)
  if535_end1288:
    set fb_tmp_102, _lex_param_1
    repr_defined $I5003, fb_tmp_102
    unless $I5003 goto if537_else1291 
    set $P5020, fb_tmp_102["target"]
    set $P5022, $P5020
    goto if537_end1292
  if537_else1291:
    null $P5021
    set $P5022, $P5021
  if537_end1292:
    unless_null $P5022, vivi_5381293
    nqp_get_sc_object $P5023, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5022, $P5023
  vivi_5381293:
    set $S5004, $P5022
    downcase $S5003, $S5004
    box $P5024, $S5003
    set $P103, $P5024
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while539_handlers1297
    push_eh $P5028
  while539_test1294:
    box $P5029, 1
    set $P5027, $P5029
    unless 1 goto while539_done1298 
  while539_redo1296:
    .const 'Sub' $P5025 = 'cuid_223_1365879968.631' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
    goto while539_test1294 
  while539_handlers1297:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while539_test1294
    eq $P5028, .CONTROL_LOOP_REDO, while539_redo1296
  while539_done1298:
    pop_eh 
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1365879968.631") :anon :lex :outer("cuid_125_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1060
    .const 'Sub' $P5029 = 'cuid_222_1365879968.631' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_103 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    isfalse $I5001, $P5006
    unless $I5001 goto if540_end1300 
    die 0, .CONTROL_LOOP_LAST
  if540_end1300:
.annotate 'line', 1063
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5002, $P5007
    if $I5002, defor1301
    box $P5011, "> "
    set $P5007, $P5011
  defor1301:
    set $P101, $P5007
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5003, $P102
    set $I5006, $I5003
    if $I5003 goto unless542_end1305 
    defined $I5005, $P102
    not $I5004, $I5005
    set $I5006, $I5004
  unless542_end1305:
    unless $I5006 goto if541_end1303 
.annotate 'line', 1065
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if541_end1303:
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if546_end1312 
    .const 'Sub' $P5026 = 'cuid_222_1365879968.631' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if546_end1312:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1365879968.631") :anon :lex :outer("cuid_223_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1075
    .const 'Sub' $P5047 = 'cuid_221_1365879968.631' 
    capture_lex $P5047 
    .lex "$output", $P101 
    .local pmc fb_tmp_104 
    .local pmc fb_tmp_105 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1078
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_5481314
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1079
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_5471313
  catch_handler_5481314:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_221_1365879968.631' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_5471313
  skip_handler_5471313:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1317
    nqp_get_sc_object $P5015, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5014, $P5015
    set fb_tmp_104, $P5014
    repr_defined $I5002, fb_tmp_104
    unless $I5002 goto if550_else1318 
    set $P5016, fb_tmp_104["$MAIN_CTX"]
    set $P5018, $P5016
    goto if550_end1319
  if550_else1318:
    null $P5017
    set $P5018, $P5017
  if550_end1319:
    unless_null $P5018, vivi_5511320
    nqp_get_sc_object $P5019, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5018, $P5019
  vivi_5511320:
    unless_null $P5018, vivi_5521321
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_5521321:
    set $P5013, $P5018
  fallback1317:
    defined $I5001, $P5013
    unless $I5001 goto if549_end1316 
.annotate 'line', 1085
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1322
    nqp_get_sc_object $P5023, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5022, $P5023
    set fb_tmp_105, $P5022
    repr_defined $I5003, fb_tmp_105
    unless $I5003 goto if553_else1323 
    set $P5024, fb_tmp_105["$MAIN_CTX"]
    set $P5026, $P5024
    goto if553_end1324
  if553_else1323:
    null $P5025
    set $P5026, $P5025
  if553_end1324:
    unless_null $P5026, vivi_5541325
    nqp_get_sc_object $P5027, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5026, $P5027
  vivi_5541325:
    unless_null $P5026, vivi_5551326
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_5551326:
    set $P5021, $P5026
  fallback1322:
    store_lex "$save_ctx", $P5021
  if549_end1316:
    isnull $I5004, $P101
    unless $I5004 goto if556_end1328 
    die 0, .CONTROL_LOOP_NEXT
  if556_end1328:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if557_else1329 
.annotate 'line', 1090
.annotate 'line', 1091
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5046, $P5032
    goto if557_end1330
  if557_else1329:
.annotate 'line', 1092
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    nqp_get_sc_object $P5035, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5036, $P5033, $P5035, "$!backend"
    find_lex $P5037, "$target"
    $P5038 = $P5036."is_textual_stage"($P5037)
    unless $P5038 goto if558_else1331 
    set $S5003, $P101
    say $S5003
    box $P5045, $S5003
    set $P5044, $P5045
    goto if558_end1332
  if558_else1331:
.annotate 'line', 1094
.annotate 'line', 1095
    find_lex $P5040, "self"
    nqp_decontainerize $P5039, $P5040
    find_lex $P5041, "$target"
    find_lex $P5042, "%adverbs"
    $P5043 = $P5039."dumper"($P101, $P5041, $P5042 :flat :named)
    set $P5044, $P5043
  if558_end1332:
    set $P5046, $P5044
  if557_end1330:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1365879968.631") :anon :lex :outer("cuid_222_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1080
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 1081
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_126_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1101
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
.sub "interactive_exception" :subid("cuid_127_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1105
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
.sub "eval" :subid("cuid_128_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1109
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5026 = 'cuid_224_1365879968.631' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_226_1365879968.631' 
    capture_lex $P5026 
    .lex "$output", $P101 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    set fb_tmp_106, _lex_param_3
    repr_defined $I5001, fb_tmp_106
    unless $I5001 goto if560_else1335 
    set $P5002, fb_tmp_106["profile-compile"]
    set $P5004, $P5002
    goto if560_end1336
  if560_else1335:
    null $P5003
    set $P5004, $P5003
  if560_end1336:
    unless_null $P5004, vivi_5611337
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5004, $P5005
  vivi_5611337:
    unless $P5004 goto if559_else1333 
.annotate 'line', 1112
.annotate 'line', 1113
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend"
    .const 'Sub' $P5010 = 'cuid_224_1365879968.631' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5008."run_profiled"($P5009)
    set $P101, $P5011
    goto if559_end1334
  if559_else1333:
.annotate 'line', 1117
.annotate 'line', 1118
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5013
  if559_end1334:
.annotate 'line', 1121
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend"
    $P5017 = $P5016."is_compunit"($P101)
    set $P5022, $P5017
    unless $P5017 goto if563_end1341 
    set fb_tmp_107, _lex_param_3
    repr_defined $I5003, fb_tmp_107
    unless $I5003 goto if564_else1342 
    set $P5018, fb_tmp_107["target"]
    set $P5020, $P5018
    goto if564_end1343
  if564_else1342:
    null $P5019
    set $P5020, $P5019
  if564_end1343:
    unless_null $P5020, vivi_5651344
    nqp_get_sc_object $P5021, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5020, $P5021
  vivi_5651344:
    set $S5001, $P5020
    iseq $I5002, $S5001, ""
    box $P5023, $I5002
    set $P5022, $P5023
  if563_end1341:
    unless $P5022 goto if562_end1339 
    .const 'Sub' $P5024 = 'cuid_226_1365879968.631' 
    capture_lex $P5024
    $P5025 = $P5024()
  if562_end1339:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1365879968.631") :anon :lex :outer("cuid_128_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1113

.annotate 'line', 1114
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$code"
    find_lex $P5004, "%adverbs"
    $P5005 = $P5001."compile"($P5003, $P5004 :flat :named)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1365879968.631") :anon :lex :outer("cuid_128_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1121
    .const 'Sub' $P5048 = 'cuid_225_1365879968.631' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_227_1365879968.631' 
    capture_lex $P5048 
    .lex "$outer_ctx", $P101 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_108, $P5002
    repr_defined $I5001, fb_tmp_108
    unless $I5001 goto if566_else1345 
    set $P5003, fb_tmp_108["outer_ctx"]
    set $P5005, $P5003
    goto if566_end1346
  if566_else1345:
    null $P5004
    set $P5005, $P5004
  if566_end1346:
    unless_null $P5005, vivi_5671347
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_5671347:
    set $P101, $P5005
    defined $I5002, $P101
    unless $I5002 goto if568_end1349 
.annotate 'line', 1123
.annotate 'line', 1124
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!backend"
    find_lex $P5011, "$output"
    $P5012 = $P5010."compunit_mainline"($P5011)
    $P5013 = $P5012."set_outer_ctx"($P101)
  if568_end1349:
    find_lex $P5014, "%adverbs"
    set fb_tmp_109, $P5014
    repr_defined $I5003, fb_tmp_109
    unless $I5003 goto if570_else1352 
    set $P5015, fb_tmp_109["profile"]
    set $P5017, $P5015
    goto if570_end1353
  if570_else1352:
    null $P5016
    set $P5017, $P5016
  if570_end1353:
    unless_null $P5017, vivi_5711354
    nqp_get_sc_object $P5018, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5017, $P5018
  vivi_5711354:
    unless $P5017 goto if569_else1350 
.annotate 'line', 1127
.annotate 'line', 1128
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    nqp_get_sc_object $P5021, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5022, $P5019, $P5021, "$!backend"
    .const 'Sub' $P5024 = 'cuid_225_1365879968.631' 
    capture_lex $P5024
    newclosure $P5023, $P5024
    $P5025 = $P5022."run_profiled"($P5023)
    store_lex "$output", $P5025
    set $P5047, $P5025
    goto if569_end1351
  if569_else1350:
    find_lex $P5026, "%adverbs"
    set fb_tmp_110, $P5026
    repr_defined $I5004, fb_tmp_110
    unless $I5004 goto if573_else1357 
    set $P5027, fb_tmp_110["trace"]
    set $P5029, $P5027
    goto if573_end1358
  if573_else1357:
    null $P5028
    set $P5029, $P5028
  if573_end1358:
    unless_null $P5029, vivi_5741359
    nqp_get_sc_object $P5030, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5029, $P5030
  vivi_5741359:
    unless $P5029 goto if572_else1355 
.annotate 'line', 1130
.annotate 'line', 1131
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    nqp_get_sc_object $P5033, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5034, $P5031, $P5033, "$!backend"
    find_lex $P5035, "%adverbs"
    set fb_tmp_111, $P5035
    repr_defined $I5005, fb_tmp_111
    unless $I5005 goto if575_else1360 
    set $P5036, fb_tmp_111["trace"]
    set $P5038, $P5036
    goto if575_end1361
  if575_else1360:
    null $P5037
    set $P5038, $P5037
  if575_end1361:
    unless_null $P5038, vivi_5761362
    nqp_get_sc_object $P5039, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5038, $P5039
  vivi_5761362:
    .const 'Sub' $P5041 = 'cuid_227_1365879968.631' 
    capture_lex $P5041
    newclosure $P5040, $P5041
    $P5042 = $P5034."run_traced"($P5038, $P5040)
    store_lex "$output", $P5042
    set $P5046, $P5042
    goto if572_end1356
  if572_else1355:
.annotate 'line', 1133
.annotate 'line', 1134
    find_lex $P5044, "@args"
    find_lex $P5043, "$output"
    $P5045 = $P5043($P5044 :flat)
    store_lex "$output", $P5045
    set $P5046, $P5045
  if572_end1356:
    set $P5047, $P5046
  if569_end1351:
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1365879968.631") :anon :lex :outer("cuid_226_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1128

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1365879968.631") :anon :lex :outer("cuid_226_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1131

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_129_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1141
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
.sub "panic" :subid("cuid_130_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1146
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
.sub "stages" :subid("cuid_131_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1150
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_8, default1365
    new $P5006, 'QRPA'
    set _lex_param_1, $P5006
  default1365:
    set $N5001, _lex_param_1
    unless $N5001 goto if577_end1364 
.annotate 'line', 1151
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if577_end1364:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_132_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1157
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_112 
    set $N5001, _lex_param_1
    unless $N5001 goto if578_end1367 
.annotate 'line', 1158
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    set fb_tmp_112, _lex_param_1
    repr_defined $I5001, fb_tmp_112
    unless $I5001 goto if579_else1368 
    set $P5003, fb_tmp_112[0]
    set $P5005, $P5003
    goto if579_end1369
  if579_else1368:
    null $P5004
    set $P5005, $P5004
  if579_end1369:
    unless_null $P5005, vivi_5801370
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_5801370:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5005
  if578_end1367:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_133_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1164
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_113 
    set $N5001, _lex_param_1
    unless $N5001 goto if581_end1372 
.annotate 'line', 1165
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if582_else1373 
    set $P5003, fb_tmp_113[0]
    set $P5005, $P5003
    goto if582_end1374
  if582_else1373:
    null $P5004
    set $P5005, $P5004
  if582_end1374:
    unless_null $P5005, vivi_5831375
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5005, $P5006
  vivi_5831375:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5005
  if581_end1372:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_134_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1171
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_135_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1173
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_136_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1175
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_9, default1378
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5006
  default1378:
    defined $I5001, _lex_param_1
    unless $I5001 goto if584_end1377 
.annotate 'line', 1176
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if584_end1377:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_137_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1183
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_10, default1381
    new $P5006, 'QRPA'
    set _lex_param_1, $P5006
  default1381:
    set $N5001, _lex_param_1
    unless $N5001 goto if585_end1380 
.annotate 'line', 1184
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if585_end1380:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_138_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1190
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5040 = 'cuid_228_1365879968.631' 
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'QRPA'
    set $P104, $P5004
    set fb_tmp_114, _lex_param_1
    repr_defined $I5001, fb_tmp_114
    unless $I5001 goto if586_else1382 
    set $P5005, fb_tmp_114[0]
    set $P5007, $P5005
    goto if586_end1383
  if586_else1382:
    null $P5006
    set $P5007, $P5006
  if586_end1383:
    unless_null $P5007, vivi_5871384
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_5871384:
    set $P101, $P5007
.annotate 'line', 1192
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1193
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1194
    $P5012 = $P102."arguments"()
    set $P104, $P5012
    set $P5013, $P103
    iter $P5015, $P103
  for_next1385:
    unless $P5015, for_done1387
    shift $P5017, $P5015
  for_redo1386:
    .const 'Sub' $P5016 = 'cuid_228_1365879968.631' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next1385
  for_done1387:
    set fb_tmp_115, _lex_param_2
    repr_defined $I5002, fb_tmp_115
    unless $I5002 goto if590_else1392 
    set $P5018, fb_tmp_115["help"]
    set $P5020, $P5018
    goto if590_end1393
  if590_else1392:
    null $P5019
    set $P5020, $P5019
  if590_end1393:
    unless_null $P5020, vivi_5911394
    nqp_get_sc_object $P5021, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5020, $P5021
  vivi_5911394:
    set $P5026, $P5020
    if $P5020 goto unless589_end1391 
    set fb_tmp_116, _lex_param_2
    repr_defined $I5003, fb_tmp_116
    unless $I5003 goto if592_else1395 
    set $P5022, fb_tmp_116["h"]
    set $P5024, $P5022
    goto if592_end1396
  if592_else1395:
    null $P5023
    set $P5024, $P5023
  if592_end1396:
    unless_null $P5024, vivi_5931397
    nqp_get_sc_object $P5025, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5024, $P5025
  vivi_5931397:
    set $P5026, $P5024
  unless589_end1391:
    unless $P5026 goto if588_end1389 
.annotate 'line', 1199
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5027."usage"($P101)
  if588_end1389:
.annotate 'line', 1201
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5031, $P5029, $P5030, "$!backend"
    set fb_tmp_117, _lex_param_2
    repr_defined $I5004, fb_tmp_117
    unless $I5004 goto if595_else1400 
    set $P5032, fb_tmp_117["target"]
    set $P5034, $P5032
    goto if595_end1401
  if595_else1400:
    null $P5033
    set $P5034, $P5033
  if595_end1401:
    unless_null $P5034, vivi_5961402
    nqp_get_sc_object $P5035, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5034, $P5035
  vivi_5961402:
    $P5036 = $P5031."is_precomp_stage"($P5034)
    unless $P5036 goto if594_end1399 
    box $P5037, 1
    set _lex_param_2["precomp"], $P5037
  if594_end1399:
.annotate 'line', 1205
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1365879968.631") :anon :lex :outer("cuid_138_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%adverbs"
.annotate 'line', 1197
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_139_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1209
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5101 = 'cuid_229_1365879968.631' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_230_1365879968.631' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_231_1365879968.631' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_232_1365879968.631' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_233_1365879968.631' 
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    set fb_tmp_118, _lex_param_2
    repr_defined $I5001, fb_tmp_118
    unless $I5001 goto if599_else1407 
    set $P5005, fb_tmp_118["version"]
    set $P5007, $P5005
    goto if599_end1408
  if599_else1407:
    null $P5006
    set $P5007, $P5006
  if599_end1408:
    unless_null $P5007, vivi_6001409
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_6001409:
    set $P5013, $P5007
    if $P5007 goto unless598_end1406 
    set fb_tmp_119, _lex_param_2
    repr_defined $I5002, fb_tmp_119
    unless $I5002 goto if601_else1410 
    set $P5009, fb_tmp_119["v"]
    set $P5011, $P5009
    goto if601_end1411
  if601_else1410:
    null $P5010
    set $P5011, $P5010
  if601_end1411:
    unless_null $P5011, vivi_6021412
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5011, $P5012
  vivi_6021412:
    set $P5013, $P5011
  unless598_end1406:
    unless $P5013 goto if597_end1404 
.annotate 'line', 1210
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."version"()
  if597_end1404:
    set fb_tmp_120, _lex_param_2
    repr_defined $I5003, fb_tmp_120
    unless $I5003 goto if606_else1419 
    set $P5016, fb_tmp_120["verbose-config"]
    set $P5018, $P5016
    goto if606_end1420
  if606_else1419:
    null $P5017
    set $P5018, $P5017
  if606_end1420:
    unless_null $P5018, vivi_6071421
    nqp_get_sc_object $P5019, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5018, $P5019
  vivi_6071421:
    set $P5024, $P5018
    if $P5018 goto unless605_end1418 
    set fb_tmp_121, _lex_param_2
    repr_defined $I5004, fb_tmp_121
    unless $I5004 goto if608_else1422 
    set $P5020, fb_tmp_121["V"]
    set $P5022, $P5020
    goto if608_end1423
  if608_else1422:
    null $P5021
    set $P5022, $P5021
  if608_end1423:
    unless_null $P5022, vivi_6091424
    nqp_get_sc_object $P5023, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5022, $P5023
  vivi_6091424:
    set $P5024, $P5022
  unless605_end1418:
    set $P5029, $P5024
    if $P5024 goto unless604_end1416 
    set fb_tmp_122, _lex_param_2
    repr_defined $I5005, fb_tmp_122
    unless $I5005 goto if610_else1425 
    set $P5025, fb_tmp_122["show-config"]
    set $P5027, $P5025
    goto if610_end1426
  if610_else1425:
    null $P5026
    set $P5027, $P5026
  if610_end1426:
    unless_null $P5027, vivi_6111427
    nqp_get_sc_object $P5028, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5027, $P5028
  vivi_6111427:
    set $P5029, $P5027
  unless604_end1416:
    unless $P5029 goto if603_end1414 
.annotate 'line', 1211
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."verbose-config"()
  if603_end1414:
    set fb_tmp_123, _lex_param_2
    repr_defined $I5006, fb_tmp_123
    unless $I5006 goto if613_else1430 
    set $P5032, fb_tmp_123["nqpevent"]
    set $P5034, $P5032
    goto if613_end1431
  if613_else1430:
    null $P5033
    set $P5034, $P5033
  if613_end1431:
    unless_null $P5034, vivi_6141432
    nqp_get_sc_object $P5035, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5034, $P5035
  vivi_6141432:
    unless $P5034 goto if612_end1429 
.annotate 'line', 1213
    nqp_decontainerize $P5036, _lex_param_0
    set fb_tmp_124, _lex_param_2
    repr_defined $I5007, fb_tmp_124
    unless $I5007 goto if615_else1433 
    set $P5037, fb_tmp_124["nqpevent"]
    set $P5039, $P5037
    goto if615_end1434
  if615_else1433:
    null $P5038
    set $P5039, $P5038
  if615_end1434:
    unless_null $P5039, vivi_6161435
    nqp_get_sc_object $P5040, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5039, $P5040
  vivi_6161435:
    $P5041 = $P5036."nqpevent"($P5039)
  if612_end1429:
    box $P5042, 0
    set $P103, $P5042
    set fb_tmp_125, _lex_param_2
    repr_defined $I5008, fb_tmp_125
    unless $I5008 goto if617_else1436 
    set $P5043, fb_tmp_125["target"]
    set $P5045, $P5043
    goto if617_end1437
  if617_else1436:
    null $P5044
    set $P5045, $P5044
  if617_end1437:
    unless_null $P5045, vivi_6181438
    nqp_get_sc_object $P5046, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5045, $P5046
  vivi_6181438:
    set $S5002, $P5045
    downcase $S5001, $S5002
    box $P5047, $S5001
    set $P104, $P5047
    new $P5087, 'ExceptionHandler'
    set_label $P5087, catch_handler_6501490
    $P5087.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5087
.annotate 'line', 1219
    new $P5085, 'ExceptionHandler'
    set_label $P5085, catch_handler_6461485
    $P5085.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5085
    new $P5085, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5085, catch_handler_6471486
    push_eh $P5085
    set fb_tmp_126, _lex_param_2
    repr_defined $I5010, fb_tmp_126
    unless $I5010 goto if620_else1441 
    set $P5048, fb_tmp_126["e"]
    set $P5050, $P5048
    goto if620_end1442
  if620_else1441:
    null $P5049
    set $P5050, $P5049
  if620_end1442:
    unless_null $P5050, vivi_6211443
    nqp_get_sc_object $P5051, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5050, $P5051
  vivi_6211443:
    defined $I5009, $P5050
    unless $I5009 goto if619_else1439 
    .const 'Sub' $P5052 = 'cuid_229_1365879968.631' 
    capture_lex $P5052
    $P5053 = $P5052()
    goto if619_end1440
  if619_else1439:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if629_else1456 
.annotate 'line', 1228
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5055
    set $P5069, $P101
    goto if629_end1457
  if629_else1456:
    set fb_tmp_129, _lex_param_2
    repr_defined $I5012, fb_tmp_129
    unless $I5012 goto if631_else1460 
    set $P5056, fb_tmp_129["combine"]
    set $P5058, $P5056
    goto if631_end1461
  if631_else1460:
    null $P5057
    set $P5058, $P5057
  if631_end1461:
    unless_null $P5058, vivi_6321462
    nqp_get_sc_object $P5059, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5058, $P5059
  vivi_6321462:
    unless $P5058 goto if630_else1458 
.annotate 'line', 1229
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5061
    set $P5068, $P101
    goto if630_end1459
  if630_else1458:
.annotate 'line', 1230
    nqp_decontainerize $P5062, _lex_param_0
    set fb_tmp_130, _lex_param_1
    repr_defined $I5013, fb_tmp_130
    unless $I5013 goto if633_else1463 
    set $P5063, fb_tmp_130[0]
    set $P5065, $P5063
    goto if633_end1464
  if633_else1463:
    null $P5064
    set $P5065, $P5064
  if633_end1464:
    unless_null $P5065, vivi_6341465
    nqp_get_sc_object $P5066, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5065, $P5066
  vivi_6341465:
    $P5067 = $P5062."evalfiles"($P5065, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5067
    set $P5068, $P101
  if630_end1459:
    set $P5069, $P5068
  if629_end1457:
  if619_end1440:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5080, $I5014
    set $P5079, $P5080
    unless $I5014 goto if636_end1469 
.annotate 'line', 1232
    nqp_decontainerize $P5070, _lex_param_0
    nqp_get_sc_object $P5071, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5072, $P5070, $P5071, "$!backend"
    $P5073 = $P5072."is_textual_stage"($P104)
    set $P5078, $P5073
    if $P5073 goto unless637_end1471 
    set fb_tmp_131, _lex_param_2
    repr_defined $I5016, fb_tmp_131
    unless $I5016 goto if638_else1472 
    set $P5074, fb_tmp_131["output"]
    set $P5076, $P5074
    goto if638_end1473
  if638_else1472:
    null $P5075
    set $P5076, $P5075
  if638_end1473:
    unless_null $P5076, vivi_6391474
    nqp_get_sc_object $P5077, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5076, $P5077
  vivi_6391474:
    set $P5078, $P5076
  unless637_end1471:
    set $P5079, $P5078
  if636_end1469:
    unless $P5079 goto if635_end1467 
    .const 'Sub' $P5081 = 'cuid_230_1365879968.631' 
    capture_lex $P5081
    $P5082 = $P5081()
  if635_end1467:
    nqp_get_sc_object $P5083, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    nqp_get_sc_object $P5084, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5086, $P5084
    pop_eh 
    pop_eh 
    goto skip_handler_6451484
  catch_handler_6461485:
    .get_results ($P5085) 
    .const 'Sub' $P10001 = 'cuid_231_1365879968.631' 
    capture_lex $P10001
    $P10001($P5085)
    set $I10001, 1
    set $P5085["handled"], $I10001
    nqp_get_sc_object $P10002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10002
    goto skip_handler_6451484
  catch_handler_6471486:
    .get_results ($P5085) 
    .const 'Sub' $P10003 = 'cuid_232_1365879968.631' 
    capture_lex $P10003
    $P10003($P5085)
    set $I10002, 1
    set $P5085["handled"], $I10002
    nqp_get_sc_object $P10004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10004
    goto skip_handler_6451484
  skip_handler_6451484:
    set $P5088, $P5086
    pop_eh 
    goto skip_handler_6491489
  catch_handler_6501490:
    .get_results ($P5087) 
    set $I10001, 1
    set $P5087["handled"], $I10001
    nqp_get_sc_object $P10001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5087
    pop_upto_eh $P5087
    pop_eh 
    set $P5088, $P10001
    goto skip_handler_6491489
  skip_handler_6491489:
    unless $P103 goto if651_end1492 
.annotate 'line', 1255
    set fb_tmp_133, _lex_param_2
    repr_defined $I5017, fb_tmp_133
    unless $I5017 goto if654_else1497 
    set $P5089, fb_tmp_133["ll-exception"]
    set $P5091, $P5089
    goto if654_end1498
  if654_else1497:
    null $P5090
    set $P5091, $P5090
  if654_end1498:
    unless_null $P5091, vivi_6551499
    nqp_get_sc_object $P5092, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5091, $P5092
  vivi_6551499:
    set $P5094, $P5091
    if $P5091 goto unless653_end1496 
    nqp_decontainerize $P5093, _lex_param_0
    can $I5019, $P5093, "handle-exception"
    not $I5018, $I5019
    box $P5095, $I5018
    set $P5094, $P5095
  unless653_end1496:
    unless $P5094 goto if652_else1493 
    .const 'Sub' $P5096 = 'cuid_233_1365879968.631' 
    capture_lex $P5096
    $P5097 = $P5096()
    set $P5100, $P5097
    goto if652_end1494
  if652_else1493:
.annotate 'line', 1262
.annotate 'line', 1263
    nqp_decontainerize $P5098, _lex_param_0
    $P5099 = $P5098."handle-exception"($P102)
    set $P5100, $P5099
  if652_end1494:
  if651_end1492:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1365879968.631") :anon :lex :outer("cuid_139_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1220
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1223
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_127, $P5009
    repr_defined $I5001, fb_tmp_127
    unless $I5001 goto if622_else1444 
    set $P5010, fb_tmp_127["e"]
    set $P5012, $P5010
    goto if622_end1445
  if622_else1444:
    null $P5011
    set $P5012, $P5011
  if622_end1445:
    unless_null $P5012, vivi_6231446
    nqp_get_sc_object $P5013, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5012, $P5013
  vivi_6231446:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    box $P5025, $I5002
    set $P5024, $P5025
    if $I5002 goto unless626_end1452 
.annotate 'line', 1224
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend"
    find_lex $P5022, "$target"
    $P5023 = $P5021."is_textual_stage"($P5022)
    set $P5024, $P5023
  unless626_end1452:
    set $P5031, $P5024
    if $P5024 goto unless625_end1450 
    find_lex $P5026, "%adverbs"
    set fb_tmp_128, $P5026
    repr_defined $I5003, fb_tmp_128
    unless $I5003 goto if627_else1453 
    set $P5027, fb_tmp_128["output"]
    set $P5029, $P5027
    goto if627_end1454
  if627_else1453:
    null $P5028
    set $P5029, $P5028
  if627_end1454:
    unless_null $P5029, vivi_6281455
    nqp_get_sc_object $P5030, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5029, $P5030
  vivi_6281455:
    set $P5031, $P5029
  unless625_end1450:
    set $P5038, $P5031
    if $P5031 goto unless624_end1448 
.annotate 'line', 1225
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$result"
    find_lex $P5035, "$target"
    find_lex $P5036, "%adverbs"
    $P5037 = $P5032."dumper"($P5034, $P5035, $P5036 :flat :named)
    set $P5038, $P5037
  unless624_end1448:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1365879968.631") :anon :lex :outer("cuid_139_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1232
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_132, $P5003
    repr_defined $I5001, fb_tmp_132
    unless $I5001 goto if640_else1475 
    set $P5004, fb_tmp_132["output"]
    set $P5006, $P5004
    goto if640_end1476
  if640_else1475:
    null $P5005
    set $P5006, $P5005
  if640_end1476:
    unless_null $P5006, vivi_6411477
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5006, $P5007
  vivi_6411477:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless643_end1481 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless643_end1481:
    unless $I5004 goto if642_else1478 
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5011, $P5009
    goto if642_end1479
  if642_else1478:
    set $S5003, $P101
    open $P5010, $S5003, "w"
    set $P5011, $P5010
  if642_end1479:
    set $P102, $P5011
    if $P102 goto unless644_end1483 
.annotate 'line', 1237
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    set $S5005, $P101
    concat $S5004, "Cannot write to ", $S5005
    $P5014 = $P5012."panic"($S5004)
  unless644_end1483:
    find_lex $P5015, "$result"
    $P5016 = $P102."print"($P5015)
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1365879968.631") :anon :lex :outer("cuid_139_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1241
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
.sub "" :subid("cuid_232_1365879968.631") :anon :lex :outer("cuid_139_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1245
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if648_else1487 
.annotate 'line', 1246
.annotate 'line', 1247
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if648_end1488
  if648_else1487:
.annotate 'line', 1248
    rethrow _lex_param_0
  if648_end1488:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1365879968.631") :anon :lex :outer("cuid_139_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1256
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    getinterp $P5002
    $P5003 = $P5002."stderr_handle"()
    set $P101, $P5003
    find_lex $P5004, "$error"
    $P5005 = $P101."print"($P5004)
    $P5006 = $P101."print"("\n")
.annotate 'line', 1260
    find_lex $P5007, "$error"
    $P5008 = $P5007."backtrace_strings"()
    join $S5001, "\n", $P5008
    $P5009 = $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_140_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_234_1365879968.631' 
    capture_lex $P5043 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_134 
    .local pmc pkg_lookup_tmp_5 
    .local pmc pkg_lookup_tmp_4 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
.annotate 'line', 1271
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1273
    nqp_get_sc_object $P5006, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    set pkg_lookup_tmp_4, $P5006
    get_who $P5007, pkg_lookup_tmp_4
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if657_else1502 
    get_who $P5009, pkg_lookup_tmp_4
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if657_end1503
  if657_else1502:
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5011, $P5010
  if657_end1503:
    set pkg_lookup_tmp_5, $P5011
    get_who $P5012, pkg_lookup_tmp_5
    exists $I5003, $P5012["CommandLine"]
    unless $I5003 goto if658_else1504 
    get_who $P5014, pkg_lookup_tmp_5
    set $P5013, $P5014["CommandLine"]
    set $P5016, $P5013
    goto if658_end1505
  if658_else1504:
    nqp_get_sc_object $P5015, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5016, $P5015
  if658_end1505:
    get_who $P5005, $P5016
    set fb_tmp_134, $P5005
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if656_else1500 
    set $P5017, fb_tmp_134["Parser"]
    set $P5019, $P5017
    goto if656_end1501
  if656_else1500:
    null $P5018
    set $P5019, $P5018
  if656_end1501:
    unless_null $P5019, vivi_6591506
    nqp_get_sc_object $P5020, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5019, $P5020
  vivi_6591506:
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions"
    $P5024 = $P5019."new"($P5023)
    set $P101, $P5024
.annotate 'line', 1274
    $P101."add-stopper"("-e")
.annotate 'line', 1275
    $P101."stop-after-first-arg"()
    new $P5029, 'ExceptionHandler'
    set_label $P5029, catch_handler_6631510
    $P5029.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5029
.annotate 'line', 1277
    new $P5027, 'ExceptionHandler'
    set_label $P5027, catch_handler_6611508
    $P5027.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5027
.annotate 'line', 1278
    $P5025 = $P101."parse"(_lex_param_1)
    set $P102, $P5025
    nqp_get_sc_object $P5026, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5028, $P5026
    pop_eh 
    goto skip_handler_6601507
  catch_handler_6611508:
    .get_results ($P5027) 
    .const 'Sub' $P10001 = 'cuid_234_1365879968.631' 
    capture_lex $P10001
    $P10001($P5027)
    set $I10001, 1
    set $P5027["handled"], $I10001
    nqp_get_sc_object $P10002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5027
    pop_upto_eh $P5027
    pop_eh 
    set $P5028, $P10002
    goto skip_handler_6601507
  skip_handler_6601507:
    set $P5030, $P5028
    pop_eh 
    goto skip_handler_6621509
  catch_handler_6631510:
    .get_results ($P5029) 
    set $I10001, 1
    set $P5029["handled"], $I10001
    nqp_get_sc_object $P10001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5029
    pop_upto_eh $P5029
    pop_eh 
    set $P5030, $P10001
    goto skip_handler_6621509
  skip_handler_6621509:
    unless $P102 goto if664_else1511 
.annotate 'line', 1285
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
.annotate 'line', 1286
    $P5033 = $P102."options"()
    repr_bind_attr_obj $P5031, $P5032, "%!cli-options", $P5033
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
.annotate 'line', 1287
    $P5036 = $P102."arguments"()
    repr_bind_attr_obj $P5034, $P5035, "@!cli-arguments", $P5036
    goto if664_end1512
  if664_else1511:
.annotate 'line', 1289
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    new $P5039, 'Hash'
    repr_bind_attr_obj $P5037, $P5038, "%!cli-options", $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    new $P5042, 'QRPA'
    repr_bind_attr_obj $P5040, $P5041, "@!cli-arguments", $P5042
  if664_end1512:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1365879968.631") :anon :lex :outer("cuid_140_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1279
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1281
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_141_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1296
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5049 = 'cuid_236_1365879968.631' 
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    new $P5003, 'QRPA'
    set $P103, $P5003
    new $P5004, 'QRPA'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1513
    .lex "RETURN", $P108
    set fb_tmp_135, _lex_param_3
    repr_defined $I5001, fb_tmp_135
    unless $I5001 goto if665_else1515 
    set $P5008, fb_tmp_135["target"]
    set $P5010, $P5008
    goto if665_end1516
  if665_else1515:
    null $P5009
    set $P5010, $P5009
  if665_end1516:
    unless_null $P5010, vivi_6661517
    nqp_get_sc_object $P5011, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5010, $P5011
  vivi_6661517:
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5012, $S5001
    set $P101, $P5012
    set fb_tmp_136, _lex_param_3
    repr_defined $I5002, fb_tmp_136
    unless $I5002 goto if667_else1518 
    set $P5013, fb_tmp_136["encoding"]
    set $P5015, $P5013
    goto if667_end1519
  if667_else1518:
    null $P5014
    set $P5015, $P5014
  if667_end1519:
    unless_null $P5015, vivi_6681520
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5015, $P5016
  vivi_6681520:
    set $P102, $P5015
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if669_else1521 
    set $P5018, _lex_param_1
    goto if669_end1522
  if669_else1521:
    new $P5017, 'QRPA'
    push $P5017, _lex_param_1
    set $P5018, $P5017
  if669_end1522:
    set $P103, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    join $S5003, ",", $P103
    box $P5021, $S5003
    repr_bind_attr_obj $P5019, $P5020, "$!user_progname", $P5021
    set $P5022, $P103
    iter $P5024, $P103
  for_next1535:
    unless $P5024, for_done1537
    shift $P5026, $P5024
  for_redo1536:
    .const 'Sub' $P5025 = 'cuid_236_1365879968.631' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1535
  for_done1537:
    join $S5004, "", $P104
    box $P5027, $S5004
    set $P105, $P5027
    join $S5005, " ", $P103
    box $P5028, $S5005
    set $P106, $P5028
.annotate 'line', 1325
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5030
    set $S5006, $P101
    iseq $I5004, $S5006, ""
    box $P5036, $I5004
    set $P5035, $P5036
    if $I5004 goto unless682_end1543 
.annotate 'line', 1326
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!backend"
    $P5034 = $P5033."is_textual_stage"($P101)
    set $P5035, $P5034
  unless682_end1543:
    set $P5041, $P5035
    if $P5035 goto unless681_end1541 
    set fb_tmp_137, _lex_param_3
    repr_defined $I5005, fb_tmp_137
    unless $I5005 goto if683_else1544 
    set $P5037, fb_tmp_137["output"]
    set $P5039, $P5037
    goto if683_end1545
  if683_else1544:
    null $P5038
    set $P5039, $P5038
  if683_end1545:
    unless_null $P5039, vivi_6841546
    nqp_get_sc_object $P5040, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5039, $P5040
  vivi_6841546:
    set $P5041, $P5039
  unless681_end1541:
    unless $P5041 goto if680_else1538 
    find_lex $P5042, "RETURN"
    $P5043 = $P5042($P107)
    set $P5048, $P5043
    goto if680_end1539
  if680_else1538:
.annotate 'line', 1328
.annotate 'line', 1329
    nqp_decontainerize $P5045, _lex_param_0
    $P5046 = $P5045."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5044, "RETURN"
    $P5047 = $P5044($P5046)
    set $P5048, $P5047
  if680_end1539:
    goto lexotic_1514
  lexotic_1513:
    .get_results ($P5048)
  lexotic_1514:
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1365879968.631") :anon :lex :outer("cuid_141_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1302
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_235_1365879968.631' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_237_1365879968.631' 
    capture_lex $P5021 
    .lex "$err", $P101 
    .lex "$in-handle", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    box $P5003, 0
    set $P101, $P5003
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_6731526
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1305
    new $P5006, 'ExceptionHandler'
    set_label $P5006, catch_handler_6711524
    $P5006.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5006
    set $S5001, _lex_param_0
    open $P5004, $S5001, "r"
    set $P102, $P5004
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5005
    pop_eh 
    goto skip_handler_6701523
  catch_handler_6711524:
    .get_results ($P5006) 
    .const 'Sub' $P10001 = 'cuid_235_1365879968.631' 
    capture_lex $P10001
    $P10001($P5006)
    set $I10001, 1
    set $P5006["handled"], $I10001
    nqp_get_sc_object $P10002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5006
    pop_upto_eh $P5006
    pop_eh 
    set $P5007, $P10002
    goto skip_handler_6701523
  skip_handler_6701523:
    set $P5009, $P5007
    pop_eh 
    goto skip_handler_6721525
  catch_handler_6731526:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_6721525
  skip_handler_6721525:
    unless $P101 goto if674_end1528 
    exit 1
  if674_end1528:
    new $P5018, 'ExceptionHandler'
    set_label $P5018, catch_handler_6781532
    $P5018.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5018
.annotate 'line', 1313
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_6761530
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
    find_lex $P5010, "$encoding"
    $P5011 = $P102."encoding"($P5010)
    find_lex $P5012, "@codes"
    $P5013 = $P102."readall"()
    set $S5002, $P5013
    push $P5012, $S5002
    $P5014 = $P102."close"()
    nqp_get_sc_object $P5015, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_6751529
  catch_handler_6761530:
    .get_results ($P5016) 
    .const 'Sub' $P10001 = 'cuid_237_1365879968.631' 
    capture_lex $P10001
    $P10001($P5016)
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10002
    goto skip_handler_6751529
  skip_handler_6751529:
    set $P5019, $P5017
    pop_eh 
    goto skip_handler_6771531
  catch_handler_6781532:
    .get_results ($P5018) 
    set $I10001, 1
    set $P5018["handled"], $I10001
    nqp_get_sc_object $P10001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    finalize $P5018
    pop_upto_eh $P5018
    pop_eh 
    set $P5019, $P10001
    goto skip_handler_6771531
  skip_handler_6771531:
    set $P5020, $P101
    unless $P101 goto if679_end1534 
    die $P101
    set $P5020, $P101
  if679_end1534:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1365879968.631") :anon :lex :outer("cuid_236_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1307
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
.sub "" :subid("cuid_237_1365879968.631") :anon :lex :outer("cuid_236_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1317
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
.sub "exists_stage" :subid("cuid_142_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1333
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_238_1365879968.631' 
    capture_lex $P5012 
    .lex "$found", $P101 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1547
    .lex "RETURN", $P102
    box $P5002, 0
    set $P101, $P5002
.annotate 'line', 1335
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."stages"()
    set $P5003, $P5007
    iter $P5005, $P5007
  for_next1551:
    unless $P5005, for_done1553
    shift $P5009, $P5005
  for_redo1552:
    .const 'Sub' $P5008 = 'cuid_238_1365879968.631' 
    capture_lex $P5008
    $P5003 = $P5008($P5009)
    goto for_next1551
  for_done1553:
    find_lex $P5010, "RETURN"
    $P5011 = $P5010(0)
    goto lexotic_1548
  lexotic_1547:
    .get_results ($P5011)
  lexotic_1548:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1365879968.631") :anon :lex :outer("cuid_142_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1335
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stage"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if685_end1550 
.annotate 'line', 1336
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(1)
    set $P5004, $P5003
  if685_end1550:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "compile" :subid("cuid_143_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1343
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("from") :optional 
    .param int haz_param_11 :opt_flag 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5056 = 'cuid_239_1365879968.631' 
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
    if haz_param_11, default1602
    nqp_get_sc_object $P5055, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_2, $P5055
  default1602:
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1554
    .lex "RETURN", $P108
    unless_null $P101, fallback1556
    nqp_get_sc_object $P5009, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_15, $P5008
    set fb_tmp_138, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if686_else1557 
    set $P5010, fb_tmp_138["%COMPILING"]
    set $P5012, $P5010
    goto if686_end1558
  if686_else1557:
    null $P5011
    set $P5012, $P5011
  if686_end1558:
    unless_null $P5012, vivi_6871559
    new $P5013, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5013
    set $P5012, $P5013
  vivi_6871559:
    unless_null $P5012, vivi_6881560
    die "Contextual %*COMPILING not found"
    box $P5014, "Contextual %*COMPILING not found"
    set $P5012, $P5014
  vivi_6881560:
    set $P101, $P5012
  fallback1556:
    set $P101["%?OPTIONS"], _lex_param_3
    set fb_tmp_140, _lex_param_3
    repr_defined $I5003, fb_tmp_140
    unless $I5003 goto if692_else1566 
    set $P5022, fb_tmp_140["target"]
    set $P5024, $P5022
    goto if692_end1567
  if692_else1566:
    null $P5023
    set $P5024, $P5023
  if692_end1567:
    unless_null $P5024, vivi_6931568
    nqp_get_sc_object $P5025, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5024, $P5025
  vivi_6931568:
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
    unless $I5004 goto if694_else1569 
    set $P5031, fb_tmp_141["stagestats"]
    set $P5033, $P5031
    goto if694_end1570
  if694_else1569:
    null $P5032
    set $P5033, $P5032
  if694_end1570:
    unless_null $P5033, vivi_6951571
    nqp_get_sc_object $P5034, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5033, $P5034
  vivi_6951571:
    set $P107, $P5033
    set $S5003, _lex_param_2
    iseq $I5005, $S5003, ""
    box $P5038, $I5005
    set $P5037, $P5038
    if $I5005 goto unless697_end1575 
.annotate 'line', 1352
    nqp_decontainerize $P5035, _lex_param_0
    $P5036 = $P5035."exists_stage"(_lex_param_2)
    set $P5037, $P5036
  unless697_end1575:
    if $P5037 goto unless696_end1573 
    set $S5006, _lex_param_2
    concat $S5005, "Unknown compilation input '", $S5006
    concat $S5004, $S5005, "'"
    box $P5039, $S5004
    die $P5039
  unless696_end1573:
    set $S5007, $P103
    iseq $I5006, $S5007, ""
    box $P5043, $I5006
    set $P5042, $P5043
    if $I5006 goto unless699_end1579 
.annotate 'line', 1355
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."exists_stage"($P103)
    set $P5042, $P5041
  unless699_end1579:
    if $P5042 goto unless698_end1577 
    set $S5010, $P103
    concat $S5009, "Unknown compilation target '", $S5010
    concat $S5008, $S5009, "'"
    box $P5044, $S5008
    die $P5044
  unless698_end1577:
.annotate 'line', 1358
    nqp_decontainerize $P5048, _lex_param_0
    $P5049 = $P5048."stages"()
    set $P5045, $P5049
    iter $P5047, $P5049
    new $P5051, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5051, for_handlers1598
    push_eh $P5051
  for_next1599:
    unless $P5047, for_done1601
    shift $P5052, $P5047
  for_redo1600:
    .const 'Sub' $P5050 = 'cuid_239_1365879968.631' 
    capture_lex $P5050
    $P5045 = $P5050($P5052)
    goto for_next1599
  for_handlers1598:
    .get_results ($P5051)
    pop_upto_eh $P5051
    getattribute $P5051, $P5051, 'type'
    eq $P5051, .CONTROL_LOOP_NEXT, for_next1599
    eq $P5051, .CONTROL_LOOP_REDO, for_redo1600
  for_done1601:
    pop_eh 
    find_lex $P5053, "RETURN"
    $P5054 = $P5053($P104)
    goto lexotic_1555
  lexotic_1554:
    .get_results ($P5054)
  lexotic_1555:
    .return ($P5054) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1365879968.631") :anon :lex :outer("cuid_143_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1358
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    find_lex $P5003, "$from"
    set $S5001, $P5003
    isne $I5001, $S5001, ""
    unless $I5001 goto if700_end1581 
.annotate 'line', 1359
    set $S5002, _lex_param_0
    find_lex $P5004, "$from"
    set $S5003, $P5004
    iseq $I5002, $S5002, $S5003
    unless $I5002 goto if701_end1583 
.annotate 'line', 1360
    box $P5005, ""
    store_lex "$from", $P5005
  if701_end1583:
    die 0, .CONTROL_LOOP_NEXT
  if700_end1581:
    time $N5001
    box $P5006, $N5001
    set $P101, $P5006
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    set $S5004, _lex_param_0
    can $I5003, $P5007, $S5004
    unless $I5003 goto if702_else1584 
.annotate 'line', 1366
.annotate 'line', 1367
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "$result"
    find_lex $P5012, "%adverbs"
    set $S5005, _lex_param_0
    $P5013 = $P5009.$S5005($P5011, $P5012 :flat :named)
    store_lex "$result", $P5013
    goto if702_end1585
  if702_else1584:
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    nqp_get_sc_object $P5016, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5017, $P5014, $P5016, "$!backend"
    set $S5006, _lex_param_0
    can $I5004, $P5017, $S5006
    unless $I5004 goto if703_else1586 
.annotate 'line', 1369
.annotate 'line', 1370
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend"
    find_lex $P5022, "$result"
    find_lex $P5023, "%adverbs"
    set $S5007, _lex_param_0
    $P5024 = $P5021.$S5007($P5022, $P5023 :flat :named)
    store_lex "$result", $P5024
    set $P5026, $P5024
    goto if703_end1587
  if703_else1586:
.annotate 'line', 1372
    set $S5010, _lex_param_0
    concat $S5009, "Unknown compilation stage '", $S5010
    concat $S5008, $S5009, "'"
    box $P5025, $S5008
    die $P5025
    set $P5026, $P5025
  if703_end1587:
  if702_end1585:
    time $N5003
    set $N5004, $P101
    sub $N5002, $N5003, $N5004
    box $P5027, $N5002
    set $P102, $P5027
    find_lex $P5028, "$stagestats"
    defined $I5005, $P5028
    unless $I5005 goto if704_end1589 
.annotate 'line', 1376
    find_lex $P5029, "$stderr"
    new $P5030, 'QRPA'
    push $P5030, _lex_param_0
    push $P5030, $P102
    sprintf $S5011, "Stage %-11s: %7.3f", $P5030
    $P5031 = $P5029."print"($S5011)
    find_lex $P5032, "$stagestats"
    set $I5007, $P5032
    band $I5006, $I5007, 4
    unless $I5006 goto if705_end1591 
.annotate 'line', 1378
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    nqp_get_sc_object $P5035, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5036, $P5033, $P5035, "$!backend"
    $P5037 = $P5036."force_gc"()
  if705_end1591:
    find_lex $P5038, "$stagestats"
    set $I5009, $P5038
    band $I5008, $I5009, 2
    unless $I5008 goto if706_end1593 
    find_lex $P5039, "$stderr"
.annotate 'line', 1379
    find_lex $P5041, "self"
    nqp_decontainerize $P5040, $P5041
    nqp_get_sc_object $P5042, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5043, $P5040, $P5042, "$!backend"
    $P5044 = $P5043."vmstat"()
    $P5045 = $P5039."print"($P5044)
  if706_end1593:
    find_lex $P5046, "$stderr"
    $P5047 = $P5046."print"("\n")
    find_lex $P5048, "$stagestats"
    set $I5011, $P5048
    band $I5010, $I5011, 8
    box $P5054, $I5010
    set $P5053, $P5054
    unless $I5010 goto if707_end1595 
.annotate 'line', 1382
    find_lex $P5049, "$stderr"
    $P5050 = $P5049."print"("continue> ")
    find_lex $P5051, "$stdin"
    $P5052 = $P5051."readline"()
    set $P5053, $P5052
  if707_end1595:
  if704_end1589:
    set $S5012, _lex_param_0
    find_lex $P5055, "$target"
    set $S5013, $P5055
    iseq $I5012, $S5012, $S5013
    set $I5013, $I5012
    unless $I5012 goto if708_end1597 
    die 0, .CONTROL_LOOP_LAST
    set $I5013, 0
  if708_end1597:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_144_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1392
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
.sub "parse" :subid("cuid_145_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1396
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1603
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_142, _lex_param_2
    repr_defined $I5001, fb_tmp_142
    unless $I5001 goto if710_else1607 
    set $P5005, fb_tmp_142["transcode"]
    set $P5007, $P5005
    goto if710_end1608
  if710_else1607:
    null $P5006
    set $P5007, $P5006
  if710_end1608:
    unless_null $P5007, vivi_7111609
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_7111609:
    unless $P5007 goto if709_end1606 
.annotate 'line', 1398
.annotate 'line', 1399
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend"
    set fb_tmp_143, _lex_param_2
    repr_defined $I5002, fb_tmp_143
    unless $I5002 goto if712_else1610 
    set $P5012, fb_tmp_143["transcode"]
    set $P5014, $P5012
    goto if712_end1611
  if712_else1610:
    null $P5013
    set $P5014, $P5013
  if712_end1611:
    unless_null $P5014, vivi_7131612
    nqp_get_sc_object $P5015, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5014, $P5015
  vivi_7131612:
    $P5016 = $P5011."apply_transcodings"($P101, $P5014)
    set $P101, $P5016
  if709_end1606:
.annotate 'line', 1401
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."parsegrammar"()
    set $P102, $P5018
    set fb_tmp_144, _lex_param_2
    repr_defined $I5004, fb_tmp_144
    unless $I5004 goto if715_else1615 
    set $P5019, fb_tmp_144["target"]
    set $P5021, $P5019
    goto if715_end1616
  if715_else1615:
    null $P5020
    set $P5021, $P5020
  if715_end1616:
    unless_null $P5021, vivi_7161617
    nqp_get_sc_object $P5022, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5021, $P5022
  vivi_7161617:
    set $S5001, $P5021
    iseq $I5003, $S5001, "parse"
    if $I5003 goto unless714_end1614 
.annotate 'line', 1403
    nqp_decontainerize $P5023, _lex_param_0
    $P5024 = $P5023."parseactions"()
    set $P103, $P5024
  unless714_end1614:
    set fb_tmp_145, _lex_param_2
    repr_defined $I5005, fb_tmp_145
    unless $I5005 goto if718_else1620 
    set $P5025, fb_tmp_145["rxtrace"]
    set $P5027, $P5025
    goto if718_end1621
  if718_else1620:
    null $P5026
    set $P5027, $P5026
  if718_end1621:
    unless_null $P5027, vivi_7191622
    nqp_get_sc_object $P5028, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5027, $P5028
  vivi_7191622:
    unless $P5027 goto if717_end1619 
.annotate 'line', 1404
    get_how $P5029, $P102
    $P5030 = $P5029."trace-on"($P102)
  if717_end1619:
.annotate 'line', 1405
    $P5031 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5031
    set fb_tmp_146, _lex_param_2
    repr_defined $I5006, fb_tmp_146
    unless $I5006 goto if721_else1625 
    set $P5032, fb_tmp_146["rxtrace"]
    set $P5034, $P5032
    goto if721_end1626
  if721_else1625:
    null $P5033
    set $P5034, $P5033
  if721_end1626:
    unless_null $P5034, vivi_7221627
    nqp_get_sc_object $P5035, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5034, $P5035
  vivi_7221627:
    unless $P5034 goto if720_end1624 
.annotate 'line', 1406
    get_how $P5036, $P102
    $P5037 = $P5036."trace-off"($P102)
  if720_end1624:
    if $P104 goto unless723_end1629 
.annotate 'line', 1407
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."panic"("Unable to parse source")
  unless723_end1629:
    find_lex $P5040, "RETURN"
    $P5041 = $P5040($P104)
    goto lexotic_1604
  lexotic_1603:
    .get_results ($P5041)
  lexotic_1604:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_146_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1411
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
.annotate 'line', 1412
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1414
    nqp_get_sc_object $P5003, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93", 12
    $P5004 = $P5003."ACCEPTS"($P101)
    if $P5004 goto unless724_end1631 
.annotate 'line', 1413
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5006, _lex_param_1
    $P5007 = $P5006."name"(_lex_param_1)
    set $S5002, $P5007
    concat $S5001, "Unable to obtain AST from ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless724_end1631:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_147_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1418
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if725_else1632 
.annotate 'line', 1419
.annotate 'line', 1420
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    box $P5004, $S5001
    set $P5003, $P5004
    goto if725_end1633
  if725_else1632:
.annotate 'line', 1422
    box $P5002, "Cannot dump this object; no dump method"
    die $P5002
    set $P5003, $P5002
  if725_end1633:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_148_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1427
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_12 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_12, default1636
    nqp_get_sc_object $P5005, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5005
  default1636:
    unless _lex_param_1 goto if726_end1635 
.annotate 'line', 1428
.annotate 'line', 1429
    $P5001 = "&say"(_lex_param_1)
  if726_end1635:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_149_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1435
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$backver", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_147 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!config"
    set fb_tmp_147, $P5005
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if727_else1637 
    set $P5006, fb_tmp_147["version"]
    set $P5008, $P5006
    goto if727_end1638
  if727_else1637:
    null $P5007
    set $P5008, $P5007
  if727_end1638:
    unless_null $P5008, vivi_7281639
    nqp_get_sc_object $P5009, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5008, $P5009
  vivi_7281639:
    set $P101, $P5008
.annotate 'line', 1437
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend"
    $P5013 = $P5012."version_string"()
    set $P102, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
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
.sub "show-config" :subid("cuid_150_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1442
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_151_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1444
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_240_1365879968.631' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_241_1365879968.631' 
    capture_lex $P5023 
    .lex "$bname", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
.annotate 'line', 1445
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!backend"
    $P5005 = $P5004."name"()
    set $P101, $P5005
.annotate 'line', 1446
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend"
    $P5012 = $P5011."config"()
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next1640:
    unless $P5008, for_done1642
    shift $P5014, $P5008
  for_redo1641:
    .const 'Sub' $P5013 = 'cuid_240_1365879968.631' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next1640
  for_done1642:
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!config"
    set $P5015, $P5020
    iter $P5017, $P5020
  for_next1643:
    unless $P5017, for_done1645
    shift $P5022, $P5017
  for_redo1644:
    .const 'Sub' $P5021 = 'cuid_241_1365879968.631' 
    capture_lex $P5021
    $P5015 = $P5021($P5022)
    goto for_next1643
  for_done1645:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1365879968.631") :anon :lex :outer("cuid_151_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1446
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$bname"
    set $S5005, $P5001
    concat $S5004, $S5005, "::"
.annotate 'line', 1447
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
.sub "" :subid("cuid_241_1365879968.631") :anon :lex :outer("cuid_151_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1449
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1450
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
.sub "nqpevent" :subid("cuid_152_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1455
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@pos", _lex_param_1 
.annotate 'line', 1456
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend"
    $P5004 = $P5003."nqpevent"(_lex_param_1 :flat)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_153_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1459
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_242_1365879968.631' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'QRPA'
    set $P101, $P5001
    new $P5002, 'ResizableStringArray'
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1648:
    unless $P5005, for_done1650
    shift $P5010, $P5005
  for_redo1649:
    .const 'Sub' $P5009 = 'cuid_242_1365879968.631' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1648
  for_done1650:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1365879968.631") :anon :lex :outer("cuid_153_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1461
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if729_end1647 
.annotate 'line', 1462
.annotate 'line', 1463
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if729_end1647:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_154_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1469
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_243_1365879968.631' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_244_1365879968.631' 
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
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    new $P5003, 'QRPA'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1651
    .lex "RETURN", $P104
    set fb_tmp_148, _lex_param_2
    repr_defined $I5001, fb_tmp_148
    unless $I5001 goto if731_else1655 
    set $P5004, fb_tmp_148["before"]
    set $P5006, $P5004
    goto if731_end1656
  if731_else1655:
    null $P5005
    set $P5006, $P5005
  if731_end1656:
    unless_null $P5006, vivi_7321657
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5006, $P5007
  vivi_7321657:
    unless $P5006 goto if730_else1653 
.annotate 'line', 1472
    set fb_tmp_149, _lex_param_2
    repr_defined $I5002, fb_tmp_149
    unless $I5002 goto if733_else1658 
    set $P5008, fb_tmp_149["before"]
    set $P5010, $P5008
    goto if733_end1659
  if733_else1658:
    null $P5009
    set $P5010, $P5009
  if733_end1659:
    unless_null $P5010, vivi_7341660
    nqp_get_sc_object $P5011, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5010, $P5011
  vivi_7341660:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if730_end1654
  if730_else1653:
    set fb_tmp_150, _lex_param_2
    repr_defined $I5003, fb_tmp_150
    unless $I5003 goto if736_else1663 
    set $P5013, fb_tmp_150["after"]
    set $P5015, $P5013
    goto if736_end1664
  if736_else1663:
    null $P5014
    set $P5015, $P5014
  if736_end1664:
    unless_null $P5015, vivi_7371665
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5015, $P5016
  vivi_7371665:
    unless $P5015 goto if735_else1661 
.annotate 'line', 1475
    set fb_tmp_151, _lex_param_2
    repr_defined $I5004, fb_tmp_151
    unless $I5004 goto if738_else1666 
    set $P5017, fb_tmp_151["after"]
    set $P5019, $P5017
    goto if738_end1667
  if738_else1666:
    null $P5018
    set $P5019, $P5018
  if738_end1667:
    unless_null $P5019, vivi_7391668
    nqp_get_sc_object $P5020, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5019, $P5020
  vivi_7391668:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if735_end1662
  if735_else1661:
    .const 'Sub' $P5022 = 'cuid_243_1365879968.631' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if735_end1662:
  if730_end1654:
    new $P5025, 'ResizableStringArray'
    set $P103, $P5025
.annotate 'line', 1485
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1673:
    unless $P5028, for_done1675
    shift $P5032, $P5028
  for_redo1674:
    .const 'Sub' $P5031 = 'cuid_244_1365879968.631' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1673
  for_done1675:
.annotate 'line', 1498
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1652
  lexotic_1651:
    .get_results ($P5034)
  lexotic_1652:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1365879968.631") :anon :lex :outer("cuid_154_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1478
    .lex "@new-stages", $P101 
    new $P5001, 'QRPA'
    set $P101, $P5001
.annotate 'line', 1479
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1481
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1365879968.631") :anon :lex :outer("cuid_154_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1485
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if740_else1669 
.annotate 'line', 1486
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if741_else1671 
.annotate 'line', 1487
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if741_end1672
  if741_else1671:
.annotate 'line', 1490
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if741_end1672:
    set $P5011, $P5009
    goto if740_end1670
  if740_else1669:
.annotate 'line', 1494
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if740_end1670:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_155_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1501
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_245_1365879968.631' 
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
    new $P5001, 'QRPA'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    new $P5004, 'QRPA'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_152, $P101
    repr_defined $I5001, fb_tmp_152
    unless $I5001 goto if742_else1676 
    set $P5006, fb_tmp_152[0]
    set $P5008, $P5006
    goto if742_end1677
  if742_else1676:
    null $P5007
    set $P5008, $P5007
  if742_end1677:
    unless_null $P5008, vivi_7431678
    nqp_get_sc_object $P5009, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5008, $P5009
  vivi_7431678:
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
    unless $I5003 goto if744_end1680 
.annotate 'line', 1507
    set fb_tmp_153, $P101
    repr_defined $I5004, fb_tmp_153
    unless $I5004 goto if745_else1681 
    set $P5012, fb_tmp_153[0]
    set $P5014, $P5012
    goto if745_end1682
  if745_else1681:
    null $P5013
    set $P5014, $P5013
  if745_end1682:
    unless_null $P5014, vivi_7461683
    nqp_get_sc_object $P5015, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5014, $P5015
  vivi_7461683:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_154, $P101
    repr_defined $I5005, fb_tmp_154
    unless $I5005 goto if747_else1684 
    set $P5017, fb_tmp_154[-1]
    set $P5019, $P5017
    goto if747_end1685
  if747_else1684:
    null $P5018
    set $P5019, $P5018
  if747_end1685:
    unless_null $P5019, vivi_7481686
    nqp_get_sc_object $P5020, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5019, $P5020
  vivi_7481686:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if744_end1680:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1689:
    unless $P5024, for_done1691
    shift $P5026, $P5024
  for_redo1690:
    .const 'Sub' $P5025 = 'cuid_245_1365879968.631' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1689
  for_done1691:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1365879968.631") :anon :lex :outer("cuid_155_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1515
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless749_end1688 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless749_end1688:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_156_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1521
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 :named("cache") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_246_1365879968.631' 
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
    if haz_param_13, default1719
    set $I5013, 0
    set _lex_param_3, $I5013
  default1719:
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    unless _lex_param_3 goto if750_end1693 
.annotate 'line', 1523
    find_dynamic_lex $P5002, "$*LINEPOSCACHE"
    unless_null $P5002, fallback1694
    nqp_get_sc_object $P5004, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5003, $P5004
    set fb_tmp_155, $P5003
    repr_defined $I5001, fb_tmp_155
    unless $I5001 goto if751_else1695 
    set $P5005, fb_tmp_155["$LINEPOSCACHE"]
    set $P5007, $P5005
    goto if751_end1696
  if751_else1695:
    null $P5006
    set $P5007, $P5006
  if751_end1696:
    unless_null $P5007, vivi_7521697
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_7521697:
    unless_null $P5007, vivi_7531698
    die "Contextual $*LINEPOSCACHE not found"
    box $P5009, "Contextual $*LINEPOSCACHE not found"
    set $P5007, $P5009
  vivi_7531698:
    set $P5002, $P5007
  fallback1694:
    set $P101, $P5002
  if750_end1693:
    defined $I5002, $P101
    if $I5002 goto unless754_end1700 
    .const 'Sub' $P5010 = 'cuid_246_1365879968.631' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless754_end1700:
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while759_test1712:
    islt $I5004, $I101, $I102
    set $I5011, $I5004
    unless $I5004 goto while759_done1716 
  while759_redo1714:
.annotate 'line', 1558
    add $I5006, $I101, $I102
    div $I5005, $I5006, 2
    set $I103, $I5005
    set $I5008, $P101[$I103]
    isgt $I5007, $I5008, _lex_param_2
    unless $I5007 goto if760_else1717 
.annotate 'line', 1560
    set $I102, $I103
    set $I5010, $I102
    goto if760_end1718
  if760_else1717:
.annotate 'line', 1562
    add $I5009, $I103, 1
    set $I101, $I5009
    set $I5010, $I101
  if760_end1718:
    set $I5011, $I5010
    goto while759_test1712 
  while759_done1716:
    add $I5012, $I101, 1
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1365879968.631") :anon :lex :outer("cuid_156_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1527
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
    unless $I5001 goto if755_end1702 
.annotate 'line', 1530
    find_lex $P5002, "$linepos"
    store_dynamic_lex "$*LINEPOSCACHE", $P5002
  if755_end1702:
    find_lex $P5003, "$target"
    set $S5001, $P5003
    set $S101, $S5001
    length $I5002, $S101
    set $I101, $I5002
    set $I102, 0
  while756_test1703:
    find_cclass $I5004, 4096, $S101, $I102, $I101
    set $I102, $I5004
    islt $I5003, $I102, $I101
    set $I5013, $I5003
    unless $I5003 goto while756_done1707 
  while756_redo1705:
.annotate 'line', 1541
    ord $I5005, $S101, $I102
    set $I103, $I5005
    add $I5006, $I102, 1
    set $I102, $I5006
    find_lex $P5004, "$linepos"
    push $P5004, $I102
    iseq $I5007, $I103, 13
    set $I5010, $I5007
    unless $I5007 goto if758_end1711 
    ord $I5009, $S101, $I102
    iseq $I5008, $I5009, 10
    set $I5010, $I5008
  if758_end1711:
    set $I5012, $I5010
    unless $I5010 goto if757_end1709 
.annotate 'line', 1547
    add $I5011, $I102, 1
    set $I102, $I5011
    set $I5012, $I102
  if757_end1709:
    set $I5013, $I5012
    goto while756_test1703 
  while756_done1707:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_157_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1570
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1720
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1720:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_158_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1573
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_159_1365879968.631") :anon :lex :outer("cuid_220_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1574
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1672
    .const 'Sub' $P5006 = 'cuid_160_1365879968.631' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_161_1365879968.631' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_162_1365879968.631' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_163_1365879968.631' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_164_1365879968.631' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_160_1365879968.631' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_161_1365879968.631' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_162_1365879968.631' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_163_1365879968.631' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_164_1365879968.631' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_160_1365879968.631") :anon :lex :outer("cuid_247_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1676
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    new $P5003, 'QRPA'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_161_1365879968.631") :anon :lex :outer("cuid_247_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1681
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_162_1365879968.631") :anon :lex :outer("cuid_247_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1682
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_163_1365879968.631") :anon :lex :outer("cuid_247_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1684
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_164_1365879968.631") :anon :lex :outer("cuid_247_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1688
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
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if761_else1721 
.annotate 'line', 1691
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options"
    set fb_tmp_156, $P5006
    repr_defined $I5003, fb_tmp_156
    unless $I5003 goto if763_else1725 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_156[$S5002]
    set $P5009, $P5007
    goto if763_end1726
  if763_else1725:
    null $P5008
    set $P5009, $P5008
  if763_end1726:
    unless_null $P5009, vivi_7641727
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_7641727:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if762_else1723 
.annotate 'line', 1692
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options"
    set fb_tmp_157, $P5013
    repr_defined $I5004, fb_tmp_157
    unless $I5004 goto if765_else1728 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_157[$S5003]
    set $P5016, $P5014
    goto if765_end1729
  if765_else1728:
    null $P5015
    set $P5016, $P5015
  if765_end1729:
    unless_null $P5016, vivi_7661730
    nqp_get_sc_object $P5017, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5016, $P5017
  vivi_7661730:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if762_end1724
  if762_else1723:
.annotate 'line', 1694
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options"
    set $S5004, _lex_param_1
    new $P5021, 'QRPA'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options"
    set fb_tmp_158, $P5024
    repr_defined $I5005, fb_tmp_158
    unless $I5005 goto if767_else1731 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_158[$S5005]
    set $P5027, $P5025
    goto if767_end1732
  if767_else1731:
    null $P5026
    set $P5027, $P5026
  if767_end1732:
    unless_null $P5027, vivi_7681733
    nqp_get_sc_object $P5028, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5027, $P5028
  vivi_7681733:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if762_end1724:
    set $P5033, $P5029
    goto if761_end1722
  if761_else1721:
.annotate 'line', 1697
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options"
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if761_end1722:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1703
    .const 'Sub' $P5011 = 'cuid_165_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_166_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_167_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_168_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_169_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_170_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_171_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_172_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_173_1365879968.631' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_174_1365879968.631' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_165_1365879968.631' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_166_1365879968.631' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_167_1365879968.631' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_168_1365879968.631' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_169_1365879968.631' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_170_1365879968.631' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_171_1365879968.631' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_172_1365879968.631' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_173_1365879968.631' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_174_1365879968.631' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_165_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1709
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
.annotate 'line', 1710
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1711
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_166_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1715
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_167_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_249_1365879968.631' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_14, default1737
    new $P5022, 'QRPA'
    set _lex_param_1, $P5022
  default1737:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    new $P5003, 'QRPA'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1734:
    unless $P5019, for_done1736
    shift $P5021, $P5019
  for_redo1735:
    .const 'Sub' $P5020 = 'cuid_249_1365879968.631' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1734
  for_done1736:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_249_1365879968.631") :anon :lex :outer("cuid_167_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1725
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1726
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_168_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1729
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_169_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1733
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
.sub "add-spec" :subid("cuid_170_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1738
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_250_1365879968.631' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    new $P5003, 'QRPA'
    set $P103, $P5003
    set $S5001, _lex_param_1
    index $I5001, $S5001, "=", 0
    box $P5004, $I5001
    set $P101, $P5004
    set $N5001, $P101
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    unless $I5002 goto if769_else1738 
.annotate 'line', 1742
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1744
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if769_end1739
  if769_else1738:
.annotate 'line', 1745
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1747
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if769_end1739:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1740:
    unless $P5013, for_done1742
    shift $P5015, $P5013
  for_redo1741:
    .const 'Sub' $P5014 = 'cuid_250_1365879968.631' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1740
  for_done1742:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_250_1365879968.631") :anon :lex :outer("cuid_170_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1749
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_171_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1755
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1743
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless771_end1748 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless771_end1748:
    unless $I5003 goto if770_end1746 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if770_end1746:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if772_end1750 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if772_end1750:
    box $P5005, 0
    goto lexotic_1744
  lexotic_1743:
    .get_results ($P5005)
  lexotic_1744:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_172_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1761
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_159 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_159, $P5004
    repr_defined $I5001, fb_tmp_159
    unless $I5001 goto if773_else1751 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_159[$S5001]
    set $P5007, $P5005
    goto if773_end1752
  if773_else1751:
    null $P5006
    set $P5007, $P5006
  if773_end1752:
    unless_null $P5007, vivi_7741753
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_7741753:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_173_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1766
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_160 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_160, $P5004
    repr_defined $I5001, fb_tmp_160
    unless $I5001 goto if775_else1754 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_160[$S5001]
    set $P5007, $P5005
    goto if775_end1755
  if775_else1754:
    null $P5006
    set $P5007, $P5006
  if775_end1755:
    unless_null $P5007, vivi_7761756
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_7761756:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_174_1365879968.631") :anon :lex :outer("cuid_248_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1771
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_251_1365879968.631' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_252_1365879968.631' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_254_1365879968.631' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_251_1365879968.631' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_252_1365879968.631' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1770
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1775
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    $P5009 = $P5008."new"()
    set $P103, $P5009
.annotate 'line', 1776
    $P103."init"()
  while783_test1772:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto while783_done1776 
  while783_redo1774:
    .const 'Sub' $P5010 = 'cuid_254_1365879968.631' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while783_test1772 
  while783_done1776:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P103)
    goto lexotic_1771
  lexotic_1770:
    .get_results ($P5015)
  lexotic_1771:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_251_1365879968.631") :anon :lex :outer("cuid_174_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1779
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
    unless $I5001 goto if777_else1757 
.annotate 'line', 1780
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if777_end1758
  if777_else1757:
.annotate 'line', 1782
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
    unless $I5002 goto if778_else1759 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_161[$I5003]
    set $P5008, $P5005
    goto if778_end1760
  if778_else1759:
    null $P5007
    set $P5008, $P5007
  if778_end1760:
    unless_null $P5008, vivi_7791761
    nqp_get_sc_object $P5009, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5008, $P5009
  vivi_7791761:
    set $P5010, $P5008
  if777_end1758:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_252_1365879968.631") :anon :lex :outer("cuid_174_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1790
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
  while780_test1762:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while780_done1766 
  while780_redo1764:
.annotate 'line', 1792
.annotate 'line', 1793
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_162, $P5004
    repr_defined $I5002, fb_tmp_162
    unless $I5002 goto if781_else1767 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_162[$I5003]
    set $P5008, $P5005
    goto if781_end1768
  if781_else1767:
    null $P5007
    set $P5008, $P5007
  if781_end1768:
    unless_null $P5008, vivi_7821769
    nqp_get_sc_object $P5009, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5008, $P5009
  vivi_7821769:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_7, $P5010
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_7
    goto while780_test1762 
  while780_done1766:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1365879968.631") :anon :lex :outer("cuid_174_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1798
    .const 'Sub' $P5033 = 'cuid_253_1365879968.631' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_257_1365879968.631' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_170 
    .local pmc tmp_9 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_163, $P5002
    repr_defined $I5001, fb_tmp_163
    unless $I5001 goto if784_else1777 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_163[$I5002]
    set $P5006, $P5003
    goto if784_end1778
  if784_else1777:
    null $P5005
    set $P5006, $P5005
  if784_end1778:
    unless_null $P5006, vivi_7851779
    nqp_get_sc_object $P5007, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5006, $P5007
  vivi_7851779:
    set $P101, $P5006
.annotate 'line', 1800
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if786_else1780 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if787_else1782 
    .const 'Sub' $P5011 = 'cuid_253_1365879968.631' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if787_end1783
  if787_else1782:
    .const 'Sub' $P5013 = 'cuid_257_1365879968.631' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if787_end1783:
    goto if786_end1781
  if786_else1780:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper"
    set fb_tmp_170, $P5019
    repr_defined $I5004, fb_tmp_170
    unless $I5004 goto if818_else1840 
    set $S5003, $P101
    set $P5020, fb_tmp_170[$S5003]
    set $P5022, $P5020
    goto if818_end1841
  if818_else1840:
    null $P5021
    set $P5022, $P5021
  if818_end1841:
    unless_null $P5022, vivi_8191842
    nqp_get_sc_object $P5023, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5022, $P5023
  vivi_8191842:
    unless $P5022 goto if817_else1838 
.annotate 'line', 1859
.annotate 'line', 1860
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if817_end1839
  if817_else1838:
.annotate 'line', 1861
.annotate 'line', 1862
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg"
    set $P5031, $P5029
    unless $P5029 goto if820_end1844 
.annotate 'line', 1863
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if820_end1844:
    set $P5032, $P5031
  if817_end1839:
  if786_end1781:
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
.sub "" :subid("cuid_253_1365879968.631") :anon :lex :outer("cuid_254_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1801
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_164 
    .local pmc fb_tmp_165 
    .local pmc fb_tmp_166 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_164, $P5005
    repr_defined $I5001, fb_tmp_164
    unless $I5001 goto if788_else1784 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_164[$I5002]
    set $P5009, $P5006
    goto if788_end1785
  if788_else1784:
    null $P5008
    set $P5009, $P5008
  if788_end1785:
    unless_null $P5009, vivi_7891786
    nqp_get_sc_object $P5010, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5009, $P5010
  vivi_7891786:
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
    unless $I5004 goto if790_else1787 
.annotate 'line', 1808
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
    goto if790_end1788
  if790_else1787:
.annotate 'line', 1812
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if791_end1790 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if791_end1790:
  if790_end1788:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options"
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless792_end1792 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless792_end1792:
.annotate 'line', 1817
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if794_end1796 
    set $P5032, $P104
  if794_end1796:
    unless $P5032 goto if793_end1794 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if793_end1794:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if796_end1800 
.annotate 'line', 1818
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if796_end1800:
    unless $P5038 goto if795_end1798 
.annotate 'line', 1819
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if795_end1798:
.annotate 'line', 1821
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper"
    set fb_tmp_165, $P5045
    repr_defined $I5010, fb_tmp_165
    unless $I5010 goto if798_else1803 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_165[$S5016]
    set $P5048, $P5046
    goto if798_end1804
  if798_else1803:
    null $P5047
    set $P5048, $P5047
  if798_end1804:
    unless_null $P5048, vivi_7991805
    nqp_get_sc_object $P5049, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5048, $P5049
  vivi_7991805:
    set $P5059, $P5048
    unless $P5048 goto if797_end1802 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_166, $P5050
    repr_defined $I5011, fb_tmp_166
    unless $I5011 goto if800_else1806 
    set $P5052, fb_tmp_166["slurp-rest"]
    set $P5054, $P5052
    goto if800_end1807
  if800_else1806:
    null $P5053
    set $P5054, $P5053
  if800_end1807:
    unless_null $P5054, vivi_8021809
    nqp_get_sc_object $P5057, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_8011808
    nqp_get_sc_object $P5058, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5055, $P5058
  vivi_8011808:
    set $P5054, $P5055
  vivi_8021809:
    set $P5059, $P5054
  if797_end1802:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_257_1365879968.631") :anon :lex :outer("cuid_254_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1823
    .const 'Sub' $P5036 = 'cuid_256_1365879968.631' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_167 
    .local pmc fb_tmp_168 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    unless $I5002 goto if803_else1810 
.annotate 'line', 1826
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set fb_tmp_167, $P5009
    repr_defined $I5003, fb_tmp_167
    unless $I5003 goto if805_else1814 
    set $S5004, $P101
    set $P5010, fb_tmp_167[$S5004]
    set $P5012, $P5010
    goto if805_end1815
  if805_else1814:
    null $P5011
    set $P5012, $P5011
  if805_end1815:
    unless_null $P5012, vivi_8061816
    nqp_get_sc_object $P5013, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5012, $P5013
  vivi_8061816:
    if $P5012 goto unless804_end1813 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless804_end1813:
.annotate 'line', 1829
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if807_else1817 
.annotate 'line', 1830
    find_lex $P5018, "$result"
.annotate 'line', 1831
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if807_end1818
  if807_else1817:
.annotate 'line', 1832
.annotate 'line', 1833
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if807_end1818:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper"
    set fb_tmp_168, $P5026
    repr_defined $I5004, fb_tmp_168
    unless $I5004 goto if809_else1821 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_168[$S5009]
    set $P5029, $P5027
    goto if809_end1822
  if809_else1821:
    null $P5028
    set $P5029, $P5028
  if809_end1822:
    unless_null $P5029, vivi_8101823
    nqp_get_sc_object $P5030, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5029, $P5030
  vivi_8101823:
    set $P5032, $P5029
    unless $P5029 goto if808_end1820 
.annotate 'line', 1835
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if808_end1820:
    set $P5035, $P5032
    goto if803_end1811
  if803_else1810:
    .const 'Sub' $P5033 = 'cuid_256_1365879968.631' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if803_end1811:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_256_1365879968.631") :anon :lex :outer("cuid_257_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1836
    .const 'Sub' $P5009 = 'cuid_255_1365879968.631' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while811_handlers1827
    push_eh $P5007
  while811_test1824:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while811_done1828 
  while811_redo1826:
    .const 'Sub' $P5004 = 'cuid_255_1365879968.631' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while811_test1824 
  while811_handlers1827:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while811_test1824
    eq $P5007, .CONTROL_LOOP_REDO, while811_redo1826
  while811_done1828:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_255_1365879968.631") :anon :lex :outer("cuid_256_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1838
    .lex "$o", $P101 
    .local pmc fb_tmp_169 
    .local pmc tmp_8 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
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
    nqp_get_sc_object $P5007, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options"
    set fb_tmp_169, $P5008
    repr_defined $I5002, fb_tmp_169
    unless $I5002 goto if813_else1831 
    set $S5003, $P101
    set $P5009, fb_tmp_169[$S5003]
    set $P5011, $P5009
    goto if813_end1832
  if813_else1831:
    null $P5010
    set $P5011, $P5010
  if813_end1832:
    unless_null $P5011, vivi_8141833
    nqp_get_sc_object $P5012, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5011, $P5012
  vivi_8141833:
    unless $P5011 goto if812_else1829 
.annotate 'line', 1840
.annotate 'line', 1841
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if815_else1834 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if816_end1837 
.annotate 'line', 1842
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if816_end1837:
.annotate 'line', 1845
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
    goto if815_end1835
  if815_else1834:
.annotate 'line', 1848
.annotate 'line', 1849
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if815_end1835:
    goto if812_end1830
  if812_else1829:
.annotate 'line', 1852
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if812_end1830:
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
.sub "" :subid("cuid_258_1365879968.631") :anon :lex :outer("cuid_201_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1893
    .const 'Sub' $P5014 = 'cuid_175_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_176_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_177_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_178_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_179_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_180_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_181_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_182_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_183_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_184_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_185_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_186_1365879968.631' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_187_1365879968.631' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_175_1365879968.631' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_176_1365879968.631' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_177_1365879968.631' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_178_1365879968.631' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_179_1365879968.631' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_180_1365879968.631' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_181_1365879968.631' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_182_1365879968.631' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_183_1365879968.631' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_184_1365879968.631' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_185_1365879968.631' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_186_1365879968.631' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_187_1365879968.631' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_175_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1924
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
    if haz_param_15, default1856
    box $P5046, "<unknown>"
    set _lex_param_2, $P5046
  default1856:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    new $P5011, 'QRPA'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    new $P5014, 'QRPA'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    find_dynamic_lex $P5017, "%*COMPILING"
    unless_null $P5017, fallback1849
    nqp_get_sc_object $P5019, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    get_who $P5018, $P5019
    set pkg_viv_tmp_16, $P5018
    set fb_tmp_173, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_173
    unless $I5003 goto if823_else1850 
    set $P5020, fb_tmp_173["%COMPILING"]
    set $P5022, $P5020
    goto if823_end1851
  if823_else1850:
    null $P5021
    set $P5022, $P5021
  if823_end1851:
    unless_null $P5022, vivi_8241852
    new $P5023, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5023
    set $P5022, $P5023
  vivi_8241852:
    unless_null $P5022, vivi_8251853
    die "Contextual %*COMPILING not found"
    box $P5024, "Contextual %*COMPILING not found"
    set $P5022, $P5024
  vivi_8251853:
    set $P5017, $P5022
  fallback1849:
    set fb_tmp_172, $P5017
    repr_defined $I5002, fb_tmp_172
    unless $I5002 goto if822_else1847 
    set $P5025, fb_tmp_172["%?OPTIONS"]
    set $P5027, $P5025
    goto if822_end1848
  if822_else1847:
    null $P5026
    set $P5027, $P5026
  if822_end1848:
    unless_null $P5027, vivi_8261854
    nqp_get_sc_object $P5028, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5027, $P5028
  vivi_8261854:
    set fb_tmp_171, $P5027
    repr_defined $I5001, fb_tmp_171
    unless $I5001 goto if821_else1845 
    set $P5029, fb_tmp_171["precomp"]
    set $P5031, $P5029
    goto if821_end1846
  if821_else1845:
    null $P5030
    set $P5031, $P5030
  if821_end1846:
    unless_null $P5031, vivi_8271855
    nqp_get_sc_object $P5032, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5031, $P5032
  vivi_8271855:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5031
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    box $P5035, 0
    repr_bind_attr_obj $P5033, $P5034, "$!num_code_refs", $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    new $P5038, 'QRPA'
    repr_bind_attr_obj $P5036, $P5037, "$!code_ref_blocks", $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc"
    $P5042 = $P5041."set_description"(_lex_param_2)
    nqp_decontainerize $P5043, _lex_param_0
    nqp_get_sc_object $P5044, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!sc"
    nqp_push_compiling_sc $P5045
    .return ($P5045) 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_176_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1941
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .local pmc fb_tmp_174 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!addr_to_slot"
    set fb_tmp_174, $P5004
    repr_defined $I5001, fb_tmp_174
    unless $I5001 goto if828_else1857 
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5005, fb_tmp_174[$S5001]
    set $P5007, $P5005
    goto if828_end1858
  if828_else1857:
    null $P5006
    set $P5007, $P5006
  if828_end1858:
    unless_null $P5007, vivi_8291859
    nqp_get_sc_object $P5008, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P5007, $P5008
  vivi_8291859:
    set $P101, $P5007
    defined $I5003, $P101
    if $I5003 goto unless830_end1861 
.annotate 'line', 1943
    box $P5009, "slot_for_object called on object not in context"
    die $P5009
  unless830_end1861:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_177_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1950
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_178_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1959
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 1962
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_179_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1968
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_180_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1973
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_181_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1979
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_16 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_17 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_16, default1868
    nqp_get_sc_object $P5015, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5015
  default1868:
    if haz_param_17, default1869
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_2, $P5016
  default1869:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if831_else1862 
.annotate 'line', 1980
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if832_end1865 
.annotate 'line', 1981
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if832_end1865:
    set $P5014, $P5008
    goto if831_end1863
  if831_else1862:
.annotate 'line', 1983
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if833_end1867 
.annotate 'line', 1984
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if833_end1867:
    set $P5014, $P5013
  if831_end1863:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_182_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1990
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_18 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_19 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_18, default1876
    nqp_get_sc_object $P5015, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_1, $P5015
  default1876:
    if haz_param_19, default1877
    nqp_get_sc_object $P5016, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979", 25
    set _lex_param_2, $P5016
  default1877:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if834_else1870 
.annotate 'line', 1991
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if835_end1873 
.annotate 'line', 1992
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if835_end1873:
    set $P5014, $P5008
    goto if834_end1871
  if834_else1870:
.annotate 'line', 1994
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if836_end1875 
.annotate 'line', 1995
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if836_end1875:
    set $P5014, $P5013
  if834_end1871:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_183_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2000
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_184_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2005
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_185_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2009
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_186_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2014
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_187_1365879968.631") :anon :lex :outer("cuid_258_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2019
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1365879968.631") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_259_1365879968.631' 
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
    .const 'Sub' $P5001 = "cuid_201_1365879968.631" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\gen\\NQPHLL.pm")
    new $P5003, 'QRPA'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "QAST"
    push $P5004, "QRegex"
    push $P5004, "NQPCursorRole"
    push $P5004, "CB6D7C261AAF0D8B4B26A009A161E31DD17426AF-1365879963.875"
    push $P5004, "src\\stage2\\QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "D36D7A49EFB8A9F0BFC5D1E2F9B2F549157B62F8-1365879959.979"
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
    push $P5004, "alt_nfa__1_1365879968.77"
    push $P5004, "alt_nfa__2_1365879968.804"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1365879968.878"
    push $P5004, "alt_nfa__4_1365879968.878"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1365879968.899"
    push $P5004, "Ee"
    push $P5004, "alt_nfa__6_1365879968.982"
    push $P5004, "alt_nfa__7_1365879968.997"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1365879969.039"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1365879969.082"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "240369A269C8B2F7269F4921670E12E13C5F801B-1365879956.051"
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
    push $P5004, "F054B153354B5DBC27BD80BD112E1D4B6145EB63-1365879961.93"
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
    .const 'Sub' $P5005 = 'cuid_259_1365879968.631' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BAAAAEAAAAAFAAAAaAAAABEAAAA0AQAA1iMAAAMBAAAGNAAA2NcAAAEAAADw1wAAAQAAAADYAAAi2AAAAAAAAAUAAAAGAAAADgAAAA8AAAAZAQAAAAAAABwBAAAdAQAALQEAAC4BAAABAAAAAAAAAL4AAAABAAAAGgEAAHYBAAABAAAA0gEAACACAAABAAAAfAIAANQJAAABAAAAbAsAACgOAAABAAAAkA4AAIgQAACsAAAA8BAAAD4RAAABAAAAPhEAAIwUAAABAAAAUBYAAIQXAAABAAAAHBgAAIgZAAABAAAAXBoAAAAcAAABAAAAVB0AALoeAAABAAAAFh8AAHIfAAABAAAAzh8AAHAgAACsAAAAzCAAABYhAAABAAAAFiEAAIAhAAABAAAA3CEAAEYiAAAAAAAAxgAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAAAAAMcAAAADAAAAAgAAAAAAyAAAAAQAAAACAAEAAAAhAAAABwAAAAIAAQAAAFYAAAAIAAAAAgABAAAAZAAAAAkAAAACAAEAAABqAAAACgAAAAIAAQAAAG4AAAALAAAAAgAAAAAAyQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAP////////////////////8AAAAAygAAAAAAAAABAAAACgABAAAADAAAAAIAAAAAAAIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwD/////////////////////AAAAAMsAAAAAAAAAAgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAAzAAAAAAAAAADAAAACgAAAAAACgB+AAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAmAAAAGAAAAAIAAgAAACgAAAAZAAAAAgABAAAAZQAAABoAAAACAAEAAABmAAAAGwAAAAIAAQAAAGcAAAAcAAAAAgABAAAAaAAAAB0AAAACAAEAAABpAAAAHgAAAAIAAQAAAHsAAAAfAAAAAgABAAAAfAAAACAAAAACAAEAAAB9AAAAIQAAAAIAAQAAAH4AAAAiAAAAAgABAAAAfwAAACMAAAACAAEAAACAAAAAJAAAAAIAAQAAAIEAAAAlAAAAAgABAAAAggAAACYAAAACAAEAAACDAAAAJwAAAAIAAQAAAIQAAAAoAAAAAgABAAAAhQAAACkAAAACAAEAAACGAAAAKgAAAAIAAQAAAIcAAAArAAAAAgABAAAAiAAAACwAAAACAAEAAACJAAAALQAAAAIAAQAAAIoAAAAuAAAAAgABAAAAiwAAAC8AAAACAAEAAACMAAAAMAAAAAIAAQAAAI0AAAAxAAAAAgABAAAAjgAAADIAAAACAAEAAACPAAAAMwAAAAIAAQAAAJAAAAA0AAAAAgABAAAAkQAAADUAAAACAAEAAACSAAAANgAAAAIAAQAAAJMAAAA3AAAAAgABAAAAlAAAADgAAAACAAEAAACVAAAAOQAAAAIAAQAAAJYAAAA6AAAAAgABAAAAlwAAADsAAAACAAEAAACYAAAAPAAAAAIAAQAAAJkAAAA9AAAAAgABAAAAmgAAAD4AAAACAAEAAACbAAAAPwAAAAIAAQAAAJwAAABAAAAAAgABAAAAnQAAAEEAAAACAAEAAACeAAAAQgAAAAIAAQAAAJ8AAABDAAAAAgABAAAAoAAAAEQAAAACAAEAAAChAAAARQAAAAIAAQAAAKIAAABGAAAAAgABAAAAowAAAEcAAAACAAEAAACkAAAASAAAAAIAAQAAAKUAAABJAAAAAgABAAAApgAAAEoAAAACAAEAAACnAAAASwAAAAIAAQAAAKgAAABMAAAAAgABAAAAqQAAAE0AAAACAAEAAACqAAAATgAAAAIAAQAAAKsAAABPAAAAAgABAAAArAAAAFAAAAACAAAAAAA2AAAAUQAAAAIAAAAAAAQAAABSAAAAAgAAAAAABQAAAFMAAAACAAAAAAAGAAAAVAAAAAIAAAAAAAcAAABVAAAAAgAAAAAACAAAAFYAAAACAAAAAAAJAAAAVwAAAAIAAAAAAAoAAABYAAAAAgAAAAAACwAAAFkAAAACAAAAAAAMAAAAWgAAAAIAAAAAAA0AAABbAAAAAgAAAAAADgAAAFwAAAACAAAAAAAPAAAAXQAAAAIAAAAAABAAAABeAAAAAgAAAAAAEQAAAF8AAAACAAAAAAASAAAAYAAAAAIAAAAAABMAAABhAAAAAgAAAAAAFAAAAGIAAAACAAAAAAAVAAAAYwAAAAIAAAAAABYAAABkAAAAAgAAAAAAFwAAAGUAAAACAAAAAAAYAAAAZgAAAAIAAAAAABkAAABnAAAAAgAAAAAAGgAAAGgAAAACAAAAAAAbAAAAaQAAAAIAAAAAABwAAABqAAAAAgAAAAAAHQAAAGsAAAACAAAAAAAeAAAAbAAAAAIAAAAAAB8AAABtAAAAAgAAAAAAIAAAAG4AAAACAAAAAAAhAAAAbwAAAAIAAAAAACIAAABwAAAAAgAAAAAAIwAAAHEAAAACAAAAAAAkAAAAcgAAAAIAAAAAACUAAABzAAAAAgAAAAAAJgAAAHQAAAACAAAAAAAnAAAAdQAAAAIAAAAAACgAAAB2AAAAAgAAAAAAKQAAAHcAAAACAAAAAAAqAAAAeAAAAAIAAAAAACsAAAB5AAAAAgAAAAAALAAAAHoAAAACAAAAAAAtAAAAewAAAAIAAAAAADAAAAB8AAAAAgAAAAAAMgAAAH0AAAACAAAAAAAzAAAAfgAAAAIAAAAAADQAAAB/AAAAAgAAAAAANQAAAIAAAAACAAAAAAA3AAAAgQAAAAIAAAAAADgAAACCAAAAAgAAAAAAOQAAAIMAAAACAAAAAAA6AAAAhAAAAAIAAAAAADsAAACFAAAAAgAAAAAAPAAAAIYAAAACAAAAAAA9AAAAhwAAAAIAAAAAAD4AAACIAAAAAgAAAAAAPwAAAIkAAAACAAAAAABAAAAAigAAAAIAAAAAAEEAAACLAAAAAgAAAAAAQgAAAIwAAAACAAAAAABDAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAAMAAAACAAEAAABkAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAQAAAGYAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAZAAAAAQABAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAZAAAAAwACAAEAAABkAAAACgAJAAAAjQAAAAQAAAAAAAAAAACOAAAABAABAAAAAAAAAI8AAAAEAAIAAAAAAAAAkAAAAAQAAwAAAAAAAACRAAAABAAEAAAAAAAAAJIAAAAEAAUAAAAAAAAAkwAAAAQABgAAAAAAAACUAAAABAAHAAAAAAAAAJUAAAAEAAgAAAAAAAAAAgAAAAAAAwAAAAMA/////////////////////wAAAADNAAAAAAAAAEQAAAAKAAAAAAAKACsAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAAJYAAAACAAAAAABFAAAAlwAAAAIAAAAAAEYAAACYAAAAAgAAAAAARwAAAIYAAAACAAAAAABIAAAAWQAAAAIAAAAAAEkAAABSAAAAAgAAAAAASgAAAF0AAAACAAAAAABLAAAAXgAAAAIAAAAAAEwAAABqAAAAAgAAAAAATQAAAGsAAAACAAAAAABOAAAAYgAAAAIAAAAAAE8AAABkAAAAAgAAAAAAUAAAAGYAAAACAAAAAABRAAAAaAAAAAIAAAAAAFIAAACBAAAAAgAAAAAAUwAAAGAAAAACAAAAAABUAAAAYQAAAAIAAAAAAFUAAABuAAAAAgAAAAAAVgAAAG8AAAACAAAAAABXAAAAcAAAAAIAAAAAAFgAAABxAAAAAgAAAAAAWQAAAHIAAAACAAAAAABaAAAAcwAAAAIAAAAAAFsAAAB0AAAAAgAAAAAAXAAAAHUAAAACAAAAAABdAAAAdgAAAAIAAAAAAF4AAAB3AAAAAgAAAAAAXwAAAHgAAAACAAAAAABgAAAAeQAAAAIAAAAAAGEAAAB6AAAAAgAAAAAAYgAAAHsAAAACAAAAAABjAAAAfAAAAAIAAAAAAGQAAAB9AAAAAgAAAAAAZQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABEAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAARAAAAAMA/////////////////////wAAAADOAAAAAAAAAGYAAAAKAAAAAAAKAB0AAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAAJkAAAACAAAAAABnAAAAmgAAAAIAAAAAAGgAAACbAAAAAgAAAAAAaQAAAJwAAAACAAAAAABqAAAAnQAAAAIAAAAAAGsAAACeAAAAAgAAAAAAbAAAAJ8AAAACAAAAAABtAAAAoAAAAAIAAAAAAG4AAAChAAAAAgAAAAAAbwAAAKIAAAACAAAAAABwAAAAowAAAAIAAAAAAHEAAACkAAAAAgAAAAAAcgAAAKUAAAACAAAAAABzAAAApgAAAAIAAAAAAHQAAACnAAAAAgAAAAAAdQAAAKgAAAACAAAAAAB2AAAAqQAAAAIAAAAAAHcAAACqAAAAAgAAAAAAeAAAAKsAAAACAAAAAAB5AAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAGYAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAABmAAAAAwD/////////////////////AAAAAM8AAAAAAAAAegAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAB6AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAfQAAAAoAAAAAAAoANAAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAArQAAAAIAAAAAAH4AAACuAAAAAgAAAAAAfwAAAK8AAAACAAAAAACAAAAAsAAAAAIAAAAAAIEAAACaAAAAAgAAAAAAggAAALEAAAACAAAAAACDAAAAsgAAAAIAAAAAAIQAAACzAAAAAgAAAAAAhQAAALQAAAACAAAAAACGAAAAtQAAAAIAAAAAAIcAAAC2AAAAAgAAAAAAiAAAAH8AAAACAAAAAACJAAAAogAAAAIAAAAAAIoAAAC3AAAAAgAAAAAAiwAAALgAAAACAAAAAACMAAAAuQAAAAIAAAAAAI0AAAC6AAAAAgAAAAAAjgAAALsAAAACAAAAAACPAAAAvAAAAAIAAAAAAJAAAAC9AAAAAgAAAAAAkQAAAL4AAAACAAAAAACSAAAAvwAAAAIAAAAAAJMAAADAAAAAAgAAAAAAlAAAAMEAAAACAAAAAACVAAAAwgAAAAIAAAAAAJYAAADDAAAAAgAAAAAAlwAAABsAAAACAAAAAACYAAAAxAAAAAIAAAAAAJkAAADFAAAAAgAAAAAAmgAAAMYAAAACAAAAAACbAAAAxwAAAAIAAAAAAJwAAADIAAAAAgAAAAAAnQAAAMkAAAACAAAAAACeAAAAnQAAAAIAAAAAAJ8AAADKAAAAAgAAAAAAoAAAAMsAAAACAAAAAAChAAAAzAAAAAIAAAAAAKIAAADNAAAAAgAAAAAAowAAAM4AAAACAAAAAACkAAAAzwAAAAIAAAAAAKUAAADQAAAAAgAAAAAApgAAANEAAAACAAAAAADRAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAH0AAAACAAIAAAAZAAAAAgAAAAAAegAAAAIAAAAAANIAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQACAAIAAAAZAAAAAgACAAAAGQAAAAEAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAQACAAIAAAAZAAAAAQABAAIAAgAAABkAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAAfQAAAAoADAAAANIAAAAEAAAAAAAAAAAA0wAAAAQAAQAAAAAAAADUAAAABAACAAAAAAAAANUAAAAEAAMAAAAAAAAA1gAAAAQABAAAAAAAAADXAAAABAAFAAAAAAAAANgAAAAEAAYAAAAAAAAA2QAAAAQABwAAAAAAAADaAAAABAAIAAAAAAAAANsAAAAEAAkAAAAAAAAA3AAAAAQACgAAAAAAAADdAAAABAALAAAAAAAAAP////////////////////8AAAAA0wAAAAAAAACnAAAACgAAAAAACgAPAAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAmAAAAGAAAAAIAAgAAACgAAADeAAAAAgAAAAAAqAAAAN8AAAACAAAAAACpAAAA4AAAAAIAAAAAAKoAAADhAAAAAgAAAAAAqwAAAOIAAAACAAAAAACsAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAKcAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAApwAAAAoAAgAAAOMAAAAEAAAAAAAAAAAA5AAAAAQAAQAAAAAAAAD/////////////////////AAAAANQAAAAAAAAArQAAAAoAAAAAAAoAEwAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAAAAACuAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAA5QAAAAIAAAAAAK8AAACtAAAAAgAAAAAAsAAAAOYAAAACAAAAAACxAAAA5wAAAAIAAAAAALIAAADoAAAAAgAAAAAAswAAAOkAAAACAAAAAAC0AAAA6gAAAAIAAAAAALUAAADrAAAAAgAAAAAAtgAAABsAAAACAAAAAAC3AAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAK0AAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAEAAgACAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAACtAAAACgAEAAAA7AAAAAQAAAAAAAAAAADkAAAABAABAAAAAAAAAO0AAAAEAAIAAAAAAAAA7gAAAAQAAwAAAAAAAAD/////////////////////AAAAANUAAAAAAAAAuAAAAAoAAAAAAAoAFwAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAArQAAAAIAAAAAALkAAADvAAAAAgAAAAAAugAAAPAAAAACAAAAAAC7AAAA8QAAAAIAAAAAALwAAADyAAAAAgAAAAAAvQAAAPMAAAACAAAAAAC+AAAA9AAAAAIAAAAAAL8AAAD1AAAAAgAAAAAAwAAAAPYAAAACAAAAAADBAAAA9wAAAAIAAAAAAMIAAAD4AAAAAgAAAAAAwwAAAPkAAAACAAAAAADEAAAA+gAAAAIAAAAAAMUAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAuAAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAQABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAALgAAAAKAAgAAAD7AAAABAAAAAAAAAAAAPwAAAAEAAEAAAAAAAAA/QAAAAQAAgAAAAAAAAD+AAAABAADAAAAAAAAAP8AAAAEAAQAAAAAAAAAAAEAAAQABQAAAAAAAAABAQAABAAGAAAAAAAAAAIBAAAEAAcAAAAAAAAA/////////////////////wAAAAD7AAAAAAAAAMcAAAAKABQAAAAsAQAAAgAFAAAAAwAAAC8BAAACAAUAAAAIAAAAMAEAAAIABQAAAAwAAAAxAQAAAgAFAAAAIgAAADIBAAACAAUAAAAqAAAAMwEAAAIABQAAAC8AAAA0AQAAAgAFAAAANAAAADUBAAACAAUAAAA5AAAANgEAAAIABQAAAD0AAAA3AQAAAgAFAAAAQgAAADgBAAACAAUAAABHAAAAOQEAAAIABQAAAFAAAAA6AQAAAgAFAAAAUgAAADsBAAACAAUAAABZAAAAPAEAAAIABQAAAF0AAAA9AQAAAgAFAAAAYgAAAD4BAAACAAUAAABnAAAAPwEAAAIABQAAAG8AAABAAQAAAgAFAAAAcgAAAEEBAAACAAUAAAB8AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAMcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAxwAAAAMA/////////////////////wAAAAD8AAAAAAAAAMgAAAAKAAEAAABCAQAAAgABAAAAAwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAADIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAMgAAAADAP////////////////////8AAAAA/QAAAAAAAADJAAAACgAGAAAAQwEAAAIAAAAAAAMAAABEAQAAAgAAAAAARAAAAEUBAAACAAAAAAD+AAAARgEAAAIAAAAAAH0AAABHAQAAAgAAAAAA/wAAAEgBAAACAAAAAAC4AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAMkAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAyQAAAAMA/////////////////////wAAAAAAAQAAAAAAANIAAAADAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAADSAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBAAAAAAAA/gAAAAoAAgAAAEwBAAACAAAAAABmAAAATQEAAAIAAAAAAHoAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAA/gAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAD+AAAAAwD/////////////////////AAAAAAIBAAAAAAAA/wAAAAoAAgAAAE4BAAACAAAAAACnAAAATwEAAAIAAAAAAK0AAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAA/wAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAD/AAAAAwD/////////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAIAAAAFAAAAAAAAAAEAAAACAAAABwAAABQAAAABAAAAAgAAAAcAAAAMAQAAAQAAAAIAAAAHAAAAIgEAAAEAAAACAAAABwAAADgBAAABAAAAAgAAAAcAAABOAQAAAQAAAAIAAAAHAAAAZAEAAAEAAAACAAAABwAAAHoBAAABAAAAAgAAAAcAAACQAQAAAQAAAAIAAAAHAAAA8AEAAAEAAAACAAAABwAAAF4CAAABAAAAAgAAAAcAAADsAgAAAQAAAAIAAAAHAAAA6AMAAAEAAAACAAAABwAAAD4EAAABAAAAAgAAAAUAAACeBAAAAQAAAAIAAAAHAAAAsgQAAAEAAAACAAAABwAAAIwFAAABAAAAAgAAAAcAAABOBwAAAQAAAAIAAAAHAAAAcAgAAAEAAAACAAAABwAAAHYJAAABAAAAAgAAAAcAAACUCgAAAQAAAAIAAAAHAAAAmgsAAAEAAAACAAAABwAAALgMAAABAAAAAgAAAAcAAAC+DQAAAQAAAAIAAAAHAAAA3A4AAAEAAAACAAAABwAAAOIPAAABAAAAAgAAAAcAAABIFAAAAQAAAAIAAAAHAAAA1BoAAAEAAAACAAAABwAAAPIbAAABAAAAAgAAAAcAAAAIHAAAAQAAAAIAAAAHAAAAxhwAAAEAAAACAAAABwAAAG4dAAABAAAAAgAAAAcAAAAsHgAAAQAAAAIAAAAHAAAA6h4AAAEAAAACAAAABwAAAKgfAAABAAAAAgAAAAcAAABmIAAAAQAAAAIAAAAHAAAAJCEAAAEAAAACAAAABwAAAOIhAAABAAAAAgAAAAcAAABqIwAAAQAAAAIAAAAHAAAA8iQAAAEAAAACAAAABwAAAL4lAAABAAAAAgAAAAcAAACKJgAAAQAAAAIAAAAHAAAAjicAAAEAAAACAAAABwAAAOQnAAABAAAAAgAAAAcAAAA6KAAAAQAAAAIAAAAHAAAAhigAAAEAAAACAAAABwAAAB4pAAABAAAAAgAAAAcAAAAkKgAAAQAAAAIAAAAFAAAAjC4AAAEAAAACAAAABQAAAKAuAAABAAAAAgAAAAUAAAC0LgAAAQAAAAIAAAAFAAAAyC4AAAEAAAACAAAABwAAANwuAAABAAAAAgAAAAcAAACsLwAAAQAAAAIAAAAFAAAAAjAAAAEAAAACAAAABQAAABYwAAABAAAAAgAAAAUAAAAqMAAAAQAAAAIAAAAFAAAAPjAAAAEAAAACAAAABQAAAFIwAAABAAAAAgAAAAUAAABmMAAAAQAAAAIAAAAFAAAAejAAAAEAAAACAAAABQAAAI4wAAABAAAAAgAAAAUAAACiMAAAAQAAAAIAAAAFAAAAtjAAAAEAAAAAAAAABAAAAMowAAAAAAAAAgAAAAUAAADKMAAAAQAAAAIAAAAFAAAA3jAAAAEAAAACAAAABQAAAPIwAAABAAAAAgAAAAUAAAAGMQAAAQAAAAIAAAAFAAAAGjEAAAEAAAACAAAABQAAAC4xAAABAAAAAgAAAAUAAABCMQAAAQAAAAIAAAAFAAAAVjEAAAEAAAACAAAABQAAAGoxAAABAAAAAgAAAAUAAAB+MQAAAQAAAAIAAAAFAAAAkjEAAAEAAAACAAAABQAAAKYxAAABAAAAAgAAAAUAAAC6MQAAAQAAAAIAAAAFAAAAzjEAAAEAAAACAAAABQAAAOIxAAABAAAAAgAAAAUAAAD2MQAAAQAAAAIAAAAFAAAACjIAAAEAAAACAAAABQAAAB4yAAABAAAAAgAAAAUAAAAyMgAAAQAAAAIAAAAFAAAARjIAAAEAAAACAAAABQAAAFoyAAABAAAAAgAAAAUAAABuMgAAAQAAAAIAAAAFAAAAgjIAAAEAAAACAAAABQAAAJYyAAABAAAAAgAAAAUAAACqMgAAAQAAAAIAAAAFAAAAvjIAAAEAAAACAAAABQAAANIyAAABAAAAAgAAAAUAAADmMgAAAQAAAAIAAAAFAAAA+jIAAAEAAAACAAAABQAAAA4zAAABAAAAAgAAAAUAAAAiMwAAAQAAAAIAAAAFAAAANjMAAAEAAAACAAAABQAAAEozAAABAAAAAAAAAAUAAABeMwAAAAAAAAIAAAAFAAAAXjMAAAEAAAACAAAABQAAAHIzAAABAAAAAgAAAAUAAACGMwAAAQAAAAIAAAAFAAAAmjMAAAEAAAACAAAABQAAAK4zAAABAAAAAgAAAAUAAADCMwAAAQAAAAIAAAAFAAAA1jMAAAEAAAACAAAABQAAAOozAAABAAAAAgAAAAUAAAD+MwAAAQAAAAIAAAAFAAAAEjQAAAEAAAACAAAABQAAACY0AAABAAAAAgAAAAUAAAA6NAAAAQAAAAIAAAAFAAAATjQAAAEAAAACAAAABQAAAGI0AAABAAAAAgAAAAUAAAB2NAAAAQAAAAIAAAAFAAAAijQAAAEAAAACAAAABQAAAJ40AAABAAAAAgAAAAUAAACyNAAAAQAAAAIAAAAFAAAAxjQAAAEAAAAAAAAABgAAANo0AAAAAAAAAgAAAAUAAADaNAAAAQAAAAIAAAAFAAAA7jQAAAEAAAAAAAAABwAAAAI1AAAAAAAAAgAAAAUAAAACNQAAAQAAAAIAAAAFAAAAFjUAAAEAAAACAAAABQAAACo1AAABAAAAAgAAAAUAAAA+NQAAAQAAAAIAAAAFAAAAUjUAAAEAAAACAAAABQAAAGY1AAABAAAAAgAAAAUAAAB6NQAAAQAAAAIAAAAFAAAAjjUAAAEAAAACAAAABQAAAKI1AAABAAAAAgAAAAUAAAC2NQAAAQAAAAIAAAAFAAAAyjUAAAEAAAACAAAABQAAAN41AAABAAAAAgAAAAUAAADyNQAAAQAAAAIAAAAFAAAABjYAAAEAAAACAAAABQAAABo2AAABAAAAAgAAAAUAAAAuNgAAAQAAAAIAAAAFAAAAQjYAAAEAAAACAAAABQAAAFY2AAABAAAAAgAAAAUAAABqNgAAAQAAAAIAAAAFAAAAfjYAAAEAAAACAAAABQAAAJI2AAABAAAAAgAAAAUAAACmNgAAAQAAAAIAAAAFAAAAujYAAAEAAAACAAAABQAAAM42AAABAAAAAgAAAAUAAADiNgAAAQAAAAIAAAAFAAAA9jYAAAEAAAACAAAABQAAAAo3AAABAAAAAgAAAAUAAAAeNwAAAQAAAAIAAAAFAAAAMjcAAAEAAAACAAAABQAAAEY3AAABAAAAAgAAAAUAAABaNwAAAQAAAAIAAAAFAAAAbjcAAAEAAAACAAAABQAAAII3AAABAAAAAgAAAAUAAACWNwAAAQAAAAIAAAAFAAAAqjcAAAEAAAACAAAABQAAAL43AAABAAAAAgAAAAUAAADSNwAAAQAAAAIAAAAFAAAA5jcAAAEAAAACAAAABQAAAPo3AAABAAAAAgAAAAUAAAAOOAAAAQAAAAIAAAAFAAAAIjgAAAEAAAAAAAAACAAAADY4AAAAAAAAAgAAAAUAAAA2OAAAAQAAAAIAAAAFAAAASjgAAAEAAAACAAAABQAAAF44AAABAAAAAgAAAAUAAAByOAAAAQAAAAIAAAAFAAAAhjgAAAEAAAAAAAAACQAAAJo4AAAAAAAAAgAAAAUAAACaOAAAAQAAAAIAAAAFAAAArjgAAAEAAAACAAAABQAAAMI4AAABAAAAAgAAAAUAAADWOAAAAQAAAAIAAAAFAAAA6jgAAAEAAAACAAAABQAAAP44AAABAAAAAgAAAAUAAAASOQAAAQAAAAIAAAAFAAAAJjkAAAEAAAACAAAABQAAADo5AAABAAAAAgAAAAUAAABOOQAAAQAAAAAAAAAKAAAAYjkAAAAAAAACAAAABQAAAGI5AAABAAAAAgAAAAUAAAB2OQAAAQAAAAIAAAAFAAAAijkAAAEAAAACAAAABQAAAJ45AAABAAAAAgAAAAUAAACyOQAAAQAAAAIAAAAFAAAAxjkAAAEAAAACAAAABQAAANo5AAABAAAAAgAAAAUAAADuOQAAAQAAAAIAAAAFAAAAAjoAAAEAAAACAAAABQAAABY6AAABAAAAAgAAAAUAAAAqOgAAAQAAAAIAAAAFAAAAPjoAAAEAAAACAAAABQAAAFI6AAABAAAAAwAAAAAAAABmOgAAAQAAAAAAAAALAAAAdjoAAAAAAAAAAAAADAAAAHY6AAAAAAAAAAAAAA0AAAB2OgAAAAAAAAMAAAAAAAAAdjoAAAEAAAADAAAAAAAAAIY6AAABAAAABAAAAAcAAACWOgAAAQAAAAQAAAAHAAAAYkMAAAEAAAAEAAAABwAAAB5HAAABAAAABAAAAAYAAACKSQAAAQAAAAQAAAAHAAAAykkAAAEAAAACAAAABQAAAChPAAABAAAAAAAAAA4AAAA8TwAAAAAAAAQAAAAHAAAAPE8AAAEAAAAEAAAABwAAAARRAAABAAAABAAAAAcAAAD0UgAAAQAAAAEAAAADAAAAVFUAAAEAAAABAAAAAwAAAAJWAAABAAAAAQAAAAMAAADiZAAAAQAAAAEAAAADAAAAHGYAAAEAAAABAAAAAwAAAKx4AAABAAAAAQAAAAMAAADOfwAAAQAAAAEAAAADAAAAvIcAAAEAAAABAAAAAwAAAFyPAAABAAAAAQAAAAMAAABClAAAAQAAAAEAAAADAAAAKJkAAAEAAAABAAAAAwAAAFKaAAABAAAABAAAAAkAAAAmnwAAAQAAAAQAAAAJAAAASp8AAAEAAAAEAAAACQAAAHafAAABAAAABAAAAAkAAACinwAAAQAAAAQAAAAJAAAAxp8AAAEAAAAEAAAACQAAAPKfAAABAAAABAAAAAkAAAAeoAAAAQAAAAQAAAAJAAAASqAAAAEAAAAEAAAACQAAAG6gAAABAAAABAAAAAkAAACaoAAAAQAAAAQAAAAJAAAAvqAAAAEAAAAEAAAACQAAAOKgAAABAAAABAAAAAkAAAAOoQAAAQAAAAQAAAAJAAAAMqEAAAEAAAAEAAAACQAAAFahAAABAAAABAAAAAkAAAB6oQAAAQAAAAQAAAAJAAAAnqEAAAEAAAAEAAAACQAAAMKhAAABAAAABAAAAAkAAADuoQAAAQAAAAQAAAAJAAAAGqIAAAEAAAAEAAAACQAAAEaiAAABAAAABAAAAAkAAAByogAAAQAAAAQAAAAJAAAAnqIAAAEAAAAEAAAACQAAAMqiAAABAAAABAAAAAkAAADuogAAAQAAAAQAAAAJAAAAEqMAAAEAAAADAAAAAAAAADajAAABAAAAAwAAAAAAAABGowAAAQAAAAMAAAAAAAAAVqMAAAEAAAAAAAAADwAAAGajAAAAAAAAAAAAABAAAABmowAAAAAAAAQAAAADAAAAZqMAAAEAAAADAAAAAAAAALKjAAABAAAAAwAAAAAAAADCowAAAQAAAAsAAAAAAAAAAAABAAEAAQABAAMACwAAAAAAAQAAAAoABAAAAFsAAAAFAAAAAAAAAABAAwEAAAQAAAAAAAAAAABTAAAABQAAAAAAAADwP1wAAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAWwAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBTAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFwAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAACAAAAAQABAAEAAQABAAMACwAAAAAAAwAAAAEAAQABAAEAAQADAAsAAAAAAAQAAAABAAEAAQABAAEAAwALAAAAAAAFAAAAAQABAAEAAQABAAMACwAAAAAABgAAAAEAAQABAAEAAQADAAsAAAAAAAcAAAABAAEAAQABAAEAAwALAAAAAAAIAAAACgACAAAAVwAAAAUAAAAAAAAA8D8DAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFcAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAJAAAACgADAAAABAEAAAUAAAAAAAAA8D9UAAAABQAAAAAAAADwPwMBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAoAAAAKAAMAAAAEAQAABQAAAAAAAADwP1UAAAAFAAAAAAAAAPA/AwEAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBVAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAALAAAACgAEAAAABAEAAAQAAQAAAAAAAABWAAAABAABAAAAAAAAAAMBAAAEAAAAAAAAAAAAWAAAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBWAAAABAAAAAAAAAAAAAQACAAAAAAAAAAGAFgAAAAEAAAAAAAAAAAACgABAAAABQEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFYAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAMAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAA0AAAAKAAIAAABTAAAABQAAAAAAAADwPwMBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAXQAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAA4AAAABAAEAAQABAAMACwAAAAAADwAAAAoABAAAAIMAAAAFAAAAAAAAAPA/AwEAAAQAAAAAAAAAAABhAAAABQAAAAAAAAAAQIQAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBhAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAQAAAACgAFAAAAAwEAAAQAAAAAAAAAAABtAAAABQAAAAAAAADwP4MAAAAFAAAAAAAAAPA/YQAAAAUAAAAAAAAAAECEAAAABQAAAAAAAADwPwQAAAAAAAAAAAAKAAEAAAAGAQAABwADAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGEAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAARAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABIAAAAKAAIAAAADAQAABAAAAAAAAAAAAGIAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQgAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBiAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAATAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAHAQAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFAAAAAoAAgAAAAMBAAAEAAAAAAAAAAAAZAAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBCAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGQAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQgAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABUAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAgBAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAWAAAACgACAAAAAwEAAAQAAAAAAAAAAABmAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZgAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBCAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFwAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYACQEAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABgAAAAKAAIAAAADAQAABAAAAAAAAAAAAGgAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQgAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEIAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAZAAAACgAGAAAAAwEAAAQAAAAAAAAAAAAKAQAABQAAAAAAAADwP2gAAAAFAAAAAAAAAPA/ZgAAAAUAAAAAAAAA8D9kAAAABQAAAAAAAADwP2IAAAAFAAAAAAAAAPA/BwAHAAAABwAAAAAABwAGAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABAAIAAAAAAAAAAYAYgAAAAQAAAAAAAAAAAAHAAwAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBiAAAABAAAAAAAAAAAAAoAAgAAAAsBAAAHAAQAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBiAAAABAAAAAAAAAAAAAwBAAAHAAIAAAAHAAcAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAgAAAAAAAAAHAAwAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBiAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGIAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAGgAAAAoAAwAAAA0BAAAEAAEAAAAAAAAAAwEAAAQAAAAAAAAAAABsAAAABAACAAAAAAAAAAcAEAAAAAcAAAAAAAcACQAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQACAAAAAAAAAAGAGwAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAkAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAsAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAAIAAAAAAAAAAYAbAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQADgAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAcAAAAAAAoAAQAAAA4BAAAHAAMAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABAAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcACQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAFAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQACAAAAAAAAAAGAGwAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAIAAAAAAAAAAYAbAAAAAQAAAAAAAAAAAAHAAAAAAABAAEAAwALAAAAAAAbAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAPAQAABAACAAAAAAAAAAcABgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHAAAAAEAAQABAAEAAQADAAsAAAAAAB0AAAAKAAEAAAADAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIIAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAeAAAACgACAAAAAwEAAAQAAAAAAAAAAACEAAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIIAAAAEAAMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAfAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIAAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACEAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIIAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAiAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIwAAAAoAAQAAAAMBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACQAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIIAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAlAAAACgADAAAAAwEAAAQAAAAAAAAAAABkAAAABQAAAAAAAADwP2UAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAggAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAQAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAACYAAAAKAAMAAAADAQAABAAAAAAAAAAAAGYAAAAFAAAAAAAAAPA/ZwAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAoAAQAAABEBAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGcAAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAJwAAAAoAAgAAAAMBAAAEAAAAAAAAAAAAfQAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAKAAAAAoAAgAAAAMBAAAEAAAAAAAAAAAAEgEAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAKQAAAAoABAAAAAMBAAAFAAAAAAAAAPA/EwEAAAUAAAAAAAAA8D8UAQAABQAAAAAAAADwPxUBAAAFAAAAAAAAAPA/BAAAAAAAAAAAAAoAAQAAABYBAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAgAAAAIAAAAAAC4AAAACAAAAAAAvAAAAAwALAAAAAAAqAAAACgABAAAAAwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACsAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAALAAAAAoAAgAAAGoAAAAEAAEAAAAAAAAAAwEAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAcAAQAAAAIAAAAAADEAAAADAAsAAAAAAC0AAAAKAAEAAAADAQAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcABgAAAAUAAAAAAAAAEEAEACAAAAAAAAAABAABAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAALgAAAAoAAgAAAAMBAAAEAAAAAAAAAAAAewAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBCAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHsAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQgAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAAC8AAAAKAAIAAAADAQAABAAAAAAAAAAAAHwAAAAFAAAAAAAAAPA/BwAKAAAABwAAAAAABwAMAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAAYQAYAFwEAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgB/AAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAkAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAACgABAAAAGAEAAAcABAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwAIAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAFwEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB/AAAABAAAAAAAAAAAAAEAAQADAAsAAAAAADAAAAABAAEAAQABAAMACwAAAAAAMQAAAAEAAQABAAEAAwALAAAAAAAyAAAAAQABAAEAAQADAAsAAAAAADMAAAABAAEAAQABAAMACwAAAAAANAAAAAoAAgAAAAMBAAAEAAAAAAAAAAAAYAAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADUAAAAKAAEAAAADAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAANgAAAAEAAQABAAEAAwALAAAAAAA3AAAAAQABAAEAAQADAAsAAAAAADgAAAABAAEAAQABAAMACwAAAAAAOQAAAAEAAQABAAEAAwALAAAAAAA6AAAAAQABAAEAAQADAAsAAAAAADsAAAABAAEAAQABAAMACwAAAAAAPAAAAAEAAQABAAEAAwALAAAAAAA9AAAAAQABAAEAAQADAAsAAAAAAD4AAAABAAEAAQABAAMACwAAAAAAPwAAAAEAAQABAAEAAwALAAAAAABAAAAAAQABAAEAAQADAAsAAAAAAEEAAAABAAEAAQABAAMACwAAAAAAQgAAAAEAAQABAAEAAwALAAAAAABDAAAAAQABAAEAAQADAAsAAAAAAEQAAAABAAEAAQABAAMACwAAAAAARQAAAAEAAQABAAEAAwALAAAAAABGAAAAAQABAAEAAQADAAsAAAAAAEcAAAABAAEAAQABAAMACwAAAAAASAAAAAEAAQABAAEAAwALAAAAAABJAAAAAQABAAEAAQADAAsAAAAAAEoAAAABAAEAAQABAAMACwAAAAAASwAAAAEAAQABAAEAAwALAAAAAABMAAAAAQABAAEAAQADAAsAAAAAAE0AAAABAAEAAQABAAMACwAAAAAATgAAAAEAAQABAAEAAwALAAAAAABPAAAAAQABAAEAAQADAAsAAAAAAFAAAAABAAEAAQABAAMACwAAAAAAUQAAAAEAAQABAAEAAwALAAAAAABSAAAAAQABAAEAAQADAAsAAAAAAFMAAAABAAEAAQABAAMACwAAAAAAVAAAAAEAAQABAAEAAwALAAAAAABVAAAAAQABAAEAAQADAAsAAAAAAFYAAAABAAEAAQABAAMACwAAAAAAVwAAAAEAAQABAAEAAwALAAAAAABYAAAAAQABAAEAAQADAAsAAAAAAFkAAAABAAEAAQABAAMACwAAAAAAWgAAAAEAAQABAAEAAwALAAAAAABbAAAAAQABAAEAAQADAAsAAAAAAFwAAAABAAEAAQABAAMACwAAAAAAXQAAAAEAAQABAAEAAwALAAAAAABeAAAAAQABAAEAAQADAAsAAAAAAF8AAAABAAEAAQABAAMACwAAAAAAYAAAAAEAAQABAAEAAwALAAAAAABhAAAAAQABAAEAAQADAAsAAAAAAGIAAAABAAEAAQABAAMACwAAAAAAYwAAAAEAAQABAAEAAwALAAAAAABkAAAAAQABAAEAAQADAAsAAAAAAGUAAAABAAEAAQABAAMACwAAAAAAZgAAAAEAAQABAAEAAwALAAAAAABnAAAAAQABAAEAAQADAAsAAAAAAGgAAAABAAEAAQABAAMACwAAAAAAaQAAAAEAAQABAAEAAwALAAAAAABqAAAAAQABAAEAAQADAAsAAAAAAGsAAAABAAEAAQABAAMACwAAAAAAbAAAAAEAAQABAAEAAwALAAAAAABtAAAAAQABAAEAAQADAAsAAAAAAG4AAAABAAEAAQABAAMACwAAAAAAbwAAAAEAAQABAAEAAwALAAAAAABwAAAAAQABAAEAAQADAAsAAAAAAHEAAAABAAEAAQABAAMACwAAAAAAcgAAAAEAAQABAAEAAwALAAAAAABzAAAAAQABAAEAAQADAAsAAAAAAHQAAAABAAEAAQABAAMACwAAAAAAdQAAAAEAAQABAAEAAwALAAAAAAB2AAAAAQABAAEAAQADAAsAAAAAAHcAAAABAAEAAQABAAMACwAAAAAAeAAAAAEAAQABAAEAAwALAAAAAAB5AAAAAQABAAEAAQADAAsAAAAAAHoAAAABAAEAAQABAAMACwAAAAAAewAAAAEAAQABAAEAAwALAAAAAAB8AAAAAQABAAEAAQADAAsAAAAAAH0AAAABAAEAAQABAAMACwAAAAAAfgAAAAEAAQABAAEAAwALAAAAAAB/AAAAAQABAAEAAQADAAsAAAAAAIAAAAABAAEAAQABAAMACwAAAAAAgQAAAAEAAQABAAEAAwALAAAAAACCAAAAAQABAAEAAQADAAsAAAAAAIMAAAABAAEAAQABAAMACwAAAAAAhAAAAAEAAQABAAEAAwALAAAAAACFAAAAAQABAAEAAQADAAsAAAAAAIYAAAABAAEAAQABAAMACwAAAAAAhwAAAAEAAQABAAEAAwALAAAAAACIAAAAAQABAAEAAQADAAsAAAAAAIkAAAABAAEAAQABAAMACwAAAAAAigAAAAEAAQABAAEAAwALAAAAAACLAAAAAQABAAEAAQADAAsAAAAAAIwAAAABAAEAAQABAAMACwAAAAAAjQAAAAEAAQABAAEAAwALAAAAAACOAAAAAQABAAEAAQADAAsAAAAAAI8AAAABAAEAAQABAAMACwAAAAAAkAAAAAEAAQABAAEAAwALAAAAAACRAAAAAQABAAEAAQADAAsAAAAAAJIAAAABAAEAAQABAAMACwAAAAAAkwAAAAEAAQABAAEAAwALAAAAAACUAAAAAQABAAEAAQADAAsAAAAAAJUAAAABAAEAAQABAAMACwAAAAAAlgAAAAEAAQABAAEAAwALAAAAAACXAAAAAQABAAEAAQADAAsAAAAAAJgAAAABAAEAAQABAAMACwAAAAAAmQAAAAEAAQABAAEAAwALAAAAAACaAAAAAQABAAEAAQADAAsAAAAAAJsAAAABAAEAAQABAAMACwAAAAAAnAAAAAEAAQABAAEAAwALAAAAAACdAAAAAQABAAEAAQADAAsAAAAAAJ4AAAABAAEAAQABAAMACwAAAAAAnwAAAAEAAQABAAEAAwALAAAAAACgAAAAAQABAAEAAQADAAsAAAAAAKEAAAABAAEAAQABAAMACwAAAAAAogAAAAEAAQABAAEAAwALAAAAAACjAAAAAQABAAEAAQADAAsAAAAAAKQAAAABAAEAAQABAAMACwAAAAAApQAAAAEAAQABAAEAAwALAAAAAACmAAAAAQABAAEAAQADAAsAAAAAAKcAAAABAAEAAQABAAMACwAAAAAAqAAAAAEAAQABAAEAAwALAAAAAACpAAAAAQABAAEAAQADAAsAAAAAAKoAAAABAAEAAQABAAMACwAAAAAAqwAAAAEAAQABAAEAAwALAAAAAACsAAAAAQABAAEAAQADAAsAAAAAAK0AAAABAAEAAQABAAMACwAAAAAArgAAAAEAAQABAAEAAwALAAAAAACvAAAAAQABAAEAAQADAAsAAAAAALAAAAABAAEAAQABAAMACwAAAAAAsQAAAAEAAQABAAEAAwALAAAAAACyAAAAAQABAAEAAQADAAsAAAAAALMAAAABAAEAAQABAAMACwAAAAAAtAAAAAEAAQABAAEAAwALAAAAAAC1AAAAAQABAAEAAQADAAsAAAAAALYAAAABAAEAAQABAAMACwAAAAAAtwAAAAEAAQABAAEAAwALAAAAAAC4AAAAAQABAAEAAQADAAsAAAAAALkAAAABAAEAAQABAAMACwAAAAAAugAAAAEAAQABAAEAAwAaAQAABwAAAAAACgAAAAAAGwEAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAAGAB4BAAAHAAAAAAAKAD0AAABRAAAAAgAAAAAABAAAAFIAAAACAAAAAAAFAAAAUwAAAAIAAAAAAAYAAABUAAAAAgAAAAAABwAAAFUAAAACAAAAAAAIAAAAVgAAAAIAAAAAAAkAAABXAAAAAgAAAAAACgAAAFgAAAACAAAAAAALAAAAWQAAAAIAAAAAAAwAAABaAAAAAgAAAAAADQAAAFsAAAACAAAAAAAOAAAAXAAAAAIAAAAAAA8AAABdAAAAAgAAAAAAEAAAAF4AAAACAAAAAAARAAAAXwAAAAIAAAAAABIAAABgAAAAAgAAAAAAEwAAAGEAAAACAAAAAAAUAAAAYgAAAAIAAAAAABUAAABjAAAAAgAAAAAAFgAAAGQAAAACAAAAAAAXAAAAZQAAAAIAAAAAABgAAABmAAAAAgAAAAAAGQAAAGcAAAACAAAAAAAaAAAAaAAAAAIAAAAAABsAAABpAAAAAgAAAAAAHAAAAGoAAAACAAAAAAAdAAAAawAAAAIAAAAAAB4AAABsAAAAAgAAAAAAHwAAAG0AAAACAAAAAAAgAAAAbgAAAAIAAAAAACEAAABvAAAAAgAAAAAAIgAAAHAAAAACAAAAAAAjAAAAcQAAAAIAAAAAACQAAAByAAAAAgAAAAAAJQAAAHMAAAACAAAAAAAmAAAAdAAAAAIAAAAAACcAAAB1AAAAAgAAAAAAKAAAAHYAAAACAAAAAAApAAAAdwAAAAIAAAAAACoAAAB4AAAAAgAAAAAAKwAAAHkAAAACAAAAAAAsAAAAegAAAAIAAAAAAC0AAAB7AAAAAgAAAAAAMAAAAHwAAAACAAAAAAAyAAAAfQAAAAIAAAAAADMAAAB+AAAAAgAAAAAANAAAAH8AAAACAAAAAAA1AAAAUAAAAAIAAAAAADYAAACAAAAAAgAAAAAANwAAAIEAAAACAAAAAAA4AAAAggAAAAIAAAAAADkAAACDAAAAAgAAAAAAOgAAAIQAAAACAAAAAAA7AAAAhQAAAAIAAAAAADwAAACGAAAAAgAAAAAAPQAAAIcAAAACAAAAAAA+AAAAiAAAAAIAAAAAAD8AAACJAAAAAgAAAAAAQAAAAIoAAAACAAAAAABBAAAAiwAAAAIAAAAAAEIAAACMAAAAAgAAAAAAQwAAAAcAPQAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIQAAAAIAAAAAACIAAAACAAAAAAAjAAAAAgAAAAAAJAAAAAIAAAAAACUAAAACAAAAAAAmAAAAAgAAAAAAJwAAAAIAAAAAACgAAAACAAAAAAApAAAAAgAAAAAAKgAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAADAAAAACAAAAAAAyAAAAAgAAAAAAMwAAAAIAAAAAADQAAAACAAAAAAA1AAAAAgAAAAAANgAAAAIAAAAAADcAAAACAAAAAAA4AAAAAgAAAAAAOQAAAAIAAAAAADoAAAACAAAAAAA7AAAAAgAAAAAAPAAAAAIAAAAAAD0AAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAHAAAAAAAHAAEAAAACAAEAAABkAAAABwAAAAAAAgABAAAAZAAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAADAAAAAgABAAAAZAAAAAIAAgAAABkAAAAHAAAAAAAKAAwAAAAzAAAACgACAAAAUwAAAAcAAQAAAAYAWQAAAG0AAAAHAA0AAAAGAG4AAAAGAG8AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAABTAAAAAgAAAAAA1gAAAG0AAAACAAAAAADXAAAABQEAAAIAAAAAANgAAAAGAQAAAgAAAAAA2QAAAAsBAAACAAAAAADaAAAADAEAAAIAAAAAANsAAAAOAQAAAgAAAAAA3AAAABABAAACAAAAAADdAAAAEQEAAAIAAAAAAN4AAAAWAQAAAgAAAAAA3wAAABgBAAACAAAAAADgAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAHwEAAAYAjQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgAgAAAABgCOAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGACEAAAAGAI8AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAIAEAAAYAkAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgCcAAAABgCRAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGACEBAAAGAJIAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZAAAAAYAIgEAAAYAkwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABkAAAABgAjAQAABgCUAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGQAAAAGACQBAAAGAJUAAAAHAAAAAAABAAYAJQEAAAcAAAAAAAoAIQAAAJYAAAACAAAAAABFAAAAlwAAAAIAAAAAAEYAAACYAAAAAgAAAAAARwAAAIYAAAACAAAAAABIAAAAWQAAAAIAAAAAAEkAAABSAAAAAgAAAAAASgAAAF0AAAACAAAAAABLAAAAXgAAAAIAAAAAAEwAAABqAAAAAgAAAAAATQAAAGsAAAACAAAAAABOAAAAYgAAAAIAAAAAAE8AAABkAAAAAgAAAAAAUAAAAGYAAAACAAAAAABRAAAAaAAAAAIAAAAAAFIAAACBAAAAAgAAAAAAUwAAAGAAAAACAAAAAABUAAAAYQAAAAIAAAAAAFUAAABuAAAAAgAAAAAAVgAAAG8AAAACAAAAAABXAAAAcAAAAAIAAAAAAFgAAABxAAAAAgAAAAAAWQAAAHIAAAACAAAAAABaAAAAcwAAAAIAAAAAAFsAAAB0AAAAAgAAAAAAXAAAAHUAAAACAAAAAABdAAAAdgAAAAIAAAAAAF4AAAB3AAAAAgAAAAAAXwAAAHgAAAACAAAAAABgAAAAeQAAAAIAAAAAAGEAAAB6AAAAAgAAAAAAYgAAAHsAAAACAAAAAABjAAAAfAAAAAIAAAAAAGQAAAB9AAAAAgAAAAAAZQAAAAcAIQAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAIAAAAAAFEAAAACAAAAAABSAAAAAgAAAAAAUwAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAEQAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgAmAQAABwAAAAAACgATAAAAmQAAAAIAAAAAAGcAAACaAAAAAgAAAAAAaAAAAJsAAAACAAAAAABpAAAAnAAAAAIAAAAAAGoAAACdAAAAAgAAAAAAawAAAJ4AAAACAAAAAABsAAAAnwAAAAIAAAAAAG0AAACgAAAAAgAAAAAAbgAAAKEAAAACAAAAAABvAAAAogAAAAIAAAAAAHAAAACjAAAAAgAAAAAAcQAAAKQAAAACAAAAAAByAAAApQAAAAIAAAAAAHMAAACmAAAAAgAAAAAAdAAAAKcAAAACAAAAAAB1AAAAqAAAAAIAAAAAAHYAAACpAAAAAgAAAAAAdwAAAKoAAAACAAAAAAB4AAAAqwAAAAIAAAAAAHkAAAAHABMAAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAAAAAAIAAgAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAZgAAAAIAAgAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGACcBAAAHAAAAAAAKAAEAAADRAAAAAgAAAAAAewAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAAACAAAAAAB8AAAABgAoAQAABwAMAAAAAgAAAAAA4QAAAAIAAAAAAOIAAAACAAAAAADjAAAAAgAAAAAA5AAAAAIAAAAAAOUAAAACAAAAAADmAAAAAgAAAAAA5wAAAAIAAAAAAOgAAAACAAAAAADpAAAAAgAAAAAA6gAAAAIAAAAAAOsAAAACAAAAAADsAAAACgAqAAAArQAAAAIAAAAAAH4AAACuAAAAAgAAAAAAfwAAAK8AAAACAAAAAACAAAAAsAAAAAIAAAAAAIEAAACaAAAAAgAAAAAAggAAALEAAAACAAAAAACDAAAAsgAAAAIAAAAAAIQAAACzAAAAAgAAAAAAhQAAALQAAAACAAAAAACGAAAAtQAAAAIAAAAAAIcAAAC2AAAAAgAAAAAAiAAAAH8AAAACAAAAAACJAAAAogAAAAIAAAAAAIoAAAC3AAAAAgAAAAAAiwAAALgAAAACAAAAAACMAAAAuQAAAAIAAAAAAI0AAAC6AAAAAgAAAAAAjgAAALsAAAACAAAAAACPAAAAvAAAAAIAAAAAAJAAAAC9AAAAAgAAAAAAkQAAAL4AAAACAAAAAACSAAAAvwAAAAIAAAAAAJMAAADAAAAAAgAAAAAAlAAAAMEAAAACAAAAAACVAAAAwgAAAAIAAAAAAJYAAADDAAAAAgAAAAAAlwAAABsAAAACAAAAAACYAAAAxAAAAAIAAAAAAJkAAADFAAAAAgAAAAAAmgAAAMYAAAACAAAAAACbAAAAxwAAAAIAAAAAAJwAAADIAAAAAgAAAAAAnQAAAMkAAAACAAAAAACeAAAAnQAAAAIAAAAAAJ8AAADKAAAAAgAAAAAAoAAAAMsAAAACAAAAAAChAAAAzAAAAAIAAAAAAKIAAADNAAAAAgAAAAAAowAAAM4AAAACAAAAAACkAAAAzwAAAAIAAAAAAKUAAADQAAAAAgAAAAAApgAAANEAAAACAAAAAADRAAAABwAqAAAAAgAAAAAAfgAAAAIAAAAAAH8AAAACAAAAAACAAAAAAgAAAAAAgQAAAAIAAAAAAIIAAAACAAAAAACDAAAAAgAAAAAAhAAAAAIAAAAAAIUAAAACAAAAAACGAAAAAgAAAAAAhwAAAAIAAAAAAIgAAAACAAAAAACJAAAAAgAAAAAAigAAAAIAAAAAAIsAAAACAAAAAACMAAAAAgAAAAAAjQAAAAIAAAAAAI4AAAACAAAAAACPAAAAAgAAAAAAkAAAAAIAAAAAAJEAAAACAAAAAACSAAAAAgAAAAAAkwAAAAIAAAAAAJQAAAACAAAAAACVAAAAAgAAAAAAlgAAAAIAAAAAAJcAAAACAAAAAACYAAAAAgAAAAAAmQAAAAIAAAAAAJoAAAACAAAAAACbAAAAAgAAAAAAnAAAAAIAAAAAAJ0AAAACAAAAAACeAAAAAgAAAAAAnwAAAAIAAAAAAKAAAAACAAAAAAChAAAAAgAAAAAAogAAAAIAAAAAAKMAAAACAAAAAACkAAAAAgAAAAAApQAAAAIAAAAAAKYAAAACAAAAAADRAAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAQAAAAIAAAAAAHoAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAH0AAAACAAIAAAAZAAAABwACAAAAAgAAAAAAegAAAAIAAAAAANIAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAH4AAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAfgAAAAEADAAAAAAAuwAAAAEAAQABAAEAAwAGACkBAAAHAAIAAAACAAAAAADtAAAAAgAAAAAA7gAAAAoABQAAAN4AAAACAAAAAACoAAAA3wAAAAIAAAAAAKkAAADgAAAAAgAAAAAAqgAAAOEAAAACAAAAAACrAAAA4gAAAAIAAAAAAKwAAAAHAAUAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAKcAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcABAAAAAQAAgAAAAAAAAACAAAAAACnAAAABgDfAAAABgDjAAAABwAEAAAABAADAAAAAAAAAAIAAAAAAKcAAAAGAOAAAAAGAOQAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAApwAAAAYA3wAAAAYA4wAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACnAAAABgDgAAAABgDkAAAAAQAGACoBAAAHAAQAAAACAAAAAADvAAAAAgAAAAAA8AAAAAIAAAAAAPEAAAACAAAAAADyAAAACgAKAAAAEgAAAAIAAAAAAK4AAADlAAAAAgAAAAAArwAAAK0AAAACAAAAAACwAAAA5gAAAAIAAAAAALEAAADnAAAAAgAAAAAAsgAAAOgAAAACAAAAAACzAAAA6QAAAAIAAAAAALQAAADqAAAAAgAAAAAAtQAAAOsAAAACAAAAAAC2AAAAGwAAAAIAAAAAALcAAAAHAAoAAAACAAAAAACuAAAAAgAAAAAArwAAAAIAAAAAALAAAAACAAAAAACxAAAAAgAAAAAAsgAAAAIAAAAAALMAAAACAAAAAAC0AAAAAgAAAAAAtQAAAAIAAAAAALYAAAACAAAAAAC3AAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAAAAAAIAAgAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAArQAAAAIAAgAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAsAAAAAEABgArAQAABwAIAAAAAgAAAAAA8wAAAAIAAAAAAPQAAAACAAAAAAD1AAAAAgAAAAAA9gAAAAIAAAAAAPcAAAACAAAAAAD4AAAAAgAAAAAA+QAAAAIAAAAAAPoAAAAKAA0AAACtAAAAAgAAAAAAuQAAAO8AAAACAAAAAAC6AAAA8AAAAAIAAAAAALsAAADxAAAAAgAAAAAAvAAAAPIAAAACAAAAAAC9AAAA8wAAAAIAAAAAAL4AAAD0AAAAAgAAAAAAvwAAAPUAAAACAAAAAADAAAAA9gAAAAIAAAAAAMEAAAD3AAAAAgAAAAAAwgAAAPgAAAACAAAAAADDAAAA+QAAAAIAAAAAAMQAAAD6AAAAAgAAAAAAxQAAAAcADQAAAAIAAAAAALkAAAACAAAAAAC6AAAAAgAAAAAAuwAAAAIAAAAAALwAAAACAAAAAAC9AAAAAgAAAAAAvgAAAAIAAAAAAL8AAAACAAAAAADAAAAAAgAAAAAAwQAAAAIAAAAAAMIAAAACAAAAAADDAAAAAgAAAAAAxAAAAAIAAAAAAMUAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAC4AAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAuQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAC5AAAAAQAHAAQAAAAHAAIAAAADAAYAWQAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAIQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFcAAAAFAAAAAAAAAABABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHAFUAAAAHAA4AAAADAAYAbgAAAAYAbwAAAAYAcAAAAAYAcQAAAAYAcgAAAAYAcwAAAAYAdAAAAAYAdQAAAAYAdgAAAAYAdwAAAAYAeAAAAAYAeQAAAAYAegAAAAcAJwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAIQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAkQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA+QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBJQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABNQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABSQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBTQAQAAAAAAAAAAAAEAA0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAUQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACZABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA1QAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA5QAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAADpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADxABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEBABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAABEQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABFQAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBEQAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABHQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAgEdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEhABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAFAAAAAAAAgEVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEhABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgEpABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAS0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATEAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAUAAAAAAAAASUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAS0AHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAATkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAIBOQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBPQAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABQAAAAAAAIBMQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBQQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAAFFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFFABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAFAAAAAAAAAFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFFABwADAAAABAAAAAAAAAAAAAQACwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFJABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAADAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAU0AHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAUAAAAAAADAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAU0AHAAMAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVEAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAIBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABVQAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABQAAAAAAAIBTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAACEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBWAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFgAAAAFAAAAAAAAABBABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHAGEAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAACEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAVkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAV0AHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBtAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcATgAAAAQACAAAAAAAAAAGAG4AAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAbwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBwAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHEAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBzAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHQAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB2AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHcAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAeAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB5AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAABBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFRABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAACJABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAJEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAALkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA1QAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADxABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAAD1ABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAPkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQEAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAQUAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABFQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBFQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAAEZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEdABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAERABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEhABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAElABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAACASUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACASkAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACASUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAATEAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAUAAAAAAACATEAHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAABNQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABOQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABLQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABNQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBNQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBPQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABQQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAQFBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFBABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgFFABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFFABwAGAAAABAAIAAAAAAAAAAYAggAAAAUAAAAAAAAAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAUkAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAABAU0AHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAACAU0AHAAYAAAAEAAgAAAAAAAAABgCCAAAABQAAAAAAAMBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBUQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABVQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBVQAcABgAAAAQACAAAAAAAAAAGAIIAAAAFAAAAAAAAgFVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFZABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFVABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAQFZABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFZABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAADAV0AEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgBhAAAABQAAAAAAAMBXQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAQFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHACYAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAAhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD5ABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAHEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAFAAAAAAAAABhABgAJAQAABQAAAAAAAAAkQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAAAqQAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAYQAYACAEAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgBkAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAUAAAAAAAAAGEAGAAcBAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAAD9ABwAGAAAABAAIAAAAAAAAAAYAYgAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAQUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAEAAEAAAAAAAAAAAAAAAAAAAABAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAAhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJEAHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAGQAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABwAGAAAABAAIAAAAAAAAAAYAYgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgAJAQAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAAgBAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYABwEAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBiAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAoAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAAhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD5ABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAABBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAABhABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABAAIAAAAAAAAAAYAbAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAFAAAAAAAAABhABgAPAQAABQAAAAAAAAAkQAcABgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAqQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAxQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAzQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAA1QAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAQACAAAAAAAAAAGAGwAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAYQAYADwEAAAUAAAAAAAAAOUAHAAYAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAEAAgAAAAAAAAABgBsAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA9QAcAAwAAAAUAAAAAAAAAGEAGAA8BAAAFAAAAAAAAAEJABwAGAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAIQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGQAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYABwEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEIAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZAAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANUAHAAYAAAAEAAgAAAAAAAAABgBCAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAAcBAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAIQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYACAEAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEIAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAZgAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANUAHAAYAAAAEAAgAAAAAAAAABgBCAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAAgBAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAAAQAHAAcAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAIQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAYAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAIQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA1QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAQQAcABgAAAAQACAAAAAAAAAAGAHwAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAQgAAAAUAAAAAAAAAJEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAYAAAAEAAgAAAAAAAAABgB7AAAABQAAAAAAAAAmQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAEIAAAAFAAAAAAAAACJABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAC5ABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADNABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAFwEAAAUAAAAAAAAANEAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgB/AAAABQAAAAAAAAA2QAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABgDSAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDTAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGANQAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA1QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA1gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDXAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGANgAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA2QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA2gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDbAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDcAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDdAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAOMAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOwAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAO0AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAO4AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA+wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgD8AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAP0AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA/gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgD/AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAAABAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAAEBAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAAIBAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAAGACcBAAACAAAAAAB6AAAABwAAAAAACgABAAAA0QAAAAIAAAAAANEAAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAARQEAAAcAAAAAAAoAAAAAAEcBAAAHAAAAAAAKAAAAAAAAAAAAdAAAAAEAAAABAAAAAAAAANEAAAAAAAAAdQAAAAAAAAAAAAAAAwAAAAAAAABJAQAAAwBKAQAAAwBLAQAAAgAAAAAAfQAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if837_end1879 
    die "Repossession conflicts occurred during deserialization"
  if837_end1879:
    .const "LexInfo" $P5001 = "cuid_201_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1365879968.631"
    nqp_get_sc_object $P5002, "CB6D7C261AAF0D8B4B26A009A161E31DD17426AF-1365879963.875", 32
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_201_1365879968.631"
    nqp_get_sc_object $P5002, "CB6D7C261AAF0D8B4B26A009A161E31DD17426AF-1365879963.875", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_201_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_57_1365879968.631" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_58_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 67
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_188_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_188_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_188_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_188_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 68
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_202_1365879968.631" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_65_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 101
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_203_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 68
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_203_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_203_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 68
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_203_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_98_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 121
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_216_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 102
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_216_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_216_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 102
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_216_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_117_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 124
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_118_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 122
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_118_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_118_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 122
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_118_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_119_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 166
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_220_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_220_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_220_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 125
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_220_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_160_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_163_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 172
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_247_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_247_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_247_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 167
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_247_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_165_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 176
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 179
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 180
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 181
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 182
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_174_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 183
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_248_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_248_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_248_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 173
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_248_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_175_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 185
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_176_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 186
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_177_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 187
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_178_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 188
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_179_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 189
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_180_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 190
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_181_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 191
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_182_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 192
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_183_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 193
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_184_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 194
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_185_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 195
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_186_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 196
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_187_1365879968.631" 
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 197
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_258_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_258_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_258_1365879968.631"
    nqp_get_sc_object $P5002, "B80449D644E1050F26DF9E69AE32428A32785A12-1365879968.656", 184
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_258_1365879968.631"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1365879968.631") :anon :lex :outer("cuid_260_1365879968.631")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P5001, 'QRPA'
    .const 'Sub' $P5002 = "cuid_1_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_175_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_176_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_177_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_178_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_179_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_180_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_181_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_182_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_183_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_184_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_185_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_186_1365879968.631" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_187_1365879968.631" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1365879968.631") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_201_1365879968.631" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1365879968.631") :main
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_201_1365879968.631" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end