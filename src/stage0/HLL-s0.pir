.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_1_1351021533.614") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5028 = 'cuid_63_1351021533.614' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_97_1351021533.614' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_142_1351021533.614' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_148_1351021533.614' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_159_1351021533.614' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_173_1351021533.614' 
    capture_lex $P5028 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "NQPCursorRole", $P104 
    .lex "$compiler", $P105 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P105, $P5001
.annotate 'line', 1054
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
    .const 'Sub' $P5006 = 'cuid_63_1351021533.614' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_97_1351021533.614' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_142_1351021533.614' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 1719
    nqp_get_sc_object $P5015, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5014, $P5015, "HLL"
    get_who $P5013, $P5014
    set $P5012, $P5013["Compiler"]
    unless_null $P5012, fallback1126
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5016
  fallback1126:
    $P5017 = $P5012."new"()
    set $P105, $P5017
.annotate 'line', 1720
    $P105."language"("parrot")
    .const 'Sub' $P5018 = 'cuid_148_1351021533.614' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_159_1351021533.614' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_173_1351021533.614' 
    capture_lex $P5022
    $P5023 = $P5022()
    unless _lex_param_0 goto if379_end1248 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5024, "ModuleLoader"
    getinterp $P5026
    set $P5025, $P5026["context"]
    $P5027 = $P5024."set_mainline_module"($P5025)
  if379_end1248:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_63_1351021533.614") :anon :lex :outer("cuid_1_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5069 = 'cuid_2_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_3_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_4_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_5_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_6_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_7_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_8_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_9_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_10_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_11_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_12_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_13_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_14_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_15_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_16_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_17_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_18_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_19_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_20_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_21_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_22_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_23_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_24_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_25_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_26_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_27_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_28_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_29_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_30_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_31_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_32_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_33_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_34_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_35_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_36_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_37_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_38_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_39_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_40_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_41_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_42_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_44_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_46_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_47_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_48_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_49_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_50_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_51_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_52_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_53_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_54_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_55_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_56_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_57_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_58_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_59_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_60_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_61_1351021533.614' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_62_1351021533.614' 
    capture_lex $P5069 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    box $P5003, utf8:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P101, $P5003
    get_who $P5005, $P103
    set $P5004, $P5005["NQPCursor"]
    unless_null $P5004, fallback14
    nqp_get_sc_object $P5008, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5007, $P5008
    set $P5006, $P5007["NQPCursor"]
    unless_null $P5006, vivi_1215
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5009
  vivi_1215:
    set $P5004, $P5006
  fallback14:
    set $P102, $P5004
    .const 'Sub' $P5010 = 'cuid_2_1351021533.614' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_3_1351021533.614' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_4_1351021533.614' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_5_1351021533.614' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_6_1351021533.614' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_7_1351021533.614' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_8_1351021533.614' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_9_1351021533.614' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_10_1351021533.614' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_11_1351021533.614' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_12_1351021533.614' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_13_1351021533.614' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_14_1351021533.614' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_15_1351021533.614' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_16_1351021533.614' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_17_1351021533.614' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_18_1351021533.614' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_19_1351021533.614' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_20_1351021533.614' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_21_1351021533.614' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_22_1351021533.614' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_23_1351021533.614' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_24_1351021533.614' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_25_1351021533.614' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_26_1351021533.614' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_27_1351021533.614' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_28_1351021533.614' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_29_1351021533.614' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_30_1351021533.614' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_31_1351021533.614' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_32_1351021533.614' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_33_1351021533.614' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_34_1351021533.614' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_35_1351021533.614' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_36_1351021533.614' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_37_1351021533.614' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_38_1351021533.614' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_39_1351021533.614' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_40_1351021533.614' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_41_1351021533.614' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_42_1351021533.614' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_44_1351021533.614' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_46_1351021533.614' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_47_1351021533.614' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_48_1351021533.614' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_49_1351021533.614' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_50_1351021533.614' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_51_1351021533.614' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_52_1351021533.614' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_53_1351021533.614' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_54_1351021533.614' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_55_1351021533.614' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_56_1351021533.614' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_57_1351021533.614' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_58_1351021533.614' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_59_1351021533.614' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_60_1351021533.614' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_61_1351021533.614' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_62_1351021533.614' 
    capture_lex $P5068
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_2_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 11
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
.sub "term" :subid("cuid_3_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 17
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 18
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 19
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
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
.sub "infixish" :subid("cuid_10_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 26
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
.sub "prefixish" :subid("cuid_11_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 27
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
.sub "postfixish" :subid("cuid_12_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 28
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
    rx30_cur."!alt"(rx30_pos, "alt_nfa__1_1351021533.73", $P11)
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
.sub "nullterm" :subid("cuid_13_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 33
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
.sub "nullterm_alt" :subid("cuid_14_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 34
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
.sub "nulltermish" :subid("cuid_15_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 37
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
.sub "quote_delimited" :subid("cuid_16_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 39
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
.sub "quote_atom" :subid("cuid_17_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 43
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
    rx48_cur."!alt"(rx48_pos, "alt_nfa__2_1351021533.758", $P11)
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
.sub "decint" :subid("cuid_18_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 52
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
.sub "decints" :subid("cuid_19_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 53
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
.sub "hexint" :subid("cuid_20_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 55
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
.sub "hexints" :subid("cuid_21_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 56
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
.sub "octint" :subid("cuid_22_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 58
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
.sub "octints" :subid("cuid_23_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 59
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
.sub "binint" :subid("cuid_24_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 61
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
.sub "binints" :subid("cuid_25_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 62
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
.sub "integer" :subid("cuid_26_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 64
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
    rx97_cur."!alt"(rx97_pos, "alt_nfa__4_1351021533.82", $P11)
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
    rx97_cur."!alt"(rx97_pos, "alt_nfa__3_1351021533.819", $P11)
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
.sub "dec_number" :subid("cuid_27_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 75
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
    rx106_cur."!alt"(rx106_pos, "alt_nfa__5_1351021533.837", $P11)
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
.sub "escale" :subid("cuid_28_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 81
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
.sub "quote_escape" :subid("cuid_29_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 83
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 84
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
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 85
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
.sub "quote_escape:sym<bs>" :subid("cuid_32_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 87
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
.sub "quote_escape:sym<nl>" :subid("cuid_33_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 88
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
.sub "quote_escape:sym<cr>" :subid("cuid_34_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 89
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
.sub "quote_escape:sym<tab>" :subid("cuid_35_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 90
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
.sub "quote_escape:sym<ff>" :subid("cuid_36_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 91
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
.sub "quote_escape:sym<esc>" :subid("cuid_37_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 92
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
.sub "quote_escape:sym<hex>" :subid("cuid_38_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 93
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
    rx143_cur."!alt"(rx143_pos, "alt_nfa__6_1351021533.908", $P11)
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
.sub "quote_escape:sym<oct>" :subid("cuid_39_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 97
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
    rx148_cur."!alt"(rx148_pos, "alt_nfa__7_1351021533.921", $P11)
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
.sub "quote_escape:sym<chr>" :subid("cuid_40_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 101
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
.sub "quote_escape:sym<0>" :subid("cuid_41_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 102
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
.sub "quote_escape:sym<misc>" :subid("cuid_42_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 103
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_174_1351021533.614' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_43_1351021533.614' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_175_1351021533.614' 
    capture_lex $P5008 
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
    .const 'Sub' $P5002 = 'cuid_174_1351021533.614' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx159_pos, 1
    gt $I11, rx159_eos, rx159_fail477
    substr $S10, rx159_tgt, rx159_pos, 1
    ne $S10, ucs4:"\\", rx159_fail477
    add rx159_pos, 1
  alt161_0485:
    nqp_rxmark rx159_bstack, alt161_1504, rx159_pos, 0
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx159_curclass, "$!pos"
    lt $I11, 0, rx159_fail477
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt162_0487
    nqp_push_label $P11, alt162_1499
    nqp_rxmark rx159_bstack, alt162_end486, -1, 0
    rx159_cur."!alt"(rx159_pos, "alt_nfa__8_1351021533.958", $P11)
    goto rx159_fail477
  alt162_0487:
    .const 'Sub' $P5004 = 'cuid_43_1351021533.614' 
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
    nqp_rxmark rx159_bstack, rxcap166_fail501, rx159_pos, 0
    ge rx159_pos, rx159_eos, rx159_fail477
    is_cclass $I11, .CCLASS_WORD, rx159_tgt, rx159_pos
    unless $I11, rx159_fail477
    add rx159_pos, 1
    nqp_rxpeek $I19, rx159_bstack, rxcap166_fail501
    inc $I19
    set $I11, rx159_bstack[$I19]
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx159_pos)
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "x")
    goto rxcap166_done500
  rxcap166_fail501:
    goto rx159_fail477
  rxcap166_done500:
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    store_lex unicode:"$\x{a2}", rx159_cur
    $P5005 = $P101."MATCH"()
    set $P102, $P5005
    .const 'Sub' $P5006 = 'cuid_175_1351021533.614' 
    capture_lex $P5006
    $P5007 = $P5006()
    goto alt162_end486
  alt162_end486:
    nqp_rxcommit rx159_bstack, alt162_end486
    goto alt161_end484
  alt161_1504:
    nqp_rxmark rx159_bstack, rxcap167_fail506, rx159_pos, 0
    ge rx159_pos, rx159_eos, rx159_fail477
    add rx159_pos, 1
    nqp_rxpeek $I19, rx159_bstack, rxcap167_fail506
    inc $I19
    set $I11, rx159_bstack[$I19]
    repr_bind_attr_int rx159_cur, rx159_curclass, "$!pos", rx159_pos
    $P11 = rx159_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx159_pos)
    rx159_cstack = rx159_cur."!cursor_capture"($P11, "textq")
    goto rxcap167_done505
  rxcap167_fail506:
    goto rx159_fail477
  rxcap167_done505:
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
.sub "" :subid("cuid_174_1351021533.614") :anon :lex :outer("cuid_42_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 104

    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1351021533.614") :anon :lex :outer("cuid_42_1351021533.614")
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
.sub "" :subid("cuid_175_1351021533.614") :anon :lex :outer("cuid_42_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 109

    find_lex $P5001, "$/"
    $P5002 = $P5001."CURSOR"()
    find_lex $P5004, "$/"
    unless_null $P5004, fallback502
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5005
  fallback502:
    set $P5003, $P5004["x"]
    unless_null $P5003, fallback503
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5006
  fallback503:
    $P5007 = $P5003."Str"()
    set $S5003, $P5007
    concat $S5002, "Unrecognized backslash sequence: '\\", $S5003
    concat $S5001, $S5002, "'"
    $P5008 = $P5002."panic"($S5001)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_44_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 115
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_45_1351021533.614' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_curclass
    .local pmc rx168_bstack
    .local pmc rx168_cstack
    (rx168_cur, rx168_tgt, rx168_pos, rx168_curclass, rx168_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx168_cur
    length rx168_eos, rx168_tgt
    eq $I19, 1, rx168_restart509
    gt rx168_pos, rx168_eos, rx168_fail510
    repr_get_attr_int $I11, self, rx168_curclass, "$!from"
    ne $I11, -1, rxscan169_done516
    goto rxscan169_scan515
  rxscan169_loop514:
    inc rx168_pos
    gt rx168_pos, rx168_eos, rx168_fail510
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!from", rx168_pos
  rxscan169_scan515:
    nqp_rxmark rx168_bstack, rxscan169_loop514, rx168_pos, 0
  rxscan169_done516:
  alt170_0518:
    nqp_rxmark rx168_bstack, alt170_1520, rx168_pos, 0
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!pos", rx168_pos
    $P11 = rx168_cur."integer"()
    repr_get_attr_int $I11, $P11, rx168_curclass, "$!pos"
    lt $I11, 0, rx168_fail510
    nqp_rxmark rx168_bstack, rxsubrule171_pass519, -1, 0
  rxsubrule171_pass519:
    rx168_cstack = rx168_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx168_pos, $P11, rx168_curclass, "$!pos"
    goto alt170_end517
  alt170_1520:
    ge rx168_pos, rx168_eos, rx168_fail510
    substr $S11, rx168_tgt, rx168_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx168_fail510
    inc rx168_pos
    set rx168_rep, 0
    nqp_rxmark rx168_bstack, rxquantf172_loop521, rx168_pos, rx168_rep
    goto rxquantf172_done522
  rxquantf172_loop521:
    set $I12, rx168_rep
    nqp_rxmark rx168_bstack, rxconj173_fail524, rx168_pos, 0
    goto rxconj173_first525
  rxconj173_fail524:
    goto rx168_fail510
  rxconj173_first525:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail510
    substr $S10, rx168_tgt, rx168_pos, 1
    eq $S10, ucs4:"]", rx168_fail510
    add rx168_pos, 1
    nqp_rxpeek $I19, rx168_bstack, rxconj173_fail524
    inc $I19
    set $I11, rx168_bstack[$I19]
    nqp_rxmark rx168_bstack, rxconj173_fail524, $I11, rx168_pos
    set rx168_pos, $I11
    ge rx168_pos, rx168_eos, rx168_fail510
    substr $S11, rx168_tgt, rx168_pos, 1
    index $I11, ucs4:",#", $S11
    ge $I11, 0, rx168_fail510
    inc rx168_pos
    nqp_rxpeek $I19, rx168_bstack, rxconj173_fail524
    inc $I19
    set $I11, rx168_bstack[$I19]
    inc $I19
    set $I12, rx168_bstack[$I19]
    ne rx168_pos, $I12, rx168_fail510
    set rx168_pos, $I11
    ge rx168_pos, rx168_eos, rx168_fail510
    add rx168_pos, 1
    set rx168_rep, $I12
    inc rx168_rep
    nqp_rxmark rx168_bstack, rxquantf172_loop521, rx168_pos, rx168_rep
  rxquantf172_done522:
    ge rx168_pos, rx168_eos, rx168_fail510
    substr $S11, rx168_tgt, rx168_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx168_fail510
    inc rx168_pos
    .const 'Sub' $P5001 = 'cuid_45_1351021533.614' 
    capture_lex $P5001
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!pos", rx168_pos
    $P11 = rx168_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx168_curclass, "$!pos"
    lt $I11, 0, rx168_fail510
  alt170_end517:
    rx168_cur."!cursor_pass"(rx168_pos, "charname", 'backtrack'=>1)
    .return (rx168_cur)
  rx168_restart509:
    repr_get_attr_obj rx168_cstack, rx168_cur, rx168_curclass, "$!cstack"
  rx168_fail510:
    unless rx168_bstack, rx168_done508
    pop $I19, rx168_bstack
    if_null rx168_cstack, rx168_cstack_done513
    unless rx168_cstack, rx168_cstack_done513
    dec $I19
    set $P11, rx168_cstack[$I19]
  rx168_cstack_done513:
    pop rx168_rep, rx168_bstack
    pop rx168_pos, rx168_bstack
    pop $I19, rx168_bstack
    lt rx168_pos, -1, rx168_done508
    lt rx168_pos, 0, rx168_fail510
    eq $I19, 0, rx168_fail510
    nqp_islist $I20, rx168_cstack
    unless $I20, rx168_jump511
    elements $I18, rx168_bstack
    le $I18, 0, rx168_cut512
    dec $I18
    set $I18, rx168_bstack[$I18]
  rx168_cut512:
    assign rx168_cstack, $I18
  rx168_jump511:
    jump $I19
  rx168_done508:
    rx168_cur."!cursor_fail"()
    .return (rx168_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_45_1351021533.614") :anon :lex :outer("cuid_44_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
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
    eq $I19, 1, rx174_restart528
    gt rx174_pos, rx174_eos, rx174_fail529
    repr_get_attr_int $I11, self, rx174_curclass, "$!from"
    ne $I11, -1, rxscan175_done535
    goto rxscan175_scan534
  rxscan175_loop533:
    inc rx174_pos
    gt rx174_pos, rx174_eos, rx174_fail529
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!from", rx174_pos
  rxscan175_scan534:
    nqp_rxmark rx174_bstack, rxscan175_loop533, rx174_pos, 0
  rxscan175_done535:
    nqp_rxmark rx174_bstack, rxquantr176_done537, rx174_pos, 0
  rxquantr176_loop536:
    ge rx174_pos, rx174_eos, rx174_fail529
    is_cclass $I11, .CCLASS_WHITESPACE, rx174_tgt, rx174_pos
    unless $I11, rx174_fail529
    add rx174_pos, 1
    nqp_rxpeek $I19, rx174_bstack, rxquantr176_done537
    inc $I19
    inc $I19
    set rx174_rep, rx174_bstack[$I19]
    nqp_rxcommit rx174_bstack, rxquantr176_done537
    inc rx174_rep
    nqp_rxmark rx174_bstack, rxquantr176_done537, rx174_pos, rx174_rep
    goto rxquantr176_loop536
  rxquantr176_done537:
  alt177_0539:
    nqp_rxmark rx174_bstack, alt177_1540, rx174_pos, 0
    add $I11, rx174_pos, 1
    gt $I11, rx174_eos, rx174_fail529
    substr $S10, rx174_tgt, rx174_pos, 1
    ne $S10, ucs4:"]", rx174_fail529
    add rx174_pos, 1
    goto alt177_end538
  alt177_1540:
    ge rx174_pos, rx174_eos, rx174_fail529
    substr $S11, rx174_tgt, rx174_pos, 1
    index $I11, ucs4:",#", $S11
    lt $I11, 0, rx174_fail529
    inc rx174_pos
  alt177_end538:
    rx174_cur."!cursor_pass"(rx174_pos, 'backtrack'=>1)
    .return (rx174_cur)
  rx174_restart528:
    repr_get_attr_obj rx174_cstack, rx174_cur, rx174_curclass, "$!cstack"
  rx174_fail529:
    unless rx174_bstack, rx174_done527
    pop $I19, rx174_bstack
    if_null rx174_cstack, rx174_cstack_done532
    unless rx174_cstack, rx174_cstack_done532
    dec $I19
    set $P11, rx174_cstack[$I19]
  rx174_cstack_done532:
    pop rx174_rep, rx174_bstack
    pop rx174_pos, rx174_bstack
    pop $I19, rx174_bstack
    lt rx174_pos, -1, rx174_done527
    lt rx174_pos, 0, rx174_fail529
    eq $I19, 0, rx174_fail529
    nqp_islist $I20, rx174_cstack
    unless $I20, rx174_jump530
    elements $I18, rx174_bstack
    le $I18, 0, rx174_cut531
    dec $I18
    set $I18, rx174_bstack[$I18]
  rx174_cut531:
    assign rx174_cstack, $I18
  rx174_jump530:
    jump $I19
  rx174_done527:
    rx174_cur."!cursor_fail"()
    .return (rx174_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_46_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 120
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    .local pmc rx178_curclass
    .local pmc rx178_bstack
    .local pmc rx178_cstack
    (rx178_cur, rx178_tgt, rx178_pos, rx178_curclass, rx178_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx178_cur
    length rx178_eos, rx178_tgt
    eq $I19, 1, rx178_restart543
    gt rx178_pos, rx178_eos, rx178_fail544
    repr_get_attr_int $I11, self, rx178_curclass, "$!from"
    ne $I11, -1, rxscan179_done550
    goto rxscan179_scan549
  rxscan179_loop548:
    inc rx178_pos
    gt rx178_pos, rx178_eos, rx178_fail544
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!from", rx178_pos
  rxscan179_scan549:
    nqp_rxmark rx178_bstack, rxscan179_loop548, rx178_pos, 0
  rxscan179_done550:
    nqp_rxmark rx178_bstack, rxquantr180_done552, -1, 0
  rxquantr180_loop551:
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!pos", rx178_pos
    $P11 = rx178_cur."ws"()
    repr_get_attr_int $I11, $P11, rx178_curclass, "$!pos"
    lt $I11, 0, rx178_fail544
    repr_get_attr_int rx178_pos, $P11, rx178_curclass, "$!pos"
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!pos", rx178_pos
    $P11 = rx178_cur."charname"()
    repr_get_attr_int $I11, $P11, rx178_curclass, "$!pos"
    lt $I11, 0, rx178_fail544
    nqp_rxmark rx178_bstack, rxsubrule182_pass554, -1, 0
  rxsubrule182_pass554:
    rx178_cstack = rx178_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx178_pos, $P11, rx178_curclass, "$!pos"
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!pos", rx178_pos
    $P11 = rx178_cur."ws"()
    repr_get_attr_int $I11, $P11, rx178_curclass, "$!pos"
    lt $I11, 0, rx178_fail544
    repr_get_attr_int rx178_pos, $P11, rx178_curclass, "$!pos"
    nqp_rxpeek $I19, rx178_bstack, rxquantr180_done552
    inc $I19
    inc $I19
    set rx178_rep, rx178_bstack[$I19]
    nqp_rxcommit rx178_bstack, rxquantr180_done552
    inc rx178_rep
    nqp_rxmark rx178_bstack, rxquantr180_done552, rx178_pos, rx178_rep
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail544
    substr $S10, rx178_tgt, rx178_pos, 1
    ne $S10, ucs4:",", rx178_fail544
    add rx178_pos, 1
    goto rxquantr180_loop551
  rxquantr180_done552:
    rx178_cur."!cursor_pass"(rx178_pos, "charnames", 'backtrack'=>1)
    .return (rx178_cur)
  rx178_restart543:
    repr_get_attr_obj rx178_cstack, rx178_cur, rx178_curclass, "$!cstack"
  rx178_fail544:
    unless rx178_bstack, rx178_done542
    pop $I19, rx178_bstack
    if_null rx178_cstack, rx178_cstack_done547
    unless rx178_cstack, rx178_cstack_done547
    dec $I19
    set $P11, rx178_cstack[$I19]
  rx178_cstack_done547:
    pop rx178_rep, rx178_bstack
    pop rx178_pos, rx178_bstack
    pop $I19, rx178_bstack
    lt rx178_pos, -1, rx178_done542
    lt rx178_pos, 0, rx178_fail544
    eq $I19, 0, rx178_fail544
    nqp_islist $I20, rx178_cstack
    unless $I20, rx178_jump545
    elements $I18, rx178_bstack
    le $I18, 0, rx178_cut546
    dec $I18
    set $I18, rx178_bstack[$I18]
  rx178_cut546:
    assign rx178_cstack, $I18
  rx178_jump545:
    jump $I19
  rx178_done542:
    rx178_cur."!cursor_fail"()
    .return (rx178_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_47_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 121
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
    eq $I19, 1, rx184_restart558
    gt rx184_pos, rx184_eos, rx184_fail559
    repr_get_attr_int $I11, self, rx184_curclass, "$!from"
    ne $I11, -1, rxscan185_done565
    goto rxscan185_scan564
  rxscan185_loop563:
    inc rx184_pos
    gt rx184_pos, rx184_eos, rx184_fail559
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!from", rx184_pos
  rxscan185_scan564:
    nqp_rxmark rx184_bstack, rxscan185_loop563, rx184_pos, 0
  rxscan185_done565:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt186_0567
    nqp_push_label $P11, alt186_1569
    nqp_push_label $P11, alt186_2576
    nqp_push_label $P11, alt186_3577
    nqp_rxmark rx184_bstack, alt186_end566, -1, 0
    rx184_cur."!alt"(rx184_pos, "alt_nfa__9_1351021533.996", $P11)
    goto rx184_fail559
  alt186_0567:
    add $I11, rx184_pos, 1
    gt $I11, rx184_eos, rx184_fail559
    substr $S10, rx184_tgt, rx184_pos, 1
    ne $S10, ucs4:"[", rx184_fail559
    add rx184_pos, 1
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail559
    nqp_rxmark rx184_bstack, rxsubrule187_pass568, -1, 0
  rxsubrule187_pass568:
    rx184_cstack = rx184_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    add $I11, rx184_pos, 1
    gt $I11, rx184_eos, rx184_fail559
    substr $S10, rx184_tgt, rx184_pos, 1
    ne $S10, ucs4:"]", rx184_fail559
    add rx184_pos, 1
    goto alt186_end566
  alt186_1569:
    nqp_rxmark rx184_bstack, rxquantr188_done571, -1, 0
  rxquantr188_loop570:
    ge rx184_pos, rx184_eos, rx184_fail559
    is_cclass $I11, .CCLASS_NUMERIC, rx184_tgt, rx184_pos
    unless $I11, rx184_fail559
    add rx184_pos, 1
    nqp_rxpeek $I19, rx184_bstack, rxquantr188_done571
    inc $I19
    inc $I19
    set rx184_rep, rx184_bstack[$I19]
    nqp_rxcommit rx184_bstack, rxquantr188_done571
    inc rx184_rep
    nqp_rxmark rx184_bstack, rxquantr188_done571, rx184_pos, rx184_rep
    goto rxquantr188_loop570
  rxquantr188_done571:
    nqp_rxmark rx184_bstack, rxquantr189_done573, rx184_pos, 0
  rxquantr189_loop572:
    add $I11, rx184_pos, 1
    gt $I11, rx184_eos, rx184_fail559
    substr $S10, rx184_tgt, rx184_pos, 1
    ne $S10, ucs4:"_", rx184_fail559
    add rx184_pos, 1
    nqp_rxmark rx184_bstack, rxquantr190_done575, -1, 0
  rxquantr190_loop574:
    ge rx184_pos, rx184_eos, rx184_fail559
    is_cclass $I11, .CCLASS_NUMERIC, rx184_tgt, rx184_pos
    unless $I11, rx184_fail559
    add rx184_pos, 1
    nqp_rxpeek $I19, rx184_bstack, rxquantr190_done575
    inc $I19
    inc $I19
    set rx184_rep, rx184_bstack[$I19]
    nqp_rxcommit rx184_bstack, rxquantr190_done575
    inc rx184_rep
    nqp_rxmark rx184_bstack, rxquantr190_done575, rx184_pos, rx184_rep
    goto rxquantr190_loop574
  rxquantr190_done575:
    nqp_rxpeek $I19, rx184_bstack, rxquantr189_done573
    inc $I19
    inc $I19
    set rx184_rep, rx184_bstack[$I19]
    nqp_rxcommit rx184_bstack, rxquantr189_done573
    inc rx184_rep
    nqp_rxmark rx184_bstack, rxquantr189_done573, rx184_pos, rx184_rep
    goto rxquantr189_loop572
  rxquantr189_done573:
    goto alt186_end566
  alt186_2576:
    ge rx184_pos, rx184_eos, rx184_fail559
    substr $S11, rx184_tgt, rx184_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx184_fail559
    inc rx184_pos
    goto alt186_end566
  alt186_3577:
    repr_bind_attr_int rx184_cur, rx184_curclass, "$!pos", rx184_pos
    $P11 = rx184_cur."panic"("Unrecognized \\\\c character")
    repr_get_attr_int $I11, $P11, rx184_curclass, "$!pos"
    lt $I11, 0, rx184_fail559
    repr_get_attr_int rx184_pos, $P11, rx184_curclass, "$!pos"
    goto alt186_end566
  alt186_end566:
    nqp_rxcommit rx184_bstack, alt186_end566
    rx184_cur."!cursor_pass"(rx184_pos, "charspec", 'backtrack'=>1)
    .return (rx184_cur)
  rx184_restart558:
    repr_get_attr_obj rx184_cstack, rx184_cur, rx184_curclass, "$!cstack"
  rx184_fail559:
    unless rx184_bstack, rx184_done557
    pop $I19, rx184_bstack
    if_null rx184_cstack, rx184_cstack_done562
    unless rx184_cstack, rx184_cstack_done562
    dec $I19
    set $P11, rx184_cstack[$I19]
  rx184_cstack_done562:
    pop rx184_rep, rx184_bstack
    pop rx184_pos, rx184_bstack
    pop $I19, rx184_bstack
    lt rx184_pos, -1, rx184_done557
    lt rx184_pos, 0, rx184_fail559
    eq $I19, 0, rx184_fail559
    nqp_islist $I20, rx184_cstack
    unless $I20, rx184_jump560
    elements $I18, rx184_bstack
    le $I18, 0, rx184_cut561
    dec $I18
    set $I18, rx184_bstack[$I18]
  rx184_cut561:
    assign rx184_cstack, $I18
  rx184_jump560:
    jump $I19
  rx184_done557:
    rx184_cur."!cursor_fail"()
    .return (rx184_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_48_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    if haz_param_1, default579
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5001
  default579:
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
.sub "panic" :subid("cuid_49_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 317
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
.annotate 'line', 318
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."pos"()
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["NQPCursor"]
    unless_null $P5006, fallback580
    nqp_get_sc_object $P5011, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5010, $P5011
    set $P5009, $P5010["NQPCursor"]
    unless_null $P5009, vivi_192581
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5012
  vivi_192581:
    set $P5006, $P5009
  fallback580:
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target"
    box $P5013, $S5001
    set $P102, $P5013
.annotate 'line', 320
    _lex_param_1."push"(" at line ")
.annotate 'line', 321
    nqp_get_sc_object $P5017, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5016, $P5017, "HLL"
    get_who $P5015, $P5016
    set $P5014, $P5015["Compiler"]
    unless_null $P5014, fallback582
    nqp_get_sc_object $P5018, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5018
  fallback582:
    $P5019 = $P5014."lineof"($P102, $P101)
    set $N5002, $P5019
    set $N5003, 1
    add $N5001, $N5002, $N5003
    _lex_param_1."push"($N5001)
.annotate 'line', 322
    _lex_param_1."push"(", near \"")
.annotate 'line', 323
    set $S5004, $P102
    set $I5001, $P101
    substr $S5003, $S5004, $I5001, 10
    escape $S5002, $S5003
    _lex_param_1."push"($S5002)
.annotate 'line', 324
    _lex_param_1."push"("\"")
    join $S5005, "", _lex_param_1
    box $P5020, $S5005
    die $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_50_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 328
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    if haz_param_2, default585
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5005
  default585:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless193_end584 
.annotate 'line', 329

                $P5001 = getinterp
                $P5001 = $P5001['sub';1]
            
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless193_end584:
.annotate 'line', 335
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
.sub "peek_delimiters" :subid("cuid_51_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 348
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 

            .local pmc self
            self = find_lex 'self'
            .local string target
            target = find_lex '$target'
            .local int pos
            pos = find_lex '$pos'

            .local string brackets, start, stop
            $P0 = find_lex '$brackets'
            brackets = $P0

            # peek at the next character
            start = substr target, pos, 1
            # colon and word characters aren't valid delimiters
            if start == ':' goto err_colon_delim
            $I0 = is_cclass .CCLASS_WORD, start, 0
            if $I0 goto err_word_delim
            $I0 = is_cclass .CCLASS_WHITESPACE, start, 0
            if $I0 goto err_ws_delim

            # assume stop delim is same as start, for the moment
            stop = start

            # see if we have an opener or closer
            $I0 = index brackets, start
            if $I0 < 0 goto bracket_end
            # if it's a closing bracket, that's an error also
            $I1 = $I0 % 2
            if $I1 goto err_close
            # it's an opener, so get the closing bracket
            inc $I0
            stop = substr brackets, $I0, 1

            # see if the opening bracket is repeated
            .local int len
            len = 0
          bracket_loop:
            inc pos
            inc len
            $S0 = substr target, pos, 1
            if $S0 == start goto bracket_loop
            if len == 1 goto bracket_end
            start = repeat start, len
            stop = repeat stop, len
          bracket_end:
            .return (start, stop, pos)

          err_colon_delim:
            self.'panic'('Colons may not be used to delimit quoting constructs')
          err_word_delim:
            self.'panic'('Alphanumeric character is not allowed as a delimiter')
          err_ws_delim:
            self.'panic'('Whitespace character is not allowed as a delimiter')
          err_close:
            self.'panic'('Use of a closing delimiter for an opener is reserved')
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_52_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5024 = 'cuid_176_1351021533.614' 
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
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    set self, _lex_param_0
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    .local pmc rx194_curclass
    .local pmc rx194_bstack
    .local pmc rx194_cstack
    (rx194_cur, rx194_tgt, rx194_pos, rx194_curclass, rx194_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx194_cur
    length rx194_eos, rx194_tgt
    eq $I19, 1, rx194_restart588
    gt rx194_pos, rx194_eos, rx194_fail589
    repr_get_attr_int $I11, self, rx194_curclass, "$!from"
    ne $I11, -1, rxscan195_done595
    goto rxscan195_scan594
  rxscan195_loop593:
    inc rx194_pos
    gt rx194_pos, rx194_eos, rx194_fail589
    repr_bind_attr_int rx194_cur, rx194_curclass, "$!from", rx194_pos
  rxscan195_scan594:
    nqp_rxmark rx194_bstack, rxscan195_loop593, rx194_pos, 0
  rxscan195_done595:
    repr_bind_attr_int rx194_cur, rx194_curclass, "$!pos", rx194_pos
    store_lex unicode:"$\x{a2}", rx194_cur
    unless_null $P101, fallback596
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["%QUOTEMOD"]
    unless_null $P5004, fallback597
    nqp_get_sc_object $P5008, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%QUOTEMOD"], $P5009
    set $P5004, $P5009
  fallback597:
    unless_null $P5004, vivi_196598
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5004, $P5010
  vivi_196598:
    set $P101, $P5004
  fallback596:
    repr_bind_attr_int rx194_cur, rx194_curclass, "$!pos", rx194_pos
    store_lex unicode:"$\x{a2}", rx194_cur
    unless_null $P102, fallback599
    nqp_get_sc_object $P5013, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5012, $P5013
    set $P5011, $P5012["$QUOTE_START"]
    unless_null $P5011, fallback600
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5014
  fallback600:
    unless_null $P5011, vivi_197601
    die "Contextual $*QUOTE_START not found"
    box $P5015, "Contextual $*QUOTE_START not found"
    set $P5011, $P5015
  vivi_197601:
    set $P102, $P5011
  fallback599:
    repr_bind_attr_int rx194_cur, rx194_curclass, "$!pos", rx194_pos
    store_lex unicode:"$\x{a2}", rx194_cur
    unless_null $P103, fallback602
    nqp_get_sc_object $P5018, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5017, $P5018
    set $P5016, $P5017["$QUOTE_STOP"]
    unless_null $P5016, fallback603
    nqp_get_sc_object $P5019, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5016, $P5019
  fallback603:
    unless_null $P5016, vivi_198604
    die "Contextual $*QUOTE_STOP not found"
    box $P5020, "Contextual $*QUOTE_STOP not found"
    set $P5016, $P5020
  vivi_198604:
    set $P103, $P5016
  fallback602:
    repr_bind_attr_int rx194_cur, rx194_curclass, "$!pos", rx194_pos
    store_lex unicode:"$\x{a2}", rx194_cur
    $P5021 = $P104."MATCH"()
    set $P105, $P5021
    .const 'Sub' $P5022 = 'cuid_176_1351021533.614' 
    capture_lex $P5022
    $P5023 = $P5022()
    repr_bind_attr_int rx194_cur, rx194_curclass, "$!pos", rx194_pos
    $P11 = rx194_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx194_curclass, "$!pos"
    lt $I11, 0, rx194_fail589
    nqp_rxmark rx194_bstack, rxsubrule199_pass605, -1, 0
  rxsubrule199_pass605:
    rx194_cstack = rx194_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx194_pos, $P11, rx194_curclass, "$!pos"
    rx194_cur."!cursor_pass"(rx194_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx194_cur)
  rx194_restart588:
    repr_get_attr_obj rx194_cstack, rx194_cur, rx194_curclass, "$!cstack"
  rx194_fail589:
    unless rx194_bstack, rx194_done587
    pop $I19, rx194_bstack
    if_null rx194_cstack, rx194_cstack_done592
    unless rx194_cstack, rx194_cstack_done592
    dec $I19
    set $P11, rx194_cstack[$I19]
  rx194_cstack_done592:
    pop rx194_rep, rx194_bstack
    pop rx194_pos, rx194_bstack
    pop $I19, rx194_bstack
    lt rx194_pos, -1, rx194_done587
    lt rx194_pos, 0, rx194_fail589
    eq $I19, 0, rx194_fail589
    nqp_islist $I20, rx194_cstack
    unless $I20, rx194_jump590
    elements $I18, rx194_bstack
    le $I18, 0, rx194_cut591
    dec $I18
    set $I18, rx194_bstack[$I18]
  rx194_cut591:
    assign rx194_cstack, $I18
  rx194_jump590:
    jump $I19
  rx194_done587:
    rx194_cur."!cursor_fail"()
    .return (rx194_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1351021533.614") :anon :lex :outer("cuid_52_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 412

            
                .local pmc self, cur_class, args
                self = find_lex 'self'
                cur_class = find_lex '$cursor_class'
                args = find_lex '@args'

                .local pmc quotemod, true
                quotemod = find_lex '%*QUOTEMOD'
                true = box 1

              args_loop:
                unless args goto args_done
                .local string mod
                mod = shift args
                mod = substr mod, 1
                quotemod[mod] = true
                if mod == 'qq' goto opt_qq
                if mod == 'b' goto opt_b
                goto args_loop
              opt_qq:
                quotemod['s'] = true
                quotemod['a'] = true
                quotemod['h'] = true
                quotemod['f'] = true
                quotemod['c'] = true
                quotemod['b'] = true
              opt_b:
                quotemod['q'] = true
                goto args_loop
              args_done:

                .local pmc start, stop
                .local string target
                .local int pos
                target = repr_get_attr_str self, cur_class, '$!target'
                pos = repr_get_attr_int self, cur_class, '$!pos'
                (start, stop) = self.'peek_delimiters'(target, pos)
                store_lex '$*QUOTE_START', start
                store_lex '$*QUOTE_STOP', stop
            
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_53_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 457
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_177_1351021533.614' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    .local pmc rx200_curclass
    .local pmc rx200_bstack
    .local pmc rx200_cstack
    (rx200_cur, rx200_tgt, rx200_pos, rx200_curclass, rx200_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx200_cur
    length rx200_eos, rx200_tgt
    eq $I19, 1, rx200_restart608
    gt rx200_pos, rx200_eos, rx200_fail609
    repr_get_attr_int $I11, self, rx200_curclass, "$!from"
    ne $I11, -1, rxscan201_done615
    goto rxscan201_scan614
  rxscan201_loop613:
    inc rx200_pos
    gt rx200_pos, rx200_eos, rx200_fail609
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!from", rx200_pos
  rxscan201_scan614:
    nqp_rxmark rx200_bstack, rxscan201_loop613, rx200_pos, 0
  rxscan201_done615:
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!pos", rx200_pos
    store_lex unicode:"$\x{a2}", rx200_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_177_1351021533.614' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx200_fail609
    rx200_cur."!cursor_pass"(rx200_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx200_cur)
  rx200_restart608:
    repr_get_attr_obj rx200_cstack, rx200_cur, rx200_curclass, "$!cstack"
  rx200_fail609:
    unless rx200_bstack, rx200_done607
    pop $I19, rx200_bstack
    if_null rx200_cstack, rx200_cstack_done612
    unless rx200_cstack, rx200_cstack_done612
    dec $I19
    set $P11, rx200_cstack[$I19]
  rx200_cstack_done612:
    pop rx200_rep, rx200_bstack
    pop rx200_pos, rx200_bstack
    pop $I19, rx200_bstack
    lt rx200_pos, -1, rx200_done607
    lt rx200_pos, 0, rx200_fail609
    eq $I19, 0, rx200_fail609
    nqp_islist $I20, rx200_cstack
    unless $I20, rx200_jump610
    elements $I18, rx200_bstack
    le $I18, 0, rx200_cut611
    dec $I18
    set $I18, rx200_bstack[$I18]
  rx200_cut611:
    assign rx200_cstack, $I18
  rx200_jump610:
    jump $I19
  rx200_done607:
    rx200_cur."!cursor_fail"()
    .return (rx200_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1351021533.614") :anon :lex :outer("cuid_53_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 458

    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback616
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5004, $P5005
    set $P5003, $P5004["%QUOTEMOD"]
    unless_null $P5003, fallback617
    nqp_get_sc_object $P5007, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%QUOTEMOD"], $P5008
    set $P5003, $P5008
  fallback617:
    unless_null $P5003, vivi_202618
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5003, $P5009
  vivi_202618:
    set $P5002, $P5003
  fallback616:
    find_lex $S5001, "$mod"
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback619
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5010
  fallback619:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_54_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 461
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
.sub "stopper" :subid("cuid_55_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 484
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
.sub "split_words" :subid("cuid_56_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 507
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$words", _lex_param_1 

            .include 'src/Regex/constants.pir'
            .local string words
            words = find_lex '$words'
            .local int pos, eos
            .local pmc result
            pos = 0
            eos = length words
            result = new ['ResizablePMCArray']
          split_loop:
            pos = find_not_cclass .CCLASS_WHITESPACE, words, pos, eos
            unless pos < eos goto split_done
            $I0 = find_cclass .CCLASS_WHITESPACE, words, pos, eos
            $I1 = $I0 - pos
            $S0 = substr words, pos, $I1
            push result, $S0
            pos = $I0
            goto split_loop
          split_done:
            .return (result)
        
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_57_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 539
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    if haz_param_3, default620
    set $S5001, ""
    set _lex_param_1, $S5001
  default620:
    .lex "self", _lex_param_0 
    .lex "$preclim", _lex_param_1 

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

            .local string preclim
            preclim = find_lex '$preclim'
            
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

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec < preclim goto term_done
            inassoc = inO['assoc']

            $P0 = inO['sub']
            if null $P0 goto subprec_done
            inO['prec'] = $P0
          subprec_done:

          reduce_loop:
            unless opstack goto reduce_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['O']
            opprec = $P0['prec']
            unless opprec > inprec goto reduce_gt_done
            self.'EXPR_reduce'(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
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
.sub "EXPR_reduce" :subid("cuid_58_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 725
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
.sub "ternary" :subid("cuid_59_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 811
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    set $P5001, _lex_param_1[1]
    unless_null $P5001, fallback621
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5002
  fallback621:
    set _lex_param_1[2], $P5001
    set $P5004, _lex_param_1["infix"]
    unless_null $P5004, fallback622
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5005
  fallback622:
    set $P5003, $P5004["EXPR"]
    unless_null $P5003, fallback623
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5006
  fallback623:
    set _lex_param_1[1], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_60_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 816
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
.annotate 'line', 824
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!cursor_start"()
    set $P102, $P5005
.annotate 'line', 825
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."pos"()
    $P102."!cursor_pass"($P5007)
    set $P101[_lex_param_1], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_61_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 829
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
    set $P5004, $P101[_lex_param_1]
    unless_null $P5004, fallback624
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5005
  fallback624:
    set $P102, $P5004
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["NQPCursor"]
    unless_null $P5006, fallback629
    nqp_get_sc_object $P5011, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5010, $P5011
    set $P5009, $P5010["NQPCursor"]
    unless_null $P5009, vivi_205630
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5012
  vivi_205630:
    set $P5006, $P5009
  fallback629:
    type_check $I5001, $P102, $P5006
    set $I5003, $I5001
    unless $I5001 goto if204_end628 
.annotate 'line', 838
    $P5013 = $P102."pos"()
    set $N5001, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."pos"()
    set $N5002, $P5015
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if204_end628:
    if $I5003 goto unless203_end626 
.annotate 'line', 839
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."!cursor_start"()
    set $P102, $P5017
  unless203_end626:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_62_1351021533.614") :anon :lex :outer("cuid_63_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$lang_cursor", $P101 
    .lex "$*ACTIONS", $P102 
    .lex "self", _lex_param_0 
    .lex "$lang", _lex_param_1 
    .lex "$regex", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
.annotate 'line', 845
    find_dynamic_lex $P5004, "%*LANG"
    unless_null $P5004, fallback631
    nqp_get_sc_object $P5007, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%LANG"]
    unless_null $P5005, fallback632
    nqp_get_sc_object $P5009, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%LANG"], $P5010
    set $P5005, $P5010
  fallback632:
    unless_null $P5005, vivi_206633
    die "Contextual %*LANG not found"
    box $P5011, "Contextual %*LANG not found"
    set $P5005, $P5011
  vivi_206633:
    set $P5004, $P5005
  fallback631:
    set $S5001, _lex_param_1
    set $P5003, $P5004[$S5001]
    unless_null $P5003, fallback634
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5012
  fallback634:
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."target"()
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."pos"()
    $P5017 = $P5003."!cursor_init"($P5014, $P5016 :named("p"))
    set $P101, $P5017
.annotate 'line', 846
    nqp_decontainerize $P5019, _lex_param_0
    get_how $P5018, $P5019
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5018."traced"($P5020)
    unless $P5021 goto if207_end636 
.annotate 'line', 847
    get_how $P5022, $P101
    nqp_decontainerize $P5024, _lex_param_0
    get_how $P5023, $P5024
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5023."trace_depth"($P5025)
    $P5027 = $P5022."trace-on"($P101, $P5026)
  if207_end636:
    find_dynamic_lex $P5029, "%*LANG"
    unless_null $P5029, fallback637
    nqp_get_sc_object $P5032, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5031, $P5032
    set $P5030, $P5031["%LANG"]
    unless_null $P5030, fallback638
    nqp_get_sc_object $P5034, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%LANG"], $P5035
    set $P5030, $P5035
  fallback638:
    unless_null $P5030, vivi_208639
    die "Contextual %*LANG not found"
    box $P5036, "Contextual %*LANG not found"
    set $P5030, $P5036
  vivi_208639:
    set $P5029, $P5030
  fallback637:
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5028, $P5029[$S5002]
    unless_null $P5028, fallback640
    nqp_get_sc_object $P5037, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5028, $P5037
  fallback640:
    set $P102, $P5028
.annotate 'line', 850
    set $S5004, _lex_param_2
    $P5038 = $P101.$S5004()
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1351021533.614") :anon :lex :outer("cuid_1_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 855
    .const 'Sub' $P5037 = 'cuid_178_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_64_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_65_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_66_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1351021533.614' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1351021533.614' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_178_1351021533.614' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_64_1351021533.614' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_65_1351021533.614' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_66_1351021533.614' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_67_1351021533.614' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_68_1351021533.614' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_69_1351021533.614' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_70_1351021533.614' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_71_1351021533.614' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_72_1351021533.614' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_73_1351021533.614' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_74_1351021533.614' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_75_1351021533.614' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_76_1351021533.614' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_77_1351021533.614' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_78_1351021533.614' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_79_1351021533.614' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_80_1351021533.614' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_81_1351021533.614' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_82_1351021533.614' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_83_1351021533.614' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_84_1351021533.614' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_85_1351021533.614' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_86_1351021533.614' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_87_1351021533.614' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_88_1351021533.614' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_89_1351021533.614' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_90_1351021533.614' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_91_1351021533.614' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_92_1351021533.614' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_93_1351021533.614' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_94_1351021533.614' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_95_1351021533.614' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_96_1351021533.614' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_178_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 856
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    if $I5002 goto unless209_end642 
.annotate 'line', 858
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless209_end642:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_64_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 863
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_180_1351021533.614' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if210_else643 
    .const 'Sub' $P5001 = 'cuid_180_1351021533.614' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if210_end644
  if210_else643:
.annotate 'line', 870
.annotate 'line', 871
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if210_end644:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1351021533.614") :anon :lex :outer("cuid_64_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 864
    .const 'Sub' $P5009 = 'cuid_179_1351021533.614' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next645:
    unless $P5005, for_done647
    shift $P5008, $P5005
  for_redo646:
    .const 'Sub' $P5007 = 'cuid_179_1351021533.614' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next645
  for_done647:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1351021533.614") :anon :lex :outer("cuid_180_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 866
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5002, $P5001
.annotate 'line', 867
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
.sub "CTXSAVE" :subid("cuid_65_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 875
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 876
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Stmts"]
    unless_null $P5001, fallback648
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5005
  fallback648:
.annotate 'line', 877
    nqp_get_sc_object $P5009, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Op"]
    unless_null $P5006, fallback649
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5010
  fallback649:
.annotate 'line', 879
    nqp_get_sc_object $P5014, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Var"]
    unless_null $P5011, fallback650
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5015
  fallback650:
    $P5016 = $P5011."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 880
    nqp_get_sc_object $P5020, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Var"]
    unless_null $P5017, fallback651
    nqp_get_sc_object $P5021, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5017, $P5021
  fallback651:
    $P5022 = $P5017."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5023 = $P5006."new"($P5016, $P5022, "bind" :named("op"))
.annotate 'line', 882
    nqp_get_sc_object $P5027, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["Op"]
    unless_null $P5024, fallback652
    nqp_get_sc_object $P5028, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5024, $P5028
  fallback652:
.annotate 'line', 884
    nqp_get_sc_object $P5032, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["Op"]
    unless_null $P5029, fallback653
    nqp_get_sc_object $P5033, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5029, $P5033
  fallback653:
.annotate 'line', 886
    nqp_get_sc_object $P5037, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["Var"]
    unless_null $P5034, fallback654
    nqp_get_sc_object $P5038, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5034, $P5038
  fallback654:
    $P5039 = $P5034."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5040 = $P5029."new"($P5039, "isnull" :named("op"))
.annotate 'line', 888
    nqp_get_sc_object $P5044, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5043, $P5044, "QAST"
    get_who $P5042, $P5043
    set $P5041, $P5042["Op"]
    unless_null $P5041, fallback655
    nqp_get_sc_object $P5045, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5041, $P5045
  fallback655:
.annotate 'line', 890
    nqp_get_sc_object $P5049, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5048, $P5049, "QAST"
    get_who $P5047, $P5048
    set $P5046, $P5047["VM"]
    unless_null $P5046, fallback656
    nqp_get_sc_object $P5050, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5046, $P5050
  fallback656:
.annotate 'line', 892
    nqp_get_sc_object $P5054, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5053, $P5054, "QAST"
    get_who $P5052, $P5053
    set $P5051, $P5052["Var"]
    unless_null $P5051, fallback657
    nqp_get_sc_object $P5055, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5051, $P5055
  fallback657:
    $P5056 = $P5051."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 893
    nqp_get_sc_object $P5060, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5059, $P5060, "QAST"
    get_who $P5058, $P5059
    set $P5057, $P5058["SVal"]
    unless_null $P5057, fallback658
    nqp_get_sc_object $P5061, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5057, $P5061
  fallback658:
    $P5062 = $P5057."new"("ctxsave" :named("value"))
    $P5063 = $P5046."new"($P5056, $P5062, "can IPs" :named("pirop"))
.annotate 'line', 895
    nqp_get_sc_object $P5067, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5066, $P5067, "QAST"
    get_who $P5065, $P5066
    set $P5064, $P5065["Op"]
    unless_null $P5064, fallback659
    nqp_get_sc_object $P5068, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5064, $P5068
  fallback659:
.annotate 'line', 897
    nqp_get_sc_object $P5072, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5071, $P5072, "QAST"
    get_who $P5070, $P5071
    set $P5069, $P5070["Var"]
    unless_null $P5069, fallback660
    nqp_get_sc_object $P5073, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5069, $P5073
  fallback660:
    $P5074 = $P5069."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5075 = $P5064."new"($P5074, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5076 = $P5041."new"($P5063, $P5075, "if" :named("op"))
    $P5077 = $P5024."new"($P5040, $P5076, "unless" :named("op"))
    $P5078 = $P5001."new"($P5023, $P5077)
    .return ($P5078) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_66_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 901
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5022 = 'cuid_181_1351021533.614' 
    capture_lex $P5022 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    find_dynamic_lex $P5004, "%*COMPILING"
    unless_null $P5004, fallback661
    nqp_get_sc_object $P5007, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%COMPILING"]
    unless_null $P5005, fallback662
    nqp_get_sc_object $P5009, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%COMPILING"], $P5010
    set $P5005, $P5010
  fallback662:
    unless_null $P5005, vivi_211663
    die "Contextual %*COMPILING not found"
    box $P5011, "Contextual %*COMPILING not found"
    set $P5005, $P5011
  vivi_211663:
    set $P5004, $P5005
  fallback661:
    set $P5003, $P5004["%?OPTIONS"]
    unless_null $P5003, fallback664
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5012
  fallback664:
    set $P5002, $P5003["outer_ctx"]
    unless_null $P5002, fallback665
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5013
  fallback665:
    set $P101, $P5002
    defined $I5001, $P101
    box $P5021, $I5001
    set $P5020, $P5021
    unless $I5001 goto if212_end667 
.annotate 'line', 903
.annotate 'line', 904
    $P5017 = $P101."lexpad_full"()
    set $P5014, $P5017
    iter $P5016, $P5017
  for_next668:
    unless $P5016, for_done670
    shift $P5019, $P5016
  for_redo669:
    .const 'Sub' $P5018 = 'cuid_181_1351021533.614' 
    capture_lex $P5018
    $P5014 = $P5018($P5019)
    goto for_next668
  for_done670:
    set $P5020, $P5014
  if212_end667:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1351021533.614") :anon :lex :outer("cuid_66_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 904
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 905
    find_lex $P5001, "$block"
    $P5002 = _lex_param_0."key"()
    $P5003 = _lex_param_0."value"()
    $P5004 = $P5001."symbol"($P5002, "lexical" :named("scope"), $P5003 :named("value"))
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_67_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 910
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5024 = 'cuid_182_1351021533.614' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_183_1351021533.614' 
    capture_lex $P5024 
    if haz_param_4, default706
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5023
  default706:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_671
    .lex "RETURN", $P102
    if _lex_param_2 goto unless213_end674 
.annotate 'line', 911
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless213_end674:
.annotate 'line', 912
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor675
    unless_null _lex_param_1, fallback676
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5007
  fallback676:
    set $P5006, _lex_param_1["OPER"]
    unless_null $P5006, fallback677
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5008
  fallback677:
    $P5009 = $P5006."ast"()
    set $P5004, $P5009
  defor675:
    set $P101, $P5004
    if $P101 goto unless214_end679 
    .const 'Sub' $P5010 = 'cuid_182_1351021533.614' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless214_end679:
    set $S5001, _lex_param_2
    iseq $I5002, $S5001, "POSTFIX"
    unless $I5002 goto if218_else698 
.annotate 'line', 925
.annotate 'line', 926
    set $P5012, _lex_param_1[0]
    unless_null $P5012, fallback700
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5013
  fallback700:
    $P5014 = $P5012."ast"()
    $P5015 = $P101."unshift"($P5014)
    goto if218_end699
  if218_else698:
.annotate 'line', 928
.annotate 'line', 929
    $P5019 = _lex_param_1."list"()
    set $P5016, $P5019
    iter $P5018, $P5019
  for_next703:
    unless $P5018, for_done705
    shift $P5021, $P5018
  for_redo704:
    .const 'Sub' $P5020 = 'cuid_183_1351021533.614' 
    capture_lex $P5020
    $P5016 = $P5020($P5021)
    goto for_next703
  for_done705:
  if218_end699:
.annotate 'line', 931
    $P5022 = _lex_param_1."!make"($P101)
    goto lexotic_672
  lexotic_671:
    .get_results ($P5022)
  lexotic_672:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1351021533.614") :anon :lex :outer("cuid_67_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 913
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 914
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback680
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback680:
    find_lex $P5007, "$/"
    $P5008 = $P5002."new"($P5007 :named("node"))
    store_lex "$past", $P5008
    find_lex $P5012, "$/"
    unless_null $P5012, fallback683
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5013
  fallback683:
    set $P5011, $P5012["OPER"]
    unless_null $P5011, fallback684
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5014
  fallback684:
    set $P5010, $P5011["O"]
    unless_null $P5010, fallback685
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5010, $P5015
  fallback685:
    set $P5009, $P5010["op"]
    unless_null $P5009, fallback686
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5016
  fallback686:
    unless $P5009 goto if215_end682 
.annotate 'line', 915
.annotate 'line', 916
    find_lex $P5017, "$past"
    find_lex $P5021, "$/"
    unless_null $P5021, fallback687
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5021, $P5022
  fallback687:
    set $P5020, $P5021["OPER"]
    unless_null $P5020, fallback688
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5020, $P5023
  fallback688:
    set $P5019, $P5020["O"]
    unless_null $P5019, fallback689
    nqp_get_sc_object $P5024, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5019, $P5024
  fallback689:
    set $P5018, $P5019["op"]
    unless_null $P5018, fallback690
    nqp_get_sc_object $P5025, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5025
  fallback690:
    set $S5001, $P5018
    $P5026 = $P5017."op"($S5001)
  if215_end682:
    find_lex $P5027, "$key"
    set $S5002, $P5027
    iseq $I5001, $S5002, "LIST"
    unless $I5001 goto if216_end692 
.annotate 'line', 918
    box $P5028, "infix"
    store_lex "$key", $P5028
  if216_end692:
    find_lex $P5029, "$key"
    set $S5007, $P5029
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5032, "$/"
    unless_null $P5032, fallback693
    nqp_get_sc_object $P5033, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5032, $P5033
  fallback693:
    set $P5031, $P5032["OPER"]
    unless_null $P5031, fallback694
    nqp_get_sc_object $P5034, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5031, $P5034
  fallback694:
    set $P5030, $P5031["sym"]
    unless_null $P5030, fallback695
    nqp_get_sc_object $P5035, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5030, $P5035
  fallback695:
    set $S5008, $P5030
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5036, $S5003
    set $P101, $P5036
.annotate 'line', 920
    find_lex $P5037, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5037."name"($S5009)
.annotate 'line', 921
    find_lex $P5038, "$past"
    $P5039 = $P5038."op"()
    set $P5042, $P5039
    if $P5039 goto unless217_end697 
.annotate 'line', 922
    find_lex $P5040, "$past"
    $P5041 = $P5040."op"("call")
    set $P5042, $P5041
  unless217_end697:
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1351021533.614") :anon :lex :outer("cuid_67_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 929
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if219_end702 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if219_end702:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_68_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 934
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback707
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback707:
    set $P5001, _lex_param_1["circumfix"]
    unless_null $P5001, fallback708
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback708:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_69_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 936
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback709
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback709:
    set $P5001, _lex_param_1["term"]
    unless_null $P5001, fallback710
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback710:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_70_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 937
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
.sub "nullterm_alt" :subid("cuid_71_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 938
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback711
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback711:
    set $P5001, _lex_param_1["term"]
    unless_null $P5001, fallback712
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback712:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_72_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback713
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback713:
    set $P5001, _lex_param_1["VALUE"]
    unless_null $P5001, fallback714
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback714:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_73_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 942
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
.sub "decint" :subid("cuid_74_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 944
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
.sub "hexint" :subid("cuid_75_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 945
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
.sub "octint" :subid("cuid_76_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 946
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
.sub "binint" :subid("cuid_77_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 947
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
.sub "quote_EXPR" :subid("cuid_78_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 949
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_185_1351021533.614' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 950
    unless_null _lex_param_1, fallback715
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5003
  fallback715:
    set $P5002, _lex_param_1["quote_delimited"]
    unless_null $P5002, fallback716
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5004
  fallback716:
    $P5005 = $P5002."ast"()
    set $P101, $P5005
    find_dynamic_lex $P5007, "%*QUOTEMOD"
    unless_null $P5007, fallback719
    nqp_get_sc_object $P5010, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5009, $P5010
    set $P5008, $P5009["%QUOTEMOD"]
    unless_null $P5008, fallback720
    nqp_get_sc_object $P5012, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5011, $P5012
    new $P5013, 'Hash'
    set $P5011["%QUOTEMOD"], $P5013
    set $P5008, $P5013
  fallback720:
    unless_null $P5008, vivi_221721
    die "Contextual %*QUOTEMOD not found"
    box $P5014, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5014
  vivi_221721:
    set $P5007, $P5008
  fallback719:
    set $P5006, $P5007["w"]
    unless_null $P5006, fallback722
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5015
  fallback722:
    unless $P5006 goto if220_end718 
.annotate 'line', 951
    nqp_get_sc_object $P5019, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5018, $P5019, "QAST"
    get_who $P5017, $P5018
    set $P5016, $P5017["SVal"]
    unless_null $P5016, fallback725
    nqp_get_sc_object $P5020, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5016, $P5020
  fallback725:
    type_check $I5001, $P101, $P5016
    unless $I5001 goto if222_else723 
    .const 'Sub' $P5021 = 'cuid_185_1351021533.614' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if222_end724
  if222_else723:
.annotate 'line', 962
.annotate 'line', 963
    $P5023 = _lex_param_1."CURSOR"()
    $P5024 = $P5023."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5025, $P5024
  if222_end724:
  if220_end718:
.annotate 'line', 966
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1351021533.614") :anon :lex :outer("cuid_78_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 952
    .const 'Sub' $P5033 = 'cuid_184_1351021533.614' 
    capture_lex $P5033 
    .lex "@words", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 953
    find_lex $P5008, "$/"
    find_lex $P5009, "$past"
    $P5010 = $P5009."value"()
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5005, $P5006, "HLL"
    nqp_get_package_through_who $P5004, $P5005, "Grammar"
    get_who $P5003, $P5004
    set $P5002, $P5003["split_words"]
    unless_null $P5002, fallback726
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5007
  fallback726:
    $P5011 = $P5002($P5008, $P5010)
    set $P101, $P5011
    set $N5001, $P101
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    unless $I5001 goto if223_else727 
.annotate 'line', 954
.annotate 'line', 955
    nqp_get_sc_object $P5015, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Op"]
    unless_null $P5012, fallback729
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5016
  fallback729:
    find_lex $P5017, "$/"
    $P5018 = $P5012."new"("list" :named("op"), $P5017 :named("node"))
    store_lex "$past", $P5018
    set $P5019, $P101
    iter $P5021, $P101
  for_next731:
    unless $P5021, for_done733
    shift $P5023, $P5021
  for_redo732:
    .const 'Sub' $P5022 = 'cuid_184_1351021533.614' 
    capture_lex $P5022
    $P5019 = $P5022($P5023)
    goto for_next731
  for_done733:
    set $P5032, $P5019
    goto if223_end728
  if223_else727:
.annotate 'line', 958
.annotate 'line', 959
    nqp_get_sc_object $P5027, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["SVal"]
    unless_null $P5024, fallback734
    nqp_get_sc_object $P5028, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5024, $P5028
  fallback734:
    set $P5029, $P101[0]
    unless_null $P5029, fallback735
    nqp_get_sc_object $P5030, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5029, $P5030
  fallback735:
    set $S5001, $P5029
    $P5031 = $P5024."new"($S5001 :named("value"))
    store_lex "$past", $P5031
    set $P5032, $P5031
  if223_end728:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1351021533.614") :anon :lex :outer("cuid_185_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 956
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["SVal"]
    unless_null $P5002, fallback730
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback730:
    $P5007 = $P5002."new"(_lex_param_0 :named("value"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_79_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 969
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5037 = 'cuid_186_1351021533.614' 
    capture_lex $P5037 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback736
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5009
  fallback736:
    set $P5008, _lex_param_1["quote_atom"]
    unless_null $P5008, fallback737
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5010
  fallback737:
    set $P5005, $P5008
    iter $P5007, $P5008
  for_next751:
    unless $P5007, for_done753
    shift $P5012, $P5007
  for_redo752:
    .const 'Sub' $P5011 = 'cuid_186_1351021533.614' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next751
  for_done753:
    set $S5001, $P102
    isgt $I5001, $S5001, ""
    unless $I5001 goto if228_end755 
.annotate 'line', 990
    nqp_get_sc_object $P5016, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["SVal"]
    unless_null $P5013, fallback756
    nqp_get_sc_object $P5017, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5017
  fallback756:
    $P5018 = $P5013."new"($P102 :named("value"))
    $P5019 = $P101."push"($P5018)
  if228_end755:
    unless $P101 goto if229_else757 
.annotate 'line', 991
    $P5020 = $P101."shift"()
    set $P5027, $P5020
    goto if229_end758
  if229_else757:
    nqp_get_sc_object $P5024, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5023, $P5024, "QAST"
    get_who $P5022, $P5023
    set $P5021, $P5022["SVal"]
    unless_null $P5021, fallback759
    nqp_get_sc_object $P5025, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5021, $P5025
  fallback759:
    $P5026 = $P5021."new"("" :named("value"))
    set $P5027, $P5026
  if229_end758:
    set $P103, $P5027
  while230_test760:
    set $P5035, $P101
    unless $P101 goto while230_done764 
  while230_redo762:
.annotate 'line', 992
.annotate 'line', 993
    nqp_get_sc_object $P5031, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5030, $P5031, "QAST"
    get_who $P5029, $P5030
    set $P5028, $P5029["Op"]
    unless_null $P5028, fallback765
    nqp_get_sc_object $P5032, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5028, $P5032
  fallback765:
    $P5033 = $P101."shift"()
    $P5034 = $P5028."new"($P103, $P5033, "concat" :named("op"))
    set $P103, $P5034
    set $P5035, $P103
    goto while230_test760 
  while230_done764:
.annotate 'line', 995
    $P5036 = _lex_param_1."!make"($P103)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1351021533.614") :anon :lex :outer("cuid_79_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 972
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 973
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback740
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5007
  fallback740:
    type_check $I5002, $P101, $P5003
    not $I5001, $I5002
    unless $I5001 goto if224_else738 
.annotate 'line', 974
    find_lex $P5008, "$lastlit"
    set $S5002, $P5008
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5009, $S5001
    store_lex "$lastlit", $P5009
    set $P5043, $P5009
    goto if224_end739
  if224_else738:
    nqp_get_sc_object $P5013, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["SVal"]
    unless_null $P5010, fallback743
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5010, $P5014
  fallback743:
    type_check $I5003, $P101, $P5010
    unless $I5003 goto if225_else741 
.annotate 'line', 977
    find_lex $P5015, "$lastlit"
    set $S5005, $P5015
.annotate 'line', 978
    $P5016 = $P101."value"()
    set $S5006, $P5016
    concat $S5004, $S5005, $S5006
    box $P5017, $S5004
    store_lex "$lastlit", $P5017
    set $P5042, $P5017
    goto if225_end742
  if225_else741:
.annotate 'line', 980
    find_lex $P5018, "$lastlit"
    set $S5007, $P5018
    isgt $I5004, $S5007, ""
    unless $I5004 goto if226_end745 
.annotate 'line', 981
.annotate 'line', 982
    find_lex $P5019, "@parts"
    nqp_get_sc_object $P5023, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["SVal"]
    unless_null $P5020, fallback746
    nqp_get_sc_object $P5024, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5020, $P5024
  fallback746:
    find_lex $P5025, "$lastlit"
    $P5026 = $P5020."new"($P5025 :named("value"))
    $P5027 = $P5019."push"($P5026)
  if226_end745:
.annotate 'line', 984
    find_lex $P5028, "@parts"
    nqp_get_sc_object $P5032, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["Node"]
    unless_null $P5029, fallback749
    nqp_get_sc_object $P5033, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5029, $P5033
  fallback749:
    type_check $I5005, $P101, $P5029
    unless $I5005 goto if227_else747 
    set $P5040, $P101
    goto if227_end748
  if227_else747:
.annotate 'line', 986
    nqp_get_sc_object $P5037, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["SVal"]
    unless_null $P5034, fallback750
    nqp_get_sc_object $P5038, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5034, $P5038
  fallback750:
    $P5039 = $P5034."new"($P101 :named("value"))
    set $P5040, $P5039
  if227_end748:
    $P5028."push"($P5040)
    box $P5041, ""
    store_lex "$lastlit", $P5041
    set $P5042, $P5041
  if225_end742:
    set $P5043, $P5042
  if224_end739:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_80_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 998
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 999
    unless_null _lex_param_1, fallback768
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback768:
    set $P5001, _lex_param_1["quote_escape"]
    unless_null $P5001, fallback769
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback769:
    unless $P5001 goto if231_else766 
    unless_null _lex_param_1, fallback770
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5005
  fallback770:
    set $P5004, _lex_param_1["quote_escape"]
    unless_null $P5004, fallback771
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5006
  fallback771:
    $P5007 = $P5004."ast"()
    set $P5008, $P5007
    goto if231_end767
  if231_else766:
    set $S5001, _lex_param_1
    box $P5009, $S5001
    set $P5008, $P5009
  if231_end767:
    $P5010 = _lex_param_1."!make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_81_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1002
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_82_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1003
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback772
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback772:
    set $P5001, _lex_param_1["stopper"]
    unless_null $P5001, fallback773
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback773:
    set $S5001, $P5001
    $P5004 = _lex_param_1."!make"($S5001)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_83_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1005
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_84_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_85_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1007
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_86_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1008
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_87_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1009
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_88_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1010
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_89_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1012
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1013
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback776
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5003
  fallback776:
    set $P5002, _lex_param_1["hexint"]
    unless_null $P5002, fallback777
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5004
  fallback777:
    unless $P5002 goto if232_else774 
    unless_null _lex_param_1, fallback778
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5006
  fallback778:
    set $P5005, _lex_param_1["hexint"]
    unless_null $P5005, fallback779
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5007
  fallback779:
    set $P5013, $P5005
    goto if232_end775
  if232_else774:
    unless_null _lex_param_1, fallback780
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5010
  fallback780:
    set $P5009, _lex_param_1["hexints"]
    unless_null $P5009, fallback781
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5011
  fallback781:
    set $P5008, $P5009["hexint"]
    unless_null $P5008, fallback782
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5012
  fallback782:
    set $P5013, $P5008
  if232_end775:
    $P5014 = $P5001."ints_to_string"($P5013)
    $P5015 = _lex_param_1."!make"($P5014)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_90_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1016
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1017
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback785
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5003
  fallback785:
    set $P5002, _lex_param_1["octint"]
    unless_null $P5002, fallback786
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5004
  fallback786:
    unless $P5002 goto if233_else783 
    unless_null _lex_param_1, fallback787
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5006
  fallback787:
    set $P5005, _lex_param_1["octint"]
    unless_null $P5005, fallback788
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5007
  fallback788:
    set $P5013, $P5005
    goto if233_end784
  if233_else783:
    unless_null _lex_param_1, fallback789
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5010
  fallback789:
    set $P5009, _lex_param_1["octints"]
    unless_null $P5009, fallback790
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5011
  fallback790:
    set $P5008, $P5009["octint"]
    unless_null $P5008, fallback791
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5012
  fallback791:
    set $P5013, $P5008
  if233_end784:
    $P5014 = $P5001."ints_to_string"($P5013)
    $P5015 = _lex_param_1."!make"($P5014)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_91_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1020
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1021
    unless_null _lex_param_1, fallback792
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback792:
    set $P5001, _lex_param_1["charspec"]
    unless_null $P5001, fallback793
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback793:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_92_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1024
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1025
    $P5001 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_93_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1028
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1029
    unless_null _lex_param_1, fallback796
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback796:
    set $P5001, _lex_param_1["textq"]
    unless_null $P5001, fallback797
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback797:
    unless $P5001 goto if234_else794 
    unless_null _lex_param_1, fallback798
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5005
  fallback798:
    set $P5004, _lex_param_1["textq"]
    unless_null $P5004, fallback799
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5006
  fallback799:
    $P5007 = $P5004."Str"()
    set $S5002, $P5007
    concat $S5001, "\\", $S5002
    box $P5013, $S5001
    set $P5012, $P5013
    goto if234_end795
  if234_else794:
    unless_null _lex_param_1, fallback800
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5009
  fallback800:
    set $P5008, _lex_param_1["textqq"]
    unless_null $P5008, fallback801
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5010
  fallback801:
    $P5011 = $P5008."Str"()
    set $P5012, $P5011
  if234_end795:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_94_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1032
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    unless_null _lex_param_1, fallback804
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5003
  fallback804:
    set $P5002, _lex_param_1["integer"]
    unless_null $P5002, fallback805
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5004
  fallback805:
    unless $P5002 goto if235_else802 
.annotate 'line', 1034
    unless_null _lex_param_1, fallback806
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5006
  fallback806:
    set $P5005, _lex_param_1["integer"]
    unless_null $P5005, fallback807
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5007
  fallback807:
    $P5008 = $P5005."ast"()
    set $P5009, $P5008
    goto if235_end803
  if235_else802:
    set $S5002, _lex_param_1
    find_encoding $I5002, "utf8"
    trans_encoding $S5001, $S5002, $I5002
    find_codepoint $I5001, $S5001
    box $P5010, $I5001
    set $P5009, $P5010
  if235_end803:
    set $P101, $P5009
    set $N5001, $P101
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    unless $I5003 goto if236_end809 
.annotate 'line', 1038
    $P5011 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5012 = $P5011."panic"($S5003)
  if236_end809:
.annotate 'line', 1039
    set $I5004, $P101
    chr $S5005, $I5004
    $P5013 = _lex_param_1."!make"($S5005)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_95_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1042
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_187_1351021533.614' 
    capture_lex $P5012 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback810
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5007
  fallback810:
    set $P5006, _lex_param_1["charname"]
    unless_null $P5006, fallback811
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5008
  fallback811:
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next812:
    unless $P5005, for_done814
    shift $P5010, $P5005
  for_redo813:
    .const 'Sub' $P5009 = 'cuid_187_1351021533.614' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next812
  for_done814:
.annotate 'line', 1045
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1351021533.614") :anon :lex :outer("cuid_95_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1044
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
.sub "charspec" :subid("cuid_96_1351021533.614") :anon :lex :outer("cuid_97_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1048
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 1049
    unless_null _lex_param_1, fallback817
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5002
  fallback817:
    set $P5001, _lex_param_1["charnames"]
    unless_null $P5001, fallback818
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback818:
    unless $P5001 goto if237_else815 
    unless_null _lex_param_1, fallback819
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5005
  fallback819:
    set $P5004, _lex_param_1["charnames"]
    unless_null $P5004, fallback820
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5006
  fallback820:
    $P5007 = $P5004."ast"()
    set $P5009, $P5007
    goto if237_end816
  if237_else815:
    $P5008 = "&string_to_int"(_lex_param_1, 10)
    set $I5001, $P5008
    chr $S5001, $I5001
    box $P5010, $S5001
    set $P5009, $P5010
  if237_end816:
    $P5011 = _lex_param_1."!make"($P5009)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1351021533.614") :anon :lex :outer("cuid_1_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1062
    .const 'Sub' $P5051 = 'cuid_98_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_99_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_100_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_101_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_102_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_103_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_104_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_105_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_106_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_107_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_108_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_109_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_110_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_111_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_112_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_113_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_114_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_115_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_116_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_117_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_118_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_119_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_120_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_121_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_122_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_123_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_124_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_125_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_126_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_127_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_128_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_129_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_130_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_131_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_132_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_133_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_134_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_135_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_136_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_137_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_138_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_139_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_140_1351021533.614' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_141_1351021533.614' 
    capture_lex $P5051 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5007 = 'cuid_98_1351021533.614' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_99_1351021533.614' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_100_1351021533.614' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_101_1351021533.614' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_102_1351021533.614' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_103_1351021533.614' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_104_1351021533.614' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_105_1351021533.614' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_106_1351021533.614' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_107_1351021533.614' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_108_1351021533.614' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_109_1351021533.614' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_110_1351021533.614' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_111_1351021533.614' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_112_1351021533.614' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_113_1351021533.614' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_114_1351021533.614' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_115_1351021533.614' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_116_1351021533.614' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_117_1351021533.614' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_118_1351021533.614' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_119_1351021533.614' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_120_1351021533.614' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_121_1351021533.614' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_122_1351021533.614' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_123_1351021533.614' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_124_1351021533.614' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_125_1351021533.614' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_126_1351021533.614' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_127_1351021533.614' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_128_1351021533.614' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_129_1351021533.614' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_130_1351021533.614' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_131_1351021533.614' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_132_1351021533.614' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_133_1351021533.614' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_134_1351021533.614' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_135_1351021533.614' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_136_1351021533.614' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_137_1351021533.614' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_138_1351021533.614' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_139_1351021533.614' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_140_1351021533.614' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_141_1351021533.614' 
    capture_lex $P5050
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_98_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1078
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1080
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_99_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1084
    .param pmc _lex_param_0 
    .const 'Sub' $P5026 = 'cuid_188_1351021533.614' 
    capture_lex $P5026 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    split $P5003, " ", "start parse past post pir evalpmc"
    repr_bind_attr_obj $P5001, $P5002, "@!stages", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    split $P5006, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5004, $P5005, "@!cmdoptions", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    box $P5009, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5007, $P5008, "$!usage", $P5009
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!cmdoptions"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next823:
    unless $P5012, for_done825
    shift $P5017, $P5012
  for_redo824:
    .const 'Sub' $P5016 = 'cuid_188_1351021533.614' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next823
  for_done825:
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    getinterp $P5021
    set $P5020, $P5021[.IGLOBALS_CONFIG_HASH]
    unless_null $P5020, fallback826
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5020, $P5022
  fallback826:
    set $P5018["%parrot_config"], $P5020
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    new $P5025, 'Hash'
    repr_bind_attr_obj $P5023, $P5024, "%!config", $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1351021533.614") :anon :lex :outer("cuid_99_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1091
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
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
.sub "language" :subid("cuid_100_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1098
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_5 :opt_flag 
    if haz_param_5, default829
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5007
  default829:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    unless _lex_param_1 goto if239_end828 
.annotate 'line', 1099
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if239_end828:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_101_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1106
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
.sub "config" :subid("cuid_102_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1110
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_103_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1112
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$base", $P101 
    .lex "$loaded", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
.annotate 'line', 1113
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."parse_name"(_lex_param_1)
    join $S5001, "/", $P5004
    box $P5005, $S5001
    set $P101, $P5005
    box $P5006, 0
    set $P102, $P5006
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_241831
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1115
    set $S5003, $P101
    concat $S5002, $S5003, ".pbc"
    load_bytecode $S5002
    box $P5007, 1
    set $P102, $P5007
    set $P5009, $P102
    pop_eh 
    goto skip_handler_240830
  catch_handler_241831:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_240830
  skip_handler_240830:
    if $P102 goto unless242_end833 
.annotate 'line', 1116
    set $S5005, $P101
    concat $S5004, $S5005, ".pir"
    load_bytecode $S5004
    box $P5010, 1
    set $P102, $P5010
  unless242_end833:
.annotate 'line', 1117
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."get_module"(_lex_param_1)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_104_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
.annotate 'line', 1122
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback836
    nqp_get_sc_object $P5007, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["$AUTOPRINTPOS"]
    unless_null $P5005, fallback837
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5008
  fallback837:
    unless_null $P5005, vivi_244838
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5009, "Contextual $*AUTOPRINTPOS not found"
    set $P5005, $P5009
  vivi_244838:
    set $P5004, $P5005
  fallback836:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    if $I5001 goto unless243_end835 
    set $S5001, _lex_param_1
    say $S5001
    box $P5012, $S5001
    set $P5010, $P5012
  unless243_end835:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_105_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1125
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5031 = 'cuid_189_1351021533.614' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_193_1351021533.614' 
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
    .const 'Sub' $P5001 = 'cuid_189_1351021533.614' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P105, $P5005
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P106, $P5006
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P107, $P5007
.annotate 'line', 1139
    null $P5008
    $P101."set_outer"($P5008)
.annotate 'line', 1140
    $P5009 = "&blank_context"()
    set $P102, $P5009
    getattribute $P5010, $P102, "lex_pad"
    set $P103, $P5010
    set $P5011, _lex_param_1["target"]
    unless_null $P5011, fallback841
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5012
  fallback841:
    set $S5002, $P5011
    downcase $S5001, $S5002
    box $P5013, $S5001
    set $P104, $P5013
.annotate 'line', 1146
    getinterp $P5014
    $P5015 = $P5014."stderr_handle"()
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."interactive_banner"()
    $P5015."print"($P5017)
.annotate 'line', 1148
    getinterp $P5018
    $P5019 = $P5018."stdin_handle"()
    set $P105, $P5019
    set $P5020, _lex_param_1["encoding"]
    unless_null $P5020, fallback842
    nqp_get_sc_object $P5021, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5020, $P5021
  fallback842:
    set $S5003, $P5020
    box $P5022, $S5003
    set $P106, $P5022
    set $P5023, $P106
    unless $P106 goto if246_end846 
    set $S5004, $P106
    isne $I5001, $S5004, "fixed_8"
    box $P5024, $I5001
    set $P5023, $P5024
  if246_end846:
    unless $P5023 goto if245_end844 
.annotate 'line', 1150
.annotate 'line', 1151
    $P5025 = $P105."encoding"($P106)
  if245_end844:
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while247_handlers850
    push_eh $P5029
  while247_test847:
    box $P5030, 1
    set $P5028, $P5030
    unless 1 goto while247_done851 
  while247_redo849:
    .const 'Sub' $P5026 = 'cuid_193_1351021533.614' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
    goto while247_test847 
  while247_handlers850:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, while247_test847
    eq $P5029, .CONTROL_LOOP_REDO, while247_redo849
  while247_done851:
    pop_eh 
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "blank_context" :subid("cuid_189_1351021533.614") :anon :lex :outer("cuid_105_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1131
    .lex "%blank_pad", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
    getinterp $P5004
    set $P5003, $P5004["context"]
    unless_null $P5003, fallback839
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5005
  fallback839:
    getattribute $P5002, $P5003, "lex_pad"
    copy $P5002, $P101
    getinterp $P5007
    set $P5006, $P5007["context"]
    unless_null $P5006, fallback840
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5008
  fallback840:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1351021533.614") :anon :lex :outer("cuid_105_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1155
    .const 'Sub' $P5027 = 'cuid_191_1351021533.614' 
    capture_lex $P5027 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    if $P5006 goto unless248_end853 
    die 0, .CONTROL_LOOP_LAST
  unless248_end853:
.annotate 'line', 1158
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5001, $P5007
    if $I5001, defor854
    box $P5011, "> "
    set $P5007, $P5011
  defor854:
    set $P101, $P5007
.annotate 'line', 1159
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5002, $P102
    unless $I5002 goto if249_end856 
    die 0, .CONTROL_LOOP_LAST
  if249_end856:
    defined $I5003, $P102
    if $I5003 goto unless250_end858 
.annotate 'line', 1162
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  unless250_end858:
.annotate 'line', 1168
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5026, $P102
    unless $P102 goto if252_end863 
    .const 'Sub' $P5024 = 'cuid_191_1351021533.614' 
    capture_lex $P5024
    $P5025 = $P5024()
    set $P5026, $P5025
  if252_end863:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1351021533.614") :anon :lex :outer("cuid_193_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1172
    .const 'Sub' $P5045 = 'cuid_190_1351021533.614' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_192_1351021533.614' 
    capture_lex $P5045 
    .lex "$output", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1175
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_254865
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1176
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_253864
  catch_handler_254865:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_190_1351021533.614' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_253864
  skip_handler_253864:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback868
    nqp_get_sc_object $P5016, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5015, $P5016
    set $P5014, $P5015["$MAIN_CTX"]
    unless_null $P5014, fallback869
    nqp_get_sc_object $P5017, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5017
  fallback869:
    unless_null $P5014, vivi_256870
    die "Contextual $*MAIN_CTX not found"
    box $P5018, "Contextual $*MAIN_CTX not found"
    set $P5014, $P5018
  vivi_256870:
    set $P5013, $P5014
  fallback868:
    defined $I5001, $P5013
    unless $I5001 goto if255_end867 
.annotate 'line', 1182
.annotate 'line', 1183
    find_dynamic_lex $P5022, "$*MAIN_CTX"
    unless_null $P5022, fallback871
    nqp_get_sc_object $P5025, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5024, $P5025
    set $P5023, $P5024["$MAIN_CTX"]
    unless_null $P5023, fallback872
    nqp_get_sc_object $P5026, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5023, $P5026
  fallback872:
    unless_null $P5023, vivi_257873
    die "Contextual $*MAIN_CTX not found"
    box $P5027, "Contextual $*MAIN_CTX not found"
    set $P5023, $P5027
  vivi_257873:
    set $P5022, $P5023
  fallback871:
    $P5028 = $P5022."lexpad_full"()
    set $P5019, $P5028
    iter $P5021, $P5028
  for_next874:
    unless $P5021, for_done876
    shift $P5030, $P5021
  for_redo875:
    .const 'Sub' $P5029 = 'cuid_192_1351021533.614' 
    capture_lex $P5029
    $P5019 = $P5029($P5030)
    goto for_next874
  for_done876:
    find_lex $P5031, "$interactive_ctx"
    store_lex "$save_ctx", $P5031
  if255_end867:
    isnull $I5002, $P101
    unless $I5002 goto if258_end878 
    die 0, .CONTROL_LOOP_NEXT
  if258_end878:
    find_lex $P5032, "$target"
    isfalse $I5003, $P5032
    unless $I5003 goto if259_else879 
.annotate 'line', 1190
.annotate 'line', 1191
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."autoprint"($P101)
    set $P5044, $P5035
    goto if259_end880
  if259_else879:
    find_lex $P5036, "$target"
    set $S5003, $P5036
    iseq $I5004, $S5003, "pir"
    unless $I5004 goto if260_else881 
.annotate 'line', 1192
    set $S5004, $P101
    say $S5004
    box $P5043, $S5004
    set $P5042, $P5043
    goto if260_end882
  if260_else881:
.annotate 'line', 1194
.annotate 'line', 1195
    find_lex $P5038, "self"
    nqp_decontainerize $P5037, $P5038
    find_lex $P5039, "$target"
    find_lex $P5040, "%adverbs"
    $P5041 = $P5037."dumper"($P101, $P5039, $P5040 :flat :named)
    set $P5042, $P5041
  if260_end882:
    set $P5044, $P5042
  if259_end880:
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1351021533.614") :anon :lex :outer("cuid_191_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1177
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
.sub "" :subid("cuid_192_1351021533.614") :anon :lex :outer("cuid_191_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1183
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%interactive_pad"
.annotate 'line', 1184
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "eval" :subid("cuid_106_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1201
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5012 = 'cuid_194_1351021533.614' 
    capture_lex $P5012 
    .lex "$output", $P101 
    .lex "$old_runcore", $P102 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P102, $P5003
    set $P5004, _lex_param_3["profile-compile"]
    unless_null $P5004, fallback885
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5005
  fallback885:
    unless $P5004 goto if261_end884 
.annotate 'line', 1205
    set_runcore "subprof_hll"
  if261_end884:
.annotate 'line', 1208
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5007
    isa $I5002, $P101, "String"
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if263_end889 
    set $P5008, _lex_param_3["target"]
    unless_null $P5008, fallback890
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5009
  fallback890:
    set $S5002, $P5008
    iseq $I5003, $S5002, ""
    set $I5004, $I5003
  if263_end889:
    unless $I5004 goto if262_end887 
    .const 'Sub' $P5010 = 'cuid_194_1351021533.614' 
    capture_lex $P5010
    $P5011 = $P5010()
  if262_end887:
    set $S5003, $P102
    set_runcore $S5003
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1351021533.614") :anon :lex :outer("cuid_106_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1211
    .lex "$outer_ctx", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    find_lex $P5003, "%adverbs"
    set $P5002, $P5003["outer_ctx"]
    unless_null $P5002, fallback891
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5004
  fallback891:
    set $P101, $P5002
    defined $I5001, $P101
    unless $I5001 goto if264_end893 
.annotate 'line', 1213
.annotate 'line', 1214
    find_lex $P5006, "$output"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback894
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5007
  fallback894:
    $P5008 = $P5005."set_outer_ctx"($P101)
  if264_end893:
    find_lex $P5010, "%adverbs"
    set $P5009, $P5010["profile"]
    unless_null $P5009, fallback897
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5011
  fallback897:
    unless $P5009 goto if265_end896 
.annotate 'line', 1217
    set_runcore "subprof_hll"
  if265_end896:
    find_lex $P5013, "%adverbs"
    set $P5012, $P5013["trace"]
    unless_null $P5012, fallback898
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5014
  fallback898:
    set $I5002, $P5012
    trace $I5002
.annotate 'line', 1221
    find_lex $P5016, "@args"
    find_lex $P5015, "$output"
    $P5017 = $P5015($P5016 :flat)
    store_lex "$output", $P5017
    trace 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_107_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1229
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

                $P0 = getinterp
                $P5001 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P5001
    box $P5002, 0
    store_dynamic_lex "$*CTXSAVE", $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_108_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1238
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
.sub "stages" :subid("cuid_109_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1242
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    if haz_param_6, default901
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default901:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if266_end900 
.annotate 'line', 1243
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if266_end900:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_110_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1249
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if267_end903 
.annotate 'line', 1250
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback904
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5004
  fallback904:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5003
  if267_end903:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!parsegrammar"
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_111_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if268_end906 
.annotate 'line', 1257
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    set $P5003, _lex_param_1[0]
    unless_null $P5003, fallback907
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5004
  fallback907:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5003
  if268_end906:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!parseactions"
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_112_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1263
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_113_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1265
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_114_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1267
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default910
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5006
  default910:
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    defined $I5001, _lex_param_1
    unless $I5001 goto if269_end909 
.annotate 'line', 1268
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if269_end909:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_115_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1275
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default913
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default913:
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    set $N5001, _lex_param_1
    unless $N5001 goto if270_end912 
.annotate 'line', 1276
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if270_end912:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_116_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1282
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
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $P5005, _lex_param_1[2]
    unless_null $P5005, fallback916
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5006
  fallback916:
    set $S5001, $P5005
    index $I5002, $S5001, "@INC", 0
    set $N5001, $I5002
    set $N5002, 0
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if271_end915 
.annotate 'line', 1291
    exit 0
  if271_end915:
    set $P5007, _lex_param_1[0]
    unless_null $P5007, fallback917
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5008
  fallback917:
    set $P101, $P5007
.annotate 'line', 1296
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1297
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1298
    $P5012 = $P102."arguments"()
    set $P104, $P5012
.annotate 'line', 1300
    _lex_param_2."update"($P103)
    set $P5013, _lex_param_2["help"]
    unless_null $P5013, fallback922
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5014
  fallback922:
    set $P5017, $P5013
    if $P5013 goto unless273_end921 
    set $P5015, _lex_param_2["h"]
    unless_null $P5015, fallback923
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5015, $P5016
  fallback923:
    set $P5017, $P5015
  unless273_end921:
    unless $P5017 goto if272_end919 
.annotate 'line', 1301
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."usage"($P101)
  if272_end919:
    load_bytecode "dumper.pbc"
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1306
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_117_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5066 = 'cuid_195_1351021533.614' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_196_1351021533.614' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_197_1351021533.614' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_198_1351021533.614' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_199_1351021533.614' 
    capture_lex $P5066 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    set $P5005, _lex_param_2["version"]
    unless_null $P5005, fallback928
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5006
  fallback928:
    set $P5009, $P5005
    if $P5005 goto unless275_end927 
    set $P5007, _lex_param_2["v"]
    unless_null $P5007, fallback929
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5008
  fallback929:
    set $P5009, $P5007
  unless275_end927:
    unless $P5009 goto if274_end925 
.annotate 'line', 1311
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."version"()
  if274_end925:
    set $P5012, _lex_param_2["verbose-config"]
    unless_null $P5012, fallback936
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5013
  fallback936:
    set $P5016, $P5012
    if $P5012 goto unless278_end935 
    set $P5014, _lex_param_2["V"]
    unless_null $P5014, fallback937
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5015
  fallback937:
    set $P5016, $P5014
  unless278_end935:
    set $P5019, $P5016
    if $P5016 goto unless277_end933 
    set $P5017, _lex_param_2["show-config"]
    unless_null $P5017, fallback938
    nqp_get_sc_object $P5018, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5017, $P5018
  fallback938:
    set $P5019, $P5017
  unless277_end933:
    unless $P5019 goto if276_end931 
.annotate 'line', 1312
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."verbose-config"()
  if276_end931:
    set $P5022, _lex_param_2["nqpevent"]
    unless_null $P5022, fallback941
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5022, $P5023
  fallback941:
    unless $P5022 goto if279_end940 
.annotate 'line', 1314
    nqp_decontainerize $P5024, _lex_param_0
    set $P5025, _lex_param_2["nqpevent"]
    unless_null $P5025, fallback942
    nqp_get_sc_object $P5026, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5025, $P5026
  fallback942:
    $P5027 = $P5024."nqpevent"($P5025)
  if279_end940:
    box $P5028, 0
    set $P103, $P5028
    set $P5029, _lex_param_2["target"]
    unless_null $P5029, fallback943
    nqp_get_sc_object $P5030, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5029, $P5030
  fallback943:
    set $S5002, $P5029
    downcase $S5001, $S5002
    box $P5031, $S5001
    set $P104, $P5031
    new $P5054, 'ExceptionHandler'
    set_label $P5054, catch_handler_295975
    $P5054.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5054
.annotate 'line', 1320
    new $P5052, 'ExceptionHandler'
    set_label $P5052, catch_handler_291970
    $P5052.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5052
    new $P5052, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5052, catch_handler_292971
    push_eh $P5052
    set $P5032, _lex_param_2["e"]
    unless_null $P5032, fallback946
    nqp_get_sc_object $P5033, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5032, $P5033
  fallback946:
    defined $I5001, $P5032
    unless $I5001 goto if280_else944 
    .const 'Sub' $P5034 = 'cuid_195_1351021533.614' 
    capture_lex $P5034
    $P5035 = $P5034()
    goto if280_end945
  if280_else944:
    isfalse $I5002, _lex_param_1
    unless $I5002 goto if283_else952 
.annotate 'line', 1329
    nqp_decontainerize $P5036, _lex_param_0
    $P5037 = $P5036."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5037
    set $P5047, $P101
    goto if283_end953
  if283_else952:
    set $P5038, _lex_param_2["combine"]
    unless_null $P5038, fallback956
    nqp_get_sc_object $P5039, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5038, $P5039
  fallback956:
    unless $P5038 goto if284_else954 
.annotate 'line', 1330
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5041
    set $P5046, $P101
    goto if284_end955
  if284_else954:
.annotate 'line', 1331
    nqp_decontainerize $P5042, _lex_param_0
    set $P5043, _lex_param_1[0]
    unless_null $P5043, fallback957
    nqp_get_sc_object $P5044, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5043, $P5044
  fallback957:
    $P5045 = $P5042."evalfiles"($P5043, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5045
    set $P5046, $P101
  if284_end955:
    set $P5047, $P5046
  if283_end953:
  if280_end945:
    isnull $I5004, $P101
    not $I5003, $I5004
    set $I5006, $I5003
    unless $I5003 goto if286_end961 
    set $S5003, $P104
    iseq $I5005, $S5003, "pir"
    set $I5006, $I5005
  if286_end961:
    unless $I5006 goto if285_end959 
    .const 'Sub' $P5048 = 'cuid_196_1351021533.614' 
    capture_lex $P5048
    $P5049 = $P5048()
  if285_end959:
    nqp_get_sc_object $P5050, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    nqp_get_sc_object $P5051, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5053, $P5051
    pop_eh 
    pop_eh 
    goto skip_handler_290969
  catch_handler_291970:
    .get_results ($P5052) 
    .const 'Sub' $P10001 = 'cuid_197_1351021533.614' 
    capture_lex $P10001
    $P10001($P5052)
    set $I10001, 1
    set $P5052["handled"], $I10001
    nqp_get_sc_object $P10002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5052
    pop_upto_eh $P5052
    pop_eh 
    set $P5053, $P10002
    goto skip_handler_290969
  catch_handler_292971:
    .get_results ($P5052) 
    .const 'Sub' $P10003 = 'cuid_198_1351021533.614' 
    capture_lex $P10003
    $P10003($P5052)
    set $I10002, 1
    set $P5052["handled"], $I10002
    nqp_get_sc_object $P10004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5052
    pop_upto_eh $P5052
    pop_eh 
    set $P5053, $P10004
    goto skip_handler_290969
  skip_handler_290969:
    set $P5055, $P5053
    pop_eh 
    goto skip_handler_294974
  catch_handler_295975:
    .get_results ($P5054) 
    set $I10001, 1
    set $P5054["handled"], $I10001
    nqp_get_sc_object $P10001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5054
    pop_upto_eh $P5054
    pop_eh 
    set $P5055, $P10001
    goto skip_handler_294974
  skip_handler_294974:
    unless $P103 goto if296_end977 
.annotate 'line', 1356
    set $P5056, _lex_param_2["ll-exception"]
    unless_null $P5056, fallback982
    nqp_get_sc_object $P5057, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5056, $P5057
  fallback982:
    set $P5059, $P5056
    if $P5056 goto unless298_end981 
    nqp_decontainerize $P5058, _lex_param_0
    can $I5008, $P5058, "handle-exception"
    not $I5007, $I5008
    box $P5060, $I5007
    set $P5059, $P5060
  unless298_end981:
    unless $P5059 goto if297_else978 
    .const 'Sub' $P5061 = 'cuid_199_1351021533.614' 
    capture_lex $P5061
    $P5062 = $P5061()
    set $P5065, $P5062
    goto if297_end979
  if297_else978:
.annotate 'line', 1363
.annotate 'line', 1364
    nqp_decontainerize $P5063, _lex_param_0
    $P5064 = $P5063."handle-exception"($P102)
    set $P5065, $P5064
  if297_end979:
  if296_end977:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1351021533.614") :anon :lex :outer("cuid_117_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1321
    .lex "$?FILES", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1324
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5010, "%adverbs"
    set $P5009, $P5010["e"]
    unless_null $P5009, fallback947
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5011
  fallback947:
    find_lex $P5012, "@a"
    find_lex $P5013, "%adverbs"
    $P5014 = $P5007."eval"($P5009, "-e", $P5012 :flat, $P5013 :flat :named)
    store_lex "$result", $P5014
    find_lex $P5015, "$target"
    set $S5001, $P5015
    iseq $I5001, $S5001, ""
    set $I5003, $I5001
    if $I5001 goto unless282_end951 
    find_lex $P5016, "$target"
    set $S5002, $P5016
    iseq $I5002, $S5002, "pir"
    set $I5003, $I5002
  unless282_end951:
    box $P5024, $I5003
    set $P5023, $P5024
    if $I5003 goto unless281_end949 
.annotate 'line', 1325
.annotate 'line', 1326
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$result"
    find_lex $P5020, "$target"
    find_lex $P5021, "%adverbs"
    $P5022 = $P5017."dumper"($P5019, $P5020, $P5021 :flat :named)
    set $P5023, $P5022
  unless281_end949:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1351021533.614") :anon :lex :outer("cuid_117_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1333
    .lex "$output", $P101 
    .lex "$fh", $P102 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    find_lex $P5004, "%adverbs"
    set $P5003, $P5004["output"]
    unless_null $P5003, fallback962
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5005
  fallback962:
    set $P101, $P5003
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    set $I5003, $I5001
    if $I5001 goto unless288_end966 
    set $S5002, $P101
    iseq $I5002, $S5002, "-"
    set $I5003, $I5002
  unless288_end966:
    unless $I5003 goto if287_else963 
.annotate 'line', 1336
    getinterp $P5006
    $P5007 = $P5006."stdout_handle"()
    set $P5010, $P5007
    goto if287_end964
  if287_else963:
.annotate 'line', 1337
    new $P5008, "FileHandle"
    $P5009 = $P5008."open"($P101, "w")
    set $P5010, $P5009
  if287_end964:
    set $P102, $P5010
    if $P102 goto unless289_end968 
.annotate 'line', 1338
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    set $S5004, $P101
    concat $S5003, "Cannot write to ", $S5004
    $P5013 = $P5011."panic"($S5003)
  unless289_end968:
.annotate 'line', 1339
    find_lex $P5014, "$result"
    $P102."print"($P5014)
.annotate 'line', 1340
    $P5015 = $P102."close"()
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1351021533.614") :anon :lex :outer("cuid_117_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1342
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
.sub "" :subid("cuid_198_1351021533.614") :anon :lex :outer("cuid_117_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1346
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if293_else972 
.annotate 'line', 1347
.annotate 'line', 1348
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if293_end973
  if293_else972:
.annotate 'line', 1349
    rethrow _lex_param_0
  if293_end973:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1351021533.614") :anon :lex :outer("cuid_117_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1357
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    getstderr $P5002
    set $P101, $P5002
.annotate 'line', 1359
    find_lex $P5003, "$error"
    $P101."print"($P5003)
.annotate 'line', 1360
    $P101."print"("\n")
.annotate 'line', 1361
    find_lex $P5004, "$error"
    $P5005 = $P5004."backtrace_strings"()
    join $S5001, "\n", $P5005
    $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_118_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1370
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5033 = 'cuid_200_1351021533.614' 
    capture_lex $P5033 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
.annotate 'line', 1372
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1374
    nqp_get_sc_object $P5009, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5008, $P5009, "HLL"
    nqp_get_package_through_who $P5007, $P5008, "CommandLine"
    get_who $P5006, $P5007
    set $P5005, $P5006["Parser"]
    unless_null $P5005, fallback983
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5010
  fallback983:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5013, $P5011, $P5012, "@!cmdoptions"
    $P5014 = $P5005."new"($P5013)
    set $P101, $P5014
.annotate 'line', 1375
    $P101."add-stopper"("-e")
.annotate 'line', 1376
    $P101."stop-after-first-arg"()
    new $P5019, 'ExceptionHandler'
    set_label $P5019, catch_handler_302987
    $P5019.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5019
.annotate 'line', 1378
    new $P5017, 'ExceptionHandler'
    set_label $P5017, catch_handler_300985
    $P5017.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5017
.annotate 'line', 1379
    $P5015 = $P101."parse"(_lex_param_1)
    set $P102, $P5015
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5016
    pop_eh 
    goto skip_handler_299984
  catch_handler_300985:
    .get_results ($P5017) 
    .const 'Sub' $P10001 = 'cuid_200_1351021533.614' 
    capture_lex $P10001
    $P10001($P5017)
    set $I10001, 1
    set $P5017["handled"], $I10001
    nqp_get_sc_object $P10002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5017
    pop_upto_eh $P5017
    pop_eh 
    set $P5018, $P10002
    goto skip_handler_299984
  skip_handler_299984:
    set $P5020, $P5018
    pop_eh 
    goto skip_handler_301986
  catch_handler_302987:
    .get_results ($P5019) 
    set $I10001, 1
    set $P5019["handled"], $I10001
    nqp_get_sc_object $P10001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5019
    pop_upto_eh $P5019
    pop_eh 
    set $P5020, $P10001
    goto skip_handler_301986
  skip_handler_301986:
    unless $P102 goto if303_else988 
.annotate 'line', 1386
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
.annotate 'line', 1387
    $P5023 = $P102."options"()
    repr_bind_attr_obj $P5021, $P5022, "%!cli-options", $P5023
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
.annotate 'line', 1388
    $P5026 = $P102."arguments"()
    repr_bind_attr_obj $P5024, $P5025, "@!cli-arguments", $P5026
    goto if303_end989
  if303_else988:
.annotate 'line', 1390
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    new $P5029, 'Hash'
    repr_bind_attr_obj $P5027, $P5028, "%!cli-options", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    new $P5032, 'ResizablePMCArray'
    repr_bind_attr_obj $P5030, $P5031, "@!cli-arguments", $P5032
  if303_end989:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1351021533.614") :anon :lex :outer("cuid_118_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1380
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1382
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_119_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1397
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5034 = 'cuid_202_1351021533.614' 
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
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P105, $P5005
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P106, $P5006
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_990
    .lex "RETURN", $P108
    set $P5008, _lex_param_3["target"]
    unless_null $P5008, fallback992
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5009
  fallback992:
    set $S5002, $P5008
    downcase $S5001, $S5002
    box $P5010, $S5001
    set $P101, $P5010
    set $P5011, _lex_param_3["encoding"]
    unless_null $P5011, fallback993
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5012
  fallback993:
    set $P102, $P5011
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if304_else994 
    set $P5014, _lex_param_1
    goto if304_end995
  if304_else994:
    new $P5013, 'ResizablePMCArray'
    push $P5013, _lex_param_1
    set $P5014, $P5013
  if304_end995:
    set $P103, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    join $S5003, ",", $P103
    box $P5017, $S5003
    repr_bind_attr_obj $P5015, $P5016, "$!user_progname", $P5017
    set $P5018, $P103
    iter $P5020, $P103
  for_next1002:
    unless $P5020, for_done1004
    shift $P5022, $P5020
  for_redo1003:
    .const 'Sub' $P5021 = 'cuid_202_1351021533.614' 
    capture_lex $P5021
    $P5018 = $P5021($P5022)
    goto for_next1002
  for_done1004:
    join $S5004, "", $P104
    box $P5023, $S5004
    set $P105, $P5023
    join $S5005, " ", $P103
    box $P5024, $S5005
    set $P106, $P5024
.annotate 'line', 1421
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5026
    set $S5006, $P101
    iseq $I5002, $S5006, ""
    set $I5004, $I5002
    if $I5002 goto unless311_end1008 
    set $S5007, $P101
    iseq $I5003, $S5007, "pir"
    set $I5004, $I5003
  unless311_end1008:
    unless $I5004 goto if310_else1005 
.annotate 'line', 1422
    find_lex $P5027, "RETURN"
    $P5028 = $P5027($P107)
    set $P5033, $P5028
    goto if310_end1006
  if310_else1005:
.annotate 'line', 1424
.annotate 'line', 1425
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5029, "RETURN"
    $P5032 = $P5029($P5031)
    set $P5033, $P5032
  if310_end1006:
    goto lexotic_991
  lexotic_990:
    .get_results ($P5033)
  lexotic_991:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1351021533.614") :anon :lex :outer("cuid_119_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1403
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_201_1351021533.614' 
    capture_lex $P5014 
    .lex "$in-handle", $P101 
    .lex "$err", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, "FileHandle"
    set $P101, $P5003
    box $P5004, 0
    set $P102, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_308999
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1406
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_306997
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
.annotate 'line', 1410
    find_lex $P5005, "$encoding"
    $P101."encoding"($P5005)
    find_lex $P5006, "@codes"
.annotate 'line', 1411
    $P5007 = $P101."readall"(_lex_param_0)
    set $S5001, $P5007
    push $P5006, $S5001
.annotate 'line', 1412
    $P101."close"()
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5010, $P5008
    pop_eh 
    goto skip_handler_305996
  catch_handler_306997:
    .get_results ($P5009) 
    .const 'Sub' $P10001 = 'cuid_201_1351021533.614' 
    capture_lex $P10001
    $P10001($P5009)
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10002
    goto skip_handler_305996
  skip_handler_305996:
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_307998
  catch_handler_308999:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_307998
  skip_handler_307998:
    set $P5013, $P102
    unless $P102 goto if309_end1001 
    die $P102
    set $P5013, $P102
  if309_end1001:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1351021533.614") :anon :lex :outer("cuid_202_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1413
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
.sub "compile" :subid("cuid_120_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1429
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5033 = 'cuid_203_1351021533.614' 
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
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P105, $P5005
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1009
    .lex "RETURN", $P107
    unless_null $P101, fallback1011
    nqp_get_sc_object $P5009, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5008, $P5009
    set $P5007, $P5008["%COMPILING"]
    unless_null $P5007, fallback1012
    nqp_get_sc_object $P5011, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%COMPILING"], $P5012
    set $P5007, $P5012
  fallback1012:
    unless_null $P5007, vivi_3121013
    die "Contextual %*COMPILING not found"
    box $P5013, "Contextual %*COMPILING not found"
    set $P5007, $P5013
  vivi_3121013:
    set $P101, $P5007
  fallback1011:
    set $P101["%?OPTIONS"], _lex_param_2
    set $P5014, _lex_param_2["target"]
    unless_null $P5014, fallback1014
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5015
  fallback1014:
    set $S5002, $P5014
    downcase $S5001, $S5002
    box $P5016, $S5001
    set $P102, $P5016
    set $P103, _lex_param_1
.annotate 'line', 1434
    getinterp $P5017
    $P5018 = $P5017."stderr_handle"()
    set $P104, $P5018
.annotate 'line', 1435
    getinterp $P5019
    $P5020 = $P5019."stdin_handle"()
    set $P105, $P5020
    set $P5021, _lex_param_2["stagestats"]
    unless_null $P5021, fallback1015
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5021, $P5022
  fallback1015:
    set $P106, $P5021
.annotate 'line', 1437
    nqp_decontainerize $P5026, _lex_param_0
    $P5027 = $P5026."stages"()
    set $P5023, $P5027
    iter $P5025, $P5027
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, for_handlers1026
    push_eh $P5029
  for_next1027:
    unless $P5025, for_done1029
    shift $P5030, $P5025
  for_redo1028:
    .const 'Sub' $P5028 = 'cuid_203_1351021533.614' 
    capture_lex $P5028
    $P5023 = $P5028($P5030)
    goto for_next1027
  for_handlers1026:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, for_next1027
    eq $P5029, .CONTROL_LOOP_REDO, for_redo1028
  for_done1029:
    pop_eh 
    find_lex $P5031, "RETURN"
    $P5032 = $P5031($P103)
    goto lexotic_1010
  lexotic_1009:
    .get_results ($P5032)
  lexotic_1010:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1351021533.614") :anon :lex :outer("cuid_120_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1437
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    time $N5001
    box $P5003, $N5001
    set $P101, $P5003
.annotate 'line', 1439
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
    unless $I5001 goto if313_end1017 
.annotate 'line', 1441
.annotate 'line', 1442
    find_lex $P5011, "$stderr"
    new $P5012, 'ResizablePMCArray'
    push $P5012, _lex_param_0
    push $P5012, $P102
    sprintf $S5002, "Stage %-11s: %7.3f", $P5012
    $P5011."print"($S5002)
    find_lex $P5013, "$stagestats"
    set $I5003, $P5013
    band $I5002, $I5003, 4
    unless $I5002 goto if314_end1019 
    sweep 1
  if314_end1019:
    find_lex $P5014, "$stagestats"
    set $I5005, $P5014
    band $I5004, $I5005, 2
    unless $I5004 goto if315_end1021 
.annotate 'line', 1444
    find_lex $P5015, "$stderr"
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."vmstat"()
    sprintf $S5003, " %11d %11d %9d %9d", $P5018
    $P5019 = $P5015."print"($S5003)
  if315_end1021:
.annotate 'line', 1446
    find_lex $P5020, "$stderr"
    $P5020."print"("\n")
    find_lex $P5021, "$stagestats"
    set $I5007, $P5021
    band $I5006, $I5007, 8
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if316_end1023 
.annotate 'line', 1447
.annotate 'line', 1448
    find_lex $P5022, "$stderr"
    $P5022."print"("continue> ")
.annotate 'line', 1449
    find_lex $P5023, "$stdin"
    $P5024 = $P5023."readline"()
    set $P5025, $P5024
  if316_end1023:
  if313_end1017:
    set $S5004, _lex_param_0
    find_lex $P5027, "$target"
    set $S5005, $P5027
    iseq $I5008, $S5004, $S5005
    set $I5009, $I5008
    unless $I5008 goto if317_end1025 
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
  if317_end1025:
    .return ($I5009) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_121_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1457
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
.sub "parse" :subid("cuid_122_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1461
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5034 = 'cuid_204_1351021533.614' 
    capture_lex $P5034 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1030
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set $P5005, _lex_param_2["transcode"]
    unless_null $P5005, fallback1034
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5006
  fallback1034:
    unless $P5005 goto if318_end1033 
.annotate 'line', 1463
    set $P5011, _lex_param_2["transcode"]
    unless_null $P5011, fallback1035
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5012
  fallback1035:
    set $S5001, $P5011
    split $P5010, " ", $S5001
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next1038:
    unless $P5009, for_done1040
    shift $P5014, $P5009
  for_redo1039:
    .const 'Sub' $P5013 = 'cuid_204_1351021533.614' 
    capture_lex $P5013
    $P5007 = $P5013($P5014)
    goto for_next1038
  for_done1040:
  if318_end1033:
.annotate 'line', 1471
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."parsegrammar"()
    set $P102, $P5016
    set $P5017, _lex_param_2["target"]
    unless_null $P5017, fallback1043
    nqp_get_sc_object $P5018, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5017, $P5018
  fallback1043:
    set $S5002, $P5017
    iseq $I5001, $S5002, "parse"
    if $I5001 goto unless321_end1042 
.annotate 'line', 1473
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parseactions"()
    set $P103, $P5020
  unless321_end1042:
    set $P5021, _lex_param_2["rxtrace"]
    unless_null $P5021, fallback1046
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5021, $P5022
  fallback1046:
    unless $P5021 goto if322_end1045 
.annotate 'line', 1474
    get_how $P5023, $P102
    $P5024 = $P5023."trace-on"($P102)
  if322_end1045:
.annotate 'line', 1475
    $P5025 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5025
    set $P5026, _lex_param_2["rxtrace"]
    unless_null $P5026, fallback1049
    nqp_get_sc_object $P5027, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5026, $P5027
  fallback1049:
    unless $P5026 goto if323_end1048 
.annotate 'line', 1476
    get_how $P5028, $P102
    $P5029 = $P5028."trace-off"($P102)
  if323_end1048:
    if $P104 goto unless324_end1051 
.annotate 'line', 1477
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."panic"("Unable to parse source")
  unless324_end1051:
    find_lex $P5032, "RETURN"
    $P5033 = $P5032($P104)
    goto lexotic_1031
  lexotic_1030:
    .get_results ($P5033)
  lexotic_1031:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1351021533.614") :anon :lex :outer("cuid_122_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1464
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_3201037
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 1465
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_3191036
  catch_handler_3201037:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_3191036
  skip_handler_3191036:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_123_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1481
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 1482
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1484
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback1054
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5007
  fallback1054:
    $P5008 = $P5003."ACCEPTS"($P101)
    if $P5008 goto unless325_end1053 
.annotate 'line', 1483
    nqp_decontainerize $P5009, _lex_param_0
    typeof $S5002, _lex_param_1
    concat $S5001, "Unable to obtain ast from ", $S5002
    $P5010 = $P5009."panic"($S5001)
  unless325_end1053:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_124_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1488
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1489
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_125_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1492
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    concat $S5008, ".include 'cclass.pasm'\n", ".include 'except_severity.pasm'\n"
    concat $S5007, $S5008, ".include 'except_types.pasm'\n"
    concat $S5006, $S5007, ".include 'iglobals.pasm'\n"
    concat $S5005, $S5006, ".include 'interpinfo.pasm'\n"
    concat $S5004, $S5005, ".include 'iterator.pasm'\n"
    concat $S5003, $S5004, ".include 'sysinfo.pasm'\n"
    concat $S5002, $S5003, ".include 'stat.pasm'\n"
    concat $S5001, $S5002, ".include 'datatypes.pasm'\n"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_126_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1504
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1505
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
.sub "evalpmc" :subid("cuid_127_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1508
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$compiler", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    compreg $P5002, "PIR"
    set $P101, $P5002
.annotate 'line', 1510
    $P5003 = $P101(_lex_param_1)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_128_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1513
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5008 = 'cuid_205_1351021533.614' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    set $P5001, _lex_param_3["dumper"]
    unless_null $P5001, fallback1057
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5002
  fallback1057:
    unless $P5001 goto if326_else1055 
    .const 'Sub' $P5003 = 'cuid_205_1351021533.614' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5007, $P5004
    goto if326_end1056
  if326_else1055:
.annotate 'line', 1519
.annotate 'line', 1520
 $P5005 = get_root_global ['parrot'], '_dumper' 
    $P5006 = $P5005(_lex_param_1, _lex_param_2)
    set $P5007, $P5006
  if326_end1056:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1351021533.614") :anon :lex :outer("cuid_128_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1514
    .lex "$dumper", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    load_bytecode "PCT/Dumper.pbc"
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5005, $P5006, "PCT"
    get_who $P5004, $P5005
    set $P5003, $P5004["Dumper"]
    unless_null $P5003, fallback1058
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5007
  fallback1058:
    find_lex $P5009, "%options"
    set $P5008, $P5009["dumper"]
    unless_null $P5008, fallback1059
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5010
  fallback1059:
    set $S5002, $P5008
    downcase $S5001, $S5002
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback1060
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5011
  fallback1060:
    set $P101, $P5002
.annotate 'line', 1517
    find_lex $P5012, "$obj"
    find_lex $P5013, "$name"
    $P5014 = $P101($P5012, $P5013)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_129_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1524
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default1063
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5005
  default1063:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    unless _lex_param_1 goto if327_end1062 
.annotate 'line', 1525
.annotate 'line', 1526
    $P5001 = "&say"(_lex_param_1)
  if327_end1062:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_130_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1532
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$parver", $P102 
    .lex "$parrev", $P103 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!config"
    set $P5004, $P5007["version"]
    unless_null $P5004, fallback1064
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5008
  fallback1064:
    set $P101, $P5004
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["%parrot_config"]
    unless_null $P5010, fallback1065
    new $P5013, 'Hash'
    set $P5010, $P5013
  fallback1065:
    set $P5009, $P5010["VERSION"]
    unless_null $P5009, fallback1066
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5014
  fallback1066:
    set $P102, $P5009
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    set $P5017, $P5018["%parrot_config"]
    unless_null $P5017, fallback1068
    new $P5020, 'Hash'
    set $P5017, $P5020
  fallback1068:
    set $P5016, $P5017["git_describe"]
    unless_null $P5016, fallback1069
    nqp_get_sc_object $P5021, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5016, $P5021
  fallback1069:
    set $P5015, $P5016
    defined $I5001, $P5015
    if $I5001, defor1067
    box $P5022, "(unknown)"
    set $P5015, $P5022
  defor1067:
    set $P103, $P5015
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
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
.sub "show-config" :subid("cuid_131_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1540
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_132_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1542
    .param pmc _lex_param_0 
    .const 'Sub' $P5018 = 'cuid_206_1351021533.614' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_207_1351021533.614' 
    capture_lex $P5018 
    .lex "self", _lex_param_0 
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["%parrot_config"]
    unless_null $P5004, fallback1070
    new $P5007, 'Hash'
    set $P5004, $P5007
  fallback1070:
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1071:
    unless $P5003, for_done1073
    shift $P5009, $P5003
  for_redo1072:
    .const 'Sub' $P5008 = 'cuid_206_1351021533.614' 
    capture_lex $P5008
    $P5001 = $P5008($P5009)
    goto for_next1071
  for_done1073:
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5015, $P5013, $P5014, "%!config"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next1074:
    unless $P5012, for_done1076
    shift $P5017, $P5012
  for_redo1075:
    .const 'Sub' $P5016 = 'cuid_207_1351021533.614' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1074
  for_done1076:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1351021533.614") :anon :lex :outer("cuid_132_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1543
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1544
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
.sub "" :subid("cuid_207_1351021533.614") :anon :lex :outer("cuid_132_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1546
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1547
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
.sub "vmstat" :subid("cuid_133_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1552
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
.sub "nqpevent" :subid("cuid_134_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1560
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_209_1351021533.614' 
    capture_lex $P5011 
    if haz_param_10, default1091
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5010
  default1091:
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if329_end1080 
    set $P5004, $P101
  if329_end1080:
    unless $P5004 goto if328_end1078 
.annotate 'line', 1564
    $P5006 = $P101."flush"()
  if328_end1078:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if330_end1082 
    .const 'Sub' $P5007 = 'cuid_209_1351021533.614' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if330_end1082:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1351021533.614") :anon :lex :outer("cuid_134_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1567
    .const 'Sub' $P5018 = 'cuid_208_1351021533.614' 
    capture_lex $P5018 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5006, "$spec"
    set $P5005, $P5006[0]
    unless_null $P5005, fallback1083
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5007
  fallback1083:
    set $P101, $P5005
    find_lex $P5009, "$spec"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback1084
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5010
  fallback1084:
    set $P102, $P5008
    set $S5002, $P101
    isgt $I5001, $S5002, ""
    unless $I5001 goto if331_else1085 
    .const 'Sub' $P5011 = 'cuid_208_1351021533.614' 
    capture_lex $P5011
    $P5012 = $P5011()
    goto if331_end1086
  if331_else1085:
.annotate 'line', 1576
.annotate 'line', 1577
    getinterp $P5014
    $P5015 = $P5014."stderr_handle"()
    nqpevent_fh $P5013, $P5015
  if331_end1086:
    set $S5003, $P102
    iseq $I5003, $S5003, ""
    unless $I5003 goto if333_else1089 
    box $P5017, 31
    set $P5016, $P5017
    goto if333_end1090
  if333_else1089:
    set $P5016, $P102
  if333_end1090:
    set $I5004, $P5016
    nqpdebflags $I5002, $I5004
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1351021533.614") :anon :lex :outer("cuid_209_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1571
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    new $P5002, "FileHandle"
    set $P101, $P5002
.annotate 'line', 1573
    find_lex $P5003, "$file"
    $P5004 = $P101."open"($P5003, "w")
    if $P5004 goto unless332_end1088 
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$file"
    set $S5002, $P5007
    concat $S5001, "Cannot write to ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless332_end1088:
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_135_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1584
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_210_1351021533.614' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, "ResizableStringArray"
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1094:
    unless $P5005, for_done1096
    shift $P5010, $P5005
  for_redo1095:
    .const 'Sub' $P5009 = 'cuid_210_1351021533.614' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1094
  for_done1096:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1351021533.614") :anon :lex :outer("cuid_135_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1586
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if334_end1093 
.annotate 'line', 1587
.annotate 'line', 1588
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if334_end1093:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_136_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1594
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5027 = 'cuid_211_1351021533.614' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_212_1351021533.614' 
    capture_lex $P5027 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1097
    .lex "RETURN", $P104
    set $P5004, _lex_param_2["before"]
    unless_null $P5004, fallback1101
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5005
  fallback1101:
    unless $P5004 goto if335_else1099 
.annotate 'line', 1597
    set $P5006, _lex_param_2["before"]
    unless_null $P5006, fallback1102
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5007
  fallback1102:
    set $P102, $P5006
    box $P5008, "before"
    set $P101, $P5008
    goto if335_end1100
  if335_else1099:
    set $P5009, _lex_param_2["after"]
    unless_null $P5009, fallback1105
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5010
  fallback1105:
    unless $P5009 goto if336_else1103 
.annotate 'line', 1600
    set $P5011, _lex_param_2["after"]
    unless_null $P5011, fallback1106
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5012
  fallback1106:
    set $P102, $P5011
    box $P5013, "after"
    set $P101, $P5013
    set $P5016, $P101
    goto if336_end1104
  if336_else1103:
    .const 'Sub' $P5014 = 'cuid_211_1351021533.614' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
  if336_end1104:
  if335_end1100:
    new $P5017, "ResizableStringArray"
    set $P103, $P5017
.annotate 'line', 1610
    nqp_decontainerize $P5021, _lex_param_0
    $P5022 = $P5021."stages"()
    set $P5018, $P5022
    iter $P5020, $P5022
  for_next1111:
    unless $P5020, for_done1113
    shift $P5024, $P5020
  for_redo1112:
    .const 'Sub' $P5023 = 'cuid_212_1351021533.614' 
    capture_lex $P5023
    $P5018 = $P5023($P5024)
    goto for_next1111
  for_done1113:
.annotate 'line', 1623
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."stages"($P103)
    goto lexotic_1098
  lexotic_1097:
    .get_results ($P5026)
  lexotic_1098:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1351021533.614") :anon :lex :outer("cuid_136_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1603
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1604
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1606
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1351021533.614") :anon :lex :outer("cuid_136_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1610
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if337_else1107 
.annotate 'line', 1611
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if338_else1109 
.annotate 'line', 1612
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if338_end1110
  if338_else1109:
.annotate 'line', 1615
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if338_end1110:
    set $P5011, $P5009
    goto if337_end1108
  if337_else1107:
.annotate 'line', 1619
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if337_end1108:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_137_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1626
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_213_1351021533.614' 
    capture_lex $P5021 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set $P5006, $P101[0]
    unless_null $P5006, fallback1114
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5007
  fallback1114:
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
    unless $I5002 goto if339_end1116 
.annotate 'line', 1632
    set $P5010, $P101[0]
    unless_null $P5010, fallback1117
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5010, $P5011
  fallback1117:
    set $S5006, $P5010
    substr $S5005, $S5006, 1
    box $P5012, $S5005
    set $P101[0], $P5012
    set $S5008, $P102
    set $P5013, $P101[-1]
    unless_null $P5013, fallback1118
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5014
  fallback1118:
    set $S5009, $P5013
    concat $S5007, $S5008, $S5009
    box $P5015, $S5007
    set $P101[-1], $P5015
  if339_end1116:
    set $P5016, $P101
    iter $P5018, $P101
  for_next1121:
    unless $P5018, for_done1123
    shift $P5020, $P5018
  for_redo1122:
    .const 'Sub' $P5019 = 'cuid_213_1351021533.614' 
    capture_lex $P5019
    $P5016 = $P5019($P5020)
    goto for_next1121
  for_done1123:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1351021533.614") :anon :lex :outer("cuid_137_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1640
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless340_end1120 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless340_end1120:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_138_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1646
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("cache") :optional 
    .param int haz_param_11 :opt_flag 
    if haz_param_11, default1124
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_3, $P5001
  default1124:
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
.sub "user-progname" :subid("cuid_139_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1712
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1125
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1125:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_140_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1715
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_141_1351021533.614") :anon :lex :outer("cuid_142_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1716
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1351021533.614") :anon :lex :outer("cuid_1_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1814
    .const 'Sub' $P5006 = 'cuid_143_1351021533.614' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_144_1351021533.614' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_145_1351021533.614' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_146_1351021533.614' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_147_1351021533.614' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_143_1351021533.614' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_144_1351021533.614' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_145_1351021533.614' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_146_1351021533.614' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_147_1351021533.614' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_143_1351021533.614") :anon :lex :outer("cuid_148_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1818
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_144_1351021533.614") :anon :lex :outer("cuid_148_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1823
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_145_1351021533.614") :anon :lex :outer("cuid_148_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1824
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_146_1351021533.614") :anon :lex :outer("cuid_148_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1826
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_147_1351021533.614") :anon :lex :outer("cuid_148_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1830
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if341_else1127 
.annotate 'line', 1833
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!options"
    set $S5002, _lex_param_1
    set $P5004, $P5007[$S5002]
    unless_null $P5004, fallback1131
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5008
  fallback1131:
    nqp_islist $I5002, $P5004
    unless $I5002 goto if342_else1129 
.annotate 'line', 1834
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!options"
    set $S5003, _lex_param_1
    set $P5009, $P5012[$S5003]
    unless_null $P5009, fallback1132
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5013
  fallback1132:
    push $P5009, _lex_param_2
    set $P5023, $P5009
    goto if342_end1130
  if342_else1129:
.annotate 'line', 1836
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5016, $P5014, $P5015, "%!options"
    set $S5004, _lex_param_1
    new $P5017, 'ResizablePMCArray'
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5021, $P5019, $P5020, "%!options"
    set $S5005, _lex_param_1
    set $P5018, $P5021[$S5005]
    unless_null $P5018, fallback1133
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5022
  fallback1133:
    push $P5017, $P5018
    push $P5017, _lex_param_2
    set $P5016[$S5004], $P5017
    set $P5023, $P5017
  if342_end1130:
    set $P5027, $P5023
    goto if341_end1128
  if341_else1127:
.annotate 'line', 1839
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    repr_get_attr_obj $P5026, $P5024, $P5025, "%!options"
    set $S5006, _lex_param_1
    set $P5026[$S5006], _lex_param_2
    set $P5027, _lex_param_2
  if341_end1128:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1351021533.614") :anon :lex :outer("cuid_1_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1845
    .const 'Sub' $P5011 = 'cuid_149_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_150_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_151_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_152_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_153_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_154_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_155_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_156_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_157_1351021533.614' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_158_1351021533.614' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_149_1351021533.614' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_150_1351021533.614' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_151_1351021533.614' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_152_1351021533.614' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_153_1351021533.614' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_154_1351021533.614' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_155_1351021533.614' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_156_1351021533.614' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_157_1351021533.614' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_158_1351021533.614' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_149_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1851
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 1852
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1853
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_150_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1857
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_151_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1861
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_214_1351021533.614' 
    capture_lex $P5023 
    if haz_param_12, default1137
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1137:
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1134:
    unless $P5019, for_done1136
    shift $P5021, $P5019
  for_redo1135:
    .const 'Sub' $P5020 = 'cuid_214_1351021533.614' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1134
  for_done1136:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1351021533.614") :anon :lex :outer("cuid_151_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1867
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1868
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_152_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1871
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_153_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1875
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
.sub "add-spec" :subid("cuid_154_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1880
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_215_1351021533.614' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    unless $I5002 goto if343_else1138 
.annotate 'line', 1884
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1886
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if343_end1139
  if343_else1138:
.annotate 'line', 1887
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1889
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if343_end1139:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1140:
    unless $P5013, for_done1142
    shift $P5015, $P5013
  for_redo1141:
    .const 'Sub' $P5014 = 'cuid_215_1351021533.614' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1140
  for_done1142:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1351021533.614") :anon :lex :outer("cuid_154_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1891
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_155_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1897
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1143
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless345_end1148 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless345_end1148:
    unless $I5003 goto if344_end1146 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if344_end1146:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if346_end1150 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if346_end1150:
    box $P5005, 0
    goto lexotic_1144
  lexotic_1143:
    .get_results ($P5005)
  lexotic_1144:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_156_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1903
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!options"
    set $S5001, _lex_param_1
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1151
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback1151:
    set $P101, $P5002
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5001, $S5002, "s"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_157_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1908
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!options"
    set $S5001, _lex_param_1
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1152
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback1152:
    set $P101, $P5002
    set $S5002, $P101
    iseq $I5001, $S5002, "s?"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_158_1351021533.614") :anon :lex :outer("cuid_159_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1913
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_216_1351021533.614' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_217_1351021533.614' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_219_1351021533.614' 
    capture_lex $P5021 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_216_1351021533.614' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_217_1351021533.614' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1162
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1917
    nqp_get_sc_object $P5012, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    nqp_get_package_through_who $P5011, $P5012, "HLL"
    nqp_get_package_through_who $P5010, $P5011, "CommandLine"
    get_who $P5009, $P5010
    set $P5008, $P5009["Result"]
    unless_null $P5008, fallback1164
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5013
  fallback1164:
    $P5014 = $P5008."new"()
    set $P103, $P5014
.annotate 'line', 1918
    $P103."init"()
  while349_test1165:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5018, $I5001
    set $P5017, $P5018
    unless $I5001 goto while349_done1169 
  while349_redo1167:
    .const 'Sub' $P5015 = 'cuid_219_1351021533.614' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
    goto while349_test1165 
  while349_done1169:
    find_lex $P5019, "RETURN"
    $P5020 = $P5019($P103)
    goto lexotic_1163
  lexotic_1162:
    .get_results ($P5020)
  lexotic_1163:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_216_1351021533.614") :anon :lex :outer("cuid_158_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1921
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_1 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if347_else1153 
.annotate 'line', 1922
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5008, $P5003
    goto if347_end1154
  if347_else1153:
.annotate 'line', 1924
    find_lex $P5004, "$i"
    set tmp_1, $P5004
    set $N5006, tmp_1
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5005, "@args"
    find_lex $P5006, "$i"
    set $I5002, $P5006
    set $P5004, $P5005[$I5002]
    unless_null $P5004, fallback1155
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5007
  fallback1155:
    set $P5008, $P5004
  if347_end1154:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_217_1351021533.614") :anon :lex :outer("cuid_158_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1932
    .local pmc tmp_2 
    .local pmc tmp_3 
    find_lex $P5001, "$i"
    set tmp_2, $P5001
    set $N5002, tmp_2
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while348_test1156:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto while348_done1160 
  while348_redo1158:
.annotate 'line', 1934
.annotate 'line', 1935
    find_lex $P5003, "$result"
    find_lex $P5005, "@args"
    find_lex $P5006, "$i"
    set $I5002, $P5006
    set $P5004, $P5005[$I5002]
    unless_null $P5004, fallback1161
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5007
  fallback1161:
    $P5003."add-argument"($P5004)
    find_lex $P5008, "$i"
    set tmp_3, $P5008
    set $N5004, tmp_3
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5009, $N5003
    store_lex "$i", $P5009
    set $P5008, tmp_3
    goto while348_test1156 
  while348_done1160:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1351021533.614") :anon :lex :outer("cuid_158_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1940
    .const 'Sub' $P5029 = 'cuid_218_1351021533.614' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_222_1351021533.614' 
    capture_lex $P5029 
    .lex "$cur", $P101 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    find_lex $P5003, "@args"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback1170
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5005
  fallback1170:
    set $P101, $P5002
.annotate 'line', 1942
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    $P5008 = $P5006."is-option"($P101)
    unless $P5008 goto if350_else1171 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5002, $S5001, "--"
    unless $I5002 goto if351_else1173 
    .const 'Sub' $P5009 = 'cuid_218_1351021533.614' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5013, $P5010
    goto if351_end1174
  if351_else1173:
    .const 'Sub' $P5011 = 'cuid_222_1351021533.614' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if351_end1174:
    goto if350_end1172
  if350_else1171:
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5018, $P5015, $P5017, "%!stopper"
    set $S5003, $P101
    set $P5014, $P5018[$S5003]
    unless_null $P5014, fallback1219
    nqp_get_sc_object $P5019, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5019
  fallback1219:
    unless $P5014 goto if369_else1217 
.annotate 'line', 2001
.annotate 'line', 2002
    $P5020 = "&slurp-rest"()
    set $P5028, $P5020
    goto if369_end1218
  if369_else1217:
.annotate 'line', 2003
.annotate 'line', 2004
    find_lex $P5021, "$result"
    $P5021."add-argument"($P101)
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5025, $P5022, $P5024, "$!stop-after-first-arg"
    set $P5027, $P5025
    unless $P5025 goto if370_end1221 
.annotate 'line', 2005
    $P5026 = "&slurp-rest"()
    set $P5027, $P5026
  if370_end1221:
    set $P5028, $P5027
  if369_end1218:
  if350_end1172:
    find_lex $P5029, "$i"
    set tmp_5, $P5029
    set $N5002, tmp_5
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5030, $N5001
    store_lex "$i", $P5030
    .return (tmp_5) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1351021533.614") :anon :lex :outer("cuid_219_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1943
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    find_lex $P5006, "@args"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback1175
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5008
  fallback1175:
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
    unless $I5003 goto if352_else1176 
.annotate 'line', 1950
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
    goto if352_end1177
  if352_else1176:
.annotate 'line', 1954
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."optional-value"($P101)
    set $P5021, $P5018
    unless $P5018 goto if353_end1179 
    box $P5019, ""
    set $P103, $P5019
    box $P5020, 1
    set $P104, $P5020
    set $P5021, $P104
  if353_end1179:
  if352_end1177:
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5025, $P5022, $P5024, "%!options"
    set $S5008, $P101
    exists $I5006, $P5025[$S5008]
    if $I5006 goto unless354_end1181 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5026, $S5009
    die $P5026
  unless354_end1181:
.annotate 'line', 1959
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    $P5029 = $P5027."wants-value"($P101)
    isfalse $I5007, $P5029
    box $P5031, $I5007
    set $P5030, $P5031
    unless $I5007 goto if356_end1185 
    set $P5030, $P104
  if356_end1185:
    unless $P5030 goto if355_end1183 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5032, $S5011
    die $P5032
  if355_end1183:
    isfalse $I5008, $P104
    box $P5037, $I5008
    set $P5036, $P5037
    unless $I5008 goto if358_end1189 
.annotate 'line', 1960
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."wants-value"($P101)
    set $P5036, $P5035
  if358_end1189:
    unless $P5036 goto if357_end1187 
.annotate 'line', 1961
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5038 = "&get-value"($S5014)
    set $P103, $P5038
  if357_end1187:
.annotate 'line', 1963
    find_lex $P5039, "$result"
    $P5039."add-option"($P101, $P103)
    find_lex $P5042, "self"
    nqp_decontainerize $P5041, $P5042
    nqp_get_sc_object $P5043, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5044, $P5041, $P5043, "%!stopper"
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5040, $P5044[$S5016]
    unless_null $P5040, fallback1192
    nqp_get_sc_object $P5045, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5040, $P5045
  fallback1192:
    set $P5053, $P5040
    unless $P5040 goto if359_end1191 
    find_lex $P5048, "$?PACKAGE"
    get_who $P5047, $P5048
    set $P5046, $P5047["slurp-rest"]
    unless_null $P5046, fallback1193
    nqp_get_sc_object $P5051, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5050, $P5051
    set $P5049, $P5050["slurp-rest"]
    unless_null $P5049, vivi_3601194
    nqp_get_sc_object $P5052, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5049, $P5052
  vivi_3601194:
    set $P5046, $P5049
  fallback1193:
    set $P5053, $P5046
  if359_end1191:
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1351021533.614") :anon :lex :outer("cuid_219_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1965
    .const 'Sub' $P5032 = 'cuid_221_1351021533.614' 
    capture_lex $P5032 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    unless $I5002 goto if361_else1195 
.annotate 'line', 1968
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5010, $P5007, $P5009, "%!options"
    set $S5004, $P101
    set $P5006, $P5010[$S5004]
    unless_null $P5006, fallback1199
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5011
  fallback1199:
    if $P5006 goto unless362_end1198 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5012, $S5005
    die $P5012
  unless362_end1198:
.annotate 'line', 1971
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if363_else1200 
.annotate 'line', 1972
    find_lex $P5016, "$result"
.annotate 'line', 1973
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5017 = "&get-value"($S5007)
    $P5018 = $P5016."add-option"($P101, $P5017)
    goto if363_end1201
  if363_else1200:
.annotate 'line', 1974
.annotate 'line', 1975
    find_lex $P5019, "$result"
    $P5020 = $P5019."add-option"($P101, 1)
  if363_end1201:
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    nqp_get_sc_object $P5024, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5025, $P5022, $P5024, "%!stopper"
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5021, $P5025[$S5009]
    unless_null $P5021, fallback1204
    nqp_get_sc_object $P5026, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5021, $P5026
  fallback1204:
    set $P5028, $P5021
    unless $P5021 goto if364_end1203 
.annotate 'line', 1977
    $P5027 = "&slurp-rest"()
    set $P5028, $P5027
  if364_end1203:
    set $P5031, $P5028
    goto if361_end1196
  if361_else1195:
    .const 'Sub' $P5029 = 'cuid_221_1351021533.614' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
  if361_end1196:
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1351021533.614") :anon :lex :outer("cuid_222_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1978
    .const 'Sub' $P5009 = 'cuid_220_1351021533.614' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while365_handlers1208
    push_eh $P5007
  while365_test1205:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while365_done1209 
  while365_redo1207:
    .const 'Sub' $P5004 = 'cuid_220_1351021533.614' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while365_test1205 
  while365_handlers1208:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while365_test1205
    eq $P5007, .CONTROL_LOOP_REDO, while365_redo1207
  while365_done1209:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1351021533.614") :anon :lex :outer("cuid_221_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1980
    .lex "$o", $P101 
    .local pmc tmp_4 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    nqp_get_sc_object $P5008, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set $S5003, $P101
    set $P5005, $P5009[$S5003]
    unless_null $P5005, fallback1212
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5005, $P5010
  fallback1212:
    unless $P5005 goto if366_else1210 
.annotate 'line', 1982
.annotate 'line', 1983
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."wants-value"($P101)
    unless $P5013 goto if367_else1213 
    find_lex $P5014, "$i"
    set $N5002, $P5014
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5015, "$len"
    set $N5004, $P5015
    iseq $I5002, $N5001, $N5004
    unless $I5002 goto if368_end1216 
.annotate 'line', 1984
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5016, "$opt"
    set $S5009, $P5016
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5017, $S5004
    die $P5017
  if368_end1216:
.annotate 'line', 1987
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
    goto if367_end1214
  if367_else1213:
.annotate 'line', 1990
.annotate 'line', 1991
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
    set $P5023, $P5022
  if367_end1214:
    goto if366_end1211
  if366_else1210:
.annotate 'line', 1994
    find_lex $P5025, "$opt"
    set $S5016, $P5025
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5026, $S5012
    die $P5026
  if366_end1211:
    find_lex $P5027, "$i"
    set tmp_4, $P5027
    set $N5009, tmp_4
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5028, $N5008
    store_lex "$i", $P5028
    .return (tmp_4) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1351021533.614") :anon :lex :outer("cuid_1_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2035
    .const 'Sub' $P5014 = 'cuid_160_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_161_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_162_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_163_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_164_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_165_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_166_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_167_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_168_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_169_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_170_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_171_1351021533.614' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_172_1351021533.614' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_160_1351021533.614' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_161_1351021533.614' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_162_1351021533.614' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_163_1351021533.614' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_164_1351021533.614' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_165_1351021533.614' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_166_1351021533.614' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_167_1351021533.614' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_168_1351021533.614' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_169_1351021533.614' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_170_1351021533.614' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_171_1351021533.614' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_172_1351021533.614' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_160_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2066
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_13, default1227
    box $P5042, "<unknown>"
    set _lex_param_2, $P5042
  default1227:
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    find_dynamic_lex $P5019, "%*COMPILING"
    unless_null $P5019, fallback1222
    nqp_get_sc_object $P5022, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5021, $P5022
    set $P5020, $P5021["%COMPILING"]
    unless_null $P5020, fallback1223
    nqp_get_sc_object $P5024, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    get_who $P5023, $P5024
    new $P5025, 'Hash'
    set $P5023["%COMPILING"], $P5025
    set $P5020, $P5025
  fallback1223:
    unless_null $P5020, vivi_3711224
    die "Contextual %*COMPILING not found"
    box $P5026, "Contextual %*COMPILING not found"
    set $P5020, $P5026
  vivi_3711224:
    set $P5019, $P5020
  fallback1222:
    set $P5018, $P5019["%?OPTIONS"]
    unless_null $P5018, fallback1225
    nqp_get_sc_object $P5027, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5027
  fallback1225:
    set $P5017, $P5018["target"]
    unless_null $P5017, fallback1226
    nqp_get_sc_object $P5028, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5017, $P5028
  fallback1226:
    set $S5002, $P5017
    iseq $I5001, $S5002, "pir"
    box $P5029, $I5001
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    box $P5032, 0
    repr_bind_attr_obj $P5030, $P5031, "$!num_code_refs", $P5032
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    new $P5035, 'ResizablePMCArray'
    repr_bind_attr_obj $P5033, $P5034, "$!code_ref_blocks", $P5035
.annotate 'line', 2076
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!sc"
    $P5038."set_description"(_lex_param_2)
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc"
    nqp_push_compiling_sc $P5041
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_161_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2083
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!addr_to_slot"
    get_id $I5001, _lex_param_1
    set $S5001, $I5001
    set $P5002, $P5005[$S5001]
    unless_null $P5002, fallback1228
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback1228:
    set $P101, $P5002
    defined $I5002, $P101
    if $I5002 goto unless372_end1230 
.annotate 'line', 2085
    box $P5007, "slot_for_object called on object not in context"
    die $P5007
  unless372_end1230:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_162_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2092
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
.annotate 'line', 2094
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_163_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2101
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 2104
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_164_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_165_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2115
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_166_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2121
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_14, default1237
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5015
  default1237:
    if haz_param_15, default1238
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5016
  default1238:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if373_else1231 
.annotate 'line', 2122
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if374_end1234 
.annotate 'line', 2123
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if374_end1234:
    set $P5014, $P5008
    goto if373_end1232
  if373_else1231:
.annotate 'line', 2125
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if375_end1236 
.annotate 'line', 2126
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if375_end1236:
    set $P5014, $P5013
  if373_end1232:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_167_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2132
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_16 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_16, default1245
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5015
  default1245:
    if haz_param_17, default1246
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5016
  default1246:
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if376_else1239 
.annotate 'line', 2133
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if377_end1242 
.annotate 'line', 2134
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if377_end1242:
    set $P5014, $P5008
    goto if376_end1240
  if376_else1239:
.annotate 'line', 2136
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if378_end1244 
.annotate 'line', 2137
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if378_end1244:
    set $P5014, $P5013
  if376_end1240:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_168_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2142
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_169_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2147
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_170_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2151
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_171_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2156
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_172_1351021533.614") :anon :lex :outer("cuid_173_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2161
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1351021533.614") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_223_1351021533.614' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1351021533.614" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639"
    set cur_sc, $P5001
    cur_sc."set_description"("src\\stage2\\gen\\NQPHLL.pm")
    new $P5002, 'ResizableStringArray'
    null $S5001
    push $P5002, $S5001
    push $P5002, "P6opaque"
    push $P5002, "QAST"
    push $P5002, "QRegex"
    push $P5002, "NQPCursorRole"
    push $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178"
    push $P5002, "src\\stage2\\QRegex.nqp"
    push $P5002, "NQPMatch"
    push $P5002, "NQPCursor"
    push $P5002, "NQPRegexMethod"
    push $P5002, "NQPRegex"
    push $P5002, "HLL"
    push $P5002, "DEFAULT"
    push $P5002, "CREATE"
    push $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503"
    push $P5002, "src\\stage2\\NQPCORE.setting"
    push $P5002, "bless"
    push $P5002, "BUILDALL"
    push $P5002, "new"
    push $P5002, "Str"
    push $P5002, "Numeric"
    push $P5002, "Int"
    push $P5002, "at_pos"
    push $P5002, "at_key"
    push $P5002, "defined"
    push $P5002, "ACCEPTS"
    push $P5002, "isa"
    push $P5002, "__dump"
    push $P5002, "MATCH"
    push $P5002, "Bool"
    push $P5002, "parse"
    push $P5002, "!INTERPOLATE"
    push $P5002, "!INTERPOLATE_REGEX"
    push $P5002, "target"
    push $P5002, "from"
    push $P5002, "pos"
    push $P5002, "CAPHASH"
    push $P5002, "!cursor_init"
    push $P5002, "!cursor_start"
    push $P5002, "!cursor_start_subcapture"
    push $P5002, "!cursor_capture"
    push $P5002, "!cursor_push_cstack"
    push $P5002, "!cursor_pass"
    push $P5002, "!cursor_fail"
    push $P5002, "!cursor_next"
    push $P5002, "!cursor_more"
    push $P5002, "!reduce"
    push $P5002, "!reduce_with_match"
    push $P5002, "!protoregex"
    push $P5002, "!protoregex_nfa"
    push $P5002, "!protoregex_table"
    push $P5002, "!alt"
    push $P5002, "!alt_nfa"
    push $P5002, "!precompute_nfas"
    push $P5002, "!BACKREF"
    push $P5002, "!LITERAL"
    push $P5002, "at"
    push $P5002, "before"
    push $P5002, "after"
    push $P5002, "ws"
    push $P5002, "ww"
    push $P5002, "wb"
    push $P5002, "ident"
    push $P5002, "alpha"
    push $P5002, "alnum"
    push $P5002, "upper"
    push $P5002, "lower"
    push $P5002, "digit"
    push $P5002, "xdigit"
    push $P5002, "space"
    push $P5002, "blank"
    push $P5002, "cntrl"
    push $P5002, "punct"
    push $P5002, "FAILGOAL"
    push $P5002, "termish"
    push $P5002, "term"
    push $P5002, "infix"
    push $P5002, "prefix"
    push $P5002, "postfix"
    push $P5002, "circumfix"
    push $P5002, "postcircumfix"
    push $P5002, "term:sym<circumfix>"
    push $P5002, "infixish"
    push $P5002, "prefixish"
    push $P5002, "postfixish"
    push $P5002, "nullterm"
    push $P5002, "nullterm_alt"
    push $P5002, "nulltermish"
    push $P5002, "quote_delimited"
    push $P5002, "quote_atom"
    push $P5002, "decint"
    push $P5002, "decints"
    push $P5002, "hexint"
    push $P5002, "hexints"
    push $P5002, "octint"
    push $P5002, "octints"
    push $P5002, "binint"
    push $P5002, "binints"
    push $P5002, "integer"
    push $P5002, "dec_number"
    push $P5002, "escale"
    push $P5002, "quote_escape"
    push $P5002, "quote_escape:sym<backslash>"
    push $P5002, "quote_escape:sym<stopper>"
    push $P5002, "quote_escape:sym<bs>"
    push $P5002, "quote_escape:sym<nl>"
    push $P5002, "quote_escape:sym<cr>"
    push $P5002, "quote_escape:sym<tab>"
    push $P5002, "quote_escape:sym<ff>"
    push $P5002, "quote_escape:sym<esc>"
    push $P5002, "quote_escape:sym<hex>"
    push $P5002, "quote_escape:sym<oct>"
    push $P5002, "quote_escape:sym<chr>"
    push $P5002, "quote_escape:sym<0>"
    push $P5002, "quote_escape:sym<misc>"
    push $P5002, "charname"
    push $P5002, "charnames"
    push $P5002, "charspec"
    push $P5002, "O"
    push $P5002, "panic"
    push $P5002, "peek_delimiters"
    push $P5002, "quote_EXPR"
    push $P5002, "quotemod_check"
    push $P5002, "starter"
    push $P5002, "stopper"
    push $P5002, "split_words"
    push $P5002, "EXPR"
    push $P5002, "EXPR_reduce"
    push $P5002, "ternary"
    push $P5002, "MARKER"
    push $P5002, "MARKED"
    push $P5002, "LANG"
    push $P5002, "$!orig"
    push $P5002, "$!target"
    push $P5002, "$!from"
    push $P5002, "$!pos"
    push $P5002, "$!match"
    push $P5002, "$!name"
    push $P5002, "$!bstack"
    push $P5002, "$!cstack"
    push $P5002, "$!regexsub"
    push $P5002, "$!restart"
    push $P5002, "ints_to_string"
    push $P5002, "CTXSAVE"
    push $P5002, "SET_BLOCK_OUTER_CTX"
    push $P5002, "BUILD"
    push $P5002, "language"
    push $P5002, "compiler"
    push $P5002, "config"
    push $P5002, "load_module"
    push $P5002, "autoprint"
    push $P5002, "interactive"
    push $P5002, "eval"
    push $P5002, "ctxsave"
    push $P5002, "stages"
    push $P5002, "parsegrammar"
    push $P5002, "parseactions"
    push $P5002, "interactive_banner"
    push $P5002, "interactive_prompt"
    push $P5002, "compiler_progname"
    push $P5002, "commandline_options"
    push $P5002, "command_line"
    push $P5002, "command_eval"
    push $P5002, "process_args"
    push $P5002, "evalfiles"
    push $P5002, "compile"
    push $P5002, "start"
    push $P5002, "past"
    push $P5002, "post"
    push $P5002, "pirbegin"
    push $P5002, "pir"
    push $P5002, "evalpmc"
    push $P5002, "dumper"
    push $P5002, "usage"
    push $P5002, "version"
    push $P5002, "show-config"
    push $P5002, "verbose-config"
    push $P5002, "vmstat"
    push $P5002, "nqpevent"
    push $P5002, "removestage"
    push $P5002, "addstage"
    push $P5002, "parse_name"
    push $P5002, "lineof"
    push $P5002, "user-progname"
    push $P5002, "cli-options"
    push $P5002, "cli-arguments"
    push $P5002, "@!stages"
    push $P5002, "$!parsegrammar"
    push $P5002, "$!parseactions"
    push $P5002, "@!cmdoptions"
    push $P5002, "$!usage"
    push $P5002, "$!compiler_progname"
    push $P5002, "$!language"
    push $P5002, "%!config"
    push $P5002, "$!user_progname"
    push $P5002, "@!cli-arguments"
    push $P5002, "%!cli-options"
    push $P5002, "init"
    push $P5002, "arguments"
    push $P5002, "options"
    push $P5002, "add-argument"
    push $P5002, "add-option"
    push $P5002, "@!arguments"
    push $P5002, "%!options"
    push $P5002, "stop-after-first-arg"
    push $P5002, "add-stopper"
    push $P5002, "split-option-aliases"
    push $P5002, "add-spec"
    push $P5002, "is-option"
    push $P5002, "wants-value"
    push $P5002, "optional-value"
    push $P5002, "@!specs"
    push $P5002, "%!stopper"
    push $P5002, "$!stop-after-first-arg"
    push $P5002, "slot_for_object"
    push $P5002, "add_object"
    push $P5002, "add_root_code_ref"
    push $P5002, "update_root_code_ref"
    push $P5002, "is_precompilation_mode"
    push $P5002, "add_load_dependency_task"
    push $P5002, "add_fixup_task"
    push $P5002, "sc"
    push $P5002, "handle"
    push $P5002, "code_ref_blocks"
    push $P5002, "load_dependency_tasks"
    push $P5002, "fixup_tasks"
    push $P5002, "$!sc"
    push $P5002, "$!handle"
    push $P5002, "$!precomp_mode"
    push $P5002, "$!num_code_refs"
    push $P5002, "$!code_ref_blocks"
    push $P5002, "@!load_dependency_tasks"
    push $P5002, "@!fixup_tasks"
    push $P5002, "%!addr_to_slot"
    push $P5002, ""
    push $P5002, "OPER"
    push $P5002, "alt_nfa__1_1351021533.73"
    push $P5002, "alt_nfa__2_1351021533.758"
    push $P5002, "0123456789abcdefABCDEF"
    push $P5002, "01234567"
    push $P5002, "01"
    push $P5002, "VALUE"
    push $P5002, "alt_nfa__3_1351021533.819"
    push $P5002, "alt_nfa__4_1351021533.82"
    push $P5002, "coeff"
    push $P5002, "alt_nfa__5_1351021533.837"
    push $P5002, "Ee"
    push $P5002, "alt_nfa__6_1351021533.908"
    push $P5002, "alt_nfa__7_1351021533.921"
    push $P5002, "sym"
    push $P5002, "textqq"
    push $P5002, "x"
    push $P5002, "textq"
    push $P5002, "alt_nfa__8_1351021533.958"
    push $P5002, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5002, "alt_nfa__9_1351021533.996"
    push $P5002, "__6MODEL_CORE__"
    push $P5002, "GLOBALish"
    push $P5002, "EXPORT"
    push $P5002, "55513D3AD249F7C9BD852BE8C803DA6CC8E551F6-1351021524.324"
    push $P5002, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5002, "HLL::Grammar"
    push $P5002, "orig"
    push $P5002, "match"
    push $P5002, "name"
    push $P5002, "bstack"
    push $P5002, "cstack"
    push $P5002, "regexsub"
    push $P5002, "restart"
    push $P5002, "HLL::Actions"
    push $P5002, "HLL::Compiler"
    push $P5002, "HLL::CommandLine::Result"
    push $P5002, "HLL::CommandLine::Parser"
    push $P5002, "HLL::World"
    push $P5002, "CompileTimeValue"
    push $P5002, "16DB1CA83A28E7980973C07333DCEC2A69D52B08-1351021528.701"
    push $P5002, "src\\stage2\\QASTNode.nqp"
    push $P5002, "SpecialArg"
    push $P5002, "Node"
    push $P5002, "Regex"
    push $P5002, "IVal"
    push $P5002, "NVal"
    push $P5002, "SVal"
    push $P5002, "BVal"
    push $P5002, "WVal"
    push $P5002, "Want"
    push $P5002, "Var"
    push $P5002, "VarWithFallback"
    push $P5002, "Op"
    push $P5002, "VM"
    push $P5002, "Stmts"
    push $P5002, "Stmt"
    push $P5002, "Block"
    push $P5002, "Unquote"
    push $P5002, "CompUnit"
    push $P5002, "InlinePlaceholder"
    push $P5002, "NFA"
    push $P5002, "Grammar"
    push $P5002, "Actions"
    push $P5002, "Compiler"
    push $P5002, "CommandLine"
    push $P5002, "World"
    push $P5002, "Result"
    push $P5002, "Parser"
    .const 'Sub' $P5003 = 'cuid_223_1351021533.614' 
    capture_lex $P5003
    $P5004 = $P5003()
    nqp_deserialize_sc "AQAAAEAAAAAFAAAAaAAAAA0AAADQAAAACB8AAOQAAABILQAAkMkAAAAAAACQyQAAAAAAAJDJAACQyQAAAAAAAAUAAAAGAAAADgAAAA8AAAAAAQAAAAAAAAMBAAAEAQAAEwEAABQBAAABAAAAAAAAAAEAAAAKAQAAAQAAALIBAAABAAAATAIAAAEAAADOCgAAAQAAAAwOAAABAAAAEhMAAAEAAAD4FAAAAQAAAFIXAAABAAAAZBoAAAEAAAAWHAAAAQAAAL4cAAABAAAAkB0AAAAAAACvAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAsAAAAAMAAAACAAAAAACxAAAABAAAAAIAAQAAAB4AAAAHAAAAAgABAAAASQAAAAgAAAACAAEAAABWAAAACQAAAAIAAQAAAFwAAAAKAAAAAgABAAAAYAAAAAsAAAACAAAAAACyAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAALMAAAAAAAAAAQAAAAoAAQAAAAwAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAALQAAAAAAAAAAgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAAAAAAC1AAAAAAAAAAMAAAAKAAAAAAAKAHUAAAANAAAAAgACAAAAFgAAABAAAAACAAIAAAAXAAAAEQAAAAIAAgAAABgAAAASAAAAAgACAAAAGQAAABMAAAACAAIAAAAaAAAAFAAAAAIAAgAAAB0AAAAVAAAAAgACAAAAHwAAABYAAAACAAIAAAAhAAAAFwAAAAIAAgAAACMAAAAYAAAAAgACAAAAJQAAABkAAAACAAIAAAAmAAAAGgAAAAIAAgAAACgAAAAbAAAAAgACAAAAKQAAABwAAAACAAEAAABXAAAAHQAAAAIAAQAAAFgAAAAeAAAAAgABAAAAWQAAAB8AAAACAAEAAABaAAAAIAAAAAIAAQAAAFsAAAAhAAAAAgABAAAAawAAACIAAAACAAEAAABsAAAAIwAAAAIAAQAAAG0AAAAkAAAAAgABAAAAbgAAACUAAAACAAEAAABvAAAAJgAAAAIAAQAAAHAAAAAnAAAAAgABAAAAcQAAACgAAAACAAEAAAByAAAAKQAAAAIAAQAAAHMAAAAqAAAAAgABAAAAdAAAACsAAAACAAEAAAB1AAAALAAAAAIAAQAAAHYAAAAtAAAAAgABAAAAdwAAAC4AAAACAAEAAAB4AAAALwAAAAIAAQAAAHkAAAAwAAAAAgABAAAAegAAADEAAAACAAEAAAB7AAAAMgAAAAIAAQAAAHwAAAAzAAAAAgABAAAAfQAAADQAAAACAAEAAAB+AAAANQAAAAIAAQAAAH8AAAA2AAAAAgABAAAAgAAAADcAAAACAAEAAACBAAAAOAAAAAIAAQAAAIIAAAA5AAAAAgABAAAAgwAAADoAAAACAAEAAACEAAAAOwAAAAIAAQAAAIUAAAA8AAAAAgABAAAAhgAAAD0AAAACAAEAAACHAAAAPgAAAAIAAQAAAIgAAAA/AAAAAgABAAAAiQAAAEAAAAACAAEAAACKAAAAQQAAAAIAAQAAAIsAAABCAAAAAgABAAAAjAAAAEMAAAACAAEAAACNAAAARAAAAAIAAQAAAI4AAABFAAAAAgABAAAAjwAAAEYAAAACAAEAAACQAAAARwAAAAIAAQAAAJEAAABIAAAAAgABAAAAkgAAAEkAAAACAAAAAAA0AAAASgAAAAIAAAAAAAQAAABLAAAAAgAAAAAABQAAAEwAAAACAAAAAAAGAAAATQAAAAIAAAAAAAcAAABOAAAAAgAAAAAACAAAAE8AAAACAAAAAAAJAAAAUAAAAAIAAAAAAAoAAABRAAAAAgAAAAAACwAAAFIAAAACAAAAAAAMAAAAUwAAAAIAAAAAAA0AAABUAAAAAgAAAAAADgAAAFUAAAACAAAAAAAPAAAAVgAAAAIAAAAAABAAAABXAAAAAgAAAAAAEQAAAFgAAAACAAAAAAASAAAAWQAAAAIAAAAAABMAAABaAAAAAgAAAAAAFAAAAFsAAAACAAAAAAAVAAAAXAAAAAIAAAAAABYAAABdAAAAAgAAAAAAFwAAAF4AAAACAAAAAAAYAAAAXwAAAAIAAAAAABkAAABgAAAAAgAAAAAAGgAAAGEAAAACAAAAAAAbAAAAYgAAAAIAAAAAABwAAABjAAAAAgAAAAAAHQAAAGQAAAACAAAAAAAeAAAAZQAAAAIAAAAAAB8AAABmAAAAAgAAAAAAIAAAAGcAAAACAAAAAAAhAAAAaAAAAAIAAAAAACIAAABpAAAAAgAAAAAAIwAAAGoAAAACAAAAAAAkAAAAawAAAAIAAAAAACUAAABsAAAAAgAAAAAAJgAAAG0AAAACAAAAAAAnAAAAbgAAAAIAAAAAACgAAABvAAAAAgAAAAAAKQAAAHAAAAACAAAAAAAqAAAAcQAAAAIAAAAAACsAAAByAAAAAgAAAAAALAAAAHMAAAACAAAAAAAuAAAAdAAAAAIAAAAAADAAAAB1AAAAAgAAAAAAMQAAAHYAAAACAAAAAAAyAAAAdwAAAAIAAAAAADMAAAB4AAAAAgAAAAAANQAAAHkAAAACAAAAAAA2AAAAegAAAAIAAAAAADcAAAB7AAAAAgAAAAAAOAAAAHwAAAACAAAAAAA5AAAAfQAAAAIAAAAAADoAAAB+AAAAAgAAAAAAOwAAAH8AAAACAAAAAAA8AAAAgAAAAAIAAAAAAD0AAACBAAAAAgAAAAAAPgAAAIIAAAACAAAAAAA/AAAAgwAAAAIAAAAAAEAAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAAwAAAAIAAQAAAFYAAAACAAIAAAAVAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgABAAAAWAAAAAAAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAQAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAVAAAAAQABAAEAAgACAAAAFQAAAAIAAgAAABUAAAACAAIAAAAVAAAAAgACAAAAFQAAAAIAAgAAABUAAAACAAIAAAAVAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAgAAABUAAAADAAIAAQAAAFYAAAAKAAoAAACEAAAABAAAAAAAAAAAAIUAAAAEAAEAAAAAAAAAhgAAAAQAAgAAAAAAAACHAAAABAADAAAAAAAAAIgAAAAEAAQAAAAAAAAAiQAAAAQABQAAAAAAAACKAAAABAAGAAAAAAAAAIsAAAAEAAcAAAAAAAAAjAAAAAQACAAAAAAAAACNAAAABAAJAAAAAAAAAAIAAAAAAAMAAAADAAAAAAC2AAAAAAAAAEEAAAAKAAAAAAAKAC4AAAANAAAAAgACAAAAFgAAABAAAAACAAIAAAAXAAAAEQAAAAIAAgAAABgAAAASAAAAAgACAAAAGQAAABMAAAACAAIAAAAaAAAAFAAAAAIAAgAAAB0AAAAVAAAAAgACAAAAHwAAABYAAAACAAIAAAAhAAAAFwAAAAIAAgAAACMAAAAYAAAAAgACAAAAJQAAABkAAAACAAIAAAAmAAAAGgAAAAIAAgAAACgAAAAbAAAAAgACAAAAKQAAAI4AAAACAAAAAABCAAAAjwAAAAIAAAAAAEMAAACQAAAAAgAAAAAARAAAAH4AAAACAAAAAABFAAAAUQAAAAIAAAAAAEYAAABKAAAAAgAAAAAARwAAAFUAAAACAAAAAABIAAAAVgAAAAIAAAAAAEkAAABiAAAAAgAAAAAASgAAAGMAAAACAAAAAABLAAAAWgAAAAIAAAAAAEwAAABcAAAAAgAAAAAATQAAAF4AAAACAAAAAABOAAAAYAAAAAIAAAAAAE8AAAB5AAAAAgAAAAAAUAAAAFgAAAACAAAAAABRAAAAWQAAAAIAAAAAAFIAAABmAAAAAgAAAAAAUwAAAGcAAAACAAAAAABUAAAAaAAAAAIAAAAAAFUAAABpAAAAAgAAAAAAVgAAAGoAAAACAAAAAABXAAAAawAAAAIAAAAAAFgAAABsAAAAAgAAAAAAWQAAAG0AAAACAAAAAABaAAAAbgAAAAIAAAAAAFsAAABvAAAAAgAAAAAAXAAAAHAAAAACAAAAAABdAAAAcQAAAAIAAAAAAF4AAAByAAAAAgAAAAAAXwAAAHMAAAACAAAAAABgAAAAdAAAAAIAAAAAAGEAAAB1AAAAAgAAAAAAYgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABBAAAAAgACAAAAFQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAFQAAAAMAAgAAAAAAQQAAAAMAAAAAALcAAAAAAAAAYwAAAAoAAAAAAAoAOAAAAA0AAAACAAIAAAAWAAAAEAAAAAIAAgAAABcAAAARAAAAAgACAAAAGAAAABIAAAACAAAAAABkAAAAEwAAAAIAAgAAABoAAAAUAAAAAgACAAAAHQAAABUAAAACAAIAAAAfAAAAFgAAAAIAAgAAACEAAAAXAAAAAgACAAAAIwAAABgAAAACAAIAAAAlAAAAGQAAAAIAAgAAACYAAAAaAAAAAgACAAAAKAAAABsAAAACAAIAAAApAAAAkQAAAAIAAAAAAGUAAACSAAAAAgAAAAAAZgAAAJMAAAACAAAAAABnAAAAlAAAAAIAAAAAAGgAAACVAAAAAgAAAAAAaQAAAJYAAAACAAAAAABqAAAAlwAAAAIAAAAAAGsAAACYAAAAAgAAAAAAbAAAAJkAAAACAAAAAABtAAAAdwAAAAIAAAAAAG4AAACaAAAAAgAAAAAAbwAAAJsAAAACAAAAAABwAAAAnAAAAAIAAAAAAHEAAACdAAAAAgAAAAAAcgAAAJ4AAAACAAAAAABzAAAAnwAAAAIAAAAAAHQAAACgAAAAAgAAAAAAdQAAAKEAAAACAAAAAAB2AAAAogAAAAIAAAAAAHcAAACjAAAAAgAAAAAAeAAAAKQAAAACAAAAAAB5AAAApQAAAAIAAAAAAHoAAACmAAAAAgAAAAAAewAAAB4AAAACAAAAAAB8AAAApwAAAAIAAAAAAH0AAACoAAAAAgAAAAAAfgAAAKkAAAACAAAAAAB/AAAAqgAAAAIAAAAAAIAAAACrAAAAAgAAAAAAgQAAAKwAAAACAAAAAACCAAAArQAAAAIAAAAAAIMAAACuAAAAAgAAAAAAhAAAAK8AAAACAAAAAACFAAAAsAAAAAIAAAAAAIYAAACxAAAAAgAAAAAAhwAAALIAAAACAAAAAACIAAAAswAAAAIAAAAAAIkAAAC0AAAAAgAAAAAAigAAALUAAAACAAAAAACLAAAAtgAAAAIAAAAAAIwAAAC3AAAAAgAAAAAAjQAAALgAAAACAAAAAACOAAAAuQAAAAIAAAAAAI8AAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAYwAAAAIAAgAAABUAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAAFQAAAAIAAgAAABUAAAABAAIAAgAAABUAAAACAAIAAAAVAAAAAgACAAAAFQAAAAEAAgACAAAAFQAAAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAFQAAAAMAAgAAAAAAYwAAAAoACwAAALoAAAAEAAAAAAAAAAAAuwAAAAQAAQAAAAAAAAC8AAAABAACAAAAAAAAAL0AAAAEAAMAAAAAAAAAvgAAAAQABAAAAAAAAAC/AAAABAAFAAAAAAAAAMAAAAAEAAYAAAAAAAAAwQAAAAQABwAAAAAAAADCAAAABAAIAAAAAAAAAMMAAAAEAAkAAAAAAAAAxAAAAAQACgAAAAAAAAAAAAAAuAAAAAAAAACQAAAACgAAAAAACgASAAAADQAAAAIAAgAAABYAAAAQAAAAAgACAAAAFwAAABEAAAACAAIAAAAYAAAAEgAAAAIAAgAAABkAAAATAAAAAgACAAAAGgAAABQAAAACAAIAAAAdAAAAFQAAAAIAAgAAAB8AAAAWAAAAAgACAAAAIQAAABcAAAACAAIAAAAjAAAAGAAAAAIAAgAAACUAAAAZAAAAAgACAAAAJgAAABoAAAACAAIAAAAoAAAAGwAAAAIAAgAAACkAAADFAAAAAgAAAAAAkQAAAMYAAAACAAAAAACSAAAAxwAAAAIAAAAAAJMAAADIAAAAAgAAAAAAlAAAAMkAAAACAAAAAACVAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAJAAAAACAAIAAAAVAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAFQAAAAMAAgAAAAAAkAAAAAoAAgAAAMoAAAAEAAAAAAAAAAAAywAAAAQAAQAAAAAAAAAAAAAAuQAAAAAAAACWAAAACgAAAAAACgAWAAAADQAAAAIAAgAAABYAAAAQAAAAAgACAAAAFwAAABEAAAACAAIAAAAYAAAAEgAAAAIAAAAAAJcAAAATAAAAAgACAAAAGgAAABQAAAACAAIAAAAdAAAAFQAAAAIAAgAAAB8AAAAWAAAAAgACAAAAIQAAABcAAAACAAIAAAAjAAAAGAAAAAIAAgAAACUAAAAZAAAAAgACAAAAJgAAABoAAAACAAIAAAAoAAAAGwAAAAIAAgAAACkAAADMAAAAAgAAAAAAmAAAAJEAAAACAAAAAACZAAAAzQAAAAIAAAAAAJoAAADOAAAAAgAAAAAAmwAAAM8AAAACAAAAAACcAAAA0AAAAAIAAAAAAJ0AAADRAAAAAgAAAAAAngAAANIAAAACAAAAAACfAAAAHgAAAAIAAAAAAKAAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAlgAAAAIAAgAAABUAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAQACAAIAAAAVAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABUAAAADAAIAAAAAAJYAAAAKAAQAAADTAAAABAAAAAAAAAAAAMsAAAAEAAEAAAAAAAAA1AAAAAQAAgAAAAAAAADVAAAABAADAAAAAAAAAAAAAAC6AAAAAAAAAKEAAAAKAAAAAAAKABoAAAANAAAAAgACAAAAFgAAABAAAAACAAIAAAAXAAAAEQAAAAIAAgAAABgAAAASAAAAAgACAAAAGQAAABMAAAACAAIAAAAaAAAAFAAAAAIAAgAAAB0AAAAVAAAAAgACAAAAHwAAABYAAAACAAIAAAAhAAAAFwAAAAIAAgAAACMAAAAYAAAAAgACAAAAJQAAABkAAAACAAIAAAAmAAAAGgAAAAIAAgAAACgAAAAbAAAAAgACAAAAKQAAAJEAAAACAAAAAACiAAAA1gAAAAIAAAAAAKMAAADXAAAAAgAAAAAApAAAANgAAAACAAAAAAClAAAA2QAAAAIAAAAAAKYAAADaAAAAAgAAAAAApwAAANsAAAACAAAAAACoAAAA3AAAAAIAAAAAAKkAAADdAAAAAgAAAAAAqgAAAN4AAAACAAAAAACrAAAA3wAAAAIAAAAAAKwAAADgAAAAAgAAAAAArQAAAOEAAAACAAAAAACuAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAKEAAAACAAIAAAAVAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAVAAAAAgACAAAAFQAAAAIAAgAAABUAAAACAAIAAAAVAAAAAgACAAAAFQAAAAEAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAVAAAAAwACAAAAAAChAAAACgAIAAAA4gAAAAQAAAAAAAAAAADjAAAABAABAAAAAAAAAOQAAAAEAAIAAAAAAAAA5QAAAAQAAwAAAAAAAADmAAAABAAEAAAAAAAAAOcAAAAEAAUAAAAAAAAA6AAAAAQABgAAAAAAAADpAAAABAAHAAAAAAAAAAAAAADfAAAAAAAAALAAAAAKABQAAAASAQAAAgAFAAAAAwAAABUBAAACAAUAAAAIAAAAFgEAAAIABQAAAAwAAAAXAQAAAgAFAAAAJwAAABgBAAACAAUAAAAvAAAAGQEAAAIABQAAADMAAAAaAQAAAgAFAAAANwAAABsBAAACAAUAAAA7AAAAHAEAAAIABQAAAD4AAAAdAQAAAgAFAAAAQgAAAB4BAAACAAUAAABHAAAAHwEAAAIABQAAAE8AAAAgAQAAAgAFAAAAUQAAACEBAAACAAUAAABXAAAAIgEAAAIABQAAAFsAAAAjAQAAAgAFAAAAXwAAACQBAAACAAUAAABjAAAAJQEAAAIABQAAAGsAAAAmAQAAAgAFAAAAbgAAACcBAAACAAUAAAB3AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAALAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAsAAAAAMAAAAAAOAAAAAAAAAAsQAAAAoAAQAAACgBAAACAAEAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAALEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAsQAAAAMAAAAAAOEAAAAAAAAAsgAAAAoABQAAACkBAAACAAAAAAADAAAAKgEAAAIAAAAAAEEAAAArAQAAAgAAAAAAYwAAACwBAAACAAAAAADiAAAALQEAAAIAAAAAAKEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAsgAAAAMAAAAAAOMAAAAAAAAA4gAAAAoAAgAAAC4BAAACAAAAAACQAAAALwEAAAIAAAAAAJYAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA4gAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAIAAAAHAAAAAAAAAAEAAAACAAAABwAAAPYAAAABAAAAAgAAAAcAAAAKAQAAAQAAAAIAAAAHAAAAHgEAAAEAAAACAAAABwAAADIBAAABAAAAAgAAAAcAAABGAQAAAQAAAAIAAAAHAAAAWgEAAAEAAAACAAAABwAAAG4BAAABAAAAAgAAAAcAAADMAQAAAQAAAAIAAAAHAAAAOAIAAAEAAAACAAAABwAAAMQCAAABAAAAAgAAAAcAAAC+AwAAAQAAAAIAAAAHAAAAEgQAAAEAAAACAAAABQAAAHAEAAABAAAAAgAAAAcAAACABAAAAQAAAAIAAAAHAAAAWAUAAAEAAAACAAAABwAAABgHAAABAAAAAgAAAAcAAAA4CAAAAQAAAAIAAAAHAAAAPAkAAAEAAAACAAAABwAAAFgKAAABAAAAAgAAAAcAAABcCwAAAQAAAAIAAAAHAAAAeAwAAAEAAAACAAAABwAAAHwNAAABAAAAAgAAAAcAAACYDgAAAQAAAAIAAAAHAAAAnA8AAAEAAAACAAAABwAAAAAUAAABAAAAAgAAAAcAAACKGgAAAQAAAAIAAAAHAAAAphsAAAEAAAACAAAABwAAALobAAABAAAAAgAAAAcAAAB2HAAAAQAAAAIAAAAHAAAAHB0AAAEAAAACAAAABwAAANgdAAABAAAAAgAAAAcAAACUHgAAAQAAAAIAAAAHAAAAUB8AAAEAAAACAAAABwAAAAwgAAABAAAAAgAAAAcAAADIIAAAAQAAAAIAAAAHAAAAhCEAAAEAAAACAAAABwAAAAojAAABAAAAAgAAAAcAAACQJAAAAQAAAAIAAAAHAAAAWiUAAAEAAAACAAAABwAAACQmAAABAAAAAgAAAAcAAAAcJwAAAQAAAAIAAAAHAAAAcCcAAAEAAAACAAAABwAAALonAAABAAAAAgAAAAcAAABQKAAAAQAAAAIAAAAHAAAAVCkAAAEAAAACAAAABQAAALotAAABAAAAAgAAAAUAAADKLQAAAQAAAAIAAAAFAAAA2i0AAAEAAAACAAAABQAAAOotAAABAAAAAgAAAAcAAAD6LQAAAQAAAAIAAAAHAAAAyC4AAAEAAAACAAAABQAAABwvAAABAAAAAgAAAAUAAAAsLwAAAQAAAAIAAAAFAAAAPC8AAAEAAAACAAAABQAAAEwvAAABAAAAAgAAAAUAAABcLwAAAQAAAAIAAAAFAAAAbC8AAAEAAAACAAAABQAAAHwvAAABAAAAAgAAAAUAAACMLwAAAQAAAAIAAAAFAAAAnC8AAAEAAAAAAAAABAAAAKwvAAAAAAAAAgAAAAUAAACsLwAAAQAAAAIAAAAFAAAAvC8AAAEAAAACAAAABQAAAMwvAAABAAAAAgAAAAUAAADcLwAAAQAAAAIAAAAFAAAA7C8AAAEAAAACAAAABQAAAPwvAAABAAAAAgAAAAUAAAAMMAAAAQAAAAIAAAAFAAAAHDAAAAEAAAACAAAABQAAACwwAAABAAAAAgAAAAUAAAA8MAAAAQAAAAIAAAAFAAAATDAAAAEAAAACAAAABQAAAFwwAAABAAAAAgAAAAUAAABsMAAAAQAAAAIAAAAFAAAAfDAAAAEAAAACAAAABQAAAIwwAAABAAAAAgAAAAUAAACcMAAAAQAAAAIAAAAFAAAArDAAAAEAAAACAAAABQAAALwwAAABAAAAAgAAAAUAAADMMAAAAQAAAAIAAAAFAAAA3DAAAAEAAAACAAAABQAAAOwwAAABAAAAAgAAAAUAAAD8MAAAAQAAAAIAAAAFAAAADDEAAAEAAAACAAAABQAAABwxAAABAAAAAgAAAAUAAAAsMQAAAQAAAAIAAAAFAAAAPDEAAAEAAAACAAAABQAAAEwxAAABAAAAAgAAAAUAAABcMQAAAQAAAAIAAAAFAAAAbDEAAAEAAAACAAAABQAAAHwxAAABAAAAAgAAAAUAAACMMQAAAQAAAAIAAAAFAAAAnDEAAAEAAAACAAAABQAAAKwxAAABAAAAAAAAAAUAAAC8MQAAAAAAAAIAAAAFAAAAvDEAAAEAAAACAAAABQAAAMwxAAABAAAAAgAAAAUAAADcMQAAAQAAAAIAAAAFAAAA7DEAAAEAAAACAAAABQAAAPwxAAABAAAAAgAAAAUAAAAMMgAAAQAAAAIAAAAFAAAAHDIAAAEAAAACAAAABQAAACwyAAABAAAAAgAAAAUAAAA8MgAAAQAAAAIAAAAFAAAATDIAAAEAAAACAAAABQAAAFwyAAABAAAAAgAAAAUAAABsMgAAAQAAAAIAAAAFAAAAfDIAAAEAAAACAAAABQAAAIwyAAABAAAAAgAAAAUAAACcMgAAAQAAAAIAAAAFAAAArDIAAAEAAAACAAAABQAAALwyAAABAAAAAgAAAAUAAADMMgAAAQAAAAIAAAAFAAAA3DIAAAEAAAACAAAABQAAAOwyAAABAAAAAgAAAAUAAAD8MgAAAQAAAAIAAAAFAAAADDMAAAEAAAACAAAABQAAABwzAAABAAAAAgAAAAUAAAAsMwAAAQAAAAIAAAAFAAAAPDMAAAEAAAACAAAABQAAAEwzAAABAAAAAgAAAAUAAABcMwAAAQAAAAIAAAAFAAAAbDMAAAEAAAACAAAABQAAAHwzAAABAAAAAgAAAAUAAACMMwAAAQAAAAIAAAAFAAAAnDMAAAEAAAACAAAABQAAAKwzAAABAAAAAgAAAAUAAAC8MwAAAQAAAAIAAAAFAAAAzDMAAAEAAAACAAAABQAAANwzAAABAAAAAgAAAAUAAADsMwAAAQAAAAIAAAAFAAAA/DMAAAEAAAACAAAABQAAAAw0AAABAAAAAgAAAAUAAAAcNAAAAQAAAAIAAAAFAAAALDQAAAEAAAACAAAABQAAADw0AAABAAAAAgAAAAUAAABMNAAAAQAAAAIAAAAFAAAAXDQAAAEAAAACAAAABQAAAGw0AAABAAAAAAAAAAYAAAB8NAAAAAAAAAIAAAAFAAAAfDQAAAEAAAACAAAABQAAAIw0AAABAAAAAgAAAAUAAACcNAAAAQAAAAIAAAAFAAAArDQAAAEAAAACAAAABQAAALw0AAABAAAAAAAAAAcAAADMNAAAAAAAAAIAAAAFAAAAzDQAAAEAAAACAAAABQAAANw0AAABAAAAAgAAAAUAAADsNAAAAQAAAAIAAAAFAAAA/DQAAAEAAAACAAAABQAAAAw1AAABAAAAAgAAAAUAAAAcNQAAAQAAAAIAAAAFAAAALDUAAAEAAAACAAAABQAAADw1AAABAAAAAgAAAAUAAABMNQAAAQAAAAIAAAAFAAAAXDUAAAEAAAAAAAAACAAAAGw1AAAAAAAAAgAAAAUAAABsNQAAAQAAAAIAAAAFAAAAfDUAAAEAAAACAAAABQAAAIw1AAABAAAAAgAAAAUAAACcNQAAAQAAAAIAAAAFAAAArDUAAAEAAAACAAAABQAAALw1AAABAAAAAgAAAAUAAADMNQAAAQAAAAIAAAAFAAAA3DUAAAEAAAACAAAABQAAAOw1AAABAAAAAgAAAAUAAAD8NQAAAQAAAAIAAAAFAAAADDYAAAEAAAACAAAABQAAABw2AAABAAAAAgAAAAUAAAAsNgAAAQAAAAMAAAAAAAAAPDYAAAEAAAAAAAAACQAAAEw2AAAAAAAAAAAAAAoAAABMNgAAAAAAAAAAAAALAAAATDYAAAAAAAADAAAAAAAAAEw2AAABAAAAAwAAAAAAAABcNgAAAQAAAAQAAAAHAAAAbDYAAAEAAAAEAAAABwAAAC4/AAABAAAABAAAAAcAAADqQgAAAQAAAAQAAAAHAAAAfEgAAAEAAAAEAAAABwAAAExKAAABAAAABAAAAAcAAABMTAAAAQAAAAEAAAADAAAAzE4AAAEAAAABAAAAAwAAAHhPAAABAAAAAQAAAAMAAABWXgAAAQAAAAEAAAADAAAAjl8AAAEAAAABAAAAAwAAABxyAAABAAAAAQAAAAMAAAA8eQAAAQAAAAEAAAADAAAAKIEAAAEAAAABAAAAAwAAAMaIAAABAAAAAQAAAAMAAACqjQAAAQAAAAEAAAADAAAAjpIAAAEAAAABAAAAAwAAALaTAAABAAAABAAAAAkAAACImAAAAQAAAAQAAAAJAAAAqJgAAAEAAAAEAAAACQAAANCYAAABAAAABAAAAAkAAAD4mAAAAQAAAAQAAAAJAAAAGJkAAAEAAAAEAAAACQAAAECZAAABAAAABAAAAAkAAABomQAAAQAAAAQAAAAJAAAAkJkAAAEAAAAEAAAACQAAALCZAAABAAAABAAAAAkAAADYmQAAAQAAAAQAAAAJAAAA+JkAAAEAAAAEAAAACQAAABiaAAABAAAABAAAAAkAAAA4mgAAAQAAAAQAAAAJAAAAWJoAAAEAAAAEAAAACQAAAHiaAAABAAAABAAAAAkAAACYmgAAAQAAAAQAAAAJAAAAuJoAAAEAAAAEAAAACQAAAOCaAAABAAAABAAAAAkAAAAImwAAAQAAAAQAAAAJAAAAMJsAAAEAAAAEAAAACQAAAFibAAABAAAABAAAAAkAAACAmwAAAQAAAAQAAAAJAAAAqJsAAAEAAAAEAAAACQAAAMibAAABAAAABAAAAAkAAADomwAAAQAAAAMAAAAAAAAACJwAAAEAAAADAAAAAAAAABicAAABAAAAAwAAAAAAAAAonAAAAQAAAAAAAAAMAAAAOJwAAAAAAAADAAAAAAAAADicAAABAAAACwAAAAAAAAAAAAoABAAAAFMAAAAFAAAAAAAAAABA6gAAAAQAAAAAAAAAAABLAAAABQAAAAAAAADwP1QAAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAUwAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBLAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFQAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAAQAAAAEAAQABAAEAAQALAAAAAAACAAAAAQABAAEAAQABAAsAAAAAAAMAAAABAAEAAQABAAEACwAAAAAABAAAAAEAAQABAAEAAQALAAAAAAAFAAAAAQABAAEAAQABAAsAAAAAAAYAAAABAAEAAQABAAEACwAAAAAABwAAAAoAAgAAAE8AAAAFAAAAAAAAAPA/6gAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBPAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAAgAAAAKAAMAAADrAAAABQAAAAAAAADwP0wAAAAFAAAAAAAAAPA/6gAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBMAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAAkAAAAKAAMAAADrAAAABQAAAAAAAADwP00AAAAFAAAAAAAAAPA/6gAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBNAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGADsAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAACgAAAAoABAAAAOsAAAAEAAEAAAAAAAAATgAAAAQAAQAAAAAAAADqAAAABAAAAAAAAAAAAFAAAAAEAAEAAAAAAAAABwACAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYATgAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgBQAAAABAAAAAAAAAAAAAoAAQAAAOwAAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBOAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFAAAAAEAAAAAAAAAAAAAQABAAsAAAAAAAsAAAAKAAEAAADqAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAAAwAAAAKAAIAAABLAAAABQAAAAAAAADwP+oAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVQAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAoABAAAAHsAAAAFAAAAAAAAAPA/6gAAAAQAAAAAAAAAAABZAAAABQAAAAAAAAAAQHwAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAewAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBZAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAADwAAAAoABQAAAOoAAAAEAAAAAAAAAAAAZQAAAAUAAAAAAAAA8D97AAAABQAAAAAAAADwP1kAAAAFAAAAAAAAAABAfAAAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAA7QAAAAcAAwAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGUAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAewAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBZAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAAAAAAAAAAAAQABAAsAAAAAABAAAAAKAAEAAADqAAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAsAAAAAABEAAAAKAAIAAADqAAAABAAAAAAAAAAAAFoAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAOwAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBaAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGADsAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAEgAAAAoAAQAAAOoAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYA7gAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAATAAAACgACAAAA6gAAAAQAAAAAAAAAAABcAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGADsAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAXAAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgA7AAAABAADAAAAAAAAAAEAAQABAAsAAAAAABQAAAAKAAEAAADqAAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAO8AAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAFQAAAAoAAgAAAOoAAAAEAAAAAAAAAAAAXgAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgA7AAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAF4AAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAOwAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAWAAAACgABAAAA6gAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgDwAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAsAAAAAABcAAAAKAAIAAADqAAAABAAAAAAAAAAAAGAAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAOwAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBgAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGADsAAAAEAAMAAAAAAAAAAQABAAEACwAAAAAAGAAAAAoABgAAAOoAAAAEAAAAAAAAAAAA8QAAAAUAAAAAAAAA8D9gAAAABQAAAAAAAADwP14AAAAFAAAAAAAAAPA/XAAAAAUAAAAAAAAA8D9aAAAABQAAAAAAAADwPwcABwAAAAcAAAAAAAcABgAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAQACAAAAAAAAAAGAFoAAAAEAAAAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBeAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFwAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAWgAAAAQAAAAAAAAAAAAKAAIAAADyAAAABwAEAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYAAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBeAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFwAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAWgAAAAQAAAAAAAAAAADzAAAABwACAAAABwAHAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAACAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAYAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBeAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFwAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAWgAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBaAAAABAAAAAAAAAAAAAEAAQALAAAAAAAZAAAACgADAAAA9AAAAAQAAQAAAAAAAADqAAAABAAAAAAAAAAAAGQAAAAEAAIAAAAAAAAABwAQAAAABwAAAAAABwAJAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAgAAAAAAAAABgBkAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAOAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABwAAAAAACgABAAAA9QAAAAcAAwAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQACAAAAAAAAAAGAGQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAJAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAUAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAIAAAAAAAAAAYAZAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAgAAAAAAAAABgBkAAAABAAAAAAAAAAAAAcAAAAAAAEAAQALAAAAAAAaAAAACgABAAAA6gAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgD2AAAABAACAAAAAAAAAAcABgAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAABsAAAABAAEAAQABAAEACwAAAAAAHAAAAAoAAQAAAOoAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAegAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAdAAAACgACAAAA6gAAAAQAAAAAAAAAAAB8AAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHoAAAAEAAMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAHgAAAAoAAQAAAOoAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAegAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAfAAAACgABAAAA6gAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB6AAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACAAAAAKAAEAAADqAAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHoAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAIQAAAAoAAQAAAOoAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAegAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAiAAAACgABAAAA6gAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB6AAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACMAAAAKAAEAAADqAAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHoAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAJAAAAAoAAwAAAOoAAAAEAAAAAAAAAAAAXAAAAAUAAAAAAAAA8D9dAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHoAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAA9wAAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFwAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAXQAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEACwAAAAAAJQAAAAoAAwAAAOoAAAAEAAAAAAAAAAAAXgAAAAUAAAAAAAAA8D9fAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHoAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAA+AAAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAF4AAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAXwAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEACwAAAAAAJgAAAAoAAgAAAOoAAAAEAAAAAAAAAAAAdQAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB6AAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACcAAAAKAAIAAADqAAAABAAAAAAAAAAAAPkAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAegAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQALAAAAAAAoAAAACgAEAAAA6gAAAAQAAAAAAAAAAAD6AAAABQAAAAAAAADwP/sAAAAFAAAAAAAAAPA//AAAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAA/QAAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwABAAAAAgAAAAAALQAAAAsAAAAAACkAAAAKAAEAAADqAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAEAAQABAAsAAAAAACoAAAAKAAIAAABiAAAABAABAAAAAAAAAOoAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQAHAAEAAAACAAAAAAAvAAAACwAAAAAAKwAAAAoAAQAAAOoAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwAGAAAABQAAAAAAAAAQQAQAIAAAAAAAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAALAAAAAoAAgAAAOoAAAAEAAAAAAAAAAAAcwAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgA7AAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHMAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAOwAAAAQAAwAAAAAAAAABAAEAAQALAAAAAAAtAAAACgACAAAA6gAAAAQAAAAAAAAAAAB0AAAABQAAAAAAAADwPwcACgAAAAcAAAAAAAcADAAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAAGEAGAP4AAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAdwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB0AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAJAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAoAAQAAAP8AAAAHAAQAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB0AAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcACAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAP4AAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAdwAAAAQAAAAAAAAAAAABAAEACwAAAAAALgAAAAEAAQABAAsAAAAAAC8AAAABAAEAAQALAAAAAAAwAAAAAQABAAEACwAAAAAAMQAAAAEAAQABAAsAAAAAADIAAAAKAAIAAADqAAAABAAAAAAAAAAAAFgAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAAMwAAAAoAAQAAAOoAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEACwAAAAAANAAAAAEAAQABAAsAAAAAADUAAAABAAEAAQALAAAAAAA2AAAAAQABAAEACwAAAAAANwAAAAEAAQABAAsAAAAAADgAAAABAAEAAQALAAAAAAA5AAAAAQABAAEACwAAAAAAOgAAAAEAAQABAAsAAAAAADsAAAABAAEAAQALAAAAAAA8AAAAAQABAAEACwAAAAAAPQAAAAEAAQABAAsAAAAAAD4AAAABAAEAAQALAAAAAAA/AAAAAQABAAEACwAAAAAAQAAAAAEAAQABAAsAAAAAAEEAAAABAAEAAQALAAAAAABCAAAAAQABAAEACwAAAAAAQwAAAAEAAQABAAsAAAAAAEQAAAABAAEAAQALAAAAAABFAAAAAQABAAEACwAAAAAARgAAAAEAAQABAAsAAAAAAEcAAAABAAEAAQALAAAAAABIAAAAAQABAAEACwAAAAAASQAAAAEAAQABAAsAAAAAAEoAAAABAAEAAQALAAAAAABLAAAAAQABAAEACwAAAAAATAAAAAEAAQABAAsAAAAAAE0AAAABAAEAAQALAAAAAABOAAAAAQABAAEACwAAAAAATwAAAAEAAQABAAsAAAAAAFAAAAABAAEAAQALAAAAAABRAAAAAQABAAEACwAAAAAAUgAAAAEAAQABAAsAAAAAAFMAAAABAAEAAQALAAAAAABUAAAAAQABAAEACwAAAAAAVQAAAAEAAQABAAsAAAAAAFYAAAABAAEAAQALAAAAAABXAAAAAQABAAEACwAAAAAAWAAAAAEAAQABAAsAAAAAAFkAAAABAAEAAQALAAAAAABaAAAAAQABAAEACwAAAAAAWwAAAAEAAQABAAsAAAAAAFwAAAABAAEAAQALAAAAAABdAAAAAQABAAEACwAAAAAAXgAAAAEAAQABAAsAAAAAAF8AAAABAAEAAQALAAAAAABgAAAAAQABAAEACwAAAAAAYQAAAAEAAQABAAsAAAAAAGIAAAABAAEAAQALAAAAAABjAAAAAQABAAEACwAAAAAAZAAAAAEAAQABAAsAAAAAAGUAAAABAAEAAQALAAAAAABmAAAAAQABAAEACwAAAAAAZwAAAAEAAQABAAsAAAAAAGgAAAABAAEAAQALAAAAAABpAAAAAQABAAEACwAAAAAAagAAAAEAAQABAAsAAAAAAGsAAAABAAEAAQALAAAAAABsAAAAAQABAAEACwAAAAAAbQAAAAEAAQABAAsAAAAAAG4AAAABAAEAAQALAAAAAABvAAAAAQABAAEACwAAAAAAcAAAAAEAAQABAAsAAAAAAHEAAAABAAEAAQALAAAAAAByAAAAAQABAAEACwAAAAAAcwAAAAEAAQABAAsAAAAAAHQAAAABAAEAAQALAAAAAAB1AAAAAQABAAEACwAAAAAAdgAAAAEAAQABAAsAAAAAAHcAAAABAAEAAQALAAAAAAB4AAAAAQABAAEACwAAAAAAeQAAAAEAAQABAAsAAAAAAHoAAAABAAEAAQALAAAAAAB7AAAAAQABAAEACwAAAAAAfAAAAAEAAQABAAsAAAAAAH0AAAABAAEAAQALAAAAAAB+AAAAAQABAAEACwAAAAAAfwAAAAEAAQABAAsAAAAAAIAAAAABAAEAAQALAAAAAACBAAAAAQABAAEACwAAAAAAggAAAAEAAQABAAsAAAAAAIMAAAABAAEAAQALAAAAAACEAAAAAQABAAEACwAAAAAAhQAAAAEAAQABAAsAAAAAAIYAAAABAAEAAQALAAAAAACHAAAAAQABAAEACwAAAAAAiAAAAAEAAQABAAsAAAAAAIkAAAABAAEAAQALAAAAAACKAAAAAQABAAEACwAAAAAAiwAAAAEAAQABAAsAAAAAAIwAAAABAAEAAQALAAAAAACNAAAAAQABAAEACwAAAAAAjgAAAAEAAQABAAsAAAAAAI8AAAABAAEAAQALAAAAAACQAAAAAQABAAEACwAAAAAAkQAAAAEAAQABAAsAAAAAAJIAAAABAAEAAQALAAAAAACTAAAAAQABAAEACwAAAAAAlAAAAAEAAQABAAsAAAAAAJUAAAABAAEAAQALAAAAAACWAAAAAQABAAEACwAAAAAAlwAAAAEAAQABAAsAAAAAAJgAAAABAAEAAQALAAAAAACZAAAAAQABAAEACwAAAAAAmgAAAAEAAQABAAsAAAAAAJsAAAABAAEAAQALAAAAAACcAAAAAQABAAEACwAAAAAAnQAAAAEAAQABAAsAAAAAAJ4AAAABAAEAAQALAAAAAACfAAAAAQABAAEACwAAAAAAoAAAAAEAAQABAAsAAAAAAKEAAAABAAEAAQALAAAAAACiAAAAAQABAAEACwAAAAAAowAAAAEAAQABAAsAAAAAAKQAAAABAAEAAQALAAAAAAClAAAAAQABAAEAAQEAAAcAAAAAAAoAAAAAAAIBAAAHAAAAAAAKAAAAAAAMAAAABwAAAAAACgAAAAAABgAFAQAACgAAAAAACgA7AAAASgAAAAIAAAAAAAQAAABLAAAAAgAAAAAABQAAAEwAAAACAAAAAAAGAAAATQAAAAIAAAAAAAcAAABOAAAAAgAAAAAACAAAAE8AAAACAAAAAAAJAAAAUAAAAAIAAAAAAAoAAABRAAAAAgAAAAAACwAAAFIAAAACAAAAAAAMAAAAUwAAAAIAAAAAAA0AAABUAAAAAgAAAAAADgAAAFUAAAACAAAAAAAPAAAAVgAAAAIAAAAAABAAAABXAAAAAgAAAAAAEQAAAFgAAAACAAAAAAASAAAAWQAAAAIAAAAAABMAAABaAAAAAgAAAAAAFAAAAFsAAAACAAAAAAAVAAAAXAAAAAIAAAAAABYAAABdAAAAAgAAAAAAFwAAAF4AAAACAAAAAAAYAAAAXwAAAAIAAAAAABkAAABgAAAAAgAAAAAAGgAAAGEAAAACAAAAAAAbAAAAYgAAAAIAAAAAABwAAABjAAAAAgAAAAAAHQAAAGQAAAACAAAAAAAeAAAAZQAAAAIAAAAAAB8AAABmAAAAAgAAAAAAIAAAAGcAAAACAAAAAAAhAAAAaAAAAAIAAAAAACIAAABpAAAAAgAAAAAAIwAAAGoAAAACAAAAAAAkAAAAawAAAAIAAAAAACUAAABsAAAAAgAAAAAAJgAAAG0AAAACAAAAAAAnAAAAbgAAAAIAAAAAACgAAABvAAAAAgAAAAAAKQAAAHAAAAACAAAAAAAqAAAAcQAAAAIAAAAAACsAAAByAAAAAgAAAAAALAAAAHMAAAACAAAAAAAuAAAAdAAAAAIAAAAAADAAAAB1AAAAAgAAAAAAMQAAAHYAAAACAAAAAAAyAAAAdwAAAAIAAAAAADMAAABJAAAAAgAAAAAANAAAAHgAAAACAAAAAAA1AAAAeQAAAAIAAAAAADYAAAB6AAAAAgAAAAAANwAAAHsAAAACAAAAAAA4AAAAfAAAAAIAAAAAADkAAAB9AAAAAgAAAAAAOgAAAH4AAAACAAAAAAA7AAAAfwAAAAIAAAAAADwAAACAAAAAAgAAAAAAPQAAAIEAAAACAAAAAAA+AAAAggAAAAIAAAAAAD8AAACDAAAAAgAAAAAAQAAAAAcAOwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIQAAAAIAAAAAACIAAAACAAAAAAAjAAAAAgAAAAAAJAAAAAIAAAAAACUAAAACAAAAAAAmAAAAAgAAAAAAJwAAAAIAAAAAACgAAAACAAAAAAApAAAAAgAAAAAAKgAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALgAAAAIAAAAAADAAAAACAAAAAAAxAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAAAgAAAAAANQAAAAIAAAAAADYAAAACAAAAAAA3AAAAAgAAAAAAOAAAAAIAAAAAADkAAAACAAAAAAA6AAAAAgAAAAAAOwAAAAIAAAAAADwAAAACAAAAAAA9AAAAAgAAAAAAPgAAAAIAAAAAAD8AAAACAAAAAABAAAAABwAAAAAABwABAAAAAgABAAAAVgAAAAcAAAAAAAIAAQAAAFYAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAAwAAAAIAAQAAAFYAAAACAAIAAAAVAAAABwAAAAAACgAMAAAAMgAAAAoAAgAAAEsAAAAHAAEAAAAGAFEAAABlAAAABwANAAAABgBmAAAABgBnAAAABgBoAAAABgBpAAAABgBqAAAABgBrAAAABgBsAAAABgBtAAAABgBuAAAABgBvAAAABgBwAAAABgBxAAAABgByAAAASwAAAAIAAAAAALsAAABlAAAAAgAAAAAAvAAAAOwAAAACAAAAAAC9AAAA7QAAAAIAAAAAAL4AAADyAAAAAgAAAAAAvwAAAPMAAAACAAAAAADAAAAA9QAAAAIAAAAAAMEAAAD3AAAAAgAAAAAAwgAAAPgAAAACAAAAAADDAAAA/QAAAAIAAAAAAMQAAAD/AAAAAgAAAAAAxQAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAKAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFYAAAAGAAYBAAAGAIQAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAVgAAAAYAIQAAAAYAhQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABWAAAABgAiAAAABgCGAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFYAAAAGACMAAAAGAIcAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAVgAAAAYABwEAAAYAiAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABWAAAABgAIAQAABgCJAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFYAAAAGAAkBAAAGAIoAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAVgAAAAYACgEAAAYAiwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABWAAAABgALAQAABgCMAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFYAAAAGAAwBAAAGAI0AAAAHAAAAAAABAAYADQEAAAoAAAAAAAoAIQAAAI4AAAACAAAAAABCAAAAjwAAAAIAAAAAAEMAAACQAAAAAgAAAAAARAAAAH4AAAACAAAAAABFAAAAUQAAAAIAAAAAAEYAAABKAAAAAgAAAAAARwAAAFUAAAACAAAAAABIAAAAVgAAAAIAAAAAAEkAAABiAAAAAgAAAAAASgAAAGMAAAACAAAAAABLAAAAWgAAAAIAAAAAAEwAAABcAAAAAgAAAAAATQAAAF4AAAACAAAAAABOAAAAYAAAAAIAAAAAAE8AAAB5AAAAAgAAAAAAUAAAAFgAAAACAAAAAABRAAAAWQAAAAIAAAAAAFIAAABmAAAAAgAAAAAAUwAAAGcAAAACAAAAAABUAAAAaAAAAAIAAAAAAFUAAABpAAAAAgAAAAAAVgAAAGoAAAACAAAAAABXAAAAawAAAAIAAAAAAFgAAABsAAAAAgAAAAAAWQAAAG0AAAACAAAAAABaAAAAbgAAAAIAAAAAAFsAAABvAAAAAgAAAAAAXAAAAHAAAAACAAAAAABdAAAAcQAAAAIAAAAAAF4AAAByAAAAAgAAAAAAXwAAAHMAAAACAAAAAABgAAAAdAAAAAIAAAAAAGEAAAB1AAAAAgAAAAAAYgAAAAcAIQAAAAIAAAAAAEIAAAACAAAAAABDAAAAAgAAAAAARAAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAIAAAAAAFEAAAACAAAAAABSAAAAAgAAAAAAUwAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAcAAAAAAAcAAQAAAAIAAgAAABUAAAAHAAAAAAACAAIAAAAVAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAEEAAAACAAIAAAAVAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgAOAQAACgALAAAAugAAAAIAAAAAAMYAAAC7AAAAAgAAAAAAxwAAALwAAAACAAAAAADIAAAAvQAAAAIAAAAAAMkAAAC+AAAAAgAAAAAAygAAAL8AAAACAAAAAADLAAAAwAAAAAIAAAAAAMwAAADBAAAAAgAAAAAAzQAAAMIAAAACAAAAAADOAAAAwwAAAAIAAAAAAM8AAADEAAAAAgAAAAAA0AAAAAoALAAAABIAAAACAAAAAABkAAAAkQAAAAIAAAAAAGUAAACSAAAAAgAAAAAAZgAAAJMAAAACAAAAAABnAAAAlAAAAAIAAAAAAGgAAACVAAAAAgAAAAAAaQAAAJYAAAACAAAAAABqAAAAlwAAAAIAAAAAAGsAAACYAAAAAgAAAAAAbAAAAJkAAAACAAAAAABtAAAAdwAAAAIAAAAAAG4AAACaAAAAAgAAAAAAbwAAAJsAAAACAAAAAABwAAAAnAAAAAIAAAAAAHEAAACdAAAAAgAAAAAAcgAAAJ4AAAACAAAAAABzAAAAnwAAAAIAAAAAAHQAAACgAAAAAgAAAAAAdQAAAKEAAAACAAAAAAB2AAAAogAAAAIAAAAAAHcAAACjAAAAAgAAAAAAeAAAAKQAAAACAAAAAAB5AAAApQAAAAIAAAAAAHoAAACmAAAAAgAAAAAAewAAAB4AAAACAAAAAAB8AAAApwAAAAIAAAAAAH0AAACoAAAAAgAAAAAAfgAAAKkAAAACAAAAAAB/AAAAqgAAAAIAAAAAAIAAAACrAAAAAgAAAAAAgQAAAKwAAAACAAAAAACCAAAArQAAAAIAAAAAAIMAAACuAAAAAgAAAAAAhAAAAK8AAAACAAAAAACFAAAAsAAAAAIAAAAAAIYAAACxAAAAAgAAAAAAhwAAALIAAAACAAAAAACIAAAAswAAAAIAAAAAAIkAAAC0AAAAAgAAAAAAigAAALUAAAACAAAAAACLAAAAtgAAAAIAAAAAAIwAAAC3AAAAAgAAAAAAjQAAALgAAAACAAAAAACOAAAAuQAAAAIAAAAAAI8AAAAHACwAAAACAAAAAABkAAAAAgAAAAAAZQAAAAIAAAAAAGYAAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAcAAAAAAAcAAQAAAAIAAgAAABUAAAAHAAAAAAACAAIAAAAVAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGMAAAACAAIAAAAVAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAABlAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAGUAAAABAAYADwEAAAoAAgAAAMoAAAACAAAAAADRAAAAywAAAAIAAAAAANIAAAAKAAUAAADFAAAAAgAAAAAAkQAAAMYAAAACAAAAAACSAAAAxwAAAAIAAAAAAJMAAADIAAAAAgAAAAAAlAAAAMkAAAACAAAAAACVAAAABwAFAAAAAgAAAAAAkQAAAAIAAAAAAJIAAAACAAAAAACTAAAAAgAAAAAAlAAAAAIAAAAAAJUAAAAHAAAAAAAHAAEAAAACAAIAAAAVAAAABwAAAAAAAgACAAAAFQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACQAAAAAgACAAAAFQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAkAAAAAYAxgAAAAYAygAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACQAAAABgDHAAAABgDLAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAJAAAAAGAMYAAAAGAMoAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAkAAAAAYAxwAAAAYAywAAAAEABgAQAQAACgAEAAAA0wAAAAIAAAAAANMAAADLAAAAAgAAAAAA1AAAANQAAAACAAAAAADVAAAA1QAAAAIAAAAAANYAAAAKAAoAAAASAAAAAgAAAAAAlwAAAMwAAAACAAAAAACYAAAAkQAAAAIAAAAAAJkAAADNAAAAAgAAAAAAmgAAAM4AAAACAAAAAACbAAAAzwAAAAIAAAAAAJwAAADQAAAAAgAAAAAAnQAAANEAAAACAAAAAACeAAAA0gAAAAIAAAAAAJ8AAAAeAAAAAgAAAAAAoAAAAAcACgAAAAIAAAAAAJcAAAACAAAAAACYAAAAAgAAAAAAmQAAAAIAAAAAAJoAAAACAAAAAACbAAAAAgAAAAAAnAAAAAIAAAAAAJ0AAAACAAAAAACeAAAAAgAAAAAAnwAAAAIAAAAAAKAAAAAHAAAAAAAHAAEAAAACAAIAAAAVAAAABwAAAAAAAgACAAAAFQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACWAAAAAgACAAAAFQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAmQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACZAAAAAQAGABEBAAAKAAgAAADiAAAAAgAAAAAA1wAAAOMAAAACAAAAAADYAAAA5AAAAAIAAAAAANkAAADlAAAAAgAAAAAA2gAAAOYAAAACAAAAAADbAAAA5wAAAAIAAAAAANwAAADoAAAAAgAAAAAA3QAAAOkAAAACAAAAAADeAAAACgANAAAAkQAAAAIAAAAAAKIAAADWAAAAAgAAAAAAowAAANcAAAACAAAAAACkAAAA2AAAAAIAAAAAAKUAAADZAAAAAgAAAAAApgAAANoAAAACAAAAAACnAAAA2wAAAAIAAAAAAKgAAADcAAAAAgAAAAAAqQAAAN0AAAACAAAAAACqAAAA3gAAAAIAAAAAAKsAAADfAAAAAgAAAAAArAAAAOAAAAACAAAAAACtAAAA4QAAAAIAAAAAAK4AAAAHAA0AAAACAAAAAACiAAAAAgAAAAAAowAAAAIAAAAAAKQAAAACAAAAAAClAAAAAgAAAAAApgAAAAIAAAAAAKcAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAIAAAAAAK0AAAACAAAAAACuAAAABwAAAAAABwABAAAAAgACAAAAFQAAAAcAAAAAAAIAAgAAABUAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAoQAAAAIAAgAAABUAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAKIAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAogAAAAEABwAEAAAABwACAAAAAwAGAFEAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBPAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAcAVQAAAAcADgAAAAMABgBmAAAABgBnAAAABgBoAAAABgBpAAAABgBqAAAABgBrAAAABgBsAAAABgBtAAAABgBuAAAABgBvAAAABgBwAAAABgBxAAAABgByAAAABwAnAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAE8AAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAABRABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAJkAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAAAoQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAAAiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAyQAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADhABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAFAAAAAAAAADlABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAjAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABQAAAAAAAAA9QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABDQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAAERABAABAAAAAAAAAAQAAAAAAAAAAAAEACoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAFAAAAAAAAAEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEZABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAFAAAAAAAAAEdABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAACAR0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAMQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAUAAAAAAACARUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQALwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASEAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAASkAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAUAAAAAAACASkAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAABLQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA4AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABQAAAAAAAABJQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA2AAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBLQAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBNQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABOQAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAgE5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAD8AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAFAAAAAAAAgExABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAD0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgFBABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAwFBABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAUUAEAAEAAAAAAAAABAAAAAAAAAAAAAQARgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAUAAAAAAAAAUEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQARAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAUUAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAABAUkAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAACAUkAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAMBSQAQAAQAAAAAAAAAEAAAAAAAAAAAABABNAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABQAAAAAAAMBRQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABLAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABTQAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABUQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBUQAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAgFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAFQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAFAAAAAAAAgFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFRABAABAAAAAAAAAAAAAAAAAAAABwAGAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBOAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFAAAAAFAAAAAAAAABBABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAABwBhAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAF4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAZQAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAE4AAAAEAAgAAAAAAAAABgBmAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBpAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAGoAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAawAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBsAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAG0AAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAbgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgBvAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgByAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAwAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA3AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA+AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAACRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAC5ABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAZAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA8QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA9QAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAAD5ABAABAAAAAAAAAAQAAAAAAAAAAAAEACAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEFABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAARUAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAuAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBIQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABJQAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAgElABAABAAAAAAAAAAQAAAAAAAAAAAAEADUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAExABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgExABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAT0AHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAUEAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBRQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBRQAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAAFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAEoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFNABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFNABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAUQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVUAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVUAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAIBVQAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABWAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBVQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAEBWQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBWQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHsAAAAFAAAAAAAAwFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAWQAAAAUAAAAAAADAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgB8AAAABQAAAAAAAEBXQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAcAJgAAAAcABAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAEEAHAAYAAAAEAAgAAAAAAAAABgBgAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAcQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAGEAGAPAAAAAFAAAAAAAAACRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAACpABwAGAAAABAAIAAAAAAAAAAYAXgAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABhABgDvAAAABQAAAAAAAAAzQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAFwAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABQAAAAAAAAAYQAYA7gAAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABkAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAgAAAAAAAAABgBaAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAdAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABAQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBCQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAQAAQAAAAAAAAAAAAAAAAAAAAcAKQAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAABBABwAMAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAABRABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAABhABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAABxABAACAAAAAAAAAAQAZAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAAIAAAAAAAAAAYAYAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBeAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFwAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAWgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAFAAAAAAAAABhABgDwAAAABQAAAAAAAAAsQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAUAAAAAAAAAGEAGAO8AAAAFAAAAAAAAADRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADVABwADAAAABQAAAAAAAAAYQAYA7gAAAAUAAAAAAAAAOkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBaAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAIBCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABEQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAAAAAAAAAAAAcAKAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAYQAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAQACAAAAAAAAAAGAGQAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYA9gAAAAUAAAAAAAAAJEAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAM0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANUAHAA8AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAEAAgAAAAAAAAABgBkAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAPYAAAAFAAAAAAAAADlABwAGAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABAAIAAAAAAAAAAYAZAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgD2AAAABQAAAAAAAABCQAcABgAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAAAAAAAAAAAAcAGgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAXAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgDuAAAABQAAAAAAAAAiQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAoQAcABgAAAAQACAAAAAAAAAAGAF0AAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAACRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwAGAAAABAAIAAAAAAAAAAYAOwAAAAUAAAAAAAAAMkAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAYAAAAEAAgAAAAAAAAABgBcAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGADsAAAAFAAAAAAAAADFABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABQAAAAAAAAAYQAYA7gAAAAUAAAAAAAAAOUAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAAAAAAAAAAAAAHABoAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAF4AAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYA7wAAAAUAAAAAAAAAIkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAKEAHAAYAAAAEAAgAAAAAAAAABgBfAAAABQAAAAAAAAAqQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcABgAAAAQACAAAAAAAAAAGADsAAAAFAAAAAAAAADJABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAADBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACxABwAGAAAABAAIAAAAAAAAAAYAXgAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgA7AAAABQAAAAAAAAAxQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA0QAcAAwAAAAUAAAAAAAAAGEAGAO8AAAAFAAAAAAAAADlABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAAAAAAAAAAABwAHAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAEEAEAAEAAAAAAAAAAAAAAAAAAAAHABgAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAdAAAAAUAAAAAAAAAFEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAgAAAAAAAAABgA7AAAABQAAAAAAAAAkQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcABgAAAAQACAAAAAAAAAAGAHMAAAAFAAAAAAAAACZABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAOwAAAAUAAAAAAAAAIkAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAALkAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgD+AAAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHcAAAAFAAAAAAAAADZABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAABgC6AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGALsAAAADAAQAAAAAAAAAAAADAAIAAgAAABUAAAAEAAEAAAAAAAAABgC8AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAVAAAABAABAAAAAAAAAAYAvQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgC+AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAVAAAABAABAAAAAAAAAAYAvwAAAAMABAAAAAAAAAAAAAMAAgACAAAAFQAAAAQAAQAAAAAAAAAGAMAAAAADAAQAAAAAAAAAAAADAAIAAgAAABUAAAAEAAEAAAAAAAAABgDBAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMIAAAADAAQAAAAAAAAAAAADAAIAAgAAABUAAAAEAAEAAAAAAAAABgDDAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAMQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAygAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDLAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGANMAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYAywAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDUAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGANUAAAADAAQAAAAAAAAAAAADAAIAAgAAABUAAAAEAAEAAAAAAAAABgDiAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAVAAAABAABAAAAAAAAAAYA4wAAAAMABAAAAAAAAAAAAAMAAgACAAAAFQAAAAQAAQAAAAAAAAAGAOQAAAADAAQAAAAAAAAAAAADAAIAAgAAABUAAAAEAAEAAAAAAAAABgDlAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAVAAAABAABAAAAAAAAAAYA5gAAAAMABAAAAAAAAAAAAAMAAgACAAAAFQAAAAQAAQAAAAAAAAAGAOcAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAYA6AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgDpAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAsAAAAHAAAAAAAKAAAAAAAsAQAABwAAAAAACgAAAAAA", cur_sc, $P5002, $P5004
    .const "LexInfo" $P5001 = "cuid_1_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021533.614"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 30
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 58
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_56_1351021533.614" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_57_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 64
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_63_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_63_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_63_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_63_1351021533.614"
    $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 65
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_178_1351021533.614" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_64_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 98
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_97_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 65
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_97_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_97_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 65
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_97_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_98_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 143
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_142_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_142_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_142_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 99
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_142_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_143_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 149
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_148_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_148_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_148_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 144
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_148_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_149_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 160
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_159_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_159_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_159_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 150
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_159_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_160_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_163_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1351021533.614" 
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 174
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_173_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_173_1351021533.614"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_173_1351021533.614"
    nqp_get_sc_object $P5002, "EA9325D1E1D525A50A00DCE3AF816BEF43BDFFD9-1351021533.639", 161
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_173_1351021533.614"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1351021533.614") :anon :lex :outer("cuid_224_1351021533.614")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1351021533.614" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1351021533.614" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1351021533.614") :load
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_1_1351021533.614" 
    $P5002 = $P5001()
    .return ($P5002) 
.end