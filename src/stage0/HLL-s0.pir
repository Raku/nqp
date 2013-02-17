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
.sub "" :subid("cuid_182_1361096832.26832") :anon :lex
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5030 = 'cuid_175_1361096832.26832' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_184_1361096832.26832' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_196_1361096832.26832' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_224_1361096832.26832' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_225_1361096832.26832' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_235_1361096832.26832' 
    capture_lex $P5030 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "NQPCursorRole", $P104 
    .lex "$compiler", $P105 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .local pmc fb_tmp_172 
    .local pmc pkg_lookup_tmp_34 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    .const 'Sub' $P5006 = 'cuid_175_1361096832.26832' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_184_1361096832.26832' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_196_1361096832.26832' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 1739
    nqp_get_sc_object $P5013, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_34, $P5013
    get_who $P5014, pkg_lookup_tmp_34
    exists $I5004, $P5014["HLL"]
    unless $I5004 goto if753_else1648 
    get_who $P5016, pkg_lookup_tmp_34
    set $P5015, $P5016["HLL"]
    set $P5018, $P5015
    goto if753_end1649
  if753_else1648:
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5018, $P5017
  if753_end1649:
    get_who $P5012, $P5018
    set fb_tmp_172, $P5012
    repr_defined $I5003, fb_tmp_172
    unless $I5003 goto if752_else1646 
    set $P5019, fb_tmp_172["Compiler"]
    set $P5021, $P5019
    goto if752_end1647
  if752_else1646:
    null $P5020
    set $P5021, $P5020
  if752_end1647:
    unless_null $P5021, vivi_7541650
    nqp_get_sc_object $P5022, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5021, $P5022
  vivi_7541650:
    $P5023 = $P5021."new"()
    set $P105, $P5023
