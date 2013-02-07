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
.sub "" :subid("cuid_181_1360235112.107") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5024 = 'cuid_174_1360235112.107' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_183_1360235112.107' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_195_1360235112.107' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_220_1360235112.107' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_221_1360235112.107' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_231_1360235112.107' 
    capture_lex $P5024 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "NQPCursorRole", $P104 
    .lex "$compiler", $P105 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P105, $P5001
.annotate 'line', 1053
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
    .const 'Sub' $P5006 = 'cuid_174_1360235112.107' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_183_1360235112.107' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_195_1360235112.107' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 1695
    nqp_get_sc_object $P5015, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5014, $P5015, "HLL"
    get_who $P5013, $P5014
    set $P5012, $P5013["Compiler"]
    unless_null $P5012, fallback1235
    nqp_get_sc_object $P5016, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5012, $P5016
  fallback1235:
    $P5017 = $P5012."new"()
    set $P105, $P5017
.annotate 'line', 1696
    $P105."language"("parrot")
    .const 'Sub' $P5018 = 'cuid_220_1360235112.107' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_221_1360235112.107' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_231_1360235112.107' 
    capture_lex $P5022
    $P5023 = $P5022()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1360235112.107") :anon :lex :outer("cuid_181_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5075 = 'cuid_1_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_2_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_3_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_4_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_5_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_6_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_7_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_8_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_9_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_10_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_11_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_12_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_13_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_14_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_15_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_16_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_17_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_18_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_19_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_20_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_21_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_22_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_23_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_24_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_25_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_26_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_27_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_28_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_29_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_30_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_31_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_32_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_33_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_34_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_35_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_36_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_37_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_38_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_39_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_40_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_41_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_42_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_43_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_44_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_47_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_49_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_50_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_51_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_52_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_53_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_54_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_55_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_56_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_57_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_58_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_59_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_60_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_61_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_62_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_63_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_64_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_65_1360235112.107' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_66_1360235112.107' 
    capture_lex $P5075 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "$TRUE", $P103 
    .lex "$?PACKAGE", $P104 
    .lex "$?CLASS", $P105 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    box $P5004, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P5004
    get_who $P5006, $P104
    set $P5005, $P5006["NQPCursor"]
    unless_null $P5005, fallback14
    nqp_get_sc_object $P5009, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5008, $P5009
    set $P5007, $P5008["NQPCursor"]
    unless_null $P5007, vivi_1215
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5007, $P5010
  vivi_1215:
    set $P5005, $P5007
  fallback14:
    set $P102, $P5005
    .const 'Sub' $P5011 = 'cuid_1_1360235112.107' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_2_1360235112.107' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_3_1360235112.107' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_4_1360235112.107' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_5_1360235112.107' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_6_1360235112.107' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_7_1360235112.107' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_8_1360235112.107' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_9_1360235112.107' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_10_1360235112.107' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_11_1360235112.107' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_12_1360235112.107' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_13_1360235112.107' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_14_1360235112.107' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_15_1360235112.107' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_16_1360235112.107' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_17_1360235112.107' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_18_1360235112.107' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_19_1360235112.107' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_20_1360235112.107' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_21_1360235112.107' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_22_1360235112.107' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_23_1360235112.107' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_24_1360235112.107' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_25_1360235112.107' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_26_1360235112.107' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_27_1360235112.107' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_28_1360235112.107' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_29_1360235112.107' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_30_1360235112.107' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_31_1360235112.107' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_32_1360235112.107' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_33_1360235112.107' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_34_1360235112.107' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_35_1360235112.107' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_36_1360235112.107' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_37_1360235112.107' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_38_1360235112.107' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_39_1360235112.107' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_40_1360235112.107' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_41_1360235112.107' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_42_1360235112.107' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_43_1360235112.107' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_44_1360235112.107' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_47_1360235112.107' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_49_1360235112.107' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_50_1360235112.107' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_51_1360235112.107' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_52_1360235112.107' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_53_1360235112.107' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_54_1360235112.107' 
    capture_lex $P5061
    box $P5062, 1
    set $P103, $P5062
    .const 'Sub' $P5063 = 'cuid_55_1360235112.107' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_56_1360235112.107' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_57_1360235112.107' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_58_1360235112.107' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_59_1360235112.107' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_60_1360235112.107' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_61_1360235112.107' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_62_1360235112.107' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_63_1360235112.107' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_64_1360235112.107' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_65_1360235112.107' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_66_1360235112.107' 
    capture_lex $P5074
    .return ($P5074) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
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
.sub "termish" :subid("cuid_2_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 15
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx13_tgt
    .local int rx13_pos
    .local int rx13_off
    .local int rx13_eos
    .local int rx13_rep
    .local pmc rx13_cur
    .local pmc rx13_curclass
    .local pmc rx13_bstack
    .local pmc rx13_cstack
    (rx13_cur, rx13_tgt, rx13_pos, rx13_curclass, rx13_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx13_cur
    length rx13_eos, rx13_tgt
    eq $I19, 1, rx13_restart18
    gt rx13_pos, rx13_eos, rx13_fail19
    repr_get_attr_int $I11, self, rx13_curclass, "$!from"
    ne $I11, -1, rxscan14_done25
    goto rxscan14_scan24
  rxscan14_loop23:
    inc rx13_pos
    gt rx13_pos, rx13_eos, rx13_fail19
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!from", rx13_pos
  rxscan14_scan24:
    nqp_rxmark rx13_bstack, rxscan14_loop23, rx13_pos, 0
  rxscan14_done25:
    nqp_rxmark rx13_bstack, rxquantr15_done27, rx13_pos, 0
  rxquantr15_loop26:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."prefixish"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
    goto rxsubrule16_pass28
  rxsubrule16_back29:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
  rxsubrule16_pass28:
    rx13_cstack = rx13_cur."!cursor_capture"($P11, "prefixish")
    set_addr $I11, rxsubrule16_back29
    push rx13_bstack, $I11
    push rx13_bstack, 0
    push rx13_bstack, rx13_pos
    elements $I11, rx13_cstack
    push rx13_bstack, $I11
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
    nqp_rxpeek $I19, rx13_bstack, rxquantr15_done27
    inc $I19
    inc $I19
    set rx13_rep, rx13_bstack[$I19]
    nqp_rxcommit rx13_bstack, rxquantr15_done27
    inc rx13_rep
    nqp_rxmark rx13_bstack, rxquantr15_done27, rx13_pos, rx13_rep
    goto rxquantr15_loop26
  rxquantr15_done27:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."term"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
    nqp_rxmark rx13_bstack, rxsubrule17_pass30, -1, 0
  rxsubrule17_pass30:
    rx13_cstack = rx13_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
    nqp_rxmark rx13_bstack, rxquantr18_done32, rx13_pos, 0
  rxquantr18_loop31:
    repr_bind_attr_int rx13_cur, rx13_curclass, "$!pos", rx13_pos
    $P11 = rx13_cur."postfixish"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
    goto rxsubrule19_pass33
  rxsubrule19_back34:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx13_curclass, "$!pos"
    lt $I11, 0, rx13_fail19
  rxsubrule19_pass33:
    rx13_cstack = rx13_cur."!cursor_capture"($P11, "postfixish")
    set_addr $I11, rxsubrule19_back34
    push rx13_bstack, $I11
    push rx13_bstack, 0
    push rx13_bstack, rx13_pos
    elements $I11, rx13_cstack
    push rx13_bstack, $I11
    repr_get_attr_int rx13_pos, $P11, rx13_curclass, "$!pos"
    nqp_rxpeek $I19, rx13_bstack, rxquantr18_done32
    inc $I19
    inc $I19
    set rx13_rep, rx13_bstack[$I19]
    nqp_rxcommit rx13_bstack, rxquantr18_done32
    inc rx13_rep
    nqp_rxmark rx13_bstack, rxquantr18_done32, rx13_pos, rx13_rep
    goto rxquantr18_loop31
  rxquantr18_done32:
    rx13_cur."!cursor_pass"(rx13_pos, "termish", 'backtrack'=>1)
    .return (rx13_cur)
  rx13_restart18:
    repr_get_attr_obj rx13_cstack, rx13_cur, rx13_curclass, "$!cstack"
  rx13_fail19:
    unless rx13_bstack, rx13_done17
    pop $I19, rx13_bstack
    if_null rx13_cstack, rx13_cstack_done22
    unless rx13_cstack, rx13_cstack_done22
    dec $I19
    set $P11, rx13_cstack[$I19]
  rx13_cstack_done22:
    pop rx13_rep, rx13_bstack
    pop rx13_pos, rx13_bstack
    pop $I19, rx13_bstack
    lt rx13_pos, -1, rx13_done17
    lt rx13_pos, 0, rx13_fail19
    eq $I19, 0, rx13_fail19
    nqp_islist $I20, rx13_cstack
    unless $I20, rx13_jump20
    elements $I18, rx13_bstack
    le $I18, 0, rx13_cut21
    dec $I18
    set $I18, rx13_bstack[$I18]
  rx13_cut21:
    assign rx13_cstack, $I18
  rx13_jump20:
    jump $I19
  rx13_done17:
    rx13_cur."!cursor_fail"()
    .return (rx13_cur) 
.end
.HLL "nqp"
.namespace []
.sub "term" :subid("cuid_3_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx20_tgt
    .local int rx20_pos
    .local int rx20_off
    .local int rx20_eos
    .local int rx20_rep
    .local pmc rx20_cur
    .local pmc rx20_curclass
    .local pmc rx20_bstack
    .local pmc rx20_cstack
    (rx20_cur, rx20_tgt, rx20_pos, rx20_curclass, rx20_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx20_cur
    length rx20_eos, rx20_tgt
    eq $I19, 1, rx20_restart37
    gt rx20_pos, rx20_eos, rx20_fail38
    repr_get_attr_int $I11, self, rx20_curclass, "$!from"
    ne $I11, -1, rxscan21_done44
    goto rxscan21_scan43
  rxscan21_loop42:
    inc rx20_pos
    gt rx20_pos, rx20_eos, rx20_fail38
    repr_bind_attr_int rx20_cur, rx20_curclass, "$!from", rx20_pos
  rxscan21_scan43:
    nqp_rxmark rx20_bstack, rxscan21_loop42, rx20_pos, 0
  rxscan21_done44:
    repr_bind_attr_int rx20_cur, rx20_curclass, "$!pos", rx20_pos
    $P11 = rx20_cur."circumfix"()
    repr_get_attr_int $I11, $P11, rx20_curclass, "$!pos"
    lt $I11, 0, rx20_fail38
    nqp_rxmark rx20_bstack, rxsubrule22_pass45, -1, 0
  rxsubrule22_pass45:
    rx20_cstack = rx20_cur."!cursor_capture"($P11, "circumfix")
    repr_get_attr_int rx20_pos, $P11, rx20_curclass, "$!pos"
    rx20_cur."!cursor_pass"(rx20_pos, "term:sym<circumfix>", 'backtrack'=>1)
    .return (rx20_cur)
  rx20_restart37:
    repr_get_attr_obj rx20_cstack, rx20_cur, rx20_curclass, "$!cstack"
  rx20_fail38:
    unless rx20_bstack, rx20_done36
    pop $I19, rx20_bstack
    if_null rx20_cstack, rx20_cstack_done41
    unless rx20_cstack, rx20_cstack_done41
    dec $I19
    set $P11, rx20_cstack[$I19]
  rx20_cstack_done41:
    pop rx20_rep, rx20_bstack
    pop rx20_pos, rx20_bstack
    pop $I19, rx20_bstack
    lt rx20_pos, -1, rx20_done36
    lt rx20_pos, 0, rx20_fail38
    eq $I19, 0, rx20_fail38
    nqp_islist $I20, rx20_cstack
    unless $I20, rx20_jump39
    elements $I18, rx20_bstack
    le $I18, 0, rx20_cut40
    dec $I18
    set $I18, rx20_bstack[$I18]
  rx20_cut40:
    assign rx20_cstack, $I18
  rx20_jump39:
    jump $I19
  rx20_done36:
    rx20_cur."!cursor_fail"()
    .return (rx20_cur) 
.end
.HLL "nqp"
.namespace []
.sub "infixish" :subid("cuid_10_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 30
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    .local pmc rx23_curclass
    .local pmc rx23_bstack
    .local pmc rx23_cstack
    (rx23_cur, rx23_tgt, rx23_pos, rx23_curclass, rx23_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx23_cur
    length rx23_eos, rx23_tgt
    eq $I19, 1, rx23_restart48
    gt rx23_pos, rx23_eos, rx23_fail49
    repr_get_attr_int $I11, self, rx23_curclass, "$!from"
    ne $I11, -1, rxscan24_done55
    goto rxscan24_scan54
  rxscan24_loop53:
    inc rx23_pos
    gt rx23_pos, rx23_eos, rx23_fail49
    repr_bind_attr_int rx23_cur, rx23_curclass, "$!from", rx23_pos
  rxscan24_scan54:
    nqp_rxmark rx23_bstack, rxscan24_loop53, rx23_pos, 0
  rxscan24_done55:
    repr_bind_attr_int rx23_cur, rx23_curclass, "$!pos", rx23_pos
    $P11 = rx23_cur."infix"()
    repr_get_attr_int $I11, $P11, rx23_curclass, "$!pos"
    lt $I11, 0, rx23_fail49
    nqp_rxmark rx23_bstack, rxsubrule25_pass56, -1, 0
  rxsubrule25_pass56:
    rx23_cstack = rx23_cur."!cursor_capture"($P11, "OPER=infix")
    repr_get_attr_int rx23_pos, $P11, rx23_curclass, "$!pos"
    rx23_cur."!cursor_pass"(rx23_pos, "infixish", 'backtrack'=>1)
    .return (rx23_cur)
  rx23_restart48:
    repr_get_attr_obj rx23_cstack, rx23_cur, rx23_curclass, "$!cstack"
  rx23_fail49:
    unless rx23_bstack, rx23_done47
    pop $I19, rx23_bstack
    if_null rx23_cstack, rx23_cstack_done52
    unless rx23_cstack, rx23_cstack_done52
    dec $I19
    set $P11, rx23_cstack[$I19]
  rx23_cstack_done52:
    pop rx23_rep, rx23_bstack
    pop rx23_pos, rx23_bstack
    pop $I19, rx23_bstack
    lt rx23_pos, -1, rx23_done47
    lt rx23_pos, 0, rx23_fail49
    eq $I19, 0, rx23_fail49
    nqp_islist $I20, rx23_cstack
    unless $I20, rx23_jump50
    elements $I18, rx23_bstack
    le $I18, 0, rx23_cut51
    dec $I18
    set $I18, rx23_bstack[$I18]
  rx23_cut51:
    assign rx23_cstack, $I18
  rx23_jump50:
    jump $I19
  rx23_done47:
    rx23_cur."!cursor_fail"()
    .return (rx23_cur) 
.end
.HLL "nqp"
.namespace []
.sub "prefixish" :subid("cuid_11_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 31
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx26_tgt
    .local int rx26_pos
    .local int rx26_off
    .local int rx26_eos
    .local int rx26_rep
    .local pmc rx26_cur
    .local pmc rx26_curclass
    .local pmc rx26_bstack
    .local pmc rx26_cstack
    (rx26_cur, rx26_tgt, rx26_pos, rx26_curclass, rx26_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx26_cur
    length rx26_eos, rx26_tgt
    eq $I19, 1, rx26_restart59
    gt rx26_pos, rx26_eos, rx26_fail60
    repr_get_attr_int $I11, self, rx26_curclass, "$!from"
    ne $I11, -1, rxscan27_done66
    goto rxscan27_scan65
  rxscan27_loop64:
    inc rx26_pos
    gt rx26_pos, rx26_eos, rx26_fail60
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!from", rx26_pos
  rxscan27_scan65:
    nqp_rxmark rx26_bstack, rxscan27_loop64, rx26_pos, 0
  rxscan27_done66:
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."prefix"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail60
    nqp_rxmark rx26_bstack, rxsubrule28_pass67, -1, 0
  rxsubrule28_pass67:
    rx26_cstack = rx26_cur."!cursor_capture"($P11, "OPER=prefix")
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    repr_bind_attr_int rx26_cur, rx26_curclass, "$!pos", rx26_pos
    $P11 = rx26_cur."ws"()
    repr_get_attr_int $I11, $P11, rx26_curclass, "$!pos"
    lt $I11, 0, rx26_fail60
    repr_get_attr_int rx26_pos, $P11, rx26_curclass, "$!pos"
    rx26_cur."!cursor_pass"(rx26_pos, "prefixish", 'backtrack'=>1)
    .return (rx26_cur)
  rx26_restart59:
    repr_get_attr_obj rx26_cstack, rx26_cur, rx26_curclass, "$!cstack"
  rx26_fail60:
    unless rx26_bstack, rx26_done58
    pop $I19, rx26_bstack
    if_null rx26_cstack, rx26_cstack_done63
    unless rx26_cstack, rx26_cstack_done63
    dec $I19
    set $P11, rx26_cstack[$I19]
  rx26_cstack_done63:
    pop rx26_rep, rx26_bstack
    pop rx26_pos, rx26_bstack
    pop $I19, rx26_bstack
    lt rx26_pos, -1, rx26_done58
    lt rx26_pos, 0, rx26_fail60
    eq $I19, 0, rx26_fail60
    nqp_islist $I20, rx26_cstack
    unless $I20, rx26_jump61
    elements $I18, rx26_bstack
    le $I18, 0, rx26_cut62
    dec $I18
    set $I18, rx26_bstack[$I18]
  rx26_cut62:
    assign rx26_cstack, $I18
  rx26_jump61:
    jump $I19
  rx26_done58:
    rx26_cur."!cursor_fail"()
    .return (rx26_cur) 
.end
.HLL "nqp"
.namespace []
.sub "postfixish" :subid("cuid_12_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx30_tgt
    .local int rx30_pos
    .local int rx30_off
    .local int rx30_eos
    .local int rx30_rep
    .local pmc rx30_cur
    .local pmc rx30_curclass
    .local pmc rx30_bstack
    .local pmc rx30_cstack
    (rx30_cur, rx30_tgt, rx30_pos, rx30_curclass, rx30_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx30_cur
    length rx30_eos, rx30_tgt
    eq $I19, 1, rx30_restart71
    gt rx30_pos, rx30_eos, rx30_fail72
    repr_get_attr_int $I11, self, rx30_curclass, "$!from"
    ne $I11, -1, rxscan31_done78
    goto rxscan31_scan77
  rxscan31_loop76:
    inc rx30_pos
    gt rx30_pos, rx30_eos, rx30_fail72
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!from", rx30_pos
  rxscan31_scan77:
    nqp_rxmark rx30_bstack, rxscan31_loop76, rx30_pos, 0
  rxscan31_done78:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt32_080
    nqp_push_label $P11, alt32_182
    nqp_rxmark rx30_bstack, alt32_end79, -1, 0
    rx30_cur."!alt"(rx30_pos, "alt_nfa__1_1360235112.236", $P11)
    goto rx30_fail72
  alt32_080:
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!pos", rx30_pos
    $P11 = rx30_cur."postfix"()
    repr_get_attr_int $I11, $P11, rx30_curclass, "$!pos"
    lt $I11, 0, rx30_fail72
    nqp_rxmark rx30_bstack, rxsubrule33_pass81, -1, 0
  rxsubrule33_pass81:
    rx30_cstack = rx30_cur."!cursor_capture"($P11, "OPER=postfix")
    repr_get_attr_int rx30_pos, $P11, rx30_curclass, "$!pos"
    goto alt32_end79
  alt32_182:
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!pos", rx30_pos
    $P11 = rx30_cur."postcircumfix"()
    repr_get_attr_int $I11, $P11, rx30_curclass, "$!pos"
    lt $I11, 0, rx30_fail72
    nqp_rxmark rx30_bstack, rxsubrule34_pass83, -1, 0
  rxsubrule34_pass83:
    rx30_cstack = rx30_cur."!cursor_capture"($P11, "OPER=postcircumfix")
    repr_get_attr_int rx30_pos, $P11, rx30_curclass, "$!pos"
    goto alt32_end79
  alt32_end79:
    rx30_cur."!cursor_pass"(rx30_pos, "postfixish", 'backtrack'=>1)
    .return (rx30_cur)
  rx30_restart71:
    repr_get_attr_obj rx30_cstack, rx30_cur, rx30_curclass, "$!cstack"
  rx30_fail72:
    unless rx30_bstack, rx30_done70
    pop $I19, rx30_bstack
    if_null rx30_cstack, rx30_cstack_done75
    unless rx30_cstack, rx30_cstack_done75
    dec $I19
    set $P11, rx30_cstack[$I19]
  rx30_cstack_done75:
    pop rx30_rep, rx30_bstack
    pop rx30_pos, rx30_bstack
    pop $I19, rx30_bstack
    lt rx30_pos, -1, rx30_done70
    lt rx30_pos, 0, rx30_fail72
    eq $I19, 0, rx30_fail72
    nqp_islist $I20, rx30_cstack
    unless $I20, rx30_jump73
    elements $I18, rx30_bstack
    le $I18, 0, rx30_cut74
    dec $I18
    set $I18, rx30_bstack[$I18]
  rx30_cut74:
    assign rx30_cstack, $I18
  rx30_jump73:
    jump $I19
  rx30_done70:
    rx30_cur."!cursor_fail"()
    .return (rx30_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_13_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 37
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx35_tgt
    .local int rx35_pos
    .local int rx35_off
    .local int rx35_eos
    .local int rx35_rep
    .local pmc rx35_cur
    .local pmc rx35_curclass
    .local pmc rx35_bstack
    .local pmc rx35_cstack
    (rx35_cur, rx35_tgt, rx35_pos, rx35_curclass, rx35_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx35_cur
    length rx35_eos, rx35_tgt
    eq $I19, 1, rx35_restart86
    gt rx35_pos, rx35_eos, rx35_fail87
    repr_get_attr_int $I11, self, rx35_curclass, "$!from"
    ne $I11, -1, rxscan36_done93
    goto rxscan36_scan92
  rxscan36_loop91:
    inc rx35_pos
    gt rx35_pos, rx35_eos, rx35_fail87
    repr_bind_attr_int rx35_cur, rx35_curclass, "$!from", rx35_pos
  rxscan36_scan92:
    nqp_rxmark rx35_bstack, rxscan36_loop91, rx35_pos, 0
  rxscan36_done93:
    rx35_cur."!cursor_pass"(rx35_pos, "nullterm", 'backtrack'=>1)
    .return (rx35_cur)
  rx35_restart86:
    repr_get_attr_obj rx35_cstack, rx35_cur, rx35_curclass, "$!cstack"
  rx35_fail87:
    unless rx35_bstack, rx35_done85
    pop $I19, rx35_bstack
    if_null rx35_cstack, rx35_cstack_done90
    unless rx35_cstack, rx35_cstack_done90
    dec $I19
    set $P11, rx35_cstack[$I19]
  rx35_cstack_done90:
    pop rx35_rep, rx35_bstack
    pop rx35_pos, rx35_bstack
    pop $I19, rx35_bstack
    lt rx35_pos, -1, rx35_done85
    lt rx35_pos, 0, rx35_fail87
    eq $I19, 0, rx35_fail87
    nqp_islist $I20, rx35_cstack
    unless $I20, rx35_jump88
    elements $I18, rx35_bstack
    le $I18, 0, rx35_cut89
    dec $I18
    set $I18, rx35_bstack[$I18]
  rx35_cut89:
    assign rx35_cstack, $I18
  rx35_jump88:
    jump $I19
  rx35_done85:
    rx35_cur."!cursor_fail"()
    .return (rx35_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_14_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx38_tgt
    .local int rx38_pos
    .local int rx38_off
    .local int rx38_eos
    .local int rx38_rep
    .local pmc rx38_cur
    .local pmc rx38_curclass
    .local pmc rx38_bstack
    .local pmc rx38_cstack
    (rx38_cur, rx38_tgt, rx38_pos, rx38_curclass, rx38_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx38_cur
    length rx38_eos, rx38_tgt
    eq $I19, 1, rx38_restart97
    gt rx38_pos, rx38_eos, rx38_fail98
    repr_get_attr_int $I11, self, rx38_curclass, "$!from"
    ne $I11, -1, rxscan39_done104
    goto rxscan39_scan103
  rxscan39_loop102:
    inc rx38_pos
    gt rx38_pos, rx38_eos, rx38_fail98
    repr_bind_attr_int rx38_cur, rx38_curclass, "$!from", rx38_pos
  rxscan39_scan103:
    nqp_rxmark rx38_bstack, rxscan39_loop102, rx38_pos, 0
  rxscan39_done104:
    repr_bind_attr_int rx38_cur, rx38_curclass, "$!pos", rx38_pos
    $P11 = rx38_cur."nullterm"()
    repr_get_attr_int $I11, $P11, rx38_curclass, "$!pos"
    lt $I11, 0, rx38_fail98
    nqp_rxmark rx38_bstack, rxsubrule40_pass105, -1, 0
  rxsubrule40_pass105:
    rx38_cstack = rx38_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx38_pos, $P11, rx38_curclass, "$!pos"
    rx38_cur."!cursor_pass"(rx38_pos, "nullterm_alt", 'backtrack'=>1)
    .return (rx38_cur)
  rx38_restart97:
    repr_get_attr_obj rx38_cstack, rx38_cur, rx38_curclass, "$!cstack"
  rx38_fail98:
    unless rx38_bstack, rx38_done96
    pop $I19, rx38_bstack
    if_null rx38_cstack, rx38_cstack_done101
    unless rx38_cstack, rx38_cstack_done101
    dec $I19
    set $P11, rx38_cstack[$I19]
  rx38_cstack_done101:
    pop rx38_rep, rx38_bstack
    pop rx38_pos, rx38_bstack
    pop $I19, rx38_bstack
    lt rx38_pos, -1, rx38_done96
    lt rx38_pos, 0, rx38_fail98
    eq $I19, 0, rx38_fail98
    nqp_islist $I20, rx38_cstack
    unless $I20, rx38_jump99
    elements $I18, rx38_bstack
    le $I18, 0, rx38_cut100
    dec $I18
    set $I18, rx38_bstack[$I18]
  rx38_cut100:
    assign rx38_cstack, $I18
  rx38_jump99:
    jump $I19
  rx38_done96:
    rx38_cur."!cursor_fail"()
    .return (rx38_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nulltermish" :subid("cuid_15_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."termish"()
    set $P5005, $P5002
    if $P5002 goto unless41_end107 
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."nullterm_alt"()
    set $P5005, $P5004
  unless41_end107:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_16_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx42_tgt
    .local int rx42_pos
    .local int rx42_off
    .local int rx42_eos
    .local int rx42_rep
    .local pmc rx42_cur
    .local pmc rx42_curclass
    .local pmc rx42_bstack
    .local pmc rx42_cstack
    (rx42_cur, rx42_tgt, rx42_pos, rx42_curclass, rx42_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx42_cur
    length rx42_eos, rx42_tgt
    eq $I19, 1, rx42_restart110
    gt rx42_pos, rx42_eos, rx42_fail111
    repr_get_attr_int $I11, self, rx42_curclass, "$!from"
    ne $I11, -1, rxscan43_done117
    goto rxscan43_scan116
  rxscan43_loop115:
    inc rx42_pos
    gt rx42_pos, rx42_eos, rx42_fail111
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!from", rx42_pos
  rxscan43_scan116:
    nqp_rxmark rx42_bstack, rxscan43_loop115, rx42_pos, 0
  rxscan43_done117:
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!pos", rx42_pos
    $P11 = rx42_cur."starter"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
    nqp_rxmark rx42_bstack, rxsubrule44_pass118, -1, 0
  rxsubrule44_pass118:
    rx42_cstack = rx42_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx42_pos, $P11, rx42_curclass, "$!pos"
    nqp_rxmark rx42_bstack, rxquantr45_done120, rx42_pos, 0
  rxquantr45_loop119:
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!pos", rx42_pos
    $P11 = rx42_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
    goto rxsubrule46_pass121
  rxsubrule46_back122:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
  rxsubrule46_pass121:
    rx42_cstack = rx42_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule46_back122
    push rx42_bstack, $I11
    push rx42_bstack, 0
    push rx42_bstack, rx42_pos
    elements $I11, rx42_cstack
    push rx42_bstack, $I11
    repr_get_attr_int rx42_pos, $P11, rx42_curclass, "$!pos"
    nqp_rxpeek $I19, rx42_bstack, rxquantr45_done120
    inc $I19
    inc $I19
    set rx42_rep, rx42_bstack[$I19]
    nqp_rxcommit rx42_bstack, rxquantr45_done120
    inc rx42_rep
    nqp_rxmark rx42_bstack, rxquantr45_done120, rx42_pos, rx42_rep
    goto rxquantr45_loop119
  rxquantr45_done120:
    repr_bind_attr_int rx42_cur, rx42_curclass, "$!pos", rx42_pos
    $P11 = rx42_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx42_curclass, "$!pos"
    lt $I11, 0, rx42_fail111
    nqp_rxmark rx42_bstack, rxsubrule47_pass123, -1, 0
  rxsubrule47_pass123:
    rx42_cstack = rx42_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx42_pos, $P11, rx42_curclass, "$!pos"
    rx42_cur."!cursor_pass"(rx42_pos, "quote_delimited", 'backtrack'=>1)
    .return (rx42_cur)
  rx42_restart110:
    repr_get_attr_obj rx42_cstack, rx42_cur, rx42_curclass, "$!cstack"
  rx42_fail111:
    unless rx42_bstack, rx42_done109
    pop $I19, rx42_bstack
    if_null rx42_cstack, rx42_cstack_done114
    unless rx42_cstack, rx42_cstack_done114
    dec $I19
    set $P11, rx42_cstack[$I19]
  rx42_cstack_done114:
    pop rx42_rep, rx42_bstack
    pop rx42_pos, rx42_bstack
    pop $I19, rx42_bstack
    lt rx42_pos, -1, rx42_done109
    lt rx42_pos, 0, rx42_fail111
    eq $I19, 0, rx42_fail111
    nqp_islist $I20, rx42_cstack
    unless $I20, rx42_jump112
    elements $I18, rx42_bstack
    le $I18, 0, rx42_cut113
    dec $I18
    set $I18, rx42_bstack[$I18]
  rx42_cut113:
    assign rx42_cstack, $I18
  rx42_jump112:
    jump $I19
  rx42_done109:
    rx42_cur."!cursor_fail"()
    .return (rx42_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_17_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    .local pmc rx48_curclass
    .local pmc rx48_bstack
    .local pmc rx48_cstack
    (rx48_cur, rx48_tgt, rx48_pos, rx48_curclass, rx48_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx48_cur
    length rx48_eos, rx48_tgt
    eq $I19, 1, rx48_restart126
    gt rx48_pos, rx48_eos, rx48_fail127
    repr_get_attr_int $I11, self, rx48_curclass, "$!from"
    ne $I11, -1, rxscan49_done133
    goto rxscan49_scan132
  rxscan49_loop131:
    inc rx48_pos
    gt rx48_pos, rx48_eos, rx48_fail127
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!from", rx48_pos
  rxscan49_scan132:
    nqp_rxmark rx48_bstack, rxscan49_loop131, rx48_pos, 0
  rxscan49_done133:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    ge $I11, 0, rx48_fail127
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt50_0135
    nqp_push_label $P11, alt50_1137
    nqp_push_label $P11, alt50_2140
    nqp_rxmark rx48_bstack, alt50_end134, -1, 0
    rx48_cur."!alt"(rx48_pos, "alt_nfa__2_1360235112.265", $P11)
    goto rx48_fail127
  alt50_0135:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail127
    nqp_rxmark rx48_bstack, rxsubrule51_pass136, -1, 0
  rxsubrule51_pass136:
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "quote_escape")
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    goto alt50_end134
  alt50_1137:
    nqp_rxmark rx48_bstack, rxquantr52_done139, -1, 0
  rxquantr52_loop138:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."starter"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    ge $I11, 0, rx48_fail127
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    ge $I11, 0, rx48_fail127
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    ge $I11, 0, rx48_fail127
    ge rx48_pos, rx48_eos, rx48_fail127
    add rx48_pos, 1
    nqp_rxpeek $I19, rx48_bstack, rxquantr52_done139
    inc $I19
    inc $I19
    set rx48_rep, rx48_bstack[$I19]
    nqp_rxcommit rx48_bstack, rxquantr52_done139
    inc rx48_rep
    nqp_rxmark rx48_bstack, rxquantr52_done139, rx48_pos, rx48_rep
    goto rxquantr52_loop138
  rxquantr52_done139:
    goto alt50_end134
  alt50_2140:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."starter"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail127
    nqp_rxmark rx48_bstack, rxsubrule53_pass141, -1, 0
  rxsubrule53_pass141:
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    nqp_rxmark rx48_bstack, rxquantr54_done143, rx48_pos, 0
  rxquantr54_loop142:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail127
    goto rxsubrule55_pass144
  rxsubrule55_back145:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail127
  rxsubrule55_pass144:
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule55_back145
    push rx48_bstack, $I11
    push rx48_bstack, 0
    push rx48_bstack, rx48_pos
    elements $I11, rx48_cstack
    push rx48_bstack, $I11
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    nqp_rxpeek $I19, rx48_bstack, rxquantr54_done143
    inc $I19
    inc $I19
    set rx48_rep, rx48_bstack[$I19]
    nqp_rxcommit rx48_bstack, rxquantr54_done143
    inc rx48_rep
    nqp_rxmark rx48_bstack, rxquantr54_done143, rx48_pos, rx48_rep
    goto rxquantr54_loop142
  rxquantr54_done143:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail127
    nqp_rxmark rx48_bstack, rxsubrule56_pass146, -1, 0
  rxsubrule56_pass146:
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    goto alt50_end134
  alt50_end134:
    nqp_rxcommit rx48_bstack, alt50_end134
    rx48_cur."!cursor_pass"(rx48_pos, "quote_atom", 'backtrack'=>1)
    .return (rx48_cur)
  rx48_restart126:
    repr_get_attr_obj rx48_cstack, rx48_cur, rx48_curclass, "$!cstack"
  rx48_fail127:
    unless rx48_bstack, rx48_done125
    pop $I19, rx48_bstack
    if_null rx48_cstack, rx48_cstack_done130
    unless rx48_cstack, rx48_cstack_done130
    dec $I19
    set $P11, rx48_cstack[$I19]
  rx48_cstack_done130:
    pop rx48_rep, rx48_bstack
    pop rx48_pos, rx48_bstack
    pop $I19, rx48_bstack
    lt rx48_pos, -1, rx48_done125
    lt rx48_pos, 0, rx48_fail127
    eq $I19, 0, rx48_fail127
    nqp_islist $I20, rx48_cstack
    unless $I20, rx48_jump128
    elements $I18, rx48_bstack
    le $I18, 0, rx48_cut129
    dec $I18
    set $I18, rx48_bstack[$I18]
  rx48_cut129:
    assign rx48_cstack, $I18
  rx48_jump128:
    jump $I19
  rx48_done125:
    rx48_cur."!cursor_fail"()
    .return (rx48_cur) 
.end
.HLL "nqp"
.namespace []
.sub "sigil" :subid("cuid_18_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 56
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    .local pmc rx57_curclass
    .local pmc rx57_bstack
    .local pmc rx57_cstack
    (rx57_cur, rx57_tgt, rx57_pos, rx57_curclass, rx57_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx57_cur
    length rx57_eos, rx57_tgt
    eq $I19, 1, rx57_restart149
    gt rx57_pos, rx57_eos, rx57_fail150
    repr_get_attr_int $I11, self, rx57_curclass, "$!from"
    ne $I11, -1, rxscan58_done156
    goto rxscan58_scan155
  rxscan58_loop154:
    inc rx57_pos
    gt rx57_pos, rx57_eos, rx57_fail150
    repr_bind_attr_int rx57_cur, rx57_curclass, "$!from", rx57_pos
  rxscan58_scan155:
    nqp_rxmark rx57_bstack, rxscan58_loop154, rx57_pos, 0
  rxscan58_done156:
    ge rx57_pos, rx57_eos, rx57_fail150
    substr $S11, rx57_tgt, rx57_pos, 1
    index $I11, ucs4:"$@%&", $S11
    lt $I11, 0, rx57_fail150
    inc rx57_pos
    rx57_cur."!cursor_pass"(rx57_pos, "sigil", 'backtrack'=>1)
    .return (rx57_cur)
  rx57_restart149:
    repr_get_attr_obj rx57_cstack, rx57_cur, rx57_curclass, "$!cstack"
  rx57_fail150:
    unless rx57_bstack, rx57_done148
    pop $I19, rx57_bstack
    if_null rx57_cstack, rx57_cstack_done153
    unless rx57_cstack, rx57_cstack_done153
    dec $I19
    set $P11, rx57_cstack[$I19]
  rx57_cstack_done153:
    pop rx57_rep, rx57_bstack
    pop rx57_pos, rx57_bstack
    pop $I19, rx57_bstack
    lt rx57_pos, -1, rx57_done148
    lt rx57_pos, 0, rx57_fail150
    eq $I19, 0, rx57_fail150
    nqp_islist $I20, rx57_cstack
    unless $I20, rx57_jump151
    elements $I18, rx57_bstack
    le $I18, 0, rx57_cut152
    dec $I18
    set $I18, rx57_bstack[$I18]
  rx57_cut152:
    assign rx57_cstack, $I18
  rx57_jump151:
    jump $I19
  rx57_done148:
    rx57_cur."!cursor_fail"()
    .return (rx57_cur) 
.end
.HLL "nqp"
.namespace []
.sub "twigil" :subid("cuid_19_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx59_tgt
    .local int rx59_pos
    .local int rx59_off
    .local int rx59_eos
    .local int rx59_rep
    .local pmc rx59_cur
    .local pmc rx59_curclass
    .local pmc rx59_bstack
    .local pmc rx59_cstack
    (rx59_cur, rx59_tgt, rx59_pos, rx59_curclass, rx59_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx59_cur
    length rx59_eos, rx59_tgt
    eq $I19, 1, rx59_restart159
    gt rx59_pos, rx59_eos, rx59_fail160
    repr_get_attr_int $I11, self, rx59_curclass, "$!from"
    ne $I11, -1, rxscan60_done166
    goto rxscan60_scan165
  rxscan60_loop164:
    inc rx59_pos
    gt rx59_pos, rx59_eos, rx59_fail160
    repr_bind_attr_int rx59_cur, rx59_curclass, "$!from", rx59_pos
  rxscan60_scan165:
    nqp_rxmark rx59_bstack, rxscan60_loop164, rx59_pos, 0
  rxscan60_done166:
    ge rx59_pos, rx59_eos, rx59_fail160
    substr $S11, rx59_tgt, rx59_pos, 1
    index $I11, ucs4:"*!?", $S11
    lt $I11, 0, rx59_fail160
    inc rx59_pos
    rx59_cur."!cursor_pass"(rx59_pos, "twigil", 'backtrack'=>1)
    .return (rx59_cur)
  rx59_restart159:
    repr_get_attr_obj rx59_cstack, rx59_cur, rx59_curclass, "$!cstack"
  rx59_fail160:
    unless rx59_bstack, rx59_done158
    pop $I19, rx59_bstack
    if_null rx59_cstack, rx59_cstack_done163
    unless rx59_cstack, rx59_cstack_done163
    dec $I19
    set $P11, rx59_cstack[$I19]
  rx59_cstack_done163:
    pop rx59_rep, rx59_bstack
    pop rx59_pos, rx59_bstack
    pop $I19, rx59_bstack
    lt rx59_pos, -1, rx59_done158
    lt rx59_pos, 0, rx59_fail160
    eq $I19, 0, rx59_fail160
    nqp_islist $I20, rx59_cstack
    unless $I20, rx59_jump161
    elements $I18, rx59_bstack
    le $I18, 0, rx59_cut162
    dec $I18
    set $I18, rx59_bstack[$I18]
  rx59_cut162:
    assign rx59_cstack, $I18
  rx59_jump161:
    jump $I19
  rx59_done158:
    rx59_cur."!cursor_fail"()
    .return (rx59_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_20_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    .local pmc rx61_curclass
    .local pmc rx61_bstack
    .local pmc rx61_cstack
    (rx61_cur, rx61_tgt, rx61_pos, rx61_curclass, rx61_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx61_cur
    length rx61_eos, rx61_tgt
    eq $I19, 1, rx61_restart169
    gt rx61_pos, rx61_eos, rx61_fail170
    repr_get_attr_int $I11, self, rx61_curclass, "$!from"
    ne $I11, -1, rxscan62_done176
    goto rxscan62_scan175
  rxscan62_loop174:
    inc rx61_pos
    gt rx61_pos, rx61_eos, rx61_fail170
    repr_bind_attr_int rx61_cur, rx61_curclass, "$!from", rx61_pos
  rxscan62_scan175:
    nqp_rxmark rx61_bstack, rxscan62_loop174, rx61_pos, 0
  rxscan62_done176:
    nqp_rxmark rx61_bstack, rxquantr63_done178, -1, 0
  rxquantr63_loop177:
    nqp_rxmark rx61_bstack, rxquantr64_done180, -1, 0
  rxquantr64_loop179:
    ge rx61_pos, rx61_eos, rx61_fail170
    is_cclass $I11, .CCLASS_NUMERIC, rx61_tgt, rx61_pos
    unless $I11, rx61_fail170
    add rx61_pos, 1
    nqp_rxpeek $I19, rx61_bstack, rxquantr64_done180
    inc $I19
    inc $I19
    set rx61_rep, rx61_bstack[$I19]
    nqp_rxcommit rx61_bstack, rxquantr64_done180
    inc rx61_rep
    nqp_rxmark rx61_bstack, rxquantr64_done180, rx61_pos, rx61_rep
    goto rxquantr64_loop179
  rxquantr64_done180:
    nqp_rxpeek $I19, rx61_bstack, rxquantr63_done178
    inc $I19
    inc $I19
    set rx61_rep, rx61_bstack[$I19]
    nqp_rxcommit rx61_bstack, rxquantr63_done178
    inc rx61_rep
    nqp_rxmark rx61_bstack, rxquantr63_done178, rx61_pos, rx61_rep
    add $I11, rx61_pos, 1
    gt $I11, rx61_eos, rx61_fail170
    substr $S10, rx61_tgt, rx61_pos, 1
    ne $S10, ucs4:"_", rx61_fail170
    add rx61_pos, 1
    goto rxquantr63_loop177
  rxquantr63_done178:
    rx61_cur."!cursor_pass"(rx61_pos, "decint", 'backtrack'=>1)
    .return (rx61_cur)
  rx61_restart169:
    repr_get_attr_obj rx61_cstack, rx61_cur, rx61_curclass, "$!cstack"
  rx61_fail170:
    unless rx61_bstack, rx61_done168
    pop $I19, rx61_bstack
    if_null rx61_cstack, rx61_cstack_done173
    unless rx61_cstack, rx61_cstack_done173
    dec $I19
    set $P11, rx61_cstack[$I19]
  rx61_cstack_done173:
    pop rx61_rep, rx61_bstack
    pop rx61_pos, rx61_bstack
    pop $I19, rx61_bstack
    lt rx61_pos, -1, rx61_done168
    lt rx61_pos, 0, rx61_fail170
    eq $I19, 0, rx61_fail170
    nqp_islist $I20, rx61_cstack
    unless $I20, rx61_jump171
    elements $I18, rx61_bstack
    le $I18, 0, rx61_cut172
    dec $I18
    set $I18, rx61_bstack[$I18]
  rx61_cut172:
    assign rx61_cstack, $I18
  rx61_jump171:
    jump $I19
  rx61_done168:
    rx61_cur."!cursor_fail"()
    .return (rx61_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decints" :subid("cuid_21_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx65_tgt
    .local int rx65_pos
    .local int rx65_off
    .local int rx65_eos
    .local int rx65_rep
    .local pmc rx65_cur
    .local pmc rx65_curclass
    .local pmc rx65_bstack
    .local pmc rx65_cstack
    (rx65_cur, rx65_tgt, rx65_pos, rx65_curclass, rx65_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx65_cur
    length rx65_eos, rx65_tgt
    eq $I19, 1, rx65_restart183
    gt rx65_pos, rx65_eos, rx65_fail184
    repr_get_attr_int $I11, self, rx65_curclass, "$!from"
    ne $I11, -1, rxscan66_done190
    goto rxscan66_scan189
  rxscan66_loop188:
    inc rx65_pos
    gt rx65_pos, rx65_eos, rx65_fail184
    repr_bind_attr_int rx65_cur, rx65_curclass, "$!from", rx65_pos
  rxscan66_scan189:
    nqp_rxmark rx65_bstack, rxscan66_loop188, rx65_pos, 0
  rxscan66_done190:
    nqp_rxmark rx65_bstack, rxquantr67_done192, -1, 0
  rxquantr67_loop191:
    repr_bind_attr_int rx65_cur, rx65_curclass, "$!pos", rx65_pos
    $P11 = rx65_cur."ws"()
    repr_get_attr_int $I11, $P11, rx65_curclass, "$!pos"
    lt $I11, 0, rx65_fail184
    repr_get_attr_int rx65_pos, $P11, rx65_curclass, "$!pos"
    repr_bind_attr_int rx65_cur, rx65_curclass, "$!pos", rx65_pos
    $P11 = rx65_cur."decint"()
    repr_get_attr_int $I11, $P11, rx65_curclass, "$!pos"
    lt $I11, 0, rx65_fail184
    nqp_rxmark rx65_bstack, rxsubrule69_pass194, -1, 0
  rxsubrule69_pass194:
    rx65_cstack = rx65_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx65_pos, $P11, rx65_curclass, "$!pos"
    repr_bind_attr_int rx65_cur, rx65_curclass, "$!pos", rx65_pos
    $P11 = rx65_cur."ws"()
    repr_get_attr_int $I11, $P11, rx65_curclass, "$!pos"
    lt $I11, 0, rx65_fail184
    repr_get_attr_int rx65_pos, $P11, rx65_curclass, "$!pos"
    nqp_rxpeek $I19, rx65_bstack, rxquantr67_done192
    inc $I19
    inc $I19
    set rx65_rep, rx65_bstack[$I19]
    nqp_rxcommit rx65_bstack, rxquantr67_done192
    inc rx65_rep
    nqp_rxmark rx65_bstack, rxquantr67_done192, rx65_pos, rx65_rep
    add $I11, rx65_pos, 1
    gt $I11, rx65_eos, rx65_fail184
    substr $S10, rx65_tgt, rx65_pos, 1
    ne $S10, ucs4:",", rx65_fail184
    add rx65_pos, 1
    goto rxquantr67_loop191
  rxquantr67_done192:
    rx65_cur."!cursor_pass"(rx65_pos, "decints", 'backtrack'=>1)
    .return (rx65_cur)
  rx65_restart183:
    repr_get_attr_obj rx65_cstack, rx65_cur, rx65_curclass, "$!cstack"
  rx65_fail184:
    unless rx65_bstack, rx65_done182
    pop $I19, rx65_bstack
    if_null rx65_cstack, rx65_cstack_done187
    unless rx65_cstack, rx65_cstack_done187
    dec $I19
    set $P11, rx65_cstack[$I19]
  rx65_cstack_done187:
    pop rx65_rep, rx65_bstack
    pop rx65_pos, rx65_bstack
    pop $I19, rx65_bstack
    lt rx65_pos, -1, rx65_done182
    lt rx65_pos, 0, rx65_fail184
    eq $I19, 0, rx65_fail184
    nqp_islist $I20, rx65_cstack
    unless $I20, rx65_jump185
    elements $I18, rx65_bstack
    le $I18, 0, rx65_cut186
    dec $I18
    set $I18, rx65_bstack[$I18]
  rx65_cut186:
    assign rx65_cstack, $I18
  rx65_jump185:
    jump $I19
  rx65_done182:
    rx65_cur."!cursor_fail"()
    .return (rx65_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_22_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx71_tgt
    .local int rx71_pos
    .local int rx71_off
    .local int rx71_eos
    .local int rx71_rep
    .local pmc rx71_cur
    .local pmc rx71_curclass
    .local pmc rx71_bstack
    .local pmc rx71_cstack
    (rx71_cur, rx71_tgt, rx71_pos, rx71_curclass, rx71_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx71_cur
    length rx71_eos, rx71_tgt
    eq $I19, 1, rx71_restart198
    gt rx71_pos, rx71_eos, rx71_fail199
    repr_get_attr_int $I11, self, rx71_curclass, "$!from"
    ne $I11, -1, rxscan72_done205
    goto rxscan72_scan204
  rxscan72_loop203:
    inc rx71_pos
    gt rx71_pos, rx71_eos, rx71_fail199
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!from", rx71_pos
  rxscan72_scan204:
    nqp_rxmark rx71_bstack, rxscan72_loop203, rx71_pos, 0
  rxscan72_done205:
    nqp_rxmark rx71_bstack, rxquantr73_done207, -1, 0
  rxquantr73_loop206:
    nqp_rxmark rx71_bstack, rxquantr74_done209, -1, 0
  rxquantr74_loop208:
    ge rx71_pos, rx71_eos, rx71_fail199
    substr $S11, rx71_tgt, rx71_pos, 1
    index $I11, ucs4:"0123456789abcdefABCDEF", $S11
    lt $I11, 0, rx71_fail199
    inc rx71_pos
    nqp_rxpeek $I19, rx71_bstack, rxquantr74_done209
    inc $I19
    inc $I19
    set rx71_rep, rx71_bstack[$I19]
    nqp_rxcommit rx71_bstack, rxquantr74_done209
    inc rx71_rep
    nqp_rxmark rx71_bstack, rxquantr74_done209, rx71_pos, rx71_rep
    goto rxquantr74_loop208
  rxquantr74_done209:
    nqp_rxpeek $I19, rx71_bstack, rxquantr73_done207
    inc $I19
    inc $I19
    set rx71_rep, rx71_bstack[$I19]
    nqp_rxcommit rx71_bstack, rxquantr73_done207
    inc rx71_rep
    nqp_rxmark rx71_bstack, rxquantr73_done207, rx71_pos, rx71_rep
    add $I11, rx71_pos, 1
    gt $I11, rx71_eos, rx71_fail199
    substr $S10, rx71_tgt, rx71_pos, 1
    ne $S10, ucs4:"_", rx71_fail199
    add rx71_pos, 1
    goto rxquantr73_loop206
  rxquantr73_done207:
    rx71_cur."!cursor_pass"(rx71_pos, "hexint", 'backtrack'=>1)
    .return (rx71_cur)
  rx71_restart198:
    repr_get_attr_obj rx71_cstack, rx71_cur, rx71_curclass, "$!cstack"
  rx71_fail199:
    unless rx71_bstack, rx71_done197
    pop $I19, rx71_bstack
    if_null rx71_cstack, rx71_cstack_done202
    unless rx71_cstack, rx71_cstack_done202
    dec $I19
    set $P11, rx71_cstack[$I19]
  rx71_cstack_done202:
    pop rx71_rep, rx71_bstack
    pop rx71_pos, rx71_bstack
    pop $I19, rx71_bstack
    lt rx71_pos, -1, rx71_done197
    lt rx71_pos, 0, rx71_fail199
    eq $I19, 0, rx71_fail199
    nqp_islist $I20, rx71_cstack
    unless $I20, rx71_jump200
    elements $I18, rx71_bstack
    le $I18, 0, rx71_cut201
    dec $I18
    set $I18, rx71_bstack[$I18]
  rx71_cut201:
    assign rx71_cstack, $I18
  rx71_jump200:
    jump $I19
  rx71_done197:
    rx71_cur."!cursor_fail"()
    .return (rx71_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_23_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    .local pmc rx75_curclass
    .local pmc rx75_bstack
    .local pmc rx75_cstack
    (rx75_cur, rx75_tgt, rx75_pos, rx75_curclass, rx75_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx75_cur
    length rx75_eos, rx75_tgt
    eq $I19, 1, rx75_restart212
    gt rx75_pos, rx75_eos, rx75_fail213
    repr_get_attr_int $I11, self, rx75_curclass, "$!from"
    ne $I11, -1, rxscan76_done219
    goto rxscan76_scan218
  rxscan76_loop217:
    inc rx75_pos
    gt rx75_pos, rx75_eos, rx75_fail213
    repr_bind_attr_int rx75_cur, rx75_curclass, "$!from", rx75_pos
  rxscan76_scan218:
    nqp_rxmark rx75_bstack, rxscan76_loop217, rx75_pos, 0
  rxscan76_done219:
    nqp_rxmark rx75_bstack, rxquantr77_done221, -1, 0
  rxquantr77_loop220:
    repr_bind_attr_int rx75_cur, rx75_curclass, "$!pos", rx75_pos
    $P11 = rx75_cur."ws"()
    repr_get_attr_int $I11, $P11, rx75_curclass, "$!pos"
    lt $I11, 0, rx75_fail213
    repr_get_attr_int rx75_pos, $P11, rx75_curclass, "$!pos"
    repr_bind_attr_int rx75_cur, rx75_curclass, "$!pos", rx75_pos
    $P11 = rx75_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx75_curclass, "$!pos"
    lt $I11, 0, rx75_fail213
    nqp_rxmark rx75_bstack, rxsubrule79_pass223, -1, 0
  rxsubrule79_pass223:
    rx75_cstack = rx75_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx75_pos, $P11, rx75_curclass, "$!pos"
    repr_bind_attr_int rx75_cur, rx75_curclass, "$!pos", rx75_pos
    $P11 = rx75_cur."ws"()
    repr_get_attr_int $I11, $P11, rx75_curclass, "$!pos"
    lt $I11, 0, rx75_fail213
    repr_get_attr_int rx75_pos, $P11, rx75_curclass, "$!pos"
    nqp_rxpeek $I19, rx75_bstack, rxquantr77_done221
    inc $I19
    inc $I19
    set rx75_rep, rx75_bstack[$I19]
    nqp_rxcommit rx75_bstack, rxquantr77_done221
    inc rx75_rep
    nqp_rxmark rx75_bstack, rxquantr77_done221, rx75_pos, rx75_rep
    add $I11, rx75_pos, 1
    gt $I11, rx75_eos, rx75_fail213
    substr $S10, rx75_tgt, rx75_pos, 1
    ne $S10, ucs4:",", rx75_fail213
    add rx75_pos, 1
    goto rxquantr77_loop220
  rxquantr77_done221:
    rx75_cur."!cursor_pass"(rx75_pos, "hexints", 'backtrack'=>1)
    .return (rx75_cur)
  rx75_restart212:
    repr_get_attr_obj rx75_cstack, rx75_cur, rx75_curclass, "$!cstack"
  rx75_fail213:
    unless rx75_bstack, rx75_done211
    pop $I19, rx75_bstack
    if_null rx75_cstack, rx75_cstack_done216
    unless rx75_cstack, rx75_cstack_done216
    dec $I19
    set $P11, rx75_cstack[$I19]
  rx75_cstack_done216:
    pop rx75_rep, rx75_bstack
    pop rx75_pos, rx75_bstack
    pop $I19, rx75_bstack
    lt rx75_pos, -1, rx75_done211
    lt rx75_pos, 0, rx75_fail213
    eq $I19, 0, rx75_fail213
    nqp_islist $I20, rx75_cstack
    unless $I20, rx75_jump214
    elements $I18, rx75_bstack
    le $I18, 0, rx75_cut215
    dec $I18
    set $I18, rx75_bstack[$I18]
  rx75_cut215:
    assign rx75_cstack, $I18
  rx75_jump214:
    jump $I19
  rx75_done211:
    rx75_cur."!cursor_fail"()
    .return (rx75_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_24_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    .local pmc rx81_curclass
    .local pmc rx81_bstack
    .local pmc rx81_cstack
    (rx81_cur, rx81_tgt, rx81_pos, rx81_curclass, rx81_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx81_cur
    length rx81_eos, rx81_tgt
    eq $I19, 1, rx81_restart227
    gt rx81_pos, rx81_eos, rx81_fail228
    repr_get_attr_int $I11, self, rx81_curclass, "$!from"
    ne $I11, -1, rxscan82_done234
    goto rxscan82_scan233
  rxscan82_loop232:
    inc rx81_pos
    gt rx81_pos, rx81_eos, rx81_fail228
    repr_bind_attr_int rx81_cur, rx81_curclass, "$!from", rx81_pos
  rxscan82_scan233:
    nqp_rxmark rx81_bstack, rxscan82_loop232, rx81_pos, 0
  rxscan82_done234:
    nqp_rxmark rx81_bstack, rxquantr83_done236, -1, 0
  rxquantr83_loop235:
    nqp_rxmark rx81_bstack, rxquantr84_done238, -1, 0
  rxquantr84_loop237:
    ge rx81_pos, rx81_eos, rx81_fail228
    substr $S11, rx81_tgt, rx81_pos, 1
    index $I11, ucs4:"01234567", $S11
    lt $I11, 0, rx81_fail228
    inc rx81_pos
    nqp_rxpeek $I19, rx81_bstack, rxquantr84_done238
    inc $I19
    inc $I19
    set rx81_rep, rx81_bstack[$I19]
    nqp_rxcommit rx81_bstack, rxquantr84_done238
    inc rx81_rep
    nqp_rxmark rx81_bstack, rxquantr84_done238, rx81_pos, rx81_rep
    goto rxquantr84_loop237
  rxquantr84_done238:
    nqp_rxpeek $I19, rx81_bstack, rxquantr83_done236
    inc $I19
    inc $I19
    set rx81_rep, rx81_bstack[$I19]
    nqp_rxcommit rx81_bstack, rxquantr83_done236
    inc rx81_rep
    nqp_rxmark rx81_bstack, rxquantr83_done236, rx81_pos, rx81_rep
    add $I11, rx81_pos, 1
    gt $I11, rx81_eos, rx81_fail228
    substr $S10, rx81_tgt, rx81_pos, 1
    ne $S10, ucs4:"_", rx81_fail228
    add rx81_pos, 1
    goto rxquantr83_loop235
  rxquantr83_done236:
    rx81_cur."!cursor_pass"(rx81_pos, "octint", 'backtrack'=>1)
    .return (rx81_cur)
  rx81_restart227:
    repr_get_attr_obj rx81_cstack, rx81_cur, rx81_curclass, "$!cstack"
  rx81_fail228:
    unless rx81_bstack, rx81_done226
    pop $I19, rx81_bstack
    if_null rx81_cstack, rx81_cstack_done231
    unless rx81_cstack, rx81_cstack_done231
    dec $I19
    set $P11, rx81_cstack[$I19]
  rx81_cstack_done231:
    pop rx81_rep, rx81_bstack
    pop rx81_pos, rx81_bstack
    pop $I19, rx81_bstack
    lt rx81_pos, -1, rx81_done226
    lt rx81_pos, 0, rx81_fail228
    eq $I19, 0, rx81_fail228
    nqp_islist $I20, rx81_cstack
    unless $I20, rx81_jump229
    elements $I18, rx81_bstack
    le $I18, 0, rx81_cut230
    dec $I18
    set $I18, rx81_bstack[$I18]
  rx81_cut230:
    assign rx81_cstack, $I18
  rx81_jump229:
    jump $I19
  rx81_done226:
    rx81_cur."!cursor_fail"()
    .return (rx81_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_25_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 67
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx85_tgt
    .local int rx85_pos
    .local int rx85_off
    .local int rx85_eos
    .local int rx85_rep
    .local pmc rx85_cur
    .local pmc rx85_curclass
    .local pmc rx85_bstack
    .local pmc rx85_cstack
    (rx85_cur, rx85_tgt, rx85_pos, rx85_curclass, rx85_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx85_cur
    length rx85_eos, rx85_tgt
    eq $I19, 1, rx85_restart241
    gt rx85_pos, rx85_eos, rx85_fail242
    repr_get_attr_int $I11, self, rx85_curclass, "$!from"
    ne $I11, -1, rxscan86_done248
    goto rxscan86_scan247
  rxscan86_loop246:
    inc rx85_pos
    gt rx85_pos, rx85_eos, rx85_fail242
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!from", rx85_pos
  rxscan86_scan247:
    nqp_rxmark rx85_bstack, rxscan86_loop246, rx85_pos, 0
  rxscan86_done248:
    nqp_rxmark rx85_bstack, rxquantr87_done250, -1, 0
  rxquantr87_loop249:
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!pos", rx85_pos
    $P11 = rx85_cur."ws"()
    repr_get_attr_int $I11, $P11, rx85_curclass, "$!pos"
    lt $I11, 0, rx85_fail242
    repr_get_attr_int rx85_pos, $P11, rx85_curclass, "$!pos"
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!pos", rx85_pos
    $P11 = rx85_cur."octint"()
    repr_get_attr_int $I11, $P11, rx85_curclass, "$!pos"
    lt $I11, 0, rx85_fail242
    nqp_rxmark rx85_bstack, rxsubrule89_pass252, -1, 0
  rxsubrule89_pass252:
    rx85_cstack = rx85_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx85_pos, $P11, rx85_curclass, "$!pos"
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!pos", rx85_pos
    $P11 = rx85_cur."ws"()
    repr_get_attr_int $I11, $P11, rx85_curclass, "$!pos"
    lt $I11, 0, rx85_fail242
    repr_get_attr_int rx85_pos, $P11, rx85_curclass, "$!pos"
    nqp_rxpeek $I19, rx85_bstack, rxquantr87_done250
    inc $I19
    inc $I19
    set rx85_rep, rx85_bstack[$I19]
    nqp_rxcommit rx85_bstack, rxquantr87_done250
    inc rx85_rep
    nqp_rxmark rx85_bstack, rxquantr87_done250, rx85_pos, rx85_rep
    add $I11, rx85_pos, 1
    gt $I11, rx85_eos, rx85_fail242
    substr $S10, rx85_tgt, rx85_pos, 1
    ne $S10, ucs4:",", rx85_fail242
    add rx85_pos, 1
    goto rxquantr87_loop249
  rxquantr87_done250:
    rx85_cur."!cursor_pass"(rx85_pos, "octints", 'backtrack'=>1)
    .return (rx85_cur)
  rx85_restart241:
    repr_get_attr_obj rx85_cstack, rx85_cur, rx85_curclass, "$!cstack"
  rx85_fail242:
    unless rx85_bstack, rx85_done240
    pop $I19, rx85_bstack
    if_null rx85_cstack, rx85_cstack_done245
    unless rx85_cstack, rx85_cstack_done245
    dec $I19
    set $P11, rx85_cstack[$I19]
  rx85_cstack_done245:
    pop rx85_rep, rx85_bstack
    pop rx85_pos, rx85_bstack
    pop $I19, rx85_bstack
    lt rx85_pos, -1, rx85_done240
    lt rx85_pos, 0, rx85_fail242
    eq $I19, 0, rx85_fail242
    nqp_islist $I20, rx85_cstack
    unless $I20, rx85_jump243
    elements $I18, rx85_bstack
    le $I18, 0, rx85_cut244
    dec $I18
    set $I18, rx85_bstack[$I18]
  rx85_cut244:
    assign rx85_cstack, $I18
  rx85_jump243:
    jump $I19
  rx85_done240:
    rx85_cur."!cursor_fail"()
    .return (rx85_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_26_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 69
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    .local pmc rx91_curclass
    .local pmc rx91_bstack
    .local pmc rx91_cstack
    (rx91_cur, rx91_tgt, rx91_pos, rx91_curclass, rx91_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx91_cur
    length rx91_eos, rx91_tgt
    eq $I19, 1, rx91_restart256
    gt rx91_pos, rx91_eos, rx91_fail257
    repr_get_attr_int $I11, self, rx91_curclass, "$!from"
    ne $I11, -1, rxscan92_done263
    goto rxscan92_scan262
  rxscan92_loop261:
    inc rx91_pos
    gt rx91_pos, rx91_eos, rx91_fail257
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!from", rx91_pos
  rxscan92_scan262:
    nqp_rxmark rx91_bstack, rxscan92_loop261, rx91_pos, 0
  rxscan92_done263:
    nqp_rxmark rx91_bstack, rxquantr93_done265, -1, 0
  rxquantr93_loop264:
    nqp_rxmark rx91_bstack, rxquantr94_done267, -1, 0
  rxquantr94_loop266:
    ge rx91_pos, rx91_eos, rx91_fail257
    substr $S11, rx91_tgt, rx91_pos, 1
    index $I11, ucs4:"01", $S11
    lt $I11, 0, rx91_fail257
    inc rx91_pos
    nqp_rxpeek $I19, rx91_bstack, rxquantr94_done267
    inc $I19
    inc $I19
    set rx91_rep, rx91_bstack[$I19]
    nqp_rxcommit rx91_bstack, rxquantr94_done267
    inc rx91_rep
    nqp_rxmark rx91_bstack, rxquantr94_done267, rx91_pos, rx91_rep
    goto rxquantr94_loop266
  rxquantr94_done267:
    nqp_rxpeek $I19, rx91_bstack, rxquantr93_done265
    inc $I19
    inc $I19
    set rx91_rep, rx91_bstack[$I19]
    nqp_rxcommit rx91_bstack, rxquantr93_done265
    inc rx91_rep
    nqp_rxmark rx91_bstack, rxquantr93_done265, rx91_pos, rx91_rep
    add $I11, rx91_pos, 1
    gt $I11, rx91_eos, rx91_fail257
    substr $S10, rx91_tgt, rx91_pos, 1
    ne $S10, ucs4:"_", rx91_fail257
    add rx91_pos, 1
    goto rxquantr93_loop264
  rxquantr93_done265:
    rx91_cur."!cursor_pass"(rx91_pos, "binint", 'backtrack'=>1)
    .return (rx91_cur)
  rx91_restart256:
    repr_get_attr_obj rx91_cstack, rx91_cur, rx91_curclass, "$!cstack"
  rx91_fail257:
    unless rx91_bstack, rx91_done255
    pop $I19, rx91_bstack
    if_null rx91_cstack, rx91_cstack_done260
    unless rx91_cstack, rx91_cstack_done260
    dec $I19
    set $P11, rx91_cstack[$I19]
  rx91_cstack_done260:
    pop rx91_rep, rx91_bstack
    pop rx91_pos, rx91_bstack
    pop $I19, rx91_bstack
    lt rx91_pos, -1, rx91_done255
    lt rx91_pos, 0, rx91_fail257
    eq $I19, 0, rx91_fail257
    nqp_islist $I20, rx91_cstack
    unless $I20, rx91_jump258
    elements $I18, rx91_bstack
    le $I18, 0, rx91_cut259
    dec $I18
    set $I18, rx91_bstack[$I18]
  rx91_cut259:
    assign rx91_cstack, $I18
  rx91_jump258:
    jump $I19
  rx91_done255:
    rx91_cur."!cursor_fail"()
    .return (rx91_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_27_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 70
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx95_tgt
    .local int rx95_pos
    .local int rx95_off
    .local int rx95_eos
    .local int rx95_rep
    .local pmc rx95_cur
    .local pmc rx95_curclass
    .local pmc rx95_bstack
    .local pmc rx95_cstack
    (rx95_cur, rx95_tgt, rx95_pos, rx95_curclass, rx95_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx95_cur
    length rx95_eos, rx95_tgt
    eq $I19, 1, rx95_restart270
    gt rx95_pos, rx95_eos, rx95_fail271
    repr_get_attr_int $I11, self, rx95_curclass, "$!from"
    ne $I11, -1, rxscan96_done277
    goto rxscan96_scan276
  rxscan96_loop275:
    inc rx95_pos
    gt rx95_pos, rx95_eos, rx95_fail271
    repr_bind_attr_int rx95_cur, rx95_curclass, "$!from", rx95_pos
  rxscan96_scan276:
    nqp_rxmark rx95_bstack, rxscan96_loop275, rx95_pos, 0
  rxscan96_done277:
    nqp_rxmark rx95_bstack, rxquantr97_done279, -1, 0
  rxquantr97_loop278:
    repr_bind_attr_int rx95_cur, rx95_curclass, "$!pos", rx95_pos
    $P11 = rx95_cur."ws"()
    repr_get_attr_int $I11, $P11, rx95_curclass, "$!pos"
    lt $I11, 0, rx95_fail271
    repr_get_attr_int rx95_pos, $P11, rx95_curclass, "$!pos"
    repr_bind_attr_int rx95_cur, rx95_curclass, "$!pos", rx95_pos
    $P11 = rx95_cur."binint"()
    repr_get_attr_int $I11, $P11, rx95_curclass, "$!pos"
    lt $I11, 0, rx95_fail271
    nqp_rxmark rx95_bstack, rxsubrule99_pass281, -1, 0
  rxsubrule99_pass281:
    rx95_cstack = rx95_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx95_pos, $P11, rx95_curclass, "$!pos"
    repr_bind_attr_int rx95_cur, rx95_curclass, "$!pos", rx95_pos
    $P11 = rx95_cur."ws"()
    repr_get_attr_int $I11, $P11, rx95_curclass, "$!pos"
    lt $I11, 0, rx95_fail271
    repr_get_attr_int rx95_pos, $P11, rx95_curclass, "$!pos"
    nqp_rxpeek $I19, rx95_bstack, rxquantr97_done279
    inc $I19
    inc $I19
    set rx95_rep, rx95_bstack[$I19]
    nqp_rxcommit rx95_bstack, rxquantr97_done279
    inc rx95_rep
    nqp_rxmark rx95_bstack, rxquantr97_done279, rx95_pos, rx95_rep
    add $I11, rx95_pos, 1
    gt $I11, rx95_eos, rx95_fail271
    substr $S10, rx95_tgt, rx95_pos, 1
    ne $S10, ucs4:",", rx95_fail271
    add rx95_pos, 1
    goto rxquantr97_loop278
  rxquantr97_done279:
    rx95_cur."!cursor_pass"(rx95_pos, "binints", 'backtrack'=>1)
    .return (rx95_cur)
  rx95_restart270:
    repr_get_attr_obj rx95_cstack, rx95_cur, rx95_curclass, "$!cstack"
  rx95_fail271:
    unless rx95_bstack, rx95_done269
    pop $I19, rx95_bstack
    if_null rx95_cstack, rx95_cstack_done274
    unless rx95_cstack, rx95_cstack_done274
    dec $I19
    set $P11, rx95_cstack[$I19]
  rx95_cstack_done274:
    pop rx95_rep, rx95_bstack
    pop rx95_pos, rx95_bstack
    pop $I19, rx95_bstack
    lt rx95_pos, -1, rx95_done269
    lt rx95_pos, 0, rx95_fail271
    eq $I19, 0, rx95_fail271
    nqp_islist $I20, rx95_cstack
    unless $I20, rx95_jump272
    elements $I18, rx95_bstack
    le $I18, 0, rx95_cut273
    dec $I18
    set $I18, rx95_bstack[$I18]
  rx95_cut273:
    assign rx95_cstack, $I18
  rx95_jump272:
    jump $I19
  rx95_done269:
    rx95_cur."!cursor_fail"()
    .return (rx95_cur) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_28_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 72
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    .local pmc rx101_curclass
    .local pmc rx101_bstack
    .local pmc rx101_cstack
    (rx101_cur, rx101_tgt, rx101_pos, rx101_curclass, rx101_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx101_cur
    length rx101_eos, rx101_tgt
    eq $I19, 1, rx101_restart285
    gt rx101_pos, rx101_eos, rx101_fail286
    repr_get_attr_int $I11, self, rx101_curclass, "$!from"
    ne $I11, -1, rxscan102_done292
    goto rxscan102_scan291
  rxscan102_loop290:
    inc rx101_pos
    gt rx101_pos, rx101_eos, rx101_fail286
    repr_bind_attr_int rx101_cur, rx101_curclass, "$!from", rx101_pos
  rxscan102_scan291:
    nqp_rxmark rx101_bstack, rxscan102_loop290, rx101_pos, 0
  rxscan102_done292:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt103_0294
    nqp_push_label $P11, alt103_1304
    nqp_rxmark rx101_bstack, alt103_end293, -1, 0
    rx101_cur."!alt"(rx101_pos, "alt_nfa__4_1360235112.338", $P11)
    goto rx101_fail286
  alt103_0294:
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail286
    substr $S10, rx101_tgt, rx101_pos, 1
    ne $S10, ucs4:"0", rx101_fail286
    add rx101_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt104_0296
    nqp_push_label $P11, alt104_1298
    nqp_push_label $P11, alt104_2300
    nqp_push_label $P11, alt104_3302
    nqp_rxmark rx101_bstack, alt104_end295, -1, 0
    rx101_cur."!alt"(rx101_pos, "alt_nfa__3_1360235112.337", $P11)
    goto rx101_fail286
  alt104_0296:
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail286
    substr $S10, rx101_tgt, rx101_pos, 1
    ne $S10, ucs4:"b", rx101_fail286
    add rx101_pos, 1
    repr_bind_attr_int rx101_cur, rx101_curclass, "$!pos", rx101_pos
    $P11 = rx101_cur."binint"()
    repr_get_attr_int $I11, $P11, rx101_curclass, "$!pos"
    lt $I11, 0, rx101_fail286
    nqp_rxmark rx101_bstack, rxsubrule105_pass297, -1, 0
  rxsubrule105_pass297:
    rx101_cstack = rx101_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx101_pos, $P11, rx101_curclass, "$!pos"
    goto alt104_end295
  alt104_1298:
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail286
    substr $S10, rx101_tgt, rx101_pos, 1
    ne $S10, ucs4:"o", rx101_fail286
    add rx101_pos, 1
    repr_bind_attr_int rx101_cur, rx101_curclass, "$!pos", rx101_pos
    $P11 = rx101_cur."octint"()
    repr_get_attr_int $I11, $P11, rx101_curclass, "$!pos"
    lt $I11, 0, rx101_fail286
    nqp_rxmark rx101_bstack, rxsubrule106_pass299, -1, 0
  rxsubrule106_pass299:
    rx101_cstack = rx101_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx101_pos, $P11, rx101_curclass, "$!pos"
    goto alt104_end295
  alt104_2300:
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail286
    substr $S10, rx101_tgt, rx101_pos, 1
    ne $S10, ucs4:"x", rx101_fail286
    add rx101_pos, 1
    repr_bind_attr_int rx101_cur, rx101_curclass, "$!pos", rx101_pos
    $P11 = rx101_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx101_curclass, "$!pos"
    lt $I11, 0, rx101_fail286
    nqp_rxmark rx101_bstack, rxsubrule107_pass301, -1, 0
  rxsubrule107_pass301:
    rx101_cstack = rx101_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx101_pos, $P11, rx101_curclass, "$!pos"
    goto alt104_end295
  alt104_3302:
    add $I11, rx101_pos, 1
    gt $I11, rx101_eos, rx101_fail286
    substr $S10, rx101_tgt, rx101_pos, 1
    ne $S10, ucs4:"d", rx101_fail286
    add rx101_pos, 1
    repr_bind_attr_int rx101_cur, rx101_curclass, "$!pos", rx101_pos
    $P11 = rx101_cur."decint"()
    repr_get_attr_int $I11, $P11, rx101_curclass, "$!pos"
    lt $I11, 0, rx101_fail286
    nqp_rxmark rx101_bstack, rxsubrule108_pass303, -1, 0
  rxsubrule108_pass303:
    rx101_cstack = rx101_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx101_pos, $P11, rx101_curclass, "$!pos"
    goto alt104_end295
  alt104_end295:
    nqp_rxcommit rx101_bstack, alt104_end295
    goto alt103_end293
  alt103_1304:
    repr_bind_attr_int rx101_cur, rx101_curclass, "$!pos", rx101_pos
    $P11 = rx101_cur."decint"()
    repr_get_attr_int $I11, $P11, rx101_curclass, "$!pos"
    lt $I11, 0, rx101_fail286
    nqp_rxmark rx101_bstack, rxsubrule109_pass305, -1, 0
  rxsubrule109_pass305:
    rx101_cstack = rx101_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx101_pos, $P11, rx101_curclass, "$!pos"
    goto alt103_end293
  alt103_end293:
    nqp_rxcommit rx101_bstack, alt103_end293
    rx101_cur."!cursor_pass"(rx101_pos, "integer", 'backtrack'=>1)
    .return (rx101_cur)
  rx101_restart285:
    repr_get_attr_obj rx101_cstack, rx101_cur, rx101_curclass, "$!cstack"
  rx101_fail286:
    unless rx101_bstack, rx101_done284
    pop $I19, rx101_bstack
    if_null rx101_cstack, rx101_cstack_done289
    unless rx101_cstack, rx101_cstack_done289
    dec $I19
    set $P11, rx101_cstack[$I19]
  rx101_cstack_done289:
    pop rx101_rep, rx101_bstack
    pop rx101_pos, rx101_bstack
    pop $I19, rx101_bstack
    lt rx101_pos, -1, rx101_done284
    lt rx101_pos, 0, rx101_fail286
    eq $I19, 0, rx101_fail286
    nqp_islist $I20, rx101_cstack
    unless $I20, rx101_jump287
    elements $I18, rx101_bstack
    le $I18, 0, rx101_cut288
    dec $I18
    set $I18, rx101_bstack[$I18]
  rx101_cut288:
    assign rx101_cstack, $I18
  rx101_jump287:
    jump $I19
  rx101_done284:
    rx101_cur."!cursor_fail"()
    .return (rx101_cur) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_29_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 83
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx110_tgt
    .local int rx110_pos
    .local int rx110_off
    .local int rx110_eos
    .local int rx110_rep
    .local pmc rx110_cur
    .local pmc rx110_curclass
    .local pmc rx110_bstack
    .local pmc rx110_cstack
    (rx110_cur, rx110_tgt, rx110_pos, rx110_curclass, rx110_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx110_cur
    length rx110_eos, rx110_tgt
    eq $I19, 1, rx110_restart308
    gt rx110_pos, rx110_eos, rx110_fail309
    repr_get_attr_int $I11, self, rx110_curclass, "$!from"
    ne $I11, -1, rxscan111_done315
    goto rxscan111_scan314
  rxscan111_loop313:
    inc rx110_pos
    gt rx110_pos, rx110_eos, rx110_fail309
    repr_bind_attr_int rx110_cur, rx110_curclass, "$!from", rx110_pos
  rxscan111_scan314:
    nqp_rxmark rx110_bstack, rxscan111_loop313, rx110_pos, 0
  rxscan111_done315:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt112_0317
    nqp_push_label $P11, alt112_1326
    nqp_push_label $P11, alt112_2337
    nqp_rxmark rx110_bstack, alt112_end316, -1, 0
    rx110_cur."!alt"(rx110_pos, "alt_nfa__5_1360235112.355", $P11)
    goto rx110_fail309
  alt112_0317:
    nqp_rxmark rx110_bstack, rxcap113_fail319, rx110_pos, 0
    add $I11, rx110_pos, 1
    gt $I11, rx110_eos, rx110_fail309
    substr $S10, rx110_tgt, rx110_pos, 1
    ne $S10, ucs4:".", rx110_fail309
    add rx110_pos, 1
    nqp_rxmark rx110_bstack, rxquantr114_done321, -1, 0
  rxquantr114_loop320:
    ge rx110_pos, rx110_eos, rx110_fail309
    is_cclass $I11, .CCLASS_NUMERIC, rx110_tgt, rx110_pos
    unless $I11, rx110_fail309
    add rx110_pos, 1
    nqp_rxpeek $I19, rx110_bstack, rxquantr114_done321
    inc $I19
    inc $I19
    set rx110_rep, rx110_bstack[$I19]
    nqp_rxcommit rx110_bstack, rxquantr114_done321
    inc rx110_rep
    nqp_rxmark rx110_bstack, rxquantr114_done321, rx110_pos, rx110_rep
    goto rxquantr114_loop320
  rxquantr114_done321:
    nqp_rxpeek $I19, rx110_bstack, rxcap113_fail319
    inc $I19
    set $I11, rx110_bstack[$I19]
    repr_bind_attr_int rx110_cur, rx110_curclass, "$!pos", rx110_pos
    $P11 = rx110_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx110_pos)
    rx110_cstack = rx110_cur."!cursor_capture"($P11, "coeff")
    goto rxcap113_done318
  rxcap113_fail319:
    goto rx110_fail309
  rxcap113_done318:
    nqp_rxmark rx110_bstack, rxquantr115_done323, rx110_pos, 0
  rxquantr115_loop322:
    repr_bind_attr_int rx110_cur, rx110_curclass, "$!pos", rx110_pos
    $P11 = rx110_cur."escale"()
    repr_get_attr_int $I11, $P11, rx110_curclass, "$!pos"
    lt $I11, 0, rx110_fail309
    goto rxsubrule116_pass324
  rxsubrule116_back325:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx110_curclass, "$!pos"
    lt $I11, 0, rx110_fail309
  rxsubrule116_pass324:
    rx110_cstack = rx110_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule116_back325
    push rx110_bstack, $I11
    push rx110_bstack, 0
    push rx110_bstack, rx110_pos
    elements $I11, rx110_cstack
    push rx110_bstack, $I11
    repr_get_attr_int rx110_pos, $P11, rx110_curclass, "$!pos"
    nqp_rxpeek $I19, rx110_bstack, rxquantr115_done323
    inc $I19
    inc $I19
    set rx110_rep, rx110_bstack[$I19]
    nqp_rxcommit rx110_bstack, rxquantr115_done323
    inc rx110_rep
  rxquantr115_done323:
    goto alt112_end316
  alt112_1326:
    nqp_rxmark rx110_bstack, rxcap117_fail328, rx110_pos, 0
    nqp_rxmark rx110_bstack, rxquantr118_done330, -1, 0
  rxquantr118_loop329:
    ge rx110_pos, rx110_eos, rx110_fail309
    is_cclass $I11, .CCLASS_NUMERIC, rx110_tgt, rx110_pos
    unless $I11, rx110_fail309
    add rx110_pos, 1
    nqp_rxpeek $I19, rx110_bstack, rxquantr118_done330
    inc $I19
    inc $I19
    set rx110_rep, rx110_bstack[$I19]
    nqp_rxcommit rx110_bstack, rxquantr118_done330
    inc rx110_rep
    nqp_rxmark rx110_bstack, rxquantr118_done330, rx110_pos, rx110_rep
    goto rxquantr118_loop329
  rxquantr118_done330:
    add $I11, rx110_pos, 1
    gt $I11, rx110_eos, rx110_fail309
    substr $S10, rx110_tgt, rx110_pos, 1
    ne $S10, ucs4:".", rx110_fail309
    add rx110_pos, 1
    nqp_rxmark rx110_bstack, rxquantr119_done332, -1, 0
  rxquantr119_loop331:
    ge rx110_pos, rx110_eos, rx110_fail309
    is_cclass $I11, .CCLASS_NUMERIC, rx110_tgt, rx110_pos
    unless $I11, rx110_fail309
    add rx110_pos, 1
    nqp_rxpeek $I19, rx110_bstack, rxquantr119_done332
    inc $I19
    inc $I19
    set rx110_rep, rx110_bstack[$I19]
    nqp_rxcommit rx110_bstack, rxquantr119_done332
    inc rx110_rep
    nqp_rxmark rx110_bstack, rxquantr119_done332, rx110_pos, rx110_rep
    goto rxquantr119_loop331
  rxquantr119_done332:
    nqp_rxpeek $I19, rx110_bstack, rxcap117_fail328
    inc $I19
    set $I11, rx110_bstack[$I19]
    repr_bind_attr_int rx110_cur, rx110_curclass, "$!pos", rx110_pos
    $P11 = rx110_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx110_pos)
    rx110_cstack = rx110_cur."!cursor_capture"($P11, "coeff")
    goto rxcap117_done327
  rxcap117_fail328:
    goto rx110_fail309
  rxcap117_done327:
    nqp_rxmark rx110_bstack, rxquantr120_done334, rx110_pos, 0
  rxquantr120_loop333:
    repr_bind_attr_int rx110_cur, rx110_curclass, "$!pos", rx110_pos
    $P11 = rx110_cur."escale"()
    repr_get_attr_int $I11, $P11, rx110_curclass, "$!pos"
    lt $I11, 0, rx110_fail309
    goto rxsubrule121_pass335
  rxsubrule121_back336:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx110_curclass, "$!pos"
    lt $I11, 0, rx110_fail309
  rxsubrule121_pass335:
    rx110_cstack = rx110_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule121_back336
    push rx110_bstack, $I11
    push rx110_bstack, 0
    push rx110_bstack, rx110_pos
    elements $I11, rx110_cstack
    push rx110_bstack, $I11
    repr_get_attr_int rx110_pos, $P11, rx110_curclass, "$!pos"
    nqp_rxpeek $I19, rx110_bstack, rxquantr120_done334
    inc $I19
    inc $I19
    set rx110_rep, rx110_bstack[$I19]
    nqp_rxcommit rx110_bstack, rxquantr120_done334
    inc rx110_rep
  rxquantr120_done334:
    goto alt112_end316
  alt112_2337:
    nqp_rxmark rx110_bstack, rxcap122_fail339, rx110_pos, 0
    nqp_rxmark rx110_bstack, rxquantr123_done341, -1, 0
  rxquantr123_loop340:
    ge rx110_pos, rx110_eos, rx110_fail309
    is_cclass $I11, .CCLASS_NUMERIC, rx110_tgt, rx110_pos
    unless $I11, rx110_fail309
    add rx110_pos, 1
    nqp_rxpeek $I19, rx110_bstack, rxquantr123_done341
    inc $I19
    inc $I19
    set rx110_rep, rx110_bstack[$I19]
    nqp_rxcommit rx110_bstack, rxquantr123_done341
    inc rx110_rep
    nqp_rxmark rx110_bstack, rxquantr123_done341, rx110_pos, rx110_rep
    goto rxquantr123_loop340
  rxquantr123_done341:
    nqp_rxpeek $I19, rx110_bstack, rxcap122_fail339
    inc $I19
    set $I11, rx110_bstack[$I19]
    repr_bind_attr_int rx110_cur, rx110_curclass, "$!pos", rx110_pos
    $P11 = rx110_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx110_pos)
    rx110_cstack = rx110_cur."!cursor_capture"($P11, "coeff")
    goto rxcap122_done338
  rxcap122_fail339:
    goto rx110_fail309
  rxcap122_done338:
    repr_bind_attr_int rx110_cur, rx110_curclass, "$!pos", rx110_pos
    $P11 = rx110_cur."escale"()
    repr_get_attr_int $I11, $P11, rx110_curclass, "$!pos"
    lt $I11, 0, rx110_fail309
    nqp_rxmark rx110_bstack, rxsubrule124_pass342, -1, 0
  rxsubrule124_pass342:
    rx110_cstack = rx110_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx110_pos, $P11, rx110_curclass, "$!pos"
    goto alt112_end316
  alt112_end316:
    rx110_cur."!cursor_pass"(rx110_pos, "dec_number", 'backtrack'=>1)
    .return (rx110_cur)
  rx110_restart308:
    repr_get_attr_obj rx110_cstack, rx110_cur, rx110_curclass, "$!cstack"
  rx110_fail309:
    unless rx110_bstack, rx110_done307
    pop $I19, rx110_bstack
    if_null rx110_cstack, rx110_cstack_done312
    unless rx110_cstack, rx110_cstack_done312
    dec $I19
    set $P11, rx110_cstack[$I19]
  rx110_cstack_done312:
    pop rx110_rep, rx110_bstack
    pop rx110_pos, rx110_bstack
    pop $I19, rx110_bstack
    lt rx110_pos, -1, rx110_done307
    lt rx110_pos, 0, rx110_fail309
    eq $I19, 0, rx110_fail309
    nqp_islist $I20, rx110_cstack
    unless $I20, rx110_jump310
    elements $I18, rx110_bstack
    le $I18, 0, rx110_cut311
    dec $I18
    set $I18, rx110_bstack[$I18]
  rx110_cut311:
    assign rx110_cstack, $I18
  rx110_jump310:
    jump $I19
  rx110_done307:
    rx110_cur."!cursor_fail"()
    .return (rx110_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_30_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    .local pmc rx125_curclass
    .local pmc rx125_bstack
    .local pmc rx125_cstack
    (rx125_cur, rx125_tgt, rx125_pos, rx125_curclass, rx125_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx125_cur
    length rx125_eos, rx125_tgt
    eq $I19, 1, rx125_restart345
    gt rx125_pos, rx125_eos, rx125_fail346
    repr_get_attr_int $I11, self, rx125_curclass, "$!from"
    ne $I11, -1, rxscan126_done352
    goto rxscan126_scan351
  rxscan126_loop350:
    inc rx125_pos
    gt rx125_pos, rx125_eos, rx125_fail346
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!from", rx125_pos
  rxscan126_scan351:
    nqp_rxmark rx125_bstack, rxscan126_loop350, rx125_pos, 0
  rxscan126_done352:
    ge rx125_pos, rx125_eos, rx125_fail346
    substr $S11, rx125_tgt, rx125_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx125_fail346
    inc rx125_pos
    nqp_rxmark rx125_bstack, rxquantr127_done354, rx125_pos, 0
  rxquantr127_loop353:
  alt128_0356:
    nqp_rxmark rx125_bstack, alt128_1357, rx125_pos, 0
    add $I11, rx125_pos, 1
    gt $I11, rx125_eos, rx125_fail346
    substr $S10, rx125_tgt, rx125_pos, 1
    ne $S10, ucs4:"-", rx125_fail346
    add rx125_pos, 1
    goto alt128_end355
  alt128_1357:
    ge rx125_pos, rx125_eos, rx125_fail346
    substr $S11, rx125_tgt, rx125_pos, 1
    index $I11, ucs4:"+", $S11
    lt $I11, 0, rx125_fail346
    inc rx125_pos
  alt128_end355:
    nqp_rxpeek $I19, rx125_bstack, rxquantr127_done354
    inc $I19
    inc $I19
    set rx125_rep, rx125_bstack[$I19]
    nqp_rxcommit rx125_bstack, rxquantr127_done354
    inc rx125_rep
  rxquantr127_done354:
    nqp_rxmark rx125_bstack, rxquantr129_done359, -1, 0
  rxquantr129_loop358:
    ge rx125_pos, rx125_eos, rx125_fail346
    is_cclass $I11, .CCLASS_NUMERIC, rx125_tgt, rx125_pos
    unless $I11, rx125_fail346
    add rx125_pos, 1
    nqp_rxpeek $I19, rx125_bstack, rxquantr129_done359
    inc $I19
    inc $I19
    set rx125_rep, rx125_bstack[$I19]
    nqp_rxcommit rx125_bstack, rxquantr129_done359
    inc rx125_rep
    nqp_rxmark rx125_bstack, rxquantr129_done359, rx125_pos, rx125_rep
    goto rxquantr129_loop358
  rxquantr129_done359:
    rx125_cur."!cursor_pass"(rx125_pos, "escale", 'backtrack'=>1)
    .return (rx125_cur)
  rx125_restart345:
    repr_get_attr_obj rx125_cstack, rx125_cur, rx125_curclass, "$!cstack"
  rx125_fail346:
    unless rx125_bstack, rx125_done344
    pop $I19, rx125_bstack
    if_null rx125_cstack, rx125_cstack_done349
    unless rx125_cstack, rx125_cstack_done349
    dec $I19
    set $P11, rx125_cstack[$I19]
  rx125_cstack_done349:
    pop rx125_rep, rx125_bstack
    pop rx125_pos, rx125_bstack
    pop $I19, rx125_bstack
    lt rx125_pos, -1, rx125_done344
    lt rx125_pos, 0, rx125_fail346
    eq $I19, 0, rx125_fail346
    nqp_islist $I20, rx125_cstack
    unless $I20, rx125_jump347
    elements $I18, rx125_bstack
    le $I18, 0, rx125_cut348
    dec $I18
    set $I18, rx125_bstack[$I18]
  rx125_cut348:
    assign rx125_cstack, $I18
  rx125_jump347:
    jump $I19
  rx125_done344:
    rx125_cur."!cursor_fail"()
    .return (rx125_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_31_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_32_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx130_tgt
    .local int rx130_pos
    .local int rx130_off
    .local int rx130_eos
    .local int rx130_rep
    .local pmc rx130_cur
    .local pmc rx130_curclass
    .local pmc rx130_bstack
    .local pmc rx130_cstack
    (rx130_cur, rx130_tgt, rx130_pos, rx130_curclass, rx130_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx130_cur
    length rx130_eos, rx130_tgt
    eq $I19, 1, rx130_restart362
    gt rx130_pos, rx130_eos, rx130_fail363
    repr_get_attr_int $I11, self, rx130_curclass, "$!from"
    ne $I11, -1, rxscan131_done369
    goto rxscan131_scan368
  rxscan131_loop367:
    inc rx130_pos
    gt rx130_pos, rx130_eos, rx130_fail363
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!from", rx130_pos
  rxscan131_scan368:
    nqp_rxmark rx130_bstack, rxscan131_loop367, rx130_pos, 0
  rxscan131_done369:
    add $I11, rx130_pos, 2
    gt $I11, rx130_eos, rx130_fail363
    substr $S10, rx130_tgt, rx130_pos, 2
    ne $S10, ucs4:"\\\\", rx130_fail363
    add rx130_pos, 2
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx130_curclass, "$!pos"
    lt $I11, 0, rx130_fail363
    rx130_cur."!cursor_pass"(rx130_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx130_cur)
  rx130_restart362:
    repr_get_attr_obj rx130_cstack, rx130_cur, rx130_curclass, "$!cstack"
  rx130_fail363:
    unless rx130_bstack, rx130_done361
    pop $I19, rx130_bstack
    if_null rx130_cstack, rx130_cstack_done366
    unless rx130_cstack, rx130_cstack_done366
    dec $I19
    set $P11, rx130_cstack[$I19]
  rx130_cstack_done366:
    pop rx130_rep, rx130_bstack
    pop rx130_pos, rx130_bstack
    pop $I19, rx130_bstack
    lt rx130_pos, -1, rx130_done361
    lt rx130_pos, 0, rx130_fail363
    eq $I19, 0, rx130_fail363
    nqp_islist $I20, rx130_cstack
    unless $I20, rx130_jump364
    elements $I18, rx130_bstack
    le $I18, 0, rx130_cut365
    dec $I18
    set $I18, rx130_bstack[$I18]
  rx130_cut365:
    assign rx130_cstack, $I18
  rx130_jump364:
    jump $I19
  rx130_done361:
    rx130_cur."!cursor_fail"()
    .return (rx130_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_33_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    .local pmc rx132_curclass
    .local pmc rx132_bstack
    .local pmc rx132_cstack
    (rx132_cur, rx132_tgt, rx132_pos, rx132_curclass, rx132_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx132_cur
    length rx132_eos, rx132_tgt
    eq $I19, 1, rx132_restart372
    gt rx132_pos, rx132_eos, rx132_fail373
    repr_get_attr_int $I11, self, rx132_curclass, "$!from"
    ne $I11, -1, rxscan133_done379
    goto rxscan133_scan378
  rxscan133_loop377:
    inc rx132_pos
    gt rx132_pos, rx132_eos, rx132_fail373
    repr_bind_attr_int rx132_cur, rx132_curclass, "$!from", rx132_pos
  rxscan133_scan378:
    nqp_rxmark rx132_bstack, rxscan133_loop377, rx132_pos, 0
  rxscan133_done379:
    add $I11, rx132_pos, 1
    gt $I11, rx132_eos, rx132_fail373
    substr $S10, rx132_tgt, rx132_pos, 1
    ne $S10, ucs4:"\\", rx132_fail373
    add rx132_pos, 1
    repr_bind_attr_int rx132_cur, rx132_curclass, "$!pos", rx132_pos
    $P11 = rx132_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx132_curclass, "$!pos"
    lt $I11, 0, rx132_fail373
    repr_bind_attr_int rx132_cur, rx132_curclass, "$!pos", rx132_pos
    $P11 = rx132_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx132_curclass, "$!pos"
    lt $I11, 0, rx132_fail373
    nqp_rxmark rx132_bstack, rxsubrule134_pass380, -1, 0
  rxsubrule134_pass380:
    rx132_cstack = rx132_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx132_pos, $P11, rx132_curclass, "$!pos"
    rx132_cur."!cursor_pass"(rx132_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx132_cur)
  rx132_restart372:
    repr_get_attr_obj rx132_cstack, rx132_cur, rx132_curclass, "$!cstack"
  rx132_fail373:
    unless rx132_bstack, rx132_done371
    pop $I19, rx132_bstack
    if_null rx132_cstack, rx132_cstack_done376
    unless rx132_cstack, rx132_cstack_done376
    dec $I19
    set $P11, rx132_cstack[$I19]
  rx132_cstack_done376:
    pop rx132_rep, rx132_bstack
    pop rx132_pos, rx132_bstack
    pop $I19, rx132_bstack
    lt rx132_pos, -1, rx132_done371
    lt rx132_pos, 0, rx132_fail373
    eq $I19, 0, rx132_fail373
    nqp_islist $I20, rx132_cstack
    unless $I20, rx132_jump374
    elements $I18, rx132_bstack
    le $I18, 0, rx132_cut375
    dec $I18
    set $I18, rx132_bstack[$I18]
  rx132_cut375:
    assign rx132_cstack, $I18
  rx132_jump374:
    jump $I19
  rx132_done371:
    rx132_cur."!cursor_fail"()
    .return (rx132_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_34_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 95
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx135_tgt
    .local int rx135_pos
    .local int rx135_off
    .local int rx135_eos
    .local int rx135_rep
    .local pmc rx135_cur
    .local pmc rx135_curclass
    .local pmc rx135_bstack
    .local pmc rx135_cstack
    (rx135_cur, rx135_tgt, rx135_pos, rx135_curclass, rx135_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx135_cur
    length rx135_eos, rx135_tgt
    eq $I19, 1, rx135_restart383
    gt rx135_pos, rx135_eos, rx135_fail384
    repr_get_attr_int $I11, self, rx135_curclass, "$!from"
    ne $I11, -1, rxscan136_done390
    goto rxscan136_scan389
  rxscan136_loop388:
    inc rx135_pos
    gt rx135_pos, rx135_eos, rx135_fail384
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!from", rx135_pos
  rxscan136_scan389:
    nqp_rxmark rx135_bstack, rxscan136_loop388, rx135_pos, 0
  rxscan136_done390:
    add $I11, rx135_pos, 2
    gt $I11, rx135_eos, rx135_fail384
    substr $S10, rx135_tgt, rx135_pos, 2
    ne $S10, ucs4:"\\b", rx135_fail384
    add rx135_pos, 2
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!pos", rx135_pos
    $P11 = rx135_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx135_curclass, "$!pos"
    lt $I11, 0, rx135_fail384
    rx135_cur."!cursor_pass"(rx135_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx135_cur)
  rx135_restart383:
    repr_get_attr_obj rx135_cstack, rx135_cur, rx135_curclass, "$!cstack"
  rx135_fail384:
    unless rx135_bstack, rx135_done382
    pop $I19, rx135_bstack
    if_null rx135_cstack, rx135_cstack_done387
    unless rx135_cstack, rx135_cstack_done387
    dec $I19
    set $P11, rx135_cstack[$I19]
  rx135_cstack_done387:
    pop rx135_rep, rx135_bstack
    pop rx135_pos, rx135_bstack
    pop $I19, rx135_bstack
    lt rx135_pos, -1, rx135_done382
    lt rx135_pos, 0, rx135_fail384
    eq $I19, 0, rx135_fail384
    nqp_islist $I20, rx135_cstack
    unless $I20, rx135_jump385
    elements $I18, rx135_bstack
    le $I18, 0, rx135_cut386
    dec $I18
    set $I18, rx135_bstack[$I18]
  rx135_cut386:
    assign rx135_cstack, $I18
  rx135_jump385:
    jump $I19
  rx135_done382:
    rx135_cur."!cursor_fail"()
    .return (rx135_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_35_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 96
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_curclass
    .local pmc rx137_bstack
    .local pmc rx137_cstack
    (rx137_cur, rx137_tgt, rx137_pos, rx137_curclass, rx137_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx137_cur
    length rx137_eos, rx137_tgt
    eq $I19, 1, rx137_restart393
    gt rx137_pos, rx137_eos, rx137_fail394
    repr_get_attr_int $I11, self, rx137_curclass, "$!from"
    ne $I11, -1, rxscan138_done400
    goto rxscan138_scan399
  rxscan138_loop398:
    inc rx137_pos
    gt rx137_pos, rx137_eos, rx137_fail394
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!from", rx137_pos
  rxscan138_scan399:
    nqp_rxmark rx137_bstack, rxscan138_loop398, rx137_pos, 0
  rxscan138_done400:
    add $I11, rx137_pos, 2
    gt $I11, rx137_eos, rx137_fail394
    substr $S10, rx137_tgt, rx137_pos, 2
    ne $S10, ucs4:"\\n", rx137_fail394
    add rx137_pos, 2
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail394
    rx137_cur."!cursor_pass"(rx137_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx137_cur)
  rx137_restart393:
    repr_get_attr_obj rx137_cstack, rx137_cur, rx137_curclass, "$!cstack"
  rx137_fail394:
    unless rx137_bstack, rx137_done392
    pop $I19, rx137_bstack
    if_null rx137_cstack, rx137_cstack_done397
    unless rx137_cstack, rx137_cstack_done397
    dec $I19
    set $P11, rx137_cstack[$I19]
  rx137_cstack_done397:
    pop rx137_rep, rx137_bstack
    pop rx137_pos, rx137_bstack
    pop $I19, rx137_bstack
    lt rx137_pos, -1, rx137_done392
    lt rx137_pos, 0, rx137_fail394
    eq $I19, 0, rx137_fail394
    nqp_islist $I20, rx137_cstack
    unless $I20, rx137_jump395
    elements $I18, rx137_bstack
    le $I18, 0, rx137_cut396
    dec $I18
    set $I18, rx137_bstack[$I18]
  rx137_cut396:
    assign rx137_cstack, $I18
  rx137_jump395:
    jump $I19
  rx137_done392:
    rx137_cur."!cursor_fail"()
    .return (rx137_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_36_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 97
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx139_tgt
    .local int rx139_pos
    .local int rx139_off
    .local int rx139_eos
    .local int rx139_rep
    .local pmc rx139_cur
    .local pmc rx139_curclass
    .local pmc rx139_bstack
    .local pmc rx139_cstack
    (rx139_cur, rx139_tgt, rx139_pos, rx139_curclass, rx139_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx139_cur
    length rx139_eos, rx139_tgt
    eq $I19, 1, rx139_restart403
    gt rx139_pos, rx139_eos, rx139_fail404
    repr_get_attr_int $I11, self, rx139_curclass, "$!from"
    ne $I11, -1, rxscan140_done410
    goto rxscan140_scan409
  rxscan140_loop408:
    inc rx139_pos
    gt rx139_pos, rx139_eos, rx139_fail404
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!from", rx139_pos
  rxscan140_scan409:
    nqp_rxmark rx139_bstack, rxscan140_loop408, rx139_pos, 0
  rxscan140_done410:
    add $I11, rx139_pos, 2
    gt $I11, rx139_eos, rx139_fail404
    substr $S10, rx139_tgt, rx139_pos, 2
    ne $S10, ucs4:"\\r", rx139_fail404
    add rx139_pos, 2
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!pos", rx139_pos
    $P11 = rx139_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx139_curclass, "$!pos"
    lt $I11, 0, rx139_fail404
    rx139_cur."!cursor_pass"(rx139_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
    .return (rx139_cur)
  rx139_restart403:
    repr_get_attr_obj rx139_cstack, rx139_cur, rx139_curclass, "$!cstack"
  rx139_fail404:
    unless rx139_bstack, rx139_done402
    pop $I19, rx139_bstack
    if_null rx139_cstack, rx139_cstack_done407
    unless rx139_cstack, rx139_cstack_done407
    dec $I19
    set $P11, rx139_cstack[$I19]
  rx139_cstack_done407:
    pop rx139_rep, rx139_bstack
    pop rx139_pos, rx139_bstack
    pop $I19, rx139_bstack
    lt rx139_pos, -1, rx139_done402
    lt rx139_pos, 0, rx139_fail404
    eq $I19, 0, rx139_fail404
    nqp_islist $I20, rx139_cstack
    unless $I20, rx139_jump405
    elements $I18, rx139_bstack
    le $I18, 0, rx139_cut406
    dec $I18
    set $I18, rx139_bstack[$I18]
  rx139_cut406:
    assign rx139_cstack, $I18
  rx139_jump405:
    jump $I19
  rx139_done402:
    rx139_cur."!cursor_fail"()
    .return (rx139_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_37_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 98
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx141_tgt
    .local int rx141_pos
    .local int rx141_off
    .local int rx141_eos
    .local int rx141_rep
    .local pmc rx141_cur
    .local pmc rx141_curclass
    .local pmc rx141_bstack
    .local pmc rx141_cstack
    (rx141_cur, rx141_tgt, rx141_pos, rx141_curclass, rx141_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx141_cur
    length rx141_eos, rx141_tgt
    eq $I19, 1, rx141_restart413
    gt rx141_pos, rx141_eos, rx141_fail414
    repr_get_attr_int $I11, self, rx141_curclass, "$!from"
    ne $I11, -1, rxscan142_done420
    goto rxscan142_scan419
  rxscan142_loop418:
    inc rx141_pos
    gt rx141_pos, rx141_eos, rx141_fail414
    repr_bind_attr_int rx141_cur, rx141_curclass, "$!from", rx141_pos
  rxscan142_scan419:
    nqp_rxmark rx141_bstack, rxscan142_loop418, rx141_pos, 0
  rxscan142_done420:
    add $I11, rx141_pos, 2
    gt $I11, rx141_eos, rx141_fail414
    substr $S10, rx141_tgt, rx141_pos, 2
    ne $S10, ucs4:"\\t", rx141_fail414
    add rx141_pos, 2
    repr_bind_attr_int rx141_cur, rx141_curclass, "$!pos", rx141_pos
    $P11 = rx141_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx141_curclass, "$!pos"
    lt $I11, 0, rx141_fail414
    rx141_cur."!cursor_pass"(rx141_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
    .return (rx141_cur)
  rx141_restart413:
    repr_get_attr_obj rx141_cstack, rx141_cur, rx141_curclass, "$!cstack"
  rx141_fail414:
    unless rx141_bstack, rx141_done412
    pop $I19, rx141_bstack
    if_null rx141_cstack, rx141_cstack_done417
    unless rx141_cstack, rx141_cstack_done417
    dec $I19
    set $P11, rx141_cstack[$I19]
  rx141_cstack_done417:
    pop rx141_rep, rx141_bstack
    pop rx141_pos, rx141_bstack
    pop $I19, rx141_bstack
    lt rx141_pos, -1, rx141_done412
    lt rx141_pos, 0, rx141_fail414
    eq $I19, 0, rx141_fail414
    nqp_islist $I20, rx141_cstack
    unless $I20, rx141_jump415
    elements $I18, rx141_bstack
    le $I18, 0, rx141_cut416
    dec $I18
    set $I18, rx141_bstack[$I18]
  rx141_cut416:
    assign rx141_cstack, $I18
  rx141_jump415:
    jump $I19
  rx141_done412:
    rx141_cur."!cursor_fail"()
    .return (rx141_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_38_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 99
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_curclass
    .local pmc rx143_bstack
    .local pmc rx143_cstack
    (rx143_cur, rx143_tgt, rx143_pos, rx143_curclass, rx143_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx143_cur
    length rx143_eos, rx143_tgt
    eq $I19, 1, rx143_restart423
    gt rx143_pos, rx143_eos, rx143_fail424
    repr_get_attr_int $I11, self, rx143_curclass, "$!from"
    ne $I11, -1, rxscan144_done430
    goto rxscan144_scan429
  rxscan144_loop428:
    inc rx143_pos
    gt rx143_pos, rx143_eos, rx143_fail424
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!from", rx143_pos
  rxscan144_scan429:
    nqp_rxmark rx143_bstack, rxscan144_loop428, rx143_pos, 0
  rxscan144_done430:
    add $I11, rx143_pos, 2
    gt $I11, rx143_eos, rx143_fail424
    substr $S10, rx143_tgt, rx143_pos, 2
    ne $S10, ucs4:"\\f", rx143_fail424
    add rx143_pos, 2
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail424
    rx143_cur."!cursor_pass"(rx143_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
    .return (rx143_cur)
  rx143_restart423:
    repr_get_attr_obj rx143_cstack, rx143_cur, rx143_curclass, "$!cstack"
  rx143_fail424:
    unless rx143_bstack, rx143_done422
    pop $I19, rx143_bstack
    if_null rx143_cstack, rx143_cstack_done427
    unless rx143_cstack, rx143_cstack_done427
    dec $I19
    set $P11, rx143_cstack[$I19]
  rx143_cstack_done427:
    pop rx143_rep, rx143_bstack
    pop rx143_pos, rx143_bstack
    pop $I19, rx143_bstack
    lt rx143_pos, -1, rx143_done422
    lt rx143_pos, 0, rx143_fail424
    eq $I19, 0, rx143_fail424
    nqp_islist $I20, rx143_cstack
    unless $I20, rx143_jump425
    elements $I18, rx143_bstack
    le $I18, 0, rx143_cut426
    dec $I18
    set $I18, rx143_bstack[$I18]
  rx143_cut426:
    assign rx143_cstack, $I18
  rx143_jump425:
    jump $I19
  rx143_done422:
    rx143_cur."!cursor_fail"()
    .return (rx143_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_39_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 100
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx145_tgt
    .local int rx145_pos
    .local int rx145_off
    .local int rx145_eos
    .local int rx145_rep
    .local pmc rx145_cur
    .local pmc rx145_curclass
    .local pmc rx145_bstack
    .local pmc rx145_cstack
    (rx145_cur, rx145_tgt, rx145_pos, rx145_curclass, rx145_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx145_cur
    length rx145_eos, rx145_tgt
    eq $I19, 1, rx145_restart433
    gt rx145_pos, rx145_eos, rx145_fail434
    repr_get_attr_int $I11, self, rx145_curclass, "$!from"
    ne $I11, -1, rxscan146_done440
    goto rxscan146_scan439
  rxscan146_loop438:
    inc rx145_pos
    gt rx145_pos, rx145_eos, rx145_fail434
    repr_bind_attr_int rx145_cur, rx145_curclass, "$!from", rx145_pos
  rxscan146_scan439:
    nqp_rxmark rx145_bstack, rxscan146_loop438, rx145_pos, 0
  rxscan146_done440:
    add $I11, rx145_pos, 2
    gt $I11, rx145_eos, rx145_fail434
    substr $S10, rx145_tgt, rx145_pos, 2
    ne $S10, ucs4:"\\e", rx145_fail434
    add rx145_pos, 2
    repr_bind_attr_int rx145_cur, rx145_curclass, "$!pos", rx145_pos
    $P11 = rx145_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx145_curclass, "$!pos"
    lt $I11, 0, rx145_fail434
    rx145_cur."!cursor_pass"(rx145_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
    .return (rx145_cur)
  rx145_restart433:
    repr_get_attr_obj rx145_cstack, rx145_cur, rx145_curclass, "$!cstack"
  rx145_fail434:
    unless rx145_bstack, rx145_done432
    pop $I19, rx145_bstack
    if_null rx145_cstack, rx145_cstack_done437
    unless rx145_cstack, rx145_cstack_done437
    dec $I19
    set $P11, rx145_cstack[$I19]
  rx145_cstack_done437:
    pop rx145_rep, rx145_bstack
    pop rx145_pos, rx145_bstack
    pop $I19, rx145_bstack
    lt rx145_pos, -1, rx145_done432
    lt rx145_pos, 0, rx145_fail434
    eq $I19, 0, rx145_fail434
    nqp_islist $I20, rx145_cstack
    unless $I20, rx145_jump435
    elements $I18, rx145_bstack
    le $I18, 0, rx145_cut436
    dec $I18
    set $I18, rx145_bstack[$I18]
  rx145_cut436:
    assign rx145_cstack, $I18
  rx145_jump435:
    jump $I19
  rx145_done432:
    rx145_cur."!cursor_fail"()
    .return (rx145_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_40_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx147_tgt
    .local int rx147_pos
    .local int rx147_off
    .local int rx147_eos
    .local int rx147_rep
    .local pmc rx147_cur
    .local pmc rx147_curclass
    .local pmc rx147_bstack
    .local pmc rx147_cstack
    (rx147_cur, rx147_tgt, rx147_pos, rx147_curclass, rx147_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx147_cur
    length rx147_eos, rx147_tgt
    eq $I19, 1, rx147_restart443
    gt rx147_pos, rx147_eos, rx147_fail444
    repr_get_attr_int $I11, self, rx147_curclass, "$!from"
    ne $I11, -1, rxscan148_done450
    goto rxscan148_scan449
  rxscan148_loop448:
    inc rx147_pos
    gt rx147_pos, rx147_eos, rx147_fail444
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!from", rx147_pos
  rxscan148_scan449:
    nqp_rxmark rx147_bstack, rxscan148_loop448, rx147_pos, 0
  rxscan148_done450:
    add $I11, rx147_pos, 2
    gt $I11, rx147_eos, rx147_fail444
    substr $S10, rx147_tgt, rx147_pos, 2
    ne $S10, ucs4:"\\x", rx147_fail444
    add rx147_pos, 2
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!pos", rx147_pos
    $P11 = rx147_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx147_curclass, "$!pos"
    lt $I11, 0, rx147_fail444
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt149_0452
    nqp_push_label $P11, alt149_1454
    nqp_rxmark rx147_bstack, alt149_end451, -1, 0
    rx147_cur."!alt"(rx147_pos, "alt_nfa__6_1360235112.429", $P11)
    goto rx147_fail444
  alt149_0452:
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!pos", rx147_pos
    $P11 = rx147_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx147_curclass, "$!pos"
    lt $I11, 0, rx147_fail444
    nqp_rxmark rx147_bstack, rxsubrule150_pass453, -1, 0
  rxsubrule150_pass453:
    rx147_cstack = rx147_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx147_pos, $P11, rx147_curclass, "$!pos"
    goto alt149_end451
  alt149_1454:
    add $I11, rx147_pos, 1
    gt $I11, rx147_eos, rx147_fail444
    substr $S10, rx147_tgt, rx147_pos, 1
    ne $S10, ucs4:"[", rx147_fail444
    add rx147_pos, 1
    repr_bind_attr_int rx147_cur, rx147_curclass, "$!pos", rx147_pos
    $P11 = rx147_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx147_curclass, "$!pos"
    lt $I11, 0, rx147_fail444
    nqp_rxmark rx147_bstack, rxsubrule151_pass455, -1, 0
  rxsubrule151_pass455:
    rx147_cstack = rx147_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx147_pos, $P11, rx147_curclass, "$!pos"
    add $I11, rx147_pos, 1
    gt $I11, rx147_eos, rx147_fail444
    substr $S10, rx147_tgt, rx147_pos, 1
    ne $S10, ucs4:"]", rx147_fail444
    add rx147_pos, 1
    goto alt149_end451
  alt149_end451:
    nqp_rxcommit rx147_bstack, alt149_end451
    rx147_cur."!cursor_pass"(rx147_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
    .return (rx147_cur)
  rx147_restart443:
    repr_get_attr_obj rx147_cstack, rx147_cur, rx147_curclass, "$!cstack"
  rx147_fail444:
    unless rx147_bstack, rx147_done442
    pop $I19, rx147_bstack
    if_null rx147_cstack, rx147_cstack_done447
    unless rx147_cstack, rx147_cstack_done447
    dec $I19
    set $P11, rx147_cstack[$I19]
  rx147_cstack_done447:
    pop rx147_rep, rx147_bstack
    pop rx147_pos, rx147_bstack
    pop $I19, rx147_bstack
    lt rx147_pos, -1, rx147_done442
    lt rx147_pos, 0, rx147_fail444
    eq $I19, 0, rx147_fail444
    nqp_islist $I20, rx147_cstack
    unless $I20, rx147_jump445
    elements $I18, rx147_bstack
    le $I18, 0, rx147_cut446
    dec $I18
    set $I18, rx147_bstack[$I18]
  rx147_cut446:
    assign rx147_cstack, $I18
  rx147_jump445:
    jump $I19
  rx147_done442:
    rx147_cur."!cursor_fail"()
    .return (rx147_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_41_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    .local pmc rx152_curclass
    .local pmc rx152_bstack
    .local pmc rx152_cstack
    (rx152_cur, rx152_tgt, rx152_pos, rx152_curclass, rx152_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx152_cur
    length rx152_eos, rx152_tgt
    eq $I19, 1, rx152_restart458
    gt rx152_pos, rx152_eos, rx152_fail459
    repr_get_attr_int $I11, self, rx152_curclass, "$!from"
    ne $I11, -1, rxscan153_done465
    goto rxscan153_scan464
  rxscan153_loop463:
    inc rx152_pos
    gt rx152_pos, rx152_eos, rx152_fail459
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!from", rx152_pos
  rxscan153_scan464:
    nqp_rxmark rx152_bstack, rxscan153_loop463, rx152_pos, 0
  rxscan153_done465:
    add $I11, rx152_pos, 2
    gt $I11, rx152_eos, rx152_fail459
    substr $S10, rx152_tgt, rx152_pos, 2
    ne $S10, ucs4:"\\o", rx152_fail459
    add rx152_pos, 2
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!pos", rx152_pos
    $P11 = rx152_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx152_curclass, "$!pos"
    lt $I11, 0, rx152_fail459
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt154_0467
    nqp_push_label $P11, alt154_1469
    nqp_rxmark rx152_bstack, alt154_end466, -1, 0
    rx152_cur."!alt"(rx152_pos, "alt_nfa__7_1360235112.441", $P11)
    goto rx152_fail459
  alt154_0467:
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!pos", rx152_pos
    $P11 = rx152_cur."octint"()
    repr_get_attr_int $I11, $P11, rx152_curclass, "$!pos"
    lt $I11, 0, rx152_fail459
    nqp_rxmark rx152_bstack, rxsubrule155_pass468, -1, 0
  rxsubrule155_pass468:
    rx152_cstack = rx152_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx152_pos, $P11, rx152_curclass, "$!pos"
    goto alt154_end466
  alt154_1469:
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail459
    substr $S10, rx152_tgt, rx152_pos, 1
    ne $S10, ucs4:"[", rx152_fail459
    add rx152_pos, 1
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!pos", rx152_pos
    $P11 = rx152_cur."octints"()
    repr_get_attr_int $I11, $P11, rx152_curclass, "$!pos"
    lt $I11, 0, rx152_fail459
    nqp_rxmark rx152_bstack, rxsubrule156_pass470, -1, 0
  rxsubrule156_pass470:
    rx152_cstack = rx152_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx152_pos, $P11, rx152_curclass, "$!pos"
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail459
    substr $S10, rx152_tgt, rx152_pos, 1
    ne $S10, ucs4:"]", rx152_fail459
    add rx152_pos, 1
    goto alt154_end466
  alt154_end466:
    nqp_rxcommit rx152_bstack, alt154_end466
    rx152_cur."!cursor_pass"(rx152_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx152_cur)
  rx152_restart458:
    repr_get_attr_obj rx152_cstack, rx152_cur, rx152_curclass, "$!cstack"
  rx152_fail459:
    unless rx152_bstack, rx152_done457
    pop $I19, rx152_bstack
    if_null rx152_cstack, rx152_cstack_done462
    unless rx152_cstack, rx152_cstack_done462
    dec $I19
    set $P11, rx152_cstack[$I19]
  rx152_cstack_done462:
    pop rx152_rep, rx152_bstack
    pop rx152_pos, rx152_bstack
    pop $I19, rx152_bstack
    lt rx152_pos, -1, rx152_done457
    lt rx152_pos, 0, rx152_fail459
    eq $I19, 0, rx152_fail459
    nqp_islist $I20, rx152_cstack
    unless $I20, rx152_jump460
    elements $I18, rx152_bstack
    le $I18, 0, rx152_cut461
    dec $I18
    set $I18, rx152_bstack[$I18]
  rx152_cut461:
    assign rx152_cstack, $I18
  rx152_jump460:
    jump $I19
  rx152_done457:
    rx152_cur."!cursor_fail"()
    .return (rx152_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_42_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 109
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    .local pmc rx157_curclass
    .local pmc rx157_bstack
    .local pmc rx157_cstack
    (rx157_cur, rx157_tgt, rx157_pos, rx157_curclass, rx157_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx157_cur
    length rx157_eos, rx157_tgt
    eq $I19, 1, rx157_restart473
    gt rx157_pos, rx157_eos, rx157_fail474
    repr_get_attr_int $I11, self, rx157_curclass, "$!from"
    ne $I11, -1, rxscan158_done480
    goto rxscan158_scan479
  rxscan158_loop478:
    inc rx157_pos
    gt rx157_pos, rx157_eos, rx157_fail474
    repr_bind_attr_int rx157_cur, rx157_curclass, "$!from", rx157_pos
  rxscan158_scan479:
    nqp_rxmark rx157_bstack, rxscan158_loop478, rx157_pos, 0
  rxscan158_done480:
    add $I11, rx157_pos, 2
    gt $I11, rx157_eos, rx157_fail474
    substr $S10, rx157_tgt, rx157_pos, 2
    ne $S10, ucs4:"\\c", rx157_fail474
    add rx157_pos, 2
    repr_bind_attr_int rx157_cur, rx157_curclass, "$!pos", rx157_pos
    $P11 = rx157_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx157_curclass, "$!pos"
    lt $I11, 0, rx157_fail474
    repr_bind_attr_int rx157_cur, rx157_curclass, "$!pos", rx157_pos
    $P11 = rx157_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx157_curclass, "$!pos"
    lt $I11, 0, rx157_fail474
    nqp_rxmark rx157_bstack, rxsubrule159_pass481, -1, 0
  rxsubrule159_pass481:
    rx157_cstack = rx157_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx157_pos, $P11, rx157_curclass, "$!pos"
    rx157_cur."!cursor_pass"(rx157_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx157_cur)
  rx157_restart473:
    repr_get_attr_obj rx157_cstack, rx157_cur, rx157_curclass, "$!cstack"
  rx157_fail474:
    unless rx157_bstack, rx157_done472
    pop $I19, rx157_bstack
    if_null rx157_cstack, rx157_cstack_done477
    unless rx157_cstack, rx157_cstack_done477
    dec $I19
    set $P11, rx157_cstack[$I19]
  rx157_cstack_done477:
    pop rx157_rep, rx157_bstack
    pop rx157_pos, rx157_bstack
    pop $I19, rx157_bstack
    lt rx157_pos, -1, rx157_done472
    lt rx157_pos, 0, rx157_fail474
    eq $I19, 0, rx157_fail474
    nqp_islist $I20, rx157_cstack
    unless $I20, rx157_jump475
    elements $I18, rx157_bstack
    le $I18, 0, rx157_cut476
    dec $I18
    set $I18, rx157_bstack[$I18]
  rx157_cut476:
    assign rx157_cstack, $I18
  rx157_jump475:
    jump $I19
  rx157_done472:
    rx157_cur."!cursor_fail"()
    .return (rx157_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_43_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx160_tgt
    .local int rx160_pos
    .local int rx160_off
    .local int rx160_eos
    .local int rx160_rep
    .local pmc rx160_cur
    .local pmc rx160_curclass
    .local pmc rx160_bstack
    .local pmc rx160_cstack
    (rx160_cur, rx160_tgt, rx160_pos, rx160_curclass, rx160_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx160_cur
    length rx160_eos, rx160_tgt
    eq $I19, 1, rx160_restart484
    gt rx160_pos, rx160_eos, rx160_fail485
    repr_get_attr_int $I11, self, rx160_curclass, "$!from"
    ne $I11, -1, rxscan161_done491
    goto rxscan161_scan490
  rxscan161_loop489:
    inc rx160_pos
    gt rx160_pos, rx160_eos, rx160_fail485
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!from", rx160_pos
  rxscan161_scan490:
    nqp_rxmark rx160_bstack, rxscan161_loop489, rx160_pos, 0
  rxscan161_done491:
    add $I11, rx160_pos, 1
    gt $I11, rx160_eos, rx160_fail485
    substr $S10, rx160_tgt, rx160_pos, 1
    ne $S10, ucs4:"\\", rx160_fail485
    add rx160_pos, 1
    nqp_rxmark rx160_bstack, rxcap162_fail493, rx160_pos, 0
    add $I11, rx160_pos, 1
    gt $I11, rx160_eos, rx160_fail485
    substr $S10, rx160_tgt, rx160_pos, 1
    ne $S10, ucs4:"0", rx160_fail485
    add rx160_pos, 1
    nqp_rxpeek $I19, rx160_bstack, rxcap162_fail493
    inc $I19
    set $I11, rx160_bstack[$I19]
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    $P11 = rx160_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx160_pos)
    rx160_cstack = rx160_cur."!cursor_capture"($P11, "sym")
    goto rxcap162_done492
  rxcap162_fail493:
    goto rx160_fail485
  rxcap162_done492:
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    $P11 = rx160_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx160_curclass, "$!pos"
    lt $I11, 0, rx160_fail485
    rx160_cur."!cursor_pass"(rx160_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx160_cur)
  rx160_restart484:
    repr_get_attr_obj rx160_cstack, rx160_cur, rx160_curclass, "$!cstack"
  rx160_fail485:
    unless rx160_bstack, rx160_done483
    pop $I19, rx160_bstack
    if_null rx160_cstack, rx160_cstack_done488
    unless rx160_cstack, rx160_cstack_done488
    dec $I19
    set $P11, rx160_cstack[$I19]
  rx160_cstack_done488:
    pop rx160_rep, rx160_bstack
    pop rx160_pos, rx160_bstack
    pop $I19, rx160_bstack
    lt rx160_pos, -1, rx160_done483
    lt rx160_pos, 0, rx160_fail485
    eq $I19, 0, rx160_fail485
    nqp_islist $I20, rx160_cstack
    unless $I20, rx160_jump486
    elements $I18, rx160_bstack
    le $I18, 0, rx160_cut487
    dec $I18
    set $I18, rx160_bstack[$I18]
  rx160_cut487:
    assign rx160_cstack, $I18
  rx160_jump486:
    jump $I19
  rx160_done483:
    rx160_cur."!cursor_fail"()
    .return (rx160_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_44_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 111
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_175_1360235112.107' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_45_1360235112.107' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_46_1360235112.107' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_176_1360235112.107' 
    capture_lex $P5009 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    .local pmc rx163_curclass
    .local pmc rx163_bstack
    .local pmc rx163_cstack
    (rx163_cur, rx163_tgt, rx163_pos, rx163_curclass, rx163_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx163_cur
    length rx163_eos, rx163_tgt
    eq $I19, 1, rx163_restart496
    gt rx163_pos, rx163_eos, rx163_fail497
    repr_get_attr_int $I11, self, rx163_curclass, "$!from"
    ne $I11, -1, rxscan164_done503
    goto rxscan164_scan502
  rxscan164_loop501:
    inc rx163_pos
    gt rx163_pos, rx163_eos, rx163_fail497
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!from", rx163_pos
  rxscan164_scan502:
    nqp_rxmark rx163_bstack, rxscan164_loop501, rx163_pos, 0
  rxscan164_done503:
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!pos", rx163_pos
    store_lex unicode:"$\x{a2}", rx163_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_175_1360235112.107' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail497
    substr $S10, rx163_tgt, rx163_pos, 1
    ne $S10, ucs4:"\\", rx163_fail497
    add rx163_pos, 1
  alt165_0505:
    nqp_rxmark rx163_bstack, alt165_1532, rx163_pos, 0
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!pos", rx163_pos
    $P11 = rx163_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx163_curclass, "$!pos"
    lt $I11, 0, rx163_fail497
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt166_0507
    nqp_push_label $P11, alt166_1519
    nqp_rxmark rx163_bstack, alt166_end506, -1, 0
    rx163_cur."!alt"(rx163_pos, "alt_nfa__8_1360235112.476", $P11)
    goto rx163_fail497
  alt166_0507:
    .const 'Sub' $P5004 = 'cuid_45_1360235112.107' 
    capture_lex $P5004
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!pos", rx163_pos
    $P11 = rx163_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx163_curclass, "$!pos"
    lt $I11, 0, rx163_fail497
    nqp_rxmark rx163_bstack, rxsubrule169_pass518, -1, 0
  rxsubrule169_pass518:
    rx163_cstack = rx163_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx163_pos, $P11, rx163_curclass, "$!pos"
    goto alt166_end506
  alt166_1519:
    .const 'Sub' $P5005 = 'cuid_46_1360235112.107' 
    capture_lex $P5005
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!pos", rx163_pos
    $P11 = rx163_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx163_curclass, "$!pos"
    lt $I11, 0, rx163_fail497
    nqp_rxmark rx163_bstack, rxsubrule172_pass530, -1, 0
  rxsubrule172_pass530:
    rx163_cstack = rx163_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx163_pos, $P11, rx163_curclass, "$!pos"
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!pos", rx163_pos
    store_lex unicode:"$\x{a2}", rx163_cur
    $P5006 = $P101."MATCH"()
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_176_1360235112.107' 
    capture_lex $P5007
    $P5008 = $P5007()
    goto alt166_end506
  alt166_end506:
    nqp_rxcommit rx163_bstack, alt166_end506
    goto alt165_end504
  alt165_1532:
    nqp_rxmark rx163_bstack, rxcap173_fail534, rx163_pos, 0
    ge rx163_pos, rx163_eos, rx163_fail497
    add rx163_pos, 1
    nqp_rxpeek $I19, rx163_bstack, rxcap173_fail534
    inc $I19
    set $I11, rx163_bstack[$I19]
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!pos", rx163_pos
    $P11 = rx163_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx163_pos)
    rx163_cstack = rx163_cur."!cursor_capture"($P11, "textq")
    goto rxcap173_done533
  rxcap173_fail534:
    goto rx163_fail497
  rxcap173_done533:
  alt165_end504:
    rx163_cur."!cursor_pass"(rx163_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx163_cur)
  rx163_restart496:
    repr_get_attr_obj rx163_cstack, rx163_cur, rx163_curclass, "$!cstack"
  rx163_fail497:
    unless rx163_bstack, rx163_done495
    pop $I19, rx163_bstack
    if_null rx163_cstack, rx163_cstack_done500
    unless rx163_cstack, rx163_cstack_done500
    dec $I19
    set $P11, rx163_cstack[$I19]
  rx163_cstack_done500:
    pop rx163_rep, rx163_bstack
    pop rx163_pos, rx163_bstack
    pop $I19, rx163_bstack
    lt rx163_pos, -1, rx163_done495
    lt rx163_pos, 0, rx163_fail497
    eq $I19, 0, rx163_fail497
    nqp_islist $I20, rx163_cstack
    unless $I20, rx163_jump498
    elements $I18, rx163_bstack
    le $I18, 0, rx163_cut499
    dec $I18
    set $I18, rx163_bstack[$I18]
  rx163_cut499:
    assign rx163_cstack, $I18
  rx163_jump498:
    jump $I19
  rx163_done495:
    rx163_cur."!cursor_fail"()
    .return (rx163_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1360235112.107") :anon :lex :outer("cuid_44_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 112

    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_45_1360235112.107") :anon :lex :outer("cuid_44_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx167_tgt
    .local int rx167_pos
    .local int rx167_off
    .local int rx167_eos
    .local int rx167_rep
    .local pmc rx167_cur
    .local pmc rx167_curclass
    .local pmc rx167_bstack
    .local pmc rx167_cstack
    (rx167_cur, rx167_tgt, rx167_pos, rx167_curclass, rx167_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx167_cur
    length rx167_eos, rx167_tgt
    eq $I19, 1, rx167_restart510
    gt rx167_pos, rx167_eos, rx167_fail511
    repr_get_attr_int $I11, self, rx167_curclass, "$!from"
    ne $I11, -1, rxscan168_done517
    goto rxscan168_scan516
  rxscan168_loop515:
    inc rx167_pos
    gt rx167_pos, rx167_eos, rx167_fail511
    repr_bind_attr_int rx167_cur, rx167_curclass, "$!from", rx167_pos
  rxscan168_scan516:
    nqp_rxmark rx167_bstack, rxscan168_loop515, rx167_pos, 0
  rxscan168_done517:
    ge rx167_pos, rx167_eos, rx167_fail511
    is_cclass $I11, .CCLASS_WORD, rx167_tgt, rx167_pos
    if $I11, rx167_fail511
    add rx167_pos, 1
    rx167_cur."!cursor_pass"(rx167_pos, 'backtrack'=>1)
    .return (rx167_cur)
  rx167_restart510:
    repr_get_attr_obj rx167_cstack, rx167_cur, rx167_curclass, "$!cstack"
  rx167_fail511:
    unless rx167_bstack, rx167_done509
    pop $I19, rx167_bstack
    if_null rx167_cstack, rx167_cstack_done514
    unless rx167_cstack, rx167_cstack_done514
    dec $I19
    set $P11, rx167_cstack[$I19]
  rx167_cstack_done514:
    pop rx167_rep, rx167_bstack
    pop rx167_pos, rx167_bstack
    pop $I19, rx167_bstack
    lt rx167_pos, -1, rx167_done509
    lt rx167_pos, 0, rx167_fail511
    eq $I19, 0, rx167_fail511
    nqp_islist $I20, rx167_cstack
    unless $I20, rx167_jump512
    elements $I18, rx167_bstack
    le $I18, 0, rx167_cut513
    dec $I18
    set $I18, rx167_bstack[$I18]
  rx167_cut513:
    assign rx167_cstack, $I18
  rx167_jump512:
    jump $I19
  rx167_done509:
    rx167_cur."!cursor_fail"()
    .return (rx167_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_46_1360235112.107") :anon :lex :outer("cuid_44_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    .local pmc rx170_curclass
    .local pmc rx170_bstack
    .local pmc rx170_cstack
    (rx170_cur, rx170_tgt, rx170_pos, rx170_curclass, rx170_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    eq $I19, 1, rx170_restart522
    gt rx170_pos, rx170_eos, rx170_fail523
    repr_get_attr_int $I11, self, rx170_curclass, "$!from"
    ne $I11, -1, rxscan171_done529
    goto rxscan171_scan528
  rxscan171_loop527:
    inc rx170_pos
    gt rx170_pos, rx170_eos, rx170_fail523
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!from", rx170_pos
  rxscan171_scan528:
    nqp_rxmark rx170_bstack, rxscan171_loop527, rx170_pos, 0
  rxscan171_done529:
    ge rx170_pos, rx170_eos, rx170_fail523
    is_cclass $I11, .CCLASS_WORD, rx170_tgt, rx170_pos
    unless $I11, rx170_fail523
    add rx170_pos, 1
    rx170_cur."!cursor_pass"(rx170_pos, 'backtrack'=>1)
    .return (rx170_cur)
  rx170_restart522:
    repr_get_attr_obj rx170_cstack, rx170_cur, rx170_curclass, "$!cstack"
  rx170_fail523:
    unless rx170_bstack, rx170_done521
    pop $I19, rx170_bstack
    if_null rx170_cstack, rx170_cstack_done526
    unless rx170_cstack, rx170_cstack_done526
    dec $I19
    set $P11, rx170_cstack[$I19]
  rx170_cstack_done526:
    pop rx170_rep, rx170_bstack
    pop rx170_pos, rx170_bstack
    pop $I19, rx170_bstack
    lt rx170_pos, -1, rx170_done521
    lt rx170_pos, 0, rx170_fail523
    eq $I19, 0, rx170_fail523
    nqp_islist $I20, rx170_cstack
    unless $I20, rx170_jump524
    elements $I18, rx170_bstack
    le $I18, 0, rx170_cut525
    dec $I18
    set $I18, rx170_bstack[$I18]
  rx170_cut525:
    assign rx170_cstack, $I18
  rx170_jump524:
    jump $I19
  rx170_done521:
    rx170_cur."!cursor_fail"()
    .return (rx170_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1360235112.107") :anon :lex :outer("cuid_44_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 117

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$/"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback531
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5005
  fallback531:
    $P5006 = $P5003."Str"()
    $P5007 = $P5001."throw_unrecog_backslash_seq"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_47_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 123
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_48_1360235112.107' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx174_tgt
    .local int rx174_pos
    .local int rx174_off
    .local int rx174_eos
    .local int rx174_rep
    .local pmc rx174_cur
    .local pmc rx174_curclass
    .local pmc rx174_bstack
    .local pmc rx174_cstack
    (rx174_cur, rx174_tgt, rx174_pos, rx174_curclass, rx174_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx174_cur
    length rx174_eos, rx174_tgt
    eq $I19, 1, rx174_restart537
    gt rx174_pos, rx174_eos, rx174_fail538
    repr_get_attr_int $I11, self, rx174_curclass, "$!from"
    ne $I11, -1, rxscan175_done544
    goto rxscan175_scan543
  rxscan175_loop542:
    inc rx174_pos
    gt rx174_pos, rx174_eos, rx174_fail538
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!from", rx174_pos
  rxscan175_scan543:
    nqp_rxmark rx174_bstack, rxscan175_loop542, rx174_pos, 0
  rxscan175_done544:
  alt176_0546:
    nqp_rxmark rx174_bstack, alt176_1548, rx174_pos, 0
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."integer"()
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail538
    nqp_rxmark rx174_bstack, rxsubrule177_pass547, -1, 0
  rxsubrule177_pass547:
    rx174_cstack = rx174_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx174_pos, $P11, rx174_curclass, "$!pos"
    goto alt176_end545
  alt176_1548:
    ge rx174_pos, rx174_eos, rx174_fail538
    substr $S11, rx174_tgt, rx174_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx174_fail538
    inc rx174_pos
    set rx174_rep, 0
    nqp_rxmark rx174_bstack, rxquantf178_loop549, rx174_pos, rx174_rep
    goto rxquantf178_done550
  rxquantf178_loop549:
    set $I12, rx174_rep
    nqp_rxmark rx174_bstack, rxconj179_fail552, rx174_pos, 0
    goto rxconj179_first553
  rxconj179_fail552:
    goto rx174_fail538
  rxconj179_first553:
    add $I11, rx174_pos, 1
    gt $I11, rx174_eos, rx174_fail538
    substr $S10, rx174_tgt, rx174_pos, 1
    eq $S10, ucs4:"]", rx174_fail538
    add rx174_pos, 1
    nqp_rxpeek $I19, rx174_bstack, rxconj179_fail552
    inc $I19
    set $I11, rx174_bstack[$I19]
    nqp_rxmark rx174_bstack, rxconj179_fail552, $I11, rx174_pos
    set rx174_pos, $I11
    ge rx174_pos, rx174_eos, rx174_fail538
    substr $S11, rx174_tgt, rx174_pos, 1
    index $I11, ucs4:",#", $S11
    ge $I11, 0, rx174_fail538
    inc rx174_pos
    nqp_rxpeek $I19, rx174_bstack, rxconj179_fail552
    inc $I19
    set $I11, rx174_bstack[$I19]
    inc $I19
    set $I12, rx174_bstack[$I19]
    ne rx174_pos, $I12, rx174_fail538
    set rx174_pos, $I11
    ge rx174_pos, rx174_eos, rx174_fail538
    add rx174_pos, 1
    set rx174_rep, $I12
    inc rx174_rep
    nqp_rxmark rx174_bstack, rxquantf178_loop549, rx174_pos, rx174_rep
  rxquantf178_done550:
    ge rx174_pos, rx174_eos, rx174_fail538
    substr $S11, rx174_tgt, rx174_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx174_fail538
    inc rx174_pos
    .const 'Sub' $P5001 = 'cuid_48_1360235112.107' 
    capture_lex $P5001
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail538
  alt176_end545:
    rx174_cur."!cursor_pass"(rx174_pos, "charname", 'backtrack'=>1)
    .return (rx174_cur)
  rx174_restart537:
    repr_get_attr_obj rx174_cstack, rx174_cur, rx174_curclass, "$!cstack"
  rx174_fail538:
    unless rx174_bstack, rx174_done536
    pop $I19, rx174_bstack
    if_null rx174_cstack, rx174_cstack_done541
    unless rx174_cstack, rx174_cstack_done541
    dec $I19
    set $P11, rx174_cstack[$I19]
  rx174_cstack_done541:
    pop rx174_rep, rx174_bstack
    pop rx174_pos, rx174_bstack
    pop $I19, rx174_bstack
    lt rx174_pos, -1, rx174_done536
    lt rx174_pos, 0, rx174_fail538
    eq $I19, 0, rx174_fail538
    nqp_islist $I20, rx174_cstack
    unless $I20, rx174_jump539
    elements $I18, rx174_bstack
    le $I18, 0, rx174_cut540
    dec $I18
    set $I18, rx174_bstack[$I18]
  rx174_cut540:
    assign rx174_cstack, $I18
  rx174_jump539:
    jump $I19
  rx174_done536:
    rx174_cur."!cursor_fail"()
    .return (rx174_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_48_1360235112.107") :anon :lex :outer("cuid_47_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    .local pmc rx180_curclass
    .local pmc rx180_bstack
    .local pmc rx180_cstack
    (rx180_cur, rx180_tgt, rx180_pos, rx180_curclass, rx180_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx180_cur
    length rx180_eos, rx180_tgt
    eq $I19, 1, rx180_restart556
    gt rx180_pos, rx180_eos, rx180_fail557
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done563
    goto rxscan181_scan562
  rxscan181_loop561:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail557
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan562:
    nqp_rxmark rx180_bstack, rxscan181_loop561, rx180_pos, 0
  rxscan181_done563:
    nqp_rxmark rx180_bstack, rxquantr182_done565, rx180_pos, 0
  rxquantr182_loop564:
    ge rx180_pos, rx180_eos, rx180_fail557
    is_cclass $I11, .CCLASS_WHITESPACE, rx180_tgt, rx180_pos
    unless $I11, rx180_fail557
    add rx180_pos, 1
    nqp_rxpeek $I19, rx180_bstack, rxquantr182_done565
    inc $I19
    inc $I19
    set rx180_rep, rx180_bstack[$I19]
    nqp_rxcommit rx180_bstack, rxquantr182_done565
    inc rx180_rep
    nqp_rxmark rx180_bstack, rxquantr182_done565, rx180_pos, rx180_rep
    goto rxquantr182_loop564
  rxquantr182_done565:
  alt183_0567:
    nqp_rxmark rx180_bstack, alt183_1568, rx180_pos, 0
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail557
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"]", rx180_fail557
    add rx180_pos, 1
    goto alt183_end566
  alt183_1568:
    ge rx180_pos, rx180_eos, rx180_fail557
    substr $S11, rx180_tgt, rx180_pos, 1
    index $I11, ucs4:",#", $S11
    lt $I11, 0, rx180_fail557
    inc rx180_pos
  alt183_end566:
    rx180_cur."!cursor_pass"(rx180_pos, 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart556:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail557:
    unless rx180_bstack, rx180_done555
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done560
    unless rx180_cstack, rx180_cstack_done560
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done560:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done555
    lt rx180_pos, 0, rx180_fail557
    eq $I19, 0, rx180_fail557
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump558
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut559
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut559:
    assign rx180_cstack, $I18
  rx180_jump558:
    jump $I19
  rx180_done555:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_49_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 128
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx184_tgt
    .local int rx184_pos
    .local int rx184_off
    .local int rx184_eos
    .local int rx184_rep
    .local pmc rx184_cur
    .local pmc rx184_curclass
    .local pmc rx184_bstack
    .local pmc rx184_cstack
    (rx184_cur, rx184_tgt, rx184_pos, rx184_curclass, rx184_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx184_cur
    length rx184_eos, rx184_tgt
    eq $I19, 1, rx184_restart571
    gt rx184_pos, rx184_eos, rx184_fail572
    repr_get_attr_int $I11, self, rx184_curclass, "$!from"
    ne $I11, -1, rxscan185_done578
    goto rxscan185_scan577
  rxscan185_loop576:
    inc rx184_pos
    gt rx184_pos, rx184_eos, rx184_fail572
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!from", rx184_pos
  rxscan185_scan577:
    nqp_rxmark rx184_bstack, rxscan185_loop576, rx184_pos, 0
  rxscan185_done578:
    nqp_rxmark rx184_bstack, rxquantr186_done580, -1, 0
  rxquantr186_loop579:
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."ws"()
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail572
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."charname"()
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail572
    nqp_rxmark rx184_bstack, rxsubrule188_pass582, -1, 0
  rxsubrule188_pass582:
    rx184_cstack = rx184_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."ws"()
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail572
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    nqp_rxpeek $I19, rx184_bstack, rxquantr186_done580
    inc $I19
    inc $I19
    set rx184_rep, rx184_bstack[$I19]
    nqp_rxcommit rx184_bstack, rxquantr186_done580
    inc rx184_rep
    nqp_rxmark rx184_bstack, rxquantr186_done580, rx184_pos, rx184_rep
    add $I11, rx184_pos, 1
    gt $I11, rx184_eos, rx184_fail572
    substr $S10, rx184_tgt, rx184_pos, 1
    ne $S10, ucs4:",", rx184_fail572
    add rx184_pos, 1
    goto rxquantr186_loop579
  rxquantr186_done580:
    rx184_cur."!cursor_pass"(rx184_pos, "charnames", 'backtrack'=>1)
    .return (rx184_cur)
  rx184_restart571:
    repr_get_attr_obj rx184_cstack, rx184_cur, rx184_curclass, "$!cstack"
  rx184_fail572:
    unless rx184_bstack, rx184_done570
    pop $I19, rx184_bstack
    if_null rx184_cstack, rx184_cstack_done575
    unless rx184_cstack, rx184_cstack_done575
    dec $I19
    set $P11, rx184_cstack[$I19]
  rx184_cstack_done575:
    pop rx184_rep, rx184_bstack
    pop rx184_pos, rx184_bstack
    pop $I19, rx184_bstack
    lt rx184_pos, -1, rx184_done570
    lt rx184_pos, 0, rx184_fail572
    eq $I19, 0, rx184_fail572
    nqp_islist $I20, rx184_cstack
    unless $I20, rx184_jump573
    elements $I18, rx184_bstack
    le $I18, 0, rx184_cut574
    dec $I18
    set $I18, rx184_bstack[$I18]
  rx184_cut574:
    assign rx184_cstack, $I18
  rx184_jump573:
    jump $I19
  rx184_done570:
    rx184_cur."!cursor_fail"()
    .return (rx184_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_50_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 129
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx190_tgt
    .local int rx190_pos
    .local int rx190_off
    .local int rx190_eos
    .local int rx190_rep
    .local pmc rx190_cur
    .local pmc rx190_curclass
    .local pmc rx190_bstack
    .local pmc rx190_cstack
    (rx190_cur, rx190_tgt, rx190_pos, rx190_curclass, rx190_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx190_cur
    length rx190_eos, rx190_tgt
    eq $I19, 1, rx190_restart586
    gt rx190_pos, rx190_eos, rx190_fail587
    repr_get_attr_int $I11, self, rx190_curclass, "$!from"
    ne $I11, -1, rxscan191_done593
    goto rxscan191_scan592
  rxscan191_loop591:
    inc rx190_pos
    gt rx190_pos, rx190_eos, rx190_fail587
    repr_bind_attr_int rx190_cur, rx190_curclass, "$!from", rx190_pos
  rxscan191_scan592:
    nqp_rxmark rx190_bstack, rxscan191_loop591, rx190_pos, 0
  rxscan191_done593:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt192_0595
    nqp_push_label $P11, alt192_1597
    nqp_push_label $P11, alt192_2604
    nqp_push_label $P11, alt192_3605
    nqp_rxmark rx190_bstack, alt192_end594, -1, 0
    rx190_cur."!alt"(rx190_pos, "alt_nfa__9_1360235112.513", $P11)
    goto rx190_fail587
  alt192_0595:
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail587
    substr $S10, rx190_tgt, rx190_pos, 1
    ne $S10, ucs4:"[", rx190_fail587
    add rx190_pos, 1
    repr_bind_attr_int rx190_cur, rx190_curclass, "$!pos", rx190_pos
    $P11 = rx190_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx190_curclass, "$!pos"
    lt $I11, 0, rx190_fail587
    nqp_rxmark rx190_bstack, rxsubrule193_pass596, -1, 0
  rxsubrule193_pass596:
    rx190_cstack = rx190_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx190_pos, $P11, rx190_curclass, "$!pos"
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail587
    substr $S10, rx190_tgt, rx190_pos, 1
    ne $S10, ucs4:"]", rx190_fail587
    add rx190_pos, 1
    goto alt192_end594
  alt192_1597:
    nqp_rxmark rx190_bstack, rxquantr194_done599, -1, 0
  rxquantr194_loop598:
    ge rx190_pos, rx190_eos, rx190_fail587
    is_cclass $I11, .CCLASS_NUMERIC, rx190_tgt, rx190_pos
    unless $I11, rx190_fail587
    add rx190_pos, 1
    nqp_rxpeek $I19, rx190_bstack, rxquantr194_done599
    inc $I19
    inc $I19
    set rx190_rep, rx190_bstack[$I19]
    nqp_rxcommit rx190_bstack, rxquantr194_done599
    inc rx190_rep
    nqp_rxmark rx190_bstack, rxquantr194_done599, rx190_pos, rx190_rep
    goto rxquantr194_loop598
  rxquantr194_done599:
    nqp_rxmark rx190_bstack, rxquantr195_done601, rx190_pos, 0
  rxquantr195_loop600:
    add $I11, rx190_pos, 1
    gt $I11, rx190_eos, rx190_fail587
    substr $S10, rx190_tgt, rx190_pos, 1
    ne $S10, ucs4:"_", rx190_fail587
    add rx190_pos, 1
    nqp_rxmark rx190_bstack, rxquantr196_done603, -1, 0
  rxquantr196_loop602:
    ge rx190_pos, rx190_eos, rx190_fail587
    is_cclass $I11, .CCLASS_NUMERIC, rx190_tgt, rx190_pos
    unless $I11, rx190_fail587
    add rx190_pos, 1
    nqp_rxpeek $I19, rx190_bstack, rxquantr196_done603
    inc $I19
    inc $I19
    set rx190_rep, rx190_bstack[$I19]
    nqp_rxcommit rx190_bstack, rxquantr196_done603
    inc rx190_rep
    nqp_rxmark rx190_bstack, rxquantr196_done603, rx190_pos, rx190_rep
    goto rxquantr196_loop602
  rxquantr196_done603:
    nqp_rxpeek $I19, rx190_bstack, rxquantr195_done601
    inc $I19
    inc $I19
    set rx190_rep, rx190_bstack[$I19]
    nqp_rxcommit rx190_bstack, rxquantr195_done601
    inc rx190_rep
    nqp_rxmark rx190_bstack, rxquantr195_done601, rx190_pos, rx190_rep
    goto rxquantr195_loop600
  rxquantr195_done601:
    goto alt192_end594
  alt192_2604:
    ge rx190_pos, rx190_eos, rx190_fail587
    substr $S11, rx190_tgt, rx190_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx190_fail587
    inc rx190_pos
    goto alt192_end594
  alt192_3605:
    repr_bind_attr_int rx190_cur, rx190_curclass, "$!pos", rx190_pos
    $P11 = rx190_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx190_curclass, "$!pos"
    lt $I11, 0, rx190_fail587
    repr_get_attr_int rx190_pos, $P11, rx190_curclass, "$!pos"
    goto alt192_end594
  alt192_end594:
    nqp_rxcommit rx190_bstack, alt192_end594
    rx190_cur."!cursor_pass"(rx190_pos, "charspec", 'backtrack'=>1)
    .return (rx190_cur)
  rx190_restart586:
    repr_get_attr_obj rx190_cstack, rx190_cur, rx190_curclass, "$!cstack"
  rx190_fail587:
    unless rx190_bstack, rx190_done585
    pop $I19, rx190_bstack
    if_null rx190_cstack, rx190_cstack_done590
    unless rx190_cstack, rx190_cstack_done590
    dec $I19
    set $P11, rx190_cstack[$I19]
  rx190_cstack_done590:
    pop rx190_rep, rx190_bstack
    pop rx190_pos, rx190_bstack
    pop $I19, rx190_bstack
    lt rx190_pos, -1, rx190_done585
    lt rx190_pos, 0, rx190_fail587
    eq $I19, 0, rx190_fail587
    nqp_islist $I20, rx190_cstack
    unless $I20, rx190_jump588
    elements $I18, rx190_bstack
    le $I18, 0, rx190_cut589
    dec $I18
    set $I18, rx190_bstack[$I18]
  rx190_cut589:
    assign rx190_cstack, $I18
  rx190_jump588:
    jump $I19
  rx190_done585:
    rx190_cur."!cursor_fail"()
    .return (rx190_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_51_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 180
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    if haz_param_1, default607
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_2, $P5001
  default607:
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 

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
            ($P0, $S0, $I0) = self.'!cursor_start'()
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
.sub "panic" :subid("cuid_52_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 325
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
.annotate 'line', 326
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."pos"()
    set $P101, $P5004
.annotate 'line', 327
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."target"()
    set $P102, $P5006
.annotate 'line', 328
    _lex_param_1."push"(" at line ")
.annotate 'line', 329
    nqp_get_sc_object $P5010, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5009, $P5010, "HLL"
    get_who $P5008, $P5009
    set $P5007, $P5008["Compiler"]
    unless_null $P5007, fallback608
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5007, $P5011
  fallback608:
    $P5012 = $P5007."lineof"($P102, $P101)
    set $N5002, $P5012
    set $N5003, 1
    add $N5001, $N5002, $N5003
    _lex_param_1."push"($N5001)
.annotate 'line', 330
    _lex_param_1."push"(", near \"")
.annotate 'line', 331
    set $S5003, $P102
    set $I5001, $P101
    substr $S5002, $S5003, $I5001, 10
    escape $S5001, $S5002
    _lex_param_1."push"($S5001)
.annotate 'line', 332
    _lex_param_1."push"("\"")
    join $S5004, "", _lex_param_1
    box $P5013, $S5004
    die $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_53_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 336
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    if haz_param_2, default611
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_2, $P5005
  default611:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless198_end610 
.annotate 'line', 337
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless198_end610:
.annotate 'line', 340
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
.sub "peek_delimiters" :subid("cuid_54_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 353
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_177_1360235112.107' 
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
    unless $I5001 goto if199_end613 
.annotate 'line', 358
.annotate 'line', 359
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if199_end613:
    is_cclass $I5002, .CCLASS_WORD, $S101, 0
    unless $I5002 goto if200_end615 
.annotate 'line', 361
.annotate 'line', 362
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if200_end615:
    is_cclass $I5003, .CCLASS_WHITESPACE, $S101, 0
    unless $I5003 goto if201_end617 
.annotate 'line', 364
.annotate 'line', 365
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if201_end617:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if202_end619 
    .const 'Sub' $P5008 = 'cuid_177_1360235112.107' 
    capture_lex $P5008
    $P5009 = $P5008()
  if202_end619:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1360235112.107") :anon :lex :outer("cuid_54_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 371
    .lex "$len", $I101 
    .local pmc tmp_1 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if203_end621 
.annotate 'line', 373
.annotate 'line', 374
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if203_end621:
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
  while204_test622:
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
    unless $I5004 goto while204_done626 
  while204_redo624:
.annotate 'line', 382
    box $P5005, $I101
    set tmp_1, $P5005
    set $N5011, tmp_1
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5007, $N5010
    set $I101, $I5007
    set $P5005, tmp_1
    goto while204_test622 
  while204_done626:
    set $N5010, $I101
    set $N5011, 1
    isgt $I5007, $N5010, $N5011
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if205_end628 
.annotate 'line', 385
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if205_end628:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_55_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 394
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5024 = 'cuid_179_1360235112.107' 
    capture_lex $P5024 
    .lex "%*QUOTEMOD", $P101 
    .lex "$*QUOTE_START", $P102 
    .lex "$*QUOTE_STOP", $P103 
    .lex utf8:"$\x{a2}", $P104 
    .lex "$/", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc self 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    set self, _lex_param_0
    .local string rx206_tgt
    .local int rx206_pos
    .local int rx206_off
    .local int rx206_eos
    .local int rx206_rep
    .local pmc rx206_cur
    .local pmc rx206_curclass
    .local pmc rx206_bstack
    .local pmc rx206_cstack
    (rx206_cur, rx206_tgt, rx206_pos, rx206_curclass, rx206_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx206_cur
    length rx206_eos, rx206_tgt
    eq $I19, 1, rx206_restart631
    gt rx206_pos, rx206_eos, rx206_fail632
    repr_get_attr_int $I11, self, rx206_curclass, "$!from"
    ne $I11, -1, rxscan207_done638
    goto rxscan207_scan637
  rxscan207_loop636:
    inc rx206_pos
    gt rx206_pos, rx206_eos, rx206_fail632
    repr_bind_attr_int rx206_cur, rx206_curclass, "$!from", rx206_pos
  rxscan207_scan637:
    nqp_rxmark rx206_bstack, rxscan207_loop636, rx206_pos, 0
  rxscan207_done638:
    repr_bind_attr_int rx206_cur, rx206_curclass, "$!pos", rx206_pos
    store_lex unicode:"$\x{a2}", rx206_cur
    unless_null $P101, fallback639
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["%QUOTEMOD"]
    unless_null $P5004, fallback640
    nqp_get_sc_object $P5008, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%QUOTEMOD"], $P5009
    set $P5004, $P5009
  fallback640:
    unless_null $P5004, vivi_208641
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5004, $P5010
  vivi_208641:
    set $P101, $P5004
  fallback639:
    repr_bind_attr_int rx206_cur, rx206_curclass, "$!pos", rx206_pos
    store_lex unicode:"$\x{a2}", rx206_cur
    unless_null $P102, fallback642
    nqp_get_sc_object $P5013, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5012, $P5013
    set $P5011, $P5012["$QUOTE_START"]
    unless_null $P5011, fallback643
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5014
  fallback643:
    unless_null $P5011, vivi_209644
    die "Contextual $*QUOTE_START not found"
    box $P5015, "Contextual $*QUOTE_START not found"
    set $P5011, $P5015
  vivi_209644:
    set $P102, $P5011
  fallback642:
    repr_bind_attr_int rx206_cur, rx206_curclass, "$!pos", rx206_pos
    store_lex unicode:"$\x{a2}", rx206_cur
    unless_null $P103, fallback645
    nqp_get_sc_object $P5018, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5017, $P5018
    set $P5016, $P5017["$QUOTE_STOP"]
    unless_null $P5016, fallback646
    nqp_get_sc_object $P5019, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5016, $P5019
  fallback646:
    unless_null $P5016, vivi_210647
    die "Contextual $*QUOTE_STOP not found"
    box $P5020, "Contextual $*QUOTE_STOP not found"
    set $P5016, $P5020
  vivi_210647:
    set $P103, $P5016
  fallback645:
    repr_bind_attr_int rx206_cur, rx206_curclass, "$!pos", rx206_pos
    store_lex unicode:"$\x{a2}", rx206_cur
    $P5021 = $P104."MATCH"()
    set $P105, $P5021
    .const 'Sub' $P5022 = 'cuid_179_1360235112.107' 
    capture_lex $P5022
    $P5023 = $P5022()
    repr_bind_attr_int rx206_cur, rx206_curclass, "$!pos", rx206_pos
    $P11 = rx206_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx206_curclass, "$!pos"
    lt $I11, 0, rx206_fail632
    nqp_rxmark rx206_bstack, rxsubrule221_pass681, -1, 0
  rxsubrule221_pass681:
    rx206_cstack = rx206_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx206_pos, $P11, rx206_curclass, "$!pos"
    rx206_cur."!cursor_pass"(rx206_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx206_cur)
  rx206_restart631:
    repr_get_attr_obj rx206_cstack, rx206_cur, rx206_curclass, "$!cstack"
  rx206_fail632:
    unless rx206_bstack, rx206_done630
    pop $I19, rx206_bstack
    if_null rx206_cstack, rx206_cstack_done635
    unless rx206_cstack, rx206_cstack_done635
    dec $I19
    set $P11, rx206_cstack[$I19]
  rx206_cstack_done635:
    pop rx206_rep, rx206_bstack
    pop rx206_pos, rx206_bstack
    pop $I19, rx206_bstack
    lt rx206_pos, -1, rx206_done630
    lt rx206_pos, 0, rx206_fail632
    eq $I19, 0, rx206_fail632
    nqp_islist $I20, rx206_cstack
    unless $I20, rx206_jump633
    elements $I18, rx206_bstack
    le $I18, 0, rx206_cut634
    dec $I18
    set $I18, rx206_bstack[$I18]
  rx206_cut634:
    assign rx206_cstack, $I18
  rx206_jump633:
    jump $I19
  rx206_done630:
    rx206_cur."!cursor_fail"()
    .return (rx206_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1360235112.107") :anon :lex :outer("cuid_55_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 398
    .const 'Sub' $P5021 = 'cuid_178_1360235112.107' 
    capture_lex $P5021 
    .lex "@delims", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next676:
    unless $P5004, for_done678
    shift $P5007, $P5004
  for_redo677:
    .const 'Sub' $P5006 = 'cuid_178_1360235112.107' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next676
  for_done678:
.annotate 'line', 415
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
    set $P5017, $P101[0]
    unless_null $P5017, fallback679
    nqp_get_sc_object $P5018, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5017, $P5018
  fallback679:
    store_dynamic_lex "$*QUOTE_START", $P5017
    set $P5019, $P101[1]
    unless_null $P5019, fallback680
    nqp_get_sc_object $P5020, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5019, $P5020
  fallback680:
    store_dynamic_lex "$*QUOTE_STOP", $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1360235112.107") :anon :lex :outer("cuid_179_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 399
    .param pmc _lex_param_0 
    .lex "$mod", _lex_param_0 
    set $S5002, _lex_param_0
    substr $S5001, $S5002, 1
    box $P5001, $S5001
    set _lex_param_0, $P5001
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback648
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5004, $P5005
    set $P5003, $P5004["%QUOTEMOD"]
    unless_null $P5003, fallback649
    nqp_get_sc_object $P5007, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%QUOTEMOD"], $P5008
    set $P5003, $P5008
  fallback649:
    unless_null $P5003, vivi_211650
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5003, $P5009
  vivi_211650:
    set $P5002, $P5003
  fallback648:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5001, $S5004, "qq"
    unless $I5001 goto if212_else651 
.annotate 'line', 402
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback653
    nqp_get_sc_object $P5014, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5013, $P5014
    set $P5012, $P5013["%QUOTEMOD"]
    unless_null $P5012, fallback654
    nqp_get_sc_object $P5016, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5015, $P5016
    new $P5017, 'Hash'
    set $P5015["%QUOTEMOD"], $P5017
    set $P5012, $P5017
  fallback654:
    unless_null $P5012, vivi_213655
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5012, $P5018
  vivi_213655:
    set $P5011, $P5012
  fallback653:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback656
    nqp_get_sc_object $P5023, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5022, $P5023
    set $P5021, $P5022["%QUOTEMOD"]
    unless_null $P5021, fallback657
    nqp_get_sc_object $P5025, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5024, $P5025
    new $P5026, 'Hash'
    set $P5024["%QUOTEMOD"], $P5026
    set $P5021, $P5026
  fallback657:
    unless_null $P5021, vivi_214658
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5021, $P5027
  vivi_214658:
    set $P5020, $P5021
  fallback656:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback659
    nqp_get_sc_object $P5032, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5031, $P5032
    set $P5030, $P5031["%QUOTEMOD"]
    unless_null $P5030, fallback660
    nqp_get_sc_object $P5034, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%QUOTEMOD"], $P5035
    set $P5030, $P5035
  fallback660:
    unless_null $P5030, vivi_215661
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5030, $P5036
  vivi_215661:
    set $P5029, $P5030
  fallback659:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback662
    nqp_get_sc_object $P5041, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5040, $P5041
    set $P5039, $P5040["%QUOTEMOD"]
    unless_null $P5039, fallback663
    nqp_get_sc_object $P5043, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5042, $P5043
    new $P5044, 'Hash'
    set $P5042["%QUOTEMOD"], $P5044
    set $P5039, $P5044
  fallback663:
    unless_null $P5039, vivi_216664
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5039, $P5045
  vivi_216664:
    set $P5038, $P5039
  fallback662:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback665
    nqp_get_sc_object $P5050, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5049, $P5050
    set $P5048, $P5049["%QUOTEMOD"]
    unless_null $P5048, fallback666
    nqp_get_sc_object $P5052, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%QUOTEMOD"], $P5053
    set $P5048, $P5053
  fallback666:
    unless_null $P5048, vivi_217667
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5048, $P5054
  vivi_217667:
    set $P5047, $P5048
  fallback665:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback668
    nqp_get_sc_object $P5059, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5058, $P5059
    set $P5057, $P5058["%QUOTEMOD"]
    unless_null $P5057, fallback669
    nqp_get_sc_object $P5061, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5060, $P5061
    new $P5062, 'Hash'
    set $P5060["%QUOTEMOD"], $P5062
    set $P5057, $P5062
  fallback669:
    unless_null $P5057, vivi_218670
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5057, $P5063
  vivi_218670:
    set $P5056, $P5057
  fallback668:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if212_end652
  if212_else651:
    set $S5005, _lex_param_0
    iseq $I5002, $S5005, "b"
    box $P5075, $I5002
    set $P5074, $P5075
    unless $I5002 goto if219_end672 
.annotate 'line', 410
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback673
    nqp_get_sc_object $P5068, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5067, $P5068
    set $P5066, $P5067["%QUOTEMOD"]
    unless_null $P5066, fallback674
    nqp_get_sc_object $P5070, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5069, $P5070
    new $P5071, 'Hash'
    set $P5069["%QUOTEMOD"], $P5071
    set $P5066, $P5071
  fallback674:
    unless_null $P5066, vivi_220675
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5066, $P5072
  vivi_220675:
    set $P5065, $P5066
  fallback673:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if219_end672:
    set $P5076, $P5074
  if212_end652:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_56_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 422
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_180_1360235112.107' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local string rx222_tgt
    .local int rx222_pos
    .local int rx222_off
    .local int rx222_eos
    .local int rx222_rep
    .local pmc rx222_cur
    .local pmc rx222_curclass
    .local pmc rx222_bstack
    .local pmc rx222_cstack
    (rx222_cur, rx222_tgt, rx222_pos, rx222_curclass, rx222_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx222_cur
    length rx222_eos, rx222_tgt
    eq $I19, 1, rx222_restart684
    gt rx222_pos, rx222_eos, rx222_fail685
    repr_get_attr_int $I11, self, rx222_curclass, "$!from"
    ne $I11, -1, rxscan223_done691
    goto rxscan223_scan690
  rxscan223_loop689:
    inc rx222_pos
    gt rx222_pos, rx222_eos, rx222_fail685
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!from", rx222_pos
  rxscan223_scan690:
    nqp_rxmark rx222_bstack, rxscan223_loop689, rx222_pos, 0
  rxscan223_done691:
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!pos", rx222_pos
    store_lex unicode:"$\x{a2}", rx222_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_180_1360235112.107' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx222_fail685
    rx222_cur."!cursor_pass"(rx222_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx222_cur)
  rx222_restart684:
    repr_get_attr_obj rx222_cstack, rx222_cur, rx222_curclass, "$!cstack"
  rx222_fail685:
    unless rx222_bstack, rx222_done683
    pop $I19, rx222_bstack
    if_null rx222_cstack, rx222_cstack_done688
    unless rx222_cstack, rx222_cstack_done688
    dec $I19
    set $P11, rx222_cstack[$I19]
  rx222_cstack_done688:
    pop rx222_rep, rx222_bstack
    pop rx222_pos, rx222_bstack
    pop $I19, rx222_bstack
    lt rx222_pos, -1, rx222_done683
    lt rx222_pos, 0, rx222_fail685
    eq $I19, 0, rx222_fail685
    nqp_islist $I20, rx222_cstack
    unless $I20, rx222_jump686
    elements $I18, rx222_bstack
    le $I18, 0, rx222_cut687
    dec $I18
    set $I18, rx222_bstack[$I18]
  rx222_cut687:
    assign rx222_cstack, $I18
  rx222_jump686:
    jump $I19
  rx222_done683:
    rx222_cur."!cursor_fail"()
    .return (rx222_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1360235112.107") :anon :lex :outer("cuid_56_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 423

    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback692
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5004, $P5005
    set $P5003, $P5004["%QUOTEMOD"]
    unless_null $P5003, fallback693
    nqp_get_sc_object $P5007, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%QUOTEMOD"], $P5008
    set $P5003, $P5008
  fallback693:
    unless_null $P5003, vivi_224694
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5003, $P5009
  vivi_224694:
    set $P5002, $P5003
  fallback692:
    find_lex $S5001, "$mod"
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback695
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5010
  fallback695:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_57_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            (cur, target, pos) = self.'!cursor_start'()

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
.sub "stopper" :subid("cuid_58_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 449
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            (cur, target, pos) = self.'!cursor_start'()

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
.sub "split_words" :subid("cuid_59_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 472
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
  while225_test696:
    find_not_cclass $I5003, .CCLASS_WHITESPACE, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while225_done700 
  while225_redo698:
.annotate 'line', 477
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
    goto while225_test696 
  while225_done700:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_60_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 493
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_3, default701
    set $S5001, ""
    set _lex_param_1, $S5001
  default701:
    if haz_param_4, default702
    set $I5001, 0
    set _lex_param_2, $I5001
  default702:
    .lex "self", _lex_param_0 
    .lex "$preclim", _lex_param_1 
    .lex "$noinfix", _lex_param_2 

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
            (here, tgt, pos) = self.'!cursor_start'()

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
            here = self.'!cursor_start'()
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
.sub "EXPR_reduce" :subid("cuid_61_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 699
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
.sub "EXPR_nonassoc" :subid("cuid_62_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 785
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    .lex "$op1", _lex_param_2 
    .lex "$op2", _lex_param_3 
.annotate 'line', 786
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
.sub "ternary" :subid("cuid_63_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 789
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    set $P5001, _lex_param_1[1]
    unless_null $P5001, fallback703
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5002
  fallback703:
    set _lex_param_1[2], $P5001
    set $P5004, _lex_param_1["infix"]
    unless_null $P5004, fallback704
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5005
  fallback704:
    set $P5003, $P5004["EXPR"]
    unless_null $P5003, fallback705
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5006
  fallback705:
    set _lex_param_1[1], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_64_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 794
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
.annotate 'line', 802
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!cursor_start"()
    set $P102, $P5005
.annotate 'line', 803
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."pos"()
    $P102."!cursor_pass"($P5007)
    set $P101[_lex_param_1], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_65_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 807
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
    set $P5004, $P101[_lex_param_1]
    unless_null $P5004, fallback706
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5005
  fallback706:
    set $P102, $P5004
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["NQPCursor"]
    unless_null $P5006, fallback711
    nqp_get_sc_object $P5011, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5010, $P5011
    set $P5009, $P5010["NQPCursor"]
    unless_null $P5009, vivi_228712
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5012
  vivi_228712:
    set $P5006, $P5009
  fallback711:
    type_check $I5001, $P102, $P5006
    set $I5003, $I5001
    unless $I5001 goto if227_end710 
.annotate 'line', 816
    $P5013 = $P102."pos"()
    set $N5001, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."pos"()
    set $N5002, $P5015
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if227_end710:
    if $I5003 goto unless226_end708 
.annotate 'line', 817
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."!cursor_start"()
    set $P102, $P5017
  unless226_end708:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_66_1360235112.107") :anon :lex :outer("cuid_174_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 822
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
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
.annotate 'line', 823
    find_dynamic_lex $P5004, "%*LANG"
    unless_null $P5004, fallback713
    nqp_get_sc_object $P5007, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%LANG"]
    unless_null $P5005, fallback714
    nqp_get_sc_object $P5009, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%LANG"], $P5010
    set $P5005, $P5010
  fallback714:
    unless_null $P5005, vivi_229715
    die "Contextual %*LANG not found"
    box $P5011, "Contextual %*LANG not found"
    set $P5005, $P5011
  vivi_229715:
    set $P5004, $P5005
  fallback713:
    set $S5001, _lex_param_1
    set $P5003, $P5004[$S5001]
    unless_null $P5003, fallback716
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5012
  fallback716:
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."orig"()
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."pos"()
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."!shared"()
    $P5019 = $P5003."!cursor_init"($P5014, $P5016 :named("p"), $P5018 :named("shared"))
    set $P101, $P5019
.annotate 'line', 824
    nqp_decontainerize $P5021, _lex_param_0
    get_how $P5020, $P5021
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5020."traced"($P5022)
    unless $P5023 goto if230_end718 
.annotate 'line', 825
    get_how $P5024, $P101
    nqp_decontainerize $P5026, _lex_param_0
    get_how $P5025, $P5026
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5025."trace_depth"($P5027)
    $P5029 = $P5024."trace-on"($P101, $P5028)
  if230_end718:
    find_dynamic_lex $P5031, "%*LANG"
    unless_null $P5031, fallback719
    nqp_get_sc_object $P5034, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5033, $P5034
    set $P5032, $P5033["%LANG"]
    unless_null $P5032, fallback720
    nqp_get_sc_object $P5036, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5035, $P5036
    new $P5037, 'Hash'
    set $P5035["%LANG"], $P5037
    set $P5032, $P5037
  fallback720:
    unless_null $P5032, vivi_231721
    die "Contextual %*LANG not found"
    box $P5038, "Contextual %*LANG not found"
    set $P5032, $P5038
  vivi_231721:
    set $P5031, $P5032
  fallback719:
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5030, $P5031[$S5002]
    unless_null $P5030, fallback722
    nqp_get_sc_object $P5039, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5030, $P5039
  fallback722:
    set $P102, $P5030
.annotate 'line', 828
    set $S5004, _lex_param_2
    $P5040 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1360235112.107") :anon :lex :outer("cuid_181_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 833
    .const 'Sub' $P5037 = 'cuid_182_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_97_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_98_1360235112.107' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_99_1360235112.107' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_182_1360235112.107' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_67_1360235112.107' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_68_1360235112.107' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_69_1360235112.107' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_70_1360235112.107' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_71_1360235112.107' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_72_1360235112.107' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_73_1360235112.107' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_74_1360235112.107' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_75_1360235112.107' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_76_1360235112.107' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_77_1360235112.107' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_78_1360235112.107' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_79_1360235112.107' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_80_1360235112.107' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_81_1360235112.107' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_82_1360235112.107' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_83_1360235112.107' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_84_1360235112.107' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_85_1360235112.107' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_86_1360235112.107' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_87_1360235112.107' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_88_1360235112.107' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_89_1360235112.107' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_90_1360235112.107' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_91_1360235112.107' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_92_1360235112.107' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_93_1360235112.107' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_94_1360235112.107' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_95_1360235112.107' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_96_1360235112.107' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_97_1360235112.107' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_98_1360235112.107' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_99_1360235112.107' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_182_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 834
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
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
    if $I5002 goto unless232_end724 
.annotate 'line', 836
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless232_end724:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_67_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 841
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_185_1360235112.107' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if233_else725 
    .const 'Sub' $P5001 = 'cuid_185_1360235112.107' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if233_end726
  if233_else725:
.annotate 'line', 848
.annotate 'line', 849
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if233_end726:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1360235112.107") :anon :lex :outer("cuid_67_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 842
    .const 'Sub' $P5009 = 'cuid_184_1360235112.107' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next727:
    unless $P5005, for_done729
    shift $P5008, $P5005
  for_redo728:
    .const 'Sub' $P5007 = 'cuid_184_1360235112.107' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next727
  for_done729:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1360235112.107") :anon :lex :outer("cuid_185_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5002, $P5001
.annotate 'line', 845
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
.sub "CTXSAVE" :subid("cuid_68_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 853
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 854
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Stmts"]
    unless_null $P5001, fallback730
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5005
  fallback730:
.annotate 'line', 855
    nqp_get_sc_object $P5009, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Op"]
    unless_null $P5006, fallback731
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5006, $P5010
  fallback731:
.annotate 'line', 857
    nqp_get_sc_object $P5014, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Var"]
    unless_null $P5011, fallback732
    nqp_get_sc_object $P5015, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5015
  fallback732:
    $P5016 = $P5011."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 858
    nqp_get_sc_object $P5020, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Var"]
    unless_null $P5017, fallback733
    nqp_get_sc_object $P5021, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5017, $P5021
  fallback733:
    $P5022 = $P5017."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5023 = $P5006."new"($P5016, $P5022, "bind" :named("op"))
.annotate 'line', 860
    nqp_get_sc_object $P5027, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["Op"]
    unless_null $P5024, fallback734
    nqp_get_sc_object $P5028, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5024, $P5028
  fallback734:
.annotate 'line', 862
    nqp_get_sc_object $P5032, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["Op"]
    unless_null $P5029, fallback735
    nqp_get_sc_object $P5033, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5029, $P5033
  fallback735:
.annotate 'line', 864
    nqp_get_sc_object $P5037, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["Var"]
    unless_null $P5034, fallback736
    nqp_get_sc_object $P5038, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5034, $P5038
  fallback736:
    $P5039 = $P5034."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5040 = $P5029."new"($P5039, "isnull" :named("op"))
.annotate 'line', 866
    nqp_get_sc_object $P5044, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5043, $P5044, "QAST"
    get_who $P5042, $P5043
    set $P5041, $P5042["Op"]
    unless_null $P5041, fallback737
    nqp_get_sc_object $P5045, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5041, $P5045
  fallback737:
.annotate 'line', 868
    nqp_get_sc_object $P5049, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5048, $P5049, "QAST"
    get_who $P5047, $P5048
    set $P5046, $P5047["Op"]
    unless_null $P5046, fallback738
    nqp_get_sc_object $P5050, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5046, $P5050
  fallback738:
.annotate 'line', 870
    nqp_get_sc_object $P5054, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5053, $P5054, "QAST"
    get_who $P5052, $P5053
    set $P5051, $P5052["Var"]
    unless_null $P5051, fallback739
    nqp_get_sc_object $P5055, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5051, $P5055
  fallback739:
    $P5056 = $P5051."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 871
    nqp_get_sc_object $P5060, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5059, $P5060, "QAST"
    get_who $P5058, $P5059
    set $P5057, $P5058["SVal"]
    unless_null $P5057, fallback740
    nqp_get_sc_object $P5061, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5057, $P5061
  fallback740:
    $P5062 = $P5057."new"("ctxsave" :named("value"))
    $P5063 = $P5046."new"($P5056, $P5062, "can" :named("op"))
.annotate 'line', 873
    nqp_get_sc_object $P5067, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5066, $P5067, "QAST"
    get_who $P5065, $P5066
    set $P5064, $P5065["Op"]
    unless_null $P5064, fallback741
    nqp_get_sc_object $P5068, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5064, $P5068
  fallback741:
.annotate 'line', 875
    nqp_get_sc_object $P5072, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5071, $P5072, "QAST"
    get_who $P5070, $P5071
    set $P5069, $P5070["Var"]
    unless_null $P5069, fallback742
    nqp_get_sc_object $P5073, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5069, $P5073
  fallback742:
    $P5074 = $P5069."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5075 = $P5064."new"($P5074, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5076 = $P5041."new"($P5063, $P5075, "if" :named("op"))
    $P5077 = $P5024."new"($P5040, $P5076, "unless" :named("op"))
    $P5078 = $P5001."new"($P5023, $P5077)
    .return ($P5078) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_69_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 879
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5020 = 'cuid_188_1360235112.107' 
    capture_lex $P5020 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_dynamic_lex $P5004, "%*COMPILING"
    unless_null $P5004, fallback743
    nqp_get_sc_object $P5007, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%COMPILING"]
    unless_null $P5005, fallback744
    nqp_get_sc_object $P5009, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%COMPILING"], $P5010
    set $P5005, $P5010
  fallback744:
    unless_null $P5005, vivi_234745
    die "Contextual %*COMPILING not found"
    box $P5011, "Contextual %*COMPILING not found"
    set $P5005, $P5011
  vivi_234745:
    set $P5004, $P5005
  fallback743:
    set $P5003, $P5004["%?OPTIONS"]
    unless_null $P5003, fallback746
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5012
  fallback746:
    set $P5002, $P5003["outer_ctx"]
    unless_null $P5002, fallback747
    nqp_get_sc_object $P5013, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5013
  fallback747:
    set $P101, $P5002
    defined $I5001, $P101
    box $P5019, $I5001
    set $P5018, $P5019
    unless $I5001 goto if235_end749 
.annotate 'line', 881
  until236_test750:
    isnull $I5002, $P101
    box $P5017, $I5002
    set $P5016, $P5017
    if $I5002 goto until236_done754 
  until236_redo752:
    .const 'Sub' $P5014 = 'cuid_188_1360235112.107' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
    goto until236_test750 
  until236_done754:
    set $P5018, $P5016
  if235_end749:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1360235112.107") :anon :lex :outer("cuid_69_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 882
    .const 'Sub' $P5011 = 'cuid_187_1360235112.107' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless237_end756 
.annotate 'line', 884
    set $P5004, $P101
    iter $P5006, $P101
  for_next767:
    unless $P5006, for_done769
    shift $P5008, $P5006
  for_redo768:
    .const 'Sub' $P5007 = 'cuid_187_1360235112.107' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next767
  for_done769:
  unless237_end756:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1360235112.107") :anon :lex :outer("cuid_188_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 885
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_186_1360235112.107' 
    capture_lex $P5006 
    .lex "$key", $S101 
    .lex "$_", _lex_param_0 
    set $S101, ""
    set $S5001, _lex_param_0
    set $S101, $S5001
.annotate 'line', 887
    find_lex $P5001, "$block"
    $P5002 = $P5001."symbol"($S101)
    set $P5005, $P5002
    if $P5002 goto unless238_end758 
    .const 'Sub' $P5003 = 'cuid_186_1360235112.107' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless238_end758:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1360235112.107") :anon :lex :outer("cuid_187_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 887
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if239_else759 
.annotate 'line', 889
.annotate 'line', 890
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if239_end760
  if239_else759:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if240_else761 
.annotate 'line', 892
.annotate 'line', 893
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if240_end762
  if240_else761:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if241_else763 
.annotate 'line', 895
.annotate 'line', 896
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if241_end764
  if241_else763:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if242_end766 
.annotate 'line', 898
.annotate 'line', 899
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if242_end766:
    set $P5022, $P5020
  if241_end764:
    set $P5023, $P5022
  if240_end762:
    set $P5024, $P5023
  if239_end760:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_70_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 909
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5024 = 'cuid_189_1360235112.107' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_190_1360235112.107' 
    capture_lex $P5024 
    if haz_param_5, default805
    nqp_get_sc_object $P5023, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_2, $P5023
  default805:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_770
    .lex "RETURN", $P102
    if _lex_param_2 goto unless243_end773 
.annotate 'line', 910
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless243_end773:
.annotate 'line', 911
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor774
    unless_null _lex_param_1, fallback775
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5007
  fallback775:
    set $P5006, _lex_param_1["OPER"]
    unless_null $P5006, fallback776
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5006, $P5008
  fallback776:
    $P5009 = $P5006."ast"()
    set $P5004, $P5009
  defor774:
    set $P101, $P5004
    if $P101 goto unless244_end778 
    .const 'Sub' $P5010 = 'cuid_189_1360235112.107' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless244_end778:
    set $S5001, _lex_param_2
    iseq $I5002, $S5001, "POSTFIX"
    unless $I5002 goto if248_else797 
.annotate 'line', 924
.annotate 'line', 925
    set $P5012, _lex_param_1[0]
    unless_null $P5012, fallback799
    nqp_get_sc_object $P5013, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5012, $P5013
  fallback799:
    $P5014 = $P5012."ast"()
    $P5015 = $P101."unshift"($P5014)
    goto if248_end798
  if248_else797:
.annotate 'line', 927
.annotate 'line', 928
    $P5019 = _lex_param_1."list"()
    set $P5016, $P5019
    iter $P5018, $P5019
  for_next802:
    unless $P5018, for_done804
    shift $P5021, $P5018
  for_redo803:
    .const 'Sub' $P5020 = 'cuid_190_1360235112.107' 
    capture_lex $P5020
    $P5016 = $P5020($P5021)
    goto for_next802
  for_done804:
  if248_end798:
.annotate 'line', 930
    $P5022 = _lex_param_1."!make"($P101)
    goto lexotic_771
  lexotic_770:
    .get_results ($P5022)
  lexotic_771:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1360235112.107") :anon :lex :outer("cuid_70_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 912
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
.annotate 'line', 913
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback779
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5006
  fallback779:
    find_lex $P5007, "$/"
    $P5008 = $P5002."new"($P5007 :named("node"))
    store_lex "$past", $P5008
    find_lex $P5012, "$/"
    unless_null $P5012, fallback782
    nqp_get_sc_object $P5013, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5012, $P5013
  fallback782:
    set $P5011, $P5012["OPER"]
    unless_null $P5011, fallback783
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5014
  fallback783:
    set $P5010, $P5011["O"]
    unless_null $P5010, fallback784
    nqp_get_sc_object $P5015, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5010, $P5015
  fallback784:
    set $P5009, $P5010["op"]
    unless_null $P5009, fallback785
    nqp_get_sc_object $P5016, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5016
  fallback785:
    unless $P5009 goto if245_end781 
.annotate 'line', 914
.annotate 'line', 915
    find_lex $P5017, "$past"
    find_lex $P5021, "$/"
    unless_null $P5021, fallback786
    nqp_get_sc_object $P5022, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5021, $P5022
  fallback786:
    set $P5020, $P5021["OPER"]
    unless_null $P5020, fallback787
    nqp_get_sc_object $P5023, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5020, $P5023
  fallback787:
    set $P5019, $P5020["O"]
    unless_null $P5019, fallback788
    nqp_get_sc_object $P5024, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5019, $P5024
  fallback788:
    set $P5018, $P5019["op"]
    unless_null $P5018, fallback789
    nqp_get_sc_object $P5025, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5018, $P5025
  fallback789:
    set $S5001, $P5018
    $P5026 = $P5017."op"($S5001)
  if245_end781:
    find_lex $P5027, "$key"
    set $S5002, $P5027
    iseq $I5001, $S5002, "LIST"
    unless $I5001 goto if246_end791 
.annotate 'line', 917
    box $P5028, "infix"
    store_lex "$key", $P5028
  if246_end791:
    find_lex $P5029, "$key"
    set $S5007, $P5029
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5032, "$/"
    unless_null $P5032, fallback792
    nqp_get_sc_object $P5033, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5032, $P5033
  fallback792:
    set $P5031, $P5032["OPER"]
    unless_null $P5031, fallback793
    nqp_get_sc_object $P5034, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5031, $P5034
  fallback793:
    set $P5030, $P5031["sym"]
    unless_null $P5030, fallback794
    nqp_get_sc_object $P5035, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5030, $P5035
  fallback794:
    set $S5008, $P5030
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5036, $S5003
    set $P101, $P5036
.annotate 'line', 919
    find_lex $P5037, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5037."name"($S5009)
.annotate 'line', 920
    find_lex $P5038, "$past"
    $P5039 = $P5038."op"()
    set $P5042, $P5039
    if $P5039 goto unless247_end796 
.annotate 'line', 921
    find_lex $P5040, "$past"
    $P5041 = $P5040."op"("call")
    set $P5042, $P5041
  unless247_end796:
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1360235112.107") :anon :lex :outer("cuid_70_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 928
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if249_end801 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if249_end801:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_71_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 933
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback806
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback806:
    set $P5001, _lex_param_1["circumfix"]
    unless_null $P5001, fallback807
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback807:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_72_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 935
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback808
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback808:
    set $P5001, _lex_param_1["term"]
    unless_null $P5001, fallback809
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback809:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_73_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 936
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
.sub "nullterm_alt" :subid("cuid_74_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 937
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback810
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback810:
    set $P5001, _lex_param_1["term"]
    unless_null $P5001, fallback811
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback811:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_75_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 939
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback812
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback812:
    set $P5001, _lex_param_1["VALUE"]
    unless_null $P5001, fallback813
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback813:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_76_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 941
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
.sub "decint" :subid("cuid_77_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 943
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
.sub "hexint" :subid("cuid_78_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 944
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
.sub "octint" :subid("cuid_79_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 945
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
.sub "binint" :subid("cuid_80_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 946
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
.sub "quote_EXPR" :subid("cuid_81_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 948
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_192_1360235112.107' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
.annotate 'line', 949
    unless_null _lex_param_1, fallback814
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5003
  fallback814:
    set $P5002, _lex_param_1["quote_delimited"]
    unless_null $P5002, fallback815
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5004
  fallback815:
    $P5005 = $P5002."ast"()
    set $P101, $P5005
    find_dynamic_lex $P5007, "%*QUOTEMOD"
    unless_null $P5007, fallback818
    nqp_get_sc_object $P5010, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5009, $P5010
    set $P5008, $P5009["%QUOTEMOD"]
    unless_null $P5008, fallback819
    nqp_get_sc_object $P5012, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5011, $P5012
    new $P5013, 'Hash'
    set $P5011["%QUOTEMOD"], $P5013
    set $P5008, $P5013
  fallback819:
    unless_null $P5008, vivi_251820
    die "Contextual %*QUOTEMOD not found"
    box $P5014, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5014
  vivi_251820:
    set $P5007, $P5008
  fallback818:
    set $P5006, $P5007["w"]
    unless_null $P5006, fallback821
    nqp_get_sc_object $P5015, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5006, $P5015
  fallback821:
    unless $P5006 goto if250_end817 
.annotate 'line', 950
    nqp_get_sc_object $P5019, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5018, $P5019, "QAST"
    get_who $P5017, $P5018
    set $P5016, $P5017["SVal"]
    unless_null $P5016, fallback824
    nqp_get_sc_object $P5020, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5016, $P5020
  fallback824:
    type_check $I5001, $P101, $P5016
    unless $I5001 goto if252_else822 
    .const 'Sub' $P5021 = 'cuid_192_1360235112.107' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if252_end823
  if252_else822:
.annotate 'line', 961
.annotate 'line', 962
    $P5023 = _lex_param_1."CURSOR"()
    $P5024 = $P5023."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5025, $P5024
  if252_end823:
  if250_end817:
.annotate 'line', 965
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1360235112.107") :anon :lex :outer("cuid_81_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 951
    .const 'Sub' $P5033 = 'cuid_191_1360235112.107' 
    capture_lex $P5033 
    .lex "@words", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 952
    find_lex $P5008, "$/"
    find_lex $P5009, "$past"
    $P5010 = $P5009."value"()
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5005, $P5006, "HLL"
    nqp_get_package_through_who $P5004, $P5005, "Grammar"
    get_who $P5003, $P5004
    set $P5002, $P5003["split_words"]
    unless_null $P5002, fallback825
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5007
  fallback825:
    $P5011 = $P5002($P5008, $P5010)
    set $P101, $P5011
    set $N5001, $P101
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    unless $I5001 goto if253_else826 
.annotate 'line', 953
.annotate 'line', 954
    nqp_get_sc_object $P5015, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Op"]
    unless_null $P5012, fallback828
    nqp_get_sc_object $P5016, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5012, $P5016
  fallback828:
    find_lex $P5017, "$/"
    $P5018 = $P5012."new"("list" :named("op"), $P5017 :named("node"))
    store_lex "$past", $P5018
    set $P5019, $P101
    iter $P5021, $P101
  for_next830:
    unless $P5021, for_done832
    shift $P5023, $P5021
  for_redo831:
    .const 'Sub' $P5022 = 'cuid_191_1360235112.107' 
    capture_lex $P5022
    $P5019 = $P5022($P5023)
    goto for_next830
  for_done832:
    set $P5032, $P5019
    goto if253_end827
  if253_else826:
.annotate 'line', 957
.annotate 'line', 958
    nqp_get_sc_object $P5027, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["SVal"]
    unless_null $P5024, fallback833
    nqp_get_sc_object $P5028, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5024, $P5028
  fallback833:
    set $P5029, $P101[0]
    unless_null $P5029, fallback834
    nqp_get_sc_object $P5030, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5029, $P5030
  fallback834:
    set $S5001, $P5029
    $P5031 = $P5024."new"($S5001 :named("value"))
    store_lex "$past", $P5031
    set $P5032, $P5031
  if253_end827:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1360235112.107") :anon :lex :outer("cuid_192_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 955
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["SVal"]
    unless_null $P5002, fallback829
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5006
  fallback829:
    $P5007 = $P5002."new"(_lex_param_0 :named("value"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_82_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 968
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5037 = 'cuid_193_1360235112.107' 
    capture_lex $P5037 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback835
    nqp_get_sc_object $P5009, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5009
  fallback835:
    set $P5008, _lex_param_1["quote_atom"]
    unless_null $P5008, fallback836
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5010
  fallback836:
    set $P5005, $P5008
    iter $P5007, $P5008
  for_next850:
    unless $P5007, for_done852
    shift $P5012, $P5007
  for_redo851:
    .const 'Sub' $P5011 = 'cuid_193_1360235112.107' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next850
  for_done852:
    set $S5001, $P102
    isgt $I5001, $S5001, ""
    unless $I5001 goto if258_end854 
.annotate 'line', 989
    nqp_get_sc_object $P5016, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["SVal"]
    unless_null $P5013, fallback855
    nqp_get_sc_object $P5017, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5013, $P5017
  fallback855:
    $P5018 = $P5013."new"($P102 :named("value"))
    $P5019 = $P101."push"($P5018)
  if258_end854:
    unless $P101 goto if259_else856 
.annotate 'line', 990
    $P5020 = $P101."shift"()
    set $P5027, $P5020
    goto if259_end857
  if259_else856:
    nqp_get_sc_object $P5024, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5023, $P5024, "QAST"
    get_who $P5022, $P5023
    set $P5021, $P5022["SVal"]
    unless_null $P5021, fallback858
    nqp_get_sc_object $P5025, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5021, $P5025
  fallback858:
    $P5026 = $P5021."new"("" :named("value"))
    set $P5027, $P5026
  if259_end857:
    set $P103, $P5027
  while260_test859:
    set $P5035, $P101
    unless $P101 goto while260_done863 
  while260_redo861:
.annotate 'line', 991
.annotate 'line', 992
    nqp_get_sc_object $P5031, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5030, $P5031, "QAST"
    get_who $P5029, $P5030
    set $P5028, $P5029["Op"]
    unless_null $P5028, fallback864
    nqp_get_sc_object $P5032, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5028, $P5032
  fallback864:
    $P5033 = $P101."shift"()
    $P5034 = $P5028."new"($P103, $P5033, "concat" :named("op"))
    set $P103, $P5034
    set $P5035, $P103
    goto while260_test859 
  while260_done863:
.annotate 'line', 994
    $P5036 = _lex_param_1."!make"($P103)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1360235112.107") :anon :lex :outer("cuid_82_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 971
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
.annotate 'line', 972
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback839
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5007
  fallback839:
    type_check $I5002, $P101, $P5003
    not $I5001, $I5002
    unless $I5001 goto if254_else837 
.annotate 'line', 973
    find_lex $P5008, "$lastlit"
    set $S5002, $P5008
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5009, $S5001
    store_lex "$lastlit", $P5009
    set $P5043, $P5009
    goto if254_end838
  if254_else837:
    nqp_get_sc_object $P5013, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["SVal"]
    unless_null $P5010, fallback842
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5010, $P5014
  fallback842:
    type_check $I5003, $P101, $P5010
    unless $I5003 goto if255_else840 
.annotate 'line', 976
    find_lex $P5015, "$lastlit"
    set $S5005, $P5015
.annotate 'line', 977
    $P5016 = $P101."value"()
    set $S5006, $P5016
    concat $S5004, $S5005, $S5006
    box $P5017, $S5004
    store_lex "$lastlit", $P5017
    set $P5042, $P5017
    goto if255_end841
  if255_else840:
.annotate 'line', 979
    find_lex $P5018, "$lastlit"
    set $S5007, $P5018
    isgt $I5004, $S5007, ""
    unless $I5004 goto if256_end844 
.annotate 'line', 980
.annotate 'line', 981
    find_lex $P5019, "@parts"
    nqp_get_sc_object $P5023, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["SVal"]
    unless_null $P5020, fallback845
    nqp_get_sc_object $P5024, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5020, $P5024
  fallback845:
    find_lex $P5025, "$lastlit"
    $P5026 = $P5020."new"($P5025 :named("value"))
    $P5027 = $P5019."push"($P5026)
  if256_end844:
.annotate 'line', 983
    find_lex $P5028, "@parts"
    nqp_get_sc_object $P5032, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["Node"]
    unless_null $P5029, fallback848
    nqp_get_sc_object $P5033, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5029, $P5033
  fallback848:
    type_check $I5005, $P101, $P5029
    unless $I5005 goto if257_else846 
    set $P5040, $P101
    goto if257_end847
  if257_else846:
.annotate 'line', 985
    nqp_get_sc_object $P5037, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["SVal"]
    unless_null $P5034, fallback849
    nqp_get_sc_object $P5038, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5034, $P5038
  fallback849:
    $P5039 = $P5034."new"($P101 :named("value"))
    set $P5040, $P5039
  if257_end847:
    $P5028."push"($P5040)
    box $P5041, ""
    store_lex "$lastlit", $P5041
    set $P5042, $P5041
  if255_end841:
    set $P5043, $P5042
  if254_end838:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_83_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 997
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 998
    unless_null _lex_param_1, fallback867
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback867:
    set $P5001, _lex_param_1["quote_escape"]
    unless_null $P5001, fallback868
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback868:
    unless $P5001 goto if261_else865 
    unless_null _lex_param_1, fallback869
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5005
  fallback869:
    set $P5004, _lex_param_1["quote_escape"]
    unless_null $P5004, fallback870
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5006
  fallback870:
    $P5007 = $P5004."ast"()
    set $P5008, $P5007
    goto if261_end866
  if261_else865:
    set $S5001, _lex_param_1
    box $P5009, $S5001
    set $P5008, $P5009
  if261_end866:
    $P5010 = _lex_param_1."!make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_84_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1001
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_85_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1002
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback871
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback871:
    set $P5001, _lex_param_1["stopper"]
    unless_null $P5001, fallback872
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback872:
    set $S5001, $P5001
    $P5004 = _lex_param_1."!make"($S5001)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_86_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1004
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_87_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1005
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_88_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_89_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1007
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_90_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1008
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_91_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1009
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_92_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1011
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1012
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback875
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5003
  fallback875:
    set $P5002, _lex_param_1["hexint"]
    unless_null $P5002, fallback876
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5004
  fallback876:
    unless $P5002 goto if262_else873 
    unless_null _lex_param_1, fallback877
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5006
  fallback877:
    set $P5005, _lex_param_1["hexint"]
    unless_null $P5005, fallback878
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5007
  fallback878:
    set $P5013, $P5005
    goto if262_end874
  if262_else873:
    unless_null _lex_param_1, fallback879
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5010
  fallback879:
    set $P5009, _lex_param_1["hexints"]
    unless_null $P5009, fallback880
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5011
  fallback880:
    set $P5008, $P5009["hexint"]
    unless_null $P5008, fallback881
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5012
  fallback881:
    set $P5013, $P5008
  if262_end874:
    $P5014 = $P5001."ints_to_string"($P5013)
    $P5015 = _lex_param_1."!make"($P5014)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_93_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1015
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1016
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback884
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5003
  fallback884:
    set $P5002, _lex_param_1["octint"]
    unless_null $P5002, fallback885
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5004
  fallback885:
    unless $P5002 goto if263_else882 
    unless_null _lex_param_1, fallback886
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5006
  fallback886:
    set $P5005, _lex_param_1["octint"]
    unless_null $P5005, fallback887
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5007
  fallback887:
    set $P5013, $P5005
    goto if263_end883
  if263_else882:
    unless_null _lex_param_1, fallback888
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5010
  fallback888:
    set $P5009, _lex_param_1["octints"]
    unless_null $P5009, fallback889
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5011
  fallback889:
    set $P5008, $P5009["octint"]
    unless_null $P5008, fallback890
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5012
  fallback890:
    set $P5013, $P5008
  if263_end883:
    $P5014 = $P5001."ints_to_string"($P5013)
    $P5015 = _lex_param_1."!make"($P5014)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_94_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1019
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1020
    unless_null _lex_param_1, fallback891
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback891:
    set $P5001, _lex_param_1["charspec"]
    unless_null $P5001, fallback892
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback892:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_95_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1023
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1024
    $P5001 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_96_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1027
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1028
    unless_null _lex_param_1, fallback895
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback895:
    set $P5001, _lex_param_1["textq"]
    unless_null $P5001, fallback896
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback896:
    unless $P5001 goto if264_else893 
    unless_null _lex_param_1, fallback897
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5005
  fallback897:
    set $P5004, _lex_param_1["textq"]
    unless_null $P5004, fallback898
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5006
  fallback898:
    $P5007 = $P5004."Str"()
    set $S5002, $P5007
    concat $S5001, "\\", $S5002
    box $P5013, $S5001
    set $P5012, $P5013
    goto if264_end894
  if264_else893:
    unless_null _lex_param_1, fallback899
    nqp_get_sc_object $P5009, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5009
  fallback899:
    set $P5008, _lex_param_1["textqq"]
    unless_null $P5008, fallback900
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5010
  fallback900:
    $P5011 = $P5008."Str"()
    set $P5012, $P5011
  if264_end894:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_97_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1031
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    unless_null _lex_param_1, fallback903
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5003
  fallback903:
    set $P5002, _lex_param_1["integer"]
    unless_null $P5002, fallback904
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5004
  fallback904:
    unless $P5002 goto if265_else901 
.annotate 'line', 1033
    unless_null _lex_param_1, fallback905
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5006
  fallback905:
    set $P5005, _lex_param_1["integer"]
    unless_null $P5005, fallback906
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5007
  fallback906:
    $P5008 = $P5005."ast"()
    set $P5009, $P5008
    goto if265_end902
  if265_else901:
    set $S5002, _lex_param_1
    find_encoding $I5002, "utf8"
    trans_encoding $S5001, $S5002, $I5002
    find_codepoint $I5001, $S5001
    box $P5010, $I5001
    set $P5009, $P5010
  if265_end902:
    set $P101, $P5009
    set $N5001, $P101
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    unless $I5003 goto if266_end908 
.annotate 'line', 1037
    $P5011 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5012 = $P5011."panic"($S5003)
  if266_end908:
.annotate 'line', 1038
    set $I5004, $P101
    chr $S5005, $I5004
    $P5013 = _lex_param_1."!make"($S5005)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_98_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1041
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_194_1360235112.107' 
    capture_lex $P5012 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback909
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5007
  fallback909:
    set $P5006, _lex_param_1["charname"]
    unless_null $P5006, fallback910
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5006, $P5008
  fallback910:
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next911:
    unless $P5005, for_done913
    shift $P5010, $P5005
  for_redo912:
    .const 'Sub' $P5009 = 'cuid_194_1360235112.107' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next911
  for_done913:
.annotate 'line', 1044
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1360235112.107") :anon :lex :outer("cuid_98_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1043
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
.sub "charspec" :subid("cuid_99_1360235112.107") :anon :lex :outer("cuid_183_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1047
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1048
    unless_null _lex_param_1, fallback916
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5002
  fallback916:
    set $P5001, _lex_param_1["charnames"]
    unless_null $P5001, fallback917
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5001, $P5003
  fallback917:
    unless $P5001 goto if267_else914 
    unless_null _lex_param_1, fallback918
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5005
  fallback918:
    set $P5004, _lex_param_1["charnames"]
    unless_null $P5004, fallback919
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5006
  fallback919:
    $P5007 = $P5004."ast"()
    set $P5009, $P5007
    goto if267_end915
  if267_else914:
    $P5008 = "&string_to_int"(_lex_param_1, 10)
    set $I5001, $P5008
    chr $S5001, $I5001
    box $P5010, $S5001
    set $P5009, $P5010
  if267_end915:
    $P5011 = _lex_param_1."!make"($P5009)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1360235112.107") :anon :lex :outer("cuid_181_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1061
    .const 'Sub' $P5053 = 'cuid_100_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_101_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_102_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_103_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_104_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_105_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_106_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_107_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_108_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_109_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_110_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_111_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_112_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_113_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_114_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_115_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_116_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_117_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_118_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_119_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_120_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_121_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_122_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_123_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_124_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_125_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_126_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_127_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_128_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_129_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_130_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_131_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_132_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_133_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_134_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_135_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_136_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_137_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_138_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_139_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_140_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_141_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_142_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_143_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_144_1360235112.107' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_145_1360235112.107' 
    capture_lex $P5053 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5007 = 'cuid_100_1360235112.107' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_101_1360235112.107' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_102_1360235112.107' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_103_1360235112.107' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_104_1360235112.107' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_105_1360235112.107' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_106_1360235112.107' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_107_1360235112.107' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_108_1360235112.107' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_109_1360235112.107' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_110_1360235112.107' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_111_1360235112.107' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_112_1360235112.107' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_113_1360235112.107' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_114_1360235112.107' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_115_1360235112.107' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_116_1360235112.107' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_117_1360235112.107' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_118_1360235112.107' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_119_1360235112.107' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_120_1360235112.107' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_121_1360235112.107' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_122_1360235112.107' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_123_1360235112.107' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_124_1360235112.107' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_125_1360235112.107' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_126_1360235112.107' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_127_1360235112.107' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_128_1360235112.107' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_129_1360235112.107' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_130_1360235112.107' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_131_1360235112.107' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_132_1360235112.107' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_133_1360235112.107' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_134_1360235112.107' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_135_1360235112.107' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_136_1360235112.107' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_137_1360235112.107' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_138_1360235112.107' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_139_1360235112.107' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_140_1360235112.107' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_141_1360235112.107' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_142_1360235112.107' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_143_1360235112.107' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_144_1360235112.107' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_145_1360235112.107' 
    capture_lex $P5052
    .return ($P5052) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_100_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1077
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1079
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_101_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1083
    .param pmc _lex_param_0 
    .const 'Sub' $P5026 = 'cuid_196_1360235112.107' 
    capture_lex $P5026 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    split $P5003, " ", "start parse past post pir evalpmc"
    repr_bind_attr_obj $P5001, $P5002, "@!stages", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    split $P5006, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5004, $P5005, "@!cmdoptions", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    box $P5009, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5007, $P5008, "$!usage", $P5009
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!cmdoptions"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next922:
    unless $P5012, for_done924
    shift $P5017, $P5012
  for_redo923:
    .const 'Sub' $P5016 = 'cuid_196_1360235112.107' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next922
  for_done924:
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    getinterp $P5021
    set $P5020, $P5021[.IGLOBALS_CONFIG_HASH]
    unless_null $P5020, fallback925
    nqp_get_sc_object $P5022, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5020, $P5022
  fallback925:
    set $P5018["%parrot_config"], $P5020
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    new $P5025, 'Hash'
    repr_bind_attr_obj $P5023, $P5024, "%!config", $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1360235112.107") :anon :lex :outer("cuid_101_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1090
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
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
.sub "language" :subid("cuid_102_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1097
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    if haz_param_6, default928
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5007
  default928:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    unless _lex_param_1 goto if269_end927 
.annotate 'line', 1098
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if269_end927:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_103_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1105
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
.sub "config" :subid("cuid_104_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1109
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_105_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1111
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$base", $P101 
    .lex "$loaded", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
.annotate 'line', 1112
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."parse_name"(_lex_param_1)
    join $S5001, "/", $P5004
    box $P5005, $S5001
    set $P101, $P5005
    box $P5006, 0
    set $P102, $P5006
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_271930
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1114
    set $S5003, $P101
    concat $S5002, $S5003, ".pbc"
    load_bytecode $S5002
    box $P5007, 1
    set $P102, $P5007
    set $P5009, $P102
    pop_eh 
    goto skip_handler_270929
  catch_handler_271930:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_270929
  skip_handler_270929:
    if $P102 goto unless272_end932 
.annotate 'line', 1115
    set $S5005, $P101
    concat $S5004, $S5005, ".pir"
    load_bytecode $S5004
    box $P5010, 1
    set $P102, $P5010
  unless272_end932:
.annotate 'line', 1116
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."get_module"(_lex_param_1)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_106_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1119
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
.annotate 'line', 1121
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback935
    nqp_get_sc_object $P5007, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["$AUTOPRINTPOS"]
    unless_null $P5005, fallback936
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5008
  fallback936:
    unless_null $P5005, vivi_274937
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5009, "Contextual $*AUTOPRINTPOS not found"
    set $P5005, $P5009
  vivi_274937:
    set $P5004, $P5005
  fallback935:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5013, $I5001
    set $P5012, $P5013
    if $I5001 goto unless273_end934 
.annotate 'line', 1120
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."interactive_result"(_lex_param_1)
    set $P5012, $P5011
  unless273_end934:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_107_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1124
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5025 = 'cuid_199_1360235112.107' 
    capture_lex $P5025 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P104, $P5004
.annotate 'line', 1125
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5006."print"($P5008)
.annotate 'line', 1127
    getinterp $P5009
    $P5010 = $P5009."stdin_handle"()
    set $P101, $P5010
    set $P5011, _lex_param_1["encoding"]
    unless_null $P5011, fallback938
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5012
  fallback938:
    set $S5001, $P5011
    box $P5013, $S5001
    set $P102, $P5013
    set $P5014, $P102
    unless $P102 goto if276_end942 
    set $S5002, $P102
    isne $I5001, $S5002, "fixed_8"
    box $P5015, $I5001
    set $P5014, $P5015
  if276_end942:
    unless $P5014 goto if275_end940 
.annotate 'line', 1129
.annotate 'line', 1130
    $P5016 = $P101."encoding"($P102)
  if275_end940:
    set $P5017, _lex_param_1["target"]
    unless_null $P5017, fallback943
    nqp_get_sc_object $P5018, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5017, $P5018
  fallback943:
    set $S5004, $P5017
    downcase $S5003, $S5004
    box $P5019, $S5003
    set $P103, $P5019
    new $P5023, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5023, while277_handlers947
    push_eh $P5023
  while277_test944:
    box $P5024, 1
    set $P5022, $P5024
    unless 1 goto while277_done948 
  while277_redo946:
    .const 'Sub' $P5020 = 'cuid_199_1360235112.107' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5022, $P5021
    goto while277_test944 
  while277_handlers947:
    .get_results ($P5023)
    pop_upto_eh $P5023
    getattribute $P5023, $P5023, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, while277_test944
    eq $P5023, .CONTROL_LOOP_REDO, while277_redo946
  while277_done948:
    pop_eh 
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1360235112.107") :anon :lex :outer("cuid_107_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1135
    .const 'Sub' $P5027 = 'cuid_198_1360235112.107' 
    capture_lex $P5027 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    if $P5006 goto unless278_end950 
    die 0, .CONTROL_LOOP_LAST
  unless278_end950:
.annotate 'line', 1138
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5001, $P5007
    if $I5001, defor951
    box $P5011, "> "
    set $P5007, $P5011
  defor951:
    set $P101, $P5007
.annotate 'line', 1139
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5002, $P102
    set $I5005, $I5002
    if $I5002 goto unless280_end955 
    defined $I5004, $P102
    not $I5003, $I5004
    set $I5005, $I5003
  unless280_end955:
    unless $I5005 goto if279_end953 
.annotate 'line', 1140
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if279_end953:
.annotate 'line', 1146
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5026, $P102
    unless $P102 goto if282_end960 
    .const 'Sub' $P5024 = 'cuid_198_1360235112.107' 
    capture_lex $P5024
    $P5025 = $P5024()
    set $P5026, $P5025
  if282_end960:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1360235112.107") :anon :lex :outer("cuid_199_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1150
    .const 'Sub' $P5038 = 'cuid_197_1360235112.107' 
    capture_lex $P5038 
    .lex "$output", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1153
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_284962
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1154
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_283961
  catch_handler_284962:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_197_1360235112.107' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_283961
  skip_handler_283961:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback965
    nqp_get_sc_object $P5016, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5015, $P5016
    set $P5014, $P5015["$MAIN_CTX"]
    unless_null $P5014, fallback966
    nqp_get_sc_object $P5017, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5014, $P5017
  fallback966:
    unless_null $P5014, vivi_286967
    die "Contextual $*MAIN_CTX not found"
    box $P5018, "Contextual $*MAIN_CTX not found"
    set $P5014, $P5018
  vivi_286967:
    set $P5013, $P5014
  fallback965:
    defined $I5001, $P5013
    unless $I5001 goto if285_end964 
.annotate 'line', 1160
    find_dynamic_lex $P5019, "$*MAIN_CTX"
    unless_null $P5019, fallback968
    nqp_get_sc_object $P5022, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5021, $P5022
    set $P5020, $P5021["$MAIN_CTX"]
    unless_null $P5020, fallback969
    nqp_get_sc_object $P5023, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5020, $P5023
  fallback969:
    unless_null $P5020, vivi_287970
    die "Contextual $*MAIN_CTX not found"
    box $P5024, "Contextual $*MAIN_CTX not found"
    set $P5020, $P5024
  vivi_287970:
    set $P5019, $P5020
  fallback968:
    store_lex "$save_ctx", $P5019
  if285_end964:
    isnull $I5002, $P101
    unless $I5002 goto if288_end972 
    die 0, .CONTROL_LOOP_NEXT
  if288_end972:
    find_lex $P5025, "$target"
    isfalse $I5003, $P5025
    unless $I5003 goto if289_else973 
.annotate 'line', 1165
.annotate 'line', 1166
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    $P5028 = $P5026."autoprint"($P101)
    set $P5037, $P5028
    goto if289_end974
  if289_else973:
    find_lex $P5029, "$target"
    set $S5003, $P5029
    iseq $I5004, $S5003, "pir"
    unless $I5004 goto if290_else975 
.annotate 'line', 1167
    set $S5004, $P101
    say $S5004
    box $P5036, $S5004
    set $P5035, $P5036
    goto if290_end976
  if290_else975:
.annotate 'line', 1169
.annotate 'line', 1170
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $P5032, "$target"
    find_lex $P5033, "%adverbs"
    $P5034 = $P5030."dumper"($P101, $P5032, $P5033 :flat :named)
    set $P5035, $P5034
  if290_end976:
    set $P5037, $P5035
  if289_end974:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1360235112.107") :anon :lex :outer("cuid_198_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1155
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 1156
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_108_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1176
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
.sub "interactive_exception" :subid("cuid_109_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1180
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
.sub "eval" :subid("cuid_110_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1184
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5012 = 'cuid_200_1360235112.107' 
    capture_lex $P5012 
    .lex "$output", $P101 
    .lex "$old_runcore", $P102 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P102, $P5003
    set $P5004, _lex_param_3["profile-compile"]
    unless_null $P5004, fallback979
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5005
  fallback979:
    unless $P5004 goto if291_end978 
.annotate 'line', 1188
    set_runcore "subprof_hll"
  if291_end978:
.annotate 'line', 1191
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5007
    isa $I5002, $P101, "String"
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if293_end983 
    set $P5008, _lex_param_3["target"]
    unless_null $P5008, fallback984
    nqp_get_sc_object $P5009, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5009
  fallback984:
    set $S5002, $P5008
    iseq $I5003, $S5002, ""
    set $I5004, $I5003
  if293_end983:
    unless $I5004 goto if292_end981 
    .const 'Sub' $P5010 = 'cuid_200_1360235112.107' 
    capture_lex $P5010
    $P5011 = $P5010()
  if292_end981:
    set $S5003, $P102
    set_runcore $S5003
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1360235112.107") :anon :lex :outer("cuid_110_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1194
    .lex "$outer_ctx", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_lex $P5003, "%adverbs"
    set $P5002, $P5003["outer_ctx"]
    unless_null $P5002, fallback985
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5004
  fallback985:
    set $P101, $P5002
    defined $I5001, $P101
    unless $I5001 goto if294_end987 
.annotate 'line', 1196
.annotate 'line', 1197
    find_lex $P5006, "$output"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback988
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5007
  fallback988:
    $P5008 = $P5005."set_outer_ctx"($P101)
  if294_end987:
    find_lex $P5010, "%adverbs"
    set $P5009, $P5010["profile"]
    unless_null $P5009, fallback991
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5011
  fallback991:
    unless $P5009 goto if295_end990 
.annotate 'line', 1200
    set_runcore "subprof_hll"
  if295_end990:
    find_lex $P5013, "%adverbs"
    set $P5012, $P5013["trace"]
    unless_null $P5012, fallback992
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5012, $P5014
  fallback992:
    set $I5002, $P5012
    trace $I5002
.annotate 'line', 1204
    find_lex $P5016, "@args"
    find_lex $P5015, "$output"
    $P5017 = $P5015($P5016 :flat)
    store_lex "$output", $P5017
    trace 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_111_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1212
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
.sub "panic" :subid("cuid_112_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1217
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
.sub "stages" :subid("cuid_113_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1221
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default995
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default995:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if296_end994 
.annotate 'line', 1222
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if296_end994:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_114_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1228
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if297_end997 
.annotate 'line', 1229
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback998
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5004
  fallback998:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5003
  if297_end997:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!parsegrammar"
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_115_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1235
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if298_end1000 
.annotate 'line', 1236
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback1001
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5004
  fallback1001:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5003
  if298_end1000:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!parseactions"
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_116_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1242
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_117_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1244
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_118_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default1004
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5006
  default1004:
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    defined $I5001, _lex_param_1
    unless $I5001 goto if299_end1003 
.annotate 'line', 1247
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if299_end1003:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_119_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1254
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default1007
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1007:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if300_end1006 
.annotate 'line', 1255
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if300_end1006:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_120_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1261
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
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $P5005, _lex_param_1[0]
    unless_null $P5005, fallback1008
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5006
  fallback1008:
    set $P101, $P5005
.annotate 'line', 1263
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."process_args"(_lex_param_1)
    set $P102, $P5008
.annotate 'line', 1264
    $P5009 = $P102."options"()
    set $P103, $P5009
.annotate 'line', 1265
    $P5010 = $P102."arguments"()
    set $P104, $P5010
.annotate 'line', 1267
    _lex_param_2."update"($P103)
    set $P5011, _lex_param_2["help"]
    unless_null $P5011, fallback1013
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5012
  fallback1013:
    set $P5015, $P5011
    if $P5011 goto unless302_end1012 
    set $P5013, _lex_param_2["h"]
    unless_null $P5013, fallback1014
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5013, $P5014
  fallback1014:
    set $P5015, $P5013
  unless302_end1012:
    unless $P5015 goto if301_end1010 
.annotate 'line', 1268
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."usage"($P101)
  if301_end1010:
    exists $I5002, _lex_param_2["precomp"]
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if304_end1018 
    set $P5018, _lex_param_2["target"]
    unless_null $P5018, fallback1019
    nqp_get_sc_object $P5019, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5018, $P5019
  fallback1019:
    set $S5001, $P5018
    iseq $I5003, $S5001, "pir"
    set $I5004, $I5003
  if304_end1018:
    unless $I5004 goto if303_end1016 
.annotate 'line', 1270
    box $P5020, 1
    set _lex_param_2["precomp"], $P5020
  if303_end1016:
    load_bytecode "dumper.pbc"
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1277
    nqp_decontainerize $P5021, _lex_param_0
    $P5022 = $P5021."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_121_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1281
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5072 = 'cuid_201_1360235112.107' 
    capture_lex $P5072 
    .const 'Sub' $P5072 = 'cuid_202_1360235112.107' 
    capture_lex $P5072 
    .const 'Sub' $P5072 = 'cuid_203_1360235112.107' 
    capture_lex $P5072 
    .const 'Sub' $P5072 = 'cuid_204_1360235112.107' 
    capture_lex $P5072 
    .const 'Sub' $P5072 = 'cuid_205_1360235112.107' 
    capture_lex $P5072 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P104, $P5004
    set $P5005, _lex_param_2["version"]
    unless_null $P5005, fallback1024
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5006
  fallback1024:
    set $P5009, $P5005
    if $P5005 goto unless306_end1023 
    set $P5007, _lex_param_2["v"]
    unless_null $P5007, fallback1025
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5007, $P5008
  fallback1025:
    set $P5009, $P5007
  unless306_end1023:
    unless $P5009 goto if305_end1021 
.annotate 'line', 1282
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."version"()
  if305_end1021:
    set $P5012, _lex_param_2["verbose-config"]
    unless_null $P5012, fallback1032
    nqp_get_sc_object $P5013, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5012, $P5013
  fallback1032:
    set $P5016, $P5012
    if $P5012 goto unless309_end1031 
    set $P5014, _lex_param_2["V"]
    unless_null $P5014, fallback1033
    nqp_get_sc_object $P5015, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5014, $P5015
  fallback1033:
    set $P5016, $P5014
  unless309_end1031:
    set $P5019, $P5016
    if $P5016 goto unless308_end1029 
    set $P5017, _lex_param_2["show-config"]
    unless_null $P5017, fallback1034
    nqp_get_sc_object $P5018, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5017, $P5018
  fallback1034:
    set $P5019, $P5017
  unless308_end1029:
    unless $P5019 goto if307_end1027 
.annotate 'line', 1283
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."verbose-config"()
  if307_end1027:
    set $P5022, _lex_param_2["nqpevent"]
    unless_null $P5022, fallback1037
    nqp_get_sc_object $P5023, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5022, $P5023
  fallback1037:
    unless $P5022 goto if310_end1036 
.annotate 'line', 1285
    nqp_decontainerize $P5024, _lex_param_0
    set $P5025, _lex_param_2["nqpevent"]
    unless_null $P5025, fallback1038
    nqp_get_sc_object $P5026, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5025, $P5026
  fallback1038:
    $P5027 = $P5024."nqpevent"($P5025)
  if310_end1036:
    box $P5028, 0
    set $P103, $P5028
    set $P5029, _lex_param_2["target"]
    unless_null $P5029, fallback1039
    nqp_get_sc_object $P5030, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5029, $P5030
  fallback1039:
    set $S5002, $P5029
    downcase $S5001, $S5002
    box $P5031, $S5001
    set $P104, $P5031
    new $P5060, 'ExceptionHandler'
    set_label $P5060, catch_handler_3281077
    $P5060.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5060
.annotate 'line', 1291
    new $P5058, 'ExceptionHandler'
    set_label $P5058, catch_handler_3241072
    $P5058.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5058
    new $P5058, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5058, catch_handler_3251073
    push_eh $P5058
    set $P5032, _lex_param_2["e"]
    unless_null $P5032, fallback1042
    nqp_get_sc_object $P5033, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5032, $P5033
  fallback1042:
    defined $I5001, $P5032
    unless $I5001 goto if311_else1040 
    .const 'Sub' $P5034 = 'cuid_201_1360235112.107' 
    capture_lex $P5034
    $P5035 = $P5034()
    goto if311_end1041
  if311_else1040:
    isfalse $I5002, _lex_param_1
    unless $I5002 goto if315_else1051 
.annotate 'line', 1300
    nqp_decontainerize $P5036, _lex_param_0
    $P5037 = $P5036."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5037
    set $P5047, $P101
    goto if315_end1052
  if315_else1051:
    set $P5038, _lex_param_2["combine"]
    unless_null $P5038, fallback1055
    nqp_get_sc_object $P5039, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5038, $P5039
  fallback1055:
    unless $P5038 goto if316_else1053 
.annotate 'line', 1301
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5041
    set $P5046, $P101
    goto if316_end1054
  if316_else1053:
.annotate 'line', 1302
    nqp_decontainerize $P5042, _lex_param_0
    set $P5043, _lex_param_1[0]
    unless_null $P5043, fallback1056
    nqp_get_sc_object $P5044, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5043, $P5044
  fallback1056:
    $P5045 = $P5042."evalfiles"($P5043, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5045
    set $P5046, $P101
  if316_end1054:
    set $P5047, $P5046
  if315_end1052:
  if311_end1041:
    isnull $I5004, $P101
    not $I5003, $I5004
    box $P5053, $I5003
    set $P5052, $P5053
    unless $I5003 goto if318_end1060 
    set $S5003, $P104
    iseq $I5005, $S5003, "pir"
    box $P5051, $I5005
    set $P5050, $P5051
    if $I5005 goto unless319_end1062 
    set $P5048, _lex_param_2["output"]
    unless_null $P5048, fallback1063
    nqp_get_sc_object $P5049, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5048, $P5049
  fallback1063:
    set $P5050, $P5048
  unless319_end1062:
    set $P5052, $P5050
  if318_end1060:
    unless $P5052 goto if317_end1058 
    .const 'Sub' $P5054 = 'cuid_202_1360235112.107' 
    capture_lex $P5054
    $P5055 = $P5054()
  if317_end1058:
    nqp_get_sc_object $P5056, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    nqp_get_sc_object $P5057, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5059, $P5057
    pop_eh 
    pop_eh 
    goto skip_handler_3231071
  catch_handler_3241072:
    .get_results ($P5058) 
    .const 'Sub' $P10001 = 'cuid_203_1360235112.107' 
    capture_lex $P10001
    $P10001($P5058)
    set $I10001, 1
    set $P5058["handled"], $I10001
    nqp_get_sc_object $P10002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5058
    pop_upto_eh $P5058
    pop_eh 
    set $P5059, $P10002
    goto skip_handler_3231071
  catch_handler_3251073:
    .get_results ($P5058) 
    .const 'Sub' $P10003 = 'cuid_204_1360235112.107' 
    capture_lex $P10003
    $P10003($P5058)
    set $I10002, 1
    set $P5058["handled"], $I10002
    nqp_get_sc_object $P10004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5058
    pop_upto_eh $P5058
    pop_eh 
    set $P5059, $P10004
    goto skip_handler_3231071
  skip_handler_3231071:
    set $P5061, $P5059
    pop_eh 
    goto skip_handler_3271076
  catch_handler_3281077:
    .get_results ($P5060) 
    set $I10001, 1
    set $P5060["handled"], $I10001
    nqp_get_sc_object $P10001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5060
    pop_upto_eh $P5060
    pop_eh 
    set $P5061, $P10001
    goto skip_handler_3271076
  skip_handler_3271076:
    unless $P103 goto if329_end1079 
.annotate 'line', 1327
    set $P5062, _lex_param_2["ll-exception"]
    unless_null $P5062, fallback1084
    nqp_get_sc_object $P5063, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5062, $P5063
  fallback1084:
    set $P5065, $P5062
    if $P5062 goto unless331_end1083 
    nqp_decontainerize $P5064, _lex_param_0
    can $I5007, $P5064, "handle-exception"
    not $I5006, $I5007
    box $P5066, $I5006
    set $P5065, $P5066
  unless331_end1083:
    unless $P5065 goto if330_else1080 
    .const 'Sub' $P5067 = 'cuid_205_1360235112.107' 
    capture_lex $P5067
    $P5068 = $P5067()
    set $P5071, $P5068
    goto if330_end1081
  if330_else1080:
.annotate 'line', 1334
.annotate 'line', 1335
    nqp_decontainerize $P5069, _lex_param_0
    $P5070 = $P5069."handle-exception"($P102)
    set $P5071, $P5070
  if330_end1081:
  if329_end1079:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1360235112.107") :anon :lex :outer("cuid_121_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1292
    .lex "$?FILES", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1295
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5010, "%adverbs"
    set $P5009, $P5010["e"]
    unless_null $P5009, fallback1043
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5011
  fallback1043:
    find_lex $P5012, "@a"
    find_lex $P5013, "%adverbs"
    $P5014 = $P5007."eval"($P5009, "-e", $P5012 :flat, $P5013 :flat :named)
    store_lex "$result", $P5014
    find_lex $P5015, "$target"
    set $S5001, $P5015
    iseq $I5001, $S5001, ""
    set $I5003, $I5001
    if $I5001 goto unless314_end1049 
    find_lex $P5016, "$target"
    set $S5002, $P5016
    iseq $I5002, $S5002, "pir"
    set $I5003, $I5002
  unless314_end1049:
    box $P5021, $I5003
    set $P5020, $P5021
    if $I5003 goto unless313_end1047 
    find_lex $P5018, "%adverbs"
    set $P5017, $P5018["output"]
    unless_null $P5017, fallback1050
    nqp_get_sc_object $P5019, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5017, $P5019
  fallback1050:
    set $P5020, $P5017
  unless313_end1047:
    set $P5028, $P5020
    if $P5020 goto unless312_end1045 
.annotate 'line', 1296
.annotate 'line', 1297
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5024, "$result"
    find_lex $P5025, "$target"
    find_lex $P5026, "%adverbs"
    $P5027 = $P5022."dumper"($P5024, $P5025, $P5026 :flat :named)
    set $P5028, $P5027
  unless312_end1045:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1360235112.107") :anon :lex :outer("cuid_121_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1304
    .lex "$output", $P101 
    .lex "$fh", $P102 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    find_lex $P5004, "%adverbs"
    set $P5003, $P5004["output"]
    unless_null $P5003, fallback1064
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5005
  fallback1064:
    set $P101, $P5003
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    set $I5003, $I5001
    if $I5001 goto unless321_end1068 
    set $S5002, $P101
    iseq $I5002, $S5002, "-"
    set $I5003, $I5002
  unless321_end1068:
    unless $I5003 goto if320_else1065 
.annotate 'line', 1307
    getinterp $P5006
    $P5007 = $P5006."stdout_handle"()
    set $P5010, $P5007
    goto if320_end1066
  if320_else1065:
.annotate 'line', 1308
    new $P5008, "FileHandle"
    $P5009 = $P5008."open"($P101, "w")
    set $P5010, $P5009
  if320_end1066:
    set $P102, $P5010
    if $P102 goto unless322_end1070 
.annotate 'line', 1309
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    set $S5004, $P101
    concat $S5003, "Cannot write to ", $S5004
    $P5013 = $P5011."panic"($S5003)
  unless322_end1070:
.annotate 'line', 1310
    find_lex $P5014, "$result"
    $P102."print"($P5014)
.annotate 'line', 1311
    $P5015 = $P102."close"()
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1360235112.107") :anon :lex :outer("cuid_121_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1313
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
.sub "" :subid("cuid_204_1360235112.107") :anon :lex :outer("cuid_121_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1317
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if326_else1074 
.annotate 'line', 1318
.annotate 'line', 1319
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if326_end1075
  if326_else1074:
.annotate 'line', 1320
    rethrow _lex_param_0
  if326_end1075:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1360235112.107") :anon :lex :outer("cuid_121_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1328
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    getstderr $P5002
    set $P101, $P5002
.annotate 'line', 1330
    find_lex $P5003, "$error"
    $P101."print"($P5003)
.annotate 'line', 1331
    $P101."print"("\n")
.annotate 'line', 1332
    find_lex $P5004, "$error"
    $P5005 = $P5004."backtrace_strings"()
    join $S5001, "\n", $P5005
    $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_122_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1341
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5033 = 'cuid_206_1360235112.107' 
    capture_lex $P5033 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
.annotate 'line', 1343
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1345
    nqp_get_sc_object $P5009, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5008, $P5009, "HLL"
    nqp_get_package_through_who $P5007, $P5008, "CommandLine"
    get_who $P5006, $P5007
    set $P5005, $P5006["Parser"]
    unless_null $P5005, fallback1085
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5010
  fallback1085:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5013, $P5011, $P5012, "@!cmdoptions"
    $P5014 = $P5005."new"($P5013)
    set $P101, $P5014
.annotate 'line', 1346
    $P101."add-stopper"("-e")
.annotate 'line', 1347
    $P101."stop-after-first-arg"()
    new $P5019, 'ExceptionHandler'
    set_label $P5019, catch_handler_3351089
    $P5019.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5019
.annotate 'line', 1349
    new $P5017, 'ExceptionHandler'
    set_label $P5017, catch_handler_3331087
    $P5017.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5017
.annotate 'line', 1350
    $P5015 = $P101."parse"(_lex_param_1)
    set $P102, $P5015
    nqp_get_sc_object $P5016, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5018, $P5016
    pop_eh 
    goto skip_handler_3321086
  catch_handler_3331087:
    .get_results ($P5017) 
    .const 'Sub' $P10001 = 'cuid_206_1360235112.107' 
    capture_lex $P10001
    $P10001($P5017)
    set $I10001, 1
    set $P5017["handled"], $I10001
    nqp_get_sc_object $P10002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5017
    pop_upto_eh $P5017
    pop_eh 
    set $P5018, $P10002
    goto skip_handler_3321086
  skip_handler_3321086:
    set $P5020, $P5018
    pop_eh 
    goto skip_handler_3341088
  catch_handler_3351089:
    .get_results ($P5019) 
    set $I10001, 1
    set $P5019["handled"], $I10001
    nqp_get_sc_object $P10001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5019
    pop_upto_eh $P5019
    pop_eh 
    set $P5020, $P10001
    goto skip_handler_3341088
  skip_handler_3341088:
    unless $P102 goto if336_else1090 
.annotate 'line', 1357
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
.annotate 'line', 1358
    $P5023 = $P102."options"()
    repr_bind_attr_obj $P5021, $P5022, "%!cli-options", $P5023
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
.annotate 'line', 1359
    $P5026 = $P102."arguments"()
    repr_bind_attr_obj $P5024, $P5025, "@!cli-arguments", $P5026
    goto if336_end1091
  if336_else1090:
.annotate 'line', 1361
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    new $P5029, 'Hash'
    repr_bind_attr_obj $P5027, $P5028, "%!cli-options", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    new $P5032, 'ResizablePMCArray'
    repr_bind_attr_obj $P5030, $P5031, "@!cli-arguments", $P5032
  if336_end1091:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1360235112.107") :anon :lex :outer("cuid_122_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1351
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1353
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_123_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1368
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5038 = 'cuid_208_1360235112.107' 
    capture_lex $P5038 
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
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1092
    .lex "RETURN", $P108
    set $P5008, _lex_param_3["target"]
    unless_null $P5008, fallback1094
    nqp_get_sc_object $P5009, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5009
  fallback1094:
    set $S5002, $P5008
    downcase $S5001, $S5002
    box $P5010, $S5001
    set $P101, $P5010
    set $P5011, _lex_param_3["encoding"]
    unless_null $P5011, fallback1095
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5012
  fallback1095:
    set $P102, $P5011
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if337_else1096 
    set $P5014, _lex_param_1
    goto if337_end1097
  if337_else1096:
    new $P5013, 'ResizablePMCArray'
    push $P5013, _lex_param_1
    set $P5014, $P5013
  if337_end1097:
    set $P103, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    join $S5003, ",", $P103
    box $P5017, $S5003
    repr_bind_attr_obj $P5015, $P5016, "$!user_progname", $P5017
    set $P5018, $P103
    iter $P5020, $P103
  for_next1104:
    unless $P5020, for_done1106
    shift $P5022, $P5020
  for_redo1105:
    .const 'Sub' $P5021 = 'cuid_208_1360235112.107' 
    capture_lex $P5021
    $P5018 = $P5021($P5022)
    goto for_next1104
  for_done1106:
    join $S5004, "", $P104
    box $P5023, $S5004
    set $P105, $P5023
    join $S5005, " ", $P103
    box $P5024, $S5005
    set $P106, $P5024
.annotate 'line', 1392
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5026
    set $S5006, $P101
    iseq $I5002, $S5006, ""
    set $I5004, $I5002
    if $I5002 goto unless345_end1112 
    set $S5007, $P101
    iseq $I5003, $S5007, "pir"
    set $I5004, $I5003
  unless345_end1112:
    box $P5030, $I5004
    set $P5029, $P5030
    if $I5004 goto unless344_end1110 
    set $P5027, _lex_param_3["output"]
    unless_null $P5027, fallback1113
    nqp_get_sc_object $P5028, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5027, $P5028
  fallback1113:
    set $P5029, $P5027
  unless344_end1110:
    unless $P5029 goto if343_else1107 
.annotate 'line', 1393
    find_lex $P5031, "RETURN"
    $P5032 = $P5031($P107)
    set $P5037, $P5032
    goto if343_end1108
  if343_else1107:
.annotate 'line', 1395
.annotate 'line', 1396
    nqp_decontainerize $P5034, _lex_param_0
    $P5035 = $P5034."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5033, "RETURN"
    $P5036 = $P5033($P5035)
    set $P5037, $P5036
  if343_end1108:
    goto lexotic_1093
  lexotic_1092:
    .get_results ($P5037)
  lexotic_1093:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1360235112.107") :anon :lex :outer("cuid_123_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1374
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_207_1360235112.107' 
    capture_lex $P5014 
    .lex "$in-handle", $P101 
    .lex "$err", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    new $P5003, "FileHandle"
    set $P101, $P5003
    box $P5004, 0
    set $P102, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_3411101
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1377
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_3391099
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
.annotate 'line', 1381
    find_lex $P5005, "$encoding"
    $P101."encoding"($P5005)
    find_lex $P5006, "@codes"
.annotate 'line', 1382
    $P5007 = $P101."readall"(_lex_param_0)
    set $S5001, $P5007
    push $P5006, $S5001
.annotate 'line', 1383
    $P101."close"()
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5010, $P5008
    pop_eh 
    goto skip_handler_3381098
  catch_handler_3391099:
    .get_results ($P5009) 
    .const 'Sub' $P10001 = 'cuid_207_1360235112.107' 
    capture_lex $P10001
    $P10001($P5009)
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10002
    goto skip_handler_3381098
  skip_handler_3381098:
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_3401100
  catch_handler_3411101:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_3401100
  skip_handler_3401100:
    set $P5013, $P102
    unless $P102 goto if342_end1103 
    die $P102
    set $P5013, $P102
  if342_end1103:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1360235112.107") :anon :lex :outer("cuid_208_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1384
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
.sub "compile" :subid("cuid_124_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1400
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5033 = 'cuid_209_1360235112.107' 
    capture_lex $P5033 
    .lex "%*COMPILING", $P101 
    .lex "$target", $P102 
    .lex "$result", $P103 
    .lex "$stderr", $P104 
    .lex "$stdin", $P105 
    .lex "$stagestats", $P106 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1114
    .lex "RETURN", $P107
    unless_null $P101, fallback1116
    nqp_get_sc_object $P5009, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5008, $P5009
    set $P5007, $P5008["%COMPILING"]
    unless_null $P5007, fallback1117
    nqp_get_sc_object $P5011, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%COMPILING"], $P5012
    set $P5007, $P5012
  fallback1117:
    unless_null $P5007, vivi_3461118
    die "Contextual %*COMPILING not found"
    box $P5013, "Contextual %*COMPILING not found"
    set $P5007, $P5013
  vivi_3461118:
    set $P101, $P5007
  fallback1116:
    set $P101["%?OPTIONS"], _lex_param_2
    set $P5014, _lex_param_2["target"]
    unless_null $P5014, fallback1119
    nqp_get_sc_object $P5015, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5014, $P5015
  fallback1119:
    set $S5002, $P5014
    downcase $S5001, $S5002
    box $P5016, $S5001
    set $P102, $P5016
    set $P103, _lex_param_1
.annotate 'line', 1405
    getinterp $P5017
    $P5018 = $P5017."stderr_handle"()
    set $P104, $P5018
.annotate 'line', 1406
    getinterp $P5019
    $P5020 = $P5019."stdin_handle"()
    set $P105, $P5020
    set $P5021, _lex_param_2["stagestats"]
    unless_null $P5021, fallback1120
    nqp_get_sc_object $P5022, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5021, $P5022
  fallback1120:
    set $P106, $P5021
.annotate 'line', 1408
    nqp_decontainerize $P5026, _lex_param_0
    $P5027 = $P5026."stages"()
    set $P5023, $P5027
    iter $P5025, $P5027
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, for_handlers1131
    push_eh $P5029
  for_next1132:
    unless $P5025, for_done1134
    shift $P5030, $P5025
  for_redo1133:
    .const 'Sub' $P5028 = 'cuid_209_1360235112.107' 
    capture_lex $P5028
    $P5023 = $P5028($P5030)
    goto for_next1132
  for_handlers1131:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, for_next1132
    eq $P5029, .CONTROL_LOOP_REDO, for_redo1133
  for_done1134:
    pop_eh 
    find_lex $P5031, "RETURN"
    $P5032 = $P5031($P103)
    goto lexotic_1115
  lexotic_1114:
    .get_results ($P5032)
  lexotic_1115:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1360235112.107") :anon :lex :outer("cuid_124_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1408
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    time $N5001
    box $P5003, $N5001
    set $P101, $P5003
.annotate 'line', 1410
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
    unless $I5001 goto if347_end1122 
.annotate 'line', 1412
.annotate 'line', 1413
    find_lex $P5011, "$stderr"
    new $P5012, 'ResizablePMCArray'
    push $P5012, _lex_param_0
    push $P5012, $P102
    sprintf $S5002, "Stage %-11s: %7.3f", $P5012
    $P5011."print"($S5002)
    find_lex $P5013, "$stagestats"
    set $I5003, $P5013
    band $I5002, $I5003, 4
    unless $I5002 goto if348_end1124 
    sweep 1
  if348_end1124:
    find_lex $P5014, "$stagestats"
    set $I5005, $P5014
    band $I5004, $I5005, 2
    unless $I5004 goto if349_end1126 
.annotate 'line', 1415
    find_lex $P5015, "$stderr"
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."vmstat"()
    sprintf $S5003, " %11d %11d %9d %9d", $P5018
    $P5019 = $P5015."print"($S5003)
  if349_end1126:
.annotate 'line', 1417
    find_lex $P5020, "$stderr"
    $P5020."print"("\n")
    find_lex $P5021, "$stagestats"
    set $I5007, $P5021
    band $I5006, $I5007, 8
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if350_end1128 
.annotate 'line', 1418
.annotate 'line', 1419
    find_lex $P5022, "$stderr"
    $P5022."print"("continue> ")
.annotate 'line', 1420
    find_lex $P5023, "$stdin"
    $P5024 = $P5023."readline"()
    set $P5025, $P5024
  if350_end1128:
  if347_end1122:
    set $S5004, _lex_param_0
    find_lex $P5027, "$target"
    set $S5005, $P5027
    iseq $I5008, $S5004, $S5005
    set $I5009, $I5008
    unless $I5008 goto if351_end1130 
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
  if351_end1130:
    .return ($I5009) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_125_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1428
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
.sub "parse" :subid("cuid_126_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1432
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5034 = 'cuid_210_1360235112.107' 
    capture_lex $P5034 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1135
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set $P5005, _lex_param_2["transcode"]
    unless_null $P5005, fallback1139
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5006
  fallback1139:
    unless $P5005 goto if352_end1138 
.annotate 'line', 1434
    set $P5011, _lex_param_2["transcode"]
    unless_null $P5011, fallback1140
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5012
  fallback1140:
    set $S5001, $P5011
    split $P5010, " ", $S5001
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next1143:
    unless $P5009, for_done1145
    shift $P5014, $P5009
  for_redo1144:
    .const 'Sub' $P5013 = 'cuid_210_1360235112.107' 
    capture_lex $P5013
    $P5007 = $P5013($P5014)
    goto for_next1143
  for_done1145:
  if352_end1138:
.annotate 'line', 1442
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."parsegrammar"()
    set $P102, $P5016
    set $P5017, _lex_param_2["target"]
    unless_null $P5017, fallback1148
    nqp_get_sc_object $P5018, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5017, $P5018
  fallback1148:
    set $S5002, $P5017
    iseq $I5001, $S5002, "parse"
    if $I5001 goto unless355_end1147 
.annotate 'line', 1444
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parseactions"()
    set $P103, $P5020
  unless355_end1147:
    set $P5021, _lex_param_2["rxtrace"]
    unless_null $P5021, fallback1151
    nqp_get_sc_object $P5022, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5021, $P5022
  fallback1151:
    unless $P5021 goto if356_end1150 
.annotate 'line', 1445
    get_how $P5023, $P102
    $P5024 = $P5023."trace-on"($P102)
  if356_end1150:
.annotate 'line', 1446
    $P5025 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5025
    set $P5026, _lex_param_2["rxtrace"]
    unless_null $P5026, fallback1154
    nqp_get_sc_object $P5027, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5026, $P5027
  fallback1154:
    unless $P5026 goto if357_end1153 
.annotate 'line', 1447
    get_how $P5028, $P102
    $P5029 = $P5028."trace-off"($P102)
  if357_end1153:
    if $P104 goto unless358_end1156 
.annotate 'line', 1448
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."panic"("Unable to parse source")
  unless358_end1156:
    find_lex $P5032, "RETURN"
    $P5033 = $P5032($P104)
    goto lexotic_1136
  lexotic_1135:
    .get_results ($P5033)
  lexotic_1136:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1360235112.107") :anon :lex :outer("cuid_126_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1435
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_3541142
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 1436
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_3531141
  catch_handler_3541142:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_3531141
  skip_handler_3531141:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_127_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1452
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
.annotate 'line', 1453
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1455
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback1159
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5007
  fallback1159:
    $P5008 = $P5003."ACCEPTS"($P101)
    if $P5008 goto unless359_end1158 
.annotate 'line', 1454
    nqp_decontainerize $P5009, _lex_param_0
    typeof $S5002, _lex_param_1
    concat $S5001, "Unable to obtain ast from ", $S5002
    $P5010 = $P5009."panic"($S5001)
  unless359_end1158:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_128_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1459
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1460
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_129_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1463
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
.sub "pir" :subid("cuid_130_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1476
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1477
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
.sub "evalpmc" :subid("cuid_131_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1480
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 1482
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_132_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1485
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5011 = 'cuid_211_1360235112.107' 
    capture_lex $P5011 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1160
    .lex "RETURN", $P101
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if360_end1163 
.annotate 'line', 1486
.annotate 'line', 1487
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  if360_end1163:
    set $P5004, _lex_param_3["dumper"]
    unless_null $P5004, fallback1166
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5005
  fallback1166:
    unless $P5004 goto if361_else1164 
    .const 'Sub' $P5006 = 'cuid_211_1360235112.107' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5010, $P5007
    goto if361_end1165
  if361_else1164:
.annotate 'line', 1495
.annotate 'line', 1496
 $P5008 = get_root_global ['parrot'], '_dumper' 
    $P5009 = $P5008(_lex_param_1, _lex_param_2)
    set $P5010, $P5009
  if361_end1165:
    goto lexotic_1161
  lexotic_1160:
    .get_results ($P5010)
  lexotic_1161:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1360235112.107") :anon :lex :outer("cuid_132_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1490
    .lex "$dumper", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    load_bytecode "PCT/Dumper.pbc"
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5005, $P5006, "PCT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Dumper"]
    unless_null $P5003, fallback1167
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5003, $P5007
  fallback1167:
    find_lex $P5009, "%options"
    set $P5008, $P5009["dumper"]
    unless_null $P5008, fallback1168
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5010
  fallback1168:
    set $S5002, $P5008
    downcase $S5001, $S5002
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback1169
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5011
  fallback1169:
    set $P101, $P5002
.annotate 'line', 1493
    find_lex $P5012, "$obj"
    find_lex $P5013, "$name"
    $P5014 = $P101($P5012, $P5013)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_133_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1500
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    if haz_param_10, default1172
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5005
  default1172:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    unless _lex_param_1 goto if362_end1171 
.annotate 'line', 1501
.annotate 'line', 1502
    $P5001 = "&say"(_lex_param_1)
  if362_end1171:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_134_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1508
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$parver", $P102 
    .lex "$parrev", $P103 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!config"
    set $P5004, $P5007["version"]
    unless_null $P5004, fallback1173
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5008
  fallback1173:
    set $P101, $P5004
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["%parrot_config"]
    unless_null $P5010, fallback1174
    new $P5013, 'Hash'
    set $P5010, $P5013
  fallback1174:
    set $P5009, $P5010["VERSION"]
    unless_null $P5009, fallback1175
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5014
  fallback1175:
    set $P102, $P5009
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    set $P5017, $P5018["%parrot_config"]
    unless_null $P5017, fallback1177
    new $P5020, 'Hash'
    set $P5017, $P5020
  fallback1177:
    set $P5016, $P5017["git_describe"]
    unless_null $P5016, fallback1178
    nqp_get_sc_object $P5021, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5016, $P5021
  fallback1178:
    set $P5015, $P5016
    defined $I5001, $P5015
    if $I5001, defor1176
    box $P5022, "(unknown)"
    set $P5015, $P5022
  defor1176:
    set $P103, $P5015
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!language"
    set $S5008, $P5025
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
.sub "show-config" :subid("cuid_135_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1516
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_136_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1518
    .param pmc _lex_param_0 
    .const 'Sub' $P5018 = 'cuid_212_1360235112.107' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_213_1360235112.107' 
    capture_lex $P5018 
    .lex "self", _lex_param_0 
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["%parrot_config"]
    unless_null $P5004, fallback1179
    new $P5007, 'Hash'
    set $P5004, $P5007
  fallback1179:
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1180:
    unless $P5003, for_done1182
    shift $P5009, $P5003
  for_redo1181:
    .const 'Sub' $P5008 = 'cuid_212_1360235112.107' 
    capture_lex $P5008
    $P5001 = $P5008($P5009)
    goto for_next1180
  for_done1182:
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5015, $P5013, $P5014, "%!config"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next1183:
    unless $P5012, for_done1185
    shift $P5017, $P5012
  for_redo1184:
    .const 'Sub' $P5016 = 'cuid_213_1360235112.107' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1183
  for_done1185:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1360235112.107") :anon :lex :outer("cuid_136_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1519
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1520
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
.sub "" :subid("cuid_213_1360235112.107") :anon :lex :outer("cuid_136_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1522
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1523
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
.sub "vmstat" :subid("cuid_137_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1528
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
.sub "nqpevent" :subid("cuid_138_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1536
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_215_1360235112.107' 
    capture_lex $P5011 
    if haz_param_11, default1200
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5010
  default1200:
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if364_end1189 
    set $P5004, $P101
  if364_end1189:
    unless $P5004 goto if363_end1187 
.annotate 'line', 1540
    $P5006 = $P101."flush"()
  if363_end1187:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if365_end1191 
    .const 'Sub' $P5007 = 'cuid_215_1360235112.107' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if365_end1191:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1360235112.107") :anon :lex :outer("cuid_138_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1543
    .const 'Sub' $P5018 = 'cuid_214_1360235112.107' 
    capture_lex $P5018 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5006, "$spec"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback1192
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5007
  fallback1192:
    set $P101, $P5005
    find_lex $P5009, "$spec"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback1193
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5010
  fallback1193:
    set $P102, $P5008
    set $S5002, $P101
    isgt $I5001, $S5002, ""
    unless $I5001 goto if366_else1194 
    .const 'Sub' $P5011 = 'cuid_214_1360235112.107' 
    capture_lex $P5011
    $P5012 = $P5011()
    goto if366_end1195
  if366_else1194:
.annotate 'line', 1552
.annotate 'line', 1553
    getinterp $P5014
    $P5015 = $P5014."stderr_handle"()
    nqpevent_fh $P5013, $P5015
  if366_end1195:
    set $S5003, $P102
    iseq $I5003, $S5003, ""
    unless $I5003 goto if368_else1198 
    box $P5017, 31
    set $P5016, $P5017
    goto if368_end1199
  if368_else1198:
    set $P5016, $P102
  if368_end1199:
    set $I5004, $P5016
    nqpdebflags $I5002, $I5004
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1360235112.107") :anon :lex :outer("cuid_215_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1547
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    new $P5002, "FileHandle"
    set $P101, $P5002
.annotate 'line', 1549
    find_lex $P5003, "$file"
    $P5004 = $P101."open"($P5003, "w")
    if $P5004 goto unless367_end1197 
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$file"
    set $S5002, $P5007
    concat $S5001, "Cannot write to ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless367_end1197:
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_139_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1560
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_216_1360235112.107' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, "ResizableStringArray"
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1203:
    unless $P5005, for_done1205
    shift $P5010, $P5005
  for_redo1204:
    .const 'Sub' $P5009 = 'cuid_216_1360235112.107' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1203
  for_done1205:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1360235112.107") :anon :lex :outer("cuid_139_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1562
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if369_end1202 
.annotate 'line', 1563
.annotate 'line', 1564
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if369_end1202:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_140_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1570
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5027 = 'cuid_217_1360235112.107' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_218_1360235112.107' 
    capture_lex $P5027 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1206
    .lex "RETURN", $P104
    set $P5004, _lex_param_2["before"]
    unless_null $P5004, fallback1210
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5005
  fallback1210:
    unless $P5004 goto if370_else1208 
.annotate 'line', 1573
    set $P5006, _lex_param_2["before"]
    unless_null $P5006, fallback1211
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5006, $P5007
  fallback1211:
    set $P102, $P5006
    box $P5008, "before"
    set $P101, $P5008
    goto if370_end1209
  if370_else1208:
    set $P5009, _lex_param_2["after"]
    unless_null $P5009, fallback1214
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5010
  fallback1214:
    unless $P5009 goto if371_else1212 
.annotate 'line', 1576
    set $P5011, _lex_param_2["after"]
    unless_null $P5011, fallback1215
    nqp_get_sc_object $P5012, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5011, $P5012
  fallback1215:
    set $P102, $P5011
    box $P5013, "after"
    set $P101, $P5013
    set $P5016, $P101
    goto if371_end1213
  if371_else1212:
    .const 'Sub' $P5014 = 'cuid_217_1360235112.107' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
  if371_end1213:
  if370_end1209:
    new $P5017, "ResizableStringArray"
    set $P103, $P5017
.annotate 'line', 1586
    nqp_decontainerize $P5021, _lex_param_0
    $P5022 = $P5021."stages"()
    set $P5018, $P5022
    iter $P5020, $P5022
  for_next1220:
    unless $P5020, for_done1222
    shift $P5024, $P5020
  for_redo1221:
    .const 'Sub' $P5023 = 'cuid_218_1360235112.107' 
    capture_lex $P5023
    $P5018 = $P5023($P5024)
    goto for_next1220
  for_done1222:
.annotate 'line', 1599
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."stages"($P103)
    goto lexotic_1207
  lexotic_1206:
    .get_results ($P5026)
  lexotic_1207:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1360235112.107") :anon :lex :outer("cuid_140_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1579
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1580
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1582
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1360235112.107") :anon :lex :outer("cuid_140_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1586
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if372_else1216 
.annotate 'line', 1587
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if373_else1218 
.annotate 'line', 1588
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if373_end1219
  if373_else1218:
.annotate 'line', 1591
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if373_end1219:
    set $P5011, $P5009
    goto if372_end1217
  if372_else1216:
.annotate 'line', 1595
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if372_end1217:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_141_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1602
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_219_1360235112.107' 
    capture_lex $P5021 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set $P5006, $P101[0]
    unless_null $P5006, fallback1223
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5006, $P5007
  fallback1223:
    set $S5003, $P5006
    substr $S5002, $S5003, 0, 1
    box $P5008, $S5002
    set $P102, $P5008
    set $S5004, $P102
    index $I5001, "$@%&", $S5004, 0
    box $P5009, $I5001
    set $P103, $P5009
    set $N5001, $P103
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if374_end1225 
.annotate 'line', 1608
    set $P5010, $P101[0]
    unless_null $P5010, fallback1226
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5010, $P5011
  fallback1226:
    set $S5006, $P5010
    substr $S5005, $S5006, 1
    box $P5012, $S5005
    set $P101[0], $P5012
    set $S5008, $P102
    set $P5013, $P101[-1]
    unless_null $P5013, fallback1227
    nqp_get_sc_object $P5014, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5013, $P5014
  fallback1227:
    set $S5009, $P5013
    concat $S5007, $S5008, $S5009
    box $P5015, $S5007
    set $P101[-1], $P5015
  if374_end1225:
    set $P5016, $P101
    iter $P5018, $P101
  for_next1230:
    unless $P5018, for_done1232
    shift $P5020, $P5018
  for_redo1231:
    .const 'Sub' $P5019 = 'cuid_219_1360235112.107' 
    capture_lex $P5019
    $P5016 = $P5019($P5020)
    goto for_next1230
  for_done1232:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1360235112.107") :anon :lex :outer("cuid_141_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1616
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless375_end1229 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless375_end1229:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_142_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1622
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("cache") :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default1233
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_3, $P5001
  default1233:
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 

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
.sub "user-progname" :subid("cuid_143_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1688
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1234
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1234:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_144_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1691
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_145_1360235112.107") :anon :lex :outer("cuid_195_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1692
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1360235112.107") :anon :lex :outer("cuid_181_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1790
    .const 'Sub' $P5006 = 'cuid_146_1360235112.107' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_147_1360235112.107' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_148_1360235112.107' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_149_1360235112.107' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_150_1360235112.107' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_146_1360235112.107' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_147_1360235112.107' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_148_1360235112.107' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_149_1360235112.107' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_150_1360235112.107' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_146_1360235112.107") :anon :lex :outer("cuid_220_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1794
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_147_1360235112.107") :anon :lex :outer("cuid_220_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1799
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_148_1360235112.107") :anon :lex :outer("cuid_220_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1800
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_149_1360235112.107") :anon :lex :outer("cuid_220_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1802
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_150_1360235112.107") :anon :lex :outer("cuid_220_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1806
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if376_else1236 
.annotate 'line', 1809
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!options"
    set $S5002, _lex_param_1
    set $P5004, $P5007[$S5002]
    unless_null $P5004, fallback1240
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5008
  fallback1240:
    nqp_islist $I5002, $P5004
    unless $I5002 goto if377_else1238 
.annotate 'line', 1810
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!options"
    set $S5003, _lex_param_1
    set $P5009, $P5012[$S5003]
    unless_null $P5009, fallback1241
    nqp_get_sc_object $P5013, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5009, $P5013
  fallback1241:
    push $P5009, _lex_param_2
    set $P5023, $P5009
    goto if377_end1239
  if377_else1238:
.annotate 'line', 1812
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5016, $P5014, $P5015, "%!options"
    set $S5004, _lex_param_1
    new $P5017, 'ResizablePMCArray'
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5021, $P5019, $P5020, "%!options"
    set $S5005, _lex_param_1
    set $P5018, $P5021[$S5005]
    unless_null $P5018, fallback1242
    nqp_get_sc_object $P5022, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5018, $P5022
  fallback1242:
    push $P5017, $P5018
    push $P5017, _lex_param_2
    set $P5016[$S5004], $P5017
    set $P5023, $P5017
  if377_end1239:
    set $P5027, $P5023
    goto if376_end1237
  if376_else1236:
.annotate 'line', 1815
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    repr_get_attr_obj $P5026, $P5024, $P5025, "%!options"
    set $S5006, _lex_param_1
    set $P5026[$S5006], _lex_param_2
    set $P5027, _lex_param_2
  if376_end1237:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1360235112.107") :anon :lex :outer("cuid_181_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1821
    .const 'Sub' $P5011 = 'cuid_151_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_152_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_153_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_154_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_155_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_156_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_157_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_158_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_159_1360235112.107' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_160_1360235112.107' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_151_1360235112.107' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_152_1360235112.107' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_153_1360235112.107' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_154_1360235112.107' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_155_1360235112.107' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_156_1360235112.107' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_157_1360235112.107' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_158_1360235112.107' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_159_1360235112.107' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_160_1360235112.107' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_151_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1827
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
.annotate 'line', 1828
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1829
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_152_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1833
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_153_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1837
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_222_1360235112.107' 
    capture_lex $P5023 
    if haz_param_13, default1246
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1246:
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1243:
    unless $P5019, for_done1245
    shift $P5021, $P5019
  for_redo1244:
    .const 'Sub' $P5020 = 'cuid_222_1360235112.107' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1243
  for_done1245:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1360235112.107") :anon :lex :outer("cuid_153_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1843
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1844
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_154_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1847
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_155_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1851
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
.sub "add-spec" :subid("cuid_156_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1856
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_223_1360235112.107' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
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
    unless $I5002 goto if378_else1247 
.annotate 'line', 1860
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1862
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if378_end1248
  if378_else1247:
.annotate 'line', 1863
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1865
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if378_end1248:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1249:
    unless $P5013, for_done1251
    shift $P5015, $P5013
  for_redo1250:
    .const 'Sub' $P5014 = 'cuid_223_1360235112.107' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1249
  for_done1251:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1360235112.107") :anon :lex :outer("cuid_156_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1867
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_157_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1873
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1252
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless380_end1257 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless380_end1257:
    unless $I5003 goto if379_end1255 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if379_end1255:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if381_end1259 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if381_end1259:
    box $P5005, 0
    goto lexotic_1253
  lexotic_1252:
    .get_results ($P5005)
  lexotic_1253:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_158_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1879
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!options"
    set $S5001, _lex_param_1
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1260
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5006
  fallback1260:
    set $P101, $P5002
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5001, $S5002, "s"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_159_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1884
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!options"
    set $S5001, _lex_param_1
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1261
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5006
  fallback1261:
    set $P101, $P5002
    set $S5002, $P101
    iseq $I5001, $S5002, "s?"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_160_1360235112.107") :anon :lex :outer("cuid_221_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1889
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_224_1360235112.107' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_225_1360235112.107' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_227_1360235112.107' 
    capture_lex $P5021 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_224_1360235112.107' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_225_1360235112.107' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1271
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1893
    nqp_get_sc_object $P5012, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    nqp_get_package_through_who $P5011, $P5012, "HLL"
    nqp_get_package_through_who $P5010, $P5011, "CommandLine"
    get_who $P5009, $P5010
    set $P5008, $P5009["Result"]
    unless_null $P5008, fallback1273
    nqp_get_sc_object $P5013, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5008, $P5013
  fallback1273:
    $P5014 = $P5008."new"()
    set $P103, $P5014
.annotate 'line', 1894
    $P103."init"()
  while384_test1274:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5018, $I5001
    set $P5017, $P5018
    unless $I5001 goto while384_done1278 
  while384_redo1276:
    .const 'Sub' $P5015 = 'cuid_227_1360235112.107' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
    goto while384_test1274 
  while384_done1278:
    find_lex $P5019, "RETURN"
    $P5020 = $P5019($P103)
    goto lexotic_1272
  lexotic_1271:
    .get_results ($P5020)
  lexotic_1272:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_224_1360235112.107") :anon :lex :outer("cuid_160_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1897
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_2 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if382_else1262 
.annotate 'line', 1898
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5008, $P5003
    goto if382_end1263
  if382_else1262:
.annotate 'line', 1900
    find_lex $P5004, "$i"
    set tmp_2, $P5004
    set $N5006, tmp_2
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5005, "@args"
    find_lex $P5006, "$i"
    set $I5002, $P5006
    set $P5004, $P5005[$I5002]
    unless_null $P5004, fallback1264
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5007
  fallback1264:
    set $P5008, $P5004
  if382_end1263:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_225_1360235112.107") :anon :lex :outer("cuid_160_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1908
    .local pmc tmp_3 
    .local pmc tmp_4 
    find_lex $P5001, "$i"
    set tmp_3, $P5001
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while383_test1265:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto while383_done1269 
  while383_redo1267:
.annotate 'line', 1910
.annotate 'line', 1911
    find_lex $P5003, "$result"
    find_lex $P5005, "@args"
    find_lex $P5006, "$i"
    set $I5002, $P5006
    set $P5004, $P5005[$I5002]
    unless_null $P5004, fallback1270
    nqp_get_sc_object $P5007, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5004, $P5007
  fallback1270:
    $P5003."add-argument"($P5004)
    find_lex $P5008, "$i"
    set tmp_4, $P5008
    set $N5004, tmp_4
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5009, $N5003
    store_lex "$i", $P5009
    set $P5008, tmp_4
    goto while383_test1265 
  while383_done1269:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1360235112.107") :anon :lex :outer("cuid_160_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1916
    .const 'Sub' $P5029 = 'cuid_226_1360235112.107' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_230_1360235112.107' 
    capture_lex $P5029 
    .lex "$cur", $P101 
    .local pmc tmp_6 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_lex $P5003, "@args"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback1279
    nqp_get_sc_object $P5005, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5005
  fallback1279:
    set $P101, $P5002
.annotate 'line', 1918
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    $P5008 = $P5006."is-option"($P101)
    unless $P5008 goto if385_else1280 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5002, $S5001, "--"
    unless $I5002 goto if386_else1282 
    .const 'Sub' $P5009 = 'cuid_226_1360235112.107' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5013, $P5010
    goto if386_end1283
  if386_else1282:
    .const 'Sub' $P5011 = 'cuid_230_1360235112.107' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if386_end1283:
    goto if385_end1281
  if385_else1280:
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5018, $P5015, $P5017, "%!stopper"
    set $S5003, $P101
    set $P5014, $P5018[$S5003]
    unless_null $P5014, fallback1328
    nqp_get_sc_object $P5019, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5014, $P5019
  fallback1328:
    unless $P5014 goto if404_else1326 
.annotate 'line', 1977
.annotate 'line', 1978
    $P5020 = "&slurp-rest"()
    set $P5028, $P5020
    goto if404_end1327
  if404_else1326:
.annotate 'line', 1979
.annotate 'line', 1980
    find_lex $P5021, "$result"
    $P5021."add-argument"($P101)
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5025, $P5022, $P5024, "$!stop-after-first-arg"
    set $P5027, $P5025
    unless $P5025 goto if405_end1330 
.annotate 'line', 1981
    $P5026 = "&slurp-rest"()
    set $P5027, $P5026
  if405_end1330:
    set $P5028, $P5027
  if404_end1327:
  if385_end1281:
    find_lex $P5029, "$i"
    set tmp_6, $P5029
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5030, $N5001
    store_lex "$i", $P5030
    .return (tmp_6) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1360235112.107") :anon :lex :outer("cuid_227_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1919
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P104, $P5004
    find_lex $P5006, "@args"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback1284
    nqp_get_sc_object $P5008, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5008
  fallback1284:
    set $S5002, $P5005
    substr $S5001, $S5002, 2
    box $P5009, $S5001
    set $P101, $P5009
    set $S5003, $P101
    index $I5002, $S5003, "=", 0
    box $P5010, $I5002
    set $P102, $P5010
    box $P5011, 1
    set $P103, $P5011
    box $P5012, 0
    set $P104, $P5012
    set $N5001, $P102
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if387_else1285 
.annotate 'line', 1926
    set $S5005, $P101
    set $N5004, $P102
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    substr $S5004, $S5005, $I5004
    box $P5013, $S5004
    set $P103, $P5013
    set $S5007, $P101
    set $I5005, $P102
    substr $S5006, $S5007, 0, $I5005
    box $P5014, $S5006
    set $P101, $P5014
    box $P5015, 1
    set $P104, $P5015
    goto if387_end1286
  if387_else1285:
.annotate 'line', 1930
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."optional-value"($P101)
    set $P5021, $P5018
    unless $P5018 goto if388_end1288 
    box $P5019, ""
    set $P103, $P5019
    box $P5020, 1
    set $P104, $P5020
    set $P5021, $P104
  if388_end1288:
  if387_end1286:
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5025, $P5022, $P5024, "%!options"
    set $S5008, $P101
    exists $I5006, $P5025[$S5008]
    if $I5006 goto unless389_end1290 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5026, $S5009
    die $P5026
  unless389_end1290:
.annotate 'line', 1935
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    $P5029 = $P5027."wants-value"($P101)
    isfalse $I5007, $P5029
    box $P5031, $I5007
    set $P5030, $P5031
    unless $I5007 goto if391_end1294 
    set $P5030, $P104
  if391_end1294:
    unless $P5030 goto if390_end1292 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5032, $S5011
    die $P5032
  if390_end1292:
    isfalse $I5008, $P104
    box $P5037, $I5008
    set $P5036, $P5037
    unless $I5008 goto if393_end1298 
.annotate 'line', 1936
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."wants-value"($P101)
    set $P5036, $P5035
  if393_end1298:
    unless $P5036 goto if392_end1296 
.annotate 'line', 1937
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5038 = "&get-value"($S5014)
    set $P103, $P5038
  if392_end1296:
.annotate 'line', 1939
    find_lex $P5039, "$result"
    $P5039."add-option"($P101, $P103)
    find_lex $P5042, "self"
    nqp_decontainerize $P5041, $P5042
    nqp_get_sc_object $P5043, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5044, $P5041, $P5043, "%!stopper"
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5040, $P5044[$S5016]
    unless_null $P5040, fallback1301
    nqp_get_sc_object $P5045, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5040, $P5045
  fallback1301:
    set $P5053, $P5040
    unless $P5040 goto if394_end1300 
    find_lex $P5048, "$?PACKAGE"
    get_who $P5047, $P5048
    set $P5046, $P5047["slurp-rest"]
    unless_null $P5046, fallback1302
    nqp_get_sc_object $P5051, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5050, $P5051
    set $P5049, $P5050["slurp-rest"]
    unless_null $P5049, vivi_3951303
    nqp_get_sc_object $P5052, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5049, $P5052
  vivi_3951303:
    set $P5046, $P5049
  fallback1302:
    set $P5053, $P5046
  if394_end1300:
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1360235112.107") :anon :lex :outer("cuid_227_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1941
    .const 'Sub' $P5032 = 'cuid_229_1360235112.107' 
    capture_lex $P5032 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
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
    unless $I5002 goto if396_else1304 
.annotate 'line', 1944
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5010, $P5007, $P5009, "%!options"
    set $S5004, $P101
    set $P5006, $P5010[$S5004]
    unless_null $P5006, fallback1308
    nqp_get_sc_object $P5011, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5006, $P5011
  fallback1308:
    if $P5006 goto unless397_end1307 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5012, $S5005
    die $P5012
  unless397_end1307:
.annotate 'line', 1947
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if398_else1309 
.annotate 'line', 1948
    find_lex $P5016, "$result"
.annotate 'line', 1949
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5017 = "&get-value"($S5007)
    $P5018 = $P5016."add-option"($P101, $P5017)
    goto if398_end1310
  if398_else1309:
.annotate 'line', 1950
.annotate 'line', 1951
    find_lex $P5019, "$result"
    $P5020 = $P5019."add-option"($P101, 1)
  if398_end1310:
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5025, $P5022, $P5024, "%!stopper"
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5021, $P5025[$S5009]
    unless_null $P5021, fallback1313
    nqp_get_sc_object $P5026, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5021, $P5026
  fallback1313:
    set $P5028, $P5021
    unless $P5021 goto if399_end1312 
.annotate 'line', 1953
    $P5027 = "&slurp-rest"()
    set $P5028, $P5027
  if399_end1312:
    set $P5031, $P5028
    goto if396_end1305
  if396_else1304:
    .const 'Sub' $P5029 = 'cuid_229_1360235112.107' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
  if396_end1305:
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1360235112.107") :anon :lex :outer("cuid_230_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1954
    .const 'Sub' $P5009 = 'cuid_228_1360235112.107' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while400_handlers1317
    push_eh $P5007
  while400_test1314:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while400_done1318 
  while400_redo1316:
    .const 'Sub' $P5004 = 'cuid_228_1360235112.107' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while400_test1314 
  while400_handlers1317:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while400_test1314
    eq $P5007, .CONTROL_LOOP_REDO, while400_redo1316
  while400_done1318:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1360235112.107") :anon :lex :outer("cuid_229_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1956
    .lex "$o", $P101 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    find_lex $P5002, "$opt"
    set $S5002, $P5002
    find_lex $P5003, "$i"
    set $I5001, $P5003
    substr $S5001, $S5002, $I5001, 1
    box $P5004, $S5001
    set $P101, $P5004
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set $S5003, $P101
    set $P5005, $P5009[$S5003]
    unless_null $P5005, fallback1321
    nqp_get_sc_object $P5010, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5005, $P5010
  fallback1321:
    unless $P5005 goto if401_else1319 
.annotate 'line', 1958
.annotate 'line', 1959
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."wants-value"($P101)
    unless $P5013 goto if402_else1322 
    find_lex $P5014, "$i"
    set $N5002, $P5014
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5015, "$len"
    set $N5004, $P5015
    iseq $I5002, $N5001, $N5004
    unless $I5002 goto if403_end1325 
.annotate 'line', 1960
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5016, "$opt"
    set $S5009, $P5016
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5017, $S5004
    die $P5017
  if403_end1325:
.annotate 'line', 1963
    find_lex $P5018, "$result"
    find_lex $P5019, "$opt"
    set $S5011, $P5019
    find_lex $P5020, "$i"
    set $N5006, $P5020
    set $N5007, 1
    add $N5005, $N5006, $N5007
    set $I5003, $N5005
    substr $S5010, $S5011, $I5003
    $P5018."add-option"($P101, $S5010)
    die 0, .CONTROL_LOOP_LAST
    box $P5024, 0
    set $P5023, $P5024
    goto if402_end1323
  if402_else1322:
.annotate 'line', 1966
.annotate 'line', 1967
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
    set $P5023, $P5022
  if402_end1323:
    goto if401_end1320
  if401_else1319:
.annotate 'line', 1970
    find_lex $P5025, "$opt"
    set $S5016, $P5025
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5026, $S5012
    die $P5026
  if401_end1320:
    find_lex $P5027, "$i"
    set tmp_5, $P5027
    set $N5009, tmp_5
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5028, $N5008
    store_lex "$i", $P5028
    .return (tmp_5) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1360235112.107") :anon :lex :outer("cuid_181_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2011
    .const 'Sub' $P5014 = 'cuid_161_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_162_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_163_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_164_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_165_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_166_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_167_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_168_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_169_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_170_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_171_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_172_1360235112.107' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_173_1360235112.107' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_161_1360235112.107' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_162_1360235112.107' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_163_1360235112.107' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_164_1360235112.107' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_165_1360235112.107' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_166_1360235112.107' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_167_1360235112.107' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_168_1360235112.107' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_169_1360235112.107' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_170_1360235112.107' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_171_1360235112.107' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_172_1360235112.107' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_173_1360235112.107' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_161_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2042
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_14, default1336
    box $P5042, "<unknown>"
    set _lex_param_2, $P5042
  default1336:
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    find_dynamic_lex $P5019, "%*COMPILING"
    unless_null $P5019, fallback1331
    nqp_get_sc_object $P5022, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5021, $P5022
    set $P5020, $P5021["%COMPILING"]
    unless_null $P5020, fallback1332
    nqp_get_sc_object $P5024, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    get_who $P5023, $P5024
    new $P5025, 'Hash'
    set $P5023["%COMPILING"], $P5025
    set $P5020, $P5025
  fallback1332:
    unless_null $P5020, vivi_4061333
    die "Contextual %*COMPILING not found"
    box $P5026, "Contextual %*COMPILING not found"
    set $P5020, $P5026
  vivi_4061333:
    set $P5019, $P5020
  fallback1331:
    set $P5018, $P5019["%?OPTIONS"]
    unless_null $P5018, fallback1334
    nqp_get_sc_object $P5027, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5018, $P5027
  fallback1334:
    set $P5017, $P5018["precomp"]
    unless_null $P5017, fallback1335
    nqp_get_sc_object $P5028, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5017, $P5028
  fallback1335:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5017
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    box $P5031, 0
    repr_bind_attr_obj $P5029, $P5030, "$!num_code_refs", $P5031
    nqp_decontainerize $P5032, _lex_param_0
    nqp_get_sc_object $P5033, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    new $P5034, 'ResizablePMCArray'
    repr_bind_attr_obj $P5032, $P5033, "$!code_ref_blocks", $P5034
    nqp_decontainerize $P5035, _lex_param_0
    nqp_get_sc_object $P5036, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!sc"
    $P5038 = $P5037."set_description"(_lex_param_2)
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc"
    nqp_push_compiling_sc $P5041
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_162_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2059
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!addr_to_slot"
    get_id $I5001, _lex_param_1
    set $S5001, $I5001
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1337
    nqp_get_sc_object $P5006, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P5002, $P5006
  fallback1337:
    set $P101, $P5002
    defined $I5002, $P101
    if $I5002 goto unless407_end1339 
.annotate 'line', 2061
    box $P5007, "slot_for_object called on object not in context"
    die $P5007
  unless407_end1339:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_163_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2068
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_164_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2077
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 2080
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_165_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2086
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_166_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2091
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_167_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2097
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_15, default1346
    nqp_get_sc_object $P5015, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5015
  default1346:
    if haz_param_16, default1347
    nqp_get_sc_object $P5016, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_2, $P5016
  default1347:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if408_else1340 
.annotate 'line', 2098
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if409_end1343 
.annotate 'line', 2099
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if409_end1343:
    set $P5014, $P5008
    goto if408_end1341
  if408_else1340:
.annotate 'line', 2101
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if410_end1345 
.annotate 'line', 2102
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if410_end1345:
    set $P5014, $P5013
  if408_end1341:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_168_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2108
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_17, default1354
    nqp_get_sc_object $P5015, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_1, $P5015
  default1354:
    if haz_param_18, default1355
    nqp_get_sc_object $P5016, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856", 25
    set _lex_param_2, $P5016
  default1355:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if411_else1348 
.annotate 'line', 2109
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if412_end1351 
.annotate 'line', 2110
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if412_end1351:
    set $P5014, $P5008
    goto if411_end1349
  if411_else1348:
.annotate 'line', 2112
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if413_end1353 
.annotate 'line', 2113
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if413_end1353:
    set $P5014, $P5013
  if411_end1349:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_169_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2118
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_170_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2123
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_171_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2127
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_172_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2132
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_173_1360235112.107") :anon :lex :outer("cuid_231_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2137
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1360235112.107") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_232_1360235112.107' 
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
    .const 'Sub' $P5001 = "cuid_181_1360235112.107" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134"
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
    push $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360235108.283"
    push $P5004, "src\\stage2\\QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "BA90852D9309BD10AA449854DBAFD1DA5F2ED417-1360235104.856"
    push $P5004, "src\\stage2\\NQPCORE.setting"
    push $P5004, "bless"
    push $P5004, "BUILDALL"
    push $P5004, "new"
    push $P5004, "Str"
    push $P5004, "Numeric"
    push $P5004, "Int"
    push $P5004, "at_pos"
    push $P5004, "at_key"
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
    push $P5004, "sigil"
    push $P5004, "twigil"
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
    push $P5004, "alt_nfa__1_1360235112.236"
    push $P5004, "alt_nfa__2_1360235112.265"
    push $P5004, "$@%&"
    push $P5004, "*!?"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1360235112.337"
    push $P5004, "alt_nfa__4_1360235112.338"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1360235112.355"
    push $P5004, "Ee"
    push $P5004, "alt_nfa__6_1360235112.429"
    push $P5004, "alt_nfa__7_1360235112.441"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1360235112.476"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1360235112.513"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "6F207129B0708369A315ED3D47DFB8B452CF56E2-1360235101.507"
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
    push $P5004, "2A5BD8D2F017911EBF2A5D1B91B7A8E3733D2938-1360235106.594"
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
    .const 'Sub' $P5005 = 'cuid_232_1360235112.107' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AgAAAEAAAAAFAAAAaAAAAA0AAADQAAAAuh8AAOsAAABqLgAAUM0AAAAAAABQzQAAAAAAAFDNAABQzQAAAAAAAAUAAAAGAAAADgAAAA8AAAAQAQAAAAAAABMBAAAUAQAAIwEAACQBAAABAAAAAAAAAAEAAAAKAQAAAQAAALIBAAABAAAATAIAAAEAAABkCwAAAQAAAKIOAAABAAAAxBMAAAEAAACqFQAAAQAAAAQYAAABAAAAFhsAAAEAAADIHAAAAQAAAHAdAAABAAAAQh4AAAAAAAC2AAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAtwAAAAMAAAACAAAAAAC4AAAABAAAAAIAAQAAACAAAAAHAAAAAgABAAAAVAAAAAgAAAACAAEAAABhAAAACQAAAAIAAQAAAGcAAAAKAAAAAgABAAAAawAAAAsAAAACAAAAAAC5AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAALoAAAAAAAAAAQAAAAoAAQAAAAwAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAALsAAAAAAAAAAgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAAAAAAC8AAAAAAAAAAMAAAAKAAAAAAAKAIIAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAABkAAAACAAIAAAAqAAAAGgAAAAIAAgAAACwAAAAbAAAAAgACAAAALQAAABwAAAACAAEAAABiAAAAHQAAAAIAAQAAAGMAAAAeAAAAAgABAAAAZAAAAB8AAAACAAEAAABlAAAAIAAAAAIAAQAAAGYAAAAhAAAAAgABAAAAdwAAACIAAAACAAEAAAB4AAAAIwAAAAIAAQAAAHkAAAAkAAAAAgABAAAAegAAACUAAAACAAEAAAB7AAAAJgAAAAIAAQAAAHwAAAAnAAAAAgABAAAAfQAAACgAAAACAAEAAAB+AAAAKQAAAAIAAQAAAH8AAAAqAAAAAgABAAAAgAAAACsAAAACAAEAAACBAAAALAAAAAIAAQAAAIIAAAAtAAAAAgABAAAAgwAAAC4AAAACAAEAAACEAAAALwAAAAIAAQAAAIUAAAAwAAAAAgABAAAAhgAAADEAAAACAAEAAACHAAAAMgAAAAIAAQAAAIgAAAAzAAAAAgABAAAAiQAAADQAAAACAAEAAACKAAAANQAAAAIAAQAAAIsAAAA2AAAAAgABAAAAjAAAADcAAAACAAEAAACNAAAAOAAAAAIAAQAAAI4AAAA5AAAAAgABAAAAjwAAADoAAAACAAEAAACQAAAAOwAAAAIAAQAAAJEAAAA8AAAAAgABAAAAkgAAAD0AAAACAAEAAACTAAAAPgAAAAIAAQAAAJQAAAA/AAAAAgABAAAAlQAAAEAAAAACAAEAAACWAAAAQQAAAAIAAQAAAJcAAABCAAAAAgABAAAAmAAAAEMAAAACAAEAAACZAAAARAAAAAIAAQAAAJoAAABFAAAAAgABAAAAmwAAAEYAAAACAAEAAACcAAAARwAAAAIAAQAAAJ0AAABIAAAAAgABAAAAngAAAEkAAAACAAEAAACfAAAASgAAAAIAAQAAAKAAAABLAAAAAgABAAAAoQAAAEwAAAACAAEAAACiAAAATQAAAAIAAQAAAKMAAABOAAAAAgABAAAApAAAAE8AAAACAAEAAAClAAAAUAAAAAIAAQAAAKYAAABRAAAAAgABAAAApwAAAFIAAAACAAAAAAA4AAAAUwAAAAIAAAAAAAQAAABUAAAAAgAAAAAABQAAAFUAAAACAAAAAAAGAAAAVgAAAAIAAAAAAAcAAABXAAAAAgAAAAAACAAAAFgAAAACAAAAAAAJAAAAWQAAAAIAAAAAAAoAAABaAAAAAgAAAAAACwAAAFsAAAACAAAAAAAMAAAAXAAAAAIAAAAAAA0AAABdAAAAAgAAAAAADgAAAF4AAAACAAAAAAAPAAAAXwAAAAIAAAAAABAAAABgAAAAAgAAAAAAEQAAAGEAAAACAAAAAAASAAAAYgAAAAIAAAAAABMAAABjAAAAAgAAAAAAFAAAAGQAAAACAAAAAAAVAAAAZQAAAAIAAAAAABYAAABmAAAAAgAAAAAAFwAAAGcAAAACAAAAAAAYAAAAaAAAAAIAAAAAABkAAABpAAAAAgAAAAAAGgAAAGoAAAACAAAAAAAbAAAAawAAAAIAAAAAABwAAABsAAAAAgAAAAAAHQAAAG0AAAACAAAAAAAeAAAAbgAAAAIAAAAAAB8AAABvAAAAAgAAAAAAIAAAAHAAAAACAAAAAAAhAAAAcQAAAAIAAAAAACIAAAByAAAAAgAAAAAAIwAAAHMAAAACAAAAAAAkAAAAdAAAAAIAAAAAACUAAAB1AAAAAgAAAAAAJgAAAHYAAAACAAAAAAAnAAAAdwAAAAIAAAAAACgAAAB4AAAAAgAAAAAAKQAAAHkAAAACAAAAAAAqAAAAegAAAAIAAAAAACsAAAB7AAAAAgAAAAAALAAAAHwAAAACAAAAAAAtAAAAfQAAAAIAAAAAAC4AAAB+AAAAAgAAAAAALwAAAH8AAAACAAAAAAAyAAAAgAAAAAIAAAAAADQAAACBAAAAAgAAAAAANQAAAIIAAAACAAAAAAA2AAAAgwAAAAIAAAAAADcAAACEAAAAAgAAAAAAOQAAAIUAAAACAAAAAAA6AAAAhgAAAAIAAAAAADsAAACHAAAAAgAAAAAAPAAAAIgAAAACAAAAAAA9AAAAiQAAAAIAAAAAAD4AAACKAAAAAgAAAAAAPwAAAIsAAAACAAAAAABAAAAAjAAAAAIAAAAAAEEAAACNAAAAAgAAAAAAQgAAAI4AAAACAAAAAABDAAAAjwAAAAIAAAAAAEQAAACQAAAAAgAAAAAARQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAADAAAAAgABAAAAYQAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABjAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGQAAAAEAAQACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGQAAAAMAAgABAAAAYQAAAAoACQAAAJEAAAAEAAAAAAAAAAAAkgAAAAQAAQAAAAAAAACTAAAABAACAAAAAAAAAJQAAAAEAAMAAAAAAAAAlQAAAAQABAAAAAAAAACWAAAABAAFAAAAAAAAAJcAAAAEAAYAAAAAAAAAmAAAAAQABwAAAAAAAACZAAAABAAIAAAAAAAAAAIAAAAAAAMAAAADAAAAAAC9AAAAAAAAAEYAAAAKAAAAAAAKAC4AAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAABkAAAACAAIAAAAqAAAAGgAAAAIAAgAAACwAAAAbAAAAAgACAAAALQAAAJoAAAACAAAAAABHAAAAmwAAAAIAAAAAAEgAAACcAAAAAgAAAAAASQAAAIoAAAACAAAAAABKAAAAWwAAAAIAAAAAAEsAAABUAAAAAgAAAAAATAAAAF8AAAACAAAAAABNAAAAYAAAAAIAAAAAAE4AAABuAAAAAgAAAAAATwAAAG8AAAACAAAAAABQAAAAZgAAAAIAAAAAAFEAAABoAAAAAgAAAAAAUgAAAGoAAAACAAAAAABTAAAAbAAAAAIAAAAAAFQAAACFAAAAAgAAAAAAVQAAAGIAAAACAAAAAABWAAAAYwAAAAIAAAAAAFcAAAByAAAAAgAAAAAAWAAAAHMAAAACAAAAAABZAAAAdAAAAAIAAAAAAFoAAAB1AAAAAgAAAAAAWwAAAHYAAAACAAAAAABcAAAAdwAAAAIAAAAAAF0AAAB4AAAAAgAAAAAAXgAAAHkAAAACAAAAAABfAAAAegAAAAIAAAAAAGAAAAB7AAAAAgAAAAAAYQAAAHwAAAACAAAAAABiAAAAfQAAAAIAAAAAAGMAAAB+AAAAAgAAAAAAZAAAAH8AAAACAAAAAABlAAAAgAAAAAIAAAAAAGYAAACBAAAAAgAAAAAAZwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABGAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAARgAAAAMAAAAAAL4AAAAAAAAAaAAAAAoAAAAAAAoAOgAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAAAAABpAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAGQAAAAIAAgAAACoAAAAaAAAAAgACAAAALAAAABsAAAACAAIAAAAtAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACkAAAAAgAAAAAAcQAAAKUAAAACAAAAAAByAAAApgAAAAIAAAAAAHMAAACnAAAAAgAAAAAAdAAAAIMAAAACAAAAAAB1AAAAqAAAAAIAAAAAAHYAAACpAAAAAgAAAAAAdwAAAKoAAAACAAAAAAB4AAAAqwAAAAIAAAAAAHkAAACsAAAAAgAAAAAAegAAAK0AAAACAAAAAAB7AAAArgAAAAIAAAAAAHwAAACvAAAAAgAAAAAAfQAAALAAAAACAAAAAAB+AAAAsQAAAAIAAAAAAH8AAACyAAAAAgAAAAAAgAAAALMAAAACAAAAAACBAAAAtAAAAAIAAAAAAIIAAAAeAAAAAgAAAAAAgwAAALUAAAACAAAAAACEAAAAtgAAAAIAAAAAAIUAAAC3AAAAAgAAAAAAhgAAALgAAAACAAAAAACHAAAAuQAAAAIAAAAAAIgAAAC6AAAAAgAAAAAAiQAAALsAAAACAAAAAACKAAAAvAAAAAIAAAAAAIsAAAC9AAAAAgAAAAAAjAAAAL4AAAACAAAAAACNAAAAvwAAAAIAAAAAAI4AAADAAAAAAgAAAAAAjwAAAMEAAAACAAAAAACQAAAAwgAAAAIAAAAAAJEAAADDAAAAAgAAAAAAkgAAAMQAAAACAAAAAACTAAAAxQAAAAIAAAAAAJQAAADGAAAAAgAAAAAAlQAAAMcAAAACAAAAAACWAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAGgAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAIAAgAAABkAAAACAAIAAAAZAAAAAQACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAABAAIAAgAAABkAAAABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAGgAAAAKAAsAAADIAAAABAAAAAAAAAAAAMkAAAAEAAEAAAAAAAAAygAAAAQAAgAAAAAAAADLAAAABAADAAAAAAAAAMwAAAAEAAQAAAAAAAAAzQAAAAQABQAAAAAAAADOAAAABAAGAAAAAAAAAM8AAAAEAAcAAAAAAAAA0AAAAAQACAAAAAAAAADRAAAABAAJAAAAAAAAANIAAAAEAAoAAAAAAAAAAAAAAL8AAAAAAAAAlwAAAAoAAAAAAAoAEgAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAGQAAAAIAAgAAACoAAAAaAAAAAgACAAAALAAAABsAAAACAAIAAAAtAAAA0wAAAAIAAAAAAJgAAADUAAAAAgAAAAAAmQAAANUAAAACAAAAAACaAAAA1gAAAAIAAAAAAJsAAADXAAAAAgAAAAAAnAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACXAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAJcAAAAKAAIAAADYAAAABAAAAAAAAAAAANkAAAAEAAEAAAAAAAAAAAAAAMAAAAAAAAAAnQAAAAoAAAAAAAoAFgAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAAAAACeAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAGQAAAAIAAgAAACoAAAAaAAAAAgACAAAALAAAABsAAAACAAIAAAAtAAAA2gAAAAIAAAAAAJ8AAACdAAAAAgAAAAAAoAAAANsAAAACAAAAAAChAAAA3AAAAAIAAAAAAKIAAADdAAAAAgAAAAAAowAAAN4AAAACAAAAAACkAAAA3wAAAAIAAAAAAKUAAADgAAAAAgAAAAAApgAAAB4AAAACAAAAAACnAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAJ0AAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAEAAgACAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAACdAAAACgAEAAAA4QAAAAQAAAAAAAAAAADZAAAABAABAAAAAAAAAOIAAAAEAAIAAAAAAAAA4wAAAAQAAwAAAAAAAAAAAAAAwQAAAAAAAACoAAAACgAAAAAACgAaAAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAZAAAAAgACAAAAKgAAABoAAAACAAIAAAAsAAAAGwAAAAIAAgAAAC0AAACdAAAAAgAAAAAAqQAAAOQAAAACAAAAAACqAAAA5QAAAAIAAAAAAKsAAADmAAAAAgAAAAAArAAAAOcAAAACAAAAAACtAAAA6AAAAAIAAAAAAK4AAADpAAAAAgAAAAAArwAAAOoAAAACAAAAAACwAAAA6wAAAAIAAAAAALEAAADsAAAAAgAAAAAAsgAAAO0AAAACAAAAAACzAAAA7gAAAAIAAAAAALQAAADvAAAAAgAAAAAAtQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACoAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAABAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAAqAAAAAoACAAAAPAAAAAEAAAAAAAAAAAA8QAAAAQAAQAAAAAAAADyAAAABAACAAAAAAAAAPMAAAAEAAMAAAAAAAAA9AAAAAQABAAAAAAAAAD1AAAABAAFAAAAAAAAAPYAAAAEAAYAAAAAAAAA9wAAAAQABwAAAAAAAAAAAAAA5gAAAAAAAAC3AAAACgAUAAAAIgEAAAIABQAAAAMAAAAlAQAAAgAFAAAACAAAACYBAAACAAUAAAAMAAAAJwEAAAIABQAAACoAAAAoAQAAAgAFAAAAMgAAACkBAAACAAUAAAA3AAAAKgEAAAIABQAAADwAAAArAQAAAgAFAAAAQQAAACwBAAACAAUAAABFAAAALQEAAAIABQAAAEoAAAAuAQAAAgAFAAAATwAAAC8BAAACAAUAAABYAAAAMAEAAAIABQAAAFoAAAAxAQAAAgAFAAAAYQAAADIBAAACAAUAAABlAAAAMwEAAAIABQAAAGkAAAA0AQAAAgAFAAAAbQAAADUBAAACAAUAAAB1AAAANgEAAAIABQAAAHgAAAA3AQAAAgAFAAAAggAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAC3AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAALcAAAADAAAAAADnAAAAAAAAALgAAAAKAAEAAAA4AQAAAgABAAAAAwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAC4AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAALgAAAADAAAAAADoAAAAAAAAALkAAAAKAAUAAAA5AQAAAgAAAAAAAwAAADoBAAACAAAAAABGAAAAOwEAAAIAAAAAAGgAAAA8AQAAAgAAAAAA6QAAAD0BAAACAAAAAACoAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAALkAAAADAAAAAADqAAAAAAAAAOkAAAAKAAIAAAA+AQAAAgAAAAAAlwAAAD8BAAACAAAAAACdAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAOkAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAACAAAABQAAAAAAAAABAAAAAgAAAAcAAAASAAAAAQAAAAIAAAAHAAAACAEAAAEAAAACAAAABwAAABwBAAABAAAAAgAAAAcAAAAwAQAAAQAAAAIAAAAHAAAARAEAAAEAAAACAAAABwAAAFgBAAABAAAAAgAAAAcAAABsAQAAAQAAAAIAAAAHAAAAgAEAAAEAAAACAAAABwAAAN4BAAABAAAAAgAAAAcAAABKAgAAAQAAAAIAAAAHAAAA1gIAAAEAAAACAAAABwAAANADAAABAAAAAgAAAAcAAAAkBAAAAQAAAAIAAAAFAAAAggQAAAEAAAACAAAABwAAAJQEAAABAAAAAgAAAAcAAABsBQAAAQAAAAIAAAAHAAAALAcAAAEAAAACAAAABwAAAHwHAAABAAAAAgAAAAcAAADMBwAAAQAAAAIAAAAHAAAA7AgAAAEAAAACAAAABwAAAPAJAAABAAAAAgAAAAcAAAAMCwAAAQAAAAIAAAAHAAAAEAwAAAEAAAACAAAABwAAACwNAAABAAAAAgAAAAcAAAAwDgAAAQAAAAIAAAAHAAAATA8AAAEAAAACAAAABwAAAFAQAAABAAAAAgAAAAcAAAC0FAAAAQAAAAIAAAAHAAAAPhsAAAEAAAACAAAABwAAAFocAAABAAAAAgAAAAcAAABuHAAAAQAAAAIAAAAHAAAAKh0AAAEAAAACAAAABwAAANAdAAABAAAAAgAAAAcAAACMHgAAAQAAAAIAAAAHAAAASB8AAAEAAAACAAAABwAAAAQgAAABAAAAAgAAAAcAAADAIAAAAQAAAAIAAAAHAAAAfCEAAAEAAAACAAAABwAAADgiAAABAAAAAgAAAAcAAAC+IwAAAQAAAAIAAAAHAAAARCUAAAEAAAACAAAABwAAAA4mAAABAAAAAgAAAAcAAADYJgAAAQAAAAIAAAAHAAAA2icAAAEAAAACAAAABwAAAC4oAAABAAAAAgAAAAcAAACCKAAAAQAAAAIAAAAHAAAAzCgAAAEAAAACAAAABwAAAGIpAAABAAAAAgAAAAcAAABmKgAAAQAAAAIAAAAFAAAAzC4AAAEAAAACAAAABQAAAN4uAAABAAAAAgAAAAUAAADwLgAAAQAAAAIAAAAFAAAAAi8AAAEAAAACAAAABwAAABQvAAABAAAAAgAAAAcAAADiLwAAAQAAAAIAAAAFAAAANjAAAAEAAAACAAAABQAAAEgwAAABAAAAAgAAAAUAAABaMAAAAQAAAAIAAAAFAAAAbDAAAAEAAAACAAAABQAAAH4wAAABAAAAAgAAAAUAAACQMAAAAQAAAAIAAAAFAAAAojAAAAEAAAACAAAABQAAALQwAAABAAAAAgAAAAUAAADGMAAAAQAAAAIAAAAFAAAA2DAAAAEAAAAAAAAABAAAAOowAAAAAAAAAgAAAAUAAADqMAAAAQAAAAIAAAAFAAAA/DAAAAEAAAACAAAABQAAAA4xAAABAAAAAgAAAAUAAAAgMQAAAQAAAAIAAAAFAAAAMjEAAAEAAAACAAAABQAAAEQxAAABAAAAAgAAAAUAAABWMQAAAQAAAAIAAAAFAAAAaDEAAAEAAAACAAAABQAAAHoxAAABAAAAAgAAAAUAAACMMQAAAQAAAAIAAAAFAAAAnjEAAAEAAAACAAAABQAAALAxAAABAAAAAgAAAAUAAADCMQAAAQAAAAIAAAAFAAAA1DEAAAEAAAACAAAABQAAAOYxAAABAAAAAgAAAAUAAAD4MQAAAQAAAAIAAAAFAAAACjIAAAEAAAACAAAABQAAABwyAAABAAAAAgAAAAUAAAAuMgAAAQAAAAIAAAAFAAAAQDIAAAEAAAACAAAABQAAAFIyAAABAAAAAgAAAAUAAABkMgAAAQAAAAIAAAAFAAAAdjIAAAEAAAACAAAABQAAAIgyAAABAAAAAgAAAAUAAACaMgAAAQAAAAIAAAAFAAAArDIAAAEAAAACAAAABQAAAL4yAAABAAAAAgAAAAUAAADQMgAAAQAAAAIAAAAFAAAA4jIAAAEAAAACAAAABQAAAPQyAAABAAAAAgAAAAUAAAAGMwAAAQAAAAIAAAAFAAAAGDMAAAEAAAACAAAABQAAACozAAABAAAAAAAAAAUAAAA8MwAAAAAAAAIAAAAFAAAAPDMAAAEAAAACAAAABQAAAE4zAAABAAAAAgAAAAUAAABgMwAAAQAAAAIAAAAFAAAAcjMAAAEAAAACAAAABQAAAIQzAAABAAAAAgAAAAUAAACWMwAAAQAAAAIAAAAFAAAAqDMAAAEAAAACAAAABQAAALozAAABAAAAAgAAAAUAAADMMwAAAQAAAAIAAAAFAAAA3jMAAAEAAAACAAAABQAAAPAzAAABAAAAAgAAAAUAAAACNAAAAQAAAAIAAAAFAAAAFDQAAAEAAAACAAAABQAAACY0AAABAAAAAgAAAAUAAAA4NAAAAQAAAAIAAAAFAAAASjQAAAEAAAACAAAABQAAAFw0AAABAAAAAgAAAAUAAABuNAAAAQAAAAIAAAAFAAAAgDQAAAEAAAACAAAABQAAAJI0AAABAAAAAgAAAAUAAACkNAAAAQAAAAIAAAAFAAAAtjQAAAEAAAACAAAABQAAAMg0AAABAAAAAgAAAAUAAADaNAAAAQAAAAIAAAAFAAAA7DQAAAEAAAACAAAABQAAAP40AAABAAAAAgAAAAUAAAAQNQAAAQAAAAIAAAAFAAAAIjUAAAEAAAACAAAABQAAADQ1AAABAAAAAgAAAAUAAABGNQAAAQAAAAIAAAAFAAAAWDUAAAEAAAACAAAABQAAAGo1AAABAAAAAgAAAAUAAAB8NQAAAQAAAAIAAAAFAAAAjjUAAAEAAAACAAAABQAAAKA1AAABAAAAAgAAAAUAAACyNQAAAQAAAAIAAAAFAAAAxDUAAAEAAAACAAAABQAAANY1AAABAAAAAgAAAAUAAADoNQAAAQAAAAIAAAAFAAAA+jUAAAEAAAACAAAABQAAAAw2AAABAAAAAgAAAAUAAAAeNgAAAQAAAAIAAAAFAAAAMDYAAAEAAAACAAAABQAAAEI2AAABAAAAAgAAAAUAAABUNgAAAQAAAAIAAAAFAAAAZjYAAAEAAAAAAAAABgAAAHg2AAAAAAAAAgAAAAUAAAB4NgAAAQAAAAIAAAAFAAAAijYAAAEAAAACAAAABQAAAJw2AAABAAAAAgAAAAUAAACuNgAAAQAAAAIAAAAFAAAAwDYAAAEAAAAAAAAABwAAANI2AAAAAAAAAgAAAAUAAADSNgAAAQAAAAIAAAAFAAAA5DYAAAEAAAACAAAABQAAAPY2AAABAAAAAgAAAAUAAAAINwAAAQAAAAIAAAAFAAAAGjcAAAEAAAACAAAABQAAACw3AAABAAAAAgAAAAUAAAA+NwAAAQAAAAIAAAAFAAAAUDcAAAEAAAACAAAABQAAAGI3AAABAAAAAgAAAAUAAAB0NwAAAQAAAAAAAAAIAAAAhjcAAAAAAAACAAAABQAAAIY3AAABAAAAAgAAAAUAAACYNwAAAQAAAAIAAAAFAAAAqjcAAAEAAAACAAAABQAAALw3AAABAAAAAgAAAAUAAADONwAAAQAAAAIAAAAFAAAA4DcAAAEAAAACAAAABQAAAPI3AAABAAAAAgAAAAUAAAAEOAAAAQAAAAIAAAAFAAAAFjgAAAEAAAACAAAABQAAACg4AAABAAAAAgAAAAUAAAA6OAAAAQAAAAIAAAAFAAAATDgAAAEAAAACAAAABQAAAF44AAABAAAAAwAAAAAAAABwOAAAAQAAAAAAAAAJAAAAgDgAAAAAAAAAAAAACgAAAIA4AAAAAAAAAAAAAAsAAACAOAAAAAAAAAMAAAAAAAAAgDgAAAEAAAADAAAAAAAAAJA4AAABAAAABAAAAAcAAACgOAAAAQAAAAQAAAAHAAAAnEEAAAEAAAAEAAAABwAAAFhFAAABAAAABAAAAAcAAAAaSwAAAQAAAAQAAAAHAAAA6kwAAAEAAAAEAAAABwAAAOpOAAABAAAAAQAAAAMAAABqUQAAAQAAAAEAAAADAAAAFlIAAAEAAAABAAAAAwAAAPRgAAABAAAAAQAAAAMAAAAsYgAAAQAAAAEAAAADAAAAunQAAAEAAAABAAAAAwAAANp7AAABAAAAAQAAAAMAAADGgwAAAQAAAAEAAAADAAAAZIsAAAEAAAABAAAAAwAAAEiQAAABAAAAAQAAAAMAAAAslQAAAQAAAAEAAAADAAAAVJYAAAEAAAAEAAAACQAAACabAAABAAAABAAAAAkAAABGmwAAAQAAAAQAAAAJAAAAbpsAAAEAAAAEAAAACQAAAJabAAABAAAABAAAAAkAAAC2mwAAAQAAAAQAAAAJAAAA3psAAAEAAAAEAAAACQAAAAacAAABAAAABAAAAAkAAAAunAAAAQAAAAQAAAAJAAAATpwAAAEAAAAEAAAACQAAAHacAAABAAAABAAAAAkAAACWnAAAAQAAAAQAAAAJAAAAtpwAAAEAAAAEAAAACQAAANacAAABAAAABAAAAAkAAAD2nAAAAQAAAAQAAAAJAAAAFp0AAAEAAAAEAAAACQAAADadAAABAAAABAAAAAkAAABWnQAAAQAAAAQAAAAJAAAAfp0AAAEAAAAEAAAACQAAAKadAAABAAAABAAAAAkAAADOnQAAAQAAAAQAAAAJAAAA9p0AAAEAAAAEAAAACQAAAB6eAAABAAAABAAAAAkAAABGngAAAQAAAAQAAAAJAAAAZp4AAAEAAAAEAAAACQAAAIaeAAABAAAAAwAAAAAAAACmngAAAQAAAAMAAAAAAAAAtp4AAAEAAAADAAAAAAAAAMaeAAABAAAAAAAAAAwAAADWngAAAAAAAAMAAAAAAAAA1p4AAAEAAAALAAAAAAAAAAAAAQABAAEAAQALAAAAAAABAAAACgAEAAAAXQAAAAUAAAAAAAAAAED4AAAABAAAAAAAAAAAAFUAAAAFAAAAAAAAAPA/XgAAAAUAAAAAAAAAAEAHAAQAAAAHAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBdAAAABAABAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFUAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAXgAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAACAAAAAQABAAEAAQABAAsAAAAAAAMAAAABAAEAAQABAAEACwAAAAAABAAAAAEAAQABAAEAAQALAAAAAAAFAAAAAQABAAEAAQABAAsAAAAAAAYAAAABAAEAAQABAAEACwAAAAAABwAAAAEAAQABAAEAAQALAAAAAAAIAAAACgACAAAAWQAAAAUAAAAAAAAA8D/4AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFkAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAACQAAAAoAAwAAAPkAAAAFAAAAAAAAAPA/VgAAAAUAAAAAAAAA8D/4AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFYAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAACgAAAAoAAwAAAPkAAAAFAAAAAAAAAPA/VwAAAAUAAAAAAAAA8D/4AAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFcAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAALAAAACgAEAAAA+QAAAAQAAQAAAAAAAABYAAAABAABAAAAAAAAAPgAAAAEAAAAAAAAAAAAWgAAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABAAAAAAAAAAAAAQACAAAAAAAAAAGAFoAAAAEAAAAAAAAAAAACgABAAAA+gAAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFgAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAWgAAAAQAAAAAAAAAAAABAAEACwAAAAAADAAAAAoAAQAAAPgAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAADQAAAAoAAgAAAFUAAAAFAAAAAAAAAPA/+AAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBfAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAA4AAAABAAEAAQABAAsAAAAAAA8AAAAKAAQAAACHAAAABQAAAAAAAADwP/gAAAAEAAAAAAAAAAAAYwAAAAUAAAAAAAAAAECIAAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIcAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYwAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCIAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAABAAAAAKAAUAAAD4AAAABAAAAAAAAAAAAHEAAAAFAAAAAAAAAPA/hwAAAAUAAAAAAAAA8D9jAAAABQAAAAAAAAAAQIgAAAAFAAAAAAAAAPA/BAAAAAAAAAAAAAoAAQAAAPsAAAAHAAMAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBxAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIcAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYwAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCIAAAABAAAAAAAAAAAAAEAAQALAAAAAAARAAAACgABAAAA+AAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgD8AAAABAAAAAAAAAAAAAEAAQABAAsAAAAAABIAAAAKAAEAAAD4AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAP0AAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAEwAAAAoAAQAAAPgAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAFAAAAAoAAgAAAPgAAAAEAAAAAAAAAAAAZgAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAVAAAACgABAAAA+AAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgD+AAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAsAAAAAABYAAAAKAAIAAAD4AAAABAAAAAAAAAAAAGgAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAFwAAAAoAAQAAAPgAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYA/wAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAYAAAACgACAAAA+AAAAAQAAAAAAAAAAABqAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAADAAAAAAAAAAEAAQABAAsAAAAAABkAAAAKAAEAAAD4AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAABAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAGgAAAAoAAgAAAPgAAAAEAAAAAAAAAAAAbAAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGwAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAbAAAACgAGAAAA+AAAAAQAAAAAAAAAAAABAQAABQAAAAAAAADwP2wAAAAFAAAAAAAAAPA/agAAAAUAAAAAAAAA8D9oAAAABQAAAAAAAADwP2YAAAAFAAAAAAAAAPA/BwAHAAAABwAAAAAABwAGAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABAAIAAAAAAAAAAYAZgAAAAQAAAAAAAAAAAAHAAwAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGoAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAAAAAAAAAAAAoAAgAAAAIBAAAHAAQAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGoAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAAAAAAAAAAAAMBAAAHAAIAAAAHAAcAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAgAAAAAAAAAHAAwAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGoAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBmAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAAAQABAAsAAAAAABwAAAAKAAMAAAAEAQAABAABAAAAAAAAAPgAAAAEAAAAAAAAAAAAcAAAAAQAAgAAAAAAAAAHABAAAAAHAAAAAAAHAAkAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABAAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAgAAAAAAAAABgBwAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAJAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAALAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQACAAAAAAAAAAGAHAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAA4AAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAAIAAAAAAAAAAYAcAAAAAQAAAAAAAAAAAAHAAAAAAAKAAEAAAAFAQAABwADAAAABwAGAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAcAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAkAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAgAAAAAAAAABgBwAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQACAAAAAAAAAAGAHAAAAAEAAAAAAAAAAAABwAAAAAAAQABAAsAAAAAAB0AAAAKAAEAAAD4AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAYBAAAEAAIAAAAAAAAABwAGAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAEAAQALAAAAAAAfAAAACgABAAAA+AAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCGAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACAAAAAKAAIAAAD4AAAABAAAAAAAAAAAAIgAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhgAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAhAAAACgABAAAA+AAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCGAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACIAAAAKAAEAAAD4AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIYAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAIwAAAAoAAQAAAPgAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhgAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAkAAAACgABAAAA+AAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCGAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACUAAAAKAAEAAAD4AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIYAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAJgAAAAoAAQAAAPgAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhgAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAnAAAACgADAAAA+AAAAAQAAAAAAAAAAABoAAAABQAAAAAAAADwP2kAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhgAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAHAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBpAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQALAAAAAAAoAAAACgADAAAA+AAAAAQAAAAAAAAAAABqAAAABQAAAAAAAADwP2sAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhgAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAAIAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBrAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQALAAAAAAApAAAACgACAAAA+AAAAAQAAAAAAAAAAACBAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIYAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAKgAAAAoAAgAAAPgAAAAEAAAAAAAAAAAACQEAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCGAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACsAAAAKAAQAAAD4AAAABQAAAAAAAADwPwoBAAAFAAAAAAAAAPA/CwEAAAUAAAAAAAAA8D8MAQAABQAAAAAAAADwPwQAAAAAAAAAAAAKAAEAAAANAQAABwACAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAACAAAAAAAwAAAAAgAAAAAAMQAAAAsAAAAAACwAAAAKAAEAAAD4AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAC0AAAAKAAEAAAD4AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAC4AAAAKAAIAAABuAAAABAABAAAAAAAAAPgAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQAHAAEAAAACAAAAAAAzAAAACwAAAAAALwAAAAoAAQAAAPgAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwAGAAAABQAAAAAAAAAQQAQAIAAAAAAAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAMAAAAAoAAgAAAPgAAAAEAAAAAAAAAAAAfwAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH8AAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAxAAAACgACAAAA+AAAAAQAAAAAAAAAAACAAAAABQAAAAAAAADwPwcACgAAAAcAAAAAAAcADAAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAAGEAGAA4BAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAgwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCAAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAJAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAoAAQAAAA8BAAAHAAQAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCAAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcACAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAA4BAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAAAAAAAAAAABAAEACwAAAAAAMgAAAAEAAQABAAEACwAAAAAAMwAAAAEAAQABAAEACwAAAAAANAAAAAEAAQABAAEACwAAAAAANQAAAAEAAQABAAEACwAAAAAANgAAAAoAAgAAAPgAAAAEAAAAAAAAAAAAYgAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAA3AAAACgABAAAA+AAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAA4AAAAAQABAAEAAQALAAAAAAA5AAAAAQABAAEAAQALAAAAAAA6AAAAAQABAAEAAQALAAAAAAA7AAAAAQABAAEAAQALAAAAAAA8AAAAAQABAAEAAQALAAAAAAA9AAAAAQABAAEAAQALAAAAAAA+AAAAAQABAAEAAQALAAAAAAA/AAAAAQABAAEAAQALAAAAAABAAAAAAQABAAEAAQALAAAAAABBAAAAAQABAAEAAQALAAAAAABCAAAAAQABAAEAAQALAAAAAABDAAAAAQABAAEAAQALAAAAAABEAAAAAQABAAEAAQALAAAAAABFAAAAAQABAAEAAQALAAAAAABGAAAAAQABAAEAAQALAAAAAABHAAAAAQABAAEAAQALAAAAAABIAAAAAQABAAEAAQALAAAAAABJAAAAAQABAAEAAQALAAAAAABKAAAAAQABAAEAAQALAAAAAABLAAAAAQABAAEAAQALAAAAAABMAAAAAQABAAEAAQALAAAAAABNAAAAAQABAAEAAQALAAAAAABOAAAAAQABAAEAAQALAAAAAABPAAAAAQABAAEAAQALAAAAAABQAAAAAQABAAEAAQALAAAAAABRAAAAAQABAAEAAQALAAAAAABSAAAAAQABAAEAAQALAAAAAABTAAAAAQABAAEAAQALAAAAAABUAAAAAQABAAEAAQALAAAAAABVAAAAAQABAAEAAQALAAAAAABWAAAAAQABAAEAAQALAAAAAABXAAAAAQABAAEAAQALAAAAAABYAAAAAQABAAEAAQALAAAAAABZAAAAAQABAAEAAQALAAAAAABaAAAAAQABAAEAAQALAAAAAABbAAAAAQABAAEAAQALAAAAAABcAAAAAQABAAEAAQALAAAAAABdAAAAAQABAAEAAQALAAAAAABeAAAAAQABAAEAAQALAAAAAABfAAAAAQABAAEAAQALAAAAAABgAAAAAQABAAEAAQALAAAAAABhAAAAAQABAAEAAQALAAAAAABiAAAAAQABAAEAAQALAAAAAABjAAAAAQABAAEAAQALAAAAAABkAAAAAQABAAEAAQALAAAAAABlAAAAAQABAAEAAQALAAAAAABmAAAAAQABAAEAAQALAAAAAABnAAAAAQABAAEAAQALAAAAAABoAAAAAQABAAEAAQALAAAAAABpAAAAAQABAAEAAQALAAAAAABqAAAAAQABAAEAAQALAAAAAABrAAAAAQABAAEAAQALAAAAAABsAAAAAQABAAEAAQALAAAAAABtAAAAAQABAAEAAQALAAAAAABuAAAAAQABAAEAAQALAAAAAABvAAAAAQABAAEAAQALAAAAAABwAAAAAQABAAEAAQALAAAAAABxAAAAAQABAAEAAQALAAAAAAByAAAAAQABAAEAAQALAAAAAABzAAAAAQABAAEAAQALAAAAAAB0AAAAAQABAAEAAQALAAAAAAB1AAAAAQABAAEAAQALAAAAAAB2AAAAAQABAAEAAQALAAAAAAB3AAAAAQABAAEAAQALAAAAAAB4AAAAAQABAAEAAQALAAAAAAB5AAAAAQABAAEAAQALAAAAAAB6AAAAAQABAAEAAQALAAAAAAB7AAAAAQABAAEAAQALAAAAAAB8AAAAAQABAAEAAQALAAAAAAB9AAAAAQABAAEAAQALAAAAAAB+AAAAAQABAAEAAQALAAAAAAB/AAAAAQABAAEAAQALAAAAAACAAAAAAQABAAEAAQALAAAAAACBAAAAAQABAAEAAQALAAAAAACCAAAAAQABAAEAAQALAAAAAACDAAAAAQABAAEAAQALAAAAAACEAAAAAQABAAEAAQALAAAAAACFAAAAAQABAAEAAQALAAAAAACGAAAAAQABAAEAAQALAAAAAACHAAAAAQABAAEAAQALAAAAAACIAAAAAQABAAEAAQALAAAAAACJAAAAAQABAAEAAQALAAAAAACKAAAAAQABAAEAAQALAAAAAACLAAAAAQABAAEAAQALAAAAAACMAAAAAQABAAEAAQALAAAAAACNAAAAAQABAAEAAQALAAAAAACOAAAAAQABAAEAAQALAAAAAACPAAAAAQABAAEAAQALAAAAAACQAAAAAQABAAEAAQALAAAAAACRAAAAAQABAAEAAQALAAAAAACSAAAAAQABAAEAAQALAAAAAACTAAAAAQABAAEAAQALAAAAAACUAAAAAQABAAEAAQALAAAAAACVAAAAAQABAAEAAQALAAAAAACWAAAAAQABAAEAAQALAAAAAACXAAAAAQABAAEAAQALAAAAAACYAAAAAQABAAEAAQALAAAAAACZAAAAAQABAAEAAQALAAAAAACaAAAAAQABAAEAAQALAAAAAACbAAAAAQABAAEAAQALAAAAAACcAAAAAQABAAEAAQALAAAAAACdAAAAAQABAAEAAQALAAAAAACeAAAAAQABAAEAAQALAAAAAACfAAAAAQABAAEAAQALAAAAAACgAAAAAQABAAEAAQALAAAAAAChAAAAAQABAAEAAQALAAAAAACiAAAAAQABAAEAAQALAAAAAACjAAAAAQABAAEAAQALAAAAAACkAAAAAQABAAEAAQALAAAAAAClAAAAAQABAAEAAQALAAAAAACmAAAAAQABAAEAAQALAAAAAACnAAAAAQABAAEAAQALAAAAAACoAAAAAQABAAEAAQALAAAAAACpAAAAAQABAAEAAQALAAAAAACqAAAAAQABAAEAAQALAAAAAACrAAAAAQABAAEAAQALAAAAAACsAAAAAQABAAEAAQARAQAABwAAAAAACgAAAAAAEgEAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAAGABUBAAAKAAAAAAAKAD8AAABTAAAAAgAAAAAABAAAAFQAAAACAAAAAAAFAAAAVQAAAAIAAAAAAAYAAABWAAAAAgAAAAAABwAAAFcAAAACAAAAAAAIAAAAWAAAAAIAAAAAAAkAAABZAAAAAgAAAAAACgAAAFoAAAACAAAAAAALAAAAWwAAAAIAAAAAAAwAAABcAAAAAgAAAAAADQAAAF0AAAACAAAAAAAOAAAAXgAAAAIAAAAAAA8AAABfAAAAAgAAAAAAEAAAAGAAAAACAAAAAAARAAAAYQAAAAIAAAAAABIAAABiAAAAAgAAAAAAEwAAAGMAAAACAAAAAAAUAAAAZAAAAAIAAAAAABUAAABlAAAAAgAAAAAAFgAAAGYAAAACAAAAAAAXAAAAZwAAAAIAAAAAABgAAABoAAAAAgAAAAAAGQAAAGkAAAACAAAAAAAaAAAAagAAAAIAAAAAABsAAABrAAAAAgAAAAAAHAAAAGwAAAACAAAAAAAdAAAAbQAAAAIAAAAAAB4AAABuAAAAAgAAAAAAHwAAAG8AAAACAAAAAAAgAAAAcAAAAAIAAAAAACEAAABxAAAAAgAAAAAAIgAAAHIAAAACAAAAAAAjAAAAcwAAAAIAAAAAACQAAAB0AAAAAgAAAAAAJQAAAHUAAAACAAAAAAAmAAAAdgAAAAIAAAAAACcAAAB3AAAAAgAAAAAAKAAAAHgAAAACAAAAAAApAAAAeQAAAAIAAAAAACoAAAB6AAAAAgAAAAAAKwAAAHsAAAACAAAAAAAsAAAAfAAAAAIAAAAAAC0AAAB9AAAAAgAAAAAALgAAAH4AAAACAAAAAAAvAAAAfwAAAAIAAAAAADIAAACAAAAAAgAAAAAANAAAAIEAAAACAAAAAAA1AAAAggAAAAIAAAAAADYAAACDAAAAAgAAAAAANwAAAFIAAAACAAAAAAA4AAAAhAAAAAIAAAAAADkAAACFAAAAAgAAAAAAOgAAAIYAAAACAAAAAAA7AAAAhwAAAAIAAAAAADwAAACIAAAAAgAAAAAAPQAAAIkAAAACAAAAAAA+AAAAigAAAAIAAAAAAD8AAACLAAAAAgAAAAAAQAAAAIwAAAACAAAAAABBAAAAjQAAAAIAAAAAAEIAAACOAAAAAgAAAAAAQwAAAI8AAAACAAAAAABEAAAAkAAAAAIAAAAAAEUAAAAHAD8AAAACAAAAAAAEAAAAAgAAAAAABQAAAAIAAAAAAAYAAAACAAAAAAAHAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAANAAAAAgAAAAAADgAAAAIAAAAAAA8AAAACAAAAAAAQAAAAAgAAAAAAEQAAAAIAAAAAABIAAAACAAAAAAATAAAAAgAAAAAAFAAAAAIAAAAAABUAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAACAAAAAAAuAAAAAgAAAAAALwAAAAIAAAAAADIAAAACAAAAAAA0AAAAAgAAAAAANQAAAAIAAAAAADYAAAACAAAAAAA3AAAAAgAAAAAAOAAAAAIAAAAAADkAAAACAAAAAAA6AAAAAgAAAAAAOwAAAAIAAAAAADwAAAACAAAAAAA9AAAAAgAAAAAAPgAAAAIAAAAAAD8AAAACAAAAAABAAAAAAgAAAAAAQQAAAAIAAAAAAEIAAAACAAAAAABDAAAAAgAAAAAARAAAAAIAAAAAAEUAAAAHAAAAAAAHAAEAAAACAAEAAABhAAAABwAAAAAAAgABAAAAYQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAADAAAAAgABAAAAYQAAAAIAAgAAABkAAAAHAAAAAAAKAAwAAAA1AAAACgACAAAAVQAAAAcAAQAAAAYAWwAAAHEAAAAHAA0AAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAAAGAHwAAAAGAH0AAAAGAH4AAABVAAAAAgAAAAAAwgAAAHEAAAACAAAAAADDAAAA+gAAAAIAAAAAAMQAAAD7AAAAAgAAAAAAxQAAAAIBAAACAAAAAADGAAAAAwEAAAIAAAAAAMcAAAAFAQAAAgAAAAAAyAAAAAcBAAACAAAAAADJAAAACAEAAAIAAAAAAMoAAAANAQAAAgAAAAAAywAAAA8BAAACAAAAAADMAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYQAAAAYAFgEAAAYAkQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABhAAAABgAjAAAABgCSAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGEAAAAGACQAAAAGAJMAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYQAAAAYAFwEAAAYAlAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABhAAAABgAYAQAABgCVAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGEAAAAGABkBAAAGAJYAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYQAAAAYAGgEAAAYAlwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABhAAAABgAbAQAABgCYAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGEAAAAGABwBAAAGAJkAAAAHAAAAAAABAAYAHQEAAAoAAAAAAAoAIQAAAJoAAAACAAAAAABHAAAAmwAAAAIAAAAAAEgAAACcAAAAAgAAAAAASQAAAIoAAAACAAAAAABKAAAAWwAAAAIAAAAAAEsAAABUAAAAAgAAAAAATAAAAF8AAAACAAAAAABNAAAAYAAAAAIAAAAAAE4AAABuAAAAAgAAAAAATwAAAG8AAAACAAAAAABQAAAAZgAAAAIAAAAAAFEAAABoAAAAAgAAAAAAUgAAAGoAAAACAAAAAABTAAAAbAAAAAIAAAAAAFQAAACFAAAAAgAAAAAAVQAAAGIAAAACAAAAAABWAAAAYwAAAAIAAAAAAFcAAAByAAAAAgAAAAAAWAAAAHMAAAACAAAAAABZAAAAdAAAAAIAAAAAAFoAAAB1AAAAAgAAAAAAWwAAAHYAAAACAAAAAABcAAAAdwAAAAIAAAAAAF0AAAB4AAAAAgAAAAAAXgAAAHkAAAACAAAAAABfAAAAegAAAAIAAAAAAGAAAAB7AAAAAgAAAAAAYQAAAHwAAAACAAAAAABiAAAAfQAAAAIAAAAAAGMAAAB+AAAAAgAAAAAAZAAAAH8AAAACAAAAAABlAAAAgAAAAAIAAAAAAGYAAACBAAAAAgAAAAAAZwAAAAcAIQAAAAIAAAAAAEcAAAACAAAAAABIAAAAAgAAAAAASQAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAWAAAAAIAAAAAAFkAAAACAAAAAABaAAAAAgAAAAAAWwAAAAIAAAAAAFwAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZAAAAAIAAAAAAGUAAAACAAAAAABmAAAAAgAAAAAAZwAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAEYAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgAeAQAACgALAAAAyAAAAAIAAAAAAM0AAADJAAAAAgAAAAAAzgAAAMoAAAACAAAAAADPAAAAywAAAAIAAAAAANAAAADMAAAAAgAAAAAA0QAAAM0AAAACAAAAAADSAAAAzgAAAAIAAAAAANMAAADPAAAAAgAAAAAA1AAAANAAAAACAAAAAADVAAAA0QAAAAIAAAAAANYAAADSAAAAAgAAAAAA1wAAAAoALgAAABIAAAACAAAAAABpAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACkAAAAAgAAAAAAcQAAAKUAAAACAAAAAAByAAAApgAAAAIAAAAAAHMAAACnAAAAAgAAAAAAdAAAAIMAAAACAAAAAAB1AAAAqAAAAAIAAAAAAHYAAACpAAAAAgAAAAAAdwAAAKoAAAACAAAAAAB4AAAAqwAAAAIAAAAAAHkAAACsAAAAAgAAAAAAegAAAK0AAAACAAAAAAB7AAAArgAAAAIAAAAAAHwAAACvAAAAAgAAAAAAfQAAALAAAAACAAAAAAB+AAAAsQAAAAIAAAAAAH8AAACyAAAAAgAAAAAAgAAAALMAAAACAAAAAACBAAAAtAAAAAIAAAAAAIIAAAAeAAAAAgAAAAAAgwAAALUAAAACAAAAAACEAAAAtgAAAAIAAAAAAIUAAAC3AAAAAgAAAAAAhgAAALgAAAACAAAAAACHAAAAuQAAAAIAAAAAAIgAAAC6AAAAAgAAAAAAiQAAALsAAAACAAAAAACKAAAAvAAAAAIAAAAAAIsAAAC9AAAAAgAAAAAAjAAAAL4AAAACAAAAAACNAAAAvwAAAAIAAAAAAI4AAADAAAAAAgAAAAAAjwAAAMEAAAACAAAAAACQAAAAwgAAAAIAAAAAAJEAAADDAAAAAgAAAAAAkgAAAMQAAAACAAAAAACTAAAAxQAAAAIAAAAAAJQAAADGAAAAAgAAAAAAlQAAAMcAAAACAAAAAACWAAAABwAuAAAAAgAAAAAAaQAAAAIAAAAAAGoAAAACAAAAAABrAAAAAgAAAAAAbAAAAAIAAAAAAG0AAAACAAAAAABuAAAAAgAAAAAAbwAAAAIAAAAAAHAAAAACAAAAAABxAAAAAgAAAAAAcgAAAAIAAAAAAHMAAAACAAAAAAB0AAAAAgAAAAAAdQAAAAIAAAAAAHYAAAACAAAAAAB3AAAAAgAAAAAAeAAAAAIAAAAAAHkAAAACAAAAAAB6AAAAAgAAAAAAewAAAAIAAAAAAHwAAAACAAAAAAB9AAAAAgAAAAAAfgAAAAIAAAAAAH8AAAACAAAAAACAAAAAAgAAAAAAgQAAAAIAAAAAAIIAAAACAAAAAACDAAAAAgAAAAAAhAAAAAIAAAAAAIUAAAACAAAAAACGAAAAAgAAAAAAhwAAAAIAAAAAAIgAAAACAAAAAACJAAAAAgAAAAAAigAAAAIAAAAAAIsAAAACAAAAAACMAAAAAgAAAAAAjQAAAAIAAAAAAI4AAAACAAAAAACPAAAAAgAAAAAAkAAAAAIAAAAAAJEAAAACAAAAAACSAAAAAgAAAAAAkwAAAAIAAAAAAJQAAAACAAAAAACVAAAAAgAAAAAAlgAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGgAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAABqAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAGoAAAABAAYAHwEAAAoAAgAAANgAAAACAAAAAADYAAAA2QAAAAIAAAAAANkAAAAKAAUAAADTAAAAAgAAAAAAmAAAANQAAAACAAAAAACZAAAA1QAAAAIAAAAAAJoAAADWAAAAAgAAAAAAmwAAANcAAAACAAAAAACcAAAABwAFAAAAAgAAAAAAmAAAAAIAAAAAAJkAAAACAAAAAACaAAAAAgAAAAAAmwAAAAIAAAAAAJwAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACXAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAlwAAAAYA1AAAAAYA2AAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACXAAAABgDVAAAABgDZAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAJcAAAAGANQAAAAGANgAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAlwAAAAYA1QAAAAYA2QAAAAEABgAgAQAACgAEAAAA4QAAAAIAAAAAANoAAADZAAAAAgAAAAAA2wAAAOIAAAACAAAAAADcAAAA4wAAAAIAAAAAAN0AAAAKAAoAAAASAAAAAgAAAAAAngAAANoAAAACAAAAAACfAAAAnQAAAAIAAAAAAKAAAADbAAAAAgAAAAAAoQAAANwAAAACAAAAAACiAAAA3QAAAAIAAAAAAKMAAADeAAAAAgAAAAAApAAAAN8AAAACAAAAAAClAAAA4AAAAAIAAAAAAKYAAAAeAAAAAgAAAAAApwAAAAcACgAAAAIAAAAAAJ4AAAACAAAAAACfAAAAAgAAAAAAoAAAAAIAAAAAAKEAAAACAAAAAACiAAAAAgAAAAAAowAAAAIAAAAAAKQAAAACAAAAAAClAAAAAgAAAAAApgAAAAIAAAAAAKcAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACdAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAoAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACgAAAAAQAGACEBAAAKAAgAAADwAAAAAgAAAAAA3gAAAPEAAAACAAAAAADfAAAA8gAAAAIAAAAAAOAAAADzAAAAAgAAAAAA4QAAAPQAAAACAAAAAADiAAAA9QAAAAIAAAAAAOMAAAD2AAAAAgAAAAAA5AAAAPcAAAACAAAAAADlAAAACgANAAAAnQAAAAIAAAAAAKkAAADkAAAAAgAAAAAAqgAAAOUAAAACAAAAAACrAAAA5gAAAAIAAAAAAKwAAADnAAAAAgAAAAAArQAAAOgAAAACAAAAAACuAAAA6QAAAAIAAAAAAK8AAADqAAAAAgAAAAAAsAAAAOsAAAACAAAAAACxAAAA7AAAAAIAAAAAALIAAADtAAAAAgAAAAAAswAAAO4AAAACAAAAAAC0AAAA7wAAAAIAAAAAALUAAAAHAA0AAAACAAAAAACpAAAAAgAAAAAAqgAAAAIAAAAAAKsAAAACAAAAAACsAAAAAgAAAAAArQAAAAIAAAAAAK4AAAACAAAAAACvAAAAAgAAAAAAsAAAAAIAAAAAALEAAAACAAAAAACyAAAAAgAAAAAAswAAAAIAAAAAALQAAAACAAAAAAC1AAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAAAAAAIAAgAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAqAAAAAIAAgAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAKkAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAqQAAAAEABwAEAAAABwACAAAAAwAGAFsAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBZAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAcAVQAAAAcADgAAAAMABgByAAAABgBzAAAABgB0AAAABgB1AAAABgB2AAAABgB3AAAABgB4AAAABgB5AAAABgB6AAAABgB7AAAABgB8AAAABgB9AAAABgB+AAAABwAnAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAE8AAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAABRABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAJkAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAAAiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAyQAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADhABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAADlABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAjAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABQAAAAAAAAA9QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABDQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAAERABAABAAAAAAAAAAQAAAAAAAAAAAAEACoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAFAAAAAAAAAEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEZABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAEdABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAACAR0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAMQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAUAAAAAAACARUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQALwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASEAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAUAAAAAAACASkAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAABLQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA4AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABQAAAAAAAABJQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA2AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBLQAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBNQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABOQAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAgE5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAD8AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAFAAAAAAAAgExABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAD0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgFBABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFBABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAAAAUUAEAAEAAAAAAAAABAAAAAAAAAAAAAQARgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAUAAAAAAAAAUEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQARAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUUAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAACAUkAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAMBSQAQAAQAAAAAAAAAEAAAAAAAAAAAABABNAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABQAAAAAAAMBRQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABLAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABTQAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABUQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBUQAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAgFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAFQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAFAAAAAAAAgFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFRABAABAAAAAAAAAAAAAAAAAAAABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFoAAAAFAAAAAAAAABBABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAABwBhAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAF4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAcQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAE4AAAAEAAgAAAAAAAAABgByAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB1AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB4AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB7AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHwAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAfQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB+AAAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAwAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA3AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA+AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAACRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAC5ABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAZAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA8QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA9QAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAAD5ABAABAAAAAAAAAAQAAAAAAAAAAAAEACAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEFABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAARUAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAuAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBIQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABJQAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAgElABAABAAAAAAAAAAQAAAAAAAAAAAAEADUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAExABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgExABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAT0AHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAUEAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBRQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBRQAcABgAAAAQACAAAAAAAAAAGAIYAAAAFAAAAAAAAAFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAEoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFNABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFNABwAGAAAABAAIAAAAAAAAAAYAhgAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAUQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVUAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVUAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAIBVQAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABWAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBVQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAEBWQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBWQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIcAAAAFAAAAAAAAwFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAADAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCIAAAABQAAAAAAAEBXQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAcAJgAAAAcABAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAEEAHAAYAAAAEAAgAAAAAAAAABgBsAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAcQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAGEAGAAABAAAFAAAAAAAAACRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAACpABwAGAAAABAAIAAAAAAAAAAYAagAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABhABgD/AAAABQAAAAAAAAAzQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAGgAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABQAAAAAAAAAYQAYA/gAAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABkAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAdAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABAQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBCQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAQAAQAAAAAAAAAAAAAAAAAAAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAbAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBqAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGgAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAZgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgAAAQAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAP8AAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYA/gAAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAcAKAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAYQAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAQACAAAAAAAAAAGAHAAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYABgEAAAUAAAAAAAAAJEAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAM0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANUAHAA8AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAEAAgAAAAAAAAABgBwAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAYBAAAFAAAAAAAAADlABwAGAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABAAIAAAAAAAAAAYAcAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAGAQAABQAAAAAAAABCQAcABgAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAAAAAAAAAAAAcAGgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgD+AAAABQAAAAAAAAAiQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAoQAcABgAAAAQACAAAAAAAAAAGAGkAAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAACRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwAGAAAABAAIAAAAAAAAAAYARAAAAAUAAAAAAAAAMkAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAYAAAAEAAgAAAAAAAAABgBoAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAEQAAAAFAAAAAAAAADFABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABQAAAAAAAAAYQAYA/gAAAAUAAAAAAAAAOUAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAAAAAAAAAAAAAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGoAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYA/wAAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBrAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEQAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAagAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBEAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAP8AAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAABwAHAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAEEAEAAEAAAAAAAAAAAAAAAAAAAAHABgAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAgAAAAAUAAAAAAAAAFEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAgAAAAAAAAABgBEAAAABQAAAAAAAAAkQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcABgAAAAQACAAAAAAAAAAGAH8AAAAFAAAAAAAAACZABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYARAAAAAUAAAAAAAAAIkAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAALkAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAOAQAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAADZABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAABgDIAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMkAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAABgDKAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAYAywAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDMAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAYAzQAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAAGAM4AAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAABgDPAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGANAAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAABgDRAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGANIAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA2AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDZAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAOEAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA2QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDiAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAOMAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAABgDwAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAYA8QAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAAGAPIAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAABgDzAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAYA9AAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAAGAPUAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA9gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgD3AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAA8AQAABwAAAAAACgAAAAAA", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if414_end1357 
    die "Repossession conflicts occurred during deserialization"
  if414_end1357:
    .const "LexInfo" $P5001 = "cuid_181_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_181_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_181_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_181_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_181_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_181_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_181_1360235112.107"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360235108.283", 32
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_181_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 62
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_59_1360235112.107" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_60_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 69
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_174_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_174_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_174_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_174_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 70
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_182_1360235112.107" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_67_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 103
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_183_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 70
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_183_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_183_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 70
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_183_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_100_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 150
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_195_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_195_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_195_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 104
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_195_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_146_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 156
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_220_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_220_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_220_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 151
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_220_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_151_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 167
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_221_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_221_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_221_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 157
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_221_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_161_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_163_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 176
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 179
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 180
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1360235112.107" 
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 181
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_231_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_231_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_231_1360235112.107"
    nqp_get_sc_object $P5002, "E33C00EDF3CF5C518D4B72791DC8AEB1617FF369-1360235112.134", 168
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_231_1360235112.107"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1360235112.107") :anon :lex :outer("cuid_233_1360235112.107")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1360235112.107" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1360235112.107" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1360235112.107") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_181_1360235112.107" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1360235112.107") :main
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_181_1360235112.107" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end