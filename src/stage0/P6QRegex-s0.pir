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
.sub "" :subid("cuid_1_1349901746.339") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5044 = 'cuid_159_1349901746.339' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_100_1349901746.339' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_157_1349901746.339' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_158_1349901746.339' 
    capture_lex $P5044 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "NQPCursorRole", $P104 
    .lex "$p6regex", $P105 
    .lex "&MAIN", $P106 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P105, $P5001
    .const 'Sub' $P5002 = 'cuid_159_1349901746.339' 
    capture_lex $P5002
    set $P106, $P5002
    find_dynamic_lex $P5003, "$*CTXSAVE"
    set ctxsave, $P5003
    isnull $I5001, ctxsave
    box $P5008, $I5001
    set $P5007, $P5008
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5006, $I5002
    set $P5005, $P5006
    unless $I5002 goto if11_end13 
    $P5004 = ctxsave."ctxsave"()
    set $P5005, $P5004
  if11_end13:
    set $P5007, $P5005
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P5009 = 'cuid_100_1349901746.339' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_157_1349901746.339' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_158_1349901746.339' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 930
    nqp_get_sc_object $P5019, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5018, $P5019, "QRegex"
    nqp_get_package_through_who $P5017, $P5018, "P6Regex"
    get_who $P5016, $P5017
    set $P5015, $P5016["Compiler"]
    unless_null $P5015, fallback2156
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5015, $P5020
  fallback2156:
    $P5021 = $P5015."new"()
    set $P105, $P5021
.annotate 'line', 931
    $P5022 = $P105."language"("QRegex::P6Regex")
.annotate 'line', 932
    nqp_get_sc_object $P5027, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5026, $P5027, "QRegex"
    nqp_get_package_through_who $P5025, $P5026, "P6Regex"
    get_who $P5024, $P5025
    set $P5023, $P5024["Grammar"]
    unless_null $P5023, fallback2157
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5023, $P5028
  fallback2157:
    $P5029 = $P105."parsegrammar"($P5023)
.annotate 'line', 933
    nqp_get_sc_object $P5034, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5033, $P5034, "QRegex"
    nqp_get_package_through_who $P5032, $P5033, "P6Regex"
    get_who $P5031, $P5032
    set $P5030, $P5031["Actions"]
    unless_null $P5030, fallback2158
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5030, $P5035
  fallback2158:
    $P5036 = $P105."parseactions"($P5030)
    set $P5043, _lex_param_0
    unless _lex_param_0 goto if576_end2160 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5037, "ModuleLoader"
    getinterp $P5039
    set $P5038, $P5039["context"]
    $P5040 = $P5037."set_mainline_module"($P5038)
    .const 'Sub' $P5041 = "cuid_159_1349901746.339" 
    $P5042 = $P5041(_lex_param_0 :flat)
    set $P5043, $P5042
  if576_end2160:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "MAIN" :subid("cuid_159_1349901746.339") :anon :lex :outer("cuid_1_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 935
    .param pmc _lex_param_0 
    .lex "@ARGS", _lex_param_0 
.annotate 'line', 936
    find_lex $P5001, "$p6regex"
    $P5002 = $P5001."command_line"(_lex_param_0, "utf8" :named("encoding"), "ucs4" :named("transcode"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1349901746.339") :anon :lex :outer("cuid_1_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 10
    .const 'Sub' $P5080 = 'cuid_2_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_3_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_5_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_6_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_7_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_8_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_9_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_10_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_11_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_12_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_13_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_14_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_16_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_18_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_19_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_21_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_22_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_23_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_24_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_25_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_29_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_30_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_32_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_33_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_34_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_35_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_36_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_37_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_38_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_39_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_40_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_41_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_42_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_43_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_44_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_45_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_46_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_47_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_48_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_49_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_50_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_51_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_52_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_53_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_54_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_55_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_56_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_57_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_58_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_59_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_60_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_61_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_62_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_63_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_64_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_65_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_66_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_67_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_68_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_69_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_70_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_71_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_72_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_73_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_74_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_75_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_77_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_79_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_80_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_81_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_83_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_85_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_92_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_94_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_95_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_96_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_97_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_98_1349901746.339' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_99_1349901746.339' 
    capture_lex $P5080 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1349901746.339' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1349901746.339' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_5_1349901746.339' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_6_1349901746.339' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_7_1349901746.339' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_8_1349901746.339' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_9_1349901746.339' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_10_1349901746.339' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_11_1349901746.339' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_12_1349901746.339' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_13_1349901746.339' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_14_1349901746.339' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_16_1349901746.339' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_18_1349901746.339' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_19_1349901746.339' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_21_1349901746.339' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_22_1349901746.339' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_23_1349901746.339' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_24_1349901746.339' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_25_1349901746.339' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_29_1349901746.339' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_30_1349901746.339' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_32_1349901746.339' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_33_1349901746.339' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_34_1349901746.339' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_35_1349901746.339' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_36_1349901746.339' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_37_1349901746.339' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_38_1349901746.339' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_39_1349901746.339' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_40_1349901746.339' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_41_1349901746.339' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_42_1349901746.339' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_43_1349901746.339' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_44_1349901746.339' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_45_1349901746.339' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_46_1349901746.339' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_47_1349901746.339' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_48_1349901746.339' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_49_1349901746.339' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_50_1349901746.339' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_51_1349901746.339' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_52_1349901746.339' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_53_1349901746.339' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_54_1349901746.339' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_55_1349901746.339' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_56_1349901746.339' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_57_1349901746.339' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_58_1349901746.339' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_59_1349901746.339' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_60_1349901746.339' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_61_1349901746.339' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_62_1349901746.339' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_63_1349901746.339' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_64_1349901746.339' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_65_1349901746.339' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_66_1349901746.339' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_67_1349901746.339' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_68_1349901746.339' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_69_1349901746.339' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_70_1349901746.339' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_71_1349901746.339' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_72_1349901746.339' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_73_1349901746.339' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_74_1349901746.339' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_75_1349901746.339' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_77_1349901746.339' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_79_1349901746.339' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_80_1349901746.339' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_81_1349901746.339' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_83_1349901746.339' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_85_1349901746.339' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_92_1349901746.339' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_94_1349901746.339' 
    capture_lex $P5074
    .const 'Sub' $P5075 = 'cuid_95_1349901746.339' 
    capture_lex $P5075
    .const 'Sub' $P5076 = 'cuid_96_1349901746.339' 
    capture_lex $P5076
    .const 'Sub' $P5077 = 'cuid_97_1349901746.339' 
    capture_lex $P5077
    .const 'Sub' $P5078 = 'cuid_98_1349901746.339' 
    capture_lex $P5078
    .const 'Sub' $P5079 = 'cuid_99_1349901746.339' 
    capture_lex $P5079
    .return ($P5079) 
.end
.HLL "nqp"
.namespace []
.sub "obs" :subid("cuid_2_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 12
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_1 :opt_flag 
    if haz_param_1, default14
    box $P5003, " in Perl 6"
    set _lex_param_3, $P5003
  default14:
    .lex "self", _lex_param_0 
    .lex "$old", _lex_param_1 
    .lex "$new", _lex_param_2 
    .lex "$when", _lex_param_3 
.annotate 'line', 13
    nqp_decontainerize $P5001, _lex_param_0
    set $S5006, _lex_param_1
    concat $S5005, "Unsupported use of ", $S5006
    concat $S5004, $S5005, ";"
    set $S5007, _lex_param_3
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, " please use "
    set $S5008, _lex_param_2
    concat $S5001, $S5002, $S5008
    $P5002 = $P5001."panic"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_3_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 17
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx12_tgt
    .local int rx12_pos
    .local int rx12_off
    .local int rx12_eos
    .local int rx12_rep
    .local pmc rx12_cur
    .local pmc rx12_curclass
    .local pmc rx12_bstack
    .local pmc rx12_cstack
    (rx12_cur, rx12_tgt, rx12_pos, rx12_curclass, rx12_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx12_cur
    length rx12_eos, rx12_tgt
    eq $I19, 1, rx12_restart17
    gt rx12_pos, rx12_eos, rx12_fail18
    repr_get_attr_int $I11, self, rx12_curclass, "$!from"
    ne $I11, -1, rxscan13_done24
    goto rxscan13_scan23
  rxscan13_loop22:
    inc rx12_pos
    gt rx12_pos, rx12_eos, rx12_fail18
    repr_bind_attr_int rx12_cur, rx12_curclass, "$!from", rx12_pos
  rxscan13_scan23:
    nqp_rxmark rx12_bstack, rxscan13_loop22, rx12_pos, 0
  rxscan13_done24:
    nqp_rxmark rx12_bstack, rxquantr14_done26, rx12_pos, 0
  rxquantr14_loop25:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt15_028
    nqp_push_label $P11, alt15_131
    nqp_rxmark rx12_bstack, alt15_end27, -1, 0
    rx12_cur."!alt"(rx12_pos, "alt_nfa__1_1349901746.478", $P11)
    goto rx12_fail18
  alt15_028:
    nqp_rxmark rx12_bstack, rxquantr16_done30, -1, 0
  rxquantr16_loop29:
    ge rx12_pos, rx12_eos, rx12_fail18
    is_cclass $I11, .CCLASS_WHITESPACE, rx12_tgt, rx12_pos
    unless $I11, rx12_fail18
    add rx12_pos, 1
    nqp_rxpeek $I19, rx12_bstack, rxquantr16_done30
    inc $I19
    inc $I19
    set rx12_rep, rx12_bstack[$I19]
    nqp_rxcommit rx12_bstack, rxquantr16_done30
    inc rx12_rep
    nqp_rxmark rx12_bstack, rxquantr16_done30, rx12_pos, rx12_rep
    goto rxquantr16_loop29
  rxquantr16_done30:
    goto alt15_end27
  alt15_131:
    add $I11, rx12_pos, 1
    gt $I11, rx12_eos, rx12_fail18
    substr $S10, rx12_tgt, rx12_pos, 1
    ne $S10, ucs4:"#", rx12_fail18
    add rx12_pos, 1
    nqp_rxmark rx12_bstack, rxquantr17_done33, rx12_pos, 0
  rxquantr17_loop32:
    ge rx12_pos, rx12_eos, rx12_fail18
    is_cclass $I11, .CCLASS_NEWLINE, rx12_tgt, rx12_pos
    if $I11, rx12_fail18
    add rx12_pos, 1
    nqp_rxpeek $I19, rx12_bstack, rxquantr17_done33
    inc $I19
    inc $I19
    set rx12_rep, rx12_bstack[$I19]
    nqp_rxcommit rx12_bstack, rxquantr17_done33
    inc rx12_rep
    nqp_rxmark rx12_bstack, rxquantr17_done33, rx12_pos, rx12_rep
    goto rxquantr17_loop32
  rxquantr17_done33:
    goto alt15_end27
  alt15_end27:
    nqp_rxpeek $I19, rx12_bstack, rxquantr14_done26
    inc $I19
    inc $I19
    set rx12_rep, rx12_bstack[$I19]
    nqp_rxcommit rx12_bstack, rxquantr14_done26
    inc rx12_rep
    nqp_rxmark rx12_bstack, rxquantr14_done26, rx12_pos, rx12_rep
    goto rxquantr14_loop25
  rxquantr14_done26:
    rx12_cur."!cursor_pass"(rx12_pos, "ws", 'backtrack'=>1)
    .return (rx12_cur)
  rx12_restart17:
    repr_get_attr_obj rx12_cstack, rx12_cur, rx12_curclass, "$!cstack"
  rx12_fail18:
    unless rx12_bstack, rx12_done16
    pop $I19, rx12_bstack
    if_null rx12_cstack, rx12_cstack_done21
    unless rx12_cstack, rx12_cstack_done21
    dec $I19
    set $P11, rx12_cstack[$I19]
  rx12_cstack_done21:
    pop rx12_rep, rx12_bstack
    pop rx12_pos, rx12_bstack
    pop $I19, rx12_bstack
    lt rx12_pos, -1, rx12_done16
    lt rx12_pos, 0, rx12_fail18
    eq $I19, 0, rx12_fail18
    nqp_islist $I20, rx12_cstack
    unless $I20, rx12_jump19
    elements $I18, rx12_bstack
    le $I18, 0, rx12_cut20
    dec $I18
    set $I18, rx12_bstack[$I18]
  rx12_cut20:
    assign rx12_cstack, $I18
  rx12_jump19:
    jump $I19
  rx12_done16:
    rx12_cur."!cursor_fail"()
    .return (rx12_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_3_1349901746.339_caps" :subid("cuid_memo_1_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_3_1349901746.339_nfa" :subid("cuid_memo_2_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 1
    push $P5003, $P5004
    box $P5005, 0
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 35
    push $P5003, $P5008
    box $P5009, 4
    push $P5003, $P5009
    box $P5010, 1
    push $P5003, $P5010
    box $P5011, 0
    push $P5003, $P5011
    box $P5012, 0
    push $P5003, $P5012
    push $P5001, $P5003
    new $P5013, 'ResizablePMCArray'
    box $P5014, 4
    push $P5013, $P5014
    box $P5015, 32
    push $P5013, $P5015
    box $P5016, 3
    push $P5013, $P5016
    push $P5001, $P5013
    new $P5017, 'ResizablePMCArray'
    box $P5018, 1
    push $P5017, $P5018
    box $P5019, 0
    push $P5017, $P5019
    box $P5020, 2
    push $P5017, $P5020
    box $P5021, 1
    push $P5017, $P5021
    box $P5022, 0
    push $P5017, $P5022
    box $P5023, 1
    push $P5017, $P5023
    push $P5001, $P5017
    new $P5024, 'ResizablePMCArray'
    box $P5025, 5
    push $P5024, $P5025
    box $P5026, 4096
    push $P5024, $P5026
    box $P5027, 4
    push $P5024, $P5027
    box $P5028, 1
    push $P5024, $P5028
    box $P5029, 0
    push $P5024, $P5029
    box $P5030, 1
    push $P5024, $P5030
    push $P5001, $P5024
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_3_1349901746.339_alt_nfa__1_1349901746.478" :subid("cuid_memo_3_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 1
    push $P5004, $P5005
    box $P5006, 0
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 4
    push $P5008, $P5009
    box $P5010, 32
    push $P5008, $P5010
    box $P5011, 3
    push $P5008, $P5011
    push $P5002, $P5008
    new $P5012, 'ResizablePMCArray'
    box $P5013, 1
    push $P5012, $P5013
    box $P5014, 0
    push $P5012, $P5014
    box $P5015, 2
    push $P5012, $P5015
    box $P5016, 1
    push $P5012, $P5016
    box $P5017, 0
    push $P5012, $P5017
    box $P5018, 0
    push $P5012, $P5018
    push $P5002, $P5012
    push $P5001, $P5002
    new $P5019, 'ResizablePMCArray'
    new $P5020, 'ResizablePMCArray'
    push $P5019, $P5020
    new $P5021, 'ResizablePMCArray'
    box $P5022, 2
    push $P5021, $P5022
    box $P5023, 35
    push $P5021, $P5023
    box $P5024, 2
    push $P5021, $P5024
    push $P5019, $P5021
    new $P5025, 'ResizablePMCArray'
    box $P5026, 5
    push $P5025, $P5026
    box $P5027, 4096
    push $P5025, $P5027
    box $P5028, 2
    push $P5025, $P5028
    box $P5029, 1
    push $P5025, $P5029
    box $P5030, 0
    push $P5025, $P5030
    box $P5031, 0
    push $P5025, $P5031
    push $P5019, $P5025
    push $P5001, $P5019
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "normspace" :subid("cuid_5_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 19
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_4_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx18_tgt
    .local int rx18_pos
    .local int rx18_off
    .local int rx18_eos
    .local int rx18_rep
    .local pmc rx18_cur
    .local pmc rx18_curclass
    .local pmc rx18_bstack
    .local pmc rx18_cstack
    (rx18_cur, rx18_tgt, rx18_pos, rx18_curclass, rx18_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx18_cur
    length rx18_eos, rx18_tgt
    eq $I19, 1, rx18_restart36
    gt rx18_pos, rx18_eos, rx18_fail37
    repr_get_attr_int $I11, self, rx18_curclass, "$!from"
    ne $I11, -1, rxscan19_done43
    goto rxscan19_scan42
  rxscan19_loop41:
    inc rx18_pos
    gt rx18_pos, rx18_eos, rx18_fail37
    repr_bind_attr_int rx18_cur, rx18_curclass, "$!from", rx18_pos
  rxscan19_scan42:
    nqp_rxmark rx18_bstack, rxscan19_loop41, rx18_pos, 0
  rxscan19_done43:
    .const 'Sub' $P5001 = 'cuid_4_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx18_cur, rx18_curclass, "$!pos", rx18_pos
    $P11 = rx18_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx18_curclass, "$!pos"
    lt $I11, 0, rx18_fail37
    repr_bind_attr_int rx18_cur, rx18_curclass, "$!pos", rx18_pos
    $P11 = rx18_cur."ws"()
    repr_get_attr_int $I11, $P11, rx18_curclass, "$!pos"
    lt $I11, 0, rx18_fail37
    repr_get_attr_int rx18_pos, $P11, rx18_curclass, "$!pos"
    rx18_cur."!cursor_pass"(rx18_pos, "normspace", 'backtrack'=>1)
    .return (rx18_cur)
  rx18_restart36:
    repr_get_attr_obj rx18_cstack, rx18_cur, rx18_curclass, "$!cstack"
  rx18_fail37:
    unless rx18_bstack, rx18_done35
    pop $I19, rx18_bstack
    if_null rx18_cstack, rx18_cstack_done40
    unless rx18_cstack, rx18_cstack_done40
    dec $I19
    set $P11, rx18_cstack[$I19]
  rx18_cstack_done40:
    pop rx18_rep, rx18_bstack
    pop rx18_pos, rx18_bstack
    pop $I19, rx18_bstack
    lt rx18_pos, -1, rx18_done35
    lt rx18_pos, 0, rx18_fail37
    eq $I19, 0, rx18_fail37
    nqp_islist $I20, rx18_cstack
    unless $I20, rx18_jump38
    elements $I18, rx18_bstack
    le $I18, 0, rx18_cut39
    dec $I18
    set $I18, rx18_bstack[$I18]
  rx18_cut39:
    assign rx18_cstack, $I18
  rx18_jump38:
    jump $I19
  rx18_done35:
    rx18_cur."!cursor_fail"()
    .return (rx18_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_5_1349901746.339_caps" :subid("cuid_memo_4_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_5_1349901746.339_nfa" :subid("cuid_memo_5_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 4
    push $P5003, $P5004
    box $P5005, 32
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 35
    push $P5003, $P5008
    box $P5009, 2
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 0
    push $P5010, $P5011
    box $P5012, 0
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5001, $P5010
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1349901746.339") :anon :lex :outer("cuid_5_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
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
    eq $I19, 1, rx20_restart46
    gt rx20_pos, rx20_eos, rx20_fail47
    repr_get_attr_int $I11, self, rx20_curclass, "$!from"
    ne $I11, -1, rxscan21_done53
    goto rxscan21_scan52
  rxscan21_loop51:
    inc rx20_pos
    gt rx20_pos, rx20_eos, rx20_fail47
    repr_bind_attr_int rx20_cur, rx20_curclass, "$!from", rx20_pos
  rxscan21_scan52:
    nqp_rxmark rx20_bstack, rxscan21_loop51, rx20_pos, 0
  rxscan21_done53:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt22_055
    nqp_push_label $P11, alt22_156
    nqp_rxmark rx20_bstack, alt22_end54, -1, 0
    rx20_cur."!alt"(rx20_pos, "alt_nfa__2_1349901746.49", $P11)
    goto rx20_fail47
  alt22_055:
    ge rx20_pos, rx20_eos, rx20_fail47
    is_cclass $I11, .CCLASS_WHITESPACE, rx20_tgt, rx20_pos
    unless $I11, rx20_fail47
    add rx20_pos, 1
    goto alt22_end54
  alt22_156:
    add $I11, rx20_pos, 1
    gt $I11, rx20_eos, rx20_fail47
    substr $S10, rx20_tgt, rx20_pos, 1
    ne $S10, ucs4:"#", rx20_fail47
    add rx20_pos, 1
    goto alt22_end54
  alt22_end54:
    rx20_cur."!cursor_pass"(rx20_pos, 'backtrack'=>1)
    .return (rx20_cur)
  rx20_restart46:
    repr_get_attr_obj rx20_cstack, rx20_cur, rx20_curclass, "$!cstack"
  rx20_fail47:
    unless rx20_bstack, rx20_done45
    pop $I19, rx20_bstack
    if_null rx20_cstack, rx20_cstack_done50
    unless rx20_cstack, rx20_cstack_done50
    dec $I19
    set $P11, rx20_cstack[$I19]
  rx20_cstack_done50:
    pop rx20_rep, rx20_bstack
    pop rx20_pos, rx20_bstack
    pop $I19, rx20_bstack
    lt rx20_pos, -1, rx20_done45
    lt rx20_pos, 0, rx20_fail47
    eq $I19, 0, rx20_fail47
    nqp_islist $I20, rx20_cstack
    unless $I20, rx20_jump48
    elements $I18, rx20_bstack
    le $I18, 0, rx20_cut49
    dec $I18
    set $I18, rx20_bstack[$I18]
  rx20_cut49:
    assign rx20_cstack, $I18
  rx20_jump48:
    jump $I19
  rx20_done45:
    rx20_cur."!cursor_fail"()
    .return (rx20_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_4_1349901746.339_caps" :subid("cuid_memo_6_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_4_1349901746.339_nfa" :subid("cuid_memo_7_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 4
    push $P5003, $P5004
    box $P5005, 32
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 35
    push $P5003, $P5008
    box $P5009, 0
    push $P5003, $P5009
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_4_1349901746.339_alt_nfa__2_1349901746.49" :subid("cuid_memo_8_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 4
    push $P5004, $P5005
    box $P5006, 32
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 35
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5008, $P5010
    push $P5001, $P5008
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "identifier" :subid("cuid_6_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 21
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx24_tgt
    .local int rx24_pos
    .local int rx24_off
    .local int rx24_eos
    .local int rx24_rep
    .local pmc rx24_cur
    .local pmc rx24_curclass
    .local pmc rx24_bstack
    .local pmc rx24_cstack
    (rx24_cur, rx24_tgt, rx24_pos, rx24_curclass, rx24_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx24_cur
    length rx24_eos, rx24_tgt
    eq $I19, 1, rx24_restart60
    gt rx24_pos, rx24_eos, rx24_fail61
    repr_get_attr_int $I11, self, rx24_curclass, "$!from"
    ne $I11, -1, rxscan25_done67
    goto rxscan25_scan66
  rxscan25_loop65:
    inc rx24_pos
    gt rx24_pos, rx24_eos, rx24_fail61
    repr_bind_attr_int rx24_cur, rx24_curclass, "$!from", rx24_pos
  rxscan25_scan66:
    nqp_rxmark rx24_bstack, rxscan25_loop65, rx24_pos, 0
  rxscan25_done67:
    repr_bind_attr_int rx24_cur, rx24_curclass, "$!pos", rx24_pos
    $P11 = rx24_cur."ident"()
    repr_get_attr_int $I11, $P11, rx24_curclass, "$!pos"
    lt $I11, 0, rx24_fail61
    repr_get_attr_int rx24_pos, $P11, rx24_curclass, "$!pos"
    nqp_rxmark rx24_bstack, rxquantr27_done70, rx24_pos, 0
  rxquantr27_loop69:
  alt28_072:
    nqp_rxmark rx24_bstack, alt28_173, rx24_pos, 0
    add $I11, rx24_pos, 1
    gt $I11, rx24_eos, rx24_fail61
    substr $S10, rx24_tgt, rx24_pos, 1
    ne $S10, ucs4:"-", rx24_fail61
    add rx24_pos, 1
    goto alt28_end71
  alt28_173:
    ge rx24_pos, rx24_eos, rx24_fail61
    substr $S11, rx24_tgt, rx24_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx24_fail61
    inc rx24_pos
  alt28_end71:
    repr_bind_attr_int rx24_cur, rx24_curclass, "$!pos", rx24_pos
    $P11 = rx24_cur."ident"()
    repr_get_attr_int $I11, $P11, rx24_curclass, "$!pos"
    lt $I11, 0, rx24_fail61
    repr_get_attr_int rx24_pos, $P11, rx24_curclass, "$!pos"
    nqp_rxpeek $I19, rx24_bstack, rxquantr27_done70
    inc $I19
    inc $I19
    set rx24_rep, rx24_bstack[$I19]
    nqp_rxcommit rx24_bstack, rxquantr27_done70
    inc rx24_rep
    nqp_rxmark rx24_bstack, rxquantr27_done70, rx24_pos, rx24_rep
    goto rxquantr27_loop69
  rxquantr27_done70:
    rx24_cur."!cursor_pass"(rx24_pos, "identifier", 'backtrack'=>1)
    .return (rx24_cur)
  rx24_restart60:
    repr_get_attr_obj rx24_cstack, rx24_cur, rx24_curclass, "$!cstack"
  rx24_fail61:
    unless rx24_bstack, rx24_done59
    pop $I19, rx24_bstack
    if_null rx24_cstack, rx24_cstack_done64
    unless rx24_cstack, rx24_cstack_done64
    dec $I19
    set $P11, rx24_cstack[$I19]
  rx24_cstack_done64:
    pop rx24_rep, rx24_bstack
    pop rx24_pos, rx24_bstack
    pop $I19, rx24_bstack
    lt rx24_pos, -1, rx24_done59
    lt rx24_pos, 0, rx24_fail61
    eq $I19, 0, rx24_fail61
    nqp_islist $I20, rx24_cstack
    unless $I20, rx24_jump62
    elements $I18, rx24_bstack
    le $I18, 0, rx24_cut63
    dec $I18
    set $I18, rx24_bstack[$I18]
  rx24_cut63:
    assign rx24_cstack, $I18
  rx24_jump62:
    jump $I19
  rx24_done59:
    rx24_cur."!cursor_fail"()
    .return (rx24_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_6_1349901746.339_caps" :subid("cuid_memo_9_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_6_1349901746.339_nfa" :subid("cuid_memo_10_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "ident"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 0
    push $P5007, $P5008
    box $P5009, 0
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "arg" :subid("cuid_7_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 23
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
    eq $I19, 1, rx30_restart77
    gt rx30_pos, rx30_eos, rx30_fail78
    repr_get_attr_int $I11, self, rx30_curclass, "$!from"
    ne $I11, -1, rxscan31_done84
    goto rxscan31_scan83
  rxscan31_loop82:
    inc rx30_pos
    gt rx30_pos, rx30_eos, rx30_fail78
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!from", rx30_pos
  rxscan31_scan83:
    nqp_rxmark rx30_bstack, rxscan31_loop82, rx30_pos, 0
  rxscan31_done84:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt32_086
    nqp_push_label $P11, alt32_188
    nqp_push_label $P11, alt32_290
    nqp_rxmark rx30_bstack, alt32_end85, -1, 0
    rx30_cur."!alt"(rx30_pos, "alt_nfa__3_1349901746.515", $P11)
    goto rx30_fail78
  alt32_086:
    ge rx30_pos, rx30_eos, rx30_fail78
    substr $S11, rx30_tgt, rx30_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx30_fail78
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!pos", rx30_pos
    $P11 = rx30_cur."quote_EXPR"(":q")
    repr_get_attr_int $I11, $P11, rx30_curclass, "$!pos"
    lt $I11, 0, rx30_fail78
    nqp_rxmark rx30_bstack, rxsubrule33_pass87, -1, 0
  rxsubrule33_pass87:
    rx30_cstack = rx30_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx30_pos, $P11, rx30_curclass, "$!pos"
    goto alt32_end85
  alt32_188:
    ge rx30_pos, rx30_eos, rx30_fail78
    substr $S11, rx30_tgt, rx30_pos, 1
    index $I11, ucs4:"\"", $S11
    lt $I11, 0, rx30_fail78
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!pos", rx30_pos
    $P11 = rx30_cur."quote_EXPR"(":qq")
    repr_get_attr_int $I11, $P11, rx30_curclass, "$!pos"
    lt $I11, 0, rx30_fail78
    nqp_rxmark rx30_bstack, rxsubrule34_pass89, -1, 0
  rxsubrule34_pass89:
    rx30_cstack = rx30_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx30_pos, $P11, rx30_curclass, "$!pos"
    goto alt32_end85
  alt32_290:
    nqp_rxmark rx30_bstack, rxcap35_fail92, rx30_pos, 0
    nqp_rxmark rx30_bstack, rxquantr36_done94, -1, 0
  rxquantr36_loop93:
    ge rx30_pos, rx30_eos, rx30_fail78
    is_cclass $I11, .CCLASS_NUMERIC, rx30_tgt, rx30_pos
    unless $I11, rx30_fail78
    add rx30_pos, 1
    nqp_rxpeek $I19, rx30_bstack, rxquantr36_done94
    inc $I19
    inc $I19
    set rx30_rep, rx30_bstack[$I19]
    nqp_rxcommit rx30_bstack, rxquantr36_done94
    inc rx30_rep
    nqp_rxmark rx30_bstack, rxquantr36_done94, rx30_pos, rx30_rep
    goto rxquantr36_loop93
  rxquantr36_done94:
    nqp_rxpeek $I19, rx30_bstack, rxcap35_fail92
    inc $I19
    set $I11, rx30_bstack[$I19]
    repr_bind_attr_int rx30_cur, rx30_curclass, "$!pos", rx30_pos
    $P11 = rx30_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx30_pos)
    rx30_cstack = rx30_cur."!cursor_capture"($P11, "val")
    goto rxcap35_done91
  rxcap35_fail92:
    goto rx30_fail78
  rxcap35_done91:
    goto alt32_end85
  alt32_end85:
    nqp_rxcommit rx30_bstack, alt32_end85
    rx30_cur."!cursor_pass"(rx30_pos, "arg", 'backtrack'=>1)
    .return (rx30_cur)
  rx30_restart77:
    repr_get_attr_obj rx30_cstack, rx30_cur, rx30_curclass, "$!cstack"
  rx30_fail78:
    unless rx30_bstack, rx30_done76
    pop $I19, rx30_bstack
    if_null rx30_cstack, rx30_cstack_done81
    unless rx30_cstack, rx30_cstack_done81
    dec $I19
    set $P11, rx30_cstack[$I19]
  rx30_cstack_done81:
    pop rx30_rep, rx30_bstack
    pop rx30_pos, rx30_bstack
    pop $I19, rx30_bstack
    lt rx30_pos, -1, rx30_done76
    lt rx30_pos, 0, rx30_fail78
    eq $I19, 0, rx30_fail78
    nqp_islist $I20, rx30_cstack
    unless $I20, rx30_jump79
    elements $I18, rx30_bstack
    le $I18, 0, rx30_cut80
    dec $I18
    set $I18, rx30_bstack[$I18]
  rx30_cut80:
    assign rx30_cstack, $I18
  rx30_jump79:
    jump $I19
  rx30_done76:
    rx30_cur."!cursor_fail"()
    .return (rx30_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_7_1349901746.339_caps" :subid("cuid_memo_11_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    box $P5003, 0
    set $P5001["val"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_7_1349901746.339_nfa" :subid("cuid_memo_12_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "'"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 6
    push $P5003, $P5007
    box $P5008, "\""
    push $P5003, $P5008
    box $P5009, 3
    push $P5003, $P5009
    box $P5010, 1
    push $P5003, $P5010
    box $P5011, 0
    push $P5003, $P5011
    box $P5012, 4
    push $P5003, $P5012
    push $P5001, $P5003
    new $P5013, 'ResizablePMCArray'
    box $P5014, 0
    push $P5013, $P5014
    box $P5015, 0
    push $P5013, $P5015
    box $P5016, 0
    push $P5013, $P5016
    push $P5001, $P5013
    new $P5017, 'ResizablePMCArray'
    box $P5018, 0
    push $P5017, $P5018
    box $P5019, 0
    push $P5017, $P5019
    box $P5020, 0
    push $P5017, $P5020
    push $P5001, $P5017
    new $P5021, 'ResizablePMCArray'
    box $P5022, 4
    push $P5021, $P5022
    box $P5023, 8
    push $P5021, $P5023
    box $P5024, 5
    push $P5021, $P5024
    push $P5001, $P5021
    new $P5025, 'ResizablePMCArray'
    box $P5026, 1
    push $P5025, $P5026
    box $P5027, 0
    push $P5025, $P5027
    box $P5028, 4
    push $P5025, $P5028
    box $P5029, 1
    push $P5025, $P5029
    box $P5030, 0
    push $P5025, $P5030
    box $P5031, 0
    push $P5025, $P5031
    push $P5001, $P5025
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_7_1349901746.339_alt_nfa__3_1349901746.515" :subid("cuid_memo_13_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 6
    push $P5004, $P5005
    box $P5006, "'"
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 0
    push $P5008, $P5009
    box $P5010, 0
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 6
    push $P5014, $P5015
    box $P5016, "\""
    push $P5014, $P5016
    box $P5017, 2
    push $P5014, $P5017
    push $P5012, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 0
    push $P5018, $P5019
    box $P5020, 0
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5012, $P5018
    push $P5001, $P5012
    new $P5022, 'ResizablePMCArray'
    new $P5023, 'ResizablePMCArray'
    push $P5022, $P5023
    new $P5024, 'ResizablePMCArray'
    box $P5025, 1
    push $P5024, $P5025
    box $P5026, 0
    push $P5024, $P5026
    box $P5027, 2
    push $P5024, $P5027
    push $P5022, $P5024
    new $P5028, 'ResizablePMCArray'
    box $P5029, 4
    push $P5028, $P5029
    box $P5030, 8
    push $P5028, $P5030
    box $P5031, 3
    push $P5028, $P5031
    push $P5022, $P5028
    new $P5032, 'ResizablePMCArray'
    box $P5033, 1
    push $P5032, $P5033
    box $P5034, 0
    push $P5032, $P5034
    box $P5035, 2
    push $P5032, $P5035
    box $P5036, 1
    push $P5032, $P5036
    box $P5037, 0
    push $P5032, $P5037
    box $P5038, 0
    push $P5032, $P5038
    push $P5022, $P5032
    push $P5001, $P5022
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "arglist" :subid("cuid_8_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 31
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    .local pmc rx37_curclass
    .local pmc rx37_bstack
    .local pmc rx37_cstack
    (rx37_cur, rx37_tgt, rx37_pos, rx37_curclass, rx37_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx37_cur
    length rx37_eos, rx37_tgt
    eq $I19, 1, rx37_restart97
    gt rx37_pos, rx37_eos, rx37_fail98
    repr_get_attr_int $I11, self, rx37_curclass, "$!from"
    ne $I11, -1, rxscan38_done104
    goto rxscan38_scan103
  rxscan38_loop102:
    inc rx37_pos
    gt rx37_pos, rx37_eos, rx37_fail98
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!from", rx37_pos
  rxscan38_scan103:
    nqp_rxmark rx37_bstack, rxscan38_loop102, rx37_pos, 0
  rxscan38_done104:
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."ws"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail98
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."arg"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail98
    nqp_rxmark rx37_bstack, rxsubrule40_pass106, -1, 0
  rxsubrule40_pass106:
    rx37_cstack = rx37_cur."!cursor_capture"($P11, "arg")
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."ws"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail98
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    nqp_rxmark rx37_bstack, rxquantr42_done109, rx37_pos, 0
  rxquantr42_loop108:
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."ws"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail98
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    add $I11, rx37_pos, 1
    gt $I11, rx37_eos, rx37_fail98
    substr $S10, rx37_tgt, rx37_pos, 1
    ne $S10, ucs4:",", rx37_fail98
    add rx37_pos, 1
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."ws"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail98
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."arg"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail98
    nqp_rxmark rx37_bstack, rxsubrule45_pass112, -1, 0
  rxsubrule45_pass112:
    rx37_cstack = rx37_cur."!cursor_capture"($P11, "arg")
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    nqp_rxpeek $I19, rx37_bstack, rxquantr42_done109
    inc $I19
    inc $I19
    set rx37_rep, rx37_bstack[$I19]
    nqp_rxcommit rx37_bstack, rxquantr42_done109
    inc rx37_rep
    nqp_rxmark rx37_bstack, rxquantr42_done109, rx37_pos, rx37_rep
    goto rxquantr42_loop108
  rxquantr42_done109:
    repr_bind_attr_int rx37_cur, rx37_curclass, "$!pos", rx37_pos
    $P11 = rx37_cur."ws"()
    repr_get_attr_int $I11, $P11, rx37_curclass, "$!pos"
    lt $I11, 0, rx37_fail98
    repr_get_attr_int rx37_pos, $P11, rx37_curclass, "$!pos"
    rx37_cur."!cursor_pass"(rx37_pos, "arglist", 'backtrack'=>1)
    .return (rx37_cur)
  rx37_restart97:
    repr_get_attr_obj rx37_cstack, rx37_cur, rx37_curclass, "$!cstack"
  rx37_fail98:
    unless rx37_bstack, rx37_done96
    pop $I19, rx37_bstack
    if_null rx37_cstack, rx37_cstack_done101
    unless rx37_cstack, rx37_cstack_done101
    dec $I19
    set $P11, rx37_cstack[$I19]
  rx37_cstack_done101:
    pop rx37_rep, rx37_bstack
    pop rx37_pos, rx37_bstack
    pop $I19, rx37_bstack
    lt rx37_pos, -1, rx37_done96
    lt rx37_pos, 0, rx37_fail98
    eq $I19, 0, rx37_fail98
    nqp_islist $I20, rx37_cstack
    unless $I20, rx37_jump99
    elements $I18, rx37_bstack
    le $I18, 0, rx37_cut100
    dec $I18
    set $I18, rx37_bstack[$I18]
  rx37_cut100:
    assign rx37_cstack, $I18
  rx37_jump99:
    jump $I19
  rx37_done96:
    rx37_cur."!cursor_fail"()
    .return (rx37_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_8_1349901746.339_caps" :subid("cuid_memo_14_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["arg"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_9_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 33
    .param pmc _lex_param_0 
    .lex "%*RX", $P101 
    .lex utf8:"$\x{a2}", $P102 
    .lex "$/", $P103 
    .lex "self", _lex_param_0 
    .local pmc self 
    new $P5001, 'Hash'
    set $P101, $P5001
    set self, _lex_param_0
    .local string rx47_tgt
    .local int rx47_pos
    .local int rx47_off
    .local int rx47_eos
    .local int rx47_rep
    .local pmc rx47_cur
    .local pmc rx47_curclass
    .local pmc rx47_bstack
    .local pmc rx47_cstack
    (rx47_cur, rx47_tgt, rx47_pos, rx47_curclass, rx47_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx47_cur
    length rx47_eos, rx47_tgt
    eq $I19, 1, rx47_restart116
    gt rx47_pos, rx47_eos, rx47_fail117
    repr_get_attr_int $I11, self, rx47_curclass, "$!from"
    ne $I11, -1, rxscan48_done123
    goto rxscan48_scan122
  rxscan48_loop121:
    inc rx47_pos
    gt rx47_pos, rx47_eos, rx47_fail117
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!from", rx47_pos
  rxscan48_scan122:
    nqp_rxmark rx47_bstack, rxscan48_loop121, rx47_pos, 0
  rxscan48_done123:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    store_lex unicode:"$\x{a2}", rx47_cur
    unless_null $P101, fallback124
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5003, $P5004
    set $P5002, $P5003["%RX"]
    unless_null $P5002, fallback125
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5005, $P5006
    new $P5007, 'Hash'
    set $P5005["%RX"], $P5007
    set $P5002, $P5007
  fallback125:
    unless_null $P5002, vivi_49126
    die "Contextual %*RX not found"
    box $P5008, "Contextual %*RX not found"
    set $P5002, $P5008
  vivi_49126:
    set $P101, $P5002
  fallback124:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail117
    nqp_rxmark rx47_bstack, rxsubrule50_pass127, -1, 0
  rxsubrule50_pass127:
    rx47_cstack = rx47_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
  alt51_0129:
    nqp_rxmark rx47_bstack, alt51_1131, rx47_pos, 0
    lt rx47_pos, rx47_eos, rx47_fail117
    goto alt51_end128
  alt51_1131:
    repr_bind_attr_int rx47_cur, rx47_curclass, "$!pos", rx47_pos
    $P11 = rx47_cur."panic"("Confused")
    repr_get_attr_int $I11, $P11, rx47_curclass, "$!pos"
    lt $I11, 0, rx47_fail117
    repr_get_attr_int rx47_pos, $P11, rx47_curclass, "$!pos"
  alt51_end128:
    rx47_cur."!cursor_pass"(rx47_pos, "TOP", 'backtrack'=>1)
    .return (rx47_cur)
  rx47_restart116:
    repr_get_attr_obj rx47_cstack, rx47_cur, rx47_curclass, "$!cstack"
  rx47_fail117:
    unless rx47_bstack, rx47_done115
    pop $I19, rx47_bstack
    if_null rx47_cstack, rx47_cstack_done120
    unless rx47_cstack, rx47_cstack_done120
    dec $I19
    set $P11, rx47_cstack[$I19]
  rx47_cstack_done120:
    pop rx47_rep, rx47_bstack
    pop rx47_pos, rx47_bstack
    pop $I19, rx47_bstack
    lt rx47_pos, -1, rx47_done115
    lt rx47_pos, 0, rx47_fail117
    eq $I19, 0, rx47_fail117
    nqp_islist $I20, rx47_cstack
    unless $I20, rx47_jump118
    elements $I18, rx47_bstack
    le $I18, 0, rx47_cut119
    dec $I18
    set $I18, rx47_bstack[$I18]
  rx47_cut119:
    assign rx47_cstack, $I18
  rx47_jump118:
    jump $I19
  rx47_done115:
    rx47_cur."!cursor_fail"()
    .return (rx47_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1349901746.339_caps" :subid("cuid_memo_15_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1349901746.339_nfa" :subid("cuid_memo_16_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 1
    push $P5003, $P5004
    box $P5005, 0
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "nibbler"
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 0
    push $P5011, $P5012
    box $P5013, 0
    push $P5011, $P5013
    box $P5014, 0
    push $P5011, $P5014
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "nibbler" :subid("cuid_10_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_161_1349901746.339' 
    capture_lex $P5014 
    .lex "$OLDRX", $P101 
    .lex "%*RX", $P102 
    .lex utf8:"$\x{a2}", $P103 
    .lex "$/", $P104 
    .lex "self", _lex_param_0 
    .local pmc self 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    set self, _lex_param_0
    .local string rx54_tgt
    .local int rx54_pos
    .local int rx54_off
    .local int rx54_eos
    .local int rx54_rep
    .local pmc rx54_cur
    .local pmc rx54_curclass
    .local pmc rx54_bstack
    .local pmc rx54_cstack
    (rx54_cur, rx54_tgt, rx54_pos, rx54_curclass, rx54_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx54_cur
    length rx54_eos, rx54_tgt
    eq $I19, 1, rx54_restart135
    gt rx54_pos, rx54_eos, rx54_fail136
    repr_get_attr_int $I11, self, rx54_curclass, "$!from"
    ne $I11, -1, rxscan55_done142
    goto rxscan55_scan141
  rxscan55_loop140:
    inc rx54_pos
    gt rx54_pos, rx54_eos, rx54_fail136
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!from", rx54_pos
  rxscan55_scan141:
    nqp_rxmark rx54_bstack, rxscan55_loop140, rx54_pos, 0
  rxscan55_done142:
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    store_lex unicode:"$\x{a2}", rx54_cur
    find_dynamic_lex $P5003, "%*RX"
    set $P101, $P5003
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    store_lex unicode:"$\x{a2}", rx54_cur
    unless_null $P102, fallback143
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["%RX"]
    unless_null $P5004, fallback144
    nqp_get_sc_object $P5008, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%RX"], $P5009
    set $P5004, $P5009
  fallback144:
    unless_null $P5004, vivi_56145
    die "Contextual %*RX not found"
    box $P5010, "Contextual %*RX not found"
    set $P5004, $P5010
  vivi_56145:
    set $P102, $P5004
  fallback143:
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    store_lex unicode:"$\x{a2}", rx54_cur
    $P5011 = $P103."MATCH"()
    set $P104, $P5011
    .const 'Sub' $P5012 = 'cuid_161_1349901746.339' 
    capture_lex $P5012
    $P5013 = $P5012()
    nqp_rxmark rx54_bstack, rxquantr58_done153, rx54_pos, 0
  rxquantr58_loop152:
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    $P11 = rx54_cur."ws"()
    repr_get_attr_int $I11, $P11, rx54_curclass, "$!pos"
    lt $I11, 0, rx54_fail136
    repr_get_attr_int rx54_pos, $P11, rx54_curclass, "$!pos"
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt60_0156
    nqp_push_label $P11, alt60_1157
    nqp_push_label $P11, alt60_2158
    nqp_push_label $P11, alt60_3159
    nqp_rxmark rx54_bstack, alt60_end155, -1, 0
    rx54_cur."!alt"(rx54_pos, "alt_nfa__4_1349901746.561", $P11)
    goto rx54_fail136
  alt60_0156:
    add $I11, rx54_pos, 2
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 2
    ne $S10, ucs4:"||", rx54_fail136
    add rx54_pos, 2
    goto alt60_end155
  alt60_1157:
    add $I11, rx54_pos, 1
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 1
    ne $S10, ucs4:"|", rx54_fail136
    add rx54_pos, 1
    goto alt60_end155
  alt60_2158:
    add $I11, rx54_pos, 2
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 2
    ne $S10, ucs4:"&&", rx54_fail136
    add rx54_pos, 2
    goto alt60_end155
  alt60_3159:
    add $I11, rx54_pos, 1
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 1
    ne $S10, ucs4:"&", rx54_fail136
    add rx54_pos, 1
    goto alt60_end155
  alt60_end155:
    nqp_rxcommit rx54_bstack, alt60_end155
    nqp_rxpeek $I19, rx54_bstack, rxquantr58_done153
    inc $I19
    inc $I19
    set rx54_rep, rx54_bstack[$I19]
    nqp_rxcommit rx54_bstack, rxquantr58_done153
    inc rx54_rep
  rxquantr58_done153:
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    $P11 = rx54_cur."termaltseq"()
    repr_get_attr_int $I11, $P11, rx54_curclass, "$!pos"
    lt $I11, 0, rx54_fail136
    nqp_rxmark rx54_bstack, rxsubrule61_pass160, -1, 0
  rxsubrule61_pass160:
    rx54_cstack = rx54_cur."!cursor_capture"($P11, "termaltseq")
    repr_get_attr_int rx54_pos, $P11, rx54_curclass, "$!pos"
    rx54_cur."!cursor_pass"(rx54_pos, "nibbler", 'backtrack'=>1)
    .return (rx54_cur)
  rx54_restart135:
    repr_get_attr_obj rx54_cstack, rx54_cur, rx54_curclass, "$!cstack"
  rx54_fail136:
    unless rx54_bstack, rx54_done134
    pop $I19, rx54_bstack
    if_null rx54_cstack, rx54_cstack_done139
    unless rx54_cstack, rx54_cstack_done139
    dec $I19
    set $P11, rx54_cstack[$I19]
  rx54_cstack_done139:
    pop rx54_rep, rx54_bstack
    pop rx54_pos, rx54_bstack
    pop $I19, rx54_bstack
    lt rx54_pos, -1, rx54_done134
    lt rx54_pos, 0, rx54_fail136
    eq $I19, 0, rx54_fail136
    nqp_islist $I20, rx54_cstack
    unless $I20, rx54_jump137
    elements $I18, rx54_bstack
    le $I18, 0, rx54_cut138
    dec $I18
    set $I18, rx54_bstack[$I18]
  rx54_cut138:
    assign rx54_cstack, $I18
  rx54_jump137:
    jump $I19
  rx54_done134:
    rx54_cur."!cursor_fail"()
    .return (rx54_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1349901746.339_caps" :subid("cuid_memo_17_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["termaltseq"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1349901746.339_nfa" :subid("cuid_memo_18_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 1
    push $P5003, $P5004
    box $P5005, 0
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 1
    push $P5007, $P5008
    box $P5009, 0
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 0
    push $P5011, $P5012
    box $P5013, 0
    push $P5011, $P5013
    box $P5014, 0
    push $P5011, $P5014
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1349901746.339_alt_nfa__4_1349901746.561" :subid("cuid_memo_19_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 124
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 2
    push $P5008, $P5009
    box $P5010, 124
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 124
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5012, $P5014
    push $P5001, $P5012
    new $P5018, 'ResizablePMCArray'
    new $P5019, 'ResizablePMCArray'
    push $P5018, $P5019
    new $P5020, 'ResizablePMCArray'
    box $P5021, 2
    push $P5020, $P5021
    box $P5022, 38
    push $P5020, $P5022
    box $P5023, 2
    push $P5020, $P5023
    push $P5018, $P5020
    new $P5024, 'ResizablePMCArray'
    box $P5025, 2
    push $P5024, $P5025
    box $P5026, 38
    push $P5024, $P5026
    box $P5027, 0
    push $P5024, $P5027
    push $P5018, $P5024
    push $P5001, $P5018
    new $P5028, 'ResizablePMCArray'
    new $P5029, 'ResizablePMCArray'
    push $P5028, $P5029
    new $P5030, 'ResizablePMCArray'
    box $P5031, 2
    push $P5030, $P5031
    box $P5032, 38
    push $P5030, $P5032
    box $P5033, 0
    push $P5030, $P5033
    push $P5028, $P5030
    push $P5001, $P5028
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1349901746.339") :anon :lex :outer("cuid_10_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 42
    .const 'Sub' $P5007 = 'cuid_160_1349901746.339' 
    capture_lex $P5007 
    find_lex $P5004, "$OLDRX"
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next149:
    unless $P5003, for_done151
    shift $P5006, $P5003
  for_redo150:
    .const 'Sub' $P5005 = 'cuid_160_1349901746.339' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next149
  for_done151:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1349901746.339") :anon :lex :outer("cuid_161_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_dynamic_lex $P5001, "%*RX"
    unless_null $P5001, fallback146
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5003, $P5004
    set $P5002, $P5003["%RX"]
    unless_null $P5002, fallback147
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5005, $P5006
    new $P5007, 'Hash'
    set $P5005["%RX"], $P5007
    set $P5002, $P5007
  fallback147:
    unless_null $P5002, vivi_57148
    die "Contextual %*RX not found"
    box $P5008, "Contextual %*RX not found"
    set $P5002, $P5008
  vivi_57148:
    set $P5001, $P5002
  fallback146:
    $P5009 = _lex_param_0."key"()
    set $S5001, $P5009
    $P5010 = _lex_param_0."value"()
    set $P5001[$S5001], $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "termaltseq" :subid("cuid_11_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 49
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    .local pmc rx62_curclass
    .local pmc rx62_bstack
    .local pmc rx62_cstack
    (rx62_cur, rx62_tgt, rx62_pos, rx62_curclass, rx62_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx62_cur
    length rx62_eos, rx62_tgt
    eq $I19, 1, rx62_restart163
    gt rx62_pos, rx62_eos, rx62_fail164
    repr_get_attr_int $I11, self, rx62_curclass, "$!from"
    ne $I11, -1, rxscan63_done170
    goto rxscan63_scan169
  rxscan63_loop168:
    inc rx62_pos
    gt rx62_pos, rx62_eos, rx62_fail164
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!from", rx62_pos
  rxscan63_scan169:
    nqp_rxmark rx62_bstack, rxscan63_loop168, rx62_pos, 0
  rxscan63_done170:
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."termconjseq"()
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail164
    nqp_rxmark rx62_bstack, rxsubrule64_pass171, -1, 0
  rxsubrule64_pass171:
    rx62_cstack = rx62_cur."!cursor_capture"($P11, "termconjseq")
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
    nqp_rxmark rx62_bstack, rxquantr65_done173, rx62_pos, 0
  rxquantr65_loop172:
    add $I11, rx62_pos, 2
    gt $I11, rx62_eos, rx62_fail164
    substr $S10, rx62_tgt, rx62_pos, 2
    ne $S10, ucs4:"||", rx62_fail164
    add rx62_pos, 2
  alt66_0175:
    nqp_rxmark rx62_bstack, alt66_1177, rx62_pos, 0
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."termconjseq"()
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail164
    nqp_rxmark rx62_bstack, rxsubrule67_pass176, -1, 0
  rxsubrule67_pass176:
    rx62_cstack = rx62_cur."!cursor_capture"($P11, "termconjseq")
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
    goto alt66_end174
  alt66_1177:
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail164
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
  alt66_end174:
    nqp_rxpeek $I19, rx62_bstack, rxquantr65_done173
    inc $I19
    inc $I19
    set rx62_rep, rx62_bstack[$I19]
    nqp_rxcommit rx62_bstack, rxquantr65_done173
    inc rx62_rep
    nqp_rxmark rx62_bstack, rxquantr65_done173, rx62_pos, rx62_rep
    goto rxquantr65_loop172
  rxquantr65_done173:
    rx62_cur."!cursor_pass"(rx62_pos, "termaltseq", 'backtrack'=>1)
    .return (rx62_cur)
  rx62_restart163:
    repr_get_attr_obj rx62_cstack, rx62_cur, rx62_curclass, "$!cstack"
  rx62_fail164:
    unless rx62_bstack, rx62_done162
    pop $I19, rx62_bstack
    if_null rx62_cstack, rx62_cstack_done167
    unless rx62_cstack, rx62_cstack_done167
    dec $I19
    set $P11, rx62_cstack[$I19]
  rx62_cstack_done167:
    pop rx62_rep, rx62_bstack
    pop rx62_pos, rx62_bstack
    pop $I19, rx62_bstack
    lt rx62_pos, -1, rx62_done162
    lt rx62_pos, 0, rx62_fail164
    eq $I19, 0, rx62_fail164
    nqp_islist $I20, rx62_cstack
    unless $I20, rx62_jump165
    elements $I18, rx62_bstack
    le $I18, 0, rx62_cut166
    dec $I18
    set $I18, rx62_bstack[$I18]
  rx62_cut166:
    assign rx62_cstack, $I18
  rx62_jump165:
    jump $I19
  rx62_done162:
    rx62_cur."!cursor_fail"()
    .return (rx62_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1349901746.339_caps" :subid("cuid_memo_20_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termconjseq"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1349901746.339_nfa" :subid("cuid_memo_21_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "termconjseq"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 124
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 124
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 0
    push $P5018, $P5019
    box $P5020, 0
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5001, $P5018
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "termconjseq" :subid("cuid_12_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 54
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    .local pmc rx69_curclass
    .local pmc rx69_bstack
    .local pmc rx69_cstack
    (rx69_cur, rx69_tgt, rx69_pos, rx69_curclass, rx69_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx69_cur
    length rx69_eos, rx69_tgt
    eq $I19, 1, rx69_restart181
    gt rx69_pos, rx69_eos, rx69_fail182
    repr_get_attr_int $I11, self, rx69_curclass, "$!from"
    ne $I11, -1, rxscan70_done188
    goto rxscan70_scan187
  rxscan70_loop186:
    inc rx69_pos
    gt rx69_pos, rx69_eos, rx69_fail182
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!from", rx69_pos
  rxscan70_scan187:
    nqp_rxmark rx69_bstack, rxscan70_loop186, rx69_pos, 0
  rxscan70_done188:
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!pos", rx69_pos
    $P11 = rx69_cur."termalt"()
    repr_get_attr_int $I11, $P11, rx69_curclass, "$!pos"
    lt $I11, 0, rx69_fail182
    nqp_rxmark rx69_bstack, rxsubrule71_pass189, -1, 0
  rxsubrule71_pass189:
    rx69_cstack = rx69_cur."!cursor_capture"($P11, "termalt")
    repr_get_attr_int rx69_pos, $P11, rx69_curclass, "$!pos"
    nqp_rxmark rx69_bstack, rxquantr72_done191, rx69_pos, 0
  rxquantr72_loop190:
    add $I11, rx69_pos, 2
    gt $I11, rx69_eos, rx69_fail182
    substr $S10, rx69_tgt, rx69_pos, 2
    ne $S10, ucs4:"&&", rx69_fail182
    add rx69_pos, 2
  alt73_0193:
    nqp_rxmark rx69_bstack, alt73_1195, rx69_pos, 0
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!pos", rx69_pos
    $P11 = rx69_cur."termalt"()
    repr_get_attr_int $I11, $P11, rx69_curclass, "$!pos"
    lt $I11, 0, rx69_fail182
    nqp_rxmark rx69_bstack, rxsubrule74_pass194, -1, 0
  rxsubrule74_pass194:
    rx69_cstack = rx69_cur."!cursor_capture"($P11, "termalt")
    repr_get_attr_int rx69_pos, $P11, rx69_curclass, "$!pos"
    goto alt73_end192
  alt73_1195:
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!pos", rx69_pos
    $P11 = rx69_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx69_curclass, "$!pos"
    lt $I11, 0, rx69_fail182
    repr_get_attr_int rx69_pos, $P11, rx69_curclass, "$!pos"
  alt73_end192:
    nqp_rxpeek $I19, rx69_bstack, rxquantr72_done191
    inc $I19
    inc $I19
    set rx69_rep, rx69_bstack[$I19]
    nqp_rxcommit rx69_bstack, rxquantr72_done191
    inc rx69_rep
    nqp_rxmark rx69_bstack, rxquantr72_done191, rx69_pos, rx69_rep
    goto rxquantr72_loop190
  rxquantr72_done191:
    rx69_cur."!cursor_pass"(rx69_pos, "termconjseq", 'backtrack'=>1)
    .return (rx69_cur)
  rx69_restart181:
    repr_get_attr_obj rx69_cstack, rx69_cur, rx69_curclass, "$!cstack"
  rx69_fail182:
    unless rx69_bstack, rx69_done180
    pop $I19, rx69_bstack
    if_null rx69_cstack, rx69_cstack_done185
    unless rx69_cstack, rx69_cstack_done185
    dec $I19
    set $P11, rx69_cstack[$I19]
  rx69_cstack_done185:
    pop rx69_rep, rx69_bstack
    pop rx69_pos, rx69_bstack
    pop $I19, rx69_bstack
    lt rx69_pos, -1, rx69_done180
    lt rx69_pos, 0, rx69_fail182
    eq $I19, 0, rx69_fail182
    nqp_islist $I20, rx69_cstack
    unless $I20, rx69_jump183
    elements $I18, rx69_bstack
    le $I18, 0, rx69_cut184
    dec $I18
    set $I18, rx69_bstack[$I18]
  rx69_cut184:
    assign rx69_cstack, $I18
  rx69_jump183:
    jump $I19
  rx69_done180:
    rx69_cur."!cursor_fail"()
    .return (rx69_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1349901746.339_caps" :subid("cuid_memo_22_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termalt"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1349901746.339_nfa" :subid("cuid_memo_23_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "termalt"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 38
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 38
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 0
    push $P5018, $P5019
    box $P5020, 0
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5001, $P5018
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "termalt" :subid("cuid_13_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 59
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx76_tgt
    .local int rx76_pos
    .local int rx76_off
    .local int rx76_eos
    .local int rx76_rep
    .local pmc rx76_cur
    .local pmc rx76_curclass
    .local pmc rx76_bstack
    .local pmc rx76_cstack
    (rx76_cur, rx76_tgt, rx76_pos, rx76_curclass, rx76_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx76_cur
    length rx76_eos, rx76_tgt
    eq $I19, 1, rx76_restart199
    gt rx76_pos, rx76_eos, rx76_fail200
    repr_get_attr_int $I11, self, rx76_curclass, "$!from"
    ne $I11, -1, rxscan77_done206
    goto rxscan77_scan205
  rxscan77_loop204:
    inc rx76_pos
    gt rx76_pos, rx76_eos, rx76_fail200
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!from", rx76_pos
  rxscan77_scan205:
    nqp_rxmark rx76_bstack, rxscan77_loop204, rx76_pos, 0
  rxscan77_done206:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."termconj"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail200
    nqp_rxmark rx76_bstack, rxsubrule78_pass207, -1, 0
  rxsubrule78_pass207:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "termconj")
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    nqp_rxmark rx76_bstack, rxquantr79_done209, rx76_pos, 0
  rxquantr79_loop208:
    add $I11, rx76_pos, 1
    gt $I11, rx76_eos, rx76_fail200
    substr $S10, rx76_tgt, rx76_pos, 1
    ne $S10, ucs4:"|", rx76_fail200
    add rx76_pos, 1
    ge rx76_pos, rx76_eos, rx76_fail200
    substr $S11, rx76_tgt, rx76_pos, 1
    index $I11, ucs4:"|", $S11
    ge $I11, 0, rx76_fail200
  alt80_0211:
    nqp_rxmark rx76_bstack, alt80_1213, rx76_pos, 0
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."termconj"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail200
    nqp_rxmark rx76_bstack, rxsubrule81_pass212, -1, 0
  rxsubrule81_pass212:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "termconj")
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    goto alt80_end210
  alt80_1213:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail200
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
  alt80_end210:
    nqp_rxpeek $I19, rx76_bstack, rxquantr79_done209
    inc $I19
    inc $I19
    set rx76_rep, rx76_bstack[$I19]
    nqp_rxcommit rx76_bstack, rxquantr79_done209
    inc rx76_rep
    nqp_rxmark rx76_bstack, rxquantr79_done209, rx76_pos, rx76_rep
    goto rxquantr79_loop208
  rxquantr79_done209:
    rx76_cur."!cursor_pass"(rx76_pos, "termalt", 'backtrack'=>1)
    .return (rx76_cur)
  rx76_restart199:
    repr_get_attr_obj rx76_cstack, rx76_cur, rx76_curclass, "$!cstack"
  rx76_fail200:
    unless rx76_bstack, rx76_done198
    pop $I19, rx76_bstack
    if_null rx76_cstack, rx76_cstack_done203
    unless rx76_cstack, rx76_cstack_done203
    dec $I19
    set $P11, rx76_cstack[$I19]
  rx76_cstack_done203:
    pop rx76_rep, rx76_bstack
    pop rx76_pos, rx76_bstack
    pop $I19, rx76_bstack
    lt rx76_pos, -1, rx76_done198
    lt rx76_pos, 0, rx76_fail200
    eq $I19, 0, rx76_fail200
    nqp_islist $I20, rx76_cstack
    unless $I20, rx76_jump201
    elements $I18, rx76_bstack
    le $I18, 0, rx76_cut202
    dec $I18
    set $I18, rx76_bstack[$I18]
  rx76_cut202:
    assign rx76_cstack, $I18
  rx76_jump201:
    jump $I19
  rx76_done198:
    rx76_cur."!cursor_fail"()
    .return (rx76_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1349901746.339_caps" :subid("cuid_memo_24_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termconj"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1349901746.339_nfa" :subid("cuid_memo_25_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "termconj"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 124
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 7
    push $P5014, $P5015
    box $P5016, "|"
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 0
    push $P5018, $P5019
    box $P5020, 0
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5001, $P5018
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "termconj" :subid("cuid_14_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx83_tgt
    .local int rx83_pos
    .local int rx83_off
    .local int rx83_eos
    .local int rx83_rep
    .local pmc rx83_cur
    .local pmc rx83_curclass
    .local pmc rx83_bstack
    .local pmc rx83_cstack
    (rx83_cur, rx83_tgt, rx83_pos, rx83_curclass, rx83_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx83_cur
    length rx83_eos, rx83_tgt
    eq $I19, 1, rx83_restart217
    gt rx83_pos, rx83_eos, rx83_fail218
    repr_get_attr_int $I11, self, rx83_curclass, "$!from"
    ne $I11, -1, rxscan84_done224
    goto rxscan84_scan223
  rxscan84_loop222:
    inc rx83_pos
    gt rx83_pos, rx83_eos, rx83_fail218
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!from", rx83_pos
  rxscan84_scan223:
    nqp_rxmark rx83_bstack, rxscan84_loop222, rx83_pos, 0
  rxscan84_done224:
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."termish"()
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail218
    nqp_rxmark rx83_bstack, rxsubrule85_pass225, -1, 0
  rxsubrule85_pass225:
    rx83_cstack = rx83_cur."!cursor_capture"($P11, "termish")
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
    nqp_rxmark rx83_bstack, rxquantr86_done227, rx83_pos, 0
  rxquantr86_loop226:
    add $I11, rx83_pos, 1
    gt $I11, rx83_eos, rx83_fail218
    substr $S10, rx83_tgt, rx83_pos, 1
    ne $S10, ucs4:"&", rx83_fail218
    add rx83_pos, 1
    ge rx83_pos, rx83_eos, rx83_fail218
    substr $S11, rx83_tgt, rx83_pos, 1
    index $I11, ucs4:"&", $S11
    ge $I11, 0, rx83_fail218
  alt87_0229:
    nqp_rxmark rx83_bstack, alt87_1231, rx83_pos, 0
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."termish"()
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail218
    nqp_rxmark rx83_bstack, rxsubrule88_pass230, -1, 0
  rxsubrule88_pass230:
    rx83_cstack = rx83_cur."!cursor_capture"($P11, "termish")
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
    goto alt87_end228
  alt87_1231:
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail218
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
  alt87_end228:
    nqp_rxpeek $I19, rx83_bstack, rxquantr86_done227
    inc $I19
    inc $I19
    set rx83_rep, rx83_bstack[$I19]
    nqp_rxcommit rx83_bstack, rxquantr86_done227
    inc rx83_rep
    nqp_rxmark rx83_bstack, rxquantr86_done227, rx83_pos, rx83_rep
    goto rxquantr86_loop226
  rxquantr86_done227:
    rx83_cur."!cursor_pass"(rx83_pos, "termconj", 'backtrack'=>1)
    .return (rx83_cur)
  rx83_restart217:
    repr_get_attr_obj rx83_cstack, rx83_cur, rx83_curclass, "$!cstack"
  rx83_fail218:
    unless rx83_bstack, rx83_done216
    pop $I19, rx83_bstack
    if_null rx83_cstack, rx83_cstack_done221
    unless rx83_cstack, rx83_cstack_done221
    dec $I19
    set $P11, rx83_cstack[$I19]
  rx83_cstack_done221:
    pop rx83_rep, rx83_bstack
    pop rx83_pos, rx83_bstack
    pop $I19, rx83_bstack
    lt rx83_pos, -1, rx83_done216
    lt rx83_pos, 0, rx83_fail218
    eq $I19, 0, rx83_fail218
    nqp_islist $I20, rx83_cstack
    unless $I20, rx83_jump219
    elements $I18, rx83_bstack
    le $I18, 0, rx83_cut220
    dec $I18
    set $I18, rx83_bstack[$I18]
  rx83_cut220:
    assign rx83_cstack, $I18
  rx83_jump219:
    jump $I19
  rx83_done216:
    rx83_cur."!cursor_fail"()
    .return (rx83_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1349901746.339_caps" :subid("cuid_memo_26_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termish"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1349901746.339_nfa" :subid("cuid_memo_27_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "termish"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 38
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 7
    push $P5014, $P5015
    box $P5016, "&"
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 0
    push $P5018, $P5019
    box $P5020, 0
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5001, $P5018
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_16_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_15_1349901746.339' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_162_1349901746.339' 
    capture_lex $P5005 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx90_tgt
    .local int rx90_pos
    .local int rx90_off
    .local int rx90_eos
    .local int rx90_rep
    .local pmc rx90_cur
    .local pmc rx90_curclass
    .local pmc rx90_bstack
    .local pmc rx90_cstack
    (rx90_cur, rx90_tgt, rx90_pos, rx90_curclass, rx90_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx90_cur
    length rx90_eos, rx90_tgt
    eq $I19, 1, rx90_restart235
    gt rx90_pos, rx90_eos, rx90_fail236
    repr_get_attr_int $I11, self, rx90_curclass, "$!from"
    ne $I11, -1, rxscan91_done242
    goto rxscan91_scan241
  rxscan91_loop240:
    inc rx90_pos
    gt rx90_pos, rx90_eos, rx90_fail236
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!from", rx90_pos
  rxscan91_scan241:
    nqp_rxmark rx90_bstack, rxscan91_loop240, rx90_pos, 0
  rxscan91_done242:
  alt92_0244:
    nqp_rxmark rx90_bstack, alt92_1249, rx90_pos, 0
    nqp_rxmark rx90_bstack, rxquantr93_done246, -1, 0
  rxquantr93_loop245:
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    $P11 = rx90_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail236
    goto rxsubrule94_pass247
  rxsubrule94_back248:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail236
  rxsubrule94_pass247:
    rx90_cstack = rx90_cur."!cursor_capture"($P11, "noun")
    set_addr $I11, rxsubrule94_back248
    push rx90_bstack, $I11
    push rx90_bstack, 0
    push rx90_bstack, rx90_pos
    elements $I11, rx90_cstack
    push rx90_bstack, $I11
    repr_get_attr_int rx90_pos, $P11, rx90_curclass, "$!pos"
    nqp_rxpeek $I19, rx90_bstack, rxquantr93_done246
    inc $I19
    inc $I19
    set rx90_rep, rx90_bstack[$I19]
    nqp_rxcommit rx90_bstack, rxquantr93_done246
    inc rx90_rep
    nqp_rxmark rx90_bstack, rxquantr93_done246, rx90_pos, rx90_rep
    goto rxquantr93_loop245
  rxquantr93_done246:
    goto alt92_end243
  alt92_1249:
    .const 'Sub' $P5001 = 'cuid_15_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    $P11 = rx90_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail236
    nqp_rxmark rx90_bstack, rxsubrule97_pass260, -1, 0
  rxsubrule97_pass260:
    rx90_cstack = rx90_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx90_pos, $P11, rx90_curclass, "$!pos"
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    store_lex unicode:"$\x{a2}", rx90_cur
    $P5002 = $P101."MATCH"()
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_162_1349901746.339' 
    capture_lex $P5003
    $P5004 = $P5003()
  alt92_end243:
    rx90_cur."!cursor_pass"(rx90_pos, "termish", 'backtrack'=>1)
    .return (rx90_cur)
  rx90_restart235:
    repr_get_attr_obj rx90_cstack, rx90_cur, rx90_curclass, "$!cstack"
  rx90_fail236:
    unless rx90_bstack, rx90_done234
    pop $I19, rx90_bstack
    if_null rx90_cstack, rx90_cstack_done239
    unless rx90_cstack, rx90_cstack_done239
    dec $I19
    set $P11, rx90_cstack[$I19]
  rx90_cstack_done239:
    pop rx90_rep, rx90_bstack
    pop rx90_pos, rx90_bstack
    pop $I19, rx90_bstack
    lt rx90_pos, -1, rx90_done234
    lt rx90_pos, 0, rx90_fail236
    eq $I19, 0, rx90_fail236
    nqp_islist $I20, rx90_cstack
    unless $I20, rx90_jump237
    elements $I18, rx90_bstack
    le $I18, 0, rx90_cut238
    dec $I18
    set $I18, rx90_bstack[$I18]
  rx90_cut238:
    assign rx90_cstack, $I18
  rx90_jump237:
    jump $I19
  rx90_done234:
    rx90_cur."!cursor_fail"()
    .return (rx90_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_16_1349901746.339_caps" :subid("cuid_memo_28_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["noun"], $P5002
    box $P5003, 1
    set $P5001["0"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_15_1349901746.339") :anon :lex :outer("cuid_16_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
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
    eq $I19, 1, rx95_restart252
    gt rx95_pos, rx95_eos, rx95_fail253
    repr_get_attr_int $I11, self, rx95_curclass, "$!from"
    ne $I11, -1, rxscan96_done259
    goto rxscan96_scan258
  rxscan96_loop257:
    inc rx95_pos
    gt rx95_pos, rx95_eos, rx95_fail253
    repr_bind_attr_int rx95_cur, rx95_curclass, "$!from", rx95_pos
  rxscan96_scan258:
    nqp_rxmark rx95_bstack, rxscan96_loop257, rx95_pos, 0
  rxscan96_done259:
    ge rx95_pos, rx95_eos, rx95_fail253
    is_cclass $I11, .CCLASS_WORD, rx95_tgt, rx95_pos
    if $I11, rx95_fail253
    add rx95_pos, 1
    rx95_cur."!cursor_pass"(rx95_pos, 'backtrack'=>1)
    .return (rx95_cur)
  rx95_restart252:
    repr_get_attr_obj rx95_cstack, rx95_cur, rx95_curclass, "$!cstack"
  rx95_fail253:
    unless rx95_bstack, rx95_done251
    pop $I19, rx95_bstack
    if_null rx95_cstack, rx95_cstack_done256
    unless rx95_cstack, rx95_cstack_done256
    dec $I19
    set $P11, rx95_cstack[$I19]
  rx95_cstack_done256:
    pop rx95_rep, rx95_bstack
    pop rx95_pos, rx95_bstack
    pop $I19, rx95_bstack
    lt rx95_pos, -1, rx95_done251
    lt rx95_pos, 0, rx95_fail253
    eq $I19, 0, rx95_fail253
    nqp_islist $I20, rx95_cstack
    unless $I20, rx95_jump254
    elements $I18, rx95_bstack
    le $I18, 0, rx95_cut255
    dec $I18
    set $I18, rx95_bstack[$I18]
  rx95_cut255:
    assign rx95_cstack, $I18
  rx95_jump254:
    jump $I19
  rx95_done251:
    rx95_cur."!cursor_fail"()
    .return (rx95_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_15_1349901746.339_caps" :subid("cuid_memo_29_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_15_1349901746.339_nfa" :subid("cuid_memo_30_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 5
    push $P5003, $P5004
    box $P5005, 8192
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1349901746.339") :anon :lex :outer("cuid_16_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 71
    .lex "$char", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    set $P5002, $P5003[0]
    unless_null $P5002, fallback261
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5004
  fallback261:
    set $S5001, $P5002
    box $P5005, $S5001
    set $P101, $P5005
.annotate 'line', 73
    find_lex $P5006, "$/"
    $P5007 = $P5006."CURSOR"()
    set $S5004, $P101
    concat $S5003, "Unrecognized regex metacharacter ", $S5004
    concat $S5002, $S5003, " (must be quoted to match literally)"
    $P5008 = $P5007."panic"($S5002)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "quantified_atom" :subid("cuid_18_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 77
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_17_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_curclass
    .local pmc rx98_bstack
    .local pmc rx98_cstack
    (rx98_cur, rx98_tgt, rx98_pos, rx98_curclass, rx98_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx98_cur
    length rx98_eos, rx98_tgt
    eq $I19, 1, rx98_restart264
    gt rx98_pos, rx98_eos, rx98_fail265
    repr_get_attr_int $I11, self, rx98_curclass, "$!from"
    ne $I11, -1, rxscan99_done271
    goto rxscan99_scan270
  rxscan99_loop269:
    inc rx98_pos
    gt rx98_pos, rx98_eos, rx98_fail265
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!from", rx98_pos
  rxscan99_scan270:
    nqp_rxmark rx98_bstack, rxscan99_loop269, rx98_pos, 0
  rxscan99_done271:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."atom"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail265
    nqp_rxmark rx98_bstack, rxsubrule100_pass272, -1, 0
  rxsubrule100_pass272:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "atom")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    nqp_rxmark rx98_bstack, rxquantr101_done274, rx98_pos, 0
  rxquantr101_loop273:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."ws"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail265
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt103_0277
    nqp_push_label $P11, alt103_1279
    nqp_rxmark rx98_bstack, alt103_end276, -1, 0
    rx98_cur."!alt"(rx98_pos, "alt_nfa__5_1349901746.648", $P11)
    goto rx98_fail265
  alt103_0277:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."quantifier"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail265
    nqp_rxmark rx98_bstack, rxsubrule104_pass278, -1, 0
  rxsubrule104_pass278:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "quantifier")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    goto alt103_end276
  alt103_1279:
    .const 'Sub' $P5001 = 'cuid_17_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail265
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail265
    nqp_rxmark rx98_bstack, rxsubrule107_pass290, -1, 0
  rxsubrule107_pass290:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."alpha"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    ge $I11, 0, rx98_fail265
    goto alt103_end276
  alt103_end276:
    nqp_rxcommit rx98_bstack, alt103_end276
    nqp_rxmark rx98_bstack, rxquantr108_done292, rx98_pos, 0
  rxquantr108_loop291:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."ws"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail265
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."separator"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail265
    nqp_rxmark rx98_bstack, rxsubrule110_pass294, -1, 0
  rxsubrule110_pass294:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "separator")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    nqp_rxpeek $I19, rx98_bstack, rxquantr108_done292
    inc $I19
    inc $I19
    set rx98_rep, rx98_bstack[$I19]
    nqp_rxcommit rx98_bstack, rxquantr108_done292
    inc rx98_rep
  rxquantr108_done292:
    nqp_rxpeek $I19, rx98_bstack, rxquantr101_done274
    inc $I19
    inc $I19
    set rx98_rep, rx98_bstack[$I19]
    nqp_rxcommit rx98_bstack, rxquantr101_done274
    inc rx98_rep
  rxquantr101_done274:
    rx98_cur."!cursor_pass"(rx98_pos, "quantified_atom", 'backtrack'=>1)
    .return (rx98_cur)
  rx98_restart264:
    repr_get_attr_obj rx98_cstack, rx98_cur, rx98_curclass, "$!cstack"
  rx98_fail265:
    unless rx98_bstack, rx98_done263
    pop $I19, rx98_bstack
    if_null rx98_cstack, rx98_cstack_done268
    unless rx98_cstack, rx98_cstack_done268
    dec $I19
    set $P11, rx98_cstack[$I19]
  rx98_cstack_done268:
    pop rx98_rep, rx98_bstack
    pop rx98_pos, rx98_bstack
    pop $I19, rx98_bstack
    lt rx98_pos, -1, rx98_done263
    lt rx98_pos, 0, rx98_fail265
    eq $I19, 0, rx98_fail265
    nqp_islist $I20, rx98_cstack
    unless $I20, rx98_jump266
    elements $I18, rx98_bstack
    le $I18, 0, rx98_cut267
    dec $I18
    set $I18, rx98_bstack[$I18]
  rx98_cut267:
    assign rx98_cstack, $I18
  rx98_jump266:
    jump $I19
  rx98_done263:
    rx98_cur."!cursor_fail"()
    .return (rx98_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1349901746.339_caps" :subid("cuid_memo_31_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["atom"], $P5002
    box $P5003, 2
    set $P5001["quantifier"], $P5003
    box $P5004, 2
    set $P5001["backmod"], $P5004
    box $P5005, 2
    set $P5001["separator"], $P5005
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1349901746.339_nfa" :subid("cuid_memo_32_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "atom"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "ws"
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "quantifier"
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    box $P5018, 2
    push $P5014, $P5018
    box $P5019, 58
    push $P5014, $P5019
    box $P5020, 5
    push $P5014, $P5020
    push $P5001, $P5014
    new $P5021, 'ResizablePMCArray'
    box $P5022, 8
    push $P5021, $P5022
    box $P5023, "ws"
    push $P5021, $P5023
    box $P5024, 6
    push $P5021, $P5024
    box $P5025, 1
    push $P5021, $P5025
    box $P5026, 0
    push $P5021, $P5026
    box $P5027, 0
    push $P5021, $P5027
    push $P5001, $P5021
    new $P5028, 'ResizablePMCArray'
    box $P5029, 0
    push $P5028, $P5029
    box $P5030, 0
    push $P5028, $P5030
    box $P5031, 0
    push $P5028, $P5031
    push $P5001, $P5028
    new $P5032, 'ResizablePMCArray'
    box $P5033, 8
    push $P5032, $P5033
    box $P5034, "separator"
    push $P5032, $P5034
    box $P5035, 0
    push $P5032, $P5035
    push $P5001, $P5032
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1349901746.339_alt_nfa__5_1349901746.648" :subid("cuid_memo_33_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 8
    push $P5004, $P5005
    box $P5006, "quantifier"
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 58
    push $P5010, $P5012
    box $P5013, 2
    push $P5010, $P5013
    push $P5008, $P5010
    new $P5014, 'ResizablePMCArray'
    box $P5015, 0
    push $P5014, $P5015
    box $P5016, 0
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5008, $P5014
    push $P5001, $P5008
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_17_1349901746.339") :anon :lex :outer("cuid_18_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx105_tgt
    .local int rx105_pos
    .local int rx105_off
    .local int rx105_eos
    .local int rx105_rep
    .local pmc rx105_cur
    .local pmc rx105_curclass
    .local pmc rx105_bstack
    .local pmc rx105_cstack
    (rx105_cur, rx105_tgt, rx105_pos, rx105_curclass, rx105_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx105_cur
    length rx105_eos, rx105_tgt
    eq $I19, 1, rx105_restart282
    gt rx105_pos, rx105_eos, rx105_fail283
    repr_get_attr_int $I11, self, rx105_curclass, "$!from"
    ne $I11, -1, rxscan106_done289
    goto rxscan106_scan288
  rxscan106_loop287:
    inc rx105_pos
    gt rx105_pos, rx105_eos, rx105_fail283
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!from", rx105_pos
  rxscan106_scan288:
    nqp_rxmark rx105_bstack, rxscan106_loop287, rx105_pos, 0
  rxscan106_done289:
    add $I11, rx105_pos, 1
    gt $I11, rx105_eos, rx105_fail283
    substr $S10, rx105_tgt, rx105_pos, 1
    ne $S10, ucs4:":", rx105_fail283
    add rx105_pos, 1
    rx105_cur."!cursor_pass"(rx105_pos, 'backtrack'=>1)
    .return (rx105_cur)
  rx105_restart282:
    repr_get_attr_obj rx105_cstack, rx105_cur, rx105_curclass, "$!cstack"
  rx105_fail283:
    unless rx105_bstack, rx105_done281
    pop $I19, rx105_bstack
    if_null rx105_cstack, rx105_cstack_done286
    unless rx105_cstack, rx105_cstack_done286
    dec $I19
    set $P11, rx105_cstack[$I19]
  rx105_cstack_done286:
    pop rx105_rep, rx105_bstack
    pop rx105_pos, rx105_bstack
    pop $I19, rx105_bstack
    lt rx105_pos, -1, rx105_done281
    lt rx105_pos, 0, rx105_fail283
    eq $I19, 0, rx105_fail283
    nqp_islist $I20, rx105_cstack
    unless $I20, rx105_jump284
    elements $I18, rx105_bstack
    le $I18, 0, rx105_cut285
    dec $I18
    set $I18, rx105_bstack[$I18]
  rx105_cut285:
    assign rx105_cstack, $I18
  rx105_jump284:
    jump $I19
  rx105_done281:
    rx105_cur."!cursor_fail"()
    .return (rx105_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1349901746.339_caps" :subid("cuid_memo_34_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1349901746.339_nfa" :subid("cuid_memo_35_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 58
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "separator" :subid("cuid_19_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 85
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx111_tgt
    .local int rx111_pos
    .local int rx111_off
    .local int rx111_eos
    .local int rx111_rep
    .local pmc rx111_cur
    .local pmc rx111_curclass
    .local pmc rx111_bstack
    .local pmc rx111_cstack
    (rx111_cur, rx111_tgt, rx111_pos, rx111_curclass, rx111_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx111_cur
    length rx111_eos, rx111_tgt
    eq $I19, 1, rx111_restart297
    gt rx111_pos, rx111_eos, rx111_fail298
    repr_get_attr_int $I11, self, rx111_curclass, "$!from"
    ne $I11, -1, rxscan112_done304
    goto rxscan112_scan303
  rxscan112_loop302:
    inc rx111_pos
    gt rx111_pos, rx111_eos, rx111_fail298
    repr_bind_attr_int rx111_cur, rx111_curclass, "$!from", rx111_pos
  rxscan112_scan303:
    nqp_rxmark rx111_bstack, rxscan112_loop302, rx111_pos, 0
  rxscan112_done304:
    nqp_rxmark rx111_bstack, rxcap113_fail306, rx111_pos, 0
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail298
    substr $S10, rx111_tgt, rx111_pos, 1
    ne $S10, ucs4:"%", rx111_fail298
    add rx111_pos, 1
    nqp_rxmark rx111_bstack, rxquantr114_done308, rx111_pos, 0
  rxquantr114_loop307:
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail298
    substr $S10, rx111_tgt, rx111_pos, 1
    ne $S10, ucs4:"%", rx111_fail298
    add rx111_pos, 1
    nqp_rxpeek $I19, rx111_bstack, rxquantr114_done308
    inc $I19
    inc $I19
    set rx111_rep, rx111_bstack[$I19]
    nqp_rxcommit rx111_bstack, rxquantr114_done308
    inc rx111_rep
  rxquantr114_done308:
    nqp_rxpeek $I19, rx111_bstack, rxcap113_fail306
    inc $I19
    set $I11, rx111_bstack[$I19]
    repr_bind_attr_int rx111_cur, rx111_curclass, "$!pos", rx111_pos
    $P11 = rx111_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx111_pos)
    rx111_cstack = rx111_cur."!cursor_capture"($P11, "septype")
    goto rxcap113_done305
  rxcap113_fail306:
    goto rx111_fail298
  rxcap113_done305:
    nqp_rxmark rx111_bstack, rxquantr115_done310, rx111_pos, 0
  rxquantr115_loop309:
    repr_bind_attr_int rx111_cur, rx111_curclass, "$!pos", rx111_pos
    $P11 = rx111_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx111_curclass, "$!pos"
    lt $I11, 0, rx111_fail298
    goto rxsubrule116_pass311
  rxsubrule116_back312:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx111_curclass, "$!pos"
    lt $I11, 0, rx111_fail298
  rxsubrule116_pass311:
    rx111_cstack = rx111_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule116_back312
    push rx111_bstack, $I11
    push rx111_bstack, 0
    push rx111_bstack, rx111_pos
    elements $I11, rx111_cstack
    push rx111_bstack, $I11
    repr_get_attr_int rx111_pos, $P11, rx111_curclass, "$!pos"
    nqp_rxpeek $I19, rx111_bstack, rxquantr115_done310
    inc $I19
    inc $I19
    set rx111_rep, rx111_bstack[$I19]
    nqp_rxcommit rx111_bstack, rxquantr115_done310
    inc rx111_rep
  rxquantr115_done310:
    repr_bind_attr_int rx111_cur, rx111_curclass, "$!pos", rx111_pos
    $P11 = rx111_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx111_curclass, "$!pos"
    lt $I11, 0, rx111_fail298
    nqp_rxmark rx111_bstack, rxsubrule117_pass313, -1, 0
  rxsubrule117_pass313:
    rx111_cstack = rx111_cur."!cursor_capture"($P11, "quantified_atom")
    repr_get_attr_int rx111_pos, $P11, rx111_curclass, "$!pos"
    rx111_cur."!cursor_pass"(rx111_pos, "separator", 'backtrack'=>1)
    .return (rx111_cur)
  rx111_restart297:
    repr_get_attr_obj rx111_cstack, rx111_cur, rx111_curclass, "$!cstack"
  rx111_fail298:
    unless rx111_bstack, rx111_done296
    pop $I19, rx111_bstack
    if_null rx111_cstack, rx111_cstack_done301
    unless rx111_cstack, rx111_cstack_done301
    dec $I19
    set $P11, rx111_cstack[$I19]
  rx111_cstack_done301:
    pop rx111_rep, rx111_bstack
    pop rx111_pos, rx111_bstack
    pop $I19, rx111_bstack
    lt rx111_pos, -1, rx111_done296
    lt rx111_pos, 0, rx111_fail298
    eq $I19, 0, rx111_fail298
    nqp_islist $I20, rx111_cstack
    unless $I20, rx111_jump299
    elements $I18, rx111_bstack
    le $I18, 0, rx111_cut300
    dec $I18
    set $I18, rx111_bstack[$I18]
  rx111_cut300:
    assign rx111_cstack, $I18
  rx111_jump299:
    jump $I19
  rx111_done296:
    rx111_cur."!cursor_fail"()
    .return (rx111_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_19_1349901746.339_caps" :subid("cuid_memo_36_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["septype"], $P5002
    box $P5003, 2
    set $P5001["normspace"], $P5003
    box $P5004, 0
    set $P5001["quantified_atom"], $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_19_1349901746.339_nfa" :subid("cuid_memo_37_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 37
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 37
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 3
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "normspace"
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    box $P5018, 1
    push $P5014, $P5018
    box $P5019, 0
    push $P5014, $P5019
    box $P5020, 4
    push $P5014, $P5020
    push $P5001, $P5014
    new $P5021, 'ResizablePMCArray'
    box $P5022, 8
    push $P5021, $P5022
    box $P5023, "quantified_atom"
    push $P5021, $P5023
    box $P5024, 0
    push $P5021, $P5024
    push $P5001, $P5021
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "atom" :subid("cuid_21_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_20_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    .local pmc rx118_curclass
    .local pmc rx118_bstack
    .local pmc rx118_cstack
    (rx118_cur, rx118_tgt, rx118_pos, rx118_curclass, rx118_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx118_cur
    length rx118_eos, rx118_tgt
    eq $I19, 1, rx118_restart316
    gt rx118_pos, rx118_eos, rx118_fail317
    repr_get_attr_int $I11, self, rx118_curclass, "$!from"
    ne $I11, -1, rxscan119_done323
    goto rxscan119_scan322
  rxscan119_loop321:
    inc rx118_pos
    gt rx118_pos, rx118_eos, rx118_fail317
    repr_bind_attr_int rx118_cur, rx118_curclass, "$!from", rx118_pos
  rxscan119_scan322:
    nqp_rxmark rx118_bstack, rxscan119_loop321, rx118_pos, 0
  rxscan119_done323:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt120_0325
    nqp_push_label $P11, alt120_1340
    nqp_rxmark rx118_bstack, alt120_end324, -1, 0
    rx118_cur."!alt"(rx118_pos, "alt_nfa__6_1349901746.669", $P11)
    goto rx118_fail317
  alt120_0325:
    ge rx118_pos, rx118_eos, rx118_fail317
    is_cclass $I11, .CCLASS_WORD, rx118_tgt, rx118_pos
    unless $I11, rx118_fail317
    add rx118_pos, 1
    nqp_rxmark rx118_bstack, rxquantr121_done327, rx118_pos, 0
  rxquantr121_loop326:
  rxquantg122_loop328:
    ge rx118_pos, rx118_eos, rx118_fail317
    is_cclass $I11, .CCLASS_WORD, rx118_tgt, rx118_pos
    unless $I11, rx118_fail317
    add rx118_pos, 1
    nqp_rxmark rx118_bstack, rxquantg122_done329, rx118_pos, rx118_rep
    goto rxquantg122_loop328
  rxquantg122_done329:
    .const 'Sub' $P5001 = 'cuid_20_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx118_cur, rx118_curclass, "$!pos", rx118_pos
    $P11 = rx118_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx118_curclass, "$!pos"
    lt $I11, 0, rx118_fail317
    nqp_rxpeek $I19, rx118_bstack, rxquantr121_done327
    inc $I19
    inc $I19
    set rx118_rep, rx118_bstack[$I19]
    nqp_rxcommit rx118_bstack, rxquantr121_done327
    inc rx118_rep
  rxquantr121_done327:
    goto alt120_end324
  alt120_1340:
    repr_bind_attr_int rx118_cur, rx118_curclass, "$!pos", rx118_pos
    $P11 = rx118_cur."metachar"()
    repr_get_attr_int $I11, $P11, rx118_curclass, "$!pos"
    lt $I11, 0, rx118_fail317
    nqp_rxmark rx118_bstack, rxsubrule125_pass341, -1, 0
  rxsubrule125_pass341:
    rx118_cstack = rx118_cur."!cursor_capture"($P11, "metachar")
    repr_get_attr_int rx118_pos, $P11, rx118_curclass, "$!pos"
    goto alt120_end324
  alt120_end324:
    nqp_rxcommit rx118_bstack, alt120_end324
    rx118_cur."!cursor_pass"(rx118_pos, "atom", 'backtrack'=>1)
    .return (rx118_cur)
  rx118_restart316:
    repr_get_attr_obj rx118_cstack, rx118_cur, rx118_curclass, "$!cstack"
  rx118_fail317:
    unless rx118_bstack, rx118_done315
    pop $I19, rx118_bstack
    if_null rx118_cstack, rx118_cstack_done320
    unless rx118_cstack, rx118_cstack_done320
    dec $I19
    set $P11, rx118_cstack[$I19]
  rx118_cstack_done320:
    pop rx118_rep, rx118_bstack
    pop rx118_pos, rx118_bstack
    pop $I19, rx118_bstack
    lt rx118_pos, -1, rx118_done315
    lt rx118_pos, 0, rx118_fail317
    eq $I19, 0, rx118_fail317
    nqp_islist $I20, rx118_cstack
    unless $I20, rx118_jump318
    elements $I18, rx118_bstack
    le $I18, 0, rx118_cut319
    dec $I18
    set $I18, rx118_bstack[$I18]
  rx118_cut319:
    assign rx118_cstack, $I18
  rx118_jump318:
    jump $I19
  rx118_done315:
    rx118_cur."!cursor_fail"()
    .return (rx118_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1349901746.339_caps" :subid("cuid_memo_38_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["metachar"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1349901746.339_nfa" :subid("cuid_memo_39_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 4
    push $P5003, $P5004
    box $P5005, 8192
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 8
    push $P5003, $P5007
    box $P5008, "metachar"
    push $P5003, $P5008
    box $P5009, 0
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 1
    push $P5010, $P5011
    box $P5012, 0
    push $P5010, $P5012
    box $P5013, 3
    push $P5010, $P5013
    box $P5014, 1
    push $P5010, $P5014
    box $P5015, 0
    push $P5010, $P5015
    box $P5016, 0
    push $P5010, $P5016
    push $P5001, $P5010
    new $P5017, 'ResizablePMCArray'
    box $P5018, 4
    push $P5017, $P5018
    box $P5019, 8192
    push $P5017, $P5019
    box $P5020, 4
    push $P5017, $P5020
    push $P5001, $P5017
    new $P5021, 'ResizablePMCArray'
    box $P5022, 1
    push $P5021, $P5022
    box $P5023, 0
    push $P5021, $P5023
    box $P5024, 3
    push $P5021, $P5024
    box $P5025, 1
    push $P5021, $P5025
    box $P5026, 0
    push $P5021, $P5026
    box $P5027, 5
    push $P5021, $P5027
    box $P5028, 4
    push $P5021, $P5028
    box $P5029, 8192
    push $P5021, $P5029
    box $P5030, 6
    push $P5021, $P5030
    push $P5001, $P5021
    new $P5031, 'ResizablePMCArray'
    push $P5001, $P5031
    new $P5032, 'ResizablePMCArray'
    box $P5033, 0
    push $P5032, $P5033
    box $P5034, 0
    push $P5032, $P5034
    box $P5035, 0
    push $P5032, $P5035
    push $P5001, $P5032
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1349901746.339_alt_nfa__6_1349901746.669" :subid("cuid_memo_40_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 4
    push $P5004, $P5005
    box $P5006, 8192
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 1
    push $P5008, $P5009
    box $P5010, 0
    push $P5008, $P5010
    box $P5011, 3
    push $P5008, $P5011
    box $P5012, 1
    push $P5008, $P5012
    box $P5013, 0
    push $P5008, $P5013
    box $P5014, 0
    push $P5008, $P5014
    push $P5002, $P5008
    new $P5015, 'ResizablePMCArray'
    box $P5016, 4
    push $P5015, $P5016
    box $P5017, 8192
    push $P5015, $P5017
    box $P5018, 4
    push $P5015, $P5018
    push $P5002, $P5015
    new $P5019, 'ResizablePMCArray'
    box $P5020, 1
    push $P5019, $P5020
    box $P5021, 0
    push $P5019, $P5021
    box $P5022, 3
    push $P5019, $P5022
    box $P5023, 1
    push $P5019, $P5023
    box $P5024, 0
    push $P5019, $P5024
    box $P5025, 5
    push $P5019, $P5025
    box $P5026, 4
    push $P5019, $P5026
    box $P5027, 8192
    push $P5019, $P5027
    box $P5028, 6
    push $P5019, $P5028
    push $P5002, $P5019
    new $P5029, 'ResizablePMCArray'
    push $P5002, $P5029
    new $P5030, 'ResizablePMCArray'
    box $P5031, 0
    push $P5030, $P5031
    box $P5032, 0
    push $P5030, $P5032
    box $P5033, 0
    push $P5030, $P5033
    push $P5002, $P5030
    push $P5001, $P5002
    new $P5034, 'ResizablePMCArray'
    new $P5035, 'ResizablePMCArray'
    push $P5034, $P5035
    new $P5036, 'ResizablePMCArray'
    box $P5037, 8
    push $P5036, $P5037
    box $P5038, "metachar"
    push $P5036, $P5038
    box $P5039, 0
    push $P5036, $P5039
    push $P5034, $P5036
    push $P5001, $P5034
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_20_1349901746.339") :anon :lex :outer("cuid_21_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    .local pmc rx123_curclass
    .local pmc rx123_bstack
    .local pmc rx123_cstack
    (rx123_cur, rx123_tgt, rx123_pos, rx123_curclass, rx123_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx123_cur
    length rx123_eos, rx123_tgt
    eq $I19, 1, rx123_restart332
    gt rx123_pos, rx123_eos, rx123_fail333
    repr_get_attr_int $I11, self, rx123_curclass, "$!from"
    ne $I11, -1, rxscan124_done339
    goto rxscan124_scan338
  rxscan124_loop337:
    inc rx123_pos
    gt rx123_pos, rx123_eos, rx123_fail333
    repr_bind_attr_int rx123_cur, rx123_curclass, "$!from", rx123_pos
  rxscan124_scan338:
    nqp_rxmark rx123_bstack, rxscan124_loop337, rx123_pos, 0
  rxscan124_done339:
    ge rx123_pos, rx123_eos, rx123_fail333
    is_cclass $I11, .CCLASS_WORD, rx123_tgt, rx123_pos
    unless $I11, rx123_fail333
    add rx123_pos, 1
    rx123_cur."!cursor_pass"(rx123_pos, 'backtrack'=>1)
    .return (rx123_cur)
  rx123_restart332:
    repr_get_attr_obj rx123_cstack, rx123_cur, rx123_curclass, "$!cstack"
  rx123_fail333:
    unless rx123_bstack, rx123_done331
    pop $I19, rx123_bstack
    if_null rx123_cstack, rx123_cstack_done336
    unless rx123_cstack, rx123_cstack_done336
    dec $I19
    set $P11, rx123_cstack[$I19]
  rx123_cstack_done336:
    pop rx123_rep, rx123_bstack
    pop rx123_pos, rx123_bstack
    pop $I19, rx123_bstack
    lt rx123_pos, -1, rx123_done331
    lt rx123_pos, 0, rx123_fail333
    eq $I19, 0, rx123_fail333
    nqp_islist $I20, rx123_cstack
    unless $I20, rx123_jump334
    elements $I18, rx123_bstack
    le $I18, 0, rx123_cut335
    dec $I18
    set $I18, rx123_bstack[$I18]
  rx123_cut335:
    assign rx123_cstack, $I18
  rx123_jump334:
    jump $I19
  rx123_done331:
    rx123_cur."!cursor_fail"()
    .return (rx123_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_20_1349901746.339_caps" :subid("cuid_memo_41_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_20_1349901746.339_nfa" :subid("cuid_memo_42_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 4
    push $P5003, $P5004
    box $P5005, 8192
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier" :subid("cuid_22_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 97
    .param pmc self 
    $P5001 = self."!protoregex"("quantifier")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<*>" :subid("cuid_23_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 98
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
    eq $I19, 1, rx126_restart344
    gt rx126_pos, rx126_eos, rx126_fail345
    repr_get_attr_int $I11, self, rx126_curclass, "$!from"
    ne $I11, -1, rxscan127_done351
    goto rxscan127_scan350
  rxscan127_loop349:
    inc rx126_pos
    gt rx126_pos, rx126_eos, rx126_fail345
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!from", rx126_pos
  rxscan127_scan350:
    nqp_rxmark rx126_bstack, rxscan127_loop349, rx126_pos, 0
  rxscan127_done351:
    nqp_rxmark rx126_bstack, rxcap128_fail353, rx126_pos, 0
    add $I11, rx126_pos, 1
    gt $I11, rx126_eos, rx126_fail345
    substr $S10, rx126_tgt, rx126_pos, 1
    ne $S10, ucs4:"*", rx126_fail345
    add rx126_pos, 1
    nqp_rxpeek $I19, rx126_bstack, rxcap128_fail353
    inc $I19
    set $I11, rx126_bstack[$I19]
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!pos", rx126_pos
    $P11 = rx126_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx126_pos)
    rx126_cstack = rx126_cur."!cursor_capture"($P11, "sym")
    goto rxcap128_done352
  rxcap128_fail353:
    goto rx126_fail345
  rxcap128_done352:
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!pos", rx126_pos
    $P11 = rx126_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx126_curclass, "$!pos"
    lt $I11, 0, rx126_fail345
    nqp_rxmark rx126_bstack, rxsubrule129_pass354, -1, 0
  rxsubrule129_pass354:
    rx126_cstack = rx126_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx126_pos, $P11, rx126_curclass, "$!pos"
    rx126_cur."!cursor_pass"(rx126_pos, "quantifier:sym<*>", 'backtrack'=>1)
    .return (rx126_cur)
  rx126_restart344:
    repr_get_attr_obj rx126_cstack, rx126_cur, rx126_curclass, "$!cstack"
  rx126_fail345:
    unless rx126_bstack, rx126_done343
    pop $I19, rx126_bstack
    if_null rx126_cstack, rx126_cstack_done348
    unless rx126_cstack, rx126_cstack_done348
    dec $I19
    set $P11, rx126_cstack[$I19]
  rx126_cstack_done348:
    pop rx126_rep, rx126_bstack
    pop rx126_pos, rx126_bstack
    pop $I19, rx126_bstack
    lt rx126_pos, -1, rx126_done343
    lt rx126_pos, 0, rx126_fail345
    eq $I19, 0, rx126_fail345
    nqp_islist $I20, rx126_cstack
    unless $I20, rx126_jump346
    elements $I18, rx126_bstack
    le $I18, 0, rx126_cut347
    dec $I18
    set $I18, rx126_bstack[$I18]
  rx126_cut347:
    assign rx126_cstack, $I18
  rx126_jump346:
    jump $I19
  rx126_done343:
    rx126_cur."!cursor_fail"()
    .return (rx126_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_23_1349901746.339_caps" :subid("cuid_memo_43_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["backmod"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_23_1349901746.339_nfa" :subid("cuid_memo_44_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 42
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "backmod"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<+>" :subid("cuid_24_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 99
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
    eq $I19, 1, rx130_restart357
    gt rx130_pos, rx130_eos, rx130_fail358
    repr_get_attr_int $I11, self, rx130_curclass, "$!from"
    ne $I11, -1, rxscan131_done364
    goto rxscan131_scan363
  rxscan131_loop362:
    inc rx130_pos
    gt rx130_pos, rx130_eos, rx130_fail358
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!from", rx130_pos
  rxscan131_scan363:
    nqp_rxmark rx130_bstack, rxscan131_loop362, rx130_pos, 0
  rxscan131_done364:
    nqp_rxmark rx130_bstack, rxcap132_fail366, rx130_pos, 0
    add $I11, rx130_pos, 1
    gt $I11, rx130_eos, rx130_fail358
    substr $S10, rx130_tgt, rx130_pos, 1
    ne $S10, ucs4:"+", rx130_fail358
    add rx130_pos, 1
    nqp_rxpeek $I19, rx130_bstack, rxcap132_fail366
    inc $I19
    set $I11, rx130_bstack[$I19]
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx130_pos)
    rx130_cstack = rx130_cur."!cursor_capture"($P11, "sym")
    goto rxcap132_done365
  rxcap132_fail366:
    goto rx130_fail358
  rxcap132_done365:
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx130_curclass, "$!pos"
    lt $I11, 0, rx130_fail358
    nqp_rxmark rx130_bstack, rxsubrule133_pass367, -1, 0
  rxsubrule133_pass367:
    rx130_cstack = rx130_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx130_pos, $P11, rx130_curclass, "$!pos"
    rx130_cur."!cursor_pass"(rx130_pos, "quantifier:sym<+>", 'backtrack'=>1)
    .return (rx130_cur)
  rx130_restart357:
    repr_get_attr_obj rx130_cstack, rx130_cur, rx130_curclass, "$!cstack"
  rx130_fail358:
    unless rx130_bstack, rx130_done356
    pop $I19, rx130_bstack
    if_null rx130_cstack, rx130_cstack_done361
    unless rx130_cstack, rx130_cstack_done361
    dec $I19
    set $P11, rx130_cstack[$I19]
  rx130_cstack_done361:
    pop rx130_rep, rx130_bstack
    pop rx130_pos, rx130_bstack
    pop $I19, rx130_bstack
    lt rx130_pos, -1, rx130_done356
    lt rx130_pos, 0, rx130_fail358
    eq $I19, 0, rx130_fail358
    nqp_islist $I20, rx130_cstack
    unless $I20, rx130_jump359
    elements $I18, rx130_bstack
    le $I18, 0, rx130_cut360
    dec $I18
    set $I18, rx130_bstack[$I18]
  rx130_cut360:
    assign rx130_cstack, $I18
  rx130_jump359:
    jump $I19
  rx130_done356:
    rx130_cur."!cursor_fail"()
    .return (rx130_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_24_1349901746.339_caps" :subid("cuid_memo_45_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["backmod"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_24_1349901746.339_nfa" :subid("cuid_memo_46_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 43
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "backmod"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<?>" :subid("cuid_25_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 100
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_curclass
    .local pmc rx134_bstack
    .local pmc rx134_cstack
    (rx134_cur, rx134_tgt, rx134_pos, rx134_curclass, rx134_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx134_cur
    length rx134_eos, rx134_tgt
    eq $I19, 1, rx134_restart370
    gt rx134_pos, rx134_eos, rx134_fail371
    repr_get_attr_int $I11, self, rx134_curclass, "$!from"
    ne $I11, -1, rxscan135_done377
    goto rxscan135_scan376
  rxscan135_loop375:
    inc rx134_pos
    gt rx134_pos, rx134_eos, rx134_fail371
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!from", rx134_pos
  rxscan135_scan376:
    nqp_rxmark rx134_bstack, rxscan135_loop375, rx134_pos, 0
  rxscan135_done377:
    nqp_rxmark rx134_bstack, rxcap136_fail379, rx134_pos, 0
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail371
    substr $S10, rx134_tgt, rx134_pos, 1
    ne $S10, ucs4:"?", rx134_fail371
    add rx134_pos, 1
    nqp_rxpeek $I19, rx134_bstack, rxcap136_fail379
    inc $I19
    set $I11, rx134_bstack[$I19]
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx134_pos)
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "sym")
    goto rxcap136_done378
  rxcap136_fail379:
    goto rx134_fail371
  rxcap136_done378:
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail371
    nqp_rxmark rx134_bstack, rxsubrule137_pass380, -1, 0
  rxsubrule137_pass380:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    rx134_cur."!cursor_pass"(rx134_pos, "quantifier:sym<?>", 'backtrack'=>1)
    .return (rx134_cur)
  rx134_restart370:
    repr_get_attr_obj rx134_cstack, rx134_cur, rx134_curclass, "$!cstack"
  rx134_fail371:
    unless rx134_bstack, rx134_done369
    pop $I19, rx134_bstack
    if_null rx134_cstack, rx134_cstack_done374
    unless rx134_cstack, rx134_cstack_done374
    dec $I19
    set $P11, rx134_cstack[$I19]
  rx134_cstack_done374:
    pop rx134_rep, rx134_bstack
    pop rx134_pos, rx134_bstack
    pop $I19, rx134_bstack
    lt rx134_pos, -1, rx134_done369
    lt rx134_pos, 0, rx134_fail371
    eq $I19, 0, rx134_fail371
    nqp_islist $I20, rx134_cstack
    unless $I20, rx134_jump372
    elements $I18, rx134_bstack
    le $I18, 0, rx134_cut373
    dec $I18
    set $I18, rx134_bstack[$I18]
  rx134_cut373:
    assign rx134_cstack, $I18
  rx134_jump372:
    jump $I19
  rx134_done369:
    rx134_cur."!cursor_fail"()
    .return (rx134_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_25_1349901746.339_caps" :subid("cuid_memo_47_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["backmod"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_25_1349901746.339_nfa" :subid("cuid_memo_48_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 63
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "backmod"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<{N,M}>" :subid("cuid_29_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .const 'Sub' $P5007 = 'cuid_163_1349901746.339' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_26_1349901746.339' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_27_1349901746.339' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_28_1349901746.339' 
    capture_lex $P5007 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx138_tgt
    .local int rx138_pos
    .local int rx138_off
    .local int rx138_eos
    .local int rx138_rep
    .local pmc rx138_cur
    .local pmc rx138_curclass
    .local pmc rx138_bstack
    .local pmc rx138_cstack
    (rx138_cur, rx138_tgt, rx138_pos, rx138_curclass, rx138_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx138_cur
    length rx138_eos, rx138_tgt
    eq $I19, 1, rx138_restart383
    gt rx138_pos, rx138_eos, rx138_fail384
    repr_get_attr_int $I11, self, rx138_curclass, "$!from"
    ne $I11, -1, rxscan139_done390
    goto rxscan139_scan389
  rxscan139_loop388:
    inc rx138_pos
    gt rx138_pos, rx138_eos, rx138_fail384
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!from", rx138_pos
  rxscan139_scan389:
    nqp_rxmark rx138_bstack, rxscan139_loop388, rx138_pos, 0
  rxscan139_done390:
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    store_lex unicode:"$\x{a2}", rx138_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_163_1349901746.339' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail384
    substr $S10, rx138_tgt, rx138_pos, 1
    ne $S10, ucs4:"{", rx138_fail384
    add rx138_pos, 1
    .const 'Sub' $P5004 = 'cuid_26_1349901746.339' 
    capture_lex $P5004
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail384
    nqp_rxmark rx138_bstack, rxsubrule143_pass403, -1, 0
  rxsubrule143_pass403:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    .const 'Sub' $P5005 = 'cuid_27_1349901746.339' 
    capture_lex $P5005
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail384
    nqp_rxmark rx138_bstack, rxsubrule147_pass416, -1, 0
  rxsubrule147_pass416:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    .const 'Sub' $P5006 = 'cuid_28_1349901746.339' 
    capture_lex $P5006
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5006()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail384
    nqp_rxmark rx138_bstack, rxsubrule151_pass429, -1, 0
  rxsubrule151_pass429:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, "2")
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail384
    substr $S10, rx138_tgt, rx138_pos, 1
    ne $S10, ucs4:"}", rx138_fail384
    add rx138_pos, 1
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail384
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    rx138_cur."!cursor_pass"(rx138_pos, "quantifier:sym<{N,M}>", 'backtrack'=>1)
    .return (rx138_cur)
  rx138_restart383:
    repr_get_attr_obj rx138_cstack, rx138_cur, rx138_curclass, "$!cstack"
  rx138_fail384:
    unless rx138_bstack, rx138_done382
    pop $I19, rx138_bstack
    if_null rx138_cstack, rx138_cstack_done387
    unless rx138_cstack, rx138_cstack_done387
    dec $I19
    set $P11, rx138_cstack[$I19]
  rx138_cstack_done387:
    pop rx138_rep, rx138_bstack
    pop rx138_pos, rx138_bstack
    pop $I19, rx138_bstack
    lt rx138_pos, -1, rx138_done382
    lt rx138_pos, 0, rx138_fail384
    eq $I19, 0, rx138_fail384
    nqp_islist $I20, rx138_cstack
    unless $I20, rx138_jump385
    elements $I18, rx138_bstack
    le $I18, 0, rx138_cut386
    dec $I18
    set $I18, rx138_bstack[$I18]
  rx138_cut386:
    assign rx138_cstack, $I18
  rx138_jump385:
    jump $I19
  rx138_done382:
    rx138_cur."!cursor_fail"()
    .return (rx138_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_29_1349901746.339_caps" :subid("cuid_memo_49_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 1
    set $P5001["0"], $P5002
    box $P5003, 1
    set $P5001["1"], $P5003
    box $P5004, 1
    set $P5001["2"], $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1349901746.339") :anon :lex :outer("cuid_29_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 101

    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_26_1349901746.339") :anon :lex :outer("cuid_29_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx140_tgt
    .local int rx140_pos
    .local int rx140_off
    .local int rx140_eos
    .local int rx140_rep
    .local pmc rx140_cur
    .local pmc rx140_curclass
    .local pmc rx140_bstack
    .local pmc rx140_cstack
    (rx140_cur, rx140_tgt, rx140_pos, rx140_curclass, rx140_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx140_cur
    length rx140_eos, rx140_tgt
    eq $I19, 1, rx140_restart393
    gt rx140_pos, rx140_eos, rx140_fail394
    repr_get_attr_int $I11, self, rx140_curclass, "$!from"
    ne $I11, -1, rxscan141_done400
    goto rxscan141_scan399
  rxscan141_loop398:
    inc rx140_pos
    gt rx140_pos, rx140_eos, rx140_fail394
    repr_bind_attr_int rx140_cur, rx140_curclass, "$!from", rx140_pos
  rxscan141_scan399:
    nqp_rxmark rx140_bstack, rxscan141_loop398, rx140_pos, 0
  rxscan141_done400:
    nqp_rxmark rx140_bstack, rxquantr142_done402, -1, 0
  rxquantr142_loop401:
    ge rx140_pos, rx140_eos, rx140_fail394
    is_cclass $I11, .CCLASS_NUMERIC, rx140_tgt, rx140_pos
    unless $I11, rx140_fail394
    add rx140_pos, 1
    nqp_rxpeek $I19, rx140_bstack, rxquantr142_done402
    inc $I19
    inc $I19
    set rx140_rep, rx140_bstack[$I19]
    nqp_rxcommit rx140_bstack, rxquantr142_done402
    inc rx140_rep
    nqp_rxmark rx140_bstack, rxquantr142_done402, rx140_pos, rx140_rep
    goto rxquantr142_loop401
  rxquantr142_done402:
    rx140_cur."!cursor_pass"(rx140_pos, 'backtrack'=>1)
    .return (rx140_cur)
  rx140_restart393:
    repr_get_attr_obj rx140_cstack, rx140_cur, rx140_curclass, "$!cstack"
  rx140_fail394:
    unless rx140_bstack, rx140_done392
    pop $I19, rx140_bstack
    if_null rx140_cstack, rx140_cstack_done397
    unless rx140_cstack, rx140_cstack_done397
    dec $I19
    set $P11, rx140_cstack[$I19]
  rx140_cstack_done397:
    pop rx140_rep, rx140_bstack
    pop rx140_pos, rx140_bstack
    pop $I19, rx140_bstack
    lt rx140_pos, -1, rx140_done392
    lt rx140_pos, 0, rx140_fail394
    eq $I19, 0, rx140_fail394
    nqp_islist $I20, rx140_cstack
    unless $I20, rx140_jump395
    elements $I18, rx140_bstack
    le $I18, 0, rx140_cut396
    dec $I18
    set $I18, rx140_bstack[$I18]
  rx140_cut396:
    assign rx140_cstack, $I18
  rx140_jump395:
    jump $I19
  rx140_done392:
    rx140_cur."!cursor_fail"()
    .return (rx140_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1349901746.339_caps" :subid("cuid_memo_50_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1349901746.339_nfa" :subid("cuid_memo_51_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 1
    push $P5003, $P5004
    box $P5005, 0
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 4
    push $P5007, $P5008
    box $P5009, 8
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 1
    push $P5011, $P5012
    box $P5013, 0
    push $P5011, $P5013
    box $P5014, 2
    push $P5011, $P5014
    box $P5015, 1
    push $P5011, $P5015
    box $P5016, 0
    push $P5011, $P5016
    box $P5017, 0
    push $P5011, $P5017
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_27_1349901746.339") :anon :lex :outer("cuid_29_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    .local pmc rx144_curclass
    .local pmc rx144_bstack
    .local pmc rx144_cstack
    (rx144_cur, rx144_tgt, rx144_pos, rx144_curclass, rx144_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx144_cur
    length rx144_eos, rx144_tgt
    eq $I19, 1, rx144_restart406
    gt rx144_pos, rx144_eos, rx144_fail407
    repr_get_attr_int $I11, self, rx144_curclass, "$!from"
    ne $I11, -1, rxscan145_done413
    goto rxscan145_scan412
  rxscan145_loop411:
    inc rx144_pos
    gt rx144_pos, rx144_eos, rx144_fail407
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!from", rx144_pos
  rxscan145_scan412:
    nqp_rxmark rx144_bstack, rxscan145_loop411, rx144_pos, 0
  rxscan145_done413:
    nqp_rxmark rx144_bstack, rxquantr146_done415, rx144_pos, 0
  rxquantr146_loop414:
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail407
    substr $S10, rx144_tgt, rx144_pos, 1
    ne $S10, ucs4:",", rx144_fail407
    add rx144_pos, 1
    nqp_rxpeek $I19, rx144_bstack, rxquantr146_done415
    inc $I19
    inc $I19
    set rx144_rep, rx144_bstack[$I19]
    nqp_rxcommit rx144_bstack, rxquantr146_done415
    inc rx144_rep
  rxquantr146_done415:
    rx144_cur."!cursor_pass"(rx144_pos, 'backtrack'=>1)
    .return (rx144_cur)
  rx144_restart406:
    repr_get_attr_obj rx144_cstack, rx144_cur, rx144_curclass, "$!cstack"
  rx144_fail407:
    unless rx144_bstack, rx144_done405
    pop $I19, rx144_bstack
    if_null rx144_cstack, rx144_cstack_done410
    unless rx144_cstack, rx144_cstack_done410
    dec $I19
    set $P11, rx144_cstack[$I19]
  rx144_cstack_done410:
    pop rx144_rep, rx144_bstack
    pop rx144_pos, rx144_bstack
    pop $I19, rx144_bstack
    lt rx144_pos, -1, rx144_done405
    lt rx144_pos, 0, rx144_fail407
    eq $I19, 0, rx144_fail407
    nqp_islist $I20, rx144_cstack
    unless $I20, rx144_jump408
    elements $I18, rx144_bstack
    le $I18, 0, rx144_cut409
    dec $I18
    set $I18, rx144_bstack[$I18]
  rx144_cut409:
    assign rx144_cstack, $I18
  rx144_jump408:
    jump $I19
  rx144_done405:
    rx144_cur."!cursor_fail"()
    .return (rx144_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1349901746.339_caps" :subid("cuid_memo_52_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1349901746.339_nfa" :subid("cuid_memo_53_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 44
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    box $P5007, 1
    push $P5003, $P5007
    box $P5008, 0
    push $P5003, $P5008
    box $P5009, 0
    push $P5003, $P5009
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_28_1349901746.339") :anon :lex :outer("cuid_29_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
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
    eq $I19, 1, rx148_restart419
    gt rx148_pos, rx148_eos, rx148_fail420
    repr_get_attr_int $I11, self, rx148_curclass, "$!from"
    ne $I11, -1, rxscan149_done426
    goto rxscan149_scan425
  rxscan149_loop424:
    inc rx148_pos
    gt rx148_pos, rx148_eos, rx148_fail420
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!from", rx148_pos
  rxscan149_scan425:
    nqp_rxmark rx148_bstack, rxscan149_loop424, rx148_pos, 0
  rxscan149_done426:
    nqp_rxmark rx148_bstack, rxquantr150_done428, rx148_pos, 0
  rxquantr150_loop427:
    ge rx148_pos, rx148_eos, rx148_fail420
    is_cclass $I11, .CCLASS_NUMERIC, rx148_tgt, rx148_pos
    unless $I11, rx148_fail420
    add rx148_pos, 1
    nqp_rxpeek $I19, rx148_bstack, rxquantr150_done428
    inc $I19
    inc $I19
    set rx148_rep, rx148_bstack[$I19]
    nqp_rxcommit rx148_bstack, rxquantr150_done428
    inc rx148_rep
    nqp_rxmark rx148_bstack, rxquantr150_done428, rx148_pos, rx148_rep
    goto rxquantr150_loop427
  rxquantr150_done428:
    rx148_cur."!cursor_pass"(rx148_pos, 'backtrack'=>1)
    .return (rx148_cur)
  rx148_restart419:
    repr_get_attr_obj rx148_cstack, rx148_cur, rx148_curclass, "$!cstack"
  rx148_fail420:
    unless rx148_bstack, rx148_done418
    pop $I19, rx148_bstack
    if_null rx148_cstack, rx148_cstack_done423
    unless rx148_cstack, rx148_cstack_done423
    dec $I19
    set $P11, rx148_cstack[$I19]
  rx148_cstack_done423:
    pop rx148_rep, rx148_bstack
    pop rx148_pos, rx148_bstack
    pop $I19, rx148_bstack
    lt rx148_pos, -1, rx148_done418
    lt rx148_pos, 0, rx148_fail420
    eq $I19, 0, rx148_fail420
    nqp_islist $I20, rx148_cstack
    unless $I20, rx148_jump421
    elements $I18, rx148_bstack
    le $I18, 0, rx148_cut422
    dec $I18
    set $I18, rx148_bstack[$I18]
  rx148_cut422:
    assign rx148_cstack, $I18
  rx148_jump421:
    jump $I19
  rx148_done418:
    rx148_cur."!cursor_fail"()
    .return (rx148_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_28_1349901746.339_caps" :subid("cuid_memo_54_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_28_1349901746.339_nfa" :subid("cuid_memo_55_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 4
    push $P5003, $P5004
    box $P5005, 8
    push $P5003, $P5005
    box $P5006, 1
    push $P5003, $P5006
    box $P5007, 1
    push $P5003, $P5007
    box $P5008, 0
    push $P5003, $P5008
    box $P5009, 0
    push $P5003, $P5009
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<**>" :subid("cuid_30_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 104
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
    eq $I19, 1, rx153_restart433
    gt rx153_pos, rx153_eos, rx153_fail434
    repr_get_attr_int $I11, self, rx153_curclass, "$!from"
    ne $I11, -1, rxscan154_done440
    goto rxscan154_scan439
  rxscan154_loop438:
    inc rx153_pos
    gt rx153_pos, rx153_eos, rx153_fail434
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!from", rx153_pos
  rxscan154_scan439:
    nqp_rxmark rx153_bstack, rxscan154_loop438, rx153_pos, 0
  rxscan154_done440:
    nqp_rxmark rx153_bstack, rxcap155_fail442, rx153_pos, 0
    add $I11, rx153_pos, 2
    gt $I11, rx153_eos, rx153_fail434
    substr $S10, rx153_tgt, rx153_pos, 2
    ne $S10, ucs4:"**", rx153_fail434
    add rx153_pos, 2
    nqp_rxpeek $I19, rx153_bstack, rxcap155_fail442
    inc $I19
    set $I11, rx153_bstack[$I19]
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx153_pos)
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "sym")
    goto rxcap155_done441
  rxcap155_fail442:
    goto rx153_fail434
  rxcap155_done441:
    nqp_rxmark rx153_bstack, rxquantr156_done444, rx153_pos, 0
  rxquantr156_loop443:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail434
    goto rxsubrule157_pass445
  rxsubrule157_back446:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail434
  rxsubrule157_pass445:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule157_back446
    push rx153_bstack, $I11
    push rx153_bstack, 0
    push rx153_bstack, rx153_pos
    elements $I11, rx153_cstack
    push rx153_bstack, $I11
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    nqp_rxpeek $I19, rx153_bstack, rxquantr156_done444
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr156_done444
    inc rx153_rep
  rxquantr156_done444:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail434
    nqp_rxmark rx153_bstack, rxsubrule158_pass447, -1, 0
  rxsubrule158_pass447:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    nqp_rxmark rx153_bstack, rxquantr159_done449, rx153_pos, 0
  rxquantr159_loop448:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail434
    goto rxsubrule160_pass450
  rxsubrule160_back451:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail434
  rxsubrule160_pass450:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule160_back451
    push rx153_bstack, $I11
    push rx153_bstack, 0
    push rx153_bstack, rx153_pos
    elements $I11, rx153_cstack
    push rx153_bstack, $I11
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    nqp_rxpeek $I19, rx153_bstack, rxquantr159_done449
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr159_done449
    inc rx153_rep
  rxquantr159_done449:
    nqp_rxmark rx153_bstack, rxcap161_fail453, rx153_pos, 0
    nqp_rxmark rx153_bstack, rxquantr162_done455, -1, 0
  rxquantr162_loop454:
    ge rx153_pos, rx153_eos, rx153_fail434
    is_cclass $I11, .CCLASS_NUMERIC, rx153_tgt, rx153_pos
    unless $I11, rx153_fail434
    add rx153_pos, 1
    nqp_rxpeek $I19, rx153_bstack, rxquantr162_done455
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr162_done455
    inc rx153_rep
    nqp_rxmark rx153_bstack, rxquantr162_done455, rx153_pos, rx153_rep
    goto rxquantr162_loop454
  rxquantr162_done455:
    nqp_rxpeek $I19, rx153_bstack, rxcap161_fail453
    inc $I19
    set $I11, rx153_bstack[$I19]
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx153_pos)
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "min")
    goto rxcap161_done452
  rxcap161_fail453:
    goto rx153_fail434
  rxcap161_done452:
    nqp_rxmark rx153_bstack, rxquantr163_done457, rx153_pos, 0
  rxquantr163_loop456:
    add $I11, rx153_pos, 2
    gt $I11, rx153_eos, rx153_fail434
    substr $S10, rx153_tgt, rx153_pos, 2
    ne $S10, ucs4:"..", rx153_fail434
    add rx153_pos, 2
    nqp_rxmark rx153_bstack, rxcap164_fail459, rx153_pos, 0
  alt165_0461:
    nqp_rxmark rx153_bstack, alt165_1464, rx153_pos, 0
    nqp_rxmark rx153_bstack, rxquantr166_done463, -1, 0
  rxquantr166_loop462:
    ge rx153_pos, rx153_eos, rx153_fail434
    is_cclass $I11, .CCLASS_NUMERIC, rx153_tgt, rx153_pos
    unless $I11, rx153_fail434
    add rx153_pos, 1
    nqp_rxpeek $I19, rx153_bstack, rxquantr166_done463
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr166_done463
    inc rx153_rep
    nqp_rxmark rx153_bstack, rxquantr166_done463, rx153_pos, rx153_rep
    goto rxquantr166_loop462
  rxquantr166_done463:
    goto alt165_end460
  alt165_1464:
    nqp_rxmark rx153_bstack, alt165_2465, rx153_pos, 0
    add $I11, rx153_pos, 1
    gt $I11, rx153_eos, rx153_fail434
    substr $S10, rx153_tgt, rx153_pos, 1
    ne $S10, ucs4:"*", rx153_fail434
    add rx153_pos, 1
    goto alt165_end460
  alt165_2465:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail434
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
  alt165_end460:
    nqp_rxpeek $I19, rx153_bstack, rxcap164_fail459
    inc $I19
    set $I11, rx153_bstack[$I19]
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx153_pos)
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "max")
    goto rxcap164_done458
  rxcap164_fail459:
    goto rx153_fail434
  rxcap164_done458:
    nqp_rxpeek $I19, rx153_bstack, rxquantr163_done457
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr163_done457
    inc rx153_rep
  rxquantr163_done457:
    rx153_cur."!cursor_pass"(rx153_pos, "quantifier:sym<**>", 'backtrack'=>1)
    .return (rx153_cur)
  rx153_restart433:
    repr_get_attr_obj rx153_cstack, rx153_cur, rx153_curclass, "$!cstack"
  rx153_fail434:
    unless rx153_bstack, rx153_done432
    pop $I19, rx153_bstack
    if_null rx153_cstack, rx153_cstack_done437
    unless rx153_cstack, rx153_cstack_done437
    dec $I19
    set $P11, rx153_cstack[$I19]
  rx153_cstack_done437:
    pop rx153_rep, rx153_bstack
    pop rx153_pos, rx153_bstack
    pop $I19, rx153_bstack
    lt rx153_pos, -1, rx153_done432
    lt rx153_pos, 0, rx153_fail434
    eq $I19, 0, rx153_fail434
    nqp_islist $I20, rx153_cstack
    unless $I20, rx153_jump435
    elements $I18, rx153_bstack
    le $I18, 0, rx153_cut436
    dec $I18
    set $I18, rx153_bstack[$I18]
  rx153_cut436:
    assign rx153_cstack, $I18
  rx153_jump435:
    jump $I19
  rx153_done432:
    rx153_cur."!cursor_fail"()
    .return (rx153_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_30_1349901746.339_caps" :subid("cuid_memo_56_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 2
    set $P5001["normspace"], $P5003
    box $P5004, 0
    set $P5001["backmod"], $P5004
    box $P5005, 0
    set $P5001["min"], $P5005
    box $P5006, 2
    set $P5001["max"], $P5006
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_30_1349901746.339_nfa" :subid("cuid_memo_57_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 42
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 42
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 8
    push $P5011, $P5012
    box $P5013, "normspace"
    push $P5011, $P5013
    box $P5014, 4
    push $P5011, $P5014
    box $P5015, 1
    push $P5011, $P5015
    box $P5016, 0
    push $P5011, $P5016
    box $P5017, 4
    push $P5011, $P5017
    push $P5001, $P5011
    new $P5018, 'ResizablePMCArray'
    box $P5019, 8
    push $P5018, $P5019
    box $P5020, "backmod"
    push $P5018, $P5020
    box $P5021, 5
    push $P5018, $P5021
    push $P5001, $P5018
    new $P5022, 'ResizablePMCArray'
    box $P5023, 8
    push $P5022, $P5023
    box $P5024, "normspace"
    push $P5022, $P5024
    box $P5025, 6
    push $P5022, $P5025
    box $P5026, 1
    push $P5022, $P5026
    box $P5027, 0
    push $P5022, $P5027
    box $P5028, 6
    push $P5022, $P5028
    push $P5001, $P5022
    new $P5029, 'ResizablePMCArray'
    box $P5030, 1
    push $P5029, $P5030
    box $P5031, 0
    push $P5029, $P5031
    box $P5032, 7
    push $P5029, $P5032
    push $P5001, $P5029
    new $P5033, 'ResizablePMCArray'
    box $P5034, 4
    push $P5033, $P5034
    box $P5035, 8
    push $P5033, $P5035
    box $P5036, 8
    push $P5033, $P5036
    push $P5001, $P5033
    new $P5037, 'ResizablePMCArray'
    box $P5038, 1
    push $P5037, $P5038
    box $P5039, 0
    push $P5037, $P5039
    box $P5040, 7
    push $P5037, $P5040
    box $P5041, 1
    push $P5037, $P5041
    box $P5042, 0
    push $P5037, $P5042
    box $P5043, 9
    push $P5037, $P5043
    box $P5044, 2
    push $P5037, $P5044
    box $P5045, 46
    push $P5037, $P5045
    box $P5046, 10
    push $P5037, $P5046
    box $P5047, 1
    push $P5037, $P5047
    box $P5048, 0
    push $P5037, $P5048
    box $P5049, 0
    push $P5037, $P5049
    push $P5001, $P5037
    new $P5050, 'ResizablePMCArray'
    push $P5001, $P5050
    new $P5051, 'ResizablePMCArray'
    box $P5052, 2
    push $P5051, $P5052
    box $P5053, 46
    push $P5051, $P5053
    box $P5054, 11
    push $P5051, $P5054
    push $P5001, $P5051
    new $P5055, 'ResizablePMCArray'
    box $P5056, 0
    push $P5055, $P5056
    box $P5057, 0
    push $P5055, $P5057
    box $P5058, 0
    push $P5055, $P5058
    push $P5001, $P5055
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backmod" :subid("cuid_32_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 118
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_31_1349901746.339' 
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
    eq $I19, 1, rx168_restart469
    gt rx168_pos, rx168_eos, rx168_fail470
    repr_get_attr_int $I11, self, rx168_curclass, "$!from"
    ne $I11, -1, rxscan169_done476
    goto rxscan169_scan475
  rxscan169_loop474:
    inc rx168_pos
    gt rx168_pos, rx168_eos, rx168_fail470
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!from", rx168_pos
  rxscan169_scan475:
    nqp_rxmark rx168_bstack, rxscan169_loop474, rx168_pos, 0
  rxscan169_done476:
    nqp_rxmark rx168_bstack, rxquantr170_done478, rx168_pos, 0
  rxquantr170_loop477:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail470
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:":", rx168_fail470
    add rx168_pos, 1
    nqp_rxpeek $I19, rx168_bstack, rxquantr170_done478
    inc $I19
    inc $I19
    set rx168_rep, rx168_bstack[$I19]
    nqp_rxcommit rx168_bstack, rxquantr170_done478
    inc rx168_rep
  rxquantr170_done478:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt171_0480
    nqp_push_label $P11, alt171_1481
    nqp_push_label $P11, alt171_2482
    nqp_rxmark rx168_bstack, alt171_end479, -1, 0
    rx168_cur."!alt"(rx168_pos, "alt_nfa__7_1349901746.744", $P11)
    goto rx168_fail470
  alt171_0480:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail470
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:"?", rx168_fail470
    add rx168_pos, 1
    goto alt171_end479
  alt171_1481:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail470
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:"!", rx168_fail470
    add rx168_pos, 1
    goto alt171_end479
  alt171_2482:
    .const 'Sub' $P5001 = 'cuid_31_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!pos", rx168_pos
    $P11 = rx168_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx168_curclass, "$!pos"
    ge $I11, 0, rx168_fail470
    goto alt171_end479
  alt171_end479:
    nqp_rxcommit rx168_bstack, alt171_end479
    rx168_cur."!cursor_pass"(rx168_pos, "backmod", 'backtrack'=>1)
    .return (rx168_cur)
  rx168_restart469:
    repr_get_attr_obj rx168_cstack, rx168_cur, rx168_curclass, "$!cstack"
  rx168_fail470:
    unless rx168_bstack, rx168_done468
    pop $I19, rx168_bstack
    if_null rx168_cstack, rx168_cstack_done473
    unless rx168_cstack, rx168_cstack_done473
    dec $I19
    set $P11, rx168_cstack[$I19]
  rx168_cstack_done473:
    pop rx168_rep, rx168_bstack
    pop rx168_pos, rx168_bstack
    pop $I19, rx168_bstack
    lt rx168_pos, -1, rx168_done468
    lt rx168_pos, 0, rx168_fail470
    eq $I19, 0, rx168_fail470
    nqp_islist $I20, rx168_cstack
    unless $I20, rx168_jump471
    elements $I18, rx168_bstack
    le $I18, 0, rx168_cut472
    dec $I18
    set $I18, rx168_bstack[$I18]
  rx168_cut472:
    assign rx168_cstack, $I18
  rx168_jump471:
    jump $I19
  rx168_done468:
    rx168_cur."!cursor_fail"()
    .return (rx168_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1349901746.339_caps" :subid("cuid_memo_58_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1349901746.339_nfa" :subid("cuid_memo_59_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 58
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 1
    push $P5003, $P5007
    box $P5008, 0
    push $P5003, $P5008
    box $P5009, 2
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 63
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    box $P5014, 2
    push $P5010, $P5014
    box $P5015, 33
    push $P5010, $P5015
    box $P5016, 0
    push $P5010, $P5016
    box $P5017, 0
    push $P5010, $P5017
    box $P5018, 0
    push $P5010, $P5018
    box $P5019, 0
    push $P5010, $P5019
    push $P5001, $P5010
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1349901746.339_alt_nfa__7_1349901746.744" :subid("cuid_memo_60_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 63
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 33
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5008, $P5010
    push $P5001, $P5008
    new $P5014, 'ResizablePMCArray'
    new $P5015, 'ResizablePMCArray'
    push $P5014, $P5015
    new $P5016, 'ResizablePMCArray'
    box $P5017, 0
    push $P5016, $P5017
    box $P5018, 0
    push $P5016, $P5018
    box $P5019, 0
    push $P5016, $P5019
    box $P5020, 0
    push $P5016, $P5020
    box $P5021, 0
    push $P5016, $P5021
    box $P5022, 0
    push $P5016, $P5022
    push $P5014, $P5016
    push $P5001, $P5014
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_31_1349901746.339") :anon :lex :outer("cuid_32_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx172_tgt
    .local int rx172_pos
    .local int rx172_off
    .local int rx172_eos
    .local int rx172_rep
    .local pmc rx172_cur
    .local pmc rx172_curclass
    .local pmc rx172_bstack
    .local pmc rx172_cstack
    (rx172_cur, rx172_tgt, rx172_pos, rx172_curclass, rx172_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx172_cur
    length rx172_eos, rx172_tgt
    eq $I19, 1, rx172_restart485
    gt rx172_pos, rx172_eos, rx172_fail486
    repr_get_attr_int $I11, self, rx172_curclass, "$!from"
    ne $I11, -1, rxscan173_done492
    goto rxscan173_scan491
  rxscan173_loop490:
    inc rx172_pos
    gt rx172_pos, rx172_eos, rx172_fail486
    repr_bind_attr_int rx172_cur, rx172_curclass, "$!from", rx172_pos
  rxscan173_scan491:
    nqp_rxmark rx172_bstack, rxscan173_loop490, rx172_pos, 0
  rxscan173_done492:
    add $I11, rx172_pos, 1
    gt $I11, rx172_eos, rx172_fail486
    substr $S10, rx172_tgt, rx172_pos, 1
    ne $S10, ucs4:":", rx172_fail486
    add rx172_pos, 1
    rx172_cur."!cursor_pass"(rx172_pos, 'backtrack'=>1)
    .return (rx172_cur)
  rx172_restart485:
    repr_get_attr_obj rx172_cstack, rx172_cur, rx172_curclass, "$!cstack"
  rx172_fail486:
    unless rx172_bstack, rx172_done484
    pop $I19, rx172_bstack
    if_null rx172_cstack, rx172_cstack_done489
    unless rx172_cstack, rx172_cstack_done489
    dec $I19
    set $P11, rx172_cstack[$I19]
  rx172_cstack_done489:
    pop rx172_rep, rx172_bstack
    pop rx172_pos, rx172_bstack
    pop $I19, rx172_bstack
    lt rx172_pos, -1, rx172_done484
    lt rx172_pos, 0, rx172_fail486
    eq $I19, 0, rx172_fail486
    nqp_islist $I20, rx172_cstack
    unless $I20, rx172_jump487
    elements $I18, rx172_bstack
    le $I18, 0, rx172_cut488
    dec $I18
    set $I18, rx172_bstack[$I18]
  rx172_cut488:
    assign rx172_cstack, $I18
  rx172_jump487:
    jump $I19
  rx172_done484:
    rx172_cur."!cursor_fail"()
    .return (rx172_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_31_1349901746.339_caps" :subid("cuid_memo_61_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_31_1349901746.339_nfa" :subid("cuid_memo_62_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 58
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar" :subid("cuid_33_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 120
    .param pmc self 
    $P5001 = self."!protoregex"("metachar")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<ws>" :subid("cuid_34_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 121
    .param pmc _lex_param_0 
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
    eq $I19, 1, rx174_restart495
    gt rx174_pos, rx174_eos, rx174_fail496
    repr_get_attr_int $I11, self, rx174_curclass, "$!from"
    ne $I11, -1, rxscan175_done502
    goto rxscan175_scan501
  rxscan175_loop500:
    inc rx174_pos
    gt rx174_pos, rx174_eos, rx174_fail496
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!from", rx174_pos
  rxscan175_scan501:
    nqp_rxmark rx174_bstack, rxscan175_loop500, rx174_pos, 0
  rxscan175_done502:
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail496
    repr_get_attr_int rx174_pos, $P11, rx174_curclass, "$!pos"
    rx174_cur."!cursor_pass"(rx174_pos, "metachar:sym<ws>", 'backtrack'=>1)
    .return (rx174_cur)
  rx174_restart495:
    repr_get_attr_obj rx174_cstack, rx174_cur, rx174_curclass, "$!cstack"
  rx174_fail496:
    unless rx174_bstack, rx174_done494
    pop $I19, rx174_bstack
    if_null rx174_cstack, rx174_cstack_done499
    unless rx174_cstack, rx174_cstack_done499
    dec $I19
    set $P11, rx174_cstack[$I19]
  rx174_cstack_done499:
    pop rx174_rep, rx174_bstack
    pop rx174_pos, rx174_bstack
    pop $I19, rx174_bstack
    lt rx174_pos, -1, rx174_done494
    lt rx174_pos, 0, rx174_fail496
    eq $I19, 0, rx174_fail496
    nqp_islist $I20, rx174_cstack
    unless $I20, rx174_jump497
    elements $I18, rx174_bstack
    le $I18, 0, rx174_cut498
    dec $I18
    set $I18, rx174_bstack[$I18]
  rx174_cut498:
    assign rx174_cstack, $I18
  rx174_jump497:
    jump $I19
  rx174_done494:
    rx174_cur."!cursor_fail"()
    .return (rx174_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_34_1349901746.339_caps" :subid("cuid_memo_63_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_34_1349901746.339_nfa" :subid("cuid_memo_64_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "normspace"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<[ ]>" :subid("cuid_35_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 122
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    .local pmc rx177_curclass
    .local pmc rx177_bstack
    .local pmc rx177_cstack
    (rx177_cur, rx177_tgt, rx177_pos, rx177_curclass, rx177_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx177_cur
    length rx177_eos, rx177_tgt
    eq $I19, 1, rx177_restart506
    gt rx177_pos, rx177_eos, rx177_fail507
    repr_get_attr_int $I11, self, rx177_curclass, "$!from"
    ne $I11, -1, rxscan178_done513
    goto rxscan178_scan512
  rxscan178_loop511:
    inc rx177_pos
    gt rx177_pos, rx177_eos, rx177_fail507
    repr_bind_attr_int rx177_cur, rx177_curclass, "$!from", rx177_pos
  rxscan178_scan512:
    nqp_rxmark rx177_bstack, rxscan178_loop511, rx177_pos, 0
  rxscan178_done513:
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail507
    substr $S10, rx177_tgt, rx177_pos, 1
    ne $S10, ucs4:"[", rx177_fail507
    add rx177_pos, 1
    repr_bind_attr_int rx177_cur, rx177_curclass, "$!pos", rx177_pos
    $P11 = rx177_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx177_curclass, "$!pos"
    lt $I11, 0, rx177_fail507
    nqp_rxmark rx177_bstack, rxsubrule179_pass514, -1, 0
  rxsubrule179_pass514:
    rx177_cstack = rx177_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx177_pos, $P11, rx177_curclass, "$!pos"
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail507
    substr $S10, rx177_tgt, rx177_pos, 1
    ne $S10, ucs4:"]", rx177_fail507
    add rx177_pos, 1
    rx177_cur."!cursor_pass"(rx177_pos, "metachar:sym<[ ]>", 'backtrack'=>1)
    .return (rx177_cur)
  rx177_restart506:
    repr_get_attr_obj rx177_cstack, rx177_cur, rx177_curclass, "$!cstack"
  rx177_fail507:
    unless rx177_bstack, rx177_done505
    pop $I19, rx177_bstack
    if_null rx177_cstack, rx177_cstack_done510
    unless rx177_cstack, rx177_cstack_done510
    dec $I19
    set $P11, rx177_cstack[$I19]
  rx177_cstack_done510:
    pop rx177_rep, rx177_bstack
    pop rx177_pos, rx177_bstack
    pop $I19, rx177_bstack
    lt rx177_pos, -1, rx177_done505
    lt rx177_pos, 0, rx177_fail507
    eq $I19, 0, rx177_fail507
    nqp_islist $I20, rx177_cstack
    unless $I20, rx177_jump508
    elements $I18, rx177_bstack
    le $I18, 0, rx177_cut509
    dec $I18
    set $I18, rx177_bstack[$I18]
  rx177_cut509:
    assign rx177_cstack, $I18
  rx177_jump508:
    jump $I19
  rx177_done505:
    rx177_cur."!cursor_fail"()
    .return (rx177_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_35_1349901746.339_caps" :subid("cuid_memo_65_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_35_1349901746.339_nfa" :subid("cuid_memo_66_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 91
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "nibbler"
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 2
    push $P5011, $P5012
    box $P5013, 93
    push $P5011, $P5013
    box $P5014, 0
    push $P5011, $P5014
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<( )>" :subid("cuid_36_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 123
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
    eq $I19, 1, rx180_restart517
    gt rx180_pos, rx180_eos, rx180_fail518
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done524
    goto rxscan181_scan523
  rxscan181_loop522:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail518
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan523:
    nqp_rxmark rx180_bstack, rxscan181_loop522, rx180_pos, 0
  rxscan181_done524:
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail518
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"(", rx180_fail518
    add rx180_pos, 1
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail518
    nqp_rxmark rx180_bstack, rxsubrule182_pass525, -1, 0
  rxsubrule182_pass525:
    rx180_cstack = rx180_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail518
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:")", rx180_fail518
    add rx180_pos, 1
    rx180_cur."!cursor_pass"(rx180_pos, "metachar:sym<( )>", 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart517:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail518:
    unless rx180_bstack, rx180_done516
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done521
    unless rx180_cstack, rx180_cstack_done521
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done521:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done516
    lt rx180_pos, 0, rx180_fail518
    eq $I19, 0, rx180_fail518
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump519
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut520
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut520:
    assign rx180_cstack, $I18
  rx180_jump519:
    jump $I19
  rx180_done516:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_36_1349901746.339_caps" :subid("cuid_memo_67_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_36_1349901746.339_nfa" :subid("cuid_memo_68_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 40
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "nibbler"
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 2
    push $P5011, $P5012
    box $P5013, 41
    push $P5011, $P5013
    box $P5014, 0
    push $P5011, $P5014
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<'>" :subid("cuid_37_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 124
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    .local pmc rx183_curclass
    .local pmc rx183_bstack
    .local pmc rx183_cstack
    (rx183_cur, rx183_tgt, rx183_pos, rx183_curclass, rx183_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx183_cur
    length rx183_eos, rx183_tgt
    eq $I19, 1, rx183_restart528
    gt rx183_pos, rx183_eos, rx183_fail529
    repr_get_attr_int $I11, self, rx183_curclass, "$!from"
    ne $I11, -1, rxscan184_done535
    goto rxscan184_scan534
  rxscan184_loop533:
    inc rx183_pos
    gt rx183_pos, rx183_eos, rx183_fail529
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!from", rx183_pos
  rxscan184_scan534:
    nqp_rxmark rx183_bstack, rxscan184_loop533, rx183_pos, 0
  rxscan184_done535:
    ge rx183_pos, rx183_eos, rx183_fail529
    substr $S11, rx183_tgt, rx183_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx183_fail529
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."quote_EXPR"(":q")
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail529
    nqp_rxmark rx183_bstack, rxsubrule185_pass536, -1, 0
  rxsubrule185_pass536:
    rx183_cstack = rx183_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx183_pos, $P11, rx183_curclass, "$!pos"
    rx183_cur."!cursor_pass"(rx183_pos, "metachar:sym<'>", 'backtrack'=>1)
    .return (rx183_cur)
  rx183_restart528:
    repr_get_attr_obj rx183_cstack, rx183_cur, rx183_curclass, "$!cstack"
  rx183_fail529:
    unless rx183_bstack, rx183_done527
    pop $I19, rx183_bstack
    if_null rx183_cstack, rx183_cstack_done532
    unless rx183_cstack, rx183_cstack_done532
    dec $I19
    set $P11, rx183_cstack[$I19]
  rx183_cstack_done532:
    pop rx183_rep, rx183_bstack
    pop rx183_pos, rx183_bstack
    pop $I19, rx183_bstack
    lt rx183_pos, -1, rx183_done527
    lt rx183_pos, 0, rx183_fail529
    eq $I19, 0, rx183_fail529
    nqp_islist $I20, rx183_cstack
    unless $I20, rx183_jump530
    elements $I18, rx183_bstack
    le $I18, 0, rx183_cut531
    dec $I18
    set $I18, rx183_bstack[$I18]
  rx183_cut531:
    assign rx183_cstack, $I18
  rx183_jump530:
    jump $I19
  rx183_done527:
    rx183_cur."!cursor_fail"()
    .return (rx183_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_37_1349901746.339_caps" :subid("cuid_memo_69_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_37_1349901746.339_nfa" :subid("cuid_memo_70_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "'"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 0
    push $P5007, $P5008
    box $P5009, 0
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<\">" :subid("cuid_38_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
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
    eq $I19, 1, rx186_restart539
    gt rx186_pos, rx186_eos, rx186_fail540
    repr_get_attr_int $I11, self, rx186_curclass, "$!from"
    ne $I11, -1, rxscan187_done546
    goto rxscan187_scan545
  rxscan187_loop544:
    inc rx186_pos
    gt rx186_pos, rx186_eos, rx186_fail540
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!from", rx186_pos
  rxscan187_scan545:
    nqp_rxmark rx186_bstack, rxscan187_loop544, rx186_pos, 0
  rxscan187_done546:
    ge rx186_pos, rx186_eos, rx186_fail540
    substr $S11, rx186_tgt, rx186_pos, 1
    index $I11, ucs4:"\"", $S11
    lt $I11, 0, rx186_fail540
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."quote_EXPR"(":qq")
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail540
    nqp_rxmark rx186_bstack, rxsubrule188_pass547, -1, 0
  rxsubrule188_pass547:
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    rx186_cur."!cursor_pass"(rx186_pos, "metachar:sym<\">", 'backtrack'=>1)
    .return (rx186_cur)
  rx186_restart539:
    repr_get_attr_obj rx186_cstack, rx186_cur, rx186_curclass, "$!cstack"
  rx186_fail540:
    unless rx186_bstack, rx186_done538
    pop $I19, rx186_bstack
    if_null rx186_cstack, rx186_cstack_done543
    unless rx186_cstack, rx186_cstack_done543
    dec $I19
    set $P11, rx186_cstack[$I19]
  rx186_cstack_done543:
    pop rx186_rep, rx186_bstack
    pop rx186_pos, rx186_bstack
    pop $I19, rx186_bstack
    lt rx186_pos, -1, rx186_done538
    lt rx186_pos, 0, rx186_fail540
    eq $I19, 0, rx186_fail540
    nqp_islist $I20, rx186_cstack
    unless $I20, rx186_jump541
    elements $I18, rx186_bstack
    le $I18, 0, rx186_cut542
    dec $I18
    set $I18, rx186_bstack[$I18]
  rx186_cut542:
    assign rx186_cstack, $I18
  rx186_jump541:
    jump $I19
  rx186_done538:
    rx186_cur."!cursor_fail"()
    .return (rx186_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1349901746.339_caps" :subid("cuid_memo_71_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1349901746.339_nfa" :subid("cuid_memo_72_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "\""
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 0
    push $P5007, $P5008
    box $P5009, 0
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<.>" :subid("cuid_39_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    .local pmc rx189_curclass
    .local pmc rx189_bstack
    .local pmc rx189_cstack
    (rx189_cur, rx189_tgt, rx189_pos, rx189_curclass, rx189_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx189_cur
    length rx189_eos, rx189_tgt
    eq $I19, 1, rx189_restart550
    gt rx189_pos, rx189_eos, rx189_fail551
    repr_get_attr_int $I11, self, rx189_curclass, "$!from"
    ne $I11, -1, rxscan190_done557
    goto rxscan190_scan556
  rxscan190_loop555:
    inc rx189_pos
    gt rx189_pos, rx189_eos, rx189_fail551
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!from", rx189_pos
  rxscan190_scan556:
    nqp_rxmark rx189_bstack, rxscan190_loop555, rx189_pos, 0
  rxscan190_done557:
    nqp_rxmark rx189_bstack, rxcap191_fail559, rx189_pos, 0
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail551
    substr $S10, rx189_tgt, rx189_pos, 1
    ne $S10, ucs4:".", rx189_fail551
    add rx189_pos, 1
    nqp_rxpeek $I19, rx189_bstack, rxcap191_fail559
    inc $I19
    set $I11, rx189_bstack[$I19]
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx189_pos)
    rx189_cstack = rx189_cur."!cursor_capture"($P11, "sym")
    goto rxcap191_done558
  rxcap191_fail559:
    goto rx189_fail551
  rxcap191_done558:
    rx189_cur."!cursor_pass"(rx189_pos, "metachar:sym<.>", 'backtrack'=>1)
    .return (rx189_cur)
  rx189_restart550:
    repr_get_attr_obj rx189_cstack, rx189_cur, rx189_curclass, "$!cstack"
  rx189_fail551:
    unless rx189_bstack, rx189_done549
    pop $I19, rx189_bstack
    if_null rx189_cstack, rx189_cstack_done554
    unless rx189_cstack, rx189_cstack_done554
    dec $I19
    set $P11, rx189_cstack[$I19]
  rx189_cstack_done554:
    pop rx189_rep, rx189_bstack
    pop rx189_pos, rx189_bstack
    pop $I19, rx189_bstack
    lt rx189_pos, -1, rx189_done549
    lt rx189_pos, 0, rx189_fail551
    eq $I19, 0, rx189_fail551
    nqp_islist $I20, rx189_cstack
    unless $I20, rx189_jump552
    elements $I18, rx189_bstack
    le $I18, 0, rx189_cut553
    dec $I18
    set $I18, rx189_bstack[$I18]
  rx189_cut553:
    assign rx189_cstack, $I18
  rx189_jump552:
    jump $I19
  rx189_done549:
    rx189_cur."!cursor_fail"()
    .return (rx189_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1349901746.339_caps" :subid("cuid_memo_73_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1349901746.339_nfa" :subid("cuid_memo_74_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 46
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^>" :subid("cuid_40_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 127
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx192_tgt
    .local int rx192_pos
    .local int rx192_off
    .local int rx192_eos
    .local int rx192_rep
    .local pmc rx192_cur
    .local pmc rx192_curclass
    .local pmc rx192_bstack
    .local pmc rx192_cstack
    (rx192_cur, rx192_tgt, rx192_pos, rx192_curclass, rx192_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx192_cur
    length rx192_eos, rx192_tgt
    eq $I19, 1, rx192_restart562
    gt rx192_pos, rx192_eos, rx192_fail563
    repr_get_attr_int $I11, self, rx192_curclass, "$!from"
    ne $I11, -1, rxscan193_done569
    goto rxscan193_scan568
  rxscan193_loop567:
    inc rx192_pos
    gt rx192_pos, rx192_eos, rx192_fail563
    repr_bind_attr_int rx192_cur, rx192_curclass, "$!from", rx192_pos
  rxscan193_scan568:
    nqp_rxmark rx192_bstack, rxscan193_loop567, rx192_pos, 0
  rxscan193_done569:
    nqp_rxmark rx192_bstack, rxcap194_fail571, rx192_pos, 0
    add $I11, rx192_pos, 1
    gt $I11, rx192_eos, rx192_fail563
    substr $S10, rx192_tgt, rx192_pos, 1
    ne $S10, ucs4:"^", rx192_fail563
    add rx192_pos, 1
    nqp_rxpeek $I19, rx192_bstack, rxcap194_fail571
    inc $I19
    set $I11, rx192_bstack[$I19]
    repr_bind_attr_int rx192_cur, rx192_curclass, "$!pos", rx192_pos
    $P11 = rx192_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx192_pos)
    rx192_cstack = rx192_cur."!cursor_capture"($P11, "sym")
    goto rxcap194_done570
  rxcap194_fail571:
    goto rx192_fail563
  rxcap194_done570:
    rx192_cur."!cursor_pass"(rx192_pos, "metachar:sym<^>", 'backtrack'=>1)
    .return (rx192_cur)
  rx192_restart562:
    repr_get_attr_obj rx192_cstack, rx192_cur, rx192_curclass, "$!cstack"
  rx192_fail563:
    unless rx192_bstack, rx192_done561
    pop $I19, rx192_bstack
    if_null rx192_cstack, rx192_cstack_done566
    unless rx192_cstack, rx192_cstack_done566
    dec $I19
    set $P11, rx192_cstack[$I19]
  rx192_cstack_done566:
    pop rx192_rep, rx192_bstack
    pop rx192_pos, rx192_bstack
    pop $I19, rx192_bstack
    lt rx192_pos, -1, rx192_done561
    lt rx192_pos, 0, rx192_fail563
    eq $I19, 0, rx192_fail563
    nqp_islist $I20, rx192_cstack
    unless $I20, rx192_jump564
    elements $I18, rx192_bstack
    le $I18, 0, rx192_cut565
    dec $I18
    set $I18, rx192_bstack[$I18]
  rx192_cut565:
    assign rx192_cstack, $I18
  rx192_jump564:
    jump $I19
  rx192_done561:
    rx192_cur."!cursor_fail"()
    .return (rx192_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_40_1349901746.339_caps" :subid("cuid_memo_75_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_40_1349901746.339_nfa" :subid("cuid_memo_76_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 94
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^^>" :subid("cuid_41_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 128
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_curclass
    .local pmc rx195_bstack
    .local pmc rx195_cstack
    (rx195_cur, rx195_tgt, rx195_pos, rx195_curclass, rx195_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx195_cur
    length rx195_eos, rx195_tgt
    eq $I19, 1, rx195_restart574
    gt rx195_pos, rx195_eos, rx195_fail575
    repr_get_attr_int $I11, self, rx195_curclass, "$!from"
    ne $I11, -1, rxscan196_done581
    goto rxscan196_scan580
  rxscan196_loop579:
    inc rx195_pos
    gt rx195_pos, rx195_eos, rx195_fail575
    repr_bind_attr_int rx195_cur, rx195_curclass, "$!from", rx195_pos
  rxscan196_scan580:
    nqp_rxmark rx195_bstack, rxscan196_loop579, rx195_pos, 0
  rxscan196_done581:
    nqp_rxmark rx195_bstack, rxcap197_fail583, rx195_pos, 0
    add $I11, rx195_pos, 2
    gt $I11, rx195_eos, rx195_fail575
    substr $S10, rx195_tgt, rx195_pos, 2
    ne $S10, ucs4:"^^", rx195_fail575
    add rx195_pos, 2
    nqp_rxpeek $I19, rx195_bstack, rxcap197_fail583
    inc $I19
    set $I11, rx195_bstack[$I19]
    repr_bind_attr_int rx195_cur, rx195_curclass, "$!pos", rx195_pos
    $P11 = rx195_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx195_pos)
    rx195_cstack = rx195_cur."!cursor_capture"($P11, "sym")
    goto rxcap197_done582
  rxcap197_fail583:
    goto rx195_fail575
  rxcap197_done582:
    rx195_cur."!cursor_pass"(rx195_pos, "metachar:sym<^^>", 'backtrack'=>1)
    .return (rx195_cur)
  rx195_restart574:
    repr_get_attr_obj rx195_cstack, rx195_cur, rx195_curclass, "$!cstack"
  rx195_fail575:
    unless rx195_bstack, rx195_done573
    pop $I19, rx195_bstack
    if_null rx195_cstack, rx195_cstack_done578
    unless rx195_cstack, rx195_cstack_done578
    dec $I19
    set $P11, rx195_cstack[$I19]
  rx195_cstack_done578:
    pop rx195_rep, rx195_bstack
    pop rx195_pos, rx195_bstack
    pop $I19, rx195_bstack
    lt rx195_pos, -1, rx195_done573
    lt rx195_pos, 0, rx195_fail575
    eq $I19, 0, rx195_fail575
    nqp_islist $I20, rx195_cstack
    unless $I20, rx195_jump576
    elements $I18, rx195_bstack
    le $I18, 0, rx195_cut577
    dec $I18
    set $I18, rx195_bstack[$I18]
  rx195_cut577:
    assign rx195_cstack, $I18
  rx195_jump576:
    jump $I19
  rx195_done573:
    rx195_cur."!cursor_fail"()
    .return (rx195_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_41_1349901746.339_caps" :subid("cuid_memo_77_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_41_1349901746.339_nfa" :subid("cuid_memo_78_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 94
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 94
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$>" :subid("cuid_42_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 129
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    .local pmc rx198_curclass
    .local pmc rx198_bstack
    .local pmc rx198_cstack
    (rx198_cur, rx198_tgt, rx198_pos, rx198_curclass, rx198_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx198_cur
    length rx198_eos, rx198_tgt
    eq $I19, 1, rx198_restart586
    gt rx198_pos, rx198_eos, rx198_fail587
    repr_get_attr_int $I11, self, rx198_curclass, "$!from"
    ne $I11, -1, rxscan199_done593
    goto rxscan199_scan592
  rxscan199_loop591:
    inc rx198_pos
    gt rx198_pos, rx198_eos, rx198_fail587
    repr_bind_attr_int rx198_cur, rx198_curclass, "$!from", rx198_pos
  rxscan199_scan592:
    nqp_rxmark rx198_bstack, rxscan199_loop591, rx198_pos, 0
  rxscan199_done593:
    nqp_rxmark rx198_bstack, rxcap200_fail595, rx198_pos, 0
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail587
    substr $S10, rx198_tgt, rx198_pos, 1
    ne $S10, ucs4:"$", rx198_fail587
    add rx198_pos, 1
    nqp_rxpeek $I19, rx198_bstack, rxcap200_fail595
    inc $I19
    set $I11, rx198_bstack[$I19]
    repr_bind_attr_int rx198_cur, rx198_curclass, "$!pos", rx198_pos
    $P11 = rx198_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx198_pos)
    rx198_cstack = rx198_cur."!cursor_capture"($P11, "sym")
    goto rxcap200_done594
  rxcap200_fail595:
    goto rx198_fail587
  rxcap200_done594:
    rx198_cur."!cursor_pass"(rx198_pos, "metachar:sym<$>", 'backtrack'=>1)
    .return (rx198_cur)
  rx198_restart586:
    repr_get_attr_obj rx198_cstack, rx198_cur, rx198_curclass, "$!cstack"
  rx198_fail587:
    unless rx198_bstack, rx198_done585
    pop $I19, rx198_bstack
    if_null rx198_cstack, rx198_cstack_done590
    unless rx198_cstack, rx198_cstack_done590
    dec $I19
    set $P11, rx198_cstack[$I19]
  rx198_cstack_done590:
    pop rx198_rep, rx198_bstack
    pop rx198_pos, rx198_bstack
    pop $I19, rx198_bstack
    lt rx198_pos, -1, rx198_done585
    lt rx198_pos, 0, rx198_fail587
    eq $I19, 0, rx198_fail587
    nqp_islist $I20, rx198_cstack
    unless $I20, rx198_jump588
    elements $I18, rx198_bstack
    le $I18, 0, rx198_cut589
    dec $I18
    set $I18, rx198_bstack[$I18]
  rx198_cut589:
    assign rx198_cstack, $I18
  rx198_jump588:
    jump $I19
  rx198_done585:
    rx198_cur."!cursor_fail"()
    .return (rx198_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_42_1349901746.339_caps" :subid("cuid_memo_79_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_42_1349901746.339_nfa" :subid("cuid_memo_80_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 36
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$$>" :subid("cuid_43_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 130
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx201_tgt
    .local int rx201_pos
    .local int rx201_off
    .local int rx201_eos
    .local int rx201_rep
    .local pmc rx201_cur
    .local pmc rx201_curclass
    .local pmc rx201_bstack
    .local pmc rx201_cstack
    (rx201_cur, rx201_tgt, rx201_pos, rx201_curclass, rx201_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx201_cur
    length rx201_eos, rx201_tgt
    eq $I19, 1, rx201_restart598
    gt rx201_pos, rx201_eos, rx201_fail599
    repr_get_attr_int $I11, self, rx201_curclass, "$!from"
    ne $I11, -1, rxscan202_done605
    goto rxscan202_scan604
  rxscan202_loop603:
    inc rx201_pos
    gt rx201_pos, rx201_eos, rx201_fail599
    repr_bind_attr_int rx201_cur, rx201_curclass, "$!from", rx201_pos
  rxscan202_scan604:
    nqp_rxmark rx201_bstack, rxscan202_loop603, rx201_pos, 0
  rxscan202_done605:
    nqp_rxmark rx201_bstack, rxcap203_fail607, rx201_pos, 0
    add $I11, rx201_pos, 2
    gt $I11, rx201_eos, rx201_fail599
    substr $S10, rx201_tgt, rx201_pos, 2
    ne $S10, ucs4:"$$", rx201_fail599
    add rx201_pos, 2
    nqp_rxpeek $I19, rx201_bstack, rxcap203_fail607
    inc $I19
    set $I11, rx201_bstack[$I19]
    repr_bind_attr_int rx201_cur, rx201_curclass, "$!pos", rx201_pos
    $P11 = rx201_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx201_pos)
    rx201_cstack = rx201_cur."!cursor_capture"($P11, "sym")
    goto rxcap203_done606
  rxcap203_fail607:
    goto rx201_fail599
  rxcap203_done606:
    rx201_cur."!cursor_pass"(rx201_pos, "metachar:sym<$$>", 'backtrack'=>1)
    .return (rx201_cur)
  rx201_restart598:
    repr_get_attr_obj rx201_cstack, rx201_cur, rx201_curclass, "$!cstack"
  rx201_fail599:
    unless rx201_bstack, rx201_done597
    pop $I19, rx201_bstack
    if_null rx201_cstack, rx201_cstack_done602
    unless rx201_cstack, rx201_cstack_done602
    dec $I19
    set $P11, rx201_cstack[$I19]
  rx201_cstack_done602:
    pop rx201_rep, rx201_bstack
    pop rx201_pos, rx201_bstack
    pop $I19, rx201_bstack
    lt rx201_pos, -1, rx201_done597
    lt rx201_pos, 0, rx201_fail599
    eq $I19, 0, rx201_fail599
    nqp_islist $I20, rx201_cstack
    unless $I20, rx201_jump600
    elements $I18, rx201_bstack
    le $I18, 0, rx201_cut601
    dec $I18
    set $I18, rx201_bstack[$I18]
  rx201_cut601:
    assign rx201_cstack, $I18
  rx201_jump600:
    jump $I19
  rx201_done597:
    rx201_cur."!cursor_fail"()
    .return (rx201_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_43_1349901746.339_caps" :subid("cuid_memo_81_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_43_1349901746.339_nfa" :subid("cuid_memo_82_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 36
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 36
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<:::>" :subid("cuid_44_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 131
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    .local pmc rx204_curclass
    .local pmc rx204_bstack
    .local pmc rx204_cstack
    (rx204_cur, rx204_tgt, rx204_pos, rx204_curclass, rx204_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx204_cur
    length rx204_eos, rx204_tgt
    eq $I19, 1, rx204_restart610
    gt rx204_pos, rx204_eos, rx204_fail611
    repr_get_attr_int $I11, self, rx204_curclass, "$!from"
    ne $I11, -1, rxscan205_done617
    goto rxscan205_scan616
  rxscan205_loop615:
    inc rx204_pos
    gt rx204_pos, rx204_eos, rx204_fail611
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!from", rx204_pos
  rxscan205_scan616:
    nqp_rxmark rx204_bstack, rxscan205_loop615, rx204_pos, 0
  rxscan205_done617:
    nqp_rxmark rx204_bstack, rxcap206_fail619, rx204_pos, 0
    add $I11, rx204_pos, 3
    gt $I11, rx204_eos, rx204_fail611
    substr $S10, rx204_tgt, rx204_pos, 3
    ne $S10, ucs4:":::", rx204_fail611
    add rx204_pos, 3
    nqp_rxpeek $I19, rx204_bstack, rxcap206_fail619
    inc $I19
    set $I11, rx204_bstack[$I19]
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!pos", rx204_pos
    $P11 = rx204_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx204_pos)
    rx204_cstack = rx204_cur."!cursor_capture"($P11, "sym")
    goto rxcap206_done618
  rxcap206_fail619:
    goto rx204_fail611
  rxcap206_done618:
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!pos", rx204_pos
    $P11 = rx204_cur."panic"("::: not yet implemented")
    repr_get_attr_int $I11, $P11, rx204_curclass, "$!pos"
    lt $I11, 0, rx204_fail611
    repr_get_attr_int rx204_pos, $P11, rx204_curclass, "$!pos"
    rx204_cur."!cursor_pass"(rx204_pos, "metachar:sym<:::>", 'backtrack'=>1)
    .return (rx204_cur)
  rx204_restart610:
    repr_get_attr_obj rx204_cstack, rx204_cur, rx204_curclass, "$!cstack"
  rx204_fail611:
    unless rx204_bstack, rx204_done609
    pop $I19, rx204_bstack
    if_null rx204_cstack, rx204_cstack_done614
    unless rx204_cstack, rx204_cstack_done614
    dec $I19
    set $P11, rx204_cstack[$I19]
  rx204_cstack_done614:
    pop rx204_rep, rx204_bstack
    pop rx204_pos, rx204_bstack
    pop $I19, rx204_bstack
    lt rx204_pos, -1, rx204_done609
    lt rx204_pos, 0, rx204_fail611
    eq $I19, 0, rx204_fail611
    nqp_islist $I20, rx204_cstack
    unless $I20, rx204_jump612
    elements $I18, rx204_bstack
    le $I18, 0, rx204_cut613
    dec $I18
    set $I18, rx204_bstack[$I18]
  rx204_cut613:
    assign rx204_cstack, $I18
  rx204_jump612:
    jump $I19
  rx204_done609:
    rx204_cur."!cursor_fail"()
    .return (rx204_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_44_1349901746.339_caps" :subid("cuid_memo_83_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_44_1349901746.339_nfa" :subid("cuid_memo_84_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 58
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 58
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 2
    push $P5011, $P5012
    box $P5013, 58
    push $P5011, $P5013
    box $P5014, 4
    push $P5011, $P5014
    push $P5001, $P5011
    new $P5015, 'ResizablePMCArray'
    box $P5016, 8
    push $P5015, $P5016
    box $P5017, "panic"
    push $P5015, $P5017
    box $P5018, 0
    push $P5015, $P5018
    push $P5001, $P5015
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<::>" :subid("cuid_45_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 132
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    .local pmc rx208_curclass
    .local pmc rx208_bstack
    .local pmc rx208_cstack
    (rx208_cur, rx208_tgt, rx208_pos, rx208_curclass, rx208_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    eq $I19, 1, rx208_restart623
    gt rx208_pos, rx208_eos, rx208_fail624
    repr_get_attr_int $I11, self, rx208_curclass, "$!from"
    ne $I11, -1, rxscan209_done630
    goto rxscan209_scan629
  rxscan209_loop628:
    inc rx208_pos
    gt rx208_pos, rx208_eos, rx208_fail624
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!from", rx208_pos
  rxscan209_scan629:
    nqp_rxmark rx208_bstack, rxscan209_loop628, rx208_pos, 0
  rxscan209_done630:
    nqp_rxmark rx208_bstack, rxcap210_fail632, rx208_pos, 0
    add $I11, rx208_pos, 2
    gt $I11, rx208_eos, rx208_fail624
    substr $S10, rx208_tgt, rx208_pos, 2
    ne $S10, ucs4:"::", rx208_fail624
    add rx208_pos, 2
    nqp_rxpeek $I19, rx208_bstack, rxcap210_fail632
    inc $I19
    set $I11, rx208_bstack[$I19]
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    $P11 = rx208_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx208_pos)
    rx208_cstack = rx208_cur."!cursor_capture"($P11, "sym")
    goto rxcap210_done631
  rxcap210_fail632:
    goto rx208_fail624
  rxcap210_done631:
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    $P11 = rx208_cur."panic"(":: not yet implemented")
    repr_get_attr_int $I11, $P11, rx208_curclass, "$!pos"
    lt $I11, 0, rx208_fail624
    repr_get_attr_int rx208_pos, $P11, rx208_curclass, "$!pos"
    rx208_cur."!cursor_pass"(rx208_pos, "metachar:sym<::>", 'backtrack'=>1)
    .return (rx208_cur)
  rx208_restart623:
    repr_get_attr_obj rx208_cstack, rx208_cur, rx208_curclass, "$!cstack"
  rx208_fail624:
    unless rx208_bstack, rx208_done622
    pop $I19, rx208_bstack
    if_null rx208_cstack, rx208_cstack_done627
    unless rx208_cstack, rx208_cstack_done627
    dec $I19
    set $P11, rx208_cstack[$I19]
  rx208_cstack_done627:
    pop rx208_rep, rx208_bstack
    pop rx208_pos, rx208_bstack
    pop $I19, rx208_bstack
    lt rx208_pos, -1, rx208_done622
    lt rx208_pos, 0, rx208_fail624
    eq $I19, 0, rx208_fail624
    nqp_islist $I20, rx208_cstack
    unless $I20, rx208_jump625
    elements $I18, rx208_bstack
    le $I18, 0, rx208_cut626
    dec $I18
    set $I18, rx208_bstack[$I18]
  rx208_cut626:
    assign rx208_cstack, $I18
  rx208_jump625:
    jump $I19
  rx208_done622:
    rx208_cur."!cursor_fail"()
    .return (rx208_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_45_1349901746.339_caps" :subid("cuid_memo_85_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_45_1349901746.339_nfa" :subid("cuid_memo_86_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 58
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 58
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 8
    push $P5011, $P5012
    box $P5013, "panic"
    push $P5011, $P5013
    box $P5014, 0
    push $P5011, $P5014
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<lwb>" :subid("cuid_46_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 133
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx212_tgt
    .local int rx212_pos
    .local int rx212_off
    .local int rx212_eos
    .local int rx212_rep
    .local pmc rx212_cur
    .local pmc rx212_curclass
    .local pmc rx212_bstack
    .local pmc rx212_cstack
    (rx212_cur, rx212_tgt, rx212_pos, rx212_curclass, rx212_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx212_cur
    length rx212_eos, rx212_tgt
    eq $I19, 1, rx212_restart636
    gt rx212_pos, rx212_eos, rx212_fail637
    repr_get_attr_int $I11, self, rx212_curclass, "$!from"
    ne $I11, -1, rxscan213_done643
    goto rxscan213_scan642
  rxscan213_loop641:
    inc rx212_pos
    gt rx212_pos, rx212_eos, rx212_fail637
    repr_bind_attr_int rx212_cur, rx212_curclass, "$!from", rx212_pos
  rxscan213_scan642:
    nqp_rxmark rx212_bstack, rxscan213_loop641, rx212_pos, 0
  rxscan213_done643:
    nqp_rxmark rx212_bstack, rxcap214_fail645, rx212_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt215_0647
    nqp_push_label $P11, alt215_1648
    nqp_rxmark rx212_bstack, alt215_end646, -1, 0
    rx212_cur."!alt"(rx212_pos, "alt_nfa__8_1349901746.819", $P11)
    goto rx212_fail637
  alt215_0647:
    add $I11, rx212_pos, 2
    gt $I11, rx212_eos, rx212_fail637
    substr $S10, rx212_tgt, rx212_pos, 2
    ne $S10, ucs4:"<<", rx212_fail637
    add rx212_pos, 2
    goto alt215_end646
  alt215_1648:
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail637
    substr $S10, rx212_tgt, rx212_pos, 1
    ne $S10, ucs4:"\x{ab}", rx212_fail637
    add rx212_pos, 1
    goto alt215_end646
  alt215_end646:
    nqp_rxcommit rx212_bstack, alt215_end646
    nqp_rxpeek $I19, rx212_bstack, rxcap214_fail645
    inc $I19
    set $I11, rx212_bstack[$I19]
    repr_bind_attr_int rx212_cur, rx212_curclass, "$!pos", rx212_pos
    $P11 = rx212_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx212_pos)
    rx212_cstack = rx212_cur."!cursor_capture"($P11, "sym")
    goto rxcap214_done644
  rxcap214_fail645:
    goto rx212_fail637
  rxcap214_done644:
    rx212_cur."!cursor_pass"(rx212_pos, "metachar:sym<lwb>", 'backtrack'=>1)
    .return (rx212_cur)
  rx212_restart636:
    repr_get_attr_obj rx212_cstack, rx212_cur, rx212_curclass, "$!cstack"
  rx212_fail637:
    unless rx212_bstack, rx212_done635
    pop $I19, rx212_bstack
    if_null rx212_cstack, rx212_cstack_done640
    unless rx212_cstack, rx212_cstack_done640
    dec $I19
    set $P11, rx212_cstack[$I19]
  rx212_cstack_done640:
    pop rx212_rep, rx212_bstack
    pop rx212_pos, rx212_bstack
    pop $I19, rx212_bstack
    lt rx212_pos, -1, rx212_done635
    lt rx212_pos, 0, rx212_fail637
    eq $I19, 0, rx212_fail637
    nqp_islist $I20, rx212_cstack
    unless $I20, rx212_jump638
    elements $I18, rx212_bstack
    le $I18, 0, rx212_cut639
    dec $I18
    set $I18, rx212_bstack[$I18]
  rx212_cut639:
    assign rx212_cstack, $I18
  rx212_jump638:
    jump $I19
  rx212_done635:
    rx212_cur."!cursor_fail"()
    .return (rx212_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1349901746.339_caps" :subid("cuid_memo_87_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1349901746.339_nfa" :subid("cuid_memo_88_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 60
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 171
    push $P5003, $P5008
    box $P5009, 0
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 60
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5001, $P5010
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1349901746.339_alt_nfa__8_1349901746.819" :subid("cuid_memo_89_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 60
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 2
    push $P5008, $P5009
    box $P5010, 60
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 171
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5012, $P5014
    push $P5001, $P5012
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<rwb>" :subid("cuid_47_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 134
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx216_tgt
    .local int rx216_pos
    .local int rx216_off
    .local int rx216_eos
    .local int rx216_rep
    .local pmc rx216_cur
    .local pmc rx216_curclass
    .local pmc rx216_bstack
    .local pmc rx216_cstack
    (rx216_cur, rx216_tgt, rx216_pos, rx216_curclass, rx216_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx216_cur
    length rx216_eos, rx216_tgt
    eq $I19, 1, rx216_restart651
    gt rx216_pos, rx216_eos, rx216_fail652
    repr_get_attr_int $I11, self, rx216_curclass, "$!from"
    ne $I11, -1, rxscan217_done658
    goto rxscan217_scan657
  rxscan217_loop656:
    inc rx216_pos
    gt rx216_pos, rx216_eos, rx216_fail652
    repr_bind_attr_int rx216_cur, rx216_curclass, "$!from", rx216_pos
  rxscan217_scan657:
    nqp_rxmark rx216_bstack, rxscan217_loop656, rx216_pos, 0
  rxscan217_done658:
    nqp_rxmark rx216_bstack, rxcap218_fail660, rx216_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt219_0662
    nqp_push_label $P11, alt219_1663
    nqp_rxmark rx216_bstack, alt219_end661, -1, 0
    rx216_cur."!alt"(rx216_pos, "alt_nfa__9_1349901746.826", $P11)
    goto rx216_fail652
  alt219_0662:
    add $I11, rx216_pos, 2
    gt $I11, rx216_eos, rx216_fail652
    substr $S10, rx216_tgt, rx216_pos, 2
    ne $S10, ucs4:">>", rx216_fail652
    add rx216_pos, 2
    goto alt219_end661
  alt219_1663:
    add $I11, rx216_pos, 1
    gt $I11, rx216_eos, rx216_fail652
    substr $S10, rx216_tgt, rx216_pos, 1
    ne $S10, ucs4:"\x{bb}", rx216_fail652
    add rx216_pos, 1
    goto alt219_end661
  alt219_end661:
    nqp_rxcommit rx216_bstack, alt219_end661
    nqp_rxpeek $I19, rx216_bstack, rxcap218_fail660
    inc $I19
    set $I11, rx216_bstack[$I19]
    repr_bind_attr_int rx216_cur, rx216_curclass, "$!pos", rx216_pos
    $P11 = rx216_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx216_pos)
    rx216_cstack = rx216_cur."!cursor_capture"($P11, "sym")
    goto rxcap218_done659
  rxcap218_fail660:
    goto rx216_fail652
  rxcap218_done659:
    rx216_cur."!cursor_pass"(rx216_pos, "metachar:sym<rwb>", 'backtrack'=>1)
    .return (rx216_cur)
  rx216_restart651:
    repr_get_attr_obj rx216_cstack, rx216_cur, rx216_curclass, "$!cstack"
  rx216_fail652:
    unless rx216_bstack, rx216_done650
    pop $I19, rx216_bstack
    if_null rx216_cstack, rx216_cstack_done655
    unless rx216_cstack, rx216_cstack_done655
    dec $I19
    set $P11, rx216_cstack[$I19]
  rx216_cstack_done655:
    pop rx216_rep, rx216_bstack
    pop rx216_pos, rx216_bstack
    pop $I19, rx216_bstack
    lt rx216_pos, -1, rx216_done650
    lt rx216_pos, 0, rx216_fail652
    eq $I19, 0, rx216_fail652
    nqp_islist $I20, rx216_cstack
    unless $I20, rx216_jump653
    elements $I18, rx216_bstack
    le $I18, 0, rx216_cut654
    dec $I18
    set $I18, rx216_bstack[$I18]
  rx216_cut654:
    assign rx216_cstack, $I18
  rx216_jump653:
    jump $I19
  rx216_done650:
    rx216_cur."!cursor_fail"()
    .return (rx216_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1349901746.339_caps" :subid("cuid_memo_90_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1349901746.339_nfa" :subid("cuid_memo_91_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 62
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 187
    push $P5003, $P5008
    box $P5009, 0
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 62
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5001, $P5010
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1349901746.339_alt_nfa__9_1349901746.826" :subid("cuid_memo_92_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 62
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 2
    push $P5008, $P5009
    box $P5010, 62
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 187
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5012, $P5014
    push $P5001, $P5012
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<from>" :subid("cuid_48_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 135
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    .local pmc rx220_curclass
    .local pmc rx220_bstack
    .local pmc rx220_cstack
    (rx220_cur, rx220_tgt, rx220_pos, rx220_curclass, rx220_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx220_cur
    length rx220_eos, rx220_tgt
    eq $I19, 1, rx220_restart666
    gt rx220_pos, rx220_eos, rx220_fail667
    repr_get_attr_int $I11, self, rx220_curclass, "$!from"
    ne $I11, -1, rxscan221_done673
    goto rxscan221_scan672
  rxscan221_loop671:
    inc rx220_pos
    gt rx220_pos, rx220_eos, rx220_fail667
    repr_bind_attr_int rx220_cur, rx220_curclass, "$!from", rx220_pos
  rxscan221_scan672:
    nqp_rxmark rx220_bstack, rxscan221_loop671, rx220_pos, 0
  rxscan221_done673:
    add $I11, rx220_pos, 2
    gt $I11, rx220_eos, rx220_fail667
    substr $S10, rx220_tgt, rx220_pos, 2
    ne $S10, ucs4:"<(", rx220_fail667
    add rx220_pos, 2
    rx220_cur."!cursor_pass"(rx220_pos, "metachar:sym<from>", 'backtrack'=>1)
    .return (rx220_cur)
  rx220_restart666:
    repr_get_attr_obj rx220_cstack, rx220_cur, rx220_curclass, "$!cstack"
  rx220_fail667:
    unless rx220_bstack, rx220_done665
    pop $I19, rx220_bstack
    if_null rx220_cstack, rx220_cstack_done670
    unless rx220_cstack, rx220_cstack_done670
    dec $I19
    set $P11, rx220_cstack[$I19]
  rx220_cstack_done670:
    pop rx220_rep, rx220_bstack
    pop rx220_pos, rx220_bstack
    pop $I19, rx220_bstack
    lt rx220_pos, -1, rx220_done665
    lt rx220_pos, 0, rx220_fail667
    eq $I19, 0, rx220_fail667
    nqp_islist $I20, rx220_cstack
    unless $I20, rx220_jump668
    elements $I18, rx220_bstack
    le $I18, 0, rx220_cut669
    dec $I18
    set $I18, rx220_bstack[$I18]
  rx220_cut669:
    assign rx220_cstack, $I18
  rx220_jump668:
    jump $I19
  rx220_done665:
    rx220_cur."!cursor_fail"()
    .return (rx220_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_48_1349901746.339_caps" :subid("cuid_memo_93_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_48_1349901746.339_nfa" :subid("cuid_memo_94_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 60
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 40
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<to>" :subid("cuid_49_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 136
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
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
    eq $I19, 1, rx222_restart676
    gt rx222_pos, rx222_eos, rx222_fail677
    repr_get_attr_int $I11, self, rx222_curclass, "$!from"
    ne $I11, -1, rxscan223_done683
    goto rxscan223_scan682
  rxscan223_loop681:
    inc rx222_pos
    gt rx222_pos, rx222_eos, rx222_fail677
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!from", rx222_pos
  rxscan223_scan682:
    nqp_rxmark rx222_bstack, rxscan223_loop681, rx222_pos, 0
  rxscan223_done683:
    add $I11, rx222_pos, 2
    gt $I11, rx222_eos, rx222_fail677
    substr $S10, rx222_tgt, rx222_pos, 2
    ne $S10, ucs4:")>", rx222_fail677
    add rx222_pos, 2
    rx222_cur."!cursor_pass"(rx222_pos, "metachar:sym<to>", 'backtrack'=>1)
    .return (rx222_cur)
  rx222_restart676:
    repr_get_attr_obj rx222_cstack, rx222_cur, rx222_curclass, "$!cstack"
  rx222_fail677:
    unless rx222_bstack, rx222_done675
    pop $I19, rx222_bstack
    if_null rx222_cstack, rx222_cstack_done680
    unless rx222_cstack, rx222_cstack_done680
    dec $I19
    set $P11, rx222_cstack[$I19]
  rx222_cstack_done680:
    pop rx222_rep, rx222_bstack
    pop rx222_pos, rx222_bstack
    pop $I19, rx222_bstack
    lt rx222_pos, -1, rx222_done675
    lt rx222_pos, 0, rx222_fail677
    eq $I19, 0, rx222_fail677
    nqp_islist $I20, rx222_cstack
    unless $I20, rx222_jump678
    elements $I18, rx222_bstack
    le $I18, 0, rx222_cut679
    dec $I18
    set $I18, rx222_bstack[$I18]
  rx222_cut679:
    assign rx222_cstack, $I18
  rx222_jump678:
    jump $I19
  rx222_done675:
    rx222_cur."!cursor_fail"()
    .return (rx222_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_49_1349901746.339_caps" :subid("cuid_memo_95_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_49_1349901746.339_nfa" :subid("cuid_memo_96_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 41
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 62
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<bs>" :subid("cuid_50_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 137
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    .local pmc rx224_curclass
    .local pmc rx224_bstack
    .local pmc rx224_cstack
    (rx224_cur, rx224_tgt, rx224_pos, rx224_curclass, rx224_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx224_cur
    length rx224_eos, rx224_tgt
    eq $I19, 1, rx224_restart686
    gt rx224_pos, rx224_eos, rx224_fail687
    repr_get_attr_int $I11, self, rx224_curclass, "$!from"
    ne $I11, -1, rxscan225_done693
    goto rxscan225_scan692
  rxscan225_loop691:
    inc rx224_pos
    gt rx224_pos, rx224_eos, rx224_fail687
    repr_bind_attr_int rx224_cur, rx224_curclass, "$!from", rx224_pos
  rxscan225_scan692:
    nqp_rxmark rx224_bstack, rxscan225_loop691, rx224_pos, 0
  rxscan225_done693:
    add $I11, rx224_pos, 1
    gt $I11, rx224_eos, rx224_fail687
    substr $S10, rx224_tgt, rx224_pos, 1
    ne $S10, ucs4:"\\", rx224_fail687
    add rx224_pos, 1
    repr_bind_attr_int rx224_cur, rx224_curclass, "$!pos", rx224_pos
    $P11 = rx224_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx224_curclass, "$!pos"
    lt $I11, 0, rx224_fail687
    nqp_rxmark rx224_bstack, rxsubrule226_pass694, -1, 0
  rxsubrule226_pass694:
    rx224_cstack = rx224_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx224_pos, $P11, rx224_curclass, "$!pos"
    rx224_cur."!cursor_pass"(rx224_pos, "metachar:sym<bs>", 'backtrack'=>1)
    .return (rx224_cur)
  rx224_restart686:
    repr_get_attr_obj rx224_cstack, rx224_cur, rx224_curclass, "$!cstack"
  rx224_fail687:
    unless rx224_bstack, rx224_done685
    pop $I19, rx224_bstack
    if_null rx224_cstack, rx224_cstack_done690
    unless rx224_cstack, rx224_cstack_done690
    dec $I19
    set $P11, rx224_cstack[$I19]
  rx224_cstack_done690:
    pop rx224_rep, rx224_bstack
    pop rx224_pos, rx224_bstack
    pop $I19, rx224_bstack
    lt rx224_pos, -1, rx224_done685
    lt rx224_pos, 0, rx224_fail687
    eq $I19, 0, rx224_fail687
    nqp_islist $I20, rx224_cstack
    unless $I20, rx224_jump688
    elements $I18, rx224_bstack
    le $I18, 0, rx224_cut689
    dec $I18
    set $I18, rx224_bstack[$I18]
  rx224_cut689:
    assign rx224_cstack, $I18
  rx224_jump688:
    jump $I19
  rx224_done685:
    rx224_cur."!cursor_fail"()
    .return (rx224_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_50_1349901746.339_caps" :subid("cuid_memo_97_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["backslash"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_50_1349901746.339_nfa" :subid("cuid_memo_98_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 92
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "backslash"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<mod>" :subid("cuid_51_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 138
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx227_tgt
    .local int rx227_pos
    .local int rx227_off
    .local int rx227_eos
    .local int rx227_rep
    .local pmc rx227_cur
    .local pmc rx227_curclass
    .local pmc rx227_bstack
    .local pmc rx227_cstack
    (rx227_cur, rx227_tgt, rx227_pos, rx227_curclass, rx227_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx227_cur
    length rx227_eos, rx227_tgt
    eq $I19, 1, rx227_restart697
    gt rx227_pos, rx227_eos, rx227_fail698
    repr_get_attr_int $I11, self, rx227_curclass, "$!from"
    ne $I11, -1, rxscan228_done704
    goto rxscan228_scan703
  rxscan228_loop702:
    inc rx227_pos
    gt rx227_pos, rx227_eos, rx227_fail698
    repr_bind_attr_int rx227_cur, rx227_curclass, "$!from", rx227_pos
  rxscan228_scan703:
    nqp_rxmark rx227_bstack, rxscan228_loop702, rx227_pos, 0
  rxscan228_done704:
    repr_bind_attr_int rx227_cur, rx227_curclass, "$!pos", rx227_pos
    $P11 = rx227_cur."mod_internal"()
    repr_get_attr_int $I11, $P11, rx227_curclass, "$!pos"
    lt $I11, 0, rx227_fail698
    nqp_rxmark rx227_bstack, rxsubrule229_pass705, -1, 0
  rxsubrule229_pass705:
    rx227_cstack = rx227_cur."!cursor_capture"($P11, "mod_internal")
    repr_get_attr_int rx227_pos, $P11, rx227_curclass, "$!pos"
    rx227_cur."!cursor_pass"(rx227_pos, "metachar:sym<mod>", 'backtrack'=>1)
    .return (rx227_cur)
  rx227_restart697:
    repr_get_attr_obj rx227_cstack, rx227_cur, rx227_curclass, "$!cstack"
  rx227_fail698:
    unless rx227_bstack, rx227_done696
    pop $I19, rx227_bstack
    if_null rx227_cstack, rx227_cstack_done701
    unless rx227_cstack, rx227_cstack_done701
    dec $I19
    set $P11, rx227_cstack[$I19]
  rx227_cstack_done701:
    pop rx227_rep, rx227_bstack
    pop rx227_pos, rx227_bstack
    pop $I19, rx227_bstack
    lt rx227_pos, -1, rx227_done696
    lt rx227_pos, 0, rx227_fail698
    eq $I19, 0, rx227_fail698
    nqp_islist $I20, rx227_cstack
    unless $I20, rx227_jump699
    elements $I18, rx227_bstack
    le $I18, 0, rx227_cut700
    dec $I18
    set $I18, rx227_bstack[$I18]
  rx227_cut700:
    assign rx227_cstack, $I18
  rx227_jump699:
    jump $I19
  rx227_done696:
    rx227_cur."!cursor_fail"()
    .return (rx227_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_51_1349901746.339_caps" :subid("cuid_memo_99_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["mod_internal"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_51_1349901746.339_nfa" :subid("cuid_memo_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "mod_internal"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<quantifier>" :subid("cuid_52_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 139
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    .local pmc rx230_curclass
    .local pmc rx230_bstack
    .local pmc rx230_cstack
    (rx230_cur, rx230_tgt, rx230_pos, rx230_curclass, rx230_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx230_cur
    length rx230_eos, rx230_tgt
    eq $I19, 1, rx230_restart708
    gt rx230_pos, rx230_eos, rx230_fail709
    repr_get_attr_int $I11, self, rx230_curclass, "$!from"
    ne $I11, -1, rxscan231_done715
    goto rxscan231_scan714
  rxscan231_loop713:
    inc rx230_pos
    gt rx230_pos, rx230_eos, rx230_fail709
    repr_bind_attr_int rx230_cur, rx230_curclass, "$!from", rx230_pos
  rxscan231_scan714:
    nqp_rxmark rx230_bstack, rxscan231_loop713, rx230_pos, 0
  rxscan231_done715:
    repr_bind_attr_int rx230_cur, rx230_curclass, "$!pos", rx230_pos
    $P11 = rx230_cur."quantifier"()
    repr_get_attr_int $I11, $P11, rx230_curclass, "$!pos"
    lt $I11, 0, rx230_fail709
    nqp_rxmark rx230_bstack, rxsubrule232_pass716, -1, 0
  rxsubrule232_pass716:
    rx230_cstack = rx230_cur."!cursor_capture"($P11, "quantifier")
    repr_get_attr_int rx230_pos, $P11, rx230_curclass, "$!pos"
    repr_bind_attr_int rx230_cur, rx230_curclass, "$!pos", rx230_pos
    $P11 = rx230_cur."panic"("Quantifier quantifies nothing")
    repr_get_attr_int $I11, $P11, rx230_curclass, "$!pos"
    lt $I11, 0, rx230_fail709
    repr_get_attr_int rx230_pos, $P11, rx230_curclass, "$!pos"
    rx230_cur."!cursor_pass"(rx230_pos, "metachar:sym<quantifier>", 'backtrack'=>1)
    .return (rx230_cur)
  rx230_restart708:
    repr_get_attr_obj rx230_cstack, rx230_cur, rx230_curclass, "$!cstack"
  rx230_fail709:
    unless rx230_bstack, rx230_done707
    pop $I19, rx230_bstack
    if_null rx230_cstack, rx230_cstack_done712
    unless rx230_cstack, rx230_cstack_done712
    dec $I19
    set $P11, rx230_cstack[$I19]
  rx230_cstack_done712:
    pop rx230_rep, rx230_bstack
    pop rx230_pos, rx230_bstack
    pop $I19, rx230_bstack
    lt rx230_pos, -1, rx230_done707
    lt rx230_pos, 0, rx230_fail709
    eq $I19, 0, rx230_fail709
    nqp_islist $I20, rx230_cstack
    unless $I20, rx230_jump710
    elements $I18, rx230_bstack
    le $I18, 0, rx230_cut711
    dec $I18
    set $I18, rx230_bstack[$I18]
  rx230_cut711:
    assign rx230_cstack, $I18
  rx230_jump710:
    jump $I19
  rx230_done707:
    rx230_cur."!cursor_fail"()
    .return (rx230_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_52_1349901746.339_caps" :subid("cuid_memo_101_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quantifier"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_52_1349901746.339_nfa" :subid("cuid_memo_102_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "quantifier"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "panic"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<~>" :subid("cuid_53_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 144
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    .local pmc rx234_curclass
    .local pmc rx234_bstack
    .local pmc rx234_cstack
    (rx234_cur, rx234_tgt, rx234_pos, rx234_curclass, rx234_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx234_cur
    length rx234_eos, rx234_tgt
    eq $I19, 1, rx234_restart720
    gt rx234_pos, rx234_eos, rx234_fail721
    repr_get_attr_int $I11, self, rx234_curclass, "$!from"
    ne $I11, -1, rxscan235_done727
    goto rxscan235_scan726
  rxscan235_loop725:
    inc rx234_pos
    gt rx234_pos, rx234_eos, rx234_fail721
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!from", rx234_pos
  rxscan235_scan726:
    nqp_rxmark rx234_bstack, rxscan235_loop725, rx234_pos, 0
  rxscan235_done727:
    nqp_rxmark rx234_bstack, rxcap236_fail729, rx234_pos, 0
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail721
    substr $S10, rx234_tgt, rx234_pos, 1
    ne $S10, ucs4:"~", rx234_fail721
    add rx234_pos, 1
    nqp_rxpeek $I19, rx234_bstack, rxcap236_fail729
    inc $I19
    set $I11, rx234_bstack[$I19]
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx234_pos)
    rx234_cstack = rx234_cur."!cursor_capture"($P11, "sym")
    goto rxcap236_done728
  rxcap236_fail729:
    goto rx234_fail721
  rxcap236_done728:
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."ws"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail721
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail721
    nqp_rxmark rx234_bstack, rxsubrule238_pass731, -1, 0
  rxsubrule238_pass731:
    rx234_cstack = rx234_cur."!cursor_capture"($P11, "GOAL")
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."ws"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail721
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail721
    nqp_rxmark rx234_bstack, rxsubrule240_pass733, -1, 0
  rxsubrule240_pass733:
    rx234_cstack = rx234_cur."!cursor_capture"($P11, "EXPR")
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    rx234_cur."!cursor_pass"(rx234_pos, "metachar:sym<~>", 'backtrack'=>1)
    .return (rx234_cur)
  rx234_restart720:
    repr_get_attr_obj rx234_cstack, rx234_cur, rx234_curclass, "$!cstack"
  rx234_fail721:
    unless rx234_bstack, rx234_done719
    pop $I19, rx234_bstack
    if_null rx234_cstack, rx234_cstack_done724
    unless rx234_cstack, rx234_cstack_done724
    dec $I19
    set $P11, rx234_cstack[$I19]
  rx234_cstack_done724:
    pop rx234_rep, rx234_bstack
    pop rx234_pos, rx234_bstack
    pop $I19, rx234_bstack
    lt rx234_pos, -1, rx234_done719
    lt rx234_pos, 0, rx234_fail721
    eq $I19, 0, rx234_fail721
    nqp_islist $I20, rx234_cstack
    unless $I20, rx234_jump722
    elements $I18, rx234_bstack
    le $I18, 0, rx234_cut723
    dec $I18
    set $I18, rx234_bstack[$I18]
  rx234_cut723:
    assign rx234_cstack, $I18
  rx234_jump722:
    jump $I19
  rx234_done719:
    rx234_cur."!cursor_fail"()
    .return (rx234_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_53_1349901746.339_caps" :subid("cuid_memo_103_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["GOAL"], $P5003
    box $P5004, 0
    set $P5001["EXPR"], $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_53_1349901746.339_nfa" :subid("cuid_memo_104_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 126
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "ws"
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 8
    push $P5011, $P5012
    box $P5013, "quantified_atom"
    push $P5011, $P5013
    box $P5014, 4
    push $P5011, $P5014
    push $P5001, $P5011
    new $P5015, 'ResizablePMCArray'
    box $P5016, 8
    push $P5015, $P5016
    box $P5017, "ws"
    push $P5015, $P5017
    box $P5018, 5
    push $P5015, $P5018
    push $P5001, $P5015
    new $P5019, 'ResizablePMCArray'
    box $P5020, 8
    push $P5019, $P5020
    box $P5021, "quantified_atom"
    push $P5019, $P5021
    box $P5022, 0
    push $P5019, $P5022
    push $P5001, $P5019
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<{*}>" :subid("cuid_54_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 150
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx241_tgt
    .local int rx241_pos
    .local int rx241_off
    .local int rx241_eos
    .local int rx241_rep
    .local pmc rx241_cur
    .local pmc rx241_curclass
    .local pmc rx241_bstack
    .local pmc rx241_cstack
    (rx241_cur, rx241_tgt, rx241_pos, rx241_curclass, rx241_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx241_cur
    length rx241_eos, rx241_tgt
    eq $I19, 1, rx241_restart736
    gt rx241_pos, rx241_eos, rx241_fail737
    repr_get_attr_int $I11, self, rx241_curclass, "$!from"
    ne $I11, -1, rxscan242_done743
    goto rxscan242_scan742
  rxscan242_loop741:
    inc rx241_pos
    gt rx241_pos, rx241_eos, rx241_fail737
    repr_bind_attr_int rx241_cur, rx241_curclass, "$!from", rx241_pos
  rxscan242_scan742:
    nqp_rxmark rx241_bstack, rxscan242_loop741, rx241_pos, 0
  rxscan242_done743:
    nqp_rxmark rx241_bstack, rxcap243_fail745, rx241_pos, 0
    add $I11, rx241_pos, 3
    gt $I11, rx241_eos, rx241_fail737
    substr $S10, rx241_tgt, rx241_pos, 3
    ne $S10, ucs4:"{*}", rx241_fail737
    add rx241_pos, 3
    nqp_rxpeek $I19, rx241_bstack, rxcap243_fail745
    inc $I19
    set $I11, rx241_bstack[$I19]
    repr_bind_attr_int rx241_cur, rx241_curclass, "$!pos", rx241_pos
    $P11 = rx241_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx241_pos)
    rx241_cstack = rx241_cur."!cursor_capture"($P11, "sym")
    goto rxcap243_done744
  rxcap243_fail745:
    goto rx241_fail737
  rxcap243_done744:
    nqp_rxmark rx241_bstack, rxquantr244_done747, rx241_pos, 0
  rxquantr244_loop746:
    nqp_rxmark rx241_bstack, rxquantr245_done749, rx241_pos, 0
  rxquantr245_loop748:
    ge rx241_pos, rx241_eos, rx241_fail737
    substr $S11, rx241_tgt, rx241_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx241_fail737
    inc rx241_pos
    nqp_rxpeek $I19, rx241_bstack, rxquantr245_done749
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr245_done749
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr245_done749, rx241_pos, rx241_rep
    goto rxquantr245_loop748
  rxquantr245_done749:
    add $I11, rx241_pos, 3
    gt $I11, rx241_eos, rx241_fail737
    substr $S10, rx241_tgt, rx241_pos, 3
    ne $S10, ucs4:"#= ", rx241_fail737
    add rx241_pos, 3
    nqp_rxmark rx241_bstack, rxquantr246_done751, rx241_pos, 0
  rxquantr246_loop750:
    ge rx241_pos, rx241_eos, rx241_fail737
    substr $S11, rx241_tgt, rx241_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx241_fail737
    inc rx241_pos
    nqp_rxpeek $I19, rx241_bstack, rxquantr246_done751
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr246_done751
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr246_done751, rx241_pos, rx241_rep
    goto rxquantr246_loop750
  rxquantr246_done751:
    nqp_rxmark rx241_bstack, rxcap247_fail753, rx241_pos, 0
    nqp_rxmark rx241_bstack, rxquantr248_done755, -1, 0
  rxquantr248_loop754:
    ge rx241_pos, rx241_eos, rx241_fail737
    is_cclass $I11, .CCLASS_WHITESPACE, rx241_tgt, rx241_pos
    if $I11, rx241_fail737
    add rx241_pos, 1
    nqp_rxpeek $I19, rx241_bstack, rxquantr248_done755
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr248_done755
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr248_done755, rx241_pos, rx241_rep
    goto rxquantr248_loop754
  rxquantr248_done755:
    nqp_rxmark rx241_bstack, rxquantr249_done757, rx241_pos, 0
  rxquantr249_loop756:
    nqp_rxmark rx241_bstack, rxquantr250_done759, -1, 0
  rxquantr250_loop758:
    ge rx241_pos, rx241_eos, rx241_fail737
    substr $S11, rx241_tgt, rx241_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx241_fail737
    inc rx241_pos
    nqp_rxpeek $I19, rx241_bstack, rxquantr250_done759
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr250_done759
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr250_done759, rx241_pos, rx241_rep
    goto rxquantr250_loop758
  rxquantr250_done759:
    nqp_rxmark rx241_bstack, rxquantr251_done761, -1, 0
  rxquantr251_loop760:
    ge rx241_pos, rx241_eos, rx241_fail737
    is_cclass $I11, .CCLASS_WHITESPACE, rx241_tgt, rx241_pos
    if $I11, rx241_fail737
    add rx241_pos, 1
    nqp_rxpeek $I19, rx241_bstack, rxquantr251_done761
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr251_done761
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr251_done761, rx241_pos, rx241_rep
    goto rxquantr251_loop760
  rxquantr251_done761:
    nqp_rxpeek $I19, rx241_bstack, rxquantr249_done757
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr249_done757
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr249_done757, rx241_pos, rx241_rep
    goto rxquantr249_loop756
  rxquantr249_done757:
    nqp_rxpeek $I19, rx241_bstack, rxcap247_fail753
    inc $I19
    set $I11, rx241_bstack[$I19]
    repr_bind_attr_int rx241_cur, rx241_curclass, "$!pos", rx241_pos
    $P11 = rx241_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx241_pos)
    rx241_cstack = rx241_cur."!cursor_capture"($P11, "key")
    goto rxcap247_done752
  rxcap247_fail753:
    goto rx241_fail737
  rxcap247_done752:
    nqp_rxpeek $I19, rx241_bstack, rxquantr244_done747
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr244_done747
    inc rx241_rep
  rxquantr244_done747:
    rx241_cur."!cursor_pass"(rx241_pos, "metachar:sym<{*}>", 'backtrack'=>1)
    .return (rx241_cur)
  rx241_restart736:
    repr_get_attr_obj rx241_cstack, rx241_cur, rx241_curclass, "$!cstack"
  rx241_fail737:
    unless rx241_bstack, rx241_done735
    pop $I19, rx241_bstack
    if_null rx241_cstack, rx241_cstack_done740
    unless rx241_cstack, rx241_cstack_done740
    dec $I19
    set $P11, rx241_cstack[$I19]
  rx241_cstack_done740:
    pop rx241_rep, rx241_bstack
    pop rx241_pos, rx241_bstack
    pop $I19, rx241_bstack
    lt rx241_pos, -1, rx241_done735
    lt rx241_pos, 0, rx241_fail737
    eq $I19, 0, rx241_fail737
    nqp_islist $I20, rx241_cstack
    unless $I20, rx241_jump738
    elements $I18, rx241_bstack
    le $I18, 0, rx241_cut739
    dec $I18
    set $I18, rx241_bstack[$I18]
  rx241_cut739:
    assign rx241_cstack, $I18
  rx241_jump738:
    jump $I19
  rx241_done735:
    rx241_cur."!cursor_fail"()
    .return (rx241_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_54_1349901746.339_caps" :subid("cuid_memo_105_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 2
    set $P5001["key"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_54_1349901746.339_nfa" :subid("cuid_memo_106_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 123
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 42
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 2
    push $P5011, $P5012
    box $P5013, 125
    push $P5011, $P5013
    box $P5014, 4
    push $P5011, $P5014
    push $P5001, $P5011
    new $P5015, 'ResizablePMCArray'
    box $P5016, 6
    push $P5015, $P5016
    box $P5017, utf8:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"
    push $P5015, $P5017
    box $P5018, 4
    push $P5015, $P5018
    box $P5019, 1
    push $P5015, $P5019
    box $P5020, 0
    push $P5015, $P5020
    box $P5021, 5
    push $P5015, $P5021
    box $P5022, 1
    push $P5015, $P5022
    box $P5023, 0
    push $P5015, $P5023
    box $P5024, 0
    push $P5015, $P5024
    push $P5001, $P5015
    new $P5025, 'ResizablePMCArray'
    box $P5026, 2
    push $P5025, $P5026
    box $P5027, 35
    push $P5025, $P5027
    box $P5028, 6
    push $P5025, $P5028
    push $P5001, $P5025
    new $P5029, 'ResizablePMCArray'
    box $P5030, 2
    push $P5029, $P5030
    box $P5031, 61
    push $P5029, $P5031
    box $P5032, 7
    push $P5029, $P5032
    push $P5001, $P5029
    new $P5033, 'ResizablePMCArray'
    box $P5034, 2
    push $P5033, $P5034
    box $P5035, 32
    push $P5033, $P5035
    box $P5036, 8
    push $P5033, $P5036
    push $P5001, $P5033
    new $P5037, 'ResizablePMCArray'
    box $P5038, 6
    push $P5037, $P5038
    box $P5039, utf8:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"
    push $P5037, $P5039
    box $P5040, 8
    push $P5037, $P5040
    box $P5041, 1
    push $P5037, $P5041
    box $P5042, 0
    push $P5037, $P5042
    box $P5043, 9
    push $P5037, $P5043
    push $P5001, $P5037
    new $P5044, 'ResizablePMCArray'
    box $P5045, 1
    push $P5044, $P5045
    box $P5046, 0
    push $P5044, $P5046
    box $P5047, 10
    push $P5044, $P5047
    push $P5001, $P5044
    new $P5048, 'ResizablePMCArray'
    box $P5049, 5
    push $P5048, $P5049
    box $P5050, 32
    push $P5048, $P5050
    box $P5051, 11
    push $P5048, $P5051
    push $P5001, $P5048
    new $P5052, 'ResizablePMCArray'
    box $P5053, 1
    push $P5052, $P5053
    box $P5054, 0
    push $P5052, $P5054
    box $P5055, 10
    push $P5052, $P5055
    box $P5056, 1
    push $P5052, $P5056
    box $P5057, 0
    push $P5052, $P5057
    box $P5058, 12
    push $P5052, $P5058
    box $P5059, 1
    push $P5052, $P5059
    box $P5060, 0
    push $P5052, $P5060
    box $P5061, 13
    push $P5052, $P5061
    box $P5062, 1
    push $P5052, $P5062
    box $P5063, 0
    push $P5052, $P5063
    box $P5064, 0
    push $P5052, $P5064
    push $P5001, $P5052
    new $P5065, 'ResizablePMCArray'
    push $P5001, $P5065
    new $P5066, 'ResizablePMCArray'
    box $P5067, 6
    push $P5066, $P5067
    box $P5068, utf8:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"
    push $P5066, $P5068
    box $P5069, 14
    push $P5066, $P5069
    push $P5001, $P5066
    new $P5070, 'ResizablePMCArray'
    box $P5071, 1
    push $P5070, $P5071
    box $P5072, 0
    push $P5070, $P5072
    box $P5073, 13
    push $P5070, $P5073
    box $P5074, 1
    push $P5070, $P5074
    box $P5075, 0
    push $P5070, $P5075
    box $P5076, 15
    push $P5070, $P5076
    box $P5077, 1
    push $P5070, $P5077
    box $P5078, 0
    push $P5070, $P5078
    box $P5079, 16
    push $P5070, $P5079
    push $P5001, $P5070
    new $P5080, 'ResizablePMCArray'
    push $P5001, $P5080
    new $P5081, 'ResizablePMCArray'
    box $P5082, 5
    push $P5081, $P5082
    box $P5083, 32
    push $P5081, $P5083
    box $P5084, 17
    push $P5081, $P5084
    push $P5001, $P5081
    new $P5085, 'ResizablePMCArray'
    box $P5086, 1
    push $P5085, $P5086
    box $P5087, 0
    push $P5085, $P5087
    box $P5088, 16
    push $P5085, $P5088
    box $P5089, 1
    push $P5085, $P5089
    box $P5090, 0
    push $P5085, $P5090
    box $P5091, 11
    push $P5085, $P5091
    push $P5001, $P5085
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<assert>" :subid("cuid_55_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 154
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx252_tgt
    .local int rx252_pos
    .local int rx252_off
    .local int rx252_eos
    .local int rx252_rep
    .local pmc rx252_cur
    .local pmc rx252_curclass
    .local pmc rx252_bstack
    .local pmc rx252_cstack
    (rx252_cur, rx252_tgt, rx252_pos, rx252_curclass, rx252_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx252_cur
    length rx252_eos, rx252_tgt
    eq $I19, 1, rx252_restart764
    gt rx252_pos, rx252_eos, rx252_fail765
    repr_get_attr_int $I11, self, rx252_curclass, "$!from"
    ne $I11, -1, rxscan253_done771
    goto rxscan253_scan770
  rxscan253_loop769:
    inc rx252_pos
    gt rx252_pos, rx252_eos, rx252_fail765
    repr_bind_attr_int rx252_cur, rx252_curclass, "$!from", rx252_pos
  rxscan253_scan770:
    nqp_rxmark rx252_bstack, rxscan253_loop769, rx252_pos, 0
  rxscan253_done771:
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail765
    substr $S10, rx252_tgt, rx252_pos, 1
    ne $S10, ucs4:"<", rx252_fail765
    add rx252_pos, 1
    repr_bind_attr_int rx252_cur, rx252_curclass, "$!pos", rx252_pos
    $P11 = rx252_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx252_curclass, "$!pos"
    lt $I11, 0, rx252_fail765
    nqp_rxmark rx252_bstack, rxsubrule254_pass772, -1, 0
  rxsubrule254_pass772:
    rx252_cstack = rx252_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx252_pos, $P11, rx252_curclass, "$!pos"
  alt255_0774:
    nqp_rxmark rx252_bstack, alt255_1775, rx252_pos, 0
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail765
    substr $S10, rx252_tgt, rx252_pos, 1
    ne $S10, ucs4:">", rx252_fail765
    add rx252_pos, 1
    goto alt255_end773
  alt255_1775:
    repr_bind_attr_int rx252_cur, rx252_curclass, "$!pos", rx252_pos
    $P11 = rx252_cur."panic"("regex assertion not terminated by angle bracket")
    repr_get_attr_int $I11, $P11, rx252_curclass, "$!pos"
    lt $I11, 0, rx252_fail765
    repr_get_attr_int rx252_pos, $P11, rx252_curclass, "$!pos"
  alt255_end773:
    rx252_cur."!cursor_pass"(rx252_pos, "metachar:sym<assert>", 'backtrack'=>1)
    .return (rx252_cur)
  rx252_restart764:
    repr_get_attr_obj rx252_cstack, rx252_cur, rx252_curclass, "$!cstack"
  rx252_fail765:
    unless rx252_bstack, rx252_done763
    pop $I19, rx252_bstack
    if_null rx252_cstack, rx252_cstack_done768
    unless rx252_cstack, rx252_cstack_done768
    dec $I19
    set $P11, rx252_cstack[$I19]
  rx252_cstack_done768:
    pop rx252_rep, rx252_bstack
    pop rx252_pos, rx252_bstack
    pop $I19, rx252_bstack
    lt rx252_pos, -1, rx252_done763
    lt rx252_pos, 0, rx252_fail765
    eq $I19, 0, rx252_fail765
    nqp_islist $I20, rx252_cstack
    unless $I20, rx252_jump766
    elements $I18, rx252_bstack
    le $I18, 0, rx252_cut767
    dec $I18
    set $I18, rx252_bstack[$I18]
  rx252_cut767:
    assign rx252_cstack, $I18
  rx252_jump766:
    jump $I19
  rx252_done763:
    rx252_cur."!cursor_fail"()
    .return (rx252_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_55_1349901746.339_caps" :subid("cuid_memo_107_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_55_1349901746.339_nfa" :subid("cuid_memo_108_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 60
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "assertion"
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 0
    push $P5011, $P5012
    box $P5013, 0
    push $P5011, $P5013
    box $P5014, 0
    push $P5011, $P5014
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<var>" :subid("cuid_56_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 159
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    .local pmc rx257_curclass
    .local pmc rx257_bstack
    .local pmc rx257_cstack
    (rx257_cur, rx257_tgt, rx257_pos, rx257_curclass, rx257_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx257_cur
    length rx257_eos, rx257_tgt
    eq $I19, 1, rx257_restart779
    gt rx257_pos, rx257_eos, rx257_fail780
    repr_get_attr_int $I11, self, rx257_curclass, "$!from"
    ne $I11, -1, rxscan258_done786
    goto rxscan258_scan785
  rxscan258_loop784:
    inc rx257_pos
    gt rx257_pos, rx257_eos, rx257_fail780
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!from", rx257_pos
  rxscan258_scan785:
    nqp_rxmark rx257_bstack, rxscan258_loop784, rx257_pos, 0
  rxscan258_done786:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt259_0788
    nqp_push_label $P11, alt259_1793
    nqp_rxmark rx257_bstack, alt259_end787, -1, 0
    rx257_cur."!alt"(rx257_pos, "alt_nfa__10_1349901746.911", $P11)
    goto rx257_fail780
  alt259_0788:
    add $I11, rx257_pos, 2
    gt $I11, rx257_eos, rx257_fail780
    substr $S10, rx257_tgt, rx257_pos, 2
    ne $S10, ucs4:"$<", rx257_fail780
    add rx257_pos, 2
    nqp_rxmark rx257_bstack, rxcap260_fail790, rx257_pos, 0
    nqp_rxmark rx257_bstack, rxquantr261_done792, -1, 0
  rxquantr261_loop791:
    ge rx257_pos, rx257_eos, rx257_fail780
    substr $S11, rx257_tgt, rx257_pos, 1
    index $I11, ucs4:">", $S11
    ge $I11, 0, rx257_fail780
    inc rx257_pos
    nqp_rxpeek $I19, rx257_bstack, rxquantr261_done792
    inc $I19
    inc $I19
    set rx257_rep, rx257_bstack[$I19]
    nqp_rxcommit rx257_bstack, rxquantr261_done792
    inc rx257_rep
    nqp_rxmark rx257_bstack, rxquantr261_done792, rx257_pos, rx257_rep
    goto rxquantr261_loop791
  rxquantr261_done792:
    nqp_rxpeek $I19, rx257_bstack, rxcap260_fail790
    inc $I19
    set $I11, rx257_bstack[$I19]
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx257_pos)
    rx257_cstack = rx257_cur."!cursor_capture"($P11, "name")
    goto rxcap260_done789
  rxcap260_fail790:
    goto rx257_fail780
  rxcap260_done789:
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail780
    substr $S10, rx257_tgt, rx257_pos, 1
    ne $S10, ucs4:">", rx257_fail780
    add rx257_pos, 1
    goto alt259_end787
  alt259_1793:
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail780
    substr $S10, rx257_tgt, rx257_pos, 1
    ne $S10, ucs4:"$", rx257_fail780
    add rx257_pos, 1
    nqp_rxmark rx257_bstack, rxcap262_fail795, rx257_pos, 0
    nqp_rxmark rx257_bstack, rxquantr263_done797, -1, 0
  rxquantr263_loop796:
    ge rx257_pos, rx257_eos, rx257_fail780
    is_cclass $I11, .CCLASS_NUMERIC, rx257_tgt, rx257_pos
    unless $I11, rx257_fail780
    add rx257_pos, 1
    nqp_rxpeek $I19, rx257_bstack, rxquantr263_done797
    inc $I19
    inc $I19
    set rx257_rep, rx257_bstack[$I19]
    nqp_rxcommit rx257_bstack, rxquantr263_done797
    inc rx257_rep
    nqp_rxmark rx257_bstack, rxquantr263_done797, rx257_pos, rx257_rep
    goto rxquantr263_loop796
  rxquantr263_done797:
    nqp_rxpeek $I19, rx257_bstack, rxcap262_fail795
    inc $I19
    set $I11, rx257_bstack[$I19]
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx257_pos)
    rx257_cstack = rx257_cur."!cursor_capture"($P11, "pos")
    goto rxcap262_done794
  rxcap262_fail795:
    goto rx257_fail780
  rxcap262_done794:
    goto alt259_end787
  alt259_end787:
    nqp_rxcommit rx257_bstack, alt259_end787
    nqp_rxmark rx257_bstack, rxquantr264_done799, rx257_pos, 0
  rxquantr264_loop798:
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."ws"()
    repr_get_attr_int $I11, $P11, rx257_curclass, "$!pos"
    lt $I11, 0, rx257_fail780
    repr_get_attr_int rx257_pos, $P11, rx257_curclass, "$!pos"
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail780
    substr $S10, rx257_tgt, rx257_pos, 1
    ne $S10, ucs4:"=", rx257_fail780
    add rx257_pos, 1
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."ws"()
    repr_get_attr_int $I11, $P11, rx257_curclass, "$!pos"
    lt $I11, 0, rx257_fail780
    repr_get_attr_int rx257_pos, $P11, rx257_curclass, "$!pos"
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx257_curclass, "$!pos"
    lt $I11, 0, rx257_fail780
    nqp_rxmark rx257_bstack, rxsubrule267_pass802, -1, 0
  rxsubrule267_pass802:
    rx257_cstack = rx257_cur."!cursor_capture"($P11, "quantified_atom")
    repr_get_attr_int rx257_pos, $P11, rx257_curclass, "$!pos"
    nqp_rxpeek $I19, rx257_bstack, rxquantr264_done799
    inc $I19
    inc $I19
    set rx257_rep, rx257_bstack[$I19]
    nqp_rxcommit rx257_bstack, rxquantr264_done799
    inc rx257_rep
  rxquantr264_done799:
    rx257_cur."!cursor_pass"(rx257_pos, "metachar:sym<var>", 'backtrack'=>1)
    .return (rx257_cur)
  rx257_restart779:
    repr_get_attr_obj rx257_cstack, rx257_cur, rx257_curclass, "$!cstack"
  rx257_fail780:
    unless rx257_bstack, rx257_done778
    pop $I19, rx257_bstack
    if_null rx257_cstack, rx257_cstack_done783
    unless rx257_cstack, rx257_cstack_done783
    dec $I19
    set $P11, rx257_cstack[$I19]
  rx257_cstack_done783:
    pop rx257_rep, rx257_bstack
    pop rx257_pos, rx257_bstack
    pop $I19, rx257_bstack
    lt rx257_pos, -1, rx257_done778
    lt rx257_pos, 0, rx257_fail780
    eq $I19, 0, rx257_fail780
    nqp_islist $I20, rx257_cstack
    unless $I20, rx257_jump781
    elements $I18, rx257_bstack
    le $I18, 0, rx257_cut782
    dec $I18
    set $I18, rx257_bstack[$I18]
  rx257_cut782:
    assign rx257_cstack, $I18
  rx257_jump781:
    jump $I19
  rx257_done778:
    rx257_cur."!cursor_fail"()
    .return (rx257_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_56_1349901746.339_caps" :subid("cuid_memo_109_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["name"], $P5002
    box $P5003, 0
    set $P5001["pos"], $P5003
    box $P5004, 2
    set $P5001["quantified_atom"], $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_56_1349901746.339_nfa" :subid("cuid_memo_110_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 36
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 36
    push $P5003, $P5008
    box $P5009, 8
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 60
    push $P5010, $P5012
    box $P5013, 3
    push $P5010, $P5013
    push $P5001, $P5010
    new $P5014, 'ResizablePMCArray'
    box $P5015, 1
    push $P5014, $P5015
    box $P5016, 0
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 7
    push $P5018, $P5019
    box $P5020, ">"
    push $P5018, $P5020
    box $P5021, 5
    push $P5018, $P5021
    push $P5001, $P5018
    new $P5022, 'ResizablePMCArray'
    box $P5023, 1
    push $P5022, $P5023
    box $P5024, 0
    push $P5022, $P5024
    box $P5025, 4
    push $P5022, $P5025
    box $P5026, 1
    push $P5022, $P5026
    box $P5027, 0
    push $P5022, $P5027
    box $P5028, 6
    push $P5022, $P5028
    box $P5029, 2
    push $P5022, $P5029
    box $P5030, 62
    push $P5022, $P5030
    box $P5031, 7
    push $P5022, $P5031
    push $P5001, $P5022
    new $P5032, 'ResizablePMCArray'
    push $P5001, $P5032
    new $P5033, 'ResizablePMCArray'
    box $P5034, 8
    push $P5033, $P5034
    box $P5035, "ws"
    push $P5033, $P5035
    box $P5036, 11
    push $P5033, $P5036
    box $P5037, 1
    push $P5033, $P5037
    box $P5038, 0
    push $P5033, $P5038
    box $P5039, 0
    push $P5033, $P5039
    push $P5001, $P5033
    new $P5040, 'ResizablePMCArray'
    box $P5041, 1
    push $P5040, $P5041
    box $P5042, 0
    push $P5040, $P5042
    box $P5043, 9
    push $P5040, $P5043
    push $P5001, $P5040
    new $P5044, 'ResizablePMCArray'
    box $P5045, 4
    push $P5044, $P5045
    box $P5046, 8
    push $P5044, $P5046
    box $P5047, 10
    push $P5044, $P5047
    push $P5001, $P5044
    new $P5048, 'ResizablePMCArray'
    box $P5049, 1
    push $P5048, $P5049
    box $P5050, 0
    push $P5048, $P5050
    box $P5051, 9
    push $P5048, $P5051
    box $P5052, 1
    push $P5048, $P5052
    box $P5053, 0
    push $P5048, $P5053
    box $P5054, 7
    push $P5048, $P5054
    push $P5001, $P5048
    new $P5055, 'ResizablePMCArray'
    box $P5056, 2
    push $P5055, $P5056
    box $P5057, 61
    push $P5055, $P5057
    box $P5058, 12
    push $P5055, $P5058
    push $P5001, $P5055
    new $P5059, 'ResizablePMCArray'
    box $P5060, 8
    push $P5059, $P5060
    box $P5061, "ws"
    push $P5059, $P5061
    box $P5062, 13
    push $P5059, $P5062
    push $P5001, $P5059
    new $P5063, 'ResizablePMCArray'
    box $P5064, 8
    push $P5063, $P5064
    box $P5065, "quantified_atom"
    push $P5063, $P5065
    box $P5066, 0
    push $P5063, $P5066
    push $P5001, $P5063
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_56_1349901746.339_alt_nfa__10_1349901746.911" :subid("cuid_memo_111_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 36
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 2
    push $P5008, $P5009
    box $P5010, 60
    push $P5008, $P5010
    box $P5011, 3
    push $P5008, $P5011
    push $P5002, $P5008
    new $P5012, 'ResizablePMCArray'
    box $P5013, 1
    push $P5012, $P5013
    box $P5014, 0
    push $P5012, $P5014
    box $P5015, 4
    push $P5012, $P5015
    push $P5002, $P5012
    new $P5016, 'ResizablePMCArray'
    box $P5017, 7
    push $P5016, $P5017
    box $P5018, ">"
    push $P5016, $P5018
    box $P5019, 5
    push $P5016, $P5019
    push $P5002, $P5016
    new $P5020, 'ResizablePMCArray'
    box $P5021, 1
    push $P5020, $P5021
    box $P5022, 0
    push $P5020, $P5022
    box $P5023, 4
    push $P5020, $P5023
    box $P5024, 1
    push $P5020, $P5024
    box $P5025, 0
    push $P5020, $P5025
    box $P5026, 6
    push $P5020, $P5026
    box $P5027, 2
    push $P5020, $P5027
    box $P5028, 62
    push $P5020, $P5028
    box $P5029, 0
    push $P5020, $P5029
    push $P5002, $P5020
    new $P5030, 'ResizablePMCArray'
    push $P5002, $P5030
    push $P5001, $P5002
    new $P5031, 'ResizablePMCArray'
    new $P5032, 'ResizablePMCArray'
    push $P5031, $P5032
    new $P5033, 'ResizablePMCArray'
    box $P5034, 2
    push $P5033, $P5034
    box $P5035, 36
    push $P5033, $P5035
    box $P5036, 2
    push $P5033, $P5036
    push $P5031, $P5033
    new $P5037, 'ResizablePMCArray'
    box $P5038, 1
    push $P5037, $P5038
    box $P5039, 0
    push $P5037, $P5039
    box $P5040, 3
    push $P5037, $P5040
    push $P5031, $P5037
    new $P5041, 'ResizablePMCArray'
    box $P5042, 4
    push $P5041, $P5042
    box $P5043, 8
    push $P5041, $P5043
    box $P5044, 4
    push $P5041, $P5044
    push $P5031, $P5041
    new $P5045, 'ResizablePMCArray'
    box $P5046, 1
    push $P5045, $P5046
    box $P5047, 0
    push $P5045, $P5047
    box $P5048, 3
    push $P5045, $P5048
    box $P5049, 1
    push $P5045, $P5049
    box $P5050, 0
    push $P5045, $P5050
    box $P5051, 0
    push $P5045, $P5051
    push $P5031, $P5045
    push $P5001, $P5031
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash" :subid("cuid_57_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 168
    .param pmc self 
    $P5001 = self."!protoregex"("backslash")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<s>" :subid("cuid_58_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 169
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx268_tgt
    .local int rx268_pos
    .local int rx268_off
    .local int rx268_eos
    .local int rx268_rep
    .local pmc rx268_cur
    .local pmc rx268_curclass
    .local pmc rx268_bstack
    .local pmc rx268_cstack
    (rx268_cur, rx268_tgt, rx268_pos, rx268_curclass, rx268_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx268_cur
    length rx268_eos, rx268_tgt
    eq $I19, 1, rx268_restart805
    gt rx268_pos, rx268_eos, rx268_fail806
    repr_get_attr_int $I11, self, rx268_curclass, "$!from"
    ne $I11, -1, rxscan269_done812
    goto rxscan269_scan811
  rxscan269_loop810:
    inc rx268_pos
    gt rx268_pos, rx268_eos, rx268_fail806
    repr_bind_attr_int rx268_cur, rx268_curclass, "$!from", rx268_pos
  rxscan269_scan811:
    nqp_rxmark rx268_bstack, rxscan269_loop810, rx268_pos, 0
  rxscan269_done812:
    nqp_rxmark rx268_bstack, rxcap270_fail814, rx268_pos, 0
    ge rx268_pos, rx268_eos, rx268_fail806
    substr $S11, rx268_tgt, rx268_pos, 1
    index $I11, ucs4:"dDnNsSwW", $S11
    lt $I11, 0, rx268_fail806
    inc rx268_pos
    nqp_rxpeek $I19, rx268_bstack, rxcap270_fail814
    inc $I19
    set $I11, rx268_bstack[$I19]
    repr_bind_attr_int rx268_cur, rx268_curclass, "$!pos", rx268_pos
    $P11 = rx268_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx268_pos)
    rx268_cstack = rx268_cur."!cursor_capture"($P11, "sym")
    goto rxcap270_done813
  rxcap270_fail814:
    goto rx268_fail806
  rxcap270_done813:
    rx268_cur."!cursor_pass"(rx268_pos, "backslash:sym<s>", 'backtrack'=>1)
    .return (rx268_cur)
  rx268_restart805:
    repr_get_attr_obj rx268_cstack, rx268_cur, rx268_curclass, "$!cstack"
  rx268_fail806:
    unless rx268_bstack, rx268_done804
    pop $I19, rx268_bstack
    if_null rx268_cstack, rx268_cstack_done809
    unless rx268_cstack, rx268_cstack_done809
    dec $I19
    set $P11, rx268_cstack[$I19]
  rx268_cstack_done809:
    pop rx268_rep, rx268_bstack
    pop rx268_pos, rx268_bstack
    pop $I19, rx268_bstack
    lt rx268_pos, -1, rx268_done804
    lt rx268_pos, 0, rx268_fail806
    eq $I19, 0, rx268_fail806
    nqp_islist $I20, rx268_cstack
    unless $I20, rx268_jump807
    elements $I18, rx268_bstack
    le $I18, 0, rx268_cut808
    dec $I18
    set $I18, rx268_bstack[$I18]
  rx268_cut808:
    assign rx268_cstack, $I18
  rx268_jump807:
    jump $I19
  rx268_done804:
    rx268_cur."!cursor_fail"()
    .return (rx268_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_58_1349901746.339_caps" :subid("cuid_memo_112_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_58_1349901746.339_nfa" :subid("cuid_memo_113_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "dDnNsSwW"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<b>" :subid("cuid_59_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 170
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    .local pmc rx271_curclass
    .local pmc rx271_bstack
    .local pmc rx271_cstack
    (rx271_cur, rx271_tgt, rx271_pos, rx271_curclass, rx271_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx271_cur
    length rx271_eos, rx271_tgt
    eq $I19, 1, rx271_restart817
    gt rx271_pos, rx271_eos, rx271_fail818
    repr_get_attr_int $I11, self, rx271_curclass, "$!from"
    ne $I11, -1, rxscan272_done824
    goto rxscan272_scan823
  rxscan272_loop822:
    inc rx271_pos
    gt rx271_pos, rx271_eos, rx271_fail818
    repr_bind_attr_int rx271_cur, rx271_curclass, "$!from", rx271_pos
  rxscan272_scan823:
    nqp_rxmark rx271_bstack, rxscan272_loop822, rx271_pos, 0
  rxscan272_done824:
    nqp_rxmark rx271_bstack, rxcap273_fail826, rx271_pos, 0
    ge rx271_pos, rx271_eos, rx271_fail818
    substr $S11, rx271_tgt, rx271_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx271_fail818
    inc rx271_pos
    nqp_rxpeek $I19, rx271_bstack, rxcap273_fail826
    inc $I19
    set $I11, rx271_bstack[$I19]
    repr_bind_attr_int rx271_cur, rx271_curclass, "$!pos", rx271_pos
    $P11 = rx271_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx271_pos)
    rx271_cstack = rx271_cur."!cursor_capture"($P11, "sym")
    goto rxcap273_done825
  rxcap273_fail826:
    goto rx271_fail818
  rxcap273_done825:
    rx271_cur."!cursor_pass"(rx271_pos, "backslash:sym<b>", 'backtrack'=>1)
    .return (rx271_cur)
  rx271_restart817:
    repr_get_attr_obj rx271_cstack, rx271_cur, rx271_curclass, "$!cstack"
  rx271_fail818:
    unless rx271_bstack, rx271_done816
    pop $I19, rx271_bstack
    if_null rx271_cstack, rx271_cstack_done821
    unless rx271_cstack, rx271_cstack_done821
    dec $I19
    set $P11, rx271_cstack[$I19]
  rx271_cstack_done821:
    pop rx271_rep, rx271_bstack
    pop rx271_pos, rx271_bstack
    pop $I19, rx271_bstack
    lt rx271_pos, -1, rx271_done816
    lt rx271_pos, 0, rx271_fail818
    eq $I19, 0, rx271_fail818
    nqp_islist $I20, rx271_cstack
    unless $I20, rx271_jump819
    elements $I18, rx271_bstack
    le $I18, 0, rx271_cut820
    dec $I18
    set $I18, rx271_bstack[$I18]
  rx271_cut820:
    assign rx271_cstack, $I18
  rx271_jump819:
    jump $I19
  rx271_done816:
    rx271_cur."!cursor_fail"()
    .return (rx271_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_59_1349901746.339_caps" :subid("cuid_memo_114_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_59_1349901746.339_nfa" :subid("cuid_memo_115_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "bB"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<e>" :subid("cuid_60_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 171
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx274_tgt
    .local int rx274_pos
    .local int rx274_off
    .local int rx274_eos
    .local int rx274_rep
    .local pmc rx274_cur
    .local pmc rx274_curclass
    .local pmc rx274_bstack
    .local pmc rx274_cstack
    (rx274_cur, rx274_tgt, rx274_pos, rx274_curclass, rx274_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx274_cur
    length rx274_eos, rx274_tgt
    eq $I19, 1, rx274_restart829
    gt rx274_pos, rx274_eos, rx274_fail830
    repr_get_attr_int $I11, self, rx274_curclass, "$!from"
    ne $I11, -1, rxscan275_done836
    goto rxscan275_scan835
  rxscan275_loop834:
    inc rx274_pos
    gt rx274_pos, rx274_eos, rx274_fail830
    repr_bind_attr_int rx274_cur, rx274_curclass, "$!from", rx274_pos
  rxscan275_scan835:
    nqp_rxmark rx274_bstack, rxscan275_loop834, rx274_pos, 0
  rxscan275_done836:
    nqp_rxmark rx274_bstack, rxcap276_fail838, rx274_pos, 0
    ge rx274_pos, rx274_eos, rx274_fail830
    substr $S11, rx274_tgt, rx274_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx274_fail830
    inc rx274_pos
    nqp_rxpeek $I19, rx274_bstack, rxcap276_fail838
    inc $I19
    set $I11, rx274_bstack[$I19]
    repr_bind_attr_int rx274_cur, rx274_curclass, "$!pos", rx274_pos
    $P11 = rx274_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx274_pos)
    rx274_cstack = rx274_cur."!cursor_capture"($P11, "sym")
    goto rxcap276_done837
  rxcap276_fail838:
    goto rx274_fail830
  rxcap276_done837:
    rx274_cur."!cursor_pass"(rx274_pos, "backslash:sym<e>", 'backtrack'=>1)
    .return (rx274_cur)
  rx274_restart829:
    repr_get_attr_obj rx274_cstack, rx274_cur, rx274_curclass, "$!cstack"
  rx274_fail830:
    unless rx274_bstack, rx274_done828
    pop $I19, rx274_bstack
    if_null rx274_cstack, rx274_cstack_done833
    unless rx274_cstack, rx274_cstack_done833
    dec $I19
    set $P11, rx274_cstack[$I19]
  rx274_cstack_done833:
    pop rx274_rep, rx274_bstack
    pop rx274_pos, rx274_bstack
    pop $I19, rx274_bstack
    lt rx274_pos, -1, rx274_done828
    lt rx274_pos, 0, rx274_fail830
    eq $I19, 0, rx274_fail830
    nqp_islist $I20, rx274_cstack
    unless $I20, rx274_jump831
    elements $I18, rx274_bstack
    le $I18, 0, rx274_cut832
    dec $I18
    set $I18, rx274_bstack[$I18]
  rx274_cut832:
    assign rx274_cstack, $I18
  rx274_jump831:
    jump $I19
  rx274_done828:
    rx274_cur."!cursor_fail"()
    .return (rx274_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_60_1349901746.339_caps" :subid("cuid_memo_116_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_60_1349901746.339_nfa" :subid("cuid_memo_117_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "eE"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<f>" :subid("cuid_61_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    .local pmc rx277_curclass
    .local pmc rx277_bstack
    .local pmc rx277_cstack
    (rx277_cur, rx277_tgt, rx277_pos, rx277_curclass, rx277_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx277_cur
    length rx277_eos, rx277_tgt
    eq $I19, 1, rx277_restart841
    gt rx277_pos, rx277_eos, rx277_fail842
    repr_get_attr_int $I11, self, rx277_curclass, "$!from"
    ne $I11, -1, rxscan278_done848
    goto rxscan278_scan847
  rxscan278_loop846:
    inc rx277_pos
    gt rx277_pos, rx277_eos, rx277_fail842
    repr_bind_attr_int rx277_cur, rx277_curclass, "$!from", rx277_pos
  rxscan278_scan847:
    nqp_rxmark rx277_bstack, rxscan278_loop846, rx277_pos, 0
  rxscan278_done848:
    nqp_rxmark rx277_bstack, rxcap279_fail850, rx277_pos, 0
    ge rx277_pos, rx277_eos, rx277_fail842
    substr $S11, rx277_tgt, rx277_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx277_fail842
    inc rx277_pos
    nqp_rxpeek $I19, rx277_bstack, rxcap279_fail850
    inc $I19
    set $I11, rx277_bstack[$I19]
    repr_bind_attr_int rx277_cur, rx277_curclass, "$!pos", rx277_pos
    $P11 = rx277_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx277_pos)
    rx277_cstack = rx277_cur."!cursor_capture"($P11, "sym")
    goto rxcap279_done849
  rxcap279_fail850:
    goto rx277_fail842
  rxcap279_done849:
    rx277_cur."!cursor_pass"(rx277_pos, "backslash:sym<f>", 'backtrack'=>1)
    .return (rx277_cur)
  rx277_restart841:
    repr_get_attr_obj rx277_cstack, rx277_cur, rx277_curclass, "$!cstack"
  rx277_fail842:
    unless rx277_bstack, rx277_done840
    pop $I19, rx277_bstack
    if_null rx277_cstack, rx277_cstack_done845
    unless rx277_cstack, rx277_cstack_done845
    dec $I19
    set $P11, rx277_cstack[$I19]
  rx277_cstack_done845:
    pop rx277_rep, rx277_bstack
    pop rx277_pos, rx277_bstack
    pop $I19, rx277_bstack
    lt rx277_pos, -1, rx277_done840
    lt rx277_pos, 0, rx277_fail842
    eq $I19, 0, rx277_fail842
    nqp_islist $I20, rx277_cstack
    unless $I20, rx277_jump843
    elements $I18, rx277_bstack
    le $I18, 0, rx277_cut844
    dec $I18
    set $I18, rx277_bstack[$I18]
  rx277_cut844:
    assign rx277_cstack, $I18
  rx277_jump843:
    jump $I19
  rx277_done840:
    rx277_cur."!cursor_fail"()
    .return (rx277_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_61_1349901746.339_caps" :subid("cuid_memo_118_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_61_1349901746.339_nfa" :subid("cuid_memo_119_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "fF"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<h>" :subid("cuid_62_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 173
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx280_tgt
    .local int rx280_pos
    .local int rx280_off
    .local int rx280_eos
    .local int rx280_rep
    .local pmc rx280_cur
    .local pmc rx280_curclass
    .local pmc rx280_bstack
    .local pmc rx280_cstack
    (rx280_cur, rx280_tgt, rx280_pos, rx280_curclass, rx280_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx280_cur
    length rx280_eos, rx280_tgt
    eq $I19, 1, rx280_restart853
    gt rx280_pos, rx280_eos, rx280_fail854
    repr_get_attr_int $I11, self, rx280_curclass, "$!from"
    ne $I11, -1, rxscan281_done860
    goto rxscan281_scan859
  rxscan281_loop858:
    inc rx280_pos
    gt rx280_pos, rx280_eos, rx280_fail854
    repr_bind_attr_int rx280_cur, rx280_curclass, "$!from", rx280_pos
  rxscan281_scan859:
    nqp_rxmark rx280_bstack, rxscan281_loop858, rx280_pos, 0
  rxscan281_done860:
    nqp_rxmark rx280_bstack, rxcap282_fail862, rx280_pos, 0
    ge rx280_pos, rx280_eos, rx280_fail854
    substr $S11, rx280_tgt, rx280_pos, 1
    index $I11, ucs4:"hH", $S11
    lt $I11, 0, rx280_fail854
    inc rx280_pos
    nqp_rxpeek $I19, rx280_bstack, rxcap282_fail862
    inc $I19
    set $I11, rx280_bstack[$I19]
    repr_bind_attr_int rx280_cur, rx280_curclass, "$!pos", rx280_pos
    $P11 = rx280_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx280_pos)
    rx280_cstack = rx280_cur."!cursor_capture"($P11, "sym")
    goto rxcap282_done861
  rxcap282_fail862:
    goto rx280_fail854
  rxcap282_done861:
    rx280_cur."!cursor_pass"(rx280_pos, "backslash:sym<h>", 'backtrack'=>1)
    .return (rx280_cur)
  rx280_restart853:
    repr_get_attr_obj rx280_cstack, rx280_cur, rx280_curclass, "$!cstack"
  rx280_fail854:
    unless rx280_bstack, rx280_done852
    pop $I19, rx280_bstack
    if_null rx280_cstack, rx280_cstack_done857
    unless rx280_cstack, rx280_cstack_done857
    dec $I19
    set $P11, rx280_cstack[$I19]
  rx280_cstack_done857:
    pop rx280_rep, rx280_bstack
    pop rx280_pos, rx280_bstack
    pop $I19, rx280_bstack
    lt rx280_pos, -1, rx280_done852
    lt rx280_pos, 0, rx280_fail854
    eq $I19, 0, rx280_fail854
    nqp_islist $I20, rx280_cstack
    unless $I20, rx280_jump855
    elements $I18, rx280_bstack
    le $I18, 0, rx280_cut856
    dec $I18
    set $I18, rx280_bstack[$I18]
  rx280_cut856:
    assign rx280_cstack, $I18
  rx280_jump855:
    jump $I19
  rx280_done852:
    rx280_cur."!cursor_fail"()
    .return (rx280_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_62_1349901746.339_caps" :subid("cuid_memo_120_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_62_1349901746.339_nfa" :subid("cuid_memo_121_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "hH"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<r>" :subid("cuid_63_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 174
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    .local pmc rx283_curclass
    .local pmc rx283_bstack
    .local pmc rx283_cstack
    (rx283_cur, rx283_tgt, rx283_pos, rx283_curclass, rx283_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx283_cur
    length rx283_eos, rx283_tgt
    eq $I19, 1, rx283_restart865
    gt rx283_pos, rx283_eos, rx283_fail866
    repr_get_attr_int $I11, self, rx283_curclass, "$!from"
    ne $I11, -1, rxscan284_done872
    goto rxscan284_scan871
  rxscan284_loop870:
    inc rx283_pos
    gt rx283_pos, rx283_eos, rx283_fail866
    repr_bind_attr_int rx283_cur, rx283_curclass, "$!from", rx283_pos
  rxscan284_scan871:
    nqp_rxmark rx283_bstack, rxscan284_loop870, rx283_pos, 0
  rxscan284_done872:
    nqp_rxmark rx283_bstack, rxcap285_fail874, rx283_pos, 0
    ge rx283_pos, rx283_eos, rx283_fail866
    substr $S11, rx283_tgt, rx283_pos, 1
    index $I11, ucs4:"rR", $S11
    lt $I11, 0, rx283_fail866
    inc rx283_pos
    nqp_rxpeek $I19, rx283_bstack, rxcap285_fail874
    inc $I19
    set $I11, rx283_bstack[$I19]
    repr_bind_attr_int rx283_cur, rx283_curclass, "$!pos", rx283_pos
    $P11 = rx283_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx283_pos)
    rx283_cstack = rx283_cur."!cursor_capture"($P11, "sym")
    goto rxcap285_done873
  rxcap285_fail874:
    goto rx283_fail866
  rxcap285_done873:
    rx283_cur."!cursor_pass"(rx283_pos, "backslash:sym<r>", 'backtrack'=>1)
    .return (rx283_cur)
  rx283_restart865:
    repr_get_attr_obj rx283_cstack, rx283_cur, rx283_curclass, "$!cstack"
  rx283_fail866:
    unless rx283_bstack, rx283_done864
    pop $I19, rx283_bstack
    if_null rx283_cstack, rx283_cstack_done869
    unless rx283_cstack, rx283_cstack_done869
    dec $I19
    set $P11, rx283_cstack[$I19]
  rx283_cstack_done869:
    pop rx283_rep, rx283_bstack
    pop rx283_pos, rx283_bstack
    pop $I19, rx283_bstack
    lt rx283_pos, -1, rx283_done864
    lt rx283_pos, 0, rx283_fail866
    eq $I19, 0, rx283_fail866
    nqp_islist $I20, rx283_cstack
    unless $I20, rx283_jump867
    elements $I18, rx283_bstack
    le $I18, 0, rx283_cut868
    dec $I18
    set $I18, rx283_bstack[$I18]
  rx283_cut868:
    assign rx283_cstack, $I18
  rx283_jump867:
    jump $I19
  rx283_done864:
    rx283_cur."!cursor_fail"()
    .return (rx283_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_63_1349901746.339_caps" :subid("cuid_memo_122_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_63_1349901746.339_nfa" :subid("cuid_memo_123_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "rR"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<t>" :subid("cuid_64_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 175
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx286_tgt
    .local int rx286_pos
    .local int rx286_off
    .local int rx286_eos
    .local int rx286_rep
    .local pmc rx286_cur
    .local pmc rx286_curclass
    .local pmc rx286_bstack
    .local pmc rx286_cstack
    (rx286_cur, rx286_tgt, rx286_pos, rx286_curclass, rx286_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx286_cur
    length rx286_eos, rx286_tgt
    eq $I19, 1, rx286_restart877
    gt rx286_pos, rx286_eos, rx286_fail878
    repr_get_attr_int $I11, self, rx286_curclass, "$!from"
    ne $I11, -1, rxscan287_done884
    goto rxscan287_scan883
  rxscan287_loop882:
    inc rx286_pos
    gt rx286_pos, rx286_eos, rx286_fail878
    repr_bind_attr_int rx286_cur, rx286_curclass, "$!from", rx286_pos
  rxscan287_scan883:
    nqp_rxmark rx286_bstack, rxscan287_loop882, rx286_pos, 0
  rxscan287_done884:
    nqp_rxmark rx286_bstack, rxcap288_fail886, rx286_pos, 0
    ge rx286_pos, rx286_eos, rx286_fail878
    substr $S11, rx286_tgt, rx286_pos, 1
    index $I11, ucs4:"tT", $S11
    lt $I11, 0, rx286_fail878
    inc rx286_pos
    nqp_rxpeek $I19, rx286_bstack, rxcap288_fail886
    inc $I19
    set $I11, rx286_bstack[$I19]
    repr_bind_attr_int rx286_cur, rx286_curclass, "$!pos", rx286_pos
    $P11 = rx286_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx286_pos)
    rx286_cstack = rx286_cur."!cursor_capture"($P11, "sym")
    goto rxcap288_done885
  rxcap288_fail886:
    goto rx286_fail878
  rxcap288_done885:
    rx286_cur."!cursor_pass"(rx286_pos, "backslash:sym<t>", 'backtrack'=>1)
    .return (rx286_cur)
  rx286_restart877:
    repr_get_attr_obj rx286_cstack, rx286_cur, rx286_curclass, "$!cstack"
  rx286_fail878:
    unless rx286_bstack, rx286_done876
    pop $I19, rx286_bstack
    if_null rx286_cstack, rx286_cstack_done881
    unless rx286_cstack, rx286_cstack_done881
    dec $I19
    set $P11, rx286_cstack[$I19]
  rx286_cstack_done881:
    pop rx286_rep, rx286_bstack
    pop rx286_pos, rx286_bstack
    pop $I19, rx286_bstack
    lt rx286_pos, -1, rx286_done876
    lt rx286_pos, 0, rx286_fail878
    eq $I19, 0, rx286_fail878
    nqp_islist $I20, rx286_cstack
    unless $I20, rx286_jump879
    elements $I18, rx286_bstack
    le $I18, 0, rx286_cut880
    dec $I18
    set $I18, rx286_bstack[$I18]
  rx286_cut880:
    assign rx286_cstack, $I18
  rx286_jump879:
    jump $I19
  rx286_done876:
    rx286_cur."!cursor_fail"()
    .return (rx286_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_64_1349901746.339_caps" :subid("cuid_memo_124_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_64_1349901746.339_nfa" :subid("cuid_memo_125_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "tT"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<v>" :subid("cuid_65_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx289_tgt
    .local int rx289_pos
    .local int rx289_off
    .local int rx289_eos
    .local int rx289_rep
    .local pmc rx289_cur
    .local pmc rx289_curclass
    .local pmc rx289_bstack
    .local pmc rx289_cstack
    (rx289_cur, rx289_tgt, rx289_pos, rx289_curclass, rx289_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx289_cur
    length rx289_eos, rx289_tgt
    eq $I19, 1, rx289_restart889
    gt rx289_pos, rx289_eos, rx289_fail890
    repr_get_attr_int $I11, self, rx289_curclass, "$!from"
    ne $I11, -1, rxscan290_done896
    goto rxscan290_scan895
  rxscan290_loop894:
    inc rx289_pos
    gt rx289_pos, rx289_eos, rx289_fail890
    repr_bind_attr_int rx289_cur, rx289_curclass, "$!from", rx289_pos
  rxscan290_scan895:
    nqp_rxmark rx289_bstack, rxscan290_loop894, rx289_pos, 0
  rxscan290_done896:
    nqp_rxmark rx289_bstack, rxcap291_fail898, rx289_pos, 0
    ge rx289_pos, rx289_eos, rx289_fail890
    substr $S11, rx289_tgt, rx289_pos, 1
    index $I11, ucs4:"vV", $S11
    lt $I11, 0, rx289_fail890
    inc rx289_pos
    nqp_rxpeek $I19, rx289_bstack, rxcap291_fail898
    inc $I19
    set $I11, rx289_bstack[$I19]
    repr_bind_attr_int rx289_cur, rx289_curclass, "$!pos", rx289_pos
    $P11 = rx289_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx289_pos)
    rx289_cstack = rx289_cur."!cursor_capture"($P11, "sym")
    goto rxcap291_done897
  rxcap291_fail898:
    goto rx289_fail890
  rxcap291_done897:
    rx289_cur."!cursor_pass"(rx289_pos, "backslash:sym<v>", 'backtrack'=>1)
    .return (rx289_cur)
  rx289_restart889:
    repr_get_attr_obj rx289_cstack, rx289_cur, rx289_curclass, "$!cstack"
  rx289_fail890:
    unless rx289_bstack, rx289_done888
    pop $I19, rx289_bstack
    if_null rx289_cstack, rx289_cstack_done893
    unless rx289_cstack, rx289_cstack_done893
    dec $I19
    set $P11, rx289_cstack[$I19]
  rx289_cstack_done893:
    pop rx289_rep, rx289_bstack
    pop rx289_pos, rx289_bstack
    pop $I19, rx289_bstack
    lt rx289_pos, -1, rx289_done888
    lt rx289_pos, 0, rx289_fail890
    eq $I19, 0, rx289_fail890
    nqp_islist $I20, rx289_cstack
    unless $I20, rx289_jump891
    elements $I18, rx289_bstack
    le $I18, 0, rx289_cut892
    dec $I18
    set $I18, rx289_bstack[$I18]
  rx289_cut892:
    assign rx289_cstack, $I18
  rx289_jump891:
    jump $I19
  rx289_done888:
    rx289_cur."!cursor_fail"()
    .return (rx289_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_65_1349901746.339_caps" :subid("cuid_memo_126_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_65_1349901746.339_nfa" :subid("cuid_memo_127_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "vV"
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<o>" :subid("cuid_66_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 177
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx292_tgt
    .local int rx292_pos
    .local int rx292_off
    .local int rx292_eos
    .local int rx292_rep
    .local pmc rx292_cur
    .local pmc rx292_curclass
    .local pmc rx292_bstack
    .local pmc rx292_cstack
    (rx292_cur, rx292_tgt, rx292_pos, rx292_curclass, rx292_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx292_cur
    length rx292_eos, rx292_tgt
    eq $I19, 1, rx292_restart901
    gt rx292_pos, rx292_eos, rx292_fail902
    repr_get_attr_int $I11, self, rx292_curclass, "$!from"
    ne $I11, -1, rxscan293_done908
    goto rxscan293_scan907
  rxscan293_loop906:
    inc rx292_pos
    gt rx292_pos, rx292_eos, rx292_fail902
    repr_bind_attr_int rx292_cur, rx292_curclass, "$!from", rx292_pos
  rxscan293_scan907:
    nqp_rxmark rx292_bstack, rxscan293_loop906, rx292_pos, 0
  rxscan293_done908:
    nqp_rxmark rx292_bstack, rxcap294_fail910, rx292_pos, 0
    ge rx292_pos, rx292_eos, rx292_fail902
    substr $S11, rx292_tgt, rx292_pos, 1
    index $I11, ucs4:"oO", $S11
    lt $I11, 0, rx292_fail902
    inc rx292_pos
    nqp_rxpeek $I19, rx292_bstack, rxcap294_fail910
    inc $I19
    set $I11, rx292_bstack[$I19]
    repr_bind_attr_int rx292_cur, rx292_curclass, "$!pos", rx292_pos
    $P11 = rx292_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx292_pos)
    rx292_cstack = rx292_cur."!cursor_capture"($P11, "sym")
    goto rxcap294_done909
  rxcap294_fail910:
    goto rx292_fail902
  rxcap294_done909:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt295_0912
    nqp_push_label $P11, alt295_1914
    nqp_rxmark rx292_bstack, alt295_end911, -1, 0
    rx292_cur."!alt"(rx292_pos, "alt_nfa__11_1349901746.977", $P11)
    goto rx292_fail902
  alt295_0912:
    repr_bind_attr_int rx292_cur, rx292_curclass, "$!pos", rx292_pos
    $P11 = rx292_cur."octint"()
    repr_get_attr_int $I11, $P11, rx292_curclass, "$!pos"
    lt $I11, 0, rx292_fail902
    nqp_rxmark rx292_bstack, rxsubrule296_pass913, -1, 0
  rxsubrule296_pass913:
    rx292_cstack = rx292_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx292_pos, $P11, rx292_curclass, "$!pos"
    goto alt295_end911
  alt295_1914:
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail902
    substr $S10, rx292_tgt, rx292_pos, 1
    ne $S10, ucs4:"[", rx292_fail902
    add rx292_pos, 1
    repr_bind_attr_int rx292_cur, rx292_curclass, "$!pos", rx292_pos
    $P11 = rx292_cur."octints"()
    repr_get_attr_int $I11, $P11, rx292_curclass, "$!pos"
    lt $I11, 0, rx292_fail902
    nqp_rxmark rx292_bstack, rxsubrule297_pass915, -1, 0
  rxsubrule297_pass915:
    rx292_cstack = rx292_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx292_pos, $P11, rx292_curclass, "$!pos"
    add $I11, rx292_pos, 1
    gt $I11, rx292_eos, rx292_fail902
    substr $S10, rx292_tgt, rx292_pos, 1
    ne $S10, ucs4:"]", rx292_fail902
    add rx292_pos, 1
    goto alt295_end911
  alt295_end911:
    nqp_rxcommit rx292_bstack, alt295_end911
    rx292_cur."!cursor_pass"(rx292_pos, "backslash:sym<o>", 'backtrack'=>1)
    .return (rx292_cur)
  rx292_restart901:
    repr_get_attr_obj rx292_cstack, rx292_cur, rx292_curclass, "$!cstack"
  rx292_fail902:
    unless rx292_bstack, rx292_done900
    pop $I19, rx292_bstack
    if_null rx292_cstack, rx292_cstack_done905
    unless rx292_cstack, rx292_cstack_done905
    dec $I19
    set $P11, rx292_cstack[$I19]
  rx292_cstack_done905:
    pop rx292_rep, rx292_bstack
    pop rx292_pos, rx292_bstack
    pop $I19, rx292_bstack
    lt rx292_pos, -1, rx292_done900
    lt rx292_pos, 0, rx292_fail902
    eq $I19, 0, rx292_fail902
    nqp_islist $I20, rx292_cstack
    unless $I20, rx292_jump903
    elements $I18, rx292_bstack
    le $I18, 0, rx292_cut904
    dec $I18
    set $I18, rx292_bstack[$I18]
  rx292_cut904:
    assign rx292_cstack, $I18
  rx292_jump903:
    jump $I19
  rx292_done900:
    rx292_cur."!cursor_fail"()
    .return (rx292_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_66_1349901746.339_caps" :subid("cuid_memo_128_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["octint"], $P5003
    box $P5004, 0
    set $P5001["octints"], $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_66_1349901746.339_nfa" :subid("cuid_memo_129_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "oO"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "octint"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    box $P5011, 2
    push $P5007, $P5011
    box $P5012, 91
    push $P5007, $P5012
    box $P5013, 3
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "octints"
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 93
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5001, $P5018
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_66_1349901746.339_alt_nfa__11_1349901746.977" :subid("cuid_memo_130_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 8
    push $P5004, $P5005
    box $P5006, "octint"
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 91
    push $P5010, $P5012
    box $P5013, 2
    push $P5010, $P5013
    push $P5008, $P5010
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "octints"
    push $P5014, $P5016
    box $P5017, 3
    push $P5014, $P5017
    push $P5008, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 93
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5008, $P5018
    push $P5001, $P5008
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<x>" :subid("cuid_67_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx298_tgt
    .local int rx298_pos
    .local int rx298_off
    .local int rx298_eos
    .local int rx298_rep
    .local pmc rx298_cur
    .local pmc rx298_curclass
    .local pmc rx298_bstack
    .local pmc rx298_cstack
    (rx298_cur, rx298_tgt, rx298_pos, rx298_curclass, rx298_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx298_cur
    length rx298_eos, rx298_tgt
    eq $I19, 1, rx298_restart918
    gt rx298_pos, rx298_eos, rx298_fail919
    repr_get_attr_int $I11, self, rx298_curclass, "$!from"
    ne $I11, -1, rxscan299_done925
    goto rxscan299_scan924
  rxscan299_loop923:
    inc rx298_pos
    gt rx298_pos, rx298_eos, rx298_fail919
    repr_bind_attr_int rx298_cur, rx298_curclass, "$!from", rx298_pos
  rxscan299_scan924:
    nqp_rxmark rx298_bstack, rxscan299_loop923, rx298_pos, 0
  rxscan299_done925:
    nqp_rxmark rx298_bstack, rxcap300_fail927, rx298_pos, 0
    ge rx298_pos, rx298_eos, rx298_fail919
    substr $S11, rx298_tgt, rx298_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx298_fail919
    inc rx298_pos
    nqp_rxpeek $I19, rx298_bstack, rxcap300_fail927
    inc $I19
    set $I11, rx298_bstack[$I19]
    repr_bind_attr_int rx298_cur, rx298_curclass, "$!pos", rx298_pos
    $P11 = rx298_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx298_pos)
    rx298_cstack = rx298_cur."!cursor_capture"($P11, "sym")
    goto rxcap300_done926
  rxcap300_fail927:
    goto rx298_fail919
  rxcap300_done926:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt301_0929
    nqp_push_label $P11, alt301_1931
    nqp_rxmark rx298_bstack, alt301_end928, -1, 0
    rx298_cur."!alt"(rx298_pos, "alt_nfa__12_1349901746.989", $P11)
    goto rx298_fail919
  alt301_0929:
    repr_bind_attr_int rx298_cur, rx298_curclass, "$!pos", rx298_pos
    $P11 = rx298_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx298_curclass, "$!pos"
    lt $I11, 0, rx298_fail919
    nqp_rxmark rx298_bstack, rxsubrule302_pass930, -1, 0
  rxsubrule302_pass930:
    rx298_cstack = rx298_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx298_pos, $P11, rx298_curclass, "$!pos"
    goto alt301_end928
  alt301_1931:
    add $I11, rx298_pos, 1
    gt $I11, rx298_eos, rx298_fail919
    substr $S10, rx298_tgt, rx298_pos, 1
    ne $S10, ucs4:"[", rx298_fail919
    add rx298_pos, 1
    repr_bind_attr_int rx298_cur, rx298_curclass, "$!pos", rx298_pos
    $P11 = rx298_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx298_curclass, "$!pos"
    lt $I11, 0, rx298_fail919
    nqp_rxmark rx298_bstack, rxsubrule303_pass932, -1, 0
  rxsubrule303_pass932:
    rx298_cstack = rx298_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx298_pos, $P11, rx298_curclass, "$!pos"
    add $I11, rx298_pos, 1
    gt $I11, rx298_eos, rx298_fail919
    substr $S10, rx298_tgt, rx298_pos, 1
    ne $S10, ucs4:"]", rx298_fail919
    add rx298_pos, 1
    goto alt301_end928
  alt301_end928:
    nqp_rxcommit rx298_bstack, alt301_end928
    rx298_cur."!cursor_pass"(rx298_pos, "backslash:sym<x>", 'backtrack'=>1)
    .return (rx298_cur)
  rx298_restart918:
    repr_get_attr_obj rx298_cstack, rx298_cur, rx298_curclass, "$!cstack"
  rx298_fail919:
    unless rx298_bstack, rx298_done917
    pop $I19, rx298_bstack
    if_null rx298_cstack, rx298_cstack_done922
    unless rx298_cstack, rx298_cstack_done922
    dec $I19
    set $P11, rx298_cstack[$I19]
  rx298_cstack_done922:
    pop rx298_rep, rx298_bstack
    pop rx298_pos, rx298_bstack
    pop $I19, rx298_bstack
    lt rx298_pos, -1, rx298_done917
    lt rx298_pos, 0, rx298_fail919
    eq $I19, 0, rx298_fail919
    nqp_islist $I20, rx298_cstack
    unless $I20, rx298_jump920
    elements $I18, rx298_bstack
    le $I18, 0, rx298_cut921
    dec $I18
    set $I18, rx298_bstack[$I18]
  rx298_cut921:
    assign rx298_cstack, $I18
  rx298_jump920:
    jump $I19
  rx298_done917:
    rx298_cur."!cursor_fail"()
    .return (rx298_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_67_1349901746.339_caps" :subid("cuid_memo_131_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["hexint"], $P5003
    box $P5004, 0
    set $P5001["hexints"], $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_67_1349901746.339_nfa" :subid("cuid_memo_132_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "xX"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "hexint"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    box $P5011, 2
    push $P5007, $P5011
    box $P5012, 91
    push $P5007, $P5012
    box $P5013, 3
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "hexints"
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 93
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5001, $P5018
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_67_1349901746.339_alt_nfa__12_1349901746.989" :subid("cuid_memo_133_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 8
    push $P5004, $P5005
    box $P5006, "hexint"
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 91
    push $P5010, $P5012
    box $P5013, 2
    push $P5010, $P5013
    push $P5008, $P5010
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "hexints"
    push $P5014, $P5016
    box $P5017, 3
    push $P5014, $P5017
    push $P5008, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 93
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5008, $P5018
    push $P5001, $P5008
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<c>" :subid("cuid_68_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 179
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx304_tgt
    .local int rx304_pos
    .local int rx304_off
    .local int rx304_eos
    .local int rx304_rep
    .local pmc rx304_cur
    .local pmc rx304_curclass
    .local pmc rx304_bstack
    .local pmc rx304_cstack
    (rx304_cur, rx304_tgt, rx304_pos, rx304_curclass, rx304_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx304_cur
    length rx304_eos, rx304_tgt
    eq $I19, 1, rx304_restart935
    gt rx304_pos, rx304_eos, rx304_fail936
    repr_get_attr_int $I11, self, rx304_curclass, "$!from"
    ne $I11, -1, rxscan305_done942
    goto rxscan305_scan941
  rxscan305_loop940:
    inc rx304_pos
    gt rx304_pos, rx304_eos, rx304_fail936
    repr_bind_attr_int rx304_cur, rx304_curclass, "$!from", rx304_pos
  rxscan305_scan941:
    nqp_rxmark rx304_bstack, rxscan305_loop940, rx304_pos, 0
  rxscan305_done942:
    nqp_rxmark rx304_bstack, rxcap306_fail944, rx304_pos, 0
    ge rx304_pos, rx304_eos, rx304_fail936
    substr $S11, rx304_tgt, rx304_pos, 1
    index $I11, ucs4:"cC", $S11
    lt $I11, 0, rx304_fail936
    inc rx304_pos
    nqp_rxpeek $I19, rx304_bstack, rxcap306_fail944
    inc $I19
    set $I11, rx304_bstack[$I19]
    repr_bind_attr_int rx304_cur, rx304_curclass, "$!pos", rx304_pos
    $P11 = rx304_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx304_pos)
    rx304_cstack = rx304_cur."!cursor_capture"($P11, "sym")
    goto rxcap306_done943
  rxcap306_fail944:
    goto rx304_fail936
  rxcap306_done943:
    repr_bind_attr_int rx304_cur, rx304_curclass, "$!pos", rx304_pos
    $P11 = rx304_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx304_curclass, "$!pos"
    lt $I11, 0, rx304_fail936
    nqp_rxmark rx304_bstack, rxsubrule307_pass945, -1, 0
  rxsubrule307_pass945:
    rx304_cstack = rx304_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx304_pos, $P11, rx304_curclass, "$!pos"
    rx304_cur."!cursor_pass"(rx304_pos, "backslash:sym<c>", 'backtrack'=>1)
    .return (rx304_cur)
  rx304_restart935:
    repr_get_attr_obj rx304_cstack, rx304_cur, rx304_curclass, "$!cstack"
  rx304_fail936:
    unless rx304_bstack, rx304_done934
    pop $I19, rx304_bstack
    if_null rx304_cstack, rx304_cstack_done939
    unless rx304_cstack, rx304_cstack_done939
    dec $I19
    set $P11, rx304_cstack[$I19]
  rx304_cstack_done939:
    pop rx304_rep, rx304_bstack
    pop rx304_pos, rx304_bstack
    pop $I19, rx304_bstack
    lt rx304_pos, -1, rx304_done934
    lt rx304_pos, 0, rx304_fail936
    eq $I19, 0, rx304_fail936
    nqp_islist $I20, rx304_cstack
    unless $I20, rx304_jump937
    elements $I18, rx304_bstack
    le $I18, 0, rx304_cut938
    dec $I18
    set $I18, rx304_bstack[$I18]
  rx304_cut938:
    assign rx304_cstack, $I18
  rx304_jump937:
    jump $I19
  rx304_done934:
    rx304_cur."!cursor_fail"()
    .return (rx304_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_68_1349901746.339_caps" :subid("cuid_memo_134_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    box $P5003, 0
    set $P5001["charspec"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_68_1349901746.339_nfa" :subid("cuid_memo_135_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 6
    push $P5003, $P5004
    box $P5005, "cC"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "charspec"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<A>" :subid("cuid_69_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 180
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx308_tgt
    .local int rx308_pos
    .local int rx308_off
    .local int rx308_eos
    .local int rx308_rep
    .local pmc rx308_cur
    .local pmc rx308_curclass
    .local pmc rx308_bstack
    .local pmc rx308_cstack
    (rx308_cur, rx308_tgt, rx308_pos, rx308_curclass, rx308_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx308_cur
    length rx308_eos, rx308_tgt
    eq $I19, 1, rx308_restart948
    gt rx308_pos, rx308_eos, rx308_fail949
    repr_get_attr_int $I11, self, rx308_curclass, "$!from"
    ne $I11, -1, rxscan309_done955
    goto rxscan309_scan954
  rxscan309_loop953:
    inc rx308_pos
    gt rx308_pos, rx308_eos, rx308_fail949
    repr_bind_attr_int rx308_cur, rx308_curclass, "$!from", rx308_pos
  rxscan309_scan954:
    nqp_rxmark rx308_bstack, rxscan309_loop953, rx308_pos, 0
  rxscan309_done955:
    add $I11, rx308_pos, 1
    gt $I11, rx308_eos, rx308_fail949
    substr $S10, rx308_tgt, rx308_pos, 1
    ne $S10, ucs4:"A", rx308_fail949
    add rx308_pos, 1
    repr_bind_attr_int rx308_cur, rx308_curclass, "$!pos", rx308_pos
    $P11 = rx308_cur."obs"("\\\\A as beginning-of-string matcher", "^")
    repr_get_attr_int $I11, $P11, rx308_curclass, "$!pos"
    lt $I11, 0, rx308_fail949
    repr_get_attr_int rx308_pos, $P11, rx308_curclass, "$!pos"
    rx308_cur."!cursor_pass"(rx308_pos, "backslash:sym<A>", 'backtrack'=>1)
    .return (rx308_cur)
  rx308_restart948:
    repr_get_attr_obj rx308_cstack, rx308_cur, rx308_curclass, "$!cstack"
  rx308_fail949:
    unless rx308_bstack, rx308_done947
    pop $I19, rx308_bstack
    if_null rx308_cstack, rx308_cstack_done952
    unless rx308_cstack, rx308_cstack_done952
    dec $I19
    set $P11, rx308_cstack[$I19]
  rx308_cstack_done952:
    pop rx308_rep, rx308_bstack
    pop rx308_pos, rx308_bstack
    pop $I19, rx308_bstack
    lt rx308_pos, -1, rx308_done947
    lt rx308_pos, 0, rx308_fail949
    eq $I19, 0, rx308_fail949
    nqp_islist $I20, rx308_cstack
    unless $I20, rx308_jump950
    elements $I18, rx308_bstack
    le $I18, 0, rx308_cut951
    dec $I18
    set $I18, rx308_bstack[$I18]
  rx308_cut951:
    assign rx308_cstack, $I18
  rx308_jump950:
    jump $I19
  rx308_done947:
    rx308_cur."!cursor_fail"()
    .return (rx308_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_69_1349901746.339_caps" :subid("cuid_memo_136_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_69_1349901746.339_nfa" :subid("cuid_memo_137_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 65
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "obs"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<z>" :subid("cuid_70_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 181
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx311_tgt
    .local int rx311_pos
    .local int rx311_off
    .local int rx311_eos
    .local int rx311_rep
    .local pmc rx311_cur
    .local pmc rx311_curclass
    .local pmc rx311_bstack
    .local pmc rx311_cstack
    (rx311_cur, rx311_tgt, rx311_pos, rx311_curclass, rx311_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx311_cur
    length rx311_eos, rx311_tgt
    eq $I19, 1, rx311_restart959
    gt rx311_pos, rx311_eos, rx311_fail960
    repr_get_attr_int $I11, self, rx311_curclass, "$!from"
    ne $I11, -1, rxscan312_done966
    goto rxscan312_scan965
  rxscan312_loop964:
    inc rx311_pos
    gt rx311_pos, rx311_eos, rx311_fail960
    repr_bind_attr_int rx311_cur, rx311_curclass, "$!from", rx311_pos
  rxscan312_scan965:
    nqp_rxmark rx311_bstack, rxscan312_loop964, rx311_pos, 0
  rxscan312_done966:
    add $I11, rx311_pos, 1
    gt $I11, rx311_eos, rx311_fail960
    substr $S10, rx311_tgt, rx311_pos, 1
    ne $S10, ucs4:"z", rx311_fail960
    add rx311_pos, 1
    repr_bind_attr_int rx311_cur, rx311_curclass, "$!pos", rx311_pos
    $P11 = rx311_cur."obs"("\\\\z as end-of-string matcher", "$")
    repr_get_attr_int $I11, $P11, rx311_curclass, "$!pos"
    lt $I11, 0, rx311_fail960
    repr_get_attr_int rx311_pos, $P11, rx311_curclass, "$!pos"
    rx311_cur."!cursor_pass"(rx311_pos, "backslash:sym<z>", 'backtrack'=>1)
    .return (rx311_cur)
  rx311_restart959:
    repr_get_attr_obj rx311_cstack, rx311_cur, rx311_curclass, "$!cstack"
  rx311_fail960:
    unless rx311_bstack, rx311_done958
    pop $I19, rx311_bstack
    if_null rx311_cstack, rx311_cstack_done963
    unless rx311_cstack, rx311_cstack_done963
    dec $I19
    set $P11, rx311_cstack[$I19]
  rx311_cstack_done963:
    pop rx311_rep, rx311_bstack
    pop rx311_pos, rx311_bstack
    pop $I19, rx311_bstack
    lt rx311_pos, -1, rx311_done958
    lt rx311_pos, 0, rx311_fail960
    eq $I19, 0, rx311_fail960
    nqp_islist $I20, rx311_cstack
    unless $I20, rx311_jump961
    elements $I18, rx311_bstack
    le $I18, 0, rx311_cut962
    dec $I18
    set $I18, rx311_bstack[$I18]
  rx311_cut962:
    assign rx311_cstack, $I18
  rx311_jump961:
    jump $I19
  rx311_done958:
    rx311_cur."!cursor_fail"()
    .return (rx311_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_70_1349901746.339_caps" :subid("cuid_memo_138_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_70_1349901746.339_nfa" :subid("cuid_memo_139_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 122
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "obs"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<Z>" :subid("cuid_71_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 182
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx314_tgt
    .local int rx314_pos
    .local int rx314_off
    .local int rx314_eos
    .local int rx314_rep
    .local pmc rx314_cur
    .local pmc rx314_curclass
    .local pmc rx314_bstack
    .local pmc rx314_cstack
    (rx314_cur, rx314_tgt, rx314_pos, rx314_curclass, rx314_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx314_cur
    length rx314_eos, rx314_tgt
    eq $I19, 1, rx314_restart970
    gt rx314_pos, rx314_eos, rx314_fail971
    repr_get_attr_int $I11, self, rx314_curclass, "$!from"
    ne $I11, -1, rxscan315_done977
    goto rxscan315_scan976
  rxscan315_loop975:
    inc rx314_pos
    gt rx314_pos, rx314_eos, rx314_fail971
    repr_bind_attr_int rx314_cur, rx314_curclass, "$!from", rx314_pos
  rxscan315_scan976:
    nqp_rxmark rx314_bstack, rxscan315_loop975, rx314_pos, 0
  rxscan315_done977:
    add $I11, rx314_pos, 1
    gt $I11, rx314_eos, rx314_fail971
    substr $S10, rx314_tgt, rx314_pos, 1
    ne $S10, ucs4:"Z", rx314_fail971
    add rx314_pos, 1
    repr_bind_attr_int rx314_cur, rx314_curclass, "$!pos", rx314_pos
    $P11 = rx314_cur."obs"("\\\\Z as end-of-string matcher", "\\\\n?$")
    repr_get_attr_int $I11, $P11, rx314_curclass, "$!pos"
    lt $I11, 0, rx314_fail971
    repr_get_attr_int rx314_pos, $P11, rx314_curclass, "$!pos"
    rx314_cur."!cursor_pass"(rx314_pos, "backslash:sym<Z>", 'backtrack'=>1)
    .return (rx314_cur)
  rx314_restart970:
    repr_get_attr_obj rx314_cstack, rx314_cur, rx314_curclass, "$!cstack"
  rx314_fail971:
    unless rx314_bstack, rx314_done969
    pop $I19, rx314_bstack
    if_null rx314_cstack, rx314_cstack_done974
    unless rx314_cstack, rx314_cstack_done974
    dec $I19
    set $P11, rx314_cstack[$I19]
  rx314_cstack_done974:
    pop rx314_rep, rx314_bstack
    pop rx314_pos, rx314_bstack
    pop $I19, rx314_bstack
    lt rx314_pos, -1, rx314_done969
    lt rx314_pos, 0, rx314_fail971
    eq $I19, 0, rx314_fail971
    nqp_islist $I20, rx314_cstack
    unless $I20, rx314_jump972
    elements $I18, rx314_bstack
    le $I18, 0, rx314_cut973
    dec $I18
    set $I18, rx314_bstack[$I18]
  rx314_cut973:
    assign rx314_cstack, $I18
  rx314_jump972:
    jump $I19
  rx314_done969:
    rx314_cur."!cursor_fail"()
    .return (rx314_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_71_1349901746.339_caps" :subid("cuid_memo_140_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_71_1349901746.339_nfa" :subid("cuid_memo_141_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 90
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "obs"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<Q>" :subid("cuid_72_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx317_tgt
    .local int rx317_pos
    .local int rx317_off
    .local int rx317_eos
    .local int rx317_rep
    .local pmc rx317_cur
    .local pmc rx317_curclass
    .local pmc rx317_bstack
    .local pmc rx317_cstack
    (rx317_cur, rx317_tgt, rx317_pos, rx317_curclass, rx317_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx317_cur
    length rx317_eos, rx317_tgt
    eq $I19, 1, rx317_restart981
    gt rx317_pos, rx317_eos, rx317_fail982
    repr_get_attr_int $I11, self, rx317_curclass, "$!from"
    ne $I11, -1, rxscan318_done988
    goto rxscan318_scan987
  rxscan318_loop986:
    inc rx317_pos
    gt rx317_pos, rx317_eos, rx317_fail982
    repr_bind_attr_int rx317_cur, rx317_curclass, "$!from", rx317_pos
  rxscan318_scan987:
    nqp_rxmark rx317_bstack, rxscan318_loop986, rx317_pos, 0
  rxscan318_done988:
    add $I11, rx317_pos, 1
    gt $I11, rx317_eos, rx317_fail982
    substr $S10, rx317_tgt, rx317_pos, 1
    ne $S10, ucs4:"Q", rx317_fail982
    add rx317_pos, 1
    repr_bind_attr_int rx317_cur, rx317_curclass, "$!pos", rx317_pos
    $P11 = rx317_cur."obs"("\\\\Q as quotemeta", "quotes or literal variable match")
    repr_get_attr_int $I11, $P11, rx317_curclass, "$!pos"
    lt $I11, 0, rx317_fail982
    repr_get_attr_int rx317_pos, $P11, rx317_curclass, "$!pos"
    rx317_cur."!cursor_pass"(rx317_pos, "backslash:sym<Q>", 'backtrack'=>1)
    .return (rx317_cur)
  rx317_restart981:
    repr_get_attr_obj rx317_cstack, rx317_cur, rx317_curclass, "$!cstack"
  rx317_fail982:
    unless rx317_bstack, rx317_done980
    pop $I19, rx317_bstack
    if_null rx317_cstack, rx317_cstack_done985
    unless rx317_cstack, rx317_cstack_done985
    dec $I19
    set $P11, rx317_cstack[$I19]
  rx317_cstack_done985:
    pop rx317_rep, rx317_bstack
    pop rx317_pos, rx317_bstack
    pop $I19, rx317_bstack
    lt rx317_pos, -1, rx317_done980
    lt rx317_pos, 0, rx317_fail982
    eq $I19, 0, rx317_fail982
    nqp_islist $I20, rx317_cstack
    unless $I20, rx317_jump983
    elements $I18, rx317_bstack
    le $I18, 0, rx317_cut984
    dec $I18
    set $I18, rx317_bstack[$I18]
  rx317_cut984:
    assign rx317_cstack, $I18
  rx317_jump983:
    jump $I19
  rx317_done980:
    rx317_cur."!cursor_fail"()
    .return (rx317_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_72_1349901746.339_caps" :subid("cuid_memo_142_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_72_1349901746.339_nfa" :subid("cuid_memo_143_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 81
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "obs"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<unrec>" :subid("cuid_73_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    .param pmc _lex_param_0 
    .const 'Sub' $P5004 = 'cuid_164_1349901746.339' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    .local pmc rx320_curclass
    .local pmc rx320_bstack
    .local pmc rx320_cstack
    (rx320_cur, rx320_tgt, rx320_pos, rx320_curclass, rx320_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx320_cur
    length rx320_eos, rx320_tgt
    eq $I19, 1, rx320_restart992
    gt rx320_pos, rx320_eos, rx320_fail993
    repr_get_attr_int $I11, self, rx320_curclass, "$!from"
    ne $I11, -1, rxscan321_done999
    goto rxscan321_scan998
  rxscan321_loop997:
    inc rx320_pos
    gt rx320_pos, rx320_eos, rx320_fail993
    repr_bind_attr_int rx320_cur, rx320_curclass, "$!from", rx320_pos
  rxscan321_scan998:
    nqp_rxmark rx320_bstack, rxscan321_loop997, rx320_pos, 0
  rxscan321_done999:
    repr_bind_attr_int rx320_cur, rx320_curclass, "$!pos", rx320_pos
    store_lex unicode:"$\x{a2}", rx320_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_164_1349901746.339' 
    capture_lex $P5002
    $P5003 = $P5002()
    ge rx320_pos, rx320_eos, rx320_fail993
    is_cclass $I11, .CCLASS_WORD, rx320_tgt, rx320_pos
    unless $I11, rx320_fail993
    add rx320_pos, 1
    repr_bind_attr_int rx320_cur, rx320_curclass, "$!pos", rx320_pos
    $P11 = rx320_cur."panic"("Unrecognized backslash sequence")
    repr_get_attr_int $I11, $P11, rx320_curclass, "$!pos"
    lt $I11, 0, rx320_fail993
    repr_get_attr_int rx320_pos, $P11, rx320_curclass, "$!pos"
    rx320_cur."!cursor_pass"(rx320_pos, "backslash:sym<unrec>", 'backtrack'=>1)
    .return (rx320_cur)
  rx320_restart992:
    repr_get_attr_obj rx320_cstack, rx320_cur, rx320_curclass, "$!cstack"
  rx320_fail993:
    unless rx320_bstack, rx320_done991
    pop $I19, rx320_bstack
    if_null rx320_cstack, rx320_cstack_done996
    unless rx320_cstack, rx320_cstack_done996
    dec $I19
    set $P11, rx320_cstack[$I19]
  rx320_cstack_done996:
    pop rx320_rep, rx320_bstack
    pop rx320_pos, rx320_bstack
    pop $I19, rx320_bstack
    lt rx320_pos, -1, rx320_done991
    lt rx320_pos, 0, rx320_fail993
    eq $I19, 0, rx320_fail993
    nqp_islist $I20, rx320_cstack
    unless $I20, rx320_jump994
    elements $I18, rx320_bstack
    le $I18, 0, rx320_cut995
    dec $I18
    set $I18, rx320_bstack[$I18]
  rx320_cut995:
    assign rx320_cstack, $I18
  rx320_jump994:
    jump $I19
  rx320_done991:
    rx320_cur."!cursor_fail"()
    .return (rx320_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_73_1349901746.339_caps" :subid("cuid_memo_144_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1349901746.339") :anon :lex :outer("cuid_73_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184

    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<misc>" :subid("cuid_74_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 185
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx323_tgt
    .local int rx323_pos
    .local int rx323_off
    .local int rx323_eos
    .local int rx323_rep
    .local pmc rx323_cur
    .local pmc rx323_curclass
    .local pmc rx323_bstack
    .local pmc rx323_cstack
    (rx323_cur, rx323_tgt, rx323_pos, rx323_curclass, rx323_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx323_cur
    length rx323_eos, rx323_tgt
    eq $I19, 1, rx323_restart1003
    gt rx323_pos, rx323_eos, rx323_fail1004
    repr_get_attr_int $I11, self, rx323_curclass, "$!from"
    ne $I11, -1, rxscan324_done1010
    goto rxscan324_scan1009
  rxscan324_loop1008:
    inc rx323_pos
    gt rx323_pos, rx323_eos, rx323_fail1004
    repr_bind_attr_int rx323_cur, rx323_curclass, "$!from", rx323_pos
  rxscan324_scan1009:
    nqp_rxmark rx323_bstack, rxscan324_loop1008, rx323_pos, 0
  rxscan324_done1010:
    ge rx323_pos, rx323_eos, rx323_fail1004
    is_cclass $I11, .CCLASS_WORD, rx323_tgt, rx323_pos
    if $I11, rx323_fail1004
    add rx323_pos, 1
    rx323_cur."!cursor_pass"(rx323_pos, "backslash:sym<misc>", 'backtrack'=>1)
    .return (rx323_cur)
  rx323_restart1003:
    repr_get_attr_obj rx323_cstack, rx323_cur, rx323_curclass, "$!cstack"
  rx323_fail1004:
    unless rx323_bstack, rx323_done1002
    pop $I19, rx323_bstack
    if_null rx323_cstack, rx323_cstack_done1007
    unless rx323_cstack, rx323_cstack_done1007
    dec $I19
    set $P11, rx323_cstack[$I19]
  rx323_cstack_done1007:
    pop rx323_rep, rx323_bstack
    pop rx323_pos, rx323_bstack
    pop $I19, rx323_bstack
    lt rx323_pos, -1, rx323_done1002
    lt rx323_pos, 0, rx323_fail1004
    eq $I19, 0, rx323_fail1004
    nqp_islist $I20, rx323_cstack
    unless $I20, rx323_jump1005
    elements $I18, rx323_bstack
    le $I18, 0, rx323_cut1006
    dec $I18
    set $I18, rx323_bstack[$I18]
  rx323_cut1006:
    assign rx323_cstack, $I18
  rx323_jump1005:
    jump $I19
  rx323_done1002:
    rx323_cur."!cursor_fail"()
    .return (rx323_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_74_1349901746.339_caps" :subid("cuid_memo_145_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_74_1349901746.339_nfa" :subid("cuid_memo_146_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 5
    push $P5003, $P5004
    box $P5005, 8192
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion" :subid("cuid_75_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 187
    .param pmc self 
    $P5001 = self."!protoregex"("assertion")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<?>" :subid("cuid_77_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 189
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_76_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx325_tgt
    .local int rx325_pos
    .local int rx325_off
    .local int rx325_eos
    .local int rx325_rep
    .local pmc rx325_cur
    .local pmc rx325_curclass
    .local pmc rx325_bstack
    .local pmc rx325_cstack
    (rx325_cur, rx325_tgt, rx325_pos, rx325_curclass, rx325_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx325_cur
    length rx325_eos, rx325_tgt
    eq $I19, 1, rx325_restart1013
    gt rx325_pos, rx325_eos, rx325_fail1014
    repr_get_attr_int $I11, self, rx325_curclass, "$!from"
    ne $I11, -1, rxscan326_done1020
    goto rxscan326_scan1019
  rxscan326_loop1018:
    inc rx325_pos
    gt rx325_pos, rx325_eos, rx325_fail1014
    repr_bind_attr_int rx325_cur, rx325_curclass, "$!from", rx325_pos
  rxscan326_scan1019:
    nqp_rxmark rx325_bstack, rxscan326_loop1018, rx325_pos, 0
  rxscan326_done1020:
    add $I11, rx325_pos, 1
    gt $I11, rx325_eos, rx325_fail1014
    substr $S10, rx325_tgt, rx325_pos, 1
    ne $S10, ucs4:"?", rx325_fail1014
    add rx325_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt327_01022
    nqp_push_label $P11, alt327_11033
    nqp_rxmark rx325_bstack, alt327_end1021, -1, 0
    rx325_cur."!alt"(rx325_pos, "alt_nfa__13_1349901747.06", $P11)
    goto rx325_fail1014
  alt327_01022:
    .const 'Sub' $P5001 = 'cuid_76_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx325_cur, rx325_curclass, "$!pos", rx325_pos
    $P11 = rx325_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx325_curclass, "$!pos"
    lt $I11, 0, rx325_fail1014
    goto alt327_end1021
  alt327_11033:
    repr_bind_attr_int rx325_cur, rx325_curclass, "$!pos", rx325_pos
    $P11 = rx325_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx325_curclass, "$!pos"
    lt $I11, 0, rx325_fail1014
    nqp_rxmark rx325_bstack, rxsubrule330_pass1034, -1, 0
  rxsubrule330_pass1034:
    rx325_cstack = rx325_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx325_pos, $P11, rx325_curclass, "$!pos"
    goto alt327_end1021
  alt327_end1021:
    nqp_rxcommit rx325_bstack, alt327_end1021
    rx325_cur."!cursor_pass"(rx325_pos, "assertion:sym<?>", 'backtrack'=>1)
    .return (rx325_cur)
  rx325_restart1013:
    repr_get_attr_obj rx325_cstack, rx325_cur, rx325_curclass, "$!cstack"
  rx325_fail1014:
    unless rx325_bstack, rx325_done1012
    pop $I19, rx325_bstack
    if_null rx325_cstack, rx325_cstack_done1017
    unless rx325_cstack, rx325_cstack_done1017
    dec $I19
    set $P11, rx325_cstack[$I19]
  rx325_cstack_done1017:
    pop rx325_rep, rx325_bstack
    pop rx325_pos, rx325_bstack
    pop $I19, rx325_bstack
    lt rx325_pos, -1, rx325_done1012
    lt rx325_pos, 0, rx325_fail1014
    eq $I19, 0, rx325_fail1014
    nqp_islist $I20, rx325_cstack
    unless $I20, rx325_jump1015
    elements $I18, rx325_bstack
    le $I18, 0, rx325_cut1016
    dec $I18
    set $I18, rx325_bstack[$I18]
  rx325_cut1016:
    assign rx325_cstack, $I18
  rx325_jump1015:
    jump $I19
  rx325_done1012:
    rx325_cur."!cursor_fail"()
    .return (rx325_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_77_1349901746.339_caps" :subid("cuid_memo_147_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_77_1349901746.339_nfa" :subid("cuid_memo_148_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 63
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 62
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 8
    push $P5007, $P5011
    box $P5012, "assertion"
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 0
    push $P5014, $P5015
    box $P5016, 0
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5001, $P5014
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_77_1349901746.339_alt_nfa__13_1349901747.06" :subid("cuid_memo_149_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 62
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 0
    push $P5008, $P5009
    box $P5010, 0
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "assertion"
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5012, $P5014
    push $P5001, $P5012
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_76_1349901746.339") :anon :lex :outer("cuid_77_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx328_tgt
    .local int rx328_pos
    .local int rx328_off
    .local int rx328_eos
    .local int rx328_rep
    .local pmc rx328_cur
    .local pmc rx328_curclass
    .local pmc rx328_bstack
    .local pmc rx328_cstack
    (rx328_cur, rx328_tgt, rx328_pos, rx328_curclass, rx328_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx328_cur
    length rx328_eos, rx328_tgt
    eq $I19, 1, rx328_restart1025
    gt rx328_pos, rx328_eos, rx328_fail1026
    repr_get_attr_int $I11, self, rx328_curclass, "$!from"
    ne $I11, -1, rxscan329_done1032
    goto rxscan329_scan1031
  rxscan329_loop1030:
    inc rx328_pos
    gt rx328_pos, rx328_eos, rx328_fail1026
    repr_bind_attr_int rx328_cur, rx328_curclass, "$!from", rx328_pos
  rxscan329_scan1031:
    nqp_rxmark rx328_bstack, rxscan329_loop1030, rx328_pos, 0
  rxscan329_done1032:
    add $I11, rx328_pos, 1
    gt $I11, rx328_eos, rx328_fail1026
    substr $S10, rx328_tgt, rx328_pos, 1
    ne $S10, ucs4:">", rx328_fail1026
    add rx328_pos, 1
    rx328_cur."!cursor_pass"(rx328_pos, 'backtrack'=>1)
    .return (rx328_cur)
  rx328_restart1025:
    repr_get_attr_obj rx328_cstack, rx328_cur, rx328_curclass, "$!cstack"
  rx328_fail1026:
    unless rx328_bstack, rx328_done1024
    pop $I19, rx328_bstack
    if_null rx328_cstack, rx328_cstack_done1029
    unless rx328_cstack, rx328_cstack_done1029
    dec $I19
    set $P11, rx328_cstack[$I19]
  rx328_cstack_done1029:
    pop rx328_rep, rx328_bstack
    pop rx328_pos, rx328_bstack
    pop $I19, rx328_bstack
    lt rx328_pos, -1, rx328_done1024
    lt rx328_pos, 0, rx328_fail1026
    eq $I19, 0, rx328_fail1026
    nqp_islist $I20, rx328_cstack
    unless $I20, rx328_jump1027
    elements $I18, rx328_bstack
    le $I18, 0, rx328_cut1028
    dec $I18
    set $I18, rx328_bstack[$I18]
  rx328_cut1028:
    assign rx328_cstack, $I18
  rx328_jump1027:
    jump $I19
  rx328_done1024:
    rx328_cur."!cursor_fail"()
    .return (rx328_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_76_1349901746.339_caps" :subid("cuid_memo_150_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_76_1349901746.339_nfa" :subid("cuid_memo_151_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 62
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<!>" :subid("cuid_79_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 190
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_78_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx331_tgt
    .local int rx331_pos
    .local int rx331_off
    .local int rx331_eos
    .local int rx331_rep
    .local pmc rx331_cur
    .local pmc rx331_curclass
    .local pmc rx331_bstack
    .local pmc rx331_cstack
    (rx331_cur, rx331_tgt, rx331_pos, rx331_curclass, rx331_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx331_cur
    length rx331_eos, rx331_tgt
    eq $I19, 1, rx331_restart1037
    gt rx331_pos, rx331_eos, rx331_fail1038
    repr_get_attr_int $I11, self, rx331_curclass, "$!from"
    ne $I11, -1, rxscan332_done1044
    goto rxscan332_scan1043
  rxscan332_loop1042:
    inc rx331_pos
    gt rx331_pos, rx331_eos, rx331_fail1038
    repr_bind_attr_int rx331_cur, rx331_curclass, "$!from", rx331_pos
  rxscan332_scan1043:
    nqp_rxmark rx331_bstack, rxscan332_loop1042, rx331_pos, 0
  rxscan332_done1044:
    add $I11, rx331_pos, 1
    gt $I11, rx331_eos, rx331_fail1038
    substr $S10, rx331_tgt, rx331_pos, 1
    ne $S10, ucs4:"!", rx331_fail1038
    add rx331_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt333_01046
    nqp_push_label $P11, alt333_11057
    nqp_rxmark rx331_bstack, alt333_end1045, -1, 0
    rx331_cur."!alt"(rx331_pos, "alt_nfa__14_1349901747.072", $P11)
    goto rx331_fail1038
  alt333_01046:
    .const 'Sub' $P5001 = 'cuid_78_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx331_cur, rx331_curclass, "$!pos", rx331_pos
    $P11 = rx331_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx331_curclass, "$!pos"
    lt $I11, 0, rx331_fail1038
    goto alt333_end1045
  alt333_11057:
    repr_bind_attr_int rx331_cur, rx331_curclass, "$!pos", rx331_pos
    $P11 = rx331_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx331_curclass, "$!pos"
    lt $I11, 0, rx331_fail1038
    nqp_rxmark rx331_bstack, rxsubrule336_pass1058, -1, 0
  rxsubrule336_pass1058:
    rx331_cstack = rx331_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx331_pos, $P11, rx331_curclass, "$!pos"
    goto alt333_end1045
  alt333_end1045:
    nqp_rxcommit rx331_bstack, alt333_end1045
    rx331_cur."!cursor_pass"(rx331_pos, "assertion:sym<!>", 'backtrack'=>1)
    .return (rx331_cur)
  rx331_restart1037:
    repr_get_attr_obj rx331_cstack, rx331_cur, rx331_curclass, "$!cstack"
  rx331_fail1038:
    unless rx331_bstack, rx331_done1036
    pop $I19, rx331_bstack
    if_null rx331_cstack, rx331_cstack_done1041
    unless rx331_cstack, rx331_cstack_done1041
    dec $I19
    set $P11, rx331_cstack[$I19]
  rx331_cstack_done1041:
    pop rx331_rep, rx331_bstack
    pop rx331_pos, rx331_bstack
    pop $I19, rx331_bstack
    lt rx331_pos, -1, rx331_done1036
    lt rx331_pos, 0, rx331_fail1038
    eq $I19, 0, rx331_fail1038
    nqp_islist $I20, rx331_cstack
    unless $I20, rx331_jump1039
    elements $I18, rx331_bstack
    le $I18, 0, rx331_cut1040
    dec $I18
    set $I18, rx331_bstack[$I18]
  rx331_cut1040:
    assign rx331_cstack, $I18
  rx331_jump1039:
    jump $I19
  rx331_done1036:
    rx331_cur."!cursor_fail"()
    .return (rx331_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_79_1349901746.339_caps" :subid("cuid_memo_152_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_79_1349901746.339_nfa" :subid("cuid_memo_153_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 33
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 62
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 8
    push $P5007, $P5011
    box $P5012, "assertion"
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 0
    push $P5014, $P5015
    box $P5016, 0
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5001, $P5014
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_79_1349901746.339_alt_nfa__14_1349901747.072" :subid("cuid_memo_154_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 62
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 0
    push $P5008, $P5009
    box $P5010, 0
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "assertion"
    push $P5014, $P5016
    box $P5017, 0
    push $P5014, $P5017
    push $P5012, $P5014
    push $P5001, $P5012
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_78_1349901746.339") :anon :lex :outer("cuid_79_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx334_tgt
    .local int rx334_pos
    .local int rx334_off
    .local int rx334_eos
    .local int rx334_rep
    .local pmc rx334_cur
    .local pmc rx334_curclass
    .local pmc rx334_bstack
    .local pmc rx334_cstack
    (rx334_cur, rx334_tgt, rx334_pos, rx334_curclass, rx334_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx334_cur
    length rx334_eos, rx334_tgt
    eq $I19, 1, rx334_restart1049
    gt rx334_pos, rx334_eos, rx334_fail1050
    repr_get_attr_int $I11, self, rx334_curclass, "$!from"
    ne $I11, -1, rxscan335_done1056
    goto rxscan335_scan1055
  rxscan335_loop1054:
    inc rx334_pos
    gt rx334_pos, rx334_eos, rx334_fail1050
    repr_bind_attr_int rx334_cur, rx334_curclass, "$!from", rx334_pos
  rxscan335_scan1055:
    nqp_rxmark rx334_bstack, rxscan335_loop1054, rx334_pos, 0
  rxscan335_done1056:
    add $I11, rx334_pos, 1
    gt $I11, rx334_eos, rx334_fail1050
    substr $S10, rx334_tgt, rx334_pos, 1
    ne $S10, ucs4:">", rx334_fail1050
    add rx334_pos, 1
    rx334_cur."!cursor_pass"(rx334_pos, 'backtrack'=>1)
    .return (rx334_cur)
  rx334_restart1049:
    repr_get_attr_obj rx334_cstack, rx334_cur, rx334_curclass, "$!cstack"
  rx334_fail1050:
    unless rx334_bstack, rx334_done1048
    pop $I19, rx334_bstack
    if_null rx334_cstack, rx334_cstack_done1053
    unless rx334_cstack, rx334_cstack_done1053
    dec $I19
    set $P11, rx334_cstack[$I19]
  rx334_cstack_done1053:
    pop rx334_rep, rx334_bstack
    pop rx334_pos, rx334_bstack
    pop $I19, rx334_bstack
    lt rx334_pos, -1, rx334_done1048
    lt rx334_pos, 0, rx334_fail1050
    eq $I19, 0, rx334_fail1050
    nqp_islist $I20, rx334_cstack
    unless $I20, rx334_jump1051
    elements $I18, rx334_bstack
    le $I18, 0, rx334_cut1052
    dec $I18
    set $I18, rx334_bstack[$I18]
  rx334_cut1052:
    assign rx334_cstack, $I18
  rx334_jump1051:
    jump $I19
  rx334_done1048:
    rx334_cur."!cursor_fail"()
    .return (rx334_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_78_1349901746.339_caps" :subid("cuid_memo_155_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_78_1349901746.339_nfa" :subid("cuid_memo_156_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 62
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<|>" :subid("cuid_80_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx337_tgt
    .local int rx337_pos
    .local int rx337_off
    .local int rx337_eos
    .local int rx337_rep
    .local pmc rx337_cur
    .local pmc rx337_curclass
    .local pmc rx337_bstack
    .local pmc rx337_cstack
    (rx337_cur, rx337_tgt, rx337_pos, rx337_curclass, rx337_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx337_cur
    length rx337_eos, rx337_tgt
    eq $I19, 1, rx337_restart1061
    gt rx337_pos, rx337_eos, rx337_fail1062
    repr_get_attr_int $I11, self, rx337_curclass, "$!from"
    ne $I11, -1, rxscan338_done1068
    goto rxscan338_scan1067
  rxscan338_loop1066:
    inc rx337_pos
    gt rx337_pos, rx337_eos, rx337_fail1062
    repr_bind_attr_int rx337_cur, rx337_curclass, "$!from", rx337_pos
  rxscan338_scan1067:
    nqp_rxmark rx337_bstack, rxscan338_loop1066, rx337_pos, 0
  rxscan338_done1068:
    add $I11, rx337_pos, 1
    gt $I11, rx337_eos, rx337_fail1062
    substr $S10, rx337_tgt, rx337_pos, 1
    ne $S10, ucs4:"|", rx337_fail1062
    add rx337_pos, 1
    repr_bind_attr_int rx337_cur, rx337_curclass, "$!pos", rx337_pos
    $P11 = rx337_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx337_curclass, "$!pos"
    lt $I11, 0, rx337_fail1062
    nqp_rxmark rx337_bstack, rxsubrule339_pass1069, -1, 0
  rxsubrule339_pass1069:
    rx337_cstack = rx337_cur."!cursor_capture"($P11, "identifier")
    repr_get_attr_int rx337_pos, $P11, rx337_curclass, "$!pos"
    rx337_cur."!cursor_pass"(rx337_pos, "assertion:sym<|>", 'backtrack'=>1)
    .return (rx337_cur)
  rx337_restart1061:
    repr_get_attr_obj rx337_cstack, rx337_cur, rx337_curclass, "$!cstack"
  rx337_fail1062:
    unless rx337_bstack, rx337_done1060
    pop $I19, rx337_bstack
    if_null rx337_cstack, rx337_cstack_done1065
    unless rx337_cstack, rx337_cstack_done1065
    dec $I19
    set $P11, rx337_cstack[$I19]
  rx337_cstack_done1065:
    pop rx337_rep, rx337_bstack
    pop rx337_pos, rx337_bstack
    pop $I19, rx337_bstack
    lt rx337_pos, -1, rx337_done1060
    lt rx337_pos, 0, rx337_fail1062
    eq $I19, 0, rx337_fail1062
    nqp_islist $I20, rx337_cstack
    unless $I20, rx337_jump1063
    elements $I18, rx337_bstack
    le $I18, 0, rx337_cut1064
    dec $I18
    set $I18, rx337_bstack[$I18]
  rx337_cut1064:
    assign rx337_cstack, $I18
  rx337_jump1063:
    jump $I19
  rx337_done1060:
    rx337_cur."!cursor_fail"()
    .return (rx337_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_80_1349901746.339_caps" :subid("cuid_memo_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["identifier"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_80_1349901746.339_nfa" :subid("cuid_memo_158_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 124
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "identifier"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<method>" :subid("cuid_81_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 193
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx340_tgt
    .local int rx340_pos
    .local int rx340_off
    .local int rx340_eos
    .local int rx340_rep
    .local pmc rx340_cur
    .local pmc rx340_curclass
    .local pmc rx340_bstack
    .local pmc rx340_cstack
    (rx340_cur, rx340_tgt, rx340_pos, rx340_curclass, rx340_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx340_cur
    length rx340_eos, rx340_tgt
    eq $I19, 1, rx340_restart1072
    gt rx340_pos, rx340_eos, rx340_fail1073
    repr_get_attr_int $I11, self, rx340_curclass, "$!from"
    ne $I11, -1, rxscan341_done1079
    goto rxscan341_scan1078
  rxscan341_loop1077:
    inc rx340_pos
    gt rx340_pos, rx340_eos, rx340_fail1073
    repr_bind_attr_int rx340_cur, rx340_curclass, "$!from", rx340_pos
  rxscan341_scan1078:
    nqp_rxmark rx340_bstack, rxscan341_loop1077, rx340_pos, 0
  rxscan341_done1079:
    add $I11, rx340_pos, 1
    gt $I11, rx340_eos, rx340_fail1073
    substr $S10, rx340_tgt, rx340_pos, 1
    ne $S10, ucs4:".", rx340_fail1073
    add rx340_pos, 1
    repr_bind_attr_int rx340_cur, rx340_curclass, "$!pos", rx340_pos
    $P11 = rx340_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx340_curclass, "$!pos"
    lt $I11, 0, rx340_fail1073
    nqp_rxmark rx340_bstack, rxsubrule342_pass1080, -1, 0
  rxsubrule342_pass1080:
    rx340_cstack = rx340_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx340_pos, $P11, rx340_curclass, "$!pos"
    rx340_cur."!cursor_pass"(rx340_pos, "assertion:sym<method>", 'backtrack'=>1)
    .return (rx340_cur)
  rx340_restart1072:
    repr_get_attr_obj rx340_cstack, rx340_cur, rx340_curclass, "$!cstack"
  rx340_fail1073:
    unless rx340_bstack, rx340_done1071
    pop $I19, rx340_bstack
    if_null rx340_cstack, rx340_cstack_done1076
    unless rx340_cstack, rx340_cstack_done1076
    dec $I19
    set $P11, rx340_cstack[$I19]
  rx340_cstack_done1076:
    pop rx340_rep, rx340_bstack
    pop rx340_pos, rx340_bstack
    pop $I19, rx340_bstack
    lt rx340_pos, -1, rx340_done1071
    lt rx340_pos, 0, rx340_fail1073
    eq $I19, 0, rx340_fail1073
    nqp_islist $I20, rx340_cstack
    unless $I20, rx340_jump1074
    elements $I18, rx340_bstack
    le $I18, 0, rx340_cut1075
    dec $I18
    set $I18, rx340_bstack[$I18]
  rx340_cut1075:
    assign rx340_cstack, $I18
  rx340_jump1074:
    jump $I19
  rx340_done1071:
    rx340_cur."!cursor_fail"()
    .return (rx340_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_81_1349901746.339_caps" :subid("cuid_memo_159_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_81_1349901746.339_nfa" :subid("cuid_memo_160_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 46
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 8
    push $P5007, $P5008
    box $P5009, "assertion"
    push $P5007, $P5009
    box $P5010, 0
    push $P5007, $P5010
    push $P5001, $P5007
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<name>" :subid("cuid_83_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 197
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_82_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx343_tgt
    .local int rx343_pos
    .local int rx343_off
    .local int rx343_eos
    .local int rx343_rep
    .local pmc rx343_cur
    .local pmc rx343_curclass
    .local pmc rx343_bstack
    .local pmc rx343_cstack
    (rx343_cur, rx343_tgt, rx343_pos, rx343_curclass, rx343_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx343_cur
    length rx343_eos, rx343_tgt
    eq $I19, 1, rx343_restart1083
    gt rx343_pos, rx343_eos, rx343_fail1084
    repr_get_attr_int $I11, self, rx343_curclass, "$!from"
    ne $I11, -1, rxscan344_done1090
    goto rxscan344_scan1089
  rxscan344_loop1088:
    inc rx343_pos
    gt rx343_pos, rx343_eos, rx343_fail1084
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!from", rx343_pos
  rxscan344_scan1089:
    nqp_rxmark rx343_bstack, rxscan344_loop1088, rx343_pos, 0
  rxscan344_done1090:
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!pos", rx343_pos
    $P11 = rx343_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx343_curclass, "$!pos"
    lt $I11, 0, rx343_fail1084
    nqp_rxmark rx343_bstack, rxsubrule345_pass1091, -1, 0
  rxsubrule345_pass1091:
    rx343_cstack = rx343_cur."!cursor_capture"($P11, "longname")
    repr_get_attr_int rx343_pos, $P11, rx343_curclass, "$!pos"
    nqp_rxmark rx343_bstack, rxquantr346_done1093, rx343_pos, 0
  rxquantr346_loop1092:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt347_01095
    nqp_push_label $P11, alt347_11106
    nqp_push_label $P11, alt347_21108
    nqp_push_label $P11, alt347_31110
    nqp_push_label $P11, alt347_41112
    nqp_rxmark rx343_bstack, alt347_end1094, -1, 0
    rx343_cur."!alt"(rx343_pos, "alt_nfa__15_1349901747.105", $P11)
    goto rx343_fail1084
  alt347_01095:
    .const 'Sub' $P5001 = 'cuid_82_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!pos", rx343_pos
    $P11 = rx343_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx343_curclass, "$!pos"
    lt $I11, 0, rx343_fail1084
    goto alt347_end1094
  alt347_11106:
    add $I11, rx343_pos, 1
    gt $I11, rx343_eos, rx343_fail1084
    substr $S10, rx343_tgt, rx343_pos, 1
    ne $S10, ucs4:"=", rx343_fail1084
    add rx343_pos, 1
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!pos", rx343_pos
    $P11 = rx343_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx343_curclass, "$!pos"
    lt $I11, 0, rx343_fail1084
    nqp_rxmark rx343_bstack, rxsubrule350_pass1107, -1, 0
  rxsubrule350_pass1107:
    rx343_cstack = rx343_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx343_pos, $P11, rx343_curclass, "$!pos"
    goto alt347_end1094
  alt347_21108:
    add $I11, rx343_pos, 1
    gt $I11, rx343_eos, rx343_fail1084
    substr $S10, rx343_tgt, rx343_pos, 1
    ne $S10, ucs4:":", rx343_fail1084
    add rx343_pos, 1
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!pos", rx343_pos
    $P11 = rx343_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx343_curclass, "$!pos"
    lt $I11, 0, rx343_fail1084
    nqp_rxmark rx343_bstack, rxsubrule351_pass1109, -1, 0
  rxsubrule351_pass1109:
    rx343_cstack = rx343_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx343_pos, $P11, rx343_curclass, "$!pos"
    goto alt347_end1094
  alt347_31110:
    add $I11, rx343_pos, 1
    gt $I11, rx343_eos, rx343_fail1084
    substr $S10, rx343_tgt, rx343_pos, 1
    ne $S10, ucs4:"(", rx343_fail1084
    add rx343_pos, 1
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!pos", rx343_pos
    $P11 = rx343_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx343_curclass, "$!pos"
    lt $I11, 0, rx343_fail1084
    nqp_rxmark rx343_bstack, rxsubrule352_pass1111, -1, 0
  rxsubrule352_pass1111:
    rx343_cstack = rx343_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx343_pos, $P11, rx343_curclass, "$!pos"
    add $I11, rx343_pos, 1
    gt $I11, rx343_eos, rx343_fail1084
    substr $S10, rx343_tgt, rx343_pos, 1
    ne $S10, ucs4:")", rx343_fail1084
    add rx343_pos, 1
    goto alt347_end1094
  alt347_41112:
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!pos", rx343_pos
    $P11 = rx343_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx343_curclass, "$!pos"
    lt $I11, 0, rx343_fail1084
    repr_get_attr_int rx343_pos, $P11, rx343_curclass, "$!pos"
    repr_bind_attr_int rx343_cur, rx343_curclass, "$!pos", rx343_pos
    $P11 = rx343_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx343_curclass, "$!pos"
    lt $I11, 0, rx343_fail1084
    nqp_rxmark rx343_bstack, rxsubrule354_pass1114, -1, 0
  rxsubrule354_pass1114:
    rx343_cstack = rx343_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx343_pos, $P11, rx343_curclass, "$!pos"
    goto alt347_end1094
  alt347_end1094:
    nqp_rxpeek $I19, rx343_bstack, rxquantr346_done1093
    inc $I19
    inc $I19
    set rx343_rep, rx343_bstack[$I19]
    nqp_rxcommit rx343_bstack, rxquantr346_done1093
    inc rx343_rep
  rxquantr346_done1093:
    rx343_cur."!cursor_pass"(rx343_pos, "assertion:sym<name>", 'backtrack'=>1)
    .return (rx343_cur)
  rx343_restart1083:
    repr_get_attr_obj rx343_cstack, rx343_cur, rx343_curclass, "$!cstack"
  rx343_fail1084:
    unless rx343_bstack, rx343_done1082
    pop $I19, rx343_bstack
    if_null rx343_cstack, rx343_cstack_done1087
    unless rx343_cstack, rx343_cstack_done1087
    dec $I19
    set $P11, rx343_cstack[$I19]
  rx343_cstack_done1087:
    pop rx343_rep, rx343_bstack
    pop rx343_pos, rx343_bstack
    pop $I19, rx343_bstack
    lt rx343_pos, -1, rx343_done1082
    lt rx343_pos, 0, rx343_fail1084
    eq $I19, 0, rx343_fail1084
    nqp_islist $I20, rx343_cstack
    unless $I20, rx343_jump1085
    elements $I18, rx343_bstack
    le $I18, 0, rx343_cut1086
    dec $I18
    set $I18, rx343_bstack[$I18]
  rx343_cut1086:
    assign rx343_cstack, $I18
  rx343_jump1085:
    jump $I19
  rx343_done1082:
    rx343_cur."!cursor_fail"()
    .return (rx343_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_83_1349901746.339_caps" :subid("cuid_memo_161_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["longname"], $P5002
    box $P5003, 2
    set $P5001["assertion"], $P5003
    box $P5004, 2
    set $P5001["arglist"], $P5004
    box $P5005, 2
    set $P5001["nibbler"], $P5005
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_83_1349901746.339_nfa" :subid("cuid_memo_162_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 8
    push $P5003, $P5004
    box $P5005, "identifier"
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 62
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 2
    push $P5007, $P5011
    box $P5012, 61
    push $P5007, $P5012
    box $P5013, 4
    push $P5007, $P5013
    box $P5014, 2
    push $P5007, $P5014
    box $P5015, 58
    push $P5007, $P5015
    box $P5016, 5
    push $P5007, $P5016
    box $P5017, 2
    push $P5007, $P5017
    box $P5018, 40
    push $P5007, $P5018
    box $P5019, 6
    push $P5007, $P5019
    box $P5020, 8
    push $P5007, $P5020
    box $P5021, "normspace"
    push $P5007, $P5021
    box $P5022, 8
    push $P5007, $P5022
    box $P5023, 1
    push $P5007, $P5023
    box $P5024, 0
    push $P5007, $P5024
    box $P5025, 0
    push $P5007, $P5025
    push $P5001, $P5007
    new $P5026, 'ResizablePMCArray'
    box $P5027, 0
    push $P5026, $P5027
    box $P5028, 0
    push $P5026, $P5028
    box $P5029, 0
    push $P5026, $P5029
    push $P5001, $P5026
    new $P5030, 'ResizablePMCArray'
    box $P5031, 8
    push $P5030, $P5031
    box $P5032, "assertion"
    push $P5030, $P5032
    box $P5033, 0
    push $P5030, $P5033
    push $P5001, $P5030
    new $P5034, 'ResizablePMCArray'
    box $P5035, 8
    push $P5034, $P5035
    box $P5036, "arglist"
    push $P5034, $P5036
    box $P5037, 0
    push $P5034, $P5037
    push $P5001, $P5034
    new $P5038, 'ResizablePMCArray'
    box $P5039, 8
    push $P5038, $P5039
    box $P5040, "arglist"
    push $P5038, $P5040
    box $P5041, 7
    push $P5038, $P5041
    push $P5001, $P5038
    new $P5042, 'ResizablePMCArray'
    box $P5043, 2
    push $P5042, $P5043
    box $P5044, 41
    push $P5042, $P5044
    box $P5045, 0
    push $P5042, $P5045
    push $P5001, $P5042
    new $P5046, 'ResizablePMCArray'
    box $P5047, 8
    push $P5046, $P5047
    box $P5048, "nibbler"
    push $P5046, $P5048
    box $P5049, 0
    push $P5046, $P5049
    push $P5001, $P5046
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_83_1349901746.339_alt_nfa__15_1349901747.105" :subid("cuid_memo_163_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 62
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 0
    push $P5008, $P5009
    box $P5010, 0
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 61
    push $P5014, $P5016
    box $P5017, 2
    push $P5014, $P5017
    push $P5012, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 8
    push $P5018, $P5019
    box $P5020, "assertion"
    push $P5018, $P5020
    box $P5021, 0
    push $P5018, $P5021
    push $P5012, $P5018
    push $P5001, $P5012
    new $P5022, 'ResizablePMCArray'
    new $P5023, 'ResizablePMCArray'
    push $P5022, $P5023
    new $P5024, 'ResizablePMCArray'
    box $P5025, 2
    push $P5024, $P5025
    box $P5026, 58
    push $P5024, $P5026
    box $P5027, 2
    push $P5024, $P5027
    push $P5022, $P5024
    new $P5028, 'ResizablePMCArray'
    box $P5029, 8
    push $P5028, $P5029
    box $P5030, "arglist"
    push $P5028, $P5030
    box $P5031, 0
    push $P5028, $P5031
    push $P5022, $P5028
    push $P5001, $P5022
    new $P5032, 'ResizablePMCArray'
    new $P5033, 'ResizablePMCArray'
    push $P5032, $P5033
    new $P5034, 'ResizablePMCArray'
    box $P5035, 2
    push $P5034, $P5035
    box $P5036, 40
    push $P5034, $P5036
    box $P5037, 2
    push $P5034, $P5037
    push $P5032, $P5034
    new $P5038, 'ResizablePMCArray'
    box $P5039, 8
    push $P5038, $P5039
    box $P5040, "arglist"
    push $P5038, $P5040
    box $P5041, 3
    push $P5038, $P5041
    push $P5032, $P5038
    new $P5042, 'ResizablePMCArray'
    box $P5043, 2
    push $P5042, $P5043
    box $P5044, 41
    push $P5042, $P5044
    box $P5045, 0
    push $P5042, $P5045
    push $P5032, $P5042
    push $P5001, $P5032
    new $P5046, 'ResizablePMCArray'
    new $P5047, 'ResizablePMCArray'
    push $P5046, $P5047
    new $P5048, 'ResizablePMCArray'
    box $P5049, 8
    push $P5048, $P5049
    box $P5050, "normspace"
    push $P5048, $P5050
    box $P5051, 2
    push $P5048, $P5051
    push $P5046, $P5048
    new $P5052, 'ResizablePMCArray'
    box $P5053, 8
    push $P5052, $P5053
    box $P5054, "nibbler"
    push $P5052, $P5054
    box $P5055, 0
    push $P5052, $P5055
    push $P5046, $P5052
    push $P5001, $P5046
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_82_1349901746.339") :anon :lex :outer("cuid_83_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx348_tgt
    .local int rx348_pos
    .local int rx348_off
    .local int rx348_eos
    .local int rx348_rep
    .local pmc rx348_cur
    .local pmc rx348_curclass
    .local pmc rx348_bstack
    .local pmc rx348_cstack
    (rx348_cur, rx348_tgt, rx348_pos, rx348_curclass, rx348_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx348_cur
    length rx348_eos, rx348_tgt
    eq $I19, 1, rx348_restart1098
    gt rx348_pos, rx348_eos, rx348_fail1099
    repr_get_attr_int $I11, self, rx348_curclass, "$!from"
    ne $I11, -1, rxscan349_done1105
    goto rxscan349_scan1104
  rxscan349_loop1103:
    inc rx348_pos
    gt rx348_pos, rx348_eos, rx348_fail1099
    repr_bind_attr_int rx348_cur, rx348_curclass, "$!from", rx348_pos
  rxscan349_scan1104:
    nqp_rxmark rx348_bstack, rxscan349_loop1103, rx348_pos, 0
  rxscan349_done1105:
    add $I11, rx348_pos, 1
    gt $I11, rx348_eos, rx348_fail1099
    substr $S10, rx348_tgt, rx348_pos, 1
    ne $S10, ucs4:">", rx348_fail1099
    add rx348_pos, 1
    rx348_cur."!cursor_pass"(rx348_pos, 'backtrack'=>1)
    .return (rx348_cur)
  rx348_restart1098:
    repr_get_attr_obj rx348_cstack, rx348_cur, rx348_curclass, "$!cstack"
  rx348_fail1099:
    unless rx348_bstack, rx348_done1097
    pop $I19, rx348_bstack
    if_null rx348_cstack, rx348_cstack_done1102
    unless rx348_cstack, rx348_cstack_done1102
    dec $I19
    set $P11, rx348_cstack[$I19]
  rx348_cstack_done1102:
    pop rx348_rep, rx348_bstack
    pop rx348_pos, rx348_bstack
    pop $I19, rx348_bstack
    lt rx348_pos, -1, rx348_done1097
    lt rx348_pos, 0, rx348_fail1099
    eq $I19, 0, rx348_fail1099
    nqp_islist $I20, rx348_cstack
    unless $I20, rx348_jump1100
    elements $I18, rx348_bstack
    le $I18, 0, rx348_cut1101
    dec $I18
    set $I18, rx348_bstack[$I18]
  rx348_cut1101:
    assign rx348_cstack, $I18
  rx348_jump1100:
    jump $I19
  rx348_done1097:
    rx348_cur."!cursor_fail"()
    .return (rx348_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_82_1349901746.339_caps" :subid("cuid_memo_164_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_82_1349901746.339_nfa" :subid("cuid_memo_165_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 62
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<[>" :subid("cuid_85_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 208
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_84_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    .local pmc rx355_curclass
    .local pmc rx355_bstack
    .local pmc rx355_cstack
    (rx355_cur, rx355_tgt, rx355_pos, rx355_curclass, rx355_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx355_cur
    length rx355_eos, rx355_tgt
    eq $I19, 1, rx355_restart1117
    gt rx355_pos, rx355_eos, rx355_fail1118
    repr_get_attr_int $I11, self, rx355_curclass, "$!from"
    ne $I11, -1, rxscan356_done1124
    goto rxscan356_scan1123
  rxscan356_loop1122:
    inc rx355_pos
    gt rx355_pos, rx355_eos, rx355_fail1118
    repr_bind_attr_int rx355_cur, rx355_curclass, "$!from", rx355_pos
  rxscan356_scan1123:
    nqp_rxmark rx355_bstack, rxscan356_loop1122, rx355_pos, 0
  rxscan356_done1124:
    .const 'Sub' $P5001 = 'cuid_84_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx355_cur, rx355_curclass, "$!pos", rx355_pos
    $P11 = rx355_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx355_curclass, "$!pos"
    lt $I11, 0, rx355_fail1118
    nqp_rxmark rx355_bstack, rxquantr360_done1141, -1, 0
  rxquantr360_loop1140:
    repr_bind_attr_int rx355_cur, rx355_curclass, "$!pos", rx355_pos
    $P11 = rx355_cur."cclass_elem"()
    repr_get_attr_int $I11, $P11, rx355_curclass, "$!pos"
    lt $I11, 0, rx355_fail1118
    goto rxsubrule361_pass1142
  rxsubrule361_back1143:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx355_curclass, "$!pos"
    lt $I11, 0, rx355_fail1118
  rxsubrule361_pass1142:
    rx355_cstack = rx355_cur."!cursor_capture"($P11, "cclass_elem")
    set_addr $I11, rxsubrule361_back1143
    push rx355_bstack, $I11
    push rx355_bstack, 0
    push rx355_bstack, rx355_pos
    elements $I11, rx355_cstack
    push rx355_bstack, $I11
    repr_get_attr_int rx355_pos, $P11, rx355_curclass, "$!pos"
    nqp_rxpeek $I19, rx355_bstack, rxquantr360_done1141
    inc $I19
    inc $I19
    set rx355_rep, rx355_bstack[$I19]
    nqp_rxcommit rx355_bstack, rxquantr360_done1141
    inc rx355_rep
    nqp_rxmark rx355_bstack, rxquantr360_done1141, rx355_pos, rx355_rep
    goto rxquantr360_loop1140
  rxquantr360_done1141:
    rx355_cur."!cursor_pass"(rx355_pos, "assertion:sym<[>", 'backtrack'=>1)
    .return (rx355_cur)
  rx355_restart1117:
    repr_get_attr_obj rx355_cstack, rx355_cur, rx355_curclass, "$!cstack"
  rx355_fail1118:
    unless rx355_bstack, rx355_done1116
    pop $I19, rx355_bstack
    if_null rx355_cstack, rx355_cstack_done1121
    unless rx355_cstack, rx355_cstack_done1121
    dec $I19
    set $P11, rx355_cstack[$I19]
  rx355_cstack_done1121:
    pop rx355_rep, rx355_bstack
    pop rx355_pos, rx355_bstack
    pop $I19, rx355_bstack
    lt rx355_pos, -1, rx355_done1116
    lt rx355_pos, 0, rx355_fail1118
    eq $I19, 0, rx355_fail1118
    nqp_islist $I20, rx355_cstack
    unless $I20, rx355_jump1119
    elements $I18, rx355_bstack
    le $I18, 0, rx355_cut1120
    dec $I18
    set $I18, rx355_bstack[$I18]
  rx355_cut1120:
    assign rx355_cstack, $I18
  rx355_jump1119:
    jump $I19
  rx355_done1116:
    rx355_cur."!cursor_fail"()
    .return (rx355_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_85_1349901746.339_caps" :subid("cuid_memo_166_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["cclass_elem"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_85_1349901746.339_nfa" :subid("cuid_memo_167_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 91
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 43
    push $P5003, $P5008
    box $P5009, 2
    push $P5003, $P5009
    box $P5010, 2
    push $P5003, $P5010
    box $P5011, 45
    push $P5003, $P5011
    box $P5012, 2
    push $P5003, $P5012
    box $P5013, 2
    push $P5003, $P5013
    box $P5014, 58
    push $P5003, $P5014
    box $P5015, 2
    push $P5003, $P5015
    push $P5001, $P5003
    new $P5016, 'ResizablePMCArray'
    box $P5017, 0
    push $P5016, $P5017
    box $P5018, 0
    push $P5016, $P5018
    box $P5019, 0
    push $P5016, $P5019
    push $P5001, $P5016
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_84_1349901746.339") :anon :lex :outer("cuid_85_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    .local pmc rx357_curclass
    .local pmc rx357_bstack
    .local pmc rx357_cstack
    (rx357_cur, rx357_tgt, rx357_pos, rx357_curclass, rx357_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx357_cur
    length rx357_eos, rx357_tgt
    eq $I19, 1, rx357_restart1127
    gt rx357_pos, rx357_eos, rx357_fail1128
    repr_get_attr_int $I11, self, rx357_curclass, "$!from"
    ne $I11, -1, rxscan358_done1134
    goto rxscan358_scan1133
  rxscan358_loop1132:
    inc rx357_pos
    gt rx357_pos, rx357_eos, rx357_fail1128
    repr_bind_attr_int rx357_cur, rx357_curclass, "$!from", rx357_pos
  rxscan358_scan1133:
    nqp_rxmark rx357_bstack, rxscan358_loop1132, rx357_pos, 0
  rxscan358_done1134:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt359_01136
    nqp_push_label $P11, alt359_11137
    nqp_push_label $P11, alt359_21138
    nqp_push_label $P11, alt359_31139
    nqp_rxmark rx357_bstack, alt359_end1135, -1, 0
    rx357_cur."!alt"(rx357_pos, "alt_nfa__16_1349901747.113", $P11)
    goto rx357_fail1128
  alt359_01136:
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail1128
    substr $S10, rx357_tgt, rx357_pos, 1
    ne $S10, ucs4:"[", rx357_fail1128
    add rx357_pos, 1
    goto alt359_end1135
  alt359_11137:
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail1128
    substr $S10, rx357_tgt, rx357_pos, 1
    ne $S10, ucs4:"+", rx357_fail1128
    add rx357_pos, 1
    goto alt359_end1135
  alt359_21138:
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail1128
    substr $S10, rx357_tgt, rx357_pos, 1
    ne $S10, ucs4:"-", rx357_fail1128
    add rx357_pos, 1
    goto alt359_end1135
  alt359_31139:
    add $I11, rx357_pos, 1
    gt $I11, rx357_eos, rx357_fail1128
    substr $S10, rx357_tgt, rx357_pos, 1
    ne $S10, ucs4:":", rx357_fail1128
    add rx357_pos, 1
    goto alt359_end1135
  alt359_end1135:
    rx357_cur."!cursor_pass"(rx357_pos, 'backtrack'=>1)
    .return (rx357_cur)
  rx357_restart1127:
    repr_get_attr_obj rx357_cstack, rx357_cur, rx357_curclass, "$!cstack"
  rx357_fail1128:
    unless rx357_bstack, rx357_done1126
    pop $I19, rx357_bstack
    if_null rx357_cstack, rx357_cstack_done1131
    unless rx357_cstack, rx357_cstack_done1131
    dec $I19
    set $P11, rx357_cstack[$I19]
  rx357_cstack_done1131:
    pop rx357_rep, rx357_bstack
    pop rx357_pos, rx357_bstack
    pop $I19, rx357_bstack
    lt rx357_pos, -1, rx357_done1126
    lt rx357_pos, 0, rx357_fail1128
    eq $I19, 0, rx357_fail1128
    nqp_islist $I20, rx357_cstack
    unless $I20, rx357_jump1129
    elements $I18, rx357_bstack
    le $I18, 0, rx357_cut1130
    dec $I18
    set $I18, rx357_bstack[$I18]
  rx357_cut1130:
    assign rx357_cstack, $I18
  rx357_jump1129:
    jump $I19
  rx357_done1126:
    rx357_cur."!cursor_fail"()
    .return (rx357_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_84_1349901746.339_caps" :subid("cuid_memo_168_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_84_1349901746.339_nfa" :subid("cuid_memo_169_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 91
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 43
    push $P5003, $P5008
    box $P5009, 0
    push $P5003, $P5009
    box $P5010, 2
    push $P5003, $P5010
    box $P5011, 45
    push $P5003, $P5011
    box $P5012, 0
    push $P5003, $P5012
    box $P5013, 2
    push $P5003, $P5013
    box $P5014, 58
    push $P5003, $P5014
    box $P5015, 0
    push $P5003, $P5015
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_84_1349901746.339_alt_nfa__16_1349901747.113" :subid("cuid_memo_170_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 91
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 43
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5008, $P5010
    push $P5001, $P5008
    new $P5014, 'ResizablePMCArray'
    new $P5015, 'ResizablePMCArray'
    push $P5014, $P5015
    new $P5016, 'ResizablePMCArray'
    box $P5017, 2
    push $P5016, $P5017
    box $P5018, 45
    push $P5016, $P5018
    box $P5019, 0
    push $P5016, $P5019
    push $P5014, $P5016
    push $P5001, $P5014
    new $P5020, 'ResizablePMCArray'
    new $P5021, 'ResizablePMCArray'
    push $P5020, $P5021
    new $P5022, 'ResizablePMCArray'
    box $P5023, 2
    push $P5022, $P5023
    box $P5024, 58
    push $P5022, $P5024
    box $P5025, 0
    push $P5022, $P5025
    push $P5020, $P5022
    push $P5001, $P5020
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cclass_elem" :subid("cuid_92_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 210
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_91_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx362_tgt
    .local int rx362_pos
    .local int rx362_off
    .local int rx362_eos
    .local int rx362_rep
    .local pmc rx362_cur
    .local pmc rx362_curclass
    .local pmc rx362_bstack
    .local pmc rx362_cstack
    (rx362_cur, rx362_tgt, rx362_pos, rx362_curclass, rx362_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx362_cur
    length rx362_eos, rx362_tgt
    eq $I19, 1, rx362_restart1146
    gt rx362_pos, rx362_eos, rx362_fail1147
    repr_get_attr_int $I11, self, rx362_curclass, "$!from"
    ne $I11, -1, rxscan363_done1153
    goto rxscan363_scan1152
  rxscan363_loop1151:
    inc rx362_pos
    gt rx362_pos, rx362_eos, rx362_fail1147
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!from", rx362_pos
  rxscan363_scan1152:
    nqp_rxmark rx362_bstack, rxscan363_loop1151, rx362_pos, 0
  rxscan363_done1153:
    nqp_rxmark rx362_bstack, rxcap364_fail1155, rx362_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt365_01157
    nqp_push_label $P11, alt365_11158
    nqp_push_label $P11, alt365_21159
    nqp_rxmark rx362_bstack, alt365_end1156, -1, 0
    rx362_cur."!alt"(rx362_pos, "alt_nfa__17_1349901747.176", $P11)
    goto rx362_fail1147
  alt365_01157:
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail1147
    substr $S10, rx362_tgt, rx362_pos, 1
    ne $S10, ucs4:"+", rx362_fail1147
    add rx362_pos, 1
    goto alt365_end1156
  alt365_11158:
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail1147
    substr $S10, rx362_tgt, rx362_pos, 1
    ne $S10, ucs4:"-", rx362_fail1147
    add rx362_pos, 1
    goto alt365_end1156
  alt365_21159:
    goto alt365_end1156
  alt365_end1156:
    nqp_rxcommit rx362_bstack, alt365_end1156
    nqp_rxpeek $I19, rx362_bstack, rxcap364_fail1155
    inc $I19
    set $I11, rx362_bstack[$I19]
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!pos", rx362_pos
    $P11 = rx362_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx362_pos)
    rx362_cstack = rx362_cur."!cursor_capture"($P11, "sign")
    goto rxcap364_done1154
  rxcap364_fail1155:
    goto rx362_fail1147
  rxcap364_done1154:
    nqp_rxmark rx362_bstack, rxquantr367_done1162, rx362_pos, 0
  rxquantr367_loop1161:
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!pos", rx362_pos
    $P11 = rx362_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx362_curclass, "$!pos"
    lt $I11, 0, rx362_fail1147
    goto rxsubrule368_pass1163
  rxsubrule368_back1164:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx362_curclass, "$!pos"
    lt $I11, 0, rx362_fail1147
  rxsubrule368_pass1163:
    rx362_cstack = rx362_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule368_back1164
    push rx362_bstack, $I11
    push rx362_bstack, 0
    push rx362_bstack, rx362_pos
    elements $I11, rx362_cstack
    push rx362_bstack, $I11
    repr_get_attr_int rx362_pos, $P11, rx362_curclass, "$!pos"
    nqp_rxpeek $I19, rx362_bstack, rxquantr367_done1162
    inc $I19
    inc $I19
    set rx362_rep, rx362_bstack[$I19]
    nqp_rxcommit rx362_bstack, rxquantr367_done1162
    inc rx362_rep
  rxquantr367_done1162:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt369_01166
    nqp_push_label $P11, alt369_11265
    nqp_push_label $P11, alt369_21270
    nqp_rxmark rx362_bstack, alt369_end1165, -1, 0
    rx362_cur."!alt"(rx362_pos, "alt_nfa__18_1349901747.176", $P11)
    goto rx362_fail1147
  alt369_01166:
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail1147
    substr $S10, rx362_tgt, rx362_pos, 1
    ne $S10, ucs4:"[", rx362_fail1147
    add rx362_pos, 1
    nqp_rxmark rx362_bstack, rxquantr370_done1168, rx362_pos, 0
  rxquantr370_loop1167:
    .const 'Sub' $P5001 = 'cuid_91_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!pos", rx362_pos
    $P11 = rx362_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx362_curclass, "$!pos"
    lt $I11, 0, rx362_fail1147
    goto rxsubrule401_pass1261
  rxsubrule401_back1262:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx362_curclass, "$!pos"
    lt $I11, 0, rx362_fail1147
  rxsubrule401_pass1261:
    rx362_cstack = rx362_cur."!cursor_capture"($P11, "charspec")
    set_addr $I11, rxsubrule401_back1262
    push rx362_bstack, $I11
    push rx362_bstack, 0
    push rx362_bstack, rx362_pos
    elements $I11, rx362_cstack
    push rx362_bstack, $I11
    repr_get_attr_int rx362_pos, $P11, rx362_curclass, "$!pos"
    nqp_rxpeek $I19, rx362_bstack, rxquantr370_done1168
    inc $I19
    inc $I19
    set rx362_rep, rx362_bstack[$I19]
    nqp_rxcommit rx362_bstack, rxquantr370_done1168
    inc rx362_rep
    nqp_rxmark rx362_bstack, rxquantr370_done1168, rx362_pos, rx362_rep
    goto rxquantr370_loop1167
  rxquantr370_done1168:
    nqp_rxmark rx362_bstack, rxquantr402_done1264, rx362_pos, 0
  rxquantr402_loop1263:
    ge rx362_pos, rx362_eos, rx362_fail1147
    is_cclass $I11, .CCLASS_WHITESPACE, rx362_tgt, rx362_pos
    unless $I11, rx362_fail1147
    add rx362_pos, 1
    nqp_rxpeek $I19, rx362_bstack, rxquantr402_done1264
    inc $I19
    inc $I19
    set rx362_rep, rx362_bstack[$I19]
    nqp_rxcommit rx362_bstack, rxquantr402_done1264
    inc rx362_rep
    nqp_rxmark rx362_bstack, rxquantr402_done1264, rx362_pos, rx362_rep
    goto rxquantr402_loop1263
  rxquantr402_done1264:
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail1147
    substr $S10, rx362_tgt, rx362_pos, 1
    ne $S10, ucs4:"]", rx362_fail1147
    add rx362_pos, 1
    goto alt369_end1165
  alt369_11265:
    nqp_rxmark rx362_bstack, rxcap403_fail1267, rx362_pos, 0
    nqp_rxmark rx362_bstack, rxquantr404_done1269, -1, 0
  rxquantr404_loop1268:
    ge rx362_pos, rx362_eos, rx362_fail1147
    is_cclass $I11, .CCLASS_WORD, rx362_tgt, rx362_pos
    unless $I11, rx362_fail1147
    add rx362_pos, 1
    nqp_rxpeek $I19, rx362_bstack, rxquantr404_done1269
    inc $I19
    inc $I19
    set rx362_rep, rx362_bstack[$I19]
    nqp_rxcommit rx362_bstack, rxquantr404_done1269
    inc rx362_rep
    nqp_rxmark rx362_bstack, rxquantr404_done1269, rx362_pos, rx362_rep
    goto rxquantr404_loop1268
  rxquantr404_done1269:
    nqp_rxpeek $I19, rx362_bstack, rxcap403_fail1267
    inc $I19
    set $I11, rx362_bstack[$I19]
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!pos", rx362_pos
    $P11 = rx362_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx362_pos)
    rx362_cstack = rx362_cur."!cursor_capture"($P11, "name")
    goto rxcap403_done1266
  rxcap403_fail1267:
    goto rx362_fail1147
  rxcap403_done1266:
    goto alt369_end1165
  alt369_21270:
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail1147
    substr $S10, rx362_tgt, rx362_pos, 1
    ne $S10, ucs4:":", rx362_fail1147
    add rx362_pos, 1
    nqp_rxmark rx362_bstack, rxcap405_fail1272, rx362_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt406_01274
    nqp_push_label $P11, alt406_11275
    nqp_rxmark rx362_bstack, alt406_end1273, -1, 0
    rx362_cur."!alt"(rx362_pos, "alt_nfa__19_1349901747.177", $P11)
    goto rx362_fail1147
  alt406_01274:
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail1147
    substr $S10, rx362_tgt, rx362_pos, 1
    ne $S10, ucs4:"!", rx362_fail1147
    add rx362_pos, 1
    goto alt406_end1273
  alt406_11275:
    goto alt406_end1273
  alt406_end1273:
    nqp_rxcommit rx362_bstack, alt406_end1273
    nqp_rxpeek $I19, rx362_bstack, rxcap405_fail1272
    inc $I19
    set $I11, rx362_bstack[$I19]
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!pos", rx362_pos
    $P11 = rx362_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx362_pos)
    rx362_cstack = rx362_cur."!cursor_capture"($P11, "invert")
    goto rxcap405_done1271
  rxcap405_fail1272:
    goto rx362_fail1147
  rxcap405_done1271:
    nqp_rxmark rx362_bstack, rxcap408_fail1278, rx362_pos, 0
    nqp_rxmark rx362_bstack, rxquantr409_done1280, -1, 0
  rxquantr409_loop1279:
    ge rx362_pos, rx362_eos, rx362_fail1147
    is_cclass $I11, .CCLASS_WORD, rx362_tgt, rx362_pos
    unless $I11, rx362_fail1147
    add rx362_pos, 1
    nqp_rxpeek $I19, rx362_bstack, rxquantr409_done1280
    inc $I19
    inc $I19
    set rx362_rep, rx362_bstack[$I19]
    nqp_rxcommit rx362_bstack, rxquantr409_done1280
    inc rx362_rep
    nqp_rxmark rx362_bstack, rxquantr409_done1280, rx362_pos, rx362_rep
    goto rxquantr409_loop1279
  rxquantr409_done1280:
    nqp_rxpeek $I19, rx362_bstack, rxcap408_fail1278
    inc $I19
    set $I11, rx362_bstack[$I19]
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!pos", rx362_pos
    $P11 = rx362_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx362_pos)
    rx362_cstack = rx362_cur."!cursor_capture"($P11, "uniprop")
    goto rxcap408_done1277
  rxcap408_fail1278:
    goto rx362_fail1147
  rxcap408_done1277:
    goto alt369_end1165
  alt369_end1165:
    nqp_rxcommit rx362_bstack, alt369_end1165
    nqp_rxmark rx362_bstack, rxquantr410_done1282, rx362_pos, 0
  rxquantr410_loop1281:
    repr_bind_attr_int rx362_cur, rx362_curclass, "$!pos", rx362_pos
    $P11 = rx362_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx362_curclass, "$!pos"
    lt $I11, 0, rx362_fail1147
    goto rxsubrule411_pass1283
  rxsubrule411_back1284:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx362_curclass, "$!pos"
    lt $I11, 0, rx362_fail1147
  rxsubrule411_pass1283:
    rx362_cstack = rx362_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule411_back1284
    push rx362_bstack, $I11
    push rx362_bstack, 0
    push rx362_bstack, rx362_pos
    elements $I11, rx362_cstack
    push rx362_bstack, $I11
    repr_get_attr_int rx362_pos, $P11, rx362_curclass, "$!pos"
    nqp_rxpeek $I19, rx362_bstack, rxquantr410_done1282
    inc $I19
    inc $I19
    set rx362_rep, rx362_bstack[$I19]
    nqp_rxcommit rx362_bstack, rxquantr410_done1282
    inc rx362_rep
  rxquantr410_done1282:
    rx362_cur."!cursor_pass"(rx362_pos, "cclass_elem", 'backtrack'=>1)
    .return (rx362_cur)
  rx362_restart1146:
    repr_get_attr_obj rx362_cstack, rx362_cur, rx362_curclass, "$!cstack"
  rx362_fail1147:
    unless rx362_bstack, rx362_done1145
    pop $I19, rx362_bstack
    if_null rx362_cstack, rx362_cstack_done1150
    unless rx362_cstack, rx362_cstack_done1150
    dec $I19
    set $P11, rx362_cstack[$I19]
  rx362_cstack_done1150:
    pop rx362_rep, rx362_bstack
    pop rx362_pos, rx362_bstack
    pop $I19, rx362_bstack
    lt rx362_pos, -1, rx362_done1145
    lt rx362_pos, 0, rx362_fail1147
    eq $I19, 0, rx362_fail1147
    nqp_islist $I20, rx362_cstack
    unless $I20, rx362_jump1148
    elements $I18, rx362_bstack
    le $I18, 0, rx362_cut1149
    dec $I18
    set $I18, rx362_bstack[$I18]
  rx362_cut1149:
    assign rx362_cstack, $I18
  rx362_jump1148:
    jump $I19
  rx362_done1145:
    rx362_cur."!cursor_fail"()
    .return (rx362_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_92_1349901746.339_caps" :subid("cuid_memo_171_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sign"], $P5002
    box $P5003, 2
    set $P5001["charspec"], $P5003
    box $P5004, 0
    set $P5001["name"], $P5004
    box $P5005, 0
    set $P5001["invert"], $P5005
    box $P5006, 0
    set $P5001["uniprop"], $P5006
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_92_1349901746.339_nfa" :subid("cuid_memo_172_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 43
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 45
    push $P5003, $P5008
    box $P5009, 2
    push $P5003, $P5009
    box $P5010, 1
    push $P5003, $P5010
    box $P5011, 0
    push $P5003, $P5011
    box $P5012, 2
    push $P5003, $P5012
    push $P5001, $P5003
    new $P5013, 'ResizablePMCArray'
    box $P5014, 8
    push $P5013, $P5014
    box $P5015, "normspace"
    push $P5013, $P5015
    box $P5016, 3
    push $P5013, $P5016
    box $P5017, 1
    push $P5013, $P5017
    box $P5018, 0
    push $P5013, $P5018
    box $P5019, 3
    push $P5013, $P5019
    push $P5001, $P5013
    new $P5020, 'ResizablePMCArray'
    box $P5021, 2
    push $P5020, $P5021
    box $P5022, 91
    push $P5020, $P5022
    box $P5023, 4
    push $P5020, $P5023
    box $P5024, 1
    push $P5020, $P5024
    box $P5025, 0
    push $P5020, $P5025
    box $P5026, 8
    push $P5020, $P5026
    box $P5027, 2
    push $P5020, $P5027
    box $P5028, 58
    push $P5020, $P5028
    box $P5029, 10
    push $P5020, $P5029
    push $P5001, $P5020
    new $P5030, 'ResizablePMCArray'
    box $P5031, 0
    push $P5030, $P5031
    box $P5032, 0
    push $P5030, $P5032
    box $P5033, 0
    push $P5030, $P5033
    box $P5034, 1
    push $P5030, $P5034
    box $P5035, 0
    push $P5030, $P5035
    box $P5036, 5
    push $P5030, $P5036
    push $P5001, $P5030
    new $P5037, 'ResizablePMCArray'
    box $P5038, 4
    push $P5037, $P5038
    box $P5039, 32
    push $P5037, $P5039
    box $P5040, 5
    push $P5037, $P5040
    box $P5041, 1
    push $P5037, $P5041
    box $P5042, 0
    push $P5037, $P5042
    box $P5043, 6
    push $P5037, $P5043
    push $P5001, $P5037
    new $P5044, 'ResizablePMCArray'
    box $P5045, 2
    push $P5044, $P5045
    box $P5046, 93
    push $P5044, $P5046
    box $P5047, 7
    push $P5044, $P5047
    push $P5001, $P5044
    new $P5048, 'ResizablePMCArray'
    box $P5049, 8
    push $P5048, $P5049
    box $P5050, "normspace"
    push $P5048, $P5050
    box $P5051, 0
    push $P5048, $P5051
    box $P5052, 1
    push $P5048, $P5052
    box $P5053, 0
    push $P5048, $P5053
    box $P5054, 0
    push $P5048, $P5054
    push $P5001, $P5048
    new $P5055, 'ResizablePMCArray'
    box $P5056, 4
    push $P5055, $P5056
    box $P5057, 8192
    push $P5055, $P5057
    box $P5058, 9
    push $P5055, $P5058
    push $P5001, $P5055
    new $P5059, 'ResizablePMCArray'
    box $P5060, 1
    push $P5059, $P5060
    box $P5061, 0
    push $P5059, $P5061
    box $P5062, 8
    push $P5059, $P5062
    box $P5063, 1
    push $P5059, $P5063
    box $P5064, 0
    push $P5059, $P5064
    box $P5065, 7
    push $P5059, $P5065
    push $P5001, $P5059
    new $P5066, 'ResizablePMCArray'
    box $P5067, 2
    push $P5066, $P5067
    box $P5068, 33
    push $P5066, $P5068
    box $P5069, 11
    push $P5066, $P5069
    box $P5070, 1
    push $P5066, $P5070
    box $P5071, 0
    push $P5066, $P5071
    box $P5072, 11
    push $P5066, $P5072
    push $P5001, $P5066
    new $P5073, 'ResizablePMCArray'
    box $P5074, 1
    push $P5073, $P5074
    box $P5075, 0
    push $P5073, $P5075
    box $P5076, 12
    push $P5073, $P5076
    push $P5001, $P5073
    new $P5077, 'ResizablePMCArray'
    box $P5078, 4
    push $P5077, $P5078
    box $P5079, 8192
    push $P5077, $P5079
    box $P5080, 13
    push $P5077, $P5080
    push $P5001, $P5077
    new $P5081, 'ResizablePMCArray'
    box $P5082, 1
    push $P5081, $P5082
    box $P5083, 0
    push $P5081, $P5083
    box $P5084, 12
    push $P5081, $P5084
    box $P5085, 1
    push $P5081, $P5085
    box $P5086, 0
    push $P5081, $P5086
    box $P5087, 7
    push $P5081, $P5087
    push $P5001, $P5081
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_92_1349901746.339_alt_nfa__17_1349901747.176" :subid("cuid_memo_173_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 43
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 45
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5008, $P5010
    push $P5001, $P5008
    new $P5014, 'ResizablePMCArray'
    new $P5015, 'ResizablePMCArray'
    push $P5014, $P5015
    new $P5016, 'ResizablePMCArray'
    box $P5017, 1
    push $P5016, $P5017
    box $P5018, 0
    push $P5016, $P5018
    box $P5019, 0
    push $P5016, $P5019
    push $P5014, $P5016
    push $P5001, $P5014
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_92_1349901746.339_alt_nfa__19_1349901747.177" :subid("cuid_memo_174_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 33
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 1
    push $P5010, $P5011
    box $P5012, 0
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5008, $P5010
    push $P5001, $P5008
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_92_1349901746.339_alt_nfa__18_1349901747.176" :subid("cuid_memo_175_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 91
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 0
    push $P5008, $P5009
    box $P5010, 0
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    box $P5012, 1
    push $P5008, $P5012
    box $P5013, 0
    push $P5008, $P5013
    box $P5014, 3
    push $P5008, $P5014
    push $P5002, $P5008
    new $P5015, 'ResizablePMCArray'
    box $P5016, 4
    push $P5015, $P5016
    box $P5017, 32
    push $P5015, $P5017
    box $P5018, 3
    push $P5015, $P5018
    box $P5019, 1
    push $P5015, $P5019
    box $P5020, 0
    push $P5015, $P5020
    box $P5021, 4
    push $P5015, $P5021
    push $P5002, $P5015
    new $P5022, 'ResizablePMCArray'
    box $P5023, 2
    push $P5022, $P5023
    box $P5024, 93
    push $P5022, $P5024
    box $P5025, 0
    push $P5022, $P5025
    push $P5002, $P5022
    push $P5001, $P5002
    new $P5026, 'ResizablePMCArray'
    new $P5027, 'ResizablePMCArray'
    push $P5026, $P5027
    new $P5028, 'ResizablePMCArray'
    box $P5029, 1
    push $P5028, $P5029
    box $P5030, 0
    push $P5028, $P5030
    box $P5031, 2
    push $P5028, $P5031
    push $P5026, $P5028
    new $P5032, 'ResizablePMCArray'
    box $P5033, 4
    push $P5032, $P5033
    box $P5034, 8192
    push $P5032, $P5034
    box $P5035, 3
    push $P5032, $P5035
    push $P5026, $P5032
    new $P5036, 'ResizablePMCArray'
    box $P5037, 1
    push $P5036, $P5037
    box $P5038, 0
    push $P5036, $P5038
    box $P5039, 2
    push $P5036, $P5039
    box $P5040, 1
    push $P5036, $P5040
    box $P5041, 0
    push $P5036, $P5041
    box $P5042, 0
    push $P5036, $P5042
    push $P5026, $P5036
    push $P5001, $P5026
    new $P5043, 'ResizablePMCArray'
    new $P5044, 'ResizablePMCArray'
    push $P5043, $P5044
    new $P5045, 'ResizablePMCArray'
    box $P5046, 2
    push $P5045, $P5046
    box $P5047, 58
    push $P5045, $P5047
    box $P5048, 2
    push $P5045, $P5048
    push $P5043, $P5045
    new $P5049, 'ResizablePMCArray'
    box $P5050, 2
    push $P5049, $P5050
    box $P5051, 33
    push $P5049, $P5051
    box $P5052, 3
    push $P5049, $P5052
    box $P5053, 1
    push $P5049, $P5053
    box $P5054, 0
    push $P5049, $P5054
    box $P5055, 3
    push $P5049, $P5055
    push $P5043, $P5049
    new $P5056, 'ResizablePMCArray'
    box $P5057, 1
    push $P5056, $P5057
    box $P5058, 0
    push $P5056, $P5058
    box $P5059, 4
    push $P5056, $P5059
    push $P5043, $P5056
    new $P5060, 'ResizablePMCArray'
    box $P5061, 4
    push $P5060, $P5061
    box $P5062, 8192
    push $P5060, $P5062
    box $P5063, 5
    push $P5060, $P5063
    push $P5043, $P5060
    new $P5064, 'ResizablePMCArray'
    box $P5065, 1
    push $P5064, $P5065
    box $P5066, 0
    push $P5064, $P5066
    box $P5067, 4
    push $P5064, $P5067
    box $P5068, 1
    push $P5064, $P5068
    box $P5069, 0
    push $P5064, $P5069
    box $P5070, 0
    push $P5064, $P5070
    push $P5043, $P5064
    push $P5001, $P5043
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1349901746.339") :anon :lex :outer("cuid_92_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5004 = 'cuid_86_1349901746.339' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_88_1349901746.339' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_90_1349901746.339' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx371_tgt
    .local int rx371_pos
    .local int rx371_off
    .local int rx371_eos
    .local int rx371_rep
    .local pmc rx371_cur
    .local pmc rx371_curclass
    .local pmc rx371_bstack
    .local pmc rx371_cstack
    (rx371_cur, rx371_tgt, rx371_pos, rx371_curclass, rx371_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx371_cur
    length rx371_eos, rx371_tgt
    eq $I19, 1, rx371_restart1171
    gt rx371_pos, rx371_eos, rx371_fail1172
    repr_get_attr_int $I11, self, rx371_curclass, "$!from"
    ne $I11, -1, rxscan372_done1178
    goto rxscan372_scan1177
  rxscan372_loop1176:
    inc rx371_pos
    gt rx371_pos, rx371_eos, rx371_fail1172
    repr_bind_attr_int rx371_cur, rx371_curclass, "$!from", rx371_pos
  rxscan372_scan1177:
    nqp_rxmark rx371_bstack, rxscan372_loop1176, rx371_pos, 0
  rxscan372_done1178:
  alt373_01180:
    nqp_rxmark rx371_bstack, alt373_11196, rx371_pos, 0
    nqp_rxmark rx371_bstack, rxquantr374_done1182, rx371_pos, 0
  rxquantr374_loop1181:
    ge rx371_pos, rx371_eos, rx371_fail1172
    is_cclass $I11, .CCLASS_WHITESPACE, rx371_tgt, rx371_pos
    unless $I11, rx371_fail1172
    add rx371_pos, 1
    nqp_rxpeek $I19, rx371_bstack, rxquantr374_done1182
    inc $I19
    inc $I19
    set rx371_rep, rx371_bstack[$I19]
    nqp_rxcommit rx371_bstack, rxquantr374_done1182
    inc rx371_rep
    nqp_rxmark rx371_bstack, rxquantr374_done1182, rx371_pos, rx371_rep
    goto rxquantr374_loop1181
  rxquantr374_done1182:
    add $I11, rx371_pos, 1
    gt $I11, rx371_eos, rx371_fail1172
    substr $S10, rx371_tgt, rx371_pos, 1
    ne $S10, ucs4:"-", rx371_fail1172
    add rx371_pos, 1
    .const 'Sub' $P5001 = 'cuid_86_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx371_cur, rx371_curclass, "$!pos", rx371_pos
    $P11 = rx371_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx371_curclass, "$!pos"
    ge $I11, 0, rx371_fail1172
    repr_bind_attr_int rx371_cur, rx371_curclass, "$!pos", rx371_pos
    $P11 = rx371_cur."obs"("- as character range", ".. for range, for explicit - in character class, escape it or place as last thing")
    repr_get_attr_int $I11, $P11, rx371_curclass, "$!pos"
    lt $I11, 0, rx371_fail1172
    repr_get_attr_int rx371_pos, $P11, rx371_curclass, "$!pos"
    goto alt373_end1179
  alt373_11196:
    nqp_rxmark rx371_bstack, rxquantr379_done1198, rx371_pos, 0
  rxquantr379_loop1197:
    ge rx371_pos, rx371_eos, rx371_fail1172
    is_cclass $I11, .CCLASS_WHITESPACE, rx371_tgt, rx371_pos
    unless $I11, rx371_fail1172
    add rx371_pos, 1
    nqp_rxpeek $I19, rx371_bstack, rxquantr379_done1198
    inc $I19
    inc $I19
    set rx371_rep, rx371_bstack[$I19]
    nqp_rxcommit rx371_bstack, rxquantr379_done1198
    inc rx371_rep
    nqp_rxmark rx371_bstack, rxquantr379_done1198, rx371_pos, rx371_rep
    goto rxquantr379_loop1197
  rxquantr379_done1198:
    .const 'Sub' $P5002 = 'cuid_88_1349901746.339' 
    capture_lex $P5002
    repr_bind_attr_int rx371_cur, rx371_curclass, "$!pos", rx371_pos
    $P11 = rx371_cur.$P5002()
    repr_get_attr_int $I11, $P11, rx371_curclass, "$!pos"
    lt $I11, 0, rx371_fail1172
    nqp_rxmark rx371_bstack, rxsubrule388_pass1226, -1, 0
  rxsubrule388_pass1226:
    rx371_cstack = rx371_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx371_pos, $P11, rx371_curclass, "$!pos"
    nqp_rxmark rx371_bstack, rxquantr389_done1228, rx371_pos, 0
  rxquantr389_loop1227:
    nqp_rxmark rx371_bstack, rxquantr390_done1230, rx371_pos, 0
  rxquantr390_loop1229:
    ge rx371_pos, rx371_eos, rx371_fail1172
    is_cclass $I11, .CCLASS_WHITESPACE, rx371_tgt, rx371_pos
    unless $I11, rx371_fail1172
    add rx371_pos, 1
    nqp_rxpeek $I19, rx371_bstack, rxquantr390_done1230
    inc $I19
    inc $I19
    set rx371_rep, rx371_bstack[$I19]
    nqp_rxcommit rx371_bstack, rxquantr390_done1230
    inc rx371_rep
    nqp_rxmark rx371_bstack, rxquantr390_done1230, rx371_pos, rx371_rep
    goto rxquantr390_loop1229
  rxquantr390_done1230:
    add $I11, rx371_pos, 2
    gt $I11, rx371_eos, rx371_fail1172
    substr $S10, rx371_tgt, rx371_pos, 2
    ne $S10, ucs4:"..", rx371_fail1172
    add rx371_pos, 2
    nqp_rxmark rx371_bstack, rxquantr391_done1232, rx371_pos, 0
  rxquantr391_loop1231:
    ge rx371_pos, rx371_eos, rx371_fail1172
    is_cclass $I11, .CCLASS_WHITESPACE, rx371_tgt, rx371_pos
    unless $I11, rx371_fail1172
    add rx371_pos, 1
    nqp_rxpeek $I19, rx371_bstack, rxquantr391_done1232
    inc $I19
    inc $I19
    set rx371_rep, rx371_bstack[$I19]
    nqp_rxcommit rx371_bstack, rxquantr391_done1232
    inc rx371_rep
    nqp_rxmark rx371_bstack, rxquantr391_done1232, rx371_pos, rx371_rep
    goto rxquantr391_loop1231
  rxquantr391_done1232:
    .const 'Sub' $P5003 = 'cuid_90_1349901746.339' 
    capture_lex $P5003
    repr_bind_attr_int rx371_cur, rx371_curclass, "$!pos", rx371_pos
    $P11 = rx371_cur.$P5003()
    repr_get_attr_int $I11, $P11, rx371_curclass, "$!pos"
    lt $I11, 0, rx371_fail1172
    nqp_rxmark rx371_bstack, rxsubrule400_pass1260, -1, 0
  rxsubrule400_pass1260:
    rx371_cstack = rx371_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx371_pos, $P11, rx371_curclass, "$!pos"
    nqp_rxpeek $I19, rx371_bstack, rxquantr389_done1228
    inc $I19
    inc $I19
    set rx371_rep, rx371_bstack[$I19]
    nqp_rxcommit rx371_bstack, rxquantr389_done1228
    inc rx371_rep
  rxquantr389_done1228:
  alt373_end1179:
    rx371_cur."!cursor_pass"(rx371_pos, 'backtrack'=>1)
    .return (rx371_cur)
  rx371_restart1171:
    repr_get_attr_obj rx371_cstack, rx371_cur, rx371_curclass, "$!cstack"
  rx371_fail1172:
    unless rx371_bstack, rx371_done1170
    pop $I19, rx371_bstack
    if_null rx371_cstack, rx371_cstack_done1175
    unless rx371_cstack, rx371_cstack_done1175
    dec $I19
    set $P11, rx371_cstack[$I19]
  rx371_cstack_done1175:
    pop rx371_rep, rx371_bstack
    pop rx371_pos, rx371_bstack
    pop $I19, rx371_bstack
    lt rx371_pos, -1, rx371_done1170
    lt rx371_pos, 0, rx371_fail1172
    eq $I19, 0, rx371_fail1172
    nqp_islist $I20, rx371_cstack
    unless $I20, rx371_jump1173
    elements $I18, rx371_bstack
    le $I18, 0, rx371_cut1174
    dec $I18
    set $I18, rx371_bstack[$I18]
  rx371_cut1174:
    assign rx371_cstack, $I18
  rx371_jump1173:
    jump $I19
  rx371_done1170:
    rx371_cur."!cursor_fail"()
    .return (rx371_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_91_1349901746.339_caps" :subid("cuid_memo_176_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 1
    set $P5001["0"], $P5002
    box $P5003, 3
    set $P5001["1"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_86_1349901746.339") :anon :lex :outer("cuid_91_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    .local pmc rx375_curclass
    .local pmc rx375_bstack
    .local pmc rx375_cstack
    (rx375_cur, rx375_tgt, rx375_pos, rx375_curclass, rx375_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx375_cur
    length rx375_eos, rx375_tgt
    eq $I19, 1, rx375_restart1185
    gt rx375_pos, rx375_eos, rx375_fail1186
    repr_get_attr_int $I11, self, rx375_curclass, "$!from"
    ne $I11, -1, rxscan376_done1192
    goto rxscan376_scan1191
  rxscan376_loop1190:
    inc rx375_pos
    gt rx375_pos, rx375_eos, rx375_fail1186
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!from", rx375_pos
  rxscan376_scan1191:
    nqp_rxmark rx375_bstack, rxscan376_loop1190, rx375_pos, 0
  rxscan376_done1192:
    nqp_rxmark rx375_bstack, rxquantr377_done1194, rx375_pos, 0
  rxquantr377_loop1193:
    ge rx375_pos, rx375_eos, rx375_fail1186
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1186
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr377_done1194
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr377_done1194
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr377_done1194, rx375_pos, rx375_rep
    goto rxquantr377_loop1193
  rxquantr377_done1194:
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail1186
    substr $S10, rx375_tgt, rx375_pos, 1
    ne $S10, ucs4:"]", rx375_fail1186
    add rx375_pos, 1
    rx375_cur."!cursor_pass"(rx375_pos, 'backtrack'=>1)
    .return (rx375_cur)
  rx375_restart1185:
    repr_get_attr_obj rx375_cstack, rx375_cur, rx375_curclass, "$!cstack"
  rx375_fail1186:
    unless rx375_bstack, rx375_done1184
    pop $I19, rx375_bstack
    if_null rx375_cstack, rx375_cstack_done1189
    unless rx375_cstack, rx375_cstack_done1189
    dec $I19
    set $P11, rx375_cstack[$I19]
  rx375_cstack_done1189:
    pop rx375_rep, rx375_bstack
    pop rx375_pos, rx375_bstack
    pop $I19, rx375_bstack
    lt rx375_pos, -1, rx375_done1184
    lt rx375_pos, 0, rx375_fail1186
    eq $I19, 0, rx375_fail1186
    nqp_islist $I20, rx375_cstack
    unless $I20, rx375_jump1187
    elements $I18, rx375_bstack
    le $I18, 0, rx375_cut1188
    dec $I18
    set $I18, rx375_bstack[$I18]
  rx375_cut1188:
    assign rx375_cstack, $I18
  rx375_jump1187:
    jump $I19
  rx375_done1184:
    rx375_cur."!cursor_fail"()
    .return (rx375_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_86_1349901746.339_caps" :subid("cuid_memo_177_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_86_1349901746.339_nfa" :subid("cuid_memo_178_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 4
    push $P5003, $P5004
    box $P5005, 32
    push $P5003, $P5005
    box $P5006, 1
    push $P5003, $P5006
    box $P5007, 1
    push $P5003, $P5007
    box $P5008, 0
    push $P5003, $P5008
    box $P5009, 2
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 2
    push $P5010, $P5011
    box $P5012, 93
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5001, $P5010
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1349901746.339") :anon :lex :outer("cuid_91_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5002 = 'cuid_87_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx380_tgt
    .local int rx380_pos
    .local int rx380_off
    .local int rx380_eos
    .local int rx380_rep
    .local pmc rx380_cur
    .local pmc rx380_curclass
    .local pmc rx380_bstack
    .local pmc rx380_cstack
    (rx380_cur, rx380_tgt, rx380_pos, rx380_curclass, rx380_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx380_cur
    length rx380_eos, rx380_tgt
    eq $I19, 1, rx380_restart1201
    gt rx380_pos, rx380_eos, rx380_fail1202
    repr_get_attr_int $I11, self, rx380_curclass, "$!from"
    ne $I11, -1, rxscan381_done1208
    goto rxscan381_scan1207
  rxscan381_loop1206:
    inc rx380_pos
    gt rx380_pos, rx380_eos, rx380_fail1202
    repr_bind_attr_int rx380_cur, rx380_curclass, "$!from", rx380_pos
  rxscan381_scan1207:
    nqp_rxmark rx380_bstack, rxscan381_loop1206, rx380_pos, 0
  rxscan381_done1208:
  alt382_01210:
    nqp_rxmark rx380_bstack, alt382_11212, rx380_pos, 0
    add $I11, rx380_pos, 1
    gt $I11, rx380_eos, rx380_fail1202
    substr $S10, rx380_tgt, rx380_pos, 1
    ne $S10, ucs4:"\\", rx380_fail1202
    add rx380_pos, 1
    repr_bind_attr_int rx380_cur, rx380_curclass, "$!pos", rx380_pos
    $P11 = rx380_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx380_curclass, "$!pos"
    lt $I11, 0, rx380_fail1202
    nqp_rxmark rx380_bstack, rxsubrule383_pass1211, -1, 0
  rxsubrule383_pass1211:
    rx380_cstack = rx380_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx380_pos, $P11, rx380_curclass, "$!pos"
    goto alt382_end1209
  alt382_11212:
    .const 'Sub' $P5001 = 'cuid_87_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx380_cur, rx380_curclass, "$!pos", rx380_pos
    $P11 = rx380_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx380_curclass, "$!pos"
    lt $I11, 0, rx380_fail1202
    nqp_rxmark rx380_bstack, rxsubrule387_pass1225, -1, 0
  rxsubrule387_pass1225:
    rx380_cstack = rx380_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx380_pos, $P11, rx380_curclass, "$!pos"
  alt382_end1209:
    rx380_cur."!cursor_pass"(rx380_pos, 'backtrack'=>1)
    .return (rx380_cur)
  rx380_restart1201:
    repr_get_attr_obj rx380_cstack, rx380_cur, rx380_curclass, "$!cstack"
  rx380_fail1202:
    unless rx380_bstack, rx380_done1200
    pop $I19, rx380_bstack
    if_null rx380_cstack, rx380_cstack_done1205
    unless rx380_cstack, rx380_cstack_done1205
    dec $I19
    set $P11, rx380_cstack[$I19]
  rx380_cstack_done1205:
    pop rx380_rep, rx380_bstack
    pop rx380_pos, rx380_bstack
    pop $I19, rx380_bstack
    lt rx380_pos, -1, rx380_done1200
    lt rx380_pos, 0, rx380_fail1202
    eq $I19, 0, rx380_fail1202
    nqp_islist $I20, rx380_cstack
    unless $I20, rx380_jump1203
    elements $I18, rx380_bstack
    le $I18, 0, rx380_cut1204
    dec $I18
    set $I18, rx380_bstack[$I18]
  rx380_cut1204:
    assign rx380_cstack, $I18
  rx380_jump1203:
    jump $I19
  rx380_done1200:
    rx380_cur."!cursor_fail"()
    .return (rx380_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_88_1349901746.339_caps" :subid("cuid_memo_179_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["backslash"], $P5002
    box $P5003, 1
    set $P5001["0"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1349901746.339") :anon :lex :outer("cuid_88_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx384_tgt
    .local int rx384_pos
    .local int rx384_off
    .local int rx384_eos
    .local int rx384_rep
    .local pmc rx384_cur
    .local pmc rx384_curclass
    .local pmc rx384_bstack
    .local pmc rx384_cstack
    (rx384_cur, rx384_tgt, rx384_pos, rx384_curclass, rx384_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx384_cur
    length rx384_eos, rx384_tgt
    eq $I19, 1, rx384_restart1215
    gt rx384_pos, rx384_eos, rx384_fail1216
    repr_get_attr_int $I11, self, rx384_curclass, "$!from"
    ne $I11, -1, rxscan385_done1222
    goto rxscan385_scan1221
  rxscan385_loop1220:
    inc rx384_pos
    gt rx384_pos, rx384_eos, rx384_fail1216
    repr_bind_attr_int rx384_cur, rx384_curclass, "$!from", rx384_pos
  rxscan385_scan1221:
    nqp_rxmark rx384_bstack, rxscan385_loop1220, rx384_pos, 0
  rxscan385_done1222:
    nqp_rxmark rx384_bstack, rxconj386_fail1223, rx384_pos, 0
    goto rxconj386_first1224
  rxconj386_fail1223:
    goto rx384_fail1216
  rxconj386_first1224:
    add $I11, rx384_pos, 1
    gt $I11, rx384_eos, rx384_fail1216
    substr $S10, rx384_tgt, rx384_pos, 1
    eq $S10, ucs4:"]", rx384_fail1216
    add rx384_pos, 1
    nqp_rxpeek $I19, rx384_bstack, rxconj386_fail1223
    inc $I19
    set $I11, rx384_bstack[$I19]
    nqp_rxmark rx384_bstack, rxconj386_fail1223, $I11, rx384_pos
    set rx384_pos, $I11
    add $I11, rx384_pos, 1
    gt $I11, rx384_eos, rx384_fail1216
    substr $S10, rx384_tgt, rx384_pos, 1
    eq $S10, ucs4:"\\", rx384_fail1216
    add rx384_pos, 1
    nqp_rxpeek $I19, rx384_bstack, rxconj386_fail1223
    inc $I19
    set $I11, rx384_bstack[$I19]
    inc $I19
    set $I12, rx384_bstack[$I19]
    ne rx384_pos, $I12, rx384_fail1216
    set rx384_pos, $I11
    ge rx384_pos, rx384_eos, rx384_fail1216
    add rx384_pos, 1
    rx384_cur."!cursor_pass"(rx384_pos, 'backtrack'=>1)
    .return (rx384_cur)
  rx384_restart1215:
    repr_get_attr_obj rx384_cstack, rx384_cur, rx384_curclass, "$!cstack"
  rx384_fail1216:
    unless rx384_bstack, rx384_done1214
    pop $I19, rx384_bstack
    if_null rx384_cstack, rx384_cstack_done1219
    unless rx384_cstack, rx384_cstack_done1219
    dec $I19
    set $P11, rx384_cstack[$I19]
  rx384_cstack_done1219:
    pop rx384_rep, rx384_bstack
    pop rx384_pos, rx384_bstack
    pop $I19, rx384_bstack
    lt rx384_pos, -1, rx384_done1214
    lt rx384_pos, 0, rx384_fail1216
    eq $I19, 0, rx384_fail1216
    nqp_islist $I20, rx384_cstack
    unless $I20, rx384_jump1217
    elements $I18, rx384_bstack
    le $I18, 0, rx384_cut1218
    dec $I18
    set $I18, rx384_bstack[$I18]
  rx384_cut1218:
    assign rx384_cstack, $I18
  rx384_jump1217:
    jump $I19
  rx384_done1214:
    rx384_cur."!cursor_fail"()
    .return (rx384_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_87_1349901746.339_caps" :subid("cuid_memo_180_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1349901746.339") :anon :lex :outer("cuid_91_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5002 = 'cuid_89_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx392_tgt
    .local int rx392_pos
    .local int rx392_off
    .local int rx392_eos
    .local int rx392_rep
    .local pmc rx392_cur
    .local pmc rx392_curclass
    .local pmc rx392_bstack
    .local pmc rx392_cstack
    (rx392_cur, rx392_tgt, rx392_pos, rx392_curclass, rx392_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx392_cur
    length rx392_eos, rx392_tgt
    eq $I19, 1, rx392_restart1235
    gt rx392_pos, rx392_eos, rx392_fail1236
    repr_get_attr_int $I11, self, rx392_curclass, "$!from"
    ne $I11, -1, rxscan393_done1242
    goto rxscan393_scan1241
  rxscan393_loop1240:
    inc rx392_pos
    gt rx392_pos, rx392_eos, rx392_fail1236
    repr_bind_attr_int rx392_cur, rx392_curclass, "$!from", rx392_pos
  rxscan393_scan1241:
    nqp_rxmark rx392_bstack, rxscan393_loop1240, rx392_pos, 0
  rxscan393_done1242:
  alt394_01244:
    nqp_rxmark rx392_bstack, alt394_11246, rx392_pos, 0
    add $I11, rx392_pos, 1
    gt $I11, rx392_eos, rx392_fail1236
    substr $S10, rx392_tgt, rx392_pos, 1
    ne $S10, ucs4:"\\", rx392_fail1236
    add rx392_pos, 1
    repr_bind_attr_int rx392_cur, rx392_curclass, "$!pos", rx392_pos
    $P11 = rx392_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx392_curclass, "$!pos"
    lt $I11, 0, rx392_fail1236
    nqp_rxmark rx392_bstack, rxsubrule395_pass1245, -1, 0
  rxsubrule395_pass1245:
    rx392_cstack = rx392_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx392_pos, $P11, rx392_curclass, "$!pos"
    goto alt394_end1243
  alt394_11246:
    .const 'Sub' $P5001 = 'cuid_89_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx392_cur, rx392_curclass, "$!pos", rx392_pos
    $P11 = rx392_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx392_curclass, "$!pos"
    lt $I11, 0, rx392_fail1236
    nqp_rxmark rx392_bstack, rxsubrule399_pass1259, -1, 0
  rxsubrule399_pass1259:
    rx392_cstack = rx392_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx392_pos, $P11, rx392_curclass, "$!pos"
  alt394_end1243:
    rx392_cur."!cursor_pass"(rx392_pos, 'backtrack'=>1)
    .return (rx392_cur)
  rx392_restart1235:
    repr_get_attr_obj rx392_cstack, rx392_cur, rx392_curclass, "$!cstack"
  rx392_fail1236:
    unless rx392_bstack, rx392_done1234
    pop $I19, rx392_bstack
    if_null rx392_cstack, rx392_cstack_done1239
    unless rx392_cstack, rx392_cstack_done1239
    dec $I19
    set $P11, rx392_cstack[$I19]
  rx392_cstack_done1239:
    pop rx392_rep, rx392_bstack
    pop rx392_pos, rx392_bstack
    pop $I19, rx392_bstack
    lt rx392_pos, -1, rx392_done1234
    lt rx392_pos, 0, rx392_fail1236
    eq $I19, 0, rx392_fail1236
    nqp_islist $I20, rx392_cstack
    unless $I20, rx392_jump1237
    elements $I18, rx392_bstack
    le $I18, 0, rx392_cut1238
    dec $I18
    set $I18, rx392_bstack[$I18]
  rx392_cut1238:
    assign rx392_cstack, $I18
  rx392_jump1237:
    jump $I19
  rx392_done1234:
    rx392_cur."!cursor_fail"()
    .return (rx392_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_90_1349901746.339_caps" :subid("cuid_memo_181_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["backslash"], $P5002
    box $P5003, 1
    set $P5001["0"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1349901746.339") :anon :lex :outer("cuid_90_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx396_tgt
    .local int rx396_pos
    .local int rx396_off
    .local int rx396_eos
    .local int rx396_rep
    .local pmc rx396_cur
    .local pmc rx396_curclass
    .local pmc rx396_bstack
    .local pmc rx396_cstack
    (rx396_cur, rx396_tgt, rx396_pos, rx396_curclass, rx396_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx396_cur
    length rx396_eos, rx396_tgt
    eq $I19, 1, rx396_restart1249
    gt rx396_pos, rx396_eos, rx396_fail1250
    repr_get_attr_int $I11, self, rx396_curclass, "$!from"
    ne $I11, -1, rxscan397_done1256
    goto rxscan397_scan1255
  rxscan397_loop1254:
    inc rx396_pos
    gt rx396_pos, rx396_eos, rx396_fail1250
    repr_bind_attr_int rx396_cur, rx396_curclass, "$!from", rx396_pos
  rxscan397_scan1255:
    nqp_rxmark rx396_bstack, rxscan397_loop1254, rx396_pos, 0
  rxscan397_done1256:
    nqp_rxmark rx396_bstack, rxconj398_fail1257, rx396_pos, 0
    goto rxconj398_first1258
  rxconj398_fail1257:
    goto rx396_fail1250
  rxconj398_first1258:
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail1250
    substr $S10, rx396_tgt, rx396_pos, 1
    eq $S10, ucs4:"]", rx396_fail1250
    add rx396_pos, 1
    nqp_rxpeek $I19, rx396_bstack, rxconj398_fail1257
    inc $I19
    set $I11, rx396_bstack[$I19]
    nqp_rxmark rx396_bstack, rxconj398_fail1257, $I11, rx396_pos
    set rx396_pos, $I11
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail1250
    substr $S10, rx396_tgt, rx396_pos, 1
    eq $S10, ucs4:"\\", rx396_fail1250
    add rx396_pos, 1
    nqp_rxpeek $I19, rx396_bstack, rxconj398_fail1257
    inc $I19
    set $I11, rx396_bstack[$I19]
    inc $I19
    set $I12, rx396_bstack[$I19]
    ne rx396_pos, $I12, rx396_fail1250
    set rx396_pos, $I11
    ge rx396_pos, rx396_eos, rx396_fail1250
    add rx396_pos, 1
    rx396_cur."!cursor_pass"(rx396_pos, 'backtrack'=>1)
    .return (rx396_cur)
  rx396_restart1249:
    repr_get_attr_obj rx396_cstack, rx396_cur, rx396_curclass, "$!cstack"
  rx396_fail1250:
    unless rx396_bstack, rx396_done1248
    pop $I19, rx396_bstack
    if_null rx396_cstack, rx396_cstack_done1253
    unless rx396_cstack, rx396_cstack_done1253
    dec $I19
    set $P11, rx396_cstack[$I19]
  rx396_cstack_done1253:
    pop rx396_rep, rx396_bstack
    pop rx396_pos, rx396_bstack
    pop $I19, rx396_bstack
    lt rx396_pos, -1, rx396_done1248
    lt rx396_pos, 0, rx396_fail1250
    eq $I19, 0, rx396_fail1250
    nqp_islist $I20, rx396_cstack
    unless $I20, rx396_jump1251
    elements $I18, rx396_bstack
    le $I18, 0, rx396_cut1252
    dec $I18
    set $I18, rx396_bstack[$I18]
  rx396_cut1252:
    assign rx396_cstack, $I18
  rx396_jump1251:
    jump $I19
  rx396_done1248:
    rx396_cur."!cursor_fail"()
    .return (rx396_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_89_1349901746.339_caps" :subid("cuid_memo_182_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_internal" :subid("cuid_94_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 229
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_93_1349901746.339' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx412_tgt
    .local int rx412_pos
    .local int rx412_off
    .local int rx412_eos
    .local int rx412_rep
    .local pmc rx412_cur
    .local pmc rx412_curclass
    .local pmc rx412_bstack
    .local pmc rx412_cstack
    (rx412_cur, rx412_tgt, rx412_pos, rx412_curclass, rx412_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx412_cur
    length rx412_eos, rx412_tgt
    eq $I19, 1, rx412_restart1287
    gt rx412_pos, rx412_eos, rx412_fail1288
    repr_get_attr_int $I11, self, rx412_curclass, "$!from"
    ne $I11, -1, rxscan413_done1294
    goto rxscan413_scan1293
  rxscan413_loop1292:
    inc rx412_pos
    gt rx412_pos, rx412_eos, rx412_fail1288
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!from", rx412_pos
  rxscan413_scan1293:
    nqp_rxmark rx412_bstack, rxscan413_loop1292, rx412_pos, 0
  rxscan413_done1294:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt414_01296
    nqp_push_label $P11, alt414_11318
    nqp_rxmark rx412_bstack, alt414_end1295, -1, 0
    rx412_cur."!alt"(rx412_pos, "alt_nfa__21_1349901747.208", $P11)
    goto rx412_fail1288
  alt414_01296:
    add $I11, rx412_pos, 1
    gt $I11, rx412_eos, rx412_fail1288
    substr $S10, rx412_tgt, rx412_pos, 1
    ne $S10, ucs4:":", rx412_fail1288
    add rx412_pos, 1
    nqp_rxmark rx412_bstack, rxquantr415_done1298, -1, 0
  rxquantr415_loop1297:
    .const 'Sub' $P5001 = 'cuid_93_1349901746.339' 
    capture_lex $P5001
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!pos", rx412_pos
    $P11 = rx412_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx412_curclass, "$!pos"
    lt $I11, 0, rx412_fail1288
    goto rxsubrule420_pass1314
  rxsubrule420_back1315:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx412_curclass, "$!pos"
    lt $I11, 0, rx412_fail1288
  rxsubrule420_pass1314:
    rx412_cstack = rx412_cur."!cursor_capture"($P11, "n")
    set_addr $I11, rxsubrule420_back1315
    push rx412_bstack, $I11
    push rx412_bstack, 0
    push rx412_bstack, rx412_pos
    elements $I11, rx412_cstack
    push rx412_bstack, $I11
    repr_get_attr_int rx412_pos, $P11, rx412_curclass, "$!pos"
    nqp_rxpeek $I19, rx412_bstack, rxquantr415_done1298
    inc $I19
    inc $I19
    set rx412_rep, rx412_bstack[$I19]
    nqp_rxcommit rx412_bstack, rxquantr415_done1298
    inc rx412_rep
  rxquantr415_done1298:
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!pos", rx412_pos
    $P11 = rx412_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx412_curclass, "$!pos"
    lt $I11, 0, rx412_fail1288
    nqp_rxmark rx412_bstack, rxsubrule421_pass1316, -1, 0
  rxsubrule421_pass1316:
    rx412_cstack = rx412_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx412_pos, $P11, rx412_curclass, "$!pos"
    le rx412_pos, 0, rx412_fail1288
    is_cclass $I11, .CCLASS_WORD, rx412_tgt, rx412_pos
    if $I11, rx412_fail1288
    sub $I11, rx412_pos, 1
    is_cclass $I11, .CCLASS_WORD, rx412_tgt, $I11
    unless $I11, rx412_fail1288
    goto alt414_end1295
  alt414_11318:
    add $I11, rx412_pos, 1
    gt $I11, rx412_eos, rx412_fail1288
    substr $S10, rx412_tgt, rx412_pos, 1
    ne $S10, ucs4:":", rx412_fail1288
    add rx412_pos, 1
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!pos", rx412_pos
    $P11 = rx412_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx412_curclass, "$!pos"
    lt $I11, 0, rx412_fail1288
    nqp_rxmark rx412_bstack, rxsubrule423_pass1319, -1, 0
  rxsubrule423_pass1319:
    rx412_cstack = rx412_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx412_pos, $P11, rx412_curclass, "$!pos"
    nqp_rxmark rx412_bstack, rxquantr424_done1321, rx412_pos, 0
  rxquantr424_loop1320:
    add $I11, rx412_pos, 1
    gt $I11, rx412_eos, rx412_fail1288
    substr $S10, rx412_tgt, rx412_pos, 1
    ne $S10, ucs4:"(", rx412_fail1288
    add rx412_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt425_01323
    nqp_push_label $P11, alt425_11328
    nqp_push_label $P11, alt425_21330
    nqp_rxmark rx412_bstack, alt425_end1322, -1, 0
    rx412_cur."!alt"(rx412_pos, "alt_nfa__22_1349901747.209", $P11)
    goto rx412_fail1288
  alt425_01323:
    nqp_rxmark rx412_bstack, rxcap426_fail1325, rx412_pos, 0
    nqp_rxmark rx412_bstack, rxquantr427_done1327, -1, 0
  rxquantr427_loop1326:
    ge rx412_pos, rx412_eos, rx412_fail1288
    is_cclass $I11, .CCLASS_NUMERIC, rx412_tgt, rx412_pos
    unless $I11, rx412_fail1288
    add rx412_pos, 1
    nqp_rxpeek $I19, rx412_bstack, rxquantr427_done1327
    inc $I19
    inc $I19
    set rx412_rep, rx412_bstack[$I19]
    nqp_rxcommit rx412_bstack, rxquantr427_done1327
    inc rx412_rep
    nqp_rxmark rx412_bstack, rxquantr427_done1327, rx412_pos, rx412_rep
    goto rxquantr427_loop1326
  rxquantr427_done1327:
    nqp_rxpeek $I19, rx412_bstack, rxcap426_fail1325
    inc $I19
    set $I11, rx412_bstack[$I19]
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!pos", rx412_pos
    $P11 = rx412_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx412_pos)
    rx412_cstack = rx412_cur."!cursor_capture"($P11, "n")
    goto rxcap426_done1324
  rxcap426_fail1325:
    goto rx412_fail1288
  rxcap426_done1324:
    goto alt425_end1322
  alt425_11328:
    ge rx412_pos, rx412_eos, rx412_fail1288
    substr $S11, rx412_tgt, rx412_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx412_fail1288
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!pos", rx412_pos
    $P11 = rx412_cur."quote_EXPR"(":q")
    repr_get_attr_int $I11, $P11, rx412_curclass, "$!pos"
    lt $I11, 0, rx412_fail1288
    nqp_rxmark rx412_bstack, rxsubrule428_pass1329, -1, 0
  rxsubrule428_pass1329:
    rx412_cstack = rx412_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx412_pos, $P11, rx412_curclass, "$!pos"
    goto alt425_end1322
  alt425_21330:
    ge rx412_pos, rx412_eos, rx412_fail1288
    substr $S11, rx412_tgt, rx412_pos, 1
    index $I11, ucs4:"\"", $S11
    lt $I11, 0, rx412_fail1288
    repr_bind_attr_int rx412_cur, rx412_curclass, "$!pos", rx412_pos
    $P11 = rx412_cur."quote_EXPR"(":qq")
    repr_get_attr_int $I11, $P11, rx412_curclass, "$!pos"
    lt $I11, 0, rx412_fail1288
    nqp_rxmark rx412_bstack, rxsubrule429_pass1331, -1, 0
  rxsubrule429_pass1331:
    rx412_cstack = rx412_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx412_pos, $P11, rx412_curclass, "$!pos"
    goto alt425_end1322
  alt425_end1322:
    nqp_rxcommit rx412_bstack, alt425_end1322
    add $I11, rx412_pos, 1
    gt $I11, rx412_eos, rx412_fail1288
    substr $S10, rx412_tgt, rx412_pos, 1
    ne $S10, ucs4:")", rx412_fail1288
    add rx412_pos, 1
    nqp_rxpeek $I19, rx412_bstack, rxquantr424_done1321
    inc $I19
    inc $I19
    set rx412_rep, rx412_bstack[$I19]
    nqp_rxcommit rx412_bstack, rxquantr424_done1321
    inc rx412_rep
  rxquantr424_done1321:
    goto alt414_end1295
  alt414_end1295:
    nqp_rxcommit rx412_bstack, alt414_end1295
    rx412_cur."!cursor_pass"(rx412_pos, "mod_internal", 'backtrack'=>1)
    .return (rx412_cur)
  rx412_restart1287:
    repr_get_attr_obj rx412_cstack, rx412_cur, rx412_curclass, "$!cstack"
  rx412_fail1288:
    unless rx412_bstack, rx412_done1286
    pop $I19, rx412_bstack
    if_null rx412_cstack, rx412_cstack_done1291
    unless rx412_cstack, rx412_cstack_done1291
    dec $I19
    set $P11, rx412_cstack[$I19]
  rx412_cstack_done1291:
    pop rx412_rep, rx412_bstack
    pop rx412_pos, rx412_bstack
    pop $I19, rx412_bstack
    lt rx412_pos, -1, rx412_done1286
    lt rx412_pos, 0, rx412_fail1288
    eq $I19, 0, rx412_fail1288
    nqp_islist $I20, rx412_cstack
    unless $I20, rx412_jump1289
    elements $I18, rx412_bstack
    le $I18, 0, rx412_cut1290
    dec $I18
    set $I18, rx412_bstack[$I18]
  rx412_cut1290:
    assign rx412_cstack, $I18
  rx412_jump1289:
    jump $I19
  rx412_done1286:
    rx412_cur."!cursor_fail"()
    .return (rx412_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1349901746.339_caps" :subid("cuid_memo_183_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["n"], $P5002
    box $P5003, 0
    set $P5001["mod_ident"], $P5003
    box $P5004, 2
    set $P5001["quote_EXPR"], $P5004
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1349901746.339_nfa" :subid("cuid_memo_184_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 58
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    box $P5007, 2
    push $P5003, $P5007
    box $P5008, 58
    push $P5003, $P5008
    box $P5009, 3
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 0
    push $P5010, $P5011
    box $P5012, 0
    push $P5010, $P5012
    box $P5013, 0
    push $P5010, $P5013
    push $P5001, $P5010
    new $P5014, 'ResizablePMCArray'
    box $P5015, 8
    push $P5014, $P5015
    box $P5016, "mod_ident"
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 40
    push $P5018, $P5020
    box $P5021, 5
    push $P5018, $P5021
    box $P5022, 1
    push $P5018, $P5022
    box $P5023, 0
    push $P5018, $P5023
    box $P5024, 0
    push $P5018, $P5024
    push $P5001, $P5018
    new $P5025, 'ResizablePMCArray'
    box $P5026, 1
    push $P5025, $P5026
    box $P5027, 0
    push $P5025, $P5027
    box $P5028, 6
    push $P5025, $P5028
    box $P5029, 6
    push $P5025, $P5029
    box $P5030, "'"
    push $P5025, $P5030
    box $P5031, 9
    push $P5025, $P5031
    box $P5032, 6
    push $P5025, $P5032
    box $P5033, "\""
    push $P5025, $P5033
    box $P5034, 10
    push $P5025, $P5034
    push $P5001, $P5025
    new $P5035, 'ResizablePMCArray'
    box $P5036, 4
    push $P5035, $P5036
    box $P5037, 8
    push $P5035, $P5037
    box $P5038, 7
    push $P5035, $P5038
    push $P5001, $P5035
    new $P5039, 'ResizablePMCArray'
    box $P5040, 1
    push $P5039, $P5040
    box $P5041, 0
    push $P5039, $P5041
    box $P5042, 6
    push $P5039, $P5042
    box $P5043, 1
    push $P5039, $P5043
    box $P5044, 0
    push $P5039, $P5044
    box $P5045, 8
    push $P5039, $P5045
    box $P5046, 2
    push $P5039, $P5046
    box $P5047, 41
    push $P5039, $P5047
    box $P5048, 0
    push $P5039, $P5048
    push $P5001, $P5039
    new $P5049, 'ResizablePMCArray'
    push $P5001, $P5049
    new $P5050, 'ResizablePMCArray'
    box $P5051, 0
    push $P5050, $P5051
    box $P5052, 0
    push $P5050, $P5052
    box $P5053, 0
    push $P5050, $P5053
    push $P5001, $P5050
    new $P5054, 'ResizablePMCArray'
    box $P5055, 0
    push $P5054, $P5055
    box $P5056, 0
    push $P5054, $P5056
    box $P5057, 0
    push $P5054, $P5057
    push $P5001, $P5054
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1349901746.339_alt_nfa__22_1349901747.209" :subid("cuid_memo_185_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 1
    push $P5004, $P5005
    box $P5006, 0
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 4
    push $P5008, $P5009
    box $P5010, 8
    push $P5008, $P5010
    box $P5011, 3
    push $P5008, $P5011
    push $P5002, $P5008
    new $P5012, 'ResizablePMCArray'
    box $P5013, 1
    push $P5012, $P5013
    box $P5014, 0
    push $P5012, $P5014
    box $P5015, 2
    push $P5012, $P5015
    box $P5016, 1
    push $P5012, $P5016
    box $P5017, 0
    push $P5012, $P5017
    box $P5018, 0
    push $P5012, $P5018
    push $P5002, $P5012
    push $P5001, $P5002
    new $P5019, 'ResizablePMCArray'
    new $P5020, 'ResizablePMCArray'
    push $P5019, $P5020
    new $P5021, 'ResizablePMCArray'
    box $P5022, 6
    push $P5021, $P5022
    box $P5023, "'"
    push $P5021, $P5023
    box $P5024, 2
    push $P5021, $P5024
    push $P5019, $P5021
    new $P5025, 'ResizablePMCArray'
    box $P5026, 0
    push $P5025, $P5026
    box $P5027, 0
    push $P5025, $P5027
    box $P5028, 0
    push $P5025, $P5028
    push $P5019, $P5025
    push $P5001, $P5019
    new $P5029, 'ResizablePMCArray'
    new $P5030, 'ResizablePMCArray'
    push $P5029, $P5030
    new $P5031, 'ResizablePMCArray'
    box $P5032, 6
    push $P5031, $P5032
    box $P5033, "\""
    push $P5031, $P5033
    box $P5034, 2
    push $P5031, $P5034
    push $P5029, $P5031
    new $P5035, 'ResizablePMCArray'
    box $P5036, 0
    push $P5035, $P5036
    box $P5037, 0
    push $P5035, $P5037
    box $P5038, 0
    push $P5035, $P5038
    push $P5029, $P5035
    push $P5001, $P5029
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1349901746.339_alt_nfa__21_1349901747.208" :subid("cuid_memo_186_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 58
    push $P5004, $P5006
    box $P5007, 2
    push $P5004, $P5007
    push $P5002, $P5004
    new $P5008, 'ResizablePMCArray'
    box $P5009, 0
    push $P5008, $P5009
    box $P5010, 0
    push $P5008, $P5010
    box $P5011, 0
    push $P5008, $P5011
    push $P5002, $P5008
    push $P5001, $P5002
    new $P5012, 'ResizablePMCArray'
    new $P5013, 'ResizablePMCArray'
    push $P5012, $P5013
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 58
    push $P5014, $P5016
    box $P5017, 2
    push $P5014, $P5017
    push $P5012, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 8
    push $P5018, $P5019
    box $P5020, "mod_ident"
    push $P5018, $P5020
    box $P5021, 3
    push $P5018, $P5021
    push $P5012, $P5018
    new $P5022, 'ResizablePMCArray'
    box $P5023, 2
    push $P5022, $P5023
    box $P5024, 40
    push $P5022, $P5024
    box $P5025, 4
    push $P5022, $P5025
    box $P5026, 1
    push $P5022, $P5026
    box $P5027, 0
    push $P5022, $P5027
    box $P5028, 0
    push $P5022, $P5028
    push $P5012, $P5022
    new $P5029, 'ResizablePMCArray'
    box $P5030, 1
    push $P5029, $P5030
    box $P5031, 0
    push $P5029, $P5031
    box $P5032, 5
    push $P5029, $P5032
    box $P5033, 6
    push $P5029, $P5033
    box $P5034, "'"
    push $P5029, $P5034
    box $P5035, 8
    push $P5029, $P5035
    box $P5036, 6
    push $P5029, $P5036
    box $P5037, "\""
    push $P5029, $P5037
    box $P5038, 9
    push $P5029, $P5038
    push $P5012, $P5029
    new $P5039, 'ResizablePMCArray'
    box $P5040, 4
    push $P5039, $P5040
    box $P5041, 8
    push $P5039, $P5041
    box $P5042, 6
    push $P5039, $P5042
    push $P5012, $P5039
    new $P5043, 'ResizablePMCArray'
    box $P5044, 1
    push $P5043, $P5044
    box $P5045, 0
    push $P5043, $P5045
    box $P5046, 5
    push $P5043, $P5046
    box $P5047, 1
    push $P5043, $P5047
    box $P5048, 0
    push $P5043, $P5048
    box $P5049, 7
    push $P5043, $P5049
    box $P5050, 2
    push $P5043, $P5050
    box $P5051, 41
    push $P5043, $P5051
    box $P5052, 0
    push $P5043, $P5052
    push $P5012, $P5043
    new $P5053, 'ResizablePMCArray'
    push $P5012, $P5053
    new $P5054, 'ResizablePMCArray'
    box $P5055, 0
    push $P5054, $P5055
    box $P5056, 0
    push $P5054, $P5056
    box $P5057, 0
    push $P5054, $P5057
    push $P5012, $P5054
    new $P5058, 'ResizablePMCArray'
    box $P5059, 0
    push $P5058, $P5059
    box $P5060, 0
    push $P5058, $P5060
    box $P5061, 0
    push $P5058, $P5061
    push $P5012, $P5058
    push $P5001, $P5012
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1349901746.339") :anon :lex :outer("cuid_94_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx416_tgt
    .local int rx416_pos
    .local int rx416_off
    .local int rx416_eos
    .local int rx416_rep
    .local pmc rx416_cur
    .local pmc rx416_curclass
    .local pmc rx416_bstack
    .local pmc rx416_cstack
    (rx416_cur, rx416_tgt, rx416_pos, rx416_curclass, rx416_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx416_cur
    length rx416_eos, rx416_tgt
    eq $I19, 1, rx416_restart1301
    gt rx416_pos, rx416_eos, rx416_fail1302
    repr_get_attr_int $I11, self, rx416_curclass, "$!from"
    ne $I11, -1, rxscan417_done1308
    goto rxscan417_scan1307
  rxscan417_loop1306:
    inc rx416_pos
    gt rx416_pos, rx416_eos, rx416_fail1302
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!from", rx416_pos
  rxscan417_scan1307:
    nqp_rxmark rx416_bstack, rxscan417_loop1306, rx416_pos, 0
  rxscan417_done1308:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt418_01310
    nqp_push_label $P11, alt418_11311
    nqp_rxmark rx416_bstack, alt418_end1309, -1, 0
    rx416_cur."!alt"(rx416_pos, "alt_nfa__20_1349901747.185", $P11)
    goto rx416_fail1302
  alt418_01310:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1302
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:"!", rx416_fail1302
    add rx416_pos, 1
    goto alt418_end1309
  alt418_11311:
    nqp_rxmark rx416_bstack, rxquantr419_done1313, -1, 0
  rxquantr419_loop1312:
    ge rx416_pos, rx416_eos, rx416_fail1302
    is_cclass $I11, .CCLASS_NUMERIC, rx416_tgt, rx416_pos
    unless $I11, rx416_fail1302
    add rx416_pos, 1
    nqp_rxpeek $I19, rx416_bstack, rxquantr419_done1313
    inc $I19
    inc $I19
    set rx416_rep, rx416_bstack[$I19]
    nqp_rxcommit rx416_bstack, rxquantr419_done1313
    inc rx416_rep
    nqp_rxmark rx416_bstack, rxquantr419_done1313, rx416_pos, rx416_rep
    goto rxquantr419_loop1312
  rxquantr419_done1313:
    goto alt418_end1309
  alt418_end1309:
    rx416_cur."!cursor_pass"(rx416_pos, 'backtrack'=>1)
    .return (rx416_cur)
  rx416_restart1301:
    repr_get_attr_obj rx416_cstack, rx416_cur, rx416_curclass, "$!cstack"
  rx416_fail1302:
    unless rx416_bstack, rx416_done1300
    pop $I19, rx416_bstack
    if_null rx416_cstack, rx416_cstack_done1305
    unless rx416_cstack, rx416_cstack_done1305
    dec $I19
    set $P11, rx416_cstack[$I19]
  rx416_cstack_done1305:
    pop rx416_rep, rx416_bstack
    pop rx416_pos, rx416_bstack
    pop $I19, rx416_bstack
    lt rx416_pos, -1, rx416_done1300
    lt rx416_pos, 0, rx416_fail1302
    eq $I19, 0, rx416_fail1302
    nqp_islist $I20, rx416_cstack
    unless $I20, rx416_jump1303
    elements $I18, rx416_bstack
    le $I18, 0, rx416_cut1304
    dec $I18
    set $I18, rx416_bstack[$I18]
  rx416_cut1304:
    assign rx416_cstack, $I18
  rx416_jump1303:
    jump $I19
  rx416_done1300:
    rx416_cur."!cursor_fail"()
    .return (rx416_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_93_1349901746.339_caps" :subid("cuid_memo_187_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_93_1349901746.339_nfa" :subid("cuid_memo_188_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 33
    push $P5003, $P5005
    box $P5006, 0
    push $P5003, $P5006
    box $P5007, 1
    push $P5003, $P5007
    box $P5008, 0
    push $P5003, $P5008
    box $P5009, 2
    push $P5003, $P5009
    push $P5001, $P5003
    new $P5010, 'ResizablePMCArray'
    box $P5011, 4
    push $P5010, $P5011
    box $P5012, 8
    push $P5010, $P5012
    box $P5013, 3
    push $P5010, $P5013
    push $P5001, $P5010
    new $P5014, 'ResizablePMCArray'
    box $P5015, 1
    push $P5014, $P5015
    box $P5016, 0
    push $P5014, $P5016
    box $P5017, 2
    push $P5014, $P5017
    box $P5018, 1
    push $P5014, $P5018
    box $P5019, 0
    push $P5014, $P5019
    box $P5020, 0
    push $P5014, $P5020
    push $P5001, $P5014
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_93_1349901746.339_alt_nfa__20_1349901747.185" :subid("cuid_memo_189_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    new $P5003, 'ResizablePMCArray'
    push $P5002, $P5003
    new $P5004, 'ResizablePMCArray'
    box $P5005, 2
    push $P5004, $P5005
    box $P5006, 33
    push $P5004, $P5006
    box $P5007, 0
    push $P5004, $P5007
    push $P5002, $P5004
    push $P5001, $P5002
    new $P5008, 'ResizablePMCArray'
    new $P5009, 'ResizablePMCArray'
    push $P5008, $P5009
    new $P5010, 'ResizablePMCArray'
    box $P5011, 1
    push $P5010, $P5011
    box $P5012, 0
    push $P5010, $P5012
    box $P5013, 2
    push $P5010, $P5013
    push $P5008, $P5010
    new $P5014, 'ResizablePMCArray'
    box $P5015, 4
    push $P5014, $P5015
    box $P5016, 8
    push $P5014, $P5016
    box $P5017, 3
    push $P5014, $P5017
    push $P5008, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 1
    push $P5018, $P5019
    box $P5020, 0
    push $P5018, $P5020
    box $P5021, 2
    push $P5018, $P5021
    box $P5022, 1
    push $P5018, $P5022
    box $P5023, 0
    push $P5018, $P5023
    box $P5024, 0
    push $P5018, $P5024
    push $P5008, $P5018
    push $P5001, $P5008
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_ident" :subid("cuid_95_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 245
    .param pmc self 
    $P5001 = self."!protoregex"("mod_ident")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_ident:sym<ignorecase>" :subid("cuid_96_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 246
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx430_tgt
    .local int rx430_pos
    .local int rx430_off
    .local int rx430_eos
    .local int rx430_rep
    .local pmc rx430_cur
    .local pmc rx430_curclass
    .local pmc rx430_bstack
    .local pmc rx430_cstack
    (rx430_cur, rx430_tgt, rx430_pos, rx430_curclass, rx430_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx430_cur
    length rx430_eos, rx430_tgt
    eq $I19, 1, rx430_restart1334
    gt rx430_pos, rx430_eos, rx430_fail1335
    repr_get_attr_int $I11, self, rx430_curclass, "$!from"
    ne $I11, -1, rxscan431_done1341
    goto rxscan431_scan1340
  rxscan431_loop1339:
    inc rx430_pos
    gt rx430_pos, rx430_eos, rx430_fail1335
    repr_bind_attr_int rx430_cur, rx430_curclass, "$!from", rx430_pos
  rxscan431_scan1340:
    nqp_rxmark rx430_bstack, rxscan431_loop1339, rx430_pos, 0
  rxscan431_done1341:
    nqp_rxmark rx430_bstack, rxcap432_fail1343, rx430_pos, 0
    add $I11, rx430_pos, 1
    gt $I11, rx430_eos, rx430_fail1335
    substr $S10, rx430_tgt, rx430_pos, 1
    ne $S10, ucs4:"i", rx430_fail1335
    add rx430_pos, 1
    nqp_rxpeek $I19, rx430_bstack, rxcap432_fail1343
    inc $I19
    set $I11, rx430_bstack[$I19]
    repr_bind_attr_int rx430_cur, rx430_curclass, "$!pos", rx430_pos
    $P11 = rx430_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx430_pos)
    rx430_cstack = rx430_cur."!cursor_capture"($P11, "sym")
    goto rxcap432_done1342
  rxcap432_fail1343:
    goto rx430_fail1335
  rxcap432_done1342:
    nqp_rxmark rx430_bstack, rxquantr433_done1345, rx430_pos, 0
  rxquantr433_loop1344:
    add $I11, rx430_pos, 9
    gt $I11, rx430_eos, rx430_fail1335
    substr $S10, rx430_tgt, rx430_pos, 9
    ne $S10, ucs4:"gnorecase", rx430_fail1335
    add rx430_pos, 9
    nqp_rxpeek $I19, rx430_bstack, rxquantr433_done1345
    inc $I19
    inc $I19
    set rx430_rep, rx430_bstack[$I19]
    nqp_rxcommit rx430_bstack, rxquantr433_done1345
    inc rx430_rep
  rxquantr433_done1345:
    rx430_cur."!cursor_pass"(rx430_pos, "mod_ident:sym<ignorecase>", 'backtrack'=>1)
    .return (rx430_cur)
  rx430_restart1334:
    repr_get_attr_obj rx430_cstack, rx430_cur, rx430_curclass, "$!cstack"
  rx430_fail1335:
    unless rx430_bstack, rx430_done1333
    pop $I19, rx430_bstack
    if_null rx430_cstack, rx430_cstack_done1338
    unless rx430_cstack, rx430_cstack_done1338
    dec $I19
    set $P11, rx430_cstack[$I19]
  rx430_cstack_done1338:
    pop rx430_rep, rx430_bstack
    pop rx430_pos, rx430_bstack
    pop $I19, rx430_bstack
    lt rx430_pos, -1, rx430_done1333
    lt rx430_pos, 0, rx430_fail1335
    eq $I19, 0, rx430_fail1335
    nqp_islist $I20, rx430_cstack
    unless $I20, rx430_jump1336
    elements $I18, rx430_bstack
    le $I18, 0, rx430_cut1337
    dec $I18
    set $I18, rx430_bstack[$I18]
  rx430_cut1337:
    assign rx430_cstack, $I18
  rx430_jump1336:
    jump $I19
  rx430_done1333:
    rx430_cur."!cursor_fail"()
    .return (rx430_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_96_1349901746.339_caps" :subid("cuid_memo_190_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_96_1349901746.339_nfa" :subid("cuid_memo_191_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 105
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 103
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 110
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 111
    push $P5018, $P5020
    box $P5021, 5
    push $P5018, $P5021
    push $P5001, $P5018
    new $P5022, 'ResizablePMCArray'
    box $P5023, 2
    push $P5022, $P5023
    box $P5024, 114
    push $P5022, $P5024
    box $P5025, 6
    push $P5022, $P5025
    push $P5001, $P5022
    new $P5026, 'ResizablePMCArray'
    box $P5027, 2
    push $P5026, $P5027
    box $P5028, 101
    push $P5026, $P5028
    box $P5029, 7
    push $P5026, $P5029
    push $P5001, $P5026
    new $P5030, 'ResizablePMCArray'
    box $P5031, 2
    push $P5030, $P5031
    box $P5032, 99
    push $P5030, $P5032
    box $P5033, 8
    push $P5030, $P5033
    push $P5001, $P5030
    new $P5034, 'ResizablePMCArray'
    box $P5035, 2
    push $P5034, $P5035
    box $P5036, 97
    push $P5034, $P5036
    box $P5037, 9
    push $P5034, $P5037
    push $P5001, $P5034
    new $P5038, 'ResizablePMCArray'
    box $P5039, 2
    push $P5038, $P5039
    box $P5040, 115
    push $P5038, $P5040
    box $P5041, 10
    push $P5038, $P5041
    push $P5001, $P5038
    new $P5042, 'ResizablePMCArray'
    box $P5043, 2
    push $P5042, $P5043
    box $P5044, 101
    push $P5042, $P5044
    box $P5045, 0
    push $P5042, $P5045
    push $P5001, $P5042
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_ident:sym<ratchet>" :subid("cuid_97_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 247
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx434_tgt
    .local int rx434_pos
    .local int rx434_off
    .local int rx434_eos
    .local int rx434_rep
    .local pmc rx434_cur
    .local pmc rx434_curclass
    .local pmc rx434_bstack
    .local pmc rx434_cstack
    (rx434_cur, rx434_tgt, rx434_pos, rx434_curclass, rx434_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx434_cur
    length rx434_eos, rx434_tgt
    eq $I19, 1, rx434_restart1348
    gt rx434_pos, rx434_eos, rx434_fail1349
    repr_get_attr_int $I11, self, rx434_curclass, "$!from"
    ne $I11, -1, rxscan435_done1355
    goto rxscan435_scan1354
  rxscan435_loop1353:
    inc rx434_pos
    gt rx434_pos, rx434_eos, rx434_fail1349
    repr_bind_attr_int rx434_cur, rx434_curclass, "$!from", rx434_pos
  rxscan435_scan1354:
    nqp_rxmark rx434_bstack, rxscan435_loop1353, rx434_pos, 0
  rxscan435_done1355:
    nqp_rxmark rx434_bstack, rxcap436_fail1357, rx434_pos, 0
    add $I11, rx434_pos, 1
    gt $I11, rx434_eos, rx434_fail1349
    substr $S10, rx434_tgt, rx434_pos, 1
    ne $S10, ucs4:"r", rx434_fail1349
    add rx434_pos, 1
    nqp_rxpeek $I19, rx434_bstack, rxcap436_fail1357
    inc $I19
    set $I11, rx434_bstack[$I19]
    repr_bind_attr_int rx434_cur, rx434_curclass, "$!pos", rx434_pos
    $P11 = rx434_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx434_pos)
    rx434_cstack = rx434_cur."!cursor_capture"($P11, "sym")
    goto rxcap436_done1356
  rxcap436_fail1357:
    goto rx434_fail1349
  rxcap436_done1356:
    nqp_rxmark rx434_bstack, rxquantr437_done1359, rx434_pos, 0
  rxquantr437_loop1358:
    add $I11, rx434_pos, 6
    gt $I11, rx434_eos, rx434_fail1349
    substr $S10, rx434_tgt, rx434_pos, 6
    ne $S10, ucs4:"atchet", rx434_fail1349
    add rx434_pos, 6
    nqp_rxpeek $I19, rx434_bstack, rxquantr437_done1359
    inc $I19
    inc $I19
    set rx434_rep, rx434_bstack[$I19]
    nqp_rxcommit rx434_bstack, rxquantr437_done1359
    inc rx434_rep
  rxquantr437_done1359:
    rx434_cur."!cursor_pass"(rx434_pos, "mod_ident:sym<ratchet>", 'backtrack'=>1)
    .return (rx434_cur)
  rx434_restart1348:
    repr_get_attr_obj rx434_cstack, rx434_cur, rx434_curclass, "$!cstack"
  rx434_fail1349:
    unless rx434_bstack, rx434_done1347
    pop $I19, rx434_bstack
    if_null rx434_cstack, rx434_cstack_done1352
    unless rx434_cstack, rx434_cstack_done1352
    dec $I19
    set $P11, rx434_cstack[$I19]
  rx434_cstack_done1352:
    pop rx434_rep, rx434_bstack
    pop rx434_pos, rx434_bstack
    pop $I19, rx434_bstack
    lt rx434_pos, -1, rx434_done1347
    lt rx434_pos, 0, rx434_fail1349
    eq $I19, 0, rx434_fail1349
    nqp_islist $I20, rx434_cstack
    unless $I20, rx434_jump1350
    elements $I18, rx434_bstack
    le $I18, 0, rx434_cut1351
    dec $I18
    set $I18, rx434_bstack[$I18]
  rx434_cut1351:
    assign rx434_cstack, $I18
  rx434_jump1350:
    jump $I19
  rx434_done1347:
    rx434_cur."!cursor_fail"()
    .return (rx434_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_97_1349901746.339_caps" :subid("cuid_memo_192_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_97_1349901746.339_nfa" :subid("cuid_memo_193_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 114
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 97
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 116
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 99
    push $P5018, $P5020
    box $P5021, 5
    push $P5018, $P5021
    push $P5001, $P5018
    new $P5022, 'ResizablePMCArray'
    box $P5023, 2
    push $P5022, $P5023
    box $P5024, 104
    push $P5022, $P5024
    box $P5025, 6
    push $P5022, $P5025
    push $P5001, $P5022
    new $P5026, 'ResizablePMCArray'
    box $P5027, 2
    push $P5026, $P5027
    box $P5028, 101
    push $P5026, $P5028
    box $P5029, 7
    push $P5026, $P5029
    push $P5001, $P5026
    new $P5030, 'ResizablePMCArray'
    box $P5031, 2
    push $P5030, $P5031
    box $P5032, 116
    push $P5030, $P5032
    box $P5033, 0
    push $P5030, $P5033
    push $P5001, $P5030
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_ident:sym<sigspace>" :subid("cuid_98_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 248
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx438_tgt
    .local int rx438_pos
    .local int rx438_off
    .local int rx438_eos
    .local int rx438_rep
    .local pmc rx438_cur
    .local pmc rx438_curclass
    .local pmc rx438_bstack
    .local pmc rx438_cstack
    (rx438_cur, rx438_tgt, rx438_pos, rx438_curclass, rx438_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx438_cur
    length rx438_eos, rx438_tgt
    eq $I19, 1, rx438_restart1362
    gt rx438_pos, rx438_eos, rx438_fail1363
    repr_get_attr_int $I11, self, rx438_curclass, "$!from"
    ne $I11, -1, rxscan439_done1369
    goto rxscan439_scan1368
  rxscan439_loop1367:
    inc rx438_pos
    gt rx438_pos, rx438_eos, rx438_fail1363
    repr_bind_attr_int rx438_cur, rx438_curclass, "$!from", rx438_pos
  rxscan439_scan1368:
    nqp_rxmark rx438_bstack, rxscan439_loop1367, rx438_pos, 0
  rxscan439_done1369:
    nqp_rxmark rx438_bstack, rxcap440_fail1371, rx438_pos, 0
    add $I11, rx438_pos, 1
    gt $I11, rx438_eos, rx438_fail1363
    substr $S10, rx438_tgt, rx438_pos, 1
    ne $S10, ucs4:"s", rx438_fail1363
    add rx438_pos, 1
    nqp_rxpeek $I19, rx438_bstack, rxcap440_fail1371
    inc $I19
    set $I11, rx438_bstack[$I19]
    repr_bind_attr_int rx438_cur, rx438_curclass, "$!pos", rx438_pos
    $P11 = rx438_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx438_pos)
    rx438_cstack = rx438_cur."!cursor_capture"($P11, "sym")
    goto rxcap440_done1370
  rxcap440_fail1371:
    goto rx438_fail1363
  rxcap440_done1370:
    nqp_rxmark rx438_bstack, rxquantr441_done1373, rx438_pos, 0
  rxquantr441_loop1372:
    add $I11, rx438_pos, 7
    gt $I11, rx438_eos, rx438_fail1363
    substr $S10, rx438_tgt, rx438_pos, 7
    ne $S10, ucs4:"igspace", rx438_fail1363
    add rx438_pos, 7
    nqp_rxpeek $I19, rx438_bstack, rxquantr441_done1373
    inc $I19
    inc $I19
    set rx438_rep, rx438_bstack[$I19]
    nqp_rxcommit rx438_bstack, rxquantr441_done1373
    inc rx438_rep
  rxquantr441_done1373:
    rx438_cur."!cursor_pass"(rx438_pos, "mod_ident:sym<sigspace>", 'backtrack'=>1)
    .return (rx438_cur)
  rx438_restart1362:
    repr_get_attr_obj rx438_cstack, rx438_cur, rx438_curclass, "$!cstack"
  rx438_fail1363:
    unless rx438_bstack, rx438_done1361
    pop $I19, rx438_bstack
    if_null rx438_cstack, rx438_cstack_done1366
    unless rx438_cstack, rx438_cstack_done1366
    dec $I19
    set $P11, rx438_cstack[$I19]
  rx438_cstack_done1366:
    pop rx438_rep, rx438_bstack
    pop rx438_pos, rx438_bstack
    pop $I19, rx438_bstack
    lt rx438_pos, -1, rx438_done1361
    lt rx438_pos, 0, rx438_fail1363
    eq $I19, 0, rx438_fail1363
    nqp_islist $I20, rx438_cstack
    unless $I20, rx438_jump1364
    elements $I18, rx438_bstack
    le $I18, 0, rx438_cut1365
    dec $I18
    set $I18, rx438_bstack[$I18]
  rx438_cut1365:
    assign rx438_cstack, $I18
  rx438_jump1364:
    jump $I19
  rx438_done1361:
    rx438_cur."!cursor_fail"()
    .return (rx438_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_98_1349901746.339_caps" :subid("cuid_memo_194_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_98_1349901746.339_nfa" :subid("cuid_memo_195_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 115
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 105
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    box $P5011, 1
    push $P5007, $P5011
    box $P5012, 0
    push $P5007, $P5012
    box $P5013, 0
    push $P5007, $P5013
    push $P5001, $P5007
    new $P5014, 'ResizablePMCArray'
    box $P5015, 2
    push $P5014, $P5015
    box $P5016, 103
    push $P5014, $P5016
    box $P5017, 4
    push $P5014, $P5017
    push $P5001, $P5014
    new $P5018, 'ResizablePMCArray'
    box $P5019, 2
    push $P5018, $P5019
    box $P5020, 115
    push $P5018, $P5020
    box $P5021, 5
    push $P5018, $P5021
    push $P5001, $P5018
    new $P5022, 'ResizablePMCArray'
    box $P5023, 2
    push $P5022, $P5023
    box $P5024, 112
    push $P5022, $P5024
    box $P5025, 6
    push $P5022, $P5025
    push $P5001, $P5022
    new $P5026, 'ResizablePMCArray'
    box $P5027, 2
    push $P5026, $P5027
    box $P5028, 97
    push $P5026, $P5028
    box $P5029, 7
    push $P5026, $P5029
    push $P5001, $P5026
    new $P5030, 'ResizablePMCArray'
    box $P5031, 2
    push $P5030, $P5031
    box $P5032, 99
    push $P5030, $P5032
    box $P5033, 8
    push $P5030, $P5033
    push $P5001, $P5030
    new $P5034, 'ResizablePMCArray'
    box $P5035, 2
    push $P5034, $P5035
    box $P5036, 101
    push $P5034, $P5036
    box $P5037, 0
    push $P5034, $P5037
    push $P5001, $P5034
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_ident:sym<dba>" :subid("cuid_99_1349901746.339") :anon :lex :outer("cuid_100_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 249
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx442_tgt
    .local int rx442_pos
    .local int rx442_off
    .local int rx442_eos
    .local int rx442_rep
    .local pmc rx442_cur
    .local pmc rx442_curclass
    .local pmc rx442_bstack
    .local pmc rx442_cstack
    (rx442_cur, rx442_tgt, rx442_pos, rx442_curclass, rx442_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx442_cur
    length rx442_eos, rx442_tgt
    eq $I19, 1, rx442_restart1376
    gt rx442_pos, rx442_eos, rx442_fail1377
    repr_get_attr_int $I11, self, rx442_curclass, "$!from"
    ne $I11, -1, rxscan443_done1383
    goto rxscan443_scan1382
  rxscan443_loop1381:
    inc rx442_pos
    gt rx442_pos, rx442_eos, rx442_fail1377
    repr_bind_attr_int rx442_cur, rx442_curclass, "$!from", rx442_pos
  rxscan443_scan1382:
    nqp_rxmark rx442_bstack, rxscan443_loop1381, rx442_pos, 0
  rxscan443_done1383:
    nqp_rxmark rx442_bstack, rxcap444_fail1385, rx442_pos, 0
    add $I11, rx442_pos, 3
    gt $I11, rx442_eos, rx442_fail1377
    substr $S10, rx442_tgt, rx442_pos, 3
    ne $S10, ucs4:"dba", rx442_fail1377
    add rx442_pos, 3
    nqp_rxpeek $I19, rx442_bstack, rxcap444_fail1385
    inc $I19
    set $I11, rx442_bstack[$I19]
    repr_bind_attr_int rx442_cur, rx442_curclass, "$!pos", rx442_pos
    $P11 = rx442_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx442_pos)
    rx442_cstack = rx442_cur."!cursor_capture"($P11, "sym")
    goto rxcap444_done1384
  rxcap444_fail1385:
    goto rx442_fail1377
  rxcap444_done1384:
    rx442_cur."!cursor_pass"(rx442_pos, "mod_ident:sym<dba>", 'backtrack'=>1)
    .return (rx442_cur)
  rx442_restart1376:
    repr_get_attr_obj rx442_cstack, rx442_cur, rx442_curclass, "$!cstack"
  rx442_fail1377:
    unless rx442_bstack, rx442_done1375
    pop $I19, rx442_bstack
    if_null rx442_cstack, rx442_cstack_done1380
    unless rx442_cstack, rx442_cstack_done1380
    dec $I19
    set $P11, rx442_cstack[$I19]
  rx442_cstack_done1380:
    pop rx442_rep, rx442_bstack
    pop rx442_pos, rx442_bstack
    pop $I19, rx442_bstack
    lt rx442_pos, -1, rx442_done1375
    lt rx442_pos, 0, rx442_fail1377
    eq $I19, 0, rx442_fail1377
    nqp_islist $I20, rx442_cstack
    unless $I20, rx442_jump1378
    elements $I18, rx442_bstack
    le $I18, 0, rx442_cut1379
    dec $I18
    set $I18, rx442_bstack[$I18]
  rx442_cut1379:
    assign rx442_cstack, $I18
  rx442_jump1378:
    jump $I19
  rx442_done1375:
    rx442_cur."!cursor_fail"()
    .return (rx442_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_99_1349901746.339_caps" :subid("cuid_memo_196_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_99_1349901746.339_nfa" :subid("cuid_memo_197_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    new $P5002, 'ResizablePMCArray'
    push $P5001, $P5002
    new $P5003, 'ResizablePMCArray'
    box $P5004, 2
    push $P5003, $P5004
    box $P5005, 100
    push $P5003, $P5005
    box $P5006, 2
    push $P5003, $P5006
    push $P5001, $P5003
    new $P5007, 'ResizablePMCArray'
    box $P5008, 2
    push $P5007, $P5008
    box $P5009, 98
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 2
    push $P5011, $P5012
    box $P5013, 97
    push $P5011, $P5013
    box $P5014, 0
    push $P5011, $P5014
    push $P5001, $P5011
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1349901746.339") :anon :lex :outer("cuid_1_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 253
    .const 'Sub' $P5063 = 'cuid_165_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_167_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_171_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_184_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_101_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_102_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_103_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_104_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_105_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_106_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_107_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_108_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_109_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_110_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_111_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_112_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_113_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_114_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_115_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_116_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_117_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_118_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_119_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_120_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_121_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_122_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_123_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_124_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_125_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_126_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_127_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_128_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_129_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_130_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_131_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_132_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_133_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_134_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_135_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_136_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_137_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_138_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_139_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_140_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_141_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_142_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_143_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_144_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_145_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_146_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_147_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_148_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_149_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_150_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_151_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_152_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_153_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_154_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_155_1349901746.339' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_156_1349901746.339' 
    capture_lex $P5063 
    .lex "&backmod", $P101 
    .lex "&qbuildsub", $P102 
    .lex "&capnames", $P103 
    .lex "&qalt_nfas", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    .const 'Sub' $P5001 = 'cuid_165_1349901746.339' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_167_1349901746.339' 
    capture_lex $P5002
    set $P102, $P5002
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5003["qbuildsub"], $P102
    .const 'Sub' $P5005 = 'cuid_171_1349901746.339' 
    capture_lex $P5005
    set $P103, $P5005
    .const 'Sub' $P5006 = 'cuid_184_1349901746.339' 
    capture_lex $P5006
    set $P104, $P5006
    .const 'Sub' $P5007 = 'cuid_101_1349901746.339' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_102_1349901746.339' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_103_1349901746.339' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_104_1349901746.339' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_105_1349901746.339' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_106_1349901746.339' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_107_1349901746.339' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_108_1349901746.339' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_109_1349901746.339' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_110_1349901746.339' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_111_1349901746.339' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_112_1349901746.339' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_113_1349901746.339' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_114_1349901746.339' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_115_1349901746.339' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_116_1349901746.339' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_117_1349901746.339' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_118_1349901746.339' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_119_1349901746.339' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_120_1349901746.339' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_121_1349901746.339' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_122_1349901746.339' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_123_1349901746.339' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_124_1349901746.339' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_125_1349901746.339' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_126_1349901746.339' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_127_1349901746.339' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_128_1349901746.339' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_129_1349901746.339' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_130_1349901746.339' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_131_1349901746.339' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_132_1349901746.339' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_133_1349901746.339' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_134_1349901746.339' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_135_1349901746.339' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_136_1349901746.339' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_137_1349901746.339' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_138_1349901746.339' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_139_1349901746.339' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_140_1349901746.339' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_141_1349901746.339' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_142_1349901746.339' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_143_1349901746.339' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_144_1349901746.339' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_145_1349901746.339' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_146_1349901746.339' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_147_1349901746.339' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_148_1349901746.339' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_149_1349901746.339' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_150_1349901746.339' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_151_1349901746.339' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_152_1349901746.339' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_153_1349901746.339' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_154_1349901746.339' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_155_1349901746.339' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_156_1349901746.339' 
    capture_lex $P5062
    .return ($P5062) 
.end
.HLL "nqp"
.namespace []
.sub "backmod" :subid("cuid_165_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 784
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ast", _lex_param_0 
    .lex "$backmod", _lex_param_1 
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, ":"
    unless $I5001 goto if445_else1386 
.annotate 'line', 785
    $P5001 = _lex_param_0."backtrack"("r")
    set $P5007, $P5001
    goto if445_end1387
  if445_else1386:
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, ":?"
    set $I5004, $I5002
    if $I5002 goto unless447_end1391 
    set $S5003, _lex_param_1
    iseq $I5003, $S5003, "?"
    set $I5004, $I5003
  unless447_end1391:
    unless $I5004 goto if446_else1388 
.annotate 'line', 786
    $P5002 = _lex_param_0."backtrack"("f")
    set $P5006, $P5002
    goto if446_end1389
  if446_else1388:
    set $S5004, _lex_param_1
    iseq $I5005, $S5004, ":!"
    set $I5007, $I5005
    if $I5005 goto unless449_end1395 
    set $S5005, _lex_param_1
    iseq $I5006, $S5005, "!"
    set $I5007, $I5006
  unless449_end1395:
    box $P5005, $I5007
    set $P5004, $P5005
    unless $I5007 goto if448_end1393 
.annotate 'line', 787
    $P5003 = _lex_param_0."backtrack"("g")
    set $P5004, $P5003
  if448_end1393:
    set $P5006, $P5004
  if446_end1389:
    set $P5007, $P5006
  if445_end1387:
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "qbuildsub" :subid("cuid_167_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 791
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc _lex_param_2 :named("anon") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc _lex_param_3 :named("addself") :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5113 = 'cuid_166_1349901746.339' 
    capture_lex $P5113 
    .const 'Sub' $P5113 = 'cuid_168_1349901746.339' 
    capture_lex $P5113 
    if haz_param_2, default1428
    nqp_get_sc_object $P5108, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5107, $P5108, "QAST"
    get_who $P5106, $P5107
    set $P5105, $P5106["Block"]
    unless_null $P5105, fallback1429
    nqp_get_sc_object $P5109, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5105, $P5109
  fallback1429:
    $P5110 = $P5105."new"()
    set _lex_param_1, $P5110
  default1428:
    if haz_param_3, default1430
    nqp_get_sc_object $P5111, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_2, $P5111
  default1430:
    if haz_param_4, default1431
    nqp_get_sc_object $P5112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_3, $P5112
  default1431:
    .lex "$blockid", $P101 
    .lex "$hashpast", $P102 
    .lex "$initpast", $P103 
    .lex "$capblock", $P104 
    .lex "$nfapast", $P105 
    .lex "$qast", _lex_param_0 
    .lex "$block", _lex_param_1 
    .lex "$anon", _lex_param_2 
    .lex "$addself", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P105, $P5005
.annotate 'line', 792
    $P5006 = _lex_param_1."cuid"()
    set $P101, $P5006
.annotate 'line', 793
    nqp_get_sc_object $P5010, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Op"]
    unless_null $P5007, fallback1396
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5011
  fallback1396:
    $P5012 = $P5007."new"("hash" :named("op"))
    set $P102, $P5012
.annotate 'line', 794
    $P5016 = "&capnames"(_lex_param_0, 0)
    set $P5013, $P5016
    iter $P5015, $P5016
  for_next1401:
    unless $P5015, for_done1403
    shift $P5018, $P5015
  for_redo1402:
    .const 'Sub' $P5017 = 'cuid_166_1349901746.339' 
    capture_lex $P5017
    $P5013 = $P5017($P5018)
    goto for_next1401
  for_done1403:
.annotate 'line', 801
    nqp_get_sc_object $P5022, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Stmts"]
    unless_null $P5019, fallback1404
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5023
  fallback1404:
    $P5024 = $P5019."new"()
    set $P103, $P5024
    set $P5032, _lex_param_3
    unless _lex_param_3 goto if451_end1406 
.annotate 'line', 802
.annotate 'line', 803
    nqp_get_sc_object $P5028, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5027, $P5028, "QAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["Var"]
    unless_null $P5025, fallback1407
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5025, $P5029
  fallback1407:
    $P5030 = $P5025."new"("self" :named("name"), "local" :named("scope"), "param" :named("decl"))
    $P5031 = $P103."push"($P5030)
    set $P5032, $P5031
  if451_end1406:
.annotate 'line', 805
    nqp_get_sc_object $P5036, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5035, $P5036, "QAST"
    get_who $P5034, $P5035
    set $P5033, $P5034["BlockMemo"]
    unless_null $P5033, fallback1408
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5033, $P5037
  fallback1408:
    set $S5002, $P101
    concat $S5001, $S5002, "_caps"
    $P5038 = $P5033."new"($P102, $S5001 :named("name"))
    set $P104, $P5038
.annotate 'line', 806
    nqp_get_sc_object $P5042, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5041, $P5042, "QAST"
    get_who $P5040, $P5041
    set $P5039, $P5040["Stmt"]
    unless_null $P5039, fallback1409
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5039, $P5043
  fallback1409:
    $P5044 = $P5039."new"($P104)
    $P5045 = $P103."push"($P5044)
.annotate 'line', 808
    nqp_get_sc_object $P5049, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5048, $P5049, "QRegex"
    get_who $P5047, $P5048
    set $P5046, $P5047["NFA"]
    unless_null $P5046, fallback1410
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5046, $P5050
  fallback1410:
    $P5051 = $P5046."new"()
    $P5052 = $P5051."addnode"(_lex_param_0)
    $P5053 = $P5052."qast"()
    set $P105, $P5053
    set $P5056, $P105
    unless $P105 goto if452_end1412 
    .const 'Sub' $P5054 = 'cuid_168_1349901746.339' 
    capture_lex $P5054
    $P5055 = $P5054()
    set $P5056, $P5055
  if452_end1412:
.annotate 'line', 813
    $P5057 = "&qalt_nfas"(_lex_param_0, $P101, $P103)
.annotate 'line', 815
    $P5058 = _lex_param_1."symbol"(utf8:"$\x{a2}")
    set $P5067, $P5058
    if $P5058 goto unless453_end1416 
.annotate 'line', 816
    nqp_get_sc_object $P5062, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5061, $P5062, "QAST"
    get_who $P5060, $P5061
    set $P5059, $P5060["Var"]
    unless_null $P5059, fallback1417
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5059, $P5063
  fallback1417:
    $P5064 = $P5059."new"(utf8:"$\x{a2}" :named("name"), "lexical" :named("scope"), "var" :named("decl"))
    $P5065 = $P103."push"($P5064)
.annotate 'line', 817
    $P5066 = _lex_param_1."symbol"(utf8:"$\x{a2}", "lexical" :named("scope"))
    set $P5067, $P5066
  unless453_end1416:
    set _lex_param_1["orig_qast"], _lex_param_0
.annotate 'line', 822
    nqp_get_sc_object $P5071, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5070, $P5071, "QAST"
    get_who $P5069, $P5070
    set $P5068, $P5069["Regex"]
    unless_null $P5068, fallback1418
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5068, $P5072
  fallback1418:
.annotate 'line', 823
    nqp_get_sc_object $P5076, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5075, $P5076, "QAST"
    get_who $P5074, $P5075
    set $P5073, $P5074["Regex"]
    unless_null $P5073, fallback1419
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5073, $P5077
  fallback1419:
    $P5078 = $P5073."new"("scan" :named("rxtype"))
    unless _lex_param_2 goto if454_else1420 
.annotate 'line', 826
    nqp_get_sc_object $P5082, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5081, $P5082, "QAST"
    get_who $P5080, $P5081
    set $P5079, $P5080["Regex"]
    unless_null $P5079, fallback1422
    nqp_get_sc_object $P5083, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5079, $P5083
  fallback1422:
    $P5084 = $P5079."new"("pass" :named("rxtype"))
    set $P5101, $P5084
    goto if454_end1421
  if454_else1420:
.annotate 'line', 827
    nqp_get_sc_object $P5088, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5087, $P5088, "QAST"
    get_who $P5086, $P5087
    set $P5085, $P5086["Regex"]
    unless_null $P5085, fallback1423
    nqp_get_sc_object $P5089, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5085, $P5089
  fallback1423:
    find_dynamic_lex $P5091, "%*RX"
    unless_null $P5091, fallback1424
    nqp_get_sc_object $P5094, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5093, $P5094
    set $P5092, $P5093["%RX"]
    unless_null $P5092, fallback1425
    nqp_get_sc_object $P5096, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5095, $P5096
    new $P5097, 'Hash'
    set $P5095["%RX"], $P5097
    set $P5092, $P5097
  fallback1425:
    unless_null $P5092, vivi_4551426
    die "Contextual %*RX not found"
    box $P5098, "Contextual %*RX not found"
    set $P5092, $P5098
  vivi_4551426:
    set $P5091, $P5092
  fallback1424:
    set $P5090, $P5091["name"]
    unless_null $P5090, fallback1427
    nqp_get_sc_object $P5099, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5090, $P5099
  fallback1427:
    $P5100 = $P5085."new"("pass" :named("rxtype"), $P5090 :named("name"))
    set $P5101, $P5100
  if454_end1421:
    $P5102 = $P5068."new"($P5078, _lex_param_0, $P5101, "concat" :named("rxtype"))
    set _lex_param_0, $P5102
.annotate 'line', 828
    $P5103 = _lex_param_1."push"($P103)
.annotate 'line', 829
    $P5104 = _lex_param_1."push"(_lex_param_0)
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1349901746.339") :anon :lex :outer("cuid_167_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 794
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 795
    $P5001 = _lex_param_0."key"()
    set $S5001, $P5001
    isgt $I5001, $S5001, ""
    box $P5022, $I5001
    set $P5021, $P5022
    unless $I5001 goto if450_end1398 
.annotate 'line', 796
    find_lex $P5002, "$hashpast"
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["SVal"]
    unless_null $P5003, fallback1399
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5007
  fallback1399:
    $P5008 = _lex_param_0."key"()
    $P5009 = $P5003."new"($P5008 :named("value"))
    $P5010 = $P5002."push"($P5009)
.annotate 'line', 797
    find_lex $P5011, "$hashpast"
    nqp_get_sc_object $P5015, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["IVal"]
    unless_null $P5012, fallback1400
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5016
  fallback1400:
.annotate 'line', 798
    $P5017 = _lex_param_0."key"()
    set $S5002, $P5017
    is_cclass $I5002, .CCLASS_NUMERIC, $S5002, 0
    set $N5002, $I5002
    $P5018 = _lex_param_0."value"()
    set $N5004, $P5018
    set $N5005, 1
    isgt $I5003, $N5004, $N5005
    set $N5006, $I5003
    set $N5007, 2
    mul $N5003, $N5006, $N5007
    add $N5001, $N5002, $N5003
    $P5019 = $P5012."new"($N5001 :named("value"))
    $P5020 = $P5011."push"($P5019)
    set $P5021, $P5020
  if450_end1398:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1349901746.339") :anon :lex :outer("cuid_167_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 809
    .lex "$nfablock", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 810
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["BlockMemo"]
    unless_null $P5002, fallback1413
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1413:
    find_lex $P5007, "$blockid"
    set $S5002, $P5007
    concat $S5001, $S5002, "_nfa"
    find_lex $P5008, "$nfapast"
    $P5009 = $P5002."new"($P5008, $S5001 :named("name"))
    set $P101, $P5009
.annotate 'line', 811
    find_lex $P5010, "$initpast"
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Stmt"]
    unless_null $P5011, fallback1414
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1414:
    $P5016 = $P5011."new"($P101)
    $P5017 = $P5010."push"($P5016)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "capnames" :subid("cuid_171_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 833
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5025 = 'cuid_170_1349901746.339' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_174_1349901746.339' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_176_1349901746.339' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_178_1349901746.339' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_181_1349901746.339' 
    capture_lex $P5025 
    .lex "%capnames", $P101 
    .lex "$rxtype", $P102 
    .lex "$ast", _lex_param_0 
    .lex "$count", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
.annotate 'line', 835
    $P5003 = _lex_param_0."rxtype"()
    set $P102, $P5003
    set $S5001, $P102
    iseq $I5001, $S5001, "concat"
    unless $I5001 goto if456_else1432 
.annotate 'line', 836
.annotate 'line', 837
    $P5007 = _lex_param_0."list"()
    set $P5004, $P5007
    iter $P5006, $P5007
  for_next1439:
    unless $P5006, for_done1441
    shift $P5009, $P5006
  for_redo1440:
    .const 'Sub' $P5008 = 'cuid_170_1349901746.339' 
    capture_lex $P5008
    $P5004 = $P5008($P5009)
    goto for_next1439
  for_done1441:
    set $P5024, $P5004
    goto if456_end1433
  if456_else1432:
    set $S5002, $P102
    iseq $I5002, $S5002, "altseq"
    set $I5004, $I5002
    if $I5002 goto unless458_end1445 
    set $S5003, $P102
    iseq $I5003, $S5003, "alt"
    set $I5004, $I5003
  unless458_end1445:
    unless $I5004 goto if457_else1442 
    .const 'Sub' $P5010 = 'cuid_174_1349901746.339' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5023, $P5011
    goto if457_end1443
  if457_else1442:
    set $S5004, $P102
    iseq $I5005, $S5004, "subrule"
    set $I5007, $I5005
    unless $I5005 goto if463_end1465 
.annotate 'line', 854
    $P5012 = _lex_param_0."subtype"()
    set $S5005, $P5012
    iseq $I5006, $S5005, "capture"
    set $I5007, $I5006
  if463_end1465:
    unless $I5007 goto if462_else1462 
    .const 'Sub' $P5013 = 'cuid_176_1349901746.339' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5022, $P5014
    goto if462_end1463
  if462_else1462:
    set $S5006, $P102
    iseq $I5008, $S5006, "subcapture"
    unless $I5008 goto if467_else1475 
    .const 'Sub' $P5015 = 'cuid_178_1349901746.339' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5021, $P5016
    goto if467_end1476
  if467_else1475:
    set $S5007, $P102
    iseq $I5009, $S5007, "quant"
    box $P5020, $I5009
    set $P5019, $P5020
    unless $I5009 goto if470_end1492 
    .const 'Sub' $P5017 = 'cuid_181_1349901746.339' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
  if470_end1492:
    set $P5021, $P5019
  if467_end1476:
    set $P5022, $P5021
  if462_end1463:
    set $P5023, $P5022
  if457_end1443:
    set $P5024, $P5023
  if456_end1433:
    set $P101[""], _lex_param_1
    delete $P101["$!from"]
    delete $P101["$!to"]
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1349901746.339") :anon :lex :outer("cuid_171_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 837
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_169_1349901746.339' 
    capture_lex $P5011 
    .lex "%x", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 838
    find_lex $P5002, "$count"
    $P5003 = "&capnames"(_lex_param_0, $P5002)
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next1435:
    unless $P5006, for_done1437
    shift $P5008, $P5006
  for_redo1436:
    .const 'Sub' $P5007 = 'cuid_169_1349901746.339' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next1435
  for_done1437:
    set $P5009, $P101[""]
    unless_null $P5009, fallback1438
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5010
  fallback1438:
    store_lex "$count", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1349901746.339") :anon :lex :outer("cuid_170_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 839
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1434
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5006
  fallback1434:
    set $N5002, $P5003
    $P5007 = _lex_param_0."value"()
    set $N5003, $P5007
    add $N5001, $N5002, $N5003
    box $P5008, $N5001
    set $P5001[$S5001], $P5008
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1349901746.339") :anon :lex :outer("cuid_171_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 843
    .const 'Sub' $P5010 = 'cuid_173_1349901746.339' 
    capture_lex $P5010 
    .lex "$max", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_lex $P5002, "$count"
    set $P101, $P5002
.annotate 'line', 845
    find_lex $P5006, "$ast"
    $P5007 = $P5006."list"()
    set $P5003, $P5007
    iter $P5005, $P5007
  for_next1459:
    unless $P5005, for_done1461
    shift $P5009, $P5005
  for_redo1460:
    .const 'Sub' $P5008 = 'cuid_173_1349901746.339' 
    capture_lex $P5008
    $P5003 = $P5008($P5009)
    goto for_next1459
  for_done1461:
    store_lex "$count", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1349901746.339") :anon :lex :outer("cuid_174_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 845
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_172_1349901746.339' 
    capture_lex $P5016 
    .lex "%x", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 846
    find_lex $P5002, "$count"
    $P5003 = "&capnames"(_lex_param_0, $P5002)
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next1452:
    unless $P5006, for_done1454
    shift $P5008, $P5006
  for_redo1453:
    .const 'Sub' $P5007 = 'cuid_172_1349901746.339' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next1452
  for_done1454:
    set $P5009, $P101[""]
    unless_null $P5009, fallback1457
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5010
  fallback1457:
    set $N5001, $P5009
    find_lex $P5011, "$max"
    set $N5002, $P5011
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if461_end1456 
    set $P5012, $P101[""]
    unless_null $P5012, fallback1458
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5013
  fallback1458:
    store_lex "$max", $P5012
    set $P5014, $P5012
  if461_end1456:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1349901746.339") :anon :lex :outer("cuid_173_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 847
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
.annotate 'line', 848
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1450
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5006
  fallback1450:
    set $N5001, $P5003
    set $N5002, 2
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if460_end1449 
    find_lex $P5008, "%x"
    $P5009 = _lex_param_0."key"()
    set $S5003, $P5009
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback1451
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5010
  fallback1451:
    set $N5003, $P5007
    set $N5004, 1
    iseq $I5002, $N5003, $N5004
    set $I5003, $I5002
  if460_end1449:
    unless $I5003 goto if459_else1446 
    set $I5004, 1
    goto if459_end1447
  if459_else1446:
    set $I5004, 2
  if459_end1447:
    box $P5011, $I5004
    set $P5001[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1349901746.339") :anon :lex :outer("cuid_171_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 854
    .const 'Sub' $P5016 = 'cuid_175_1349901746.339' 
    capture_lex $P5016 
    .lex "$name", $P101 
    .lex "@names", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 855
    find_lex $P5003, "$ast"
    $P5004 = $P5003."name"()
    set $P101, $P5004
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if464_end1467 
.annotate 'line', 856
    find_lex $P5005, "$count"
    set $P101, $P5005
    find_lex $P5006, "$ast"
    $P5007 = $P5006."name"($P101)
    set $P5008, $P5007
  if464_end1467:
    set $S5002, $P101
    split $P5010, "=", $S5002
    set $P102, $P5010
    set $P5011, $P102
    iter $P5013, $P102
  for_next1472:
    unless $P5013, for_done1474
    shift $P5015, $P5013
  for_redo1473:
    .const 'Sub' $P5014 = 'cuid_175_1349901746.339' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1472
  for_done1474:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1349901746.339") :anon :lex :outer("cuid_176_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 858
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, "0"
    set $I5003, $I5001
    if $I5001 goto unless466_end1471 
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    set $I5003, $I5002
  unless466_end1471:
    box $P5003, $I5003
    set $P5002, $P5003
    unless $I5003 goto if465_end1469 
.annotate 'line', 859
    set $N5004, _lex_param_0
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5001, $N5003
    store_lex "$count", $P5001
    set $P5002, $P5001
  if465_end1469:
    find_lex $P5004, "%capnames"
    set $S5002, _lex_param_0
    box $P5005, 1
    set $P5004[$S5002], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1349901746.339") :anon :lex :outer("cuid_171_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 863
    .const 'Sub' $P5022 = 'cuid_177_1349901746.339' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_179_1349901746.339' 
    capture_lex $P5022 
    .lex "%x", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 864
    find_lex $P5006, "$ast"
    $P5007 = $P5006."name"()
    set $S5001, $P5007
    split $P5005, " ", $S5001
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next1481:
    unless $P5004, for_done1483
    shift $P5009, $P5004
  for_redo1482:
    .const 'Sub' $P5008 = 'cuid_177_1349901746.339' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next1481
  for_done1483:
.annotate 'line', 868
    find_lex $P5011, "$ast"
    set $P5010, $P5011[0]
    unless_null $P5010, fallback1484
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5012
  fallback1484:
    find_lex $P5013, "$count"
    $P5014 = "&capnames"($P5010, $P5013)
    set $P101, $P5014
    set $P5015, $P101
    iter $P5017, $P101
  for_next1487:
    unless $P5017, for_done1489
    shift $P5019, $P5017
  for_redo1488:
    .const 'Sub' $P5018 = 'cuid_179_1349901746.339' 
    capture_lex $P5018
    $P5015 = $P5018($P5019)
    goto for_next1487
  for_done1489:
    set $P5020, $P101[""]
    unless_null $P5020, fallback1490
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5021
  fallback1490:
    store_lex "$count", $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1349901746.339") :anon :lex :outer("cuid_178_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 864
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, "0"
    set $I5003, $I5001
    if $I5001 goto unless469_end1480 
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    set $I5003, $I5002
  unless469_end1480:
    box $P5003, $I5003
    set $P5002, $P5003
    unless $I5003 goto if468_end1478 
.annotate 'line', 865
    set $N5004, _lex_param_0
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5001, $N5003
    store_lex "$count", $P5001
    set $P5002, $P5001
  if468_end1478:
    find_lex $P5004, "%capnames"
    set $S5002, _lex_param_0
    box $P5005, 1
    set $P5004[$S5002], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1349901746.339") :anon :lex :outer("cuid_178_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 869
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1485
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5006
  fallback1485:
    set $N5002, $P5003
    find_lex $P5008, "%x"
    $P5009 = _lex_param_0."key"()
    set $S5003, $P5009
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback1486
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5010
  fallback1486:
    set $N5003, $P5007
    add $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5001[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1349901746.339") :anon :lex :outer("cuid_171_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 872
    .const 'Sub' $P5014 = 'cuid_180_1349901746.339' 
    capture_lex $P5014 
    .lex "%astcap", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 873
    find_lex $P5003, "$ast"
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1493
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5004
  fallback1493:
    find_lex $P5005, "$count"
    $P5006 = "&capnames"($P5002, $P5005)
    set $P101, $P5006
    set $P5007, $P101
    iter $P5009, $P101
  for_next1494:
    unless $P5009, for_done1496
    shift $P5011, $P5009
  for_redo1495:
    .const 'Sub' $P5010 = 'cuid_180_1349901746.339' 
    capture_lex $P5010
    $P5007 = $P5010($P5011)
    goto for_next1494
  for_done1496:
    set $P5012, $P101[""]
    unless_null $P5012, fallback1497
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5013
  fallback1497:
    store_lex "$count", $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1349901746.339") :anon :lex :outer("cuid_181_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 874
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
    set $S5001, _lex_param_0
    box $P5002, 2
    set $P5001[$S5001], $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "qalt_nfas" :subid("cuid_184_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 883
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5018 = 'cuid_183_1349901746.339' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_185_1349901746.339' 
    capture_lex $P5018 
    .lex "$rxtype", $P101 
    .lex "$ast", _lex_param_0 
    .lex "$subid", _lex_param_1 
    .lex "$initpast", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 884
    $P5002 = _lex_param_0."rxtype"()
    set $P101, $P5002
    set $S5001, $P101
    iseq $I5001, $S5001, "alt"
    unless $I5001 goto if471_else1498 
    .const 'Sub' $P5003 = 'cuid_183_1349901746.339' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5017, $P5004
    goto if471_end1499
  if471_else1498:
    set $S5002, $P101
    iseq $I5002, $S5002, "subcapture"
    set $I5004, $I5002
    if $I5002 goto unless473_end1511 
    set $S5003, $P101
    iseq $I5003, $S5003, "quant"
    set $I5004, $I5003
  unless473_end1511:
    unless $I5004 goto if472_else1508 
.annotate 'line', 895
.annotate 'line', 896
    set $P5005, _lex_param_0[0]
    unless_null $P5005, fallback1512
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5005, $P5006
  fallback1512:
    $P5007 = "&qalt_nfas"($P5005, _lex_param_1, _lex_param_2)
    set $P5016, $P5007
    goto if472_end1509
  if472_else1508:
    set $S5004, $P101
    iseq $I5005, $S5004, "concat"
    set $I5007, $I5005
    if $I5005 goto unless477_end1520 
    set $S5005, $P101
    iseq $I5006, $S5005, "altseq"
    set $I5007, $I5006
  unless477_end1520:
    set $I5009, $I5007
    if $I5007 goto unless476_end1518 
    set $S5006, $P101
    iseq $I5008, $S5006, "conj"
    set $I5009, $I5008
  unless476_end1518:
    set $I5011, $I5009
    if $I5009 goto unless475_end1516 
    set $S5007, $P101
    iseq $I5010, $S5007, "conjseq"
    set $I5011, $I5010
  unless475_end1516:
    box $P5015, $I5011
    set $P5014, $P5015
    unless $I5011 goto if474_end1514 
.annotate 'line', 898
.annotate 'line', 899
    $P5011 = _lex_param_0."list"()
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next1521:
    unless $P5010, for_done1523
    shift $P5013, $P5010
  for_redo1522:
    .const 'Sub' $P5012 = 'cuid_185_1349901746.339' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next1521
  for_done1523:
    set $P5014, $P5008
  if474_end1514:
    set $P5016, $P5014
  if472_end1509:
    set $P5017, $P5016
  if471_end1499:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1349901746.339") :anon :lex :outer("cuid_184_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 885
    .const 'Sub' $P5041 = 'cuid_182_1349901746.339' 
    capture_lex $P5041 
    .lex "$nfapast", $P101 
    .lex "$nfablock", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
.annotate 'line', 886
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback1500
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5007
  fallback1500:
    $P5008 = $P5003."new"("list" :named("op"))
    set $P101, $P5008
.annotate 'line', 887
    find_lex $P5009, "$ast"
    nqp_get_sc_object $P5013, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Node"]
    unless_null $P5010, fallback1501
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5014
  fallback1501:
    $P5015 = $P5010."unique"("alt_nfa_")
    set $S5003, $P5015
    concat $S5002, $S5003, "_"
    time $N5001
    set $S5004, $N5001
    concat $S5001, $S5002, $S5004
    $P5016 = $P5009."name"($S5001)
.annotate 'line', 888
    find_lex $P5020, "$ast"
    $P5021 = $P5020."list"()
    set $P5017, $P5021
    iter $P5019, $P5021
  for_next1503:
    unless $P5019, for_done1505
    shift $P5023, $P5019
  for_redo1504:
    .const 'Sub' $P5022 = 'cuid_182_1349901746.339' 
    capture_lex $P5022
    $P5017 = $P5022($P5023)
    goto for_next1503
  for_done1505:
.annotate 'line', 892
    nqp_get_sc_object $P5027, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["BlockMemo"]
    unless_null $P5024, fallback1506
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5024, $P5028
  fallback1506:
    find_lex $P5029, "$subid"
    set $S5007, $P5029
    concat $S5006, $S5007, "_"
    find_lex $P5030, "$ast"
    $P5031 = $P5030."name"()
    set $S5008, $P5031
    concat $S5005, $S5006, $S5008
    $P5032 = $P5024."new"($P101, $S5005 :named("name"))
    set $P102, $P5032
.annotate 'line', 893
    find_lex $P5033, "$initpast"
    nqp_get_sc_object $P5037, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["Stmt"]
    unless_null $P5034, fallback1507
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5034, $P5038
  fallback1507:
    $P5039 = $P5034."new"($P102)
    $P5040 = $P5033."push"($P5039)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1349901746.339") :anon :lex :outer("cuid_183_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 888
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 889
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&qalt_nfas"(_lex_param_0, $P5001, $P5002)
.annotate 'line', 890
    find_lex $P5004, "$nfapast"
    nqp_get_sc_object $P5008, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5007, $P5008, "QRegex"
    get_who $P5006, $P5007
    set $P5005, $P5006["NFA"]
    unless_null $P5005, fallback1502
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5005, $P5009
  fallback1502:
    $P5010 = $P5005."new"()
    $P5011 = $P5010."addnode"(_lex_param_0)
    $P5012 = $P5011."qast"(1 :named("non_empty"))
    $P5013 = $P5004."push"($P5012)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1349901746.339") :anon :lex :outer("cuid_184_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 899
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&qalt_nfas"(_lex_param_0, $P5001, $P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_101_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 255
    unless_null _lex_param_1, fallback1524
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1524:
    set $P5001, _lex_param_1["nibbler"]
    unless_null $P5001, fallback1525
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1525:
    $P5004 = $P5001."ast"()
    $P5005 = "&qbuildsub"($P5004, 1 :named("anon"), 1 :named("addself"))
    $P5006 = _lex_param_1."!make"($P5005)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "nibbler" :subid("cuid_102_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 258
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback1526
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1526:
    set $P5001, _lex_param_1["termaltseq"]
    unless_null $P5001, fallback1527
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1527:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "termaltseq" :subid("cuid_103_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 260
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_186_1349901746.339' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 261
    unless_null _lex_param_1, fallback1528
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1528:
    set $P5003, _lex_param_1["termconjseq"]
    unless_null $P5003, fallback1529
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1529:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1530
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1530:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1533
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1533:
    set $P5008, _lex_param_1["termconjseq"]
    unless_null $P5008, fallback1534
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1534:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if478_end1532 
.annotate 'line', 262
.annotate 'line', 263
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1535
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1535:
    $P5016 = $P5011."new"("altseq" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1536
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5021
  fallback1536:
    set $P5020, _lex_param_1["termconjseq"]
    unless_null $P5020, fallback1537
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5022
  fallback1537:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1538:
    unless $P5019, for_done1540
    shift $P5024, $P5019
  for_redo1539:
    .const 'Sub' $P5023 = 'cuid_186_1349901746.339' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1538
  for_done1540:
    set $P5025, $P5017
  if478_end1532:
.annotate 'line', 266
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1349901746.339") :anon :lex :outer("cuid_103_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 264
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termconjseq" :subid("cuid_104_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_187_1349901746.339' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 270
    unless_null _lex_param_1, fallback1541
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1541:
    set $P5003, _lex_param_1["termalt"]
    unless_null $P5003, fallback1542
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1542:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1543
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1543:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1546
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1546:
    set $P5008, _lex_param_1["termalt"]
    unless_null $P5008, fallback1547
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1547:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if479_end1545 
.annotate 'line', 271
.annotate 'line', 272
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1548
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1548:
    $P5016 = $P5011."new"("conjseq" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1549
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5021
  fallback1549:
    set $P5020, _lex_param_1["termalt"]
    unless_null $P5020, fallback1550
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5022
  fallback1550:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1551:
    unless $P5019, for_done1553
    shift $P5024, $P5019
  for_redo1552:
    .const 'Sub' $P5023 = 'cuid_187_1349901746.339' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1551
  for_done1553:
    set $P5025, $P5017
  if479_end1545:
.annotate 'line', 275
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1349901746.339") :anon :lex :outer("cuid_104_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 273
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termalt" :subid("cuid_105_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 278
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_188_1349901746.339' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 279
    unless_null _lex_param_1, fallback1554
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1554:
    set $P5003, _lex_param_1["termconj"]
    unless_null $P5003, fallback1555
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1555:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1556
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1556:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1559
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1559:
    set $P5008, _lex_param_1["termconj"]
    unless_null $P5008, fallback1560
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1560:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if480_end1558 
.annotate 'line', 280
.annotate 'line', 281
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1561
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1561:
    $P5016 = $P5011."new"("alt" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1562
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5021
  fallback1562:
    set $P5020, _lex_param_1["termconj"]
    unless_null $P5020, fallback1563
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5022
  fallback1563:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1564:
    unless $P5019, for_done1566
    shift $P5024, $P5019
  for_redo1565:
    .const 'Sub' $P5023 = 'cuid_188_1349901746.339' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1564
  for_done1566:
    set $P5025, $P5017
  if480_end1558:
.annotate 'line', 284
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1349901746.339") :anon :lex :outer("cuid_105_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termconj" :subid("cuid_106_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 287
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_189_1349901746.339' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 288
    unless_null _lex_param_1, fallback1567
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1567:
    set $P5003, _lex_param_1["termish"]
    unless_null $P5003, fallback1568
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1568:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1569
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1569:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1572
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1572:
    set $P5008, _lex_param_1["termish"]
    unless_null $P5008, fallback1573
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1573:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if481_end1571 
.annotate 'line', 289
.annotate 'line', 290
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1574
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1574:
    $P5016 = $P5011."new"("conj" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1575
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5021
  fallback1575:
    set $P5020, _lex_param_1["termish"]
    unless_null $P5020, fallback1576
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5022
  fallback1576:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1577:
    unless $P5019, for_done1579
    shift $P5024, $P5019
  for_redo1578:
    .const 'Sub' $P5023 = 'cuid_189_1349901746.339' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1577
  for_done1579:
    set $P5025, $P5017
  if481_end1571:
.annotate 'line', 293
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1349901746.339") :anon :lex :outer("cuid_106_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 291
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_107_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 296
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_190_1349901746.339' 
    capture_lex $P5019 
    .lex "$qast", $P101 
    .lex "$lastlit", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
.annotate 'line', 297
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Regex"]
    unless_null $P5003, fallback1580
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5007
  fallback1580:
    $P5008 = $P5003."new"("concat" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5008
    box $P5009, 0
    set $P102, $P5009
    unless_null _lex_param_1, fallback1581
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5014
  fallback1581:
    set $P5013, _lex_param_1["noun"]
    unless_null $P5013, fallback1582
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5015
  fallback1582:
    set $P5010, $P5013
    iter $P5012, $P5013
  for_next1601:
    unless $P5012, for_done1603
    shift $P5017, $P5012
  for_redo1602:
    .const 'Sub' $P5016 = 'cuid_190_1349901746.339' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1601
  for_done1603:
.annotate 'line', 314
    $P5018 = _lex_param_1."!make"($P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1349901746.339") :anon :lex :outer("cuid_107_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 300
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    set $P5039, $P101
    unless $P101 goto if482_end1584 
.annotate 'line', 301
    find_lex $P5003, "$lastlit"
    set $P5005, $P5003
    unless $P5003 goto if485_end1590 
.annotate 'line', 302
    $P5004 = $P101."rxtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "literal"
    box $P5006, $I5001
    set $P5005, $P5006
  if485_end1590:
    set $P5015, $P5005
    unless $P5005 goto if484_end1588 
.annotate 'line', 303
    nqp_get_sc_object $P5010, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Node"]
    unless_null $P5007, fallback1591
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5011
  fallback1591:
    set $P5012, $P101[0]
    unless_null $P5012, fallback1592
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5013
  fallback1592:
    $P5014 = $P5007."ACCEPTS"($P5012)
    isfalse $I5002, $P5014
    box $P5016, $I5002
    set $P5015, $P5016
  if484_end1588:
    unless $P5015 goto if483_else1585 
    find_lex $P5017, "$lastlit"
    find_lex $P5019, "$lastlit"
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1593
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5020
  fallback1593:
    set $S5003, $P5018
    set $P5021, $P101[0]
    unless_null $P5021, fallback1594
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5021, $P5022
  fallback1594:
    set $S5004, $P5021
    concat $S5002, $S5003, $S5004
    box $P5023, $S5002
    set $P5017[0], $P5023
    set $P5038, $P5023
    goto if483_end1586
  if483_else1585:
.annotate 'line', 306
.annotate 'line', 307
    find_lex $P5024, "$qast"
    $P5025 = _lex_param_0."ast"()
    $P5026 = $P5024."push"($P5025)
.annotate 'line', 308
    $P5027 = $P101."rxtype"()
    set $S5005, $P5027
    iseq $I5003, $S5005, "literal"
    set $I5005, $I5003
    unless $I5003 goto if487_end1598 
.annotate 'line', 309
    nqp_get_sc_object $P5031, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5030, $P5031, "QAST"
    get_who $P5029, $P5030
    set $P5028, $P5029["Node"]
    unless_null $P5028, fallback1599
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5028, $P5032
  fallback1599:
    set $P5033, $P101[0]
    unless_null $P5033, fallback1600
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5033, $P5034
  fallback1600:
    $P5035 = $P5028."ACCEPTS"($P5033)
    isfalse $I5004, $P5035
    set $I5005, $I5004
  if487_end1598:
    unless $I5005 goto if486_else1595 
    set $P5036, $P101
    goto if486_end1596
  if486_else1595:
    box $P5037, 0
    set $P5036, $P5037
  if486_end1596:
    store_lex "$lastlit", $P5036
    set $P5038, $P5036
  if483_end1586:
    set $P5039, $P5038
  if482_end1584:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "quantified_atom" :subid("cuid_108_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 317
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5090 = 'cuid_191_1349901746.339' 
    capture_lex $P5090 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 318
    unless_null _lex_param_1, fallback1604
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5003
  fallback1604:
    set $P5002, _lex_param_1["atom"]
    unless_null $P5002, fallback1605
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5004
  fallback1605:
    $P5005 = $P5002."ast"()
    set $P101, $P5005
    unless_null _lex_param_1, fallback1608
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5007
  fallback1608:
    set $P5006, _lex_param_1["quantifier"]
    unless_null $P5006, fallback1609
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5008
  fallback1609:
    set $P5011, $P5006
    unless $P5006 goto if488_end1607 
    .const 'Sub' $P5009 = 'cuid_191_1349901746.339' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if488_end1607:
    unless_null _lex_param_1, fallback1615
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5013
  fallback1615:
    set $P5012, _lex_param_1["separator"]
    unless_null $P5012, fallback1616
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5014
  fallback1616:
    set $P5061, $P5012
    unless $P5012 goto if489_end1614 
.annotate 'line', 324
.annotate 'line', 325
    $P5015 = $P101."rxtype"()
    set $S5001, $P5015
    iseq $I5001, $S5001, "quant"
    box $P5026, $I5001
    set $P5025, $P5026
    if $I5001 goto unless490_end1618 
.annotate 'line', 326
    $P5016 = _lex_param_1."CURSOR"()
    unless_null _lex_param_1, fallback1619
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5020
  fallback1619:
    set $P5019, _lex_param_1["separator"]
    unless_null $P5019, fallback1620
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5021
  fallback1620:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1621
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5022
  fallback1621:
    set $P5017, $P5018["septype"]
    unless_null $P5017, fallback1622
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5023
  fallback1622:
    set $S5004, $P5017
    concat $S5003, "'", $S5004
    concat $S5002, $S5003, "' many only be used immediately following a quantifier"
    $P5024 = $P5016."panic"($S5002)
    set $P5025, $P5024
  unless490_end1618:
.annotate 'line', 329
    unless_null _lex_param_1, fallback1623
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5029
  fallback1623:
    set $P5028, _lex_param_1["separator"]
    unless_null $P5028, fallback1624
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5028, $P5030
  fallback1624:
    set $P5027, $P5028[0]
    unless_null $P5027, fallback1625
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5027, $P5031
  fallback1625:
    $P5032 = $P5027."ast"()
    $P5033 = $P101."push"($P5032)
    unless_null _lex_param_1, fallback1628
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5037
  fallback1628:
    set $P5036, _lex_param_1["separator"]
    unless_null $P5036, fallback1629
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5036, $P5038
  fallback1629:
    set $P5035, $P5036[0]
    unless_null $P5035, fallback1630
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5035, $P5039
  fallback1630:
    set $P5034, $P5035["septype"]
    unless_null $P5034, fallback1631
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5034, $P5040
  fallback1631:
    set $S5005, $P5034
    iseq $I5002, $S5005, "%%"
    box $P5060, $I5002
    set $P5059, $P5060
    unless $I5002 goto if491_end1627 
.annotate 'line', 330
.annotate 'line', 331
    nqp_get_sc_object $P5044, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5043, $P5044, "QAST"
    get_who $P5042, $P5043
    set $P5041, $P5042["Regex"]
    unless_null $P5041, fallback1632
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5041, $P5045
  fallback1632:
.annotate 'line', 332
    nqp_get_sc_object $P5049, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5048, $P5049, "QAST"
    get_who $P5047, $P5048
    set $P5046, $P5047["Regex"]
    unless_null $P5046, fallback1633
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5046, $P5050
  fallback1633:
    unless_null _lex_param_1, fallback1634
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5053
  fallback1634:
    set $P5052, _lex_param_1["separator"]
    unless_null $P5052, fallback1635
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5052, $P5054
  fallback1635:
    set $P5051, $P5052[0]
    unless_null $P5051, fallback1636
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5051, $P5055
  fallback1636:
    $P5056 = $P5051."ast"()
    $P5057 = $P5046."new"($P5056, "quant" :named("rxtype"), 0 :named("min"), 1 :named("max"))
    $P5058 = $P5041."new"($P101, $P5057, "concat" :named("rxtype"))
    set $P101, $P5058
    set $P5059, $P101
  if491_end1627:
    set $P5061, $P5059
  if489_end1614:
    set $P5063, $P101
    unless $P101 goto if494_end1642 
.annotate 'line', 335
    $P5062 = $P101."backtrack"()
    isfalse $I5003, $P5062
    box $P5064, $I5003
    set $P5063, $P5064
  if494_end1642:
    set $P5086, $P5063
    unless $P5063 goto if493_end1640 
    find_dynamic_lex $P5066, "%*RX"
    unless_null $P5066, fallback1645
    nqp_get_sc_object $P5069, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5068, $P5069
    set $P5067, $P5068["%RX"]
    unless_null $P5067, fallback1646
    nqp_get_sc_object $P5071, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5070, $P5071
    new $P5072, 'Hash'
    set $P5070["%RX"], $P5072
    set $P5067, $P5072
  fallback1646:
    unless_null $P5067, vivi_4961647
    die "Contextual %*RX not found"
    box $P5073, "Contextual %*RX not found"
    set $P5067, $P5073
  vivi_4961647:
    set $P5066, $P5067
  fallback1645:
    set $P5065, $P5066["r"]
    unless_null $P5065, fallback1648
    nqp_get_sc_object $P5074, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5065, $P5074
  fallback1648:
    set $P5085, $P5065
    if $P5065 goto unless495_end1644 
    unless_null _lex_param_1, fallback1651
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5076
  fallback1651:
    set $P5075, _lex_param_1["backmod"]
    unless_null $P5075, fallback1652
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5075, $P5077
  fallback1652:
    set $P5083, $P5075
    unless $P5075 goto if497_end1650 
    unless_null _lex_param_1, fallback1653
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5080
  fallback1653:
    set $P5079, _lex_param_1["backmod"]
    unless_null $P5079, fallback1654
    nqp_get_sc_object $P5081, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5079, $P5081
  fallback1654:
    set $P5078, $P5079[0]
    unless_null $P5078, fallback1655
    nqp_get_sc_object $P5082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5078, $P5082
  fallback1655:
    set $S5006, $P5078
    iseq $I5004, $S5006, ":"
    box $P5084, $I5004
    set $P5083, $P5084
  if497_end1650:
    set $P5085, $P5083
  unless495_end1644:
    set $P5086, $P5085
  if493_end1640:
    set $P5088, $P5086
    unless $P5086 goto if492_end1638 
    $P5087 = $P101."backtrack"("r")
    set $P5088, $P5087
  if492_end1638:
.annotate 'line', 337
    $P5089 = _lex_param_1."!make"($P101)
    .return ($P5089) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1349901746.339") :anon :lex :outer("cuid_108_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 319
    .lex "$ast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 320
    find_lex $P5004, "$/"
    unless_null $P5004, fallback1610
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5005
  fallback1610:
    set $P5003, $P5004["quantifier"]
    unless_null $P5003, fallback1611
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5006
  fallback1611:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1612
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5007
  fallback1612:
    $P5008 = $P5002."ast"()
    set $P101, $P5008
.annotate 'line', 321
    find_lex $P5009, "$qast"
    $P5010 = $P101."unshift"($P5009)
    store_lex "$qast", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "separator" :subid("cuid_109_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 341
    unless_null _lex_param_1, fallback1656
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1656:
    set $P5001, _lex_param_1["quantified_atom"]
    unless_null $P5001, fallback1657
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1657:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "atom" :subid("cuid_110_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 344
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_192_1349901746.339' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback1660
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1660:
    set $P5001, _lex_param_1["metachar"]
    unless_null $P5001, fallback1661
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1661:
    unless $P5001 goto if498_else1658 
.annotate 'line', 345
.annotate 'line', 346
    unless_null _lex_param_1, fallback1662
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5005
  fallback1662:
    set $P5004, _lex_param_1["metachar"]
    unless_null $P5004, fallback1663
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5006
  fallback1663:
    $P5007 = $P5004."ast"()
    $P5008 = _lex_param_1."!make"($P5007)
    set $P5011, $P5008
    goto if498_end1659
  if498_else1658:
    .const 'Sub' $P5009 = 'cuid_192_1349901746.339' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if498_end1659:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1349901746.339") :anon :lex :outer("cuid_110_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 348
    .lex "$qast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 349
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1664
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1664:
    find_lex $P5007, "$/"
    set $S5001, $P5007
    find_lex $P5008, "$/"
    $P5009 = $P5002."new"($S5001, "literal" :named("rxtype"), $P5008 :named("node"))
    set $P101, $P5009
    find_dynamic_lex $P5011, "%*RX"
    unless_null $P5011, fallback1667
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5013, $P5014
    set $P5012, $P5013["%RX"]
    unless_null $P5012, fallback1668
    nqp_get_sc_object $P5016, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5015, $P5016
    new $P5017, 'Hash'
    set $P5015["%RX"], $P5017
    set $P5012, $P5017
  fallback1668:
    unless_null $P5012, vivi_5001669
    die "Contextual %*RX not found"
    box $P5018, "Contextual %*RX not found"
    set $P5012, $P5018
  vivi_5001669:
    set $P5011, $P5012
  fallback1667:
    set $P5010, $P5011["i"]
    unless_null $P5010, fallback1670
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5019
  fallback1670:
    set $P5021, $P5010
    unless $P5010 goto if499_end1666 
.annotate 'line', 350
    $P5020 = $P101."subtype"("ignorecase")
    set $P5021, $P5020
  if499_end1666:
.annotate 'line', 351
    find_dynamic_lex $P5022, "$/"
    $P5023 = $P5022."!make"($P101)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<*>" :subid("cuid_111_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 355
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 356
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1671
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1671:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 0 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 357
    unless_null _lex_param_1, fallback1672
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1672:
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1673
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1673:
    $P5011 = "&backmod"($P101, $P5008)
    $P5012 = _lex_param_1."!make"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<+>" :subid("cuid_112_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 360
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 361
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1674
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1674:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 1 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 362
    unless_null _lex_param_1, fallback1675
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1675:
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1676
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1676:
    $P5011 = "&backmod"($P101, $P5008)
    $P5012 = _lex_param_1."!make"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<?>" :subid("cuid_113_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 365
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 366
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1677
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1677:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 0 :named("min"), 1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 367
    unless_null _lex_param_1, fallback1678
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1678:
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1679
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1679:
    $P5011 = "&backmod"($P101, $P5008)
    $P5012 = _lex_param_1."!make"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<**>" :subid("cuid_114_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 370
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 372
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1680
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1680:
    unless_null _lex_param_1, fallback1681
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1681:
    set $P5007, _lex_param_1["min"]
    unless_null $P5007, fallback1682
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1682:
    set $N5001, $P5007
    $P5010 = $P5002."new"("quant" :named("rxtype"), $N5001 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5010
    unless_null _lex_param_1, fallback1685
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5012
  fallback1685:
    set $P5011, _lex_param_1["max"]
    unless_null $P5011, fallback1686
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5013
  fallback1686:
    isfalse $I5001, $P5011
    unless $I5001 goto if501_else1683 
.annotate 'line', 373
    unless_null _lex_param_1, fallback1687
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5015
  fallback1687:
    set $P5014, _lex_param_1["min"]
    unless_null $P5014, fallback1688
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5014, $P5016
  fallback1688:
    set $N5002, $P5014
    $P5017 = $P101."max"($N5002)
    set $P5031, $P5017
    goto if501_end1684
  if501_else1683:
    unless_null _lex_param_1, fallback1691
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5020
  fallback1691:
    set $P5019, _lex_param_1["max"]
    unless_null $P5019, fallback1692
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5021
  fallback1692:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1693
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5022
  fallback1693:
    set $S5001, $P5018
    isne $I5002, $S5001, "*"
    box $P5030, $I5002
    set $P5029, $P5030
    unless $I5002 goto if502_end1690 
.annotate 'line', 374
    unless_null _lex_param_1, fallback1694
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5025
  fallback1694:
    set $P5024, _lex_param_1["max"]
    unless_null $P5024, fallback1695
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5024, $P5026
  fallback1695:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback1696
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5023, $P5027
  fallback1696:
    set $N5003, $P5023
    $P5028 = $P101."max"($N5003)
    set $P5029, $P5028
  if502_end1690:
    set $P5031, $P5029
  if501_end1684:
.annotate 'line', 375
    unless_null _lex_param_1, fallback1697
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5033
  fallback1697:
    set $P5032, _lex_param_1["backmod"]
    unless_null $P5032, fallback1698
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5032, $P5034
  fallback1698:
    $P5035 = "&backmod"($P101, $P5032)
    $P5036 = _lex_param_1."!make"($P5035)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<ws>" :subid("cuid_115_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 378
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_dynamic_lex $P5003, "%*RX"
    unless_null $P5003, fallback1701
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["%RX"]
    unless_null $P5004, fallback1702
    nqp_get_sc_object $P5008, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%RX"], $P5009
    set $P5004, $P5009
  fallback1702:
    unless_null $P5004, vivi_5041703
    die "Contextual %*RX not found"
    box $P5010, "Contextual %*RX not found"
    set $P5004, $P5010
  vivi_5041703:
    set $P5003, $P5004
  fallback1701:
    set $P5002, $P5003["s"]
    unless_null $P5002, fallback1704
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5011
  fallback1704:
    unless $P5002 goto if503_else1699 
.annotate 'line', 380
    nqp_get_sc_object $P5015, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback1705
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5016
  fallback1705:
.annotate 'line', 381
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Node"]
    unless_null $P5017, fallback1706
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5021
  fallback1706:
    nqp_get_sc_object $P5025, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5024, $P5025, "QAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["SVal"]
    unless_null $P5022, fallback1707
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5022, $P5026
  fallback1707:
    $P5027 = $P5022."new"("ws" :named("value"))
    $P5028 = $P5017."new"($P5027)
    $P5029 = $P5012."new"($P5028, "ws" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"))
    set $P5030, $P5029
    goto if503_end1700
  if503_else1699:
    box $P5031, 0
    set $P5030, $P5031
  if503_end1700:
    set $P101, $P5030
.annotate 'line', 383
    $P5032 = _lex_param_1."!make"($P101)
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<[ ]>" :subid("cuid_116_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 386
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 387
    unless_null _lex_param_1, fallback1708
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1708:
    set $P5001, _lex_param_1["nibbler"]
    unless_null $P5001, fallback1709
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1709:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<( )>" :subid("cuid_117_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 390
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$subpast", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
.annotate 'line', 391
    nqp_get_sc_object $P5006, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback1710
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5007
  fallback1710:
    unless_null _lex_param_1, fallback1711
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5009
  fallback1711:
    set $P5008, _lex_param_1["nibbler"]
    unless_null $P5008, fallback1712
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback1712:
    $P5011 = $P5008."ast"()
    $P5012 = "&qbuildsub"($P5011, 1 :named("anon"), 1 :named("addself"))
    $P5013 = $P5003."new"($P5012)
    set $P101, $P5013
.annotate 'line', 392
    nqp_get_sc_object $P5017, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set $P5014, $P5015["Regex"]
    unless_null $P5014, fallback1713
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5014, $P5018
  fallback1713:
    unless_null _lex_param_1, fallback1714
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5020
  fallback1714:
    set $P5019, _lex_param_1["nibbler"]
    unless_null $P5019, fallback1715
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5021
  fallback1715:
    $P5022 = $P5019."ast"()
    $P5023 = $P5014."new"($P101, $P5022, "subrule" :named("rxtype"), "capture" :named("subtype"), _lex_param_1 :named("node"))
    set $P102, $P5023
.annotate 'line', 394
    $P5024 = _lex_param_1."!make"($P102)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<'>" :subid("cuid_118_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 397
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$quote", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
.annotate 'line', 398
    unless_null _lex_param_1, fallback1716
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1716:
    set $P5003, _lex_param_1["quote_EXPR"]
    unless_null $P5003, fallback1717
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1717:
    $P5006 = $P5003."ast"()
    set $P101, $P5006
.annotate 'line', 399
    nqp_get_sc_object $P5010, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["SVal"]
    unless_null $P5007, fallback1720
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5011
  fallback1720:
    $P5012 = $P5007."ACCEPTS"($P101)
    set $P5014, $P5012
    unless $P5012 goto if505_end1719 
    $P5013 = $P101."value"()
    set $P101, $P5013
    set $P5014, $P101
  if505_end1719:
.annotate 'line', 400
    nqp_get_sc_object $P5018, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Regex"]
    unless_null $P5015, fallback1721
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5015, $P5019
  fallback1721:
    $P5020 = $P5015."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5020
    find_dynamic_lex $P5022, "%*RX"
    unless_null $P5022, fallback1724
    nqp_get_sc_object $P5025, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5024, $P5025
    set $P5023, $P5024["%RX"]
    unless_null $P5023, fallback1725
    nqp_get_sc_object $P5027, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5026, $P5027
    new $P5028, 'Hash'
    set $P5026["%RX"], $P5028
    set $P5023, $P5028
  fallback1725:
    unless_null $P5023, vivi_5071726
    die "Contextual %*RX not found"
    box $P5029, "Contextual %*RX not found"
    set $P5023, $P5029
  vivi_5071726:
    set $P5022, $P5023
  fallback1724:
    set $P5021, $P5022["i"]
    unless_null $P5021, fallback1727
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5021, $P5030
  fallback1727:
    set $P5032, $P5021
    unless $P5021 goto if506_end1723 
.annotate 'line', 401
    $P5031 = $P102."subtype"("ignorecase")
    set $P5032, $P5031
  if506_end1723:
.annotate 'line', 402
    $P5033 = _lex_param_1."!make"($P102)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<\">" :subid("cuid_119_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 405
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$quote", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
.annotate 'line', 406
    unless_null _lex_param_1, fallback1728
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1728:
    set $P5003, _lex_param_1["quote_EXPR"]
    unless_null $P5003, fallback1729
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1729:
    $P5006 = $P5003."ast"()
    set $P101, $P5006
.annotate 'line', 407
    nqp_get_sc_object $P5010, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["SVal"]
    unless_null $P5007, fallback1732
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5011
  fallback1732:
    $P5012 = $P5007."ACCEPTS"($P101)
    set $P5014, $P5012
    unless $P5012 goto if508_end1731 
    $P5013 = $P101."value"()
    set $P101, $P5013
    set $P5014, $P101
  if508_end1731:
.annotate 'line', 408
    nqp_get_sc_object $P5018, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Regex"]
    unless_null $P5015, fallback1733
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5015, $P5019
  fallback1733:
    $P5020 = $P5015."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5020
    find_dynamic_lex $P5022, "%*RX"
    unless_null $P5022, fallback1736
    nqp_get_sc_object $P5025, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5024, $P5025
    set $P5023, $P5024["%RX"]
    unless_null $P5023, fallback1737
    nqp_get_sc_object $P5027, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5026, $P5027
    new $P5028, 'Hash'
    set $P5026["%RX"], $P5028
    set $P5023, $P5028
  fallback1737:
    unless_null $P5023, vivi_5101738
    die "Contextual %*RX not found"
    box $P5029, "Contextual %*RX not found"
    set $P5023, $P5029
  vivi_5101738:
    set $P5022, $P5023
  fallback1736:
    set $P5021, $P5022["i"]
    unless_null $P5021, fallback1739
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5021, $P5030
  fallback1739:
    set $P5032, $P5021
    unless $P5021 goto if509_end1735 
.annotate 'line', 409
    $P5031 = $P102."subtype"("ignorecase")
    set $P5032, $P5031
  if509_end1735:
.annotate 'line', 410
    $P5033 = _lex_param_1."!make"($P102)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<.>" :subid("cuid_120_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 413
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 414
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1740
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1740:
    $P5006 = $P5001."new"("cclass" :named("rxtype"), "." :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^>" :subid("cuid_121_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 417
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 418
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1741
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1741:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "bos" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^^>" :subid("cuid_122_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 421
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 422
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1742
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1742:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "bol" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$>" :subid("cuid_123_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 425
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 426
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1743
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1743:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "eos" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$$>" :subid("cuid_124_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 429
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 430
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1744
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1744:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "eol" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<lwb>" :subid("cuid_125_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 434
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1745
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1745:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "lwb" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<rwb>" :subid("cuid_126_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 438
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1746
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1746:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "rwb" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<from>" :subid("cuid_127_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 441
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 442
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1747
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1747:
.annotate 'line', 444
    nqp_get_sc_object $P5009, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Node"]
    unless_null $P5006, fallback1748
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5010
  fallback1748:
.annotate 'line', 445
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["SVal"]
    unless_null $P5011, fallback1749
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1749:
    $P5016 = $P5011."new"("!LITERAL" :named("value"))
.annotate 'line', 446
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["SVal"]
    unless_null $P5017, fallback1750
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5021
  fallback1750:
    $P5022 = $P5017."new"("" :named("value"))
    $P5023 = $P5006."new"($P5016, $P5022)
    $P5024 = $P5001."new"($P5023, "subrule" :named("rxtype"), "capture" :named("subtype"), "r" :named("backtrack"), "$!from" :named("name"), _lex_param_1 :named("node"))
    $P5025 = _lex_param_1."!make"($P5024)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<to>" :subid("cuid_128_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 449
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 450
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1751
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1751:
.annotate 'line', 452
    nqp_get_sc_object $P5009, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Node"]
    unless_null $P5006, fallback1752
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5010
  fallback1752:
.annotate 'line', 453
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["SVal"]
    unless_null $P5011, fallback1753
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1753:
    $P5016 = $P5011."new"("!LITERAL" :named("value"))
.annotate 'line', 454
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["SVal"]
    unless_null $P5017, fallback1754
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5021
  fallback1754:
    $P5022 = $P5017."new"("" :named("value"))
    $P5023 = $P5006."new"($P5016, $P5022)
    $P5024 = $P5001."new"($P5023, "subrule" :named("rxtype"), "capture" :named("subtype"), "r" :named("backtrack"), "$!to" :named("name"), _lex_param_1 :named("node"))
    $P5025 = _lex_param_1."!make"($P5024)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<bs>" :subid("cuid_129_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 457
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 458
    unless_null _lex_param_1, fallback1755
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1755:
    set $P5001, _lex_param_1["backslash"]
    unless_null $P5001, fallback1756
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1756:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<assert>" :subid("cuid_130_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 461
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 462
    unless_null _lex_param_1, fallback1757
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1757:
    set $P5001, _lex_param_1["assertion"]
    unless_null $P5001, fallback1758
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1758:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<var>" :subid("cuid_131_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 465
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "$name", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    unless_null _lex_param_1, fallback1761
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1761:
    set $P5003, _lex_param_1["pos"]
    unless_null $P5003, fallback1762
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1762:
    unless $P5003 goto if511_else1759 
    unless_null _lex_param_1, fallback1763
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5007
  fallback1763:
    set $P5006, _lex_param_1["pos"]
    unless_null $P5006, fallback1764
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5008
  fallback1764:
    set $N5001, $P5006
    box $P5013, $N5001
    set $P5012, $P5013
    goto if511_end1760
  if511_else1759:
    unless_null _lex_param_1, fallback1765
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5010
  fallback1765:
    set $P5009, _lex_param_1["name"]
    unless_null $P5009, fallback1766
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5011
  fallback1766:
    set $S5001, $P5009
    box $P5014, $S5001
    set $P5012, $P5014
  if511_end1760:
    set $P102, $P5012
    unless_null _lex_param_1, fallback1769
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5016
  fallback1769:
    set $P5015, _lex_param_1["quantified_atom"]
    unless_null $P5015, fallback1770
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5015, $P5017
  fallback1770:
    unless $P5015 goto if512_else1767 
.annotate 'line', 468
.annotate 'line', 469
    unless_null _lex_param_1, fallback1771
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5020
  fallback1771:
    set $P5019, _lex_param_1["quantified_atom"]
    unless_null $P5019, fallback1772
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5021
  fallback1772:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1773
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5022
  fallback1773:
    $P5023 = $P5018."ast"()
    set $P101, $P5023
.annotate 'line', 470
    $P5024 = $P101."rxtype"()
    set $S5002, $P5024
    iseq $I5001, $S5002, "quant"
    set $I5003, $I5001
    unless $I5001 goto if514_end1777 
    set $P5025, $P101[0]
    unless_null $P5025, fallback1778
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5025, $P5026
  fallback1778:
    $P5027 = $P5025."rxtype"()
    set $S5003, $P5027
    iseq $I5002, $S5003, "subrule"
    set $I5003, $I5002
  if514_end1777:
    unless $I5003 goto if513_else1774 
.annotate 'line', 471
    nqp_decontainerize $P5028, _lex_param_0
    set $P5029, $P101[0]
    unless_null $P5029, fallback1779
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5029, $P5030
  fallback1779:
    $P5031 = $P5028."subrule_alias"($P5029, $P102)
    set $P5042, $P5031
    goto if513_end1775
  if513_else1774:
.annotate 'line', 473
    $P5032 = $P101."rxtype"()
    set $S5004, $P5032
    iseq $I5004, $S5004, "subrule"
    unless $I5004 goto if515_else1780 
.annotate 'line', 474
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."subrule_alias"($P101, $P102)
    set $P5041, $P5034
    goto if515_end1781
  if515_else1780:
.annotate 'line', 476
.annotate 'line', 477
    nqp_get_sc_object $P5038, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5037, $P5038, "QAST"
    get_who $P5036, $P5037
    set $P5035, $P5036["Regex"]
    unless_null $P5035, fallback1782
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5035, $P5039
  fallback1782:
    $P5040 = $P5035."new"($P101, $P102 :named("name"), "subcapture" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5040
    set $P5041, $P101
  if515_end1781:
    set $P5042, $P5041
  if513_end1775:
    set $P5067, $P5042
    goto if512_end1768
  if512_else1767:
.annotate 'line', 481
.annotate 'line', 482
    nqp_get_sc_object $P5046, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5045, $P5046, "QAST"
    get_who $P5044, $P5045
    set $P5043, $P5044["Regex"]
    unless_null $P5043, fallback1783
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5043, $P5047
  fallback1783:
.annotate 'line', 483
    nqp_get_sc_object $P5051, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5050, $P5051, "QAST"
    get_who $P5049, $P5050
    set $P5048, $P5049["Node"]
    unless_null $P5048, fallback1784
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5048, $P5052
  fallback1784:
.annotate 'line', 484
    nqp_get_sc_object $P5056, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5055, $P5056, "QAST"
    get_who $P5054, $P5055
    set $P5053, $P5054["SVal"]
    unless_null $P5053, fallback1785
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5053, $P5057
  fallback1785:
    $P5058 = $P5053."new"("!BACKREF" :named("value"))
.annotate 'line', 485
    nqp_get_sc_object $P5062, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5061, $P5062, "QAST"
    get_who $P5060, $P5061
    set $P5059, $P5060["SVal"]
    unless_null $P5059, fallback1786
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5059, $P5063
  fallback1786:
    $P5064 = $P5059."new"($P102 :named("value"))
    $P5065 = $P5048."new"($P5058, $P5064)
    $P5066 = $P5043."new"($P5065, "subrule" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5066
    set $P5067, $P101
  if512_end1768:
.annotate 'line', 487
    $P5068 = _lex_param_1."!make"($P101)
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<~>" :subid("cuid_132_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 490
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@dba", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*RX"
    unless_null $P5002, fallback1789
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5004, $P5005
    set $P5003, $P5004["%RX"]
    unless_null $P5003, fallback1790
    nqp_get_sc_object $P5007, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5006, $P5007
    new $P5008, 'Hash'
    set $P5006["%RX"], $P5008
    set $P5003, $P5008
  fallback1790:
    unless_null $P5003, vivi_5171791
    die "Contextual %*RX not found"
    box $P5009, "Contextual %*RX not found"
    set $P5003, $P5009
  vivi_5171791:
    set $P5002, $P5003
  fallback1789:
    exists $I5001, $P5002["dba"]
    box $P5028, $I5001
    set $P5027, $P5028
    unless $I5001 goto if516_end1788 
    new $P5010, 'ResizablePMCArray'
.annotate 'line', 491
    nqp_get_sc_object $P5014, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["SVal"]
    unless_null $P5011, fallback1792
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback1792:
    find_dynamic_lex $P5017, "%*RX"
    unless_null $P5017, fallback1793
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5019, $P5020
    set $P5018, $P5019["%RX"]
    unless_null $P5018, fallback1794
    nqp_get_sc_object $P5022, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5021, $P5022
    new $P5023, 'Hash'
    set $P5021["%RX"], $P5023
    set $P5018, $P5023
  fallback1794:
    unless_null $P5018, vivi_5181795
    die "Contextual %*RX not found"
    box $P5024, "Contextual %*RX not found"
    set $P5018, $P5024
  vivi_5181795:
    set $P5017, $P5018
  fallback1793:
    set $P5016, $P5017["dba"]
    unless_null $P5016, fallback1796
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5025
  fallback1796:
    $P5026 = $P5011."new"($P5016 :named("value"))
    push $P5010, $P5026
    set $P101, $P5010
    set $P5027, $P101
  if516_end1788:
.annotate 'line', 492
    nqp_get_sc_object $P5032, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["Regex"]
    unless_null $P5029, fallback1797
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5029, $P5033
  fallback1797:
.annotate 'line', 493
    unless_null _lex_param_1, fallback1798
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5035
  fallback1798:
    set $P5034, _lex_param_1["EXPR"]
    unless_null $P5034, fallback1799
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5034, $P5036
  fallback1799:
    $P5037 = $P5034."ast"()
.annotate 'line', 494
    nqp_get_sc_object $P5041, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5040, $P5041, "QAST"
    get_who $P5039, $P5040
    set $P5038, $P5039["Regex"]
    unless_null $P5038, fallback1800
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5038, $P5042
  fallback1800:
.annotate 'line', 495
    unless_null _lex_param_1, fallback1801
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5044
  fallback1801:
    set $P5043, _lex_param_1["GOAL"]
    unless_null $P5043, fallback1802
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5043, $P5045
  fallback1802:
    $P5046 = $P5043."ast"()
.annotate 'line', 496
    nqp_get_sc_object $P5050, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5049, $P5050, "QAST"
    get_who $P5048, $P5049
    set $P5047, $P5048["Regex"]
    unless_null $P5047, fallback1803
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5047, $P5051
  fallback1803:
.annotate 'line', 497
    nqp_get_sc_object $P5055, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5054, $P5055, "QAST"
    get_who $P5053, $P5054
    set $P5052, $P5053["Node"]
    unless_null $P5052, fallback1804
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5052, $P5056
  fallback1804:
.annotate 'line', 498
    nqp_get_sc_object $P5060, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5059, $P5060, "QAST"
    get_who $P5058, $P5059
    set $P5057, $P5058["SVal"]
    unless_null $P5057, fallback1805
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5057, $P5061
  fallback1805:
    $P5062 = $P5057."new"("FAILGOAL" :named("value"))
.annotate 'line', 499
    nqp_get_sc_object $P5066, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5065, $P5066, "QAST"
    get_who $P5064, $P5065
    set $P5063, $P5064["SVal"]
    unless_null $P5063, fallback1806
    nqp_get_sc_object $P5067, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5063, $P5067
  fallback1806:
    unless_null _lex_param_1, fallback1807
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5069
  fallback1807:
    set $P5068, _lex_param_1["GOAL"]
    unless_null $P5068, fallback1808
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5068, $P5070
  fallback1808:
    set $S5001, $P5068
    $P5071 = $P5063."new"($S5001 :named("value"))
    $P5072 = $P5052."new"($P5062, $P5071, $P101 :flat)
    $P5073 = $P5047."new"($P5072, "subrule" :named("rxtype"), "method" :named("subtype"))
    $P5074 = $P5038."new"($P5046, $P5073, "altseq" :named("rxtype"))
    $P5075 = $P5029."new"($P5037, $P5074, "concat" :named("rxtype"))
    $P5076 = _lex_param_1."!make"($P5075)
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<s>" :subid("cuid_133_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 507
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 508
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1809
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1809:
    unless_null _lex_param_1, fallback1812
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5007
  fallback1812:
    set $P5006, _lex_param_1["sym"]
    unless_null $P5006, fallback1813
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5008
  fallback1813:
    set $S5001, $P5006
    iseq $I5001, $S5001, "n"
    unless $I5001 goto if519_else1810 
    set $S5003, "nl"
    goto if519_end1811
  if519_else1810:
    unless_null _lex_param_1, fallback1814
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5010
  fallback1814:
    set $P5009, _lex_param_1["sym"]
    unless_null $P5009, fallback1815
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5011
  fallback1815:
    set $S5002, $P5009
    set $S5003, $S5002
  if519_end1811:
    unless_null _lex_param_1, fallback1816
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5013
  fallback1816:
    set $P5012, _lex_param_1["sym"]
    unless_null $P5012, fallback1817
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5014
  fallback1817:
    set $S5004, $P5012
    isle $I5002, $S5004, "Z"
    $P5015 = $P5001."new"(".CCLASS_WHITESPACE", "cclass" :named("rxtype"), $S5003 :named("subtype"), $I5002 :named("negate"), _lex_param_1 :named("node"))
    $P5016 = _lex_param_1."!make"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<b>" :subid("cuid_134_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 513
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 514
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1818
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1818:
    unless_null _lex_param_1, fallback1819
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1819:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1820
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1820:
    set $S5001, $P5007
    iseq $I5001, $S5001, "B"
    $P5010 = $P5002."new"("\b", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 516
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<e>" :subid("cuid_135_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 519
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 520
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1821
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1821:
    unless_null _lex_param_1, fallback1822
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1822:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1823
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1823:
    set $S5001, $P5007
    iseq $I5001, $S5001, "E"
    $P5010 = $P5002."new"("\e", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 522
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<f>" :subid("cuid_136_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 525
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 526
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1824
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1824:
    unless_null _lex_param_1, fallback1825
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1825:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1826
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1826:
    set $S5001, $P5007
    iseq $I5001, $S5001, "F"
    $P5010 = $P5002."new"("\f", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 528
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<h>" :subid("cuid_137_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 531
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 532
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1827
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1827:
    unless_null _lex_param_1, fallback1828
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1828:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1829
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1829:
    set $S5001, $P5007
    iseq $I5001, $S5001, "H"
    $P5010 = $P5002."new"(utf8:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 534
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<r>" :subid("cuid_138_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 537
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 538
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1830
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1830:
    unless_null _lex_param_1, fallback1831
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1831:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1832
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1832:
    set $S5001, $P5007
    iseq $I5001, $S5001, "R"
    $P5010 = $P5002."new"("\r", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 540
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<t>" :subid("cuid_139_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 543
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 544
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1833
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1833:
    unless_null _lex_param_1, fallback1834
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1834:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1835
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1835:
    set $S5001, $P5007
    iseq $I5001, $S5001, "T"
    $P5010 = $P5002."new"("\t", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 546
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<v>" :subid("cuid_140_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 549
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 550
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1836
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1836:
    unless_null _lex_param_1, fallback1837
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1837:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1838
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1838:
    set $S5001, $P5007
    iseq $I5001, $S5001, "V"
    $P5010 = $P5002."new"(utf8:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 553
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<o>" :subid("cuid_141_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 556
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$octlit", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 558
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Actions"]
    unless_null $P5002, fallback1839
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1839:
    unless_null _lex_param_1, fallback1842
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1842:
    set $P5007, _lex_param_1["octint"]
    unless_null $P5007, fallback1843
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1843:
    set $P5015, $P5007
    if $P5007 goto unless520_end1841 
    unless_null _lex_param_1, fallback1844
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5012
  fallback1844:
    set $P5011, _lex_param_1["octints"]
    unless_null $P5011, fallback1845
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5013
  fallback1845:
    set $P5010, $P5011["octint"]
    unless_null $P5010, fallback1846
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5014
  fallback1846:
    set $P5015, $P5010
  unless520_end1841:
    $P5016 = $P5002."ints_to_string"($P5015)
    set $P101, $P5016
.annotate 'line', 559
    unless_null _lex_param_1, fallback1849
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5018
  fallback1849:
    set $P5017, _lex_param_1["sym"]
    unless_null $P5017, fallback1850
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5019
  fallback1850:
    set $S5001, $P5017
    iseq $I5001, $S5001, "O"
    unless $I5001 goto if521_else1847 
.annotate 'line', 560
    nqp_get_sc_object $P5023, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Regex"]
    unless_null $P5020, fallback1851
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5024
  fallback1851:
    $P5025 = $P5020."new"($P101, "enumcharlist" :named("rxtype"), 1 :named("negate"), _lex_param_1 :named("node"))
    set $P5032, $P5025
    goto if521_end1848
  if521_else1847:
.annotate 'line', 562
    nqp_get_sc_object $P5029, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5028, $P5029, "QAST"
    get_who $P5027, $P5028
    set $P5026, $P5027["Regex"]
    unless_null $P5026, fallback1852
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5026, $P5030
  fallback1852:
    $P5031 = $P5026."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P5032, $P5031
  if521_end1848:
    $P5033 = _lex_param_1."!make"($P5032)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<x>" :subid("cuid_142_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 565
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$hexlit", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 567
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Actions"]
    unless_null $P5002, fallback1853
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1853:
    unless_null _lex_param_1, fallback1856
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1856:
    set $P5007, _lex_param_1["hexint"]
    unless_null $P5007, fallback1857
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1857:
    set $P5015, $P5007
    if $P5007 goto unless522_end1855 
    unless_null _lex_param_1, fallback1858
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5012
  fallback1858:
    set $P5011, _lex_param_1["hexints"]
    unless_null $P5011, fallback1859
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5013
  fallback1859:
    set $P5010, $P5011["hexint"]
    unless_null $P5010, fallback1860
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5014
  fallback1860:
    set $P5015, $P5010
  unless522_end1855:
    $P5016 = $P5002."ints_to_string"($P5015)
    set $P101, $P5016
.annotate 'line', 568
    unless_null _lex_param_1, fallback1863
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5018
  fallback1863:
    set $P5017, _lex_param_1["sym"]
    unless_null $P5017, fallback1864
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5019
  fallback1864:
    set $S5001, $P5017
    iseq $I5001, $S5001, "X"
    unless $I5001 goto if523_else1861 
.annotate 'line', 569
    nqp_get_sc_object $P5023, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Regex"]
    unless_null $P5020, fallback1865
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5024
  fallback1865:
    $P5025 = $P5020."new"($P101, "enumcharlist" :named("rxtype"), 1 :named("negate"), _lex_param_1 :named("node"))
    set $P5032, $P5025
    goto if523_end1862
  if523_else1861:
.annotate 'line', 571
    nqp_get_sc_object $P5029, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5028, $P5029, "QAST"
    get_who $P5027, $P5028
    set $P5026, $P5027["Regex"]
    unless_null $P5026, fallback1866
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5026, $P5030
  fallback1866:
    $P5031 = $P5026."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P5032, $P5031
  if523_end1862:
    $P5033 = _lex_param_1."!make"($P5032)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<c>" :subid("cuid_143_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 574
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 575
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1867
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback1867:
    unless_null _lex_param_1, fallback1868
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5007
  fallback1868:
    set $P5006, _lex_param_1["charspec"]
    unless_null $P5006, fallback1869
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5008
  fallback1869:
    $P5009 = $P5006."ast"()
    $P5010 = $P5001."new"($P5009, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    $P5011 = _lex_param_1."!make"($P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<misc>" :subid("cuid_144_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 578
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 579
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1870
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1870:
    set $S5001, _lex_param_1
    $P5007 = $P5002."new"($S5001, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 580
    $P5008 = _lex_param_1."!make"($P101)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<?>" :subid("cuid_145_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 583
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    unless_null _lex_param_1, fallback1873
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5003
  fallback1873:
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1874
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5004
  fallback1874:
    unless $P5002 goto if524_else1871 
.annotate 'line', 585
.annotate 'line', 586
    unless_null _lex_param_1, fallback1875
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5006
  fallback1875:
    set $P5005, _lex_param_1["assertion"]
    unless_null $P5005, fallback1876
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5005, $P5007
  fallback1876:
    $P5008 = $P5005."ast"()
    set $P101, $P5008
.annotate 'line', 587
    $P5009 = $P101."subtype"("zerowidth")
    set $P5016, $P5009
    goto if524_end1872
  if524_else1871:
.annotate 'line', 589
.annotate 'line', 590
    nqp_get_sc_object $P5013, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Regex"]
    unless_null $P5010, fallback1877
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5014
  fallback1877:
    $P5015 = $P5010."new"("anchor" :named("rxtype"), "pass" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5015
    set $P5016, $P101
  if524_end1872:
.annotate 'line', 592
    $P5017 = _lex_param_1."!make"($P101)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<!>" :subid("cuid_146_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 595
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    unless_null _lex_param_1, fallback1880
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5003
  fallback1880:
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1881
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5004
  fallback1881:
    unless $P5002 goto if525_else1878 
.annotate 'line', 597
.annotate 'line', 598
    unless_null _lex_param_1, fallback1882
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5006
  fallback1882:
    set $P5005, _lex_param_1["assertion"]
    unless_null $P5005, fallback1883
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5005, $P5007
  fallback1883:
    $P5008 = $P5005."ast"()
    set $P101, $P5008
.annotate 'line', 599
    $P5009 = $P101."negate"()
    isfalse $I5001, $P5009
    $P5010 = $P101."negate"($I5001)
.annotate 'line', 600
    $P5011 = $P101."subtype"("zerowidth")
    set $P5018, $P5011
    goto if525_end1879
  if525_else1878:
.annotate 'line', 602
.annotate 'line', 603
    nqp_get_sc_object $P5015, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback1884
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5016
  fallback1884:
    $P5017 = $P5012."new"("anchor" :named("rxtype"), "fail" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5017
    set $P5018, $P101
  if525_end1879:
.annotate 'line', 605
    $P5019 = _lex_param_1."!make"($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<|>" :subid("cuid_147_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 608
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "$name", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    unless_null _lex_param_1, fallback1885
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1885:
    set $P5003, _lex_param_1["identifier"]
    unless_null $P5003, fallback1886
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1886:
    set $S5001, $P5003
    box $P5006, $S5001
    set $P102, $P5006
    set $S5002, $P102
    iseq $I5001, $S5002, "c"
    unless $I5001 goto if526_else1887 
.annotate 'line', 611
    box $P5007, 0
    set $P101, $P5007
    set $P5028, $P101
    goto if526_end1888
  if526_else1887:
    set $S5003, $P102
    iseq $I5002, $S5003, "w"
    box $P5027, $I5002
    set $P5026, $P5027
    unless $I5002 goto if527_end1890 
.annotate 'line', 616
.annotate 'line', 617
    nqp_get_sc_object $P5011, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["Regex"]
    unless_null $P5008, fallback1891
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5012
  fallback1891:
.annotate 'line', 619
    nqp_get_sc_object $P5016, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Node"]
    unless_null $P5013, fallback1892
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5017
  fallback1892:
    nqp_get_sc_object $P5021, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5020, $P5021, "QAST"
    get_who $P5019, $P5020
    set $P5018, $P5019["SVal"]
    unless_null $P5018, fallback1893
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5022
  fallback1893:
    $P5023 = $P5018."new"("wb" :named("value"))
    $P5024 = $P5013."new"($P5023)
    $P5025 = $P5008."new"($P5024, "subrule" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"), "" :named("name"))
    set $P101, $P5025
    set $P5026, $P101
  if527_end1890:
    set $P5028, $P5026
  if526_end1888:
.annotate 'line', 621
    $P5029 = _lex_param_1."!make"($P101)
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<method>" :subid("cuid_148_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 624
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 625
    unless_null _lex_param_1, fallback1894
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5003
  fallback1894:
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1895
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5004
  fallback1895:
    $P5005 = $P5002."ast"()
    set $P101, $P5005
.annotate 'line', 626
    $P5006 = $P101."subtype"("method")
.annotate 'line', 627
    $P5007 = $P101."name"("")
.annotate 'line', 628
    $P5008 = _lex_param_1."!make"($P101)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<name>" :subid("cuid_149_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 631
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5084 = 'cuid_193_1349901746.339' 
    capture_lex $P5084 
    .const 'Sub' $P5084 = 'cuid_194_1349901746.339' 
    capture_lex $P5084 
    .lex "$name", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    unless_null _lex_param_1, fallback1896
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5004
  fallback1896:
    set $P5003, _lex_param_1["longname"]
    unless_null $P5003, fallback1897
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback1897:
    set $S5001, $P5003
    box $P5006, $S5001
    set $P101, $P5006
    unless_null _lex_param_1, fallback1900
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5008
  fallback1900:
    set $P5007, _lex_param_1["assertion"]
    unless_null $P5007, fallback1901
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback1901:
    unless $P5007 goto if528_else1898 
.annotate 'line', 634
.annotate 'line', 635
    unless_null _lex_param_1, fallback1902
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5012
  fallback1902:
    set $P5011, _lex_param_1["assertion"]
    unless_null $P5011, fallback1903
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5013
  fallback1903:
    set $P5010, $P5011[0]
    unless_null $P5010, fallback1904
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5014
  fallback1904:
    $P5015 = $P5010."ast"()
    set $P102, $P5015
.annotate 'line', 636
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."subrule_alias"($P102, $P101)
    set $P5082, $P5017
    goto if528_end1899
  if528_else1898:
    set $S5002, $P101
    iseq $I5001, $S5002, "sym"
    unless $I5001 goto if529_else1905 
    .const 'Sub' $P5018 = 'cuid_193_1349901746.339' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5081, $P5019
    goto if529_end1906
  if529_else1905:
.annotate 'line', 647
.annotate 'line', 648
    nqp_get_sc_object $P5023, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Regex"]
    unless_null $P5020, fallback1923
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5024
  fallback1923:
.annotate 'line', 650
    nqp_get_sc_object $P5028, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5027, $P5028, "QAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["Node"]
    unless_null $P5025, fallback1924
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5025, $P5029
  fallback1924:
    nqp_get_sc_object $P5033, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5032, $P5033, "QAST"
    get_who $P5031, $P5032
    set $P5030, $P5031["SVal"]
    unless_null $P5030, fallback1925
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5030, $P5034
  fallback1925:
    $P5035 = $P5030."new"($P101 :named("value"))
    $P5036 = $P5025."new"($P5035)
    $P5037 = $P5020."new"($P5036, "subrule" :named("rxtype"), "capture" :named("subtype"), _lex_param_1 :named("node"), $P101 :named("name"))
    set $P102, $P5037
    unless_null _lex_param_1, fallback1928
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5039
  fallback1928:
    set $P5038, _lex_param_1["arglist"]
    unless_null $P5038, fallback1929
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5038, $P5040
  fallback1929:
    unless $P5038 goto if534_else1926 
.annotate 'line', 651
.annotate 'line', 652
    unless_null _lex_param_1, fallback1930
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5046
  fallback1930:
    set $P5045, _lex_param_1["arglist"]
    unless_null $P5045, fallback1931
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5045, $P5047
  fallback1931:
    set $P5044, $P5045[0]
    unless_null $P5044, fallback1932
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5044, $P5048
  fallback1932:
    $P5049 = $P5044."ast"()
    $P5050 = $P5049."list"()
    set $P5041, $P5050
    iter $P5043, $P5050
  for_next1934:
    unless $P5043, for_done1936
    shift $P5052, $P5043
  for_redo1935:
    .const 'Sub' $P5051 = 'cuid_194_1349901746.339' 
    capture_lex $P5051
    $P5041 = $P5051($P5052)
    goto for_next1934
  for_done1936:
    set $P5080, $P5041
    goto if534_end1927
  if534_else1926:
    unless_null _lex_param_1, fallback1939
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5054
  fallback1939:
    set $P5053, _lex_param_1["nibbler"]
    unless_null $P5053, fallback1940
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5053, $P5055
  fallback1940:
    set $P5079, $P5053
    unless $P5053 goto if535_end1938 
.annotate 'line', 654
    set $S5003, $P101
    iseq $I5002, $S5003, "after"
    unless $I5002 goto if536_else1941 
.annotate 'line', 656
    set $P5056, $P102[0]
    unless_null $P5056, fallback1943
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5056, $P5057
  fallback1943:
    nqp_decontainerize $P5058, _lex_param_0
    unless_null _lex_param_1, fallback1944
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5061
  fallback1944:
    set $P5060, _lex_param_1["nibbler"]
    unless_null $P5060, fallback1945
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5060, $P5062
  fallback1945:
    set $P5059, $P5060[0]
    unless_null $P5059, fallback1946
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5059, $P5063
  fallback1946:
    $P5064 = $P5059."ast"()
    $P5065 = $P5058."flip_ast"($P5064)
    $P5066 = "&qbuildsub"($P5065, 1 :named("anon"), 1 :named("addself"))
    $P5067 = $P5056."push"($P5066)
    set $P5078, $P5067
    goto if536_end1942
  if536_else1941:
.annotate 'line', 657
    set $P5068, $P102[0]
    unless_null $P5068, fallback1947
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5068, $P5069
  fallback1947:
    unless_null _lex_param_1, fallback1948
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5072
  fallback1948:
    set $P5071, _lex_param_1["nibbler"]
    unless_null $P5071, fallback1949
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5071, $P5073
  fallback1949:
    set $P5070, $P5071[0]
    unless_null $P5070, fallback1950
    nqp_get_sc_object $P5074, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5070, $P5074
  fallback1950:
    $P5075 = $P5070."ast"()
    $P5076 = "&qbuildsub"($P5075, 1 :named("anon"), 1 :named("addself"))
    $P5077 = $P5068."push"($P5076)
    set $P5078, $P5077
  if536_end1942:
    set $P5079, $P5078
  if535_end1938:
    set $P5080, $P5079
  if534_end1927:
    set $P5081, $P5080
  if529_end1906:
    set $P5082, $P5081
  if528_end1899:
.annotate 'line', 660
    $P5083 = _lex_param_1."!make"($P102)
    .return ($P5083) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1349901746.339") :anon :lex :outer("cuid_149_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 638
    .lex "$loc", $P101 
    .lex "$rxname", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    find_dynamic_lex $P5004, "%*RX"
    unless_null $P5004, fallback1907
    nqp_get_sc_object $P5007, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%RX"]
    unless_null $P5005, fallback1908
    nqp_get_sc_object $P5009, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%RX"], $P5010
    set $P5005, $P5010
  fallback1908:
    unless_null $P5005, vivi_5301909
    die "Contextual %*RX not found"
    box $P5011, "Contextual %*RX not found"
    set $P5005, $P5011
  vivi_5301909:
    set $P5004, $P5005
  fallback1907:
    set $P5003, $P5004["name"]
    unless_null $P5003, fallback1910
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5012
  fallback1910:
    set $S5001, $P5003
    index $I5001, $S5001, ":sym<", 0
    box $P5013, $I5001
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    box $P5026, $I5002
    set $P5025, $P5026
    unless $I5002 goto if531_end1912 
    find_dynamic_lex $P5015, "%*RX"
    unless_null $P5015, fallback1913
    nqp_get_sc_object $P5018, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5017, $P5018
    set $P5016, $P5017["%RX"]
    unless_null $P5016, fallback1914
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5019, $P5020
    new $P5021, 'Hash'
    set $P5019["%RX"], $P5021
    set $P5016, $P5021
  fallback1914:
    unless_null $P5016, vivi_5321915
    die "Contextual %*RX not found"
    box $P5022, "Contextual %*RX not found"
    set $P5016, $P5022
  vivi_5321915:
    set $P5015, $P5016
  fallback1913:
    set $P5014, $P5015["name"]
    unless_null $P5014, fallback1916
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5014, $P5023
  fallback1916:
    set $S5002, $P5014
    index $I5003, $S5002, utf8:":sym\x{ab}", 0
    box $P5024, $I5003
    set $P101, $P5024
    set $P5025, $P101
  if531_end1912:
    find_dynamic_lex $P5028, "%*RX"
    unless_null $P5028, fallback1917
    nqp_get_sc_object $P5031, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5030, $P5031
    set $P5029, $P5030["%RX"]
    unless_null $P5029, fallback1918
    nqp_get_sc_object $P5033, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5032, $P5033
    new $P5034, 'Hash'
    set $P5032["%RX"], $P5034
    set $P5029, $P5034
  fallback1918:
    unless_null $P5029, vivi_5331919
    die "Contextual %*RX not found"
    box $P5035, "Contextual %*RX not found"
    set $P5029, $P5035
  vivi_5331919:
    set $P5028, $P5029
  fallback1917:
    set $P5027, $P5028["name"]
    unless_null $P5027, fallback1920
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5027, $P5036
  fallback1920:
    set $S5004, $P5027
    set $N5004, $P101
    set $N5005, 5
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    substr $S5003, $S5004, $I5004
    box $P5037, $S5003
    set $P102, $P5037
    set $S5006, $P102
    set $S5007, $P102
    length $I5005, $S5007
    set $N5007, $I5005
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5006, $N5006
    substr $S5005, $S5006, 0, $I5006
    box $P5038, $S5005
    set $P102, $P5038
.annotate 'line', 644
    nqp_get_sc_object $P5042, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5041, $P5042, "QAST"
    get_who $P5040, $P5041
    set $P5039, $P5040["Regex"]
    unless_null $P5039, fallback1921
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5039, $P5043
  fallback1921:
    find_lex $P5044, "$/"
.annotate 'line', 645
    nqp_get_sc_object $P5048, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5047, $P5048, "QAST"
    get_who $P5046, $P5047
    set $P5045, $P5046["Regex"]
    unless_null $P5045, fallback1922
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5045, $P5049
  fallback1922:
    find_lex $P5050, "$/"
    $P5051 = $P5045."new"($P102, "literal" :named("rxtype"), $P5050 :named("node"))
    $P5052 = $P5039."new"($P5051, "sym" :named("name"), "subcapture" :named("rxtype"), $P5044 :named("node"))
    store_lex "$qast", $P5052
    .return ($P5052) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1349901746.339") :anon :lex :outer("cuid_149_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 652
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "$qast"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback1933
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1933:
    $P5004 = $P5001."push"(_lex_param_0)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<[>" :subid("cuid_150_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 663
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_195_1349901746.339' 
    capture_lex $P5036 
    .lex "$clist", $P101 
    .lex "$qast", $P102 
    .lex "$i", $P103 
    .lex "$n", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P104, $P5004
    unless_null _lex_param_1, fallback1951
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5006
  fallback1951:
    set $P5005, _lex_param_1["cclass_elem"]
    unless_null $P5005, fallback1952
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5005, $P5007
  fallback1952:
    set $P101, $P5005
.annotate 'line', 665
    set $P5008, $P101[0]
    unless_null $P5008, fallback1953
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5009
  fallback1953:
    $P5010 = $P5008."ast"()
    set $P102, $P5010
.annotate 'line', 666
    $P5011 = $P102."negate"()
    set $P5013, $P5011
    unless $P5011 goto if538_end1957 
    $P5012 = $P102."rxtype"()
    set $S5001, $P5012
    iseq $I5001, $S5001, "subrule"
    box $P5014, $I5001
    set $P5013, $P5014
  if538_end1957:
    set $P5028, $P5013
    unless $P5013 goto if537_end1955 
.annotate 'line', 667
    $P5015 = $P102."subtype"("zerowidth")
.annotate 'line', 668
    nqp_get_sc_object $P5019, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5018, $P5019, "QAST"
    get_who $P5017, $P5018
    set $P5016, $P5017["Regex"]
    unless_null $P5016, fallback1958
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5020
  fallback1958:
.annotate 'line', 670
    nqp_get_sc_object $P5024, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5023, $P5024, "QAST"
    get_who $P5022, $P5023
    set $P5021, $P5022["Regex"]
    unless_null $P5021, fallback1959
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5021, $P5025
  fallback1959:
    $P5026 = $P5021."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P5027 = $P5016."new"($P102, $P5026, "concat" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5027
    set $P5028, $P102
  if537_end1955:
    box $P5029, 1
    set $P103, $P5029
    set $N5001, $P101
    box $P5030, $N5001
    set $P104, $P5030
  while539_test1960:
    set $N5002, $P103
    set $N5003, $P104
    islt $I5002, $N5002, $N5003
    box $P5034, $I5002
    set $P5033, $P5034
    unless $I5002 goto while539_done1964 
  while539_redo1962:
    .const 'Sub' $P5031 = 'cuid_195_1349901746.339' 
    capture_lex $P5031
    $P5032 = $P5031()
    set $P5033, $P5032
    goto while539_test1960 
  while539_done1964:
.annotate 'line', 685
    $P5035 = _lex_param_1."!make"($P102)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1349901746.339") :anon :lex :outer("cuid_150_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 674
    .lex "$ast", $P101 
    .local pmc tmp_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 675
    find_lex $P5003, "$clist"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback1965
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5005
  fallback1965:
    $P5006 = $P5002."ast"()
    set $P101, $P5006
.annotate 'line', 676
    $P5007 = $P101."negate"()
    unless $P5007 goto if540_else1966 
.annotate 'line', 677
    $P5008 = $P101."subtype"("zerowidth")
.annotate 'line', 678
    nqp_get_sc_object $P5012, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1968
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5013
  fallback1968:
    find_lex $P5014, "$qast"
    find_lex $P5015, "$/"
    $P5016 = $P5009."new"($P101, $P5014, "concat" :named("rxtype"), $P5015 :named("node"))
    store_lex "$qast", $P5016
    set $P5025, $P5016
    goto if540_end1967
  if540_else1966:
.annotate 'line', 680
.annotate 'line', 681
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Regex"]
    unless_null $P5017, fallback1969
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5021
  fallback1969:
    find_lex $P5022, "$qast"
    find_lex $P5023, "$/"
    $P5024 = $P5017."new"($P5022, $P101, "altseq" :named("rxtype"), $P5023 :named("node"))
    store_lex "$qast", $P5024
    set $P5025, $P5024
  if540_end1967:
    find_lex $P5026, "$i"
    set tmp_1, $P5026
    set $N5002, tmp_1
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5027, $N5001
    store_lex "$i", $P5027
    .return (tmp_1) 
.end
.HLL "nqp"
.namespace []
.sub "arg" :subid("cuid_151_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 688
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 689
    unless_null _lex_param_1, fallback1972
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback1972:
    set $P5001, _lex_param_1["quote_EXPR"]
    unless_null $P5001, fallback1973
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback1973:
    unless $P5001 goto if541_else1970 
.annotate 'line', 690
    unless_null _lex_param_1, fallback1974
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5005
  fallback1974:
    set $P5004, _lex_param_1["quote_EXPR"]
    unless_null $P5004, fallback1975
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5006
  fallback1975:
    $P5007 = $P5004."ast"()
    set $P5017, $P5007
    goto if541_end1971
  if541_else1970:
.annotate 'line', 691
    nqp_get_sc_object $P5011, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["NVal"]
    unless_null $P5008, fallback1976
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5012
  fallback1976:
    unless_null _lex_param_1, fallback1977
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5014
  fallback1977:
    set $P5013, _lex_param_1["val"]
    unless_null $P5013, fallback1978
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5015
  fallback1978:
    set $N5001, $P5013
    $P5016 = $P5008."new"($N5001 :named("value"))
    set $P5017, $P5016
  if541_end1971:
    $P5018 = _lex_param_1."!make"($P5017)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "arglist" :subid("cuid_152_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 694
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_196_1349901746.339' 
    capture_lex $P5017 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 695
    nqp_get_sc_object $P5005, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback1979
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback1979:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    unless_null _lex_param_1, fallback1980
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5012
  fallback1980:
    set $P5011, _lex_param_1["arg"]
    unless_null $P5011, fallback1981
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5013
  fallback1981:
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next1982:
    unless $P5010, for_done1984
    shift $P5015, $P5010
  for_redo1983:
    .const 'Sub' $P5014 = 'cuid_196_1349901746.339' 
    capture_lex $P5014
    $P5008 = $P5014($P5015)
    goto for_next1982
  for_done1984:
.annotate 'line', 697
    $P5016 = _lex_param_1."!make"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1349901746.339") :anon :lex :outer("cuid_152_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 696
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cclass_elem" :subid("cuid_153_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 700
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_197_1349901746.339' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_198_1349901746.339' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_202_1349901746.339' 
    capture_lex $P5019 
    .lex "$str", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    box $P5003, ""
    set $P101, $P5003
    unless_null _lex_param_1, fallback1987
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5005
  fallback1987:
    set $P5004, _lex_param_1["name"]
    unless_null $P5004, fallback1988
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5006
  fallback1988:
    unless $P5004 goto if542_else1985 
    .const 'Sub' $P5007 = 'cuid_197_1349901746.339' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5017, $P5008
    goto if542_end1986
  if542_else1985:
    unless_null _lex_param_1, fallback1998
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5010
  fallback1998:
    set $P5009, _lex_param_1["uniprop"]
    unless_null $P5009, fallback1999
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5011
  fallback1999:
    unless $P5009 goto if543_else1996 
    .const 'Sub' $P5012 = 'cuid_198_1349901746.339' 
    capture_lex $P5012
    $P5013 = $P5012()
    set $P5016, $P5013
    goto if543_end1997
  if543_else1996:
    .const 'Sub' $P5014 = 'cuid_202_1349901746.339' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
  if543_end1997:
    set $P5017, $P5016
  if542_end1986:
.annotate 'line', 765
    $P5018 = _lex_param_1."!make"($P102)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1349901746.339") :anon :lex :outer("cuid_153_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 703
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    unless_null $P5003, fallback1989
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5004
  fallback1989:
    set $P5002, $P5003["name"]
    unless_null $P5002, fallback1990
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5005
  fallback1990:
    set $S5001, $P5002
    box $P5006, $S5001
    set $P101, $P5006
.annotate 'line', 705
    nqp_get_sc_object $P5010, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Regex"]
    unless_null $P5007, fallback1991
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5011
  fallback1991:
    find_lex $P5013, "$/"
    unless_null $P5013, fallback1992
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5014
  fallback1992:
    set $P5012, $P5013["sign"]
    unless_null $P5012, fallback1993
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5015
  fallback1993:
    set $S5002, $P5012
    iseq $I5001, $S5002, "-"
    find_lex $P5016, "$/"
.annotate 'line', 707
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Node"]
    unless_null $P5017, fallback1994
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5021
  fallback1994:
    nqp_get_sc_object $P5025, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5024, $P5025, "QAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["SVal"]
    unless_null $P5022, fallback1995
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5022, $P5026
  fallback1995:
    $P5027 = $P5022."new"($P101 :named("value"))
    $P5028 = $P5017."new"($P5027)
    $P5029 = $P5007."new"($P5028, "subrule" :named("rxtype"), "method" :named("subtype"), $I5001 :named("negate"), $P5016 :named("node"))
    store_lex "$qast", $P5029
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1349901746.339") :anon :lex :outer("cuid_153_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 709
    .lex "$uniprop", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    unless_null $P5003, fallback2000
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5004
  fallback2000:
    set $P5002, $P5003["uniprop"]
    unless_null $P5002, fallback2001
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5005
  fallback2001:
    set $S5001, $P5002
    box $P5006, $S5001
    set $P101, $P5006
.annotate 'line', 711
    nqp_get_sc_object $P5010, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Regex"]
    unless_null $P5007, fallback2002
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5011
  fallback2002:
    find_lex $P5013, "$/"
    unless_null $P5013, fallback2007
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5014
  fallback2007:
    set $P5012, $P5013["sign"]
    unless_null $P5012, fallback2008
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5015
  fallback2008:
    set $S5002, $P5012
    iseq $I5001, $S5002, "-"
    set $I5003, $I5001
    unless $I5001 goto if545_end2006 
    find_lex $P5017, "$/"
    unless_null $P5017, fallback2009
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5018
  fallback2009:
    set $P5016, $P5017["invert"]
    unless_null $P5016, fallback2010
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5019
  fallback2010:
    set $S5003, $P5016
    isne $I5002, $S5003, "!"
    set $I5003, $I5002
  if545_end2006:
    set $I5007, $I5003
    if $I5003 goto unless544_end2004 
    find_lex $P5021, "$/"
    unless_null $P5021, fallback2013
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5021, $P5022
  fallback2013:
    set $P5020, $P5021["sign"]
    unless_null $P5020, fallback2014
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5023
  fallback2014:
    set $S5004, $P5020
    isne $I5004, $S5004, "-"
    set $I5006, $I5004
    unless $I5004 goto if546_end2012 
    find_lex $P5025, "$/"
    unless_null $P5025, fallback2015
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5025, $P5026
  fallback2015:
    set $P5024, $P5025["invert"]
    unless_null $P5024, fallback2016
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5024, $P5027
  fallback2016:
    set $S5005, $P5024
    iseq $I5005, $S5005, "!"
    set $I5006, $I5005
  if546_end2012:
    set $I5007, $I5006
  unless544_end2004:
    find_lex $P5028, "$/"
    $P5029 = $P5007."new"($P101, "uniprop" :named("rxtype"), $I5007 :named("negate"), $P5028 :named("node"))
    store_lex "$qast", $P5029
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1349901746.339") :anon :lex :outer("cuid_153_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 715
    .const 'Sub' $P5060 = 'cuid_200_1349901746.339' 
    capture_lex $P5060 
    .lex "@alts", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "$/"
    unless_null $P5006, fallback2017
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5007
  fallback2017:
    set $P5005, $P5006["charspec"]
    unless_null $P5005, fallback2018
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5005, $P5008
  fallback2018:
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next2079:
    unless $P5004, for_done2081
    shift $P5010, $P5004
  for_redo2080:
    .const 'Sub' $P5009 = 'cuid_200_1349901746.339' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next2079
  for_done2081:
    find_lex $P5011, "$str"
    set $S5001, $P5011
    length $I5001, $S5001
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if562_end2083 
.annotate 'line', 755
    nqp_get_sc_object $P5015, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback2084
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5016
  fallback2084:
    find_lex $P5017, "$str"
    find_lex $P5018, "$/"
    find_lex $P5020, "$/"
    unless_null $P5020, fallback2085
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5021
  fallback2085:
    set $P5019, $P5020["sign"]
    unless_null $P5019, fallback2086
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5022
  fallback2086:
    set $S5002, $P5019
    iseq $I5002, $S5002, "-"
    $P5023 = $P5012."new"($P5017, "enumcharlist" :named("rxtype"), $P5018 :named("node"), $I5002 :named("negate"))
    $P5024 = $P101."push"($P5023)
    set $P5025, $P5024
  if562_end2083:
    set $N5001, $P101
    set $N5002, 1
    iseq $I5003, $N5001, $N5002
    unless $I5003 goto if563_else2087 
    set $P5027, $P101[0]
    unless_null $P5027, fallback2089
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5027, $P5028
  fallback2089:
    set $P5059, $P5027
    goto if563_end2088
  if563_else2087:
    find_lex $P5030, "$/"
    unless_null $P5030, fallback2092
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5030, $P5031
  fallback2092:
    set $P5029, $P5030["sign"]
    unless_null $P5029, fallback2093
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5029, $P5032
  fallback2093:
    set $S5003, $P5029
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if564_else2090 
.annotate 'line', 759
    nqp_get_sc_object $P5036, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5035, $P5036, "QAST"
    get_who $P5034, $P5035
    set $P5033, $P5034["Regex"]
    unless_null $P5033, fallback2094
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5033, $P5037
  fallback2094:
    find_lex $P5038, "$/"
.annotate 'line', 760
    nqp_get_sc_object $P5042, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5041, $P5042, "QAST"
    get_who $P5040, $P5041
    set $P5039, $P5040["Regex"]
    unless_null $P5039, fallback2095
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5039, $P5043
  fallback2095:
    $P5044 = $P5039."new"($P101 :flat, "conj" :named("rxtype"), "zerowidth" :named("subtype"))
.annotate 'line', 761
    nqp_get_sc_object $P5048, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5047, $P5048, "QAST"
    get_who $P5046, $P5047
    set $P5045, $P5046["Regex"]
    unless_null $P5045, fallback2096
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5045, $P5049
  fallback2096:
    $P5050 = $P5045."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P5051 = $P5033."new"($P5044, $P5050, "concat" :named("rxtype"), $P5038 :named("node"))
    set $P5058, $P5051
    goto if564_end2091
  if564_else2090:
.annotate 'line', 762
    nqp_get_sc_object $P5055, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5054, $P5055, "QAST"
    get_who $P5053, $P5054
    set $P5052, $P5053["Regex"]
    unless_null $P5052, fallback2097
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5052, $P5056
  fallback2097:
    $P5057 = $P5052."new"($P101 :flat, "altseq" :named("rxtype"))
    set $P5058, $P5057
  if564_end2091:
    set $P5059, $P5058
  if563_end2088:
    store_lex "$qast", $P5059
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1349901746.339") :anon :lex :outer("cuid_202_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 717
    .param pmc _lex_param_0 
    .const 'Sub' $P5017 = 'cuid_199_1349901746.339' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_201_1349901746.339' 
    capture_lex $P5017 
    .lex "$_", _lex_param_0 
    set $P5001, _lex_param_0[1]
    unless_null $P5001, fallback2021
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5002
  fallback2021:
    unless $P5001 goto if547_else2019 
    .const 'Sub' $P5003 = 'cuid_199_1349901746.339' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5016, $P5004
    goto if547_end2020
  if547_else2019:
    set $P5006, _lex_param_0[0]
    unless_null $P5006, fallback2070
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5007
  fallback2070:
    set $P5005, $P5006["backslash"]
    unless_null $P5005, fallback2071
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5005, $P5008
  fallback2071:
    unless $P5005 goto if560_else2068 
    .const 'Sub' $P5009 = 'cuid_201_1349901746.339' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5015, $P5010
    goto if560_end2069
  if560_else2068:
.annotate 'line', 753
    find_lex $P5011, "$str"
    set $S5002, $P5011
    set $P5012, _lex_param_0[0]
    unless_null $P5012, fallback2078
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5013
  fallback2078:
    set $S5003, $P5012
    concat $S5001, $S5002, $S5003
    box $P5014, $S5001
    store_lex "$str", $P5014
    set $P5015, $P5014
  if560_end2069:
    set $P5016, $P5015
  if547_end2020:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1349901746.339") :anon :lex :outer("cuid_200_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 718
    .lex "$node", $P101 
    .lex "$lhs", $P102 
    .lex "$rhs", $P103 
    .lex "$ord0", $P104 
    .lex "$ord1", $P105 
    .local pmc tmp_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P105, $P5005
    find_lex $P5008, "$_"
    set $P5007, $P5008[0]
    unless_null $P5007, fallback2024
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5009
  fallback2024:
    set $P5006, $P5007["backslash"]
    unless_null $P5006, fallback2025
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5010
  fallback2025:
    unless $P5006 goto if548_else2022 
.annotate 'line', 722
.annotate 'line', 723
    find_lex $P5013, "$_"
    set $P5012, $P5013[0]
    unless_null $P5012, fallback2026
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5012, $P5014
  fallback2026:
    set $P5011, $P5012["backslash"]
    unless_null $P5011, fallback2027
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5015
  fallback2027:
    $P5016 = $P5011."ast"()
    set $P101, $P5016
.annotate 'line', 725
    $P5017 = $P101."rxtype"()
    set $S5001, $P5017
    isne $I5001, $S5001, "literal"
    set $I5003, $I5001
    unless $I5001 goto if552_end2035 
    $P5018 = $P101."rxtype"()
    set $S5002, $P5018
    isne $I5002, $S5002, "enumcharlist"
    set $I5003, $I5002
  if552_end2035:
    box $P5021, $I5003
    set $P5020, $P5021
    if $I5003 goto unless551_end2033 
.annotate 'line', 726
    $P5019 = $P101."negate"()
    set $P5020, $P5019
  unless551_end2033:
    set $P5024, $P5020
    if $P5020 goto unless550_end2031 
    set $P5022, $P101[0]
    unless_null $P5022, fallback2036
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5022, $P5023
  fallback2036:
    set $S5003, $P5022
    length $I5005, $S5003
    set $N5001, $I5005
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    box $P5025, $I5004
    set $P5024, $P5025
  unless550_end2031:
    set $P5030, $P5024
    unless $P5024 goto if549_end2029 
.annotate 'line', 724
    find_lex $P5026, "$/"
    $P5027 = $P5026."CURSOR"()
    find_lex $P5028, "$_"
    set $S5005, $P5028
    concat $S5004, "Illegal range endpoint in regex: ", $S5005
    $P5029 = $P5027."panic"($S5004)
    set $P5030, $P5029
  if549_end2029:
    set $P5031, $P101[0]
    unless_null $P5031, fallback2037
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5031, $P5032
  fallback2037:
    set $P102, $P5031
    set $P5039, $P102
    goto if548_end2023
  if548_else2022:
.annotate 'line', 729
    find_lex $P5035, "$_"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback2038
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5034, $P5036
  fallback2038:
    set $P5033, $P5034[0]
    unless_null $P5033, fallback2039
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5033, $P5037
  fallback2039:
    set $S5006, $P5033
    box $P5038, $S5006
    set $P102, $P5038
    set $P5039, $P102
  if548_end2023:
    find_lex $P5043, "$_"
    set $P5042, $P5043[1]
    unless_null $P5042, fallback2042
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5042, $P5044
  fallback2042:
    set $P5041, $P5042[0]
    unless_null $P5041, fallback2043
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5041, $P5045
  fallback2043:
    set $P5040, $P5041["backslash"]
    unless_null $P5040, fallback2044
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5040, $P5046
  fallback2044:
    unless $P5040 goto if553_else2040 
.annotate 'line', 732
.annotate 'line', 733
    find_lex $P5050, "$_"
    set $P5049, $P5050[1]
    unless_null $P5049, fallback2045
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5049, $P5051
  fallback2045:
    set $P5048, $P5049[0]
    unless_null $P5048, fallback2046
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5048, $P5052
  fallback2046:
    set $P5047, $P5048["backslash"]
    unless_null $P5047, fallback2047
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5047, $P5053
  fallback2047:
    $P5054 = $P5047."ast"()
    set $P101, $P5054
.annotate 'line', 735
    $P5055 = $P101."rxtype"()
    set $S5007, $P5055
    isne $I5006, $S5007, "literal"
    set $I5008, $I5006
    unless $I5006 goto if557_end2055 
    $P5056 = $P101."rxtype"()
    set $S5008, $P5056
    isne $I5007, $S5008, "enumcharlist"
    set $I5008, $I5007
  if557_end2055:
    box $P5059, $I5008
    set $P5058, $P5059
    if $I5008 goto unless556_end2053 
.annotate 'line', 736
    $P5057 = $P101."negate"()
    set $P5058, $P5057
  unless556_end2053:
    set $P5062, $P5058
    if $P5058 goto unless555_end2051 
    set $P5060, $P101[0]
    unless_null $P5060, fallback2056
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5060, $P5061
  fallback2056:
    set $S5009, $P5060
    length $I5010, $S5009
    set $N5003, $I5010
    set $N5004, 1
    isne $I5009, $N5003, $N5004
    box $P5063, $I5009
    set $P5062, $P5063
  unless555_end2051:
    set $P5068, $P5062
    unless $P5062 goto if554_end2049 
.annotate 'line', 734
    find_lex $P5064, "$/"
    $P5065 = $P5064."CURSOR"()
    find_lex $P5066, "$_"
    set $S5011, $P5066
    concat $S5010, "Illegal range endpoint in regex: ", $S5011
    $P5067 = $P5065."panic"($S5010)
    set $P5068, $P5067
  if554_end2049:
    set $P5069, $P101[0]
    unless_null $P5069, fallback2057
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5069, $P5070
  fallback2057:
    set $P103, $P5069
    set $P5079, $P103
    goto if553_end2041
  if553_else2040:
.annotate 'line', 739
    find_lex $P5074, "$_"
    set $P5073, $P5074[1]
    unless_null $P5073, fallback2058
    nqp_get_sc_object $P5075, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5073, $P5075
  fallback2058:
    set $P5072, $P5073[0]
    unless_null $P5072, fallback2059
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5072, $P5076
  fallback2059:
    set $P5071, $P5072[0]
    unless_null $P5071, fallback2060
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5071, $P5077
  fallback2060:
    set $S5012, $P5071
    box $P5078, $S5012
    set $P103, $P5078
    set $P5079, $P103
  if553_end2041:
    set $S5013, $P102
    ord $I5011, $S5013
    box $P5080, $I5011
    set $P104, $P5080
    set $S5014, $P103
    ord $I5012, $S5014
    box $P5081, $I5012
    set $P105, $P5081
    set $N5005, $P104
    set $N5006, $P105
    isgt $I5013, $N5005, $N5006
    box $P5087, $I5013
    set $P5086, $P5087
    unless $I5013 goto if558_end2062 
.annotate 'line', 744
    find_lex $P5082, "$/"
    $P5083 = $P5082."CURSOR"()
    find_lex $P5084, "$_"
    set $S5016, $P5084
    concat $S5015, "Illegal reversed character range in regex: ", $S5016
    $P5085 = $P5083."panic"($S5015)
    set $P5086, $P5085
  if558_end2062:
    new $P5091, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5091, while559_handlers2066
    push_eh $P5091
  while559_test2063:
    set $N5007, $P104
    set $N5008, $P105
    isle $I5014, $N5007, $N5008
    box $P5092, $I5014
    set $P5090, $P5092
    unless $I5014 goto while559_done2067 
  while559_redo2065:
    find_lex $P5088, "$str"
    set $S5018, $P5088
    set tmp_2, $P104
    set $N5010, tmp_2
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5089, $N5009
    set $P104, $P5089
    set $I5015, tmp_2
    chr $S5019, $I5015
    concat $S5017, $S5018, $S5019
    box $P5089, $S5017
    store_lex "$str", $P5089
    set $P5090, $P5089
    goto while559_test2063 
  while559_handlers2066:
    .get_results ($P5091)
    pop_upto_eh $P5091
    getattribute $P5091, $P5091, 'type'
    eq $P5091, .CONTROL_LOOP_NEXT, while559_test2063
    eq $P5091, .CONTROL_LOOP_REDO, while559_redo2065
  while559_done2067:
    pop_eh 
    .return ($P5090) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1349901746.339") :anon :lex :outer("cuid_200_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 748
    .lex "$bs", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 749
    find_lex $P5004, "$_"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback2072
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback2072:
    set $P5002, $P5003["backslash"]
    unless_null $P5002, fallback2073
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback2073:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    find_lex $P5009, "$/"
    unless_null $P5009, fallback2076
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5010
  fallback2076:
    set $P5008, $P5009["sign"]
    unless_null $P5008, fallback2077
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5011
  fallback2077:
    set $S5001, $P5008
    iseq $I5001, $S5001, "-"
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if561_end2075 
.annotate 'line', 750
    $P5012 = $P101."negate"()
    isfalse $I5002, $P5012
    $P5013 = $P101."negate"($I5002)
    set $P5014, $P5013
  if561_end2075:
.annotate 'line', 751
    find_lex $P5016, "@alts"
    $P5017 = $P5016."push"($P101)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "mod_internal" :subid("cuid_154_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 768
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_203_1349901746.339' 
    capture_lex $P5043 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback2100
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5002
  fallback2100:
    set $P5001, _lex_param_1["quote_EXPR"]
    unless_null $P5001, fallback2101
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback2101:
    unless $P5001 goto if565_else2098 
.annotate 'line', 769
.annotate 'line', 770
    nqp_get_sc_object $P5007, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["SVal"]
    unless_null $P5004, fallback2104
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5008
  fallback2104:
    unless_null _lex_param_1, fallback2105
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5011
  fallback2105:
    set $P5010, _lex_param_1["quote_EXPR"]
    unless_null $P5010, fallback2106
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5012
  fallback2106:
    set $P5009, $P5010[0]
    unless_null $P5009, fallback2107
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5013
  fallback2107:
    $P5014 = $P5009."ast"()
    $P5015 = $P5004."ACCEPTS"($P5014)
    unless $P5015 goto if566_else2102 
    find_dynamic_lex $P5016, "%*RX"
    unless_null $P5016, fallback2108
    nqp_get_sc_object $P5019, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5018, $P5019
    set $P5017, $P5018["%RX"]
    unless_null $P5017, fallback2109
    nqp_get_sc_object $P5021, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5020, $P5021
    new $P5022, 'Hash'
    set $P5020["%RX"], $P5022
    set $P5017, $P5022
  fallback2109:
    unless_null $P5017, vivi_5672110
    die "Contextual %*RX not found"
    box $P5023, "Contextual %*RX not found"
    set $P5017, $P5023
  vivi_5672110:
    set $P5016, $P5017
  fallback2108:
    unless_null _lex_param_1, fallback2111
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5026
  fallback2111:
    set $P5025, _lex_param_1["mod_ident"]
    unless_null $P5025, fallback2112
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5025, $P5027
  fallback2112:
    set $P5024, $P5025["sym"]
    unless_null $P5024, fallback2113
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5024, $P5028
  fallback2113:
    set $S5001, $P5024
.annotate 'line', 771
    unless_null _lex_param_1, fallback2114
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5031
  fallback2114:
    set $P5030, _lex_param_1["quote_EXPR"]
    unless_null $P5030, fallback2115
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5030, $P5032
  fallback2115:
    set $P5029, $P5030[0]
    unless_null $P5029, fallback2116
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5029, $P5033
  fallback2116:
    $P5034 = $P5029."ast"()
    $P5035 = $P5034."value"()
    set $P5016[$S5001], $P5035
    set $P5038, $P5035
    goto if566_end2103
  if566_else2102:
.annotate 'line', 773
.annotate 'line', 774
    $P5036 = _lex_param_1."CURSOR"()
    $P5037 = $P5036."panic"("Internal modifier strings must be literals")
    set $P5038, $P5037
  if566_end2103:
    set $P5041, $P5038
    goto if565_end2099
  if565_else2098:
    .const 'Sub' $P5039 = 'cuid_203_1349901746.339' 
    capture_lex $P5039
    $P5040 = $P5039()
    set $P5041, $P5040
  if565_end2099:
.annotate 'line', 781
    $P5042 = _lex_param_1."!make"(0)
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1349901746.339") :anon :lex :outer("cuid_154_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 777
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_lex $P5004, "$/"
    unless_null $P5004, fallback2119
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5005
  fallback2119:
    set $P5003, $P5004["n"]
    unless_null $P5003, fallback2120
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5006
  fallback2120:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback2121
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5007
  fallback2121:
    set $S5001, $P5002
    isgt $I5001, $S5001, ""
    unless $I5001 goto if568_else2117 
    find_lex $P5010, "$/"
    unless_null $P5010, fallback2122
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5011
  fallback2122:
    set $P5009, $P5010["n"]
    unless_null $P5009, fallback2123
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5012
  fallback2123:
    set $P5008, $P5009[0]
    unless_null $P5008, fallback2124
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5013
  fallback2124:
    set $N5001, $P5008
    box $P5015, $N5001
    set $P5014, $P5015
    goto if568_end2118
  if568_else2117:
    box $P5016, 1
    set $P5014, $P5016
  if568_end2118:
    set $P101, $P5014
    find_dynamic_lex $P5017, "%*RX"
    unless_null $P5017, fallback2125
    nqp_get_sc_object $P5020, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5019, $P5020
    set $P5018, $P5019["%RX"]
    unless_null $P5018, fallback2126
    nqp_get_sc_object $P5022, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    get_who $P5021, $P5022
    new $P5023, 'Hash'
    set $P5021["%RX"], $P5023
    set $P5018, $P5023
  fallback2126:
    unless_null $P5018, vivi_5692127
    die "Contextual %*RX not found"
    box $P5024, "Contextual %*RX not found"
    set $P5018, $P5024
  vivi_5692127:
    set $P5017, $P5018
  fallback2125:
    find_lex $P5027, "$/"
    unless_null $P5027, fallback2128
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5027, $P5028
  fallback2128:
    set $P5026, $P5027["mod_ident"]
    unless_null $P5026, fallback2129
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5026, $P5029
  fallback2129:
    set $P5025, $P5026["sym"]
    unless_null $P5025, fallback2130
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5025, $P5030
  fallback2130:
    set $S5002, $P5025
    set $P5017[$S5002], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subrule_alias" :subid("cuid_155_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    .lex "$name", _lex_param_2 
.annotate 'line', 904
    $P5001 = _lex_param_1."name"()
    set $S5001, $P5001
    isgt $I5001, $S5001, ""
    unless $I5001 goto if570_else2131 
    set $S5004, _lex_param_2
    concat $S5003, $S5004, "="
    $P5002 = _lex_param_1."name"()
    set $S5005, $P5002
    concat $S5002, $S5003, $S5005
    $P5003 = _lex_param_1."name"($S5002)
    set $P5005, $P5003
    goto if570_end2132
  if570_else2131:
.annotate 'line', 905
    $P5004 = _lex_param_1."name"(_lex_param_2)
    set $P5005, $P5004
  if570_end2132:
.annotate 'line', 906
    $P5006 = _lex_param_1."subtype"("capture")
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "flip_ast" :subid("cuid_156_1349901746.339") :anon :lex :outer("cuid_157_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 909
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5025 = 'cuid_204_1349901746.339' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_205_1349901746.339' 
    capture_lex $P5025 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_2133
    .lex "RETURN", $P101
    nqp_get_sc_object $P5004, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback2137
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback2137:
    type_check $I5001, _lex_param_1, $P5001
    box $P5009, $I5001
    set $P5008, $P5009
    if $I5001 goto unless571_end2136 
    find_lex $P5006, "RETURN"
    $P5007 = $P5006(_lex_param_1)
    set $P5008, $P5007
  unless571_end2136:
.annotate 'line', 911
    $P5010 = _lex_param_1."rxtype"()
    set $S5001, $P5010
    iseq $I5002, $S5001, "literal"
    unless $I5002 goto if572_else2138 
.annotate 'line', 912
    set $P5011, _lex_param_1[0]
    unless_null $P5011, fallback2140
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5012
  fallback2140:
    $P5013 = $P5011."reverse"()
    set _lex_param_1[0], $P5013
    set $P5024, $P5013
    goto if572_end2139
  if572_else2138:
.annotate 'line', 914
    $P5014 = _lex_param_1."rxtype"()
    set $S5002, $P5014
    iseq $I5003, $S5002, "concat"
    unless $I5003 goto if573_else2141 
    .const 'Sub' $P5015 = 'cuid_204_1349901746.339' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5023, $P5016
    goto if573_end2142
  if573_else2141:
.annotate 'line', 919
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next2153:
    unless $P5019, for_done2155
    shift $P5022, $P5019
  for_redo2154:
    .const 'Sub' $P5021 = 'cuid_205_1349901746.339' 
    capture_lex $P5021
    $P5017 = $P5021($P5022)
    goto for_next2153
  for_done2155:
    set $P5023, $P5017
  if573_end2142:
    set $P5024, $P5023
  if572_end2139:
    goto lexotic_2134
  lexotic_2133:
    .get_results (_lex_param_1)
  lexotic_2134:
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1349901746.339") :anon :lex :outer("cuid_156_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 914
    .lex "@tmp", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
  while574_test2143:
    find_lex $P5002, "$qast"
    $P5003 = $P5002."list"()
    set $N5001, $P5003
    box $P5009, $N5001
    set $P5008, $P5009
    unless $N5001 goto while574_done2147 
  while574_redo2145:
.annotate 'line', 916
    find_lex $P5004, "$qast"
    $P5005 = $P5004."list"()
    $P5006 = $P5005."shift"()
    $P5007 = $P101."push"($P5006)
    set $P5008, $P5007
    goto while574_test2143 
  while574_done2147:
  while575_test2148:
    set $P5017, $P101
    unless $P101 goto while575_done2152 
  while575_redo2150:
.annotate 'line', 917
    find_lex $P5010, "$qast"
    $P5011 = $P5010."list"()
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P101."pop"()
    $P5015 = $P5012."flip_ast"($P5014)
    $P5016 = $P5011."push"($P5015)
    set $P5017, $P5016
    goto while575_test2148 
  while575_done2152:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1349901746.339") :anon :lex :outer("cuid_156_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 920
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."flip_ast"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1349901746.339") :anon :lex :outer("cuid_1_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 927
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1349901746.339") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .const 'Sub' $P5001 = 'cuid_206_1349901746.339' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1349901746.339" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("QRegex")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("NQPHLL")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("QAST")
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("PASTRegex")
    nqp_create_sc $P5001, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\gen\\NQPP6QRegex.pm")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "QAST"
    push $P5003, "QRegex"
    push $P5003, "NQPCursorRole"
    push $P5003, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644"
    push $P5003, "src\\stage2\\QRegex.nqp"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "HLL"
    push $P5003, "PIRT"
    push $P5003, "DEFAULT"
    push $P5003, "CREATE"
    push $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999"
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
    push $P5003, "!cursor_next"
    push $P5003, "!cursor_more"
    push $P5003, "!reduce"
    push $P5003, "!reduce_with_match"
    push $P5003, "!protoregex"
    push $P5003, "!protoregex_nfa"
    push $P5003, "!protoregex_table"
    push $P5003, "!alt"
    push $P5003, "!alt_nfa"
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
    push $P5003, "B199118D856E2F2067FCB01A3B528D24DF31B6BC-1349901730.021"
    push $P5003, "src\\stage2\\gen\\NQPHLL.pm"
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
    push $P5003, "ternary"
    push $P5003, "MARKER"
    push $P5003, "MARKED"
    push $P5003, "LANG"
    push $P5003, "obs"
    push $P5003, "normspace"
    push $P5003, "identifier"
    push $P5003, "arg"
    push $P5003, "arglist"
    push $P5003, "TOP"
    push $P5003, "nibbler"
    push $P5003, "termaltseq"
    push $P5003, "termconjseq"
    push $P5003, "termalt"
    push $P5003, "termconj"
    push $P5003, "quantified_atom"
    push $P5003, "separator"
    push $P5003, "atom"
    push $P5003, "quantifier"
    push $P5003, "quantifier:sym<*>"
    push $P5003, "quantifier:sym<+>"
    push $P5003, "quantifier:sym<?>"
    push $P5003, "quantifier:sym<{N,M}>"
    push $P5003, "quantifier:sym<**>"
    push $P5003, "backmod"
    push $P5003, "metachar"
    push $P5003, "metachar:sym<ws>"
    push $P5003, "metachar:sym<[ ]>"
    push $P5003, "metachar:sym<( )>"
    push $P5003, "metachar:sym<'>"
    push $P5003, "metachar:sym<\">"
    push $P5003, "metachar:sym<.>"
    push $P5003, "metachar:sym<^>"
    push $P5003, "metachar:sym<^^>"
    push $P5003, "metachar:sym<$>"
    push $P5003, "metachar:sym<$$>"
    push $P5003, "metachar:sym<:::>"
    push $P5003, "metachar:sym<::>"
    push $P5003, "metachar:sym<lwb>"
    push $P5003, "metachar:sym<rwb>"
    push $P5003, "metachar:sym<from>"
    push $P5003, "metachar:sym<to>"
    push $P5003, "metachar:sym<bs>"
    push $P5003, "metachar:sym<mod>"
    push $P5003, "metachar:sym<quantifier>"
    push $P5003, "metachar:sym<~>"
    push $P5003, "metachar:sym<{*}>"
    push $P5003, "metachar:sym<assert>"
    push $P5003, "metachar:sym<var>"
    push $P5003, "backslash"
    push $P5003, "backslash:sym<s>"
    push $P5003, "backslash:sym<b>"
    push $P5003, "backslash:sym<e>"
    push $P5003, "backslash:sym<f>"
    push $P5003, "backslash:sym<h>"
    push $P5003, "backslash:sym<r>"
    push $P5003, "backslash:sym<t>"
    push $P5003, "backslash:sym<v>"
    push $P5003, "backslash:sym<o>"
    push $P5003, "backslash:sym<x>"
    push $P5003, "backslash:sym<c>"
    push $P5003, "backslash:sym<A>"
    push $P5003, "backslash:sym<z>"
    push $P5003, "backslash:sym<Z>"
    push $P5003, "backslash:sym<Q>"
    push $P5003, "backslash:sym<unrec>"
    push $P5003, "backslash:sym<misc>"
    push $P5003, "assertion"
    push $P5003, "assertion:sym<?>"
    push $P5003, "assertion:sym<!>"
    push $P5003, "assertion:sym<|>"
    push $P5003, "assertion:sym<method>"
    push $P5003, "assertion:sym<name>"
    push $P5003, "assertion:sym<[>"
    push $P5003, "cclass_elem"
    push $P5003, "mod_internal"
    push $P5003, "mod_ident"
    push $P5003, "mod_ident:sym<ignorecase>"
    push $P5003, "mod_ident:sym<ratchet>"
    push $P5003, "mod_ident:sym<sigspace>"
    push $P5003, "mod_ident:sym<dba>"
    push $P5003, "$!orig"
    push $P5003, "$!target"
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
    push $P5003, "subrule_alias"
    push $P5003, "flip_ast"
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
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "EXPORT"
    push $P5003, "569A1B419F724EEF275BC7729D702142D988A435-1349901720.709"
    push $P5003, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5003, "QRegex::P6Regex::Grammar"
    push $P5003, "orig"
    push $P5003, "match"
    push $P5003, "name"
    push $P5003, "bstack"
    push $P5003, "cstack"
    push $P5003, "regexsub"
    push $P5003, "restart"
    push $P5003, "QRegex::P6Regex::Actions"
    push $P5003, "QRegex::P6Regex::Compiler"
    push $P5003, "CompileTimeValue"
    push $P5003, "5999FA70DED24A5080F4680C3CF5A9B13CAD7450-1349901725.026"
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
    push $P5003, "BlockMemo"
    push $P5003, "Unquote"
    push $P5003, "CompUnit"
    push $P5003, "InlinePlaceholder"
    push $P5003, "Operations"
    push $P5003, "DC3516E3547FFAE754E522DE3431F0A50B4E7979-1349901734.745"
    push $P5003, "src\\stage2\\QAST.nqp"
    push $P5003, "Compiler"
    push $P5003, "NFA"
    push $P5003, "P6Regex"
    push $P5003, "Grammar"
    push $P5003, "Actions"
    push $P5003, "CommandLine"
    push $P5003, "World"
    push $P5003, "CallResult"
    push $P5003, "Sub"
    push $P5003, "Ops"
    push $P5003, "Label"
    .const 'Sub' $P5004 = 'cuid_206_1349901746.339' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAHAAAAeAAAAAsAAADQAAAAZCAAAJ0AAAA0KgAAjEMAAAAAAACMQwAAAAAAAIxDAACMQwAAAAAAAAUAAAAGAAAADwAAABAAAABKAAAASwAAABYBAAAAAAAAGQEAABoBAAAmAQAAJwEAAD0BAAA+AQAAAQAAAAAAAAABAAAAGAEAAAEAAADAAQAAAQAAAFoCAAABAAAAGg8AAAEAAABwFQAAAQAAAIwaAAABAAAAaBwAAAEAAAAeHQAAAQAAAP4dAAABAAAA3h4AAAAAAACNAAAAAAAAAAAAAAAKAAkAAAACAAAAAgAAAAAAjgAAAAMAAAACAAAAAACPAAAABAAAAAIAAQAAABsAAAAHAAAAAgABAAAARQAAAAgAAAACAAEAAABSAAAACQAAAAIAAQAAAFgAAAAKAAAAAgABAAAAXAAAAAsAAAACAAAAAACQAAAADAAAAAIAAAAAAJEAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAAkgAAAAAAAAABAAAACgABAAAADQAAAAIAAAAAAAIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwAAAAAAkwAAAAAAAAACAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAJQAAAAAAAAAAwAAAAoAAAAAAAoAwQAAAA4AAAACAAIAAAAIAAAAEQAAAAIAAgAAAAkAAAASAAAAAgACAAAACgAAABMAAAACAAIAAAALAAAAFAAAAAIAAgAAAAwAAAAVAAAAAgACAAAADwAAABYAAAACAAIAAAARAAAAFwAAAAIAAgAAABMAAAAYAAAAAgACAAAAFQAAABkAAAACAAIAAAAXAAAAGgAAAAIAAgAAABgAAAAbAAAAAgACAAAAGgAAABwAAAACAAIAAAAbAAAAHQAAAAIAAQAAAFMAAAAeAAAAAgABAAAAVAAAAB8AAAACAAEAAABVAAAAIAAAAAIAAQAAAFYAAAAhAAAAAgABAAAAVwAAACIAAAACAAEAAABnAAAAIwAAAAIAAQAAAGgAAAAkAAAAAgABAAAAaQAAACUAAAACAAEAAABqAAAAJgAAAAIAAQAAAGsAAAAnAAAAAgABAAAAbAAAACgAAAACAAEAAABtAAAAKQAAAAIAAQAAAG4AAAAqAAAAAgABAAAAbwAAACsAAAACAAEAAABwAAAALAAAAAIAAQAAAHEAAAAtAAAAAgABAAAAcgAAAC4AAAACAAEAAABzAAAALwAAAAIAAQAAAHQAAAAwAAAAAgABAAAAdQAAADEAAAACAAEAAAB2AAAAMgAAAAIAAQAAAHcAAAAzAAAAAgABAAAAeAAAADQAAAACAAEAAAB5AAAANQAAAAIAAQAAAHoAAAA2AAAAAgABAAAAewAAADcAAAACAAEAAAB8AAAAOAAAAAIAAQAAAH0AAAA5AAAAAgABAAAAfgAAADoAAAACAAEAAAB/AAAAOwAAAAIAAAAAAAUAAAA8AAAAAgABAAAAgQAAAD0AAAACAAEAAACCAAAAPgAAAAIAAQAAAIMAAAA/AAAAAgABAAAAhAAAAEAAAAACAAEAAACFAAAAQQAAAAIAAQAAAIYAAABCAAAAAgABAAAAhwAAAEMAAAACAAEAAACIAAAARAAAAAIAAQAAAIkAAABFAAAAAgABAAAAigAAAEYAAAACAAEAAACLAAAARwAAAAIAAQAAAIwAAABIAAAAAgABAAAAjQAAAEkAAAACAAMAAAAyAAAATAAAAAIAAAAAABAAAABNAAAAAgADAAAABQAAAE4AAAACAAMAAAAGAAAATwAAAAIAAwAAAAcAAABQAAAAAgADAAAACAAAAFEAAAACAAMAAAAJAAAAUgAAAAIAAwAAAAoAAABTAAAAAgADAAAACwAAAFQAAAACAAMAAAAMAAAAVQAAAAIAAwAAAA0AAABWAAAAAgADAAAADgAAAFcAAAACAAMAAAAPAAAAWAAAAAIAAwAAABAAAABZAAAAAgADAAAAEQAAAFoAAAACAAMAAAASAAAAWwAAAAIAAwAAABMAAABcAAAAAgADAAAAFAAAAF0AAAACAAMAAAAVAAAAXgAAAAIAAwAAABYAAABfAAAAAgADAAAAFwAAAGAAAAACAAMAAAAYAAAAYQAAAAIAAwAAABkAAABiAAAAAgADAAAAGgAAAGMAAAACAAMAAAAbAAAAZAAAAAIAAwAAABwAAABlAAAAAgADAAAAHQAAAGYAAAACAAMAAAAeAAAAZwAAAAIAAwAAAB8AAABoAAAAAgADAAAAIAAAAGkAAAACAAMAAAAhAAAAagAAAAIAAwAAACIAAABrAAAAAgADAAAAIwAAAGwAAAACAAMAAAAkAAAAbQAAAAIAAwAAACUAAABuAAAAAgADAAAAJgAAAG8AAAACAAMAAAAnAAAAcAAAAAIAAwAAACgAAABxAAAAAgADAAAAKQAAAHIAAAACAAMAAAAqAAAAcwAAAAIAAwAAACsAAAB0AAAAAgADAAAALAAAAHUAAAACAAMAAAAtAAAAdgAAAAIAAwAAAC4AAAB3AAAAAgADAAAALwAAAHgAAAACAAMAAAAwAAAAeQAAAAIAAwAAADEAAAB6AAAAAgADAAAAMwAAAHsAAAACAAMAAAA0AAAAfAAAAAIAAwAAADUAAAB9AAAAAgADAAAANgAAAH4AAAACAAMAAAA3AAAAfwAAAAIAAwAAADgAAACAAAAAAgADAAAAOQAAAIEAAAACAAMAAAA6AAAAggAAAAIAAwAAADsAAACDAAAAAgADAAAAPAAAAIQAAAACAAMAAAA9AAAAhQAAAAIAAwAAAD4AAACGAAAAAgAAAAAABAAAAIcAAAACAAAAAAAGAAAAiAAAAAIAAAAAAAcAAACJAAAAAgAAAAAACAAAAIoAAAACAAAAAAAJAAAAiwAAAAIAAAAAAAoAAACMAAAAAgAAAAAACwAAAI0AAAACAAAAAAAMAAAAjgAAAAIAAAAAAA0AAACPAAAAAgAAAAAADgAAAJAAAAACAAAAAAAPAAAAkQAAAAIAAAAAABEAAACSAAAAAgAAAAAAEgAAAJMAAAACAAAAAAATAAAAlAAAAAIAAAAAABQAAACVAAAAAgAAAAAAFQAAAJYAAAACAAAAAAAWAAAAlwAAAAIAAAAAABcAAACYAAAAAgAAAAAAGAAAAJkAAAACAAAAAAAZAAAAmgAAAAIAAAAAABoAAACbAAAAAgAAAAAAGwAAAJwAAAACAAAAAAAcAAAAnQAAAAIAAAAAAB0AAACeAAAAAgAAAAAAHgAAAJ8AAAACAAAAAAAfAAAAoAAAAAIAAAAAACAAAAChAAAAAgAAAAAAIQAAAKIAAAACAAAAAAAiAAAAowAAAAIAAAAAACMAAACkAAAAAgAAAAAAJAAAAKUAAAACAAAAAAAlAAAApgAAAAIAAAAAACYAAACnAAAAAgAAAAAAJwAAAKgAAAACAAAAAAAoAAAAqQAAAAIAAAAAACkAAACqAAAAAgAAAAAAKgAAAKsAAAACAAAAAAArAAAArAAAAAIAAAAAACwAAACtAAAAAgAAAAAALQAAAK4AAAACAAAAAAAuAAAArwAAAAIAAAAAAC8AAACwAAAAAgAAAAAAMAAAALEAAAACAAAAAAAxAAAAsgAAAAIAAAAAADIAAACzAAAAAgAAAAAAMwAAALQAAAACAAAAAAA0AAAAtQAAAAIAAAAAADUAAAC2AAAAAgAAAAAANgAAALcAAAACAAAAAAA3AAAAuAAAAAIAAAAAADgAAAC5AAAAAgAAAAAAOQAAALoAAAACAAAAAAA6AAAAuwAAAAIAAAAAADsAAAC8AAAAAgAAAAAAPAAAAL0AAAACAAAAAAA9AAAAvgAAAAIAAAAAAD4AAAC/AAAAAgAAAAAAPwAAAMAAAAACAAAAAABAAAAAwQAAAAIAAAAAAEEAAADCAAAAAgAAAAAAQgAAAMMAAAACAAAAAABDAAAAxAAAAAIAAAAAAEQAAADFAAAAAgAAAAAARQAAAMYAAAACAAAAAABGAAAAxwAAAAIAAAAAAEcAAADIAAAAAgAAAAAASAAAAMkAAAACAAAAAABJAAAAygAAAAIAAAAAAEoAAADLAAAAAgAAAAAASwAAAMwAAAACAAAAAABMAAAAzQAAAAIAAAAAAE0AAADOAAAAAgAAAAAATgAAAM8AAAACAAAAAABPAAAA0AAAAAIAAAAAAFAAAADRAAAAAgAAAAAAUQAAANIAAAACAAAAAABSAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAAMAAAACAAMAAAADAAAAAgABAAAAUgAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABUAAAAAAAAAAAAAAAKAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAABAAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAAAcAAAABAAEAAQACAAIAAAAHAAAAAgACAAAABwAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAIAAgAAAAcAAAD///////////////////////////////8AAAAAAAAAAAQAAAAAAAAAAgACAAAABwAAAAMAAgABAAAAUgAAAAoACgAAANMAAAAEAAAAAAAAAAAA1AAAAAQAAQAAAAAAAADVAAAABAACAAAAAAAAANYAAAAEAAMAAAAAAAAA1wAAAAQABAAAAAAAAADYAAAABAAFAAAAAAAAANkAAAAEAAYAAAAAAAAA2gAAAAQABwAAAAAAAADbAAAABAAIAAAAAAAAANwAAAAEAAkAAAAAAAAAAgADAAAAAwAAAAMAAgAAAAAAAwAAAAMAAAAAAJUAAAAAAAAAUwAAAAoAAAAAAAoAZQAAAA4AAAACAAIAAAAIAAAAEQAAAAIAAgAAAAkAAAASAAAAAgACAAAACgAAABMAAAACAAIAAAALAAAAFAAAAAIAAgAAAAwAAAAVAAAAAgACAAAADwAAABYAAAACAAIAAAARAAAAFwAAAAIAAgAAABMAAAAYAAAAAgACAAAAFQAAABkAAAACAAIAAAAXAAAAGgAAAAIAAgAAABgAAAAbAAAAAgACAAAAGgAAABwAAAACAAIAAAAbAAAA3QAAAAIAAwAAAEAAAADeAAAAAgADAAAAQQAAAN8AAAACAAMAAABCAAAAgAAAAAIAAwAAAEMAAABTAAAAAgADAAAARAAAAEwAAAACAAAAAABaAAAAVwAAAAIAAwAAAEYAAABYAAAAAgADAAAARwAAAGQAAAACAAMAAABIAAAAZQAAAAIAAwAAAEkAAABcAAAAAgADAAAASgAAAF4AAAACAAMAAABLAAAAYAAAAAIAAwAAAEwAAABiAAAAAgADAAAATQAAAHsAAAACAAMAAABOAAAAWgAAAAIAAwAAAE8AAABbAAAAAgADAAAAUAAAAGgAAAACAAMAAABRAAAAaQAAAAIAAwAAAFIAAABqAAAAAgADAAAAUwAAAGsAAAACAAMAAABUAAAAbAAAAAIAAwAAAFUAAABtAAAAAgADAAAAVgAAAG4AAAACAAMAAABXAAAAbwAAAAIAAwAAAFgAAABwAAAAAgADAAAAWQAAAHEAAAACAAMAAABaAAAAcgAAAAIAAwAAAFsAAABzAAAAAgADAAAAXAAAAHQAAAACAAMAAABdAAAAdQAAAAIAAwAAAF4AAAB2AAAAAgADAAAAXwAAAHcAAAACAAMAAABgAAAAiwAAAAIAAAAAAFQAAACMAAAAAgAAAAAAVQAAAI0AAAACAAAAAABWAAAAjgAAAAIAAAAAAFcAAACPAAAAAgAAAAAAWAAAAJAAAAACAAAAAABZAAAAkQAAAAIAAAAAAFsAAACSAAAAAgAAAAAAXAAAAJMAAAACAAAAAABdAAAAlQAAAAIAAAAAAF4AAACWAAAAAgAAAAAAXwAAAJcAAAACAAAAAABgAAAAmQAAAAIAAAAAAGEAAACcAAAAAgAAAAAAYgAAAJ0AAAACAAAAAABjAAAAngAAAAIAAAAAAGQAAACfAAAAAgAAAAAAZQAAAKAAAAACAAAAAABmAAAAoQAAAAIAAAAAAGcAAACiAAAAAgAAAAAAaAAAAKMAAAACAAAAAABpAAAApAAAAAIAAAAAAGoAAAClAAAAAgAAAAAAawAAAKgAAAACAAAAAABsAAAAqQAAAAIAAAAAAG0AAACqAAAAAgAAAAAAbgAAAKsAAAACAAAAAABvAAAArAAAAAIAAAAAAHAAAACxAAAAAgAAAAAAcQAAALIAAAACAAAAAAByAAAArwAAAAIAAAAAAHMAAAC0AAAAAgAAAAAAdAAAALUAAAACAAAAAAB1AAAAtgAAAAIAAAAAAHYAAAC3AAAAAgAAAAAAdwAAALgAAAACAAAAAAB4AAAAuQAAAAIAAAAAAHkAAAC6AAAAAgAAAAAAegAAALsAAAACAAAAAAB7AAAAvAAAAAIAAAAAAHwAAAC9AAAAAgAAAAAAfQAAAL4AAAACAAAAAAB+AAAAxAAAAAIAAAAAAH8AAADGAAAAAgAAAAAAgAAAAMcAAAACAAAAAACBAAAAyAAAAAIAAAAAAIIAAADJAAAAAgAAAAAAgwAAAMoAAAACAAAAAACEAAAAywAAAAIAAAAAAIUAAACJAAAAAgAAAAAAhgAAAIoAAAACAAAAAACHAAAAzAAAAAIAAAAAAIgAAADNAAAAAgAAAAAAiQAAAOAAAAACAAAAAACKAAAA4QAAAAIAAAAAAIsAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAUwAAAAIAAwAAAD8AAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAMAAAA/AAAAAwACAAAAAABTAAAAAwAAAAAAlgAAAAAAAACMAAAACgAAAAAACgA4AAAADgAAAAIAAgAAAAgAAAARAAAAAgACAAAACQAAABIAAAACAAIAAAAKAAAAEwAAAAIAAwAAAGIAAAAUAAAAAgACAAAADAAAABUAAAACAAIAAAAPAAAAFgAAAAIAAgAAABEAAAAXAAAAAgACAAAAEwAAABgAAAACAAIAAAAVAAAAGQAAAAIAAgAAABcAAAAaAAAAAgACAAAAGAAAABsAAAACAAIAAAAaAAAAHAAAAAIAAgAAABsAAADiAAAAAgADAAAAYwAAAOMAAAACAAMAAABkAAAA5AAAAAIAAwAAAGUAAADlAAAAAgADAAAAZgAAAOYAAAACAAMAAABnAAAA5wAAAAIAAwAAAGgAAADoAAAAAgADAAAAaQAAAOkAAAACAAMAAABqAAAA6gAAAAIAAwAAAGsAAAB5AAAAAgADAAAAbAAAAOsAAAACAAMAAABtAAAA7AAAAAIAAwAAAG4AAADtAAAAAgADAAAAbwAAAO4AAAACAAMAAABwAAAA7wAAAAIAAwAAAHEAAADwAAAAAgADAAAAcgAAAPEAAAACAAMAAABzAAAA8gAAAAIAAwAAAHQAAADzAAAAAgADAAAAdQAAAPQAAAACAAMAAAB2AAAA9QAAAAIAAwAAAHcAAAD2AAAAAgADAAAAeAAAAPcAAAACAAMAAAB5AAAAHwAAAAIAAwAAAHoAAAD4AAAAAgADAAAAewAAAPkAAAACAAMAAAB8AAAA+gAAAAIAAwAAAH0AAAD7AAAAAgADAAAAfgAAAPwAAAACAAMAAAB/AAAA/QAAAAIAAwAAAIAAAAD+AAAAAgADAAAAgQAAAP8AAAACAAMAAACCAAAAAAEAAAIAAwAAAIMAAAABAQAAAgADAAAAhAAAAAIBAAACAAMAAACFAAAAAwEAAAIAAwAAAIYAAAAEAQAAAgADAAAAhwAAAAUBAAACAAMAAACIAAAABgEAAAIAAwAAAIkAAAAHAQAAAgADAAAAigAAAAgBAAACAAMAAACLAAAACQEAAAIAAwAAAIwAAAAKAQAAAgADAAAAjQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAACMAAAAAgADAAAAYQAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAABwAAAAIAAgAAAAcAAAABAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAEAAgACAAAABwAAAAEAAQD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAABwAAAAMAAgADAAAAYQAAAAoACwAAAAsBAAAEAAAAAAAAAAAADAEAAAQAAQAAAAAAAAANAQAABAACAAAAAAAAAA4BAAAEAAMAAAAAAAAADwEAAAQABAAAAAAAAAAQAQAABAAFAAAAAAAAABEBAAAEAAYAAAAAAAAAEgEAAAQABwAAAAAAAAATAQAABAAIAAAAAAAAABQBAAAEAAkAAAAAAAAAFQEAAAQACgAAAAAAAAACAAAAAACMAAAAAwAAAAAAlwAAAAAAAACOAAAACgAXAAAAJQEAAAIABgAAAAMAAAAoAQAAAgAGAAAACAAAACkBAAACAAYAAAAMAAAAKgEAAAIABgAAACcAAAArAQAAAgAGAAAALwAAACwBAAACAAYAAAAzAAAALQEAAAIABgAAADcAAAAuAQAAAgAGAAAAOwAAAC8BAAACAAYAAAA+AAAAMAEAAAIABgAAAEIAAAAxAQAAAgAGAAAARwAAADIBAAACAAYAAABPAAAAMwEAAAIABgAAAFEAAAA0AQAAAgAGAAAAVwAAADUBAAACAAYAAABbAAAANgEAAAIABgAAAF8AAAA3AQAAAgAGAAAAYwAAADgBAAACAAYAAABrAAAAOQEAAAIABgAAAG4AAAA6AQAAAgAGAAAAcQAAADsBAAACAAYAAAB6AAAAPAEAAAIABwAAACkAAAA/AQAAAgAHAAAAOgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACOAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAI4AAAADAAAAAACYAAAAAAAAAI8AAAAKAAIAAABAAQAAAgABAAAAAwAAAEEBAAACAAAAAACZAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAI8AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAjwAAAAMAAAAAAJoAAAAAAAAAkAAAAAoABQAAAEIBAAACAAMAAAADAAAAQwEAAAIAAwAAAD8AAAA/AQAAAgADAAAAYQAAAEQBAAACAAMAAADVAAAARQEAAAIAAwAAAJ8AAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAkAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACQAAAAAwAAAAAAmwAAAAAAAACRAAAACgAFAAAARgEAAAIABwAAAAMAAAApAQAAAgAHAAAABgAAAEcBAAACAAcAAAAOAAAASAEAAAIABwAAAB0AAABJAQAAAgAHAAAAJAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACRAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAJEAAAADAAAAAACcAAAAAAAAAJkAAAAKAAMAAABCAQAAAgAAAAAAAwAAAEMBAAACAAAAAABTAAAAPwEAAAIAAAAAAIwAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAmQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAIAAAAFAAAAAAAAAAEAAAACAAAABQAAABAAAAABAAAAAgAAAAUAAAAgAAAAAQAAAAIAAAAFAAAAMAAAAAEAAAACAAAABQAAAEAAAAABAAAAAgAAAAUAAABQAAAAAQAAAAIAAAAFAAAAYAAAAAEAAAACAAAABQAAAHAAAAABAAAAAgAAAAUAAACAAAAAAQAAAAIAAAAFAAAAkAAAAAEAAAACAAAABQAAAKAAAAABAAAAAgAAAAUAAACwAAAAAQAAAAIAAAAFAAAAwAAAAAEAAAACAAAABQAAANAAAAABAAAAAgAAAAUAAADgAAAAAQAAAAIAAAAFAAAA8AAAAAEAAAACAAAABQAAAAABAAABAAAAAgAAAAUAAAAQAQAAAQAAAAIAAAAFAAAAIAEAAAEAAAACAAAABQAAADABAAABAAAAAgAAAAUAAABAAQAAAQAAAAIAAAAFAAAAUAEAAAEAAAACAAAABQAAAGABAAABAAAAAgAAAAUAAABwAQAAAQAAAAIAAAAFAAAAgAEAAAEAAAACAAAABQAAAJABAAABAAAAAgAAAAUAAACgAQAAAQAAAAIAAAAFAAAAsAEAAAEAAAACAAAABQAAAMABAAABAAAAAgAAAAUAAADQAQAAAQAAAAIAAAAFAAAA4AEAAAEAAAACAAAABQAAAPABAAABAAAAAgAAAAUAAAAAAgAAAQAAAAIAAAAFAAAAEAIAAAEAAAACAAAABQAAACACAAABAAAAAgAAAAUAAAAwAgAAAQAAAAIAAAAFAAAAQAIAAAEAAAACAAAABQAAAFACAAABAAAAAgAAAAUAAABgAgAAAQAAAAIAAAAFAAAAcAIAAAEAAAACAAAABQAAAIACAAABAAAAAgAAAAUAAACQAgAAAQAAAAIAAAAFAAAAoAIAAAEAAAACAAAABQAAALACAAABAAAAAgAAAAUAAADAAgAAAQAAAAIAAAAFAAAA0AIAAAEAAAACAAAABQAAAOACAAABAAAAAgAAAAUAAADwAgAAAQAAAAIAAAAFAAAAAAMAAAEAAAACAAAABQAAABADAAABAAAAAgAAAAUAAAAgAwAAAQAAAAIAAAAFAAAAMAMAAAEAAAACAAAABQAAAEADAAABAAAAAgAAAAUAAABQAwAAAQAAAAIAAAAFAAAAYAMAAAEAAAACAAAABQAAAHADAAABAAAAAgAAAAUAAACAAwAAAQAAAAIAAAAFAAAAkAMAAAEAAAACAAAABQAAAKADAAABAAAAAgAAAAUAAACwAwAAAQAAAAIAAAAFAAAAwAMAAAEAAAACAAAABQAAANADAAABAAAAAgAAAAUAAADgAwAAAQAAAAIAAAAFAAAA8AMAAAEAAAACAAAABQAAAAAEAAABAAAAAgAAAAUAAAAQBAAAAQAAAAIAAAAFAAAAIAQAAAEAAAACAAAABQAAADAEAAABAAAAAgAAAAUAAABABAAAAQAAAAIAAAAFAAAAUAQAAAEAAAACAAAABQAAAGAEAAABAAAAAgAAAAUAAABwBAAAAQAAAAIAAAAFAAAAgAQAAAEAAAACAAAABQAAAJAEAAABAAAAAgAAAAUAAACgBAAAAQAAAAIAAAAFAAAAsAQAAAEAAAACAAAABQAAAMAEAAABAAAAAgAAAAUAAADQBAAAAQAAAAIAAAAFAAAA4AQAAAEAAAAAAAAABAAAAPAEAAAAAAAAAgAAAAUAAADwBAAAAQAAAAIAAAAFAAAAAAUAAAEAAAACAAAABQAAABAFAAABAAAAAgAAAAUAAAAgBQAAAQAAAAIAAAAFAAAAMAUAAAEAAAACAAAABQAAAEAFAAABAAAAAgAAAAUAAABQBQAAAQAAAAIAAAAFAAAAYAUAAAEAAAACAAAABQAAAHAFAAABAAAAAgAAAAUAAACABQAAAQAAAAIAAAAFAAAAkAUAAAEAAAACAAAABQAAAKAFAAABAAAAAgAAAAUAAACwBQAAAQAAAAIAAAAFAAAAwAUAAAEAAAACAAAABQAAANAFAAABAAAAAgAAAAUAAADgBQAAAQAAAAIAAAAFAAAA8AUAAAEAAAACAAAABQAAAAAGAAABAAAAAgAAAAUAAAAQBgAAAQAAAAIAAAAFAAAAIAYAAAEAAAACAAAABQAAADAGAAABAAAAAgAAAAUAAABABgAAAQAAAAIAAAAFAAAAUAYAAAEAAAACAAAABQAAAGAGAAABAAAAAgAAAAUAAABwBgAAAQAAAAIAAAAFAAAAgAYAAAEAAAACAAAABQAAAJAGAAABAAAAAgAAAAUAAACgBgAAAQAAAAIAAAAFAAAAsAYAAAEAAAACAAAABQAAAMAGAAABAAAAAgAAAAUAAADQBgAAAQAAAAIAAAAFAAAA4AYAAAEAAAACAAAABQAAAPAGAAABAAAAAgAAAAUAAAAABwAAAQAAAAIAAAAFAAAAEAcAAAEAAAACAAAABQAAACAHAAABAAAAAgAAAAUAAAAwBwAAAQAAAAIAAAAFAAAAQAcAAAEAAAACAAAABQAAAFAHAAABAAAAAgAAAAUAAABgBwAAAQAAAAIAAAAFAAAAcAcAAAEAAAACAAAABQAAAIAHAAABAAAAAgAAAAUAAACQBwAAAQAAAAIAAAAFAAAAoAcAAAEAAAACAAAABQAAALAHAAABAAAAAgAAAAUAAADABwAAAQAAAAIAAAAFAAAA0AcAAAEAAAACAAAABQAAAOAHAAABAAAAAgAAAAUAAADwBwAAAQAAAAIAAAAFAAAAAAgAAAEAAAACAAAABQAAABAIAAABAAAAAgAAAAUAAAAgCAAAAQAAAAIAAAAFAAAAMAgAAAEAAAACAAAABQAAAEAIAAABAAAAAgAAAAUAAABQCAAAAQAAAAIAAAAFAAAAYAgAAAEAAAAAAAAABQAAAHAIAAAAAAAABAAAAAAAAABwCAAAAQAAAAAAAAAGAAAAgAgAAAAAAAAAAAAABwAAAIAIAAAAAAAAAAAAAAgAAACACAAAAAAAAAAAAAAJAAAAgAgAAAAAAAAEAAAAAAAAAIAIAAABAAAABAAAAAAAAACQCAAAAQAAAAUAAAAGAAAAoAgAAAEAAAAFAAAABgAAADISAAABAAAABQAAAAYAAAAWGAAAAQAAAAQAAAAAAAAACBkAAAEAAAAEAAAAAAAAABgZAAABAAAAAAAAAAoAAAAoGQAAAAAAAAQAAAAAAAAAKBkAAAEAAAAEAAAAAAAAADgZAAABAAAABAAAAAAAAABIGQAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQALAAAAAAAlAAAAAQABAAEACwAAAAAAJgAAAAEAAQABAAsAAAAAACcAAAABAAEAAQALAAAAAAAoAAAAAQABAAEACwAAAAAAKQAAAAEAAQABAAsAAAAAACoAAAABAAEAAQALAAAAAAArAAAAAQABAAEACwAAAAAALAAAAAEAAQABAAsAAAAAAC0AAAABAAEAAQALAAAAAAAuAAAAAQABAAEACwAAAAAALwAAAAEAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAAAQABAAEACwAAAAAANQAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQALAAAAAABVAAAAAQABAAEACwAAAAAAVgAAAAEAAQABAAsAAAAAAFcAAAABAAEAAQALAAAAAABYAAAAAQABAAEACwAAAAAAWQAAAAEAAQABAAsAAAAAAFoAAAABAAEAAQALAAAAAABbAAAAAQABAAEACwAAAAAAXAAAAAEAAQABAAsAAAAAAF0AAAABAAEAAQALAAAAAABeAAAAAQABAAEACwAAAAAAXwAAAAEAAQABAAsAAAAAAGAAAAABAAEAAQALAAAAAABhAAAAAQABAAEACwAAAAAAYgAAAAEAAQABAAsAAAAAAGMAAAABAAEAAQALAAAAAABkAAAAAQABAAEACwAAAAAAZQAAAAEAAQABAAsAAAAAAGYAAAABAAEAAQALAAAAAABnAAAAAQABAAEACwAAAAAAaAAAAAEAAQABAAsAAAAAAGkAAAABAAEAAQALAAAAAABqAAAAAQABAAEACwAAAAAAawAAAAEAAQABAAsAAAAAAGwAAAABAAEAAQALAAAAAABtAAAAAQABAAEACwAAAAAAbgAAAAEAAQABAAsAAAAAAG8AAAABAAEAAQALAAAAAABwAAAAAQABAAEACwAAAAAAcQAAAAEAAQABAAsAAAAAAHIAAAABAAEAAQALAAAAAABzAAAAAQABAAEACwAAAAAAdAAAAAEAAQABAAsAAAAAAHUAAAABAAEAAQALAAAAAAB2AAAAAQABAAEACwAAAAAAdwAAAAEAAQABAAsAAAAAAHgAAAABAAEAAQALAAAAAAB5AAAAAQABAAEACwAAAAAAegAAAAEAAQABAAsAAAAAAHsAAAABAAEAAQALAAAAAAB8AAAAAQABAAEACwAAAAAAfQAAAAEAAQABAAsAAAAAAH4AAAABAAEAAQALAAAAAAB/AAAAAQABAAEACwAAAAAAgAAAAAEAAQABAAsAAAAAAIEAAAABAAEAAQALAAAAAACCAAAAAQABAAEACwAAAAAAgwAAAAEAAQABAAsAAAAAAIQAAAABAAEAAQALAAAAAACFAAAAAQABAAEACwAAAAAAhgAAAAEAAQABABcBAAAHAAAAAAAKAAAAAAAYAQAABwAAAAAACgAAAAAADQAAAAcAAAAAAAoAAAAAAAYAGwEAAAoAAAAAAAoATwAAAIYAAAACAAAAAAAEAAAAOwAAAAIAAAAAAAUAAACHAAAAAgAAAAAABgAAAIgAAAACAAAAAAAHAAAAiQAAAAIAAAAAAAgAAACKAAAAAgAAAAAACQAAAIsAAAACAAAAAAAKAAAAjAAAAAIAAAAAAAsAAACNAAAAAgAAAAAADAAAAI4AAAACAAAAAAANAAAAjwAAAAIAAAAAAA4AAACQAAAAAgAAAAAADwAAAEwAAAACAAAAAAAQAAAAkQAAAAIAAAAAABEAAACSAAAAAgAAAAAAEgAAAJMAAAACAAAAAAATAAAAlAAAAAIAAAAAABQAAACVAAAAAgAAAAAAFQAAAJYAAAACAAAAAAAWAAAAlwAAAAIAAAAAABcAAACYAAAAAgAAAAAAGAAAAJkAAAACAAAAAAAZAAAAmgAAAAIAAAAAABoAAACbAAAAAgAAAAAAGwAAAJwAAAACAAAAAAAcAAAAnQAAAAIAAAAAAB0AAACeAAAAAgAAAAAAHgAAAJ8AAAACAAAAAAAfAAAAoAAAAAIAAAAAACAAAAChAAAAAgAAAAAAIQAAAKIAAAACAAAAAAAiAAAAowAAAAIAAAAAACMAAACkAAAAAgAAAAAAJAAAAKUAAAACAAAAAAAlAAAApgAAAAIAAAAAACYAAACnAAAAAgAAAAAAJwAAAKgAAAACAAAAAAAoAAAAqQAAAAIAAAAAACkAAACqAAAAAgAAAAAAKgAAAKsAAAACAAAAAAArAAAArAAAAAIAAAAAACwAAACtAAAAAgAAAAAALQAAAK4AAAACAAAAAAAuAAAArwAAAAIAAAAAAC8AAACwAAAAAgAAAAAAMAAAALEAAAACAAAAAAAxAAAAsgAAAAIAAAAAADIAAACzAAAAAgAAAAAAMwAAALQAAAACAAAAAAA0AAAAtQAAAAIAAAAAADUAAAC2AAAAAgAAAAAANgAAALcAAAACAAAAAAA3AAAAuAAAAAIAAAAAADgAAAC5AAAAAgAAAAAAOQAAALoAAAACAAAAAAA6AAAAuwAAAAIAAAAAADsAAAC8AAAAAgAAAAAAPAAAAL0AAAACAAAAAAA9AAAAvgAAAAIAAAAAAD4AAAC/AAAAAgAAAAAAPwAAAMAAAAACAAAAAABAAAAAwQAAAAIAAAAAAEEAAADCAAAAAgAAAAAAQgAAAMMAAAACAAAAAABDAAAAxAAAAAIAAAAAAEQAAADFAAAAAgAAAAAARQAAAMYAAAACAAAAAABGAAAAxwAAAAIAAAAAAEcAAADIAAAAAgAAAAAASAAAAMkAAAACAAAAAABJAAAAygAAAAIAAAAAAEoAAADLAAAAAgAAAAAASwAAAMwAAAACAAAAAABMAAAAzQAAAAIAAAAAAE0AAADOAAAAAgAAAAAATgAAAM8AAAACAAAAAABPAAAA0AAAAAIAAAAAAFAAAADRAAAAAgAAAAAAUQAAANIAAAACAAAAAABSAAAABwBPAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAIAAAAAAEQAAAACAAAAAABFAAAAAgAAAAAARgAAAAIAAAAAAEcAAAACAAAAAABIAAAAAgAAAAAASQAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAcAAAAAAAcAAQAAAAIAAwAAAAMAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAQAAAACAAAAAAADAAAAAgADAAAAAwAAAAIAAQAAAFIAAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAoAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAHAEAAAYA0wAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgAiAAAABgDUAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGACMAAAAGANUAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAJAAAAAYA1gAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgAdAQAABgDXAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGAB4BAAAGANgAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAHwEAAAYA2QAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgAgAQAABgDaAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGACEBAAAGANsAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAIgEAAAYA3AAAAAcAAAAAAAEABgAjAQAACgAAAAAACgA4AAAAiwAAAAIAAAAAAFQAAACMAAAAAgAAAAAAVQAAAI0AAAACAAAAAABWAAAAjgAAAAIAAAAAAFcAAACPAAAAAgAAAAAAWAAAAJAAAAACAAAAAABZAAAATAAAAAIAAAAAAFoAAACRAAAAAgAAAAAAWwAAAJIAAAACAAAAAABcAAAAkwAAAAIAAAAAAF0AAACVAAAAAgAAAAAAXgAAAJYAAAACAAAAAABfAAAAlwAAAAIAAAAAAGAAAACZAAAAAgAAAAAAYQAAAJwAAAACAAAAAABiAAAAnQAAAAIAAAAAAGMAAACeAAAAAgAAAAAAZAAAAJ8AAAACAAAAAABlAAAAoAAAAAIAAAAAAGYAAAChAAAAAgAAAAAAZwAAAKIAAAACAAAAAABoAAAAowAAAAIAAAAAAGkAAACkAAAAAgAAAAAAagAAAKUAAAACAAAAAABrAAAAqAAAAAIAAAAAAGwAAACpAAAAAgAAAAAAbQAAAKoAAAACAAAAAABuAAAAqwAAAAIAAAAAAG8AAACsAAAAAgAAAAAAcAAAALEAAAACAAAAAABxAAAAsgAAAAIAAAAAAHIAAACvAAAAAgAAAAAAcwAAALQAAAACAAAAAAB0AAAAtQAAAAIAAAAAAHUAAAC2AAAAAgAAAAAAdgAAALcAAAACAAAAAAB3AAAAuAAAAAIAAAAAAHgAAAC5AAAAAgAAAAAAeQAAALoAAAACAAAAAAB6AAAAuwAAAAIAAAAAAHsAAAC8AAAAAgAAAAAAfAAAAL0AAAACAAAAAAB9AAAAvgAAAAIAAAAAAH4AAADEAAAAAgAAAAAAfwAAAMYAAAACAAAAAACAAAAAxwAAAAIAAAAAAIEAAADIAAAAAgAAAAAAggAAAMkAAAACAAAAAACDAAAAygAAAAIAAAAAAIQAAADLAAAAAgAAAAAAhQAAAIkAAAACAAAAAACGAAAAigAAAAIAAAAAAIcAAADMAAAAAgAAAAAAiAAAAM0AAAACAAAAAACJAAAA4AAAAAIAAAAAAIoAAADhAAAAAgAAAAAAiwAAAAcAOAAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAIAAAAAAGYAAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAABwAAAAAABwABAAAAAgADAAAAPwAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAFMAAAACAAMAAAA/AAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGACQBAAAKAAAAAAAKAAAAAAAHAAAAAAAHAAAAAAAHAAEAAAACAAMAAABhAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAjAAAAAIAAwAAAGEAAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAIAAAAEAAAAAAAAAAAAAgADAAAAYwAAAAcAAgAAAAQAAAAAAAAAAAACAAMAAABjAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAwAAAGMAAAABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAABBAQAABwAAAAAACgAAAAAA", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 1
    $P5003 = $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901746.339"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 27
    $P5003 = $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 82
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_101_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 137
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 83
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_167_1349901746.339" 
    set $P5001["qbuildsub"], $P5003
    .const 'Sub' $P5001 = "cuid_155_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1349901746.339" 
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 139
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_157_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 83
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_157_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_157_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 83
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_157_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_158_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 140
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_158_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_158_1349901746.339"
    nqp_get_sc_object $P5002, "57EE68019641AF08F37A546E9D6EFA3CC1C0694E-1349901746.354", 140
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_158_1349901746.339"
    $P5005 = $P5004."finish_static_lexpad"()
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1349901746.339") :anon :lex :outer("cuid_207_1349901746.339")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1349901746.339" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1349901746.339" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1349901746.339") :load
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .const 'Sub' $P5001 = "cuid_1_1349901746.339" 
    $P5002 = $P5001()
    .return ($P5002) 
.end