.annotate 'line', 1740
    $P105."language"("parrot")
    .const 'Sub' $P5024 = 'cuid_224_1361096832.26832' 
    capture_lex $P5024
    $P5025 = $P5024()
    .const 'Sub' $P5026 = 'cuid_225_1361096832.26832' 
    capture_lex $P5026
    $P5027 = $P5026()
    .const 'Sub' $P5028 = 'cuid_235_1361096832.26832' 
    capture_lex $P5028
    $P5029 = $P5028()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1361096832.26832") :anon :lex :outer("cuid_182_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P5075 = 'cuid_1_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_2_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_3_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_4_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_5_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_6_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_7_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_8_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_9_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_10_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_11_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_12_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_13_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_14_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_15_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_16_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_17_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_18_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_19_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_20_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_21_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_22_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_23_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_24_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_25_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_26_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_27_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_28_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_29_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_30_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_31_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_32_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_33_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_34_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_35_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_36_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_37_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_38_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_39_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_40_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_41_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_42_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_45_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_47_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_48_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_49_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_50_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_51_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_52_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_53_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_54_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_55_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_56_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_57_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_58_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_59_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_60_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_61_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_62_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_63_1361096832.26832' 
    capture_lex $P5075 
    .const 'Sub' $P5075 = 'cuid_64_1361096832.26832' 
    capture_lex $P5075 
    .lex "$brackets", $P101 
    .lex "$cursor_class", $P102 
    .lex "$TRUE", $P103 
    .lex "$?PACKAGE", $P104 
    .lex "$?CLASS", $P105 
    .local pmc fb_tmp_1 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    nqp_get_sc_object $P5011, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5010, $P5011
    set $P5009, $P5010["NQPCursor"]
    unless_null $P5009, vivi_1316
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5012
  vivi_1316:
    set $P5008, $P5009
  vivi_1417:
    set $P102, $P5008
    .const 'Sub' $P5013 = 'cuid_1_1361096832.26832' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_2_1361096832.26832' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_3_1361096832.26832' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_4_1361096832.26832' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_5_1361096832.26832' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_6_1361096832.26832' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_7_1361096832.26832' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_8_1361096832.26832' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_9_1361096832.26832' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_10_1361096832.26832' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_11_1361096832.26832' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_12_1361096832.26832' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_13_1361096832.26832' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_14_1361096832.26832' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_15_1361096832.26832' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_16_1361096832.26832' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_17_1361096832.26832' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_18_1361096832.26832' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_19_1361096832.26832' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_20_1361096832.26832' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_21_1361096832.26832' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_22_1361096832.26832' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_23_1361096832.26832' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_24_1361096832.26832' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_25_1361096832.26832' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_26_1361096832.26832' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_27_1361096832.26832' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_28_1361096832.26832' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_29_1361096832.26832' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_30_1361096832.26832' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_31_1361096832.26832' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_32_1361096832.26832' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_33_1361096832.26832' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_34_1361096832.26832' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_35_1361096832.26832' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_36_1361096832.26832' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_37_1361096832.26832' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_38_1361096832.26832' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_39_1361096832.26832' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_40_1361096832.26832' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_41_1361096832.26832' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_42_1361096832.26832' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_45_1361096832.26832' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_47_1361096832.26832' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_48_1361096832.26832' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_49_1361096832.26832' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_50_1361096832.26832' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_51_1361096832.26832' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_52_1361096832.26832' 
    capture_lex $P5061
    box $P5062, 1
    set $P103, $P5062
    .const 'Sub' $P5063 = 'cuid_53_1361096832.26832' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_54_1361096832.26832' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_55_1361096832.26832' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_56_1361096832.26832' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_57_1361096832.26832' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_58_1361096832.26832' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_59_1361096832.26832' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_60_1361096832.26832' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_61_1361096832.26832' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_62_1361096832.26832' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_63_1361096832.26832' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_64_1361096832.26832' 
    capture_lex $P5074
    .return ($P5074) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_1_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "termish" :subid("cuid_2_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "term" :subid("cuid_3_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 21
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_4_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 22
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_5_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 23
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_6_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 24
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_7_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 25
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_8_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 26
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_9_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "infixish" :subid("cuid_10_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "prefixish" :subid("cuid_11_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "postfixish" :subid("cuid_12_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    rx32_cur."!alt"(rx32_pos, "alt_nfa__1_1361096832.45552", $P11)
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
.sub "nullterm" :subid("cuid_13_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "nullterm_alt" :subid("cuid_14_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "nulltermish" :subid("cuid_15_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_delimited" :subid("cuid_16_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_atom" :subid("cuid_17_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    rx50_cur."!alt"(rx50_pos, "alt_nfa__2_1361096832.48672", $P11)
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
.sub "decint" :subid("cuid_18_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "decints" :subid("cuid_19_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "hexint" :subid("cuid_20_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "hexints" :subid("cuid_21_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "octint" :subid("cuid_22_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "octints" :subid("cuid_23_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "binint" :subid("cuid_24_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "binints" :subid("cuid_25_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "integer" :subid("cuid_26_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    rx99_cur."!alt"(rx99_pos, "alt_nfa__4_1361096832.61153", $P11)
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
    rx99_cur."!alt"(rx99_pos, "alt_nfa__3_1361096832.61153", $P11)
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
.sub "dec_number" :subid("cuid_27_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    rx108_cur."!alt"(rx108_pos, "alt_nfa__5_1361096832.64272", $P11)
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
.sub "escale" :subid("cuid_28_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape" :subid("cuid_29_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 87
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_30_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<stopper>" :subid("cuid_31_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<bs>" :subid("cuid_32_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<nl>" :subid("cuid_33_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<cr>" :subid("cuid_34_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<tab>" :subid("cuid_35_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<ff>" :subid("cuid_36_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<esc>" :subid("cuid_37_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<hex>" :subid("cuid_38_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    rx145_cur."!alt"(rx145_pos, "alt_nfa__6_1361096832.73633", $P11)
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
.sub "quote_escape:sym<oct>" :subid("cuid_39_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    rx150_cur."!alt"(rx150_pos, "alt_nfa__7_1361096832.75192", $P11)
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
.sub "quote_escape:sym<chr>" :subid("cuid_40_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<0>" :subid("cuid_41_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<misc>" :subid("cuid_42_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_176_1361096832.26832' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_43_1361096832.26832' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_44_1361096832.26832' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_177_1361096832.26832' 
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
    .const 'Sub' $P5002 = 'cuid_176_1361096832.26832' 
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
    rx161_cur."!alt"(rx161_pos, "alt_nfa__8_1361096832.82993", $P11)
    goto rx161_fail479
  alt164_0489:
    .const 'Sub' $P5004 = 'cuid_43_1361096832.26832' 
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
    .const 'Sub' $P5005 = 'cuid_44_1361096832.26832' 
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
    .const 'Sub' $P5007 = 'cuid_177_1361096832.26832' 
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
.sub "" :subid("cuid_176_1361096832.26832") :anon :lex :outer("cuid_42_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 108

    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1361096832.26832") :anon :lex :outer("cuid_42_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "" :subid("cuid_44_1361096832.26832") :anon :lex :outer("cuid_42_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "" :subid("cuid_177_1361096832.26832") :anon :lex :outer("cuid_42_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_172515:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_45_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_46_1361096832.26832' 
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
    .const 'Sub' $P5001 = 'cuid_46_1361096832.26832' 
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
.sub "" :subid("cuid_46_1361096832.26832") :anon :lex :outer("cuid_45_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "charnames" :subid("cuid_47_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "charspec" :subid("cuid_48_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    rx190_cur."!alt"(rx190_pos, "alt_nfa__9_1361096832.87672", $P11)
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
.sub "O" :subid("cuid_49_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_1 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    if haz_param_1, default591
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
.sub "panic" :subid("cuid_50_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 323
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_3 
    .local pmc pkg_lookup_tmp_1 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_1, $P5008
    get_who $P5009, pkg_lookup_tmp_1
    exists $I5002, $P5009["HLL"]
    unless $I5002 goto if199_else594 
    get_who $P5011, pkg_lookup_tmp_1
    set $P5010, $P5011["HLL"]
    set $P5013, $P5010
    goto if199_end595
  if199_else594:
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5013, $P5012
  if199_end595:
    get_who $P5007, $P5013
    set fb_tmp_3, $P5007
    repr_defined $I5001, fb_tmp_3
    unless $I5001 goto if198_else592 
    set $P5014, fb_tmp_3["Compiler"]
    set $P5016, $P5014
    goto if198_end593
  if198_else592:
    null $P5015
    set $P5016, $P5015
  if198_end593:
    unless_null $P5016, vivi_200596
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5016, $P5017
  vivi_200596:
    $P5018 = $P5016."lineof"($P102, $P101)
    set $N5002, $P5018
    set $N5003, 1
    add $N5001, $N5002, $N5003
    _lex_param_1."push"($N5001)
.annotate 'line', 328
    _lex_param_1."push"(", near \"")
.annotate 'line', 329
    set $S5003, $P102
    set $I5003, $P101
    substr $S5002, $S5003, $I5003, 10
    escape $S5001, $S5002
    _lex_param_1."push"($S5001)
.annotate 'line', 330
    _lex_param_1."push"("\"")
    join $S5004, "", _lex_param_1
    box $P5019, $S5004
    die $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_51_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 334
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_2, default599
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_2, $P5005
  default599:
    if _lex_param_2 goto unless201_end598 
.annotate 'line', 335
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless201_end598:
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
.sub "peek_delimiters" :subid("cuid_52_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 351
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_178_1361096832.26832' 
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
    unless $I5001 goto if202_end601 
.annotate 'line', 356
.annotate 'line', 357
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if202_end601:
    is_cclass $I5002, .CCLASS_WORD, $S101, 0
    unless $I5002 goto if203_end603 
.annotate 'line', 359
.annotate 'line', 360
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if203_end603:
    is_cclass $I5003, .CCLASS_WHITESPACE, $S101, 0
    unless $I5003 goto if204_end605 
.annotate 'line', 362
.annotate 'line', 363
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if204_end605:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if205_end607 
    .const 'Sub' $P5008 = 'cuid_178_1361096832.26832' 
    capture_lex $P5008
    $P5009 = $P5008()
  if205_end607:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1361096832.26832") :anon :lex :outer("cuid_52_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 369
    .lex "$len", $I101 
    .local pmc tmp_1 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if206_end609 
.annotate 'line', 371
.annotate 'line', 372
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if206_end609:
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
  while207_test610:
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
    unless $I5004 goto while207_done614 
  while207_redo612:
.annotate 'line', 380
    box $P5005, $I101
    set tmp_1, $P5005
    set $N5011, tmp_1
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $I5007, $N5010
    set $I101, $I5007
    set $P5005, tmp_1
    goto while207_test610 
  while207_done614:
    set $N5010, $I101
    set $N5011, 1
    isgt $I5007, $N5010, $N5011
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if208_end616 
.annotate 'line', 383
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if208_end616:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_53_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 392
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5028 = 'cuid_180_1361096832.26832' 
    capture_lex $P5028 
    .lex "%*QUOTEMOD", $P101 
    .lex "$*QUOTE_START", $P102 
    .lex "$*QUOTE_STOP", $P103 
    .lex utf8:"$\x{a2}", $P104 
    .lex "$/", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc self 
    .local pmc fb_tmp_4 
    .local pmc pkg_viv_tmp_1 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx209_start
    .local string rx209_tgt
    .local int rx209_pos
    .local int rx209_off
    .local int rx209_eos
    .local int rx209_rep
    .local pmc rx209_cur
    .local pmc rx209_curclass
    .local pmc rx209_bstack
    .local pmc rx209_cstack
    rx209_start = self."!cursor_start_all"()
    set rx209_cur, rx209_start[0]
    set rx209_tgt, rx209_start[1]
    set rx209_pos, rx209_start[2]
    set rx209_curclass, rx209_start[3]
    set rx209_bstack, rx209_start[4]
    set $I19, rx209_start[5]
    store_lex unicode:"$\x{a2}", rx209_cur
    length rx209_eos, rx209_tgt
    eq $I19, 1, rx209_restart619
    gt rx209_pos, rx209_eos, rx209_fail620
    repr_get_attr_int $I11, self, rx209_curclass, "$!from"
    ne $I11, -1, rxscan210_done626
    goto rxscan210_scan625
  rxscan210_loop624:
    inc rx209_pos
    gt rx209_pos, rx209_eos, rx209_fail620
    repr_bind_attr_int rx209_cur, rx209_curclass, "$!from", rx209_pos
  rxscan210_scan625:
    nqp_rxmark rx209_bstack, rxscan210_loop624, rx209_pos, 0
  rxscan210_done626:
    repr_bind_attr_int rx209_cur, rx209_curclass, "$!pos", rx209_pos
    store_lex unicode:"$\x{a2}", rx209_cur
    unless_null $P101, fallback627
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_4, pkg_viv_tmp_1
    repr_defined $I5001, fb_tmp_4
    unless $I5001 goto if211_else628 
    set $P5006, fb_tmp_4["%QUOTEMOD"]
    set $P5008, $P5006
    goto if211_end629
  if211_else628:
    null $P5007
    set $P5008, $P5007
  if211_end629:
    unless_null $P5008, vivi_212630
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%QUOTEMOD"], $P5009
    set $P5008, $P5009
  vivi_212630:
    unless_null $P5008, vivi_213631
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5010
  vivi_213631:
    set $P101, $P5008
  fallback627:
    repr_bind_attr_int rx209_cur, rx209_curclass, "$!pos", rx209_pos
    store_lex unicode:"$\x{a2}", rx209_cur
    unless_null $P102, fallback632
    nqp_get_sc_object $P5012, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5011, $P5012
    set fb_tmp_5, $P5011
    repr_defined $I5002, fb_tmp_5
    unless $I5002 goto if214_else633 
    set $P5013, fb_tmp_5["$QUOTE_START"]
    set $P5015, $P5013
    goto if214_end634
  if214_else633:
    null $P5014
    set $P5015, $P5014
  if214_end634:
    unless_null $P5015, vivi_215635
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  vivi_215635:
    unless_null $P5015, vivi_216636
    die "Contextual $*QUOTE_START not found"
    box $P5017, "Contextual $*QUOTE_START not found"
    set $P5015, $P5017
  vivi_216636:
    set $P102, $P5015
  fallback632:
    repr_bind_attr_int rx209_cur, rx209_curclass, "$!pos", rx209_pos
    store_lex unicode:"$\x{a2}", rx209_cur
    unless_null $P103, fallback637
    nqp_get_sc_object $P5019, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5018, $P5019
    set fb_tmp_6, $P5018
    repr_defined $I5003, fb_tmp_6
    unless $I5003 goto if217_else638 
    set $P5020, fb_tmp_6["$QUOTE_STOP"]
    set $P5022, $P5020
    goto if217_end639
  if217_else638:
    null $P5021
    set $P5022, $P5021
  if217_end639:
    unless_null $P5022, vivi_218640
    nqp_get_sc_object $P5023, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5022, $P5023
  vivi_218640:
    unless_null $P5022, vivi_219641
    die "Contextual $*QUOTE_STOP not found"
    box $P5024, "Contextual $*QUOTE_STOP not found"
    set $P5022, $P5024
  vivi_219641:
    set $P103, $P5022
  fallback637:
    repr_bind_attr_int rx209_cur, rx209_curclass, "$!pos", rx209_pos
    store_lex unicode:"$\x{a2}", rx209_cur
    $P5025 = $P104."MATCH"()
    set $P105, $P5025
    .const 'Sub' $P5026 = 'cuid_180_1361096832.26832' 
    capture_lex $P5026
    $P5027 = $P5026()
    repr_bind_attr_int rx209_cur, rx209_curclass, "$!pos", rx209_pos
    $P11 = rx209_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx209_curclass, "$!pos"
    lt $I11, 0, rx209_fail620
    nqp_rxmark rx209_bstack, rxsubrule250_pass695, -1, 0
  rxsubrule250_pass695:
    rx209_cstack = rx209_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx209_pos, $P11, rx209_curclass, "$!pos"
    rx209_cur."!cursor_pass"(rx209_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx209_cur)
  rx209_restart619:
    repr_get_attr_obj rx209_cstack, rx209_cur, rx209_curclass, "$!cstack"
  rx209_fail620:
    unless rx209_bstack, rx209_done618
    pop $I19, rx209_bstack
    if_null rx209_cstack, rx209_cstack_done623
    unless rx209_cstack, rx209_cstack_done623
    dec $I19
    set $P11, rx209_cstack[$I19]
  rx209_cstack_done623:
    pop rx209_rep, rx209_bstack
    pop rx209_pos, rx209_bstack
    pop $I19, rx209_bstack
    lt rx209_pos, -1, rx209_done618
    lt rx209_pos, 0, rx209_fail620
    eq $I19, 0, rx209_fail620
    nqp_islist $I20, rx209_cstack
    unless $I20, rx209_jump621
    elements $I18, rx209_bstack
    le $I18, 0, rx209_cut622
    dec $I18
    set $I18, rx209_bstack[$I18]
  rx209_cut622:
    assign rx209_cstack, $I18
  rx209_jump621:
    jump $I19
  rx209_done618:
    rx209_cur."!cursor_fail"()
    .return (rx209_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1361096832.26832") :anon :lex :outer("cuid_53_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 396
    .const 'Sub' $P5025 = 'cuid_179_1361096832.26832' 
    capture_lex $P5025 
    .lex "@delims", $P101 
    .local pmc fb_tmp_15 
    .local pmc fb_tmp_16 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next686:
    unless $P5004, for_done688
    shift $P5007, $P5004
  for_redo687:
    .const 'Sub' $P5006 = 'cuid_179_1361096832.26832' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next686
  for_done688:
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
    unless $I5001 goto if246_else689 
    set $P5017, fb_tmp_15[0]
    set $P5019, $P5017
    goto if246_end690
  if246_else689:
    null $P5018
    set $P5019, $P5018
  if246_end690:
    unless_null $P5019, vivi_247691
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_247691:
    store_dynamic_lex "$*QUOTE_START", $P5019
    set fb_tmp_16, $P101
    repr_defined $I5002, fb_tmp_16
    unless $I5002 goto if248_else692 
    set $P5021, fb_tmp_16[1]
    set $P5023, $P5021
    goto if248_end693
  if248_else692:
    null $P5022
    set $P5023, $P5022
  if248_end693:
    unless_null $P5023, vivi_249694
    nqp_get_sc_object $P5024, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5023, $P5024
  vivi_249694:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1361096832.26832") :anon :lex :outer("cuid_180_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 397
    .param pmc _lex_param_0 
    .lex "$mod", _lex_param_0 
    .local pmc fb_tmp_7 
    .local pmc pkg_viv_tmp_2 
    .local pmc fb_tmp_8 
    .local pmc pkg_viv_tmp_3 
    .local pmc fb_tmp_9 
    .local pmc pkg_viv_tmp_4 
    .local pmc fb_tmp_10 
    .local pmc pkg_viv_tmp_5 
    .local pmc fb_tmp_11 
    .local pmc pkg_viv_tmp_6 
    .local pmc fb_tmp_12 
    .local pmc pkg_viv_tmp_7 
    .local pmc fb_tmp_13 
    .local pmc pkg_viv_tmp_8 
    .local pmc fb_tmp_14 
    .local pmc pkg_viv_tmp_9 
    set $S5002, _lex_param_0
    substr $S5001, $S5002, 1
    box $P5001, $S5001
    set _lex_param_0, $P5001
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback642
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_2, $P5003
    set fb_tmp_7, pkg_viv_tmp_2
    repr_defined $I5001, fb_tmp_7
    unless $I5001 goto if220_else643 
    set $P5005, fb_tmp_7["%QUOTEMOD"]
    set $P5007, $P5005
    goto if220_end644
  if220_else643:
    null $P5006
    set $P5007, $P5006
  if220_end644:
    unless_null $P5007, vivi_221645
    new $P5008, 'Hash'
    set pkg_viv_tmp_2["%QUOTEMOD"], $P5008
    set $P5007, $P5008
  vivi_221645:
    unless_null $P5007, vivi_222646
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5009
  vivi_222646:
    set $P5002, $P5007
  fallback642:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5002, $S5004, "qq"
    unless $I5002 goto if223_else647 
.annotate 'line', 400
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback649
    nqp_get_sc_object $P5013, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5012, $P5013
    set pkg_viv_tmp_3, $P5012
    set fb_tmp_8, pkg_viv_tmp_3
    repr_defined $I5003, fb_tmp_8
    unless $I5003 goto if224_else650 
    set $P5014, fb_tmp_8["%QUOTEMOD"]
    set $P5016, $P5014
    goto if224_end651
  if224_else650:
    null $P5015
    set $P5016, $P5015
  if224_end651:
    unless_null $P5016, vivi_225652
    new $P5017, 'Hash'
    set pkg_viv_tmp_3["%QUOTEMOD"], $P5017
    set $P5016, $P5017
  vivi_225652:
    unless_null $P5016, vivi_226653
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5016, $P5018
  vivi_226653:
    set $P5011, $P5016
  fallback649:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback654
    nqp_get_sc_object $P5022, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5021, $P5022
    set pkg_viv_tmp_4, $P5021
    set fb_tmp_9, pkg_viv_tmp_4
    repr_defined $I5004, fb_tmp_9
    unless $I5004 goto if227_else655 
    set $P5023, fb_tmp_9["%QUOTEMOD"]
    set $P5025, $P5023
    goto if227_end656
  if227_else655:
    null $P5024
    set $P5025, $P5024
  if227_end656:
    unless_null $P5025, vivi_228657
    new $P5026, 'Hash'
    set pkg_viv_tmp_4["%QUOTEMOD"], $P5026
    set $P5025, $P5026
  vivi_228657:
    unless_null $P5025, vivi_229658
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5025, $P5027
  vivi_229658:
    set $P5020, $P5025
  fallback654:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback659
    nqp_get_sc_object $P5031, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5030, $P5031
    set pkg_viv_tmp_5, $P5030
    set fb_tmp_10, pkg_viv_tmp_5
    repr_defined $I5005, fb_tmp_10
    unless $I5005 goto if230_else660 
    set $P5032, fb_tmp_10["%QUOTEMOD"]
    set $P5034, $P5032
    goto if230_end661
  if230_else660:
    null $P5033
    set $P5034, $P5033
  if230_end661:
    unless_null $P5034, vivi_231662
    new $P5035, 'Hash'
    set pkg_viv_tmp_5["%QUOTEMOD"], $P5035
    set $P5034, $P5035
  vivi_231662:
    unless_null $P5034, vivi_232663
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5034, $P5036
  vivi_232663:
    set $P5029, $P5034
  fallback659:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback664
    nqp_get_sc_object $P5040, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5039, $P5040
    set pkg_viv_tmp_6, $P5039
    set fb_tmp_11, pkg_viv_tmp_6
    repr_defined $I5006, fb_tmp_11
    unless $I5006 goto if233_else665 
    set $P5041, fb_tmp_11["%QUOTEMOD"]
    set $P5043, $P5041
    goto if233_end666
  if233_else665:
    null $P5042
    set $P5043, $P5042
  if233_end666:
    unless_null $P5043, vivi_234667
    new $P5044, 'Hash'
    set pkg_viv_tmp_6["%QUOTEMOD"], $P5044
    set $P5043, $P5044
  vivi_234667:
    unless_null $P5043, vivi_235668
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5043, $P5045
  vivi_235668:
    set $P5038, $P5043
  fallback664:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback669
    nqp_get_sc_object $P5049, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5048, $P5049
    set pkg_viv_tmp_7, $P5048
    set fb_tmp_12, pkg_viv_tmp_7
    repr_defined $I5007, fb_tmp_12
    unless $I5007 goto if236_else670 
    set $P5050, fb_tmp_12["%QUOTEMOD"]
    set $P5052, $P5050
    goto if236_end671
  if236_else670:
    null $P5051
    set $P5052, $P5051
  if236_end671:
    unless_null $P5052, vivi_237672
    new $P5053, 'Hash'
    set pkg_viv_tmp_7["%QUOTEMOD"], $P5053
    set $P5052, $P5053
  vivi_237672:
    unless_null $P5052, vivi_238673
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5052, $P5054
  vivi_238673:
    set $P5047, $P5052
  fallback669:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback674
    nqp_get_sc_object $P5058, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5057, $P5058
    set pkg_viv_tmp_8, $P5057
    set fb_tmp_13, pkg_viv_tmp_8
    repr_defined $I5008, fb_tmp_13
    unless $I5008 goto if239_else675 
    set $P5059, fb_tmp_13["%QUOTEMOD"]
    set $P5061, $P5059
    goto if239_end676
  if239_else675:
    null $P5060
    set $P5061, $P5060
  if239_end676:
    unless_null $P5061, vivi_240677
    new $P5062, 'Hash'
    set pkg_viv_tmp_8["%QUOTEMOD"], $P5062
    set $P5061, $P5062
  vivi_240677:
    unless_null $P5061, vivi_241678
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5061, $P5063
  vivi_241678:
    set $P5056, $P5061
  fallback674:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if223_end648
  if223_else647:
    set $S5005, _lex_param_0
    iseq $I5009, $S5005, "b"
    box $P5075, $I5009
    set $P5074, $P5075
    unless $I5009 goto if242_end680 
.annotate 'line', 408
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback681
    nqp_get_sc_object $P5067, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5066, $P5067
    set pkg_viv_tmp_9, $P5066
    set fb_tmp_14, pkg_viv_tmp_9
    repr_defined $I5010, fb_tmp_14
    unless $I5010 goto if243_else682 
    set $P5068, fb_tmp_14["%QUOTEMOD"]
    set $P5070, $P5068
    goto if243_end683
  if243_else682:
    null $P5069
    set $P5070, $P5069
  if243_end683:
    unless_null $P5070, vivi_244684
    new $P5071, 'Hash'
    set pkg_viv_tmp_9["%QUOTEMOD"], $P5071
    set $P5070, $P5071
  vivi_244684:
    unless_null $P5070, vivi_245685
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5070, $P5072
  vivi_245685:
    set $P5065, $P5070
  fallback681:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if242_end680:
    set $P5076, $P5074
  if223_end648:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_54_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_181_1361096832.26832' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx251_start
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    .local pmc rx251_curclass
    .local pmc rx251_bstack
    .local pmc rx251_cstack
    rx251_start = self."!cursor_start_all"()
    set rx251_cur, rx251_start[0]
    set rx251_tgt, rx251_start[1]
    set rx251_pos, rx251_start[2]
    set rx251_curclass, rx251_start[3]
    set rx251_bstack, rx251_start[4]
    set $I19, rx251_start[5]
    store_lex unicode:"$\x{a2}", rx251_cur
    length rx251_eos, rx251_tgt
    eq $I19, 1, rx251_restart698
    gt rx251_pos, rx251_eos, rx251_fail699
    repr_get_attr_int $I11, self, rx251_curclass, "$!from"
    ne $I11, -1, rxscan252_done705
    goto rxscan252_scan704
  rxscan252_loop703:
    inc rx251_pos
    gt rx251_pos, rx251_eos, rx251_fail699
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!from", rx251_pos
  rxscan252_scan704:
    nqp_rxmark rx251_bstack, rxscan252_loop703, rx251_pos, 0
  rxscan252_done705:
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!pos", rx251_pos
    store_lex unicode:"$\x{a2}", rx251_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_181_1361096832.26832' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx251_fail699
    rx251_cur."!cursor_pass"(rx251_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx251_cur)
  rx251_restart698:
    repr_get_attr_obj rx251_cstack, rx251_cur, rx251_curclass, "$!cstack"
  rx251_fail699:
    unless rx251_bstack, rx251_done697
    pop $I19, rx251_bstack
    if_null rx251_cstack, rx251_cstack_done702
    unless rx251_cstack, rx251_cstack_done702
    dec $I19
    set $P11, rx251_cstack[$I19]
  rx251_cstack_done702:
    pop rx251_rep, rx251_bstack
    pop rx251_pos, rx251_bstack
    pop $I19, rx251_bstack
    lt rx251_pos, -1, rx251_done697
    lt rx251_pos, 0, rx251_fail699
    eq $I19, 0, rx251_fail699
    nqp_islist $I20, rx251_cstack
    unless $I20, rx251_jump700
    elements $I18, rx251_bstack
    le $I18, 0, rx251_cut701
    dec $I18
    set $I18, rx251_bstack[$I18]
  rx251_cut701:
    assign rx251_cstack, $I18
  rx251_jump700:
    jump $I19
  rx251_done697:
    rx251_cur."!cursor_fail"()
    .return (rx251_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1361096832.26832") :anon :lex :outer("cuid_54_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 421
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    .local pmc pkg_viv_tmp_10 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback708
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_10, $P5002
    set fb_tmp_18, pkg_viv_tmp_10
    repr_defined $I5002, fb_tmp_18
    unless $I5002 goto if254_else709 
    set $P5004, fb_tmp_18["%QUOTEMOD"]
    set $P5006, $P5004
    goto if254_end710
  if254_else709:
    null $P5005
    set $P5006, $P5005
  if254_end710:
    unless_null $P5006, vivi_255711
    new $P5007, 'Hash'
    set pkg_viv_tmp_10["%QUOTEMOD"], $P5007
    set $P5006, $P5007
  vivi_255711:
    unless_null $P5006, vivi_256712
    die "Contextual %*QUOTEMOD not found"
    box $P5008, "Contextual %*QUOTEMOD not found"
    set $P5006, $P5008
  vivi_256712:
    set $P5001, $P5006
  fallback708:
    set fb_tmp_17, $P5001
    repr_defined $I5001, fb_tmp_17
    unless $I5001 goto if253_else706 
    find_lex $S5001, "$mod"
    set $P5009, fb_tmp_17[$S5001]
    set $P5011, $P5009
    goto if253_end707
  if253_else706:
    null $P5010
    set $P5011, $P5010
  if253_end707:
    unless_null $P5011, vivi_257713
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_257713:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_55_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "stopper" :subid("cuid_56_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "split_words" :subid("cuid_57_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
  while258_test714:
    find_not_cclass $I5003, .CCLASS_WHITESPACE, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while258_done718 
  while258_redo716:
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
    goto while258_test714 
  while258_done718:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_58_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 497
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_3 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_4 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$preclim", _lex_param_1 
    .lex "$noinfix", _lex_param_2 
    if haz_param_3, default719
    set $S5001, ""
    set _lex_param_1, $S5001
  default719:
    if haz_param_4, default720
    set $I5001, 0
    set _lex_param_2, $I5001
  default720:

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
.sub "EXPR_reduce" :subid("cuid_59_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "EXPR_nonassoc" :subid("cuid_60_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "ternary" :subid("cuid_61_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    unless $I5001 goto if259_else721 
    set $P5001, fb_tmp_19[1]
    set $P5003, $P5001
    goto if259_end722
  if259_else721:
    null $P5002
    set $P5003, $P5002
  if259_end722:
    unless_null $P5003, vivi_260723
    nqp_get_sc_object $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5003, $P5004
  vivi_260723:
    set _lex_param_1[2], $P5003
    set fb_tmp_21, _lex_param_1
    repr_defined $I5003, fb_tmp_21
    unless $I5003 goto if262_else726 
    set $P5005, fb_tmp_21["infix"]
    set $P5007, $P5005
    goto if262_end727
  if262_else726:
    null $P5006
    set $P5007, $P5006
  if262_end727:
    unless_null $P5007, vivi_263728
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5008
  vivi_263728:
    set fb_tmp_20, $P5007
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if261_else724 
    set $P5009, fb_tmp_20["EXPR"]
    set $P5011, $P5009
    goto if261_end725
  if261_else724:
    null $P5010
    set $P5011, $P5010
  if261_end725:
    unless_null $P5011, vivi_264729
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_264729:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_62_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 801
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
.sub "MARKED" :subid("cuid_63_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002

            $P5003 = get_global '%!MARKHASH'
            unless null $P5003 goto have_markhash
            $P5003 = new ['Hash']
            set_global '%!MARKHASH', $P5003
          have_markhash:
        
    set $P101, $P5003
    set fb_tmp_22, $P101
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if265_else730 
    set $P5004, fb_tmp_22[_lex_param_1]
    set $P5006, $P5004
    goto if265_end731
  if265_else730:
    null $P5005
    set $P5006, $P5005
  if265_end731:
    unless_null $P5006, vivi_266732
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_266732:
    set $P102, $P5006
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_23, $P5008
    repr_defined $I5003, fb_tmp_23
    unless $I5003 goto if269_else737 
    set $P5010, fb_tmp_23["NQPCursor"]
    set $P5012, $P5010
    goto if269_end738
  if269_else737:
    null $P5011
    set $P5012, $P5011
  if269_end738:
    unless_null $P5012, vivi_271740
    nqp_get_sc_object $P5015, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5014, $P5015
    set $P5013, $P5014["NQPCursor"]
    unless_null $P5013, vivi_270739
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5013, $P5016
  vivi_270739:
    set $P5012, $P5013
  vivi_271740:
    type_check $I5002, $P102, $P5012
    set $I5005, $I5002
    unless $I5002 goto if268_end736 
.annotate 'line', 823
    $P5017 = $P102."pos"()
    set $N5001, $P5017
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."pos"()
    set $N5002, $P5019
    iseq $I5004, $N5001, $N5002
    set $I5005, $I5004
  if268_end736:
    if $I5005 goto unless267_end734 
.annotate 'line', 824
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."!cursor_start_cur"()
    set $P102, $P5021
  unless267_end734:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_64_1361096832.26832") :anon :lex :outer("cuid_175_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    .local pmc pkg_viv_tmp_11 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    .local pmc pkg_viv_tmp_12 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
.annotate 'line', 830
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback743
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_11, $P5004
    set fb_tmp_25, pkg_viv_tmp_11
    repr_defined $I5002, fb_tmp_25
    unless $I5002 goto if273_else744 
    set $P5006, fb_tmp_25["%LANG"]
    set $P5008, $P5006
    goto if273_end745
  if273_else744:
    null $P5007
    set $P5008, $P5007
  if273_end745:
    unless_null $P5008, vivi_274746
    new $P5009, 'Hash'
    set pkg_viv_tmp_11["%LANG"], $P5009
    set $P5008, $P5009
  vivi_274746:
    unless_null $P5008, vivi_275747
    die "Contextual %*LANG not found"
    box $P5010, "Contextual %*LANG not found"
    set $P5008, $P5010
  vivi_275747:
    set $P5003, $P5008
  fallback743:
    set fb_tmp_24, $P5003
    repr_defined $I5001, fb_tmp_24
    unless $I5001 goto if272_else741 
    set $S5001, _lex_param_1
    set $P5011, fb_tmp_24[$S5001]
    set $P5013, $P5011
    goto if272_end742
  if272_else741:
    null $P5012
    set $P5013, $P5012
  if272_end742:
    unless_null $P5013, vivi_276748
    nqp_get_sc_object $P5014, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5013, $P5014
  vivi_276748:
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."orig"()
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."pos"()
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."!shared"()
    $P5021 = $P5013."!cursor_init"($P5016, $P5018 :named("p"), $P5020 :named("shared"))
    set $P101, $P5021
.annotate 'line', 831
    nqp_decontainerize $P5023, _lex_param_0
    get_how $P5022, $P5023
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = $P5022."traced"($P5024)
    unless $P5025 goto if277_end750 
.annotate 'line', 832
    get_how $P5026, $P101
    nqp_decontainerize $P5028, _lex_param_0
    get_how $P5027, $P5028
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5027."trace_depth"($P5029)
    $P5031 = $P5026."trace-on"($P101, $P5030)
  if277_end750:
    find_dynamic_lex $P5032, "%*LANG"
    unless_null $P5032, fallback753
    nqp_get_sc_object $P5034, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5033, $P5034
    set pkg_viv_tmp_12, $P5033
    set fb_tmp_27, pkg_viv_tmp_12
    repr_defined $I5004, fb_tmp_27
    unless $I5004 goto if279_else754 
    set $P5035, fb_tmp_27["%LANG"]
    set $P5037, $P5035
    goto if279_end755
  if279_else754:
    null $P5036
    set $P5037, $P5036
  if279_end755:
    unless_null $P5037, vivi_280756
    new $P5038, 'Hash'
    set pkg_viv_tmp_12["%LANG"], $P5038
    set $P5037, $P5038
  vivi_280756:
    unless_null $P5037, vivi_281757
    die "Contextual %*LANG not found"
    box $P5039, "Contextual %*LANG not found"
    set $P5037, $P5039
  vivi_281757:
    set $P5032, $P5037
  fallback753:
    set fb_tmp_26, $P5032
    repr_defined $I5003, fb_tmp_26
    unless $I5003 goto if278_else751 
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5040, fb_tmp_26[$S5002]
    set $P5042, $P5040
    goto if278_end752
  if278_else751:
    null $P5041
    set $P5042, $P5041
  if278_end752:
    unless_null $P5042, vivi_282758
    nqp_get_sc_object $P5043, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5042, $P5043
  vivi_282758:
    set $P102, $P5042
.annotate 'line', 835
    set $S5004, _lex_param_2
    $P5044 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1361096832.26832") :anon :lex :outer("cuid_182_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 840
    .const 'Sub' $P5037 = 'cuid_183_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_65_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_66_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_67_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_68_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_69_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_70_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_71_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_72_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_73_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_74_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_75_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_76_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_77_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_78_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_79_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_80_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_81_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_82_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_83_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_84_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_85_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_86_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_87_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_88_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_89_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_90_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_91_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_92_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_93_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_94_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_95_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_96_1361096832.26832' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_97_1361096832.26832' 
    capture_lex $P5037 
    .lex "&string_to_int", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_183_1361096832.26832' 
    capture_lex $P5001
    set $P101, $P5001
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set $P5002["string_to_int"], $P101
    .const 'Sub' $P5004 = 'cuid_65_1361096832.26832' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_66_1361096832.26832' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_67_1361096832.26832' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_68_1361096832.26832' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_69_1361096832.26832' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_70_1361096832.26832' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_71_1361096832.26832' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_72_1361096832.26832' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_73_1361096832.26832' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_74_1361096832.26832' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_75_1361096832.26832' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_76_1361096832.26832' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_77_1361096832.26832' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_78_1361096832.26832' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_79_1361096832.26832' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_80_1361096832.26832' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_81_1361096832.26832' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_82_1361096832.26832' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_83_1361096832.26832' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_84_1361096832.26832' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_85_1361096832.26832' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_86_1361096832.26832' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_87_1361096832.26832' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_88_1361096832.26832' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_89_1361096832.26832' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_90_1361096832.26832' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_91_1361096832.26832' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_92_1361096832.26832' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_93_1361096832.26832' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_94_1361096832.26832' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_95_1361096832.26832' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_96_1361096832.26832' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_97_1361096832.26832' 
    capture_lex $P5036
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_183_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 841
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$res", $P101 
    .lex "$src", _lex_param_0 
    .lex "$base", _lex_param_1 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    if $I5002 goto unless283_end760 
.annotate 'line', 843
    $P5004 = _lex_param_0."CURSOR"()
    set $S5006, _lex_param_0
    concat $S5005, "'", $S5006
    concat $S5004, $S5005, "' is not a valid number"
    $P5005 = $P5004."panic"($S5004)
  unless283_end760:
    set $S5007, 0
    set $P5006, $P101[$S5007]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_65_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 848
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_186_1361096832.26832' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if284_else761 
    .const 'Sub' $P5001 = 'cuid_186_1361096832.26832' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if284_end762
  if284_else761:
.annotate 'line', 855
.annotate 'line', 856
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if284_end762:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1361096832.26832") :anon :lex :outer("cuid_65_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 849
    .const 'Sub' $P5009 = 'cuid_185_1361096832.26832' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next763:
    unless $P5005, for_done765
    shift $P5008, $P5005
  for_redo764:
    .const 'Sub' $P5007 = 'cuid_185_1361096832.26832' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next763
  for_done765:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1361096832.26832") :anon :lex :outer("cuid_186_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "CTXSAVE" :subid("cuid_66_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 860
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_28 
    .local pmc pkg_lookup_tmp_2 
    .local pmc fb_tmp_29 
    .local pmc pkg_lookup_tmp_3 
    .local pmc fb_tmp_30 
    .local pmc pkg_lookup_tmp_4 
    .local pmc fb_tmp_31 
    .local pmc pkg_lookup_tmp_5 
    .local pmc fb_tmp_32 
    .local pmc pkg_lookup_tmp_6 
    .local pmc fb_tmp_33 
    .local pmc pkg_lookup_tmp_7 
    .local pmc fb_tmp_34 
    .local pmc pkg_lookup_tmp_8 
    .local pmc fb_tmp_35 
    .local pmc pkg_lookup_tmp_9 
    .local pmc fb_tmp_36 
    .local pmc pkg_lookup_tmp_10 
    .local pmc fb_tmp_37 
    .local pmc pkg_lookup_tmp_11 
    .local pmc fb_tmp_38 
    .local pmc pkg_lookup_tmp_12 
    .local pmc fb_tmp_39 
    .local pmc pkg_lookup_tmp_13 
    .local pmc fb_tmp_40 
    .local pmc pkg_lookup_tmp_14 
.annotate 'line', 861
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_2, $P5002
    get_who $P5003, pkg_lookup_tmp_2
    exists $I5002, $P5003["QAST"]
    unless $I5002 goto if286_else768 
    get_who $P5005, pkg_lookup_tmp_2
    set $P5004, $P5005["QAST"]
    set $P5007, $P5004
    goto if286_end769
  if286_else768:
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5006
  if286_end769:
    get_who $P5001, $P5007
    set fb_tmp_28, $P5001
    repr_defined $I5001, fb_tmp_28
    unless $I5001 goto if285_else766 
    set $P5008, fb_tmp_28["Stmts"]
    set $P5010, $P5008
    goto if285_end767
  if285_else766:
    null $P5009
    set $P5010, $P5009
  if285_end767:
    unless_null $P5010, vivi_287770
    nqp_get_sc_object $P5011, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5010, $P5011
  vivi_287770:
.annotate 'line', 862
    nqp_get_sc_object $P5013, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_3, $P5013
    get_who $P5014, pkg_lookup_tmp_3
    exists $I5004, $P5014["QAST"]
    unless $I5004 goto if289_else773 
    get_who $P5016, pkg_lookup_tmp_3
    set $P5015, $P5016["QAST"]
    set $P5018, $P5015
    goto if289_end774
  if289_else773:
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5018, $P5017
  if289_end774:
    get_who $P5012, $P5018
    set fb_tmp_29, $P5012
    repr_defined $I5003, fb_tmp_29
    unless $I5003 goto if288_else771 
    set $P5019, fb_tmp_29["Op"]
    set $P5021, $P5019
    goto if288_end772
  if288_else771:
    null $P5020
    set $P5021, $P5020
  if288_end772:
    unless_null $P5021, vivi_290775
    nqp_get_sc_object $P5022, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5021, $P5022
  vivi_290775:
.annotate 'line', 864
    nqp_get_sc_object $P5024, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_4, $P5024
    get_who $P5025, pkg_lookup_tmp_4
    exists $I5006, $P5025["QAST"]
    unless $I5006 goto if292_else778 
    get_who $P5027, pkg_lookup_tmp_4
    set $P5026, $P5027["QAST"]
    set $P5029, $P5026
    goto if292_end779
  if292_else778:
    nqp_get_sc_object $P5028, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5029, $P5028
  if292_end779:
    get_who $P5023, $P5029
    set fb_tmp_30, $P5023
    repr_defined $I5005, fb_tmp_30
    unless $I5005 goto if291_else776 
    set $P5030, fb_tmp_30["Var"]
    set $P5032, $P5030
    goto if291_end777
  if291_else776:
    null $P5031
    set $P5032, $P5031
  if291_end777:
    unless_null $P5032, vivi_293780
    nqp_get_sc_object $P5033, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5032, $P5033
  vivi_293780:
    $P5034 = $P5032."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 865
    nqp_get_sc_object $P5036, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_5, $P5036
    get_who $P5037, pkg_lookup_tmp_5
    exists $I5008, $P5037["QAST"]
    unless $I5008 goto if295_else783 
    get_who $P5039, pkg_lookup_tmp_5
    set $P5038, $P5039["QAST"]
    set $P5041, $P5038
    goto if295_end784
  if295_else783:
    nqp_get_sc_object $P5040, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5041, $P5040
  if295_end784:
    get_who $P5035, $P5041
    set fb_tmp_31, $P5035
    repr_defined $I5007, fb_tmp_31
    unless $I5007 goto if294_else781 
    set $P5042, fb_tmp_31["Var"]
    set $P5044, $P5042
    goto if294_end782
  if294_else781:
    null $P5043
    set $P5044, $P5043
  if294_end782:
    unless_null $P5044, vivi_296785
    nqp_get_sc_object $P5045, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5044, $P5045
  vivi_296785:
    $P5046 = $P5044."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5047 = $P5021."new"($P5034, $P5046, "bind" :named("op"))
.annotate 'line', 867
    nqp_get_sc_object $P5049, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_6, $P5049
    get_who $P5050, pkg_lookup_tmp_6
    exists $I5010, $P5050["QAST"]
    unless $I5010 goto if298_else788 
    get_who $P5052, pkg_lookup_tmp_6
    set $P5051, $P5052["QAST"]
    set $P5054, $P5051
    goto if298_end789
  if298_else788:
    nqp_get_sc_object $P5053, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5054, $P5053
  if298_end789:
    get_who $P5048, $P5054
    set fb_tmp_32, $P5048
    repr_defined $I5009, fb_tmp_32
    unless $I5009 goto if297_else786 
    set $P5055, fb_tmp_32["Op"]
    set $P5057, $P5055
    goto if297_end787
  if297_else786:
    null $P5056
    set $P5057, $P5056
  if297_end787:
    unless_null $P5057, vivi_299790
    nqp_get_sc_object $P5058, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5057, $P5058
  vivi_299790:
.annotate 'line', 869
    nqp_get_sc_object $P5060, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_7, $P5060
    get_who $P5061, pkg_lookup_tmp_7
    exists $I5012, $P5061["QAST"]
    unless $I5012 goto if301_else793 
    get_who $P5063, pkg_lookup_tmp_7
    set $P5062, $P5063["QAST"]
    set $P5065, $P5062
    goto if301_end794
  if301_else793:
    nqp_get_sc_object $P5064, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5065, $P5064
  if301_end794:
    get_who $P5059, $P5065
    set fb_tmp_33, $P5059
    repr_defined $I5011, fb_tmp_33
    unless $I5011 goto if300_else791 
    set $P5066, fb_tmp_33["Op"]
    set $P5068, $P5066
    goto if300_end792
  if300_else791:
    null $P5067
    set $P5068, $P5067
  if300_end792:
    unless_null $P5068, vivi_302795
    nqp_get_sc_object $P5069, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5068, $P5069
  vivi_302795:
.annotate 'line', 871
    nqp_get_sc_object $P5071, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_8, $P5071
    get_who $P5072, pkg_lookup_tmp_8
    exists $I5014, $P5072["QAST"]
    unless $I5014 goto if304_else798 
    get_who $P5074, pkg_lookup_tmp_8
    set $P5073, $P5074["QAST"]
    set $P5076, $P5073
    goto if304_end799
  if304_else798:
    nqp_get_sc_object $P5075, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5076, $P5075
  if304_end799:
    get_who $P5070, $P5076
    set fb_tmp_34, $P5070
    repr_defined $I5013, fb_tmp_34
    unless $I5013 goto if303_else796 
    set $P5077, fb_tmp_34["Var"]
    set $P5079, $P5077
    goto if303_end797
  if303_else796:
    null $P5078
    set $P5079, $P5078
  if303_end797:
    unless_null $P5079, vivi_305800
    nqp_get_sc_object $P5080, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5079, $P5080
  vivi_305800:
    $P5081 = $P5079."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5082 = $P5068."new"($P5081, "isnull" :named("op"))
.annotate 'line', 873
    nqp_get_sc_object $P5084, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_9, $P5084
    get_who $P5085, pkg_lookup_tmp_9
    exists $I5016, $P5085["QAST"]
    unless $I5016 goto if307_else803 
    get_who $P5087, pkg_lookup_tmp_9
    set $P5086, $P5087["QAST"]
    set $P5089, $P5086
    goto if307_end804
  if307_else803:
    nqp_get_sc_object $P5088, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5089, $P5088
  if307_end804:
    get_who $P5083, $P5089
    set fb_tmp_35, $P5083
    repr_defined $I5015, fb_tmp_35
    unless $I5015 goto if306_else801 
    set $P5090, fb_tmp_35["Op"]
    set $P5092, $P5090
    goto if306_end802
  if306_else801:
    null $P5091
    set $P5092, $P5091
  if306_end802:
    unless_null $P5092, vivi_308805
    nqp_get_sc_object $P5093, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5092, $P5093
  vivi_308805:
.annotate 'line', 875
    nqp_get_sc_object $P5095, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_10, $P5095
    get_who $P5096, pkg_lookup_tmp_10
    exists $I5018, $P5096["QAST"]
    unless $I5018 goto if310_else808 
    get_who $P5098, pkg_lookup_tmp_10
    set $P5097, $P5098["QAST"]
    set $P5100, $P5097
    goto if310_end809
  if310_else808:
    nqp_get_sc_object $P5099, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5100, $P5099
  if310_end809:
    get_who $P5094, $P5100
    set fb_tmp_36, $P5094
    repr_defined $I5017, fb_tmp_36
    unless $I5017 goto if309_else806 
    set $P5101, fb_tmp_36["Op"]
    set $P5103, $P5101
    goto if309_end807
  if309_else806:
    null $P5102
    set $P5103, $P5102
  if309_end807:
    unless_null $P5103, vivi_311810
    nqp_get_sc_object $P5104, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5103, $P5104
  vivi_311810:
.annotate 'line', 877
    nqp_get_sc_object $P5106, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_11, $P5106
    get_who $P5107, pkg_lookup_tmp_11
    exists $I5020, $P5107["QAST"]
    unless $I5020 goto if313_else813 
    get_who $P5109, pkg_lookup_tmp_11
    set $P5108, $P5109["QAST"]
    set $P5111, $P5108
    goto if313_end814
  if313_else813:
    nqp_get_sc_object $P5110, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5111, $P5110
  if313_end814:
    get_who $P5105, $P5111
    set fb_tmp_37, $P5105
    repr_defined $I5019, fb_tmp_37
    unless $I5019 goto if312_else811 
    set $P5112, fb_tmp_37["Var"]
    set $P5114, $P5112
    goto if312_end812
  if312_else811:
    null $P5113
    set $P5114, $P5113
  if312_end812:
    unless_null $P5114, vivi_314815
    nqp_get_sc_object $P5115, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5114, $P5115
  vivi_314815:
    $P5116 = $P5114."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 878
    nqp_get_sc_object $P5118, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_12, $P5118
    get_who $P5119, pkg_lookup_tmp_12
    exists $I5022, $P5119["QAST"]
    unless $I5022 goto if316_else818 
    get_who $P5121, pkg_lookup_tmp_12
    set $P5120, $P5121["QAST"]
    set $P5123, $P5120
    goto if316_end819
  if316_else818:
    nqp_get_sc_object $P5122, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5123, $P5122
  if316_end819:
    get_who $P5117, $P5123
    set fb_tmp_38, $P5117
    repr_defined $I5021, fb_tmp_38
    unless $I5021 goto if315_else816 
    set $P5124, fb_tmp_38["SVal"]
    set $P5126, $P5124
    goto if315_end817
  if315_else816:
    null $P5125
    set $P5126, $P5125
  if315_end817:
    unless_null $P5126, vivi_317820
    nqp_get_sc_object $P5127, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5126, $P5127
  vivi_317820:
    $P5128 = $P5126."new"("ctxsave" :named("value"))
    $P5129 = $P5103."new"($P5116, $P5128, "can" :named("op"))
.annotate 'line', 880
    nqp_get_sc_object $P5131, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_13, $P5131
    get_who $P5132, pkg_lookup_tmp_13
    exists $I5024, $P5132["QAST"]
    unless $I5024 goto if319_else823 
    get_who $P5134, pkg_lookup_tmp_13
    set $P5133, $P5134["QAST"]
    set $P5136, $P5133
    goto if319_end824
  if319_else823:
    nqp_get_sc_object $P5135, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5136, $P5135
  if319_end824:
    get_who $P5130, $P5136
    set fb_tmp_39, $P5130
    repr_defined $I5023, fb_tmp_39
    unless $I5023 goto if318_else821 
    set $P5137, fb_tmp_39["Op"]
    set $P5139, $P5137
    goto if318_end822
  if318_else821:
    null $P5138
    set $P5139, $P5138
  if318_end822:
    unless_null $P5139, vivi_320825
    nqp_get_sc_object $P5140, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5139, $P5140
  vivi_320825:
.annotate 'line', 882
    nqp_get_sc_object $P5142, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_14, $P5142
    get_who $P5143, pkg_lookup_tmp_14
    exists $I5026, $P5143["QAST"]
    unless $I5026 goto if322_else828 
    get_who $P5145, pkg_lookup_tmp_14
    set $P5144, $P5145["QAST"]
    set $P5147, $P5144
    goto if322_end829
  if322_else828:
    nqp_get_sc_object $P5146, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5147, $P5146
  if322_end829:
    get_who $P5141, $P5147
    set fb_tmp_40, $P5141
    repr_defined $I5025, fb_tmp_40
    unless $I5025 goto if321_else826 
    set $P5148, fb_tmp_40["Var"]
    set $P5150, $P5148
    goto if321_end827
  if321_else826:
    null $P5149
    set $P5150, $P5149
  if321_end827:
    unless_null $P5150, vivi_323830
    nqp_get_sc_object $P5151, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5150, $P5151
  vivi_323830:
    $P5152 = $P5150."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5153 = $P5139."new"($P5152, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5154 = $P5092."new"($P5129, $P5153, "if" :named("op"))
    $P5155 = $P5057."new"($P5082, $P5154, "unless" :named("op"))
    $P5156 = $P5010."new"($P5047, $P5155)
    .return ($P5156) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_67_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 886
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_189_1361096832.26832' 
    capture_lex $P5024 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    .local pmc pkg_viv_tmp_13 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback835
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_13, $P5003
    set fb_tmp_43, pkg_viv_tmp_13
    repr_defined $I5003, fb_tmp_43
    unless $I5003 goto if326_else836 
    set $P5005, fb_tmp_43["%COMPILING"]
    set $P5007, $P5005
    goto if326_end837
  if326_else836:
    null $P5006
    set $P5007, $P5006
  if326_end837:
    unless_null $P5007, vivi_327838
    new $P5008, 'Hash'
    set pkg_viv_tmp_13["%COMPILING"], $P5008
    set $P5007, $P5008
  vivi_327838:
    unless_null $P5007, vivi_328839
    die "Contextual %*COMPILING not found"
    box $P5009, "Contextual %*COMPILING not found"
    set $P5007, $P5009
  vivi_328839:
    set $P5002, $P5007
  fallback835:
    set fb_tmp_42, $P5002
    repr_defined $I5002, fb_tmp_42
    unless $I5002 goto if325_else833 
    set $P5010, fb_tmp_42["%?OPTIONS"]
    set $P5012, $P5010
    goto if325_end834
  if325_else833:
    null $P5011
    set $P5012, $P5011
  if325_end834:
    unless_null $P5012, vivi_329840
    nqp_get_sc_object $P5013, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5012, $P5013
  vivi_329840:
    set fb_tmp_41, $P5012
    repr_defined $I5001, fb_tmp_41
    unless $I5001 goto if324_else831 
    set $P5014, fb_tmp_41["outer_ctx"]
    set $P5016, $P5014
    goto if324_end832
  if324_else831:
    null $P5015
    set $P5016, $P5015
  if324_end832:
    unless_null $P5016, vivi_330841
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5016, $P5017
  vivi_330841:
    set $P101, $P5016
    defined $I5004, $P101
    box $P5023, $I5004
    set $P5022, $P5023
    unless $I5004 goto if331_end843 
.annotate 'line', 888
  until332_test844:
    isnull $I5005, $P101
    box $P5021, $I5005
    set $P5020, $P5021
    if $I5005 goto until332_done848 
  until332_redo846:
    .const 'Sub' $P5018 = 'cuid_189_1361096832.26832' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
    goto until332_test844 
  until332_done848:
    set $P5022, $P5020
  if331_end843:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1361096832.26832") :anon :lex :outer("cuid_67_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 889
    .const 'Sub' $P5011 = 'cuid_188_1361096832.26832' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless333_end850 
.annotate 'line', 891
    set $P5004, $P101
    iter $P5006, $P101
  for_next861:
    unless $P5006, for_done863
    shift $P5008, $P5006
  for_redo862:
    .const 'Sub' $P5007 = 'cuid_188_1361096832.26832' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next861
  for_done863:
  unless333_end850:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1361096832.26832") :anon :lex :outer("cuid_189_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 892
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_187_1361096832.26832' 
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
    if $P5002 goto unless334_end852 
    .const 'Sub' $P5003 = 'cuid_187_1361096832.26832' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless334_end852:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1361096832.26832") :anon :lex :outer("cuid_188_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 894
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if335_else853 
.annotate 'line', 896
.annotate 'line', 897
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if335_end854
  if335_else853:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if336_else855 
.annotate 'line', 899
.annotate 'line', 900
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if336_end856
  if336_else855:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if337_else857 
.annotate 'line', 902
.annotate 'line', 903
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if337_end858
  if337_else857:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if338_end860 
.annotate 'line', 905
.annotate 'line', 906
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if338_end860:
    set $P5022, $P5020
  if337_end858:
    set $P5023, $P5022
  if336_end856:
    set $P5024, $P5023
  if335_end854:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_68_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 916
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_190_1361096832.26832' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_191_1361096832.26832' 
    capture_lex $P5028 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_54 
    if haz_param_5, default923
    nqp_get_sc_object $P5027, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_2, $P5027
  default923:
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_864
    .lex "RETURN", $P102
    if _lex_param_2 goto unless339_end867 
.annotate 'line', 917
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  unless339_end867:
.annotate 'line', 918
    $P5005 = _lex_param_1."ast"()
    set $P5004, $P5005
    defined $I5001, $P5004
    if $I5001, defor868
    unless_null _lex_param_1, fallback871
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5006
  fallback871:
    set fb_tmp_44, _lex_param_1
    repr_defined $I5002, fb_tmp_44
    unless $I5002 goto if340_else869 
    set $P5007, fb_tmp_44["OPER"]
    set $P5009, $P5007
    goto if340_end870
  if340_else869:
    null $P5008
    set $P5009, $P5008
  if340_end870:
    unless_null $P5009, vivi_341872
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_341872:
    $P5011 = $P5009."ast"()
    set $P5004, $P5011
  defor868:
    set $P101, $P5004
    if $P101 goto unless342_end874 
    .const 'Sub' $P5012 = 'cuid_190_1361096832.26832' 
    capture_lex $P5012
    $P5013 = $P5012()
  unless342_end874:
    set $S5001, _lex_param_2
    iseq $I5003, $S5001, "POSTFIX"
    unless $I5003 goto if365_else913 
.annotate 'line', 931
.annotate 'line', 932
    set fb_tmp_54, _lex_param_1
    repr_defined $I5004, fb_tmp_54
    unless $I5004 goto if366_else915 
    set $P5014, fb_tmp_54[0]
    set $P5016, $P5014
    goto if366_end916
  if366_else915:
    null $P5015
    set $P5016, $P5015
  if366_end916:
    unless_null $P5016, vivi_367917
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5016, $P5017
  vivi_367917:
    $P5018 = $P5016."ast"()
    $P5019 = $P101."unshift"($P5018)
    goto if365_end914
  if365_else913:
.annotate 'line', 934
.annotate 'line', 935
    $P5023 = _lex_param_1."list"()
    set $P5020, $P5023
    iter $P5022, $P5023
  for_next920:
    unless $P5022, for_done922
    shift $P5025, $P5022
  for_redo921:
    .const 'Sub' $P5024 = 'cuid_191_1361096832.26832' 
    capture_lex $P5024
    $P5020 = $P5024($P5025)
    goto for_next920
  for_done922:
  if365_end914:
.annotate 'line', 937
    $P5026 = _lex_param_1."!make"($P101)
    goto lexotic_865
  lexotic_864:
    .get_results ($P5026)
  lexotic_865:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1361096832.26832") :anon :lex :outer("cuid_68_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 919
    .lex "$name", $P101 
    .local pmc fb_tmp_45 
    .local pmc pkg_lookup_tmp_15 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
.annotate 'line', 920
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_15, $P5003
    get_who $P5004, pkg_lookup_tmp_15
    exists $I5002, $P5004["QAST"]
    unless $I5002 goto if344_else877 
    get_who $P5006, pkg_lookup_tmp_15
    set $P5005, $P5006["QAST"]
    set $P5008, $P5005
    goto if344_end878
  if344_else877:
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5007
  if344_end878:
    get_who $P5002, $P5008
    set fb_tmp_45, $P5002
    repr_defined $I5001, fb_tmp_45
    unless $I5001 goto if343_else875 
    set $P5009, fb_tmp_45["Op"]
    set $P5011, $P5009
    goto if343_end876
  if343_else875:
    null $P5010
    set $P5011, $P5010
  if343_end876:
    unless_null $P5011, vivi_345879
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_345879:
    find_lex $P5013, "$/"
    $P5014 = $P5011."new"($P5013 :named("node"))
    store_lex "$past", $P5014
    find_lex $P5015, "$/"
    unless_null $P5015, fallback888
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  fallback888:
    set fb_tmp_48, $P5015
    repr_defined $I5005, fb_tmp_48
    unless $I5005 goto if349_else886 
    set $P5017, fb_tmp_48["OPER"]
    set $P5019, $P5017
    goto if349_end887
  if349_else886:
    null $P5018
    set $P5019, $P5018
  if349_end887:
    unless_null $P5019, vivi_350889
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_350889:
    set fb_tmp_47, $P5019
    repr_defined $I5004, fb_tmp_47
    unless $I5004 goto if348_else884 
    set $P5021, fb_tmp_47["O"]
    set $P5023, $P5021
    goto if348_end885
  if348_else884:
    null $P5022
    set $P5023, $P5022
  if348_end885:
    unless_null $P5023, vivi_351890
    nqp_get_sc_object $P5024, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5023, $P5024
  vivi_351890:
    set fb_tmp_46, $P5023
    repr_defined $I5003, fb_tmp_46
    unless $I5003 goto if347_else882 
    set $P5025, fb_tmp_46["op"]
    set $P5027, $P5025
    goto if347_end883
  if347_else882:
    null $P5026
    set $P5027, $P5026
  if347_end883:
    unless_null $P5027, vivi_352891
    nqp_get_sc_object $P5028, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5027, $P5028
  vivi_352891:
    unless $P5027 goto if346_end881 
.annotate 'line', 921
.annotate 'line', 922
    find_lex $P5029, "$past"
    find_lex $P5030, "$/"
    unless_null $P5030, fallback898
    nqp_get_sc_object $P5031, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5030, $P5031
  fallback898:
    set fb_tmp_51, $P5030
    repr_defined $I5008, fb_tmp_51
    unless $I5008 goto if355_else896 
    set $P5032, fb_tmp_51["OPER"]
    set $P5034, $P5032
    goto if355_end897
  if355_else896:
    null $P5033
    set $P5034, $P5033
  if355_end897:
    unless_null $P5034, vivi_356899
    nqp_get_sc_object $P5035, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5034, $P5035
  vivi_356899:
    set fb_tmp_50, $P5034
    repr_defined $I5007, fb_tmp_50
    unless $I5007 goto if354_else894 
    set $P5036, fb_tmp_50["O"]
    set $P5038, $P5036
    goto if354_end895
  if354_else894:
    null $P5037
    set $P5038, $P5037
  if354_end895:
    unless_null $P5038, vivi_357900
    nqp_get_sc_object $P5039, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5038, $P5039
  vivi_357900:
    set fb_tmp_49, $P5038
    repr_defined $I5006, fb_tmp_49
    unless $I5006 goto if353_else892 
    set $P5040, fb_tmp_49["op"]
    set $P5042, $P5040
    goto if353_end893
  if353_else892:
    null $P5041
    set $P5042, $P5041
  if353_end893:
    unless_null $P5042, vivi_358901
    nqp_get_sc_object $P5043, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5042, $P5043
  vivi_358901:
    set $S5001, $P5042
    $P5044 = $P5029."op"($S5001)
  if346_end881:
    find_lex $P5045, "$key"
    set $S5002, $P5045
    iseq $I5009, $S5002, "LIST"
    unless $I5009 goto if359_end903 
.annotate 'line', 924
    box $P5046, "infix"
    store_lex "$key", $P5046
  if359_end903:
    find_lex $P5047, "$key"
    set $S5007, $P5047
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5048, "$/"
    unless_null $P5048, fallback908
    nqp_get_sc_object $P5049, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5048, $P5049
  fallback908:
    set fb_tmp_53, $P5048
    repr_defined $I5011, fb_tmp_53
    unless $I5011 goto if361_else906 
    set $P5050, fb_tmp_53["OPER"]
    set $P5052, $P5050
    goto if361_end907
  if361_else906:
    null $P5051
    set $P5052, $P5051
  if361_end907:
    unless_null $P5052, vivi_362909
    nqp_get_sc_object $P5053, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5052, $P5053
  vivi_362909:
    set fb_tmp_52, $P5052
    repr_defined $I5010, fb_tmp_52
    unless $I5010 goto if360_else904 
    set $P5054, fb_tmp_52["sym"]
    set $P5056, $P5054
    goto if360_end905
  if360_else904:
    null $P5055
    set $P5056, $P5055
  if360_end905:
    unless_null $P5056, vivi_363910
    nqp_get_sc_object $P5057, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5056, $P5057
  vivi_363910:
    set $S5008, $P5056
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5058, $S5003
    set $P101, $P5058
.annotate 'line', 926
    find_lex $P5059, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5059."name"($S5009)
.annotate 'line', 927
    find_lex $P5060, "$past"
    $P5061 = $P5060."op"()
    set $P5064, $P5061
    if $P5061 goto unless364_end912 
.annotate 'line', 928
    find_lex $P5062, "$past"
    $P5063 = $P5062."op"("call")
    set $P5064, $P5063
  unless364_end912:
    .return ($P5064) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1361096832.26832") :anon :lex :outer("cuid_68_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 935
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if368_end919 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if368_end919:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_69_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_55 
    unless_null _lex_param_1, fallback926
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback926:
    set fb_tmp_55, _lex_param_1
    repr_defined $I5001, fb_tmp_55
    unless $I5001 goto if369_else924 
    set $P5002, fb_tmp_55["circumfix"]
    set $P5004, $P5002
    goto if369_end925
  if369_else924:
    null $P5003
    set $P5004, $P5003
  if369_end925:
    unless_null $P5004, vivi_370927
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_370927:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_70_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 942
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_56 
    unless_null _lex_param_1, fallback930
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback930:
    set fb_tmp_56, _lex_param_1
    repr_defined $I5001, fb_tmp_56
    unless $I5001 goto if371_else928 
    set $P5002, fb_tmp_56["term"]
    set $P5004, $P5002
    goto if371_end929
  if371_else928:
    null $P5003
    set $P5004, $P5003
  if371_end929:
    unless_null $P5004, vivi_372931
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_372931:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_71_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "nullterm_alt" :subid("cuid_72_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 944
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_57 
    unless_null _lex_param_1, fallback934
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback934:
    set fb_tmp_57, _lex_param_1
    repr_defined $I5001, fb_tmp_57
    unless $I5001 goto if373_else932 
    set $P5002, fb_tmp_57["term"]
    set $P5004, $P5002
    goto if373_end933
  if373_else932:
    null $P5003
    set $P5004, $P5003
  if373_end933:
    unless_null $P5004, vivi_374935
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_374935:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_73_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 946
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_58 
    unless_null _lex_param_1, fallback938
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback938:
    set fb_tmp_58, _lex_param_1
    repr_defined $I5001, fb_tmp_58
    unless $I5001 goto if375_else936 
    set $P5002, fb_tmp_58["VALUE"]
    set $P5004, $P5002
    goto if375_end937
  if375_else936:
    null $P5003
    set $P5004, $P5003
  if375_end937:
    unless_null $P5004, vivi_376939
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_376939:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_74_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "decint" :subid("cuid_75_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "hexint" :subid("cuid_76_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "octint" :subid("cuid_77_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "binint" :subid("cuid_78_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_EXPR" :subid("cuid_79_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 955
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5037 = 'cuid_193_1361096832.26832' 
    capture_lex $P5037 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_59 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
    .local pmc pkg_viv_tmp_14 
    .local pmc fb_tmp_62 
    .local pmc pkg_lookup_tmp_16 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
.annotate 'line', 956
    unless_null _lex_param_1, fallback942
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5002
  fallback942:
    set fb_tmp_59, _lex_param_1
    repr_defined $I5001, fb_tmp_59
    unless $I5001 goto if377_else940 
    set $P5003, fb_tmp_59["quote_delimited"]
    set $P5005, $P5003
    goto if377_end941
  if377_else940:
    null $P5004
    set $P5005, $P5004
  if377_end941:
    unless_null $P5005, vivi_378943
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5005, $P5006
  vivi_378943:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback948
    nqp_get_sc_object $P5010, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5009, $P5010
    set pkg_viv_tmp_14, $P5009
    set fb_tmp_61, pkg_viv_tmp_14
    repr_defined $I5003, fb_tmp_61
    unless $I5003 goto if381_else949 
    set $P5011, fb_tmp_61["%QUOTEMOD"]
    set $P5013, $P5011
    goto if381_end950
  if381_else949:
    null $P5012
    set $P5013, $P5012
  if381_end950:
    unless_null $P5013, vivi_382951
    new $P5014, 'Hash'
    set pkg_viv_tmp_14["%QUOTEMOD"], $P5014
    set $P5013, $P5014
  vivi_382951:
    unless_null $P5013, vivi_383952
    die "Contextual %*QUOTEMOD not found"
    box $P5015, "Contextual %*QUOTEMOD not found"
    set $P5013, $P5015
  vivi_383952:
    set $P5008, $P5013
  fallback948:
    set fb_tmp_60, $P5008
    repr_defined $I5002, fb_tmp_60
    unless $I5002 goto if380_else946 
    set $P5016, fb_tmp_60["w"]
    set $P5018, $P5016
    goto if380_end947
  if380_else946:
    null $P5017
    set $P5018, $P5017
  if380_end947:
    unless_null $P5018, vivi_384953
    nqp_get_sc_object $P5019, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5018, $P5019
  vivi_384953:
    unless $P5018 goto if379_end945 
.annotate 'line', 957
    nqp_get_sc_object $P5021, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_16, $P5021
    get_who $P5022, pkg_lookup_tmp_16
    exists $I5006, $P5022["QAST"]
    unless $I5006 goto if387_else958 
    get_who $P5024, pkg_lookup_tmp_16
    set $P5023, $P5024["QAST"]
    set $P5026, $P5023
    goto if387_end959
  if387_else958:
    nqp_get_sc_object $P5025, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5026, $P5025
  if387_end959:
    get_who $P5020, $P5026
    set fb_tmp_62, $P5020
    repr_defined $I5005, fb_tmp_62
    unless $I5005 goto if386_else956 
    set $P5027, fb_tmp_62["SVal"]
    set $P5029, $P5027
    goto if386_end957
  if386_else956:
    null $P5028
    set $P5029, $P5028
  if386_end957:
    unless_null $P5029, vivi_388960
    nqp_get_sc_object $P5030, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5029, $P5030
  vivi_388960:
    type_check $I5004, $P101, $P5029
    unless $I5004 goto if385_else954 
    .const 'Sub' $P5031 = 'cuid_193_1361096832.26832' 
    capture_lex $P5031
    $P5032 = $P5031()
    set $P5035, $P5032
    goto if385_end955
  if385_else954:
.annotate 'line', 968
.annotate 'line', 969
    $P5033 = _lex_param_1."CURSOR"()
    $P5034 = $P5033."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5035, $P5034
  if385_end955:
  if379_end945:
.annotate 'line', 972
    $P5036 = _lex_param_1."!make"($P101)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1361096832.26832") :anon :lex :outer("cuid_79_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 958
    .const 'Sub' $P5057 = 'cuid_192_1361096832.26832' 
    capture_lex $P5057 
    .lex "@words", $P101 
    .local pmc fb_tmp_63 
    .local pmc pkg_lookup_tmp_18 
    .local pmc pkg_lookup_tmp_17 
    .local pmc fb_tmp_64 
    .local pmc pkg_lookup_tmp_19 
    .local pmc fb_tmp_66 
    .local pmc pkg_lookup_tmp_21 
    .local pmc fb_tmp_67 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 959
    find_lex $P5018, "$/"
    find_lex $P5019, "$past"
    $P5020 = $P5019."value"()
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_17, $P5003
    get_who $P5004, pkg_lookup_tmp_17
    exists $I5002, $P5004["HLL"]
    unless $I5002 goto if390_else963 
    get_who $P5006, pkg_lookup_tmp_17
    set $P5005, $P5006["HLL"]
    set $P5008, $P5005
    goto if390_end964
  if390_else963:
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5007
  if390_end964:
    set pkg_lookup_tmp_18, $P5008
    get_who $P5009, pkg_lookup_tmp_18
    exists $I5003, $P5009["Grammar"]
    unless $I5003 goto if391_else965 
    get_who $P5011, pkg_lookup_tmp_18
    set $P5010, $P5011["Grammar"]
    set $P5013, $P5010
    goto if391_end966
  if391_else965:
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5013, $P5012
  if391_end966:
    get_who $P5002, $P5013
    set fb_tmp_63, $P5002
    repr_defined $I5001, fb_tmp_63
    unless $I5001 goto if389_else961 
    set $P5014, fb_tmp_63["split_words"]
    set $P5016, $P5014
    goto if389_end962
  if389_else961:
    null $P5015
    set $P5016, $P5015
  if389_end962:
    unless_null $P5016, vivi_392967
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5016, $P5017
  vivi_392967:
    $P5021 = $P5016($P5018, $P5020)
    set $P101, $P5021
    set $N5001, $P101
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    unless $I5004 goto if393_else968 
.annotate 'line', 960
.annotate 'line', 961
    nqp_get_sc_object $P5023, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_19, $P5023
    get_who $P5024, pkg_lookup_tmp_19
    exists $I5006, $P5024["QAST"]
    unless $I5006 goto if395_else972 
    get_who $P5026, pkg_lookup_tmp_19
    set $P5025, $P5026["QAST"]
    set $P5028, $P5025
    goto if395_end973
  if395_else972:
    nqp_get_sc_object $P5027, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5028, $P5027
  if395_end973:
    get_who $P5022, $P5028
    set fb_tmp_64, $P5022
    repr_defined $I5005, fb_tmp_64
    unless $I5005 goto if394_else970 
    set $P5029, fb_tmp_64["Op"]
    set $P5031, $P5029
    goto if394_end971
  if394_else970:
    null $P5030
    set $P5031, $P5030
  if394_end971:
    unless_null $P5031, vivi_396974
    nqp_get_sc_object $P5032, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5031, $P5032
  vivi_396974:
    find_lex $P5033, "$/"
    $P5034 = $P5031."new"("list" :named("op"), $P5033 :named("node"))
    store_lex "$past", $P5034
    set $P5035, $P101
    iter $P5037, $P101
  for_next980:
    unless $P5037, for_done982
    shift $P5039, $P5037
  for_redo981:
    .const 'Sub' $P5038 = 'cuid_192_1361096832.26832' 
    capture_lex $P5038
    $P5035 = $P5038($P5039)
    goto for_next980
  for_done982:
    set $P5056, $P5035
    goto if393_end969
  if393_else968:
.annotate 'line', 964
.annotate 'line', 965
    nqp_get_sc_object $P5041, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_21, $P5041
    get_who $P5042, pkg_lookup_tmp_21
    exists $I5008, $P5042["QAST"]
    unless $I5008 goto if401_else985 
    get_who $P5044, pkg_lookup_tmp_21
    set $P5043, $P5044["QAST"]
    set $P5046, $P5043
    goto if401_end986
  if401_else985:
    nqp_get_sc_object $P5045, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5046, $P5045
  if401_end986:
    get_who $P5040, $P5046
    set fb_tmp_66, $P5040
    repr_defined $I5007, fb_tmp_66
    unless $I5007 goto if400_else983 
    set $P5047, fb_tmp_66["SVal"]
    set $P5049, $P5047
    goto if400_end984
  if400_else983:
    null $P5048
    set $P5049, $P5048
  if400_end984:
    unless_null $P5049, vivi_402987
    nqp_get_sc_object $P5050, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5049, $P5050
  vivi_402987:
    set fb_tmp_67, $P101
    repr_defined $I5009, fb_tmp_67
    unless $I5009 goto if403_else988 
    set $P5051, fb_tmp_67[0]
    set $P5053, $P5051
    goto if403_end989
  if403_else988:
    null $P5052
    set $P5053, $P5052
  if403_end989:
    unless_null $P5053, vivi_404990
    nqp_get_sc_object $P5054, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5053, $P5054
  vivi_404990:
    set $S5001, $P5053
    $P5055 = $P5049."new"($S5001 :named("value"))
    store_lex "$past", $P5055
    set $P5056, $P5055
  if393_end969:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1361096832.26832") :anon :lex :outer("cuid_193_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 962
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_65 
    .local pmc pkg_lookup_tmp_20 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_20, $P5003
    get_who $P5004, pkg_lookup_tmp_20
    exists $I5002, $P5004["QAST"]
    unless $I5002 goto if398_else977 
    get_who $P5006, pkg_lookup_tmp_20
    set $P5005, $P5006["QAST"]
    set $P5008, $P5005
    goto if398_end978
  if398_else977:
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5007
  if398_end978:
    get_who $P5002, $P5008
    set fb_tmp_65, $P5002
    repr_defined $I5001, fb_tmp_65
    unless $I5001 goto if397_else975 
    set $P5009, fb_tmp_65["SVal"]
    set $P5011, $P5009
    goto if397_end976
  if397_else975:
    null $P5010
    set $P5011, $P5010
  if397_end976:
    unless_null $P5011, vivi_399979
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_399979:
    $P5013 = $P5011."new"(_lex_param_0 :named("value"))
    $P5014 = $P5001."push"($P5013)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_80_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 975
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5057 = 'cuid_194_1361096832.26832' 
    capture_lex $P5057 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_68 
    .local pmc fb_tmp_74 
    .local pmc pkg_lookup_tmp_27 
    .local pmc fb_tmp_75 
    .local pmc pkg_lookup_tmp_28 
    .local pmc fb_tmp_76 
    .local pmc pkg_lookup_tmp_29 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback993
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5008
  fallback993:
    set fb_tmp_68, _lex_param_1
    repr_defined $I5001, fb_tmp_68
    unless $I5001 goto if405_else991 
    set $P5009, fb_tmp_68["quote_atom"]
    set $P5011, $P5009
    goto if405_end992
  if405_else991:
    null $P5010
    set $P5011, $P5010
  if405_end992:
    unless_null $P5011, vivi_406994
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_406994:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next1028:
    unless $P5007, for_done1030
    shift $P5014, $P5007
  for_redo1029:
    .const 'Sub' $P5013 = 'cuid_194_1361096832.26832' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next1028
  for_done1030:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if426_end1032 
.annotate 'line', 996
    nqp_get_sc_object $P5016, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_27, $P5016
    get_who $P5017, pkg_lookup_tmp_27
    exists $I5004, $P5017["QAST"]
    unless $I5004 goto if428_else1035 
    get_who $P5019, pkg_lookup_tmp_27
    set $P5018, $P5019["QAST"]
    set $P5021, $P5018
    goto if428_end1036
  if428_else1035:
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5021, $P5020
  if428_end1036:
    get_who $P5015, $P5021
    set fb_tmp_74, $P5015
    repr_defined $I5003, fb_tmp_74
    unless $I5003 goto if427_else1033 
    set $P5022, fb_tmp_74["SVal"]
    set $P5024, $P5022
    goto if427_end1034
  if427_else1033:
    null $P5023
    set $P5024, $P5023
  if427_end1034:
    unless_null $P5024, vivi_4291037
    nqp_get_sc_object $P5025, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5024, $P5025
  vivi_4291037:
    $P5026 = $P5024."new"($P102 :named("value"))
    $P5027 = $P101."push"($P5026)
  if426_end1032:
    unless $P101 goto if430_else1038 
.annotate 'line', 997
    $P5028 = $P101."shift"()
    set $P5041, $P5028
    goto if430_end1039
  if430_else1038:
    nqp_get_sc_object $P5030, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_28, $P5030
    get_who $P5031, pkg_lookup_tmp_28
    exists $I5006, $P5031["QAST"]
    unless $I5006 goto if432_else1042 
    get_who $P5033, pkg_lookup_tmp_28
    set $P5032, $P5033["QAST"]
    set $P5035, $P5032
    goto if432_end1043
  if432_else1042:
    nqp_get_sc_object $P5034, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5035, $P5034
  if432_end1043:
    get_who $P5029, $P5035
    set fb_tmp_75, $P5029
    repr_defined $I5005, fb_tmp_75
    unless $I5005 goto if431_else1040 
    set $P5036, fb_tmp_75["SVal"]
    set $P5038, $P5036
    goto if431_end1041
  if431_else1040:
    null $P5037
    set $P5038, $P5037
  if431_end1041:
    unless_null $P5038, vivi_4331044
    nqp_get_sc_object $P5039, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5038, $P5039
  vivi_4331044:
    $P5040 = $P5038."new"("" :named("value"))
    set $P5041, $P5040
  if430_end1039:
    set $P103, $P5041
  while434_test1045:
    set $P5055, $P101
    unless $P101 goto while434_done1049 
  while434_redo1047:
.annotate 'line', 998
.annotate 'line', 999
    nqp_get_sc_object $P5043, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_29, $P5043
    get_who $P5044, pkg_lookup_tmp_29
    exists $I5008, $P5044["QAST"]
    unless $I5008 goto if436_else1052 
    get_who $P5046, pkg_lookup_tmp_29
    set $P5045, $P5046["QAST"]
    set $P5048, $P5045
    goto if436_end1053
  if436_else1052:
    nqp_get_sc_object $P5047, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5048, $P5047
  if436_end1053:
    get_who $P5042, $P5048
    set fb_tmp_76, $P5042
    repr_defined $I5007, fb_tmp_76
    unless $I5007 goto if435_else1050 
    set $P5049, fb_tmp_76["Op"]
    set $P5051, $P5049
    goto if435_end1051
  if435_else1050:
    null $P5050
    set $P5051, $P5050
  if435_end1051:
    unless_null $P5051, vivi_4371054
    nqp_get_sc_object $P5052, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5051, $P5052
  vivi_4371054:
    $P5053 = $P101."shift"()
    $P5054 = $P5051."new"($P103, $P5053, "concat" :named("op"))
    set $P103, $P5054
    set $P5055, $P103
    goto while434_test1045 
  while434_done1049:
.annotate 'line', 1001
    $P5056 = _lex_param_1."!make"($P103)
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1361096832.26832") :anon :lex :outer("cuid_80_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 978
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_69 
    .local pmc pkg_lookup_tmp_22 
    .local pmc fb_tmp_70 
    .local pmc pkg_lookup_tmp_23 
    .local pmc fb_tmp_71 
    .local pmc pkg_lookup_tmp_24 
    .local pmc fb_tmp_72 
    .local pmc pkg_lookup_tmp_25 
    .local pmc fb_tmp_73 
    .local pmc pkg_lookup_tmp_26 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
.annotate 'line', 979
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_22, $P5004
    get_who $P5005, pkg_lookup_tmp_22
    exists $I5004, $P5005["QAST"]
    unless $I5004 goto if409_else999 
    get_who $P5007, pkg_lookup_tmp_22
    set $P5006, $P5007["QAST"]
    set $P5009, $P5006
    goto if409_end1000
  if409_else999:
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5008
  if409_end1000:
    get_who $P5003, $P5009
    set fb_tmp_69, $P5003
    repr_defined $I5003, fb_tmp_69
    unless $I5003 goto if408_else997 
    set $P5010, fb_tmp_69["Node"]
    set $P5012, $P5010
    goto if408_end998
  if408_else997:
    null $P5011
    set $P5012, $P5011
  if408_end998:
    unless_null $P5012, vivi_4101001
    nqp_get_sc_object $P5013, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5012, $P5013
  vivi_4101001:
    type_check $I5002, $P101, $P5012
    not $I5001, $I5002
    unless $I5001 goto if407_else995 
.annotate 'line', 980
    find_lex $P5014, "$lastlit"
    set $S5002, $P5014
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5015, $S5001
    store_lex "$lastlit", $P5015
    set $P5073, $P5015
    goto if407_end996
  if407_else995:
    nqp_get_sc_object $P5017, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_23, $P5017
    get_who $P5018, pkg_lookup_tmp_23
    exists $I5007, $P5018["QAST"]
    unless $I5007 goto if413_else1006 
    get_who $P5020, pkg_lookup_tmp_23
    set $P5019, $P5020["QAST"]
    set $P5022, $P5019
    goto if413_end1007
  if413_else1006:
    nqp_get_sc_object $P5021, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5022, $P5021
  if413_end1007:
    get_who $P5016, $P5022
    set fb_tmp_70, $P5016
    repr_defined $I5006, fb_tmp_70
    unless $I5006 goto if412_else1004 
    set $P5023, fb_tmp_70["SVal"]
    set $P5025, $P5023
    goto if412_end1005
  if412_else1004:
    null $P5024
    set $P5025, $P5024
  if412_end1005:
    unless_null $P5025, vivi_4141008
    nqp_get_sc_object $P5026, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5025, $P5026
  vivi_4141008:
    type_check $I5005, $P101, $P5025
    unless $I5005 goto if411_else1002 
.annotate 'line', 983
    find_lex $P5027, "$lastlit"
    set $S5005, $P5027
.annotate 'line', 984
    $P5028 = $P101."value"()
    set $S5006, $P5028
    concat $S5004, $S5005, $S5006
    box $P5029, $S5004
    store_lex "$lastlit", $P5029
    set $P5072, $P5029
    goto if411_end1003
  if411_else1002:
.annotate 'line', 986
    find_lex $P5030, "$lastlit"
    set $S5007, $P5030
    isgt $I5008, $S5007, ""
    unless $I5008 goto if415_end1010 
.annotate 'line', 987
.annotate 'line', 988
    find_lex $P5031, "@parts"
    nqp_get_sc_object $P5033, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_24, $P5033
    get_who $P5034, pkg_lookup_tmp_24
    exists $I5010, $P5034["QAST"]
    unless $I5010 goto if417_else1013 
    get_who $P5036, pkg_lookup_tmp_24
    set $P5035, $P5036["QAST"]
    set $P5038, $P5035
    goto if417_end1014
  if417_else1013:
    nqp_get_sc_object $P5037, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5038, $P5037
  if417_end1014:
    get_who $P5032, $P5038
    set fb_tmp_71, $P5032
    repr_defined $I5009, fb_tmp_71
    unless $I5009 goto if416_else1011 
    set $P5039, fb_tmp_71["SVal"]
    set $P5041, $P5039
    goto if416_end1012
  if416_else1011:
    null $P5040
    set $P5041, $P5040
  if416_end1012:
    unless_null $P5041, vivi_4181015
    nqp_get_sc_object $P5042, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5041, $P5042
  vivi_4181015:
    find_lex $P5043, "$lastlit"
    $P5044 = $P5041."new"($P5043 :named("value"))
    $P5045 = $P5031."push"($P5044)
  if415_end1010:
.annotate 'line', 990
    find_lex $P5046, "@parts"
    nqp_get_sc_object $P5048, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_25, $P5048
    get_who $P5049, pkg_lookup_tmp_25
    exists $I5013, $P5049["QAST"]
    unless $I5013 goto if421_else1020 
    get_who $P5051, pkg_lookup_tmp_25
    set $P5050, $P5051["QAST"]
    set $P5053, $P5050
    goto if421_end1021
  if421_else1020:
    nqp_get_sc_object $P5052, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5053, $P5052
  if421_end1021:
    get_who $P5047, $P5053
    set fb_tmp_72, $P5047
    repr_defined $I5012, fb_tmp_72
    unless $I5012 goto if420_else1018 
    set $P5054, fb_tmp_72["Node"]
    set $P5056, $P5054
    goto if420_end1019
  if420_else1018:
    null $P5055
    set $P5056, $P5055
  if420_end1019:
    unless_null $P5056, vivi_4221022
    nqp_get_sc_object $P5057, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5056, $P5057
  vivi_4221022:
    type_check $I5011, $P101, $P5056
    unless $I5011 goto if419_else1016 
    set $P5070, $P101
    goto if419_end1017
  if419_else1016:
.annotate 'line', 992
    nqp_get_sc_object $P5059, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_26, $P5059
    get_who $P5060, pkg_lookup_tmp_26
    exists $I5015, $P5060["QAST"]
    unless $I5015 goto if424_else1025 
    get_who $P5062, pkg_lookup_tmp_26
    set $P5061, $P5062["QAST"]
    set $P5064, $P5061
    goto if424_end1026
  if424_else1025:
    nqp_get_sc_object $P5063, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5064, $P5063
  if424_end1026:
    get_who $P5058, $P5064
    set fb_tmp_73, $P5058
    repr_defined $I5014, fb_tmp_73
    unless $I5014 goto if423_else1023 
    set $P5065, fb_tmp_73["SVal"]
    set $P5067, $P5065
    goto if423_end1024
  if423_else1023:
    null $P5066
    set $P5067, $P5066
  if423_end1024:
    unless_null $P5067, vivi_4251027
    nqp_get_sc_object $P5068, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5067, $P5068
  vivi_4251027:
    $P5069 = $P5067."new"($P101 :named("value"))
    set $P5070, $P5069
  if419_end1017:
    $P5046."push"($P5070)
    box $P5071, ""
    store_lex "$lastlit", $P5071
    set $P5072, $P5071
  if411_end1003:
    set $P5073, $P5072
  if407_end996:
    .return ($P5073) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_81_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1004
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_77 
    .local pmc fb_tmp_78 
.annotate 'line', 1005
    unless_null _lex_param_1, fallback1059
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback1059:
    set fb_tmp_77, _lex_param_1
    repr_defined $I5001, fb_tmp_77
    unless $I5001 goto if439_else1057 
    set $P5002, fb_tmp_77["quote_escape"]
    set $P5004, $P5002
    goto if439_end1058
  if439_else1057:
    null $P5003
    set $P5004, $P5003
  if439_end1058:
    unless_null $P5004, vivi_4401060
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_4401060:
    unless $P5004 goto if438_else1055 
    unless_null _lex_param_1, fallback1063
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5006
  fallback1063:
    set fb_tmp_78, _lex_param_1
    repr_defined $I5002, fb_tmp_78
    unless $I5002 goto if441_else1061 
    set $P5007, fb_tmp_78["quote_escape"]
    set $P5009, $P5007
    goto if441_end1062
  if441_else1061:
    null $P5008
    set $P5009, $P5008
  if441_end1062:
    unless_null $P5009, vivi_4421064
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_4421064:
    $P5011 = $P5009."ast"()
    set $P5012, $P5011
    goto if438_end1056
  if438_else1055:
    set $S5001, _lex_param_1
    box $P5013, $S5001
    set $P5012, $P5013
  if438_end1056:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_82_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<stopper>" :subid("cuid_83_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1009
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_79 
    unless_null _lex_param_1, fallback1067
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback1067:
    set fb_tmp_79, _lex_param_1
    repr_defined $I5001, fb_tmp_79
    unless $I5001 goto if443_else1065 
    set $P5002, fb_tmp_79["stopper"]
    set $P5004, $P5002
    goto if443_end1066
  if443_else1065:
    null $P5003
    set $P5004, $P5003
  if443_end1066:
    unless_null $P5004, vivi_4441068
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_4441068:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_84_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<nl>" :subid("cuid_85_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<cr>" :subid("cuid_86_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<tab>" :subid("cuid_87_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<ff>" :subid("cuid_88_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<esc>" :subid("cuid_89_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<hex>" :subid("cuid_90_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    unless_null _lex_param_1, fallback1073
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5002
  fallback1073:
    set fb_tmp_80, _lex_param_1
    repr_defined $I5001, fb_tmp_80
    unless $I5001 goto if446_else1071 
    set $P5003, fb_tmp_80["hexint"]
    set $P5005, $P5003
    goto if446_end1072
  if446_else1071:
    null $P5004
    set $P5005, $P5004
  if446_end1072:
    unless_null $P5005, vivi_4471074
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5005, $P5006
  vivi_4471074:
    unless $P5005 goto if445_else1069 
    unless_null _lex_param_1, fallback1077
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5007
  fallback1077:
    set fb_tmp_81, _lex_param_1
    repr_defined $I5002, fb_tmp_81
    unless $I5002 goto if448_else1075 
    set $P5008, fb_tmp_81["hexint"]
    set $P5010, $P5008
    goto if448_end1076
  if448_else1075:
    null $P5009
    set $P5010, $P5009
  if448_end1076:
    unless_null $P5010, vivi_4491078
    nqp_get_sc_object $P5011, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5010, $P5011
  vivi_4491078:
    set $P5021, $P5010
    goto if445_end1070
  if445_else1069:
    unless_null _lex_param_1, fallback1083
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5012
  fallback1083:
    set fb_tmp_83, _lex_param_1
    repr_defined $I5004, fb_tmp_83
    unless $I5004 goto if451_else1081 
    set $P5013, fb_tmp_83["hexints"]
    set $P5015, $P5013
    goto if451_end1082
  if451_else1081:
    null $P5014
    set $P5015, $P5014
  if451_end1082:
    unless_null $P5015, vivi_4521084
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  vivi_4521084:
    set fb_tmp_82, $P5015
    repr_defined $I5003, fb_tmp_82
    unless $I5003 goto if450_else1079 
    set $P5017, fb_tmp_82["hexint"]
    set $P5019, $P5017
    goto if450_end1080
  if450_else1079:
    null $P5018
    set $P5019, $P5018
  if450_end1080:
    unless_null $P5019, vivi_4531085
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_4531085:
    set $P5021, $P5019
  if445_end1070:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_91_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    unless_null _lex_param_1, fallback1090
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5002
  fallback1090:
    set fb_tmp_84, _lex_param_1
    repr_defined $I5001, fb_tmp_84
    unless $I5001 goto if455_else1088 
    set $P5003, fb_tmp_84["octint"]
    set $P5005, $P5003
    goto if455_end1089
  if455_else1088:
    null $P5004
    set $P5005, $P5004
  if455_end1089:
    unless_null $P5005, vivi_4561091
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5005, $P5006
  vivi_4561091:
    unless $P5005 goto if454_else1086 
    unless_null _lex_param_1, fallback1094
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5007
  fallback1094:
    set fb_tmp_85, _lex_param_1
    repr_defined $I5002, fb_tmp_85
    unless $I5002 goto if457_else1092 
    set $P5008, fb_tmp_85["octint"]
    set $P5010, $P5008
    goto if457_end1093
  if457_else1092:
    null $P5009
    set $P5010, $P5009
  if457_end1093:
    unless_null $P5010, vivi_4581095
    nqp_get_sc_object $P5011, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5010, $P5011
  vivi_4581095:
    set $P5021, $P5010
    goto if454_end1087
  if454_else1086:
    unless_null _lex_param_1, fallback1100
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5012
  fallback1100:
    set fb_tmp_87, _lex_param_1
    repr_defined $I5004, fb_tmp_87
    unless $I5004 goto if460_else1098 
    set $P5013, fb_tmp_87["octints"]
    set $P5015, $P5013
    goto if460_end1099
  if460_else1098:
    null $P5014
    set $P5015, $P5014
  if460_end1099:
    unless_null $P5015, vivi_4611101
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  vivi_4611101:
    set fb_tmp_86, $P5015
    repr_defined $I5003, fb_tmp_86
    unless $I5003 goto if459_else1096 
    set $P5017, fb_tmp_86["octint"]
    set $P5019, $P5017
    goto if459_end1097
  if459_else1096:
    null $P5018
    set $P5019, $P5018
  if459_end1097:
    unless_null $P5019, vivi_4621102
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_4621102:
    set $P5021, $P5019
  if454_end1087:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_92_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1026
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_88 
.annotate 'line', 1027
    unless_null _lex_param_1, fallback1105
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback1105:
    set fb_tmp_88, _lex_param_1
    repr_defined $I5001, fb_tmp_88
    unless $I5001 goto if463_else1103 
    set $P5002, fb_tmp_88["charspec"]
    set $P5004, $P5002
    goto if463_end1104
  if463_else1103:
    null $P5003
    set $P5004, $P5003
  if463_end1104:
    unless_null $P5004, vivi_4641106
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_4641106:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_93_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_escape:sym<misc>" :subid("cuid_94_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1034
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_89 
    .local pmc fb_tmp_90 
    .local pmc fb_tmp_91 
.annotate 'line', 1035
    unless_null _lex_param_1, fallback1111
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback1111:
    set fb_tmp_89, _lex_param_1
    repr_defined $I5001, fb_tmp_89
    unless $I5001 goto if466_else1109 
    set $P5002, fb_tmp_89["textq"]
    set $P5004, $P5002
    goto if466_end1110
  if466_else1109:
    null $P5003
    set $P5004, $P5003
  if466_end1110:
    unless_null $P5004, vivi_4671112
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_4671112:
    unless $P5004 goto if465_else1107 
    unless_null _lex_param_1, fallback1115
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5006
  fallback1115:
    set fb_tmp_90, _lex_param_1
    repr_defined $I5002, fb_tmp_90
    unless $I5002 goto if468_else1113 
    set $P5007, fb_tmp_90["textq"]
    set $P5009, $P5007
    goto if468_end1114
  if468_else1113:
    null $P5008
    set $P5009, $P5008
  if468_end1114:
    unless_null $P5009, vivi_4691116
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_4691116:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if465_end1108
  if465_else1107:
    unless_null _lex_param_1, fallback1119
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5012
  fallback1119:
    set fb_tmp_91, _lex_param_1
    repr_defined $I5003, fb_tmp_91
    unless $I5003 goto if470_else1117 
    set $P5013, fb_tmp_91["textqq"]
    set $P5015, $P5013
    goto if470_end1118
  if470_else1117:
    null $P5014
    set $P5015, $P5014
  if470_end1118:
    unless_null $P5015, vivi_4711120
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  vivi_4711120:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if465_end1108:
    $P5020 = _lex_param_1."!make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_95_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1038
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    unless_null _lex_param_1, fallback1125
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5002
  fallback1125:
    set fb_tmp_92, _lex_param_1
    repr_defined $I5001, fb_tmp_92
    unless $I5001 goto if473_else1123 
    set $P5003, fb_tmp_92["integer"]
    set $P5005, $P5003
    goto if473_end1124
  if473_else1123:
    null $P5004
    set $P5005, $P5004
  if473_end1124:
    unless_null $P5005, vivi_4741126
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5005, $P5006
  vivi_4741126:
    unless $P5005 goto if472_else1121 
.annotate 'line', 1040
    unless_null _lex_param_1, fallback1129
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5007
  fallback1129:
    set fb_tmp_93, _lex_param_1
    repr_defined $I5002, fb_tmp_93
    unless $I5002 goto if475_else1127 
    set $P5008, fb_tmp_93["integer"]
    set $P5010, $P5008
    goto if475_end1128
  if475_else1127:
    null $P5009
    set $P5010, $P5009
  if475_end1128:
    unless_null $P5010, vivi_4761130
    nqp_get_sc_object $P5011, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5010, $P5011
  vivi_4761130:
    $P5012 = $P5010."ast"()
    set $P5013, $P5012
    goto if472_end1122
  if472_else1121:
    set $S5002, _lex_param_1
    find_encoding $I5004, "utf8"
    trans_encoding $S5001, $S5002, $I5004
    find_codepoint $I5003, $S5001
    box $P5014, $I5003
    set $P5013, $P5014
  if472_end1122:
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5005, $N5001, $N5002
    unless $I5005 goto if477_end1132 
.annotate 'line', 1044
    $P5015 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5016 = $P5015."panic"($S5003)
  if477_end1132:
.annotate 'line', 1045
    set $I5006, $P101
    chr $S5005, $I5006
    $P5017 = _lex_param_1."!make"($S5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_96_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1048
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_195_1361096832.26832' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_94 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1135
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5006
  fallback1135:
    set fb_tmp_94, _lex_param_1
    repr_defined $I5001, fb_tmp_94
    unless $I5001 goto if478_else1133 
    set $P5007, fb_tmp_94["charname"]
    set $P5009, $P5007
    goto if478_end1134
  if478_else1133:
    null $P5008
    set $P5009, $P5008
  if478_end1134:
    unless_null $P5009, vivi_4791136
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_4791136:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1137:
    unless $P5005, for_done1139
    shift $P5012, $P5005
  for_redo1138:
    .const 'Sub' $P5011 = 'cuid_195_1361096832.26832' 
    capture_lex $P5011
    $P5003 = $P5011($P5012)
    goto for_next1137
  for_done1139:
.annotate 'line', 1051
    $P5013 = _lex_param_1."!make"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1361096832.26832") :anon :lex :outer("cuid_96_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "charspec" :subid("cuid_97_1361096832.26832") :anon :lex :outer("cuid_184_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_95 
    .local pmc fb_tmp_96 
.annotate 'line', 1055
    unless_null _lex_param_1, fallback1144
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5001
  fallback1144:
    set fb_tmp_95, _lex_param_1
    repr_defined $I5001, fb_tmp_95
    unless $I5001 goto if481_else1142 
    set $P5002, fb_tmp_95["charnames"]
    set $P5004, $P5002
    goto if481_end1143
  if481_else1142:
    null $P5003
    set $P5004, $P5003
  if481_end1143:
    unless_null $P5004, vivi_4821145
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5004, $P5005
  vivi_4821145:
    unless $P5004 goto if480_else1140 
    unless_null _lex_param_1, fallback1148
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5006
  fallback1148:
    set fb_tmp_96, _lex_param_1
    repr_defined $I5002, fb_tmp_96
    unless $I5002 goto if483_else1146 
    set $P5007, fb_tmp_96["charnames"]
    set $P5009, $P5007
    goto if483_end1147
  if483_else1146:
    null $P5008
    set $P5009, $P5008
  if483_end1147:
    unless_null $P5009, vivi_4841149
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_4841149:
    $P5011 = $P5009."ast"()
    set $P5013, $P5011
    goto if480_end1141
  if480_else1140:
    $P5012 = "&string_to_int"(_lex_param_1, 10)
    set $I5003, $P5012
    chr $S5001, $I5003
    box $P5014, $S5001
    set $P5013, $P5014
  if480_end1141:
    $P5015 = _lex_param_1."!make"($P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1361096832.26832") :anon :lex :outer("cuid_182_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1068
    .const 'Sub' $P5058 = 'cuid_98_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_99_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_100_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_101_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_102_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_103_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_104_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_105_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_106_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_107_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_108_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_109_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_110_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_111_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_112_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_113_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_114_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_115_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_116_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_117_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_118_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_119_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_120_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_121_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_122_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_123_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_124_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_125_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_126_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_127_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_128_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_129_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_130_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_131_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_132_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_133_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_134_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_135_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_136_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_137_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_138_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_139_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_140_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_141_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_142_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_143_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_144_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_145_1361096832.26832' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_146_1361096832.26832' 
    capture_lex $P5058 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_97 
    .const 'Sub' $P5009 = 'cuid_98_1361096832.26832' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_99_1361096832.26832' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_100_1361096832.26832' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_101_1361096832.26832' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_102_1361096832.26832' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_103_1361096832.26832' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_104_1361096832.26832' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_105_1361096832.26832' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_106_1361096832.26832' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_107_1361096832.26832' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_108_1361096832.26832' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_109_1361096832.26832' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_110_1361096832.26832' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_111_1361096832.26832' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_112_1361096832.26832' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_113_1361096832.26832' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_114_1361096832.26832' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_115_1361096832.26832' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_116_1361096832.26832' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_117_1361096832.26832' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_118_1361096832.26832' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_119_1361096832.26832' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_120_1361096832.26832' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_121_1361096832.26832' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_122_1361096832.26832' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_123_1361096832.26832' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_124_1361096832.26832' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_125_1361096832.26832' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_126_1361096832.26832' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_127_1361096832.26832' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_128_1361096832.26832' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_129_1361096832.26832' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_130_1361096832.26832' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_131_1361096832.26832' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_132_1361096832.26832' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_133_1361096832.26832' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_134_1361096832.26832' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_135_1361096832.26832' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_136_1361096832.26832' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_137_1361096832.26832' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_138_1361096832.26832' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_139_1361096832.26832' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_140_1361096832.26832' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_141_1361096832.26832' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_142_1361096832.26832' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_143_1361096832.26832' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_144_1361096832.26832' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_145_1361096832.26832' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_146_1361096832.26832' 
    capture_lex $P5057
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_98_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1084
    .param pmc _lex_param_0 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
.sub "BUILD" :subid("cuid_99_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1090
    .param pmc _lex_param_0 
    .const 'Sub' $P5028 = 'cuid_197_1361096832.26832' 
    capture_lex $P5028 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_98 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    split $P5003, " ", "start parse past post pir pbc init"
    repr_bind_attr_obj $P5001, $P5002, "@!stages", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    split $P5006, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5004, $P5005, "@!cmdoptions", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    box $P5009, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    repr_bind_attr_obj $P5007, $P5008, "$!usage", $P5009
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!cmdoptions"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next1154:
    unless $P5012, for_done1156
    shift $P5017, $P5012
  for_redo1155:
    .const 'Sub' $P5016 = 'cuid_197_1361096832.26832' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1154
  for_done1156:
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    getinterp $P5020
    set fb_tmp_98, $P5020
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if488_else1157 
    set $P5021, fb_tmp_98[.IGLOBALS_CONFIG_HASH]
    set $P5023, $P5021
    goto if488_end1158
  if488_else1157:
    null $P5022
    set $P5023, $P5022
  if488_end1158:
    unless_null $P5023, vivi_4891159
    nqp_get_sc_object $P5024, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5023, $P5024
  vivi_4891159:
    set $P5018["%parrot_config"], $P5023
    nqp_decontainerize $P5025, _lex_param_0
    nqp_get_sc_object $P5026, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    new $P5027, 'Hash'
    repr_bind_attr_obj $P5025, $P5026, "%!config", $P5027
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1361096832.26832") :anon :lex :outer("cuid_99_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1097
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    nqp_get_sc_object $P5006, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
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
.sub "language" :subid("cuid_100_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1104
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_6 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_6, default1162
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5007
  default1162:
    unless _lex_param_1 goto if490_end1161 
.annotate 'line', 1105
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_bind_attr_obj $P5001, $P5002, "$!language", _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if490_end1161:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language"
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_101_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "config" :subid("cuid_102_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1116
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_103_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1118
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$base", $P101 
    .lex "$loaded", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    set_label $P5008, catch_handler_4921164
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
    goto skip_handler_4911163
  catch_handler_4921164:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_4911163
  skip_handler_4911163:
    if $P102 goto unless493_end1166 
.annotate 'line', 1122
    set $S5005, $P101
    concat $S5004, $S5005, ".pir"
    load_bytecode $S5004
    box $P5010, 1
    set $P102, $P5010
  unless493_end1166:
.annotate 'line', 1123
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."get_module"(_lex_param_1)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_104_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
    unless_null $P5004, fallback1169
    nqp_get_sc_object $P5006, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5005, $P5006
    set fb_tmp_99, $P5005
    repr_defined $I5002, fb_tmp_99
    unless $I5002 goto if495_else1170 
    set $P5007, fb_tmp_99["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if495_end1171
  if495_else1170:
    null $P5008
    set $P5009, $P5008
  if495_end1171:
    unless_null $P5009, vivi_4961172
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_4961172:
    unless_null $P5009, vivi_4971173
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_4971173:
    set $P5004, $P5009
  fallback1169:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless494_end1168 
.annotate 'line', 1127
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless494_end1168:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_105_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1131
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5028 = 'cuid_200_1361096832.26832' 
    capture_lex $P5028 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_100 
    .local pmc fb_tmp_101 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    unless $I5001 goto if498_else1174 
    set $P5011, fb_tmp_100["encoding"]
    set $P5013, $P5011
    goto if498_end1175
  if498_else1174:
    null $P5012
    set $P5013, $P5012
  if498_end1175:
    unless_null $P5013, vivi_4991176
    nqp_get_sc_object $P5014, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5013, $P5014
  vivi_4991176:
    set $S5001, $P5013
    box $P5015, $S5001
    set $P102, $P5015
    set $P5016, $P102
    unless $P102 goto if501_end1180 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5017, $I5002
    set $P5016, $P5017
  if501_end1180:
    unless $P5016 goto if500_end1178 
.annotate 'line', 1136
.annotate 'line', 1137
    $P5018 = $P101."encoding"($P102)
  if500_end1178:
    set fb_tmp_101, _lex_param_1
    repr_defined $I5003, fb_tmp_101
    unless $I5003 goto if502_else1181 
    set $P5019, fb_tmp_101["target"]
    set $P5021, $P5019
    goto if502_end1182
  if502_else1181:
    null $P5020
    set $P5021, $P5020
  if502_end1182:
    unless_null $P5021, vivi_5031183
    nqp_get_sc_object $P5022, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5021, $P5022
  vivi_5031183:
    set $P103, $P5021
    new $P5026, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5026, while504_handlers1187
    push_eh $P5026
  while504_test1184:
    box $P5027, 1
    set $P5025, $P5027
    unless 1 goto while504_done1188 
  while504_redo1186:
    .const 'Sub' $P5023 = 'cuid_200_1361096832.26832' 
    capture_lex $P5023
    $P5024 = $P5023()
    set $P5025, $P5024
    goto while504_test1184 
  while504_handlers1187:
    .get_results ($P5026)
    pop_upto_eh $P5026
    getattribute $P5026, $P5026, 'type'
    eq $P5026, .CONTROL_LOOP_NEXT, while504_test1184
    eq $P5026, .CONTROL_LOOP_REDO, while504_redo1186
  while504_done1188:
    pop_eh 
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1361096832.26832") :anon :lex :outer("cuid_105_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1142
    .const 'Sub' $P5029 = 'cuid_199_1361096832.26832' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_102 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    if $P5006 goto unless505_end1190 
    die 0, .CONTROL_LOOP_LAST
  unless505_end1190:
.annotate 'line', 1145
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5001, $P5007
    if $I5001, defor1191
    box $P5011, "> "
    set $P5007, $P5011
  defor1191:
    set $P101, $P5007
.annotate 'line', 1146
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5002, $P102
    set $I5005, $I5002
    if $I5002 goto unless507_end1195 
    defined $I5004, $P102
    not $I5003, $I5004
    set $I5005, $I5003
  unless507_end1195:
    unless $I5005 goto if506_end1193 
.annotate 'line', 1147
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if506_end1193:
.annotate 'line', 1153
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if511_end1202 
    .const 'Sub' $P5026 = 'cuid_199_1361096832.26832' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if511_end1202:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1361096832.26832") :anon :lex :outer("cuid_200_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1157
    .const 'Sub' $P5042 = 'cuid_198_1361096832.26832' 
    capture_lex $P5042 
    .lex "$output", $P101 
    .local pmc fb_tmp_103 
    .local pmc fb_tmp_104 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1160
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_5131204
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
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_5121203
  catch_handler_5131204:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_198_1361096832.26832' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_5121203
  skip_handler_5121203:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1207
    nqp_get_sc_object $P5015, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5014, $P5015
    set fb_tmp_103, $P5014
    repr_defined $I5002, fb_tmp_103
    unless $I5002 goto if515_else1208 
    set $P5016, fb_tmp_103["$MAIN_CTX"]
    set $P5018, $P5016
    goto if515_end1209
  if515_else1208:
    null $P5017
    set $P5018, $P5017
  if515_end1209:
    unless_null $P5018, vivi_5161210
    nqp_get_sc_object $P5019, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5018, $P5019
  vivi_5161210:
    unless_null $P5018, vivi_5171211
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_5171211:
    set $P5013, $P5018
  fallback1207:
    defined $I5001, $P5013
    unless $I5001 goto if514_end1206 
.annotate 'line', 1167
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1212
    nqp_get_sc_object $P5023, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5022, $P5023
    set fb_tmp_104, $P5022
    repr_defined $I5003, fb_tmp_104
    unless $I5003 goto if518_else1213 
    set $P5024, fb_tmp_104["$MAIN_CTX"]
    set $P5026, $P5024
    goto if518_end1214
  if518_else1213:
    null $P5025
    set $P5026, $P5025
  if518_end1214:
    unless_null $P5026, vivi_5191215
    nqp_get_sc_object $P5027, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5026, $P5027
  vivi_5191215:
    unless_null $P5026, vivi_5201216
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_5201216:
    set $P5021, $P5026
  fallback1212:
    store_lex "$save_ctx", $P5021
  if514_end1206:
    isnull $I5004, $P101
    unless $I5004 goto if521_end1218 
    die 0, .CONTROL_LOOP_NEXT
  if521_end1218:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if522_else1219 
.annotate 'line', 1172
.annotate 'line', 1173
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5041, $P5032
    goto if522_end1220
  if522_else1219:
    find_lex $P5033, "$target"
    set $S5003, $P5033
    iseq $I5006, $S5003, "pir"
    unless $I5006 goto if523_else1221 
.annotate 'line', 1174
    set $S5004, $P101
    say $S5004
    box $P5040, $S5004
    set $P5039, $P5040
    goto if523_end1222
  if523_else1221:
.annotate 'line', 1176
.annotate 'line', 1177
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$target"
    find_lex $P5037, "%adverbs"
    $P5038 = $P5034."dumper"($P101, $P5036, $P5037 :flat :named)
    set $P5039, $P5038
  if523_end1222:
    set $P5041, $P5039
  if522_end1220:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1361096832.26832") :anon :lex :outer("cuid_199_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "interactive_result" :subid("cuid_106_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "interactive_exception" :subid("cuid_107_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "eval" :subid("cuid_108_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1191
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5016 = 'cuid_202_1361096832.26832' 
    capture_lex $P5016 
    .lex "$output", $P101 
    .lex "$old_runcore", $P102 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_105 
    .local pmc fb_tmp_106 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P102, $P5003
    set fb_tmp_105, _lex_param_3
    repr_defined $I5001, fb_tmp_105
    unless $I5001 goto if525_else1225 
    set $P5004, fb_tmp_105["profile-compile"]
    set $P5006, $P5004
    goto if525_end1226
  if525_else1225:
    null $P5005
    set $P5006, $P5005
  if525_end1226:
    unless_null $P5006, vivi_5261227
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_5261227:
    unless $P5006 goto if524_end1224 
.annotate 'line', 1195
    set_runcore "subprof_hll"
  if524_end1224:
.annotate 'line', 1198
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."compile"(_lex_param_1, _lex_param_3 :flat :named)
    set $P101, $P5009
    isa $I5003, $P101, "String"
    not $I5002, $I5003
    set $I5006, $I5002
    unless $I5002 goto if528_end1231 
    set fb_tmp_106, _lex_param_3
    repr_defined $I5005, fb_tmp_106
    unless $I5005 goto if529_else1232 
    set $P5010, fb_tmp_106["target"]
    set $P5012, $P5010
    goto if529_end1233
  if529_else1232:
    null $P5011
    set $P5012, $P5011
  if529_end1233:
    unless_null $P5012, vivi_5301234
    nqp_get_sc_object $P5013, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5012, $P5013
  vivi_5301234:
    set $S5002, $P5012
    iseq $I5004, $S5002, ""
    set $I5006, $I5004
  if528_end1231:
    unless $I5006 goto if527_end1229 
    .const 'Sub' $P5014 = 'cuid_202_1361096832.26832' 
    capture_lex $P5014
    $P5015 = $P5014()
  if527_end1229:
    set $S5003, $P102
    set_runcore $S5003
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1361096832.26832") :anon :lex :outer("cuid_108_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1201
    .const 'Sub' $P5039 = 'cuid_201_1361096832.26832' 
    capture_lex $P5039 
    .lex "$outer_ctx", $P101 
    .lex "$main_sub", $P102 
    .local pmc fb_tmp_107 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_107, $P5003
    repr_defined $I5001, fb_tmp_107
    unless $I5001 goto if531_else1235 
    set $P5004, fb_tmp_107["outer_ctx"]
    set $P5006, $P5004
    goto if531_end1236
  if531_else1235:
    null $P5005
    set $P5006, $P5005
  if531_end1236:
    unless_null $P5006, vivi_5321237
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_5321237:
    set $P101, $P5006
    defined $I5002, $P101
    unless $I5002 goto if533_end1239 
.annotate 'line', 1203
.annotate 'line', 1204
    find_lex $P5008, "$output"
    set fb_tmp_108, $P5008
    repr_defined $I5003, fb_tmp_108
    unless $I5003 goto if534_else1240 
    set $P5009, fb_tmp_108[0]
    set $P5011, $P5009
    goto if534_end1241
  if534_else1240:
    null $P5010
    set $P5011, $P5010
  if534_end1241:
    unless_null $P5011, vivi_5351242
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_5351242:
    $P5013 = $P5011."set_outer_ctx"($P101)
  if533_end1239:
    find_lex $P5014, "%adverbs"
    set fb_tmp_109, $P5014
    repr_defined $I5004, fb_tmp_109
    unless $I5004 goto if537_else1245 
    set $P5015, fb_tmp_109["profile"]
    set $P5017, $P5015
    goto if537_end1246
  if537_else1245:
    null $P5016
    set $P5017, $P5016
  if537_end1246:
    unless_null $P5017, vivi_5381247
    nqp_get_sc_object $P5018, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5017, $P5018
  vivi_5381247:
    unless $P5017 goto if536_end1244 
.annotate 'line', 1207
    set_runcore "subprof_hll"
  if536_end1244:
    find_lex $P5019, "%adverbs"
    set fb_tmp_110, $P5019
    repr_defined $I5005, fb_tmp_110
    unless $I5005 goto if539_else1248 
    set $P5020, fb_tmp_110["trace"]
    set $P5022, $P5020
    goto if539_end1249
  if539_else1248:
    null $P5021
    set $P5022, $P5021
  if539_end1249:
    unless_null $P5022, vivi_5401250
    nqp_get_sc_object $P5023, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5022, $P5023
  vivi_5401250:
    set $I5006, $P5022
    trace $I5006
.annotate 'line', 1213
    find_lex $P5024, "$output"
    $P5025 = $P5024."is_initialized"("init")
    isfalse $I5007, $P5025
    unless $I5007 goto if541_end1252 
.annotate 'line', 1214
    find_lex $P5029, "$output"
    $P5030 = $P5029."subs_by_tag"("init")
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1253:
    unless $P5028, for_done1255
    shift $P5032, $P5028
  for_redo1254:
    .const 'Sub' $P5031 = 'cuid_201_1361096832.26832' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1253
  for_done1255:
.annotate 'line', 1215
    find_lex $P5033, "$output"
    $P5034 = $P5033."mark_initialized"("init")
  if541_end1252:
.annotate 'line', 1219
    find_lex $P5035, "$output"
    $P5036 = $P5035."main_sub"()
    set $P102, $P5036
.annotate 'line', 1220
    find_lex $P5037, "@args"
    $P5038 = $P102($P5037 :flat)
    store_lex "$output", $P5038
    trace 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1361096832.26832") :anon :lex :outer("cuid_202_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1214
    .param pmc _lex_param_0 
    .lex "$sub", _lex_param_0 
    $P5001 = _lex_param_0()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_109_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1229
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
.sub "panic" :subid("cuid_110_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1234
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
.sub "stages" :subid("cuid_111_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1238
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_7, default1258
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1258:
    set $N5001, _lex_param_1
    unless $N5001 goto if542_end1257 
.annotate 'line', 1239
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_bind_attr_obj $P5001, $P5002, "@!stages", _lex_param_1
  if542_end1257:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_112_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1245
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_111 
    set $N5001, _lex_param_1
    unless $N5001 goto if543_end1260 
.annotate 'line', 1246
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    set fb_tmp_111, _lex_param_1
    repr_defined $I5001, fb_tmp_111
    unless $I5001 goto if544_else1261 
    set $P5003, fb_tmp_111[0]
    set $P5005, $P5003
    goto if544_end1262
  if544_else1261:
    null $P5004
    set $P5005, $P5004
  if544_end1262:
    unless_null $P5005, vivi_5451263
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5005, $P5006
  vivi_5451263:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", $P5005
  if543_end1260:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_113_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_112 
    set $N5001, _lex_param_1
    unless $N5001 goto if546_end1265 
.annotate 'line', 1253
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    set fb_tmp_112, _lex_param_1
    repr_defined $I5001, fb_tmp_112
    unless $I5001 goto if547_else1266 
    set $P5003, fb_tmp_112[0]
    set $P5005, $P5003
    goto if547_end1267
  if547_else1266:
    null $P5004
    set $P5005, $P5004
  if547_end1267:
    unless_null $P5005, vivi_5481268
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5005, $P5006
  vivi_5481268:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", $P5005
  if546_end1265:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions"
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_114_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1259
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_115_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1261
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_116_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1263
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_8, default1271
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5006
  default1271:
    defined $I5001, _lex_param_1
    unless $I5001 goto if549_end1270 
.annotate 'line', 1264
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", _lex_param_1
  if549_end1270:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_117_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1271
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_9, default1274
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1274:
    set $N5001, _lex_param_1
    unless $N5001 goto if550_end1273 
.annotate 'line', 1272
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", _lex_param_1
  if550_end1273:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions"
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_118_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1278
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
    .local pmc fb_tmp_117 
    .local pmc fb_tmp_118 
    .local pmc fb_tmp_119 
    .local pmc fb_tmp_120 
    .local pmc fb_tmp_121 
    .local pmc fb_tmp_122 
    .local pmc fb_tmp_123 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if551_else1275 
    set $P5005, fb_tmp_113[0]
    set $P5007, $P5005
    goto if551_end1276
  if551_else1275:
    null $P5006
    set $P5007, $P5006
  if551_end1276:
    unless_null $P5007, vivi_5521277
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5008
  vivi_5521277:
    set $P101, $P5007
.annotate 'line', 1280
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1281
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1282
    $P5012 = $P102."arguments"()
    set $P104, $P5012
    set fb_tmp_114, $P103
    repr_defined $I5002, fb_tmp_114
    unless $I5002 goto if553_else1278 
    set $P5013, fb_tmp_114["target"]
    set $P5015, $P5013
    goto if553_end1279
  if553_else1278:
    null $P5014
    set $P5015, $P5014
  if553_end1279:
    unless_null $P5015, vivi_5541280
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  vivi_5541280:
    set $S5002, $P5015
    downcase $S5001, $S5002
    box $P5017, $S5001
    set $P103["target"], $P5017
    set fb_tmp_115, $P103
    repr_defined $I5003, fb_tmp_115
    unless $I5003 goto if556_else1283 
    set $P5018, fb_tmp_115["help"]
    set $P5020, $P5018
    goto if556_end1284
  if556_else1283:
    null $P5019
    set $P5020, $P5019
  if556_end1284:
    unless_null $P5020, vivi_5571285
    nqp_get_sc_object $P5021, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5020, $P5021
  vivi_5571285:
    if $P5020 goto unless555_end1282 
    set fb_tmp_116, $P103
    repr_defined $I5004, fb_tmp_116
    unless $I5004 goto if558_else1286 
    set $P5022, fb_tmp_116["h"]
    set $P5024, $P5022
    goto if558_end1287
  if558_else1286:
    null $P5023
    set $P5024, $P5023
  if558_end1287:
    unless_null $P5024, vivi_5591288
    nqp_get_sc_object $P5025, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5024, $P5025
  vivi_5591288:
    set $P103["help"], $P5024
  unless555_end1282:
    set fb_tmp_117, $P103
    repr_defined $I5005, fb_tmp_117
    unless $I5005 goto if561_else1291 
    set $P5026, fb_tmp_117["output"]
    set $P5028, $P5026
    goto if561_end1292
  if561_else1291:
    null $P5027
    set $P5028, $P5027
  if561_end1292:
    unless_null $P5028, vivi_5621293
    nqp_get_sc_object $P5029, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5028, $P5029
  vivi_5621293:
    if $P5028 goto unless560_end1290 
    set fb_tmp_118, $P103
    repr_defined $I5006, fb_tmp_118
    unless $I5006 goto if563_else1294 
    set $P5030, fb_tmp_118["o"]
    set $P5032, $P5030
    goto if563_end1295
  if563_else1294:
    null $P5031
    set $P5032, $P5031
  if563_end1295:
    unless_null $P5032, vivi_5641296
    nqp_get_sc_object $P5033, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5032, $P5033
  vivi_5641296:
    set $P103["output"], $P5032
  unless560_end1290:
    set fb_tmp_119, $P103
    repr_defined $I5007, fb_tmp_119
    unless $I5007 goto if566_else1299 
    set $P5034, fb_tmp_119["version"]
    set $P5036, $P5034
    goto if566_end1300
  if566_else1299:
    null $P5035
    set $P5036, $P5035
  if566_end1300:
    unless_null $P5036, vivi_5671301
    nqp_get_sc_object $P5037, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5036, $P5037
  vivi_5671301:
    if $P5036 goto unless565_end1298 
    set fb_tmp_120, $P103
    repr_defined $I5008, fb_tmp_120
    unless $I5008 goto if568_else1302 
    set $P5038, fb_tmp_120["v"]
    set $P5040, $P5038
    goto if568_end1303
  if568_else1302:
    null $P5039
    set $P5040, $P5039
  if568_end1303:
    unless_null $P5040, vivi_5691304
    nqp_get_sc_object $P5041, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5040, $P5041
  vivi_5691304:
    set $P103["version"], $P5040
  unless565_end1298:
    set fb_tmp_121, $P103
    repr_defined $I5009, fb_tmp_121
    unless $I5009 goto if571_else1307 
    set $P5042, fb_tmp_121["verbose-config"]
    set $P5044, $P5042
    goto if571_end1308
  if571_else1307:
    null $P5043
    set $P5044, $P5043
  if571_end1308:
    unless_null $P5044, vivi_5721309
    nqp_get_sc_object $P5045, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5044, $P5045
  vivi_5721309:
    if $P5044 goto unless570_end1306 
    set fb_tmp_122, $P103
    repr_defined $I5010, fb_tmp_122
    unless $I5010 goto if573_else1310 
    set $P5046, fb_tmp_122["V"]
    set $P5048, $P5046
    goto if573_end1311
  if573_else1310:
    null $P5047
    set $P5048, $P5047
  if573_end1311:
    unless_null $P5048, vivi_5741312
    nqp_get_sc_object $P5049, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5048, $P5049
  vivi_5741312:
    set $P103["verbose-config"], $P5048
  unless570_end1306:
.annotate 'line', 1291
    _lex_param_2."update"($P103)
    set fb_tmp_123, _lex_param_2
    repr_defined $I5011, fb_tmp_123
    unless $I5011 goto if576_else1315 
    set $P5050, fb_tmp_123["help"]
    set $P5052, $P5050
    goto if576_end1316
  if576_else1315:
    null $P5051
    set $P5052, $P5051
  if576_end1316:
    unless_null $P5052, vivi_5771317
    nqp_get_sc_object $P5053, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5052, $P5053
  vivi_5771317:
    unless $P5052 goto if575_end1314 
.annotate 'line', 1292
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."usage"($P101)
  if575_end1314:
    exists $I5013, _lex_param_2["precomp"]
    not $I5012, $I5013
    set $I5019, $I5012
    unless $I5012 goto if579_end1321 
    set fb_tmp_124, _lex_param_2
    repr_defined $I5015, fb_tmp_124
    unless $I5015 goto if581_else1324 
    set $P5056, fb_tmp_124["target"]
    set $P5058, $P5056
    goto if581_end1325
  if581_else1324:
    null $P5057
    set $P5058, $P5057
  if581_end1325:
    unless_null $P5058, vivi_5821326
    nqp_get_sc_object $P5059, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5058, $P5059
  vivi_5821326:
    set $S5003, $P5058
    iseq $I5014, $S5003, "pir"
    set $I5018, $I5014
    if $I5014 goto unless580_end1323 
    set fb_tmp_125, _lex_param_2
    repr_defined $I5017, fb_tmp_125
    unless $I5017 goto if583_else1327 
    set $P5060, fb_tmp_125["target"]
    set $P5062, $P5060
    goto if583_end1328
  if583_else1327:
    null $P5061
    set $P5062, $P5061
  if583_end1328:
    unless_null $P5062, vivi_5841329
    nqp_get_sc_object $P5063, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5062, $P5063
  vivi_5841329:
    set $S5004, $P5062
    iseq $I5016, $S5004, "pbc"
    set $I5018, $I5016
  unless580_end1323:
    set $I5019, $I5018
  if579_end1321:
    unless $I5019 goto if578_end1319 
.annotate 'line', 1295
    box $P5064, 1
    set _lex_param_2["precomp"], $P5064
  if578_end1319:
    load_bytecode "dumper.pbc"
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1302
    nqp_decontainerize $P5065, _lex_param_0
    $P5066 = $P5065."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5066) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_119_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1306
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5082 = 'cuid_203_1361096832.26832' 
    capture_lex $P5082 
    .const 'Sub' $P5082 = 'cuid_204_1361096832.26832' 
    capture_lex $P5082 
    .const 'Sub' $P5082 = 'cuid_205_1361096832.26832' 
    capture_lex $P5082 
    .const 'Sub' $P5082 = 'cuid_206_1361096832.26832' 
    capture_lex $P5082 
    .const 'Sub' $P5082 = 'cuid_207_1361096832.26832' 
    capture_lex $P5082 
    .const 'Sub' $P5082 = 'cuid_208_1361096832.26832' 
    capture_lex $P5082 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    .local pmc fb_tmp_131 
    .local pmc fb_tmp_132 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    .local pmc fb_tmp_139 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P104, $P5004
    set fb_tmp_126, _lex_param_2
    repr_defined $I5001, fb_tmp_126
    unless $I5001 goto if586_else1332 
    set $P5005, fb_tmp_126["version"]
    set $P5007, $P5005
    goto if586_end1333
  if586_else1332:
    null $P5006
    set $P5007, $P5006
  if586_end1333:
    unless_null $P5007, vivi_5871334
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5008
  vivi_5871334:
    unless $P5007 goto if585_end1331 
.annotate 'line', 1307
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."version"()
  if585_end1331:
    set fb_tmp_127, _lex_param_2
    repr_defined $I5002, fb_tmp_127
    unless $I5002 goto if590_else1339 
    set $P5011, fb_tmp_127["verbose-config"]
    set $P5013, $P5011
    goto if590_end1340
  if590_else1339:
    null $P5012
    set $P5013, $P5012
  if590_end1340:
    unless_null $P5013, vivi_5911341
    nqp_get_sc_object $P5014, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5013, $P5014
  vivi_5911341:
    set $P5019, $P5013
    if $P5013 goto unless589_end1338 
    set fb_tmp_128, _lex_param_2
    repr_defined $I5003, fb_tmp_128
    unless $I5003 goto if592_else1342 
    set $P5015, fb_tmp_128["show-config"]
    set $P5017, $P5015
    goto if592_end1343
  if592_else1342:
    null $P5016
    set $P5017, $P5016
  if592_end1343:
    unless_null $P5017, vivi_5931344
    nqp_get_sc_object $P5018, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5017, $P5018
  vivi_5931344:
    set $P5019, $P5017
  unless589_end1338:
    unless $P5019 goto if588_end1336 
.annotate 'line', 1308
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."verbose-config"()
  if588_end1336:
    set fb_tmp_129, _lex_param_2
    repr_defined $I5004, fb_tmp_129
    unless $I5004 goto if595_else1347 
    set $P5022, fb_tmp_129["nqpevent"]
    set $P5024, $P5022
    goto if595_end1348
  if595_else1347:
    null $P5023
    set $P5024, $P5023
  if595_end1348:
    unless_null $P5024, vivi_5961349
    nqp_get_sc_object $P5025, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5024, $P5025
  vivi_5961349:
    unless $P5024 goto if594_end1346 
.annotate 'line', 1309
    nqp_decontainerize $P5026, _lex_param_0
    set fb_tmp_130, _lex_param_2
    repr_defined $I5005, fb_tmp_130
    unless $I5005 goto if597_else1350 
    set $P5027, fb_tmp_130["nqpevent"]
    set $P5029, $P5027
    goto if597_end1351
  if597_else1350:
    null $P5028
    set $P5029, $P5028
  if597_end1351:
    unless_null $P5029, vivi_5981352
    nqp_get_sc_object $P5030, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5029, $P5030
  vivi_5981352:
    $P5031 = $P5026."nqpevent"($P5029)
  if594_end1346:
    box $P5032, 0
    set $P103, $P5032
    set fb_tmp_131, _lex_param_2
    repr_defined $I5006, fb_tmp_131
    unless $I5006 goto if599_else1353 
    set $P5033, fb_tmp_131["target"]
    set $P5035, $P5033
    goto if599_end1354
  if599_else1353:
    null $P5034
    set $P5035, $P5034
  if599_end1354:
    unless_null $P5035, vivi_6001355
    nqp_get_sc_object $P5036, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5035, $P5036
  vivi_6001355:
    set $P104, $P5035
    new $P5068, 'ExceptionHandler'
    set_label $P5068, catch_handler_6341411
    $P5068.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5068
.annotate 'line', 1315
    new $P5066, 'ExceptionHandler'
    set_label $P5066, catch_handler_6301406
    $P5066.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5066
    new $P5066, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5066, catch_handler_6311407
    push_eh $P5066
    set fb_tmp_132, _lex_param_2
    repr_defined $I5008, fb_tmp_132
    unless $I5008 goto if602_else1358 
    set $P5037, fb_tmp_132["e"]
    set $P5039, $P5037
    goto if602_end1359
  if602_else1358:
    null $P5038
    set $P5039, $P5038
  if602_end1359:
    unless_null $P5039, vivi_6031360
    nqp_get_sc_object $P5040, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5039, $P5040
  vivi_6031360:
    defined $I5007, $P5039
    unless $I5007 goto if601_else1356 
    .const 'Sub' $P5041 = 'cuid_203_1361096832.26832' 
    capture_lex $P5041
    $P5042 = $P5041()
    goto if601_end1357
  if601_else1356:
    isfalse $I5009, _lex_param_1
    unless $I5009 goto if612_else1375 
.annotate 'line', 1325
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5044
    set $P5058, $P101
    goto if612_end1376
  if612_else1375:
    set fb_tmp_135, _lex_param_2
    repr_defined $I5010, fb_tmp_135
    unless $I5010 goto if614_else1379 
    set $P5045, fb_tmp_135["combine"]
    set $P5047, $P5045
    goto if614_end1380
  if614_else1379:
    null $P5046
    set $P5047, $P5046
  if614_end1380:
    unless_null $P5047, vivi_6151381
    nqp_get_sc_object $P5048, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5047, $P5048
  vivi_6151381:
    unless $P5047 goto if613_else1377 
.annotate 'line', 1326
    nqp_decontainerize $P5049, _lex_param_0
    $P5050 = $P5049."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5050
    set $P5057, $P101
    goto if613_end1378
  if613_else1377:
.annotate 'line', 1327
    nqp_decontainerize $P5051, _lex_param_0
    set fb_tmp_136, _lex_param_1
    repr_defined $I5011, fb_tmp_136
    unless $I5011 goto if616_else1382 
    set $P5052, fb_tmp_136[0]
    set $P5054, $P5052
    goto if616_end1383
  if616_else1382:
    null $P5053
    set $P5054, $P5053
  if616_end1383:
    unless_null $P5054, vivi_6171384
    nqp_get_sc_object $P5055, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5054, $P5055
  vivi_6171384:
    $P5056 = $P5051."evalfiles"($P5054, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5056
    set $P5057, $P101
  if613_end1378:
    set $P5058, $P5057
  if612_end1376:
  if601_end1357:
    isnull $I5013, $P101
    not $I5012, $I5013
    set $I5015, $I5012
    unless $I5012 goto if619_end1388 
    set $S5001, $P104
    isne $I5014, $S5001, ""
    set $I5015, $I5014
  if619_end1388:
    unless $I5015 goto if618_end1386 
.annotate 'line', 1329
    set $S5002, $P104
    iseq $I5016, $S5002, "pbc"
    unless $I5016 goto if620_else1389 
    .const 'Sub' $P5059 = 'cuid_204_1361096832.26832' 
    capture_lex $P5059
    $P5060 = $P5059()
    set $P5063, $P5060
    goto if620_end1390
  if620_else1389:
    .const 'Sub' $P5061 = 'cuid_205_1361096832.26832' 
    capture_lex $P5061
    $P5062 = $P5061()
    set $P5063, $P5062
  if620_end1390:
  if618_end1386:
    nqp_get_sc_object $P5064, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    nqp_get_sc_object $P5065, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5067, $P5065
    pop_eh 
    pop_eh 
    goto skip_handler_6291405
  catch_handler_6301406:
    .get_results ($P5066) 
    .const 'Sub' $P10001 = 'cuid_206_1361096832.26832' 
    capture_lex $P10001
    $P10001($P5066)
    set $I10001, 1
    set $P5066["handled"], $I10001
    nqp_get_sc_object $P10002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5066
    pop_upto_eh $P5066
    pop_eh 
    set $P5067, $P10002
    goto skip_handler_6291405
  catch_handler_6311407:
    .get_results ($P5066) 
    .const 'Sub' $P10003 = 'cuid_207_1361096832.26832' 
    capture_lex $P10003
    $P10003($P5066)
    set $I10002, 1
    set $P5066["handled"], $I10002
    nqp_get_sc_object $P10004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5066
    pop_upto_eh $P5066
    pop_eh 
    set $P5067, $P10004
    goto skip_handler_6291405
  skip_handler_6291405:
    set $P5069, $P5067
    pop_eh 
    goto skip_handler_6331410
  catch_handler_6341411:
    .get_results ($P5068) 
    set $I10001, 1
    set $P5068["handled"], $I10001
    nqp_get_sc_object $P10001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5068
    pop_upto_eh $P5068
    pop_eh 
    set $P5069, $P10001
    goto skip_handler_6331410
  skip_handler_6331410:
    unless $P103 goto if635_end1413 
.annotate 'line', 1358
    set fb_tmp_139, _lex_param_2
    repr_defined $I5017, fb_tmp_139
    unless $I5017 goto if638_else1418 
    set $P5070, fb_tmp_139["ll-exception"]
    set $P5072, $P5070
    goto if638_end1419
  if638_else1418:
    null $P5071
    set $P5072, $P5071
  if638_end1419:
    unless_null $P5072, vivi_6391420
    nqp_get_sc_object $P5073, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5072, $P5073
  vivi_6391420:
    set $P5075, $P5072
    if $P5072 goto unless637_end1417 
    nqp_decontainerize $P5074, _lex_param_0
    can $I5019, $P5074, "handle-exception"
    not $I5018, $I5019
    box $P5076, $I5018
    set $P5075, $P5076
  unless637_end1417:
    unless $P5075 goto if636_else1414 
    .const 'Sub' $P5077 = 'cuid_208_1361096832.26832' 
    capture_lex $P5077
    $P5078 = $P5077()
    set $P5081, $P5078
    goto if636_end1415
  if636_else1414:
.annotate 'line', 1365
.annotate 'line', 1366
    nqp_decontainerize $P5079, _lex_param_0
    $P5080 = $P5079."handle-exception"($P102)
    set $P5081, $P5080
  if636_end1415:
  if635_end1413:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1361096832.26832") :anon :lex :outer("cuid_119_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1316
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_133 
    .local pmc fb_tmp_134 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1319
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_133, $P5009
    repr_defined $I5001, fb_tmp_133
    unless $I5001 goto if604_else1361 
    set $P5010, fb_tmp_133["e"]
    set $P5012, $P5010
    goto if604_end1362
  if604_else1361:
    null $P5011
    set $P5012, $P5011
  if604_end1362:
    unless_null $P5012, vivi_6051363
    nqp_get_sc_object $P5013, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5012, $P5013
  vivi_6051363:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless609_end1371 
    find_lex $P5018, "$target"
    set $S5002, $P5018
    iseq $I5003, $S5002, "pir"
    set $I5004, $I5003
  unless609_end1371:
    set $I5006, $I5004
    if $I5004 goto unless608_end1369 
    find_lex $P5019, "$target"
    set $S5003, $P5019
    iseq $I5005, $S5003, "pbc"
    set $I5006, $I5005
  unless608_end1369:
    box $P5026, $I5006
    set $P5025, $P5026
    if $I5006 goto unless607_end1367 
    find_lex $P5020, "%adverbs"
    set fb_tmp_134, $P5020
    repr_defined $I5007, fb_tmp_134
    unless $I5007 goto if610_else1372 
    set $P5021, fb_tmp_134["output"]
    set $P5023, $P5021
    goto if610_end1373
  if610_else1372:
    null $P5022
    set $P5023, $P5022
  if610_end1373:
    unless_null $P5023, vivi_6111374
    nqp_get_sc_object $P5024, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5023, $P5024
  vivi_6111374:
    set $P5025, $P5023
  unless607_end1367:
    set $P5033, $P5025
    if $P5025 goto unless606_end1365 
.annotate 'line', 1321
.annotate 'line', 1322
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    find_lex $P5029, "$result"
    find_lex $P5030, "$target"
    find_lex $P5031, "%adverbs"
    $P5032 = $P5027."dumper"($P5029, $P5030, $P5031 :flat :named)
    set $P5033, $P5032
  unless606_end1365:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1361096832.26832") :anon :lex :outer("cuid_119_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1330
    .lex "$output", $P101 
    .local pmc fb_tmp_137 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_137, $P5002
    repr_defined $I5001, fb_tmp_137
    unless $I5001 goto if621_else1391 
    set $P5003, fb_tmp_137["output"]
    set $P5005, $P5003
    goto if621_end1392
  if621_else1391:
    null $P5004
    set $P5005, $P5004
  if621_end1392:
    unless_null $P5005, vivi_6221393
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5005, $P5006
  vivi_6221393:
    set $P101, $P5005
    set $P5009, $P101
    unless $P101 goto if623_end1395 
.annotate 'line', 1332
    find_lex $P5007, "$result"
    $P5008 = $P5007."write_to_file"($P101)
    set $P5009, $P5008
  if623_end1395:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1361096832.26832") :anon :lex :outer("cuid_119_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1334
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_138 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_138, $P5003
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if624_else1396 
    set $P5004, fb_tmp_138["output"]
    set $P5006, $P5004
    goto if624_end1397
  if624_else1396:
    null $P5005
    set $P5006, $P5005
  if624_end1397:
    unless_null $P5006, vivi_6251398
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_6251398:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless627_end1402 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless627_end1402:
    unless $I5004 goto if626_else1399 
.annotate 'line', 1337
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5012, $P5009
    goto if626_end1400
  if626_else1399:
.annotate 'line', 1338
    new $P5010, "FileHandle"
    $P5011 = $P5010."open"($P101, "w")
    set $P5012, $P5011
  if626_end1400:
    set $P102, $P5012
    if $P102 goto unless628_end1404 
.annotate 'line', 1339
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    set $S5004, $P101
    concat $S5003, "Cannot write to ", $S5004
    $P5015 = $P5013."panic"($S5003)
  unless628_end1404:
.annotate 'line', 1340
    find_lex $P5016, "$result"
    $P102."print"($P5016)
.annotate 'line', 1341
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1361096832.26832") :anon :lex :outer("cuid_119_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1344
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
.sub "" :subid("cuid_207_1361096832.26832") :anon :lex :outer("cuid_119_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1348
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if632_else1408 
.annotate 'line', 1349
.annotate 'line', 1350
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if632_end1409
  if632_else1408:
.annotate 'line', 1351
    rethrow _lex_param_0
  if632_end1409:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1361096832.26832") :anon :lex :outer("cuid_119_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1359
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    getstderr $P5002
    set $P101, $P5002
.annotate 'line', 1361
    find_lex $P5003, "$error"
    $P101."print"($P5003)
.annotate 'line', 1362
    $P101."print"("\n")
.annotate 'line', 1363
    find_lex $P5004, "$error"
    $P5005 = $P5004."backtrace_strings"()
    join $S5001, "\n", $P5005
    $P101."print"($S5001)
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_120_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1372
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_209_1361096832.26832' 
    capture_lex $P5043 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_140 
    .local pmc pkg_lookup_tmp_31 
    .local pmc pkg_lookup_tmp_30 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
.annotate 'line', 1374
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1376
    nqp_get_sc_object $P5006, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_30, $P5006
    get_who $P5007, pkg_lookup_tmp_30
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if641_else1423 
    get_who $P5009, pkg_lookup_tmp_30
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if641_end1424
  if641_else1423:
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5010
  if641_end1424:
    set pkg_lookup_tmp_31, $P5011
    get_who $P5012, pkg_lookup_tmp_31
    exists $I5003, $P5012["CommandLine"]
    unless $I5003 goto if642_else1425 
    get_who $P5014, pkg_lookup_tmp_31
    set $P5013, $P5014["CommandLine"]
    set $P5016, $P5013
    goto if642_end1426
  if642_else1425:
    nqp_get_sc_object $P5015, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5016, $P5015
  if642_end1426:
    get_who $P5005, $P5016
    set fb_tmp_140, $P5005
    repr_defined $I5001, fb_tmp_140
    unless $I5001 goto if640_else1421 
    set $P5017, fb_tmp_140["Parser"]
    set $P5019, $P5017
    goto if640_end1422
  if640_else1421:
    null $P5018
    set $P5019, $P5018
  if640_end1422:
    unless_null $P5019, vivi_6431427
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_6431427:
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions"
    $P5024 = $P5019."new"($P5023)
    set $P101, $P5024
.annotate 'line', 1377
    $P101."add-stopper"("-e")
.annotate 'line', 1378
    $P101."stop-after-first-arg"()
    new $P5029, 'ExceptionHandler'
    set_label $P5029, catch_handler_6471431
    $P5029.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5029
.annotate 'line', 1380
    new $P5027, 'ExceptionHandler'
    set_label $P5027, catch_handler_6451429
    $P5027.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5027
.annotate 'line', 1381
    $P5025 = $P101."parse"(_lex_param_1)
    set $P102, $P5025
    nqp_get_sc_object $P5026, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5028, $P5026
    pop_eh 
    goto skip_handler_6441428
  catch_handler_6451429:
    .get_results ($P5027) 
    .const 'Sub' $P10001 = 'cuid_209_1361096832.26832' 
    capture_lex $P10001
    $P10001($P5027)
    set $I10001, 1
    set $P5027["handled"], $I10001
    nqp_get_sc_object $P10002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5027
    pop_upto_eh $P5027
    pop_eh 
    set $P5028, $P10002
    goto skip_handler_6441428
  skip_handler_6441428:
    set $P5030, $P5028
    pop_eh 
    goto skip_handler_6461430
  catch_handler_6471431:
    .get_results ($P5029) 
    set $I10001, 1
    set $P5029["handled"], $I10001
    nqp_get_sc_object $P10001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5029
    pop_upto_eh $P5029
    pop_eh 
    set $P5030, $P10001
    goto skip_handler_6461430
  skip_handler_6461430:
    unless $P102 goto if648_else1432 
.annotate 'line', 1388
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
.annotate 'line', 1389
    $P5033 = $P102."options"()
    repr_bind_attr_obj $P5031, $P5032, "%!cli-options", $P5033
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
.annotate 'line', 1390
    $P5036 = $P102."arguments"()
    repr_bind_attr_obj $P5034, $P5035, "@!cli-arguments", $P5036
    goto if648_end1433
  if648_else1432:
.annotate 'line', 1392
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    new $P5039, 'Hash'
    repr_bind_attr_obj $P5037, $P5038, "%!cli-options", $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    new $P5042, 'ResizablePMCArray'
    repr_bind_attr_obj $P5040, $P5041, "@!cli-arguments", $P5042
  if648_end1433:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1361096832.26832") :anon :lex :outer("cuid_120_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1382
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1384
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_121_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1399
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5043 = 'cuid_211_1361096832.26832' 
    capture_lex $P5043 
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
    .local pmc fb_tmp_141 
    .local pmc fb_tmp_142 
    .local pmc fb_tmp_143 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1434
    .lex "RETURN", $P108
    set fb_tmp_141, _lex_param_3
    repr_defined $I5001, fb_tmp_141
    unless $I5001 goto if649_else1436 
    set $P5008, fb_tmp_141["target"]
    set $P5010, $P5008
    goto if649_end1437
  if649_else1436:
    null $P5009
    set $P5010, $P5009
  if649_end1437:
    unless_null $P5010, vivi_6501438
    nqp_get_sc_object $P5011, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5010, $P5011
  vivi_6501438:
    set $P101, $P5010
    set fb_tmp_142, _lex_param_3
    repr_defined $I5002, fb_tmp_142
    unless $I5002 goto if651_else1439 
    set $P5012, fb_tmp_142["encoding"]
    set $P5014, $P5012
    goto if651_end1440
  if651_else1439:
    null $P5013
    set $P5014, $P5013
  if651_end1440:
    unless_null $P5014, vivi_6521441
    nqp_get_sc_object $P5015, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5014, $P5015
  vivi_6521441:
    set $P102, $P5014
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if653_else1442 
    set $P5017, _lex_param_1
    goto if653_end1443
  if653_else1442:
    new $P5016, 'ResizablePMCArray'
    push $P5016, _lex_param_1
    set $P5017, $P5016
  if653_end1443:
    set $P103, $P5017
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    join $S5001, ",", $P103
    box $P5020, $S5001
    repr_bind_attr_obj $P5018, $P5019, "$!user_progname", $P5020
    set $P5021, $P103
    iter $P5023, $P103
  for_next1450:
    unless $P5023, for_done1452
    shift $P5025, $P5023
  for_redo1451:
    .const 'Sub' $P5024 = 'cuid_211_1361096832.26832' 
    capture_lex $P5024
    $P5021 = $P5024($P5025)
    goto for_next1450
  for_done1452:
    join $S5002, "", $P104
    box $P5026, $S5002
    set $P105, $P5026
    join $S5003, " ", $P103
    box $P5027, $S5003
    set $P106, $P5027
.annotate 'line', 1423
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5029
    set $S5004, $P101
    iseq $I5004, $S5004, ""
    set $I5006, $I5004
    if $I5004 goto unless661_end1458 
    set $S5005, $P101
    iseq $I5005, $S5005, "pir"
    set $I5006, $I5005
  unless661_end1458:
    box $P5035, $I5006
    set $P5034, $P5035
    if $I5006 goto unless660_end1456 
    set fb_tmp_143, _lex_param_3
    repr_defined $I5007, fb_tmp_143
    unless $I5007 goto if662_else1459 
    set $P5030, fb_tmp_143["output"]
    set $P5032, $P5030
    goto if662_end1460
  if662_else1459:
    null $P5031
    set $P5032, $P5031
  if662_end1460:
    unless_null $P5032, vivi_6631461
    nqp_get_sc_object $P5033, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5032, $P5033
  vivi_6631461:
    set $P5034, $P5032
  unless660_end1456:
    unless $P5034 goto if659_else1453 
.annotate 'line', 1424
    find_lex $P5036, "RETURN"
    $P5037 = $P5036($P107)
    set $P5042, $P5037
    goto if659_end1454
  if659_else1453:
.annotate 'line', 1426
.annotate 'line', 1427
    nqp_decontainerize $P5039, _lex_param_0
    $P5040 = $P5039."dumper"($P107, $P101, _lex_param_3 :flat :named)
    find_lex $P5038, "RETURN"
    $P5041 = $P5038($P5040)
    set $P5042, $P5041
  if659_end1454:
    goto lexotic_1435
  lexotic_1434:
    .get_results ($P5042)
  lexotic_1435:
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1361096832.26832") :anon :lex :outer("cuid_121_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1405
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_210_1361096832.26832' 
    capture_lex $P5014 
    .lex "$in-handle", $P101 
    .lex "$err", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    new $P5003, "FileHandle"
    set $P101, $P5003
    box $P5004, 0
    set $P102, $P5004
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_6571447
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1408
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_6551445
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
.annotate 'line', 1412
    find_lex $P5005, "$encoding"
    $P101."encoding"($P5005)
    find_lex $P5006, "@codes"
.annotate 'line', 1413
    $P5007 = $P101."readall"(_lex_param_0)
    set $S5001, $P5007
    push $P5006, $S5001
.annotate 'line', 1414
    $P101."close"()
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5010, $P5008
    pop_eh 
    goto skip_handler_6541444
  catch_handler_6551445:
    .get_results ($P5009) 
    .const 'Sub' $P10001 = 'cuid_210_1361096832.26832' 
    capture_lex $P10001
    $P10001($P5009)
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10002
    goto skip_handler_6541444
  skip_handler_6541444:
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_6561446
  catch_handler_6571447:
    .get_results ($P5011) 
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10001
    goto skip_handler_6561446
  skip_handler_6561446:
    set $P5013, $P102
    unless $P102 goto if658_end1449 
    die $P102
    set $P5013, $P102
  if658_end1449:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1361096832.26832") :anon :lex :outer("cuid_211_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1415
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
.sub "compile" :subid("cuid_122_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5036 = 'cuid_212_1361096832.26832' 
    capture_lex $P5036 
    .lex "%*COMPILING", $P101 
    .lex "$target", $P102 
    .lex "$result", $P103 
    .lex "$stderr", $P104 
    .lex "$stdin", $P105 
    .lex "$stagestats", $P106 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_144 
    .local pmc pkg_viv_tmp_15 
    .local pmc fb_tmp_145 
    .local pmc fb_tmp_146 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_1462
    .lex "RETURN", $P107
    unless_null $P101, fallback1464
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5007, $P5008
    set pkg_viv_tmp_15, $P5007
    set fb_tmp_144, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_144
    unless $I5001 goto if664_else1465 
    set $P5009, fb_tmp_144["%COMPILING"]
    set $P5011, $P5009
    goto if664_end1466
  if664_else1465:
    null $P5010
    set $P5011, $P5010
  if664_end1466:
    unless_null $P5011, vivi_6651467
    new $P5012, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5012
    set $P5011, $P5012
  vivi_6651467:
    unless_null $P5011, vivi_6661468
    die "Contextual %*COMPILING not found"
    box $P5013, "Contextual %*COMPILING not found"
    set $P5011, $P5013
  vivi_6661468:
    set $P101, $P5011
  fallback1464:
    set $P101["%?OPTIONS"], _lex_param_2
    set fb_tmp_145, _lex_param_2
    repr_defined $I5002, fb_tmp_145
    unless $I5002 goto if667_else1469 
    set $P5014, fb_tmp_145["target"]
    set $P5016, $P5014
    goto if667_end1470
  if667_else1469:
    null $P5015
    set $P5016, $P5015
  if667_end1470:
    unless_null $P5016, vivi_6681471
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5016, $P5017
  vivi_6681471:
    set $P102, $P5016
    set $P103, _lex_param_1
.annotate 'line', 1436
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    set $P104, $P5019
.annotate 'line', 1437
    getinterp $P5020
    $P5021 = $P5020."stdin_handle"()
    set $P105, $P5021
    set fb_tmp_146, _lex_param_2
    repr_defined $I5003, fb_tmp_146
    unless $I5003 goto if669_else1472 
    set $P5022, fb_tmp_146["stagestats"]
    set $P5024, $P5022
    goto if669_end1473
  if669_else1472:
    null $P5023
    set $P5024, $P5023
  if669_end1473:
    unless_null $P5024, vivi_6701474
    nqp_get_sc_object $P5025, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5024, $P5025
  vivi_6701474:
    set $P106, $P5024
.annotate 'line', 1439
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
    new $P5032, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5032, for_handlers1485
    push_eh $P5032
  for_next1486:
    unless $P5028, for_done1488
    shift $P5033, $P5028
  for_redo1487:
    .const 'Sub' $P5031 = 'cuid_212_1361096832.26832' 
    capture_lex $P5031
    $P5026 = $P5031($P5033)
    goto for_next1486
  for_handlers1485:
    .get_results ($P5032)
    pop_upto_eh $P5032
    getattribute $P5032, $P5032, 'type'
    eq $P5032, .CONTROL_LOOP_NEXT, for_next1486
    eq $P5032, .CONTROL_LOOP_REDO, for_redo1487
  for_done1488:
    pop_eh 
    find_lex $P5034, "RETURN"
    $P5035 = $P5034($P103)
    goto lexotic_1463
  lexotic_1462:
    .get_results ($P5035)
  lexotic_1463:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1361096832.26832") :anon :lex :outer("cuid_122_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1439
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    time $N5001
    box $P5003, $N5001
    set $P101, $P5003
.annotate 'line', 1441
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
    unless $I5001 goto if671_end1476 
.annotate 'line', 1443
.annotate 'line', 1444
    find_lex $P5011, "$stderr"
    new $P5012, 'ResizablePMCArray'
    push $P5012, _lex_param_0
    push $P5012, $P102
    sprintf $S5002, "Stage %-11s: %7.3f", $P5012
    $P5011."print"($S5002)
    find_lex $P5013, "$stagestats"
    set $I5003, $P5013
    band $I5002, $I5003, 4
    unless $I5002 goto if672_end1478 
    sweep 1
  if672_end1478:
    find_lex $P5014, "$stagestats"
    set $I5005, $P5014
    band $I5004, $I5005, 2
    unless $I5004 goto if673_end1480 
.annotate 'line', 1446
    find_lex $P5015, "$stderr"
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    $P5018 = $P5016."vmstat"()
    sprintf $S5003, " %11d %11d %9d %9d", $P5018
    $P5019 = $P5015."print"($S5003)
  if673_end1480:
.annotate 'line', 1448
    find_lex $P5020, "$stderr"
    $P5020."print"("\n")
    find_lex $P5021, "$stagestats"
    set $I5007, $P5021
    band $I5006, $I5007, 8
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if674_end1482 
.annotate 'line', 1449
.annotate 'line', 1450
    find_lex $P5022, "$stderr"
    $P5022."print"("continue> ")
.annotate 'line', 1451
    find_lex $P5023, "$stdin"
    $P5024 = $P5023."readline"()
    set $P5025, $P5024
  if674_end1482:
  if671_end1476:
    set $S5004, _lex_param_0
    find_lex $P5027, "$target"
    set $S5005, $P5027
    iseq $I5008, $S5004, $S5005
    set $I5009, $I5008
    unless $I5008 goto if675_end1484 
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
  if675_end1484:
    .return ($I5009) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_123_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1459
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
.sub "parse" :subid("cuid_124_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1463
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5044 = 'cuid_213_1361096832.26832' 
    capture_lex $P5044 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_147 
    .local pmc fb_tmp_148 
    .local pmc fb_tmp_149 
    .local pmc fb_tmp_150 
    .local pmc fb_tmp_151 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1489
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_147, _lex_param_2
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if677_else1493 
    set $P5005, fb_tmp_147["transcode"]
    set $P5007, $P5005
    goto if677_end1494
  if677_else1493:
    null $P5006
    set $P5007, $P5006
  if677_end1494:
    unless_null $P5007, vivi_6781495
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5008
  vivi_6781495:
    unless $P5007 goto if676_end1492 
.annotate 'line', 1465
    set fb_tmp_148, _lex_param_2
    repr_defined $I5002, fb_tmp_148
    unless $I5002 goto if679_else1496 
    set $P5013, fb_tmp_148["transcode"]
    set $P5015, $P5013
    goto if679_end1497
  if679_else1496:
    null $P5014
    set $P5015, $P5014
  if679_end1497:
    unless_null $P5015, vivi_6801498
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  vivi_6801498:
    set $S5001, $P5015
    split $P5012, " ", $S5001
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next1501:
    unless $P5011, for_done1503
    shift $P5018, $P5011
  for_redo1502:
    .const 'Sub' $P5017 = 'cuid_213_1361096832.26832' 
    capture_lex $P5017
    $P5009 = $P5017($P5018)
    goto for_next1501
  for_done1503:
  if676_end1492:
.annotate 'line', 1473
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parsegrammar"()
    set $P102, $P5020
    set fb_tmp_149, _lex_param_2
    repr_defined $I5004, fb_tmp_149
    unless $I5004 goto if684_else1506 
    set $P5021, fb_tmp_149["target"]
    set $P5023, $P5021
    goto if684_end1507
  if684_else1506:
    null $P5022
    set $P5023, $P5022
  if684_end1507:
    unless_null $P5023, vivi_6851508
    nqp_get_sc_object $P5024, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5023, $P5024
  vivi_6851508:
    set $S5002, $P5023
    iseq $I5003, $S5002, "parse"
    if $I5003 goto unless683_end1505 
.annotate 'line', 1475
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."parseactions"()
    set $P103, $P5026
  unless683_end1505:
    set fb_tmp_150, _lex_param_2
    repr_defined $I5005, fb_tmp_150
    unless $I5005 goto if687_else1511 
    set $P5027, fb_tmp_150["rxtrace"]
    set $P5029, $P5027
    goto if687_end1512
  if687_else1511:
    null $P5028
    set $P5029, $P5028
  if687_end1512:
    unless_null $P5029, vivi_6881513
    nqp_get_sc_object $P5030, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5029, $P5030
  vivi_6881513:
    unless $P5029 goto if686_end1510 
.annotate 'line', 1476
    get_how $P5031, $P102
    $P5032 = $P5031."trace-on"($P102)
  if686_end1510:
.annotate 'line', 1477
    $P5033 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5033
    set fb_tmp_151, _lex_param_2
    repr_defined $I5006, fb_tmp_151
    unless $I5006 goto if690_else1516 
    set $P5034, fb_tmp_151["rxtrace"]
    set $P5036, $P5034
    goto if690_end1517
  if690_else1516:
    null $P5035
    set $P5036, $P5035
  if690_end1517:
    unless_null $P5036, vivi_6911518
    nqp_get_sc_object $P5037, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5036, $P5037
  vivi_6911518:
    unless $P5036 goto if689_end1515 
.annotate 'line', 1478
    get_how $P5038, $P102
    $P5039 = $P5038."trace-off"($P102)
  if689_end1515:
    if $P104 goto unless692_end1520 
.annotate 'line', 1479
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."panic"("Unable to parse source")
  unless692_end1520:
    find_lex $P5042, "RETURN"
    $P5043 = $P5042($P104)
    goto lexotic_1490
  lexotic_1489:
    .get_results ($P5043)
  lexotic_1490:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1361096832.26832") :anon :lex :outer("cuid_124_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1466
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_6821500
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 1467
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_6811499
  catch_handler_6821500:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_6811499
  skip_handler_6811499:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_125_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1483
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_152 
    .local pmc pkg_lookup_tmp_32 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
.annotate 'line', 1484
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1486
    nqp_get_sc_object $P5004, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_32, $P5004
    get_who $P5005, pkg_lookup_tmp_32
    exists $I5002, $P5005["QAST"]
    unless $I5002 goto if695_else1525 
    get_who $P5007, pkg_lookup_tmp_32
    set $P5006, $P5007["QAST"]
    set $P5009, $P5006
    goto if695_end1526
  if695_else1525:
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5008
  if695_end1526:
    get_who $P5003, $P5009
    set fb_tmp_152, $P5003
    repr_defined $I5001, fb_tmp_152
    unless $I5001 goto if694_else1523 
    set $P5010, fb_tmp_152["Node"]
    set $P5012, $P5010
    goto if694_end1524
  if694_else1523:
    null $P5011
    set $P5012, $P5011
  if694_end1524:
    unless_null $P5012, vivi_6961527
    nqp_get_sc_object $P5013, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5012, $P5013
  vivi_6961527:
    $P5014 = $P5012."ACCEPTS"($P101)
    if $P5014 goto unless693_end1522 
.annotate 'line', 1485
    nqp_decontainerize $P5015, _lex_param_0
    typeof $S5002, _lex_param_1
    concat $S5001, "Unable to obtain ast from ", $S5002
    $P5016 = $P5015."panic"($S5001)
  unless693_end1522:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_126_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1490
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1491
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_127_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1494
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
.sub "pir" :subid("cuid_128_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1507
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1508
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
.sub "pbc" :subid("cuid_129_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1511
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1512
    compreg $P5001, "PIR"
    $P5002 = $P5001."compile"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_130_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1515
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 1516
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."init_packfile"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "init_packfile" :subid("cuid_131_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1519
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_214_1361096832.26832' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$packfile", _lex_param_1 
.annotate 'line', 1520
    $P5004 = _lex_param_1."subs_by_tag"("init")
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1528:
    unless $P5003, for_done1530
    shift $P5006, $P5003
  for_redo1529:
    .const 'Sub' $P5005 = 'cuid_214_1361096832.26832' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1528
  for_done1530:
.annotate 'line', 1521
    _lex_param_1."mark_initialized"("init")
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1361096832.26832") :anon :lex :outer("cuid_131_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1520
    .param pmc _lex_param_0 
    .lex "$sub", _lex_param_0 
    $P5001 = _lex_param_0()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "compile_and_init" :subid("cuid_132_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1525
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
.annotate 'line', 1526
    nqp_decontainerize $P5001, _lex_param_0
    compreg $P5002, "PIR"
    $P5003 = $P5002."compile"(_lex_param_1)
    $P5004 = $P5001."init_packfile"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_133_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1529
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5013 = 'cuid_215_1361096832.26832' 
    capture_lex $P5013 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    .local pmc fb_tmp_153 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1531
    .lex "RETURN", $P101
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if697_end1534 
.annotate 'line', 1530
.annotate 'line', 1531
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(0)
  if697_end1534:
    set fb_tmp_153, _lex_param_3
    repr_defined $I5002, fb_tmp_153
    unless $I5002 goto if699_else1537 
    set $P5004, fb_tmp_153["dumper"]
    set $P5006, $P5004
    goto if699_end1538
  if699_else1537:
    null $P5005
    set $P5006, $P5005
  if699_end1538:
    unless_null $P5006, vivi_7001539
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_7001539:
    unless $P5006 goto if698_else1535 
    .const 'Sub' $P5008 = 'cuid_215_1361096832.26832' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5012, $P5009
    goto if698_end1536
  if698_else1535:
.annotate 'line', 1539
.annotate 'line', 1540
 $P5010 = get_root_global ['parrot'], '_dumper' 
    $P5011 = $P5010(_lex_param_1, _lex_param_2)
    set $P5012, $P5011
  if698_end1536:
    goto lexotic_1532
  lexotic_1531:
    .get_results ($P5012)
  lexotic_1532:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1361096832.26832") :anon :lex :outer("cuid_133_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1534
    .lex "$dumper", $P101 
    .local pmc fb_tmp_154 
    .local pmc fb_tmp_155 
    .local pmc pkg_lookup_tmp_33 
    .local pmc fb_tmp_156 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    load_bytecode "PCT/Dumper.pbc"
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_33, $P5003
    get_who $P5004, pkg_lookup_tmp_33
    exists $I5003, $P5004["PCT"]
    unless $I5003 goto if703_else1544 
    get_who $P5006, pkg_lookup_tmp_33
    set $P5005, $P5006["PCT"]
    set $P5008, $P5005
    goto if703_end1545
  if703_else1544:
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5007
  if703_end1545:
    get_who $P5002, $P5008
    set fb_tmp_155, $P5002
    repr_defined $I5002, fb_tmp_155
    unless $I5002 goto if702_else1542 
    set $P5009, fb_tmp_155["Dumper"]
    set $P5011, $P5009
    goto if702_end1543
  if702_else1542:
    null $P5010
    set $P5011, $P5010
  if702_end1543:
    unless_null $P5011, vivi_7041546
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_7041546:
    set fb_tmp_154, $P5011
    repr_defined $I5001, fb_tmp_154
    unless $I5001 goto if701_else1540 
    find_lex $P5014, "%options"
    set fb_tmp_156, $P5014
    repr_defined $I5004, fb_tmp_156
    unless $I5004 goto if705_else1547 
    set $P5015, fb_tmp_156["dumper"]
    set $P5017, $P5015
    goto if705_end1548
  if705_else1547:
    null $P5016
    set $P5017, $P5016
  if705_end1548:
    unless_null $P5017, vivi_7061549
    nqp_get_sc_object $P5018, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5017, $P5018
  vivi_7061549:
    set $S5002, $P5017
    downcase $S5001, $S5002
    set $P5013, fb_tmp_154[$S5001]
    set $P5020, $P5013
    goto if701_end1541
  if701_else1540:
    null $P5019
    set $P5020, $P5019
  if701_end1541:
    unless_null $P5020, vivi_7071550
    nqp_get_sc_object $P5021, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5020, $P5021
  vivi_7071550:
    set $P101, $P5020
.annotate 'line', 1537
    find_lex $P5022, "$obj"
    find_lex $P5023, "$name"
    $P5024 = $P101($P5022, $P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_134_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1544
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_10, default1553
    nqp_get_sc_object $P5005, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5005
  default1553:
    unless _lex_param_1 goto if708_end1552 
.annotate 'line', 1545
.annotate 'line', 1546
    $P5001 = "&say"(_lex_param_1)
  if708_end1552:
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!usage"
    set $S5001, $P5004
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_135_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1552
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$parver", $P102 
    .lex "$parrev", $P103 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_157 
    .local pmc fb_tmp_158 
    .local pmc fb_tmp_159 
    .local pmc fb_tmp_160 
    .local pmc fb_tmp_161 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!config"
    set fb_tmp_157, $P5006
    repr_defined $I5001, fb_tmp_157
    unless $I5001 goto if709_else1554 
    set $P5007, fb_tmp_157["version"]
    set $P5009, $P5007
    goto if709_end1555
  if709_else1554:
    null $P5008
    set $P5009, $P5008
  if709_end1555:
    unless_null $P5009, vivi_7101556
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_7101556:
    set $P101, $P5009
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set fb_tmp_159, $P5011
    repr_defined $I5003, fb_tmp_159
    unless $I5003 goto if712_else1559 
    set $P5013, fb_tmp_159["%parrot_config"]
    set $P5015, $P5013
    goto if712_end1560
  if712_else1559:
    null $P5014
    set $P5015, $P5014
  if712_end1560:
    unless_null $P5015, vivi_7131561
    new $P5016, 'Hash'
    set $P5015, $P5016
  vivi_7131561:
    set fb_tmp_158, $P5015
    repr_defined $I5002, fb_tmp_158
    unless $I5002 goto if711_else1557 
    set $P5017, fb_tmp_158["VERSION"]
    set $P5019, $P5017
    goto if711_end1558
  if711_else1557:
    null $P5018
    set $P5019, $P5018
  if711_end1558:
    unless_null $P5019, vivi_7141562
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_7141562:
    set $P102, $P5019
    find_lex $P5023, "$?PACKAGE"
    get_who $P5022, $P5023
    set fb_tmp_161, $P5022
    repr_defined $I5006, fb_tmp_161
    unless $I5006 goto if716_else1566 
    set $P5024, fb_tmp_161["%parrot_config"]
    set $P5026, $P5024
    goto if716_end1567
  if716_else1566:
    null $P5025
    set $P5026, $P5025
  if716_end1567:
    unless_null $P5026, vivi_7171568
    new $P5027, 'Hash'
    set $P5026, $P5027
  vivi_7171568:
    set fb_tmp_160, $P5026
    repr_defined $I5005, fb_tmp_160
    unless $I5005 goto if715_else1564 
    set $P5028, fb_tmp_160["git_describe"]
    set $P5030, $P5028
    goto if715_end1565
  if715_else1564:
    null $P5029
    set $P5030, $P5029
  if715_end1565:
    unless_null $P5030, vivi_7181569
    nqp_get_sc_object $P5031, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5030, $P5031
  vivi_7181569:
    set $P5021, $P5030
    defined $I5004, $P5021
    if $I5004, defor1563
    box $P5032, "(unknown)"
    set $P5021, $P5032
  defor1563:
    set $P103, $P5021
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
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
.sub "show-config" :subid("cuid_136_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1560
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_137_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1562
    .param pmc _lex_param_0 
    .const 'Sub' $P5020 = 'cuid_216_1361096832.26832' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_217_1361096832.26832' 
    capture_lex $P5020 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_162 
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set fb_tmp_162, $P5004
    repr_defined $I5001, fb_tmp_162
    unless $I5001 goto if719_else1570 
    set $P5006, fb_tmp_162["%parrot_config"]
    set $P5008, $P5006
    goto if719_end1571
  if719_else1570:
    null $P5007
    set $P5008, $P5007
  if719_end1571:
    unless_null $P5008, vivi_7201572
    new $P5009, 'Hash'
    set $P5008, $P5009
  vivi_7201572:
    set $P5001, $P5008
    iter $P5003, $P5008
  for_next1573:
    unless $P5003, for_done1575
    shift $P5011, $P5003
  for_redo1574:
    .const 'Sub' $P5010 = 'cuid_216_1361096832.26832' 
    capture_lex $P5010
    $P5001 = $P5010($P5011)
    goto for_next1573
  for_done1575:
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5017, $P5015, $P5016, "%!config"
    set $P5012, $P5017
    iter $P5014, $P5017
  for_next1576:
    unless $P5014, for_done1578
    shift $P5019, $P5014
  for_redo1577:
    .const 'Sub' $P5018 = 'cuid_217_1361096832.26832' 
    capture_lex $P5018
    $P5012 = $P5018($P5019)
    goto for_next1576
  for_done1578:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1361096832.26832") :anon :lex :outer("cuid_137_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1563
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1564
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
.sub "" :subid("cuid_217_1361096832.26832") :anon :lex :outer("cuid_137_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1566
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language"
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1567
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
.sub "vmstat" :subid("cuid_138_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1572
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
.sub "nqpevent" :subid("cuid_139_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1580
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_219_1361096832.26832' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_11, default1597
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5010
  default1597:
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if722_end1582 
    set $P5004, $P101
  if722_end1582:
    unless $P5004 goto if721_end1580 
.annotate 'line', 1584
    $P5006 = $P101."flush"()
  if721_end1580:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if723_end1584 
    .const 'Sub' $P5007 = 'cuid_219_1361096832.26832' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if723_end1584:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_219_1361096832.26832") :anon :lex :outer("cuid_139_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1587
    .const 'Sub' $P5022 = 'cuid_218_1361096832.26832' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_164 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5005, "$spec"
    set fb_tmp_163, $P5005
    repr_defined $I5001, fb_tmp_163
    unless $I5001 goto if724_else1585 
    set $P5006, fb_tmp_163[0]
    set $P5008, $P5006
    goto if724_end1586
  if724_else1585:
    null $P5007
    set $P5008, $P5007
  if724_end1586:
    unless_null $P5008, vivi_7251587
    nqp_get_sc_object $P5009, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5009
  vivi_7251587:
    set $P101, $P5008
    find_lex $P5010, "$spec"
    set fb_tmp_164, $P5010
    repr_defined $I5002, fb_tmp_164
    unless $I5002 goto if726_else1588 
    set $P5011, fb_tmp_164[1]
    set $P5013, $P5011
    goto if726_end1589
  if726_else1588:
    null $P5012
    set $P5013, $P5012
  if726_end1589:
    unless_null $P5013, vivi_7271590
    nqp_get_sc_object $P5014, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5013, $P5014
  vivi_7271590:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if728_else1591 
    .const 'Sub' $P5015 = 'cuid_218_1361096832.26832' 
    capture_lex $P5015
    $P5016 = $P5015()
    goto if728_end1592
  if728_else1591:
.annotate 'line', 1596
.annotate 'line', 1597
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    nqpevent_fh $P5017, $P5019
  if728_end1592:
    set $S5003, $P102
    iseq $I5005, $S5003, ""
    unless $I5005 goto if730_else1595 
    box $P5021, 31
    set $P5020, $P5021
    goto if730_end1596
  if730_else1595:
    set $P5020, $P102
  if730_end1596:
    set $I5006, $P5020
    nqpdebflags $I5004, $I5006
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_218_1361096832.26832") :anon :lex :outer("cuid_219_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1591
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    new $P5002, "FileHandle"
    set $P101, $P5002
.annotate 'line', 1593
    find_lex $P5003, "$file"
    $P5004 = $P101."open"($P5003, "w")
    if $P5004 goto unless729_end1594 
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$file"
    set $S5002, $P5007
    concat $S5001, "Cannot write to ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless729_end1594:
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_140_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1604
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_220_1361096832.26832' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, "ResizableStringArray"
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1600:
    unless $P5005, for_done1602
    shift $P5010, $P5005
  for_redo1601:
    .const 'Sub' $P5009 = 'cuid_220_1361096832.26832' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1600
  for_done1602:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_bind_attr_obj $P5011, $P5012, "@!stages", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_220_1361096832.26832") :anon :lex :outer("cuid_140_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1606
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if731_end1599 
.annotate 'line', 1607
.annotate 'line', 1608
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if731_end1599:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_141_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1614
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_221_1361096832.26832' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_222_1361096832.26832' 
    capture_lex $P5035 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_165 
    .local pmc fb_tmp_166 
    .local pmc fb_tmp_167 
    .local pmc fb_tmp_168 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1603
    .lex "RETURN", $P104
    set fb_tmp_165, _lex_param_2
    repr_defined $I5001, fb_tmp_165
    unless $I5001 goto if733_else1607 
    set $P5004, fb_tmp_165["before"]
    set $P5006, $P5004
    goto if733_end1608
  if733_else1607:
    null $P5005
    set $P5006, $P5005
  if733_end1608:
    unless_null $P5006, vivi_7341609
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_7341609:
    unless $P5006 goto if732_else1605 
.annotate 'line', 1617
    set fb_tmp_166, _lex_param_2
    repr_defined $I5002, fb_tmp_166
    unless $I5002 goto if735_else1610 
    set $P5008, fb_tmp_166["before"]
    set $P5010, $P5008
    goto if735_end1611
  if735_else1610:
    null $P5009
    set $P5010, $P5009
  if735_end1611:
    unless_null $P5010, vivi_7361612
    nqp_get_sc_object $P5011, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5010, $P5011
  vivi_7361612:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if732_end1606
  if732_else1605:
    set fb_tmp_167, _lex_param_2
    repr_defined $I5003, fb_tmp_167
    unless $I5003 goto if738_else1615 
    set $P5013, fb_tmp_167["after"]
    set $P5015, $P5013
    goto if738_end1616
  if738_else1615:
    null $P5014
    set $P5015, $P5014
  if738_end1616:
    unless_null $P5015, vivi_7391617
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5015, $P5016
  vivi_7391617:
    unless $P5015 goto if737_else1613 
.annotate 'line', 1620
    set fb_tmp_168, _lex_param_2
    repr_defined $I5004, fb_tmp_168
    unless $I5004 goto if740_else1618 
    set $P5017, fb_tmp_168["after"]
    set $P5019, $P5017
    goto if740_end1619
  if740_else1618:
    null $P5018
    set $P5019, $P5018
  if740_end1619:
    unless_null $P5019, vivi_7411620
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_7411620:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if737_end1614
  if737_else1613:
    .const 'Sub' $P5022 = 'cuid_221_1361096832.26832' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if737_end1614:
  if732_end1606:
    new $P5025, "ResizableStringArray"
    set $P103, $P5025
.annotate 'line', 1630
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1625:
    unless $P5028, for_done1627
    shift $P5032, $P5028
  for_redo1626:
    .const 'Sub' $P5031 = 'cuid_222_1361096832.26832' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1625
  for_done1627:
.annotate 'line', 1643
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1604
  lexotic_1603:
    .get_results ($P5034)
  lexotic_1604:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_221_1361096832.26832") :anon :lex :outer("cuid_141_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1623
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1624
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    set $S5001, $P5006
    push $P101, $S5001
.annotate 'line', 1626
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(1)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_222_1361096832.26832") :anon :lex :outer("cuid_141_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1630
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if742_else1621 
.annotate 'line', 1631
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if743_else1623 
.annotate 'line', 1632
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    set $S5004, $P5004
    push $P5003, $S5004
    find_lex $P5005, "@new-stages"
    set $S5005, _lex_param_0
    push $P5005, $S5005
    set $P5009, $P5005
    goto if743_end1624
  if743_else1623:
.annotate 'line', 1635
    find_lex $P5006, "@new-stages"
    set $S5006, _lex_param_0
    push $P5006, $S5006
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    set $S5007, $P5008
    push $P5007, $S5007
    set $P5009, $P5007
  if743_end1624:
    set $P5011, $P5009
    goto if742_end1622
  if742_else1621:
.annotate 'line', 1639
    find_lex $P5010, "@new-stages"
    set $S5008, _lex_param_0
    push $P5010, $S5008
    set $P5011, $P5010
  if742_end1622:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_142_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1646
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_223_1361096832.26832' 
    capture_lex $P5027 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_169 
    .local pmc fb_tmp_170 
    .local pmc fb_tmp_171 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_169, $P101
    repr_defined $I5001, fb_tmp_169
    unless $I5001 goto if744_else1628 
    set $P5006, fb_tmp_169[0]
    set $P5008, $P5006
    goto if744_end1629
  if744_else1628:
    null $P5007
    set $P5008, $P5007
  if744_end1629:
    unless_null $P5008, vivi_7451630
    nqp_get_sc_object $P5009, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5009
  vivi_7451630:
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
    unless $I5003 goto if746_end1632 
.annotate 'line', 1652
    set fb_tmp_170, $P101
    repr_defined $I5004, fb_tmp_170
    unless $I5004 goto if747_else1633 
    set $P5012, fb_tmp_170[0]
    set $P5014, $P5012
    goto if747_end1634
  if747_else1633:
    null $P5013
    set $P5014, $P5013
  if747_end1634:
    unless_null $P5014, vivi_7481635
    nqp_get_sc_object $P5015, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5014, $P5015
  vivi_7481635:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_171, $P101
    repr_defined $I5005, fb_tmp_171
    unless $I5005 goto if749_else1636 
    set $P5017, fb_tmp_171[-1]
    set $P5019, $P5017
    goto if749_end1637
  if749_else1636:
    null $P5018
    set $P5019, $P5018
  if749_end1637:
    unless_null $P5019, vivi_7501638
    nqp_get_sc_object $P5020, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5020
  vivi_7501638:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if746_end1632:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1641:
    unless $P5024, for_done1643
    shift $P5026, $P5024
  for_redo1642:
    .const 'Sub' $P5025 = 'cuid_223_1361096832.26832' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1641
  for_done1643:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_223_1361096832.26832") :anon :lex :outer("cuid_142_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1660
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless751_end1640 
    find_lex $P5001, "@actual_ns"
    set $S5002, _lex_param_0
    push $P5001, $S5002
    set $P5002, $P5001
  unless751_end1640:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_143_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1666
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("cache") :optional 
    .param int haz_param_12 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 
    if haz_param_12, default1644
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_3, $P5001
  default1644:

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
.sub "user-progname" :subid("cuid_144_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1732
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname"
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1645
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1645:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_145_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1735
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_146_1361096832.26832") :anon :lex :outer("cuid_196_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1736
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_224_1361096832.26832") :anon :lex :outer("cuid_182_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1834
    .const 'Sub' $P5006 = 'cuid_147_1361096832.26832' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_148_1361096832.26832' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_149_1361096832.26832' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_150_1361096832.26832' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_151_1361096832.26832' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_147_1361096832.26832' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_148_1361096832.26832' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_149_1361096832.26832' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_150_1361096832.26832' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_151_1361096832.26832' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_147_1361096832.26832") :anon :lex :outer("cuid_224_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1838
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_148_1361096832.26832") :anon :lex :outer("cuid_224_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1843
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_149_1361096832.26832") :anon :lex :outer("cuid_224_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1844
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_150_1361096832.26832") :anon :lex :outer("cuid_224_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1846
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments"
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_151_1361096832.26832") :anon :lex :outer("cuid_224_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1850
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    .local pmc fb_tmp_173 
    .local pmc fb_tmp_174 
    .local pmc fb_tmp_175 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options"
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if755_else1651 
.annotate 'line', 1853
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options"
    set fb_tmp_173, $P5006
    repr_defined $I5003, fb_tmp_173
    unless $I5003 goto if757_else1655 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_173[$S5002]
    set $P5009, $P5007
    goto if757_end1656
  if757_else1655:
    null $P5008
    set $P5009, $P5008
  if757_end1656:
    unless_null $P5009, vivi_7581657
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_7581657:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if756_else1653 
.annotate 'line', 1854
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options"
    set fb_tmp_174, $P5013
    repr_defined $I5004, fb_tmp_174
    unless $I5004 goto if759_else1658 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_174[$S5003]
    set $P5016, $P5014
    goto if759_end1659
  if759_else1658:
    null $P5015
    set $P5016, $P5015
  if759_end1659:
    unless_null $P5016, vivi_7601660
    nqp_get_sc_object $P5017, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5016, $P5017
  vivi_7601660:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if756_end1654
  if756_else1653:
.annotate 'line', 1856
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options"
    set $S5004, _lex_param_1
    new $P5021, 'ResizablePMCArray'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options"
    set fb_tmp_175, $P5024
    repr_defined $I5005, fb_tmp_175
    unless $I5005 goto if761_else1661 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_175[$S5005]
    set $P5027, $P5025
    goto if761_end1662
  if761_else1661:
    null $P5026
    set $P5027, $P5026
  if761_end1662:
    unless_null $P5027, vivi_7621663
    nqp_get_sc_object $P5028, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5027, $P5028
  vivi_7621663:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if756_end1654:
    set $P5033, $P5029
    goto if755_end1652
  if755_else1651:
.annotate 'line', 1859
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options"
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if755_end1652:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_225_1361096832.26832") :anon :lex :outer("cuid_182_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1865
    .const 'Sub' $P5011 = 'cuid_152_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_153_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_154_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_155_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_156_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_157_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_158_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_159_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_160_1361096832.26832' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_161_1361096832.26832' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_152_1361096832.26832' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_153_1361096832.26832' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_154_1361096832.26832' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_155_1361096832.26832' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_156_1361096832.26832' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_157_1361096832.26832' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_158_1361096832.26832' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_159_1361096832.26832' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_160_1361096832.26832' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_161_1361096832.26832' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_152_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1871
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
.annotate 'line', 1872
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1873
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_153_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1877
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_154_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1881
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_226_1361096832.26832' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_13, default1667
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1667:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper"
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1664:
    unless $P5019, for_done1666
    shift $P5021, $P5019
  for_redo1665:
    .const 'Sub' $P5020 = 'cuid_226_1361096832.26832' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1664
  for_done1666:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_226_1361096832.26832") :anon :lex :outer("cuid_154_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1887
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1888
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_155_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1891
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper"
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_156_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1895
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
.sub "add-spec" :subid("cuid_157_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1900
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_227_1361096832.26832' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    unless $I5002 goto if763_else1668 
.annotate 'line', 1904
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1906
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if763_end1669
  if763_else1668:
.annotate 'line', 1907
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1909
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if763_end1669:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1670:
    unless $P5013, for_done1672
    shift $P5015, $P5013
  for_redo1671:
    .const 'Sub' $P5014 = 'cuid_227_1361096832.26832' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1670
  for_done1672:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_227_1361096832.26832") :anon :lex :outer("cuid_157_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1911
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options"
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_158_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1917
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1673
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless765_end1678 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless765_end1678:
    unless $I5003 goto if764_end1676 
    find_lex $P5001, "RETURN"
    $P5002 = $P5001(0)
  if764_end1676:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if766_end1680 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
  if766_end1680:
    box $P5005, 0
    goto lexotic_1674
  lexotic_1673:
    .get_results ($P5005)
  lexotic_1674:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_159_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1923
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_176 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_176, $P5004
    repr_defined $I5001, fb_tmp_176
    unless $I5001 goto if767_else1681 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_176[$S5001]
    set $P5007, $P5005
    goto if767_end1682
  if767_else1681:
    null $P5006
    set $P5007, $P5006
  if767_end1682:
    unless_null $P5007, vivi_7681683
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5008
  vivi_7681683:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_160_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1928
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_177 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options"
    set fb_tmp_177, $P5004
    repr_defined $I5001, fb_tmp_177
    unless $I5001 goto if769_else1684 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_177[$S5001]
    set $P5007, $P5005
    goto if769_end1685
  if769_else1684:
    null $P5006
    set $P5007, $P5006
  if769_end1685:
    unless_null $P5007, vivi_7701686
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5008
  vivi_7701686:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_161_1361096832.26832") :anon :lex :outer("cuid_225_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1933
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_228_1361096832.26832' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_229_1361096832.26832' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_231_1361096832.26832' 
    capture_lex $P5031 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_180 
    .local pmc pkg_lookup_tmp_36 
    .local pmc pkg_lookup_tmp_35 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_228_1361096832.26832' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_229_1361096832.26832' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1700
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1937
    nqp_get_sc_object $P5009, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    set pkg_lookup_tmp_35, $P5009
    get_who $P5010, pkg_lookup_tmp_35
    exists $I5002, $P5010["HLL"]
    unless $I5002 goto if778_else1704 
    get_who $P5012, pkg_lookup_tmp_35
    set $P5011, $P5012["HLL"]
    set $P5014, $P5011
    goto if778_end1705
  if778_else1704:
    nqp_get_sc_object $P5013, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5014, $P5013
  if778_end1705:
    set pkg_lookup_tmp_36, $P5014
    get_who $P5015, pkg_lookup_tmp_36
    exists $I5003, $P5015["CommandLine"]
    unless $I5003 goto if779_else1706 
    get_who $P5017, pkg_lookup_tmp_36
    set $P5016, $P5017["CommandLine"]
    set $P5019, $P5016
    goto if779_end1707
  if779_else1706:
    nqp_get_sc_object $P5018, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5019, $P5018
  if779_end1707:
    get_who $P5008, $P5019
    set fb_tmp_180, $P5008
    repr_defined $I5001, fb_tmp_180
    unless $I5001 goto if777_else1702 
    set $P5020, fb_tmp_180["Result"]
    set $P5022, $P5020
    goto if777_end1703
  if777_else1702:
    null $P5021
    set $P5022, $P5021
  if777_end1703:
    unless_null $P5022, vivi_7801708
    nqp_get_sc_object $P5023, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5022, $P5023
  vivi_7801708:
    $P5024 = $P5022."new"()
    set $P103, $P5024
.annotate 'line', 1938
    $P103."init"()
  while781_test1709:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5004, $N5002, $N5003
    box $P5028, $I5004
    set $P5027, $P5028
    unless $I5004 goto while781_done1713 
  while781_redo1711:
    .const 'Sub' $P5025 = 'cuid_231_1361096832.26832' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
    goto while781_test1709 
  while781_done1713:
    find_lex $P5029, "RETURN"
    $P5030 = $P5029($P103)
    goto lexotic_1701
  lexotic_1700:
    .get_results ($P5030)
  lexotic_1701:
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_228_1361096832.26832") :anon :lex :outer("cuid_161_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1941
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_2 
    .local pmc fb_tmp_178 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if771_else1687 
.annotate 'line', 1942
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if771_end1688
  if771_else1687:
.annotate 'line', 1944
    find_lex $P5004, "$i"
    set tmp_2, $P5004
    set $N5006, tmp_2
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5004, "@args"
    set fb_tmp_178, $P5004
    repr_defined $I5002, fb_tmp_178
    unless $I5002 goto if772_else1689 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_178[$I5003]
    set $P5008, $P5005
    goto if772_end1690
  if772_else1689:
    null $P5007
    set $P5008, $P5007
  if772_end1690:
    unless_null $P5008, vivi_7731691
    nqp_get_sc_object $P5009, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5009
  vivi_7731691:
    set $P5010, $P5008
  if771_end1688:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_229_1361096832.26832") :anon :lex :outer("cuid_161_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1952
    .local pmc tmp_3 
    .local pmc fb_tmp_179 
    .local pmc tmp_4 
    find_lex $P5001, "$i"
    set tmp_3, $P5001
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while774_test1692:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while774_done1696 
  while774_redo1694:
.annotate 'line', 1954
.annotate 'line', 1955
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_179, $P5004
    repr_defined $I5002, fb_tmp_179
    unless $I5002 goto if775_else1697 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_179[$I5003]
    set $P5008, $P5005
    goto if775_end1698
  if775_else1697:
    null $P5007
    set $P5008, $P5007
  if775_end1698:
    unless_null $P5008, vivi_7761699
    nqp_get_sc_object $P5009, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5008, $P5009
  vivi_7761699:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_4, $P5010
    set $N5004, tmp_4
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_4
    goto while774_test1692 
  while774_done1696:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1361096832.26832") :anon :lex :outer("cuid_161_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1960
    .const 'Sub' $P5033 = 'cuid_230_1361096832.26832' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_234_1361096832.26832' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_181 
    .local pmc fb_tmp_188 
    .local pmc tmp_6 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_181, $P5002
    repr_defined $I5001, fb_tmp_181
    unless $I5001 goto if782_else1714 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_181[$I5002]
    set $P5006, $P5003
    goto if782_end1715
  if782_else1714:
    null $P5005
    set $P5006, $P5005
  if782_end1715:
    unless_null $P5006, vivi_7831716
    nqp_get_sc_object $P5007, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5006, $P5007
  vivi_7831716:
    set $P101, $P5006
.annotate 'line', 1962
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if784_else1717 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if785_else1719 
    .const 'Sub' $P5011 = 'cuid_230_1361096832.26832' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if785_end1720
  if785_else1719:
    .const 'Sub' $P5013 = 'cuid_234_1361096832.26832' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if785_end1720:
    goto if784_end1718
  if784_else1717:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper"
    set fb_tmp_188, $P5019
    repr_defined $I5004, fb_tmp_188
    unless $I5004 goto if816_else1777 
    set $S5003, $P101
    set $P5020, fb_tmp_188[$S5003]
    set $P5022, $P5020
    goto if816_end1778
  if816_else1777:
    null $P5021
    set $P5022, $P5021
  if816_end1778:
    unless_null $P5022, vivi_8171779
    nqp_get_sc_object $P5023, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5022, $P5023
  vivi_8171779:
    unless $P5022 goto if815_else1775 
.annotate 'line', 2021
.annotate 'line', 2022
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if815_end1776
  if815_else1775:
.annotate 'line', 2023
.annotate 'line', 2024
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg"
    set $P5031, $P5029
    unless $P5029 goto if818_end1781 
.annotate 'line', 2025
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if818_end1781:
    set $P5032, $P5031
  if815_end1776:
  if784_end1718:
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
.sub "" :subid("cuid_230_1361096832.26832") :anon :lex :outer("cuid_231_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1963
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_182 
    .local pmc fb_tmp_183 
    .local pmc fb_tmp_184 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_182, $P5005
    repr_defined $I5001, fb_tmp_182
    unless $I5001 goto if786_else1721 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_182[$I5002]
    set $P5009, $P5006
    goto if786_end1722
  if786_else1721:
    null $P5008
    set $P5009, $P5008
  if786_end1722:
    unless_null $P5009, vivi_7871723
    nqp_get_sc_object $P5010, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5009, $P5010
  vivi_7871723:
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
    unless $I5004 goto if788_else1724 
.annotate 'line', 1970
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
    goto if788_end1725
  if788_else1724:
.annotate 'line', 1974
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if789_end1727 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if789_end1727:
  if788_end1725:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options"
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless790_end1729 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless790_end1729:
.annotate 'line', 1979
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if792_end1733 
    set $P5032, $P104
  if792_end1733:
    unless $P5032 goto if791_end1731 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if791_end1731:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if794_end1737 
.annotate 'line', 1980
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if794_end1737:
    unless $P5038 goto if793_end1735 
.annotate 'line', 1981
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if793_end1735:
.annotate 'line', 1983
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper"
    set fb_tmp_183, $P5045
    repr_defined $I5010, fb_tmp_183
    unless $I5010 goto if796_else1740 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_183[$S5016]
    set $P5048, $P5046
    goto if796_end1741
  if796_else1740:
    null $P5047
    set $P5048, $P5047
  if796_end1741:
    unless_null $P5048, vivi_7971742
    nqp_get_sc_object $P5049, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5048, $P5049
  vivi_7971742:
    set $P5059, $P5048
    unless $P5048 goto if795_end1739 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_184, $P5050
    repr_defined $I5011, fb_tmp_184
    unless $I5011 goto if798_else1743 
    set $P5052, fb_tmp_184["slurp-rest"]
    set $P5054, $P5052
    goto if798_end1744
  if798_else1743:
    null $P5053
    set $P5054, $P5053
  if798_end1744:
    unless_null $P5054, vivi_8001746
    nqp_get_sc_object $P5057, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_7991745
    nqp_get_sc_object $P5058, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5055, $P5058
  vivi_7991745:
    set $P5054, $P5055
  vivi_8001746:
    set $P5059, $P5054
  if795_end1739:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1361096832.26832") :anon :lex :outer("cuid_231_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1985
    .const 'Sub' $P5036 = 'cuid_233_1361096832.26832' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_185 
    .local pmc fb_tmp_186 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    unless $I5002 goto if801_else1747 
.annotate 'line', 1988
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options"
    set fb_tmp_185, $P5009
    repr_defined $I5003, fb_tmp_185
    unless $I5003 goto if803_else1751 
    set $S5004, $P101
    set $P5010, fb_tmp_185[$S5004]
    set $P5012, $P5010
    goto if803_end1752
  if803_else1751:
    null $P5011
    set $P5012, $P5011
  if803_end1752:
    unless_null $P5012, vivi_8041753
    nqp_get_sc_object $P5013, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5012, $P5013
  vivi_8041753:
    if $P5012 goto unless802_end1750 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless802_end1750:
.annotate 'line', 1991
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if805_else1754 
.annotate 'line', 1992
    find_lex $P5018, "$result"
.annotate 'line', 1993
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if805_end1755
  if805_else1754:
.annotate 'line', 1994
.annotate 'line', 1995
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if805_end1755:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper"
    set fb_tmp_186, $P5026
    repr_defined $I5004, fb_tmp_186
    unless $I5004 goto if807_else1758 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_186[$S5009]
    set $P5029, $P5027
    goto if807_end1759
  if807_else1758:
    null $P5028
    set $P5029, $P5028
  if807_end1759:
    unless_null $P5029, vivi_8081760
    nqp_get_sc_object $P5030, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5029, $P5030
  vivi_8081760:
    set $P5032, $P5029
    unless $P5029 goto if806_end1757 
.annotate 'line', 1997
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if806_end1757:
    set $P5035, $P5032
    goto if801_end1748
  if801_else1747:
    .const 'Sub' $P5033 = 'cuid_233_1361096832.26832' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if801_end1748:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1361096832.26832") :anon :lex :outer("cuid_234_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1998
    .const 'Sub' $P5009 = 'cuid_232_1361096832.26832' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while809_handlers1764
    push_eh $P5007
  while809_test1761:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while809_done1765 
  while809_redo1763:
    .const 'Sub' $P5004 = 'cuid_232_1361096832.26832' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while809_test1761 
  while809_handlers1764:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while809_test1761
    eq $P5007, .CONTROL_LOOP_REDO, while809_redo1763
  while809_done1765:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1361096832.26832") :anon :lex :outer("cuid_233_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2000
    .lex "$o", $P101 
    .local pmc fb_tmp_187 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
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
    nqp_get_sc_object $P5007, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options"
    set fb_tmp_187, $P5008
    repr_defined $I5002, fb_tmp_187
    unless $I5002 goto if811_else1768 
    set $S5003, $P101
    set $P5009, fb_tmp_187[$S5003]
    set $P5011, $P5009
    goto if811_end1769
  if811_else1768:
    null $P5010
    set $P5011, $P5010
  if811_end1769:
    unless_null $P5011, vivi_8121770
    nqp_get_sc_object $P5012, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5011, $P5012
  vivi_8121770:
    unless $P5011 goto if810_else1766 
.annotate 'line', 2002
.annotate 'line', 2003
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if813_else1771 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if814_end1774 
.annotate 'line', 2004
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if814_end1774:
.annotate 'line', 2007
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
    goto if813_end1772
  if813_else1771:
.annotate 'line', 2010
.annotate 'line', 2011
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if813_end1772:
    goto if810_end1767
  if810_else1766:
.annotate 'line', 2014
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if810_end1767:
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
.sub "" :subid("cuid_235_1361096832.26832") :anon :lex :outer("cuid_182_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2055
    .const 'Sub' $P5014 = 'cuid_162_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_163_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_164_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_165_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_166_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_167_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_168_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_169_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_170_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_171_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_172_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_173_1361096832.26832' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_174_1361096832.26832' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_162_1361096832.26832' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_163_1361096832.26832' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_164_1361096832.26832' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_165_1361096832.26832' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_166_1361096832.26832' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_167_1361096832.26832' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_168_1361096832.26832' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_169_1361096832.26832' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_170_1361096832.26832' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_171_1361096832.26832' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_172_1361096832.26832' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_173_1361096832.26832' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_174_1361096832.26832' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_162_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2086
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_14 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    .local pmc fb_tmp_189 
    .local pmc fb_tmp_190 
    .local pmc fb_tmp_191 
    .local pmc pkg_viv_tmp_16 
    if haz_param_14, default1793
    box $P5046, "<unknown>"
    set _lex_param_2, $P5046
  default1793:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_bind_attr_obj $P5004, $P5005, "$!handle", _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!addr_to_slot", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!fixup_tasks", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!load_dependency_tasks", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    find_dynamic_lex $P5017, "%*COMPILING"
    unless_null $P5017, fallback1786
    nqp_get_sc_object $P5019, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    get_who $P5018, $P5019
    set pkg_viv_tmp_16, $P5018
    set fb_tmp_191, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_191
    unless $I5003 goto if821_else1787 
    set $P5020, fb_tmp_191["%COMPILING"]
    set $P5022, $P5020
    goto if821_end1788
  if821_else1787:
    null $P5021
    set $P5022, $P5021
  if821_end1788:
    unless_null $P5022, vivi_8221789
    new $P5023, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5023
    set $P5022, $P5023
  vivi_8221789:
    unless_null $P5022, vivi_8231790
    die "Contextual %*COMPILING not found"
    box $P5024, "Contextual %*COMPILING not found"
    set $P5022, $P5024
  vivi_8231790:
    set $P5017, $P5022
  fallback1786:
    set fb_tmp_190, $P5017
    repr_defined $I5002, fb_tmp_190
    unless $I5002 goto if820_else1784 
    set $P5025, fb_tmp_190["%?OPTIONS"]
    set $P5027, $P5025
    goto if820_end1785
  if820_else1784:
    null $P5026
    set $P5027, $P5026
  if820_end1785:
    unless_null $P5027, vivi_8241791
    nqp_get_sc_object $P5028, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5027, $P5028
  vivi_8241791:
    set fb_tmp_189, $P5027
    repr_defined $I5001, fb_tmp_189
    unless $I5001 goto if819_else1782 
    set $P5029, fb_tmp_189["precomp"]
    set $P5031, $P5029
    goto if819_end1783
  if819_else1782:
    null $P5030
    set $P5031, $P5030
  if819_end1783:
    unless_null $P5031, vivi_8251792
    nqp_get_sc_object $P5032, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5031, $P5032
  vivi_8251792:
    repr_bind_attr_obj $P5015, $P5016, "$!precomp_mode", $P5031
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    box $P5035, 0
    repr_bind_attr_obj $P5033, $P5034, "$!num_code_refs", $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    new $P5038, 'ResizablePMCArray'
    repr_bind_attr_obj $P5036, $P5037, "$!code_ref_blocks", $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!sc"
    $P5042 = $P5041."set_description"(_lex_param_2)
    nqp_decontainerize $P5043, _lex_param_0
    nqp_get_sc_object $P5044, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!sc"
    nqp_push_compiling_sc $P5045
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "slot_for_object" :subid("cuid_163_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2103
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$slot", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .local pmc fb_tmp_192 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!addr_to_slot"
    set fb_tmp_192, $P5004
    repr_defined $I5001, fb_tmp_192
    unless $I5001 goto if826_else1794 
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5005, fb_tmp_192[$S5001]
    set $P5007, $P5005
    goto if826_end1795
  if826_else1794:
    null $P5006
    set $P5007, $P5006
  if826_end1795:
    unless_null $P5007, vivi_8271796
    nqp_get_sc_object $P5008, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P5007, $P5008
  vivi_8271796:
    set $P101, $P5007
    defined $I5003, $P101
    if $I5003 goto unless828_end1798 
.annotate 'line', 2105
    box $P5009, "slot_for_object called on object not in context"
    die $P5009
  unless828_end1798:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_164_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2112
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc"
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc"
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc"
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!addr_to_slot"
    get_id $I5002, _lex_param_1
    set $S5001, $I5002
    set $P5014[$S5001], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_165_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2121
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs"
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs"
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", $P5010
.annotate 'line', 2124
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks"
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc"
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_166_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2130
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_167_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2135
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_168_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_16 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_15, default1805
    nqp_get_sc_object $P5015, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5015
  default1805:
    if haz_param_16, default1806
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_2, $P5016
  default1806:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if829_else1799 
.annotate 'line', 2142
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if830_end1802 
.annotate 'line', 2143
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if830_end1802:
    set $P5014, $P5008
    goto if829_end1800
  if829_else1799:
.annotate 'line', 2145
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if831_end1804 
.annotate 'line', 2146
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if831_end1804:
    set $P5014, $P5013
  if829_end1800:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_169_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2152
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_17, default1813
    nqp_get_sc_object $P5015, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_1, $P5015
  default1813:
    if haz_param_18, default1814
    nqp_get_sc_object $P5016, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511", 25
    set _lex_param_2, $P5016
  default1814:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode"
    unless $P5003 goto if832_else1807 
.annotate 'line', 2153
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if833_end1810 
.annotate 'line', 2154
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks"
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if833_end1810:
    set $P5014, $P5008
    goto if832_end1808
  if832_else1807:
.annotate 'line', 2156
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if834_end1812 
.annotate 'line', 2157
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks"
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if834_end1812:
    set $P5014, $P5013
  if832_end1808:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_170_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2162
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_171_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2167
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_172_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2171
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_173_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2176
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_174_1361096832.26832") :anon :lex :outer("cuid_235_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2181
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1361096832.26832") :load :init
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
    .const 'Sub' $P5001 = 'cuid_236_1361096832.26832' 
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
    .const 'Sub' $P5001 = "cuid_182_1361096832.26832" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/stage2/gen/NQPHLL.pm")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "QAST"
    push $P5004, "QRegex"
    push $P5004, "NQPCursorRole"
    push $P5004, "A4C076488997510F4D50966B1725835556A2BF27-1361096826.57431"
    push $P5004, "src/stage2/QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "HLL"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "73035D9E205201A1EAD53318FD6617F24572C242-1361096821.78511"
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
    push $P5004, "pbc"
    push $P5004, "init"
    push $P5004, "init_packfile"
    push $P5004, "compile_and_init"
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
    push $P5004, "alt_nfa__1_1361096832.45552"
    push $P5004, "alt_nfa__2_1361096832.48672"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1361096832.61153"
    push $P5004, "alt_nfa__4_1361096832.61153"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1361096832.64272"
    push $P5004, "Ee"
    push $P5004, "alt_nfa__6_1361096832.73633"
    push $P5004, "alt_nfa__7_1361096832.75192"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1361096832.82993"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1361096832.87672"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "0CFA2EB01BFB7173CB04D945815D8B274BC236CB-1361096817.5107"
    push $P5004, "src/stage2/gen/nqp-mo.pm"
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
    push $P5004, "790414E005FB5592A735E24F73F0C2BBC92B5F1E-1361096824.28111"
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
    push $P5004, "Actions"
    push $P5004, "Compiler"
    push $P5004, "CommandLine"
    push $P5004, "World"
    push $P5004, "Result"
    push $P5004, "Parser"
    .const 'Sub' $P5005 = 'cuid_236_1361096832.26832' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAAFAAAAaAAAAA0AAADQAAAAGiAAAOwAAADaLgAARM8AAAAAAABEzwAAAAAAAETPAABEzwAAAAAAAAUAAAAGAAAADgAAAA8AAAANAQAAAAAAABABAAARAQAAIAEAACEBAAABAAAAAAAAAAEAAAAaAQAAAQAAANIBAAABAAAAfAIAAAEAAAB6CwAAAQAAAKwOAAABAAAA7BMAAAEAAADGFQAAAQAAABQYAAABAAAAGhsAAAEAAADcHAAAAQAAAJQdAAABAAAAhB4AAAAAAAC3AAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAuAAAAAMAAAACAAAAAAC5AAAABAAAAAIAAQAAACEAAAAHAAAAAgABAAAAVgAAAAgAAAACAAEAAABjAAAACQAAAAIAAQAAAGkAAAAKAAAAAgABAAAAbQAAAAsAAAACAAAAAAC6AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAC7AAAAAAAAAAEAAAAKAAEAAAAMAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAADAP////////////////////8AAAAAvAAAAAAAAAACAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMA/////////////////////wAAAAC9AAAAAAAAAAMAAAAKAAAAAAAKAH8AAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAAGgAAAAIAAQAAAGQAAAAbAAAAAgABAAAAZQAAABwAAAACAAEAAABmAAAAHQAAAAIAAQAAAGcAAAAeAAAAAgABAAAAaAAAAB8AAAACAAEAAAB6AAAAIAAAAAIAAQAAAHsAAAAhAAAAAgABAAAAfAAAACIAAAACAAEAAAB9AAAAIwAAAAIAAQAAAH4AAAAkAAAAAgABAAAAfwAAACUAAAACAAEAAACAAAAAJgAAAAIAAQAAAIEAAAAnAAAAAgABAAAAggAAACgAAAACAAEAAACDAAAAKQAAAAIAAQAAAIQAAAAqAAAAAgABAAAAhQAAACsAAAACAAEAAACGAAAALAAAAAIAAQAAAIcAAAAtAAAAAgABAAAAiAAAAC4AAAACAAEAAACJAAAALwAAAAIAAQAAAIoAAAAwAAAAAgABAAAAiwAAADEAAAACAAEAAACMAAAAMgAAAAIAAQAAAI0AAAAzAAAAAgABAAAAjgAAADQAAAACAAEAAACPAAAANQAAAAIAAQAAAJAAAAA2AAAAAgABAAAAkQAAADcAAAACAAEAAACSAAAAOAAAAAIAAQAAAJMAAAA5AAAAAgABAAAAlAAAADoAAAACAAEAAACVAAAAOwAAAAIAAQAAAJYAAAA8AAAAAgABAAAAlwAAAD0AAAACAAEAAACYAAAAPgAAAAIAAQAAAJkAAAA/AAAAAgABAAAAmgAAAEAAAAACAAEAAACbAAAAQQAAAAIAAQAAAJwAAABCAAAAAgABAAAAnQAAAEMAAAACAAEAAACeAAAARAAAAAIAAQAAAJ8AAABFAAAAAgABAAAAoAAAAEYAAAACAAEAAAChAAAARwAAAAIAAQAAAKIAAABIAAAAAgABAAAAowAAAEkAAAACAAEAAACkAAAASgAAAAIAAQAAAKUAAABLAAAAAgABAAAApgAAAEwAAAACAAEAAACnAAAATQAAAAIAAQAAAKgAAABOAAAAAgABAAAAqQAAAE8AAAACAAEAAACqAAAAUAAAAAIAAQAAAKsAAABRAAAAAgAAAAAANgAAAFIAAAACAAAAAAAEAAAAUwAAAAIAAAAAAAUAAABUAAAAAgAAAAAABgAAAFUAAAACAAAAAAAHAAAAVgAAAAIAAAAAAAgAAABXAAAAAgAAAAAACQAAAFgAAAACAAAAAAAKAAAAWQAAAAIAAAAAAAsAAABaAAAAAgAAAAAADAAAAFsAAAACAAAAAAANAAAAXAAAAAIAAAAAAA4AAABdAAAAAgAAAAAADwAAAF4AAAACAAAAAAAQAAAAXwAAAAIAAAAAABEAAABgAAAAAgAAAAAAEgAAAGEAAAACAAAAAAATAAAAYgAAAAIAAAAAABQAAABjAAAAAgAAAAAAFQAAAGQAAAACAAAAAAAWAAAAZQAAAAIAAAAAABcAAABmAAAAAgAAAAAAGAAAAGcAAAACAAAAAAAZAAAAaAAAAAIAAAAAABoAAABpAAAAAgAAAAAAGwAAAGoAAAACAAAAAAAcAAAAawAAAAIAAAAAAB0AAABsAAAAAgAAAAAAHgAAAG0AAAACAAAAAAAfAAAAbgAAAAIAAAAAACAAAABvAAAAAgAAAAAAIQAAAHAAAAACAAAAAAAiAAAAcQAAAAIAAAAAACMAAAByAAAAAgAAAAAAJAAAAHMAAAACAAAAAAAlAAAAdAAAAAIAAAAAACYAAAB1AAAAAgAAAAAAJwAAAHYAAAACAAAAAAAoAAAAdwAAAAIAAAAAACkAAAB4AAAAAgAAAAAAKgAAAHkAAAACAAAAAAArAAAAegAAAAIAAAAAACwAAAB7AAAAAgAAAAAALQAAAHwAAAACAAAAAAAwAAAAfQAAAAIAAAAAADIAAAB+AAAAAgAAAAAAMwAAAH8AAAACAAAAAAA0AAAAgAAAAAIAAAAAADUAAACBAAAAAgAAAAAANwAAAIIAAAACAAAAAAA4AAAAgwAAAAIAAAAAADkAAACEAAAAAgAAAAAAOgAAAIUAAAACAAAAAAA7AAAAhgAAAAIAAAAAADwAAACHAAAAAgAAAAAAPQAAAIgAAAACAAAAAAA+AAAAiQAAAAIAAAAAAD8AAACKAAAAAgAAAAAAQAAAAIsAAAACAAAAAABBAAAAjAAAAAIAAAAAAEIAAACNAAAAAgAAAAAAQwAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAADAAAAAgABAAAAYwAAAAIAAgAAABkAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABlAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGQAAAAEAAQACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGQAAAAMAAgABAAAAYwAAAAoACQAAAI4AAAAEAAAAAAAAAAAAjwAAAAQAAQAAAAAAAACQAAAABAACAAAAAAAAAJEAAAAEAAMAAAAAAAAAkgAAAAQABAAAAAAAAACTAAAABAAFAAAAAAAAAJQAAAAEAAYAAAAAAAAAlQAAAAQABwAAAAAAAACWAAAABAAIAAAAAAAAAAIAAAAAAAMAAAADAP////////////////////8AAAAAvgAAAAAAAABEAAAACgAAAAAACgAsAAAADQAAAAIAAgAAABoAAAAQAAAAAgACAAAAGwAAABEAAAACAAIAAAAcAAAAEgAAAAIAAgAAAB0AAAATAAAAAgACAAAAHgAAABQAAAACAAIAAAAhAAAAFQAAAAIAAgAAACMAAAAWAAAAAgACAAAAJQAAABcAAAACAAIAAAAmAAAAGAAAAAIAAgAAACgAAAAZAAAAAgACAAAAKQAAAJcAAAACAAAAAABFAAAAmAAAAAIAAAAAAEYAAACZAAAAAgAAAAAARwAAAIcAAAACAAAAAABIAAAAWgAAAAIAAAAAAEkAAABTAAAAAgAAAAAASgAAAF4AAAACAAAAAABLAAAAXwAAAAIAAAAAAEwAAABrAAAAAgAAAAAATQAAAGwAAAACAAAAAABOAAAAYwAAAAIAAAAAAE8AAABlAAAAAgAAAAAAUAAAAGcAAAACAAAAAABRAAAAaQAAAAIAAAAAAFIAAACCAAAAAgAAAAAAUwAAAGEAAAACAAAAAABUAAAAYgAAAAIAAAAAAFUAAABvAAAAAgAAAAAAVgAAAHAAAAACAAAAAABXAAAAcQAAAAIAAAAAAFgAAAByAAAAAgAAAAAAWQAAAHMAAAACAAAAAABaAAAAdAAAAAIAAAAAAFsAAAB1AAAAAgAAAAAAXAAAAHYAAAACAAAAAABdAAAAdwAAAAIAAAAAAF4AAAB4AAAAAgAAAAAAXwAAAHkAAAACAAAAAABgAAAAegAAAAIAAAAAAGEAAAB7AAAAAgAAAAAAYgAAAHwAAAACAAAAAABjAAAAfQAAAAIAAAAAAGQAAAB+AAAAAgAAAAAAZQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABEAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAARAAAAAMA/////////////////////wAAAAC/AAAAAAAAAGYAAAAKAAAAAAAKADsAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgAAAAAAZwAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAAmgAAAAIAAAAAAGgAAACbAAAAAgAAAAAAaQAAAJwAAAACAAAAAABqAAAAnQAAAAIAAAAAAGsAAACeAAAAAgAAAAAAbAAAAJ8AAAACAAAAAABtAAAAoAAAAAIAAAAAAG4AAAChAAAAAgAAAAAAbwAAAKIAAAACAAAAAABwAAAAowAAAAIAAAAAAHEAAACkAAAAAgAAAAAAcgAAAIAAAAACAAAAAABzAAAApQAAAAIAAAAAAHQAAACmAAAAAgAAAAAAdQAAAKcAAAACAAAAAAB2AAAAqAAAAAIAAAAAAHcAAACpAAAAAgAAAAAAeAAAAKoAAAACAAAAAAB5AAAAqwAAAAIAAAAAAHoAAACsAAAAAgAAAAAAewAAAK0AAAACAAAAAAB8AAAArgAAAAIAAAAAAH0AAACvAAAAAgAAAAAAfgAAALAAAAACAAAAAAB/AAAAsQAAAAIAAAAAAIAAAAAcAAAAAgAAAAAAgQAAALIAAAACAAAAAACCAAAAswAAAAIAAAAAAIMAAAC0AAAAAgAAAAAAhAAAALUAAAACAAAAAACFAAAAtgAAAAIAAAAAAIYAAAC3AAAAAgAAAAAAhwAAALgAAAACAAAAAACIAAAAuQAAAAIAAAAAAIkAAAC6AAAAAgAAAAAAigAAALsAAAACAAAAAACLAAAAvAAAAAIAAAAAAIwAAAC9AAAAAgAAAAAAjQAAAL4AAAACAAAAAACOAAAAvwAAAAIAAAAAAI8AAADAAAAAAgAAAAAAkAAAAMEAAAACAAAAAACRAAAAwgAAAAIAAAAAAJIAAADDAAAAAgAAAAAAkwAAAMQAAAACAAAAAACUAAAAxQAAAAIAAAAAAJUAAADGAAAAAgAAAAAAlgAAAMcAAAACAAAAAACXAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAGYAAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAIAAgAAABkAAAACAAIAAAAZAAAAAQACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAABAAIAAgAAABkAAAABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAGYAAAAKAAsAAADIAAAABAAAAAAAAAAAAMkAAAAEAAEAAAAAAAAAygAAAAQAAgAAAAAAAADLAAAABAADAAAAAAAAAMwAAAAEAAQAAAAAAAAAzQAAAAQABQAAAAAAAADOAAAABAAGAAAAAAAAAM8AAAAEAAcAAAAAAAAA0AAAAAQACAAAAAAAAADRAAAABAAJAAAAAAAAANIAAAAEAAoAAAAAAAAA/////////////////////wAAAADAAAAAAAAAAJgAAAAKAAAAAAAKABAAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgACAAAAHQAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAAtwAAAAIAAAAAAJkAAADTAAAAAgAAAAAAmgAAANQAAAACAAAAAACbAAAA1QAAAAIAAAAAAJwAAADWAAAAAgAAAAAAnQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACYAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABkAAAADAAIAAAAAAJgAAAAKAAIAAADXAAAABAAAAAAAAAAAANgAAAAEAAEAAAAAAAAA/////////////////////wAAAADBAAAAAAAAAJ4AAAAKAAAAAAAKABQAAAANAAAAAgACAAAAGgAAABAAAAACAAIAAAAbAAAAEQAAAAIAAgAAABwAAAASAAAAAgAAAAAAnwAAABMAAAACAAIAAAAeAAAAFAAAAAIAAgAAACEAAAAVAAAAAgACAAAAIwAAABYAAAACAAIAAAAlAAAAFwAAAAIAAgAAACYAAAAYAAAAAgACAAAAKAAAABkAAAACAAIAAAApAAAA2QAAAAIAAAAAAKAAAACaAAAAAgAAAAAAoQAAANoAAAACAAAAAACiAAAA2wAAAAIAAAAAAKMAAADcAAAAAgAAAAAApAAAAN0AAAACAAAAAAClAAAA3gAAAAIAAAAAAKYAAADfAAAAAgAAAAAApwAAABwAAAACAAAAAACoAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAJ4AAAACAAIAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAEAAgACAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAZAAAAAwACAAAAAACeAAAACgAEAAAA4AAAAAQAAAAAAAAAAADYAAAABAABAAAAAAAAAOEAAAAEAAIAAAAAAAAA4gAAAAQAAwAAAAAAAAD/////////////////////AAAAAMIAAAAAAAAAqQAAAAoAAAAAAAoAGAAAAA0AAAACAAIAAAAaAAAAEAAAAAIAAgAAABsAAAARAAAAAgACAAAAHAAAABIAAAACAAIAAAAdAAAAEwAAAAIAAgAAAB4AAAAUAAAAAgACAAAAIQAAABUAAAACAAIAAAAjAAAAFgAAAAIAAgAAACUAAAAXAAAAAgACAAAAJgAAABgAAAACAAIAAAAoAAAAGQAAAAIAAgAAACkAAACaAAAAAgAAAAAAqgAAAOMAAAACAAAAAACrAAAA5AAAAAIAAAAAAKwAAADlAAAAAgAAAAAArQAAAOYAAAACAAAAAACuAAAA5wAAAAIAAAAAAK8AAADoAAAAAgAAAAAAsAAAAOkAAAACAAAAAACxAAAA6gAAAAIAAAAAALIAAADrAAAAAgAAAAAAswAAAOwAAAACAAAAAAC0AAAA7QAAAAIAAAAAALUAAADuAAAAAgAAAAAAtgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACpAAAAAgACAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGQAAAAIAAgAAABkAAAACAAIAAAAZAAAAAgACAAAAGQAAAAIAAgAAABkAAAABAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGQAAAAMAAgAAAAAAqQAAAAoACAAAAO8AAAAEAAAAAAAAAAAA8AAAAAQAAQAAAAAAAADxAAAABAACAAAAAAAAAPIAAAAEAAMAAAAAAAAA8wAAAAQABAAAAAAAAAD0AAAABAAFAAAAAAAAAPUAAAAEAAYAAAAAAAAA9gAAAAQABwAAAAAAAAD/////////////////////AAAAAOcAAAAAAAAAuAAAAAoAFAAAAB8BAAACAAUAAAADAAAAIgEAAAIABQAAAAgAAAAjAQAAAgAFAAAADAAAACQBAAACAAUAAAAiAAAAJQEAAAIABQAAACoAAAAmAQAAAgAFAAAALwAAACcBAAACAAUAAAA0AAAAKAEAAAIABQAAADkAAAApAQAAAgAFAAAAPQAAACoBAAACAAUAAABCAAAAKwEAAAIABQAAAEcAAAAsAQAAAgAFAAAAUAAAAC0BAAACAAUAAABSAAAALgEAAAIABQAAAFkAAAAvAQAAAgAFAAAAXQAAADABAAACAAUAAABiAAAAMQEAAAIABQAAAGcAAAAyAQAAAgAFAAAAbwAAADMBAAACAAUAAAByAAAANAEAAAIABQAAAHwAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAuAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAC4AAAAAwD/////////////////////AAAAAOgAAAAAAAAAuQAAAAoAAQAAADUBAAACAAEAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAALkAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAuQAAAAMA/////////////////////wAAAADpAAAAAAAAALoAAAAKAAUAAAA2AQAAAgAAAAAAAwAAADcBAAACAAAAAABEAAAAOAEAAAIAAAAAAGYAAAA5AQAAAgAAAAAA6gAAADoBAAACAAAAAACpAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAALoAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAugAAAAMA/////////////////////wAAAADrAAAAAAAAAOoAAAAKAAIAAAA7AQAAAgAAAAAAmAAAADwBAAACAAAAAACeAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAOoAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA6gAAAAMA/////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAACAAAABQAAAAAAAAABAAAAAgAAAAcAAAAUAAAAAQAAAAIAAAAHAAAADAEAAAEAAAACAAAABwAAACIBAAABAAAAAgAAAAcAAAA4AQAAAQAAAAIAAAAHAAAATgEAAAEAAAACAAAABwAAAGQBAAABAAAAAgAAAAcAAAB6AQAAAQAAAAIAAAAHAAAAkAEAAAEAAAACAAAABwAAAPABAAABAAAAAgAAAAcAAABeAgAAAQAAAAIAAAAHAAAA7AIAAAEAAAACAAAABwAAAOgDAAABAAAAAgAAAAcAAAA+BAAAAQAAAAIAAAAFAAAAngQAAAEAAAACAAAABwAAALIEAAABAAAAAgAAAAcAAACMBQAAAQAAAAIAAAAHAAAATgcAAAEAAAACAAAABwAAAHAIAAABAAAAAgAAAAcAAAB2CQAAAQAAAAIAAAAHAAAAlAoAAAEAAAACAAAABwAAAJoLAAABAAAAAgAAAAcAAAC4DAAAAQAAAAIAAAAHAAAAvg0AAAEAAAACAAAABwAAANwOAAABAAAAAgAAAAcAAADiDwAAAQAAAAIAAAAHAAAASBQAAAEAAAACAAAABwAAANQaAAABAAAAAgAAAAcAAADyGwAAAQAAAAIAAAAHAAAACBwAAAEAAAACAAAABwAAAMYcAAABAAAAAgAAAAcAAABuHQAAAQAAAAIAAAAHAAAALB4AAAEAAAACAAAABwAAAOoeAAABAAAAAgAAAAcAAACoHwAAAQAAAAIAAAAHAAAAZiAAAAEAAAACAAAABwAAACQhAAABAAAAAgAAAAcAAADiIQAAAQAAAAIAAAAHAAAAaiMAAAEAAAACAAAABwAAAPIkAAABAAAAAgAAAAcAAAC+JQAAAQAAAAIAAAAHAAAAiiYAAAEAAAACAAAABwAAAI4nAAABAAAAAgAAAAcAAADkJwAAAQAAAAIAAAAHAAAAOigAAAEAAAACAAAABwAAAIYoAAABAAAAAgAAAAcAAAAeKQAAAQAAAAIAAAAHAAAAJCoAAAEAAAACAAAABQAAAIwuAAABAAAAAgAAAAUAAACgLgAAAQAAAAIAAAAFAAAAtC4AAAEAAAACAAAABQAAAMguAAABAAAAAgAAAAcAAADcLgAAAQAAAAIAAAAHAAAArC8AAAEAAAACAAAABQAAAAIwAAABAAAAAgAAAAUAAAAWMAAAAQAAAAIAAAAFAAAAKjAAAAEAAAACAAAABQAAAD4wAAABAAAAAgAAAAUAAABSMAAAAQAAAAIAAAAFAAAAZjAAAAEAAAACAAAABQAAAHowAAABAAAAAgAAAAUAAACOMAAAAQAAAAIAAAAFAAAAojAAAAEAAAACAAAABQAAALYwAAABAAAAAAAAAAQAAADKMAAAAAAAAAIAAAAFAAAAyjAAAAEAAAACAAAABQAAAN4wAAABAAAAAgAAAAUAAADyMAAAAQAAAAIAAAAFAAAABjEAAAEAAAACAAAABQAAABoxAAABAAAAAgAAAAUAAAAuMQAAAQAAAAIAAAAFAAAAQjEAAAEAAAACAAAABQAAAFYxAAABAAAAAgAAAAUAAABqMQAAAQAAAAIAAAAFAAAAfjEAAAEAAAACAAAABQAAAJIxAAABAAAAAgAAAAUAAACmMQAAAQAAAAIAAAAFAAAAujEAAAEAAAACAAAABQAAAM4xAAABAAAAAgAAAAUAAADiMQAAAQAAAAIAAAAFAAAA9jEAAAEAAAACAAAABQAAAAoyAAABAAAAAgAAAAUAAAAeMgAAAQAAAAIAAAAFAAAAMjIAAAEAAAACAAAABQAAAEYyAAABAAAAAgAAAAUAAABaMgAAAQAAAAIAAAAFAAAAbjIAAAEAAAACAAAABQAAAIIyAAABAAAAAgAAAAUAAACWMgAAAQAAAAIAAAAFAAAAqjIAAAEAAAACAAAABQAAAL4yAAABAAAAAgAAAAUAAADSMgAAAQAAAAIAAAAFAAAA5jIAAAEAAAACAAAABQAAAPoyAAABAAAAAgAAAAUAAAAOMwAAAQAAAAIAAAAFAAAAIjMAAAEAAAACAAAABQAAADYzAAABAAAAAgAAAAUAAABKMwAAAQAAAAAAAAAFAAAAXjMAAAAAAAACAAAABQAAAF4zAAABAAAAAgAAAAUAAAByMwAAAQAAAAIAAAAFAAAAhjMAAAEAAAACAAAABQAAAJozAAABAAAAAgAAAAUAAACuMwAAAQAAAAIAAAAFAAAAwjMAAAEAAAACAAAABQAAANYzAAABAAAAAgAAAAUAAADqMwAAAQAAAAIAAAAFAAAA/jMAAAEAAAACAAAABQAAABI0AAABAAAAAgAAAAUAAAAmNAAAAQAAAAIAAAAFAAAAOjQAAAEAAAACAAAABQAAAE40AAABAAAAAgAAAAUAAABiNAAAAQAAAAIAAAAFAAAAdjQAAAEAAAACAAAABQAAAIo0AAABAAAAAgAAAAUAAACeNAAAAQAAAAIAAAAFAAAAsjQAAAEAAAACAAAABQAAAMY0AAABAAAAAgAAAAUAAADaNAAAAQAAAAIAAAAFAAAA7jQAAAEAAAACAAAABQAAAAI1AAABAAAAAgAAAAUAAAAWNQAAAQAAAAIAAAAFAAAAKjUAAAEAAAACAAAABQAAAD41AAABAAAAAgAAAAUAAABSNQAAAQAAAAIAAAAFAAAAZjUAAAEAAAACAAAABQAAAHo1AAABAAAAAgAAAAUAAACONQAAAQAAAAIAAAAFAAAAojUAAAEAAAACAAAABQAAALY1AAABAAAAAgAAAAUAAADKNQAAAQAAAAIAAAAFAAAA3jUAAAEAAAACAAAABQAAAPI1AAABAAAAAgAAAAUAAAAGNgAAAQAAAAIAAAAFAAAAGjYAAAEAAAACAAAABQAAAC42AAABAAAAAgAAAAUAAABCNgAAAQAAAAIAAAAFAAAAVjYAAAEAAAACAAAABQAAAGo2AAABAAAAAgAAAAUAAAB+NgAAAQAAAAIAAAAFAAAAkjYAAAEAAAACAAAABQAAAKY2AAABAAAAAgAAAAUAAAC6NgAAAQAAAAIAAAAFAAAAzjYAAAEAAAACAAAABQAAAOI2AAABAAAAAgAAAAUAAAD2NgAAAQAAAAIAAAAFAAAACjcAAAEAAAACAAAABQAAAB43AAABAAAAAAAAAAYAAAAyNwAAAAAAAAIAAAAFAAAAMjcAAAEAAAACAAAABQAAAEY3AAABAAAAAgAAAAUAAABaNwAAAQAAAAIAAAAFAAAAbjcAAAEAAAACAAAABQAAAII3AAABAAAAAAAAAAcAAACWNwAAAAAAAAIAAAAFAAAAljcAAAEAAAACAAAABQAAAKo3AAABAAAAAgAAAAUAAAC+NwAAAQAAAAIAAAAFAAAA0jcAAAEAAAACAAAABQAAAOY3AAABAAAAAgAAAAUAAAD6NwAAAQAAAAIAAAAFAAAADjgAAAEAAAACAAAABQAAACI4AAABAAAAAgAAAAUAAAA2OAAAAQAAAAIAAAAFAAAASjgAAAEAAAAAAAAACAAAAF44AAAAAAAAAgAAAAUAAABeOAAAAQAAAAIAAAAFAAAAcjgAAAEAAAACAAAABQAAAIY4AAABAAAAAgAAAAUAAACaOAAAAQAAAAIAAAAFAAAArjgAAAEAAAACAAAABQAAAMI4AAABAAAAAgAAAAUAAADWOAAAAQAAAAIAAAAFAAAA6jgAAAEAAAACAAAABQAAAP44AAABAAAAAgAAAAUAAAASOQAAAQAAAAIAAAAFAAAAJjkAAAEAAAACAAAABQAAADo5AAABAAAAAgAAAAUAAABOOQAAAQAAAAMAAAAAAAAAYjkAAAEAAAAAAAAACQAAAHI5AAAAAAAAAAAAAAoAAAByOQAAAAAAAAAAAAALAAAAcjkAAAAAAAADAAAAAAAAAHI5AAABAAAAAwAAAAAAAACCOQAAAQAAAAQAAAAHAAAAkjkAAAEAAAAEAAAABwAAAF5CAAABAAAABAAAAAcAAAAaRgAAAQAAAAQAAAAHAAAAJEwAAAEAAAAEAAAABwAAAPRNAAABAAAABAAAAAcAAAD0TwAAAQAAAAEAAAADAAAAdFIAAAEAAAABAAAAAwAAACJTAAABAAAAAQAAAAMAAAACYgAAAQAAAAEAAAADAAAAPGMAAAEAAAABAAAAAwAAAMx1AAABAAAAAQAAAAMAAADufAAAAQAAAAEAAAADAAAA3IQAAAEAAAABAAAAAwAAAHyMAAABAAAAAQAAAAMAAABikQAAAQAAAAEAAAADAAAASJYAAAEAAAABAAAAAwAAAHKXAAABAAAABAAAAAkAAABGnAAAAQAAAAQAAAAJAAAAapwAAAEAAAAEAAAACQAAAJacAAABAAAABAAAAAkAAADCnAAAAQAAAAQAAAAJAAAA5pwAAAEAAAAEAAAACQAAABKdAAABAAAABAAAAAkAAAA+nQAAAQAAAAQAAAAJAAAAap0AAAEAAAAEAAAACQAAAI6dAAABAAAABAAAAAkAAAC6nQAAAQAAAAQAAAAJAAAA3p0AAAEAAAAEAAAACQAAAAKeAAABAAAABAAAAAkAAAAmngAAAQAAAAQAAAAJAAAASp4AAAEAAAAEAAAACQAAAG6eAAABAAAABAAAAAkAAACSngAAAQAAAAQAAAAJAAAAtp4AAAEAAAAEAAAACQAAAOKeAAABAAAABAAAAAkAAAAOnwAAAQAAAAQAAAAJAAAAOp8AAAEAAAAEAAAACQAAAGafAAABAAAABAAAAAkAAACSnwAAAQAAAAQAAAAJAAAAvp8AAAEAAAAEAAAACQAAAOKfAAABAAAABAAAAAkAAAAGoAAAAQAAAAMAAAAAAAAAKqAAAAEAAAADAAAAAAAAADqgAAABAAAAAwAAAAAAAABKoAAAAQAAAAAAAAAMAAAAWqAAAAAAAAADAAAAAAAAAFqgAAABAAAACwAAAAAAAAAAAAEAAQABAAEAAwALAAAAAAABAAAACgAEAAAAXAAAAAUAAAAAAAAAAED3AAAABAAAAAAAAAAAAFQAAAAFAAAAAAAAAPA/XQAAAAUAAAAAAAAAAEAHAAQAAAAHAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBcAAAABAABAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFQAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAXQAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAIAAAABAAEAAQABAAEAAwALAAAAAAADAAAAAQABAAEAAQABAAMACwAAAAAABAAAAAEAAQABAAEAAQADAAsAAAAAAAUAAAABAAEAAQABAAEAAwALAAAAAAAGAAAAAQABAAEAAQABAAMACwAAAAAABwAAAAEAAQABAAEAAQADAAsAAAAAAAgAAAAKAAIAAABYAAAABQAAAAAAAADwP/cAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAkAAAAKAAMAAAD4AAAABQAAAAAAAADwP1UAAAAFAAAAAAAAAPA/9wAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBVAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAACgAAAAoAAwAAAPgAAAAFAAAAAAAAAPA/VgAAAAUAAAAAAAAA8D/3AAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFYAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAAsAAAAKAAQAAAD4AAAABAABAAAAAAAAAFcAAAAEAAEAAAAAAAAA9wAAAAQAAAAAAAAAAABZAAAABAABAAAAAAAAAAcAAgAAAAcAAAAAAAcABgAAAAQACAAAAAAAAAAGAFcAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAWQAAAAQAAAAAAAAAAAAKAAEAAAD5AAAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAVwAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBZAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAAAwAAAAKAAEAAAD3AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAADQAAAAoAAgAAAFQAAAAFAAAAAAAAAPA/9wAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBeAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAACgAEAAAAhAAAAAUAAAAAAAAA8D/3AAAABAAAAAAAAAAAAGIAAAAFAAAAAAAAAABAhQAAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCEAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGIAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAhQAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAABAAAAAKAAUAAAD3AAAABAAAAAAAAAAAAG4AAAAFAAAAAAAAAPA/hAAAAAUAAAAAAAAA8D9iAAAABQAAAAAAAAAAQIUAAAAFAAAAAAAAAPA/BAAAAAAAAAAAAAoAAQAAAPoAAAAHAAMAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBuAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIQAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYgAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCFAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAABEAAAAKAAEAAAD3AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAEgAAAAoAAgAAAPcAAAAEAAAAAAAAAAAAYwAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABMAAAAKAAEAAAD3AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAPsAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAUAAAACgACAAAA9wAAAAQAAAAAAAAAAABlAAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZQAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAFQAAAAoAAQAAAPcAAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYA/AAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABYAAAAKAAIAAAD3AAAABAAAAAAAAAAAAGcAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBnAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAXAAAACgABAAAA9wAAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgD9AAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAGAAAAAoAAgAAAPcAAAAEAAAAAAAAAAAAaQAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAQwAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAABkAAAAKAAYAAAD3AAAABAAAAAAAAAAAAP4AAAAFAAAAAAAAAPA/aQAAAAUAAAAAAAAA8D9nAAAABQAAAAAAAADwP2UAAAAFAAAAAAAAAPA/YwAAAAUAAAAAAAAA8D8HAAcAAAAHAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAgAAAAAAAAAEAAgAAAAAAAAABgBjAAAABAAAAAAAAAAAAAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAADAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAAFAAAAAAAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAACgACAAAA/wAAAAcABAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAAAAEAAAcAAgAAAAcABwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAADAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAAFAAAAAAAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGkAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAZwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGMAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAYwAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAaAAAACgADAAAAAQEAAAQAAQAAAAAAAAD3AAAABAAAAAAAAAAAAG0AAAAEAAIAAAAAAAAABwAQAAAABwAAAAAABwAJAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQACQAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAOAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABwAAAAAACgABAAAAAgEAAAcAAwAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAJAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAUAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAIAAAAAAAAAAYAbQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAgAAAAAAAAABgBtAAAABAAAAAAAAAAAAAcAAAAAAAEAAQADAAsAAAAAABsAAAAKAAEAAAD3AAAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAMBAAAEAAIAAAAAAAAABwAGAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAcAAAAAQABAAEAAQABAAMACwAAAAAAHQAAAAoAAQAAAPcAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAB4AAAAKAAIAAAD3AAAABAAAAAAAAAAAAIUAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAB8AAAAKAAEAAAD3AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAgAAAACgABAAAA9wAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIQAAAAoAAQAAAPcAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACIAAAAKAAEAAAD3AAAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAjAAAACgABAAAA9wAAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAJAAAAAoAAQAAAPcAAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACUAAAAKAAMAAAD3AAAABAAAAAAAAAAAAGUAAAAFAAAAAAAAAPA/ZgAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCDAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAoAAQAAAAQBAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBlAAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGYAAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAJgAAAAoAAwAAAPcAAAAEAAAAAAAAAAAAZwAAAAUAAAAAAAAA8D9oAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAABQEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGcAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAaAAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAnAAAACgACAAAA9wAAAAQAAAAAAAAAAAB+AAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAoAAAACgACAAAA9wAAAAQAAAAAAAAAAAAGAQAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIMAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAApAAAACgAEAAAA9wAAAAUAAAAAAAAA8D8HAQAABQAAAAAAAADwPwgBAAAFAAAAAAAAAPA/CQEAAAUAAAAAAAAA8D8EAAAAAAAAAAAACgABAAAACgEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwACAAAAAgAAAAAALgAAAAIAAAAAAC8AAAADAAsAAAAAACoAAAAKAAEAAAD3AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAKwAAAAoAAQAAAPcAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAsAAAACgACAAAAawAAAAQAAQAAAAAAAAD3AAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEABwABAAAAAgAAAAAAMQAAAAMACwAAAAAALQAAAAoAAQAAAPcAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwAGAAAABQAAAAAAAAAQQAQAIAAAAAAAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAuAAAACgACAAAA9wAAAAQAAAAAAAAAAAB8AAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAEMAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfAAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBDAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAALwAAAAoAAgAAAPcAAAAEAAAAAAAAAAAAfQAAAAUAAAAAAAAA8D8HAAoAAAAHAAAAAAAHAAwAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAFAAAAAAAAABhABgALAQAABAAAAAAAAAAAAAQACAAAAAAAAAAGAIAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfQAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQABwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAKAAEAAAAMAQAABwAEAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfQAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAAHAAgAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgALAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAIAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAMAAAAAEAAQABAAEAAwALAAAAAAAxAAAAAQABAAEAAQADAAsAAAAAADIAAAABAAEAAQABAAMACwAAAAAAMwAAAAEAAQABAAEAAwALAAAAAAA0AAAACgACAAAA9wAAAAQAAAAAAAAAAABhAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAANQAAAAoAAQAAAPcAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA2AAAAAQABAAEAAQADAAsAAAAAADcAAAABAAEAAQABAAMACwAAAAAAOAAAAAEAAQABAAEAAwALAAAAAAA5AAAAAQABAAEAAQADAAsAAAAAADoAAAABAAEAAQABAAMACwAAAAAAOwAAAAEAAQABAAEAAwALAAAAAAA8AAAAAQABAAEAAQADAAsAAAAAAD0AAAABAAEAAQABAAMACwAAAAAAPgAAAAEAAQABAAEAAwALAAAAAAA/AAAAAQABAAEAAQADAAsAAAAAAEAAAAABAAEAAQABAAMACwAAAAAAQQAAAAEAAQABAAEAAwALAAAAAABCAAAAAQABAAEAAQADAAsAAAAAAEMAAAABAAEAAQABAAMACwAAAAAARAAAAAEAAQABAAEAAwALAAAAAABFAAAAAQABAAEAAQADAAsAAAAAAEYAAAABAAEAAQABAAMACwAAAAAARwAAAAEAAQABAAEAAwALAAAAAABIAAAAAQABAAEAAQADAAsAAAAAAEkAAAABAAEAAQABAAMACwAAAAAASgAAAAEAAQABAAEAAwALAAAAAABLAAAAAQABAAEAAQADAAsAAAAAAEwAAAABAAEAAQABAAMACwAAAAAATQAAAAEAAQABAAEAAwALAAAAAABOAAAAAQABAAEAAQADAAsAAAAAAE8AAAABAAEAAQABAAMACwAAAAAAUAAAAAEAAQABAAEAAwALAAAAAABRAAAAAQABAAEAAQADAAsAAAAAAFIAAAABAAEAAQABAAMACwAAAAAAUwAAAAEAAQABAAEAAwALAAAAAABUAAAAAQABAAEAAQADAAsAAAAAAFUAAAABAAEAAQABAAMACwAAAAAAVgAAAAEAAQABAAEAAwALAAAAAABXAAAAAQABAAEAAQADAAsAAAAAAFgAAAABAAEAAQABAAMACwAAAAAAWQAAAAEAAQABAAEAAwALAAAAAABaAAAAAQABAAEAAQADAAsAAAAAAFsAAAABAAEAAQABAAMACwAAAAAAXAAAAAEAAQABAAEAAwALAAAAAABdAAAAAQABAAEAAQADAAsAAAAAAF4AAAABAAEAAQABAAMACwAAAAAAXwAAAAEAAQABAAEAAwALAAAAAABgAAAAAQABAAEAAQADAAsAAAAAAGEAAAABAAEAAQABAAMACwAAAAAAYgAAAAEAAQABAAEAAwALAAAAAABjAAAAAQABAAEAAQADAAsAAAAAAGQAAAABAAEAAQABAAMACwAAAAAAZQAAAAEAAQABAAEAAwALAAAAAABmAAAAAQABAAEAAQADAAsAAAAAAGcAAAABAAEAAQABAAMACwAAAAAAaAAAAAEAAQABAAEAAwALAAAAAABpAAAAAQABAAEAAQADAAsAAAAAAGoAAAABAAEAAQABAAMACwAAAAAAawAAAAEAAQABAAEAAwALAAAAAABsAAAAAQABAAEAAQADAAsAAAAAAG0AAAABAAEAAQABAAMACwAAAAAAbgAAAAEAAQABAAEAAwALAAAAAABvAAAAAQABAAEAAQADAAsAAAAAAHAAAAABAAEAAQABAAMACwAAAAAAcQAAAAEAAQABAAEAAwALAAAAAAByAAAAAQABAAEAAQADAAsAAAAAAHMAAAABAAEAAQABAAMACwAAAAAAdAAAAAEAAQABAAEAAwALAAAAAAB1AAAAAQABAAEAAQADAAsAAAAAAHYAAAABAAEAAQABAAMACwAAAAAAdwAAAAEAAQABAAEAAwALAAAAAAB4AAAAAQABAAEAAQADAAsAAAAAAHkAAAABAAEAAQABAAMACwAAAAAAegAAAAEAAQABAAEAAwALAAAAAAB7AAAAAQABAAEAAQADAAsAAAAAAHwAAAABAAEAAQABAAMACwAAAAAAfQAAAAEAAQABAAEAAwALAAAAAAB+AAAAAQABAAEAAQADAAsAAAAAAH8AAAABAAEAAQABAAMACwAAAAAAgAAAAAEAAQABAAEAAwALAAAAAACBAAAAAQABAAEAAQADAAsAAAAAAIIAAAABAAEAAQABAAMACwAAAAAAgwAAAAEAAQABAAEAAwALAAAAAACEAAAAAQABAAEAAQADAAsAAAAAAIUAAAABAAEAAQABAAMACwAAAAAAhgAAAAEAAQABAAEAAwALAAAAAACHAAAAAQABAAEAAQADAAsAAAAAAIgAAAABAAEAAQABAAMACwAAAAAAiQAAAAEAAQABAAEAAwALAAAAAACKAAAAAQABAAEAAQADAAsAAAAAAIsAAAABAAEAAQABAAMACwAAAAAAjAAAAAEAAQABAAEAAwALAAAAAACNAAAAAQABAAEAAQADAAsAAAAAAI4AAAABAAEAAQABAAMACwAAAAAAjwAAAAEAAQABAAEAAwALAAAAAACQAAAAAQABAAEAAQADAAsAAAAAAJEAAAABAAEAAQABAAMACwAAAAAAkgAAAAEAAQABAAEAAwALAAAAAACTAAAAAQABAAEAAQADAAsAAAAAAJQAAAABAAEAAQABAAMACwAAAAAAlQAAAAEAAQABAAEAAwALAAAAAACWAAAAAQABAAEAAQADAAsAAAAAAJcAAAABAAEAAQABAAMACwAAAAAAmAAAAAEAAQABAAEAAwALAAAAAACZAAAAAQABAAEAAQADAAsAAAAAAJoAAAABAAEAAQABAAMACwAAAAAAmwAAAAEAAQABAAEAAwALAAAAAACcAAAAAQABAAEAAQADAAsAAAAAAJ0AAAABAAEAAQABAAMACwAAAAAAngAAAAEAAQABAAEAAwALAAAAAACfAAAAAQABAAEAAQADAAsAAAAAAKAAAAABAAEAAQABAAMACwAAAAAAoQAAAAEAAQABAAEAAwALAAAAAACiAAAAAQABAAEAAQADAAsAAAAAAKMAAAABAAEAAQABAAMACwAAAAAApAAAAAEAAQABAAEAAwALAAAAAAClAAAAAQABAAEAAQADAAsAAAAAAKYAAAABAAEAAQABAAMACwAAAAAApwAAAAEAAQABAAEAAwALAAAAAACoAAAAAQABAAEAAQADAAsAAAAAAKkAAAABAAEAAQABAAMACwAAAAAAqgAAAAEAAQABAAEAAwALAAAAAACrAAAAAQABAAEAAQADAAsAAAAAAKwAAAABAAEAAQABAAMACwAAAAAArQAAAAEAAQABAAEAAwAOAQAABwAAAAAACgAAAAAADwEAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAAAGABIBAAAKAAAAAAAKAD0AAABSAAAAAgAAAAAABAAAAFMAAAACAAAAAAAFAAAAVAAAAAIAAAAAAAYAAABVAAAAAgAAAAAABwAAAFYAAAACAAAAAAAIAAAAVwAAAAIAAAAAAAkAAABYAAAAAgAAAAAACgAAAFkAAAACAAAAAAALAAAAWgAAAAIAAAAAAAwAAABbAAAAAgAAAAAADQAAAFwAAAACAAAAAAAOAAAAXQAAAAIAAAAAAA8AAABeAAAAAgAAAAAAEAAAAF8AAAACAAAAAAARAAAAYAAAAAIAAAAAABIAAABhAAAAAgAAAAAAEwAAAGIAAAACAAAAAAAUAAAAYwAAAAIAAAAAABUAAABkAAAAAgAAAAAAFgAAAGUAAAACAAAAAAAXAAAAZgAAAAIAAAAAABgAAABnAAAAAgAAAAAAGQAAAGgAAAACAAAAAAAaAAAAaQAAAAIAAAAAABsAAABqAAAAAgAAAAAAHAAAAGsAAAACAAAAAAAdAAAAbAAAAAIAAAAAAB4AAABtAAAAAgAAAAAAHwAAAG4AAAACAAAAAAAgAAAAbwAAAAIAAAAAACEAAABwAAAAAgAAAAAAIgAAAHEAAAACAAAAAAAjAAAAcgAAAAIAAAAAACQAAABzAAAAAgAAAAAAJQAAAHQAAAACAAAAAAAmAAAAdQAAAAIAAAAAACcAAAB2AAAAAgAAAAAAKAAAAHcAAAACAAAAAAApAAAAeAAAAAIAAAAAACoAAAB5AAAAAgAAAAAAKwAAAHoAAAACAAAAAAAsAAAAewAAAAIAAAAAAC0AAAB8AAAAAgAAAAAAMAAAAH0AAAACAAAAAAAyAAAAfgAAAAIAAAAAADMAAAB/AAAAAgAAAAAANAAAAIAAAAACAAAAAAA1AAAAUQAAAAIAAAAAADYAAACBAAAAAgAAAAAANwAAAIIAAAACAAAAAAA4AAAAgwAAAAIAAAAAADkAAACEAAAAAgAAAAAAOgAAAIUAAAACAAAAAAA7AAAAhgAAAAIAAAAAADwAAACHAAAAAgAAAAAAPQAAAIgAAAACAAAAAAA+AAAAiQAAAAIAAAAAAD8AAACKAAAAAgAAAAAAQAAAAIsAAAACAAAAAABBAAAAjAAAAAIAAAAAAEIAAACNAAAAAgAAAAAAQwAAAAcAPQAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIQAAAAIAAAAAACIAAAACAAAAAAAjAAAAAgAAAAAAJAAAAAIAAAAAACUAAAACAAAAAAAmAAAAAgAAAAAAJwAAAAIAAAAAACgAAAACAAAAAAApAAAAAgAAAAAAKgAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAADAAAAACAAAAAAAyAAAAAgAAAAAAMwAAAAIAAAAAADQAAAACAAAAAAA1AAAAAgAAAAAANgAAAAIAAAAAADcAAAACAAAAAAA4AAAAAgAAAAAAOQAAAAIAAAAAADoAAAACAAAAAAA7AAAAAgAAAAAAPAAAAAIAAAAAAD0AAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAHAAAAAAAHAAEAAAACAAEAAABjAAAABwAAAAAAAgABAAAAYwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAAADAAAAAgABAAAAYwAAAAIAAgAAABkAAAAHAAAAAAAKAAwAAAA0AAAACgACAAAAVAAAAAcAAQAAAAYAWgAAAG4AAAAHAA0AAAAGAG8AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAABUAAAAAgAAAAAAwwAAAG4AAAACAAAAAADEAAAA+QAAAAIAAAAAAMUAAAD6AAAAAgAAAAAAxgAAAP8AAAACAAAAAADHAAAAAAEAAAIAAAAAAMgAAAACAQAAAgAAAAAAyQAAAAQBAAACAAAAAADKAAAABQEAAAIAAAAAAMsAAAAKAQAAAgAAAAAAzAAAAAwBAAACAAAAAADNAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYwAAAAYAEwEAAAYAjgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABjAAAABgAhAAAABgCPAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGMAAAAGACIAAAAGAJAAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYwAAAAYAFAEAAAYAkQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABjAAAABgAVAQAABgCSAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGMAAAAGABYBAAAGAJMAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAYwAAAAYAFwEAAAYAlAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABjAAAABgAYAQAABgCVAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGMAAAAGABkBAAAGAJYAAAAHAAAAAAABAAYAGgEAAAoAAAAAAAoAIQAAAJcAAAACAAAAAABFAAAAmAAAAAIAAAAAAEYAAACZAAAAAgAAAAAARwAAAIcAAAACAAAAAABIAAAAWgAAAAIAAAAAAEkAAABTAAAAAgAAAAAASgAAAF4AAAACAAAAAABLAAAAXwAAAAIAAAAAAEwAAABrAAAAAgAAAAAATQAAAGwAAAACAAAAAABOAAAAYwAAAAIAAAAAAE8AAABlAAAAAgAAAAAAUAAAAGcAAAACAAAAAABRAAAAaQAAAAIAAAAAAFIAAACCAAAAAgAAAAAAUwAAAGEAAAACAAAAAABUAAAAYgAAAAIAAAAAAFUAAABvAAAAAgAAAAAAVgAAAHAAAAACAAAAAABXAAAAcQAAAAIAAAAAAFgAAAByAAAAAgAAAAAAWQAAAHMAAAACAAAAAABaAAAAdAAAAAIAAAAAAFsAAAB1AAAAAgAAAAAAXAAAAHYAAAACAAAAAABdAAAAdwAAAAIAAAAAAF4AAAB4AAAAAgAAAAAAXwAAAHkAAAACAAAAAABgAAAAegAAAAIAAAAAAGEAAAB7AAAAAgAAAAAAYgAAAHwAAAACAAAAAABjAAAAfQAAAAIAAAAAAGQAAAB+AAAAAgAAAAAAZQAAAAcAIQAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAIAAAAAAFEAAAACAAAAAABSAAAAAgAAAAAAUwAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAEQAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgAbAQAACgALAAAAyAAAAAIAAAAAAM4AAADJAAAAAgAAAAAAzwAAAMoAAAACAAAAAADQAAAAywAAAAIAAAAAANEAAADMAAAAAgAAAAAA0gAAAM0AAAACAAAAAADTAAAAzgAAAAIAAAAAANQAAADPAAAAAgAAAAAA1QAAANAAAAACAAAAAADWAAAA0QAAAAIAAAAAANcAAADSAAAAAgAAAAAA2AAAAAoAMQAAABIAAAACAAAAAABnAAAAmgAAAAIAAAAAAGgAAACbAAAAAgAAAAAAaQAAAJwAAAACAAAAAABqAAAAnQAAAAIAAAAAAGsAAACeAAAAAgAAAAAAbAAAAJ8AAAACAAAAAABtAAAAoAAAAAIAAAAAAG4AAAChAAAAAgAAAAAAbwAAAKIAAAACAAAAAABwAAAAowAAAAIAAAAAAHEAAACkAAAAAgAAAAAAcgAAAIAAAAACAAAAAABzAAAApQAAAAIAAAAAAHQAAACmAAAAAgAAAAAAdQAAAKcAAAACAAAAAAB2AAAAqAAAAAIAAAAAAHcAAACpAAAAAgAAAAAAeAAAAKoAAAACAAAAAAB5AAAAqwAAAAIAAAAAAHoAAACsAAAAAgAAAAAAewAAAK0AAAACAAAAAAB8AAAArgAAAAIAAAAAAH0AAACvAAAAAgAAAAAAfgAAALAAAAACAAAAAAB/AAAAsQAAAAIAAAAAAIAAAAAcAAAAAgAAAAAAgQAAALIAAAACAAAAAACCAAAAswAAAAIAAAAAAIMAAAC0AAAAAgAAAAAAhAAAALUAAAACAAAAAACFAAAAtgAAAAIAAAAAAIYAAAC3AAAAAgAAAAAAhwAAALgAAAACAAAAAACIAAAAuQAAAAIAAAAAAIkAAAC6AAAAAgAAAAAAigAAALsAAAACAAAAAACLAAAAvAAAAAIAAAAAAIwAAAC9AAAAAgAAAAAAjQAAAL4AAAACAAAAAACOAAAAvwAAAAIAAAAAAI8AAADAAAAAAgAAAAAAkAAAAMEAAAACAAAAAACRAAAAwgAAAAIAAAAAAJIAAADDAAAAAgAAAAAAkwAAAMQAAAACAAAAAACUAAAAxQAAAAIAAAAAAJUAAADGAAAAAgAAAAAAlgAAAMcAAAACAAAAAACXAAAABwAxAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAIAAAAAAI8AAAACAAAAAACQAAAAAgAAAAAAkQAAAAIAAAAAAJIAAAACAAAAAACTAAAAAgAAAAAAlAAAAAIAAAAAAJUAAAACAAAAAACWAAAAAgAAAAAAlwAAAAcAAAAAAAcAAQAAAAIAAgAAABkAAAAHAAAAAAACAAIAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGYAAAACAAIAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAABoAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAGgAAAABAAYAHAEAAAoAAgAAANcAAAACAAAAAADZAAAA2AAAAAIAAAAAANoAAAAKAAUAAAC3AAAAAgAAAAAAmQAAANMAAAACAAAAAACaAAAA1AAAAAIAAAAAAJsAAADVAAAAAgAAAAAAnAAAANYAAAACAAAAAACdAAAABwAFAAAAAgAAAAAAmQAAAAIAAAAAAJoAAAACAAAAAACbAAAAAgAAAAAAnAAAAAIAAAAAAJ0AAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACYAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAmAAAAAYA0wAAAAYA1wAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACYAAAABgDUAAAABgDYAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAJgAAAAGANMAAAAGANcAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAmAAAAAYA1AAAAAYA2AAAAAEABgAdAQAACgAEAAAA4AAAAAIAAAAAANsAAADYAAAAAgAAAAAA3AAAAOEAAAACAAAAAADdAAAA4gAAAAIAAAAAAN4AAAAKAAoAAAASAAAAAgAAAAAAnwAAANkAAAACAAAAAACgAAAAmgAAAAIAAAAAAKEAAADaAAAAAgAAAAAAogAAANsAAAACAAAAAACjAAAA3AAAAAIAAAAAAKQAAADdAAAAAgAAAAAApQAAAN4AAAACAAAAAACmAAAA3wAAAAIAAAAAAKcAAAAcAAAAAgAAAAAAqAAAAAcACgAAAAIAAAAAAJ8AAAACAAAAAACgAAAAAgAAAAAAoQAAAAIAAAAAAKIAAAACAAAAAACjAAAAAgAAAAAApAAAAAIAAAAAAKUAAAACAAAAAACmAAAAAgAAAAAApwAAAAIAAAAAAKgAAAAHAAAAAAAHAAEAAAACAAIAAAAZAAAABwAAAAAAAgACAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACeAAAAAgACAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAoQAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAChAAAAAQAGAB4BAAAKAAgAAADvAAAAAgAAAAAA3wAAAPAAAAACAAAAAADgAAAA8QAAAAIAAAAAAOEAAADyAAAAAgAAAAAA4gAAAPMAAAACAAAAAADjAAAA9AAAAAIAAAAAAOQAAAD1AAAAAgAAAAAA5QAAAPYAAAACAAAAAADmAAAACgANAAAAmgAAAAIAAAAAAKoAAADjAAAAAgAAAAAAqwAAAOQAAAACAAAAAACsAAAA5QAAAAIAAAAAAK0AAADmAAAAAgAAAAAArgAAAOcAAAACAAAAAACvAAAA6AAAAAIAAAAAALAAAADpAAAAAgAAAAAAsQAAAOoAAAACAAAAAACyAAAA6wAAAAIAAAAAALMAAADsAAAAAgAAAAAAtAAAAO0AAAACAAAAAAC1AAAA7gAAAAIAAAAAALYAAAAHAA0AAAACAAAAAACqAAAAAgAAAAAAqwAAAAIAAAAAAKwAAAACAAAAAACtAAAAAgAAAAAArgAAAAIAAAAAAK8AAAACAAAAAACwAAAAAgAAAAAAsQAAAAIAAAAAALIAAAACAAAAAACzAAAAAgAAAAAAtAAAAAIAAAAAALUAAAACAAAAAAC2AAAABwAAAAAABwABAAAAAgACAAAAGQAAAAcAAAAAAAIAAgAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAqQAAAAIAAgAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAKoAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAqgAAAAEABwAEAAAABwACAAAAAwAGAFoAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAAQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwBVAAAABwAOAAAAAwAGAG8AAAAGAHAAAAAGAHEAAAAGAHIAAAAGAHMAAAAGAHQAAAAGAHUAAAAGAHYAAAAGAHcAAAAGAHgAAAAGAHkAAAAGAHoAAAAGAHsAAAAHACcAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQALAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAQQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQASAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAFEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAmQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAACJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAADFABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAFAAAAAAAAADJABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAUAAAAAAAAAOUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAA6QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAcAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAaAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA/QAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABQAAAAAAAABAQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgEBABAABAAAAAAAAAAQAAAAAAAAAAAAEACMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAFAAAAAAAAAD1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAENABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAREAEAAEAAAAAAAAABAAAAAAAAAAAAAQAKgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAUAAAAAAAAAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAKAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAREAHAAMAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACARkAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAUAAAAAAAAAR0AHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBHQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAxAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABQAAAAAAAIBFQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAvAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABIQAcAAwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAABKQAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABQAAAAAAAIBKQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAEtABAABAAAAAAAAAAQAAAAAAAAAAAAEADgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAFAAAAAAAAAElABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEtABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgE1ABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAAE5ABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACATkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAUAAAAAAACATEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAT0AHAAMAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAUEAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAADAUEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABRQAQAAQAAAAAAAAAEAAAAAAAAAAAABABGAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABQAAAAAAAABQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABEAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBRQAcAAwAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAEBSQAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABQAAAAAAAIBSQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAwFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAE0AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACwAAAAAAAAAFAAAAAAAAwFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEsAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFNABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAFRABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAQFRABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAVAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAUAAAAAAACAU0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAUgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAVEAEAAEAAAAAAAAAAAAAAAAAAAABAAcABgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAVwAAAAUAAAAAAAAAAEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBZAAAABQAAAAAAAAAQQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwBhAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAF4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAbgAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAE4AAAAEAAgAAAAAAAAABgBvAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAcQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgByAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB1AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAdwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB4AAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAHkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgB7AAAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAwAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA3AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA+AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAgQAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAACRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAC5ABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAANkAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAZAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAAA8QAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABQAAAAAAAAA9QAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAD5ABAABAAAAAAAAAAQAAAAAAAAAAAAEACAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB4AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAgEFABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAARUAHAAMAAAAEAAIAAAAAAAAABAB0AAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAABGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAuAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABEQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBIQAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABQAAAAAAAABJQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAgElABAABAAAAAAAAAAQAAAAAAAAAAAAEADUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAAExABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgExABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAOgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAACAT0AHAAMAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAUEAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBOQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFwAAAAAAAAABQAAAAAAAIBRQAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAMBRQAcABgAAAAQACAAAAAAAAAAGAIMAAAAFAAAAAAAAAFJABAABAAAAAAAAAAQAAAAAAAAAAAAEAEoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAFAAAAAAAAQFNABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFNABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAUQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQATwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABcAAAAAAAAAAUAAAAAAAAAVUAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAVUAHAAYAAAAEAAgAAAAAAAAABgCDAAAABQAAAAAAAIBVQAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABWAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBVQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAEBWQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBWQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBWQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAIQAAAAFAAAAAAAAwFdABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAYgAAAAUAAAAAAADAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCFAAAABQAAAAAAAEBXQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwAmAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAQQAcABgAAAAQACAAAAAAAAAAGAGkAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAABxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABwADAAAABQAAAAAAAAAYQAYA/QAAAAUAAAAAAAAAJEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAmQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcAAwAAAAUAAAAAAAAAGEAGAPwAAAAFAAAAAAAAADNABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADFABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAFAAAAAAAAADZABwAGAAAABAAIAAAAAAAAAAYAZQAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAOUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAFAAAAAAAAABhABgD7AAAABQAAAAAAAAA8QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA6QAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGQAAAAAAAAABQAAAAAAAAA/QAcABgAAAAQACAAAAAAAAAAGAGMAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAEACEAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAB0AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAAEFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEBABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgEJABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEFABAABAAAAAAAAAAAAAAAAAAAAAQAHACkAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAAAQQAcADAAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAUQAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAAAYQAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAAAcQAQAAgAAAAAAAAAEAGQAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQACAAAAAAAAAAGAGkAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAZwAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAWAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAGMAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABwAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABwADAAAABQAAAAAAAAAYQAYA/QAAAAUAAAAAAAAALEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAM0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAFAAAAAAAAABhABgD8AAAABQAAAAAAAAA0QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA1QAcAAwAAAAUAAAAAAAAAGEAGAPsAAAAFAAAAAAAAADpABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAAD1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD5ABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAYwAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAREAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AEAAEAAAAAAAAAAAAAAAAAAAABAAcAKAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAYQAcADwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAQACAAAAAAAAAAGAG0AAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAAwEAAAUAAAAAAAAAJEAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAM0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANUAHAA8AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAEAAgAAAAAAAAABgBtAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAMBAAAFAAAAAAAAADlABwAGAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAADxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEBABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAD9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABAAIAAAAAAAAAAYAbQAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgADAQAABQAAAAAAAABCQAcABgAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAAAAAAAAAAAAEABwAaAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBlAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGAPsAAAAFAAAAAAAAACJABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAAChABwAGAAAABAAIAAAAAAAAAAYAZgAAAAUAAAAAAAAAKkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAJEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAyQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcABgAAAAQACAAAAAAAAAAGAGUAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAQwAAAAUAAAAAAAAAMUAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAANkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABhABgD7AAAABQAAAAAAAAA5QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAAAAAAAAAAAAEABwAaAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBnAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGAPwAAAAFAAAAAAAAACJABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABxABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAAChABwAGAAAABAAIAAAAAAAAAAYAaAAAAAUAAAAAAAAAKkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAJEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAyQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcABgAAAAQACAAAAAAAAAAGAGcAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAQwAAAAUAAAAAAAAAMUAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAANkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABhABgD8AAAABQAAAAAAAAA5QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAQAAQAAAAAAAAAAAAAAAAAAAAEABwAHAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAEEAEAAEAAAAAAAAAAAAAAAAAAAABAAcAGAAAAAcABAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAUAAAAAAAAAEEAHAAYAAAAEAAgAAAAAAAAABgB9AAAABQAAAAAAAAAUQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAcABgAAAAQACAAAAAAAAAAGAEMAAAAFAAAAAAAAACRABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAFAAAAAAAAACBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABwAGAAAABAAIAAAAAAAAAAYAfAAAAAUAAAAAAAAAJkAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBDAAAABQAAAAAAAAAiQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAuQAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAxQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAoQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAzQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAuQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAAsBAAAFAAAAAAAAADRABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAgAAAAAUAAAAAAAAANkAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAYAyAAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYAyQAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDKAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAMsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAMwAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYAzQAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDOAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAM8AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGANAAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA0QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA0gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA1wAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA2AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA4AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA2AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA4QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA4gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDvAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAPAAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA8QAAAAMABAAAAAAAAAAAAAMAAgACAAAAGQAAAAQAAQAAAAAAAAABAAEABgDyAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAZAAAABAABAAAAAAAAAAEAAQAGAPMAAAADAAQAAAAAAAAAAAADAAIAAgAAABkAAAAEAAEAAAAAAAAAAQABAAYA9AAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA9QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA9gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAADkBAAAHAAAAAAAKAAAAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if835_end1816 
    die "Repossession conflicts occurred during deserialization"
  if835_end1816:
    .const "LexInfo" $P5001 = "cuid_182_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_182_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_182_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_182_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_182_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_182_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_182_1361096832.26832"
    nqp_get_sc_object $P5002, "A4C076488997510F4D50966B1725835556A2BF27-1361096826.57431", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_182_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 60
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 3
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_57_1361096832.26832" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_58_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 67
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_175_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_175_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_175_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_175_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 68
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_183_1361096832.26832" 
    set $P5001["string_to_int"], $P5003
    .const 'Sub' $P5001 = "cuid_65_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 101
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_184_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 68
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_184_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_184_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 68
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_184_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_98_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 151
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_196_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_196_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_196_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 102
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_196_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_147_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 157
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_224_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_224_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_224_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 152
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_224_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_152_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 168
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_225_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_225_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_225_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 158
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_225_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_162_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 170
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_163_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 176
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 179
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 180
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 181
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_174_1361096832.26832" 
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 182
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_235_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_235_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_235_1361096832.26832"
    nqp_get_sc_object $P5002, "E682D6BCAF2C1EAB68F3DEBC0BD7FFE107ACF86C-1361096832.31512", 169
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_235_1361096832.26832"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1361096832.26832") :anon :lex :outer("cuid_237_1361096832.26832")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1361096832.26832" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1361096832.26832" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1361096832.26832") :load
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
    .const 'Sub' $P5001 = "cuid_182_1361096832.26832" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1361096832.26832") :main
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_182_1361096832.26832" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end