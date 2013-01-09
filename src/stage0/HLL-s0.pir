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
.sub "" :subid("cuid_1_1357764670.549") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5028 = 'cuid_66_1357764670.549' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_100_1357764670.549' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_145_1357764670.549' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_151_1357764670.549' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_162_1357764670.549' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_176_1357764670.549' 
    capture_lex $P5028 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "NQPCursorRole", $P104 
    .lex "$compiler", $P105 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P105, $P5001
.annotate 'line', 1036
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
    .const 'Sub' $P5006 = 'cuid_66_1357764670.549' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_100_1357764670.549' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_145_1357764670.549' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 1711
    nqp_get_sc_object $P5015, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5014, $P5015, "HLL"
    get_who $P5013, $P5014
    set $P5012, $P5013["Compiler"]
    unless_null $P5012, fallback1210
    nqp_get_sc_object $P5016, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5012, $P5016
  fallback1210:
    $P5017 = $P5012."new"()
    set $P105, $P5017
.annotate 'line', 1712
    $P105."language"("parrot")
    .const 'Sub' $P5018 = 'cuid_151_1357764670.549' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_162_1357764670.549' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_176_1357764670.549' 
    capture_lex $P5022
    $P5023 = $P5022()
    unless _lex_param_0 goto if405_end1332 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5024, "ModuleLoader"
    getinterp $P5026
    set $P5025, $P5026["context"]
    $P5027 = $P5024."set_mainline_module"($P5025)
  if405_end1332:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_66_1357764670.549") :anon :lex :outer("cuid_1_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5073 = 'cuid_2_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_3_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_4_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_5_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_6_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_7_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_8_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_9_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_10_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_11_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_12_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_13_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_14_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_15_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_16_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_17_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_18_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_19_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_20_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_21_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_22_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_23_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_24_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_25_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_26_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_27_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_28_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_29_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_30_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_31_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_32_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_33_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_34_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_35_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_36_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_37_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_38_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_39_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_40_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_41_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_42_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_43_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_46_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_48_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_49_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_50_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_51_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_52_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_53_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_54_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_55_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_56_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_57_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_58_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_59_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_60_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_61_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_62_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_63_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_64_1357764670.549' 
    capture_lex $P5073 
    .const 'Sub' $P5073 = 'cuid_65_1357764670.549' 
    capture_lex $P5073 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "$TRUE", $P103 
    .lex "$?PACKAGE", $P104 
    .lex "$?CLASS", $P105 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    box $P5004, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P5004
    get_who $P5006, $P104
    set $P5005, $P5006["NQPCursor"]
    unless_null $P5005, fallback14
    nqp_get_sc_object $P5009, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5008, $P5009
    set $P5007, $P5008["NQPCursor"]
    unless_null $P5007, vivi_1215
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5007, $P5010
  vivi_1215:
    set $P5005, $P5007
  fallback14:
    set $P102, $P5005
    .const 'Sub' $P5011 = 'cuid_2_1357764670.549' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_3_1357764670.549' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_4_1357764670.549' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_5_1357764670.549' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_6_1357764670.549' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_7_1357764670.549' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_8_1357764670.549' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_9_1357764670.549' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_10_1357764670.549' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_11_1357764670.549' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_12_1357764670.549' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_13_1357764670.549' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_14_1357764670.549' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_15_1357764670.549' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_16_1357764670.549' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_17_1357764670.549' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_18_1357764670.549' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_19_1357764670.549' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_20_1357764670.549' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_21_1357764670.549' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_22_1357764670.549' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_23_1357764670.549' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_24_1357764670.549' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_25_1357764670.549' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_26_1357764670.549' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_27_1357764670.549' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_28_1357764670.549' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_29_1357764670.549' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_30_1357764670.549' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_31_1357764670.549' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_32_1357764670.549' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_33_1357764670.549' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_34_1357764670.549' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_35_1357764670.549' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_36_1357764670.549' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_37_1357764670.549' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_38_1357764670.549' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_39_1357764670.549' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_40_1357764670.549' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_41_1357764670.549' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_42_1357764670.549' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_43_1357764670.549' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_46_1357764670.549' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_48_1357764670.549' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_49_1357764670.549' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_50_1357764670.549' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_51_1357764670.549' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_52_1357764670.549' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_53_1357764670.549' 
    capture_lex $P5059
    box $P5060, 1
    set $P103, $P5060
    .const 'Sub' $P5061 = 'cuid_54_1357764670.549' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_55_1357764670.549' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_56_1357764670.549' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_57_1357764670.549' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_58_1357764670.549' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_59_1357764670.549' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_60_1357764670.549' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_61_1357764670.549' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_62_1357764670.549' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_63_1357764670.549' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_64_1357764670.549' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_65_1357764670.549' 
    capture_lex $P5072
    .return ($P5072) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_2_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "termish" :subid("cuid_3_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "term" :subid("cuid_4_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_5_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_6_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_7_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_8_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_9_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_10_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "infixish" :subid("cuid_11_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "prefixish" :subid("cuid_12_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "postfixish" :subid("cuid_13_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
    rx30_cur."!alt"(rx30_pos, "alt_nfa__1_1357764670.675", $P11)
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
.sub "nullterm" :subid("cuid_14_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "nullterm_alt" :subid("cuid_15_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "nulltermish" :subid("cuid_16_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "quote_delimited" :subid("cuid_17_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
.sub "quote_atom" :subid("cuid_18_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
    rx48_cur."!alt"(rx48_pos, "alt_nfa__2_1357764670.704", $P11)
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
.sub "decint" :subid("cuid_19_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
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
    nqp_rxmark rx57_bstack, rxquantr59_done158, -1, 0
  rxquantr59_loop157:
    nqp_rxmark rx57_bstack, rxquantr60_done160, -1, 0
  rxquantr60_loop159:
    ge rx57_pos, rx57_eos, rx57_fail150
    is_cclass $I11, .CCLASS_NUMERIC, rx57_tgt, rx57_pos
    unless $I11, rx57_fail150
    add rx57_pos, 1
    nqp_rxpeek $I19, rx57_bstack, rxquantr60_done160
    inc $I19
    inc $I19
    set rx57_rep, rx57_bstack[$I19]
    nqp_rxcommit rx57_bstack, rxquantr60_done160
    inc rx57_rep
    nqp_rxmark rx57_bstack, rxquantr60_done160, rx57_pos, rx57_rep
    goto rxquantr60_loop159
  rxquantr60_done160:
    nqp_rxpeek $I19, rx57_bstack, rxquantr59_done158
    inc $I19
    inc $I19
    set rx57_rep, rx57_bstack[$I19]
    nqp_rxcommit rx57_bstack, rxquantr59_done158
    inc rx57_rep
    nqp_rxmark rx57_bstack, rxquantr59_done158, rx57_pos, rx57_rep
    add $I11, rx57_pos, 1
    gt $I11, rx57_eos, rx57_fail150
    substr $S10, rx57_tgt, rx57_pos, 1
    ne $S10, ucs4:"_", rx57_fail150
    add rx57_pos, 1
    goto rxquantr59_loop157
  rxquantr59_done158:
    rx57_cur."!cursor_pass"(rx57_pos, "decint", 'backtrack'=>1)
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
.sub "decints" :subid("cuid_20_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 57
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
    eq $I19, 1, rx61_restart163
    gt rx61_pos, rx61_eos, rx61_fail164
    repr_get_attr_int $I11, self, rx61_curclass, "$!from"
    ne $I11, -1, rxscan62_done170
    goto rxscan62_scan169
  rxscan62_loop168:
    inc rx61_pos
    gt rx61_pos, rx61_eos, rx61_fail164
    repr_bind_attr_int rx61_cur, rx61_curclass, "$!from", rx61_pos
  rxscan62_scan169:
    nqp_rxmark rx61_bstack, rxscan62_loop168, rx61_pos, 0
  rxscan62_done170:
    nqp_rxmark rx61_bstack, rxquantr63_done172, -1, 0
  rxquantr63_loop171:
    repr_bind_attr_int rx61_cur, rx61_curclass, "$!pos", rx61_pos
    $P11 = rx61_cur."ws"()
    repr_get_attr_int $I11, $P11, rx61_curclass, "$!pos"
    lt $I11, 0, rx61_fail164
    repr_get_attr_int rx61_pos, $P11, rx61_curclass, "$!pos"
    repr_bind_attr_int rx61_cur, rx61_curclass, "$!pos", rx61_pos
    $P11 = rx61_cur."decint"()
    repr_get_attr_int $I11, $P11, rx61_curclass, "$!pos"
    lt $I11, 0, rx61_fail164
    nqp_rxmark rx61_bstack, rxsubrule65_pass174, -1, 0
  rxsubrule65_pass174:
    rx61_cstack = rx61_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx61_pos, $P11, rx61_curclass, "$!pos"
    repr_bind_attr_int rx61_cur, rx61_curclass, "$!pos", rx61_pos
    $P11 = rx61_cur."ws"()
    repr_get_attr_int $I11, $P11, rx61_curclass, "$!pos"
    lt $I11, 0, rx61_fail164
    repr_get_attr_int rx61_pos, $P11, rx61_curclass, "$!pos"
    nqp_rxpeek $I19, rx61_bstack, rxquantr63_done172
    inc $I19
    inc $I19
    set rx61_rep, rx61_bstack[$I19]
    nqp_rxcommit rx61_bstack, rxquantr63_done172
    inc rx61_rep
    nqp_rxmark rx61_bstack, rxquantr63_done172, rx61_pos, rx61_rep
    add $I11, rx61_pos, 1
    gt $I11, rx61_eos, rx61_fail164
    substr $S10, rx61_tgt, rx61_pos, 1
    ne $S10, ucs4:",", rx61_fail164
    add rx61_pos, 1
    goto rxquantr63_loop171
  rxquantr63_done172:
    rx61_cur."!cursor_pass"(rx61_pos, "decints", 'backtrack'=>1)
    .return (rx61_cur)
  rx61_restart163:
    repr_get_attr_obj rx61_cstack, rx61_cur, rx61_curclass, "$!cstack"
  rx61_fail164:
    unless rx61_bstack, rx61_done162
    pop $I19, rx61_bstack
    if_null rx61_cstack, rx61_cstack_done167
    unless rx61_cstack, rx61_cstack_done167
    dec $I19
    set $P11, rx61_cstack[$I19]
  rx61_cstack_done167:
    pop rx61_rep, rx61_bstack
    pop rx61_pos, rx61_bstack
    pop $I19, rx61_bstack
    lt rx61_pos, -1, rx61_done162
    lt rx61_pos, 0, rx61_fail164
    eq $I19, 0, rx61_fail164
    nqp_islist $I20, rx61_cstack
    unless $I20, rx61_jump165
    elements $I18, rx61_bstack
    le $I18, 0, rx61_cut166
    dec $I18
    set $I18, rx61_bstack[$I18]
  rx61_cut166:
    assign rx61_cstack, $I18
  rx61_jump165:
    jump $I19
  rx61_done162:
    rx61_cur."!cursor_fail"()
    .return (rx61_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_21_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 59
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx67_tgt
    .local int rx67_pos
    .local int rx67_off
    .local int rx67_eos
    .local int rx67_rep
    .local pmc rx67_cur
    .local pmc rx67_curclass
    .local pmc rx67_bstack
    .local pmc rx67_cstack
    (rx67_cur, rx67_tgt, rx67_pos, rx67_curclass, rx67_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx67_cur
    length rx67_eos, rx67_tgt
    eq $I19, 1, rx67_restart178
    gt rx67_pos, rx67_eos, rx67_fail179
    repr_get_attr_int $I11, self, rx67_curclass, "$!from"
    ne $I11, -1, rxscan68_done185
    goto rxscan68_scan184
  rxscan68_loop183:
    inc rx67_pos
    gt rx67_pos, rx67_eos, rx67_fail179
    repr_bind_attr_int rx67_cur, rx67_curclass, "$!from", rx67_pos
  rxscan68_scan184:
    nqp_rxmark rx67_bstack, rxscan68_loop183, rx67_pos, 0
  rxscan68_done185:
    nqp_rxmark rx67_bstack, rxquantr69_done187, -1, 0
  rxquantr69_loop186:
    nqp_rxmark rx67_bstack, rxquantr70_done189, -1, 0
  rxquantr70_loop188:
    ge rx67_pos, rx67_eos, rx67_fail179
    substr $S11, rx67_tgt, rx67_pos, 1
    index $I11, ucs4:"0123456789abcdefABCDEF", $S11
    lt $I11, 0, rx67_fail179
    inc rx67_pos
    nqp_rxpeek $I19, rx67_bstack, rxquantr70_done189
    inc $I19
    inc $I19
    set rx67_rep, rx67_bstack[$I19]
    nqp_rxcommit rx67_bstack, rxquantr70_done189
    inc rx67_rep
    nqp_rxmark rx67_bstack, rxquantr70_done189, rx67_pos, rx67_rep
    goto rxquantr70_loop188
  rxquantr70_done189:
    nqp_rxpeek $I19, rx67_bstack, rxquantr69_done187
    inc $I19
    inc $I19
    set rx67_rep, rx67_bstack[$I19]
    nqp_rxcommit rx67_bstack, rxquantr69_done187
    inc rx67_rep
    nqp_rxmark rx67_bstack, rxquantr69_done187, rx67_pos, rx67_rep
    add $I11, rx67_pos, 1
    gt $I11, rx67_eos, rx67_fail179
    substr $S10, rx67_tgt, rx67_pos, 1
    ne $S10, ucs4:"_", rx67_fail179
    add rx67_pos, 1
    goto rxquantr69_loop186
  rxquantr69_done187:
    rx67_cur."!cursor_pass"(rx67_pos, "hexint", 'backtrack'=>1)
    .return (rx67_cur)
  rx67_restart178:
    repr_get_attr_obj rx67_cstack, rx67_cur, rx67_curclass, "$!cstack"
  rx67_fail179:
    unless rx67_bstack, rx67_done177
    pop $I19, rx67_bstack
    if_null rx67_cstack, rx67_cstack_done182
    unless rx67_cstack, rx67_cstack_done182
    dec $I19
    set $P11, rx67_cstack[$I19]
  rx67_cstack_done182:
    pop rx67_rep, rx67_bstack
    pop rx67_pos, rx67_bstack
    pop $I19, rx67_bstack
    lt rx67_pos, -1, rx67_done177
    lt rx67_pos, 0, rx67_fail179
    eq $I19, 0, rx67_fail179
    nqp_islist $I20, rx67_cstack
    unless $I20, rx67_jump180
    elements $I18, rx67_bstack
    le $I18, 0, rx67_cut181
    dec $I18
    set $I18, rx67_bstack[$I18]
  rx67_cut181:
    assign rx67_cstack, $I18
  rx67_jump180:
    jump $I19
  rx67_done177:
    rx67_cur."!cursor_fail"()
    .return (rx67_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_22_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 60
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
    eq $I19, 1, rx71_restart192
    gt rx71_pos, rx71_eos, rx71_fail193
    repr_get_attr_int $I11, self, rx71_curclass, "$!from"
    ne $I11, -1, rxscan72_done199
    goto rxscan72_scan198
  rxscan72_loop197:
    inc rx71_pos
    gt rx71_pos, rx71_eos, rx71_fail193
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!from", rx71_pos
  rxscan72_scan198:
    nqp_rxmark rx71_bstack, rxscan72_loop197, rx71_pos, 0
  rxscan72_done199:
    nqp_rxmark rx71_bstack, rxquantr73_done201, -1, 0
  rxquantr73_loop200:
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!pos", rx71_pos
    $P11 = rx71_cur."ws"()
    repr_get_attr_int $I11, $P11, rx71_curclass, "$!pos"
    lt $I11, 0, rx71_fail193
    repr_get_attr_int rx71_pos, $P11, rx71_curclass, "$!pos"
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!pos", rx71_pos
    $P11 = rx71_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx71_curclass, "$!pos"
    lt $I11, 0, rx71_fail193
    nqp_rxmark rx71_bstack, rxsubrule75_pass203, -1, 0
  rxsubrule75_pass203:
    rx71_cstack = rx71_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx71_pos, $P11, rx71_curclass, "$!pos"
    repr_bind_attr_int rx71_cur, rx71_curclass, "$!pos", rx71_pos
    $P11 = rx71_cur."ws"()
    repr_get_attr_int $I11, $P11, rx71_curclass, "$!pos"
    lt $I11, 0, rx71_fail193
    repr_get_attr_int rx71_pos, $P11, rx71_curclass, "$!pos"
    nqp_rxpeek $I19, rx71_bstack, rxquantr73_done201
    inc $I19
    inc $I19
    set rx71_rep, rx71_bstack[$I19]
    nqp_rxcommit rx71_bstack, rxquantr73_done201
    inc rx71_rep
    nqp_rxmark rx71_bstack, rxquantr73_done201, rx71_pos, rx71_rep
    add $I11, rx71_pos, 1
    gt $I11, rx71_eos, rx71_fail193
    substr $S10, rx71_tgt, rx71_pos, 1
    ne $S10, ucs4:",", rx71_fail193
    add rx71_pos, 1
    goto rxquantr73_loop200
  rxquantr73_done201:
    rx71_cur."!cursor_pass"(rx71_pos, "hexints", 'backtrack'=>1)
    .return (rx71_cur)
  rx71_restart192:
    repr_get_attr_obj rx71_cstack, rx71_cur, rx71_curclass, "$!cstack"
  rx71_fail193:
    unless rx71_bstack, rx71_done191
    pop $I19, rx71_bstack
    if_null rx71_cstack, rx71_cstack_done196
    unless rx71_cstack, rx71_cstack_done196
    dec $I19
    set $P11, rx71_cstack[$I19]
  rx71_cstack_done196:
    pop rx71_rep, rx71_bstack
    pop rx71_pos, rx71_bstack
    pop $I19, rx71_bstack
    lt rx71_pos, -1, rx71_done191
    lt rx71_pos, 0, rx71_fail193
    eq $I19, 0, rx71_fail193
    nqp_islist $I20, rx71_cstack
    unless $I20, rx71_jump194
    elements $I18, rx71_bstack
    le $I18, 0, rx71_cut195
    dec $I18
    set $I18, rx71_bstack[$I18]
  rx71_cut195:
    assign rx71_cstack, $I18
  rx71_jump194:
    jump $I19
  rx71_done191:
    rx71_cur."!cursor_fail"()
    .return (rx71_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_23_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    .local pmc rx77_curclass
    .local pmc rx77_bstack
    .local pmc rx77_cstack
    (rx77_cur, rx77_tgt, rx77_pos, rx77_curclass, rx77_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx77_cur
    length rx77_eos, rx77_tgt
    eq $I19, 1, rx77_restart207
    gt rx77_pos, rx77_eos, rx77_fail208
    repr_get_attr_int $I11, self, rx77_curclass, "$!from"
    ne $I11, -1, rxscan78_done214
    goto rxscan78_scan213
  rxscan78_loop212:
    inc rx77_pos
    gt rx77_pos, rx77_eos, rx77_fail208
    repr_bind_attr_int rx77_cur, rx77_curclass, "$!from", rx77_pos
  rxscan78_scan213:
    nqp_rxmark rx77_bstack, rxscan78_loop212, rx77_pos, 0
  rxscan78_done214:
    nqp_rxmark rx77_bstack, rxquantr79_done216, -1, 0
  rxquantr79_loop215:
    nqp_rxmark rx77_bstack, rxquantr80_done218, -1, 0
  rxquantr80_loop217:
    ge rx77_pos, rx77_eos, rx77_fail208
    substr $S11, rx77_tgt, rx77_pos, 1
    index $I11, ucs4:"01234567", $S11
    lt $I11, 0, rx77_fail208
    inc rx77_pos
    nqp_rxpeek $I19, rx77_bstack, rxquantr80_done218
    inc $I19
    inc $I19
    set rx77_rep, rx77_bstack[$I19]
    nqp_rxcommit rx77_bstack, rxquantr80_done218
    inc rx77_rep
    nqp_rxmark rx77_bstack, rxquantr80_done218, rx77_pos, rx77_rep
    goto rxquantr80_loop217
  rxquantr80_done218:
    nqp_rxpeek $I19, rx77_bstack, rxquantr79_done216
    inc $I19
    inc $I19
    set rx77_rep, rx77_bstack[$I19]
    nqp_rxcommit rx77_bstack, rxquantr79_done216
    inc rx77_rep
    nqp_rxmark rx77_bstack, rxquantr79_done216, rx77_pos, rx77_rep
    add $I11, rx77_pos, 1
    gt $I11, rx77_eos, rx77_fail208
    substr $S10, rx77_tgt, rx77_pos, 1
    ne $S10, ucs4:"_", rx77_fail208
    add rx77_pos, 1
    goto rxquantr79_loop215
  rxquantr79_done216:
    rx77_cur."!cursor_pass"(rx77_pos, "octint", 'backtrack'=>1)
    .return (rx77_cur)
  rx77_restart207:
    repr_get_attr_obj rx77_cstack, rx77_cur, rx77_curclass, "$!cstack"
  rx77_fail208:
    unless rx77_bstack, rx77_done206
    pop $I19, rx77_bstack
    if_null rx77_cstack, rx77_cstack_done211
    unless rx77_cstack, rx77_cstack_done211
    dec $I19
    set $P11, rx77_cstack[$I19]
  rx77_cstack_done211:
    pop rx77_rep, rx77_bstack
    pop rx77_pos, rx77_bstack
    pop $I19, rx77_bstack
    lt rx77_pos, -1, rx77_done206
    lt rx77_pos, 0, rx77_fail208
    eq $I19, 0, rx77_fail208
    nqp_islist $I20, rx77_cstack
    unless $I20, rx77_jump209
    elements $I18, rx77_bstack
    le $I18, 0, rx77_cut210
    dec $I18
    set $I18, rx77_bstack[$I18]
  rx77_cut210:
    assign rx77_cstack, $I18
  rx77_jump209:
    jump $I19
  rx77_done206:
    rx77_cur."!cursor_fail"()
    .return (rx77_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_24_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 63
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
    eq $I19, 1, rx81_restart221
    gt rx81_pos, rx81_eos, rx81_fail222
    repr_get_attr_int $I11, self, rx81_curclass, "$!from"
    ne $I11, -1, rxscan82_done228
    goto rxscan82_scan227
  rxscan82_loop226:
    inc rx81_pos
    gt rx81_pos, rx81_eos, rx81_fail222
    repr_bind_attr_int rx81_cur, rx81_curclass, "$!from", rx81_pos
  rxscan82_scan227:
    nqp_rxmark rx81_bstack, rxscan82_loop226, rx81_pos, 0
  rxscan82_done228:
    nqp_rxmark rx81_bstack, rxquantr83_done230, -1, 0
  rxquantr83_loop229:
    repr_bind_attr_int rx81_cur, rx81_curclass, "$!pos", rx81_pos
    $P11 = rx81_cur."ws"()
    repr_get_attr_int $I11, $P11, rx81_curclass, "$!pos"
    lt $I11, 0, rx81_fail222
    repr_get_attr_int rx81_pos, $P11, rx81_curclass, "$!pos"
    repr_bind_attr_int rx81_cur, rx81_curclass, "$!pos", rx81_pos
    $P11 = rx81_cur."octint"()
    repr_get_attr_int $I11, $P11, rx81_curclass, "$!pos"
    lt $I11, 0, rx81_fail222
    nqp_rxmark rx81_bstack, rxsubrule85_pass232, -1, 0
  rxsubrule85_pass232:
    rx81_cstack = rx81_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx81_pos, $P11, rx81_curclass, "$!pos"
    repr_bind_attr_int rx81_cur, rx81_curclass, "$!pos", rx81_pos
    $P11 = rx81_cur."ws"()
    repr_get_attr_int $I11, $P11, rx81_curclass, "$!pos"
    lt $I11, 0, rx81_fail222
    repr_get_attr_int rx81_pos, $P11, rx81_curclass, "$!pos"
    nqp_rxpeek $I19, rx81_bstack, rxquantr83_done230
    inc $I19
    inc $I19
    set rx81_rep, rx81_bstack[$I19]
    nqp_rxcommit rx81_bstack, rxquantr83_done230
    inc rx81_rep
    nqp_rxmark rx81_bstack, rxquantr83_done230, rx81_pos, rx81_rep
    add $I11, rx81_pos, 1
    gt $I11, rx81_eos, rx81_fail222
    substr $S10, rx81_tgt, rx81_pos, 1
    ne $S10, ucs4:",", rx81_fail222
    add rx81_pos, 1
    goto rxquantr83_loop229
  rxquantr83_done230:
    rx81_cur."!cursor_pass"(rx81_pos, "octints", 'backtrack'=>1)
    .return (rx81_cur)
  rx81_restart221:
    repr_get_attr_obj rx81_cstack, rx81_cur, rx81_curclass, "$!cstack"
  rx81_fail222:
    unless rx81_bstack, rx81_done220
    pop $I19, rx81_bstack
    if_null rx81_cstack, rx81_cstack_done225
    unless rx81_cstack, rx81_cstack_done225
    dec $I19
    set $P11, rx81_cstack[$I19]
  rx81_cstack_done225:
    pop rx81_rep, rx81_bstack
    pop rx81_pos, rx81_bstack
    pop $I19, rx81_bstack
    lt rx81_pos, -1, rx81_done220
    lt rx81_pos, 0, rx81_fail222
    eq $I19, 0, rx81_fail222
    nqp_islist $I20, rx81_cstack
    unless $I20, rx81_jump223
    elements $I18, rx81_bstack
    le $I18, 0, rx81_cut224
    dec $I18
    set $I18, rx81_bstack[$I18]
  rx81_cut224:
    assign rx81_cstack, $I18
  rx81_jump223:
    jump $I19
  rx81_done220:
    rx81_cur."!cursor_fail"()
    .return (rx81_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_25_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_curclass
    .local pmc rx87_bstack
    .local pmc rx87_cstack
    (rx87_cur, rx87_tgt, rx87_pos, rx87_curclass, rx87_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx87_cur
    length rx87_eos, rx87_tgt
    eq $I19, 1, rx87_restart236
    gt rx87_pos, rx87_eos, rx87_fail237
    repr_get_attr_int $I11, self, rx87_curclass, "$!from"
    ne $I11, -1, rxscan88_done243
    goto rxscan88_scan242
  rxscan88_loop241:
    inc rx87_pos
    gt rx87_pos, rx87_eos, rx87_fail237
    repr_bind_attr_int rx87_cur, rx87_curclass, "$!from", rx87_pos
  rxscan88_scan242:
    nqp_rxmark rx87_bstack, rxscan88_loop241, rx87_pos, 0
  rxscan88_done243:
    nqp_rxmark rx87_bstack, rxquantr89_done245, -1, 0
  rxquantr89_loop244:
    nqp_rxmark rx87_bstack, rxquantr90_done247, -1, 0
  rxquantr90_loop246:
    ge rx87_pos, rx87_eos, rx87_fail237
    substr $S11, rx87_tgt, rx87_pos, 1
    index $I11, ucs4:"01", $S11
    lt $I11, 0, rx87_fail237
    inc rx87_pos
    nqp_rxpeek $I19, rx87_bstack, rxquantr90_done247
    inc $I19
    inc $I19
    set rx87_rep, rx87_bstack[$I19]
    nqp_rxcommit rx87_bstack, rxquantr90_done247
    inc rx87_rep
    nqp_rxmark rx87_bstack, rxquantr90_done247, rx87_pos, rx87_rep
    goto rxquantr90_loop246
  rxquantr90_done247:
    nqp_rxpeek $I19, rx87_bstack, rxquantr89_done245
    inc $I19
    inc $I19
    set rx87_rep, rx87_bstack[$I19]
    nqp_rxcommit rx87_bstack, rxquantr89_done245
    inc rx87_rep
    nqp_rxmark rx87_bstack, rxquantr89_done245, rx87_pos, rx87_rep
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail237
    substr $S10, rx87_tgt, rx87_pos, 1
    ne $S10, ucs4:"_", rx87_fail237
    add rx87_pos, 1
    goto rxquantr89_loop244
  rxquantr89_done245:
    rx87_cur."!cursor_pass"(rx87_pos, "binint", 'backtrack'=>1)
    .return (rx87_cur)
  rx87_restart236:
    repr_get_attr_obj rx87_cstack, rx87_cur, rx87_curclass, "$!cstack"
  rx87_fail237:
    unless rx87_bstack, rx87_done235
    pop $I19, rx87_bstack
    if_null rx87_cstack, rx87_cstack_done240
    unless rx87_cstack, rx87_cstack_done240
    dec $I19
    set $P11, rx87_cstack[$I19]
  rx87_cstack_done240:
    pop rx87_rep, rx87_bstack
    pop rx87_pos, rx87_bstack
    pop $I19, rx87_bstack
    lt rx87_pos, -1, rx87_done235
    lt rx87_pos, 0, rx87_fail237
    eq $I19, 0, rx87_fail237
    nqp_islist $I20, rx87_cstack
    unless $I20, rx87_jump238
    elements $I18, rx87_bstack
    le $I18, 0, rx87_cut239
    dec $I18
    set $I18, rx87_bstack[$I18]
  rx87_cut239:
    assign rx87_cstack, $I18
  rx87_jump238:
    jump $I19
  rx87_done235:
    rx87_cur."!cursor_fail"()
    .return (rx87_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_26_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 66
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
    eq $I19, 1, rx91_restart250
    gt rx91_pos, rx91_eos, rx91_fail251
    repr_get_attr_int $I11, self, rx91_curclass, "$!from"
    ne $I11, -1, rxscan92_done257
    goto rxscan92_scan256
  rxscan92_loop255:
    inc rx91_pos
    gt rx91_pos, rx91_eos, rx91_fail251
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!from", rx91_pos
  rxscan92_scan256:
    nqp_rxmark rx91_bstack, rxscan92_loop255, rx91_pos, 0
  rxscan92_done257:
    nqp_rxmark rx91_bstack, rxquantr93_done259, -1, 0
  rxquantr93_loop258:
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!pos", rx91_pos
    $P11 = rx91_cur."ws"()
    repr_get_attr_int $I11, $P11, rx91_curclass, "$!pos"
    lt $I11, 0, rx91_fail251
    repr_get_attr_int rx91_pos, $P11, rx91_curclass, "$!pos"
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!pos", rx91_pos
    $P11 = rx91_cur."binint"()
    repr_get_attr_int $I11, $P11, rx91_curclass, "$!pos"
    lt $I11, 0, rx91_fail251
    nqp_rxmark rx91_bstack, rxsubrule95_pass261, -1, 0
  rxsubrule95_pass261:
    rx91_cstack = rx91_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx91_pos, $P11, rx91_curclass, "$!pos"
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!pos", rx91_pos
    $P11 = rx91_cur."ws"()
    repr_get_attr_int $I11, $P11, rx91_curclass, "$!pos"
    lt $I11, 0, rx91_fail251
    repr_get_attr_int rx91_pos, $P11, rx91_curclass, "$!pos"
    nqp_rxpeek $I19, rx91_bstack, rxquantr93_done259
    inc $I19
    inc $I19
    set rx91_rep, rx91_bstack[$I19]
    nqp_rxcommit rx91_bstack, rxquantr93_done259
    inc rx91_rep
    nqp_rxmark rx91_bstack, rxquantr93_done259, rx91_pos, rx91_rep
    add $I11, rx91_pos, 1
    gt $I11, rx91_eos, rx91_fail251
    substr $S10, rx91_tgt, rx91_pos, 1
    ne $S10, ucs4:",", rx91_fail251
    add rx91_pos, 1
    goto rxquantr93_loop258
  rxquantr93_done259:
    rx91_cur."!cursor_pass"(rx91_pos, "binints", 'backtrack'=>1)
    .return (rx91_cur)
  rx91_restart250:
    repr_get_attr_obj rx91_cstack, rx91_cur, rx91_curclass, "$!cstack"
  rx91_fail251:
    unless rx91_bstack, rx91_done249
    pop $I19, rx91_bstack
    if_null rx91_cstack, rx91_cstack_done254
    unless rx91_cstack, rx91_cstack_done254
    dec $I19
    set $P11, rx91_cstack[$I19]
  rx91_cstack_done254:
    pop rx91_rep, rx91_bstack
    pop rx91_pos, rx91_bstack
    pop $I19, rx91_bstack
    lt rx91_pos, -1, rx91_done249
    lt rx91_pos, 0, rx91_fail251
    eq $I19, 0, rx91_fail251
    nqp_islist $I20, rx91_cstack
    unless $I20, rx91_jump252
    elements $I18, rx91_bstack
    le $I18, 0, rx91_cut253
    dec $I18
    set $I18, rx91_bstack[$I18]
  rx91_cut253:
    assign rx91_cstack, $I18
  rx91_jump252:
    jump $I19
  rx91_done249:
    rx91_cur."!cursor_fail"()
    .return (rx91_cur) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_27_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    .local pmc rx97_curclass
    .local pmc rx97_bstack
    .local pmc rx97_cstack
    (rx97_cur, rx97_tgt, rx97_pos, rx97_curclass, rx97_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx97_cur
    length rx97_eos, rx97_tgt
    eq $I19, 1, rx97_restart265
    gt rx97_pos, rx97_eos, rx97_fail266
    repr_get_attr_int $I11, self, rx97_curclass, "$!from"
    ne $I11, -1, rxscan98_done272
    goto rxscan98_scan271
  rxscan98_loop270:
    inc rx97_pos
    gt rx97_pos, rx97_eos, rx97_fail266
    repr_bind_attr_int rx97_cur, rx97_curclass, "$!from", rx97_pos
  rxscan98_scan271:
    nqp_rxmark rx97_bstack, rxscan98_loop270, rx97_pos, 0
  rxscan98_done272:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt99_0274
    nqp_push_label $P11, alt99_1284
    nqp_rxmark rx97_bstack, alt99_end273, -1, 0
    rx97_cur."!alt"(rx97_pos, "alt_nfa__4_1357764670.768", $P11)
    goto rx97_fail266
  alt99_0274:
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail266
    substr $S10, rx97_tgt, rx97_pos, 1
    ne $S10, ucs4:"0", rx97_fail266
    add rx97_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt100_0276
    nqp_push_label $P11, alt100_1278
    nqp_push_label $P11, alt100_2280
    nqp_push_label $P11, alt100_3282
    nqp_rxmark rx97_bstack, alt100_end275, -1, 0
    rx97_cur."!alt"(rx97_pos, "alt_nfa__3_1357764670.767", $P11)
    goto rx97_fail266
  alt100_0276:
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail266
    substr $S10, rx97_tgt, rx97_pos, 1
    ne $S10, ucs4:"b", rx97_fail266
    add rx97_pos, 1
    repr_bind_attr_int rx97_cur, rx97_curclass, "$!pos", rx97_pos
    $P11 = rx97_cur."binint"()
    repr_get_attr_int $I11, $P11, rx97_curclass, "$!pos"
    lt $I11, 0, rx97_fail266
    nqp_rxmark rx97_bstack, rxsubrule101_pass277, -1, 0
  rxsubrule101_pass277:
    rx97_cstack = rx97_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx97_pos, $P11, rx97_curclass, "$!pos"
    goto alt100_end275
  alt100_1278:
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail266
    substr $S10, rx97_tgt, rx97_pos, 1
    ne $S10, ucs4:"o", rx97_fail266
    add rx97_pos, 1
    repr_bind_attr_int rx97_cur, rx97_curclass, "$!pos", rx97_pos
    $P11 = rx97_cur."octint"()
    repr_get_attr_int $I11, $P11, rx97_curclass, "$!pos"
    lt $I11, 0, rx97_fail266
    nqp_rxmark rx97_bstack, rxsubrule102_pass279, -1, 0
  rxsubrule102_pass279:
    rx97_cstack = rx97_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx97_pos, $P11, rx97_curclass, "$!pos"
    goto alt100_end275
  alt100_2280:
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail266
    substr $S10, rx97_tgt, rx97_pos, 1
    ne $S10, ucs4:"x", rx97_fail266
    add rx97_pos, 1
    repr_bind_attr_int rx97_cur, rx97_curclass, "$!pos", rx97_pos
    $P11 = rx97_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx97_curclass, "$!pos"
    lt $I11, 0, rx97_fail266
    nqp_rxmark rx97_bstack, rxsubrule103_pass281, -1, 0
  rxsubrule103_pass281:
    rx97_cstack = rx97_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx97_pos, $P11, rx97_curclass, "$!pos"
    goto alt100_end275
  alt100_3282:
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail266
    substr $S10, rx97_tgt, rx97_pos, 1
    ne $S10, ucs4:"d", rx97_fail266
    add rx97_pos, 1
    repr_bind_attr_int rx97_cur, rx97_curclass, "$!pos", rx97_pos
    $P11 = rx97_cur."decint"()
    repr_get_attr_int $I11, $P11, rx97_curclass, "$!pos"
    lt $I11, 0, rx97_fail266
    nqp_rxmark rx97_bstack, rxsubrule104_pass283, -1, 0
  rxsubrule104_pass283:
    rx97_cstack = rx97_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx97_pos, $P11, rx97_curclass, "$!pos"
    goto alt100_end275
  alt100_end275:
    nqp_rxcommit rx97_bstack, alt100_end275
    goto alt99_end273
  alt99_1284:
    repr_bind_attr_int rx97_cur, rx97_curclass, "$!pos", rx97_pos
    $P11 = rx97_cur."decint"()
    repr_get_attr_int $I11, $P11, rx97_curclass, "$!pos"
    lt $I11, 0, rx97_fail266
    nqp_rxmark rx97_bstack, rxsubrule105_pass285, -1, 0
  rxsubrule105_pass285:
    rx97_cstack = rx97_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx97_pos, $P11, rx97_curclass, "$!pos"
    goto alt99_end273
  alt99_end273:
    nqp_rxcommit rx97_bstack, alt99_end273
    rx97_cur."!cursor_pass"(rx97_pos, "integer", 'backtrack'=>1)
    .return (rx97_cur)
  rx97_restart265:
    repr_get_attr_obj rx97_cstack, rx97_cur, rx97_curclass, "$!cstack"
  rx97_fail266:
    unless rx97_bstack, rx97_done264
    pop $I19, rx97_bstack
    if_null rx97_cstack, rx97_cstack_done269
    unless rx97_cstack, rx97_cstack_done269
    dec $I19
    set $P11, rx97_cstack[$I19]
  rx97_cstack_done269:
    pop rx97_rep, rx97_bstack
    pop rx97_pos, rx97_bstack
    pop $I19, rx97_bstack
    lt rx97_pos, -1, rx97_done264
    lt rx97_pos, 0, rx97_fail266
    eq $I19, 0, rx97_fail266
    nqp_islist $I20, rx97_cstack
    unless $I20, rx97_jump267
    elements $I18, rx97_bstack
    le $I18, 0, rx97_cut268
    dec $I18
    set $I18, rx97_bstack[$I18]
  rx97_cut268:
    assign rx97_cstack, $I18
  rx97_jump267:
    jump $I19
  rx97_done264:
    rx97_cur."!cursor_fail"()
    .return (rx97_cur) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_28_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx106_tgt
    .local int rx106_pos
    .local int rx106_off
    .local int rx106_eos
    .local int rx106_rep
    .local pmc rx106_cur
    .local pmc rx106_curclass
    .local pmc rx106_bstack
    .local pmc rx106_cstack
    (rx106_cur, rx106_tgt, rx106_pos, rx106_curclass, rx106_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx106_cur
    length rx106_eos, rx106_tgt
    eq $I19, 1, rx106_restart288
    gt rx106_pos, rx106_eos, rx106_fail289
    repr_get_attr_int $I11, self, rx106_curclass, "$!from"
    ne $I11, -1, rxscan107_done295
    goto rxscan107_scan294
  rxscan107_loop293:
    inc rx106_pos
    gt rx106_pos, rx106_eos, rx106_fail289
    repr_bind_attr_int rx106_cur, rx106_curclass, "$!from", rx106_pos
  rxscan107_scan294:
    nqp_rxmark rx106_bstack, rxscan107_loop293, rx106_pos, 0
  rxscan107_done295:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt108_0297
    nqp_push_label $P11, alt108_1306
    nqp_push_label $P11, alt108_2317
    nqp_rxmark rx106_bstack, alt108_end296, -1, 0
    rx106_cur."!alt"(rx106_pos, "alt_nfa__5_1357764670.786", $P11)
    goto rx106_fail289
  alt108_0297:
    nqp_rxmark rx106_bstack, rxcap109_fail299, rx106_pos, 0
    add $I11, rx106_pos, 1
    gt $I11, rx106_eos, rx106_fail289
    substr $S10, rx106_tgt, rx106_pos, 1
    ne $S10, ucs4:".", rx106_fail289
    add rx106_pos, 1
    nqp_rxmark rx106_bstack, rxquantr110_done301, -1, 0
  rxquantr110_loop300:
    ge rx106_pos, rx106_eos, rx106_fail289
    is_cclass $I11, .CCLASS_NUMERIC, rx106_tgt, rx106_pos
    unless $I11, rx106_fail289
    add rx106_pos, 1
    nqp_rxpeek $I19, rx106_bstack, rxquantr110_done301
    inc $I19
    inc $I19
    set rx106_rep, rx106_bstack[$I19]
    nqp_rxcommit rx106_bstack, rxquantr110_done301
    inc rx106_rep
    nqp_rxmark rx106_bstack, rxquantr110_done301, rx106_pos, rx106_rep
    goto rxquantr110_loop300
  rxquantr110_done301:
    nqp_rxpeek $I19, rx106_bstack, rxcap109_fail299
    inc $I19
    set $I11, rx106_bstack[$I19]
    repr_bind_attr_int rx106_cur, rx106_curclass, "$!pos", rx106_pos
    $P11 = rx106_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx106_pos)
    rx106_cstack = rx106_cur."!cursor_capture"($P11, "coeff")
    goto rxcap109_done298
  rxcap109_fail299:
    goto rx106_fail289
  rxcap109_done298:
    nqp_rxmark rx106_bstack, rxquantr111_done303, rx106_pos, 0
  rxquantr111_loop302:
    repr_bind_attr_int rx106_cur, rx106_curclass, "$!pos", rx106_pos
    $P11 = rx106_cur."escale"()
    repr_get_attr_int $I11, $P11, rx106_curclass, "$!pos"
    lt $I11, 0, rx106_fail289
    goto rxsubrule112_pass304
  rxsubrule112_back305:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx106_curclass, "$!pos"
    lt $I11, 0, rx106_fail289
  rxsubrule112_pass304:
    rx106_cstack = rx106_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule112_back305
    push rx106_bstack, $I11
    push rx106_bstack, 0
    push rx106_bstack, rx106_pos
    elements $I11, rx106_cstack
    push rx106_bstack, $I11
    repr_get_attr_int rx106_pos, $P11, rx106_curclass, "$!pos"
    nqp_rxpeek $I19, rx106_bstack, rxquantr111_done303
    inc $I19
    inc $I19
    set rx106_rep, rx106_bstack[$I19]
    nqp_rxcommit rx106_bstack, rxquantr111_done303
    inc rx106_rep
  rxquantr111_done303:
    goto alt108_end296
  alt108_1306:
    nqp_rxmark rx106_bstack, rxcap113_fail308, rx106_pos, 0
    nqp_rxmark rx106_bstack, rxquantr114_done310, -1, 0
  rxquantr114_loop309:
    ge rx106_pos, rx106_eos, rx106_fail289
    is_cclass $I11, .CCLASS_NUMERIC, rx106_tgt, rx106_pos
    unless $I11, rx106_fail289
    add rx106_pos, 1
    nqp_rxpeek $I19, rx106_bstack, rxquantr114_done310
    inc $I19
    inc $I19
    set rx106_rep, rx106_bstack[$I19]
    nqp_rxcommit rx106_bstack, rxquantr114_done310
    inc rx106_rep
    nqp_rxmark rx106_bstack, rxquantr114_done310, rx106_pos, rx106_rep
    goto rxquantr114_loop309
  rxquantr114_done310:
    add $I11, rx106_pos, 1
    gt $I11, rx106_eos, rx106_fail289
    substr $S10, rx106_tgt, rx106_pos, 1
    ne $S10, ucs4:".", rx106_fail289
    add rx106_pos, 1
    nqp_rxmark rx106_bstack, rxquantr115_done312, -1, 0
  rxquantr115_loop311:
    ge rx106_pos, rx106_eos, rx106_fail289
    is_cclass $I11, .CCLASS_NUMERIC, rx106_tgt, rx106_pos
    unless $I11, rx106_fail289
    add rx106_pos, 1
    nqp_rxpeek $I19, rx106_bstack, rxquantr115_done312
    inc $I19
    inc $I19
    set rx106_rep, rx106_bstack[$I19]
    nqp_rxcommit rx106_bstack, rxquantr115_done312
    inc rx106_rep
    nqp_rxmark rx106_bstack, rxquantr115_done312, rx106_pos, rx106_rep
    goto rxquantr115_loop311
  rxquantr115_done312:
    nqp_rxpeek $I19, rx106_bstack, rxcap113_fail308
    inc $I19
    set $I11, rx106_bstack[$I19]
    repr_bind_attr_int rx106_cur, rx106_curclass, "$!pos", rx106_pos
    $P11 = rx106_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx106_pos)
    rx106_cstack = rx106_cur."!cursor_capture"($P11, "coeff")
    goto rxcap113_done307
  rxcap113_fail308:
    goto rx106_fail289
  rxcap113_done307:
    nqp_rxmark rx106_bstack, rxquantr116_done314, rx106_pos, 0
  rxquantr116_loop313:
    repr_bind_attr_int rx106_cur, rx106_curclass, "$!pos", rx106_pos
    $P11 = rx106_cur."escale"()
    repr_get_attr_int $I11, $P11, rx106_curclass, "$!pos"
    lt $I11, 0, rx106_fail289
    goto rxsubrule117_pass315
  rxsubrule117_back316:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx106_curclass, "$!pos"
    lt $I11, 0, rx106_fail289
  rxsubrule117_pass315:
    rx106_cstack = rx106_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule117_back316
    push rx106_bstack, $I11
    push rx106_bstack, 0
    push rx106_bstack, rx106_pos
    elements $I11, rx106_cstack
    push rx106_bstack, $I11
    repr_get_attr_int rx106_pos, $P11, rx106_curclass, "$!pos"
    nqp_rxpeek $I19, rx106_bstack, rxquantr116_done314
    inc $I19
    inc $I19
    set rx106_rep, rx106_bstack[$I19]
    nqp_rxcommit rx106_bstack, rxquantr116_done314
    inc rx106_rep
  rxquantr116_done314:
    goto alt108_end296
  alt108_2317:
    nqp_rxmark rx106_bstack, rxcap118_fail319, rx106_pos, 0
    nqp_rxmark rx106_bstack, rxquantr119_done321, -1, 0
  rxquantr119_loop320:
    ge rx106_pos, rx106_eos, rx106_fail289
    is_cclass $I11, .CCLASS_NUMERIC, rx106_tgt, rx106_pos
    unless $I11, rx106_fail289
    add rx106_pos, 1
    nqp_rxpeek $I19, rx106_bstack, rxquantr119_done321
    inc $I19
    inc $I19
    set rx106_rep, rx106_bstack[$I19]
    nqp_rxcommit rx106_bstack, rxquantr119_done321
    inc rx106_rep
    nqp_rxmark rx106_bstack, rxquantr119_done321, rx106_pos, rx106_rep
    goto rxquantr119_loop320
  rxquantr119_done321:
    nqp_rxpeek $I19, rx106_bstack, rxcap118_fail319
    inc $I19
    set $I11, rx106_bstack[$I19]
    repr_bind_attr_int rx106_cur, rx106_curclass, "$!pos", rx106_pos
    $P11 = rx106_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx106_pos)
    rx106_cstack = rx106_cur."!cursor_capture"($P11, "coeff")
    goto rxcap118_done318
  rxcap118_fail319:
    goto rx106_fail289
  rxcap118_done318:
    repr_bind_attr_int rx106_cur, rx106_curclass, "$!pos", rx106_pos
    $P11 = rx106_cur."escale"()
    repr_get_attr_int $I11, $P11, rx106_curclass, "$!pos"
    lt $I11, 0, rx106_fail289
    nqp_rxmark rx106_bstack, rxsubrule120_pass322, -1, 0
  rxsubrule120_pass322:
    rx106_cstack = rx106_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx106_pos, $P11, rx106_curclass, "$!pos"
    goto alt108_end296
  alt108_end296:
    rx106_cur."!cursor_pass"(rx106_pos, "dec_number", 'backtrack'=>1)
    .return (rx106_cur)
  rx106_restart288:
    repr_get_attr_obj rx106_cstack, rx106_cur, rx106_curclass, "$!cstack"
  rx106_fail289:
    unless rx106_bstack, rx106_done287
    pop $I19, rx106_bstack
    if_null rx106_cstack, rx106_cstack_done292
    unless rx106_cstack, rx106_cstack_done292
    dec $I19
    set $P11, rx106_cstack[$I19]
  rx106_cstack_done292:
    pop rx106_rep, rx106_bstack
    pop rx106_pos, rx106_bstack
    pop $I19, rx106_bstack
    lt rx106_pos, -1, rx106_done287
    lt rx106_pos, 0, rx106_fail289
    eq $I19, 0, rx106_fail289
    nqp_islist $I20, rx106_cstack
    unless $I20, rx106_jump290
    elements $I18, rx106_bstack
    le $I18, 0, rx106_cut291
    dec $I18
    set $I18, rx106_bstack[$I18]
  rx106_cut291:
    assign rx106_cstack, $I18
  rx106_jump290:
    jump $I19
  rx106_done287:
    rx106_cur."!cursor_fail"()
    .return (rx106_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_29_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 85
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx121_tgt
    .local int rx121_pos
    .local int rx121_off
    .local int rx121_eos
    .local int rx121_rep
    .local pmc rx121_cur
    .local pmc rx121_curclass
    .local pmc rx121_bstack
    .local pmc rx121_cstack
    (rx121_cur, rx121_tgt, rx121_pos, rx121_curclass, rx121_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx121_cur
    length rx121_eos, rx121_tgt
    eq $I19, 1, rx121_restart325
    gt rx121_pos, rx121_eos, rx121_fail326
    repr_get_attr_int $I11, self, rx121_curclass, "$!from"
    ne $I11, -1, rxscan122_done332
    goto rxscan122_scan331
  rxscan122_loop330:
    inc rx121_pos
    gt rx121_pos, rx121_eos, rx121_fail326
    repr_bind_attr_int rx121_cur, rx121_curclass, "$!from", rx121_pos
  rxscan122_scan331:
    nqp_rxmark rx121_bstack, rxscan122_loop330, rx121_pos, 0
  rxscan122_done332:
    ge rx121_pos, rx121_eos, rx121_fail326
    substr $S11, rx121_tgt, rx121_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx121_fail326
    inc rx121_pos
    nqp_rxmark rx121_bstack, rxquantr123_done334, rx121_pos, 0
  rxquantr123_loop333:
  alt124_0336:
    nqp_rxmark rx121_bstack, alt124_1337, rx121_pos, 0
    add $I11, rx121_pos, 1
    gt $I11, rx121_eos, rx121_fail326
    substr $S10, rx121_tgt, rx121_pos, 1
    ne $S10, ucs4:"-", rx121_fail326
    add rx121_pos, 1
    goto alt124_end335
  alt124_1337:
    ge rx121_pos, rx121_eos, rx121_fail326
    substr $S11, rx121_tgt, rx121_pos, 1
    index $I11, ucs4:"+", $S11
    lt $I11, 0, rx121_fail326
    inc rx121_pos
  alt124_end335:
    nqp_rxpeek $I19, rx121_bstack, rxquantr123_done334
    inc $I19
    inc $I19
    set rx121_rep, rx121_bstack[$I19]
    nqp_rxcommit rx121_bstack, rxquantr123_done334
    inc rx121_rep
  rxquantr123_done334:
    nqp_rxmark rx121_bstack, rxquantr125_done339, -1, 0
  rxquantr125_loop338:
    ge rx121_pos, rx121_eos, rx121_fail326
    is_cclass $I11, .CCLASS_NUMERIC, rx121_tgt, rx121_pos
    unless $I11, rx121_fail326
    add rx121_pos, 1
    nqp_rxpeek $I19, rx121_bstack, rxquantr125_done339
    inc $I19
    inc $I19
    set rx121_rep, rx121_bstack[$I19]
    nqp_rxcommit rx121_bstack, rxquantr125_done339
    inc rx121_rep
    nqp_rxmark rx121_bstack, rxquantr125_done339, rx121_pos, rx121_rep
    goto rxquantr125_loop338
  rxquantr125_done339:
    rx121_cur."!cursor_pass"(rx121_pos, "escale", 'backtrack'=>1)
    .return (rx121_cur)
  rx121_restart325:
    repr_get_attr_obj rx121_cstack, rx121_cur, rx121_curclass, "$!cstack"
  rx121_fail326:
    unless rx121_bstack, rx121_done324
    pop $I19, rx121_bstack
    if_null rx121_cstack, rx121_cstack_done329
    unless rx121_cstack, rx121_cstack_done329
    dec $I19
    set $P11, rx121_cstack[$I19]
  rx121_cstack_done329:
    pop rx121_rep, rx121_bstack
    pop rx121_pos, rx121_bstack
    pop $I19, rx121_bstack
    lt rx121_pos, -1, rx121_done324
    lt rx121_pos, 0, rx121_fail326
    eq $I19, 0, rx121_fail326
    nqp_islist $I20, rx121_cstack
    unless $I20, rx121_jump327
    elements $I18, rx121_bstack
    le $I18, 0, rx121_cut328
    dec $I18
    set $I18, rx121_bstack[$I18]
  rx121_cut328:
    assign rx121_cstack, $I18
  rx121_jump327:
    jump $I19
  rx121_done324:
    rx121_cur."!cursor_fail"()
    .return (rx121_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_30_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_31_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_curclass
    .local pmc rx126_bstack
    .local pmc rx126_cstack
    (rx126_cur, rx126_tgt, rx126_pos, rx126_curclass, rx126_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx126_cur
    length rx126_eos, rx126_tgt
    eq $I19, 1, rx126_restart342
    gt rx126_pos, rx126_eos, rx126_fail343
    repr_get_attr_int $I11, self, rx126_curclass, "$!from"
    ne $I11, -1, rxscan127_done349
    goto rxscan127_scan348
  rxscan127_loop347:
    inc rx126_pos
    gt rx126_pos, rx126_eos, rx126_fail343
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!from", rx126_pos
  rxscan127_scan348:
    nqp_rxmark rx126_bstack, rxscan127_loop347, rx126_pos, 0
  rxscan127_done349:
    add $I11, rx126_pos, 2
    gt $I11, rx126_eos, rx126_fail343
    substr $S10, rx126_tgt, rx126_pos, 2
    ne $S10, ucs4:"\\\\", rx126_fail343
    add rx126_pos, 2
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!pos", rx126_pos
    $P11 = rx126_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx126_curclass, "$!pos"
    lt $I11, 0, rx126_fail343
    rx126_cur."!cursor_pass"(rx126_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx126_cur)
  rx126_restart342:
    repr_get_attr_obj rx126_cstack, rx126_cur, rx126_curclass, "$!cstack"
  rx126_fail343:
    unless rx126_bstack, rx126_done341
    pop $I19, rx126_bstack
    if_null rx126_cstack, rx126_cstack_done346
    unless rx126_cstack, rx126_cstack_done346
    dec $I19
    set $P11, rx126_cstack[$I19]
  rx126_cstack_done346:
    pop rx126_rep, rx126_bstack
    pop rx126_pos, rx126_bstack
    pop $I19, rx126_bstack
    lt rx126_pos, -1, rx126_done341
    lt rx126_pos, 0, rx126_fail343
    eq $I19, 0, rx126_fail343
    nqp_islist $I20, rx126_cstack
    unless $I20, rx126_jump344
    elements $I18, rx126_bstack
    le $I18, 0, rx126_cut345
    dec $I18
    set $I18, rx126_bstack[$I18]
  rx126_cut345:
    assign rx126_cstack, $I18
  rx126_jump344:
    jump $I19
  rx126_done341:
    rx126_cur."!cursor_fail"()
    .return (rx126_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_32_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    .local pmc rx128_curclass
    .local pmc rx128_bstack
    .local pmc rx128_cstack
    (rx128_cur, rx128_tgt, rx128_pos, rx128_curclass, rx128_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx128_cur
    length rx128_eos, rx128_tgt
    eq $I19, 1, rx128_restart352
    gt rx128_pos, rx128_eos, rx128_fail353
    repr_get_attr_int $I11, self, rx128_curclass, "$!from"
    ne $I11, -1, rxscan129_done359
    goto rxscan129_scan358
  rxscan129_loop357:
    inc rx128_pos
    gt rx128_pos, rx128_eos, rx128_fail353
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!from", rx128_pos
  rxscan129_scan358:
    nqp_rxmark rx128_bstack, rxscan129_loop357, rx128_pos, 0
  rxscan129_done359:
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail353
    substr $S10, rx128_tgt, rx128_pos, 1
    ne $S10, ucs4:"\\", rx128_fail353
    add rx128_pos, 1
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail353
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail353
    nqp_rxmark rx128_bstack, rxsubrule130_pass360, -1, 0
  rxsubrule130_pass360:
    rx128_cstack = rx128_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx128_pos, $P11, rx128_curclass, "$!pos"
    rx128_cur."!cursor_pass"(rx128_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx128_cur)
  rx128_restart352:
    repr_get_attr_obj rx128_cstack, rx128_cur, rx128_curclass, "$!cstack"
  rx128_fail353:
    unless rx128_bstack, rx128_done351
    pop $I19, rx128_bstack
    if_null rx128_cstack, rx128_cstack_done356
    unless rx128_cstack, rx128_cstack_done356
    dec $I19
    set $P11, rx128_cstack[$I19]
  rx128_cstack_done356:
    pop rx128_rep, rx128_bstack
    pop rx128_pos, rx128_bstack
    pop $I19, rx128_bstack
    lt rx128_pos, -1, rx128_done351
    lt rx128_pos, 0, rx128_fail353
    eq $I19, 0, rx128_fail353
    nqp_islist $I20, rx128_cstack
    unless $I20, rx128_jump354
    elements $I18, rx128_bstack
    le $I18, 0, rx128_cut355
    dec $I18
    set $I18, rx128_bstack[$I18]
  rx128_cut355:
    assign rx128_cstack, $I18
  rx128_jump354:
    jump $I19
  rx128_done351:
    rx128_cur."!cursor_fail"()
    .return (rx128_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_33_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx131_tgt
    .local int rx131_pos
    .local int rx131_off
    .local int rx131_eos
    .local int rx131_rep
    .local pmc rx131_cur
    .local pmc rx131_curclass
    .local pmc rx131_bstack
    .local pmc rx131_cstack
    (rx131_cur, rx131_tgt, rx131_pos, rx131_curclass, rx131_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx131_cur
    length rx131_eos, rx131_tgt
    eq $I19, 1, rx131_restart363
    gt rx131_pos, rx131_eos, rx131_fail364
    repr_get_attr_int $I11, self, rx131_curclass, "$!from"
    ne $I11, -1, rxscan132_done370
    goto rxscan132_scan369
  rxscan132_loop368:
    inc rx131_pos
    gt rx131_pos, rx131_eos, rx131_fail364
    repr_bind_attr_int rx131_cur, rx131_curclass, "$!from", rx131_pos
  rxscan132_scan369:
    nqp_rxmark rx131_bstack, rxscan132_loop368, rx131_pos, 0
  rxscan132_done370:
    add $I11, rx131_pos, 2
    gt $I11, rx131_eos, rx131_fail364
    substr $S10, rx131_tgt, rx131_pos, 2
    ne $S10, ucs4:"\\b", rx131_fail364
    add rx131_pos, 2
    repr_bind_attr_int rx131_cur, rx131_curclass, "$!pos", rx131_pos
    $P11 = rx131_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx131_curclass, "$!pos"
    lt $I11, 0, rx131_fail364
    rx131_cur."!cursor_pass"(rx131_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx131_cur)
  rx131_restart363:
    repr_get_attr_obj rx131_cstack, rx131_cur, rx131_curclass, "$!cstack"
  rx131_fail364:
    unless rx131_bstack, rx131_done362
    pop $I19, rx131_bstack
    if_null rx131_cstack, rx131_cstack_done367
    unless rx131_cstack, rx131_cstack_done367
    dec $I19
    set $P11, rx131_cstack[$I19]
  rx131_cstack_done367:
    pop rx131_rep, rx131_bstack
    pop rx131_pos, rx131_bstack
    pop $I19, rx131_bstack
    lt rx131_pos, -1, rx131_done362
    lt rx131_pos, 0, rx131_fail364
    eq $I19, 0, rx131_fail364
    nqp_islist $I20, rx131_cstack
    unless $I20, rx131_jump365
    elements $I18, rx131_bstack
    le $I18, 0, rx131_cut366
    dec $I18
    set $I18, rx131_bstack[$I18]
  rx131_cut366:
    assign rx131_cstack, $I18
  rx131_jump365:
    jump $I19
  rx131_done362:
    rx131_cur."!cursor_fail"()
    .return (rx131_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_34_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx133_tgt
    .local int rx133_pos
    .local int rx133_off
    .local int rx133_eos
    .local int rx133_rep
    .local pmc rx133_cur
    .local pmc rx133_curclass
    .local pmc rx133_bstack
    .local pmc rx133_cstack
    (rx133_cur, rx133_tgt, rx133_pos, rx133_curclass, rx133_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx133_cur
    length rx133_eos, rx133_tgt
    eq $I19, 1, rx133_restart373
    gt rx133_pos, rx133_eos, rx133_fail374
    repr_get_attr_int $I11, self, rx133_curclass, "$!from"
    ne $I11, -1, rxscan134_done380
    goto rxscan134_scan379
  rxscan134_loop378:
    inc rx133_pos
    gt rx133_pos, rx133_eos, rx133_fail374
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!from", rx133_pos
  rxscan134_scan379:
    nqp_rxmark rx133_bstack, rxscan134_loop378, rx133_pos, 0
  rxscan134_done380:
    add $I11, rx133_pos, 2
    gt $I11, rx133_eos, rx133_fail374
    substr $S10, rx133_tgt, rx133_pos, 2
    ne $S10, ucs4:"\\n", rx133_fail374
    add rx133_pos, 2
    repr_bind_attr_int rx133_cur, rx133_curclass, "$!pos", rx133_pos
    $P11 = rx133_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx133_curclass, "$!pos"
    lt $I11, 0, rx133_fail374
    rx133_cur."!cursor_pass"(rx133_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx133_cur)
  rx133_restart373:
    repr_get_attr_obj rx133_cstack, rx133_cur, rx133_curclass, "$!cstack"
  rx133_fail374:
    unless rx133_bstack, rx133_done372
    pop $I19, rx133_bstack
    if_null rx133_cstack, rx133_cstack_done377
    unless rx133_cstack, rx133_cstack_done377
    dec $I19
    set $P11, rx133_cstack[$I19]
  rx133_cstack_done377:
    pop rx133_rep, rx133_bstack
    pop rx133_pos, rx133_bstack
    pop $I19, rx133_bstack
    lt rx133_pos, -1, rx133_done372
    lt rx133_pos, 0, rx133_fail374
    eq $I19, 0, rx133_fail374
    nqp_islist $I20, rx133_cstack
    unless $I20, rx133_jump375
    elements $I18, rx133_bstack
    le $I18, 0, rx133_cut376
    dec $I18
    set $I18, rx133_bstack[$I18]
  rx133_cut376:
    assign rx133_cstack, $I18
  rx133_jump375:
    jump $I19
  rx133_done372:
    rx133_cur."!cursor_fail"()
    .return (rx133_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_35_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
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
    ne $S10, ucs4:"\\r", rx135_fail384
    add rx135_pos, 2
    repr_bind_attr_int rx135_cur, rx135_curclass, "$!pos", rx135_pos
    $P11 = rx135_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx135_curclass, "$!pos"
    lt $I11, 0, rx135_fail384
    rx135_cur."!cursor_pass"(rx135_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
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
.sub "quote_escape:sym<tab>" :subid("cuid_36_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 94
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
    ne $S10, ucs4:"\\t", rx137_fail394
    add rx137_pos, 2
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail394
    rx137_cur."!cursor_pass"(rx137_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
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
.sub "quote_escape:sym<ff>" :subid("cuid_37_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 95
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
    ne $S10, ucs4:"\\f", rx139_fail404
    add rx139_pos, 2
    repr_bind_attr_int rx139_cur, rx139_curclass, "$!pos", rx139_pos
    $P11 = rx139_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx139_curclass, "$!pos"
    lt $I11, 0, rx139_fail404
    rx139_cur."!cursor_pass"(rx139_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
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
.sub "quote_escape:sym<esc>" :subid("cuid_38_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 96
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
    ne $S10, ucs4:"\\e", rx141_fail414
    add rx141_pos, 2
    repr_bind_attr_int rx141_cur, rx141_curclass, "$!pos", rx141_pos
    $P11 = rx141_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx141_curclass, "$!pos"
    lt $I11, 0, rx141_fail414
    rx141_cur."!cursor_pass"(rx141_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
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
.sub "quote_escape:sym<hex>" :subid("cuid_39_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 97
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
    ne $S10, ucs4:"\\x", rx143_fail424
    add rx143_pos, 2
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail424
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt145_0432
    nqp_push_label $P11, alt145_1434
    nqp_rxmark rx143_bstack, alt145_end431, -1, 0
    rx143_cur."!alt"(rx143_pos, "alt_nfa__6_1357764670.857", $P11)
    goto rx143_fail424
  alt145_0432:
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail424
    nqp_rxmark rx143_bstack, rxsubrule146_pass433, -1, 0
  rxsubrule146_pass433:
    rx143_cstack = rx143_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx143_pos, $P11, rx143_curclass, "$!pos"
    goto alt145_end431
  alt145_1434:
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail424
    substr $S10, rx143_tgt, rx143_pos, 1
    ne $S10, ucs4:"[", rx143_fail424
    add rx143_pos, 1
    repr_bind_attr_int rx143_cur, rx143_curclass, "$!pos", rx143_pos
    $P11 = rx143_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx143_curclass, "$!pos"
    lt $I11, 0, rx143_fail424
    nqp_rxmark rx143_bstack, rxsubrule147_pass435, -1, 0
  rxsubrule147_pass435:
    rx143_cstack = rx143_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx143_pos, $P11, rx143_curclass, "$!pos"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail424
    substr $S10, rx143_tgt, rx143_pos, 1
    ne $S10, ucs4:"]", rx143_fail424
    add rx143_pos, 1
    goto alt145_end431
  alt145_end431:
    nqp_rxcommit rx143_bstack, alt145_end431
    rx143_cur."!cursor_pass"(rx143_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
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
.sub "quote_escape:sym<oct>" :subid("cuid_40_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx148_tgt
    .local int rx148_pos
    .local int rx148_off
    .local int rx148_eos
    .local int rx148_rep
    .local pmc rx148_cur
    .local pmc rx148_curclass
    .local pmc rx148_bstack
    .local pmc rx148_cstack
    (rx148_cur, rx148_tgt, rx148_pos, rx148_curclass, rx148_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx148_cur
    length rx148_eos, rx148_tgt
    eq $I19, 1, rx148_restart438
    gt rx148_pos, rx148_eos, rx148_fail439
    repr_get_attr_int $I11, self, rx148_curclass, "$!from"
    ne $I11, -1, rxscan149_done445
    goto rxscan149_scan444
  rxscan149_loop443:
    inc rx148_pos
    gt rx148_pos, rx148_eos, rx148_fail439
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!from", rx148_pos
  rxscan149_scan444:
    nqp_rxmark rx148_bstack, rxscan149_loop443, rx148_pos, 0
  rxscan149_done445:
    add $I11, rx148_pos, 2
    gt $I11, rx148_eos, rx148_fail439
    substr $S10, rx148_tgt, rx148_pos, 2
    ne $S10, ucs4:"\\o", rx148_fail439
    add rx148_pos, 2
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!pos", rx148_pos
    $P11 = rx148_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx148_curclass, "$!pos"
    lt $I11, 0, rx148_fail439
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt150_0447
    nqp_push_label $P11, alt150_1449
    nqp_rxmark rx148_bstack, alt150_end446, -1, 0
    rx148_cur."!alt"(rx148_pos, "alt_nfa__7_1357764670.868", $P11)
    goto rx148_fail439
  alt150_0447:
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!pos", rx148_pos
    $P11 = rx148_cur."octint"()
    repr_get_attr_int $I11, $P11, rx148_curclass, "$!pos"
    lt $I11, 0, rx148_fail439
    nqp_rxmark rx148_bstack, rxsubrule151_pass448, -1, 0
  rxsubrule151_pass448:
    rx148_cstack = rx148_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx148_pos, $P11, rx148_curclass, "$!pos"
    goto alt150_end446
  alt150_1449:
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail439
    substr $S10, rx148_tgt, rx148_pos, 1
    ne $S10, ucs4:"[", rx148_fail439
    add rx148_pos, 1
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!pos", rx148_pos
    $P11 = rx148_cur."octints"()
    repr_get_attr_int $I11, $P11, rx148_curclass, "$!pos"
    lt $I11, 0, rx148_fail439
    nqp_rxmark rx148_bstack, rxsubrule152_pass450, -1, 0
  rxsubrule152_pass450:
    rx148_cstack = rx148_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx148_pos, $P11, rx148_curclass, "$!pos"
    add $I11, rx148_pos, 1
    gt $I11, rx148_eos, rx148_fail439
    substr $S10, rx148_tgt, rx148_pos, 1
    ne $S10, ucs4:"]", rx148_fail439
    add rx148_pos, 1
    goto alt150_end446
  alt150_end446:
    nqp_rxcommit rx148_bstack, alt150_end446
    rx148_cur."!cursor_pass"(rx148_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx148_cur)
  rx148_restart438:
    repr_get_attr_obj rx148_cstack, rx148_cur, rx148_curclass, "$!cstack"
  rx148_fail439:
    unless rx148_bstack, rx148_done437
    pop $I19, rx148_bstack
    if_null rx148_cstack, rx148_cstack_done442
    unless rx148_cstack, rx148_cstack_done442
    dec $I19
    set $P11, rx148_cstack[$I19]
  rx148_cstack_done442:
    pop rx148_rep, rx148_bstack
    pop rx148_pos, rx148_bstack
    pop $I19, rx148_bstack
    lt rx148_pos, -1, rx148_done437
    lt rx148_pos, 0, rx148_fail439
    eq $I19, 0, rx148_fail439
    nqp_islist $I20, rx148_cstack
    unless $I20, rx148_jump440
    elements $I18, rx148_bstack
    le $I18, 0, rx148_cut441
    dec $I18
    set $I18, rx148_bstack[$I18]
  rx148_cut441:
    assign rx148_cstack, $I18
  rx148_jump440:
    jump $I19
  rx148_done437:
    rx148_cur."!cursor_fail"()
    .return (rx148_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_41_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    .local pmc rx153_curclass
    .local pmc rx153_bstack
    .local pmc rx153_cstack
    (rx153_cur, rx153_tgt, rx153_pos, rx153_curclass, rx153_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx153_cur
    length rx153_eos, rx153_tgt
    eq $I19, 1, rx153_restart453
    gt rx153_pos, rx153_eos, rx153_fail454
    repr_get_attr_int $I11, self, rx153_curclass, "$!from"
    ne $I11, -1, rxscan154_done460
    goto rxscan154_scan459
  rxscan154_loop458:
    inc rx153_pos
    gt rx153_pos, rx153_eos, rx153_fail454
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!from", rx153_pos
  rxscan154_scan459:
    nqp_rxmark rx153_bstack, rxscan154_loop458, rx153_pos, 0
  rxscan154_done460:
    add $I11, rx153_pos, 2
    gt $I11, rx153_eos, rx153_fail454
    substr $S10, rx153_tgt, rx153_pos, 2
    ne $S10, ucs4:"\\c", rx153_fail454
    add rx153_pos, 2
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail454
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail454
    nqp_rxmark rx153_bstack, rxsubrule155_pass461, -1, 0
  rxsubrule155_pass461:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    rx153_cur."!cursor_pass"(rx153_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx153_cur)
  rx153_restart453:
    repr_get_attr_obj rx153_cstack, rx153_cur, rx153_curclass, "$!cstack"
  rx153_fail454:
    unless rx153_bstack, rx153_done452
    pop $I19, rx153_bstack
    if_null rx153_cstack, rx153_cstack_done457
    unless rx153_cstack, rx153_cstack_done457
    dec $I19
    set $P11, rx153_cstack[$I19]
  rx153_cstack_done457:
    pop rx153_rep, rx153_bstack
    pop rx153_pos, rx153_bstack
    pop $I19, rx153_bstack
    lt rx153_pos, -1, rx153_done452
    lt rx153_pos, 0, rx153_fail454
    eq $I19, 0, rx153_fail454
    nqp_islist $I20, rx153_cstack
    unless $I20, rx153_jump455
    elements $I18, rx153_bstack
    le $I18, 0, rx153_cut456
    dec $I18
    set $I18, rx153_bstack[$I18]
  rx153_cut456:
    assign rx153_cstack, $I18
  rx153_jump455:
    jump $I19
  rx153_done452:
    rx153_cur."!cursor_fail"()
    .return (rx153_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_42_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 106
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_curclass
    .local pmc rx156_bstack
    .local pmc rx156_cstack
    (rx156_cur, rx156_tgt, rx156_pos, rx156_curclass, rx156_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx156_cur
    length rx156_eos, rx156_tgt
    eq $I19, 1, rx156_restart464
    gt rx156_pos, rx156_eos, rx156_fail465
    repr_get_attr_int $I11, self, rx156_curclass, "$!from"
    ne $I11, -1, rxscan157_done471
    goto rxscan157_scan470
  rxscan157_loop469:
    inc rx156_pos
    gt rx156_pos, rx156_eos, rx156_fail465
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!from", rx156_pos
  rxscan157_scan470:
    nqp_rxmark rx156_bstack, rxscan157_loop469, rx156_pos, 0
  rxscan157_done471:
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail465
    substr $S10, rx156_tgt, rx156_pos, 1
    ne $S10, ucs4:"\\", rx156_fail465
    add rx156_pos, 1
    nqp_rxmark rx156_bstack, rxcap158_fail473, rx156_pos, 0
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail465
    substr $S10, rx156_tgt, rx156_pos, 1
    ne $S10, ucs4:"0", rx156_fail465
    add rx156_pos, 1
    nqp_rxpeek $I19, rx156_bstack, rxcap158_fail473
    inc $I19
    set $I11, rx156_bstack[$I19]
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!pos", rx156_pos
    $P11 = rx156_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx156_pos)
    rx156_cstack = rx156_cur."!cursor_capture"($P11, "sym")
    goto rxcap158_done472
  rxcap158_fail473:
    goto rx156_fail465
  rxcap158_done472:
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!pos", rx156_pos
    $P11 = rx156_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx156_curclass, "$!pos"
    lt $I11, 0, rx156_fail465
    rx156_cur."!cursor_pass"(rx156_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx156_cur)
  rx156_restart464:
    repr_get_attr_obj rx156_cstack, rx156_cur, rx156_curclass, "$!cstack"
  rx156_fail465:
    unless rx156_bstack, rx156_done463
    pop $I19, rx156_bstack
    if_null rx156_cstack, rx156_cstack_done468
    unless rx156_cstack, rx156_cstack_done468
    dec $I19
    set $P11, rx156_cstack[$I19]
  rx156_cstack_done468:
    pop rx156_rep, rx156_bstack
    pop rx156_pos, rx156_bstack
    pop $I19, rx156_bstack
    lt rx156_pos, -1, rx156_done463
    lt rx156_pos, 0, rx156_fail465
    eq $I19, 0, rx156_fail465
    nqp_islist $I20, rx156_cstack
    unless $I20, rx156_jump466
    elements $I18, rx156_bstack
    le $I18, 0, rx156_cut467
    dec $I18
    set $I18, rx156_bstack[$I18]
  rx156_cut467:
    assign rx156_cstack, $I18
  rx156_jump466:
    jump $I19
  rx156_done463:
    rx156_cur."!cursor_fail"()
    .return (rx156_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_43_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_177_1357764670.549' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1357764670.549' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_45_1357764670.549' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_178_1357764670.549' 
    capture_lex $P5009 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    .local pmc rx159_curclass
    .local pmc rx159_bstack
    .local pmc rx159_cstack
    (rx159_cur, rx159_tgt, rx159_pos, rx159_curclass, rx159_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx159_cur
    length rx159_eos, rx159_tgt
    eq $I19, 1, rx159_restart476
    gt rx159_pos, rx159_eos, rx159_fail477
    repr_get_attr_int $I11, self, rx159_curclass, "$!from"
    ne $I11, -1, rxscan160_done483
    goto rxscan160_scan482
  rxscan160_loop481:
    inc rx159_pos
    gt rx159_pos, rx159_eos, rx159_fail477
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!from", rx159_pos
  rxscan160_scan482:
    nqp_rxmark rx159_bstack, rxscan160_loop481, rx159_pos, 0
  rxscan160_done483:
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    store_lex unicode:"$\x{a2}", rx159_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_177_1357764670.549' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx159_pos, 1
    gt $I11, rx159_eos, rx159_fail477
    substr $S10, rx159_tgt, rx159_pos, 1
    ne $S10, ucs4:"\\", rx159_fail477
    add rx159_pos, 1
  alt161_0485:
    nqp_rxmark rx159_bstack, alt161_1512, rx159_pos, 0
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx159_curclass, "$!pos"
    lt $I11, 0, rx159_fail477
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt162_0487
    nqp_push_label $P11, alt162_1499
    nqp_rxmark rx159_bstack, alt162_end486, -1, 0
    rx159_cur."!alt"(rx159_pos, "alt_nfa__8_1357764670.902", $P11)
    goto rx159_fail477
  alt162_0487:
    .const 'Sub' $P5004 = 'cuid_44_1357764670.549' 
    capture_lex $P5004
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx159_curclass, "$!pos"
    lt $I11, 0, rx159_fail477
    nqp_rxmark rx159_bstack, rxsubrule165_pass498, -1, 0
  rxsubrule165_pass498:
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx159_pos, $P11, rx159_curclass, "$!pos"
    goto alt162_end486
  alt162_1499:
    .const 'Sub' $P5005 = 'cuid_45_1357764670.549' 
    capture_lex $P5005
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx159_curclass, "$!pos"
    lt $I11, 0, rx159_fail477
    nqp_rxmark rx159_bstack, rxsubrule168_pass510, -1, 0
  rxsubrule168_pass510:
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx159_pos, $P11, rx159_curclass, "$!pos"
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    store_lex unicode:"$\x{a2}", rx159_cur
    $P5006 = $P101."MATCH"()
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_178_1357764670.549' 
    capture_lex $P5007
    $P5008 = $P5007()
    goto alt162_end486
  alt162_end486:
    nqp_rxcommit rx159_bstack, alt162_end486
    goto alt161_end484
  alt161_1512:
    nqp_rxmark rx159_bstack, rxcap169_fail514, rx159_pos, 0
    ge rx159_pos, rx159_eos, rx159_fail477
    add rx159_pos, 1
    nqp_rxpeek $I19, rx159_bstack, rxcap169_fail514
    inc $I19
    set $I11, rx159_bstack[$I19]
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx159_pos)
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "textq")
    goto rxcap169_done513
  rxcap169_fail514:
    goto rx159_fail477
  rxcap169_done513:
  alt161_end484:
    rx159_cur."!cursor_pass"(rx159_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx159_cur)
  rx159_restart476:
    repr_get_attr_obj rx159_cstack, rx159_cur, rx159_curclass, "$!cstack"
  rx159_fail477:
    unless rx159_bstack, rx159_done475
    pop $I19, rx159_bstack
    if_null rx159_cstack, rx159_cstack_done480
    unless rx159_cstack, rx159_cstack_done480
    dec $I19
    set $P11, rx159_cstack[$I19]
  rx159_cstack_done480:
    pop rx159_rep, rx159_bstack
    pop rx159_pos, rx159_bstack
    pop $I19, rx159_bstack
    lt rx159_pos, -1, rx159_done475
    lt rx159_pos, 0, rx159_fail477
    eq $I19, 0, rx159_fail477
    nqp_islist $I20, rx159_cstack
    unless $I20, rx159_jump478
    elements $I18, rx159_bstack
    le $I18, 0, rx159_cut479
    dec $I18
    set $I18, rx159_bstack[$I18]
  rx159_cut479:
    assign rx159_cstack, $I18
  rx159_jump478:
    jump $I19
  rx159_done475:
    rx159_cur."!cursor_fail"()
    .return (rx159_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1357764670.549") :anon :lex :outer("cuid_43_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_44_1357764670.549") :anon :lex :outer("cuid_43_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
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
    eq $I19, 1, rx163_restart490
    gt rx163_pos, rx163_eos, rx163_fail491
    repr_get_attr_int $I11, self, rx163_curclass, "$!from"
    ne $I11, -1, rxscan164_done497
    goto rxscan164_scan496
  rxscan164_loop495:
    inc rx163_pos
    gt rx163_pos, rx163_eos, rx163_fail491
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!from", rx163_pos
  rxscan164_scan496:
    nqp_rxmark rx163_bstack, rxscan164_loop495, rx163_pos, 0
  rxscan164_done497:
    ge rx163_pos, rx163_eos, rx163_fail491
    is_cclass $I11, .CCLASS_WORD, rx163_tgt, rx163_pos
    if $I11, rx163_fail491
    add rx163_pos, 1
    rx163_cur."!cursor_pass"(rx163_pos, 'backtrack'=>1)
    .return (rx163_cur)
  rx163_restart490:
    repr_get_attr_obj rx163_cstack, rx163_cur, rx163_curclass, "$!cstack"
  rx163_fail491:
    unless rx163_bstack, rx163_done489
    pop $I19, rx163_bstack
    if_null rx163_cstack, rx163_cstack_done494
    unless rx163_cstack, rx163_cstack_done494
    dec $I19
    set $P11, rx163_cstack[$I19]
  rx163_cstack_done494:
    pop rx163_rep, rx163_bstack
    pop rx163_pos, rx163_bstack
    pop $I19, rx163_bstack
    lt rx163_pos, -1, rx163_done489
    lt rx163_pos, 0, rx163_fail491
    eq $I19, 0, rx163_fail491
    nqp_islist $I20, rx163_cstack
    unless $I20, rx163_jump492
    elements $I18, rx163_bstack
    le $I18, 0, rx163_cut493
    dec $I18
    set $I18, rx163_bstack[$I18]
  rx163_cut493:
    assign rx163_cstack, $I18
  rx163_jump492:
    jump $I19
  rx163_done489:
    rx163_cur."!cursor_fail"()
    .return (rx163_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_45_1357764670.549") :anon :lex :outer("cuid_43_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx166_tgt
    .local int rx166_pos
    .local int rx166_off
    .local int rx166_eos
    .local int rx166_rep
    .local pmc rx166_cur
    .local pmc rx166_curclass
    .local pmc rx166_bstack
    .local pmc rx166_cstack
    (rx166_cur, rx166_tgt, rx166_pos, rx166_curclass, rx166_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx166_cur
    length rx166_eos, rx166_tgt
    eq $I19, 1, rx166_restart502
    gt rx166_pos, rx166_eos, rx166_fail503
    repr_get_attr_int $I11, self, rx166_curclass, "$!from"
    ne $I11, -1, rxscan167_done509
    goto rxscan167_scan508
  rxscan167_loop507:
    inc rx166_pos
    gt rx166_pos, rx166_eos, rx166_fail503
    repr_bind_attr_int rx166_cur, rx166_curclass, "$!from", rx166_pos
  rxscan167_scan508:
    nqp_rxmark rx166_bstack, rxscan167_loop507, rx166_pos, 0
  rxscan167_done509:
    ge rx166_pos, rx166_eos, rx166_fail503
    is_cclass $I11, .CCLASS_WORD, rx166_tgt, rx166_pos
    unless $I11, rx166_fail503
    add rx166_pos, 1
    rx166_cur."!cursor_pass"(rx166_pos, 'backtrack'=>1)
    .return (rx166_cur)
  rx166_restart502:
    repr_get_attr_obj rx166_cstack, rx166_cur, rx166_curclass, "$!cstack"
  rx166_fail503:
    unless rx166_bstack, rx166_done501
    pop $I19, rx166_bstack
    if_null rx166_cstack, rx166_cstack_done506
    unless rx166_cstack, rx166_cstack_done506
    dec $I19
    set $P11, rx166_cstack[$I19]
  rx166_cstack_done506:
    pop rx166_rep, rx166_bstack
    pop rx166_pos, rx166_bstack
    pop $I19, rx166_bstack
    lt rx166_pos, -1, rx166_done501
    lt rx166_pos, 0, rx166_fail503
    eq $I19, 0, rx166_fail503
    nqp_islist $I20, rx166_cstack
    unless $I20, rx166_jump504
    elements $I18, rx166_bstack
    le $I18, 0, rx166_cut505
    dec $I18
    set $I18, rx166_bstack[$I18]
  rx166_cut505:
    assign rx166_cstack, $I18
  rx166_jump504:
    jump $I19
  rx166_done501:
    rx166_cur."!cursor_fail"()
    .return (rx166_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1357764670.549") :anon :lex :outer("cuid_43_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 113

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$/"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback511
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5005
  fallback511:
    $P5006 = $P5003."Str"()
    $P5007 = $P5001."throw_unrecog_backslash_seq"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_46_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_47_1357764670.549' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx170_restart517
    gt rx170_pos, rx170_eos, rx170_fail518
    repr_get_attr_int $I11, self, rx170_curclass, "$!from"
    ne $I11, -1, rxscan171_done524
    goto rxscan171_scan523
  rxscan171_loop522:
    inc rx170_pos
    gt rx170_pos, rx170_eos, rx170_fail518
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!from", rx170_pos
  rxscan171_scan523:
    nqp_rxmark rx170_bstack, rxscan171_loop522, rx170_pos, 0
  rxscan171_done524:
  alt172_0526:
    nqp_rxmark rx170_bstack, alt172_1528, rx170_pos, 0
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!pos", rx170_pos
    $P11 = rx170_cur."integer"()
    repr_get_attr_int $I11, $P11, rx170_curclass, "$!pos"
    lt $I11, 0, rx170_fail518
    nqp_rxmark rx170_bstack, rxsubrule173_pass527, -1, 0
  rxsubrule173_pass527:
    rx170_cstack = rx170_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx170_pos, $P11, rx170_curclass, "$!pos"
    goto alt172_end525
  alt172_1528:
    ge rx170_pos, rx170_eos, rx170_fail518
    substr $S11, rx170_tgt, rx170_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx170_fail518
    inc rx170_pos
    set rx170_rep, 0
    nqp_rxmark rx170_bstack, rxquantf174_loop529, rx170_pos, rx170_rep
    goto rxquantf174_done530
  rxquantf174_loop529:
    set $I12, rx170_rep
    nqp_rxmark rx170_bstack, rxconj175_fail532, rx170_pos, 0
    goto rxconj175_first533
  rxconj175_fail532:
    goto rx170_fail518
  rxconj175_first533:
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail518
    substr $S10, rx170_tgt, rx170_pos, 1
    eq $S10, ucs4:"]", rx170_fail518
    add rx170_pos, 1
    nqp_rxpeek $I19, rx170_bstack, rxconj175_fail532
    inc $I19
    set $I11, rx170_bstack[$I19]
    nqp_rxmark rx170_bstack, rxconj175_fail532, $I11, rx170_pos
    set rx170_pos, $I11
    ge rx170_pos, rx170_eos, rx170_fail518
    substr $S11, rx170_tgt, rx170_pos, 1
    index $I11, ucs4:",#", $S11
    ge $I11, 0, rx170_fail518
    inc rx170_pos
    nqp_rxpeek $I19, rx170_bstack, rxconj175_fail532
    inc $I19
    set $I11, rx170_bstack[$I19]
    inc $I19
    set $I12, rx170_bstack[$I19]
    ne rx170_pos, $I12, rx170_fail518
    set rx170_pos, $I11
    ge rx170_pos, rx170_eos, rx170_fail518
    add rx170_pos, 1
    set rx170_rep, $I12
    inc rx170_rep
    nqp_rxmark rx170_bstack, rxquantf174_loop529, rx170_pos, rx170_rep
  rxquantf174_done530:
    ge rx170_pos, rx170_eos, rx170_fail518
    substr $S11, rx170_tgt, rx170_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx170_fail518
    inc rx170_pos
    .const 'Sub' $P5001 = 'cuid_47_1357764670.549' 
    capture_lex $P5001
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!pos", rx170_pos
    $P11 = rx170_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx170_curclass, "$!pos"
    lt $I11, 0, rx170_fail518
  alt172_end525:
    rx170_cur."!cursor_pass"(rx170_pos, "charname", 'backtrack'=>1)
    .return (rx170_cur)
  rx170_restart517:
    repr_get_attr_obj rx170_cstack, rx170_cur, rx170_curclass, "$!cstack"
  rx170_fail518:
    unless rx170_bstack, rx170_done516
    pop $I19, rx170_bstack
    if_null rx170_cstack, rx170_cstack_done521
    unless rx170_cstack, rx170_cstack_done521
    dec $I19
    set $P11, rx170_cstack[$I19]
  rx170_cstack_done521:
    pop rx170_rep, rx170_bstack
    pop rx170_pos, rx170_bstack
    pop $I19, rx170_bstack
    lt rx170_pos, -1, rx170_done516
    lt rx170_pos, 0, rx170_fail518
    eq $I19, 0, rx170_fail518
    nqp_islist $I20, rx170_cstack
    unless $I20, rx170_jump519
    elements $I18, rx170_bstack
    le $I18, 0, rx170_cut520
    dec $I18
    set $I18, rx170_bstack[$I18]
  rx170_cut520:
    assign rx170_cstack, $I18
  rx170_jump519:
    jump $I19
  rx170_done516:
    rx170_cur."!cursor_fail"()
    .return (rx170_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_47_1357764670.549") :anon :lex :outer("cuid_46_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_curclass
    .local pmc rx176_bstack
    .local pmc rx176_cstack
    (rx176_cur, rx176_tgt, rx176_pos, rx176_curclass, rx176_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx176_cur
    length rx176_eos, rx176_tgt
    eq $I19, 1, rx176_restart536
    gt rx176_pos, rx176_eos, rx176_fail537
    repr_get_attr_int $I11, self, rx176_curclass, "$!from"
    ne $I11, -1, rxscan177_done543
    goto rxscan177_scan542
  rxscan177_loop541:
    inc rx176_pos
    gt rx176_pos, rx176_eos, rx176_fail537
    repr_bind_attr_int rx176_cur, rx176_curclass, "$!from", rx176_pos
  rxscan177_scan542:
    nqp_rxmark rx176_bstack, rxscan177_loop541, rx176_pos, 0
  rxscan177_done543:
    nqp_rxmark rx176_bstack, rxquantr178_done545, rx176_pos, 0
  rxquantr178_loop544:
    ge rx176_pos, rx176_eos, rx176_fail537
    is_cclass $I11, .CCLASS_WHITESPACE, rx176_tgt, rx176_pos
    unless $I11, rx176_fail537
    add rx176_pos, 1
    nqp_rxpeek $I19, rx176_bstack, rxquantr178_done545
    inc $I19
    inc $I19
    set rx176_rep, rx176_bstack[$I19]
    nqp_rxcommit rx176_bstack, rxquantr178_done545
    inc rx176_rep
    nqp_rxmark rx176_bstack, rxquantr178_done545, rx176_pos, rx176_rep
    goto rxquantr178_loop544
  rxquantr178_done545:
  alt179_0547:
    nqp_rxmark rx176_bstack, alt179_1548, rx176_pos, 0
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail537
    substr $S10, rx176_tgt, rx176_pos, 1
    ne $S10, ucs4:"]", rx176_fail537
    add rx176_pos, 1
    goto alt179_end546
  alt179_1548:
    ge rx176_pos, rx176_eos, rx176_fail537
    substr $S11, rx176_tgt, rx176_pos, 1
    index $I11, ucs4:",#", $S11
    lt $I11, 0, rx176_fail537
    inc rx176_pos
  alt179_end546:
    rx176_cur."!cursor_pass"(rx176_pos, 'backtrack'=>1)
    .return (rx176_cur)
  rx176_restart536:
    repr_get_attr_obj rx176_cstack, rx176_cur, rx176_curclass, "$!cstack"
  rx176_fail537:
    unless rx176_bstack, rx176_done535
    pop $I19, rx176_bstack
    if_null rx176_cstack, rx176_cstack_done540
    unless rx176_cstack, rx176_cstack_done540
    dec $I19
    set $P11, rx176_cstack[$I19]
  rx176_cstack_done540:
    pop rx176_rep, rx176_bstack
    pop rx176_pos, rx176_bstack
    pop $I19, rx176_bstack
    lt rx176_pos, -1, rx176_done535
    lt rx176_pos, 0, rx176_fail537
    eq $I19, 0, rx176_fail537
    nqp_islist $I20, rx176_cstack
    unless $I20, rx176_jump538
    elements $I18, rx176_bstack
    le $I18, 0, rx176_cut539
    dec $I18
    set $I18, rx176_bstack[$I18]
  rx176_cut539:
    assign rx176_cstack, $I18
  rx176_jump538:
    jump $I19
  rx176_done535:
    rx176_cur."!cursor_fail"()
    .return (rx176_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_48_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 124
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx180_restart551
    gt rx180_pos, rx180_eos, rx180_fail552
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done558
    goto rxscan181_scan557
  rxscan181_loop556:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail552
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan557:
    nqp_rxmark rx180_bstack, rxscan181_loop556, rx180_pos, 0
  rxscan181_done558:
    nqp_rxmark rx180_bstack, rxquantr182_done560, -1, 0
  rxquantr182_loop559:
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."ws"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail552
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."charname"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail552
    nqp_rxmark rx180_bstack, rxsubrule184_pass562, -1, 0
  rxsubrule184_pass562:
    rx180_cstack = rx180_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."ws"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail552
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    nqp_rxpeek $I19, rx180_bstack, rxquantr182_done560
    inc $I19
    inc $I19
    set rx180_rep, rx180_bstack[$I19]
    nqp_rxcommit rx180_bstack, rxquantr182_done560
    inc rx180_rep
    nqp_rxmark rx180_bstack, rxquantr182_done560, rx180_pos, rx180_rep
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail552
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:",", rx180_fail552
    add rx180_pos, 1
    goto rxquantr182_loop559
  rxquantr182_done560:
    rx180_cur."!cursor_pass"(rx180_pos, "charnames", 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart551:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail552:
    unless rx180_bstack, rx180_done550
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done555
    unless rx180_cstack, rx180_cstack_done555
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done555:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done550
    lt rx180_pos, 0, rx180_fail552
    eq $I19, 0, rx180_fail552
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump553
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut554
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut554:
    assign rx180_cstack, $I18
  rx180_jump553:
    jump $I19
  rx180_done550:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_49_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 125
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx186_tgt
    .local int rx186_pos
    .local int rx186_off
    .local int rx186_eos
    .local int rx186_rep
    .local pmc rx186_cur
    .local pmc rx186_curclass
    .local pmc rx186_bstack
    .local pmc rx186_cstack
    (rx186_cur, rx186_tgt, rx186_pos, rx186_curclass, rx186_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx186_cur
    length rx186_eos, rx186_tgt
    eq $I19, 1, rx186_restart566
    gt rx186_pos, rx186_eos, rx186_fail567
    repr_get_attr_int $I11, self, rx186_curclass, "$!from"
    ne $I11, -1, rxscan187_done573
    goto rxscan187_scan572
  rxscan187_loop571:
    inc rx186_pos
    gt rx186_pos, rx186_eos, rx186_fail567
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!from", rx186_pos
  rxscan187_scan572:
    nqp_rxmark rx186_bstack, rxscan187_loop571, rx186_pos, 0
  rxscan187_done573:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt188_0575
    nqp_push_label $P11, alt188_1577
    nqp_push_label $P11, alt188_2584
    nqp_push_label $P11, alt188_3585
    nqp_rxmark rx186_bstack, alt188_end574, -1, 0
    rx186_cur."!alt"(rx186_pos, "alt_nfa__9_1357764670.939", $P11)
    goto rx186_fail567
  alt188_0575:
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail567
    substr $S10, rx186_tgt, rx186_pos, 1
    ne $S10, ucs4:"[", rx186_fail567
    add rx186_pos, 1
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail567
    nqp_rxmark rx186_bstack, rxsubrule189_pass576, -1, 0
  rxsubrule189_pass576:
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail567
    substr $S10, rx186_tgt, rx186_pos, 1
    ne $S10, ucs4:"]", rx186_fail567
    add rx186_pos, 1
    goto alt188_end574
  alt188_1577:
    nqp_rxmark rx186_bstack, rxquantr190_done579, -1, 0
  rxquantr190_loop578:
    ge rx186_pos, rx186_eos, rx186_fail567
    is_cclass $I11, .CCLASS_NUMERIC, rx186_tgt, rx186_pos
    unless $I11, rx186_fail567
    add rx186_pos, 1
    nqp_rxpeek $I19, rx186_bstack, rxquantr190_done579
    inc $I19
    inc $I19
    set rx186_rep, rx186_bstack[$I19]
    nqp_rxcommit rx186_bstack, rxquantr190_done579
    inc rx186_rep
    nqp_rxmark rx186_bstack, rxquantr190_done579, rx186_pos, rx186_rep
    goto rxquantr190_loop578
  rxquantr190_done579:
    nqp_rxmark rx186_bstack, rxquantr191_done581, rx186_pos, 0
  rxquantr191_loop580:
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail567
    substr $S10, rx186_tgt, rx186_pos, 1
    ne $S10, ucs4:"_", rx186_fail567
    add rx186_pos, 1
    nqp_rxmark rx186_bstack, rxquantr192_done583, -1, 0
  rxquantr192_loop582:
    ge rx186_pos, rx186_eos, rx186_fail567
    is_cclass $I11, .CCLASS_NUMERIC, rx186_tgt, rx186_pos
    unless $I11, rx186_fail567
    add rx186_pos, 1
    nqp_rxpeek $I19, rx186_bstack, rxquantr192_done583
    inc $I19
    inc $I19
    set rx186_rep, rx186_bstack[$I19]
    nqp_rxcommit rx186_bstack, rxquantr192_done583
    inc rx186_rep
    nqp_rxmark rx186_bstack, rxquantr192_done583, rx186_pos, rx186_rep
    goto rxquantr192_loop582
  rxquantr192_done583:
    nqp_rxpeek $I19, rx186_bstack, rxquantr191_done581
    inc $I19
    inc $I19
    set rx186_rep, rx186_bstack[$I19]
    nqp_rxcommit rx186_bstack, rxquantr191_done581
    inc rx186_rep
    nqp_rxmark rx186_bstack, rxquantr191_done581, rx186_pos, rx186_rep
    goto rxquantr191_loop580
  rxquantr191_done581:
    goto alt188_end574
  alt188_2584:
    ge rx186_pos, rx186_eos, rx186_fail567
    substr $S11, rx186_tgt, rx186_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx186_fail567
    inc rx186_pos
    goto alt188_end574
  alt188_3585:
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail567
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    goto alt188_end574
  alt188_end574:
    nqp_rxcommit rx186_bstack, alt188_end574
    rx186_cur."!cursor_pass"(rx186_pos, "charspec", 'backtrack'=>1)
    .return (rx186_cur)
  rx186_restart566:
    repr_get_attr_obj rx186_cstack, rx186_cur, rx186_curclass, "$!cstack"
  rx186_fail567:
    unless rx186_bstack, rx186_done565
    pop $I19, rx186_bstack
    if_null rx186_cstack, rx186_cstack_done570
    unless rx186_cstack, rx186_cstack_done570
    dec $I19
    set $P11, rx186_cstack[$I19]
  rx186_cstack_done570:
    pop rx186_rep, rx186_bstack
    pop rx186_pos, rx186_bstack
    pop $I19, rx186_bstack
    lt rx186_pos, -1, rx186_done565
    lt rx186_pos, 0, rx186_fail567
    eq $I19, 0, rx186_fail567
    nqp_islist $I20, rx186_cstack
    unless $I20, rx186_jump568
    elements $I18, rx186_bstack
    le $I18, 0, rx186_cut569
    dec $I18
    set $I18, rx186_bstack[$I18]
  rx186_cut569:
    assign rx186_cstack, $I18
  rx186_jump568:
    jump $I19
  rx186_done565:
    rx186_cur."!cursor_fail"()
    .return (rx186_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_50_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    if haz_param_1, default587
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_2, $P5001
  default587:
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
.sub "panic" :subid("cuid_51_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 321
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
.annotate 'line', 322
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."pos"()
    set $P101, $P5004
.annotate 'line', 323
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."target"()
    set $P102, $P5006
.annotate 'line', 324
    _lex_param_1."push"(" at line ")
.annotate 'line', 325
    nqp_get_sc_object $P5010, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5009, $P5010, "HLL"
    get_who $P5008, $P5009
    set $P5007, $P5008["Compiler"]
    unless_null $P5007, fallback588
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5007, $P5011
  fallback588:
    $P5012 = $P5007."lineof"($P102, $P101)
    set $N5002, $P5012
    set $N5003, 1
    add $N5001, $N5002, $N5003
    _lex_param_1."push"($N5001)
.annotate 'line', 326
    _lex_param_1."push"(", near \"")
.annotate 'line', 327
    set $S5003, $P102
    set $I5001, $P101
    substr $S5002, $S5003, $I5001, 10
    escape $S5001, $S5002
    _lex_param_1."push"($S5001)
.annotate 'line', 328
    _lex_param_1."push"("\"")
    join $S5004, "", _lex_param_1
    box $P5013, $S5004
    die $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_52_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 332
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    if haz_param_2, default591
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_2, $P5005
  default591:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless194_end590 
.annotate 'line', 333
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless194_end590:
.annotate 'line', 336
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
.sub "peek_delimiters" :subid("cuid_53_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 349
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_179_1357764670.549' 
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
    unless $I5001 goto if195_end593 
.annotate 'line', 354
.annotate 'line', 355
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if195_end593:
    is_cclass $I5002, .CCLASS_WORD, $S101, 0
    unless $I5002 goto if196_end595 
.annotate 'line', 357
.annotate 'line', 358
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if196_end595:
    is_cclass $I5003, .CCLASS_WHITESPACE, $S101, 0
    unless $I5003 goto if197_end597 
.annotate 'line', 360
.annotate 'line', 361
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if197_end597:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if198_end599 
    .const 'Sub' $P5008 = 'cuid_179_1357764670.549' 
    capture_lex $P5008
    $P5009 = $P5008()
  if198_end599:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1357764670.549") :anon :lex :outer("cuid_53_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 367
    .lex "$len", $I101 
    .local pmc tmp_1 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if199_end601 
.annotate 'line', 369
.annotate 'line', 370
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if199_end601:
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
  while200_test602:
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
    unless $I5004 goto while200_done606 
  while200_redo604:
.annotate 'line', 378
    box $P5005, $I101
    set tmp_1, $P5005
    set $N5011, tmp_1
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5007, $N5010
    set $I101, $I5007
    set $P5005, tmp_1
    goto while200_test602 
  while200_done606:
    set $N5010, $I101
    set $N5011, 1
    isgt $I5007, $N5010, $N5011
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if201_end608 
.annotate 'line', 381
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if201_end608:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_54_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 390
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5024 = 'cuid_181_1357764670.549' 
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
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    set self, _lex_param_0
    .local string rx202_tgt
    .local int rx202_pos
    .local int rx202_off
    .local int rx202_eos
    .local int rx202_rep
    .local pmc rx202_cur
    .local pmc rx202_curclass
    .local pmc rx202_bstack
    .local pmc rx202_cstack
    (rx202_cur, rx202_tgt, rx202_pos, rx202_curclass, rx202_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx202_cur
    length rx202_eos, rx202_tgt
    eq $I19, 1, rx202_restart611
    gt rx202_pos, rx202_eos, rx202_fail612
    repr_get_attr_int $I11, self, rx202_curclass, "$!from"
    ne $I11, -1, rxscan203_done618
    goto rxscan203_scan617
  rxscan203_loop616:
    inc rx202_pos
    gt rx202_pos, rx202_eos, rx202_fail612
    repr_bind_attr_int rx202_cur, rx202_curclass, "$!from", rx202_pos
  rxscan203_scan617:
    nqp_rxmark rx202_bstack, rxscan203_loop616, rx202_pos, 0
  rxscan203_done618:
    repr_bind_attr_int rx202_cur, rx202_curclass, "$!pos", rx202_pos
    store_lex unicode:"$\x{a2}", rx202_cur
    unless_null $P101, fallback619
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["%QUOTEMOD"]
    unless_null $P5004, fallback620
    nqp_get_sc_object $P5008, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%QUOTEMOD"], $P5009
    set $P5004, $P5009
  fallback620:
    unless_null $P5004, vivi_204621
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5004, $P5010
  vivi_204621:
    set $P101, $P5004
  fallback619:
    repr_bind_attr_int rx202_cur, rx202_curclass, "$!pos", rx202_pos
    store_lex unicode:"$\x{a2}", rx202_cur
    unless_null $P102, fallback622
    nqp_get_sc_object $P5013, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5012, $P5013
    set $P5011, $P5012["$QUOTE_START"]
    unless_null $P5011, fallback623
    nqp_get_sc_object $P5014, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5011, $P5014
  fallback623:
    unless_null $P5011, vivi_205624
    die "Contextual $*QUOTE_START not found"
    box $P5015, "Contextual $*QUOTE_START not found"
    set $P5011, $P5015
  vivi_205624:
    set $P102, $P5011
  fallback622:
    repr_bind_attr_int rx202_cur, rx202_curclass, "$!pos", rx202_pos
    store_lex unicode:"$\x{a2}", rx202_cur
    unless_null $P103, fallback625
    nqp_get_sc_object $P5018, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5017, $P5018
    set $P5016, $P5017["$QUOTE_STOP"]
    unless_null $P5016, fallback626
    nqp_get_sc_object $P5019, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5016, $P5019
  fallback626:
    unless_null $P5016, vivi_206627
    die "Contextual $*QUOTE_STOP not found"
    box $P5020, "Contextual $*QUOTE_STOP not found"
    set $P5016, $P5020
  vivi_206627:
    set $P103, $P5016
  fallback625:
    repr_bind_attr_int rx202_cur, rx202_curclass, "$!pos", rx202_pos
    store_lex unicode:"$\x{a2}", rx202_cur
    $P5021 = $P104."MATCH"()
    set $P105, $P5021
    .const 'Sub' $P5022 = 'cuid_181_1357764670.549' 
    capture_lex $P5022
    $P5023 = $P5022()
    repr_bind_attr_int rx202_cur, rx202_curclass, "$!pos", rx202_pos
    $P11 = rx202_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx202_curclass, "$!pos"
    lt $I11, 0, rx202_fail612
    nqp_rxmark rx202_bstack, rxsubrule217_pass661, -1, 0
  rxsubrule217_pass661:
    rx202_cstack = rx202_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx202_pos, $P11, rx202_curclass, "$!pos"
    rx202_cur."!cursor_pass"(rx202_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx202_cur)
  rx202_restart611:
    repr_get_attr_obj rx202_cstack, rx202_cur, rx202_curclass, "$!cstack"
  rx202_fail612:
    unless rx202_bstack, rx202_done610
    pop $I19, rx202_bstack
    if_null rx202_cstack, rx202_cstack_done615
    unless rx202_cstack, rx202_cstack_done615
    dec $I19
    set $P11, rx202_cstack[$I19]
  rx202_cstack_done615:
    pop rx202_rep, rx202_bstack
    pop rx202_pos, rx202_bstack
    pop $I19, rx202_bstack
    lt rx202_pos, -1, rx202_done610
    lt rx202_pos, 0, rx202_fail612
    eq $I19, 0, rx202_fail612
    nqp_islist $I20, rx202_cstack
    unless $I20, rx202_jump613
    elements $I18, rx202_bstack
    le $I18, 0, rx202_cut614
    dec $I18
    set $I18, rx202_bstack[$I18]
  rx202_cut614:
    assign rx202_cstack, $I18
  rx202_jump613:
    jump $I19
  rx202_done610:
    rx202_cur."!cursor_fail"()
    .return (rx202_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1357764670.549") :anon :lex :outer("cuid_54_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 394
    .const 'Sub' $P5021 = 'cuid_180_1357764670.549' 
    capture_lex $P5021 
    .lex "@delims", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next656:
    unless $P5004, for_done658
    shift $P5007, $P5004
  for_redo657:
    .const 'Sub' $P5006 = 'cuid_180_1357764670.549' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next656
  for_done658:
.annotate 'line', 411
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
    unless_null $P5017, fallback659
    nqp_get_sc_object $P5018, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5017, $P5018
  fallback659:
    store_dynamic_lex "$*QUOTE_START", $P5017
    set $P5019, $P101[1]
    unless_null $P5019, fallback660
    nqp_get_sc_object $P5020, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5019, $P5020
  fallback660:
    store_dynamic_lex "$*QUOTE_STOP", $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1357764670.549") :anon :lex :outer("cuid_181_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 395
    .param pmc _lex_param_0 
    .lex "$mod", _lex_param_0 
    set $S5002, _lex_param_0
    substr $S5001, $S5002, 1
    box $P5001, $S5001
    set _lex_param_0, $P5001
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback628
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5004, $P5005
    set $P5003, $P5004["%QUOTEMOD"]
    unless_null $P5003, fallback629
    nqp_get_sc_object $P5007, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%QUOTEMOD"], $P5008
    set $P5003, $P5008
  fallback629:
    unless_null $P5003, vivi_207630
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5003, $P5009
  vivi_207630:
    set $P5002, $P5003
  fallback628:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5001, $S5004, "qq"
    unless $I5001 goto if208_else631 
.annotate 'line', 398
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback633
    nqp_get_sc_object $P5014, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5013, $P5014
    set $P5012, $P5013["%QUOTEMOD"]
    unless_null $P5012, fallback634
    nqp_get_sc_object $P5016, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5015, $P5016
    new $P5017, 'Hash'
    set $P5015["%QUOTEMOD"], $P5017
    set $P5012, $P5017
  fallback634:
    unless_null $P5012, vivi_209635
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5012, $P5018
  vivi_209635:
    set $P5011, $P5012
  fallback633:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback636
    nqp_get_sc_object $P5023, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5022, $P5023
    set $P5021, $P5022["%QUOTEMOD"]
    unless_null $P5021, fallback637
    nqp_get_sc_object $P5025, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5024, $P5025
    new $P5026, 'Hash'
    set $P5024["%QUOTEMOD"], $P5026
    set $P5021, $P5026
  fallback637:
    unless_null $P5021, vivi_210638
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5021, $P5027
  vivi_210638:
    set $P5020, $P5021
  fallback636:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback639
    nqp_get_sc_object $P5032, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5031, $P5032
    set $P5030, $P5031["%QUOTEMOD"]
    unless_null $P5030, fallback640
    nqp_get_sc_object $P5034, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%QUOTEMOD"], $P5035
    set $P5030, $P5035
  fallback640:
    unless_null $P5030, vivi_211641
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5030, $P5036
  vivi_211641:
    set $P5029, $P5030
  fallback639:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback642
    nqp_get_sc_object $P5041, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5040, $P5041
    set $P5039, $P5040["%QUOTEMOD"]
    unless_null $P5039, fallback643
    nqp_get_sc_object $P5043, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5042, $P5043
    new $P5044, 'Hash'
    set $P5042["%QUOTEMOD"], $P5044
    set $P5039, $P5044
  fallback643:
    unless_null $P5039, vivi_212644
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5039, $P5045
  vivi_212644:
    set $P5038, $P5039
  fallback642:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback645
    nqp_get_sc_object $P5050, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5049, $P5050
    set $P5048, $P5049["%QUOTEMOD"]
    unless_null $P5048, fallback646
    nqp_get_sc_object $P5052, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5051, $P5052
    new $P5053, 'Hash'
    set $P5051["%QUOTEMOD"], $P5053
    set $P5048, $P5053
  fallback646:
    unless_null $P5048, vivi_213647
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5048, $P5054
  vivi_213647:
    set $P5047, $P5048
  fallback645:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback648
    nqp_get_sc_object $P5059, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5058, $P5059
    set $P5057, $P5058["%QUOTEMOD"]
    unless_null $P5057, fallback649
    nqp_get_sc_object $P5061, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5060, $P5061
    new $P5062, 'Hash'
    set $P5060["%QUOTEMOD"], $P5062
    set $P5057, $P5062
  fallback649:
    unless_null $P5057, vivi_214650
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5057, $P5063
  vivi_214650:
    set $P5056, $P5057
  fallback648:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if208_end632
  if208_else631:
    set $S5005, _lex_param_0
    iseq $I5002, $S5005, "b"
    box $P5075, $I5002
    set $P5074, $P5075
    unless $I5002 goto if215_end652 
.annotate 'line', 406
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback653
    nqp_get_sc_object $P5068, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5067, $P5068
    set $P5066, $P5067["%QUOTEMOD"]
    unless_null $P5066, fallback654
    nqp_get_sc_object $P5070, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5069, $P5070
    new $P5071, 'Hash'
    set $P5069["%QUOTEMOD"], $P5071
    set $P5066, $P5071
  fallback654:
    unless_null $P5066, vivi_216655
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5066, $P5072
  vivi_216655:
    set $P5065, $P5066
  fallback653:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if215_end652:
    set $P5076, $P5074
  if208_end632:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_55_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 418
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_182_1357764670.549' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local string rx218_tgt
    .local int rx218_pos
    .local int rx218_off
    .local int rx218_eos
    .local int rx218_rep
    .local pmc rx218_cur
    .local pmc rx218_curclass
    .local pmc rx218_bstack
    .local pmc rx218_cstack
    (rx218_cur, rx218_tgt, rx218_pos, rx218_curclass, rx218_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx218_cur
    length rx218_eos, rx218_tgt
    eq $I19, 1, rx218_restart664
    gt rx218_pos, rx218_eos, rx218_fail665
    repr_get_attr_int $I11, self, rx218_curclass, "$!from"
    ne $I11, -1, rxscan219_done671
    goto rxscan219_scan670
  rxscan219_loop669:
    inc rx218_pos
    gt rx218_pos, rx218_eos, rx218_fail665
    repr_bind_attr_int rx218_cur, rx218_curclass, "$!from", rx218_pos
  rxscan219_scan670:
    nqp_rxmark rx218_bstack, rxscan219_loop669, rx218_pos, 0
  rxscan219_done671:
    repr_bind_attr_int rx218_cur, rx218_curclass, "$!pos", rx218_pos
    store_lex unicode:"$\x{a2}", rx218_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_182_1357764670.549' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx218_fail665
    rx218_cur."!cursor_pass"(rx218_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx218_cur)
  rx218_restart664:
    repr_get_attr_obj rx218_cstack, rx218_cur, rx218_curclass, "$!cstack"
  rx218_fail665:
    unless rx218_bstack, rx218_done663
    pop $I19, rx218_bstack
    if_null rx218_cstack, rx218_cstack_done668
    unless rx218_cstack, rx218_cstack_done668
    dec $I19
    set $P11, rx218_cstack[$I19]
  rx218_cstack_done668:
    pop rx218_rep, rx218_bstack
    pop rx218_pos, rx218_bstack
    pop $I19, rx218_bstack
    lt rx218_pos, -1, rx218_done663
    lt rx218_pos, 0, rx218_fail665
    eq $I19, 0, rx218_fail665
    nqp_islist $I20, rx218_cstack
    unless $I20, rx218_jump666
    elements $I18, rx218_bstack
    le $I18, 0, rx218_cut667
    dec $I18
    set $I18, rx218_bstack[$I18]
  rx218_cut667:
    assign rx218_cstack, $I18
  rx218_jump666:
    jump $I19
  rx218_done663:
    rx218_cur."!cursor_fail"()
    .return (rx218_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1357764670.549") :anon :lex :outer("cuid_55_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 419

    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback672
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5004, $P5005
    set $P5003, $P5004["%QUOTEMOD"]
    unless_null $P5003, fallback673
    nqp_get_sc_object $P5007, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%QUOTEMOD"], $P5008
    set $P5003, $P5008
  fallback673:
    unless_null $P5003, vivi_220674
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5003, $P5009
  vivi_220674:
    set $P5002, $P5003
  fallback672:
    find_lex $S5001, "$mod"
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback675
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5010
  fallback675:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_56_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 422
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
.sub "stopper" :subid("cuid_57_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 445
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
.sub "split_words" :subid("cuid_58_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 468
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
  while221_test676:
    find_not_cclass $I5003, .CCLASS_WHITESPACE, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while221_done680 
  while221_redo678:
.annotate 'line', 473
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
    goto while221_test676 
  while221_done680:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_59_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 489
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_3, default681
    set $S5001, ""
    set _lex_param_1, $S5001
  default681:
    if haz_param_4, default682
    set $I5001, 0
    set _lex_param_2, $I5001
  default682:
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
.sub "EXPR_reduce" :subid("cuid_60_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 695
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
.sub "EXPR_nonassoc" :subid("cuid_61_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 781
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    .lex "$op1", _lex_param_2 
    .lex "$op2", _lex_param_3 
.annotate 'line', 782
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
.sub "ternary" :subid("cuid_62_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 785
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    set $P5001, _lex_param_1[1]
    unless_null $P5001, fallback683
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5002
  fallback683:
    set _lex_param_1[2], $P5001
    set $P5004, _lex_param_1["infix"]
    unless_null $P5004, fallback684
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5005
  fallback684:
    set $P5003, $P5004["EXPR"]
    unless_null $P5003, fallback685
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5006
  fallback685:
    set _lex_param_1[1], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_63_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 790
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
.annotate 'line', 798
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!cursor_start"()
    set $P102, $P5005
.annotate 'line', 799
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."pos"()
    $P102."!cursor_pass"($P5007)
    set $P101[_lex_param_1], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_64_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 803
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
    set $P5004, $P101[_lex_param_1]
    unless_null $P5004, fallback686
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5005
  fallback686:
    set $P102, $P5004
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["NQPCursor"]
    unless_null $P5006, fallback691
    nqp_get_sc_object $P5011, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5010, $P5011
    set $P5009, $P5010["NQPCursor"]
    unless_null $P5009, vivi_224692
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5012
  vivi_224692:
    set $P5006, $P5009
  fallback691:
    type_check $I5001, $P102, $P5006
    set $I5003, $I5001
    unless $I5001 goto if223_end690 
.annotate 'line', 812
    $P5013 = $P102."pos"()
    set $N5001, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."pos"()
    set $N5002, $P5015
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if223_end690:
    if $I5003 goto unless222_end688 
.annotate 'line', 813
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."!cursor_start"()
    set $P102, $P5017
  unless222_end688:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_65_1357764670.549") :anon :lex :outer("cuid_66_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 818
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
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
.annotate 'line', 819
    find_dynamic_lex $P5004, "%*LANG"
    unless_null $P5004, fallback693
    nqp_get_sc_object $P5007, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%LANG"]
    unless_null $P5005, fallback694
    nqp_get_sc_object $P5009, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%LANG"], $P5010
    set $P5005, $P5010
  fallback694:
    unless_null $P5005, vivi_225695
    die "Contextual %*LANG not found"
    box $P5011, "Contextual %*LANG not found"
    set $P5005, $P5011
  vivi_225695:
    set $P5004, $P5005
  fallback693:
    set $S5001, _lex_param_1
    set $P5003, $P5004[$S5001]
    unless_null $P5003, fallback696
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5012
  fallback696:
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."orig"()
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."pos"()
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."!shared"()
    $P5019 = $P5003."!cursor_init"($P5014, $P5016 :named("p"), $P5018 :named("shared"))
    set $P101, $P5019
.annotate 'line', 820
    nqp_decontainerize $P5021, _lex_param_0
    get_how $P5020, $P5021
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5020."traced"($P5022)
    unless $P5023 goto if226_end698 
.annotate 'line', 821
    get_how $P5024, $P101
    nqp_decontainerize $P5026, _lex_param_0
    get_how $P5025, $P5026
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5025."trace_depth"($P5027)
    $P5029 = $P5024."trace-on"($P101, $P5028)
  if226_end698:
    find_dynamic_lex $P5031, "%*LANG"
    unless_null $P5031, fallback699
    nqp_get_sc_object $P5034, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5033, $P5034
    set $P5032, $P5033["%LANG"]
    unless_null $P5032, fallback700
    nqp_get_sc_object $P5036, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5035, $P5036
    new $P5037, 'Hash'
    set $P5035["%LANG"], $P5037
    set $P5032, $P5037
  fallback700:
    unless_null $P5032, vivi_227701
    die "Contextual %*LANG not found"
    box $P5038, "Contextual %*LANG not found"
    set $P5032, $P5038
  vivi_227701:
    set $P5031, $P5032
  fallback699:
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5030, $P5031[$S5002]
    unless_null $P5030, fallback702
    nqp_get_sc_object $P5039, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5030, $P5039
  fallback702:
    set $P102, $P5030
.annotate 'line', 824
    set $S5004, _lex_param_2
    $P5040 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1357764670.549") :anon :lex :outer("cuid_1_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 829
    .const 'Sub' $P5037 = 'cuid_183_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_97_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_98_1357764670.549' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_99_1357764670.549' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_183_1357764670.549' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_67_1357764670.549' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_68_1357764670.549' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_69_1357764670.549' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_70_1357764670.549' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_71_1357764670.549' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_72_1357764670.549' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_73_1357764670.549' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_74_1357764670.549' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_75_1357764670.549' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_76_1357764670.549' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_77_1357764670.549' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_78_1357764670.549' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_79_1357764670.549' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_80_1357764670.549' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_81_1357764670.549' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_82_1357764670.549' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_83_1357764670.549' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_84_1357764670.549' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_85_1357764670.549' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_86_1357764670.549' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_87_1357764670.549' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_88_1357764670.549' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_89_1357764670.549' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_90_1357764670.549' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_91_1357764670.549' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_92_1357764670.549' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_93_1357764670.549' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_94_1357764670.549' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_95_1357764670.549' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_96_1357764670.549' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_97_1357764670.549' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_98_1357764670.549' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_99_1357764670.549' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_183_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 830
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
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
    if $I5002 goto unless228_end704 
.annotate 'line', 832
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless228_end704:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_67_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 837
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_185_1357764670.549' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if229_else705 
    .const 'Sub' $P5001 = 'cuid_185_1357764670.549' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if229_end706
  if229_else705:
.annotate 'line', 844
.annotate 'line', 845
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if229_end706:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1357764670.549") :anon :lex :outer("cuid_67_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 838
    .const 'Sub' $P5009 = 'cuid_184_1357764670.549' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next707:
    unless $P5005, for_done709
    shift $P5008, $P5005
  for_redo708:
    .const 'Sub' $P5007 = 'cuid_184_1357764670.549' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next707
  for_done709:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1357764670.549") :anon :lex :outer("cuid_185_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 840
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5002, $P5001
.annotate 'line', 841
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
.sub "CTXSAVE" :subid("cuid_68_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 849
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 850
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Stmts"]
    unless_null $P5001, fallback710
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5005
  fallback710:
.annotate 'line', 851
    nqp_get_sc_object $P5009, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Op"]
    unless_null $P5006, fallback711
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5010
  fallback711:
.annotate 'line', 853
    nqp_get_sc_object $P5014, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Var"]
    unless_null $P5011, fallback712
    nqp_get_sc_object $P5015, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5011, $P5015
  fallback712:
    $P5016 = $P5011."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 854
    nqp_get_sc_object $P5020, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Var"]
    unless_null $P5017, fallback713
    nqp_get_sc_object $P5021, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5017, $P5021
  fallback713:
    $P5022 = $P5017."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5023 = $P5006."new"($P5016, $P5022, "bind" :named("op"))
.annotate 'line', 856
    nqp_get_sc_object $P5027, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["Op"]
    unless_null $P5024, fallback714
    nqp_get_sc_object $P5028, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5024, $P5028
  fallback714:
.annotate 'line', 858
    nqp_get_sc_object $P5032, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["Op"]
    unless_null $P5029, fallback715
    nqp_get_sc_object $P5033, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5029, $P5033
  fallback715:
.annotate 'line', 860
    nqp_get_sc_object $P5037, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["Var"]
    unless_null $P5034, fallback716
    nqp_get_sc_object $P5038, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5034, $P5038
  fallback716:
    $P5039 = $P5034."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5040 = $P5029."new"($P5039, "isnull" :named("op"))
.annotate 'line', 862
    nqp_get_sc_object $P5044, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5043, $P5044, "QAST"
    get_who $P5042, $P5043
    set $P5041, $P5042["Op"]
    unless_null $P5041, fallback717
    nqp_get_sc_object $P5045, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5041, $P5045
  fallback717:
.annotate 'line', 864
    nqp_get_sc_object $P5049, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5048, $P5049, "QAST"
    get_who $P5047, $P5048
    set $P5046, $P5047["VM"]
    unless_null $P5046, fallback718
    nqp_get_sc_object $P5050, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5046, $P5050
  fallback718:
.annotate 'line', 866
    nqp_get_sc_object $P5054, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5053, $P5054, "QAST"
    get_who $P5052, $P5053
    set $P5051, $P5052["Var"]
    unless_null $P5051, fallback719
    nqp_get_sc_object $P5055, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5051, $P5055
  fallback719:
    $P5056 = $P5051."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 867
    nqp_get_sc_object $P5060, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5059, $P5060, "QAST"
    get_who $P5058, $P5059
    set $P5057, $P5058["SVal"]
    unless_null $P5057, fallback720
    nqp_get_sc_object $P5061, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5057, $P5061
  fallback720:
    $P5062 = $P5057."new"("ctxsave" :named("value"))
    $P5063 = $P5046."new"($P5056, $P5062, "can IPs" :named("pirop"))
.annotate 'line', 869
    nqp_get_sc_object $P5067, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5066, $P5067, "QAST"
    get_who $P5065, $P5066
    set $P5064, $P5065["Op"]
    unless_null $P5064, fallback721
    nqp_get_sc_object $P5068, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5064, $P5068
  fallback721:
.annotate 'line', 871
    nqp_get_sc_object $P5072, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5071, $P5072, "QAST"
    get_who $P5070, $P5071
    set $P5069, $P5070["Var"]
    unless_null $P5069, fallback722
    nqp_get_sc_object $P5073, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5069, $P5073
  fallback722:
    $P5074 = $P5069."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5075 = $P5064."new"($P5074, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5076 = $P5041."new"($P5063, $P5075, "if" :named("op"))
    $P5077 = $P5024."new"($P5040, $P5076, "unless" :named("op"))
    $P5078 = $P5001."new"($P5023, $P5077)
    .return ($P5078) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_69_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 875
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5020 = 'cuid_187_1357764670.549' 
    capture_lex $P5020 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_dynamic_lex $P5004, "%*COMPILING"
    unless_null $P5004, fallback723
    nqp_get_sc_object $P5007, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%COMPILING"]
    unless_null $P5005, fallback724
    nqp_get_sc_object $P5009, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%COMPILING"], $P5010
    set $P5005, $P5010
  fallback724:
    unless_null $P5005, vivi_230725
    die "Contextual %*COMPILING not found"
    box $P5011, "Contextual %*COMPILING not found"
    set $P5005, $P5011
  vivi_230725:
    set $P5004, $P5005
  fallback723:
    set $P5003, $P5004["%?OPTIONS"]
    unless_null $P5003, fallback726
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5012
  fallback726:
    set $P5002, $P5003["outer_ctx"]
    unless_null $P5002, fallback727
    nqp_get_sc_object $P5013, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5013
  fallback727:
    set $P101, $P5002
    defined $I5001, $P101
    box $P5019, $I5001
    set $P5018, $P5019
    unless $I5001 goto if231_end729 
.annotate 'line', 877
  until232_test730:
    isnull $I5002, $P101
    box $P5017, $I5002
    set $P5016, $P5017
    if $I5002 goto until232_done734 
  until232_redo732:
    .const 'Sub' $P5014 = 'cuid_187_1357764670.549' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
    goto until232_test730 
  until232_done734:
    set $P5018, $P5016
  if231_end729:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1357764670.549") :anon :lex :outer("cuid_69_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 878
    .const 'Sub' $P5011 = 'cuid_186_1357764670.549' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless233_end736 
.annotate 'line', 880
    set $P5004, $P101
    iter $P5006, $P101
  for_next739:
    unless $P5006, for_done741
    shift $P5008, $P5006
  for_redo740:
    .const 'Sub' $P5007 = 'cuid_186_1357764670.549' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next739
  for_done741:
  unless233_end736:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1357764670.549") :anon :lex :outer("cuid_187_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 881
    .param pmc _lex_param_0 
    .lex "$key", $S101 
    .lex "$_", _lex_param_0 
    set $S101, ""
    set $S5001, _lex_param_0
    set $S101, $S5001
.annotate 'line', 884
    find_lex $P5001, "$block"
    $P5002 = $P5001."symbol"($S101)
    set $P5007, $P5002
    if $P5002 goto unless234_end738 
.annotate 'line', 883
    find_lex $P5003, "$block"
    find_lex $P5005, "$pad"
    set $P5004, $P5005[$S101]
    $P5006 = $P5003."symbol"($S101, "lexical" :named("scope"), $P5004 :named("value"))
    set $P5007, $P5006
  unless234_end738:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_70_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 892
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5024 = 'cuid_188_1357764670.549' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_189_1357764670.549' 
    capture_lex $P5024 
    if haz_param_5, default777
    nqp_get_sc_object $P5023, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_2, $P5023
  default777:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_742
    .lex "RETURN", $P102
    if _lex_param_2 goto unless235_end745 
.annotate 'line', 893
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless235_end745:
.annotate 'line', 894
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor746
    unless_null _lex_param_1, fallback747
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5007
  fallback747:
    set $P5006, _lex_param_1["OPER"]
    unless_null $P5006, fallback748
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5008
  fallback748:
    $P5009 = $P5006."ast"()
    set $P5004, $P5009
  defor746:
    set $P101, $P5004
    if $P101 goto unless236_end750 
    .const 'Sub' $P5010 = 'cuid_188_1357764670.549' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless236_end750:
    set $S5001, _lex_param_2
    iseq $I5002, $S5001, "POSTFIX"
    unless $I5002 goto if240_else769 
.annotate 'line', 907
.annotate 'line', 908
    set $P5012, _lex_param_1[0]
    unless_null $P5012, fallback771
    nqp_get_sc_object $P5013, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5012, $P5013
  fallback771:
    $P5014 = $P5012."ast"()
    $P5015 = $P101."unshift"($P5014)
    goto if240_end770
  if240_else769:
.annotate 'line', 910
.annotate 'line', 911
    $P5019 = _lex_param_1."list"()
    set $P5016, $P5019
    iter $P5018, $P5019
  for_next774:
    unless $P5018, for_done776
    shift $P5021, $P5018
  for_redo775:
    .const 'Sub' $P5020 = 'cuid_189_1357764670.549' 
    capture_lex $P5020
    $P5016 = $P5020($P5021)
    goto for_next774
  for_done776:
  if240_end770:
.annotate 'line', 913
    $P5022 = _lex_param_1."!make"($P101)
    goto lexotic_743
  lexotic_742:
    .get_results ($P5022)
  lexotic_743:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1357764670.549") :anon :lex :outer("cuid_70_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 895
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
.annotate 'line', 896
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback751
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5006
  fallback751:
    find_lex $P5007, "$/"
    $P5008 = $P5002."new"($P5007 :named("node"))
    store_lex "$past", $P5008
    find_lex $P5012, "$/"
    unless_null $P5012, fallback754
    nqp_get_sc_object $P5013, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5012, $P5013
  fallback754:
    set $P5011, $P5012["OPER"]
    unless_null $P5011, fallback755
    nqp_get_sc_object $P5014, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5011, $P5014
  fallback755:
    set $P5010, $P5011["O"]
    unless_null $P5010, fallback756
    nqp_get_sc_object $P5015, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5010, $P5015
  fallback756:
    set $P5009, $P5010["op"]
    unless_null $P5009, fallback757
    nqp_get_sc_object $P5016, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5016
  fallback757:
    unless $P5009 goto if237_end753 
.annotate 'line', 897
.annotate 'line', 898
    find_lex $P5017, "$past"
    find_lex $P5021, "$/"
    unless_null $P5021, fallback758
    nqp_get_sc_object $P5022, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5021, $P5022
  fallback758:
    set $P5020, $P5021["OPER"]
    unless_null $P5020, fallback759
    nqp_get_sc_object $P5023, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5020, $P5023
  fallback759:
    set $P5019, $P5020["O"]
    unless_null $P5019, fallback760
    nqp_get_sc_object $P5024, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5019, $P5024
  fallback760:
    set $P5018, $P5019["op"]
    unless_null $P5018, fallback761
    nqp_get_sc_object $P5025, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5018, $P5025
  fallback761:
    set $S5001, $P5018
    $P5026 = $P5017."op"($S5001)
  if237_end753:
    find_lex $P5027, "$key"
    set $S5002, $P5027
    iseq $I5001, $S5002, "LIST"
    unless $I5001 goto if238_end763 
.annotate 'line', 900
    box $P5028, "infix"
    store_lex "$key", $P5028
  if238_end763:
    find_lex $P5029, "$key"
    set $S5007, $P5029
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5032, "$/"
    unless_null $P5032, fallback764
    nqp_get_sc_object $P5033, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5032, $P5033
  fallback764:
    set $P5031, $P5032["OPER"]
    unless_null $P5031, fallback765
    nqp_get_sc_object $P5034, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5031, $P5034
  fallback765:
    set $P5030, $P5031["sym"]
    unless_null $P5030, fallback766
    nqp_get_sc_object $P5035, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5030, $P5035
  fallback766:
    set $S5008, $P5030
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5036, $S5003
    set $P101, $P5036
.annotate 'line', 902
    find_lex $P5037, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5037."name"($S5009)
.annotate 'line', 903
    find_lex $P5038, "$past"
    $P5039 = $P5038."op"()
    set $P5042, $P5039
    if $P5039 goto unless239_end768 
.annotate 'line', 904
    find_lex $P5040, "$past"
    $P5041 = $P5040."op"("call")
    set $P5042, $P5041
  unless239_end768:
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1357764670.549") :anon :lex :outer("cuid_70_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 911
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if241_end773 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if241_end773:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_71_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 916
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback778
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback778:
    set $P5001, _lex_param_1["circumfix"]
    unless_null $P5001, fallback779
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback779:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_72_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 918
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback780
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback780:
    set $P5001, _lex_param_1["term"]
    unless_null $P5001, fallback781
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback781:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_73_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 919
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
.sub "nullterm_alt" :subid("cuid_74_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 920
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback782
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback782:
    set $P5001, _lex_param_1["term"]
    unless_null $P5001, fallback783
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback783:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_75_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 922
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback784
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback784:
    set $P5001, _lex_param_1["VALUE"]
    unless_null $P5001, fallback785
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback785:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_76_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 924
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
.sub "decint" :subid("cuid_77_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 926
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
.sub "hexint" :subid("cuid_78_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 927
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
.sub "octint" :subid("cuid_79_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 928
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
.sub "binint" :subid("cuid_80_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 929
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
.sub "quote_EXPR" :subid("cuid_81_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 931
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_191_1357764670.549' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
.annotate 'line', 932
    unless_null _lex_param_1, fallback786
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5003
  fallback786:
    set $P5002, _lex_param_1["quote_delimited"]
    unless_null $P5002, fallback787
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5004
  fallback787:
    $P5005 = $P5002."ast"()
    set $P101, $P5005
    find_dynamic_lex $P5007, "%*QUOTEMOD"
    unless_null $P5007, fallback790
    nqp_get_sc_object $P5010, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5009, $P5010
    set $P5008, $P5009["%QUOTEMOD"]
    unless_null $P5008, fallback791
    nqp_get_sc_object $P5012, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5011, $P5012
    new $P5013, 'Hash'
    set $P5011["%QUOTEMOD"], $P5013
    set $P5008, $P5013
  fallback791:
    unless_null $P5008, vivi_243792
    die "Contextual %*QUOTEMOD not found"
    box $P5014, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5014
  vivi_243792:
    set $P5007, $P5008
  fallback790:
    set $P5006, $P5007["w"]
    unless_null $P5006, fallback793
    nqp_get_sc_object $P5015, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5015
  fallback793:
    unless $P5006 goto if242_end789 
.annotate 'line', 933
    nqp_get_sc_object $P5019, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5018, $P5019, "QAST"
    get_who $P5017, $P5018
    set $P5016, $P5017["SVal"]
    unless_null $P5016, fallback796
    nqp_get_sc_object $P5020, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5016, $P5020
  fallback796:
    type_check $I5001, $P101, $P5016
    unless $I5001 goto if244_else794 
    .const 'Sub' $P5021 = 'cuid_191_1357764670.549' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if244_end795
  if244_else794:
.annotate 'line', 944
.annotate 'line', 945
    $P5023 = _lex_param_1."CURSOR"()
    $P5024 = $P5023."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5025, $P5024
  if244_end795:
  if242_end789:
.annotate 'line', 948
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1357764670.549") :anon :lex :outer("cuid_81_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 934
    .const 'Sub' $P5033 = 'cuid_190_1357764670.549' 
    capture_lex $P5033 
    .lex "@words", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 935
    find_lex $P5008, "$/"
    find_lex $P5009, "$past"
    $P5010 = $P5009."value"()
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5005, $P5006, "HLL"
    nqp_get_package_through_who $P5004, $P5005, "Grammar"
    get_who $P5003, $P5004
    set $P5002, $P5003["split_words"]
    unless_null $P5002, fallback797
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5007
  fallback797:
    $P5011 = $P5002($P5008, $P5010)
    set $P101, $P5011
    set $N5001, $P101
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    unless $I5001 goto if245_else798 
.annotate 'line', 936
.annotate 'line', 937
    nqp_get_sc_object $P5015, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Op"]
    unless_null $P5012, fallback800
    nqp_get_sc_object $P5016, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5012, $P5016
  fallback800:
    find_lex $P5017, "$/"
    $P5018 = $P5012."new"("list" :named("op"), $P5017 :named("node"))
    store_lex "$past", $P5018
    set $P5019, $P101
    iter $P5021, $P101
  for_next802:
    unless $P5021, for_done804
    shift $P5023, $P5021
  for_redo803:
    .const 'Sub' $P5022 = 'cuid_190_1357764670.549' 
    capture_lex $P5022
    $P5019 = $P5022($P5023)
    goto for_next802
  for_done804:
    set $P5032, $P5019
    goto if245_end799
  if245_else798:
.annotate 'line', 940
.annotate 'line', 941
    nqp_get_sc_object $P5027, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["SVal"]
    unless_null $P5024, fallback805
    nqp_get_sc_object $P5028, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5024, $P5028
  fallback805:
    set $P5029, $P101[0]
    unless_null $P5029, fallback806
    nqp_get_sc_object $P5030, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5029, $P5030
  fallback806:
    set $S5001, $P5029
    $P5031 = $P5024."new"($S5001 :named("value"))
    store_lex "$past", $P5031
    set $P5032, $P5031
  if245_end799:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1357764670.549") :anon :lex :outer("cuid_191_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 938
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["SVal"]
    unless_null $P5002, fallback801
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5006
  fallback801:
    $P5007 = $P5002."new"(_lex_param_0 :named("value"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_82_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 951
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5037 = 'cuid_192_1357764670.549' 
    capture_lex $P5037 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback807
    nqp_get_sc_object $P5009, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5009
  fallback807:
    set $P5008, _lex_param_1["quote_atom"]
    unless_null $P5008, fallback808
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5010
  fallback808:
    set $P5005, $P5008
    iter $P5007, $P5008
  for_next822:
    unless $P5007, for_done824
    shift $P5012, $P5007
  for_redo823:
    .const 'Sub' $P5011 = 'cuid_192_1357764670.549' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next822
  for_done824:
    set $S5001, $P102
    isgt $I5001, $S5001, ""
    unless $I5001 goto if250_end826 
.annotate 'line', 972
    nqp_get_sc_object $P5016, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["SVal"]
    unless_null $P5013, fallback827
    nqp_get_sc_object $P5017, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5013, $P5017
  fallback827:
    $P5018 = $P5013."new"($P102 :named("value"))
    $P5019 = $P101."push"($P5018)
  if250_end826:
    unless $P101 goto if251_else828 
.annotate 'line', 973
    $P5020 = $P101."shift"()
    set $P5027, $P5020
    goto if251_end829
  if251_else828:
    nqp_get_sc_object $P5024, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5023, $P5024, "QAST"
    get_who $P5022, $P5023
    set $P5021, $P5022["SVal"]
    unless_null $P5021, fallback830
    nqp_get_sc_object $P5025, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5021, $P5025
  fallback830:
    $P5026 = $P5021."new"("" :named("value"))
    set $P5027, $P5026
  if251_end829:
    set $P103, $P5027
  while252_test831:
    set $P5035, $P101
    unless $P101 goto while252_done835 
  while252_redo833:
.annotate 'line', 974
.annotate 'line', 975
    nqp_get_sc_object $P5031, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5030, $P5031, "QAST"
    get_who $P5029, $P5030
    set $P5028, $P5029["Op"]
    unless_null $P5028, fallback836
    nqp_get_sc_object $P5032, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5028, $P5032
  fallback836:
    $P5033 = $P101."shift"()
    $P5034 = $P5028."new"($P103, $P5033, "concat" :named("op"))
    set $P103, $P5034
    set $P5035, $P103
    goto while252_test831 
  while252_done835:
.annotate 'line', 977
    $P5036 = _lex_param_1."!make"($P103)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1357764670.549") :anon :lex :outer("cuid_82_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 954
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
.annotate 'line', 955
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback811
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5007
  fallback811:
    type_check $I5002, $P101, $P5003
    not $I5001, $I5002
    unless $I5001 goto if246_else809 
.annotate 'line', 956
    find_lex $P5008, "$lastlit"
    set $S5002, $P5008
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5009, $S5001
    store_lex "$lastlit", $P5009
    set $P5043, $P5009
    goto if246_end810
  if246_else809:
    nqp_get_sc_object $P5013, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["SVal"]
    unless_null $P5010, fallback814
    nqp_get_sc_object $P5014, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5010, $P5014
  fallback814:
    type_check $I5003, $P101, $P5010
    unless $I5003 goto if247_else812 
.annotate 'line', 959
    find_lex $P5015, "$lastlit"
    set $S5005, $P5015
.annotate 'line', 960
    $P5016 = $P101."value"()
    set $S5006, $P5016
    concat $S5004, $S5005, $S5006
    box $P5017, $S5004
    store_lex "$lastlit", $P5017
    set $P5042, $P5017
    goto if247_end813
  if247_else812:
.annotate 'line', 962
    find_lex $P5018, "$lastlit"
    set $S5007, $P5018
    isgt $I5004, $S5007, ""
    unless $I5004 goto if248_end816 
.annotate 'line', 963
.annotate 'line', 964
    find_lex $P5019, "@parts"
    nqp_get_sc_object $P5023, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["SVal"]
    unless_null $P5020, fallback817
    nqp_get_sc_object $P5024, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5020, $P5024
  fallback817:
    find_lex $P5025, "$lastlit"
    $P5026 = $P5020."new"($P5025 :named("value"))
    $P5027 = $P5019."push"($P5026)
  if248_end816:
.annotate 'line', 966
    find_lex $P5028, "@parts"
    nqp_get_sc_object $P5032, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["Node"]
    unless_null $P5029, fallback820
    nqp_get_sc_object $P5033, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5029, $P5033
  fallback820:
    type_check $I5005, $P101, $P5029
    unless $I5005 goto if249_else818 
    set $P5040, $P101
    goto if249_end819
  if249_else818:
.annotate 'line', 968
    nqp_get_sc_object $P5037, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["SVal"]
    unless_null $P5034, fallback821
    nqp_get_sc_object $P5038, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5034, $P5038
  fallback821:
    $P5039 = $P5034."new"($P101 :named("value"))
    set $P5040, $P5039
  if249_end819:
    $P5028."push"($P5040)
    box $P5041, ""
    store_lex "$lastlit", $P5041
    set $P5042, $P5041
  if247_end813:
    set $P5043, $P5042
  if246_end810:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_83_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 980
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 981
    unless_null _lex_param_1, fallback839
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback839:
    set $P5001, _lex_param_1["quote_escape"]
    unless_null $P5001, fallback840
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback840:
    unless $P5001 goto if253_else837 
    unless_null _lex_param_1, fallback841
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5005
  fallback841:
    set $P5004, _lex_param_1["quote_escape"]
    unless_null $P5004, fallback842
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5006
  fallback842:
    $P5007 = $P5004."ast"()
    set $P5008, $P5007
    goto if253_end838
  if253_else837:
    set $S5001, _lex_param_1
    box $P5009, $S5001
    set $P5008, $P5009
  if253_end838:
    $P5010 = _lex_param_1."!make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_84_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 984
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_85_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 985
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback843
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback843:
    set $P5001, _lex_param_1["stopper"]
    unless_null $P5001, fallback844
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback844:
    set $S5001, $P5001
    $P5004 = _lex_param_1."!make"($S5001)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_86_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 987
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_87_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_88_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 989
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_89_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 990
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_90_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 991
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_91_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_92_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 994
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 995
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback847
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5003
  fallback847:
    set $P5002, _lex_param_1["hexint"]
    unless_null $P5002, fallback848
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5004
  fallback848:
    unless $P5002 goto if254_else845 
    unless_null _lex_param_1, fallback849
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5006
  fallback849:
    set $P5005, _lex_param_1["hexint"]
    unless_null $P5005, fallback850
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5007
  fallback850:
    set $P5013, $P5005
    goto if254_end846
  if254_else845:
    unless_null _lex_param_1, fallback851
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5010
  fallback851:
    set $P5009, _lex_param_1["hexints"]
    unless_null $P5009, fallback852
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5011
  fallback852:
    set $P5008, $P5009["hexint"]
    unless_null $P5008, fallback853
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5012
  fallback853:
    set $P5013, $P5008
  if254_end846:
    $P5014 = $P5001."ints_to_string"($P5013)
    $P5015 = _lex_param_1."!make"($P5014)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_93_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 998
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 999
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback856
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5003
  fallback856:
    set $P5002, _lex_param_1["octint"]
    unless_null $P5002, fallback857
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5004
  fallback857:
    unless $P5002 goto if255_else854 
    unless_null _lex_param_1, fallback858
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5006
  fallback858:
    set $P5005, _lex_param_1["octint"]
    unless_null $P5005, fallback859
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5007
  fallback859:
    set $P5013, $P5005
    goto if255_end855
  if255_else854:
    unless_null _lex_param_1, fallback860
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5010
  fallback860:
    set $P5009, _lex_param_1["octints"]
    unless_null $P5009, fallback861
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5011
  fallback861:
    set $P5008, $P5009["octint"]
    unless_null $P5008, fallback862
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5012
  fallback862:
    set $P5013, $P5008
  if255_end855:
    $P5014 = $P5001."ints_to_string"($P5013)
    $P5015 = _lex_param_1."!make"($P5014)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_94_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1002
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1003
    unless_null _lex_param_1, fallback863
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback863:
    set $P5001, _lex_param_1["charspec"]
    unless_null $P5001, fallback864
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback864:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_95_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1007
    $P5001 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_96_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1010
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1011
    unless_null _lex_param_1, fallback867
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback867:
    set $P5001, _lex_param_1["textq"]
    unless_null $P5001, fallback868
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback868:
    unless $P5001 goto if256_else865 
    unless_null _lex_param_1, fallback869
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5005
  fallback869:
    set $P5004, _lex_param_1["textq"]
    unless_null $P5004, fallback870
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5006
  fallback870:
    $P5007 = $P5004."Str"()
    set $S5002, $P5007
    concat $S5001, "\\", $S5002
    box $P5013, $S5001
    set $P5012, $P5013
    goto if256_end866
  if256_else865:
    unless_null _lex_param_1, fallback871
    nqp_get_sc_object $P5009, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5009
  fallback871:
    set $P5008, _lex_param_1["textqq"]
    unless_null $P5008, fallback872
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5010
  fallback872:
    $P5011 = $P5008."Str"()
    set $P5012, $P5011
  if256_end866:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_97_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1014
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    unless_null _lex_param_1, fallback875
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5003
  fallback875:
    set $P5002, _lex_param_1["integer"]
    unless_null $P5002, fallback876
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5004
  fallback876:
    unless $P5002 goto if257_else873 
.annotate 'line', 1016
    unless_null _lex_param_1, fallback877
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5006
  fallback877:
    set $P5005, _lex_param_1["integer"]
    unless_null $P5005, fallback878
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5007
  fallback878:
    $P5008 = $P5005."ast"()
    set $P5009, $P5008
    goto if257_end874
  if257_else873:
    set $S5002, _lex_param_1
    find_encoding $I5002, "utf8"
    trans_encoding $S5001, $S5002, $I5002
    find_codepoint $I5001, $S5001
    box $P5010, $I5001
    set $P5009, $P5010
  if257_end874:
    set $P101, $P5009
    set $N5001, $P101
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    unless $I5003 goto if258_end880 
.annotate 'line', 1020
    $P5011 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5012 = $P5011."panic"($S5003)
  if258_end880:
.annotate 'line', 1021
    set $I5004, $P101
    chr $S5005, $I5004
    $P5013 = _lex_param_1."!make"($S5005)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_98_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1024
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_193_1357764670.549' 
    capture_lex $P5012 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback881
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5007
  fallback881:
    set $P5006, _lex_param_1["charname"]
    unless_null $P5006, fallback882
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5008
  fallback882:
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next883:
    unless $P5005, for_done885
    shift $P5010, $P5005
  for_redo884:
    .const 'Sub' $P5009 = 'cuid_193_1357764670.549' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next883
  for_done885:
.annotate 'line', 1027
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1357764670.549") :anon :lex :outer("cuid_98_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1026
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
.sub "charspec" :subid("cuid_99_1357764670.549") :anon :lex :outer("cuid_100_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1031
    unless_null _lex_param_1, fallback888
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5002
  fallback888:
    set $P5001, _lex_param_1["charnames"]
    unless_null $P5001, fallback889
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5001, $P5003
  fallback889:
    unless $P5001 goto if259_else886 
    unless_null _lex_param_1, fallback890
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5005
  fallback890:
    set $P5004, _lex_param_1["charnames"]
    unless_null $P5004, fallback891
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5006
  fallback891:
    $P5007 = $P5004."ast"()
    set $P5009, $P5007
    goto if259_end887
  if259_else886:
    $P5008 = "&string_to_int"(_lex_param_1, 10)
    set $I5001, $P5008
    chr $S5001, $I5001
    box $P5010, $S5001
    set $P5009, $P5010
  if259_end887:
    $P5011 = _lex_param_1."!make"($P5009)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_145_1357764670.549") :anon :lex :outer("cuid_1_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1044
    .const 'Sub' $P5051 = 'cuid_101_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_102_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_103_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_104_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_105_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_106_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_107_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_108_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_109_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_110_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_111_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_112_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_113_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_114_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_115_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_116_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_117_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_118_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_119_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_120_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_121_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_122_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_123_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_124_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_125_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_126_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_127_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_128_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_129_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_130_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_131_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_132_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_133_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_134_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_135_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_136_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_137_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_138_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_139_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_140_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_141_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_142_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_143_1357764670.549' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_144_1357764670.549' 
    capture_lex $P5051 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5007 = 'cuid_101_1357764670.549' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_102_1357764670.549' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_103_1357764670.549' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_104_1357764670.549' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_105_1357764670.549' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_106_1357764670.549' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_107_1357764670.549' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_108_1357764670.549' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_109_1357764670.549' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_110_1357764670.549' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_111_1357764670.549' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_112_1357764670.549' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_113_1357764670.549' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_114_1357764670.549' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_115_1357764670.549' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_116_1357764670.549' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_117_1357764670.549' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_118_1357764670.549' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_119_1357764670.549' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_120_1357764670.549' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_121_1357764670.549' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_122_1357764670.549' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_123_1357764670.549' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_124_1357764670.549' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_125_1357764670.549' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_126_1357764670.549' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_127_1357764670.549' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_128_1357764670.549' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_129_1357764670.549' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_130_1357764670.549' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_131_1357764670.549' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_132_1357764670.549' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_133_1357764670.549' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_134_1357764670.549' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_135_1357764670.549' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_136_1357764670.549' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_137_1357764670.549' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_138_1357764670.549' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_139_1357764670.549' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_140_1357764670.549' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_141_1357764670.549' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_142_1357764670.549' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_143_1357764670.549' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_144_1357764670.549' 
    capture_lex $P5050
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_101_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1060
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1062
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_102_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1066
    .param pmc _lex_param_0 
    .const 'Sub' $P5026 = 'cuid_194_1357764670.549' 
    capture_lex $P5026 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    split $P5003, " ", "start parse past post pir evalpmc"
    repr_bind_attr_obj $P5001, $P5002, "@!stages", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    split $P5006, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5004, $P5005, "@!cmdoptions", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    box $P5009, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5007, $P5008, "$!usage", $P5009
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!cmdoptions"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next894:
    unless $P5012, for_done896
    shift $P5017, $P5012
  for_redo895:
    .const 'Sub' $P5016 = 'cuid_194_1357764670.549' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next894
  for_done896:
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    getinterp $P5021
    set $P5020, $P5021[.IGLOBALS_CONFIG_HASH]
    unless_null $P5020, fallback897
    nqp_get_sc_object $P5022, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5020, $P5022
  fallback897:
    set $P5018["%parrot_config"], $P5020
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    new $P5025, 'Hash'
    repr_bind_attr_obj $P5023, $P5024, "%!config", $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1357764670.549") :anon :lex :outer("cuid_102_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1073
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
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
.sub "language" :subid("cuid_103_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1080
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    if haz_param_6, default900
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5007
  default900:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    unless _lex_param_1 goto if261_end899 
.annotate 'line', 1081
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if261_end899:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_104_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1088
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
.sub "config" :subid("cuid_105_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1092
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_106_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1094
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$base", $P101 
    .lex "$loaded", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
.annotate 'line', 1095
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."parse_name"(_lex_param_1)
    join $S5001, "/", $P5004
    box $P5005, $S5001
    set $P101, $P5005
    box $P5006, 0
    set $P102, $P5006
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_263902
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1097
    set $S5003, $P101
    concat $S5002, $S5003, ".pbc"
    load_bytecode $S5002
    box $P5007, 1
    set $P102, $P5007
    set $P5009, $P102
    pop_eh 
    goto skip_handler_262901
  catch_handler_263902:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_262901
  skip_handler_262901:
    if $P102 goto unless264_end904 
.annotate 'line', 1098
    set $S5005, $P101
    concat $S5004, $S5005, ".pir"
    load_bytecode $S5004
    box $P5010, 1
    set $P102, $P5010
  unless264_end904:
.annotate 'line', 1099
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."get_module"(_lex_param_1)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_107_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1102
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
.annotate 'line', 1104
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback907
    nqp_get_sc_object $P5007, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["$AUTOPRINTPOS"]
    unless_null $P5005, fallback908
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5008
  fallback908:
    unless_null $P5005, vivi_266909
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5009, "Contextual $*AUTOPRINTPOS not found"
    set $P5005, $P5009
  vivi_266909:
    set $P5004, $P5005
  fallback907:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    if $I5001 goto unless265_end906 
    set $S5001, _lex_param_1
    say $S5001
    box $P5012, $S5001
    set $P5010, $P5012
  unless265_end906:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_108_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1107
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5031 = 'cuid_195_1357764670.549' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_201_1357764670.549' 
    capture_lex $P5031 
    .lex "&blank_context", $P101 
    .lex "$interactive_ctx", $P102 
    .lex "%interactive_pad", $P103 
    .lex "$target", $P104 
    .lex "$stdin", $P105 
    .lex "$encoding", $P106 
    .lex "$save_ctx", $P107 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_195_1357764670.549' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P104, $P5004
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P105, $P5005
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P106, $P5006
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P107, $P5007
.annotate 'line', 1121
    null $P5008
    $P101."set_outer"($P5008)
.annotate 'line', 1122
    $P5009 = "&blank_context"()
    set $P102, $P5009
    getattribute $P5010, $P102, "lex_pad"
    set $P103, $P5010
    set $P5011, _lex_param_1["target"]
    unless_null $P5011, fallback912
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5011, $P5012
  fallback912:
    set $S5002, $P5011
    downcase $S5001, $S5002
    box $P5013, $S5001
    set $P104, $P5013
.annotate 'line', 1128
    getinterp $P5014
    $P5015 = $P5014."stderr_handle"()
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."interactive_banner"()
    $P5015."print"($P5017)
.annotate 'line', 1130
    getinterp $P5018
    $P5019 = $P5018."stdin_handle"()
    set $P105, $P5019
    set $P5020, _lex_param_1["encoding"]
    unless_null $P5020, fallback913
    nqp_get_sc_object $P5021, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5020, $P5021
  fallback913:
    set $S5003, $P5020
    box $P5022, $S5003
    set $P106, $P5022
    set $P5023, $P106
    unless $P106 goto if268_end917 
    set $S5004, $P106
    isne $I5001, $S5004, "fixed_8"
    box $P5024, $I5001
    set $P5023, $P5024
  if268_end917:
    unless $P5023 goto if267_end915 
.annotate 'line', 1132
.annotate 'line', 1133
    $P5025 = $P105."encoding"($P106)
  if267_end915:
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while269_handlers921
    push_eh $P5029
  while269_test918:
    box $P5030, 1
    set $P5028, $P5030
    unless 1 goto while269_done922 
  while269_redo920:
    .const 'Sub' $P5026 = 'cuid_201_1357764670.549' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
    goto while269_test918 
  while269_handlers921:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, while269_test918
    eq $P5029, .CONTROL_LOOP_REDO, while269_redo920
  while269_done922:
    pop_eh 
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "blank_context" :subid("cuid_195_1357764670.549") :anon :lex :outer("cuid_108_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1113
    .lex "%blank_pad", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
    getinterp $P5004
    set $P5003, $P5004["context"]
    unless_null $P5003, fallback910
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5005
  fallback910:
    getattribute $P5002, $P5003, "lex_pad"
    copy $P5002, $P101
    getinterp $P5007
    set $P5006, $P5007["context"]
    unless_null $P5006, fallback911
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5008
  fallback911:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1357764670.549") :anon :lex :outer("cuid_108_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1137
    .const 'Sub' $P5027 = 'cuid_197_1357764670.549' 
    capture_lex $P5027 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P104, $P5004
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    if $P5006 goto unless270_end924 
    die 0, .CONTROL_LOOP_LAST
  unless270_end924:
.annotate 'line', 1140
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5001, $P5007
    if $I5001, defor925
    box $P5011, "> "
    set $P5007, $P5011
  defor925:
    set $P101, $P5007
.annotate 'line', 1141
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5002, $P102
    unless $I5002 goto if271_end927 
    die 0, .CONTROL_LOOP_LAST
  if271_end927:
    defined $I5003, $P102
    if $I5003 goto unless272_end929 
.annotate 'line', 1144
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  unless272_end929:
.annotate 'line', 1150
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5026, $P102
    unless $P102 goto if274_end934 
    .const 'Sub' $P5024 = 'cuid_197_1357764670.549' 
    capture_lex $P5024
    $P5025 = $P5024()
    set $P5026, $P5025
  if274_end934:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1357764670.549") :anon :lex :outer("cuid_201_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1154
    .const 'Sub' $P5034 = 'cuid_196_1357764670.549' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_200_1357764670.549' 
    capture_lex $P5034 
    .lex "$output", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1157
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_276936
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1158
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_275935
  catch_handler_276936:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_196_1357764670.549' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_275935
  skip_handler_275935:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback939
    nqp_get_sc_object $P5016, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5015, $P5016
    set $P5014, $P5015["$MAIN_CTX"]
    unless_null $P5014, fallback940
    nqp_get_sc_object $P5017, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5014, $P5017
  fallback940:
    unless_null $P5014, vivi_278941
    die "Contextual $*MAIN_CTX not found"
    box $P5018, "Contextual $*MAIN_CTX not found"
    set $P5014, $P5018
  vivi_278941:
    set $P5013, $P5014
  fallback939:
    defined $I5001, $P5013
    unless $I5001 goto if277_end938 
    .const 'Sub' $P5019 = 'cuid_200_1357764670.549' 
    capture_lex $P5019
    $P5020 = $P5019()
  if277_end938:
    isnull $I5002, $P101
    unless $I5002 goto if283_end958 
    die 0, .CONTROL_LOOP_NEXT
  if283_end958:
    find_lex $P5021, "$target"
    isfalse $I5003, $P5021
    unless $I5003 goto if284_else959 
.annotate 'line', 1181
.annotate 'line', 1182
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    $P5024 = $P5022."autoprint"($P101)
    set $P5033, $P5024
    goto if284_end960
  if284_else959:
    find_lex $P5025, "$target"
    set $S5003, $P5025
    iseq $I5004, $S5003, "pir"
    unless $I5004 goto if285_else961 
.annotate 'line', 1183
    set $S5004, $P101
    say $S5004
    box $P5032, $S5004
    set $P5031, $P5032
    goto if285_end962
  if285_else961:
.annotate 'line', 1185
.annotate 'line', 1186
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$target"
    find_lex $P5029, "%adverbs"
    $P5030 = $P5026."dumper"($P101, $P5028, $P5029 :flat :named)
    set $P5031, $P5030
  if285_end962:
    set $P5033, $P5031
  if284_end960:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1357764670.549") :anon :lex :outer("cuid_197_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5002, $P101
    concat $S5001, $S5002, "\n"
    print $S5001
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1357764670.549") :anon :lex :outer("cuid_197_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1164
    .const 'Sub' $P5013 = 'cuid_199_1357764670.549' 
    capture_lex $P5013 
    .lex "$cur_ctx", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*MAIN_CTX"
    unless_null $P5002, fallback942
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5004, $P5005
    set $P5003, $P5004["$MAIN_CTX"]
    unless_null $P5003, fallback943
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5006
  fallback943:
    unless_null $P5003, vivi_279944
    die "Contextual $*MAIN_CTX not found"
    box $P5007, "Contextual $*MAIN_CTX not found"
    set $P5003, $P5007
  vivi_279944:
    set $P5002, $P5003
  fallback942:
    set $P101, $P5002
  until280_test945:
    isnull $I5001, $P101
    box $P5011, $I5001
    set $P5010, $P5011
    if $I5001 goto until280_done949 
  until280_redo947:
    .const 'Sub' $P5008 = 'cuid_199_1357764670.549' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
    goto until280_test945 
  until280_done949:
    find_lex $P5012, "$interactive_ctx"
    store_lex "$save_ctx", $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1357764670.549") :anon :lex :outer("cuid_200_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1166
    .const 'Sub' $P5011 = 'cuid_198_1357764670.549' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_lex $P5003, "$cur_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless281_end951 
.annotate 'line', 1168
    set $P5004, $P101
    iter $P5006, $P101
  for_next954:
    unless $P5006, for_done956
    shift $P5008, $P5006
  for_redo955:
    .const 'Sub' $P5007 = 'cuid_198_1357764670.549' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next954
  for_done956:
  unless281_end951:
    find_lex $P5010, "$cur_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$cur_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1357764670.549") :anon :lex :outer("cuid_199_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1169
    .param pmc _lex_param_0 
    .lex "$key", $S101 
    .lex "$_", _lex_param_0 
    set $S101, ""
    set $S5001, _lex_param_0
    set $S101, $S5001
    find_lex $P5001, "%interactive_pad"
    exists $I5001, $P5001[$S101]
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless282_end953 
    find_lex $P5002, "%interactive_pad"
    find_lex $P5004, "$pad"
    set $P5003, $P5004[$S101]
    set $P5002[$S101], $P5003
    set $P5005, $P5003
  unless282_end953:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "eval" :subid("cuid_109_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1192
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5012 = 'cuid_202_1357764670.549' 
    capture_lex $P5012 
    .lex "$output", $P101 
    .lex "$old_runcore", $P102 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P102, $P5003
    set $P5004, _lex_param_3["profile-compile"]
    unless_null $P5004, fallback965
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5005
  fallback965:
    unless $P5004 goto if286_end964 
.annotate 'line', 1196
    set_runcore "subprof_hll"
  if286_end964:
.annotate 'line', 1199
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5007
    isa $I5002, $P101, "String"
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if288_end969 
    set $P5008, _lex_param_3["target"]
    unless_null $P5008, fallback970
    nqp_get_sc_object $P5009, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5009
  fallback970:
    set $S5002, $P5008
    iseq $I5003, $S5002, ""
    set $I5004, $I5003
  if288_end969:
    unless $I5004 goto if287_end967 
    .const 'Sub' $P5010 = 'cuid_202_1357764670.549' 
    capture_lex $P5010
    $P5011 = $P5010()
  if287_end967:
    set $S5003, $P102
    set_runcore $S5003
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1357764670.549") :anon :lex :outer("cuid_109_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1202
    .lex "$outer_ctx", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_lex $P5003, "%adverbs"
    set $P5002, $P5003["outer_ctx"]
    unless_null $P5002, fallback971
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5004
  fallback971:
    set $P101, $P5002
    defined $I5001, $P101
    unless $I5001 goto if289_end973 
.annotate 'line', 1204
.annotate 'line', 1205
    find_lex $P5006, "$output"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback974
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5007
  fallback974:
    $P5008 = $P5005."set_outer_ctx"($P101)
  if289_end973:
    find_lex $P5010, "%adverbs"
    set $P5009, $P5010["profile"]
    unless_null $P5009, fallback977
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5011
  fallback977:
    unless $P5009 goto if290_end976 
.annotate 'line', 1208
    set_runcore "subprof_hll"
  if290_end976:
    find_lex $P5013, "%adverbs"
    set $P5012, $P5013["trace"]
    unless_null $P5012, fallback978
    nqp_get_sc_object $P5014, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5012, $P5014
  fallback978:
    set $I5002, $P5012
    trace $I5002
.annotate 'line', 1212
    find_lex $P5016, "@args"
    find_lex $P5015, "$output"
    $P5017 = $P5015($P5016 :flat)
    store_lex "$output", $P5017
    trace 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_110_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1220
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
.sub "panic" :subid("cuid_111_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1225
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
.sub "stages" :subid("cuid_112_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1229
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default981
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default981:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if291_end980 
.annotate 'line', 1230
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if291_end980:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_113_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1236
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if292_end983 
.annotate 'line', 1237
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback984
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5004
  fallback984:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5003
  if292_end983:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!parsegrammar"
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_114_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1243
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if293_end986 
.annotate 'line', 1244
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback987
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5004
  fallback987:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5003
  if293_end986:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!parseactions"
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_115_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1250
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_116_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1252
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_117_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1254
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default990
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5006
  default990:
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    defined $I5001, _lex_param_1
    unless $I5001 goto if294_end989 
.annotate 'line', 1255
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if294_end989:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_118_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1262
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default993
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default993:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if295_end992 
.annotate 'line', 1263
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if295_end992:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_119_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1269
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
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $P5005, _lex_param_1[2]
    unless_null $P5005, fallback996
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5006
  fallback996:
    set $S5001, $P5005
    index $I5002, $S5001, "@INC", 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if296_end995 
.annotate 'line', 1278
    exit 0
  if296_end995:
    set $P5007, _lex_param_1[0]
    unless_null $P5007, fallback997
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5007, $P5008
  fallback997:
    set $P101, $P5007
.annotate 'line', 1283
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1284
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1285
    $P5012 = $P102."arguments"()
    set $P104, $P5012
.annotate 'line', 1287
    _lex_param_2."update"($P103)
    set $P5013, _lex_param_2["help"]
    unless_null $P5013, fallback1002
    nqp_get_sc_object $P5014, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5013, $P5014
  fallback1002:
    set $P5017, $P5013
    if $P5013 goto unless298_end1001 
    set $P5015, _lex_param_2["h"]
    unless_null $P5015, fallback1003
    nqp_get_sc_object $P5016, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5015, $P5016
  fallback1003:
    set $P5017, $P5015
  unless298_end1001:
    unless $P5017 goto if297_end999 
.annotate 'line', 1288
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."usage"($P101)
  if297_end999:
    load_bytecode "dumper.pbc"
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1293
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_120_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1297
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5066 = 'cuid_203_1357764670.549' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_204_1357764670.549' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_205_1357764670.549' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_206_1357764670.549' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_207_1357764670.549' 
    capture_lex $P5066 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P104, $P5004
    set $P5005, _lex_param_2["version"]
    unless_null $P5005, fallback1008
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5006
  fallback1008:
    set $P5009, $P5005
    if $P5005 goto unless300_end1007 
    set $P5007, _lex_param_2["v"]
    unless_null $P5007, fallback1009
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5007, $P5008
  fallback1009:
    set $P5009, $P5007
  unless300_end1007:
    unless $P5009 goto if299_end1005 
.annotate 'line', 1298
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."version"()
  if299_end1005:
    set $P5012, _lex_param_2["verbose-config"]
    unless_null $P5012, fallback1016
    nqp_get_sc_object $P5013, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5012, $P5013
  fallback1016:
    set $P5016, $P5012
    if $P5012 goto unless303_end1015 
    set $P5014, _lex_param_2["V"]
    unless_null $P5014, fallback1017
    nqp_get_sc_object $P5015, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5014, $P5015
  fallback1017:
    set $P5016, $P5014
  unless303_end1015:
    set $P5019, $P5016
    if $P5016 goto unless302_end1013 
    set $P5017, _lex_param_2["show-config"]
    unless_null $P5017, fallback1018
    nqp_get_sc_object $P5018, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5017, $P5018
  fallback1018:
    set $P5019, $P5017
  unless302_end1013:
    unless $P5019 goto if301_end1011 
.annotate 'line', 1299
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."verbose-config"()
  if301_end1011:
    set $P5022, _lex_param_2["nqpevent"]
    unless_null $P5022, fallback1021
    nqp_get_sc_object $P5023, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5022, $P5023
  fallback1021:
    unless $P5022 goto if304_end1020 
.annotate 'line', 1301
    nqp_decontainerize $P5024, _lex_param_0
    set $P5025, _lex_param_2["nqpevent"]
    unless_null $P5025, fallback1022
    nqp_get_sc_object $P5026, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5025, $P5026
  fallback1022:
    $P5027 = $P5024."nqpevent"($P5025)
  if304_end1020:
    box $P5028, 0
    set $P103, $P5028
    set $P5029, _lex_param_2["target"]
    unless_null $P5029, fallback1023
    nqp_get_sc_object $P5030, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5029, $P5030
  fallback1023:
    set $S5002, $P5029
    downcase $S5001, $S5002
    box $P5031, $S5001
    set $P104, $P5031
    new $P5054, 'ExceptionHandler'
    set_label $P5054, catch_handler_3201055
    $P5054.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5054
.annotate 'line', 1307
    new $P5052, 'ExceptionHandler'
    set_label $P5052, catch_handler_3161050
    $P5052.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5052
    new $P5052, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5052, catch_handler_3171051
    push_eh $P5052
    set $P5032, _lex_param_2["e"]
    unless_null $P5032, fallback1026
    nqp_get_sc_object $P5033, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5032, $P5033
  fallback1026:
    defined $I5001, $P5032
    unless $I5001 goto if305_else1024 
    .const 'Sub' $P5034 = 'cuid_203_1357764670.549' 
    capture_lex $P5034
    $P5035 = $P5034()
    goto if305_end1025
  if305_else1024:
    isfalse $I5002, _lex_param_1
    unless $I5002 goto if308_else1032 
.annotate 'line', 1316
    nqp_decontainerize $P5036, _lex_param_0
    $P5037 = $P5036."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5037
    set $P5047, $P101
    goto if308_end1033
  if308_else1032:
    set $P5038, _lex_param_2["combine"]
    unless_null $P5038, fallback1036
    nqp_get_sc_object $P5039, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5038, $P5039
  fallback1036:
    unless $P5038 goto if309_else1034 
.annotate 'line', 1317
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5041
    set $P5046, $P101
    goto if309_end1035
  if309_else1034:
.annotate 'line', 1318
    nqp_decontainerize $P5042, _lex_param_0
    set $P5043, _lex_param_1[0]
    unless_null $P5043, fallback1037
    nqp_get_sc_object $P5044, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5043, $P5044
  fallback1037:
    $P5045 = $P5042."evalfiles"($P5043, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5045
    set $P5046, $P101
  if309_end1035:
    set $P5047, $P5046
  if308_end1033:
  if305_end1025:
    isnull $I5004, $P101
    not $I5003, $I5004
    set $I5006, $I5003
    unless $I5003 goto if311_end1041 
    set $S5003, $P104
    iseq $I5005, $S5003, "pir"
    set $I5006, $I5005
  if311_end1041:
    unless $I5006 goto if310_end1039 
    .const 'Sub' $P5048 = 'cuid_204_1357764670.549' 
    capture_lex $P5048
    $P5049 = $P5048()
  if310_end1039:
    nqp_get_sc_object $P5050, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    nqp_get_sc_object $P5051, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5053, $P5051
    pop_eh 
    pop_eh 
    goto skip_handler_3151049
  catch_handler_3161050:
    .get_results ($P5052) 
    .const 'Sub' $P10001 = 'cuid_205_1357764670.549' 
    capture_lex $P10001
    $P10001($P5052)
    set $I10001, 1
    set $P5052["handled"], $I10001
    nqp_get_sc_object $P10002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5052
    pop_upto_eh $P5052
    pop_eh 
    set $P5053, $P10002
    goto skip_handler_3151049
  catch_handler_3171051:
    .get_results ($P5052) 
    .const 'Sub' $P10003 = 'cuid_206_1357764670.549' 
    capture_lex $P10003
    $P10003($P5052)
    set $I10002, 1
    set $P5052["handled"], $I10002
    nqp_get_sc_object $P10004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5052
    pop_upto_eh $P5052
    pop_eh 
    set $P5053, $P10004
    goto skip_handler_3151049
  skip_handler_3151049:
    set $P5055, $P5053
    pop_eh 
    goto skip_handler_3191054
  catch_handler_3201055:
    .get_results ($P5054) 
    set $I10001, 1
    set $P5054["handled"], $I10001
    nqp_get_sc_object $P10001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5054
    pop_upto_eh $P5054
    pop_eh 
    set $P5055, $P10001
    goto skip_handler_3191054
  skip_handler_3191054:
    unless $P103 goto if321_end1057 
.annotate 'line', 1343
    set $P5056, _lex_param_2["ll-exception"]
    unless_null $P5056, fallback1062
    nqp_get_sc_object $P5057, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5056, $P5057
  fallback1062:
    set $P5059, $P5056
    if $P5056 goto unless323_end1061 
    nqp_decontainerize $P5058, _lex_param_0
    can $I5008, $P5058, "handle-exception"
    not $I5007, $I5008
    box $P5060, $I5007
    set $P5059, $P5060
  unless323_end1061:
    unless $P5059 goto if322_else1058 
    .const 'Sub' $P5061 = 'cuid_207_1357764670.549' 
    capture_lex $P5061
    $P5062 = $P5061()
    set $P5065, $P5062
    goto if322_end1059
  if322_else1058:
.annotate 'line', 1350
.annotate 'line', 1351
    nqp_decontainerize $P5063, _lex_param_0
    $P5064 = $P5063."handle-exception"($P102)
    set $P5065, $P5064
  if322_end1059:
  if321_end1057:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1357764670.549") :anon :lex :outer("cuid_120_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1308
    .lex "$?FILES", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1311
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5010, "%adverbs"
    set $P5009, $P5010["e"]
    unless_null $P5009, fallback1027
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5011
  fallback1027:
    find_lex $P5012, "@a"
    find_lex $P5013, "%adverbs"
    $P5014 = $P5007."eval"($P5009, "-e", $P5012 :flat, $P5013 :flat :named)
    store_lex "$result", $P5014
    find_lex $P5015, "$target"
    set $S5001, $P5015
    iseq $I5001, $S5001, ""
    set $I5003, $I5001
    if $I5001 goto unless307_end1031 
    find_lex $P5016, "$target"
    set $S5002, $P5016
    iseq $I5002, $S5002, "pir"
    set $I5003, $I5002
  unless307_end1031:
    box $P5024, $I5003
    set $P5023, $P5024
    if $I5003 goto unless306_end1029 
.annotate 'line', 1312
.annotate 'line', 1313
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$result"
    find_lex $P5020, "$target"
    find_lex $P5021, "%adverbs"
    $P5022 = $P5017."dumper"($P5019, $P5020, $P5021 :flat :named)
    set $P5023, $P5022
  unless306_end1029:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1357764670.549") :anon :lex :outer("cuid_120_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1320
    .lex "$output", $P101 
    .lex "$fh", $P102 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    find_lex $P5004, "%adverbs"
    set $P5003, $P5004["output"]
    unless_null $P5003, fallback1042
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5005
  fallback1042:
    set $P101, $P5003
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    set $I5003, $I5001
    if $I5001 goto unless313_end1046 
    set $S5002, $P101
    iseq $I5002, $S5002, "-"
    set $I5003, $I5002
  unless313_end1046:
    unless $I5003 goto if312_else1043 
.annotate 'line', 1323
    getinterp $P5006
    $P5007 = $P5006."stdout_handle"()
    set $P5010, $P5007
    goto if312_end1044
  if312_else1043:
.annotate 'line', 1324
    new $P5008, "FileHandle"
    $P5009 = $P5008."open"($P101, "w")
    set $P5010, $P5009
  if312_end1044:
    set $P102, $P5010
    if $P102 goto unless314_end1048 
.annotate 'line', 1325
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    set $S5004, $P101
    concat $S5003, "Cannot write to ", $S5004
    $P5013 = $P5011."panic"($S5003)
  unless314_end1048:
.annotate 'line', 1326
    find_lex $P5014, "$result"
    $P102."print"($P5014)
.annotate 'line', 1327
    $P5015 = $P102."close"()
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1357764670.549") :anon :lex :outer("cuid_120_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1329
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
.sub "" :subid("cuid_206_1357764670.549") :anon :lex :outer("cuid_120_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1333
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if318_else1052 
.annotate 'line', 1334
.annotate 'line', 1335
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if318_end1053
  if318_else1052:
.annotate 'line', 1336
    rethrow _lex_param_0
  if318_end1053:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1357764670.549") :anon :lex :outer("cuid_120_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1344
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    getstderr $P5002
    set $P101, $P5002
.annotate 'line', 1346
    find_lex $P5003, "$error"
    $P101."print"($P5003)
.annotate 'line', 1347
    $P101."print"("\n")
.annotate 'line', 1348
    find_lex $P5004, "$error"
    $P5005 = $P5004."backtrace_strings"()
    join $S5001, "\n", $P5005
    $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_121_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1357
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5033 = 'cuid_208_1357764670.549' 
    capture_lex $P5033 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
.annotate 'line', 1359
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1361
    nqp_get_sc_object $P5009, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5008, $P5009, "HLL"
    nqp_get_package_through_who $P5007, $P5008, "CommandLine"
    get_who $P5006, $P5007
    set $P5005, $P5006["Parser"]
    unless_null $P5005, fallback1063
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5010
  fallback1063:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5013, $P5011, $P5012, "@!cmdoptions"
    $P5014 = $P5005."new"($P5013)
    set $P101, $P5014
.annotate 'line', 1362
    $P101."add-stopper"("-e")
.annotate 'line', 1363
    $P101."stop-after-first-arg"()
    new $P5019, 'ExceptionHandler'
    set_label $P5019, catch_handler_3271067
    $P5019.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5019
.annotate 'line', 1365
    new $P5017, 'ExceptionHandler'
    set_label $P5017, catch_handler_3251065
    $P5017.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5017
.annotate 'line', 1366
    $P5015 = $P101."parse"(_lex_param_1)
    set $P102, $P5015
    nqp_get_sc_object $P5016, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5018, $P5016
    pop_eh 
    goto skip_handler_3241064
  catch_handler_3251065:
    .get_results ($P5017) 
    .const 'Sub' $P10001 = 'cuid_208_1357764670.549' 
    capture_lex $P10001
    $P10001($P5017)
    set $I10001, 1
    set $P5017["handled"], $I10001
    nqp_get_sc_object $P10002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5017
    pop_upto_eh $P5017
    pop_eh 
    set $P5018, $P10002
    goto skip_handler_3241064
  skip_handler_3241064:
    set $P5020, $P5018
    pop_eh 
    goto skip_handler_3261066
  catch_handler_3271067:
    .get_results ($P5019) 
    set $I10001, 1
    set $P5019["handled"], $I10001
    nqp_get_sc_object $P10001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5019
    pop_upto_eh $P5019
    pop_eh 
    set $P5020, $P10001
    goto skip_handler_3261066
  skip_handler_3261066:
    unless $P102 goto if328_else1068 
.annotate 'line', 1373
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
.annotate 'line', 1374
    $P5023 = $P102."options"()
    repr_bind_attr_obj $P5021, $P5022, "%!cli-options", $P5023
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
.annotate 'line', 1375
    $P5026 = $P102."arguments"()
    repr_bind_attr_obj $P5024, $P5025, "@!cli-arguments", $P5026
    goto if328_end1069
  if328_else1068:
.annotate 'line', 1377
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    new $P5029, 'Hash'
    repr_bind_attr_obj $P5027, $P5028, "%!cli-options", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    new $P5032, 'ResizablePMCArray'
    repr_bind_attr_obj $P5030, $P5031, "@!cli-arguments", $P5032
  if328_end1069:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1357764670.549") :anon :lex :outer("cuid_121_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1367
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1369
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_122_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1384
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5034 = 'cuid_210_1357764670.549' 
    capture_lex $P5034 
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
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P105, $P5005
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P106, $P5006
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1070
    .lex "RETURN", $P108
    set $P5008, _lex_param_3["target"]
    unless_null $P5008, fallback1072
    nqp_get_sc_object $P5009, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5009
  fallback1072:
    set $S5002, $P5008
    downcase $S5001, $S5002
    box $P5010, $S5001
    set $P101, $P5010
    set $P5011, _lex_param_3["encoding"]
    unless_null $P5011, fallback1073
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5011, $P5012
  fallback1073:
    set $P102, $P5011
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if329_else1074 
    set $P5014, _lex_param_1
    goto if329_end1075
  if329_else1074:
    new $P5013, 'ResizablePMCArray'
    push $P5013, _lex_param_1
    set $P5014, $P5013
  if329_end1075:
    set $P103, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    join $S5003, ",", $P103
    box $P5017, $S5003
    repr_bind_attr_obj $P5015, $P5016, "$!user_progname", $P5017
    set $P5018, $P103
    iter $P5020, $P103
  for_next1082:
    unless $P5020, for_done1084
    shift $P5022, $P5020
  for_redo1083:
    .const 'Sub' $P5021 = 'cuid_210_1357764670.549' 
    capture_lex $P5021
    $P5018 = $P5021($P5022)
    goto for_next1082
  for_done1084:
    join $S5004, "", $P104
    box $P5023, $S5004
    set $P105, $P5023
    join $S5005, " ", $P103
    box $P5024, $S5005
    set $P106, $P5024
.annotate 'line', 1408
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5026
    set $S5006, $P101
    iseq $I5002, $S5006, ""
    set $I5004, $I5002
    if $I5002 goto unless336_end1088 
    set $S5007, $P101
    iseq $I5003, $S5007, "pir"
    set $I5004, $I5003
  unless336_end1088:
    unless $I5004 goto if335_else1085 
.annotate 'line', 1409
    find_lex $P5027, "RETURN"
    $P5028 = $P5027($P107)
    set $P5033, $P5028
    goto if335_end1086
  if335_else1085:
.annotate 'line', 1411
.annotate 'line', 1412
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5029, "RETURN"
    $P5032 = $P5029($P5031)
    set $P5033, $P5032
  if335_end1086:
    goto lexotic_1071
  lexotic_1070:
    .get_results ($P5033)
  lexotic_1071:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1357764670.549") :anon :lex :outer("cuid_122_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1390
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_209_1357764670.549' 
    capture_lex $P5014 
    .lex "$in-handle", $P101 
    .lex "$err", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    new $P5003, "FileHandle"
    set $P101, $P5003
    box $P5004, 0
    set $P102, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_3331079
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1393
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_3311077
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
.annotate 'line', 1397
    find_lex $P5005, "$encoding"
    $P101."encoding"($P5005)
    find_lex $P5006, "@codes"
.annotate 'line', 1398
    $P5007 = $P101."readall"(_lex_param_0)
    set $S5001, $P5007
    push $P5006, $S5001
.annotate 'line', 1399
    $P101."close"()
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5010, $P5008
    pop_eh 
    goto skip_handler_3301076
  catch_handler_3311077:
    .get_results ($P5009) 
    .const 'Sub' $P10001 = 'cuid_209_1357764670.549' 
    capture_lex $P10001
    $P10001($P5009)
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10002
    goto skip_handler_3301076
  skip_handler_3301076:
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_3321078
  catch_handler_3331079:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_3321078
  skip_handler_3321078:
    set $P5013, $P102
    unless $P102 goto if334_end1081 
    die $P102
    set $P5013, $P102
  if334_end1081:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1357764670.549") :anon :lex :outer("cuid_210_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1400
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
.sub "compile" :subid("cuid_123_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1416
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5033 = 'cuid_211_1357764670.549' 
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
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P104, $P5004
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P105, $P5005
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1089
    .lex "RETURN", $P107
    unless_null $P101, fallback1091
    nqp_get_sc_object $P5009, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5008, $P5009
    set $P5007, $P5008["%COMPILING"]
    unless_null $P5007, fallback1092
    nqp_get_sc_object $P5011, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%COMPILING"], $P5012
    set $P5007, $P5012
  fallback1092:
    unless_null $P5007, vivi_3371093
    die "Contextual %*COMPILING not found"
    box $P5013, "Contextual %*COMPILING not found"
    set $P5007, $P5013
  vivi_3371093:
    set $P101, $P5007
  fallback1091:
    set $P101["%?OPTIONS"], _lex_param_2
    set $P5014, _lex_param_2["target"]
    unless_null $P5014, fallback1094
    nqp_get_sc_object $P5015, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5014, $P5015
  fallback1094:
    set $S5002, $P5014
    downcase $S5001, $S5002
    box $P5016, $S5001
    set $P102, $P5016
    set $P103, _lex_param_1
.annotate 'line', 1421
    getinterp $P5017
    $P5018 = $P5017."stderr_handle"()
    set $P104, $P5018
.annotate 'line', 1422
    getinterp $P5019
    $P5020 = $P5019."stdin_handle"()
    set $P105, $P5020
    set $P5021, _lex_param_2["stagestats"]
    unless_null $P5021, fallback1095
    nqp_get_sc_object $P5022, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5021, $P5022
  fallback1095:
    set $P106, $P5021
.annotate 'line', 1424
    nqp_decontainerize $P5026, _lex_param_0
    $P5027 = $P5026."stages"()
    set $P5023, $P5027
    iter $P5025, $P5027
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, for_handlers1106
    push_eh $P5029
  for_next1107:
    unless $P5025, for_done1109
    shift $P5030, $P5025
  for_redo1108:
    .const 'Sub' $P5028 = 'cuid_211_1357764670.549' 
    capture_lex $P5028
    $P5023 = $P5028($P5030)
    goto for_next1107
  for_handlers1106:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, for_next1107
    eq $P5029, .CONTROL_LOOP_REDO, for_redo1108
  for_done1109:
    pop_eh 
    find_lex $P5031, "RETURN"
    $P5032 = $P5031($P103)
    goto lexotic_1090
  lexotic_1089:
    .get_results ($P5032)
  lexotic_1090:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1357764670.549") :anon :lex :outer("cuid_123_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1424
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    time $N5001
    box $P5003, $N5001
    set $P101, $P5003
.annotate 'line', 1426
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
    unless $I5001 goto if338_end1097 
.annotate 'line', 1428
.annotate 'line', 1429
    find_lex $P5011, "$stderr"
    new $P5012, 'ResizablePMCArray'
    push $P5012, _lex_param_0
    push $P5012, $P102
    sprintf $S5002, "Stage %-11s: %7.3f", $P5012
    $P5011."print"($S5002)
    find_lex $P5013, "$stagestats"
    set $I5003, $P5013
    band $I5002, $I5003, 4
    unless $I5002 goto if339_end1099 
    sweep 1
  if339_end1099:
    find_lex $P5014, "$stagestats"
    set $I5005, $P5014
    band $I5004, $I5005, 2
    unless $I5004 goto if340_end1101 
.annotate 'line', 1431
    find_lex $P5015, "$stderr"
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."vmstat"()
    sprintf $S5003, " %11d %11d %9d %9d", $P5018
    $P5019 = $P5015."print"($S5003)
  if340_end1101:
.annotate 'line', 1433
    find_lex $P5020, "$stderr"
    $P5020."print"("\n")
    find_lex $P5021, "$stagestats"
    set $I5007, $P5021
    band $I5006, $I5007, 8
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if341_end1103 
.annotate 'line', 1434
.annotate 'line', 1435
    find_lex $P5022, "$stderr"
    $P5022."print"("continue> ")
.annotate 'line', 1436
    find_lex $P5023, "$stdin"
    $P5024 = $P5023."readline"()
    set $P5025, $P5024
  if341_end1103:
  if338_end1097:
    set $S5004, _lex_param_0
    find_lex $P5027, "$target"
    set $S5005, $P5027
    iseq $I5008, $S5004, $S5005
    set $I5009, $I5008
    unless $I5008 goto if342_end1105 
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
  if342_end1105:
    .return ($I5009) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_124_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1444
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
.sub "parse" :subid("cuid_125_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1448
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5034 = 'cuid_212_1357764670.549' 
    capture_lex $P5034 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1110
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set $P5005, _lex_param_2["transcode"]
    unless_null $P5005, fallback1114
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5006
  fallback1114:
    unless $P5005 goto if343_end1113 
.annotate 'line', 1450
    set $P5011, _lex_param_2["transcode"]
    unless_null $P5011, fallback1115
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5011, $P5012
  fallback1115:
    set $S5001, $P5011
    split $P5010, " ", $S5001
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next1118:
    unless $P5009, for_done1120
    shift $P5014, $P5009
  for_redo1119:
    .const 'Sub' $P5013 = 'cuid_212_1357764670.549' 
    capture_lex $P5013
    $P5007 = $P5013($P5014)
    goto for_next1118
  for_done1120:
  if343_end1113:
.annotate 'line', 1458
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."parsegrammar"()
    set $P102, $P5016
    set $P5017, _lex_param_2["target"]
    unless_null $P5017, fallback1123
    nqp_get_sc_object $P5018, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5017, $P5018
  fallback1123:
    set $S5002, $P5017
    iseq $I5001, $S5002, "parse"
    if $I5001 goto unless346_end1122 
.annotate 'line', 1460
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parseactions"()
    set $P103, $P5020
  unless346_end1122:
    set $P5021, _lex_param_2["rxtrace"]
    unless_null $P5021, fallback1126
    nqp_get_sc_object $P5022, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5021, $P5022
  fallback1126:
    unless $P5021 goto if347_end1125 
.annotate 'line', 1461
    get_how $P5023, $P102
    $P5024 = $P5023."trace-on"($P102)
  if347_end1125:
.annotate 'line', 1462
    $P5025 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5025
    set $P5026, _lex_param_2["rxtrace"]
    unless_null $P5026, fallback1129
    nqp_get_sc_object $P5027, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5026, $P5027
  fallback1129:
    unless $P5026 goto if348_end1128 
.annotate 'line', 1463
    get_how $P5028, $P102
    $P5029 = $P5028."trace-off"($P102)
  if348_end1128:
    if $P104 goto unless349_end1131 
.annotate 'line', 1464
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."panic"("Unable to parse source")
  unless349_end1131:
    find_lex $P5032, "RETURN"
    $P5033 = $P5032($P104)
    goto lexotic_1111
  lexotic_1110:
    .get_results ($P5033)
  lexotic_1111:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1357764670.549") :anon :lex :outer("cuid_125_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1451
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_3451117
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 1452
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_3441116
  catch_handler_3451117:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_3441116
  skip_handler_3441116:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_126_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1468
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
.annotate 'line', 1469
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1471
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback1134
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5007
  fallback1134:
    $P5008 = $P5003."ACCEPTS"($P101)
    if $P5008 goto unless350_end1133 
.annotate 'line', 1470
    nqp_decontainerize $P5009, _lex_param_0
    typeof $S5002, _lex_param_1
    concat $S5001, "Unable to obtain ast from ", $S5002
    $P5010 = $P5009."panic"($S5001)
  unless350_end1133:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_127_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1475
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1476
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_128_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1479
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
.sub "pir" :subid("cuid_129_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1492
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1493
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
.sub "evalpmc" :subid("cuid_130_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1496
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 1498
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_131_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1501
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5011 = 'cuid_213_1357764670.549' 
    capture_lex $P5011 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1135
    .lex "RETURN", $P101
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if351_end1138 
.annotate 'line', 1502
.annotate 'line', 1503
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  if351_end1138:
    set $P5004, _lex_param_3["dumper"]
    unless_null $P5004, fallback1141
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5005
  fallback1141:
    unless $P5004 goto if352_else1139 
    .const 'Sub' $P5006 = 'cuid_213_1357764670.549' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5010, $P5007
    goto if352_end1140
  if352_else1139:
.annotate 'line', 1511
.annotate 'line', 1512
 $P5008 = get_root_global ['parrot'], '_dumper' 
    $P5009 = $P5008(_lex_param_1, _lex_param_2)
    set $P5010, $P5009
  if352_end1140:
    goto lexotic_1136
  lexotic_1135:
    .get_results ($P5010)
  lexotic_1136:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1357764670.549") :anon :lex :outer("cuid_131_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1506
    .lex "$dumper", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    load_bytecode "PCT/Dumper.pbc"
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5005, $P5006, "PCT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Dumper"]
    unless_null $P5003, fallback1142
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5003, $P5007
  fallback1142:
    find_lex $P5009, "%options"
    set $P5008, $P5009["dumper"]
    unless_null $P5008, fallback1143
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5010
  fallback1143:
    set $S5002, $P5008
    downcase $S5001, $S5002
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback1144
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5011
  fallback1144:
    set $P101, $P5002
.annotate 'line', 1509
    find_lex $P5012, "$obj"
    find_lex $P5013, "$name"
    $P5014 = $P101($P5012, $P5013)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_132_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1516
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    if haz_param_10, default1147
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5005
  default1147:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    unless _lex_param_1 goto if353_end1146 
.annotate 'line', 1517
.annotate 'line', 1518
    $P5001 = "&say"(_lex_param_1)
  if353_end1146:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_133_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1524
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$parver", $P102 
    .lex "$parrev", $P103 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!config"
    set $P5004, $P5007["version"]
    unless_null $P5004, fallback1148
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5008
  fallback1148:
    set $P101, $P5004
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["%parrot_config"]
    unless_null $P5010, fallback1149
    new $P5013, 'Hash'
    set $P5010, $P5013
  fallback1149:
    set $P5009, $P5010["VERSION"]
    unless_null $P5009, fallback1150
    nqp_get_sc_object $P5014, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5014
  fallback1150:
    set $P102, $P5009
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    set $P5017, $P5018["%parrot_config"]
    unless_null $P5017, fallback1152
    new $P5020, 'Hash'
    set $P5017, $P5020
  fallback1152:
    set $P5016, $P5017["git_describe"]
    unless_null $P5016, fallback1153
    nqp_get_sc_object $P5021, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5016, $P5021
  fallback1153:
    set $P5015, $P5016
    defined $I5001, $P5015
    if $I5001, defor1151
    box $P5022, "(unknown)"
    set $P5015, $P5022
  defor1151:
    set $P103, $P5015
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
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
.sub "show-config" :subid("cuid_134_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1532
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_135_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1534
    .param pmc _lex_param_0 
    .const 'Sub' $P5018 = 'cuid_214_1357764670.549' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_215_1357764670.549' 
    capture_lex $P5018 
    .lex "self", _lex_param_0 
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["%parrot_config"]
    unless_null $P5004, fallback1154
    new $P5007, 'Hash'
    set $P5004, $P5007
  fallback1154:
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1155:
    unless $P5003, for_done1157
    shift $P5009, $P5003
  for_redo1156:
    .const 'Sub' $P5008 = 'cuid_214_1357764670.549' 
    capture_lex $P5008
    $P5001 = $P5008($P5009)
    goto for_next1155
  for_done1157:
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5015, $P5013, $P5014, "%!config"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next1158:
    unless $P5012, for_done1160
    shift $P5017, $P5012
  for_redo1159:
    .const 'Sub' $P5016 = 'cuid_215_1357764670.549' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1158
  for_done1160:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1357764670.549") :anon :lex :outer("cuid_135_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1535
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1536
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
.sub "" :subid("cuid_215_1357764670.549") :anon :lex :outer("cuid_135_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1538
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1539
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
.sub "vmstat" :subid("cuid_136_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1544
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
.sub "nqpevent" :subid("cuid_137_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1552
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_217_1357764670.549' 
    capture_lex $P5011 
    if haz_param_11, default1175
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5010
  default1175:
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if355_end1164 
    set $P5004, $P101
  if355_end1164:
    unless $P5004 goto if354_end1162 
.annotate 'line', 1556
    $P5006 = $P101."flush"()
  if354_end1162:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if356_end1166 
    .const 'Sub' $P5007 = 'cuid_217_1357764670.549' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if356_end1166:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_217_1357764670.549") :anon :lex :outer("cuid_137_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1559
    .const 'Sub' $P5018 = 'cuid_216_1357764670.549' 
    capture_lex $P5018 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5006, "$spec"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback1167
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5007
  fallback1167:
    set $P101, $P5005
    find_lex $P5009, "$spec"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback1168
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5010
  fallback1168:
    set $P102, $P5008
    set $S5002, $P101
    isgt $I5001, $S5002, ""
    unless $I5001 goto if357_else1169 
    .const 'Sub' $P5011 = 'cuid_216_1357764670.549' 
    capture_lex $P5011
    $P5012 = $P5011()
    goto if357_end1170
  if357_else1169:
.annotate 'line', 1568
.annotate 'line', 1569
    getinterp $P5014
    $P5015 = $P5014."stderr_handle"()
    nqpevent_fh $P5013, $P5015
  if357_end1170:
    set $S5003, $P102
    iseq $I5003, $S5003, ""
    unless $I5003 goto if359_else1173 
    box $P5017, 31
    set $P5016, $P5017
    goto if359_end1174
  if359_else1173:
    set $P5016, $P102
  if359_end1174:
    set $I5004, $P5016
    nqpdebflags $I5002, $I5004
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1357764670.549") :anon :lex :outer("cuid_217_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1563
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    new $P5002, "FileHandle"
    set $P101, $P5002
.annotate 'line', 1565
    find_lex $P5003, "$file"
    $P5004 = $P101."open"($P5003, "w")
    if $P5004 goto unless358_end1172 
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$file"
    set $S5002, $P5007
    concat $S5001, "Cannot write to ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless358_end1172:
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_138_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1576
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_218_1357764670.549' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, "ResizableStringArray"
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1178:
    unless $P5005, for_done1180
    shift $P5010, $P5005
  for_redo1179:
    .const 'Sub' $P5009 = 'cuid_218_1357764670.549' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1178
  for_done1180:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1357764670.549") :anon :lex :outer("cuid_138_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1578
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if360_end1177 
.annotate 'line', 1579
.annotate 'line', 1580
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if360_end1177:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_139_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1586
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5027 = 'cuid_219_1357764670.549' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_220_1357764670.549' 
    capture_lex $P5027 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1181
    .lex "RETURN", $P104
    set $P5004, _lex_param_2["before"]
    unless_null $P5004, fallback1185
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5005
  fallback1185:
    unless $P5004 goto if361_else1183 
.annotate 'line', 1589
    set $P5006, _lex_param_2["before"]
    unless_null $P5006, fallback1186
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5007
  fallback1186:
    set $P102, $P5006
    box $P5008, "before"
    set $P101, $P5008
    goto if361_end1184
  if361_else1183:
    set $P5009, _lex_param_2["after"]
    unless_null $P5009, fallback1189
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5010
  fallback1189:
    unless $P5009 goto if362_else1187 
.annotate 'line', 1592
    set $P5011, _lex_param_2["after"]
    unless_null $P5011, fallback1190
    nqp_get_sc_object $P5012, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5011, $P5012
  fallback1190:
    set $P102, $P5011
    box $P5013, "after"
    set $P101, $P5013
    set $P5016, $P101
    goto if362_end1188
  if362_else1187:
    .const 'Sub' $P5014 = 'cuid_219_1357764670.549' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
  if362_end1188:
  if361_end1184:
    new $P5017, "ResizableStringArray"
    set $P103, $P5017
.annotate 'line', 1602
    nqp_decontainerize $P5021, _lex_param_0
    $P5022 = $P5021."stages"()
    set $P5018, $P5022
    iter $P5020, $P5022
  for_next1195:
    unless $P5020, for_done1197
    shift $P5024, $P5020
  for_redo1196:
    .const 'Sub' $P5023 = 'cuid_220_1357764670.549' 
    capture_lex $P5023
    $P5018 = $P5023($P5024)
    goto for_next1195
  for_done1197:
.annotate 'line', 1615
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."stages"($P103)
    goto lexotic_1182
  lexotic_1181:
    .get_results ($P5026)
  lexotic_1182:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1357764670.549") :anon :lex :outer("cuid_139_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1595
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1596
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1598
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1357764670.549") :anon :lex :outer("cuid_139_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1602
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if363_else1191 
.annotate 'line', 1603
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if364_else1193 
.annotate 'line', 1604
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if364_end1194
  if364_else1193:
.annotate 'line', 1607
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if364_end1194:
    set $P5011, $P5009
    goto if363_end1192
  if363_else1191:
.annotate 'line', 1611
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if363_end1192:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_140_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1618
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_221_1357764670.549' 
    capture_lex $P5021 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set $P5006, $P101[0]
    unless_null $P5006, fallback1198
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5007
  fallback1198:
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
    unless $I5002 goto if365_end1200 
.annotate 'line', 1624
    set $P5010, $P101[0]
    unless_null $P5010, fallback1201
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5010, $P5011
  fallback1201:
    set $S5006, $P5010
    substr $S5005, $S5006, 1
    box $P5012, $S5005
    set $P101[0], $P5012
    set $S5008, $P102
    set $P5013, $P101[-1]
    unless_null $P5013, fallback1202
    nqp_get_sc_object $P5014, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5013, $P5014
  fallback1202:
    set $S5009, $P5013
    concat $S5007, $S5008, $S5009
    box $P5015, $S5007
    set $P101[-1], $P5015
  if365_end1200:
    set $P5016, $P101
    iter $P5018, $P101
  for_next1205:
    unless $P5018, for_done1207
    shift $P5020, $P5018
  for_redo1206:
    .const 'Sub' $P5019 = 'cuid_221_1357764670.549' 
    capture_lex $P5019
    $P5016 = $P5019($P5020)
    goto for_next1205
  for_done1207:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1357764670.549") :anon :lex :outer("cuid_140_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1632
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless366_end1204 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless366_end1204:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_141_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1638
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("cache") :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default1208
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_3, $P5001
  default1208:
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
.sub "user-progname" :subid("cuid_142_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1704
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1209
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1209:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_143_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1707
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_144_1357764670.549") :anon :lex :outer("cuid_145_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1708
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1357764670.549") :anon :lex :outer("cuid_1_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1806
    .const 'Sub' $P5006 = 'cuid_146_1357764670.549' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_147_1357764670.549' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_148_1357764670.549' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_149_1357764670.549' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_150_1357764670.549' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_146_1357764670.549' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_147_1357764670.549' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_148_1357764670.549' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_149_1357764670.549' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_150_1357764670.549' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_146_1357764670.549") :anon :lex :outer("cuid_151_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1810
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_147_1357764670.549") :anon :lex :outer("cuid_151_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1815
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_148_1357764670.549") :anon :lex :outer("cuid_151_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1816
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_149_1357764670.549") :anon :lex :outer("cuid_151_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1818
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_150_1357764670.549") :anon :lex :outer("cuid_151_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1822
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if367_else1211 
.annotate 'line', 1825
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!options"
    set $S5002, _lex_param_1
    set $P5004, $P5007[$S5002]
    unless_null $P5004, fallback1215
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5008
  fallback1215:
    nqp_islist $I5002, $P5004
    unless $I5002 goto if368_else1213 
.annotate 'line', 1826
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!options"
    set $S5003, _lex_param_1
    set $P5009, $P5012[$S5003]
    unless_null $P5009, fallback1216
    nqp_get_sc_object $P5013, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5009, $P5013
  fallback1216:
    push $P5009, _lex_param_2
    set $P5023, $P5009
    goto if368_end1214
  if368_else1213:
.annotate 'line', 1828
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5016, $P5014, $P5015, "%!options"
    set $S5004, _lex_param_1
    new $P5017, 'ResizablePMCArray'
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5021, $P5019, $P5020, "%!options"
    set $S5005, _lex_param_1
    set $P5018, $P5021[$S5005]
    unless_null $P5018, fallback1217
    nqp_get_sc_object $P5022, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5018, $P5022
  fallback1217:
    push $P5017, $P5018
    push $P5017, _lex_param_2
    set $P5016[$S5004], $P5017
    set $P5023, $P5017
  if368_end1214:
    set $P5027, $P5023
    goto if367_end1212
  if367_else1211:
.annotate 'line', 1831
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    repr_get_attr_obj $P5026, $P5024, $P5025, "%!options"
    set $S5006, _lex_param_1
    set $P5026[$S5006], _lex_param_2
    set $P5027, _lex_param_2
  if367_end1212:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1357764670.549") :anon :lex :outer("cuid_1_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1837
    .const 'Sub' $P5011 = 'cuid_152_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_153_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_154_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_155_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_156_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_157_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_158_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_159_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_160_1357764670.549' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_161_1357764670.549' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_152_1357764670.549' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_153_1357764670.549' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_154_1357764670.549' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_155_1357764670.549' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_156_1357764670.549' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_157_1357764670.549' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_158_1357764670.549' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_159_1357764670.549' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_160_1357764670.549' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_161_1357764670.549' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_152_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1843
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
.annotate 'line', 1844
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1845
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_153_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1849
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_154_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1853
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_222_1357764670.549' 
    capture_lex $P5023 
    if haz_param_13, default1221
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1221:
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1218:
    unless $P5019, for_done1220
    shift $P5021, $P5019
  for_redo1219:
    .const 'Sub' $P5020 = 'cuid_222_1357764670.549' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1218
  for_done1220:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1357764670.549") :anon :lex :outer("cuid_154_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1859
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1860
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_155_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1863
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_156_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1867
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
.sub "add-spec" :subid("cuid_157_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1872
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_223_1357764670.549' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
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
    unless $I5002 goto if369_else1222 
.annotate 'line', 1876
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1878
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if369_end1223
  if369_else1222:
.annotate 'line', 1879
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1881
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if369_end1223:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1224:
    unless $P5013, for_done1226
    shift $P5015, $P5013
  for_redo1225:
    .const 'Sub' $P5014 = 'cuid_223_1357764670.549' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1224
  for_done1226:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1357764670.549") :anon :lex :outer("cuid_157_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1883
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_158_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1889
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1227
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless371_end1232 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless371_end1232:
    unless $I5003 goto if370_end1230 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if370_end1230:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if372_end1234 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if372_end1234:
    box $P5005, 0
    goto lexotic_1228
  lexotic_1227:
    .get_results ($P5005)
  lexotic_1228:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_159_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1895
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!options"
    set $S5001, _lex_param_1
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1235
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5006
  fallback1235:
    set $P101, $P5002
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5001, $S5002, "s"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_160_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1900
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!options"
    set $S5001, _lex_param_1
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1236
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5006
  fallback1236:
    set $P101, $P5002
    set $S5002, $P101
    iseq $I5001, $S5002, "s?"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_161_1357764670.549") :anon :lex :outer("cuid_162_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1905
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_224_1357764670.549' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_225_1357764670.549' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_227_1357764670.549' 
    capture_lex $P5021 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_224_1357764670.549' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_225_1357764670.549' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1246
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1909
    nqp_get_sc_object $P5012, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    nqp_get_package_through_who $P5011, $P5012, "HLL"
    nqp_get_package_through_who $P5010, $P5011, "CommandLine"
    get_who $P5009, $P5010
    set $P5008, $P5009["Result"]
    unless_null $P5008, fallback1248
    nqp_get_sc_object $P5013, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5008, $P5013
  fallback1248:
    $P5014 = $P5008."new"()
    set $P103, $P5014
.annotate 'line', 1910
    $P103."init"()
  while375_test1249:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5018, $I5001
    set $P5017, $P5018
    unless $I5001 goto while375_done1253 
  while375_redo1251:
    .const 'Sub' $P5015 = 'cuid_227_1357764670.549' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
    goto while375_test1249 
  while375_done1253:
    find_lex $P5019, "RETURN"
    $P5020 = $P5019($P103)
    goto lexotic_1247
  lexotic_1246:
    .get_results ($P5020)
  lexotic_1247:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_224_1357764670.549") :anon :lex :outer("cuid_161_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1913
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
    unless $I5001 goto if373_else1237 
.annotate 'line', 1914
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5008, $P5003
    goto if373_end1238
  if373_else1237:
.annotate 'line', 1916
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
    unless_null $P5004, fallback1239
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5007
  fallback1239:
    set $P5008, $P5004
  if373_end1238:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_225_1357764670.549") :anon :lex :outer("cuid_161_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1924
    .local pmc tmp_3 
    .local pmc tmp_4 
    find_lex $P5001, "$i"
    set tmp_3, $P5001
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while374_test1240:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto while374_done1244 
  while374_redo1242:
.annotate 'line', 1926
.annotate 'line', 1927
    find_lex $P5003, "$result"
    find_lex $P5005, "@args"
    find_lex $P5006, "$i"
    set $I5002, $P5006
    set $P5004, $P5005[$I5002]
    unless_null $P5004, fallback1245
    nqp_get_sc_object $P5007, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5004, $P5007
  fallback1245:
    $P5003."add-argument"($P5004)
    find_lex $P5008, "$i"
    set tmp_4, $P5008
    set $N5004, tmp_4
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5009, $N5003
    store_lex "$i", $P5009
    set $P5008, tmp_4
    goto while374_test1240 
  while374_done1244:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1357764670.549") :anon :lex :outer("cuid_161_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1932
    .const 'Sub' $P5029 = 'cuid_226_1357764670.549' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_230_1357764670.549' 
    capture_lex $P5029 
    .lex "$cur", $P101 
    .local pmc tmp_6 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    find_lex $P5003, "@args"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback1254
    nqp_get_sc_object $P5005, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5005
  fallback1254:
    set $P101, $P5002
.annotate 'line', 1934
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    $P5008 = $P5006."is-option"($P101)
    unless $P5008 goto if376_else1255 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5002, $S5001, "--"
    unless $I5002 goto if377_else1257 
    .const 'Sub' $P5009 = 'cuid_226_1357764670.549' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5013, $P5010
    goto if377_end1258
  if377_else1257:
    .const 'Sub' $P5011 = 'cuid_230_1357764670.549' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if377_end1258:
    goto if376_end1256
  if376_else1255:
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5018, $P5015, $P5017, "%!stopper"
    set $S5003, $P101
    set $P5014, $P5018[$S5003]
    unless_null $P5014, fallback1303
    nqp_get_sc_object $P5019, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5014, $P5019
  fallback1303:
    unless $P5014 goto if395_else1301 
.annotate 'line', 1993
.annotate 'line', 1994
    $P5020 = "&slurp-rest"()
    set $P5028, $P5020
    goto if395_end1302
  if395_else1301:
.annotate 'line', 1995
.annotate 'line', 1996
    find_lex $P5021, "$result"
    $P5021."add-argument"($P101)
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5025, $P5022, $P5024, "$!stop-after-first-arg"
    set $P5027, $P5025
    unless $P5025 goto if396_end1305 
.annotate 'line', 1997
    $P5026 = "&slurp-rest"()
    set $P5027, $P5026
  if396_end1305:
    set $P5028, $P5027
  if395_end1302:
  if376_end1256:
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
.sub "" :subid("cuid_226_1357764670.549") :anon :lex :outer("cuid_227_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1935
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P103, $P5003
    nqp_get_sc_object $P5004, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P104, $P5004
    find_lex $P5006, "@args"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback1259
    nqp_get_sc_object $P5008, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5008
  fallback1259:
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
    unless $I5003 goto if378_else1260 
.annotate 'line', 1942
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
    goto if378_end1261
  if378_else1260:
.annotate 'line', 1946
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."optional-value"($P101)
    set $P5021, $P5018
    unless $P5018 goto if379_end1263 
    box $P5019, ""
    set $P103, $P5019
    box $P5020, 1
    set $P104, $P5020
    set $P5021, $P104
  if379_end1263:
  if378_end1261:
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5025, $P5022, $P5024, "%!options"
    set $S5008, $P101
    exists $I5006, $P5025[$S5008]
    if $I5006 goto unless380_end1265 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5026, $S5009
    die $P5026
  unless380_end1265:
.annotate 'line', 1951
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    $P5029 = $P5027."wants-value"($P101)
    isfalse $I5007, $P5029
    box $P5031, $I5007
    set $P5030, $P5031
    unless $I5007 goto if382_end1269 
    set $P5030, $P104
  if382_end1269:
    unless $P5030 goto if381_end1267 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5032, $S5011
    die $P5032
  if381_end1267:
    isfalse $I5008, $P104
    box $P5037, $I5008
    set $P5036, $P5037
    unless $I5008 goto if384_end1273 
.annotate 'line', 1952
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."wants-value"($P101)
    set $P5036, $P5035
  if384_end1273:
    unless $P5036 goto if383_end1271 
.annotate 'line', 1953
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5038 = "&get-value"($S5014)
    set $P103, $P5038
  if383_end1271:
.annotate 'line', 1955
    find_lex $P5039, "$result"
    $P5039."add-option"($P101, $P103)
    find_lex $P5042, "self"
    nqp_decontainerize $P5041, $P5042
    nqp_get_sc_object $P5043, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5044, $P5041, $P5043, "%!stopper"
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5040, $P5044[$S5016]
    unless_null $P5040, fallback1276
    nqp_get_sc_object $P5045, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5040, $P5045
  fallback1276:
    set $P5053, $P5040
    unless $P5040 goto if385_end1275 
    find_lex $P5048, "$?PACKAGE"
    get_who $P5047, $P5048
    set $P5046, $P5047["slurp-rest"]
    unless_null $P5046, fallback1277
    nqp_get_sc_object $P5051, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5050, $P5051
    set $P5049, $P5050["slurp-rest"]
    unless_null $P5049, vivi_3861278
    nqp_get_sc_object $P5052, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5049, $P5052
  vivi_3861278:
    set $P5046, $P5049
  fallback1277:
    set $P5053, $P5046
  if385_end1275:
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_230_1357764670.549") :anon :lex :outer("cuid_227_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1957
    .const 'Sub' $P5032 = 'cuid_229_1357764670.549' 
    capture_lex $P5032 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
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
    unless $I5002 goto if387_else1279 
.annotate 'line', 1960
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5010, $P5007, $P5009, "%!options"
    set $S5004, $P101
    set $P5006, $P5010[$S5004]
    unless_null $P5006, fallback1283
    nqp_get_sc_object $P5011, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5006, $P5011
  fallback1283:
    if $P5006 goto unless388_end1282 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5012, $S5005
    die $P5012
  unless388_end1282:
.annotate 'line', 1963
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if389_else1284 
.annotate 'line', 1964
    find_lex $P5016, "$result"
.annotate 'line', 1965
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5017 = "&get-value"($S5007)
    $P5018 = $P5016."add-option"($P101, $P5017)
    goto if389_end1285
  if389_else1284:
.annotate 'line', 1966
.annotate 'line', 1967
    find_lex $P5019, "$result"
    $P5020 = $P5019."add-option"($P101, 1)
  if389_end1285:
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5025, $P5022, $P5024, "%!stopper"
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5021, $P5025[$S5009]
    unless_null $P5021, fallback1288
    nqp_get_sc_object $P5026, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5021, $P5026
  fallback1288:
    set $P5028, $P5021
    unless $P5021 goto if390_end1287 
.annotate 'line', 1969
    $P5027 = "&slurp-rest"()
    set $P5028, $P5027
  if390_end1287:
    set $P5031, $P5028
    goto if387_end1280
  if387_else1279:
    .const 'Sub' $P5029 = 'cuid_229_1357764670.549' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
  if387_end1280:
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_229_1357764670.549") :anon :lex :outer("cuid_230_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1970
    .const 'Sub' $P5009 = 'cuid_228_1357764670.549' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while391_handlers1292
    push_eh $P5007
  while391_test1289:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while391_done1293 
  while391_redo1291:
    .const 'Sub' $P5004 = 'cuid_228_1357764670.549' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while391_test1289 
  while391_handlers1292:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while391_test1289
    eq $P5007, .CONTROL_LOOP_REDO, while391_redo1291
  while391_done1293:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_228_1357764670.549") :anon :lex :outer("cuid_229_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1972
    .lex "$o", $P101 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
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
    nqp_get_sc_object $P5008, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set $S5003, $P101
    set $P5005, $P5009[$S5003]
    unless_null $P5005, fallback1296
    nqp_get_sc_object $P5010, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5005, $P5010
  fallback1296:
    unless $P5005 goto if392_else1294 
.annotate 'line', 1974
.annotate 'line', 1975
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."wants-value"($P101)
    unless $P5013 goto if393_else1297 
    find_lex $P5014, "$i"
    set $N5002, $P5014
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5015, "$len"
    set $N5004, $P5015
    iseq $I5002, $N5001, $N5004
    unless $I5002 goto if394_end1300 
.annotate 'line', 1976
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5016, "$opt"
    set $S5009, $P5016
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5017, $S5004
    die $P5017
  if394_end1300:
.annotate 'line', 1979
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
    goto if393_end1298
  if393_else1297:
.annotate 'line', 1982
.annotate 'line', 1983
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
    set $P5023, $P5022
  if393_end1298:
    goto if392_end1295
  if392_else1294:
.annotate 'line', 1986
    find_lex $P5025, "$opt"
    set $S5016, $P5025
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5026, $S5012
    die $P5026
  if392_end1295:
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
.sub "" :subid("cuid_176_1357764670.549") :anon :lex :outer("cuid_1_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2027
    .const 'Sub' $P5014 = 'cuid_163_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_164_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_165_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_166_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_167_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_168_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_169_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_170_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_171_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_172_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_173_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_174_1357764670.549' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_175_1357764670.549' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_163_1357764670.549' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_164_1357764670.549' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_165_1357764670.549' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_166_1357764670.549' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_167_1357764670.549' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_168_1357764670.549' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_169_1357764670.549' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_170_1357764670.549' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_171_1357764670.549' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_172_1357764670.549' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_173_1357764670.549' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_174_1357764670.549' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_175_1357764670.549' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_163_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2058
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_14, default1311
    box $P5042, "<unknown>"
    set _lex_param_2, $P5042
  default1311:
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    find_dynamic_lex $P5019, "%*COMPILING"
    unless_null $P5019, fallback1306
    nqp_get_sc_object $P5022, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5021, $P5022
    set $P5020, $P5021["%COMPILING"]
    unless_null $P5020, fallback1307
    nqp_get_sc_object $P5024, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    get_who $P5023, $P5024
    new $P5025, 'Hash'
    set $P5023["%COMPILING"], $P5025
    set $P5020, $P5025
  fallback1307:
    unless_null $P5020, vivi_3971308
    die "Contextual %*COMPILING not found"
    box $P5026, "Contextual %*COMPILING not found"
    set $P5020, $P5026
  vivi_3971308:
    set $P5019, $P5020
  fallback1306:
    set $P5018, $P5019["%?OPTIONS"]
    unless_null $P5018, fallback1309
    nqp_get_sc_object $P5027, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5018, $P5027
  fallback1309:
    set $P5017, $P5018["target"]
    unless_null $P5017, fallback1310
    nqp_get_sc_object $P5028, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5017, $P5028
  fallback1310:
    set $S5002, $P5017
    iseq $I5001, $S5002, "pir"
    box $P5029, $I5001
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    box $P5032, 0
    repr_bind_attr_obj $P5030, $P5031, "$!num_code_refs", $P5032
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    new $P5035, 'ResizablePMCArray'
    repr_bind_attr_obj $P5033, $P5034, "$!code_ref_blocks", $P5035
.annotate 'line', 2068
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!sc"
    $P5038."set_description"(_lex_param_2)
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc"
    nqp_push_compiling_sc $P5041
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_164_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2075
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!addr_to_slot"
    get_id $I5001, _lex_param_1
    set $S5001, $I5001
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1312
    nqp_get_sc_object $P5006, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P5002, $P5006
  fallback1312:
    set $P101, $P5002
    defined $I5002, $P101
    if $I5002 goto unless398_end1314 
.annotate 'line', 2077
    box $P5007, "slot_for_object called on object not in context"
    die $P5007
  unless398_end1314:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_165_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2084
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
.annotate 'line', 2086
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_166_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2093
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 2096
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_167_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2102
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_168_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2107
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_169_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2113
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_15, default1321
    nqp_get_sc_object $P5015, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5015
  default1321:
    if haz_param_16, default1322
    nqp_get_sc_object $P5016, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_2, $P5016
  default1322:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if399_else1315 
.annotate 'line', 2114
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if400_end1318 
.annotate 'line', 2115
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if400_end1318:
    set $P5014, $P5008
    goto if399_end1316
  if399_else1315:
.annotate 'line', 2117
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if401_end1320 
.annotate 'line', 2118
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if401_end1320:
    set $P5014, $P5013
  if399_end1316:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_170_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2124
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_17, default1329
    nqp_get_sc_object $P5015, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_1, $P5015
  default1329:
    if haz_param_18, default1330
    nqp_get_sc_object $P5016, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841", 22
    set _lex_param_2, $P5016
  default1330:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if402_else1323 
.annotate 'line', 2125
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if403_end1326 
.annotate 'line', 2126
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if403_end1326:
    set $P5014, $P5008
    goto if402_end1324
  if402_else1323:
.annotate 'line', 2128
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if404_end1328 
.annotate 'line', 2129
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if404_end1328:
    set $P5014, $P5013
  if402_end1324:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_171_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2134
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_172_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2139
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_173_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2143
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_174_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2148
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_175_1357764670.549") :anon :lex :outer("cuid_176_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2153
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1357764670.549") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_231_1357764670.549' 
    capture_lex $P5001 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1357764670.549" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575"
    set cur_sc, $P5001
    cur_sc."set_description"("src\\stage2\\gen\\NQPHLL.pm")
    new $P5002, 'ResizablePMCArray'
    set conflicts, $P5002
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "QAST"
    push $P5003, "QRegex"
    push $P5003, "NQPCursorRole"
    push $P5003, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1357764666.785"
    push $P5003, "src\\stage2\\QRegex.nqp"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "HLL"
    push $P5003, "DEFAULT"
    push $P5003, "CREATE"
    push $P5003, "54CFE4A88878868BB5795DED2EBE687E08B6A79E-1357764663.841"
    push $P5003, "src\\stage2\\NQPCORE.setting"
    push $P5003, "bless"
    push $P5003, "BUILDALL"
    push $P5003, "new"
    push $P5003, "Str"
    push $P5003, "Numeric"
    push $P5003, "Int"
    push $P5003, "at_pos"
    push $P5003, "at_key"
    push $P5003, "defined"
    push $P5003, "ACCEPTS"
    push $P5003, "isa"
    push $P5003, "__dump"
    push $P5003, "MATCH"
    push $P5003, "Bool"
    push $P5003, "parse"
    push $P5003, "!INTERPOLATE"
    push $P5003, "!INTERPOLATE_REGEX"
    push $P5003, "orig"
    push $P5003, "target"
    push $P5003, "from"
    push $P5003, "pos"
    push $P5003, "CAPHASH"
    push $P5003, "!cursor_init"
    push $P5003, "!cursor_start"
    push $P5003, "!cursor_start_subcapture"
    push $P5003, "!cursor_capture"
    push $P5003, "!cursor_push_cstack"
    push $P5003, "!cursor_pass"
    push $P5003, "!cursor_fail"
    push $P5003, "!cursor_pos"
    push $P5003, "!cursor_next"
    push $P5003, "!cursor_more"
    push $P5003, "!reduce"
    push $P5003, "!reduce_with_match"
    push $P5003, "!shared"
    push $P5003, "!protoregex"
    push $P5003, "!protoregex_nfa"
    push $P5003, "!protoregex_table"
    push $P5003, "!alt"
    push $P5003, "!alt_nfa"
    push $P5003, "!precompute_nfas"
    push $P5003, "!dba"
    push $P5003, "!highwater"
    push $P5003, "!highexpect"
    push $P5003, "!fresh_highexpect"
    push $P5003, "!set_highexpect"
    push $P5003, "!clear_highwater"
    push $P5003, "!BACKREF"
    push $P5003, "!LITERAL"
    push $P5003, "at"
    push $P5003, "before"
    push $P5003, "after"
    push $P5003, "ws"
    push $P5003, "ww"
    push $P5003, "wb"
    push $P5003, "ident"
    push $P5003, "alpha"
    push $P5003, "alnum"
    push $P5003, "upper"
    push $P5003, "lower"
    push $P5003, "digit"
    push $P5003, "xdigit"
    push $P5003, "space"
    push $P5003, "blank"
    push $P5003, "cntrl"
    push $P5003, "punct"
    push $P5003, "FAILGOAL"
    push $P5003, "throw_unrecog_backslash_seq"
    push $P5003, "termish"
    push $P5003, "term"
    push $P5003, "infix"
    push $P5003, "prefix"
    push $P5003, "postfix"
    push $P5003, "circumfix"
    push $P5003, "postcircumfix"
    push $P5003, "term:sym<circumfix>"
    push $P5003, "infixish"
    push $P5003, "prefixish"
    push $P5003, "postfixish"
    push $P5003, "nullterm"
    push $P5003, "nullterm_alt"
    push $P5003, "nulltermish"
    push $P5003, "quote_delimited"
    push $P5003, "quote_atom"
    push $P5003, "decint"
    push $P5003, "decints"
    push $P5003, "hexint"
    push $P5003, "hexints"
    push $P5003, "octint"
    push $P5003, "octints"
    push $P5003, "binint"
    push $P5003, "binints"
    push $P5003, "integer"
    push $P5003, "dec_number"
    push $P5003, "escale"
    push $P5003, "quote_escape"
    push $P5003, "quote_escape:sym<backslash>"
    push $P5003, "quote_escape:sym<stopper>"
    push $P5003, "quote_escape:sym<bs>"
    push $P5003, "quote_escape:sym<nl>"
    push $P5003, "quote_escape:sym<cr>"
    push $P5003, "quote_escape:sym<tab>"
    push $P5003, "quote_escape:sym<ff>"
    push $P5003, "quote_escape:sym<esc>"
    push $P5003, "quote_escape:sym<hex>"
    push $P5003, "quote_escape:sym<oct>"
    push $P5003, "quote_escape:sym<chr>"
    push $P5003, "quote_escape:sym<0>"
    push $P5003, "quote_escape:sym<misc>"
    push $P5003, "charname"
    push $P5003, "charnames"
    push $P5003, "charspec"
    push $P5003, "O"
    push $P5003, "panic"
    push $P5003, "peek_delimiters"
    push $P5003, "quote_EXPR"
    push $P5003, "quotemod_check"
    push $P5003, "starter"
    push $P5003, "stopper"
    push $P5003, "split_words"
    push $P5003, "EXPR"
    push $P5003, "EXPR_reduce"
    push $P5003, "EXPR_nonassoc"
    push $P5003, "ternary"
    push $P5003, "MARKER"
    push $P5003, "MARKED"
    push $P5003, "LANG"
    push $P5003, "$!shared"
    push $P5003, "$!from"
    push $P5003, "$!pos"
    push $P5003, "$!match"
    push $P5003, "$!name"
    push $P5003, "$!bstack"
    push $P5003, "$!cstack"
    push $P5003, "$!regexsub"
    push $P5003, "$!restart"
    push $P5003, "ints_to_string"
    push $P5003, "CTXSAVE"
    push $P5003, "SET_BLOCK_OUTER_CTX"
    push $P5003, "BUILD"
    push $P5003, "language"
    push $P5003, "compiler"
    push $P5003, "config"
    push $P5003, "load_module"
    push $P5003, "autoprint"
    push $P5003, "interactive"
    push $P5003, "eval"
    push $P5003, "ctxsave"
    push $P5003, "stages"
    push $P5003, "parsegrammar"
    push $P5003, "parseactions"
    push $P5003, "interactive_banner"
    push $P5003, "interactive_prompt"
    push $P5003, "compiler_progname"
    push $P5003, "commandline_options"
    push $P5003, "command_line"
    push $P5003, "command_eval"
    push $P5003, "process_args"
    push $P5003, "evalfiles"
    push $P5003, "compile"
    push $P5003, "start"
    push $P5003, "past"
    push $P5003, "post"
    push $P5003, "pirbegin"
    push $P5003, "pir"
    push $P5003, "evalpmc"
    push $P5003, "dumper"
    push $P5003, "usage"
    push $P5003, "version"
    push $P5003, "show-config"
    push $P5003, "verbose-config"
    push $P5003, "vmstat"
    push $P5003, "nqpevent"
    push $P5003, "removestage"
    push $P5003, "addstage"
    push $P5003, "parse_name"
    push $P5003, "lineof"
    push $P5003, "user-progname"
    push $P5003, "cli-options"
    push $P5003, "cli-arguments"
    push $P5003, "@!stages"
    push $P5003, "$!parsegrammar"
    push $P5003, "$!parseactions"
    push $P5003, "@!cmdoptions"
    push $P5003, "$!usage"
    push $P5003, "$!compiler_progname"
    push $P5003, "$!language"
    push $P5003, "%!config"
    push $P5003, "$!user_progname"
    push $P5003, "@!cli-arguments"
    push $P5003, "%!cli-options"
    push $P5003, "init"
    push $P5003, "arguments"
    push $P5003, "options"
    push $P5003, "add-argument"
    push $P5003, "add-option"
    push $P5003, "@!arguments"
    push $P5003, "%!options"
    push $P5003, "stop-after-first-arg"
    push $P5003, "add-stopper"
    push $P5003, "split-option-aliases"
    push $P5003, "add-spec"
    push $P5003, "is-option"
    push $P5003, "wants-value"
    push $P5003, "optional-value"
    push $P5003, "@!specs"
    push $P5003, "%!stopper"
    push $P5003, "$!stop-after-first-arg"
    push $P5003, "slot_for_object"
    push $P5003, "add_object"
    push $P5003, "add_root_code_ref"
    push $P5003, "update_root_code_ref"
    push $P5003, "is_precompilation_mode"
    push $P5003, "add_load_dependency_task"
    push $P5003, "add_fixup_task"
    push $P5003, "sc"
    push $P5003, "handle"
    push $P5003, "code_ref_blocks"
    push $P5003, "load_dependency_tasks"
    push $P5003, "fixup_tasks"
    push $P5003, "$!sc"
    push $P5003, "$!handle"
    push $P5003, "$!precomp_mode"
    push $P5003, "$!num_code_refs"
    push $P5003, "$!code_ref_blocks"
    push $P5003, "@!load_dependency_tasks"
    push $P5003, "@!fixup_tasks"
    push $P5003, "%!addr_to_slot"
    push $P5003, ""
    push $P5003, "OPER"
    push $P5003, "alt_nfa__1_1357764670.675"
    push $P5003, "alt_nfa__2_1357764670.704"
    push $P5003, "0123456789abcdefABCDEF"
    push $P5003, "01234567"
    push $P5003, "01"
    push $P5003, "VALUE"
    push $P5003, "alt_nfa__3_1357764670.767"
    push $P5003, "alt_nfa__4_1357764670.768"
    push $P5003, "coeff"
    push $P5003, "alt_nfa__5_1357764670.786"
    push $P5003, "Ee"
    push $P5003, "alt_nfa__6_1357764670.857"
    push $P5003, "alt_nfa__7_1357764670.868"
    push $P5003, "sym"
    push $P5003, "textqq"
    push $P5003, "0"
    push $P5003, "textq"
    push $P5003, "alt_nfa__8_1357764670.902"
    push $P5003, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5003, "alt_nfa__9_1357764670.939"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "EXPORT"
    push $P5003, "E60633096CF77B7390FCE5E36C3EEE91D71E477F-1357764660.592"
    push $P5003, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5003, "HLL::Grammar"
    push $P5003, "shared"
    push $P5003, "match"
    push $P5003, "name"
    push $P5003, "bstack"
    push $P5003, "cstack"
    push $P5003, "regexsub"
    push $P5003, "restart"
    push $P5003, "HLL::Actions"
    push $P5003, "HLL::Compiler"
    push $P5003, "HLL::CommandLine::Result"
    push $P5003, "HLL::CommandLine::Parser"
    push $P5003, "HLL::World"
    push $P5003, "CompileTimeValue"
    push $P5003, "2A5BD8D2F017911EBF2A5D1B91B7A8E3733D2938-1357764665.139"
    push $P5003, "src\\stage2\\QASTNode.nqp"
    push $P5003, "SpecialArg"
    push $P5003, "Node"
    push $P5003, "Regex"
    push $P5003, "IVal"
    push $P5003, "NVal"
    push $P5003, "SVal"
    push $P5003, "BVal"
    push $P5003, "WVal"
    push $P5003, "Want"
    push $P5003, "Var"
    push $P5003, "VarWithFallback"
    push $P5003, "Op"
    push $P5003, "VM"
    push $P5003, "Stmts"
    push $P5003, "Stmt"
    push $P5003, "Block"
    push $P5003, "Unquote"
    push $P5003, "CompUnit"
    push $P5003, "InlinePlaceholder"
    push $P5003, "NFA"
    push $P5003, "Grammar"
    push $P5003, "Actions"
    push $P5003, "Compiler"
    push $P5003, "CommandLine"
    push $P5003, "World"
    push $P5003, "Result"
    push $P5003, "Parser"
    .const 'Sub' $P5004 = 'cuid_231_1357764670.549' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAFAAAAaAAAAA0AAADQAAAAgh8AAOcAAADyLQAAwsoAAAAAAADCygAAAAAAAMLKAADCygAAAAAAAAUAAAAGAAAADgAAAA8AAAAKAQAAAAAAAA0BAAAOAQAAHQEAAB4BAAABAAAAAAAAAAEAAAAKAQAAAQAAALIBAAABAAAATAIAAAEAAABICwAAAQAAAIYOAAABAAAAjBMAAAEAAAByFQAAAQAAAMwXAAABAAAA3hoAAAEAAACQHAAAAQAAADgdAAABAAAACh4AAAAAAACyAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAswAAAAMAAAACAAAAAAC0AAAABAAAAAIAAQAAACAAAAAHAAAAAgABAAAAVAAAAAgAAAACAAEAAABhAAAACQAAAAIAAQAAAGcAAAAKAAAAAgABAAAAawAAAAsAAAACAAAAAAC1AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAALYAAAAAAAAAAQAAAAoAAQAAAAwAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAALcAAAAAAAAAAgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAAAAAAC4AAAAAAAAAAMAAAAKAAAAAAAKAIAAAAANAAAAAgACAAAAFwAAABAAAAACAAIAAAAYAAAAEQAAAAIAAgAAABkAAAASAAAAAgACAAAAGgAAABMAAAACAAIAAAAbAAAAFAAAAAIAAgAAAB4AAAAVAAAAAgACAAAAIAAAABYAAAACAAIAAAAiAAAAFwAAAAIAAgAAACQAAAAYAAAAAgACAAAAJgAAABkAAAACAAIAAAAnAAAAGgAAAAIAAgAAACkAAAAbAAAAAgACAAAAKgAAABwAAAACAAEAAABiAAAAHQAAAAIAAQAAAGMAAAAeAAAAAgABAAAAZAAAAB8AAAACAAEAAABlAAAAIAAAAAIAAQAAAGYAAAAhAAAAAgABAAAAdwAAACIAAAACAAEAAAB4AAAAIwAAAAIAAQAAAHkAAAAkAAAAAgABAAAAegAAACUAAAACAAEAAAB7AAAAJgAAAAIAAQAAAHwAAAAnAAAAAgABAAAAfQAAACgAAAACAAEAAAB+AAAAKQAAAAIAAQAAAH8AAAAqAAAAAgABAAAAgAAAACsAAAACAAEAAACBAAAALAAAAAIAAQAAAIIAAAAtAAAAAgABAAAAgwAAAC4AAAACAAEAAACEAAAALwAAAAIAAQAAAIUAAAAwAAAAAgABAAAAhgAAADEAAAACAAEAAACHAAAAMgAAAAIAAQAAAIgAAAAzAAAAAgABAAAAiQAAADQAAAACAAEAAACKAAAANQAAAAIAAQAAAIsAAAA2AAAAAgABAAAAjAAAADcAAAACAAEAAACNAAAAOAAAAAIAAQAAAI4AAAA5AAAAAgABAAAAjwAAADoAAAACAAEAAACQAAAAOwAAAAIAAQAAAJEAAAA8AAAAAgABAAAAkgAAAD0AAAACAAEAAACTAAAAPgAAAAIAAQAAAJQAAAA/AAAAAgABAAAAlQAAAEAAAAACAAEAAACWAAAAQQAAAAIAAQAAAJcAAABCAAAAAgABAAAAmAAAAEMAAAACAAEAAACZAAAARAAAAAIAAQAAAJoAAABFAAAAAgABAAAAmwAAAEYAAAACAAEAAACcAAAARwAAAAIAAQAAAJ0AAABIAAAAAgABAAAAngAAAEkAAAACAAEAAACfAAAASgAAAAIAAQAAAKAAAABLAAAAAgABAAAAoQAAAEwAAAACAAEAAACiAAAATQAAAAIAAQAAAKMAAABOAAAAAgABAAAApAAAAE8AAAACAAEAAAClAAAAUAAAAAIAAQAAAKYAAABRAAAAAgABAAAApwAAAFIAAAACAAAAAAA2AAAAUwAAAAIAAAAAAAQAAABUAAAAAgAAAAAABQAAAFUAAAACAAAAAAAGAAAAVgAAAAIAAAAAAAcAAABXAAAAAgAAAAAACAAAAFgAAAACAAAAAAAJAAAAWQAAAAIAAAAAAAoAAABaAAAAAgAAAAAACwAAAFsAAAACAAAAAAAMAAAAXAAAAAIAAAAAAA0AAABdAAAAAgAAAAAADgAAAF4AAAACAAAAAAAPAAAAXwAAAAIAAAAAABAAAABgAAAAAgAAAAAAEQAAAGEAAAACAAAAAAASAAAAYgAAAAIAAAAAABMAAABjAAAAAgAAAAAAFAAAAGQAAAACAAAAAAAVAAAAZQAAAAIAAAAAABYAAABmAAAAAgAAAAAAFwAAAGcAAAACAAAAAAAYAAAAaAAAAAIAAAAAABkAAABpAAAAAgAAAAAAGgAAAGoAAAACAAAAAAAbAAAAawAAAAIAAAAAABwAAABsAAAAAgAAAAAAHQAAAG0AAAACAAAAAAAeAAAAbgAAAAIAAAAAAB8AAABvAAAAAgAAAAAAIAAAAHAAAAACAAAAAAAhAAAAcQAAAAIAAAAAACIAAAByAAAAAgAAAAAAIwAAAHMAAAACAAAAAAAkAAAAdAAAAAIAAAAAACUAAAB1AAAAAgAAAAAAJgAAAHYAAAACAAAAAAAnAAAAdwAAAAIAAAAAACgAAAB4AAAAAgAAAAAAKQAAAHkAAAACAAAAAAAqAAAAegAAAAIAAAAAACsAAAB7AAAAAgAAAAAALAAAAHwAAAACAAAAAAAtAAAAfQAAAAIAAAAAADAAAAB+AAAAAgAAAAAAMgAAAH8AAAACAAAAAAAzAAAAgAAAAAIAAAAAADQAAACBAAAAAgAAAAAANQAAAIIAAAACAAAAAAA3AAAAgwAAAAIAAAAAADgAAACEAAAAAgAAAAAAOQAAAIUAAAACAAAAAAA6AAAAhgAAAAIAAAAAADsAAACHAAAAAgAAAAAAPAAAAIgAAAACAAAAAAA9AAAAiQAAAAIAAAAAAD4AAACKAAAAAgAAAAAAPwAAAIsAAAACAAAAAABAAAAAjAAAAAIAAAAAAEEAAACNAAAAAgAAAAAAQgAAAI4AAAACAAAAAABDAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAAMAAAACAAEAAABhAAAAAgACAAAAFgAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAQAAAGMAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAWAAAAAQABAAIAAgAAABYAAAACAAIAAAAWAAAAAgACAAAAFgAAAAIAAgAAABYAAAACAAIAAAAWAAAAAgACAAAAFgAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAWAAAAAwACAAEAAABhAAAACgAJAAAAjwAAAAQAAAAAAAAAAACQAAAABAABAAAAAAAAAJEAAAAEAAIAAAAAAAAAkgAAAAQAAwAAAAAAAACTAAAABAAEAAAAAAAAAJQAAAAEAAUAAAAAAAAAlQAAAAQABgAAAAAAAACWAAAABAAHAAAAAAAAAJcAAAAEAAgAAAAAAAAAAgAAAAAAAwAAAAMAAAAAALkAAAAAAAAARAAAAAoAAAAAAAoALgAAAA0AAAACAAIAAAAXAAAAEAAAAAIAAgAAABgAAAARAAAAAgACAAAAGQAAABIAAAACAAIAAAAaAAAAEwAAAAIAAgAAABsAAAAUAAAAAgACAAAAHgAAABUAAAACAAIAAAAgAAAAFgAAAAIAAgAAACIAAAAXAAAAAgACAAAAJAAAABgAAAACAAIAAAAmAAAAGQAAAAIAAgAAACcAAAAaAAAAAgACAAAAKQAAABsAAAACAAIAAAAqAAAAmAAAAAIAAAAAAEUAAACZAAAAAgAAAAAARgAAAJoAAAACAAAAAABHAAAAiAAAAAIAAAAAAEgAAABbAAAAAgAAAAAASQAAAFQAAAACAAAAAABKAAAAXwAAAAIAAAAAAEsAAABgAAAAAgAAAAAATAAAAGwAAAACAAAAAABNAAAAbQAAAAIAAAAAAE4AAABkAAAAAgAAAAAATwAAAGYAAAACAAAAAABQAAAAaAAAAAIAAAAAAFEAAABqAAAAAgAAAAAAUgAAAIMAAAACAAAAAABTAAAAYgAAAAIAAAAAAFQAAABjAAAAAgAAAAAAVQAAAHAAAAACAAAAAABWAAAAcQAAAAIAAAAAAFcAAAByAAAAAgAAAAAAWAAAAHMAAAACAAAAAABZAAAAdAAAAAIAAAAAAFoAAAB1AAAAAgAAAAAAWwAAAHYAAAACAAAAAABcAAAAdwAAAAIAAAAAAF0AAAB4AAAAAgAAAAAAXgAAAHkAAAACAAAAAABfAAAAegAAAAIAAAAAAGAAAAB7AAAAAgAAAAAAYQAAAHwAAAACAAAAAABiAAAAfQAAAAIAAAAAAGMAAAB+AAAAAgAAAAAAZAAAAH8AAAACAAAAAABlAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAEQAAAACAAIAAAAWAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAWAAAAAwACAAAAAABEAAAAAwAAAAAAugAAAAAAAABmAAAACgAAAAAACgA4AAAADQAAAAIAAgAAABcAAAAQAAAAAgACAAAAGAAAABEAAAACAAIAAAAZAAAAEgAAAAIAAAAAAGcAAAATAAAAAgACAAAAGwAAABQAAAACAAIAAAAeAAAAFQAAAAIAAgAAACAAAAAWAAAAAgACAAAAIgAAABcAAAACAAIAAAAkAAAAGAAAAAIAAgAAACYAAAAZAAAAAgACAAAAJwAAABoAAAACAAIAAAApAAAAGwAAAAIAAgAAACoAAACbAAAAAgAAAAAAaAAAAJwAAAACAAAAAABpAAAAnQAAAAIAAAAAAGoAAACeAAAAAgAAAAAAawAAAJ8AAAACAAAAAABsAAAAoAAAAAIAAAAAAG0AAAChAAAAAgAAAAAAbgAAAKIAAAACAAAAAABvAAAAowAAAAIAAAAAAHAAAACBAAAAAgAAAAAAcQAAAKQAAAACAAAAAAByAAAApQAAAAIAAAAAAHMAAACmAAAAAgAAAAAAdAAAAKcAAAACAAAAAAB1AAAAqAAAAAIAAAAAAHYAAACpAAAAAgAAAAAAdwAAAKoAAAACAAAAAAB4AAAAqwAAAAIAAAAAAHkAAACsAAAAAgAAAAAAegAAAK0AAAACAAAAAAB7AAAArgAAAAIAAAAAAHwAAACvAAAAAgAAAAAAfQAAALAAAAACAAAAAAB+AAAAHgAAAAIAAAAAAH8AAACxAAAAAgAAAAAAgAAAALIAAAACAAAAAACBAAAAswAAAAIAAAAAAIIAAAC0AAAAAgAAAAAAgwAAALUAAAACAAAAAACEAAAAtgAAAAIAAAAAAIUAAAC3AAAAAgAAAAAAhgAAALgAAAACAAAAAACHAAAAuQAAAAIAAAAAAIgAAAC6AAAAAgAAAAAAiQAAALsAAAACAAAAAACKAAAAvAAAAAIAAAAAAIsAAAC9AAAAAgAAAAAAjAAAAL4AAAACAAAAAACNAAAAvwAAAAIAAAAAAI4AAADAAAAAAgAAAAAAjwAAAMEAAAACAAAAAACQAAAAwgAAAAIAAAAAAJEAAADDAAAAAgAAAAAAkgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABmAAAAAgACAAAAFgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAALAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQACAAIAAAAWAAAAAgACAAAAFgAAAAEAAgACAAAAFgAAAAIAAgAAABYAAAACAAIAAAAWAAAAAQACAAIAAAAWAAAAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAWAAAAAwACAAAAAABmAAAACgALAAAAxAAAAAQAAAAAAAAAAADFAAAABAABAAAAAAAAAMYAAAAEAAIAAAAAAAAAxwAAAAQAAwAAAAAAAADIAAAABAAEAAAAAAAAAMkAAAAEAAUAAAAAAAAAygAAAAQABgAAAAAAAADLAAAABAAHAAAAAAAAAMwAAAAEAAgAAAAAAAAAzQAAAAQACQAAAAAAAADOAAAABAAKAAAAAAAAAAAAAAC7AAAAAAAAAJMAAAAKAAAAAAAKABIAAAANAAAAAgACAAAAFwAAABAAAAACAAIAAAAYAAAAEQAAAAIAAgAAABkAAAASAAAAAgACAAAAGgAAABMAAAACAAIAAAAbAAAAFAAAAAIAAgAAAB4AAAAVAAAAAgACAAAAIAAAABYAAAACAAIAAAAiAAAAFwAAAAIAAgAAACQAAAAYAAAAAgACAAAAJgAAABkAAAACAAIAAAAnAAAAGgAAAAIAAgAAACkAAAAbAAAAAgACAAAAKgAAAM8AAAACAAAAAACUAAAA0AAAAAIAAAAAAJUAAADRAAAAAgAAAAAAlgAAANIAAAACAAAAAACXAAAA0wAAAAIAAAAAAJgAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAkwAAAAIAAgAAABYAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAWAAAAAwACAAAAAACTAAAACgACAAAA1AAAAAQAAAAAAAAAAADVAAAABAABAAAAAAAAAAAAAAC8AAAAAAAAAJkAAAAKAAAAAAAKABYAAAANAAAAAgACAAAAFwAAABAAAAACAAIAAAAYAAAAEQAAAAIAAgAAABkAAAASAAAAAgAAAAAAmgAAABMAAAACAAIAAAAbAAAAFAAAAAIAAgAAAB4AAAAVAAAAAgACAAAAIAAAABYAAAACAAIAAAAiAAAAFwAAAAIAAgAAACQAAAAYAAAAAgACAAAAJgAAABkAAAACAAIAAAAnAAAAGgAAAAIAAgAAACkAAAAbAAAAAgACAAAAKgAAANYAAAACAAAAAACbAAAAmwAAAAIAAAAAAJwAAADXAAAAAgAAAAAAnQAAANgAAAACAAAAAACeAAAA2QAAAAIAAAAAAJ8AAADaAAAAAgAAAAAAoAAAANsAAAACAAAAAAChAAAA3AAAAAIAAAAAAKIAAAAeAAAAAgAAAAAAowAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACZAAAAAgACAAAAFgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQABAAIAAgAAABYAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAFgAAAAMAAgAAAAAAmQAAAAoABAAAAN0AAAAEAAAAAAAAAAAA1QAAAAQAAQAAAAAAAADeAAAABAACAAAAAAAAAN8AAAAEAAMAAAAAAAAAAAAAAL0AAAAAAAAApAAAAAoAAAAAAAoAGgAAAA0AAAACAAIAAAAXAAAAEAAAAAIAAgAAABgAAAARAAAAAgACAAAAGQAAABIAAAACAAIAAAAaAAAAEwAAAAIAAgAAABsAAAAUAAAAAgACAAAAHgAAABUAAAACAAIAAAAgAAAAFgAAAAIAAgAAACIAAAAXAAAAAgACAAAAJAAAABgAAAACAAIAAAAmAAAAGQAAAAIAAgAAACcAAAAaAAAAAgACAAAAKQAAABsAAAACAAIAAAAqAAAAmwAAAAIAAAAAAKUAAADgAAAAAgAAAAAApgAAAOEAAAACAAAAAACnAAAA4gAAAAIAAAAAAKgAAADjAAAAAgAAAAAAqQAAAOQAAAACAAAAAACqAAAA5QAAAAIAAAAAAKsAAADmAAAAAgAAAAAArAAAAOcAAAACAAAAAACtAAAA6AAAAAIAAAAAAK4AAADpAAAAAgAAAAAArwAAAOoAAAACAAAAAACwAAAA6wAAAAIAAAAAALEAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAApAAAAAIAAgAAABYAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAABYAAAACAAIAAAAWAAAAAgACAAAAFgAAAAIAAgAAABYAAAACAAIAAAAWAAAAAQABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABYAAAADAAIAAAAAAKQAAAAKAAgAAADsAAAABAAAAAAAAAAAAO0AAAAEAAEAAAAAAAAA7gAAAAQAAgAAAAAAAADvAAAABAADAAAAAAAAAPAAAAAEAAQAAAAAAAAA8QAAAAQABQAAAAAAAADyAAAABAAGAAAAAAAAAPMAAAAEAAcAAAAAAAAAAAAAAOIAAAAAAAAAswAAAAoAFAAAABwBAAACAAUAAAADAAAAHwEAAAIABQAAAAgAAAAgAQAAAgAFAAAADAAAACEBAAACAAUAAAAqAAAAIgEAAAIABQAAADIAAAAjAQAAAgAFAAAANwAAACQBAAACAAUAAAA8AAAAJQEAAAIABQAAAEEAAAAmAQAAAgAFAAAARQAAACcBAAACAAUAAABKAAAAKAEAAAIABQAAAE8AAAApAQAAAgAFAAAAWAAAACoBAAACAAUAAABaAAAAKwEAAAIABQAAAGEAAAAsAQAAAgAFAAAAZQAAAC0BAAACAAUAAABpAAAALgEAAAIABQAAAG0AAAAvAQAAAgAFAAAAdQAAADABAAACAAUAAAB4AAAAMQEAAAIABQAAAIIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAswAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACzAAAAAwAAAAAA4wAAAAAAAAC0AAAACgABAAAAMgEAAAIAAQAAAAMAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAtAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAC0AAAAAwAAAAAA5AAAAAAAAAC1AAAACgAFAAAAMwEAAAIAAAAAAAMAAAA0AQAAAgAAAAAARAAAADUBAAACAAAAAABmAAAANgEAAAIAAAAAAOUAAAA3AQAAAgAAAAAApAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAC1AAAAAwAAAAAA5gAAAAAAAADlAAAACgACAAAAOAEAAAIAAAAAAJMAAAA5AQAAAgAAAAAAmQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAADlAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAgAAAAUAAAAAAAAAAQAAAAIAAAAHAAAAEAAAAAEAAAACAAAABwAAAAYBAAABAAAAAgAAAAcAAAAaAQAAAQAAAAIAAAAHAAAALgEAAAEAAAACAAAABwAAAEIBAAABAAAAAgAAAAcAAABWAQAAAQAAAAIAAAAHAAAAagEAAAEAAAACAAAABwAAAH4BAAABAAAAAgAAAAcAAADcAQAAAQAAAAIAAAAHAAAASAIAAAEAAAACAAAABwAAANQCAAABAAAAAgAAAAcAAADOAwAAAQAAAAIAAAAHAAAAIgQAAAEAAAACAAAABQAAAIAEAAABAAAAAgAAAAcAAACQBAAAAQAAAAIAAAAHAAAAaAUAAAEAAAACAAAABwAAACgHAAABAAAAAgAAAAcAAABICAAAAQAAAAIAAAAHAAAATAkAAAEAAAACAAAABwAAAGgKAAABAAAAAgAAAAcAAABsCwAAAQAAAAIAAAAHAAAAiAwAAAEAAAACAAAABwAAAIwNAAABAAAAAgAAAAcAAACoDgAAAQAAAAIAAAAHAAAArA8AAAEAAAACAAAABwAAABAUAAABAAAAAgAAAAcAAACaGgAAAQAAAAIAAAAHAAAAthsAAAEAAAACAAAABwAAAMobAAABAAAAAgAAAAcAAACGHAAAAQAAAAIAAAAHAAAALB0AAAEAAAACAAAABwAAAOgdAAABAAAAAgAAAAcAAACkHgAAAQAAAAIAAAAHAAAAYB8AAAEAAAACAAAABwAAABwgAAABAAAAAgAAAAcAAADYIAAAAQAAAAIAAAAHAAAAlCEAAAEAAAACAAAABwAAABojAAABAAAAAgAAAAcAAACgJAAAAQAAAAIAAAAHAAAAaiUAAAEAAAACAAAABwAAADQmAAABAAAAAgAAAAcAAAA2JwAAAQAAAAIAAAAHAAAAiicAAAEAAAACAAAABwAAAN4nAAABAAAAAgAAAAcAAAAoKAAAAQAAAAIAAAAHAAAAvigAAAEAAAACAAAABwAAAMIpAAABAAAAAgAAAAUAAAAoLgAAAQAAAAIAAAAFAAAAOC4AAAEAAAACAAAABQAAAEguAAABAAAAAgAAAAUAAABYLgAAAQAAAAIAAAAHAAAAaC4AAAEAAAACAAAABwAAADYvAAABAAAAAgAAAAUAAACKLwAAAQAAAAIAAAAFAAAAmi8AAAEAAAACAAAABQAAAKovAAABAAAAAgAAAAUAAAC6LwAAAQAAAAIAAAAFAAAAyi8AAAEAAAACAAAABQAAANovAAABAAAAAgAAAAUAAADqLwAAAQAAAAIAAAAFAAAA+i8AAAEAAAACAAAABQAAAAowAAABAAAAAgAAAAUAAAAaMAAAAQAAAAAAAAAEAAAAKjAAAAAAAAACAAAABQAAACowAAABAAAAAgAAAAUAAAA6MAAAAQAAAAIAAAAFAAAASjAAAAEAAAACAAAABQAAAFowAAABAAAAAgAAAAUAAABqMAAAAQAAAAIAAAAFAAAAejAAAAEAAAACAAAABQAAAIowAAABAAAAAgAAAAUAAACaMAAAAQAAAAIAAAAFAAAAqjAAAAEAAAACAAAABQAAALowAAABAAAAAgAAAAUAAADKMAAAAQAAAAIAAAAFAAAA2jAAAAEAAAACAAAABQAAAOowAAABAAAAAgAAAAUAAAD6MAAAAQAAAAIAAAAFAAAACjEAAAEAAAACAAAABQAAABoxAAABAAAAAgAAAAUAAAAqMQAAAQAAAAIAAAAFAAAAOjEAAAEAAAACAAAABQAAAEoxAAABAAAAAgAAAAUAAABaMQAAAQAAAAIAAAAFAAAAajEAAAEAAAACAAAABQAAAHoxAAABAAAAAgAAAAUAAACKMQAAAQAAAAIAAAAFAAAAmjEAAAEAAAACAAAABQAAAKoxAAABAAAAAgAAAAUAAAC6MQAAAQAAAAIAAAAFAAAAyjEAAAEAAAACAAAABQAAANoxAAABAAAAAgAAAAUAAADqMQAAAQAAAAIAAAAFAAAA+jEAAAEAAAACAAAABQAAAAoyAAABAAAAAgAAAAUAAAAaMgAAAQAAAAIAAAAFAAAAKjIAAAEAAAAAAAAABQAAADoyAAAAAAAAAgAAAAUAAAA6MgAAAQAAAAIAAAAFAAAASjIAAAEAAAACAAAABQAAAFoyAAABAAAAAgAAAAUAAABqMgAAAQAAAAIAAAAFAAAAejIAAAEAAAACAAAABQAAAIoyAAABAAAAAgAAAAUAAACaMgAAAQAAAAIAAAAFAAAAqjIAAAEAAAACAAAABQAAALoyAAABAAAAAgAAAAUAAADKMgAAAQAAAAIAAAAFAAAA2jIAAAEAAAACAAAABQAAAOoyAAABAAAAAgAAAAUAAAD6MgAAAQAAAAIAAAAFAAAACjMAAAEAAAACAAAABQAAABozAAABAAAAAgAAAAUAAAAqMwAAAQAAAAIAAAAFAAAAOjMAAAEAAAACAAAABQAAAEozAAABAAAAAgAAAAUAAABaMwAAAQAAAAIAAAAFAAAAajMAAAEAAAACAAAABQAAAHozAAABAAAAAgAAAAUAAACKMwAAAQAAAAIAAAAFAAAAmjMAAAEAAAACAAAABQAAAKozAAABAAAAAgAAAAUAAAC6MwAAAQAAAAIAAAAFAAAAyjMAAAEAAAACAAAABQAAANozAAABAAAAAgAAAAUAAADqMwAAAQAAAAIAAAAFAAAA+jMAAAEAAAACAAAABQAAAAo0AAABAAAAAgAAAAUAAAAaNAAAAQAAAAIAAAAFAAAAKjQAAAEAAAACAAAABQAAADo0AAABAAAAAgAAAAUAAABKNAAAAQAAAAIAAAAFAAAAWjQAAAEAAAACAAAABQAAAGo0AAABAAAAAgAAAAUAAAB6NAAAAQAAAAIAAAAFAAAAijQAAAEAAAACAAAABQAAAJo0AAABAAAAAgAAAAUAAACqNAAAAQAAAAIAAAAFAAAAujQAAAEAAAACAAAABQAAAMo0AAABAAAAAgAAAAUAAADaNAAAAQAAAAIAAAAFAAAA6jQAAAEAAAAAAAAABgAAAPo0AAAAAAAAAgAAAAUAAAD6NAAAAQAAAAIAAAAFAAAACjUAAAEAAAACAAAABQAAABo1AAABAAAAAgAAAAUAAAAqNQAAAQAAAAIAAAAFAAAAOjUAAAEAAAAAAAAABwAAAEo1AAAAAAAAAgAAAAUAAABKNQAAAQAAAAIAAAAFAAAAWjUAAAEAAAACAAAABQAAAGo1AAABAAAAAgAAAAUAAAB6NQAAAQAAAAIAAAAFAAAAijUAAAEAAAACAAAABQAAAJo1AAABAAAAAgAAAAUAAACqNQAAAQAAAAIAAAAFAAAAujUAAAEAAAACAAAABQAAAMo1AAABAAAAAgAAAAUAAADaNQAAAQAAAAAAAAAIAAAA6jUAAAAAAAACAAAABQAAAOo1AAABAAAAAgAAAAUAAAD6NQAAAQAAAAIAAAAFAAAACjYAAAEAAAACAAAABQAAABo2AAABAAAAAgAAAAUAAAAqNgAAAQAAAAIAAAAFAAAAOjYAAAEAAAACAAAABQAAAEo2AAABAAAAAgAAAAUAAABaNgAAAQAAAAIAAAAFAAAAajYAAAEAAAACAAAABQAAAHo2AAABAAAAAgAAAAUAAACKNgAAAQAAAAIAAAAFAAAAmjYAAAEAAAACAAAABQAAAKo2AAABAAAAAwAAAAAAAAC6NgAAAQAAAAAAAAAJAAAAyjYAAAAAAAAAAAAACgAAAMo2AAAAAAAAAAAAAAsAAADKNgAAAAAAAAMAAAAAAAAAyjYAAAEAAAADAAAAAAAAANo2AAABAAAABAAAAAcAAADqNgAAAQAAAAQAAAAHAAAAtj8AAAEAAAAEAAAABwAAAHJDAAABAAAABAAAAAcAAAAESQAAAQAAAAQAAAAHAAAA1EoAAAEAAAAEAAAABwAAANRMAAABAAAAAQAAAAMAAABUTwAAAQAAAAEAAAADAAAAAFAAAAEAAAABAAAAAwAAAN5eAAABAAAAAQAAAAMAAAAWYAAAAQAAAAEAAAADAAAApHIAAAEAAAABAAAAAwAAAMR5AAABAAAAAQAAAAMAAACwgQAAAQAAAAEAAAADAAAATokAAAEAAAABAAAAAwAAADKOAAABAAAAAQAAAAMAAAAWkwAAAQAAAAEAAAADAAAAPpQAAAEAAAAEAAAACQAAABCZAAABAAAABAAAAAkAAAAwmQAAAQAAAAQAAAAJAAAAWJkAAAEAAAAEAAAACQAAAICZAAABAAAABAAAAAkAAACgmQAAAQAAAAQAAAAJAAAAyJkAAAEAAAAEAAAACQAAAPCZAAABAAAABAAAAAkAAAAYmgAAAQAAAAQAAAAJAAAAOJoAAAEAAAAEAAAACQAAAGCaAAABAAAABAAAAAkAAACAmgAAAQAAAAQAAAAJAAAAoJoAAAEAAAAEAAAACQAAAMCaAAABAAAABAAAAAkAAADgmgAAAQAAAAQAAAAJAAAAAJsAAAEAAAAEAAAACQAAACCbAAABAAAABAAAAAkAAABAmwAAAQAAAAQAAAAJAAAAaJsAAAEAAAAEAAAACQAAAJCbAAABAAAABAAAAAkAAAC4mwAAAQAAAAQAAAAJAAAA4JsAAAEAAAAEAAAACQAAAAicAAABAAAABAAAAAkAAAAwnAAAAQAAAAQAAAAJAAAAUJwAAAEAAAAEAAAACQAAAHCcAAABAAAAAwAAAAAAAACQnAAAAQAAAAMAAAAAAAAAoJwAAAEAAAADAAAAAAAAALCcAAABAAAAAAAAAAwAAADAnAAAAAAAAAMAAAAAAAAAwJwAAAEAAAALAAAAAAAAAAAAAQABAAEACwAAAAAAAQAAAAoABAAAAF0AAAAFAAAAAAAAAABA9AAAAAQAAAAAAAAAAABVAAAABQAAAAAAAADwP14AAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAXQAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBVAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAF4AAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAEAAQALAAAAAAADAAAAAQABAAEAAQABAAsAAAAAAAQAAAABAAEAAQABAAEACwAAAAAABQAAAAEAAQABAAEAAQALAAAAAAAGAAAAAQABAAEAAQABAAsAAAAAAAcAAAABAAEAAQABAAEACwAAAAAACAAAAAoAAgAAAFkAAAAFAAAAAAAAAPA/9AAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBZAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAAkAAAAKAAMAAAD1AAAABQAAAAAAAADwP1YAAAAFAAAAAAAAAPA/9AAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBWAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAAoAAAAKAAMAAAD1AAAABQAAAAAAAADwP1cAAAAFAAAAAAAAAPA/9AAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBXAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAACwAAAAoABAAAAPUAAAAEAAEAAAAAAAAAWAAAAAQAAQAAAAAAAAD0AAAABAAAAAAAAAAAAFoAAAAEAAEAAAAAAAAABwACAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAWAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgBaAAAABAAAAAAAAAAAAAoAAQAAAPYAAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBYAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFoAAAAEAAAAAAAAAAAAAQABAAsAAAAAAAwAAAAKAAEAAAD0AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAA0AAAAKAAIAAABVAAAABQAAAAAAAADwP/QAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAXwAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAoABAAAAIUAAAAFAAAAAAAAAPA/9AAAAAQAAAAAAAAAAABjAAAABQAAAAAAAAAAQIYAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAhQAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBjAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIYAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAEAAAAAoABQAAAPQAAAAEAAAAAAAAAAAAbwAAAAUAAAAAAAAA8D+FAAAABQAAAAAAAADwP2MAAAAFAAAAAAAAAABAhgAAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAA9wAAAAcAAwAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAG8AAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAhQAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBjAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIYAAAAEAAAAAAAAAAAAAQABAAsAAAAAABEAAAAKAAEAAAD0AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAsAAAAAABIAAAAKAAIAAAD0AAAABAAAAAAAAAAAAGQAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBkAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAEwAAAAoAAQAAAPQAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYA+AAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAUAAAACgACAAAA9AAAAAQAAAAAAAAAAABmAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZgAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAADAAAAAAAAAAEAAQABAAsAAAAAABUAAAAKAAEAAAD0AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAPkAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAFgAAAAoAAgAAAPQAAAAEAAAAAAAAAAAAaAAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBEAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGgAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAXAAAACgABAAAA9AAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgD6AAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAsAAAAAABgAAAAKAAIAAAD0AAAABAAAAAAAAAAAAGoAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBqAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAGQAAAAoABgAAAPQAAAAEAAAAAAAAAAAA+wAAAAUAAAAAAAAA8D9qAAAABQAAAAAAAADwP2gAAAAFAAAAAAAAAPA/ZgAAAAUAAAAAAAAA8D9kAAAABQAAAAAAAADwPwcABwAAAAcAAAAAAAcABgAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAKAAIAAAD8AAAABwAEAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAD9AAAABwACAAAABwAHAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBoAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBkAAAABAAAAAAAAAAAAAEAAQALAAAAAAAaAAAACgADAAAA/gAAAAQAAQAAAAAAAAD0AAAABAAAAAAAAAAAAG4AAAAEAAIAAAAAAAAABwAQAAAABwAAAAAABwAJAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAbgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAgAAAAAAAAABgBuAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAOAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQACAAAAAAAAAAGAG4AAAAEAAAAAAAAAAAABwAAAAAACgABAAAA/wAAAAcAAwAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQACAAAAAAAAAAGAG4AAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAJAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAUAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAIAAAAAAAAAAYAbgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAgAAAAAAAAABgBuAAAABAAAAAAAAAAAAAcAAAAAAAEAAQALAAAAAAAbAAAACgABAAAA9AAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAAAQAABAACAAAAAAAAAAcABgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAABwAAAABAAEAAQABAAEACwAAAAAAHQAAAAoAAQAAAPQAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAeAAAACgACAAAA9AAAAAQAAAAAAAAAAACGAAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAHwAAAAoAAQAAAPQAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAgAAAACgABAAAA9AAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACEAAAAKAAEAAAD0AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAIgAAAAoAAQAAAPQAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAjAAAACgABAAAA9AAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACQAAAAKAAEAAAD0AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAJQAAAAoAAwAAAPQAAAAEAAAAAAAAAAAAZgAAAAUAAAAAAAAA8D9nAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAAQEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEACwAAAAAAJgAAAAoAAwAAAPQAAAAEAAAAAAAAAAAAaAAAAAUAAAAAAAAA8D9pAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAAgEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGgAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaQAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEACwAAAAAAJwAAAAoAAgAAAPQAAAAEAAAAAAAAAAAAfwAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACgAAAAKAAIAAAD0AAAABAAAAAAAAAAAAAMBAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAApAAAACgAEAAAA9AAAAAUAAAAAAAAA8D8EAQAABQAAAAAAAADwPwUBAAAFAAAAAAAAAPA/BgEAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAABwEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwACAAAAAgAAAAAALgAAAAIAAAAAAC8AAAALAAAAAAAqAAAACgABAAAA9AAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAArAAAACgABAAAA9AAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAsAAAACgACAAAAbAAAAAQAAQAAAAAAAAD0AAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEABwABAAAAAgAAAAAAMQAAAAsAAAAAAC0AAAAKAAEAAAD0AAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcABgAAAAUAAAAAAAAAEEAEACAAAAAAAAAABAABAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAC4AAAAKAAIAAAD0AAAABAAAAAAAAAAAAH0AAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYARAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB9AAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEQAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAALwAAAAoAAgAAAPQAAAAEAAAAAAAAAAAAfgAAAAUAAAAAAAAA8D8HAAoAAAAHAAAAAAAHAAwAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAFAAAAAAAAABhABgAIAQAABAAAAAAAAAAAAAQACAAAAAAAAAAGAIEAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfgAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQABwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAKAAEAAAAJAQAABwAEAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfgAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAAHAAgAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAIAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIEAAAAEAAAAAAAAAAAAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAACgACAAAA9AAAAAQAAAAAAAAAAABiAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAADUAAAAKAAEAAAD0AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQALAAAAAABVAAAAAQABAAEACwAAAAAAVgAAAAEAAQABAAsAAAAAAFcAAAABAAEAAQALAAAAAABYAAAAAQABAAEACwAAAAAAWQAAAAEAAQABAAsAAAAAAFoAAAABAAEAAQALAAAAAABbAAAAAQABAAEACwAAAAAAXAAAAAEAAQABAAsAAAAAAF0AAAABAAEAAQALAAAAAABeAAAAAQABAAEACwAAAAAAXwAAAAEAAQABAAsAAAAAAGAAAAABAAEAAQALAAAAAABhAAAAAQABAAEACwAAAAAAYgAAAAEAAQABAAsAAAAAAGMAAAABAAEAAQALAAAAAABkAAAAAQABAAEACwAAAAAAZQAAAAEAAQABAAsAAAAAAGYAAAABAAEAAQALAAAAAABnAAAAAQABAAEACwAAAAAAaAAAAAEAAQABAAsAAAAAAGkAAAABAAEAAQALAAAAAABqAAAAAQABAAEACwAAAAAAawAAAAEAAQABAAsAAAAAAGwAAAABAAEAAQALAAAAAABtAAAAAQABAAEACwAAAAAAbgAAAAEAAQABAAsAAAAAAG8AAAABAAEAAQALAAAAAABwAAAAAQABAAEACwAAAAAAcQAAAAEAAQABAAsAAAAAAHIAAAABAAEAAQALAAAAAABzAAAAAQABAAEACwAAAAAAdAAAAAEAAQABAAsAAAAAAHUAAAABAAEAAQALAAAAAAB2AAAAAQABAAEACwAAAAAAdwAAAAEAAQABAAsAAAAAAHgAAAABAAEAAQALAAAAAAB5AAAAAQABAAEACwAAAAAAegAAAAEAAQABAAsAAAAAAHsAAAABAAEAAQALAAAAAAB8AAAAAQABAAEACwAAAAAAfQAAAAEAAQABAAsAAAAAAH4AAAABAAEAAQALAAAAAAB/AAAAAQABAAEACwAAAAAAgAAAAAEAAQABAAsAAAAAAIEAAAABAAEAAQALAAAAAACCAAAAAQABAAEACwAAAAAAgwAAAAEAAQABAAsAAAAAAIQAAAABAAEAAQALAAAAAACFAAAAAQABAAEACwAAAAAAhgAAAAEAAQABAAsAAAAAAIcAAAABAAEAAQALAAAAAACIAAAAAQABAAEACwAAAAAAiQAAAAEAAQABAAsAAAAAAIoAAAABAAEAAQALAAAAAACLAAAAAQABAAEACwAAAAAAjAAAAAEAAQABAAsAAAAAAI0AAAABAAEAAQALAAAAAACOAAAAAQABAAEACwAAAAAAjwAAAAEAAQABAAsAAAAAAJAAAAABAAEAAQALAAAAAACRAAAAAQABAAEACwAAAAAAkgAAAAEAAQABAAsAAAAAAJMAAAABAAEAAQALAAAAAACUAAAAAQABAAEACwAAAAAAlQAAAAEAAQABAAsAAAAAAJYAAAABAAEAAQALAAAAAACXAAAAAQABAAEACwAAAAAAmAAAAAEAAQABAAsAAAAAAJkAAAABAAEAAQALAAAAAACaAAAAAQABAAEACwAAAAAAmwAAAAEAAQABAAsAAAAAAJwAAAABAAEAAQALAAAAAACdAAAAAQABAAEACwAAAAAAngAAAAEAAQABAAsAAAAAAJ8AAAABAAEAAQALAAAAAACgAAAAAQABAAEACwAAAAAAoQAAAAEAAQABAAsAAAAAAKIAAAABAAEAAQALAAAAAACjAAAAAQABAAEACwAAAAAApAAAAAEAAQABAAsAAAAAAKUAAAABAAEAAQALAAAAAACmAAAAAQABAAEACwAAAAAApwAAAAEAAQABAAsAAAAAAKgAAAABAAEAAQALAQAABwAAAAAACgAAAAAADAEAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAAGAA8BAAAKAAAAAAAKAD0AAABTAAAAAgAAAAAABAAAAFQAAAACAAAAAAAFAAAAVQAAAAIAAAAAAAYAAABWAAAAAgAAAAAABwAAAFcAAAACAAAAAAAIAAAAWAAAAAIAAAAAAAkAAABZAAAAAgAAAAAACgAAAFoAAAACAAAAAAALAAAAWwAAAAIAAAAAAAwAAABcAAAAAgAAAAAADQAAAF0AAAACAAAAAAAOAAAAXgAAAAIAAAAAAA8AAABfAAAAAgAAAAAAEAAAAGAAAAACAAAAAAARAAAAYQAAAAIAAAAAABIAAABiAAAAAgAAAAAAEwAAAGMAAAACAAAAAAAUAAAAZAAAAAIAAAAAABUAAABlAAAAAgAAAAAAFgAAAGYAAAACAAAAAAAXAAAAZwAAAAIAAAAAABgAAABoAAAAAgAAAAAAGQAAAGkAAAACAAAAAAAaAAAAagAAAAIAAAAAABsAAABrAAAAAgAAAAAAHAAAAGwAAAACAAAAAAAdAAAAbQAAAAIAAAAAAB4AAABuAAAAAgAAAAAAHwAAAG8AAAACAAAAAAAgAAAAcAAAAAIAAAAAACEAAABxAAAAAgAAAAAAIgAAAHIAAAACAAAAAAAjAAAAcwAAAAIAAAAAACQAAAB0AAAAAgAAAAAAJQAAAHUAAAACAAAAAAAmAAAAdgAAAAIAAAAAACcAAAB3AAAAAgAAAAAAKAAAAHgAAAACAAAAAAApAAAAeQAAAAIAAAAAACoAAAB6AAAAAgAAAAAAKwAAAHsAAAACAAAAAAAsAAAAfAAAAAIAAAAAAC0AAAB9AAAAAgAAAAAAMAAAAH4AAAACAAAAAAAyAAAAfwAAAAIAAAAAADMAAACAAAAAAgAAAAAANAAAAIEAAAACAAAAAAA1AAAAUgAAAAIAAAAAADYAAACCAAAAAgAAAAAANwAAAIMAAAACAAAAAAA4AAAAhAAAAAIAAAAAADkAAACFAAAAAgAAAAAAOgAAAIYAAAACAAAAAAA7AAAAhwAAAAIAAAAAADwAAACIAAAAAgAAAAAAPQAAAIkAAAACAAAAAAA+AAAAigAAAAIAAAAAAD8AAACLAAAAAgAAAAAAQAAAAIwAAAACAAAAAABBAAAAjQAAAAIAAAAAAEIAAACOAAAAAgAAAAAAQwAAAAcAPQAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIQAAAAIAAAAAACIAAAACAAAAAAAjAAAAAgAAAAAAJAAAAAIAAAAAACUAAAACAAAAAAAmAAAAAgAAAAAAJwAAAAIAAAAAACgAAAACAAAAAAApAAAAAgAAAAAAKgAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAADAAAAACAAAAAAAyAAAAAgAAAAAAMwAAAAIAAAAAADQAAAACAAAAAAA1AAAAAgAAAAAANgAAAAIAAAAAADcAAAACAAAAAAA4AAAAAgAAAAAAOQAAAAIAAAAAADoAAAACAAAAAAA7AAAAAgAAAAAAPAAAAAIAAAAAAD0AAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAHAAAAAAAHAAEAAAACAAEAAABhAAAABwAAAAAAAgABAAAAYQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAADAAAAAgABAAAAYQAAAAIAAgAAABYAAAAHAAAAAAAKAAwAAAA1AAAACgACAAAAVQAAAAcAAQAAAAYAWwAAAG8AAAAHAA0AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAAAGAHwAAABVAAAAAgAAAAAAvgAAAG8AAAACAAAAAAC/AAAA9gAAAAIAAAAAAMAAAAD3AAAAAgAAAAAAwQAAAPwAAAACAAAAAADCAAAA/QAAAAIAAAAAAMMAAAD/AAAAAgAAAAAAxAAAAAEBAAACAAAAAADFAAAAAgEAAAIAAAAAAMYAAAAHAQAAAgAAAAAAxwAAAAkBAAACAAAAAADIAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYQAAAAYAEAEAAAYAjwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABhAAAABgAjAAAABgCQAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGEAAAAGACQAAAAGAJEAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYQAAAAYAEQEAAAYAkgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABhAAAABgASAQAABgCTAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGEAAAAGABMBAAAGAJQAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYQAAAAYAFAEAAAYAlQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABhAAAABgAVAQAABgCWAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGEAAAAGABYBAAAGAJcAAAAHAAAAAAABAAYAFwEAAAoAAAAAAAoAIQAAAJgAAAACAAAAAABFAAAAmQAAAAIAAAAAAEYAAACaAAAAAgAAAAAARwAAAIgAAAACAAAAAABIAAAAWwAAAAIAAAAAAEkAAABUAAAAAgAAAAAASgAAAF8AAAACAAAAAABLAAAAYAAAAAIAAAAAAEwAAABsAAAAAgAAAAAATQAAAG0AAAACAAAAAABOAAAAZAAAAAIAAAAAAE8AAABmAAAAAgAAAAAAUAAAAGgAAAACAAAAAABRAAAAagAAAAIAAAAAAFIAAACDAAAAAgAAAAAAUwAAAGIAAAACAAAAAABUAAAAYwAAAAIAAAAAAFUAAABwAAAAAgAAAAAAVgAAAHEAAAACAAAAAABXAAAAcgAAAAIAAAAAAFgAAABzAAAAAgAAAAAAWQAAAHQAAAACAAAAAABaAAAAdQAAAAIAAAAAAFsAAAB2AAAAAgAAAAAAXAAAAHcAAAACAAAAAABdAAAAeAAAAAIAAAAAAF4AAAB5AAAAAgAAAAAAXwAAAHoAAAACAAAAAABgAAAAewAAAAIAAAAAAGEAAAB8AAAAAgAAAAAAYgAAAH0AAAACAAAAAABjAAAAfgAAAAIAAAAAAGQAAAB/AAAAAgAAAAAAZQAAAAcAIQAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAIAAAAAAFEAAAACAAAAAABSAAAAAgAAAAAAUwAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAcAAAAAAAcAAQAAAAIAAgAAABYAAAAHAAAAAAACAAIAAAAWAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAEQAAAACAAIAAAAWAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgAYAQAACgALAAAAxAAAAAIAAAAAAMkAAADFAAAAAgAAAAAAygAAAMYAAAACAAAAAADLAAAAxwAAAAIAAAAAAMwAAADIAAAAAgAAAAAAzQAAAMkAAAACAAAAAADOAAAAygAAAAIAAAAAAM8AAADLAAAAAgAAAAAA0AAAAMwAAAACAAAAAADRAAAAzQAAAAIAAAAAANIAAADOAAAAAgAAAAAA0wAAAAoALAAAABIAAAACAAAAAABnAAAAmwAAAAIAAAAAAGgAAACcAAAAAgAAAAAAaQAAAJ0AAAACAAAAAABqAAAAngAAAAIAAAAAAGsAAACfAAAAAgAAAAAAbAAAAKAAAAACAAAAAABtAAAAoQAAAAIAAAAAAG4AAACiAAAAAgAAAAAAbwAAAKMAAAACAAAAAABwAAAAgQAAAAIAAAAAAHEAAACkAAAAAgAAAAAAcgAAAKUAAAACAAAAAABzAAAApgAAAAIAAAAAAHQAAACnAAAAAgAAAAAAdQAAAKgAAAACAAAAAAB2AAAAqQAAAAIAAAAAAHcAAACqAAAAAgAAAAAAeAAAAKsAAAACAAAAAAB5AAAArAAAAAIAAAAAAHoAAACtAAAAAgAAAAAAewAAAK4AAAACAAAAAAB8AAAArwAAAAIAAAAAAH0AAACwAAAAAgAAAAAAfgAAAB4AAAACAAAAAAB/AAAAsQAAAAIAAAAAAIAAAACyAAAAAgAAAAAAgQAAALMAAAACAAAAAACCAAAAtAAAAAIAAAAAAIMAAAC1AAAAAgAAAAAAhAAAALYAAAACAAAAAACFAAAAtwAAAAIAAAAAAIYAAAC4AAAAAgAAAAAAhwAAALkAAAACAAAAAACIAAAAugAAAAIAAAAAAIkAAAC7AAAAAgAAAAAAigAAALwAAAACAAAAAACLAAAAvQAAAAIAAAAAAIwAAAC+AAAAAgAAAAAAjQAAAL8AAAACAAAAAACOAAAAwAAAAAIAAAAAAI8AAADBAAAAAgAAAAAAkAAAAMIAAAACAAAAAACRAAAAwwAAAAIAAAAAAJIAAAAHACwAAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAcAAAAAAAcAAQAAAAIAAgAAABYAAAAHAAAAAAACAAIAAAAWAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGYAAAACAAIAAAAWAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAABoAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAGgAAAABAAYAGQEAAAoAAgAAANQAAAACAAAAAADUAAAA1QAAAAIAAAAAANUAAAAKAAUAAADPAAAAAgAAAAAAlAAAANAAAAACAAAAAACVAAAA0QAAAAIAAAAAAJYAAADSAAAAAgAAAAAAlwAAANMAAAACAAAAAACYAAAABwAFAAAAAgAAAAAAlAAAAAIAAAAAAJUAAAACAAAAAACWAAAAAgAAAAAAlwAAAAIAAAAAAJgAAAAHAAAAAAAHAAEAAAACAAIAAAAWAAAABwAAAAAAAgACAAAAFgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACTAAAAAgACAAAAFgAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAkwAAAAYA0AAAAAYA1AAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACTAAAABgDRAAAABgDVAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAJMAAAAGANAAAAAGANQAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAkwAAAAYA0QAAAAYA1QAAAAEABgAaAQAACgAEAAAA3QAAAAIAAAAAANYAAADVAAAAAgAAAAAA1wAAAN4AAAACAAAAAADYAAAA3wAAAAIAAAAAANkAAAAKAAoAAAASAAAAAgAAAAAAmgAAANYAAAACAAAAAACbAAAAmwAAAAIAAAAAAJwAAADXAAAAAgAAAAAAnQAAANgAAAACAAAAAACeAAAA2QAAAAIAAAAAAJ8AAADaAAAAAgAAAAAAoAAAANsAAAACAAAAAAChAAAA3AAAAAIAAAAAAKIAAAAeAAAAAgAAAAAAowAAAAcACgAAAAIAAAAAAJoAAAACAAAAAACbAAAAAgAAAAAAnAAAAAIAAAAAAJ0AAAACAAAAAACeAAAAAgAAAAAAnwAAAAIAAAAAAKAAAAACAAAAAAChAAAAAgAAAAAAogAAAAIAAAAAAKMAAAAHAAAAAAAHAAEAAAACAAIAAAAWAAAABwAAAAAAAgACAAAAFgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACZAAAAAgACAAAAFgAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAnAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACcAAAAAQAGABsBAAAKAAgAAADsAAAAAgAAAAAA2gAAAO0AAAACAAAAAADbAAAA7gAAAAIAAAAAANwAAADvAAAAAgAAAAAA3QAAAPAAAAACAAAAAADeAAAA8QAAAAIAAAAAAN8AAADyAAAAAgAAAAAA4AAAAPMAAAACAAAAAADhAAAACgANAAAAmwAAAAIAAAAAAKUAAADgAAAAAgAAAAAApgAAAOEAAAACAAAAAACnAAAA4gAAAAIAAAAAAKgAAADjAAAAAgAAAAAAqQAAAOQAAAACAAAAAACqAAAA5QAAAAIAAAAAAKsAAADmAAAAAgAAAAAArAAAAOcAAAACAAAAAACtAAAA6AAAAAIAAAAAAK4AAADpAAAAAgAAAAAArwAAAOoAAAACAAAAAACwAAAA6wAAAAIAAAAAALEAAAAHAA0AAAACAAAAAAClAAAAAgAAAAAApgAAAAIAAAAAAKcAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAIAAAAAAK0AAAACAAAAAACuAAAAAgAAAAAArwAAAAIAAAAAALAAAAACAAAAAACxAAAABwAAAAAABwABAAAAAgACAAAAFgAAAAcAAAAAAAIAAgAAABYAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAApAAAAAIAAgAAABYAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAKUAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAApQAAAAEABwAEAAAABwACAAAAAwAGAFsAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBZAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAcAVQAAAAcADgAAAAMABgBwAAAABgBxAAAABgByAAAABgBzAAAABgB0AAAABgB1AAAABgB2AAAABgB3AAAABgB4AAAABgB5AAAABgB6AAAABgB7AAAABgB8AAAABwAnAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAE8AAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAABRABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAJkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAAAiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAyQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADhABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAADlABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAjAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABQAAAAAAAAA9QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABDQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAAERABAABAAAAAAAAAAQAAAAAAAAAAAAEACoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAFAAAAAAAAAEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEZABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAEdABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAACAR0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAMQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAUAAAAAAACARUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQALwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASEAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAUAAAAAAACASkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAABLQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA4AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABQAAAAAAAABJQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA2AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBLQAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBNQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABOQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAgE5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAD8AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAFAAAAAAAAgExABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAD0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgFBABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFBABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAUUAEAAEAAAAAAAAABAAAAAAAAAAAAAQARgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAUAAAAAAAAAUEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQARAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUUAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAACAUkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAMBSQAQAAQAAAAAAAAAEAAAAAAAAAAAABABNAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABQAAAAAAAMBRQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABLAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABTQAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABUQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBUQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAgFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAFQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAFAAAAAAAAgFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFRABAABAAAAAAAAAAAAAAAAAAAABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFoAAAAFAAAAAAAAABBABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAABwBhAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAF4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAbwAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAE4AAAAEAAgAAAAAAAAABgBwAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHEAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBzAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHQAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB2AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHcAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAeAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB5AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAewAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB8AAAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAwAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA3AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA+AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAACRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAC5ABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAZAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA8QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA9QAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAAD5ABAABAAAAAAAAAAQAAAAAAAAAAAAEACAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEFABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAARUAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAuAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBIQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABJQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAgElABAABAAAAAAAAAAQAAAAAAAAAAAAEADUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAExABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgExABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAT0AHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAUEAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBRQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBRQAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAAFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAEoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFNABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFNABwAGAAAABAAIAAAAAAAAAAYAhAAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAUQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVUAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVUAHAAYAAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAIBVQAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABWAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBVQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAEBWQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBWQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIUAAAAFAAAAAAAAwFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAADAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCGAAAABQAAAAAAAEBXQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAcAJgAAAAcABAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAEEAHAAYAAAAEAAgAAAAAAAAABgBqAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAcQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAGEAGAPoAAAAFAAAAAAAAACRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAACpABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABhABgD5AAAABQAAAAAAAAAzQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABQAAAAAAAAAYQAYA+AAAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABkAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAgAAAAAAAAABgBkAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAdAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABAQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBCQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAQAAQAAAAAAAAAAAAAAAAAAAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAagAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBoAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGYAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAZAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgD6AAAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAPkAAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYA+AAAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBkAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAcAKAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAYQAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAQACAAAAAAAAAAGAG4AAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAAAEAAAUAAAAAAAAAJEAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAM0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANUAHAA8AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAEAAgAAAAAAAAABgBuAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAABAAAFAAAAAAAAADlABwAGAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABAAIAAAAAAAAAAYAbgAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAAAQAABQAAAAAAAABCQAcABgAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAAAAAAAAAAAAcAGgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAZgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgD4AAAABQAAAAAAAAAiQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAoQAcABgAAAAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAACRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwAGAAAABAAIAAAAAAAAAAYARAAAAAUAAAAAAAAAMkAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAYAAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAEQAAAAFAAAAAAAAADFABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABQAAAAAAAAAYQAYA+AAAAAUAAAAAAAAAOUAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAAAAAAAAAAAAAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGgAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYA+QAAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBpAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGAEQAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBEAAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAPkAAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAABwAHAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAEEAEAAEAAAAAAAAAAAAAAAAAAAAHABgAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAfgAAAAUAAAAAAAAAFEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAgAAAAAAAAABgBEAAAABQAAAAAAAAAkQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcABgAAAAQACAAAAAAAAAAGAH0AAAAFAAAAAAAAACZABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYARAAAAAUAAAAAAAAAIkAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAALkAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAIAQAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIEAAAAFAAAAAAAAADZABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAABgDEAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMUAAAADAAQAAAAAAAAAAAADAAIAAgAAABYAAAAEAAEAAAAAAAAABgDGAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAWAAAABAABAAAAAAAAAAYAxwAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDIAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAWAAAABAABAAAAAAAAAAYAyQAAAAMABAAAAAAAAAAAAAMAAgACAAAAFgAAAAQAAQAAAAAAAAAGAMoAAAADAAQAAAAAAAAAAAADAAIAAgAAABYAAAAEAAEAAAAAAAAABgDLAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMwAAAADAAQAAAAAAAAAAAADAAIAAgAAABYAAAAEAAEAAAAAAAAABgDNAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAM4AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA1AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDVAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAN0AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA1QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDeAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAN8AAAADAAQAAAAAAAAAAAADAAIAAgAAABYAAAAEAAEAAAAAAAAABgDsAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAWAAAABAABAAAAAAAAAAYA7QAAAAMABAAAAAAAAAAAAAMAAgACAAAAFgAAAAQAAQAAAAAAAAAGAO4AAAADAAQAAAAAAAAAAAADAAIAAgAAABYAAAAEAAEAAAAAAAAABgDvAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAWAAAABAABAAAAAAAAAAYA8AAAAAMABAAAAAAAAAAAAAMAAgACAAAAFgAAAAQAAQAAAAAAAAAGAPEAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA8gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDzAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAA2AQAABwAAAAAACgAAAAAA", cur_sc, $P5003, $P5005, conflicts
    unless conflicts goto if406_end1334 
    die "Repossession conflicts occurred during deserialization"
  if406_end1334:
    .const "LexInfo" $P5001 = "cuid_1_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357764670.549"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1357764666.785", 32
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_58_1357764670.549" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_59_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 67
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_66_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_66_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_66_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_66_1357764670.549"
    $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 68
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_183_1357764670.549" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_67_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 101
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 68
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 68
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_101_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 146
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_145_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 102
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_146_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 152
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_151_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_151_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_151_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 147
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_151_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_152_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 163
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_162_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_162_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_162_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 153
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_162_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_163_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_174_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 176
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_175_1357764670.549" 
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 177
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_176_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_176_1357764670.549"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_176_1357764670.549"
    nqp_get_sc_object $P5002, "C89AAA880CEA5F136DD6CCEAF21F4A401F7FB7CE-1357764670.575", 164
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_176_1357764670.549"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1357764670.549") :anon :lex :outer("cuid_232_1357764670.549")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1357764670.549" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_175_1357764670.549" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1357764670.549") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_1_1357764670.549" 
    $P5002 = $P5001()
    .return ($P5002) 
.end