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
.sub "" :subid("cuid_1_1346277621.774") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5044 = 'cuid_159_1346277621.774' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_100_1346277621.774' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_157_1346277621.774' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_158_1346277621.774' 
    capture_lex $P5044 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$p6regex", $P103 
    .lex "&MAIN", $P104 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_159_1346277621.774' 
    capture_lex $P5002
    set $P104, $P5002
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
    .const 'Sub' $P5009 = 'cuid_100_1346277621.774' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_157_1346277621.774' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_158_1346277621.774' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 965
    get_hll_global $P5019, "GLOBAL"
    nqp_get_package_through_who $P5018, $P5019, "QRegex"
    nqp_get_package_through_who $P5017, $P5018, "P6Regex"
    get_who $P5016, $P5017
    set $P5015, $P5016["Compiler"]
    unless_null $P5015, fallback2094
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5020
  fallback2094:
    $P5021 = $P5015."new"()
    set $P103, $P5021
.annotate 'line', 966
    $P5022 = $P103."language"("QRegex::P6Regex")
.annotate 'line', 967
    get_hll_global $P5027, "GLOBAL"
    nqp_get_package_through_who $P5026, $P5027, "QRegex"
    nqp_get_package_through_who $P5025, $P5026, "P6Regex"
    get_who $P5024, $P5025
    set $P5023, $P5024["Grammar"]
    unless_null $P5023, fallback2095
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5023, $P5028
  fallback2095:
    $P5029 = $P103."parsegrammar"($P5023)
.annotate 'line', 968
    get_hll_global $P5034, "GLOBAL"
    nqp_get_package_through_who $P5033, $P5034, "QRegex"
    nqp_get_package_through_who $P5032, $P5033, "P6Regex"
    get_who $P5031, $P5032
    set $P5030, $P5031["Actions"]
    unless_null $P5030, fallback2096
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5030, $P5035
  fallback2096:
    $P5036 = $P103."parseactions"($P5030)
    set $P5043, _lex_param_0
    unless _lex_param_0 goto if582_end2098 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5037, "ModuleLoader"
    getinterp $P5039
    set $P5038, $P5039["context"]
    $P5040 = $P5037."set_mainline_module"($P5038)
    .const 'Sub' $P5041 = "cuid_159_1346277621.774" 
    $P5042 = $P5041(_lex_param_0 :flat)
    set $P5043, $P5042
  if582_end2098:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "MAIN" :subid("cuid_159_1346277621.774") :anon :lex :outer("cuid_1_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 970
    .param pmc _lex_param_0 
    .lex "@ARGS", _lex_param_0 
.annotate 'line', 971
    find_lex $P5001, "$p6regex"
    $P5002 = $P5001."command_line"(_lex_param_0, "utf8" :named("encoding"), "ucs4" :named("transcode"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1346277621.774") :anon :lex :outer("cuid_1_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 10
    .const 'Sub' $P5080 = 'cuid_2_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_3_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_5_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_6_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_7_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_8_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_9_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_10_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_11_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_12_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_13_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_14_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_16_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_18_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_19_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_21_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_22_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_23_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_24_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_25_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_29_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_30_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_32_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_33_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_34_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_35_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_36_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_37_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_38_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_39_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_40_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_41_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_42_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_43_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_44_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_45_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_46_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_47_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_48_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_49_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_50_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_51_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_52_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_53_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_54_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_55_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_56_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_57_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_58_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_59_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_60_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_61_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_62_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_63_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_64_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_65_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_66_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_67_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_68_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_69_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_70_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_71_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_72_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_73_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_74_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_75_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_76_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_78_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_80_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_81_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_82_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_84_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_86_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_93_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_95_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_96_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_97_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_98_1346277621.774' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_99_1346277621.774' 
    capture_lex $P5080 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1346277621.774' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1346277621.774' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_5_1346277621.774' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_6_1346277621.774' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_7_1346277621.774' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_8_1346277621.774' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_9_1346277621.774' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_10_1346277621.774' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_11_1346277621.774' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_12_1346277621.774' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_13_1346277621.774' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_14_1346277621.774' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_16_1346277621.774' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_18_1346277621.774' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_19_1346277621.774' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_21_1346277621.774' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_22_1346277621.774' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_23_1346277621.774' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_24_1346277621.774' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_25_1346277621.774' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_29_1346277621.774' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_30_1346277621.774' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_32_1346277621.774' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_33_1346277621.774' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_34_1346277621.774' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_35_1346277621.774' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_36_1346277621.774' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_37_1346277621.774' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_38_1346277621.774' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_39_1346277621.774' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_40_1346277621.774' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_41_1346277621.774' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_42_1346277621.774' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_43_1346277621.774' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_44_1346277621.774' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_45_1346277621.774' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_46_1346277621.774' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_47_1346277621.774' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_48_1346277621.774' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_49_1346277621.774' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_50_1346277621.774' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_51_1346277621.774' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_52_1346277621.774' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_53_1346277621.774' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_54_1346277621.774' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_55_1346277621.774' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_56_1346277621.774' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_57_1346277621.774' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_58_1346277621.774' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_59_1346277621.774' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_60_1346277621.774' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_61_1346277621.774' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_62_1346277621.774' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_63_1346277621.774' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_64_1346277621.774' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_65_1346277621.774' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_66_1346277621.774' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_67_1346277621.774' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_68_1346277621.774' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_69_1346277621.774' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_70_1346277621.774' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_71_1346277621.774' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_72_1346277621.774' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_73_1346277621.774' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_74_1346277621.774' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_75_1346277621.774' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_76_1346277621.774' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_78_1346277621.774' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_80_1346277621.774' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_81_1346277621.774' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_82_1346277621.774' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_84_1346277621.774' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_86_1346277621.774' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_93_1346277621.774' 
    capture_lex $P5074
    .const 'Sub' $P5075 = 'cuid_95_1346277621.774' 
    capture_lex $P5075
    .const 'Sub' $P5076 = 'cuid_96_1346277621.774' 
    capture_lex $P5076
    .const 'Sub' $P5077 = 'cuid_97_1346277621.774' 
    capture_lex $P5077
    .const 'Sub' $P5078 = 'cuid_98_1346277621.774' 
    capture_lex $P5078
    .const 'Sub' $P5079 = 'cuid_99_1346277621.774' 
    capture_lex $P5079
    .return ($P5079) 
.end
.HLL "nqp"
.namespace []
.sub "obs" :subid("cuid_2_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
.sub "ws" :subid("cuid_3_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    rx12_cur."!alt"(rx12_pos, "alt_nfa__1_1346277622.046", $P11)
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
.sub "cuid_3_1346277621.774_caps" :subid("cuid_memo_1_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_3_1346277621.774_nfa" :subid("cuid_memo_2_1346277621.774")
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
.sub "cuid_3_1346277621.774_alt_nfa__1_1346277622.046" :subid("cuid_memo_3_1346277621.774")
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
.sub "normspace" :subid("cuid_5_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 19
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_4_1346277621.774' 
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
    .const 'Sub' $P5001 = 'cuid_4_1346277621.774' 
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
.sub "cuid_5_1346277621.774_caps" :subid("cuid_memo_4_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_5_1346277621.774_nfa" :subid("cuid_memo_5_1346277621.774")
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
.sub "" :subid("cuid_4_1346277621.774") :anon :lex :outer("cuid_5_1346277621.774")
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
    rx20_cur."!alt"(rx20_pos, "alt_nfa__2_1346277622.069", $P11)
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
.sub "cuid_4_1346277621.774_caps" :subid("cuid_memo_6_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_4_1346277621.774_nfa" :subid("cuid_memo_7_1346277621.774")
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
.sub "cuid_4_1346277621.774_alt_nfa__2_1346277622.069" :subid("cuid_memo_8_1346277621.774")
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
.sub "identifier" :subid("cuid_6_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
.sub "cuid_6_1346277621.774_caps" :subid("cuid_memo_9_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_6_1346277621.774_nfa" :subid("cuid_memo_10_1346277621.774")
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
.sub "arg" :subid("cuid_7_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    rx30_cur."!alt"(rx30_pos, "alt_nfa__3_1346277622.114", $P11)
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
.sub "cuid_7_1346277621.774_caps" :subid("cuid_memo_11_1346277621.774")
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
.sub "cuid_7_1346277621.774_nfa" :subid("cuid_memo_12_1346277621.774")
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
.sub "cuid_7_1346277621.774_alt_nfa__3_1346277622.114" :subid("cuid_memo_13_1346277621.774")
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
.sub "arglist" :subid("cuid_8_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
.sub "cuid_8_1346277621.774_caps" :subid("cuid_memo_14_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["arg"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_9_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["%RX"]
    unless_null $P5002, fallback125
    get_hll_global $P5006, "GLOBAL"
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
.sub "cuid_9_1346277621.774_caps" :subid("cuid_memo_15_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1346277621.774_nfa" :subid("cuid_memo_16_1346277621.774")
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
.sub "nibbler" :subid("cuid_10_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_161_1346277621.774' 
    capture_lex $P5014 
    .lex "$OLDRX", $P101 
    .lex "%*RX", $P102 
    .lex utf8:"$\x{a2}", $P103 
    .lex "$/", $P104 
    .lex "self", _lex_param_0 
    .local pmc self 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["%RX"]
    unless_null $P5004, fallback144
    get_hll_global $P5008, "GLOBAL"
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
    .const 'Sub' $P5012 = 'cuid_161_1346277621.774' 
    capture_lex $P5012
    $P5013 = $P5012()
    nqp_rxmark rx54_bstack, rxquantr58_done154, rx54_pos, 0
  rxquantr58_loop153:
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    $P11 = rx54_cur."ws"()
    repr_get_attr_int $I11, $P11, rx54_curclass, "$!pos"
    lt $I11, 0, rx54_fail136
    repr_get_attr_int rx54_pos, $P11, rx54_curclass, "$!pos"
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt60_0157
    nqp_push_label $P11, alt60_1158
    nqp_push_label $P11, alt60_2159
    nqp_push_label $P11, alt60_3160
    nqp_rxmark rx54_bstack, alt60_end156, -1, 0
    rx54_cur."!alt"(rx54_pos, "alt_nfa__4_1346277622.196", $P11)
    goto rx54_fail136
  alt60_0157:
    add $I11, rx54_pos, 2
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 2
    ne $S10, ucs4:"||", rx54_fail136
    add rx54_pos, 2
    goto alt60_end156
  alt60_1158:
    add $I11, rx54_pos, 1
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 1
    ne $S10, ucs4:"|", rx54_fail136
    add rx54_pos, 1
    goto alt60_end156
  alt60_2159:
    add $I11, rx54_pos, 2
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 2
    ne $S10, ucs4:"&&", rx54_fail136
    add rx54_pos, 2
    goto alt60_end156
  alt60_3160:
    add $I11, rx54_pos, 1
    gt $I11, rx54_eos, rx54_fail136
    substr $S10, rx54_tgt, rx54_pos, 1
    ne $S10, ucs4:"&", rx54_fail136
    add rx54_pos, 1
    goto alt60_end156
  alt60_end156:
    nqp_rxcommit rx54_bstack, alt60_end156
    nqp_rxpeek $I19, rx54_bstack, rxquantr58_done154
    inc $I19
    inc $I19
    set rx54_rep, rx54_bstack[$I19]
    nqp_rxcommit rx54_bstack, rxquantr58_done154
    inc rx54_rep
  rxquantr58_done154:
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    $P11 = rx54_cur."termaltseq"()
    repr_get_attr_int $I11, $P11, rx54_curclass, "$!pos"
    lt $I11, 0, rx54_fail136
    nqp_rxmark rx54_bstack, rxsubrule61_pass161, -1, 0
  rxsubrule61_pass161:
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
.sub "cuid_10_1346277621.774_caps" :subid("cuid_memo_17_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["termaltseq"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1346277621.774_nfa" :subid("cuid_memo_18_1346277621.774")
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
.sub "cuid_10_1346277621.774_alt_nfa__4_1346277622.196" :subid("cuid_memo_19_1346277621.774")
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
.sub "" :subid("cuid_161_1346277621.774") :anon :lex :outer("cuid_10_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 42
    .const 'Sub' $P5008 = 'cuid_160_1346277621.774' 
    capture_lex $P5008 
    find_lex $P5004, "$OLDRX"
    set $P5001, $P5004
    iter $P5003, $P5004
    new $P5006, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5006, for_handlers149
    push_eh $P5006
  for_next150:
    unless $P5003, for_done152
    shift $P5007, $P5003
  for_redo151:
    .const 'Sub' $P5005 = 'cuid_160_1346277621.774' 
    capture_lex $P5005
    $P5001 = $P5005($P5007)
    goto for_next150
  for_handlers149:
    .get_results ($P5006)
    pop_upto_eh $P5006
    getattribute $P5006, $P5006, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, for_next150
    eq $P5006, .CONTROL_LOOP_REDO, for_redo151
  for_done152:
    pop_eh 
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1346277621.774") :anon :lex :outer("cuid_161_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_dynamic_lex $P5001, "%*RX"
    unless_null $P5001, fallback146
    get_hll_global $P5004, "GLOBAL"
    get_who $P5003, $P5004
    set $P5002, $P5003["%RX"]
    unless_null $P5002, fallback147
    get_hll_global $P5006, "GLOBAL"
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
.sub "termaltseq" :subid("cuid_11_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx62_restart164
    gt rx62_pos, rx62_eos, rx62_fail165
    repr_get_attr_int $I11, self, rx62_curclass, "$!from"
    ne $I11, -1, rxscan63_done171
    goto rxscan63_scan170
  rxscan63_loop169:
    inc rx62_pos
    gt rx62_pos, rx62_eos, rx62_fail165
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!from", rx62_pos
  rxscan63_scan170:
    nqp_rxmark rx62_bstack, rxscan63_loop169, rx62_pos, 0
  rxscan63_done171:
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."termconjseq"()
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail165
    nqp_rxmark rx62_bstack, rxsubrule64_pass172, -1, 0
  rxsubrule64_pass172:
    rx62_cstack = rx62_cur."!cursor_capture"($P11, "termconjseq")
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
    nqp_rxmark rx62_bstack, rxquantr65_done174, rx62_pos, 0
  rxquantr65_loop173:
    add $I11, rx62_pos, 2
    gt $I11, rx62_eos, rx62_fail165
    substr $S10, rx62_tgt, rx62_pos, 2
    ne $S10, ucs4:"||", rx62_fail165
    add rx62_pos, 2
  alt66_0176:
    nqp_rxmark rx62_bstack, alt66_1178, rx62_pos, 0
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."termconjseq"()
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail165
    nqp_rxmark rx62_bstack, rxsubrule67_pass177, -1, 0
  rxsubrule67_pass177:
    rx62_cstack = rx62_cur."!cursor_capture"($P11, "termconjseq")
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
    goto alt66_end175
  alt66_1178:
    repr_bind_attr_int rx62_cur, rx62_curclass, "$!pos", rx62_pos
    $P11 = rx62_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx62_curclass, "$!pos"
    lt $I11, 0, rx62_fail165
    repr_get_attr_int rx62_pos, $P11, rx62_curclass, "$!pos"
  alt66_end175:
    nqp_rxpeek $I19, rx62_bstack, rxquantr65_done174
    inc $I19
    inc $I19
    set rx62_rep, rx62_bstack[$I19]
    nqp_rxcommit rx62_bstack, rxquantr65_done174
    inc rx62_rep
    nqp_rxmark rx62_bstack, rxquantr65_done174, rx62_pos, rx62_rep
    goto rxquantr65_loop173
  rxquantr65_done174:
    rx62_cur."!cursor_pass"(rx62_pos, "termaltseq", 'backtrack'=>1)
    .return (rx62_cur)
  rx62_restart164:
    repr_get_attr_obj rx62_cstack, rx62_cur, rx62_curclass, "$!cstack"
  rx62_fail165:
    unless rx62_bstack, rx62_done163
    pop $I19, rx62_bstack
    if_null rx62_cstack, rx62_cstack_done168
    unless rx62_cstack, rx62_cstack_done168
    dec $I19
    set $P11, rx62_cstack[$I19]
  rx62_cstack_done168:
    pop rx62_rep, rx62_bstack
    pop rx62_pos, rx62_bstack
    pop $I19, rx62_bstack
    lt rx62_pos, -1, rx62_done163
    lt rx62_pos, 0, rx62_fail165
    eq $I19, 0, rx62_fail165
    nqp_islist $I20, rx62_cstack
    unless $I20, rx62_jump166
    elements $I18, rx62_bstack
    le $I18, 0, rx62_cut167
    dec $I18
    set $I18, rx62_bstack[$I18]
  rx62_cut167:
    assign rx62_cstack, $I18
  rx62_jump166:
    jump $I19
  rx62_done163:
    rx62_cur."!cursor_fail"()
    .return (rx62_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346277621.774_caps" :subid("cuid_memo_20_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termconjseq"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1346277621.774_nfa" :subid("cuid_memo_21_1346277621.774")
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
.sub "termconjseq" :subid("cuid_12_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx69_restart182
    gt rx69_pos, rx69_eos, rx69_fail183
    repr_get_attr_int $I11, self, rx69_curclass, "$!from"
    ne $I11, -1, rxscan70_done189
    goto rxscan70_scan188
  rxscan70_loop187:
    inc rx69_pos
    gt rx69_pos, rx69_eos, rx69_fail183
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!from", rx69_pos
  rxscan70_scan188:
    nqp_rxmark rx69_bstack, rxscan70_loop187, rx69_pos, 0
  rxscan70_done189:
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!pos", rx69_pos
    $P11 = rx69_cur."termalt"()
    repr_get_attr_int $I11, $P11, rx69_curclass, "$!pos"
    lt $I11, 0, rx69_fail183
    nqp_rxmark rx69_bstack, rxsubrule71_pass190, -1, 0
  rxsubrule71_pass190:
    rx69_cstack = rx69_cur."!cursor_capture"($P11, "termalt")
    repr_get_attr_int rx69_pos, $P11, rx69_curclass, "$!pos"
    nqp_rxmark rx69_bstack, rxquantr72_done192, rx69_pos, 0
  rxquantr72_loop191:
    add $I11, rx69_pos, 2
    gt $I11, rx69_eos, rx69_fail183
    substr $S10, rx69_tgt, rx69_pos, 2
    ne $S10, ucs4:"&&", rx69_fail183
    add rx69_pos, 2
  alt73_0194:
    nqp_rxmark rx69_bstack, alt73_1196, rx69_pos, 0
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!pos", rx69_pos
    $P11 = rx69_cur."termalt"()
    repr_get_attr_int $I11, $P11, rx69_curclass, "$!pos"
    lt $I11, 0, rx69_fail183
    nqp_rxmark rx69_bstack, rxsubrule74_pass195, -1, 0
  rxsubrule74_pass195:
    rx69_cstack = rx69_cur."!cursor_capture"($P11, "termalt")
    repr_get_attr_int rx69_pos, $P11, rx69_curclass, "$!pos"
    goto alt73_end193
  alt73_1196:
    repr_bind_attr_int rx69_cur, rx69_curclass, "$!pos", rx69_pos
    $P11 = rx69_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx69_curclass, "$!pos"
    lt $I11, 0, rx69_fail183
    repr_get_attr_int rx69_pos, $P11, rx69_curclass, "$!pos"
  alt73_end193:
    nqp_rxpeek $I19, rx69_bstack, rxquantr72_done192
    inc $I19
    inc $I19
    set rx69_rep, rx69_bstack[$I19]
    nqp_rxcommit rx69_bstack, rxquantr72_done192
    inc rx69_rep
    nqp_rxmark rx69_bstack, rxquantr72_done192, rx69_pos, rx69_rep
    goto rxquantr72_loop191
  rxquantr72_done192:
    rx69_cur."!cursor_pass"(rx69_pos, "termconjseq", 'backtrack'=>1)
    .return (rx69_cur)
  rx69_restart182:
    repr_get_attr_obj rx69_cstack, rx69_cur, rx69_curclass, "$!cstack"
  rx69_fail183:
    unless rx69_bstack, rx69_done181
    pop $I19, rx69_bstack
    if_null rx69_cstack, rx69_cstack_done186
    unless rx69_cstack, rx69_cstack_done186
    dec $I19
    set $P11, rx69_cstack[$I19]
  rx69_cstack_done186:
    pop rx69_rep, rx69_bstack
    pop rx69_pos, rx69_bstack
    pop $I19, rx69_bstack
    lt rx69_pos, -1, rx69_done181
    lt rx69_pos, 0, rx69_fail183
    eq $I19, 0, rx69_fail183
    nqp_islist $I20, rx69_cstack
    unless $I20, rx69_jump184
    elements $I18, rx69_bstack
    le $I18, 0, rx69_cut185
    dec $I18
    set $I18, rx69_bstack[$I18]
  rx69_cut185:
    assign rx69_cstack, $I18
  rx69_jump184:
    jump $I19
  rx69_done181:
    rx69_cur."!cursor_fail"()
    .return (rx69_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1346277621.774_caps" :subid("cuid_memo_22_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termalt"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1346277621.774_nfa" :subid("cuid_memo_23_1346277621.774")
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
.sub "termalt" :subid("cuid_13_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx76_restart200
    gt rx76_pos, rx76_eos, rx76_fail201
    repr_get_attr_int $I11, self, rx76_curclass, "$!from"
    ne $I11, -1, rxscan77_done207
    goto rxscan77_scan206
  rxscan77_loop205:
    inc rx76_pos
    gt rx76_pos, rx76_eos, rx76_fail201
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!from", rx76_pos
  rxscan77_scan206:
    nqp_rxmark rx76_bstack, rxscan77_loop205, rx76_pos, 0
  rxscan77_done207:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."termconj"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail201
    nqp_rxmark rx76_bstack, rxsubrule78_pass208, -1, 0
  rxsubrule78_pass208:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "termconj")
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    nqp_rxmark rx76_bstack, rxquantr79_done210, rx76_pos, 0
  rxquantr79_loop209:
    add $I11, rx76_pos, 1
    gt $I11, rx76_eos, rx76_fail201
    substr $S10, rx76_tgt, rx76_pos, 1
    ne $S10, ucs4:"|", rx76_fail201
    add rx76_pos, 1
    ge rx76_pos, rx76_eos, rx76_fail201
    substr $S11, rx76_tgt, rx76_pos, 1
    index $I11, ucs4:"|", $S11
    ge $I11, 0, rx76_fail201
  alt80_0212:
    nqp_rxmark rx76_bstack, alt80_1214, rx76_pos, 0
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."termconj"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail201
    nqp_rxmark rx76_bstack, rxsubrule81_pass213, -1, 0
  rxsubrule81_pass213:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "termconj")
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    goto alt80_end211
  alt80_1214:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail201
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
  alt80_end211:
    nqp_rxpeek $I19, rx76_bstack, rxquantr79_done210
    inc $I19
    inc $I19
    set rx76_rep, rx76_bstack[$I19]
    nqp_rxcommit rx76_bstack, rxquantr79_done210
    inc rx76_rep
    nqp_rxmark rx76_bstack, rxquantr79_done210, rx76_pos, rx76_rep
    goto rxquantr79_loop209
  rxquantr79_done210:
    rx76_cur."!cursor_pass"(rx76_pos, "termalt", 'backtrack'=>1)
    .return (rx76_cur)
  rx76_restart200:
    repr_get_attr_obj rx76_cstack, rx76_cur, rx76_curclass, "$!cstack"
  rx76_fail201:
    unless rx76_bstack, rx76_done199
    pop $I19, rx76_bstack
    if_null rx76_cstack, rx76_cstack_done204
    unless rx76_cstack, rx76_cstack_done204
    dec $I19
    set $P11, rx76_cstack[$I19]
  rx76_cstack_done204:
    pop rx76_rep, rx76_bstack
    pop rx76_pos, rx76_bstack
    pop $I19, rx76_bstack
    lt rx76_pos, -1, rx76_done199
    lt rx76_pos, 0, rx76_fail201
    eq $I19, 0, rx76_fail201
    nqp_islist $I20, rx76_cstack
    unless $I20, rx76_jump202
    elements $I18, rx76_bstack
    le $I18, 0, rx76_cut203
    dec $I18
    set $I18, rx76_bstack[$I18]
  rx76_cut203:
    assign rx76_cstack, $I18
  rx76_jump202:
    jump $I19
  rx76_done199:
    rx76_cur."!cursor_fail"()
    .return (rx76_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1346277621.774_caps" :subid("cuid_memo_24_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termconj"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1346277621.774_nfa" :subid("cuid_memo_25_1346277621.774")
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
.sub "termconj" :subid("cuid_14_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx83_restart218
    gt rx83_pos, rx83_eos, rx83_fail219
    repr_get_attr_int $I11, self, rx83_curclass, "$!from"
    ne $I11, -1, rxscan84_done225
    goto rxscan84_scan224
  rxscan84_loop223:
    inc rx83_pos
    gt rx83_pos, rx83_eos, rx83_fail219
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!from", rx83_pos
  rxscan84_scan224:
    nqp_rxmark rx83_bstack, rxscan84_loop223, rx83_pos, 0
  rxscan84_done225:
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."termish"()
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail219
    nqp_rxmark rx83_bstack, rxsubrule85_pass226, -1, 0
  rxsubrule85_pass226:
    rx83_cstack = rx83_cur."!cursor_capture"($P11, "termish")
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
    nqp_rxmark rx83_bstack, rxquantr86_done228, rx83_pos, 0
  rxquantr86_loop227:
    add $I11, rx83_pos, 1
    gt $I11, rx83_eos, rx83_fail219
    substr $S10, rx83_tgt, rx83_pos, 1
    ne $S10, ucs4:"&", rx83_fail219
    add rx83_pos, 1
    ge rx83_pos, rx83_eos, rx83_fail219
    substr $S11, rx83_tgt, rx83_pos, 1
    index $I11, ucs4:"&", $S11
    ge $I11, 0, rx83_fail219
  alt87_0230:
    nqp_rxmark rx83_bstack, alt87_1232, rx83_pos, 0
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."termish"()
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail219
    nqp_rxmark rx83_bstack, rxsubrule88_pass231, -1, 0
  rxsubrule88_pass231:
    rx83_cstack = rx83_cur."!cursor_capture"($P11, "termish")
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
    goto alt87_end229
  alt87_1232:
    repr_bind_attr_int rx83_cur, rx83_curclass, "$!pos", rx83_pos
    $P11 = rx83_cur."panic"("Null pattern not allowed")
    repr_get_attr_int $I11, $P11, rx83_curclass, "$!pos"
    lt $I11, 0, rx83_fail219
    repr_get_attr_int rx83_pos, $P11, rx83_curclass, "$!pos"
  alt87_end229:
    nqp_rxpeek $I19, rx83_bstack, rxquantr86_done228
    inc $I19
    inc $I19
    set rx83_rep, rx83_bstack[$I19]
    nqp_rxcommit rx83_bstack, rxquantr86_done228
    inc rx83_rep
    nqp_rxmark rx83_bstack, rxquantr86_done228, rx83_pos, rx83_rep
    goto rxquantr86_loop227
  rxquantr86_done228:
    rx83_cur."!cursor_pass"(rx83_pos, "termconj", 'backtrack'=>1)
    .return (rx83_cur)
  rx83_restart218:
    repr_get_attr_obj rx83_cstack, rx83_cur, rx83_curclass, "$!cstack"
  rx83_fail219:
    unless rx83_bstack, rx83_done217
    pop $I19, rx83_bstack
    if_null rx83_cstack, rx83_cstack_done222
    unless rx83_cstack, rx83_cstack_done222
    dec $I19
    set $P11, rx83_cstack[$I19]
  rx83_cstack_done222:
    pop rx83_rep, rx83_bstack
    pop rx83_pos, rx83_bstack
    pop $I19, rx83_bstack
    lt rx83_pos, -1, rx83_done217
    lt rx83_pos, 0, rx83_fail219
    eq $I19, 0, rx83_fail219
    nqp_islist $I20, rx83_cstack
    unless $I20, rx83_jump220
    elements $I18, rx83_bstack
    le $I18, 0, rx83_cut221
    dec $I18
    set $I18, rx83_bstack[$I18]
  rx83_cut221:
    assign rx83_cstack, $I18
  rx83_jump220:
    jump $I19
  rx83_done217:
    rx83_cur."!cursor_fail"()
    .return (rx83_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1346277621.774_caps" :subid("cuid_memo_26_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termish"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1346277621.774_nfa" :subid("cuid_memo_27_1346277621.774")
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
.sub "termish" :subid("cuid_16_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_15_1346277621.774' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_162_1346277621.774' 
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
    eq $I19, 1, rx90_restart236
    gt rx90_pos, rx90_eos, rx90_fail237
    repr_get_attr_int $I11, self, rx90_curclass, "$!from"
    ne $I11, -1, rxscan91_done243
    goto rxscan91_scan242
  rxscan91_loop241:
    inc rx90_pos
    gt rx90_pos, rx90_eos, rx90_fail237
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!from", rx90_pos
  rxscan91_scan242:
    nqp_rxmark rx90_bstack, rxscan91_loop241, rx90_pos, 0
  rxscan91_done243:
  alt92_0245:
    nqp_rxmark rx90_bstack, alt92_1250, rx90_pos, 0
    nqp_rxmark rx90_bstack, rxquantr93_done247, -1, 0
  rxquantr93_loop246:
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    $P11 = rx90_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail237
    goto rxsubrule94_pass248
  rxsubrule94_back249:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail237
  rxsubrule94_pass248:
    rx90_cstack = rx90_cur."!cursor_capture"($P11, "noun")
    set_addr $I11, rxsubrule94_back249
    push rx90_bstack, $I11
    push rx90_bstack, 0
    push rx90_bstack, rx90_pos
    elements $I11, rx90_cstack
    push rx90_bstack, $I11
    repr_get_attr_int rx90_pos, $P11, rx90_curclass, "$!pos"
    nqp_rxpeek $I19, rx90_bstack, rxquantr93_done247
    inc $I19
    inc $I19
    set rx90_rep, rx90_bstack[$I19]
    nqp_rxcommit rx90_bstack, rxquantr93_done247
    inc rx90_rep
    nqp_rxmark rx90_bstack, rxquantr93_done247, rx90_pos, rx90_rep
    goto rxquantr93_loop246
  rxquantr93_done247:
    goto alt92_end244
  alt92_1250:
    .const 'Sub' $P5001 = 'cuid_15_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    $P11 = rx90_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx90_curclass, "$!pos"
    lt $I11, 0, rx90_fail237
    nqp_rxmark rx90_bstack, rxsubrule97_pass261, -1, 0
  rxsubrule97_pass261:
    rx90_cstack = rx90_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx90_pos, $P11, rx90_curclass, "$!pos"
    repr_bind_attr_int rx90_cur, rx90_curclass, "$!pos", rx90_pos
    store_lex unicode:"$\x{a2}", rx90_cur
    $P5002 = $P101."MATCH"()
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_162_1346277621.774' 
    capture_lex $P5003
    $P5004 = $P5003()
  alt92_end244:
    rx90_cur."!cursor_pass"(rx90_pos, "termish", 'backtrack'=>1)
    .return (rx90_cur)
  rx90_restart236:
    repr_get_attr_obj rx90_cstack, rx90_cur, rx90_curclass, "$!cstack"
  rx90_fail237:
    unless rx90_bstack, rx90_done235
    pop $I19, rx90_bstack
    if_null rx90_cstack, rx90_cstack_done240
    unless rx90_cstack, rx90_cstack_done240
    dec $I19
    set $P11, rx90_cstack[$I19]
  rx90_cstack_done240:
    pop rx90_rep, rx90_bstack
    pop rx90_pos, rx90_bstack
    pop $I19, rx90_bstack
    lt rx90_pos, -1, rx90_done235
    lt rx90_pos, 0, rx90_fail237
    eq $I19, 0, rx90_fail237
    nqp_islist $I20, rx90_cstack
    unless $I20, rx90_jump238
    elements $I18, rx90_bstack
    le $I18, 0, rx90_cut239
    dec $I18
    set $I18, rx90_bstack[$I18]
  rx90_cut239:
    assign rx90_cstack, $I18
  rx90_jump238:
    jump $I19
  rx90_done235:
    rx90_cur."!cursor_fail"()
    .return (rx90_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_16_1346277621.774_caps" :subid("cuid_memo_28_1346277621.774")
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
.sub "" :subid("cuid_15_1346277621.774") :anon :lex :outer("cuid_16_1346277621.774")
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
    eq $I19, 1, rx95_restart253
    gt rx95_pos, rx95_eos, rx95_fail254
    repr_get_attr_int $I11, self, rx95_curclass, "$!from"
    ne $I11, -1, rxscan96_done260
    goto rxscan96_scan259
  rxscan96_loop258:
    inc rx95_pos
    gt rx95_pos, rx95_eos, rx95_fail254
    repr_bind_attr_int rx95_cur, rx95_curclass, "$!from", rx95_pos
  rxscan96_scan259:
    nqp_rxmark rx95_bstack, rxscan96_loop258, rx95_pos, 0
  rxscan96_done260:
    ge rx95_pos, rx95_eos, rx95_fail254
    is_cclass $I11, .CCLASS_WORD, rx95_tgt, rx95_pos
    if $I11, rx95_fail254
    add rx95_pos, 1
    rx95_cur."!cursor_pass"(rx95_pos, 'backtrack'=>1)
    .return (rx95_cur)
  rx95_restart253:
    repr_get_attr_obj rx95_cstack, rx95_cur, rx95_curclass, "$!cstack"
  rx95_fail254:
    unless rx95_bstack, rx95_done252
    pop $I19, rx95_bstack
    if_null rx95_cstack, rx95_cstack_done257
    unless rx95_cstack, rx95_cstack_done257
    dec $I19
    set $P11, rx95_cstack[$I19]
  rx95_cstack_done257:
    pop rx95_rep, rx95_bstack
    pop rx95_pos, rx95_bstack
    pop $I19, rx95_bstack
    lt rx95_pos, -1, rx95_done252
    lt rx95_pos, 0, rx95_fail254
    eq $I19, 0, rx95_fail254
    nqp_islist $I20, rx95_cstack
    unless $I20, rx95_jump255
    elements $I18, rx95_bstack
    le $I18, 0, rx95_cut256
    dec $I18
    set $I18, rx95_bstack[$I18]
  rx95_cut256:
    assign rx95_cstack, $I18
  rx95_jump255:
    jump $I19
  rx95_done252:
    rx95_cur."!cursor_fail"()
    .return (rx95_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_15_1346277621.774_caps" :subid("cuid_memo_29_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_15_1346277621.774_nfa" :subid("cuid_memo_30_1346277621.774")
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
.sub "" :subid("cuid_162_1346277621.774") :anon :lex :outer("cuid_16_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 71
    .lex "$char", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    set $P5002, $P5003[0]
    unless_null $P5002, fallback262
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback262:
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
.sub "quantified_atom" :subid("cuid_18_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 77
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_17_1346277621.774' 
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
    eq $I19, 1, rx98_restart265
    gt rx98_pos, rx98_eos, rx98_fail266
    repr_get_attr_int $I11, self, rx98_curclass, "$!from"
    ne $I11, -1, rxscan99_done272
    goto rxscan99_scan271
  rxscan99_loop270:
    inc rx98_pos
    gt rx98_pos, rx98_eos, rx98_fail266
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!from", rx98_pos
  rxscan99_scan271:
    nqp_rxmark rx98_bstack, rxscan99_loop270, rx98_pos, 0
  rxscan99_done272:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."atom"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail266
    nqp_rxmark rx98_bstack, rxsubrule100_pass273, -1, 0
  rxsubrule100_pass273:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "atom")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    nqp_rxmark rx98_bstack, rxquantr101_done275, rx98_pos, 0
  rxquantr101_loop274:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."ws"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail266
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt103_0278
    nqp_push_label $P11, alt103_1280
    nqp_rxmark rx98_bstack, alt103_end277, -1, 0
    rx98_cur."!alt"(rx98_pos, "alt_nfa__5_1346277622.418", $P11)
    goto rx98_fail266
  alt103_0278:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."quantifier"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail266
    nqp_rxmark rx98_bstack, rxsubrule104_pass279, -1, 0
  rxsubrule104_pass279:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "quantifier")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    goto alt103_end277
  alt103_1280:
    .const 'Sub' $P5001 = 'cuid_17_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail266
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail266
    nqp_rxmark rx98_bstack, rxsubrule107_pass291, -1, 0
  rxsubrule107_pass291:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."alpha"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    ge $I11, 0, rx98_fail266
    goto alt103_end277
  alt103_end277:
    nqp_rxcommit rx98_bstack, alt103_end277
    nqp_rxmark rx98_bstack, rxquantr108_done293, rx98_pos, 0
  rxquantr108_loop292:
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."ws"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail266
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    repr_bind_attr_int rx98_cur, rx98_curclass, "$!pos", rx98_pos
    $P11 = rx98_cur."separator"()
    repr_get_attr_int $I11, $P11, rx98_curclass, "$!pos"
    lt $I11, 0, rx98_fail266
    nqp_rxmark rx98_bstack, rxsubrule110_pass295, -1, 0
  rxsubrule110_pass295:
    rx98_cstack = rx98_cur."!cursor_capture"($P11, "separator")
    repr_get_attr_int rx98_pos, $P11, rx98_curclass, "$!pos"
    nqp_rxpeek $I19, rx98_bstack, rxquantr108_done293
    inc $I19
    inc $I19
    set rx98_rep, rx98_bstack[$I19]
    nqp_rxcommit rx98_bstack, rxquantr108_done293
    inc rx98_rep
  rxquantr108_done293:
    nqp_rxpeek $I19, rx98_bstack, rxquantr101_done275
    inc $I19
    inc $I19
    set rx98_rep, rx98_bstack[$I19]
    nqp_rxcommit rx98_bstack, rxquantr101_done275
    inc rx98_rep
  rxquantr101_done275:
    rx98_cur."!cursor_pass"(rx98_pos, "quantified_atom", 'backtrack'=>1)
    .return (rx98_cur)
  rx98_restart265:
    repr_get_attr_obj rx98_cstack, rx98_cur, rx98_curclass, "$!cstack"
  rx98_fail266:
    unless rx98_bstack, rx98_done264
    pop $I19, rx98_bstack
    if_null rx98_cstack, rx98_cstack_done269
    unless rx98_cstack, rx98_cstack_done269
    dec $I19
    set $P11, rx98_cstack[$I19]
  rx98_cstack_done269:
    pop rx98_rep, rx98_bstack
    pop rx98_pos, rx98_bstack
    pop $I19, rx98_bstack
    lt rx98_pos, -1, rx98_done264
    lt rx98_pos, 0, rx98_fail266
    eq $I19, 0, rx98_fail266
    nqp_islist $I20, rx98_cstack
    unless $I20, rx98_jump267
    elements $I18, rx98_bstack
    le $I18, 0, rx98_cut268
    dec $I18
    set $I18, rx98_bstack[$I18]
  rx98_cut268:
    assign rx98_cstack, $I18
  rx98_jump267:
    jump $I19
  rx98_done264:
    rx98_cur."!cursor_fail"()
    .return (rx98_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_18_1346277621.774_caps" :subid("cuid_memo_31_1346277621.774")
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
.sub "cuid_18_1346277621.774_nfa" :subid("cuid_memo_32_1346277621.774")
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
.sub "cuid_18_1346277621.774_alt_nfa__5_1346277622.418" :subid("cuid_memo_33_1346277621.774")
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
.sub "" :subid("cuid_17_1346277621.774") :anon :lex :outer("cuid_18_1346277621.774")
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
    eq $I19, 1, rx105_restart283
    gt rx105_pos, rx105_eos, rx105_fail284
    repr_get_attr_int $I11, self, rx105_curclass, "$!from"
    ne $I11, -1, rxscan106_done290
    goto rxscan106_scan289
  rxscan106_loop288:
    inc rx105_pos
    gt rx105_pos, rx105_eos, rx105_fail284
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!from", rx105_pos
  rxscan106_scan289:
    nqp_rxmark rx105_bstack, rxscan106_loop288, rx105_pos, 0
  rxscan106_done290:
    add $I11, rx105_pos, 1
    gt $I11, rx105_eos, rx105_fail284
    substr $S10, rx105_tgt, rx105_pos, 1
    ne $S10, ucs4:":", rx105_fail284
    add rx105_pos, 1
    rx105_cur."!cursor_pass"(rx105_pos, 'backtrack'=>1)
    .return (rx105_cur)
  rx105_restart283:
    repr_get_attr_obj rx105_cstack, rx105_cur, rx105_curclass, "$!cstack"
  rx105_fail284:
    unless rx105_bstack, rx105_done282
    pop $I19, rx105_bstack
    if_null rx105_cstack, rx105_cstack_done287
    unless rx105_cstack, rx105_cstack_done287
    dec $I19
    set $P11, rx105_cstack[$I19]
  rx105_cstack_done287:
    pop rx105_rep, rx105_bstack
    pop rx105_pos, rx105_bstack
    pop $I19, rx105_bstack
    lt rx105_pos, -1, rx105_done282
    lt rx105_pos, 0, rx105_fail284
    eq $I19, 0, rx105_fail284
    nqp_islist $I20, rx105_cstack
    unless $I20, rx105_jump285
    elements $I18, rx105_bstack
    le $I18, 0, rx105_cut286
    dec $I18
    set $I18, rx105_bstack[$I18]
  rx105_cut286:
    assign rx105_cstack, $I18
  rx105_jump285:
    jump $I19
  rx105_done282:
    rx105_cur."!cursor_fail"()
    .return (rx105_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1346277621.774_caps" :subid("cuid_memo_34_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1346277621.774_nfa" :subid("cuid_memo_35_1346277621.774")
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
.sub "separator" :subid("cuid_19_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx111_restart298
    gt rx111_pos, rx111_eos, rx111_fail299
    repr_get_attr_int $I11, self, rx111_curclass, "$!from"
    ne $I11, -1, rxscan112_done305
    goto rxscan112_scan304
  rxscan112_loop303:
    inc rx111_pos
    gt rx111_pos, rx111_eos, rx111_fail299
    repr_bind_attr_int rx111_cur, rx111_curclass, "$!from", rx111_pos
  rxscan112_scan304:
    nqp_rxmark rx111_bstack, rxscan112_loop303, rx111_pos, 0
  rxscan112_done305:
    nqp_rxmark rx111_bstack, rxcap113_fail307, rx111_pos, 0
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail299
    substr $S10, rx111_tgt, rx111_pos, 1
    ne $S10, ucs4:"%", rx111_fail299
    add rx111_pos, 1
    nqp_rxmark rx111_bstack, rxquantr114_done309, rx111_pos, 0
  rxquantr114_loop308:
    add $I11, rx111_pos, 1
    gt $I11, rx111_eos, rx111_fail299
    substr $S10, rx111_tgt, rx111_pos, 1
    ne $S10, ucs4:"%", rx111_fail299
    add rx111_pos, 1
    nqp_rxpeek $I19, rx111_bstack, rxquantr114_done309
    inc $I19
    inc $I19
    set rx111_rep, rx111_bstack[$I19]
    nqp_rxcommit rx111_bstack, rxquantr114_done309
    inc rx111_rep
  rxquantr114_done309:
    nqp_rxpeek $I19, rx111_bstack, rxcap113_fail307
    inc $I19
    set $I11, rx111_bstack[$I19]
    $P11 = rx111_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx111_pos)
    rx111_cstack = rx111_cur."!cursor_capture"($P11, "septype")
    goto rxcap113_done306
  rxcap113_fail307:
    goto rx111_fail299
  rxcap113_done306:
    nqp_rxmark rx111_bstack, rxquantr115_done311, rx111_pos, 0
  rxquantr115_loop310:
    repr_bind_attr_int rx111_cur, rx111_curclass, "$!pos", rx111_pos
    $P11 = rx111_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx111_curclass, "$!pos"
    lt $I11, 0, rx111_fail299
    goto rxsubrule116_pass312
  rxsubrule116_back313:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx111_curclass, "$!pos"
    lt $I11, 0, rx111_fail299
  rxsubrule116_pass312:
    rx111_cstack = rx111_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule116_back313
    push rx111_bstack, $I11
    push rx111_bstack, 0
    push rx111_bstack, rx111_pos
    elements $I11, rx111_cstack
    push rx111_bstack, $I11
    repr_get_attr_int rx111_pos, $P11, rx111_curclass, "$!pos"
    nqp_rxpeek $I19, rx111_bstack, rxquantr115_done311
    inc $I19
    inc $I19
    set rx111_rep, rx111_bstack[$I19]
    nqp_rxcommit rx111_bstack, rxquantr115_done311
    inc rx111_rep
  rxquantr115_done311:
    repr_bind_attr_int rx111_cur, rx111_curclass, "$!pos", rx111_pos
    $P11 = rx111_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx111_curclass, "$!pos"
    lt $I11, 0, rx111_fail299
    nqp_rxmark rx111_bstack, rxsubrule117_pass314, -1, 0
  rxsubrule117_pass314:
    rx111_cstack = rx111_cur."!cursor_capture"($P11, "quantified_atom")
    repr_get_attr_int rx111_pos, $P11, rx111_curclass, "$!pos"
    rx111_cur."!cursor_pass"(rx111_pos, "separator", 'backtrack'=>1)
    .return (rx111_cur)
  rx111_restart298:
    repr_get_attr_obj rx111_cstack, rx111_cur, rx111_curclass, "$!cstack"
  rx111_fail299:
    unless rx111_bstack, rx111_done297
    pop $I19, rx111_bstack
    if_null rx111_cstack, rx111_cstack_done302
    unless rx111_cstack, rx111_cstack_done302
    dec $I19
    set $P11, rx111_cstack[$I19]
  rx111_cstack_done302:
    pop rx111_rep, rx111_bstack
    pop rx111_pos, rx111_bstack
    pop $I19, rx111_bstack
    lt rx111_pos, -1, rx111_done297
    lt rx111_pos, 0, rx111_fail299
    eq $I19, 0, rx111_fail299
    nqp_islist $I20, rx111_cstack
    unless $I20, rx111_jump300
    elements $I18, rx111_bstack
    le $I18, 0, rx111_cut301
    dec $I18
    set $I18, rx111_bstack[$I18]
  rx111_cut301:
    assign rx111_cstack, $I18
  rx111_jump300:
    jump $I19
  rx111_done297:
    rx111_cur."!cursor_fail"()
    .return (rx111_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_19_1346277621.774_caps" :subid("cuid_memo_36_1346277621.774")
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
.sub "cuid_19_1346277621.774_nfa" :subid("cuid_memo_37_1346277621.774")
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
.sub "atom" :subid("cuid_21_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_20_1346277621.774' 
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
    eq $I19, 1, rx118_restart317
    gt rx118_pos, rx118_eos, rx118_fail318
    repr_get_attr_int $I11, self, rx118_curclass, "$!from"
    ne $I11, -1, rxscan119_done324
    goto rxscan119_scan323
  rxscan119_loop322:
    inc rx118_pos
    gt rx118_pos, rx118_eos, rx118_fail318
    repr_bind_attr_int rx118_cur, rx118_curclass, "$!from", rx118_pos
  rxscan119_scan323:
    nqp_rxmark rx118_bstack, rxscan119_loop322, rx118_pos, 0
  rxscan119_done324:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt120_0326
    nqp_push_label $P11, alt120_1341
    nqp_rxmark rx118_bstack, alt120_end325, -1, 0
    rx118_cur."!alt"(rx118_pos, "alt_nfa__6_1346277622.454", $P11)
    goto rx118_fail318
  alt120_0326:
    ge rx118_pos, rx118_eos, rx118_fail318
    is_cclass $I11, .CCLASS_WORD, rx118_tgt, rx118_pos
    unless $I11, rx118_fail318
    add rx118_pos, 1
    nqp_rxmark rx118_bstack, rxquantr121_done328, rx118_pos, 0
  rxquantr121_loop327:
  rxquantg122_loop329:
    ge rx118_pos, rx118_eos, rx118_fail318
    is_cclass $I11, .CCLASS_WORD, rx118_tgt, rx118_pos
    unless $I11, rx118_fail318
    add rx118_pos, 1
    nqp_rxmark rx118_bstack, rxquantg122_done330, rx118_pos, rx118_rep
    goto rxquantg122_loop329
  rxquantg122_done330:
    .const 'Sub' $P5001 = 'cuid_20_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx118_cur, rx118_curclass, "$!pos", rx118_pos
    $P11 = rx118_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx118_curclass, "$!pos"
    lt $I11, 0, rx118_fail318
    nqp_rxpeek $I19, rx118_bstack, rxquantr121_done328
    inc $I19
    inc $I19
    set rx118_rep, rx118_bstack[$I19]
    nqp_rxcommit rx118_bstack, rxquantr121_done328
    inc rx118_rep
  rxquantr121_done328:
    goto alt120_end325
  alt120_1341:
    repr_bind_attr_int rx118_cur, rx118_curclass, "$!pos", rx118_pos
    $P11 = rx118_cur."metachar"()
    repr_get_attr_int $I11, $P11, rx118_curclass, "$!pos"
    lt $I11, 0, rx118_fail318
    nqp_rxmark rx118_bstack, rxsubrule125_pass342, -1, 0
  rxsubrule125_pass342:
    rx118_cstack = rx118_cur."!cursor_capture"($P11, "metachar")
    repr_get_attr_int rx118_pos, $P11, rx118_curclass, "$!pos"
    goto alt120_end325
  alt120_end325:
    nqp_rxcommit rx118_bstack, alt120_end325
    rx118_cur."!cursor_pass"(rx118_pos, "atom", 'backtrack'=>1)
    .return (rx118_cur)
  rx118_restart317:
    repr_get_attr_obj rx118_cstack, rx118_cur, rx118_curclass, "$!cstack"
  rx118_fail318:
    unless rx118_bstack, rx118_done316
    pop $I19, rx118_bstack
    if_null rx118_cstack, rx118_cstack_done321
    unless rx118_cstack, rx118_cstack_done321
    dec $I19
    set $P11, rx118_cstack[$I19]
  rx118_cstack_done321:
    pop rx118_rep, rx118_bstack
    pop rx118_pos, rx118_bstack
    pop $I19, rx118_bstack
    lt rx118_pos, -1, rx118_done316
    lt rx118_pos, 0, rx118_fail318
    eq $I19, 0, rx118_fail318
    nqp_islist $I20, rx118_cstack
    unless $I20, rx118_jump319
    elements $I18, rx118_bstack
    le $I18, 0, rx118_cut320
    dec $I18
    set $I18, rx118_bstack[$I18]
  rx118_cut320:
    assign rx118_cstack, $I18
  rx118_jump319:
    jump $I19
  rx118_done316:
    rx118_cur."!cursor_fail"()
    .return (rx118_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1346277621.774_caps" :subid("cuid_memo_38_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["metachar"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1346277621.774_nfa" :subid("cuid_memo_39_1346277621.774")
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
.sub "cuid_21_1346277621.774_alt_nfa__6_1346277622.454" :subid("cuid_memo_40_1346277621.774")
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
.sub "" :subid("cuid_20_1346277621.774") :anon :lex :outer("cuid_21_1346277621.774")
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
    eq $I19, 1, rx123_restart333
    gt rx123_pos, rx123_eos, rx123_fail334
    repr_get_attr_int $I11, self, rx123_curclass, "$!from"
    ne $I11, -1, rxscan124_done340
    goto rxscan124_scan339
  rxscan124_loop338:
    inc rx123_pos
    gt rx123_pos, rx123_eos, rx123_fail334
    repr_bind_attr_int rx123_cur, rx123_curclass, "$!from", rx123_pos
  rxscan124_scan339:
    nqp_rxmark rx123_bstack, rxscan124_loop338, rx123_pos, 0
  rxscan124_done340:
    ge rx123_pos, rx123_eos, rx123_fail334
    is_cclass $I11, .CCLASS_WORD, rx123_tgt, rx123_pos
    unless $I11, rx123_fail334
    add rx123_pos, 1
    rx123_cur."!cursor_pass"(rx123_pos, 'backtrack'=>1)
    .return (rx123_cur)
  rx123_restart333:
    repr_get_attr_obj rx123_cstack, rx123_cur, rx123_curclass, "$!cstack"
  rx123_fail334:
    unless rx123_bstack, rx123_done332
    pop $I19, rx123_bstack
    if_null rx123_cstack, rx123_cstack_done337
    unless rx123_cstack, rx123_cstack_done337
    dec $I19
    set $P11, rx123_cstack[$I19]
  rx123_cstack_done337:
    pop rx123_rep, rx123_bstack
    pop rx123_pos, rx123_bstack
    pop $I19, rx123_bstack
    lt rx123_pos, -1, rx123_done332
    lt rx123_pos, 0, rx123_fail334
    eq $I19, 0, rx123_fail334
    nqp_islist $I20, rx123_cstack
    unless $I20, rx123_jump335
    elements $I18, rx123_bstack
    le $I18, 0, rx123_cut336
    dec $I18
    set $I18, rx123_bstack[$I18]
  rx123_cut336:
    assign rx123_cstack, $I18
  rx123_jump335:
    jump $I19
  rx123_done332:
    rx123_cur."!cursor_fail"()
    .return (rx123_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_20_1346277621.774_caps" :subid("cuid_memo_41_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_20_1346277621.774_nfa" :subid("cuid_memo_42_1346277621.774")
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
.sub "quantifier" :subid("cuid_22_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 97
    .param pmc self 
    $P5001 = self."!protoregex"("quantifier")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<*>" :subid("cuid_23_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx126_restart345
    gt rx126_pos, rx126_eos, rx126_fail346
    repr_get_attr_int $I11, self, rx126_curclass, "$!from"
    ne $I11, -1, rxscan127_done352
    goto rxscan127_scan351
  rxscan127_loop350:
    inc rx126_pos
    gt rx126_pos, rx126_eos, rx126_fail346
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!from", rx126_pos
  rxscan127_scan351:
    nqp_rxmark rx126_bstack, rxscan127_loop350, rx126_pos, 0
  rxscan127_done352:
    nqp_rxmark rx126_bstack, rxcap128_fail354, rx126_pos, 0
    add $I11, rx126_pos, 1
    gt $I11, rx126_eos, rx126_fail346
    substr $S10, rx126_tgt, rx126_pos, 1
    ne $S10, ucs4:"*", rx126_fail346
    add rx126_pos, 1
    nqp_rxpeek $I19, rx126_bstack, rxcap128_fail354
    inc $I19
    set $I11, rx126_bstack[$I19]
    $P11 = rx126_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx126_pos)
    rx126_cstack = rx126_cur."!cursor_capture"($P11, "sym")
    goto rxcap128_done353
  rxcap128_fail354:
    goto rx126_fail346
  rxcap128_done353:
    repr_bind_attr_int rx126_cur, rx126_curclass, "$!pos", rx126_pos
    $P11 = rx126_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx126_curclass, "$!pos"
    lt $I11, 0, rx126_fail346
    nqp_rxmark rx126_bstack, rxsubrule129_pass355, -1, 0
  rxsubrule129_pass355:
    rx126_cstack = rx126_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx126_pos, $P11, rx126_curclass, "$!pos"
    rx126_cur."!cursor_pass"(rx126_pos, "quantifier:sym<*>", 'backtrack'=>1)
    .return (rx126_cur)
  rx126_restart345:
    repr_get_attr_obj rx126_cstack, rx126_cur, rx126_curclass, "$!cstack"
  rx126_fail346:
    unless rx126_bstack, rx126_done344
    pop $I19, rx126_bstack
    if_null rx126_cstack, rx126_cstack_done349
    unless rx126_cstack, rx126_cstack_done349
    dec $I19
    set $P11, rx126_cstack[$I19]
  rx126_cstack_done349:
    pop rx126_rep, rx126_bstack
    pop rx126_pos, rx126_bstack
    pop $I19, rx126_bstack
    lt rx126_pos, -1, rx126_done344
    lt rx126_pos, 0, rx126_fail346
    eq $I19, 0, rx126_fail346
    nqp_islist $I20, rx126_cstack
    unless $I20, rx126_jump347
    elements $I18, rx126_bstack
    le $I18, 0, rx126_cut348
    dec $I18
    set $I18, rx126_bstack[$I18]
  rx126_cut348:
    assign rx126_cstack, $I18
  rx126_jump347:
    jump $I19
  rx126_done344:
    rx126_cur."!cursor_fail"()
    .return (rx126_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_23_1346277621.774_caps" :subid("cuid_memo_43_1346277621.774")
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
.sub "cuid_23_1346277621.774_nfa" :subid("cuid_memo_44_1346277621.774")
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
.sub "quantifier:sym<+>" :subid("cuid_24_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx130_restart358
    gt rx130_pos, rx130_eos, rx130_fail359
    repr_get_attr_int $I11, self, rx130_curclass, "$!from"
    ne $I11, -1, rxscan131_done365
    goto rxscan131_scan364
  rxscan131_loop363:
    inc rx130_pos
    gt rx130_pos, rx130_eos, rx130_fail359
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!from", rx130_pos
  rxscan131_scan364:
    nqp_rxmark rx130_bstack, rxscan131_loop363, rx130_pos, 0
  rxscan131_done365:
    nqp_rxmark rx130_bstack, rxcap132_fail367, rx130_pos, 0
    add $I11, rx130_pos, 1
    gt $I11, rx130_eos, rx130_fail359
    substr $S10, rx130_tgt, rx130_pos, 1
    ne $S10, ucs4:"+", rx130_fail359
    add rx130_pos, 1
    nqp_rxpeek $I19, rx130_bstack, rxcap132_fail367
    inc $I19
    set $I11, rx130_bstack[$I19]
    $P11 = rx130_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx130_pos)
    rx130_cstack = rx130_cur."!cursor_capture"($P11, "sym")
    goto rxcap132_done366
  rxcap132_fail367:
    goto rx130_fail359
  rxcap132_done366:
    repr_bind_attr_int rx130_cur, rx130_curclass, "$!pos", rx130_pos
    $P11 = rx130_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx130_curclass, "$!pos"
    lt $I11, 0, rx130_fail359
    nqp_rxmark rx130_bstack, rxsubrule133_pass368, -1, 0
  rxsubrule133_pass368:
    rx130_cstack = rx130_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx130_pos, $P11, rx130_curclass, "$!pos"
    rx130_cur."!cursor_pass"(rx130_pos, "quantifier:sym<+>", 'backtrack'=>1)
    .return (rx130_cur)
  rx130_restart358:
    repr_get_attr_obj rx130_cstack, rx130_cur, rx130_curclass, "$!cstack"
  rx130_fail359:
    unless rx130_bstack, rx130_done357
    pop $I19, rx130_bstack
    if_null rx130_cstack, rx130_cstack_done362
    unless rx130_cstack, rx130_cstack_done362
    dec $I19
    set $P11, rx130_cstack[$I19]
  rx130_cstack_done362:
    pop rx130_rep, rx130_bstack
    pop rx130_pos, rx130_bstack
    pop $I19, rx130_bstack
    lt rx130_pos, -1, rx130_done357
    lt rx130_pos, 0, rx130_fail359
    eq $I19, 0, rx130_fail359
    nqp_islist $I20, rx130_cstack
    unless $I20, rx130_jump360
    elements $I18, rx130_bstack
    le $I18, 0, rx130_cut361
    dec $I18
    set $I18, rx130_bstack[$I18]
  rx130_cut361:
    assign rx130_cstack, $I18
  rx130_jump360:
    jump $I19
  rx130_done357:
    rx130_cur."!cursor_fail"()
    .return (rx130_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_24_1346277621.774_caps" :subid("cuid_memo_45_1346277621.774")
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
.sub "cuid_24_1346277621.774_nfa" :subid("cuid_memo_46_1346277621.774")
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
.sub "quantifier:sym<?>" :subid("cuid_25_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx134_restart371
    gt rx134_pos, rx134_eos, rx134_fail372
    repr_get_attr_int $I11, self, rx134_curclass, "$!from"
    ne $I11, -1, rxscan135_done378
    goto rxscan135_scan377
  rxscan135_loop376:
    inc rx134_pos
    gt rx134_pos, rx134_eos, rx134_fail372
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!from", rx134_pos
  rxscan135_scan377:
    nqp_rxmark rx134_bstack, rxscan135_loop376, rx134_pos, 0
  rxscan135_done378:
    nqp_rxmark rx134_bstack, rxcap136_fail380, rx134_pos, 0
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail372
    substr $S10, rx134_tgt, rx134_pos, 1
    ne $S10, ucs4:"?", rx134_fail372
    add rx134_pos, 1
    nqp_rxpeek $I19, rx134_bstack, rxcap136_fail380
    inc $I19
    set $I11, rx134_bstack[$I19]
    $P11 = rx134_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx134_pos)
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "sym")
    goto rxcap136_done379
  rxcap136_fail380:
    goto rx134_fail372
  rxcap136_done379:
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail372
    nqp_rxmark rx134_bstack, rxsubrule137_pass381, -1, 0
  rxsubrule137_pass381:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    rx134_cur."!cursor_pass"(rx134_pos, "quantifier:sym<?>", 'backtrack'=>1)
    .return (rx134_cur)
  rx134_restart371:
    repr_get_attr_obj rx134_cstack, rx134_cur, rx134_curclass, "$!cstack"
  rx134_fail372:
    unless rx134_bstack, rx134_done370
    pop $I19, rx134_bstack
    if_null rx134_cstack, rx134_cstack_done375
    unless rx134_cstack, rx134_cstack_done375
    dec $I19
    set $P11, rx134_cstack[$I19]
  rx134_cstack_done375:
    pop rx134_rep, rx134_bstack
    pop rx134_pos, rx134_bstack
    pop $I19, rx134_bstack
    lt rx134_pos, -1, rx134_done370
    lt rx134_pos, 0, rx134_fail372
    eq $I19, 0, rx134_fail372
    nqp_islist $I20, rx134_cstack
    unless $I20, rx134_jump373
    elements $I18, rx134_bstack
    le $I18, 0, rx134_cut374
    dec $I18
    set $I18, rx134_bstack[$I18]
  rx134_cut374:
    assign rx134_cstack, $I18
  rx134_jump373:
    jump $I19
  rx134_done370:
    rx134_cur."!cursor_fail"()
    .return (rx134_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_25_1346277621.774_caps" :subid("cuid_memo_47_1346277621.774")
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
.sub "cuid_25_1346277621.774_nfa" :subid("cuid_memo_48_1346277621.774")
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
.sub "quantifier:sym<{N,M}>" :subid("cuid_29_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .const 'Sub' $P5007 = 'cuid_163_1346277621.774' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_26_1346277621.774' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_27_1346277621.774' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_28_1346277621.774' 
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
    eq $I19, 1, rx138_restart384
    gt rx138_pos, rx138_eos, rx138_fail385
    repr_get_attr_int $I11, self, rx138_curclass, "$!from"
    ne $I11, -1, rxscan139_done391
    goto rxscan139_scan390
  rxscan139_loop389:
    inc rx138_pos
    gt rx138_pos, rx138_eos, rx138_fail385
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!from", rx138_pos
  rxscan139_scan390:
    nqp_rxmark rx138_bstack, rxscan139_loop389, rx138_pos, 0
  rxscan139_done391:
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    store_lex unicode:"$\x{a2}", rx138_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_163_1346277621.774' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail385
    substr $S10, rx138_tgt, rx138_pos, 1
    ne $S10, ucs4:"{", rx138_fail385
    add rx138_pos, 1
    .const 'Sub' $P5004 = 'cuid_26_1346277621.774' 
    capture_lex $P5004
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail385
    nqp_rxmark rx138_bstack, rxsubrule143_pass404, -1, 0
  rxsubrule143_pass404:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    .const 'Sub' $P5005 = 'cuid_27_1346277621.774' 
    capture_lex $P5005
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail385
    nqp_rxmark rx138_bstack, rxsubrule147_pass417, -1, 0
  rxsubrule147_pass417:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, 1)
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    .const 'Sub' $P5006 = 'cuid_28_1346277621.774' 
    capture_lex $P5006
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5006()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail385
    nqp_rxmark rx138_bstack, rxsubrule151_pass430, -1, 0
  rxsubrule151_pass430:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, 2)
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail385
    substr $S10, rx138_tgt, rx138_pos, 1
    ne $S10, ucs4:"}", rx138_fail385
    add rx138_pos, 1
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail385
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    rx138_cur."!cursor_pass"(rx138_pos, "quantifier:sym<{N,M}>", 'backtrack'=>1)
    .return (rx138_cur)
  rx138_restart384:
    repr_get_attr_obj rx138_cstack, rx138_cur, rx138_curclass, "$!cstack"
  rx138_fail385:
    unless rx138_bstack, rx138_done383
    pop $I19, rx138_bstack
    if_null rx138_cstack, rx138_cstack_done388
    unless rx138_cstack, rx138_cstack_done388
    dec $I19
    set $P11, rx138_cstack[$I19]
  rx138_cstack_done388:
    pop rx138_rep, rx138_bstack
    pop rx138_pos, rx138_bstack
    pop $I19, rx138_bstack
    lt rx138_pos, -1, rx138_done383
    lt rx138_pos, 0, rx138_fail385
    eq $I19, 0, rx138_fail385
    nqp_islist $I20, rx138_cstack
    unless $I20, rx138_jump386
    elements $I18, rx138_bstack
    le $I18, 0, rx138_cut387
    dec $I18
    set $I18, rx138_bstack[$I18]
  rx138_cut387:
    assign rx138_cstack, $I18
  rx138_jump386:
    jump $I19
  rx138_done383:
    rx138_cur."!cursor_fail"()
    .return (rx138_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_29_1346277621.774_caps" :subid("cuid_memo_49_1346277621.774")
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
.sub "" :subid("cuid_163_1346277621.774") :anon :lex :outer("cuid_29_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 101

    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_26_1346277621.774") :anon :lex :outer("cuid_29_1346277621.774")
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
    eq $I19, 1, rx140_restart394
    gt rx140_pos, rx140_eos, rx140_fail395
    repr_get_attr_int $I11, self, rx140_curclass, "$!from"
    ne $I11, -1, rxscan141_done401
    goto rxscan141_scan400
  rxscan141_loop399:
    inc rx140_pos
    gt rx140_pos, rx140_eos, rx140_fail395
    repr_bind_attr_int rx140_cur, rx140_curclass, "$!from", rx140_pos
  rxscan141_scan400:
    nqp_rxmark rx140_bstack, rxscan141_loop399, rx140_pos, 0
  rxscan141_done401:
    nqp_rxmark rx140_bstack, rxquantr142_done403, -1, 0
  rxquantr142_loop402:
    ge rx140_pos, rx140_eos, rx140_fail395
    is_cclass $I11, .CCLASS_NUMERIC, rx140_tgt, rx140_pos
    unless $I11, rx140_fail395
    add rx140_pos, 1
    nqp_rxpeek $I19, rx140_bstack, rxquantr142_done403
    inc $I19
    inc $I19
    set rx140_rep, rx140_bstack[$I19]
    nqp_rxcommit rx140_bstack, rxquantr142_done403
    inc rx140_rep
    nqp_rxmark rx140_bstack, rxquantr142_done403, rx140_pos, rx140_rep
    goto rxquantr142_loop402
  rxquantr142_done403:
    rx140_cur."!cursor_pass"(rx140_pos, 'backtrack'=>1)
    .return (rx140_cur)
  rx140_restart394:
    repr_get_attr_obj rx140_cstack, rx140_cur, rx140_curclass, "$!cstack"
  rx140_fail395:
    unless rx140_bstack, rx140_done393
    pop $I19, rx140_bstack
    if_null rx140_cstack, rx140_cstack_done398
    unless rx140_cstack, rx140_cstack_done398
    dec $I19
    set $P11, rx140_cstack[$I19]
  rx140_cstack_done398:
    pop rx140_rep, rx140_bstack
    pop rx140_pos, rx140_bstack
    pop $I19, rx140_bstack
    lt rx140_pos, -1, rx140_done393
    lt rx140_pos, 0, rx140_fail395
    eq $I19, 0, rx140_fail395
    nqp_islist $I20, rx140_cstack
    unless $I20, rx140_jump396
    elements $I18, rx140_bstack
    le $I18, 0, rx140_cut397
    dec $I18
    set $I18, rx140_bstack[$I18]
  rx140_cut397:
    assign rx140_cstack, $I18
  rx140_jump396:
    jump $I19
  rx140_done393:
    rx140_cur."!cursor_fail"()
    .return (rx140_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1346277621.774_caps" :subid("cuid_memo_50_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1346277621.774_nfa" :subid("cuid_memo_51_1346277621.774")
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
.sub "" :subid("cuid_27_1346277621.774") :anon :lex :outer("cuid_29_1346277621.774")
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
    eq $I19, 1, rx144_restart407
    gt rx144_pos, rx144_eos, rx144_fail408
    repr_get_attr_int $I11, self, rx144_curclass, "$!from"
    ne $I11, -1, rxscan145_done414
    goto rxscan145_scan413
  rxscan145_loop412:
    inc rx144_pos
    gt rx144_pos, rx144_eos, rx144_fail408
    repr_bind_attr_int rx144_cur, rx144_curclass, "$!from", rx144_pos
  rxscan145_scan413:
    nqp_rxmark rx144_bstack, rxscan145_loop412, rx144_pos, 0
  rxscan145_done414:
    nqp_rxmark rx144_bstack, rxquantr146_done416, rx144_pos, 0
  rxquantr146_loop415:
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail408
    substr $S10, rx144_tgt, rx144_pos, 1
    ne $S10, ucs4:",", rx144_fail408
    add rx144_pos, 1
    nqp_rxpeek $I19, rx144_bstack, rxquantr146_done416
    inc $I19
    inc $I19
    set rx144_rep, rx144_bstack[$I19]
    nqp_rxcommit rx144_bstack, rxquantr146_done416
    inc rx144_rep
  rxquantr146_done416:
    rx144_cur."!cursor_pass"(rx144_pos, 'backtrack'=>1)
    .return (rx144_cur)
  rx144_restart407:
    repr_get_attr_obj rx144_cstack, rx144_cur, rx144_curclass, "$!cstack"
  rx144_fail408:
    unless rx144_bstack, rx144_done406
    pop $I19, rx144_bstack
    if_null rx144_cstack, rx144_cstack_done411
    unless rx144_cstack, rx144_cstack_done411
    dec $I19
    set $P11, rx144_cstack[$I19]
  rx144_cstack_done411:
    pop rx144_rep, rx144_bstack
    pop rx144_pos, rx144_bstack
    pop $I19, rx144_bstack
    lt rx144_pos, -1, rx144_done406
    lt rx144_pos, 0, rx144_fail408
    eq $I19, 0, rx144_fail408
    nqp_islist $I20, rx144_cstack
    unless $I20, rx144_jump409
    elements $I18, rx144_bstack
    le $I18, 0, rx144_cut410
    dec $I18
    set $I18, rx144_bstack[$I18]
  rx144_cut410:
    assign rx144_cstack, $I18
  rx144_jump409:
    jump $I19
  rx144_done406:
    rx144_cur."!cursor_fail"()
    .return (rx144_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1346277621.774_caps" :subid("cuid_memo_52_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1346277621.774_nfa" :subid("cuid_memo_53_1346277621.774")
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
.sub "" :subid("cuid_28_1346277621.774") :anon :lex :outer("cuid_29_1346277621.774")
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
    eq $I19, 1, rx148_restart420
    gt rx148_pos, rx148_eos, rx148_fail421
    repr_get_attr_int $I11, self, rx148_curclass, "$!from"
    ne $I11, -1, rxscan149_done427
    goto rxscan149_scan426
  rxscan149_loop425:
    inc rx148_pos
    gt rx148_pos, rx148_eos, rx148_fail421
    repr_bind_attr_int rx148_cur, rx148_curclass, "$!from", rx148_pos
  rxscan149_scan426:
    nqp_rxmark rx148_bstack, rxscan149_loop425, rx148_pos, 0
  rxscan149_done427:
    nqp_rxmark rx148_bstack, rxquantr150_done429, rx148_pos, 0
  rxquantr150_loop428:
    ge rx148_pos, rx148_eos, rx148_fail421
    is_cclass $I11, .CCLASS_NUMERIC, rx148_tgt, rx148_pos
    unless $I11, rx148_fail421
    add rx148_pos, 1
    nqp_rxpeek $I19, rx148_bstack, rxquantr150_done429
    inc $I19
    inc $I19
    set rx148_rep, rx148_bstack[$I19]
    nqp_rxcommit rx148_bstack, rxquantr150_done429
    inc rx148_rep
    nqp_rxmark rx148_bstack, rxquantr150_done429, rx148_pos, rx148_rep
    goto rxquantr150_loop428
  rxquantr150_done429:
    rx148_cur."!cursor_pass"(rx148_pos, 'backtrack'=>1)
    .return (rx148_cur)
  rx148_restart420:
    repr_get_attr_obj rx148_cstack, rx148_cur, rx148_curclass, "$!cstack"
  rx148_fail421:
    unless rx148_bstack, rx148_done419
    pop $I19, rx148_bstack
    if_null rx148_cstack, rx148_cstack_done424
    unless rx148_cstack, rx148_cstack_done424
    dec $I19
    set $P11, rx148_cstack[$I19]
  rx148_cstack_done424:
    pop rx148_rep, rx148_bstack
    pop rx148_pos, rx148_bstack
    pop $I19, rx148_bstack
    lt rx148_pos, -1, rx148_done419
    lt rx148_pos, 0, rx148_fail421
    eq $I19, 0, rx148_fail421
    nqp_islist $I20, rx148_cstack
    unless $I20, rx148_jump422
    elements $I18, rx148_bstack
    le $I18, 0, rx148_cut423
    dec $I18
    set $I18, rx148_bstack[$I18]
  rx148_cut423:
    assign rx148_cstack, $I18
  rx148_jump422:
    jump $I19
  rx148_done419:
    rx148_cur."!cursor_fail"()
    .return (rx148_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_28_1346277621.774_caps" :subid("cuid_memo_54_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_28_1346277621.774_nfa" :subid("cuid_memo_55_1346277621.774")
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
.sub "quantifier:sym<**>" :subid("cuid_30_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx153_restart434
    gt rx153_pos, rx153_eos, rx153_fail435
    repr_get_attr_int $I11, self, rx153_curclass, "$!from"
    ne $I11, -1, rxscan154_done441
    goto rxscan154_scan440
  rxscan154_loop439:
    inc rx153_pos
    gt rx153_pos, rx153_eos, rx153_fail435
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!from", rx153_pos
  rxscan154_scan440:
    nqp_rxmark rx153_bstack, rxscan154_loop439, rx153_pos, 0
  rxscan154_done441:
    nqp_rxmark rx153_bstack, rxcap155_fail443, rx153_pos, 0
    add $I11, rx153_pos, 2
    gt $I11, rx153_eos, rx153_fail435
    substr $S10, rx153_tgt, rx153_pos, 2
    ne $S10, ucs4:"**", rx153_fail435
    add rx153_pos, 2
    nqp_rxpeek $I19, rx153_bstack, rxcap155_fail443
    inc $I19
    set $I11, rx153_bstack[$I19]
    $P11 = rx153_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx153_pos)
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "sym")
    goto rxcap155_done442
  rxcap155_fail443:
    goto rx153_fail435
  rxcap155_done442:
    nqp_rxmark rx153_bstack, rxquantr156_done445, rx153_pos, 0
  rxquantr156_loop444:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail435
    goto rxsubrule157_pass446
  rxsubrule157_back447:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail435
  rxsubrule157_pass446:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule157_back447
    push rx153_bstack, $I11
    push rx153_bstack, 0
    push rx153_bstack, rx153_pos
    elements $I11, rx153_cstack
    push rx153_bstack, $I11
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    nqp_rxpeek $I19, rx153_bstack, rxquantr156_done445
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr156_done445
    inc rx153_rep
  rxquantr156_done445:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."backmod"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail435
    nqp_rxmark rx153_bstack, rxsubrule158_pass448, -1, 0
  rxsubrule158_pass448:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "backmod")
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    nqp_rxmark rx153_bstack, rxquantr159_done450, rx153_pos, 0
  rxquantr159_loop449:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail435
    goto rxsubrule160_pass451
  rxsubrule160_back452:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail435
  rxsubrule160_pass451:
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "normspace")
    set_addr $I11, rxsubrule160_back452
    push rx153_bstack, $I11
    push rx153_bstack, 0
    push rx153_bstack, rx153_pos
    elements $I11, rx153_cstack
    push rx153_bstack, $I11
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
    nqp_rxpeek $I19, rx153_bstack, rxquantr159_done450
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr159_done450
    inc rx153_rep
  rxquantr159_done450:
    nqp_rxmark rx153_bstack, rxcap161_fail454, rx153_pos, 0
    nqp_rxmark rx153_bstack, rxquantr162_done456, -1, 0
  rxquantr162_loop455:
    ge rx153_pos, rx153_eos, rx153_fail435
    is_cclass $I11, .CCLASS_NUMERIC, rx153_tgt, rx153_pos
    unless $I11, rx153_fail435
    add rx153_pos, 1
    nqp_rxpeek $I19, rx153_bstack, rxquantr162_done456
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr162_done456
    inc rx153_rep
    nqp_rxmark rx153_bstack, rxquantr162_done456, rx153_pos, rx153_rep
    goto rxquantr162_loop455
  rxquantr162_done456:
    nqp_rxpeek $I19, rx153_bstack, rxcap161_fail454
    inc $I19
    set $I11, rx153_bstack[$I19]
    $P11 = rx153_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx153_pos)
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "min")
    goto rxcap161_done453
  rxcap161_fail454:
    goto rx153_fail435
  rxcap161_done453:
    nqp_rxmark rx153_bstack, rxquantr163_done458, rx153_pos, 0
  rxquantr163_loop457:
    add $I11, rx153_pos, 2
    gt $I11, rx153_eos, rx153_fail435
    substr $S10, rx153_tgt, rx153_pos, 2
    ne $S10, ucs4:"..", rx153_fail435
    add rx153_pos, 2
    nqp_rxmark rx153_bstack, rxcap164_fail460, rx153_pos, 0
  alt165_0462:
    nqp_rxmark rx153_bstack, alt165_1465, rx153_pos, 0
    nqp_rxmark rx153_bstack, rxquantr166_done464, -1, 0
  rxquantr166_loop463:
    ge rx153_pos, rx153_eos, rx153_fail435
    is_cclass $I11, .CCLASS_NUMERIC, rx153_tgt, rx153_pos
    unless $I11, rx153_fail435
    add rx153_pos, 1
    nqp_rxpeek $I19, rx153_bstack, rxquantr166_done464
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr166_done464
    inc rx153_rep
    nqp_rxmark rx153_bstack, rxquantr166_done464, rx153_pos, rx153_rep
    goto rxquantr166_loop463
  rxquantr166_done464:
    goto alt165_end461
  alt165_1465:
    nqp_rxmark rx153_bstack, alt165_2466, rx153_pos, 0
    add $I11, rx153_pos, 1
    gt $I11, rx153_eos, rx153_fail435
    substr $S10, rx153_tgt, rx153_pos, 1
    ne $S10, ucs4:"*", rx153_fail435
    add rx153_pos, 1
    goto alt165_end461
  alt165_2466:
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail435
    repr_get_attr_int rx153_pos, $P11, rx153_curclass, "$!pos"
  alt165_end461:
    nqp_rxpeek $I19, rx153_bstack, rxcap164_fail460
    inc $I19
    set $I11, rx153_bstack[$I19]
    $P11 = rx153_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx153_pos)
    rx153_cstack = rx153_cur."!cursor_capture"($P11, "max")
    goto rxcap164_done459
  rxcap164_fail460:
    goto rx153_fail435
  rxcap164_done459:
    nqp_rxpeek $I19, rx153_bstack, rxquantr163_done458
    inc $I19
    inc $I19
    set rx153_rep, rx153_bstack[$I19]
    nqp_rxcommit rx153_bstack, rxquantr163_done458
    inc rx153_rep
  rxquantr163_done458:
    rx153_cur."!cursor_pass"(rx153_pos, "quantifier:sym<**>", 'backtrack'=>1)
    .return (rx153_cur)
  rx153_restart434:
    repr_get_attr_obj rx153_cstack, rx153_cur, rx153_curclass, "$!cstack"
  rx153_fail435:
    unless rx153_bstack, rx153_done433
    pop $I19, rx153_bstack
    if_null rx153_cstack, rx153_cstack_done438
    unless rx153_cstack, rx153_cstack_done438
    dec $I19
    set $P11, rx153_cstack[$I19]
  rx153_cstack_done438:
    pop rx153_rep, rx153_bstack
    pop rx153_pos, rx153_bstack
    pop $I19, rx153_bstack
    lt rx153_pos, -1, rx153_done433
    lt rx153_pos, 0, rx153_fail435
    eq $I19, 0, rx153_fail435
    nqp_islist $I20, rx153_cstack
    unless $I20, rx153_jump436
    elements $I18, rx153_bstack
    le $I18, 0, rx153_cut437
    dec $I18
    set $I18, rx153_bstack[$I18]
  rx153_cut437:
    assign rx153_cstack, $I18
  rx153_jump436:
    jump $I19
  rx153_done433:
    rx153_cur."!cursor_fail"()
    .return (rx153_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_30_1346277621.774_caps" :subid("cuid_memo_56_1346277621.774")
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
.sub "cuid_30_1346277621.774_nfa" :subid("cuid_memo_57_1346277621.774")
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
.sub "backmod" :subid("cuid_32_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 118
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_31_1346277621.774' 
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
    eq $I19, 1, rx168_restart470
    gt rx168_pos, rx168_eos, rx168_fail471
    repr_get_attr_int $I11, self, rx168_curclass, "$!from"
    ne $I11, -1, rxscan169_done477
    goto rxscan169_scan476
  rxscan169_loop475:
    inc rx168_pos
    gt rx168_pos, rx168_eos, rx168_fail471
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!from", rx168_pos
  rxscan169_scan476:
    nqp_rxmark rx168_bstack, rxscan169_loop475, rx168_pos, 0
  rxscan169_done477:
    nqp_rxmark rx168_bstack, rxquantr170_done479, rx168_pos, 0
  rxquantr170_loop478:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail471
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:":", rx168_fail471
    add rx168_pos, 1
    nqp_rxpeek $I19, rx168_bstack, rxquantr170_done479
    inc $I19
    inc $I19
    set rx168_rep, rx168_bstack[$I19]
    nqp_rxcommit rx168_bstack, rxquantr170_done479
    inc rx168_rep
  rxquantr170_done479:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt171_0481
    nqp_push_label $P11, alt171_1482
    nqp_push_label $P11, alt171_2483
    nqp_rxmark rx168_bstack, alt171_end480, -1, 0
    rx168_cur."!alt"(rx168_pos, "alt_nfa__7_1346277622.582", $P11)
    goto rx168_fail471
  alt171_0481:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail471
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:"?", rx168_fail471
    add rx168_pos, 1
    goto alt171_end480
  alt171_1482:
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail471
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:"!", rx168_fail471
    add rx168_pos, 1
    goto alt171_end480
  alt171_2483:
    .const 'Sub' $P5001 = 'cuid_31_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!pos", rx168_pos
    $P11 = rx168_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx168_curclass, "$!pos"
    ge $I11, 0, rx168_fail471
    goto alt171_end480
  alt171_end480:
    nqp_rxcommit rx168_bstack, alt171_end480
    rx168_cur."!cursor_pass"(rx168_pos, "backmod", 'backtrack'=>1)
    .return (rx168_cur)
  rx168_restart470:
    repr_get_attr_obj rx168_cstack, rx168_cur, rx168_curclass, "$!cstack"
  rx168_fail471:
    unless rx168_bstack, rx168_done469
    pop $I19, rx168_bstack
    if_null rx168_cstack, rx168_cstack_done474
    unless rx168_cstack, rx168_cstack_done474
    dec $I19
    set $P11, rx168_cstack[$I19]
  rx168_cstack_done474:
    pop rx168_rep, rx168_bstack
    pop rx168_pos, rx168_bstack
    pop $I19, rx168_bstack
    lt rx168_pos, -1, rx168_done469
    lt rx168_pos, 0, rx168_fail471
    eq $I19, 0, rx168_fail471
    nqp_islist $I20, rx168_cstack
    unless $I20, rx168_jump472
    elements $I18, rx168_bstack
    le $I18, 0, rx168_cut473
    dec $I18
    set $I18, rx168_bstack[$I18]
  rx168_cut473:
    assign rx168_cstack, $I18
  rx168_jump472:
    jump $I19
  rx168_done469:
    rx168_cur."!cursor_fail"()
    .return (rx168_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1346277621.774_caps" :subid("cuid_memo_58_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1346277621.774_nfa" :subid("cuid_memo_59_1346277621.774")
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
.sub "cuid_32_1346277621.774_alt_nfa__7_1346277622.582" :subid("cuid_memo_60_1346277621.774")
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
.sub "" :subid("cuid_31_1346277621.774") :anon :lex :outer("cuid_32_1346277621.774")
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
    eq $I19, 1, rx172_restart486
    gt rx172_pos, rx172_eos, rx172_fail487
    repr_get_attr_int $I11, self, rx172_curclass, "$!from"
    ne $I11, -1, rxscan173_done493
    goto rxscan173_scan492
  rxscan173_loop491:
    inc rx172_pos
    gt rx172_pos, rx172_eos, rx172_fail487
    repr_bind_attr_int rx172_cur, rx172_curclass, "$!from", rx172_pos
  rxscan173_scan492:
    nqp_rxmark rx172_bstack, rxscan173_loop491, rx172_pos, 0
  rxscan173_done493:
    add $I11, rx172_pos, 1
    gt $I11, rx172_eos, rx172_fail487
    substr $S10, rx172_tgt, rx172_pos, 1
    ne $S10, ucs4:":", rx172_fail487
    add rx172_pos, 1
    rx172_cur."!cursor_pass"(rx172_pos, 'backtrack'=>1)
    .return (rx172_cur)
  rx172_restart486:
    repr_get_attr_obj rx172_cstack, rx172_cur, rx172_curclass, "$!cstack"
  rx172_fail487:
    unless rx172_bstack, rx172_done485
    pop $I19, rx172_bstack
    if_null rx172_cstack, rx172_cstack_done490
    unless rx172_cstack, rx172_cstack_done490
    dec $I19
    set $P11, rx172_cstack[$I19]
  rx172_cstack_done490:
    pop rx172_rep, rx172_bstack
    pop rx172_pos, rx172_bstack
    pop $I19, rx172_bstack
    lt rx172_pos, -1, rx172_done485
    lt rx172_pos, 0, rx172_fail487
    eq $I19, 0, rx172_fail487
    nqp_islist $I20, rx172_cstack
    unless $I20, rx172_jump488
    elements $I18, rx172_bstack
    le $I18, 0, rx172_cut489
    dec $I18
    set $I18, rx172_bstack[$I18]
  rx172_cut489:
    assign rx172_cstack, $I18
  rx172_jump488:
    jump $I19
  rx172_done485:
    rx172_cur."!cursor_fail"()
    .return (rx172_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_31_1346277621.774_caps" :subid("cuid_memo_61_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_31_1346277621.774_nfa" :subid("cuid_memo_62_1346277621.774")
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
.sub "metachar" :subid("cuid_33_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 120
    .param pmc self 
    $P5001 = self."!protoregex"("metachar")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<ws>" :subid("cuid_34_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx174_restart496
    gt rx174_pos, rx174_eos, rx174_fail497
    repr_get_attr_int $I11, self, rx174_curclass, "$!from"
    ne $I11, -1, rxscan175_done503
    goto rxscan175_scan502
  rxscan175_loop501:
    inc rx174_pos
    gt rx174_pos, rx174_eos, rx174_fail497
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!from", rx174_pos
  rxscan175_scan502:
    nqp_rxmark rx174_bstack, rxscan175_loop501, rx174_pos, 0
  rxscan175_done503:
    repr_bind_attr_int rx174_cur, rx174_curclass, "$!pos", rx174_pos
    $P11 = rx174_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx174_curclass, "$!pos"
    lt $I11, 0, rx174_fail497
    repr_get_attr_int rx174_pos, $P11, rx174_curclass, "$!pos"
    rx174_cur."!cursor_pass"(rx174_pos, "metachar:sym<ws>", 'backtrack'=>1)
    .return (rx174_cur)
  rx174_restart496:
    repr_get_attr_obj rx174_cstack, rx174_cur, rx174_curclass, "$!cstack"
  rx174_fail497:
    unless rx174_bstack, rx174_done495
    pop $I19, rx174_bstack
    if_null rx174_cstack, rx174_cstack_done500
    unless rx174_cstack, rx174_cstack_done500
    dec $I19
    set $P11, rx174_cstack[$I19]
  rx174_cstack_done500:
    pop rx174_rep, rx174_bstack
    pop rx174_pos, rx174_bstack
    pop $I19, rx174_bstack
    lt rx174_pos, -1, rx174_done495
    lt rx174_pos, 0, rx174_fail497
    eq $I19, 0, rx174_fail497
    nqp_islist $I20, rx174_cstack
    unless $I20, rx174_jump498
    elements $I18, rx174_bstack
    le $I18, 0, rx174_cut499
    dec $I18
    set $I18, rx174_bstack[$I18]
  rx174_cut499:
    assign rx174_cstack, $I18
  rx174_jump498:
    jump $I19
  rx174_done495:
    rx174_cur."!cursor_fail"()
    .return (rx174_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_34_1346277621.774_caps" :subid("cuid_memo_63_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_34_1346277621.774_nfa" :subid("cuid_memo_64_1346277621.774")
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
.sub "metachar:sym<[ ]>" :subid("cuid_35_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx177_restart507
    gt rx177_pos, rx177_eos, rx177_fail508
    repr_get_attr_int $I11, self, rx177_curclass, "$!from"
    ne $I11, -1, rxscan178_done514
    goto rxscan178_scan513
  rxscan178_loop512:
    inc rx177_pos
    gt rx177_pos, rx177_eos, rx177_fail508
    repr_bind_attr_int rx177_cur, rx177_curclass, "$!from", rx177_pos
  rxscan178_scan513:
    nqp_rxmark rx177_bstack, rxscan178_loop512, rx177_pos, 0
  rxscan178_done514:
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail508
    substr $S10, rx177_tgt, rx177_pos, 1
    ne $S10, ucs4:"[", rx177_fail508
    add rx177_pos, 1
    repr_bind_attr_int rx177_cur, rx177_curclass, "$!pos", rx177_pos
    $P11 = rx177_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx177_curclass, "$!pos"
    lt $I11, 0, rx177_fail508
    nqp_rxmark rx177_bstack, rxsubrule179_pass515, -1, 0
  rxsubrule179_pass515:
    rx177_cstack = rx177_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx177_pos, $P11, rx177_curclass, "$!pos"
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail508
    substr $S10, rx177_tgt, rx177_pos, 1
    ne $S10, ucs4:"]", rx177_fail508
    add rx177_pos, 1
    rx177_cur."!cursor_pass"(rx177_pos, "metachar:sym<[ ]>", 'backtrack'=>1)
    .return (rx177_cur)
  rx177_restart507:
    repr_get_attr_obj rx177_cstack, rx177_cur, rx177_curclass, "$!cstack"
  rx177_fail508:
    unless rx177_bstack, rx177_done506
    pop $I19, rx177_bstack
    if_null rx177_cstack, rx177_cstack_done511
    unless rx177_cstack, rx177_cstack_done511
    dec $I19
    set $P11, rx177_cstack[$I19]
  rx177_cstack_done511:
    pop rx177_rep, rx177_bstack
    pop rx177_pos, rx177_bstack
    pop $I19, rx177_bstack
    lt rx177_pos, -1, rx177_done506
    lt rx177_pos, 0, rx177_fail508
    eq $I19, 0, rx177_fail508
    nqp_islist $I20, rx177_cstack
    unless $I20, rx177_jump509
    elements $I18, rx177_bstack
    le $I18, 0, rx177_cut510
    dec $I18
    set $I18, rx177_bstack[$I18]
  rx177_cut510:
    assign rx177_cstack, $I18
  rx177_jump509:
    jump $I19
  rx177_done506:
    rx177_cur."!cursor_fail"()
    .return (rx177_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_35_1346277621.774_caps" :subid("cuid_memo_65_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_35_1346277621.774_nfa" :subid("cuid_memo_66_1346277621.774")
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
.sub "metachar:sym<( )>" :subid("cuid_36_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx180_restart518
    gt rx180_pos, rx180_eos, rx180_fail519
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done525
    goto rxscan181_scan524
  rxscan181_loop523:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail519
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan524:
    nqp_rxmark rx180_bstack, rxscan181_loop523, rx180_pos, 0
  rxscan181_done525:
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail519
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"(", rx180_fail519
    add rx180_pos, 1
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail519
    nqp_rxmark rx180_bstack, rxsubrule182_pass526, -1, 0
  rxsubrule182_pass526:
    rx180_cstack = rx180_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail519
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:")", rx180_fail519
    add rx180_pos, 1
    rx180_cur."!cursor_pass"(rx180_pos, "metachar:sym<( )>", 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart518:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail519:
    unless rx180_bstack, rx180_done517
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done522
    unless rx180_cstack, rx180_cstack_done522
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done522:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done517
    lt rx180_pos, 0, rx180_fail519
    eq $I19, 0, rx180_fail519
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump520
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut521
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut521:
    assign rx180_cstack, $I18
  rx180_jump520:
    jump $I19
  rx180_done517:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_36_1346277621.774_caps" :subid("cuid_memo_67_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_36_1346277621.774_nfa" :subid("cuid_memo_68_1346277621.774")
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
.sub "metachar:sym<'>" :subid("cuid_37_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx183_restart529
    gt rx183_pos, rx183_eos, rx183_fail530
    repr_get_attr_int $I11, self, rx183_curclass, "$!from"
    ne $I11, -1, rxscan184_done536
    goto rxscan184_scan535
  rxscan184_loop534:
    inc rx183_pos
    gt rx183_pos, rx183_eos, rx183_fail530
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!from", rx183_pos
  rxscan184_scan535:
    nqp_rxmark rx183_bstack, rxscan184_loop534, rx183_pos, 0
  rxscan184_done536:
    ge rx183_pos, rx183_eos, rx183_fail530
    substr $S11, rx183_tgt, rx183_pos, 1
    index $I11, ucs4:"'", $S11
    lt $I11, 0, rx183_fail530
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."quote_EXPR"(":q")
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail530
    nqp_rxmark rx183_bstack, rxsubrule185_pass537, -1, 0
  rxsubrule185_pass537:
    rx183_cstack = rx183_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx183_pos, $P11, rx183_curclass, "$!pos"
    rx183_cur."!cursor_pass"(rx183_pos, "metachar:sym<'>", 'backtrack'=>1)
    .return (rx183_cur)
  rx183_restart529:
    repr_get_attr_obj rx183_cstack, rx183_cur, rx183_curclass, "$!cstack"
  rx183_fail530:
    unless rx183_bstack, rx183_done528
    pop $I19, rx183_bstack
    if_null rx183_cstack, rx183_cstack_done533
    unless rx183_cstack, rx183_cstack_done533
    dec $I19
    set $P11, rx183_cstack[$I19]
  rx183_cstack_done533:
    pop rx183_rep, rx183_bstack
    pop rx183_pos, rx183_bstack
    pop $I19, rx183_bstack
    lt rx183_pos, -1, rx183_done528
    lt rx183_pos, 0, rx183_fail530
    eq $I19, 0, rx183_fail530
    nqp_islist $I20, rx183_cstack
    unless $I20, rx183_jump531
    elements $I18, rx183_bstack
    le $I18, 0, rx183_cut532
    dec $I18
    set $I18, rx183_bstack[$I18]
  rx183_cut532:
    assign rx183_cstack, $I18
  rx183_jump531:
    jump $I19
  rx183_done528:
    rx183_cur."!cursor_fail"()
    .return (rx183_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_37_1346277621.774_caps" :subid("cuid_memo_69_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_37_1346277621.774_nfa" :subid("cuid_memo_70_1346277621.774")
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
.sub "metachar:sym<\">" :subid("cuid_38_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx186_restart540
    gt rx186_pos, rx186_eos, rx186_fail541
    repr_get_attr_int $I11, self, rx186_curclass, "$!from"
    ne $I11, -1, rxscan187_done547
    goto rxscan187_scan546
  rxscan187_loop545:
    inc rx186_pos
    gt rx186_pos, rx186_eos, rx186_fail541
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!from", rx186_pos
  rxscan187_scan546:
    nqp_rxmark rx186_bstack, rxscan187_loop545, rx186_pos, 0
  rxscan187_done547:
    ge rx186_pos, rx186_eos, rx186_fail541
    substr $S11, rx186_tgt, rx186_pos, 1
    index $I11, ucs4:"\"", $S11
    lt $I11, 0, rx186_fail541
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."quote_EXPR"(":qq")
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail541
    nqp_rxmark rx186_bstack, rxsubrule188_pass548, -1, 0
  rxsubrule188_pass548:
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "quote_EXPR")
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    rx186_cur."!cursor_pass"(rx186_pos, "metachar:sym<\">", 'backtrack'=>1)
    .return (rx186_cur)
  rx186_restart540:
    repr_get_attr_obj rx186_cstack, rx186_cur, rx186_curclass, "$!cstack"
  rx186_fail541:
    unless rx186_bstack, rx186_done539
    pop $I19, rx186_bstack
    if_null rx186_cstack, rx186_cstack_done544
    unless rx186_cstack, rx186_cstack_done544
    dec $I19
    set $P11, rx186_cstack[$I19]
  rx186_cstack_done544:
    pop rx186_rep, rx186_bstack
    pop rx186_pos, rx186_bstack
    pop $I19, rx186_bstack
    lt rx186_pos, -1, rx186_done539
    lt rx186_pos, 0, rx186_fail541
    eq $I19, 0, rx186_fail541
    nqp_islist $I20, rx186_cstack
    unless $I20, rx186_jump542
    elements $I18, rx186_bstack
    le $I18, 0, rx186_cut543
    dec $I18
    set $I18, rx186_bstack[$I18]
  rx186_cut543:
    assign rx186_cstack, $I18
  rx186_jump542:
    jump $I19
  rx186_done539:
    rx186_cur."!cursor_fail"()
    .return (rx186_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1346277621.774_caps" :subid("cuid_memo_71_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1346277621.774_nfa" :subid("cuid_memo_72_1346277621.774")
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
.sub "metachar:sym<.>" :subid("cuid_39_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx189_restart551
    gt rx189_pos, rx189_eos, rx189_fail552
    repr_get_attr_int $I11, self, rx189_curclass, "$!from"
    ne $I11, -1, rxscan190_done558
    goto rxscan190_scan557
  rxscan190_loop556:
    inc rx189_pos
    gt rx189_pos, rx189_eos, rx189_fail552
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!from", rx189_pos
  rxscan190_scan557:
    nqp_rxmark rx189_bstack, rxscan190_loop556, rx189_pos, 0
  rxscan190_done558:
    nqp_rxmark rx189_bstack, rxcap191_fail560, rx189_pos, 0
    add $I11, rx189_pos, 1
    gt $I11, rx189_eos, rx189_fail552
    substr $S10, rx189_tgt, rx189_pos, 1
    ne $S10, ucs4:".", rx189_fail552
    add rx189_pos, 1
    nqp_rxpeek $I19, rx189_bstack, rxcap191_fail560
    inc $I19
    set $I11, rx189_bstack[$I19]
    $P11 = rx189_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx189_pos)
    rx189_cstack = rx189_cur."!cursor_capture"($P11, "sym")
    goto rxcap191_done559
  rxcap191_fail560:
    goto rx189_fail552
  rxcap191_done559:
    rx189_cur."!cursor_pass"(rx189_pos, "metachar:sym<.>", 'backtrack'=>1)
    .return (rx189_cur)
  rx189_restart551:
    repr_get_attr_obj rx189_cstack, rx189_cur, rx189_curclass, "$!cstack"
  rx189_fail552:
    unless rx189_bstack, rx189_done550
    pop $I19, rx189_bstack
    if_null rx189_cstack, rx189_cstack_done555
    unless rx189_cstack, rx189_cstack_done555
    dec $I19
    set $P11, rx189_cstack[$I19]
  rx189_cstack_done555:
    pop rx189_rep, rx189_bstack
    pop rx189_pos, rx189_bstack
    pop $I19, rx189_bstack
    lt rx189_pos, -1, rx189_done550
    lt rx189_pos, 0, rx189_fail552
    eq $I19, 0, rx189_fail552
    nqp_islist $I20, rx189_cstack
    unless $I20, rx189_jump553
    elements $I18, rx189_bstack
    le $I18, 0, rx189_cut554
    dec $I18
    set $I18, rx189_bstack[$I18]
  rx189_cut554:
    assign rx189_cstack, $I18
  rx189_jump553:
    jump $I19
  rx189_done550:
    rx189_cur."!cursor_fail"()
    .return (rx189_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1346277621.774_caps" :subid("cuid_memo_73_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1346277621.774_nfa" :subid("cuid_memo_74_1346277621.774")
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
.sub "metachar:sym<^>" :subid("cuid_40_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx192_restart563
    gt rx192_pos, rx192_eos, rx192_fail564
    repr_get_attr_int $I11, self, rx192_curclass, "$!from"
    ne $I11, -1, rxscan193_done570
    goto rxscan193_scan569
  rxscan193_loop568:
    inc rx192_pos
    gt rx192_pos, rx192_eos, rx192_fail564
    repr_bind_attr_int rx192_cur, rx192_curclass, "$!from", rx192_pos
  rxscan193_scan569:
    nqp_rxmark rx192_bstack, rxscan193_loop568, rx192_pos, 0
  rxscan193_done570:
    nqp_rxmark rx192_bstack, rxcap194_fail572, rx192_pos, 0
    add $I11, rx192_pos, 1
    gt $I11, rx192_eos, rx192_fail564
    substr $S10, rx192_tgt, rx192_pos, 1
    ne $S10, ucs4:"^", rx192_fail564
    add rx192_pos, 1
    nqp_rxpeek $I19, rx192_bstack, rxcap194_fail572
    inc $I19
    set $I11, rx192_bstack[$I19]
    $P11 = rx192_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx192_pos)
    rx192_cstack = rx192_cur."!cursor_capture"($P11, "sym")
    goto rxcap194_done571
  rxcap194_fail572:
    goto rx192_fail564
  rxcap194_done571:
    rx192_cur."!cursor_pass"(rx192_pos, "metachar:sym<^>", 'backtrack'=>1)
    .return (rx192_cur)
  rx192_restart563:
    repr_get_attr_obj rx192_cstack, rx192_cur, rx192_curclass, "$!cstack"
  rx192_fail564:
    unless rx192_bstack, rx192_done562
    pop $I19, rx192_bstack
    if_null rx192_cstack, rx192_cstack_done567
    unless rx192_cstack, rx192_cstack_done567
    dec $I19
    set $P11, rx192_cstack[$I19]
  rx192_cstack_done567:
    pop rx192_rep, rx192_bstack
    pop rx192_pos, rx192_bstack
    pop $I19, rx192_bstack
    lt rx192_pos, -1, rx192_done562
    lt rx192_pos, 0, rx192_fail564
    eq $I19, 0, rx192_fail564
    nqp_islist $I20, rx192_cstack
    unless $I20, rx192_jump565
    elements $I18, rx192_bstack
    le $I18, 0, rx192_cut566
    dec $I18
    set $I18, rx192_bstack[$I18]
  rx192_cut566:
    assign rx192_cstack, $I18
  rx192_jump565:
    jump $I19
  rx192_done562:
    rx192_cur."!cursor_fail"()
    .return (rx192_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_40_1346277621.774_caps" :subid("cuid_memo_75_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_40_1346277621.774_nfa" :subid("cuid_memo_76_1346277621.774")
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
.sub "metachar:sym<^^>" :subid("cuid_41_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx195_restart575
    gt rx195_pos, rx195_eos, rx195_fail576
    repr_get_attr_int $I11, self, rx195_curclass, "$!from"
    ne $I11, -1, rxscan196_done582
    goto rxscan196_scan581
  rxscan196_loop580:
    inc rx195_pos
    gt rx195_pos, rx195_eos, rx195_fail576
    repr_bind_attr_int rx195_cur, rx195_curclass, "$!from", rx195_pos
  rxscan196_scan581:
    nqp_rxmark rx195_bstack, rxscan196_loop580, rx195_pos, 0
  rxscan196_done582:
    nqp_rxmark rx195_bstack, rxcap197_fail584, rx195_pos, 0
    add $I11, rx195_pos, 2
    gt $I11, rx195_eos, rx195_fail576
    substr $S10, rx195_tgt, rx195_pos, 2
    ne $S10, ucs4:"^^", rx195_fail576
    add rx195_pos, 2
    nqp_rxpeek $I19, rx195_bstack, rxcap197_fail584
    inc $I19
    set $I11, rx195_bstack[$I19]
    $P11 = rx195_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx195_pos)
    rx195_cstack = rx195_cur."!cursor_capture"($P11, "sym")
    goto rxcap197_done583
  rxcap197_fail584:
    goto rx195_fail576
  rxcap197_done583:
    rx195_cur."!cursor_pass"(rx195_pos, "metachar:sym<^^>", 'backtrack'=>1)
    .return (rx195_cur)
  rx195_restart575:
    repr_get_attr_obj rx195_cstack, rx195_cur, rx195_curclass, "$!cstack"
  rx195_fail576:
    unless rx195_bstack, rx195_done574
    pop $I19, rx195_bstack
    if_null rx195_cstack, rx195_cstack_done579
    unless rx195_cstack, rx195_cstack_done579
    dec $I19
    set $P11, rx195_cstack[$I19]
  rx195_cstack_done579:
    pop rx195_rep, rx195_bstack
    pop rx195_pos, rx195_bstack
    pop $I19, rx195_bstack
    lt rx195_pos, -1, rx195_done574
    lt rx195_pos, 0, rx195_fail576
    eq $I19, 0, rx195_fail576
    nqp_islist $I20, rx195_cstack
    unless $I20, rx195_jump577
    elements $I18, rx195_bstack
    le $I18, 0, rx195_cut578
    dec $I18
    set $I18, rx195_bstack[$I18]
  rx195_cut578:
    assign rx195_cstack, $I18
  rx195_jump577:
    jump $I19
  rx195_done574:
    rx195_cur."!cursor_fail"()
    .return (rx195_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_41_1346277621.774_caps" :subid("cuid_memo_77_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_41_1346277621.774_nfa" :subid("cuid_memo_78_1346277621.774")
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
.sub "metachar:sym<$>" :subid("cuid_42_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx198_restart587
    gt rx198_pos, rx198_eos, rx198_fail588
    repr_get_attr_int $I11, self, rx198_curclass, "$!from"
    ne $I11, -1, rxscan199_done594
    goto rxscan199_scan593
  rxscan199_loop592:
    inc rx198_pos
    gt rx198_pos, rx198_eos, rx198_fail588
    repr_bind_attr_int rx198_cur, rx198_curclass, "$!from", rx198_pos
  rxscan199_scan593:
    nqp_rxmark rx198_bstack, rxscan199_loop592, rx198_pos, 0
  rxscan199_done594:
    nqp_rxmark rx198_bstack, rxcap200_fail596, rx198_pos, 0
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail588
    substr $S10, rx198_tgt, rx198_pos, 1
    ne $S10, ucs4:"$", rx198_fail588
    add rx198_pos, 1
    nqp_rxpeek $I19, rx198_bstack, rxcap200_fail596
    inc $I19
    set $I11, rx198_bstack[$I19]
    $P11 = rx198_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx198_pos)
    rx198_cstack = rx198_cur."!cursor_capture"($P11, "sym")
    goto rxcap200_done595
  rxcap200_fail596:
    goto rx198_fail588
  rxcap200_done595:
    rx198_cur."!cursor_pass"(rx198_pos, "metachar:sym<$>", 'backtrack'=>1)
    .return (rx198_cur)
  rx198_restart587:
    repr_get_attr_obj rx198_cstack, rx198_cur, rx198_curclass, "$!cstack"
  rx198_fail588:
    unless rx198_bstack, rx198_done586
    pop $I19, rx198_bstack
    if_null rx198_cstack, rx198_cstack_done591
    unless rx198_cstack, rx198_cstack_done591
    dec $I19
    set $P11, rx198_cstack[$I19]
  rx198_cstack_done591:
    pop rx198_rep, rx198_bstack
    pop rx198_pos, rx198_bstack
    pop $I19, rx198_bstack
    lt rx198_pos, -1, rx198_done586
    lt rx198_pos, 0, rx198_fail588
    eq $I19, 0, rx198_fail588
    nqp_islist $I20, rx198_cstack
    unless $I20, rx198_jump589
    elements $I18, rx198_bstack
    le $I18, 0, rx198_cut590
    dec $I18
    set $I18, rx198_bstack[$I18]
  rx198_cut590:
    assign rx198_cstack, $I18
  rx198_jump589:
    jump $I19
  rx198_done586:
    rx198_cur."!cursor_fail"()
    .return (rx198_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_42_1346277621.774_caps" :subid("cuid_memo_79_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_42_1346277621.774_nfa" :subid("cuid_memo_80_1346277621.774")
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
.sub "metachar:sym<$$>" :subid("cuid_43_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx201_restart599
    gt rx201_pos, rx201_eos, rx201_fail600
    repr_get_attr_int $I11, self, rx201_curclass, "$!from"
    ne $I11, -1, rxscan202_done606
    goto rxscan202_scan605
  rxscan202_loop604:
    inc rx201_pos
    gt rx201_pos, rx201_eos, rx201_fail600
    repr_bind_attr_int rx201_cur, rx201_curclass, "$!from", rx201_pos
  rxscan202_scan605:
    nqp_rxmark rx201_bstack, rxscan202_loop604, rx201_pos, 0
  rxscan202_done606:
    nqp_rxmark rx201_bstack, rxcap203_fail608, rx201_pos, 0
    add $I11, rx201_pos, 2
    gt $I11, rx201_eos, rx201_fail600
    substr $S10, rx201_tgt, rx201_pos, 2
    ne $S10, ucs4:"$$", rx201_fail600
    add rx201_pos, 2
    nqp_rxpeek $I19, rx201_bstack, rxcap203_fail608
    inc $I19
    set $I11, rx201_bstack[$I19]
    $P11 = rx201_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx201_pos)
    rx201_cstack = rx201_cur."!cursor_capture"($P11, "sym")
    goto rxcap203_done607
  rxcap203_fail608:
    goto rx201_fail600
  rxcap203_done607:
    rx201_cur."!cursor_pass"(rx201_pos, "metachar:sym<$$>", 'backtrack'=>1)
    .return (rx201_cur)
  rx201_restart599:
    repr_get_attr_obj rx201_cstack, rx201_cur, rx201_curclass, "$!cstack"
  rx201_fail600:
    unless rx201_bstack, rx201_done598
    pop $I19, rx201_bstack
    if_null rx201_cstack, rx201_cstack_done603
    unless rx201_cstack, rx201_cstack_done603
    dec $I19
    set $P11, rx201_cstack[$I19]
  rx201_cstack_done603:
    pop rx201_rep, rx201_bstack
    pop rx201_pos, rx201_bstack
    pop $I19, rx201_bstack
    lt rx201_pos, -1, rx201_done598
    lt rx201_pos, 0, rx201_fail600
    eq $I19, 0, rx201_fail600
    nqp_islist $I20, rx201_cstack
    unless $I20, rx201_jump601
    elements $I18, rx201_bstack
    le $I18, 0, rx201_cut602
    dec $I18
    set $I18, rx201_bstack[$I18]
  rx201_cut602:
    assign rx201_cstack, $I18
  rx201_jump601:
    jump $I19
  rx201_done598:
    rx201_cur."!cursor_fail"()
    .return (rx201_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_43_1346277621.774_caps" :subid("cuid_memo_81_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_43_1346277621.774_nfa" :subid("cuid_memo_82_1346277621.774")
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
.sub "metachar:sym<:::>" :subid("cuid_44_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx204_restart611
    gt rx204_pos, rx204_eos, rx204_fail612
    repr_get_attr_int $I11, self, rx204_curclass, "$!from"
    ne $I11, -1, rxscan205_done618
    goto rxscan205_scan617
  rxscan205_loop616:
    inc rx204_pos
    gt rx204_pos, rx204_eos, rx204_fail612
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!from", rx204_pos
  rxscan205_scan617:
    nqp_rxmark rx204_bstack, rxscan205_loop616, rx204_pos, 0
  rxscan205_done618:
    nqp_rxmark rx204_bstack, rxcap206_fail620, rx204_pos, 0
    add $I11, rx204_pos, 3
    gt $I11, rx204_eos, rx204_fail612
    substr $S10, rx204_tgt, rx204_pos, 3
    ne $S10, ucs4:":::", rx204_fail612
    add rx204_pos, 3
    nqp_rxpeek $I19, rx204_bstack, rxcap206_fail620
    inc $I19
    set $I11, rx204_bstack[$I19]
    $P11 = rx204_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx204_pos)
    rx204_cstack = rx204_cur."!cursor_capture"($P11, "sym")
    goto rxcap206_done619
  rxcap206_fail620:
    goto rx204_fail612
  rxcap206_done619:
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!pos", rx204_pos
    $P11 = rx204_cur."panic"("::: not yet implemented")
    repr_get_attr_int $I11, $P11, rx204_curclass, "$!pos"
    lt $I11, 0, rx204_fail612
    repr_get_attr_int rx204_pos, $P11, rx204_curclass, "$!pos"
    rx204_cur."!cursor_pass"(rx204_pos, "metachar:sym<:::>", 'backtrack'=>1)
    .return (rx204_cur)
  rx204_restart611:
    repr_get_attr_obj rx204_cstack, rx204_cur, rx204_curclass, "$!cstack"
  rx204_fail612:
    unless rx204_bstack, rx204_done610
    pop $I19, rx204_bstack
    if_null rx204_cstack, rx204_cstack_done615
    unless rx204_cstack, rx204_cstack_done615
    dec $I19
    set $P11, rx204_cstack[$I19]
  rx204_cstack_done615:
    pop rx204_rep, rx204_bstack
    pop rx204_pos, rx204_bstack
    pop $I19, rx204_bstack
    lt rx204_pos, -1, rx204_done610
    lt rx204_pos, 0, rx204_fail612
    eq $I19, 0, rx204_fail612
    nqp_islist $I20, rx204_cstack
    unless $I20, rx204_jump613
    elements $I18, rx204_bstack
    le $I18, 0, rx204_cut614
    dec $I18
    set $I18, rx204_bstack[$I18]
  rx204_cut614:
    assign rx204_cstack, $I18
  rx204_jump613:
    jump $I19
  rx204_done610:
    rx204_cur."!cursor_fail"()
    .return (rx204_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_44_1346277621.774_caps" :subid("cuid_memo_83_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_44_1346277621.774_nfa" :subid("cuid_memo_84_1346277621.774")
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
.sub "metachar:sym<::>" :subid("cuid_45_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx208_restart624
    gt rx208_pos, rx208_eos, rx208_fail625
    repr_get_attr_int $I11, self, rx208_curclass, "$!from"
    ne $I11, -1, rxscan209_done631
    goto rxscan209_scan630
  rxscan209_loop629:
    inc rx208_pos
    gt rx208_pos, rx208_eos, rx208_fail625
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!from", rx208_pos
  rxscan209_scan630:
    nqp_rxmark rx208_bstack, rxscan209_loop629, rx208_pos, 0
  rxscan209_done631:
    nqp_rxmark rx208_bstack, rxcap210_fail633, rx208_pos, 0
    add $I11, rx208_pos, 2
    gt $I11, rx208_eos, rx208_fail625
    substr $S10, rx208_tgt, rx208_pos, 2
    ne $S10, ucs4:"::", rx208_fail625
    add rx208_pos, 2
    nqp_rxpeek $I19, rx208_bstack, rxcap210_fail633
    inc $I19
    set $I11, rx208_bstack[$I19]
    $P11 = rx208_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx208_pos)
    rx208_cstack = rx208_cur."!cursor_capture"($P11, "sym")
    goto rxcap210_done632
  rxcap210_fail633:
    goto rx208_fail625
  rxcap210_done632:
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    $P11 = rx208_cur."panic"(":: not yet implemented")
    repr_get_attr_int $I11, $P11, rx208_curclass, "$!pos"
    lt $I11, 0, rx208_fail625
    repr_get_attr_int rx208_pos, $P11, rx208_curclass, "$!pos"
    rx208_cur."!cursor_pass"(rx208_pos, "metachar:sym<::>", 'backtrack'=>1)
    .return (rx208_cur)
  rx208_restart624:
    repr_get_attr_obj rx208_cstack, rx208_cur, rx208_curclass, "$!cstack"
  rx208_fail625:
    unless rx208_bstack, rx208_done623
    pop $I19, rx208_bstack
    if_null rx208_cstack, rx208_cstack_done628
    unless rx208_cstack, rx208_cstack_done628
    dec $I19
    set $P11, rx208_cstack[$I19]
  rx208_cstack_done628:
    pop rx208_rep, rx208_bstack
    pop rx208_pos, rx208_bstack
    pop $I19, rx208_bstack
    lt rx208_pos, -1, rx208_done623
    lt rx208_pos, 0, rx208_fail625
    eq $I19, 0, rx208_fail625
    nqp_islist $I20, rx208_cstack
    unless $I20, rx208_jump626
    elements $I18, rx208_bstack
    le $I18, 0, rx208_cut627
    dec $I18
    set $I18, rx208_bstack[$I18]
  rx208_cut627:
    assign rx208_cstack, $I18
  rx208_jump626:
    jump $I19
  rx208_done623:
    rx208_cur."!cursor_fail"()
    .return (rx208_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_45_1346277621.774_caps" :subid("cuid_memo_85_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_45_1346277621.774_nfa" :subid("cuid_memo_86_1346277621.774")
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
.sub "metachar:sym<lwb>" :subid("cuid_46_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx212_restart637
    gt rx212_pos, rx212_eos, rx212_fail638
    repr_get_attr_int $I11, self, rx212_curclass, "$!from"
    ne $I11, -1, rxscan213_done644
    goto rxscan213_scan643
  rxscan213_loop642:
    inc rx212_pos
    gt rx212_pos, rx212_eos, rx212_fail638
    repr_bind_attr_int rx212_cur, rx212_curclass, "$!from", rx212_pos
  rxscan213_scan643:
    nqp_rxmark rx212_bstack, rxscan213_loop642, rx212_pos, 0
  rxscan213_done644:
    nqp_rxmark rx212_bstack, rxcap214_fail646, rx212_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt215_0648
    nqp_push_label $P11, alt215_1649
    nqp_rxmark rx212_bstack, alt215_end647, -1, 0
    rx212_cur."!alt"(rx212_pos, "alt_nfa__8_1346277622.714", $P11)
    goto rx212_fail638
  alt215_0648:
    add $I11, rx212_pos, 2
    gt $I11, rx212_eos, rx212_fail638
    substr $S10, rx212_tgt, rx212_pos, 2
    ne $S10, ucs4:"<<", rx212_fail638
    add rx212_pos, 2
    goto alt215_end647
  alt215_1649:
    add $I11, rx212_pos, 1
    gt $I11, rx212_eos, rx212_fail638
    substr $S10, rx212_tgt, rx212_pos, 1
    ne $S10, ucs4:"\x{ab}", rx212_fail638
    add rx212_pos, 1
    goto alt215_end647
  alt215_end647:
    nqp_rxcommit rx212_bstack, alt215_end647
    nqp_rxpeek $I19, rx212_bstack, rxcap214_fail646
    inc $I19
    set $I11, rx212_bstack[$I19]
    $P11 = rx212_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx212_pos)
    rx212_cstack = rx212_cur."!cursor_capture"($P11, "sym")
    goto rxcap214_done645
  rxcap214_fail646:
    goto rx212_fail638
  rxcap214_done645:
    rx212_cur."!cursor_pass"(rx212_pos, "metachar:sym<lwb>", 'backtrack'=>1)
    .return (rx212_cur)
  rx212_restart637:
    repr_get_attr_obj rx212_cstack, rx212_cur, rx212_curclass, "$!cstack"
  rx212_fail638:
    unless rx212_bstack, rx212_done636
    pop $I19, rx212_bstack
    if_null rx212_cstack, rx212_cstack_done641
    unless rx212_cstack, rx212_cstack_done641
    dec $I19
    set $P11, rx212_cstack[$I19]
  rx212_cstack_done641:
    pop rx212_rep, rx212_bstack
    pop rx212_pos, rx212_bstack
    pop $I19, rx212_bstack
    lt rx212_pos, -1, rx212_done636
    lt rx212_pos, 0, rx212_fail638
    eq $I19, 0, rx212_fail638
    nqp_islist $I20, rx212_cstack
    unless $I20, rx212_jump639
    elements $I18, rx212_bstack
    le $I18, 0, rx212_cut640
    dec $I18
    set $I18, rx212_bstack[$I18]
  rx212_cut640:
    assign rx212_cstack, $I18
  rx212_jump639:
    jump $I19
  rx212_done636:
    rx212_cur."!cursor_fail"()
    .return (rx212_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1346277621.774_caps" :subid("cuid_memo_87_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1346277621.774_nfa" :subid("cuid_memo_88_1346277621.774")
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
.sub "cuid_46_1346277621.774_alt_nfa__8_1346277622.714" :subid("cuid_memo_89_1346277621.774")
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
.sub "metachar:sym<rwb>" :subid("cuid_47_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx216_restart652
    gt rx216_pos, rx216_eos, rx216_fail653
    repr_get_attr_int $I11, self, rx216_curclass, "$!from"
    ne $I11, -1, rxscan217_done659
    goto rxscan217_scan658
  rxscan217_loop657:
    inc rx216_pos
    gt rx216_pos, rx216_eos, rx216_fail653
    repr_bind_attr_int rx216_cur, rx216_curclass, "$!from", rx216_pos
  rxscan217_scan658:
    nqp_rxmark rx216_bstack, rxscan217_loop657, rx216_pos, 0
  rxscan217_done659:
    nqp_rxmark rx216_bstack, rxcap218_fail661, rx216_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt219_0663
    nqp_push_label $P11, alt219_1664
    nqp_rxmark rx216_bstack, alt219_end662, -1, 0
    rx216_cur."!alt"(rx216_pos, "alt_nfa__9_1346277622.726", $P11)
    goto rx216_fail653
  alt219_0663:
    add $I11, rx216_pos, 2
    gt $I11, rx216_eos, rx216_fail653
    substr $S10, rx216_tgt, rx216_pos, 2
    ne $S10, ucs4:">>", rx216_fail653
    add rx216_pos, 2
    goto alt219_end662
  alt219_1664:
    add $I11, rx216_pos, 1
    gt $I11, rx216_eos, rx216_fail653
    substr $S10, rx216_tgt, rx216_pos, 1
    ne $S10, ucs4:"\x{bb}", rx216_fail653
    add rx216_pos, 1
    goto alt219_end662
  alt219_end662:
    nqp_rxcommit rx216_bstack, alt219_end662
    nqp_rxpeek $I19, rx216_bstack, rxcap218_fail661
    inc $I19
    set $I11, rx216_bstack[$I19]
    $P11 = rx216_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx216_pos)
    rx216_cstack = rx216_cur."!cursor_capture"($P11, "sym")
    goto rxcap218_done660
  rxcap218_fail661:
    goto rx216_fail653
  rxcap218_done660:
    rx216_cur."!cursor_pass"(rx216_pos, "metachar:sym<rwb>", 'backtrack'=>1)
    .return (rx216_cur)
  rx216_restart652:
    repr_get_attr_obj rx216_cstack, rx216_cur, rx216_curclass, "$!cstack"
  rx216_fail653:
    unless rx216_bstack, rx216_done651
    pop $I19, rx216_bstack
    if_null rx216_cstack, rx216_cstack_done656
    unless rx216_cstack, rx216_cstack_done656
    dec $I19
    set $P11, rx216_cstack[$I19]
  rx216_cstack_done656:
    pop rx216_rep, rx216_bstack
    pop rx216_pos, rx216_bstack
    pop $I19, rx216_bstack
    lt rx216_pos, -1, rx216_done651
    lt rx216_pos, 0, rx216_fail653
    eq $I19, 0, rx216_fail653
    nqp_islist $I20, rx216_cstack
    unless $I20, rx216_jump654
    elements $I18, rx216_bstack
    le $I18, 0, rx216_cut655
    dec $I18
    set $I18, rx216_bstack[$I18]
  rx216_cut655:
    assign rx216_cstack, $I18
  rx216_jump654:
    jump $I19
  rx216_done651:
    rx216_cur."!cursor_fail"()
    .return (rx216_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1346277621.774_caps" :subid("cuid_memo_90_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1346277621.774_nfa" :subid("cuid_memo_91_1346277621.774")
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
.sub "cuid_47_1346277621.774_alt_nfa__9_1346277622.726" :subid("cuid_memo_92_1346277621.774")
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
.sub "metachar:sym<from>" :subid("cuid_48_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx220_restart667
    gt rx220_pos, rx220_eos, rx220_fail668
    repr_get_attr_int $I11, self, rx220_curclass, "$!from"
    ne $I11, -1, rxscan221_done674
    goto rxscan221_scan673
  rxscan221_loop672:
    inc rx220_pos
    gt rx220_pos, rx220_eos, rx220_fail668
    repr_bind_attr_int rx220_cur, rx220_curclass, "$!from", rx220_pos
  rxscan221_scan673:
    nqp_rxmark rx220_bstack, rxscan221_loop672, rx220_pos, 0
  rxscan221_done674:
    add $I11, rx220_pos, 2
    gt $I11, rx220_eos, rx220_fail668
    substr $S10, rx220_tgt, rx220_pos, 2
    ne $S10, ucs4:"<(", rx220_fail668
    add rx220_pos, 2
    rx220_cur."!cursor_pass"(rx220_pos, "metachar:sym<from>", 'backtrack'=>1)
    .return (rx220_cur)
  rx220_restart667:
    repr_get_attr_obj rx220_cstack, rx220_cur, rx220_curclass, "$!cstack"
  rx220_fail668:
    unless rx220_bstack, rx220_done666
    pop $I19, rx220_bstack
    if_null rx220_cstack, rx220_cstack_done671
    unless rx220_cstack, rx220_cstack_done671
    dec $I19
    set $P11, rx220_cstack[$I19]
  rx220_cstack_done671:
    pop rx220_rep, rx220_bstack
    pop rx220_pos, rx220_bstack
    pop $I19, rx220_bstack
    lt rx220_pos, -1, rx220_done666
    lt rx220_pos, 0, rx220_fail668
    eq $I19, 0, rx220_fail668
    nqp_islist $I20, rx220_cstack
    unless $I20, rx220_jump669
    elements $I18, rx220_bstack
    le $I18, 0, rx220_cut670
    dec $I18
    set $I18, rx220_bstack[$I18]
  rx220_cut670:
    assign rx220_cstack, $I18
  rx220_jump669:
    jump $I19
  rx220_done666:
    rx220_cur."!cursor_fail"()
    .return (rx220_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_48_1346277621.774_caps" :subid("cuid_memo_93_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_48_1346277621.774_nfa" :subid("cuid_memo_94_1346277621.774")
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
.sub "metachar:sym<to>" :subid("cuid_49_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx222_restart677
    gt rx222_pos, rx222_eos, rx222_fail678
    repr_get_attr_int $I11, self, rx222_curclass, "$!from"
    ne $I11, -1, rxscan223_done684
    goto rxscan223_scan683
  rxscan223_loop682:
    inc rx222_pos
    gt rx222_pos, rx222_eos, rx222_fail678
    repr_bind_attr_int rx222_cur, rx222_curclass, "$!from", rx222_pos
  rxscan223_scan683:
    nqp_rxmark rx222_bstack, rxscan223_loop682, rx222_pos, 0
  rxscan223_done684:
    add $I11, rx222_pos, 2
    gt $I11, rx222_eos, rx222_fail678
    substr $S10, rx222_tgt, rx222_pos, 2
    ne $S10, ucs4:")>", rx222_fail678
    add rx222_pos, 2
    rx222_cur."!cursor_pass"(rx222_pos, "metachar:sym<to>", 'backtrack'=>1)
    .return (rx222_cur)
  rx222_restart677:
    repr_get_attr_obj rx222_cstack, rx222_cur, rx222_curclass, "$!cstack"
  rx222_fail678:
    unless rx222_bstack, rx222_done676
    pop $I19, rx222_bstack
    if_null rx222_cstack, rx222_cstack_done681
    unless rx222_cstack, rx222_cstack_done681
    dec $I19
    set $P11, rx222_cstack[$I19]
  rx222_cstack_done681:
    pop rx222_rep, rx222_bstack
    pop rx222_pos, rx222_bstack
    pop $I19, rx222_bstack
    lt rx222_pos, -1, rx222_done676
    lt rx222_pos, 0, rx222_fail678
    eq $I19, 0, rx222_fail678
    nqp_islist $I20, rx222_cstack
    unless $I20, rx222_jump679
    elements $I18, rx222_bstack
    le $I18, 0, rx222_cut680
    dec $I18
    set $I18, rx222_bstack[$I18]
  rx222_cut680:
    assign rx222_cstack, $I18
  rx222_jump679:
    jump $I19
  rx222_done676:
    rx222_cur."!cursor_fail"()
    .return (rx222_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_49_1346277621.774_caps" :subid("cuid_memo_95_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_49_1346277621.774_nfa" :subid("cuid_memo_96_1346277621.774")
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
.sub "metachar:sym<bs>" :subid("cuid_50_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx224_restart687
    gt rx224_pos, rx224_eos, rx224_fail688
    repr_get_attr_int $I11, self, rx224_curclass, "$!from"
    ne $I11, -1, rxscan225_done694
    goto rxscan225_scan693
  rxscan225_loop692:
    inc rx224_pos
    gt rx224_pos, rx224_eos, rx224_fail688
    repr_bind_attr_int rx224_cur, rx224_curclass, "$!from", rx224_pos
  rxscan225_scan693:
    nqp_rxmark rx224_bstack, rxscan225_loop692, rx224_pos, 0
  rxscan225_done694:
    add $I11, rx224_pos, 1
    gt $I11, rx224_eos, rx224_fail688
    substr $S10, rx224_tgt, rx224_pos, 1
    ne $S10, ucs4:"\\", rx224_fail688
    add rx224_pos, 1
    repr_bind_attr_int rx224_cur, rx224_curclass, "$!pos", rx224_pos
    $P11 = rx224_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx224_curclass, "$!pos"
    lt $I11, 0, rx224_fail688
    nqp_rxmark rx224_bstack, rxsubrule226_pass695, -1, 0
  rxsubrule226_pass695:
    rx224_cstack = rx224_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx224_pos, $P11, rx224_curclass, "$!pos"
    rx224_cur."!cursor_pass"(rx224_pos, "metachar:sym<bs>", 'backtrack'=>1)
    .return (rx224_cur)
  rx224_restart687:
    repr_get_attr_obj rx224_cstack, rx224_cur, rx224_curclass, "$!cstack"
  rx224_fail688:
    unless rx224_bstack, rx224_done686
    pop $I19, rx224_bstack
    if_null rx224_cstack, rx224_cstack_done691
    unless rx224_cstack, rx224_cstack_done691
    dec $I19
    set $P11, rx224_cstack[$I19]
  rx224_cstack_done691:
    pop rx224_rep, rx224_bstack
    pop rx224_pos, rx224_bstack
    pop $I19, rx224_bstack
    lt rx224_pos, -1, rx224_done686
    lt rx224_pos, 0, rx224_fail688
    eq $I19, 0, rx224_fail688
    nqp_islist $I20, rx224_cstack
    unless $I20, rx224_jump689
    elements $I18, rx224_bstack
    le $I18, 0, rx224_cut690
    dec $I18
    set $I18, rx224_bstack[$I18]
  rx224_cut690:
    assign rx224_cstack, $I18
  rx224_jump689:
    jump $I19
  rx224_done686:
    rx224_cur."!cursor_fail"()
    .return (rx224_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_50_1346277621.774_caps" :subid("cuid_memo_97_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["backslash"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_50_1346277621.774_nfa" :subid("cuid_memo_98_1346277621.774")
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
.sub "metachar:sym<mod>" :subid("cuid_51_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx227_restart698
    gt rx227_pos, rx227_eos, rx227_fail699
    repr_get_attr_int $I11, self, rx227_curclass, "$!from"
    ne $I11, -1, rxscan228_done705
    goto rxscan228_scan704
  rxscan228_loop703:
    inc rx227_pos
    gt rx227_pos, rx227_eos, rx227_fail699
    repr_bind_attr_int rx227_cur, rx227_curclass, "$!from", rx227_pos
  rxscan228_scan704:
    nqp_rxmark rx227_bstack, rxscan228_loop703, rx227_pos, 0
  rxscan228_done705:
    repr_bind_attr_int rx227_cur, rx227_curclass, "$!pos", rx227_pos
    $P11 = rx227_cur."mod_internal"()
    repr_get_attr_int $I11, $P11, rx227_curclass, "$!pos"
    lt $I11, 0, rx227_fail699
    nqp_rxmark rx227_bstack, rxsubrule229_pass706, -1, 0
  rxsubrule229_pass706:
    rx227_cstack = rx227_cur."!cursor_capture"($P11, "mod_internal")
    repr_get_attr_int rx227_pos, $P11, rx227_curclass, "$!pos"
    rx227_cur."!cursor_pass"(rx227_pos, "metachar:sym<mod>", 'backtrack'=>1)
    .return (rx227_cur)
  rx227_restart698:
    repr_get_attr_obj rx227_cstack, rx227_cur, rx227_curclass, "$!cstack"
  rx227_fail699:
    unless rx227_bstack, rx227_done697
    pop $I19, rx227_bstack
    if_null rx227_cstack, rx227_cstack_done702
    unless rx227_cstack, rx227_cstack_done702
    dec $I19
    set $P11, rx227_cstack[$I19]
  rx227_cstack_done702:
    pop rx227_rep, rx227_bstack
    pop rx227_pos, rx227_bstack
    pop $I19, rx227_bstack
    lt rx227_pos, -1, rx227_done697
    lt rx227_pos, 0, rx227_fail699
    eq $I19, 0, rx227_fail699
    nqp_islist $I20, rx227_cstack
    unless $I20, rx227_jump700
    elements $I18, rx227_bstack
    le $I18, 0, rx227_cut701
    dec $I18
    set $I18, rx227_bstack[$I18]
  rx227_cut701:
    assign rx227_cstack, $I18
  rx227_jump700:
    jump $I19
  rx227_done697:
    rx227_cur."!cursor_fail"()
    .return (rx227_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_51_1346277621.774_caps" :subid("cuid_memo_99_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["mod_internal"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_51_1346277621.774_nfa" :subid("cuid_memo_100_1346277621.774")
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
.sub "metachar:sym<quantifier>" :subid("cuid_52_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx230_restart709
    gt rx230_pos, rx230_eos, rx230_fail710
    repr_get_attr_int $I11, self, rx230_curclass, "$!from"
    ne $I11, -1, rxscan231_done716
    goto rxscan231_scan715
  rxscan231_loop714:
    inc rx230_pos
    gt rx230_pos, rx230_eos, rx230_fail710
    repr_bind_attr_int rx230_cur, rx230_curclass, "$!from", rx230_pos
  rxscan231_scan715:
    nqp_rxmark rx230_bstack, rxscan231_loop714, rx230_pos, 0
  rxscan231_done716:
    repr_bind_attr_int rx230_cur, rx230_curclass, "$!pos", rx230_pos
    $P11 = rx230_cur."quantifier"()
    repr_get_attr_int $I11, $P11, rx230_curclass, "$!pos"
    lt $I11, 0, rx230_fail710
    nqp_rxmark rx230_bstack, rxsubrule232_pass717, -1, 0
  rxsubrule232_pass717:
    rx230_cstack = rx230_cur."!cursor_capture"($P11, "quantifier")
    repr_get_attr_int rx230_pos, $P11, rx230_curclass, "$!pos"
    repr_bind_attr_int rx230_cur, rx230_curclass, "$!pos", rx230_pos
    $P11 = rx230_cur."panic"("Quantifier quantifies nothing")
    repr_get_attr_int $I11, $P11, rx230_curclass, "$!pos"
    lt $I11, 0, rx230_fail710
    repr_get_attr_int rx230_pos, $P11, rx230_curclass, "$!pos"
    rx230_cur."!cursor_pass"(rx230_pos, "metachar:sym<quantifier>", 'backtrack'=>1)
    .return (rx230_cur)
  rx230_restart709:
    repr_get_attr_obj rx230_cstack, rx230_cur, rx230_curclass, "$!cstack"
  rx230_fail710:
    unless rx230_bstack, rx230_done708
    pop $I19, rx230_bstack
    if_null rx230_cstack, rx230_cstack_done713
    unless rx230_cstack, rx230_cstack_done713
    dec $I19
    set $P11, rx230_cstack[$I19]
  rx230_cstack_done713:
    pop rx230_rep, rx230_bstack
    pop rx230_pos, rx230_bstack
    pop $I19, rx230_bstack
    lt rx230_pos, -1, rx230_done708
    lt rx230_pos, 0, rx230_fail710
    eq $I19, 0, rx230_fail710
    nqp_islist $I20, rx230_cstack
    unless $I20, rx230_jump711
    elements $I18, rx230_bstack
    le $I18, 0, rx230_cut712
    dec $I18
    set $I18, rx230_bstack[$I18]
  rx230_cut712:
    assign rx230_cstack, $I18
  rx230_jump711:
    jump $I19
  rx230_done708:
    rx230_cur."!cursor_fail"()
    .return (rx230_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_52_1346277621.774_caps" :subid("cuid_memo_101_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quantifier"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_52_1346277621.774_nfa" :subid("cuid_memo_102_1346277621.774")
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
.sub "metachar:sym<~>" :subid("cuid_53_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx234_restart721
    gt rx234_pos, rx234_eos, rx234_fail722
    repr_get_attr_int $I11, self, rx234_curclass, "$!from"
    ne $I11, -1, rxscan235_done728
    goto rxscan235_scan727
  rxscan235_loop726:
    inc rx234_pos
    gt rx234_pos, rx234_eos, rx234_fail722
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!from", rx234_pos
  rxscan235_scan727:
    nqp_rxmark rx234_bstack, rxscan235_loop726, rx234_pos, 0
  rxscan235_done728:
    nqp_rxmark rx234_bstack, rxcap236_fail730, rx234_pos, 0
    add $I11, rx234_pos, 1
    gt $I11, rx234_eos, rx234_fail722
    substr $S10, rx234_tgt, rx234_pos, 1
    ne $S10, ucs4:"~", rx234_fail722
    add rx234_pos, 1
    nqp_rxpeek $I19, rx234_bstack, rxcap236_fail730
    inc $I19
    set $I11, rx234_bstack[$I19]
    $P11 = rx234_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx234_pos)
    rx234_cstack = rx234_cur."!cursor_capture"($P11, "sym")
    goto rxcap236_done729
  rxcap236_fail730:
    goto rx234_fail722
  rxcap236_done729:
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."ws"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail722
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail722
    nqp_rxmark rx234_bstack, rxsubrule238_pass732, -1, 0
  rxsubrule238_pass732:
    rx234_cstack = rx234_cur."!cursor_capture"($P11, "GOAL")
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."ws"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail722
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    repr_bind_attr_int rx234_cur, rx234_curclass, "$!pos", rx234_pos
    $P11 = rx234_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx234_curclass, "$!pos"
    lt $I11, 0, rx234_fail722
    nqp_rxmark rx234_bstack, rxsubrule240_pass734, -1, 0
  rxsubrule240_pass734:
    rx234_cstack = rx234_cur."!cursor_capture"($P11, "EXPR")
    repr_get_attr_int rx234_pos, $P11, rx234_curclass, "$!pos"
    rx234_cur."!cursor_pass"(rx234_pos, "metachar:sym<~>", 'backtrack'=>1)
    .return (rx234_cur)
  rx234_restart721:
    repr_get_attr_obj rx234_cstack, rx234_cur, rx234_curclass, "$!cstack"
  rx234_fail722:
    unless rx234_bstack, rx234_done720
    pop $I19, rx234_bstack
    if_null rx234_cstack, rx234_cstack_done725
    unless rx234_cstack, rx234_cstack_done725
    dec $I19
    set $P11, rx234_cstack[$I19]
  rx234_cstack_done725:
    pop rx234_rep, rx234_bstack
    pop rx234_pos, rx234_bstack
    pop $I19, rx234_bstack
    lt rx234_pos, -1, rx234_done720
    lt rx234_pos, 0, rx234_fail722
    eq $I19, 0, rx234_fail722
    nqp_islist $I20, rx234_cstack
    unless $I20, rx234_jump723
    elements $I18, rx234_bstack
    le $I18, 0, rx234_cut724
    dec $I18
    set $I18, rx234_bstack[$I18]
  rx234_cut724:
    assign rx234_cstack, $I18
  rx234_jump723:
    jump $I19
  rx234_done720:
    rx234_cur."!cursor_fail"()
    .return (rx234_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_53_1346277621.774_caps" :subid("cuid_memo_103_1346277621.774")
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
.sub "cuid_53_1346277621.774_nfa" :subid("cuid_memo_104_1346277621.774")
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
.sub "metachar:sym<{*}>" :subid("cuid_54_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx241_restart737
    gt rx241_pos, rx241_eos, rx241_fail738
    repr_get_attr_int $I11, self, rx241_curclass, "$!from"
    ne $I11, -1, rxscan242_done744
    goto rxscan242_scan743
  rxscan242_loop742:
    inc rx241_pos
    gt rx241_pos, rx241_eos, rx241_fail738
    repr_bind_attr_int rx241_cur, rx241_curclass, "$!from", rx241_pos
  rxscan242_scan743:
    nqp_rxmark rx241_bstack, rxscan242_loop742, rx241_pos, 0
  rxscan242_done744:
    nqp_rxmark rx241_bstack, rxcap243_fail746, rx241_pos, 0
    add $I11, rx241_pos, 3
    gt $I11, rx241_eos, rx241_fail738
    substr $S10, rx241_tgt, rx241_pos, 3
    ne $S10, ucs4:"{*}", rx241_fail738
    add rx241_pos, 3
    nqp_rxpeek $I19, rx241_bstack, rxcap243_fail746
    inc $I19
    set $I11, rx241_bstack[$I19]
    $P11 = rx241_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx241_pos)
    rx241_cstack = rx241_cur."!cursor_capture"($P11, "sym")
    goto rxcap243_done745
  rxcap243_fail746:
    goto rx241_fail738
  rxcap243_done745:
    nqp_rxmark rx241_bstack, rxquantr244_done748, rx241_pos, 0
  rxquantr244_loop747:
    nqp_rxmark rx241_bstack, rxquantr245_done750, rx241_pos, 0
  rxquantr245_loop749:
    ge rx241_pos, rx241_eos, rx241_fail738
    substr $S11, rx241_tgt, rx241_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx241_fail738
    inc rx241_pos
    nqp_rxpeek $I19, rx241_bstack, rxquantr245_done750
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr245_done750
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr245_done750, rx241_pos, rx241_rep
    goto rxquantr245_loop749
  rxquantr245_done750:
    add $I11, rx241_pos, 3
    gt $I11, rx241_eos, rx241_fail738
    substr $S10, rx241_tgt, rx241_pos, 3
    ne $S10, ucs4:"#= ", rx241_fail738
    add rx241_pos, 3
    nqp_rxmark rx241_bstack, rxquantr246_done752, rx241_pos, 0
  rxquantr246_loop751:
    ge rx241_pos, rx241_eos, rx241_fail738
    substr $S11, rx241_tgt, rx241_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx241_fail738
    inc rx241_pos
    nqp_rxpeek $I19, rx241_bstack, rxquantr246_done752
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr246_done752
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr246_done752, rx241_pos, rx241_rep
    goto rxquantr246_loop751
  rxquantr246_done752:
    nqp_rxmark rx241_bstack, rxcap247_fail754, rx241_pos, 0
    nqp_rxmark rx241_bstack, rxquantr248_done756, -1, 0
  rxquantr248_loop755:
    ge rx241_pos, rx241_eos, rx241_fail738
    is_cclass $I11, .CCLASS_WHITESPACE, rx241_tgt, rx241_pos
    if $I11, rx241_fail738
    add rx241_pos, 1
    nqp_rxpeek $I19, rx241_bstack, rxquantr248_done756
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr248_done756
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr248_done756, rx241_pos, rx241_rep
    goto rxquantr248_loop755
  rxquantr248_done756:
    nqp_rxmark rx241_bstack, rxquantr249_done758, rx241_pos, 0
  rxquantr249_loop757:
    nqp_rxmark rx241_bstack, rxquantr250_done760, -1, 0
  rxquantr250_loop759:
    ge rx241_pos, rx241_eos, rx241_fail738
    substr $S11, rx241_tgt, rx241_pos, 1
    index $I11, ucs4:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S11
    lt $I11, 0, rx241_fail738
    inc rx241_pos
    nqp_rxpeek $I19, rx241_bstack, rxquantr250_done760
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr250_done760
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr250_done760, rx241_pos, rx241_rep
    goto rxquantr250_loop759
  rxquantr250_done760:
    nqp_rxmark rx241_bstack, rxquantr251_done762, -1, 0
  rxquantr251_loop761:
    ge rx241_pos, rx241_eos, rx241_fail738
    is_cclass $I11, .CCLASS_WHITESPACE, rx241_tgt, rx241_pos
    if $I11, rx241_fail738
    add rx241_pos, 1
    nqp_rxpeek $I19, rx241_bstack, rxquantr251_done762
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr251_done762
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr251_done762, rx241_pos, rx241_rep
    goto rxquantr251_loop761
  rxquantr251_done762:
    nqp_rxpeek $I19, rx241_bstack, rxquantr249_done758
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr249_done758
    inc rx241_rep
    nqp_rxmark rx241_bstack, rxquantr249_done758, rx241_pos, rx241_rep
    goto rxquantr249_loop757
  rxquantr249_done758:
    nqp_rxpeek $I19, rx241_bstack, rxcap247_fail754
    inc $I19
    set $I11, rx241_bstack[$I19]
    $P11 = rx241_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx241_pos)
    rx241_cstack = rx241_cur."!cursor_capture"($P11, "key")
    goto rxcap247_done753
  rxcap247_fail754:
    goto rx241_fail738
  rxcap247_done753:
    nqp_rxpeek $I19, rx241_bstack, rxquantr244_done748
    inc $I19
    inc $I19
    set rx241_rep, rx241_bstack[$I19]
    nqp_rxcommit rx241_bstack, rxquantr244_done748
    inc rx241_rep
  rxquantr244_done748:
    rx241_cur."!cursor_pass"(rx241_pos, "metachar:sym<{*}>", 'backtrack'=>1)
    .return (rx241_cur)
  rx241_restart737:
    repr_get_attr_obj rx241_cstack, rx241_cur, rx241_curclass, "$!cstack"
  rx241_fail738:
    unless rx241_bstack, rx241_done736
    pop $I19, rx241_bstack
    if_null rx241_cstack, rx241_cstack_done741
    unless rx241_cstack, rx241_cstack_done741
    dec $I19
    set $P11, rx241_cstack[$I19]
  rx241_cstack_done741:
    pop rx241_rep, rx241_bstack
    pop rx241_pos, rx241_bstack
    pop $I19, rx241_bstack
    lt rx241_pos, -1, rx241_done736
    lt rx241_pos, 0, rx241_fail738
    eq $I19, 0, rx241_fail738
    nqp_islist $I20, rx241_cstack
    unless $I20, rx241_jump739
    elements $I18, rx241_bstack
    le $I18, 0, rx241_cut740
    dec $I18
    set $I18, rx241_bstack[$I18]
  rx241_cut740:
    assign rx241_cstack, $I18
  rx241_jump739:
    jump $I19
  rx241_done736:
    rx241_cur."!cursor_fail"()
    .return (rx241_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_54_1346277621.774_caps" :subid("cuid_memo_105_1346277621.774")
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
.sub "cuid_54_1346277621.774_nfa" :subid("cuid_memo_106_1346277621.774")
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
.sub "metachar:sym<assert>" :subid("cuid_55_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx252_restart765
    gt rx252_pos, rx252_eos, rx252_fail766
    repr_get_attr_int $I11, self, rx252_curclass, "$!from"
    ne $I11, -1, rxscan253_done772
    goto rxscan253_scan771
  rxscan253_loop770:
    inc rx252_pos
    gt rx252_pos, rx252_eos, rx252_fail766
    repr_bind_attr_int rx252_cur, rx252_curclass, "$!from", rx252_pos
  rxscan253_scan771:
    nqp_rxmark rx252_bstack, rxscan253_loop770, rx252_pos, 0
  rxscan253_done772:
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail766
    substr $S10, rx252_tgt, rx252_pos, 1
    ne $S10, ucs4:"<", rx252_fail766
    add rx252_pos, 1
    repr_bind_attr_int rx252_cur, rx252_curclass, "$!pos", rx252_pos
    $P11 = rx252_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx252_curclass, "$!pos"
    lt $I11, 0, rx252_fail766
    nqp_rxmark rx252_bstack, rxsubrule254_pass773, -1, 0
  rxsubrule254_pass773:
    rx252_cstack = rx252_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx252_pos, $P11, rx252_curclass, "$!pos"
  alt255_0775:
    nqp_rxmark rx252_bstack, alt255_1776, rx252_pos, 0
    add $I11, rx252_pos, 1
    gt $I11, rx252_eos, rx252_fail766
    substr $S10, rx252_tgt, rx252_pos, 1
    ne $S10, ucs4:">", rx252_fail766
    add rx252_pos, 1
    goto alt255_end774
  alt255_1776:
    repr_bind_attr_int rx252_cur, rx252_curclass, "$!pos", rx252_pos
    $P11 = rx252_cur."panic"("regex assertion not terminated by angle bracket")
    repr_get_attr_int $I11, $P11, rx252_curclass, "$!pos"
    lt $I11, 0, rx252_fail766
    repr_get_attr_int rx252_pos, $P11, rx252_curclass, "$!pos"
  alt255_end774:
    rx252_cur."!cursor_pass"(rx252_pos, "metachar:sym<assert>", 'backtrack'=>1)
    .return (rx252_cur)
  rx252_restart765:
    repr_get_attr_obj rx252_cstack, rx252_cur, rx252_curclass, "$!cstack"
  rx252_fail766:
    unless rx252_bstack, rx252_done764
    pop $I19, rx252_bstack
    if_null rx252_cstack, rx252_cstack_done769
    unless rx252_cstack, rx252_cstack_done769
    dec $I19
    set $P11, rx252_cstack[$I19]
  rx252_cstack_done769:
    pop rx252_rep, rx252_bstack
    pop rx252_pos, rx252_bstack
    pop $I19, rx252_bstack
    lt rx252_pos, -1, rx252_done764
    lt rx252_pos, 0, rx252_fail766
    eq $I19, 0, rx252_fail766
    nqp_islist $I20, rx252_cstack
    unless $I20, rx252_jump767
    elements $I18, rx252_bstack
    le $I18, 0, rx252_cut768
    dec $I18
    set $I18, rx252_bstack[$I18]
  rx252_cut768:
    assign rx252_cstack, $I18
  rx252_jump767:
    jump $I19
  rx252_done764:
    rx252_cur."!cursor_fail"()
    .return (rx252_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_55_1346277621.774_caps" :subid("cuid_memo_107_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_55_1346277621.774_nfa" :subid("cuid_memo_108_1346277621.774")
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
.sub "metachar:sym<var>" :subid("cuid_56_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
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
    eq $I19, 1, rx257_restart780
    gt rx257_pos, rx257_eos, rx257_fail781
    repr_get_attr_int $I11, self, rx257_curclass, "$!from"
    ne $I11, -1, rxscan258_done787
    goto rxscan258_scan786
  rxscan258_loop785:
    inc rx257_pos
    gt rx257_pos, rx257_eos, rx257_fail781
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!from", rx257_pos
  rxscan258_scan786:
    nqp_rxmark rx257_bstack, rxscan258_loop785, rx257_pos, 0
  rxscan258_done787:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt259_0789
    nqp_push_label $P11, alt259_1794
    nqp_rxmark rx257_bstack, alt259_end788, -1, 0
    rx257_cur."!alt"(rx257_pos, "alt_nfa__10_1346277622.93", $P11)
    goto rx257_fail781
  alt259_0789:
    add $I11, rx257_pos, 2
    gt $I11, rx257_eos, rx257_fail781
    substr $S10, rx257_tgt, rx257_pos, 2
    ne $S10, ucs4:"$<", rx257_fail781
    add rx257_pos, 2
    nqp_rxmark rx257_bstack, rxcap260_fail791, rx257_pos, 0
    nqp_rxmark rx257_bstack, rxquantr261_done793, -1, 0
  rxquantr261_loop792:
    ge rx257_pos, rx257_eos, rx257_fail781
    substr $S11, rx257_tgt, rx257_pos, 1
    index $I11, ucs4:">", $S11
    ge $I11, 0, rx257_fail781
    inc rx257_pos
    nqp_rxpeek $I19, rx257_bstack, rxquantr261_done793
    inc $I19
    inc $I19
    set rx257_rep, rx257_bstack[$I19]
    nqp_rxcommit rx257_bstack, rxquantr261_done793
    inc rx257_rep
    nqp_rxmark rx257_bstack, rxquantr261_done793, rx257_pos, rx257_rep
    goto rxquantr261_loop792
  rxquantr261_done793:
    nqp_rxpeek $I19, rx257_bstack, rxcap260_fail791
    inc $I19
    set $I11, rx257_bstack[$I19]
    $P11 = rx257_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx257_pos)
    rx257_cstack = rx257_cur."!cursor_capture"($P11, "name")
    goto rxcap260_done790
  rxcap260_fail791:
    goto rx257_fail781
  rxcap260_done790:
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail781
    substr $S10, rx257_tgt, rx257_pos, 1
    ne $S10, ucs4:">", rx257_fail781
    add rx257_pos, 1
    goto alt259_end788
  alt259_1794:
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail781
    substr $S10, rx257_tgt, rx257_pos, 1
    ne $S10, ucs4:"$", rx257_fail781
    add rx257_pos, 1
    nqp_rxmark rx257_bstack, rxcap262_fail796, rx257_pos, 0
    nqp_rxmark rx257_bstack, rxquantr263_done798, -1, 0
  rxquantr263_loop797:
    ge rx257_pos, rx257_eos, rx257_fail781
    is_cclass $I11, .CCLASS_NUMERIC, rx257_tgt, rx257_pos
    unless $I11, rx257_fail781
    add rx257_pos, 1
    nqp_rxpeek $I19, rx257_bstack, rxquantr263_done798
    inc $I19
    inc $I19
    set rx257_rep, rx257_bstack[$I19]
    nqp_rxcommit rx257_bstack, rxquantr263_done798
    inc rx257_rep
    nqp_rxmark rx257_bstack, rxquantr263_done798, rx257_pos, rx257_rep
    goto rxquantr263_loop797
  rxquantr263_done798:
    nqp_rxpeek $I19, rx257_bstack, rxcap262_fail796
    inc $I19
    set $I11, rx257_bstack[$I19]
    $P11 = rx257_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx257_pos)
    rx257_cstack = rx257_cur."!cursor_capture"($P11, "pos")
    goto rxcap262_done795
  rxcap262_fail796:
    goto rx257_fail781
  rxcap262_done795:
    goto alt259_end788
  alt259_end788:
    nqp_rxcommit rx257_bstack, alt259_end788
    nqp_rxmark rx257_bstack, rxquantr264_done800, rx257_pos, 0
  rxquantr264_loop799:
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."ws"()
    repr_get_attr_int $I11, $P11, rx257_curclass, "$!pos"
    lt $I11, 0, rx257_fail781
    repr_get_attr_int rx257_pos, $P11, rx257_curclass, "$!pos"
    add $I11, rx257_pos, 1
    gt $I11, rx257_eos, rx257_fail781
    substr $S10, rx257_tgt, rx257_pos, 1
    ne $S10, ucs4:"=", rx257_fail781
    add rx257_pos, 1
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."ws"()
    repr_get_attr_int $I11, $P11, rx257_curclass, "$!pos"
    lt $I11, 0, rx257_fail781
    repr_get_attr_int rx257_pos, $P11, rx257_curclass, "$!pos"
    repr_bind_attr_int rx257_cur, rx257_curclass, "$!pos", rx257_pos
    $P11 = rx257_cur."quantified_atom"()
    repr_get_attr_int $I11, $P11, rx257_curclass, "$!pos"
    lt $I11, 0, rx257_fail781
    nqp_rxmark rx257_bstack, rxsubrule267_pass803, -1, 0
  rxsubrule267_pass803:
    rx257_cstack = rx257_cur."!cursor_capture"($P11, "quantified_atom")
    repr_get_attr_int rx257_pos, $P11, rx257_curclass, "$!pos"
    nqp_rxpeek $I19, rx257_bstack, rxquantr264_done800
    inc $I19
    inc $I19
    set rx257_rep, rx257_bstack[$I19]
    nqp_rxcommit rx257_bstack, rxquantr264_done800
    inc rx257_rep
  rxquantr264_done800:
    rx257_cur."!cursor_pass"(rx257_pos, "metachar:sym<var>", 'backtrack'=>1)
    .return (rx257_cur)
  rx257_restart780:
    repr_get_attr_obj rx257_cstack, rx257_cur, rx257_curclass, "$!cstack"
  rx257_fail781:
    unless rx257_bstack, rx257_done779
    pop $I19, rx257_bstack
    if_null rx257_cstack, rx257_cstack_done784
    unless rx257_cstack, rx257_cstack_done784
    dec $I19
    set $P11, rx257_cstack[$I19]
  rx257_cstack_done784:
    pop rx257_rep, rx257_bstack
    pop rx257_pos, rx257_bstack
    pop $I19, rx257_bstack
    lt rx257_pos, -1, rx257_done779
    lt rx257_pos, 0, rx257_fail781
    eq $I19, 0, rx257_fail781
    nqp_islist $I20, rx257_cstack
    unless $I20, rx257_jump782
    elements $I18, rx257_bstack
    le $I18, 0, rx257_cut783
    dec $I18
    set $I18, rx257_bstack[$I18]
  rx257_cut783:
    assign rx257_cstack, $I18
  rx257_jump782:
    jump $I19
  rx257_done779:
    rx257_cur."!cursor_fail"()
    .return (rx257_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_56_1346277621.774_caps" :subid("cuid_memo_109_1346277621.774")
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
.sub "cuid_56_1346277621.774_nfa" :subid("cuid_memo_110_1346277621.774")
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
.sub "cuid_56_1346277621.774_alt_nfa__10_1346277622.93" :subid("cuid_memo_111_1346277621.774")
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
.sub "metachar:sym<PIR>" :subid("cuid_57_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 168
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
    eq $I19, 1, rx268_restart806
    gt rx268_pos, rx268_eos, rx268_fail807
    repr_get_attr_int $I11, self, rx268_curclass, "$!from"
    ne $I11, -1, rxscan269_done813
    goto rxscan269_scan812
  rxscan269_loop811:
    inc rx268_pos
    gt rx268_pos, rx268_eos, rx268_fail807
    repr_bind_attr_int rx268_cur, rx268_curclass, "$!from", rx268_pos
  rxscan269_scan812:
    nqp_rxmark rx268_bstack, rxscan269_loop811, rx268_pos, 0
  rxscan269_done813:
    add $I11, rx268_pos, 6
    gt $I11, rx268_eos, rx268_fail807
    substr $S10, rx268_tgt, rx268_pos, 6
    ne $S10, ucs4:":PIR{{", rx268_fail807
    add rx268_pos, 6
    nqp_rxmark rx268_bstack, rxcap270_fail815, rx268_pos, 0
    set rx268_rep, 0
    nqp_rxmark rx268_bstack, rxquantf271_loop816, rx268_pos, rx268_rep
    goto rxquantf271_done817
  rxquantf271_loop816:
    set $I12, rx268_rep
    ge rx268_pos, rx268_eos, rx268_fail807
    add rx268_pos, 1
    set rx268_rep, $I12
    inc rx268_rep
    nqp_rxmark rx268_bstack, rxquantf271_loop816, rx268_pos, rx268_rep
  rxquantf271_done817:
    nqp_rxpeek $I19, rx268_bstack, rxcap270_fail815
    inc $I19
    set $I11, rx268_bstack[$I19]
    $P11 = rx268_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx268_pos)
    rx268_cstack = rx268_cur."!cursor_capture"($P11, "pir")
    goto rxcap270_done814
  rxcap270_fail815:
    goto rx268_fail807
  rxcap270_done814:
    add $I11, rx268_pos, 2
    gt $I11, rx268_eos, rx268_fail807
    substr $S10, rx268_tgt, rx268_pos, 2
    ne $S10, ucs4:"}}", rx268_fail807
    add rx268_pos, 2
    rx268_cur."!cursor_pass"(rx268_pos, "metachar:sym<PIR>", 'backtrack'=>1)
    .return (rx268_cur)
  rx268_restart806:
    repr_get_attr_obj rx268_cstack, rx268_cur, rx268_curclass, "$!cstack"
  rx268_fail807:
    unless rx268_bstack, rx268_done805
    pop $I19, rx268_bstack
    if_null rx268_cstack, rx268_cstack_done810
    unless rx268_cstack, rx268_cstack_done810
    dec $I19
    set $P11, rx268_cstack[$I19]
  rx268_cstack_done810:
    pop rx268_rep, rx268_bstack
    pop rx268_pos, rx268_bstack
    pop $I19, rx268_bstack
    lt rx268_pos, -1, rx268_done805
    lt rx268_pos, 0, rx268_fail807
    eq $I19, 0, rx268_fail807
    nqp_islist $I20, rx268_cstack
    unless $I20, rx268_jump808
    elements $I18, rx268_bstack
    le $I18, 0, rx268_cut809
    dec $I18
    set $I18, rx268_bstack[$I18]
  rx268_cut809:
    assign rx268_cstack, $I18
  rx268_jump808:
    jump $I19
  rx268_done805:
    rx268_cur."!cursor_fail"()
    .return (rx268_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_57_1346277621.774_caps" :subid("cuid_memo_112_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["pir"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_57_1346277621.774_nfa" :subid("cuid_memo_113_1346277621.774")
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
    box $P5009, 80
    push $P5007, $P5009
    box $P5010, 3
    push $P5007, $P5010
    push $P5001, $P5007
    new $P5011, 'ResizablePMCArray'
    box $P5012, 2
    push $P5011, $P5012
    box $P5013, 73
    push $P5011, $P5013
    box $P5014, 4
    push $P5011, $P5014
    push $P5001, $P5011
    new $P5015, 'ResizablePMCArray'
    box $P5016, 2
    push $P5015, $P5016
    box $P5017, 82
    push $P5015, $P5017
    box $P5018, 5
    push $P5015, $P5018
    push $P5001, $P5015
    new $P5019, 'ResizablePMCArray'
    box $P5020, 2
    push $P5019, $P5020
    box $P5021, 123
    push $P5019, $P5021
    box $P5022, 6
    push $P5019, $P5022
    push $P5001, $P5019
    new $P5023, 'ResizablePMCArray'
    box $P5024, 2
    push $P5023, $P5024
    box $P5025, 123
    push $P5023, $P5025
    box $P5026, 7
    push $P5023, $P5026
    push $P5001, $P5023
    new $P5027, 'ResizablePMCArray'
    box $P5028, 4
    push $P5027, $P5028
    box $P5029, 65535
    push $P5027, $P5029
    box $P5030, 7
    push $P5027, $P5030
    box $P5031, 1
    push $P5027, $P5031
    box $P5032, 0
    push $P5027, $P5032
    box $P5033, 8
    push $P5027, $P5033
    push $P5001, $P5027
    new $P5034, 'ResizablePMCArray'
    box $P5035, 2
    push $P5034, $P5035
    box $P5036, 125
    push $P5034, $P5036
    box $P5037, 9
    push $P5034, $P5037
    push $P5001, $P5034
    new $P5038, 'ResizablePMCArray'
    box $P5039, 2
    push $P5038, $P5039
    box $P5040, 125
    push $P5038, $P5040
    box $P5041, 0
    push $P5038, $P5041
    push $P5001, $P5038
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash" :subid("cuid_58_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 172
    .param pmc self 
    $P5001 = self."!protoregex"("backslash")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<s>" :subid("cuid_59_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 173
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    .local pmc rx272_curclass
    .local pmc rx272_bstack
    .local pmc rx272_cstack
    (rx272_cur, rx272_tgt, rx272_pos, rx272_curclass, rx272_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx272_cur
    length rx272_eos, rx272_tgt
    eq $I19, 1, rx272_restart821
    gt rx272_pos, rx272_eos, rx272_fail822
    repr_get_attr_int $I11, self, rx272_curclass, "$!from"
    ne $I11, -1, rxscan273_done828
    goto rxscan273_scan827
  rxscan273_loop826:
    inc rx272_pos
    gt rx272_pos, rx272_eos, rx272_fail822
    repr_bind_attr_int rx272_cur, rx272_curclass, "$!from", rx272_pos
  rxscan273_scan827:
    nqp_rxmark rx272_bstack, rxscan273_loop826, rx272_pos, 0
  rxscan273_done828:
    nqp_rxmark rx272_bstack, rxcap274_fail830, rx272_pos, 0
    ge rx272_pos, rx272_eos, rx272_fail822
    substr $S11, rx272_tgt, rx272_pos, 1
    index $I11, ucs4:"dDnNsSwW", $S11
    lt $I11, 0, rx272_fail822
    inc rx272_pos
    nqp_rxpeek $I19, rx272_bstack, rxcap274_fail830
    inc $I19
    set $I11, rx272_bstack[$I19]
    $P11 = rx272_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx272_pos)
    rx272_cstack = rx272_cur."!cursor_capture"($P11, "sym")
    goto rxcap274_done829
  rxcap274_fail830:
    goto rx272_fail822
  rxcap274_done829:
    rx272_cur."!cursor_pass"(rx272_pos, "backslash:sym<s>", 'backtrack'=>1)
    .return (rx272_cur)
  rx272_restart821:
    repr_get_attr_obj rx272_cstack, rx272_cur, rx272_curclass, "$!cstack"
  rx272_fail822:
    unless rx272_bstack, rx272_done820
    pop $I19, rx272_bstack
    if_null rx272_cstack, rx272_cstack_done825
    unless rx272_cstack, rx272_cstack_done825
    dec $I19
    set $P11, rx272_cstack[$I19]
  rx272_cstack_done825:
    pop rx272_rep, rx272_bstack
    pop rx272_pos, rx272_bstack
    pop $I19, rx272_bstack
    lt rx272_pos, -1, rx272_done820
    lt rx272_pos, 0, rx272_fail822
    eq $I19, 0, rx272_fail822
    nqp_islist $I20, rx272_cstack
    unless $I20, rx272_jump823
    elements $I18, rx272_bstack
    le $I18, 0, rx272_cut824
    dec $I18
    set $I18, rx272_bstack[$I18]
  rx272_cut824:
    assign rx272_cstack, $I18
  rx272_jump823:
    jump $I19
  rx272_done820:
    rx272_cur."!cursor_fail"()
    .return (rx272_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_59_1346277621.774_caps" :subid("cuid_memo_114_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_59_1346277621.774_nfa" :subid("cuid_memo_115_1346277621.774")
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
.sub "backslash:sym<b>" :subid("cuid_60_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 174
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx275_tgt
    .local int rx275_pos
    .local int rx275_off
    .local int rx275_eos
    .local int rx275_rep
    .local pmc rx275_cur
    .local pmc rx275_curclass
    .local pmc rx275_bstack
    .local pmc rx275_cstack
    (rx275_cur, rx275_tgt, rx275_pos, rx275_curclass, rx275_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx275_cur
    length rx275_eos, rx275_tgt
    eq $I19, 1, rx275_restart833
    gt rx275_pos, rx275_eos, rx275_fail834
    repr_get_attr_int $I11, self, rx275_curclass, "$!from"
    ne $I11, -1, rxscan276_done840
    goto rxscan276_scan839
  rxscan276_loop838:
    inc rx275_pos
    gt rx275_pos, rx275_eos, rx275_fail834
    repr_bind_attr_int rx275_cur, rx275_curclass, "$!from", rx275_pos
  rxscan276_scan839:
    nqp_rxmark rx275_bstack, rxscan276_loop838, rx275_pos, 0
  rxscan276_done840:
    nqp_rxmark rx275_bstack, rxcap277_fail842, rx275_pos, 0
    ge rx275_pos, rx275_eos, rx275_fail834
    substr $S11, rx275_tgt, rx275_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx275_fail834
    inc rx275_pos
    nqp_rxpeek $I19, rx275_bstack, rxcap277_fail842
    inc $I19
    set $I11, rx275_bstack[$I19]
    $P11 = rx275_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx275_pos)
    rx275_cstack = rx275_cur."!cursor_capture"($P11, "sym")
    goto rxcap277_done841
  rxcap277_fail842:
    goto rx275_fail834
  rxcap277_done841:
    rx275_cur."!cursor_pass"(rx275_pos, "backslash:sym<b>", 'backtrack'=>1)
    .return (rx275_cur)
  rx275_restart833:
    repr_get_attr_obj rx275_cstack, rx275_cur, rx275_curclass, "$!cstack"
  rx275_fail834:
    unless rx275_bstack, rx275_done832
    pop $I19, rx275_bstack
    if_null rx275_cstack, rx275_cstack_done837
    unless rx275_cstack, rx275_cstack_done837
    dec $I19
    set $P11, rx275_cstack[$I19]
  rx275_cstack_done837:
    pop rx275_rep, rx275_bstack
    pop rx275_pos, rx275_bstack
    pop $I19, rx275_bstack
    lt rx275_pos, -1, rx275_done832
    lt rx275_pos, 0, rx275_fail834
    eq $I19, 0, rx275_fail834
    nqp_islist $I20, rx275_cstack
    unless $I20, rx275_jump835
    elements $I18, rx275_bstack
    le $I18, 0, rx275_cut836
    dec $I18
    set $I18, rx275_bstack[$I18]
  rx275_cut836:
    assign rx275_cstack, $I18
  rx275_jump835:
    jump $I19
  rx275_done832:
    rx275_cur."!cursor_fail"()
    .return (rx275_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_60_1346277621.774_caps" :subid("cuid_memo_116_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_60_1346277621.774_nfa" :subid("cuid_memo_117_1346277621.774")
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
.sub "backslash:sym<e>" :subid("cuid_61_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 175
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx278_tgt
    .local int rx278_pos
    .local int rx278_off
    .local int rx278_eos
    .local int rx278_rep
    .local pmc rx278_cur
    .local pmc rx278_curclass
    .local pmc rx278_bstack
    .local pmc rx278_cstack
    (rx278_cur, rx278_tgt, rx278_pos, rx278_curclass, rx278_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx278_cur
    length rx278_eos, rx278_tgt
    eq $I19, 1, rx278_restart845
    gt rx278_pos, rx278_eos, rx278_fail846
    repr_get_attr_int $I11, self, rx278_curclass, "$!from"
    ne $I11, -1, rxscan279_done852
    goto rxscan279_scan851
  rxscan279_loop850:
    inc rx278_pos
    gt rx278_pos, rx278_eos, rx278_fail846
    repr_bind_attr_int rx278_cur, rx278_curclass, "$!from", rx278_pos
  rxscan279_scan851:
    nqp_rxmark rx278_bstack, rxscan279_loop850, rx278_pos, 0
  rxscan279_done852:
    nqp_rxmark rx278_bstack, rxcap280_fail854, rx278_pos, 0
    ge rx278_pos, rx278_eos, rx278_fail846
    substr $S11, rx278_tgt, rx278_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx278_fail846
    inc rx278_pos
    nqp_rxpeek $I19, rx278_bstack, rxcap280_fail854
    inc $I19
    set $I11, rx278_bstack[$I19]
    $P11 = rx278_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx278_pos)
    rx278_cstack = rx278_cur."!cursor_capture"($P11, "sym")
    goto rxcap280_done853
  rxcap280_fail854:
    goto rx278_fail846
  rxcap280_done853:
    rx278_cur."!cursor_pass"(rx278_pos, "backslash:sym<e>", 'backtrack'=>1)
    .return (rx278_cur)
  rx278_restart845:
    repr_get_attr_obj rx278_cstack, rx278_cur, rx278_curclass, "$!cstack"
  rx278_fail846:
    unless rx278_bstack, rx278_done844
    pop $I19, rx278_bstack
    if_null rx278_cstack, rx278_cstack_done849
    unless rx278_cstack, rx278_cstack_done849
    dec $I19
    set $P11, rx278_cstack[$I19]
  rx278_cstack_done849:
    pop rx278_rep, rx278_bstack
    pop rx278_pos, rx278_bstack
    pop $I19, rx278_bstack
    lt rx278_pos, -1, rx278_done844
    lt rx278_pos, 0, rx278_fail846
    eq $I19, 0, rx278_fail846
    nqp_islist $I20, rx278_cstack
    unless $I20, rx278_jump847
    elements $I18, rx278_bstack
    le $I18, 0, rx278_cut848
    dec $I18
    set $I18, rx278_bstack[$I18]
  rx278_cut848:
    assign rx278_cstack, $I18
  rx278_jump847:
    jump $I19
  rx278_done844:
    rx278_cur."!cursor_fail"()
    .return (rx278_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_61_1346277621.774_caps" :subid("cuid_memo_118_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_61_1346277621.774_nfa" :subid("cuid_memo_119_1346277621.774")
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
.sub "backslash:sym<f>" :subid("cuid_62_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx281_tgt
    .local int rx281_pos
    .local int rx281_off
    .local int rx281_eos
    .local int rx281_rep
    .local pmc rx281_cur
    .local pmc rx281_curclass
    .local pmc rx281_bstack
    .local pmc rx281_cstack
    (rx281_cur, rx281_tgt, rx281_pos, rx281_curclass, rx281_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx281_cur
    length rx281_eos, rx281_tgt
    eq $I19, 1, rx281_restart857
    gt rx281_pos, rx281_eos, rx281_fail858
    repr_get_attr_int $I11, self, rx281_curclass, "$!from"
    ne $I11, -1, rxscan282_done864
    goto rxscan282_scan863
  rxscan282_loop862:
    inc rx281_pos
    gt rx281_pos, rx281_eos, rx281_fail858
    repr_bind_attr_int rx281_cur, rx281_curclass, "$!from", rx281_pos
  rxscan282_scan863:
    nqp_rxmark rx281_bstack, rxscan282_loop862, rx281_pos, 0
  rxscan282_done864:
    nqp_rxmark rx281_bstack, rxcap283_fail866, rx281_pos, 0
    ge rx281_pos, rx281_eos, rx281_fail858
    substr $S11, rx281_tgt, rx281_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx281_fail858
    inc rx281_pos
    nqp_rxpeek $I19, rx281_bstack, rxcap283_fail866
    inc $I19
    set $I11, rx281_bstack[$I19]
    $P11 = rx281_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx281_pos)
    rx281_cstack = rx281_cur."!cursor_capture"($P11, "sym")
    goto rxcap283_done865
  rxcap283_fail866:
    goto rx281_fail858
  rxcap283_done865:
    rx281_cur."!cursor_pass"(rx281_pos, "backslash:sym<f>", 'backtrack'=>1)
    .return (rx281_cur)
  rx281_restart857:
    repr_get_attr_obj rx281_cstack, rx281_cur, rx281_curclass, "$!cstack"
  rx281_fail858:
    unless rx281_bstack, rx281_done856
    pop $I19, rx281_bstack
    if_null rx281_cstack, rx281_cstack_done861
    unless rx281_cstack, rx281_cstack_done861
    dec $I19
    set $P11, rx281_cstack[$I19]
  rx281_cstack_done861:
    pop rx281_rep, rx281_bstack
    pop rx281_pos, rx281_bstack
    pop $I19, rx281_bstack
    lt rx281_pos, -1, rx281_done856
    lt rx281_pos, 0, rx281_fail858
    eq $I19, 0, rx281_fail858
    nqp_islist $I20, rx281_cstack
    unless $I20, rx281_jump859
    elements $I18, rx281_bstack
    le $I18, 0, rx281_cut860
    dec $I18
    set $I18, rx281_bstack[$I18]
  rx281_cut860:
    assign rx281_cstack, $I18
  rx281_jump859:
    jump $I19
  rx281_done856:
    rx281_cur."!cursor_fail"()
    .return (rx281_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_62_1346277621.774_caps" :subid("cuid_memo_120_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_62_1346277621.774_nfa" :subid("cuid_memo_121_1346277621.774")
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
.sub "backslash:sym<h>" :subid("cuid_63_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 177
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx284_tgt
    .local int rx284_pos
    .local int rx284_off
    .local int rx284_eos
    .local int rx284_rep
    .local pmc rx284_cur
    .local pmc rx284_curclass
    .local pmc rx284_bstack
    .local pmc rx284_cstack
    (rx284_cur, rx284_tgt, rx284_pos, rx284_curclass, rx284_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx284_cur
    length rx284_eos, rx284_tgt
    eq $I19, 1, rx284_restart869
    gt rx284_pos, rx284_eos, rx284_fail870
    repr_get_attr_int $I11, self, rx284_curclass, "$!from"
    ne $I11, -1, rxscan285_done876
    goto rxscan285_scan875
  rxscan285_loop874:
    inc rx284_pos
    gt rx284_pos, rx284_eos, rx284_fail870
    repr_bind_attr_int rx284_cur, rx284_curclass, "$!from", rx284_pos
  rxscan285_scan875:
    nqp_rxmark rx284_bstack, rxscan285_loop874, rx284_pos, 0
  rxscan285_done876:
    nqp_rxmark rx284_bstack, rxcap286_fail878, rx284_pos, 0
    ge rx284_pos, rx284_eos, rx284_fail870
    substr $S11, rx284_tgt, rx284_pos, 1
    index $I11, ucs4:"hH", $S11
    lt $I11, 0, rx284_fail870
    inc rx284_pos
    nqp_rxpeek $I19, rx284_bstack, rxcap286_fail878
    inc $I19
    set $I11, rx284_bstack[$I19]
    $P11 = rx284_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx284_pos)
    rx284_cstack = rx284_cur."!cursor_capture"($P11, "sym")
    goto rxcap286_done877
  rxcap286_fail878:
    goto rx284_fail870
  rxcap286_done877:
    rx284_cur."!cursor_pass"(rx284_pos, "backslash:sym<h>", 'backtrack'=>1)
    .return (rx284_cur)
  rx284_restart869:
    repr_get_attr_obj rx284_cstack, rx284_cur, rx284_curclass, "$!cstack"
  rx284_fail870:
    unless rx284_bstack, rx284_done868
    pop $I19, rx284_bstack
    if_null rx284_cstack, rx284_cstack_done873
    unless rx284_cstack, rx284_cstack_done873
    dec $I19
    set $P11, rx284_cstack[$I19]
  rx284_cstack_done873:
    pop rx284_rep, rx284_bstack
    pop rx284_pos, rx284_bstack
    pop $I19, rx284_bstack
    lt rx284_pos, -1, rx284_done868
    lt rx284_pos, 0, rx284_fail870
    eq $I19, 0, rx284_fail870
    nqp_islist $I20, rx284_cstack
    unless $I20, rx284_jump871
    elements $I18, rx284_bstack
    le $I18, 0, rx284_cut872
    dec $I18
    set $I18, rx284_bstack[$I18]
  rx284_cut872:
    assign rx284_cstack, $I18
  rx284_jump871:
    jump $I19
  rx284_done868:
    rx284_cur."!cursor_fail"()
    .return (rx284_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_63_1346277621.774_caps" :subid("cuid_memo_122_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_63_1346277621.774_nfa" :subid("cuid_memo_123_1346277621.774")
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
.sub "backslash:sym<r>" :subid("cuid_64_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx287_tgt
    .local int rx287_pos
    .local int rx287_off
    .local int rx287_eos
    .local int rx287_rep
    .local pmc rx287_cur
    .local pmc rx287_curclass
    .local pmc rx287_bstack
    .local pmc rx287_cstack
    (rx287_cur, rx287_tgt, rx287_pos, rx287_curclass, rx287_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx287_cur
    length rx287_eos, rx287_tgt
    eq $I19, 1, rx287_restart881
    gt rx287_pos, rx287_eos, rx287_fail882
    repr_get_attr_int $I11, self, rx287_curclass, "$!from"
    ne $I11, -1, rxscan288_done888
    goto rxscan288_scan887
  rxscan288_loop886:
    inc rx287_pos
    gt rx287_pos, rx287_eos, rx287_fail882
    repr_bind_attr_int rx287_cur, rx287_curclass, "$!from", rx287_pos
  rxscan288_scan887:
    nqp_rxmark rx287_bstack, rxscan288_loop886, rx287_pos, 0
  rxscan288_done888:
    nqp_rxmark rx287_bstack, rxcap289_fail890, rx287_pos, 0
    ge rx287_pos, rx287_eos, rx287_fail882
    substr $S11, rx287_tgt, rx287_pos, 1
    index $I11, ucs4:"rR", $S11
    lt $I11, 0, rx287_fail882
    inc rx287_pos
    nqp_rxpeek $I19, rx287_bstack, rxcap289_fail890
    inc $I19
    set $I11, rx287_bstack[$I19]
    $P11 = rx287_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx287_pos)
    rx287_cstack = rx287_cur."!cursor_capture"($P11, "sym")
    goto rxcap289_done889
  rxcap289_fail890:
    goto rx287_fail882
  rxcap289_done889:
    rx287_cur."!cursor_pass"(rx287_pos, "backslash:sym<r>", 'backtrack'=>1)
    .return (rx287_cur)
  rx287_restart881:
    repr_get_attr_obj rx287_cstack, rx287_cur, rx287_curclass, "$!cstack"
  rx287_fail882:
    unless rx287_bstack, rx287_done880
    pop $I19, rx287_bstack
    if_null rx287_cstack, rx287_cstack_done885
    unless rx287_cstack, rx287_cstack_done885
    dec $I19
    set $P11, rx287_cstack[$I19]
  rx287_cstack_done885:
    pop rx287_rep, rx287_bstack
    pop rx287_pos, rx287_bstack
    pop $I19, rx287_bstack
    lt rx287_pos, -1, rx287_done880
    lt rx287_pos, 0, rx287_fail882
    eq $I19, 0, rx287_fail882
    nqp_islist $I20, rx287_cstack
    unless $I20, rx287_jump883
    elements $I18, rx287_bstack
    le $I18, 0, rx287_cut884
    dec $I18
    set $I18, rx287_bstack[$I18]
  rx287_cut884:
    assign rx287_cstack, $I18
  rx287_jump883:
    jump $I19
  rx287_done880:
    rx287_cur."!cursor_fail"()
    .return (rx287_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_64_1346277621.774_caps" :subid("cuid_memo_124_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_64_1346277621.774_nfa" :subid("cuid_memo_125_1346277621.774")
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
.sub "backslash:sym<t>" :subid("cuid_65_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 179
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx290_tgt
    .local int rx290_pos
    .local int rx290_off
    .local int rx290_eos
    .local int rx290_rep
    .local pmc rx290_cur
    .local pmc rx290_curclass
    .local pmc rx290_bstack
    .local pmc rx290_cstack
    (rx290_cur, rx290_tgt, rx290_pos, rx290_curclass, rx290_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx290_cur
    length rx290_eos, rx290_tgt
    eq $I19, 1, rx290_restart893
    gt rx290_pos, rx290_eos, rx290_fail894
    repr_get_attr_int $I11, self, rx290_curclass, "$!from"
    ne $I11, -1, rxscan291_done900
    goto rxscan291_scan899
  rxscan291_loop898:
    inc rx290_pos
    gt rx290_pos, rx290_eos, rx290_fail894
    repr_bind_attr_int rx290_cur, rx290_curclass, "$!from", rx290_pos
  rxscan291_scan899:
    nqp_rxmark rx290_bstack, rxscan291_loop898, rx290_pos, 0
  rxscan291_done900:
    nqp_rxmark rx290_bstack, rxcap292_fail902, rx290_pos, 0
    ge rx290_pos, rx290_eos, rx290_fail894
    substr $S11, rx290_tgt, rx290_pos, 1
    index $I11, ucs4:"tT", $S11
    lt $I11, 0, rx290_fail894
    inc rx290_pos
    nqp_rxpeek $I19, rx290_bstack, rxcap292_fail902
    inc $I19
    set $I11, rx290_bstack[$I19]
    $P11 = rx290_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx290_pos)
    rx290_cstack = rx290_cur."!cursor_capture"($P11, "sym")
    goto rxcap292_done901
  rxcap292_fail902:
    goto rx290_fail894
  rxcap292_done901:
    rx290_cur."!cursor_pass"(rx290_pos, "backslash:sym<t>", 'backtrack'=>1)
    .return (rx290_cur)
  rx290_restart893:
    repr_get_attr_obj rx290_cstack, rx290_cur, rx290_curclass, "$!cstack"
  rx290_fail894:
    unless rx290_bstack, rx290_done892
    pop $I19, rx290_bstack
    if_null rx290_cstack, rx290_cstack_done897
    unless rx290_cstack, rx290_cstack_done897
    dec $I19
    set $P11, rx290_cstack[$I19]
  rx290_cstack_done897:
    pop rx290_rep, rx290_bstack
    pop rx290_pos, rx290_bstack
    pop $I19, rx290_bstack
    lt rx290_pos, -1, rx290_done892
    lt rx290_pos, 0, rx290_fail894
    eq $I19, 0, rx290_fail894
    nqp_islist $I20, rx290_cstack
    unless $I20, rx290_jump895
    elements $I18, rx290_bstack
    le $I18, 0, rx290_cut896
    dec $I18
    set $I18, rx290_bstack[$I18]
  rx290_cut896:
    assign rx290_cstack, $I18
  rx290_jump895:
    jump $I19
  rx290_done892:
    rx290_cur."!cursor_fail"()
    .return (rx290_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_65_1346277621.774_caps" :subid("cuid_memo_126_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_65_1346277621.774_nfa" :subid("cuid_memo_127_1346277621.774")
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
.sub "backslash:sym<v>" :subid("cuid_66_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 180
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx293_tgt
    .local int rx293_pos
    .local int rx293_off
    .local int rx293_eos
    .local int rx293_rep
    .local pmc rx293_cur
    .local pmc rx293_curclass
    .local pmc rx293_bstack
    .local pmc rx293_cstack
    (rx293_cur, rx293_tgt, rx293_pos, rx293_curclass, rx293_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx293_cur
    length rx293_eos, rx293_tgt
    eq $I19, 1, rx293_restart905
    gt rx293_pos, rx293_eos, rx293_fail906
    repr_get_attr_int $I11, self, rx293_curclass, "$!from"
    ne $I11, -1, rxscan294_done912
    goto rxscan294_scan911
  rxscan294_loop910:
    inc rx293_pos
    gt rx293_pos, rx293_eos, rx293_fail906
    repr_bind_attr_int rx293_cur, rx293_curclass, "$!from", rx293_pos
  rxscan294_scan911:
    nqp_rxmark rx293_bstack, rxscan294_loop910, rx293_pos, 0
  rxscan294_done912:
    nqp_rxmark rx293_bstack, rxcap295_fail914, rx293_pos, 0
    ge rx293_pos, rx293_eos, rx293_fail906
    substr $S11, rx293_tgt, rx293_pos, 1
    index $I11, ucs4:"vV", $S11
    lt $I11, 0, rx293_fail906
    inc rx293_pos
    nqp_rxpeek $I19, rx293_bstack, rxcap295_fail914
    inc $I19
    set $I11, rx293_bstack[$I19]
    $P11 = rx293_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx293_pos)
    rx293_cstack = rx293_cur."!cursor_capture"($P11, "sym")
    goto rxcap295_done913
  rxcap295_fail914:
    goto rx293_fail906
  rxcap295_done913:
    rx293_cur."!cursor_pass"(rx293_pos, "backslash:sym<v>", 'backtrack'=>1)
    .return (rx293_cur)
  rx293_restart905:
    repr_get_attr_obj rx293_cstack, rx293_cur, rx293_curclass, "$!cstack"
  rx293_fail906:
    unless rx293_bstack, rx293_done904
    pop $I19, rx293_bstack
    if_null rx293_cstack, rx293_cstack_done909
    unless rx293_cstack, rx293_cstack_done909
    dec $I19
    set $P11, rx293_cstack[$I19]
  rx293_cstack_done909:
    pop rx293_rep, rx293_bstack
    pop rx293_pos, rx293_bstack
    pop $I19, rx293_bstack
    lt rx293_pos, -1, rx293_done904
    lt rx293_pos, 0, rx293_fail906
    eq $I19, 0, rx293_fail906
    nqp_islist $I20, rx293_cstack
    unless $I20, rx293_jump907
    elements $I18, rx293_bstack
    le $I18, 0, rx293_cut908
    dec $I18
    set $I18, rx293_bstack[$I18]
  rx293_cut908:
    assign rx293_cstack, $I18
  rx293_jump907:
    jump $I19
  rx293_done904:
    rx293_cur."!cursor_fail"()
    .return (rx293_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_66_1346277621.774_caps" :subid("cuid_memo_128_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_66_1346277621.774_nfa" :subid("cuid_memo_129_1346277621.774")
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
.sub "backslash:sym<o>" :subid("cuid_67_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 181
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx296_tgt
    .local int rx296_pos
    .local int rx296_off
    .local int rx296_eos
    .local int rx296_rep
    .local pmc rx296_cur
    .local pmc rx296_curclass
    .local pmc rx296_bstack
    .local pmc rx296_cstack
    (rx296_cur, rx296_tgt, rx296_pos, rx296_curclass, rx296_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx296_cur
    length rx296_eos, rx296_tgt
    eq $I19, 1, rx296_restart917
    gt rx296_pos, rx296_eos, rx296_fail918
    repr_get_attr_int $I11, self, rx296_curclass, "$!from"
    ne $I11, -1, rxscan297_done924
    goto rxscan297_scan923
  rxscan297_loop922:
    inc rx296_pos
    gt rx296_pos, rx296_eos, rx296_fail918
    repr_bind_attr_int rx296_cur, rx296_curclass, "$!from", rx296_pos
  rxscan297_scan923:
    nqp_rxmark rx296_bstack, rxscan297_loop922, rx296_pos, 0
  rxscan297_done924:
    nqp_rxmark rx296_bstack, rxcap298_fail926, rx296_pos, 0
    ge rx296_pos, rx296_eos, rx296_fail918
    substr $S11, rx296_tgt, rx296_pos, 1
    index $I11, ucs4:"oO", $S11
    lt $I11, 0, rx296_fail918
    inc rx296_pos
    nqp_rxpeek $I19, rx296_bstack, rxcap298_fail926
    inc $I19
    set $I11, rx296_bstack[$I19]
    $P11 = rx296_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx296_pos)
    rx296_cstack = rx296_cur."!cursor_capture"($P11, "sym")
    goto rxcap298_done925
  rxcap298_fail926:
    goto rx296_fail918
  rxcap298_done925:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt299_0928
    nqp_push_label $P11, alt299_1930
    nqp_rxmark rx296_bstack, alt299_end927, -1, 0
    rx296_cur."!alt"(rx296_pos, "alt_nfa__11_1346277623.051", $P11)
    goto rx296_fail918
  alt299_0928:
    repr_bind_attr_int rx296_cur, rx296_curclass, "$!pos", rx296_pos
    $P11 = rx296_cur."octint"()
    repr_get_attr_int $I11, $P11, rx296_curclass, "$!pos"
    lt $I11, 0, rx296_fail918
    nqp_rxmark rx296_bstack, rxsubrule300_pass929, -1, 0
  rxsubrule300_pass929:
    rx296_cstack = rx296_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx296_pos, $P11, rx296_curclass, "$!pos"
    goto alt299_end927
  alt299_1930:
    add $I11, rx296_pos, 1
    gt $I11, rx296_eos, rx296_fail918
    substr $S10, rx296_tgt, rx296_pos, 1
    ne $S10, ucs4:"[", rx296_fail918
    add rx296_pos, 1
    repr_bind_attr_int rx296_cur, rx296_curclass, "$!pos", rx296_pos
    $P11 = rx296_cur."octints"()
    repr_get_attr_int $I11, $P11, rx296_curclass, "$!pos"
    lt $I11, 0, rx296_fail918
    nqp_rxmark rx296_bstack, rxsubrule301_pass931, -1, 0
  rxsubrule301_pass931:
    rx296_cstack = rx296_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx296_pos, $P11, rx296_curclass, "$!pos"
    add $I11, rx296_pos, 1
    gt $I11, rx296_eos, rx296_fail918
    substr $S10, rx296_tgt, rx296_pos, 1
    ne $S10, ucs4:"]", rx296_fail918
    add rx296_pos, 1
    goto alt299_end927
  alt299_end927:
    nqp_rxcommit rx296_bstack, alt299_end927
    rx296_cur."!cursor_pass"(rx296_pos, "backslash:sym<o>", 'backtrack'=>1)
    .return (rx296_cur)
  rx296_restart917:
    repr_get_attr_obj rx296_cstack, rx296_cur, rx296_curclass, "$!cstack"
  rx296_fail918:
    unless rx296_bstack, rx296_done916
    pop $I19, rx296_bstack
    if_null rx296_cstack, rx296_cstack_done921
    unless rx296_cstack, rx296_cstack_done921
    dec $I19
    set $P11, rx296_cstack[$I19]
  rx296_cstack_done921:
    pop rx296_rep, rx296_bstack
    pop rx296_pos, rx296_bstack
    pop $I19, rx296_bstack
    lt rx296_pos, -1, rx296_done916
    lt rx296_pos, 0, rx296_fail918
    eq $I19, 0, rx296_fail918
    nqp_islist $I20, rx296_cstack
    unless $I20, rx296_jump919
    elements $I18, rx296_bstack
    le $I18, 0, rx296_cut920
    dec $I18
    set $I18, rx296_bstack[$I18]
  rx296_cut920:
    assign rx296_cstack, $I18
  rx296_jump919:
    jump $I19
  rx296_done916:
    rx296_cur."!cursor_fail"()
    .return (rx296_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_67_1346277621.774_caps" :subid("cuid_memo_130_1346277621.774")
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
.sub "cuid_67_1346277621.774_nfa" :subid("cuid_memo_131_1346277621.774")
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
.sub "cuid_67_1346277621.774_alt_nfa__11_1346277623.051" :subid("cuid_memo_132_1346277621.774")
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
.sub "backslash:sym<x>" :subid("cuid_68_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 182
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx302_tgt
    .local int rx302_pos
    .local int rx302_off
    .local int rx302_eos
    .local int rx302_rep
    .local pmc rx302_cur
    .local pmc rx302_curclass
    .local pmc rx302_bstack
    .local pmc rx302_cstack
    (rx302_cur, rx302_tgt, rx302_pos, rx302_curclass, rx302_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx302_cur
    length rx302_eos, rx302_tgt
    eq $I19, 1, rx302_restart934
    gt rx302_pos, rx302_eos, rx302_fail935
    repr_get_attr_int $I11, self, rx302_curclass, "$!from"
    ne $I11, -1, rxscan303_done941
    goto rxscan303_scan940
  rxscan303_loop939:
    inc rx302_pos
    gt rx302_pos, rx302_eos, rx302_fail935
    repr_bind_attr_int rx302_cur, rx302_curclass, "$!from", rx302_pos
  rxscan303_scan940:
    nqp_rxmark rx302_bstack, rxscan303_loop939, rx302_pos, 0
  rxscan303_done941:
    nqp_rxmark rx302_bstack, rxcap304_fail943, rx302_pos, 0
    ge rx302_pos, rx302_eos, rx302_fail935
    substr $S11, rx302_tgt, rx302_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx302_fail935
    inc rx302_pos
    nqp_rxpeek $I19, rx302_bstack, rxcap304_fail943
    inc $I19
    set $I11, rx302_bstack[$I19]
    $P11 = rx302_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx302_pos)
    rx302_cstack = rx302_cur."!cursor_capture"($P11, "sym")
    goto rxcap304_done942
  rxcap304_fail943:
    goto rx302_fail935
  rxcap304_done942:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt305_0945
    nqp_push_label $P11, alt305_1947
    nqp_rxmark rx302_bstack, alt305_end944, -1, 0
    rx302_cur."!alt"(rx302_pos, "alt_nfa__12_1346277623.073", $P11)
    goto rx302_fail935
  alt305_0945:
    repr_bind_attr_int rx302_cur, rx302_curclass, "$!pos", rx302_pos
    $P11 = rx302_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx302_curclass, "$!pos"
    lt $I11, 0, rx302_fail935
    nqp_rxmark rx302_bstack, rxsubrule306_pass946, -1, 0
  rxsubrule306_pass946:
    rx302_cstack = rx302_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx302_pos, $P11, rx302_curclass, "$!pos"
    goto alt305_end944
  alt305_1947:
    add $I11, rx302_pos, 1
    gt $I11, rx302_eos, rx302_fail935
    substr $S10, rx302_tgt, rx302_pos, 1
    ne $S10, ucs4:"[", rx302_fail935
    add rx302_pos, 1
    repr_bind_attr_int rx302_cur, rx302_curclass, "$!pos", rx302_pos
    $P11 = rx302_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx302_curclass, "$!pos"
    lt $I11, 0, rx302_fail935
    nqp_rxmark rx302_bstack, rxsubrule307_pass948, -1, 0
  rxsubrule307_pass948:
    rx302_cstack = rx302_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx302_pos, $P11, rx302_curclass, "$!pos"
    add $I11, rx302_pos, 1
    gt $I11, rx302_eos, rx302_fail935
    substr $S10, rx302_tgt, rx302_pos, 1
    ne $S10, ucs4:"]", rx302_fail935
    add rx302_pos, 1
    goto alt305_end944
  alt305_end944:
    nqp_rxcommit rx302_bstack, alt305_end944
    rx302_cur."!cursor_pass"(rx302_pos, "backslash:sym<x>", 'backtrack'=>1)
    .return (rx302_cur)
  rx302_restart934:
    repr_get_attr_obj rx302_cstack, rx302_cur, rx302_curclass, "$!cstack"
  rx302_fail935:
    unless rx302_bstack, rx302_done933
    pop $I19, rx302_bstack
    if_null rx302_cstack, rx302_cstack_done938
    unless rx302_cstack, rx302_cstack_done938
    dec $I19
    set $P11, rx302_cstack[$I19]
  rx302_cstack_done938:
    pop rx302_rep, rx302_bstack
    pop rx302_pos, rx302_bstack
    pop $I19, rx302_bstack
    lt rx302_pos, -1, rx302_done933
    lt rx302_pos, 0, rx302_fail935
    eq $I19, 0, rx302_fail935
    nqp_islist $I20, rx302_cstack
    unless $I20, rx302_jump936
    elements $I18, rx302_bstack
    le $I18, 0, rx302_cut937
    dec $I18
    set $I18, rx302_bstack[$I18]
  rx302_cut937:
    assign rx302_cstack, $I18
  rx302_jump936:
    jump $I19
  rx302_done933:
    rx302_cur."!cursor_fail"()
    .return (rx302_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_68_1346277621.774_caps" :subid("cuid_memo_133_1346277621.774")
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
.sub "cuid_68_1346277621.774_nfa" :subid("cuid_memo_134_1346277621.774")
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
.sub "cuid_68_1346277621.774_alt_nfa__12_1346277623.073" :subid("cuid_memo_135_1346277621.774")
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
.sub "backslash:sym<c>" :subid("cuid_69_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 183
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
    eq $I19, 1, rx308_restart951
    gt rx308_pos, rx308_eos, rx308_fail952
    repr_get_attr_int $I11, self, rx308_curclass, "$!from"
    ne $I11, -1, rxscan309_done958
    goto rxscan309_scan957
  rxscan309_loop956:
    inc rx308_pos
    gt rx308_pos, rx308_eos, rx308_fail952
    repr_bind_attr_int rx308_cur, rx308_curclass, "$!from", rx308_pos
  rxscan309_scan957:
    nqp_rxmark rx308_bstack, rxscan309_loop956, rx308_pos, 0
  rxscan309_done958:
    nqp_rxmark rx308_bstack, rxcap310_fail960, rx308_pos, 0
    ge rx308_pos, rx308_eos, rx308_fail952
    substr $S11, rx308_tgt, rx308_pos, 1
    index $I11, ucs4:"cC", $S11
    lt $I11, 0, rx308_fail952
    inc rx308_pos
    nqp_rxpeek $I19, rx308_bstack, rxcap310_fail960
    inc $I19
    set $I11, rx308_bstack[$I19]
    $P11 = rx308_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx308_pos)
    rx308_cstack = rx308_cur."!cursor_capture"($P11, "sym")
    goto rxcap310_done959
  rxcap310_fail960:
    goto rx308_fail952
  rxcap310_done959:
    repr_bind_attr_int rx308_cur, rx308_curclass, "$!pos", rx308_pos
    $P11 = rx308_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx308_curclass, "$!pos"
    lt $I11, 0, rx308_fail952
    nqp_rxmark rx308_bstack, rxsubrule311_pass961, -1, 0
  rxsubrule311_pass961:
    rx308_cstack = rx308_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx308_pos, $P11, rx308_curclass, "$!pos"
    rx308_cur."!cursor_pass"(rx308_pos, "backslash:sym<c>", 'backtrack'=>1)
    .return (rx308_cur)
  rx308_restart951:
    repr_get_attr_obj rx308_cstack, rx308_cur, rx308_curclass, "$!cstack"
  rx308_fail952:
    unless rx308_bstack, rx308_done950
    pop $I19, rx308_bstack
    if_null rx308_cstack, rx308_cstack_done955
    unless rx308_cstack, rx308_cstack_done955
    dec $I19
    set $P11, rx308_cstack[$I19]
  rx308_cstack_done955:
    pop rx308_rep, rx308_bstack
    pop rx308_pos, rx308_bstack
    pop $I19, rx308_bstack
    lt rx308_pos, -1, rx308_done950
    lt rx308_pos, 0, rx308_fail952
    eq $I19, 0, rx308_fail952
    nqp_islist $I20, rx308_cstack
    unless $I20, rx308_jump953
    elements $I18, rx308_bstack
    le $I18, 0, rx308_cut954
    dec $I18
    set $I18, rx308_bstack[$I18]
  rx308_cut954:
    assign rx308_cstack, $I18
  rx308_jump953:
    jump $I19
  rx308_done950:
    rx308_cur."!cursor_fail"()
    .return (rx308_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_69_1346277621.774_caps" :subid("cuid_memo_136_1346277621.774")
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
.sub "cuid_69_1346277621.774_nfa" :subid("cuid_memo_137_1346277621.774")
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
.sub "backslash:sym<A>" :subid("cuid_70_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 184
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx312_tgt
    .local int rx312_pos
    .local int rx312_off
    .local int rx312_eos
    .local int rx312_rep
    .local pmc rx312_cur
    .local pmc rx312_curclass
    .local pmc rx312_bstack
    .local pmc rx312_cstack
    (rx312_cur, rx312_tgt, rx312_pos, rx312_curclass, rx312_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx312_cur
    length rx312_eos, rx312_tgt
    eq $I19, 1, rx312_restart964
    gt rx312_pos, rx312_eos, rx312_fail965
    repr_get_attr_int $I11, self, rx312_curclass, "$!from"
    ne $I11, -1, rxscan313_done971
    goto rxscan313_scan970
  rxscan313_loop969:
    inc rx312_pos
    gt rx312_pos, rx312_eos, rx312_fail965
    repr_bind_attr_int rx312_cur, rx312_curclass, "$!from", rx312_pos
  rxscan313_scan970:
    nqp_rxmark rx312_bstack, rxscan313_loop969, rx312_pos, 0
  rxscan313_done971:
    add $I11, rx312_pos, 1
    gt $I11, rx312_eos, rx312_fail965
    substr $S10, rx312_tgt, rx312_pos, 1
    ne $S10, ucs4:"A", rx312_fail965
    add rx312_pos, 1
    repr_bind_attr_int rx312_cur, rx312_curclass, "$!pos", rx312_pos
    $P11 = rx312_cur."obs"("\\\\A as beginning-of-string matcher", "^")
    repr_get_attr_int $I11, $P11, rx312_curclass, "$!pos"
    lt $I11, 0, rx312_fail965
    repr_get_attr_int rx312_pos, $P11, rx312_curclass, "$!pos"
    rx312_cur."!cursor_pass"(rx312_pos, "backslash:sym<A>", 'backtrack'=>1)
    .return (rx312_cur)
  rx312_restart964:
    repr_get_attr_obj rx312_cstack, rx312_cur, rx312_curclass, "$!cstack"
  rx312_fail965:
    unless rx312_bstack, rx312_done963
    pop $I19, rx312_bstack
    if_null rx312_cstack, rx312_cstack_done968
    unless rx312_cstack, rx312_cstack_done968
    dec $I19
    set $P11, rx312_cstack[$I19]
  rx312_cstack_done968:
    pop rx312_rep, rx312_bstack
    pop rx312_pos, rx312_bstack
    pop $I19, rx312_bstack
    lt rx312_pos, -1, rx312_done963
    lt rx312_pos, 0, rx312_fail965
    eq $I19, 0, rx312_fail965
    nqp_islist $I20, rx312_cstack
    unless $I20, rx312_jump966
    elements $I18, rx312_bstack
    le $I18, 0, rx312_cut967
    dec $I18
    set $I18, rx312_bstack[$I18]
  rx312_cut967:
    assign rx312_cstack, $I18
  rx312_jump966:
    jump $I19
  rx312_done963:
    rx312_cur."!cursor_fail"()
    .return (rx312_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_70_1346277621.774_caps" :subid("cuid_memo_138_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_70_1346277621.774_nfa" :subid("cuid_memo_139_1346277621.774")
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
.sub "backslash:sym<z>" :subid("cuid_71_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 185
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    .local pmc rx315_curclass
    .local pmc rx315_bstack
    .local pmc rx315_cstack
    (rx315_cur, rx315_tgt, rx315_pos, rx315_curclass, rx315_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx315_cur
    length rx315_eos, rx315_tgt
    eq $I19, 1, rx315_restart975
    gt rx315_pos, rx315_eos, rx315_fail976
    repr_get_attr_int $I11, self, rx315_curclass, "$!from"
    ne $I11, -1, rxscan316_done982
    goto rxscan316_scan981
  rxscan316_loop980:
    inc rx315_pos
    gt rx315_pos, rx315_eos, rx315_fail976
    repr_bind_attr_int rx315_cur, rx315_curclass, "$!from", rx315_pos
  rxscan316_scan981:
    nqp_rxmark rx315_bstack, rxscan316_loop980, rx315_pos, 0
  rxscan316_done982:
    add $I11, rx315_pos, 1
    gt $I11, rx315_eos, rx315_fail976
    substr $S10, rx315_tgt, rx315_pos, 1
    ne $S10, ucs4:"z", rx315_fail976
    add rx315_pos, 1
    repr_bind_attr_int rx315_cur, rx315_curclass, "$!pos", rx315_pos
    $P11 = rx315_cur."obs"("\\\\z as end-of-string matcher", "$")
    repr_get_attr_int $I11, $P11, rx315_curclass, "$!pos"
    lt $I11, 0, rx315_fail976
    repr_get_attr_int rx315_pos, $P11, rx315_curclass, "$!pos"
    rx315_cur."!cursor_pass"(rx315_pos, "backslash:sym<z>", 'backtrack'=>1)
    .return (rx315_cur)
  rx315_restart975:
    repr_get_attr_obj rx315_cstack, rx315_cur, rx315_curclass, "$!cstack"
  rx315_fail976:
    unless rx315_bstack, rx315_done974
    pop $I19, rx315_bstack
    if_null rx315_cstack, rx315_cstack_done979
    unless rx315_cstack, rx315_cstack_done979
    dec $I19
    set $P11, rx315_cstack[$I19]
  rx315_cstack_done979:
    pop rx315_rep, rx315_bstack
    pop rx315_pos, rx315_bstack
    pop $I19, rx315_bstack
    lt rx315_pos, -1, rx315_done974
    lt rx315_pos, 0, rx315_fail976
    eq $I19, 0, rx315_fail976
    nqp_islist $I20, rx315_cstack
    unless $I20, rx315_jump977
    elements $I18, rx315_bstack
    le $I18, 0, rx315_cut978
    dec $I18
    set $I18, rx315_bstack[$I18]
  rx315_cut978:
    assign rx315_cstack, $I18
  rx315_jump977:
    jump $I19
  rx315_done974:
    rx315_cur."!cursor_fail"()
    .return (rx315_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_71_1346277621.774_caps" :subid("cuid_memo_140_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_71_1346277621.774_nfa" :subid("cuid_memo_141_1346277621.774")
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
.sub "backslash:sym<Z>" :subid("cuid_72_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 186
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx318_tgt
    .local int rx318_pos
    .local int rx318_off
    .local int rx318_eos
    .local int rx318_rep
    .local pmc rx318_cur
    .local pmc rx318_curclass
    .local pmc rx318_bstack
    .local pmc rx318_cstack
    (rx318_cur, rx318_tgt, rx318_pos, rx318_curclass, rx318_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx318_cur
    length rx318_eos, rx318_tgt
    eq $I19, 1, rx318_restart986
    gt rx318_pos, rx318_eos, rx318_fail987
    repr_get_attr_int $I11, self, rx318_curclass, "$!from"
    ne $I11, -1, rxscan319_done993
    goto rxscan319_scan992
  rxscan319_loop991:
    inc rx318_pos
    gt rx318_pos, rx318_eos, rx318_fail987
    repr_bind_attr_int rx318_cur, rx318_curclass, "$!from", rx318_pos
  rxscan319_scan992:
    nqp_rxmark rx318_bstack, rxscan319_loop991, rx318_pos, 0
  rxscan319_done993:
    add $I11, rx318_pos, 1
    gt $I11, rx318_eos, rx318_fail987
    substr $S10, rx318_tgt, rx318_pos, 1
    ne $S10, ucs4:"Z", rx318_fail987
    add rx318_pos, 1
    repr_bind_attr_int rx318_cur, rx318_curclass, "$!pos", rx318_pos
    $P11 = rx318_cur."obs"("\\\\Z as end-of-string matcher", "\\\\n?$")
    repr_get_attr_int $I11, $P11, rx318_curclass, "$!pos"
    lt $I11, 0, rx318_fail987
    repr_get_attr_int rx318_pos, $P11, rx318_curclass, "$!pos"
    rx318_cur."!cursor_pass"(rx318_pos, "backslash:sym<Z>", 'backtrack'=>1)
    .return (rx318_cur)
  rx318_restart986:
    repr_get_attr_obj rx318_cstack, rx318_cur, rx318_curclass, "$!cstack"
  rx318_fail987:
    unless rx318_bstack, rx318_done985
    pop $I19, rx318_bstack
    if_null rx318_cstack, rx318_cstack_done990
    unless rx318_cstack, rx318_cstack_done990
    dec $I19
    set $P11, rx318_cstack[$I19]
  rx318_cstack_done990:
    pop rx318_rep, rx318_bstack
    pop rx318_pos, rx318_bstack
    pop $I19, rx318_bstack
    lt rx318_pos, -1, rx318_done985
    lt rx318_pos, 0, rx318_fail987
    eq $I19, 0, rx318_fail987
    nqp_islist $I20, rx318_cstack
    unless $I20, rx318_jump988
    elements $I18, rx318_bstack
    le $I18, 0, rx318_cut989
    dec $I18
    set $I18, rx318_bstack[$I18]
  rx318_cut989:
    assign rx318_cstack, $I18
  rx318_jump988:
    jump $I19
  rx318_done985:
    rx318_cur."!cursor_fail"()
    .return (rx318_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_72_1346277621.774_caps" :subid("cuid_memo_142_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_72_1346277621.774_nfa" :subid("cuid_memo_143_1346277621.774")
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
.sub "backslash:sym<Q>" :subid("cuid_73_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 187
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx321_tgt
    .local int rx321_pos
    .local int rx321_off
    .local int rx321_eos
    .local int rx321_rep
    .local pmc rx321_cur
    .local pmc rx321_curclass
    .local pmc rx321_bstack
    .local pmc rx321_cstack
    (rx321_cur, rx321_tgt, rx321_pos, rx321_curclass, rx321_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx321_cur
    length rx321_eos, rx321_tgt
    eq $I19, 1, rx321_restart997
    gt rx321_pos, rx321_eos, rx321_fail998
    repr_get_attr_int $I11, self, rx321_curclass, "$!from"
    ne $I11, -1, rxscan322_done1004
    goto rxscan322_scan1003
  rxscan322_loop1002:
    inc rx321_pos
    gt rx321_pos, rx321_eos, rx321_fail998
    repr_bind_attr_int rx321_cur, rx321_curclass, "$!from", rx321_pos
  rxscan322_scan1003:
    nqp_rxmark rx321_bstack, rxscan322_loop1002, rx321_pos, 0
  rxscan322_done1004:
    add $I11, rx321_pos, 1
    gt $I11, rx321_eos, rx321_fail998
    substr $S10, rx321_tgt, rx321_pos, 1
    ne $S10, ucs4:"Q", rx321_fail998
    add rx321_pos, 1
    repr_bind_attr_int rx321_cur, rx321_curclass, "$!pos", rx321_pos
    $P11 = rx321_cur."obs"("\\\\Q as quotemeta", "quotes or literal variable match")
    repr_get_attr_int $I11, $P11, rx321_curclass, "$!pos"
    lt $I11, 0, rx321_fail998
    repr_get_attr_int rx321_pos, $P11, rx321_curclass, "$!pos"
    rx321_cur."!cursor_pass"(rx321_pos, "backslash:sym<Q>", 'backtrack'=>1)
    .return (rx321_cur)
  rx321_restart997:
    repr_get_attr_obj rx321_cstack, rx321_cur, rx321_curclass, "$!cstack"
  rx321_fail998:
    unless rx321_bstack, rx321_done996
    pop $I19, rx321_bstack
    if_null rx321_cstack, rx321_cstack_done1001
    unless rx321_cstack, rx321_cstack_done1001
    dec $I19
    set $P11, rx321_cstack[$I19]
  rx321_cstack_done1001:
    pop rx321_rep, rx321_bstack
    pop rx321_pos, rx321_bstack
    pop $I19, rx321_bstack
    lt rx321_pos, -1, rx321_done996
    lt rx321_pos, 0, rx321_fail998
    eq $I19, 0, rx321_fail998
    nqp_islist $I20, rx321_cstack
    unless $I20, rx321_jump999
    elements $I18, rx321_bstack
    le $I18, 0, rx321_cut1000
    dec $I18
    set $I18, rx321_bstack[$I18]
  rx321_cut1000:
    assign rx321_cstack, $I18
  rx321_jump999:
    jump $I19
  rx321_done996:
    rx321_cur."!cursor_fail"()
    .return (rx321_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_73_1346277621.774_caps" :subid("cuid_memo_144_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_73_1346277621.774_nfa" :subid("cuid_memo_145_1346277621.774")
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
.sub "backslash:sym<unrec>" :subid("cuid_74_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 188
    .param pmc _lex_param_0 
    .const 'Sub' $P5004 = 'cuid_164_1346277621.774' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    .local pmc rx324_curclass
    .local pmc rx324_bstack
    .local pmc rx324_cstack
    (rx324_cur, rx324_tgt, rx324_pos, rx324_curclass, rx324_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx324_cur
    length rx324_eos, rx324_tgt
    eq $I19, 1, rx324_restart1008
    gt rx324_pos, rx324_eos, rx324_fail1009
    repr_get_attr_int $I11, self, rx324_curclass, "$!from"
    ne $I11, -1, rxscan325_done1015
    goto rxscan325_scan1014
  rxscan325_loop1013:
    inc rx324_pos
    gt rx324_pos, rx324_eos, rx324_fail1009
    repr_bind_attr_int rx324_cur, rx324_curclass, "$!from", rx324_pos
  rxscan325_scan1014:
    nqp_rxmark rx324_bstack, rxscan325_loop1013, rx324_pos, 0
  rxscan325_done1015:
    repr_bind_attr_int rx324_cur, rx324_curclass, "$!pos", rx324_pos
    store_lex unicode:"$\x{a2}", rx324_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_164_1346277621.774' 
    capture_lex $P5002
    $P5003 = $P5002()
    ge rx324_pos, rx324_eos, rx324_fail1009
    is_cclass $I11, .CCLASS_WORD, rx324_tgt, rx324_pos
    unless $I11, rx324_fail1009
    add rx324_pos, 1
    repr_bind_attr_int rx324_cur, rx324_curclass, "$!pos", rx324_pos
    $P11 = rx324_cur."panic"("Unrecognized backslash sequence")
    repr_get_attr_int $I11, $P11, rx324_curclass, "$!pos"
    lt $I11, 0, rx324_fail1009
    repr_get_attr_int rx324_pos, $P11, rx324_curclass, "$!pos"
    rx324_cur."!cursor_pass"(rx324_pos, "backslash:sym<unrec>", 'backtrack'=>1)
    .return (rx324_cur)
  rx324_restart1008:
    repr_get_attr_obj rx324_cstack, rx324_cur, rx324_curclass, "$!cstack"
  rx324_fail1009:
    unless rx324_bstack, rx324_done1007
    pop $I19, rx324_bstack
    if_null rx324_cstack, rx324_cstack_done1012
    unless rx324_cstack, rx324_cstack_done1012
    dec $I19
    set $P11, rx324_cstack[$I19]
  rx324_cstack_done1012:
    pop rx324_rep, rx324_bstack
    pop rx324_pos, rx324_bstack
    pop $I19, rx324_bstack
    lt rx324_pos, -1, rx324_done1007
    lt rx324_pos, 0, rx324_fail1009
    eq $I19, 0, rx324_fail1009
    nqp_islist $I20, rx324_cstack
    unless $I20, rx324_jump1010
    elements $I18, rx324_bstack
    le $I18, 0, rx324_cut1011
    dec $I18
    set $I18, rx324_bstack[$I18]
  rx324_cut1011:
    assign rx324_cstack, $I18
  rx324_jump1010:
    jump $I19
  rx324_done1007:
    rx324_cur."!cursor_fail"()
    .return (rx324_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_74_1346277621.774_caps" :subid("cuid_memo_146_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1346277621.774") :anon :lex :outer("cuid_74_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 188

    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<misc>" :subid("cuid_75_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 189
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx327_tgt
    .local int rx327_pos
    .local int rx327_off
    .local int rx327_eos
    .local int rx327_rep
    .local pmc rx327_cur
    .local pmc rx327_curclass
    .local pmc rx327_bstack
    .local pmc rx327_cstack
    (rx327_cur, rx327_tgt, rx327_pos, rx327_curclass, rx327_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx327_cur
    length rx327_eos, rx327_tgt
    eq $I19, 1, rx327_restart1019
    gt rx327_pos, rx327_eos, rx327_fail1020
    repr_get_attr_int $I11, self, rx327_curclass, "$!from"
    ne $I11, -1, rxscan328_done1026
    goto rxscan328_scan1025
  rxscan328_loop1024:
    inc rx327_pos
    gt rx327_pos, rx327_eos, rx327_fail1020
    repr_bind_attr_int rx327_cur, rx327_curclass, "$!from", rx327_pos
  rxscan328_scan1025:
    nqp_rxmark rx327_bstack, rxscan328_loop1024, rx327_pos, 0
  rxscan328_done1026:
    ge rx327_pos, rx327_eos, rx327_fail1020
    is_cclass $I11, .CCLASS_WORD, rx327_tgt, rx327_pos
    if $I11, rx327_fail1020
    add rx327_pos, 1
    rx327_cur."!cursor_pass"(rx327_pos, "backslash:sym<misc>", 'backtrack'=>1)
    .return (rx327_cur)
  rx327_restart1019:
    repr_get_attr_obj rx327_cstack, rx327_cur, rx327_curclass, "$!cstack"
  rx327_fail1020:
    unless rx327_bstack, rx327_done1018
    pop $I19, rx327_bstack
    if_null rx327_cstack, rx327_cstack_done1023
    unless rx327_cstack, rx327_cstack_done1023
    dec $I19
    set $P11, rx327_cstack[$I19]
  rx327_cstack_done1023:
    pop rx327_rep, rx327_bstack
    pop rx327_pos, rx327_bstack
    pop $I19, rx327_bstack
    lt rx327_pos, -1, rx327_done1018
    lt rx327_pos, 0, rx327_fail1020
    eq $I19, 0, rx327_fail1020
    nqp_islist $I20, rx327_cstack
    unless $I20, rx327_jump1021
    elements $I18, rx327_bstack
    le $I18, 0, rx327_cut1022
    dec $I18
    set $I18, rx327_bstack[$I18]
  rx327_cut1022:
    assign rx327_cstack, $I18
  rx327_jump1021:
    jump $I19
  rx327_done1018:
    rx327_cur."!cursor_fail"()
    .return (rx327_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_75_1346277621.774_caps" :subid("cuid_memo_147_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_75_1346277621.774_nfa" :subid("cuid_memo_148_1346277621.774")
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
.sub "assertion" :subid("cuid_76_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    .param pmc self 
    $P5001 = self."!protoregex"("assertion")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<?>" :subid("cuid_78_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 193
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_77_1346277621.774' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx329_tgt
    .local int rx329_pos
    .local int rx329_off
    .local int rx329_eos
    .local int rx329_rep
    .local pmc rx329_cur
    .local pmc rx329_curclass
    .local pmc rx329_bstack
    .local pmc rx329_cstack
    (rx329_cur, rx329_tgt, rx329_pos, rx329_curclass, rx329_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx329_cur
    length rx329_eos, rx329_tgt
    eq $I19, 1, rx329_restart1029
    gt rx329_pos, rx329_eos, rx329_fail1030
    repr_get_attr_int $I11, self, rx329_curclass, "$!from"
    ne $I11, -1, rxscan330_done1036
    goto rxscan330_scan1035
  rxscan330_loop1034:
    inc rx329_pos
    gt rx329_pos, rx329_eos, rx329_fail1030
    repr_bind_attr_int rx329_cur, rx329_curclass, "$!from", rx329_pos
  rxscan330_scan1035:
    nqp_rxmark rx329_bstack, rxscan330_loop1034, rx329_pos, 0
  rxscan330_done1036:
    add $I11, rx329_pos, 1
    gt $I11, rx329_eos, rx329_fail1030
    substr $S10, rx329_tgt, rx329_pos, 1
    ne $S10, ucs4:"?", rx329_fail1030
    add rx329_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt331_01038
    nqp_push_label $P11, alt331_11049
    nqp_rxmark rx329_bstack, alt331_end1037, -1, 0
    rx329_cur."!alt"(rx329_pos, "alt_nfa__13_1346277623.189", $P11)
    goto rx329_fail1030
  alt331_01038:
    .const 'Sub' $P5001 = 'cuid_77_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx329_cur, rx329_curclass, "$!pos", rx329_pos
    $P11 = rx329_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx329_curclass, "$!pos"
    lt $I11, 0, rx329_fail1030
    goto alt331_end1037
  alt331_11049:
    repr_bind_attr_int rx329_cur, rx329_curclass, "$!pos", rx329_pos
    $P11 = rx329_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx329_curclass, "$!pos"
    lt $I11, 0, rx329_fail1030
    nqp_rxmark rx329_bstack, rxsubrule334_pass1050, -1, 0
  rxsubrule334_pass1050:
    rx329_cstack = rx329_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx329_pos, $P11, rx329_curclass, "$!pos"
    goto alt331_end1037
  alt331_end1037:
    nqp_rxcommit rx329_bstack, alt331_end1037
    rx329_cur."!cursor_pass"(rx329_pos, "assertion:sym<?>", 'backtrack'=>1)
    .return (rx329_cur)
  rx329_restart1029:
    repr_get_attr_obj rx329_cstack, rx329_cur, rx329_curclass, "$!cstack"
  rx329_fail1030:
    unless rx329_bstack, rx329_done1028
    pop $I19, rx329_bstack
    if_null rx329_cstack, rx329_cstack_done1033
    unless rx329_cstack, rx329_cstack_done1033
    dec $I19
    set $P11, rx329_cstack[$I19]
  rx329_cstack_done1033:
    pop rx329_rep, rx329_bstack
    pop rx329_pos, rx329_bstack
    pop $I19, rx329_bstack
    lt rx329_pos, -1, rx329_done1028
    lt rx329_pos, 0, rx329_fail1030
    eq $I19, 0, rx329_fail1030
    nqp_islist $I20, rx329_cstack
    unless $I20, rx329_jump1031
    elements $I18, rx329_bstack
    le $I18, 0, rx329_cut1032
    dec $I18
    set $I18, rx329_bstack[$I18]
  rx329_cut1032:
    assign rx329_cstack, $I18
  rx329_jump1031:
    jump $I19
  rx329_done1028:
    rx329_cur."!cursor_fail"()
    .return (rx329_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_78_1346277621.774_caps" :subid("cuid_memo_149_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_78_1346277621.774_nfa" :subid("cuid_memo_150_1346277621.774")
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
.sub "cuid_78_1346277621.774_alt_nfa__13_1346277623.189" :subid("cuid_memo_151_1346277621.774")
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
.sub "" :subid("cuid_77_1346277621.774") :anon :lex :outer("cuid_78_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx332_tgt
    .local int rx332_pos
    .local int rx332_off
    .local int rx332_eos
    .local int rx332_rep
    .local pmc rx332_cur
    .local pmc rx332_curclass
    .local pmc rx332_bstack
    .local pmc rx332_cstack
    (rx332_cur, rx332_tgt, rx332_pos, rx332_curclass, rx332_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx332_cur
    length rx332_eos, rx332_tgt
    eq $I19, 1, rx332_restart1041
    gt rx332_pos, rx332_eos, rx332_fail1042
    repr_get_attr_int $I11, self, rx332_curclass, "$!from"
    ne $I11, -1, rxscan333_done1048
    goto rxscan333_scan1047
  rxscan333_loop1046:
    inc rx332_pos
    gt rx332_pos, rx332_eos, rx332_fail1042
    repr_bind_attr_int rx332_cur, rx332_curclass, "$!from", rx332_pos
  rxscan333_scan1047:
    nqp_rxmark rx332_bstack, rxscan333_loop1046, rx332_pos, 0
  rxscan333_done1048:
    add $I11, rx332_pos, 1
    gt $I11, rx332_eos, rx332_fail1042
    substr $S10, rx332_tgt, rx332_pos, 1
    ne $S10, ucs4:">", rx332_fail1042
    add rx332_pos, 1
    rx332_cur."!cursor_pass"(rx332_pos, 'backtrack'=>1)
    .return (rx332_cur)
  rx332_restart1041:
    repr_get_attr_obj rx332_cstack, rx332_cur, rx332_curclass, "$!cstack"
  rx332_fail1042:
    unless rx332_bstack, rx332_done1040
    pop $I19, rx332_bstack
    if_null rx332_cstack, rx332_cstack_done1045
    unless rx332_cstack, rx332_cstack_done1045
    dec $I19
    set $P11, rx332_cstack[$I19]
  rx332_cstack_done1045:
    pop rx332_rep, rx332_bstack
    pop rx332_pos, rx332_bstack
    pop $I19, rx332_bstack
    lt rx332_pos, -1, rx332_done1040
    lt rx332_pos, 0, rx332_fail1042
    eq $I19, 0, rx332_fail1042
    nqp_islist $I20, rx332_cstack
    unless $I20, rx332_jump1043
    elements $I18, rx332_bstack
    le $I18, 0, rx332_cut1044
    dec $I18
    set $I18, rx332_bstack[$I18]
  rx332_cut1044:
    assign rx332_cstack, $I18
  rx332_jump1043:
    jump $I19
  rx332_done1040:
    rx332_cur."!cursor_fail"()
    .return (rx332_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_77_1346277621.774_caps" :subid("cuid_memo_152_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_77_1346277621.774_nfa" :subid("cuid_memo_153_1346277621.774")
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
.sub "assertion:sym<!>" :subid("cuid_80_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 194
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_79_1346277621.774' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx335_tgt
    .local int rx335_pos
    .local int rx335_off
    .local int rx335_eos
    .local int rx335_rep
    .local pmc rx335_cur
    .local pmc rx335_curclass
    .local pmc rx335_bstack
    .local pmc rx335_cstack
    (rx335_cur, rx335_tgt, rx335_pos, rx335_curclass, rx335_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx335_cur
    length rx335_eos, rx335_tgt
    eq $I19, 1, rx335_restart1053
    gt rx335_pos, rx335_eos, rx335_fail1054
    repr_get_attr_int $I11, self, rx335_curclass, "$!from"
    ne $I11, -1, rxscan336_done1060
    goto rxscan336_scan1059
  rxscan336_loop1058:
    inc rx335_pos
    gt rx335_pos, rx335_eos, rx335_fail1054
    repr_bind_attr_int rx335_cur, rx335_curclass, "$!from", rx335_pos
  rxscan336_scan1059:
    nqp_rxmark rx335_bstack, rxscan336_loop1058, rx335_pos, 0
  rxscan336_done1060:
    add $I11, rx335_pos, 1
    gt $I11, rx335_eos, rx335_fail1054
    substr $S10, rx335_tgt, rx335_pos, 1
    ne $S10, ucs4:"!", rx335_fail1054
    add rx335_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt337_01062
    nqp_push_label $P11, alt337_11073
    nqp_rxmark rx335_bstack, alt337_end1061, -1, 0
    rx335_cur."!alt"(rx335_pos, "alt_nfa__14_1346277623.207", $P11)
    goto rx335_fail1054
  alt337_01062:
    .const 'Sub' $P5001 = 'cuid_79_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx335_cur, rx335_curclass, "$!pos", rx335_pos
    $P11 = rx335_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx335_curclass, "$!pos"
    lt $I11, 0, rx335_fail1054
    goto alt337_end1061
  alt337_11073:
    repr_bind_attr_int rx335_cur, rx335_curclass, "$!pos", rx335_pos
    $P11 = rx335_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx335_curclass, "$!pos"
    lt $I11, 0, rx335_fail1054
    nqp_rxmark rx335_bstack, rxsubrule340_pass1074, -1, 0
  rxsubrule340_pass1074:
    rx335_cstack = rx335_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx335_pos, $P11, rx335_curclass, "$!pos"
    goto alt337_end1061
  alt337_end1061:
    nqp_rxcommit rx335_bstack, alt337_end1061
    rx335_cur."!cursor_pass"(rx335_pos, "assertion:sym<!>", 'backtrack'=>1)
    .return (rx335_cur)
  rx335_restart1053:
    repr_get_attr_obj rx335_cstack, rx335_cur, rx335_curclass, "$!cstack"
  rx335_fail1054:
    unless rx335_bstack, rx335_done1052
    pop $I19, rx335_bstack
    if_null rx335_cstack, rx335_cstack_done1057
    unless rx335_cstack, rx335_cstack_done1057
    dec $I19
    set $P11, rx335_cstack[$I19]
  rx335_cstack_done1057:
    pop rx335_rep, rx335_bstack
    pop rx335_pos, rx335_bstack
    pop $I19, rx335_bstack
    lt rx335_pos, -1, rx335_done1052
    lt rx335_pos, 0, rx335_fail1054
    eq $I19, 0, rx335_fail1054
    nqp_islist $I20, rx335_cstack
    unless $I20, rx335_jump1055
    elements $I18, rx335_bstack
    le $I18, 0, rx335_cut1056
    dec $I18
    set $I18, rx335_bstack[$I18]
  rx335_cut1056:
    assign rx335_cstack, $I18
  rx335_jump1055:
    jump $I19
  rx335_done1052:
    rx335_cur."!cursor_fail"()
    .return (rx335_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_80_1346277621.774_caps" :subid("cuid_memo_154_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_80_1346277621.774_nfa" :subid("cuid_memo_155_1346277621.774")
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
.sub "cuid_80_1346277621.774_alt_nfa__14_1346277623.207" :subid("cuid_memo_156_1346277621.774")
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
.sub "" :subid("cuid_79_1346277621.774") :anon :lex :outer("cuid_80_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx338_tgt
    .local int rx338_pos
    .local int rx338_off
    .local int rx338_eos
    .local int rx338_rep
    .local pmc rx338_cur
    .local pmc rx338_curclass
    .local pmc rx338_bstack
    .local pmc rx338_cstack
    (rx338_cur, rx338_tgt, rx338_pos, rx338_curclass, rx338_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx338_cur
    length rx338_eos, rx338_tgt
    eq $I19, 1, rx338_restart1065
    gt rx338_pos, rx338_eos, rx338_fail1066
    repr_get_attr_int $I11, self, rx338_curclass, "$!from"
    ne $I11, -1, rxscan339_done1072
    goto rxscan339_scan1071
  rxscan339_loop1070:
    inc rx338_pos
    gt rx338_pos, rx338_eos, rx338_fail1066
    repr_bind_attr_int rx338_cur, rx338_curclass, "$!from", rx338_pos
  rxscan339_scan1071:
    nqp_rxmark rx338_bstack, rxscan339_loop1070, rx338_pos, 0
  rxscan339_done1072:
    add $I11, rx338_pos, 1
    gt $I11, rx338_eos, rx338_fail1066
    substr $S10, rx338_tgt, rx338_pos, 1
    ne $S10, ucs4:">", rx338_fail1066
    add rx338_pos, 1
    rx338_cur."!cursor_pass"(rx338_pos, 'backtrack'=>1)
    .return (rx338_cur)
  rx338_restart1065:
    repr_get_attr_obj rx338_cstack, rx338_cur, rx338_curclass, "$!cstack"
  rx338_fail1066:
    unless rx338_bstack, rx338_done1064
    pop $I19, rx338_bstack
    if_null rx338_cstack, rx338_cstack_done1069
    unless rx338_cstack, rx338_cstack_done1069
    dec $I19
    set $P11, rx338_cstack[$I19]
  rx338_cstack_done1069:
    pop rx338_rep, rx338_bstack
    pop rx338_pos, rx338_bstack
    pop $I19, rx338_bstack
    lt rx338_pos, -1, rx338_done1064
    lt rx338_pos, 0, rx338_fail1066
    eq $I19, 0, rx338_fail1066
    nqp_islist $I20, rx338_cstack
    unless $I20, rx338_jump1067
    elements $I18, rx338_bstack
    le $I18, 0, rx338_cut1068
    dec $I18
    set $I18, rx338_bstack[$I18]
  rx338_cut1068:
    assign rx338_cstack, $I18
  rx338_jump1067:
    jump $I19
  rx338_done1064:
    rx338_cur."!cursor_fail"()
    .return (rx338_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_79_1346277621.774_caps" :subid("cuid_memo_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_79_1346277621.774_nfa" :subid("cuid_memo_158_1346277621.774")
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
.sub "assertion:sym<|>" :subid("cuid_81_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 195
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx341_tgt
    .local int rx341_pos
    .local int rx341_off
    .local int rx341_eos
    .local int rx341_rep
    .local pmc rx341_cur
    .local pmc rx341_curclass
    .local pmc rx341_bstack
    .local pmc rx341_cstack
    (rx341_cur, rx341_tgt, rx341_pos, rx341_curclass, rx341_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx341_cur
    length rx341_eos, rx341_tgt
    eq $I19, 1, rx341_restart1077
    gt rx341_pos, rx341_eos, rx341_fail1078
    repr_get_attr_int $I11, self, rx341_curclass, "$!from"
    ne $I11, -1, rxscan342_done1084
    goto rxscan342_scan1083
  rxscan342_loop1082:
    inc rx341_pos
    gt rx341_pos, rx341_eos, rx341_fail1078
    repr_bind_attr_int rx341_cur, rx341_curclass, "$!from", rx341_pos
  rxscan342_scan1083:
    nqp_rxmark rx341_bstack, rxscan342_loop1082, rx341_pos, 0
  rxscan342_done1084:
    add $I11, rx341_pos, 1
    gt $I11, rx341_eos, rx341_fail1078
    substr $S10, rx341_tgt, rx341_pos, 1
    ne $S10, ucs4:"|", rx341_fail1078
    add rx341_pos, 1
    repr_bind_attr_int rx341_cur, rx341_curclass, "$!pos", rx341_pos
    $P11 = rx341_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx341_curclass, "$!pos"
    lt $I11, 0, rx341_fail1078
    nqp_rxmark rx341_bstack, rxsubrule343_pass1085, -1, 0
  rxsubrule343_pass1085:
    rx341_cstack = rx341_cur."!cursor_capture"($P11, "identifier")
    repr_get_attr_int rx341_pos, $P11, rx341_curclass, "$!pos"
    rx341_cur."!cursor_pass"(rx341_pos, "assertion:sym<|>", 'backtrack'=>1)
    .return (rx341_cur)
  rx341_restart1077:
    repr_get_attr_obj rx341_cstack, rx341_cur, rx341_curclass, "$!cstack"
  rx341_fail1078:
    unless rx341_bstack, rx341_done1076
    pop $I19, rx341_bstack
    if_null rx341_cstack, rx341_cstack_done1081
    unless rx341_cstack, rx341_cstack_done1081
    dec $I19
    set $P11, rx341_cstack[$I19]
  rx341_cstack_done1081:
    pop rx341_rep, rx341_bstack
    pop rx341_pos, rx341_bstack
    pop $I19, rx341_bstack
    lt rx341_pos, -1, rx341_done1076
    lt rx341_pos, 0, rx341_fail1078
    eq $I19, 0, rx341_fail1078
    nqp_islist $I20, rx341_cstack
    unless $I20, rx341_jump1079
    elements $I18, rx341_bstack
    le $I18, 0, rx341_cut1080
    dec $I18
    set $I18, rx341_bstack[$I18]
  rx341_cut1080:
    assign rx341_cstack, $I18
  rx341_jump1079:
    jump $I19
  rx341_done1076:
    rx341_cur."!cursor_fail"()
    .return (rx341_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_81_1346277621.774_caps" :subid("cuid_memo_159_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["identifier"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_81_1346277621.774_nfa" :subid("cuid_memo_160_1346277621.774")
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
.sub "assertion:sym<method>" :subid("cuid_82_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 197
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx344_tgt
    .local int rx344_pos
    .local int rx344_off
    .local int rx344_eos
    .local int rx344_rep
    .local pmc rx344_cur
    .local pmc rx344_curclass
    .local pmc rx344_bstack
    .local pmc rx344_cstack
    (rx344_cur, rx344_tgt, rx344_pos, rx344_curclass, rx344_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx344_cur
    length rx344_eos, rx344_tgt
    eq $I19, 1, rx344_restart1088
    gt rx344_pos, rx344_eos, rx344_fail1089
    repr_get_attr_int $I11, self, rx344_curclass, "$!from"
    ne $I11, -1, rxscan345_done1095
    goto rxscan345_scan1094
  rxscan345_loop1093:
    inc rx344_pos
    gt rx344_pos, rx344_eos, rx344_fail1089
    repr_bind_attr_int rx344_cur, rx344_curclass, "$!from", rx344_pos
  rxscan345_scan1094:
    nqp_rxmark rx344_bstack, rxscan345_loop1093, rx344_pos, 0
  rxscan345_done1095:
    add $I11, rx344_pos, 1
    gt $I11, rx344_eos, rx344_fail1089
    substr $S10, rx344_tgt, rx344_pos, 1
    ne $S10, ucs4:".", rx344_fail1089
    add rx344_pos, 1
    repr_bind_attr_int rx344_cur, rx344_curclass, "$!pos", rx344_pos
    $P11 = rx344_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx344_curclass, "$!pos"
    lt $I11, 0, rx344_fail1089
    nqp_rxmark rx344_bstack, rxsubrule346_pass1096, -1, 0
  rxsubrule346_pass1096:
    rx344_cstack = rx344_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx344_pos, $P11, rx344_curclass, "$!pos"
    rx344_cur."!cursor_pass"(rx344_pos, "assertion:sym<method>", 'backtrack'=>1)
    .return (rx344_cur)
  rx344_restart1088:
    repr_get_attr_obj rx344_cstack, rx344_cur, rx344_curclass, "$!cstack"
  rx344_fail1089:
    unless rx344_bstack, rx344_done1087
    pop $I19, rx344_bstack
    if_null rx344_cstack, rx344_cstack_done1092
    unless rx344_cstack, rx344_cstack_done1092
    dec $I19
    set $P11, rx344_cstack[$I19]
  rx344_cstack_done1092:
    pop rx344_rep, rx344_bstack
    pop rx344_pos, rx344_bstack
    pop $I19, rx344_bstack
    lt rx344_pos, -1, rx344_done1087
    lt rx344_pos, 0, rx344_fail1089
    eq $I19, 0, rx344_fail1089
    nqp_islist $I20, rx344_cstack
    unless $I20, rx344_jump1090
    elements $I18, rx344_bstack
    le $I18, 0, rx344_cut1091
    dec $I18
    set $I18, rx344_bstack[$I18]
  rx344_cut1091:
    assign rx344_cstack, $I18
  rx344_jump1090:
    jump $I19
  rx344_done1087:
    rx344_cur."!cursor_fail"()
    .return (rx344_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_82_1346277621.774_caps" :subid("cuid_memo_161_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_82_1346277621.774_nfa" :subid("cuid_memo_162_1346277621.774")
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
.sub "assertion:sym<name>" :subid("cuid_84_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 201
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_83_1346277621.774' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx347_tgt
    .local int rx347_pos
    .local int rx347_off
    .local int rx347_eos
    .local int rx347_rep
    .local pmc rx347_cur
    .local pmc rx347_curclass
    .local pmc rx347_bstack
    .local pmc rx347_cstack
    (rx347_cur, rx347_tgt, rx347_pos, rx347_curclass, rx347_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx347_cur
    length rx347_eos, rx347_tgt
    eq $I19, 1, rx347_restart1099
    gt rx347_pos, rx347_eos, rx347_fail1100
    repr_get_attr_int $I11, self, rx347_curclass, "$!from"
    ne $I11, -1, rxscan348_done1106
    goto rxscan348_scan1105
  rxscan348_loop1104:
    inc rx347_pos
    gt rx347_pos, rx347_eos, rx347_fail1100
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!from", rx347_pos
  rxscan348_scan1105:
    nqp_rxmark rx347_bstack, rxscan348_loop1104, rx347_pos, 0
  rxscan348_done1106:
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1100
    nqp_rxmark rx347_bstack, rxsubrule349_pass1107, -1, 0
  rxsubrule349_pass1107:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "longname")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    nqp_rxmark rx347_bstack, rxquantr350_done1109, rx347_pos, 0
  rxquantr350_loop1108:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt351_01111
    nqp_push_label $P11, alt351_11122
    nqp_push_label $P11, alt351_21124
    nqp_push_label $P11, alt351_31126
    nqp_push_label $P11, alt351_41128
    nqp_rxmark rx347_bstack, alt351_end1110, -1, 0
    rx347_cur."!alt"(rx347_pos, "alt_nfa__15_1346277623.262", $P11)
    goto rx347_fail1100
  alt351_01111:
    .const 'Sub' $P5001 = 'cuid_83_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1100
    goto alt351_end1110
  alt351_11122:
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1100
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:"=", rx347_fail1100
    add rx347_pos, 1
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1100
    nqp_rxmark rx347_bstack, rxsubrule354_pass1123, -1, 0
  rxsubrule354_pass1123:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    goto alt351_end1110
  alt351_21124:
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1100
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:":", rx347_fail1100
    add rx347_pos, 1
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1100
    nqp_rxmark rx347_bstack, rxsubrule355_pass1125, -1, 0
  rxsubrule355_pass1125:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    goto alt351_end1110
  alt351_31126:
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1100
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:"(", rx347_fail1100
    add rx347_pos, 1
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1100
    nqp_rxmark rx347_bstack, rxsubrule356_pass1127, -1, 0
  rxsubrule356_pass1127:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1100
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:")", rx347_fail1100
    add rx347_pos, 1
    goto alt351_end1110
  alt351_41128:
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1100
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1100
    nqp_rxmark rx347_bstack, rxsubrule358_pass1130, -1, 0
  rxsubrule358_pass1130:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    goto alt351_end1110
  alt351_end1110:
    nqp_rxpeek $I19, rx347_bstack, rxquantr350_done1109
    inc $I19
    inc $I19
    set rx347_rep, rx347_bstack[$I19]
    nqp_rxcommit rx347_bstack, rxquantr350_done1109
    inc rx347_rep
  rxquantr350_done1109:
    rx347_cur."!cursor_pass"(rx347_pos, "assertion:sym<name>", 'backtrack'=>1)
    .return (rx347_cur)
  rx347_restart1099:
    repr_get_attr_obj rx347_cstack, rx347_cur, rx347_curclass, "$!cstack"
  rx347_fail1100:
    unless rx347_bstack, rx347_done1098
    pop $I19, rx347_bstack
    if_null rx347_cstack, rx347_cstack_done1103
    unless rx347_cstack, rx347_cstack_done1103
    dec $I19
    set $P11, rx347_cstack[$I19]
  rx347_cstack_done1103:
    pop rx347_rep, rx347_bstack
    pop rx347_pos, rx347_bstack
    pop $I19, rx347_bstack
    lt rx347_pos, -1, rx347_done1098
    lt rx347_pos, 0, rx347_fail1100
    eq $I19, 0, rx347_fail1100
    nqp_islist $I20, rx347_cstack
    unless $I20, rx347_jump1101
    elements $I18, rx347_bstack
    le $I18, 0, rx347_cut1102
    dec $I18
    set $I18, rx347_bstack[$I18]
  rx347_cut1102:
    assign rx347_cstack, $I18
  rx347_jump1101:
    jump $I19
  rx347_done1098:
    rx347_cur."!cursor_fail"()
    .return (rx347_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_84_1346277621.774_caps" :subid("cuid_memo_163_1346277621.774")
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
.sub "cuid_84_1346277621.774_nfa" :subid("cuid_memo_164_1346277621.774")
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
.sub "cuid_84_1346277621.774_alt_nfa__15_1346277623.262" :subid("cuid_memo_165_1346277621.774")
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
.sub "" :subid("cuid_83_1346277621.774") :anon :lex :outer("cuid_84_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx352_tgt
    .local int rx352_pos
    .local int rx352_off
    .local int rx352_eos
    .local int rx352_rep
    .local pmc rx352_cur
    .local pmc rx352_curclass
    .local pmc rx352_bstack
    .local pmc rx352_cstack
    (rx352_cur, rx352_tgt, rx352_pos, rx352_curclass, rx352_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx352_cur
    length rx352_eos, rx352_tgt
    eq $I19, 1, rx352_restart1114
    gt rx352_pos, rx352_eos, rx352_fail1115
    repr_get_attr_int $I11, self, rx352_curclass, "$!from"
    ne $I11, -1, rxscan353_done1121
    goto rxscan353_scan1120
  rxscan353_loop1119:
    inc rx352_pos
    gt rx352_pos, rx352_eos, rx352_fail1115
    repr_bind_attr_int rx352_cur, rx352_curclass, "$!from", rx352_pos
  rxscan353_scan1120:
    nqp_rxmark rx352_bstack, rxscan353_loop1119, rx352_pos, 0
  rxscan353_done1121:
    add $I11, rx352_pos, 1
    gt $I11, rx352_eos, rx352_fail1115
    substr $S10, rx352_tgt, rx352_pos, 1
    ne $S10, ucs4:">", rx352_fail1115
    add rx352_pos, 1
    rx352_cur."!cursor_pass"(rx352_pos, 'backtrack'=>1)
    .return (rx352_cur)
  rx352_restart1114:
    repr_get_attr_obj rx352_cstack, rx352_cur, rx352_curclass, "$!cstack"
  rx352_fail1115:
    unless rx352_bstack, rx352_done1113
    pop $I19, rx352_bstack
    if_null rx352_cstack, rx352_cstack_done1118
    unless rx352_cstack, rx352_cstack_done1118
    dec $I19
    set $P11, rx352_cstack[$I19]
  rx352_cstack_done1118:
    pop rx352_rep, rx352_bstack
    pop rx352_pos, rx352_bstack
    pop $I19, rx352_bstack
    lt rx352_pos, -1, rx352_done1113
    lt rx352_pos, 0, rx352_fail1115
    eq $I19, 0, rx352_fail1115
    nqp_islist $I20, rx352_cstack
    unless $I20, rx352_jump1116
    elements $I18, rx352_bstack
    le $I18, 0, rx352_cut1117
    dec $I18
    set $I18, rx352_bstack[$I18]
  rx352_cut1117:
    assign rx352_cstack, $I18
  rx352_jump1116:
    jump $I19
  rx352_done1113:
    rx352_cur."!cursor_fail"()
    .return (rx352_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_83_1346277621.774_caps" :subid("cuid_memo_166_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_83_1346277621.774_nfa" :subid("cuid_memo_167_1346277621.774")
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
.sub "assertion:sym<[>" :subid("cuid_86_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 212
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_85_1346277621.774' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx359_tgt
    .local int rx359_pos
    .local int rx359_off
    .local int rx359_eos
    .local int rx359_rep
    .local pmc rx359_cur
    .local pmc rx359_curclass
    .local pmc rx359_bstack
    .local pmc rx359_cstack
    (rx359_cur, rx359_tgt, rx359_pos, rx359_curclass, rx359_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx359_cur
    length rx359_eos, rx359_tgt
    eq $I19, 1, rx359_restart1133
    gt rx359_pos, rx359_eos, rx359_fail1134
    repr_get_attr_int $I11, self, rx359_curclass, "$!from"
    ne $I11, -1, rxscan360_done1140
    goto rxscan360_scan1139
  rxscan360_loop1138:
    inc rx359_pos
    gt rx359_pos, rx359_eos, rx359_fail1134
    repr_bind_attr_int rx359_cur, rx359_curclass, "$!from", rx359_pos
  rxscan360_scan1139:
    nqp_rxmark rx359_bstack, rxscan360_loop1138, rx359_pos, 0
  rxscan360_done1140:
    .const 'Sub' $P5001 = 'cuid_85_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx359_cur, rx359_curclass, "$!pos", rx359_pos
    $P11 = rx359_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx359_curclass, "$!pos"
    lt $I11, 0, rx359_fail1134
    nqp_rxmark rx359_bstack, rxquantr364_done1157, -1, 0
  rxquantr364_loop1156:
    repr_bind_attr_int rx359_cur, rx359_curclass, "$!pos", rx359_pos
    $P11 = rx359_cur."cclass_elem"()
    repr_get_attr_int $I11, $P11, rx359_curclass, "$!pos"
    lt $I11, 0, rx359_fail1134
    goto rxsubrule365_pass1158
  rxsubrule365_back1159:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx359_curclass, "$!pos"
    lt $I11, 0, rx359_fail1134
  rxsubrule365_pass1158:
    rx359_cstack = rx359_cur."!cursor_capture"($P11, "cclass_elem")
    set_addr $I11, rxsubrule365_back1159
    push rx359_bstack, $I11
    push rx359_bstack, 0
    push rx359_bstack, rx359_pos
    elements $I11, rx359_cstack
    push rx359_bstack, $I11
    repr_get_attr_int rx359_pos, $P11, rx359_curclass, "$!pos"
    nqp_rxpeek $I19, rx359_bstack, rxquantr364_done1157
    inc $I19
    inc $I19
    set rx359_rep, rx359_bstack[$I19]
    nqp_rxcommit rx359_bstack, rxquantr364_done1157
    inc rx359_rep
    nqp_rxmark rx359_bstack, rxquantr364_done1157, rx359_pos, rx359_rep
    goto rxquantr364_loop1156
  rxquantr364_done1157:
    rx359_cur."!cursor_pass"(rx359_pos, "assertion:sym<[>", 'backtrack'=>1)
    .return (rx359_cur)
  rx359_restart1133:
    repr_get_attr_obj rx359_cstack, rx359_cur, rx359_curclass, "$!cstack"
  rx359_fail1134:
    unless rx359_bstack, rx359_done1132
    pop $I19, rx359_bstack
    if_null rx359_cstack, rx359_cstack_done1137
    unless rx359_cstack, rx359_cstack_done1137
    dec $I19
    set $P11, rx359_cstack[$I19]
  rx359_cstack_done1137:
    pop rx359_rep, rx359_bstack
    pop rx359_pos, rx359_bstack
    pop $I19, rx359_bstack
    lt rx359_pos, -1, rx359_done1132
    lt rx359_pos, 0, rx359_fail1134
    eq $I19, 0, rx359_fail1134
    nqp_islist $I20, rx359_cstack
    unless $I20, rx359_jump1135
    elements $I18, rx359_bstack
    le $I18, 0, rx359_cut1136
    dec $I18
    set $I18, rx359_bstack[$I18]
  rx359_cut1136:
    assign rx359_cstack, $I18
  rx359_jump1135:
    jump $I19
  rx359_done1132:
    rx359_cur."!cursor_fail"()
    .return (rx359_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_86_1346277621.774_caps" :subid("cuid_memo_168_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["cclass_elem"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_86_1346277621.774_nfa" :subid("cuid_memo_169_1346277621.774")
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
.sub "" :subid("cuid_85_1346277621.774") :anon :lex :outer("cuid_86_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx361_tgt
    .local int rx361_pos
    .local int rx361_off
    .local int rx361_eos
    .local int rx361_rep
    .local pmc rx361_cur
    .local pmc rx361_curclass
    .local pmc rx361_bstack
    .local pmc rx361_cstack
    (rx361_cur, rx361_tgt, rx361_pos, rx361_curclass, rx361_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx361_cur
    length rx361_eos, rx361_tgt
    eq $I19, 1, rx361_restart1143
    gt rx361_pos, rx361_eos, rx361_fail1144
    repr_get_attr_int $I11, self, rx361_curclass, "$!from"
    ne $I11, -1, rxscan362_done1150
    goto rxscan362_scan1149
  rxscan362_loop1148:
    inc rx361_pos
    gt rx361_pos, rx361_eos, rx361_fail1144
    repr_bind_attr_int rx361_cur, rx361_curclass, "$!from", rx361_pos
  rxscan362_scan1149:
    nqp_rxmark rx361_bstack, rxscan362_loop1148, rx361_pos, 0
  rxscan362_done1150:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt363_01152
    nqp_push_label $P11, alt363_11153
    nqp_push_label $P11, alt363_21154
    nqp_push_label $P11, alt363_31155
    nqp_rxmark rx361_bstack, alt363_end1151, -1, 0
    rx361_cur."!alt"(rx361_pos, "alt_nfa__16_1346277623.277", $P11)
    goto rx361_fail1144
  alt363_01152:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1144
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:"[", rx361_fail1144
    add rx361_pos, 1
    goto alt363_end1151
  alt363_11153:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1144
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:"+", rx361_fail1144
    add rx361_pos, 1
    goto alt363_end1151
  alt363_21154:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1144
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:"-", rx361_fail1144
    add rx361_pos, 1
    goto alt363_end1151
  alt363_31155:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1144
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:":", rx361_fail1144
    add rx361_pos, 1
    goto alt363_end1151
  alt363_end1151:
    rx361_cur."!cursor_pass"(rx361_pos, 'backtrack'=>1)
    .return (rx361_cur)
  rx361_restart1143:
    repr_get_attr_obj rx361_cstack, rx361_cur, rx361_curclass, "$!cstack"
  rx361_fail1144:
    unless rx361_bstack, rx361_done1142
    pop $I19, rx361_bstack
    if_null rx361_cstack, rx361_cstack_done1147
    unless rx361_cstack, rx361_cstack_done1147
    dec $I19
    set $P11, rx361_cstack[$I19]
  rx361_cstack_done1147:
    pop rx361_rep, rx361_bstack
    pop rx361_pos, rx361_bstack
    pop $I19, rx361_bstack
    lt rx361_pos, -1, rx361_done1142
    lt rx361_pos, 0, rx361_fail1144
    eq $I19, 0, rx361_fail1144
    nqp_islist $I20, rx361_cstack
    unless $I20, rx361_jump1145
    elements $I18, rx361_bstack
    le $I18, 0, rx361_cut1146
    dec $I18
    set $I18, rx361_bstack[$I18]
  rx361_cut1146:
    assign rx361_cstack, $I18
  rx361_jump1145:
    jump $I19
  rx361_done1142:
    rx361_cur."!cursor_fail"()
    .return (rx361_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_85_1346277621.774_caps" :subid("cuid_memo_170_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_85_1346277621.774_nfa" :subid("cuid_memo_171_1346277621.774")
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
.sub "cuid_85_1346277621.774_alt_nfa__16_1346277623.277" :subid("cuid_memo_172_1346277621.774")
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
.sub "cclass_elem" :subid("cuid_93_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 214
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_92_1346277621.774' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx366_tgt
    .local int rx366_pos
    .local int rx366_off
    .local int rx366_eos
    .local int rx366_rep
    .local pmc rx366_cur
    .local pmc rx366_curclass
    .local pmc rx366_bstack
    .local pmc rx366_cstack
    (rx366_cur, rx366_tgt, rx366_pos, rx366_curclass, rx366_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx366_cur
    length rx366_eos, rx366_tgt
    eq $I19, 1, rx366_restart1162
    gt rx366_pos, rx366_eos, rx366_fail1163
    repr_get_attr_int $I11, self, rx366_curclass, "$!from"
    ne $I11, -1, rxscan367_done1169
    goto rxscan367_scan1168
  rxscan367_loop1167:
    inc rx366_pos
    gt rx366_pos, rx366_eos, rx366_fail1163
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!from", rx366_pos
  rxscan367_scan1168:
    nqp_rxmark rx366_bstack, rxscan367_loop1167, rx366_pos, 0
  rxscan367_done1169:
    nqp_rxmark rx366_bstack, rxcap368_fail1171, rx366_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt369_01173
    nqp_push_label $P11, alt369_11174
    nqp_push_label $P11, alt369_21175
    nqp_rxmark rx366_bstack, alt369_end1172, -1, 0
    rx366_cur."!alt"(rx366_pos, "alt_nfa__17_1346277623.383", $P11)
    goto rx366_fail1163
  alt369_01173:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1163
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"+", rx366_fail1163
    add rx366_pos, 1
    goto alt369_end1172
  alt369_11174:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1163
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"-", rx366_fail1163
    add rx366_pos, 1
    goto alt369_end1172
  alt369_21175:
    goto alt369_end1172
  alt369_end1172:
    nqp_rxcommit rx366_bstack, alt369_end1172
    nqp_rxpeek $I19, rx366_bstack, rxcap368_fail1171
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "sign")
    goto rxcap368_done1170
  rxcap368_fail1171:
    goto rx366_fail1163
  rxcap368_done1170:
    nqp_rxmark rx366_bstack, rxquantr371_done1178, rx366_pos, 0
  rxquantr371_loop1177:
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1163
    goto rxsubrule372_pass1179
  rxsubrule372_back1180:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1163
  rxsubrule372_pass1179:
    rx366_cstack = rx366_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule372_back1180
    push rx366_bstack, $I11
    push rx366_bstack, 0
    push rx366_bstack, rx366_pos
    elements $I11, rx366_cstack
    push rx366_bstack, $I11
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    nqp_rxpeek $I19, rx366_bstack, rxquantr371_done1178
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr371_done1178
    inc rx366_rep
  rxquantr371_done1178:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt373_01182
    nqp_push_label $P11, alt373_11281
    nqp_push_label $P11, alt373_21286
    nqp_rxmark rx366_bstack, alt373_end1181, -1, 0
    rx366_cur."!alt"(rx366_pos, "alt_nfa__18_1346277623.384", $P11)
    goto rx366_fail1163
  alt373_01182:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1163
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"[", rx366_fail1163
    add rx366_pos, 1
    nqp_rxmark rx366_bstack, rxquantr374_done1184, rx366_pos, 0
  rxquantr374_loop1183:
    .const 'Sub' $P5001 = 'cuid_92_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1163
    goto rxsubrule405_pass1277
  rxsubrule405_back1278:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1163
  rxsubrule405_pass1277:
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "charspec")
    set_addr $I11, rxsubrule405_back1278
    push rx366_bstack, $I11
    push rx366_bstack, 0
    push rx366_bstack, rx366_pos
    elements $I11, rx366_cstack
    push rx366_bstack, $I11
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    nqp_rxpeek $I19, rx366_bstack, rxquantr374_done1184
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr374_done1184
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr374_done1184, rx366_pos, rx366_rep
    goto rxquantr374_loop1183
  rxquantr374_done1184:
    nqp_rxmark rx366_bstack, rxquantr406_done1280, rx366_pos, 0
  rxquantr406_loop1279:
    ge rx366_pos, rx366_eos, rx366_fail1163
    is_cclass $I11, .CCLASS_WHITESPACE, rx366_tgt, rx366_pos
    unless $I11, rx366_fail1163
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr406_done1280
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr406_done1280
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr406_done1280, rx366_pos, rx366_rep
    goto rxquantr406_loop1279
  rxquantr406_done1280:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1163
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"]", rx366_fail1163
    add rx366_pos, 1
    goto alt373_end1181
  alt373_11281:
    nqp_rxmark rx366_bstack, rxcap407_fail1283, rx366_pos, 0
    nqp_rxmark rx366_bstack, rxquantr408_done1285, -1, 0
  rxquantr408_loop1284:
    ge rx366_pos, rx366_eos, rx366_fail1163
    is_cclass $I11, .CCLASS_WORD, rx366_tgt, rx366_pos
    unless $I11, rx366_fail1163
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr408_done1285
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr408_done1285
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr408_done1285, rx366_pos, rx366_rep
    goto rxquantr408_loop1284
  rxquantr408_done1285:
    nqp_rxpeek $I19, rx366_bstack, rxcap407_fail1283
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "name")
    goto rxcap407_done1282
  rxcap407_fail1283:
    goto rx366_fail1163
  rxcap407_done1282:
    goto alt373_end1181
  alt373_21286:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1163
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:":", rx366_fail1163
    add rx366_pos, 1
    nqp_rxmark rx366_bstack, rxcap409_fail1288, rx366_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt410_01290
    nqp_push_label $P11, alt410_11291
    nqp_rxmark rx366_bstack, alt410_end1289, -1, 0
    rx366_cur."!alt"(rx366_pos, "alt_nfa__19_1346277623.386", $P11)
    goto rx366_fail1163
  alt410_01290:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1163
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"!", rx366_fail1163
    add rx366_pos, 1
    goto alt410_end1289
  alt410_11291:
    goto alt410_end1289
  alt410_end1289:
    nqp_rxcommit rx366_bstack, alt410_end1289
    nqp_rxpeek $I19, rx366_bstack, rxcap409_fail1288
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "invert")
    goto rxcap409_done1287
  rxcap409_fail1288:
    goto rx366_fail1163
  rxcap409_done1287:
    nqp_rxmark rx366_bstack, rxcap412_fail1294, rx366_pos, 0
    nqp_rxmark rx366_bstack, rxquantr413_done1296, -1, 0
  rxquantr413_loop1295:
    ge rx366_pos, rx366_eos, rx366_fail1163
    is_cclass $I11, .CCLASS_WORD, rx366_tgt, rx366_pos
    unless $I11, rx366_fail1163
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr413_done1296
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr413_done1296
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr413_done1296, rx366_pos, rx366_rep
    goto rxquantr413_loop1295
  rxquantr413_done1296:
    nqp_rxpeek $I19, rx366_bstack, rxcap412_fail1294
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "uniprop")
    goto rxcap412_done1293
  rxcap412_fail1294:
    goto rx366_fail1163
  rxcap412_done1293:
    goto alt373_end1181
  alt373_end1181:
    nqp_rxcommit rx366_bstack, alt373_end1181
    nqp_rxmark rx366_bstack, rxquantr414_done1298, rx366_pos, 0
  rxquantr414_loop1297:
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1163
    goto rxsubrule415_pass1299
  rxsubrule415_back1300:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1163
  rxsubrule415_pass1299:
    rx366_cstack = rx366_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule415_back1300
    push rx366_bstack, $I11
    push rx366_bstack, 0
    push rx366_bstack, rx366_pos
    elements $I11, rx366_cstack
    push rx366_bstack, $I11
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    nqp_rxpeek $I19, rx366_bstack, rxquantr414_done1298
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr414_done1298
    inc rx366_rep
  rxquantr414_done1298:
    rx366_cur."!cursor_pass"(rx366_pos, "cclass_elem", 'backtrack'=>1)
    .return (rx366_cur)
  rx366_restart1162:
    repr_get_attr_obj rx366_cstack, rx366_cur, rx366_curclass, "$!cstack"
  rx366_fail1163:
    unless rx366_bstack, rx366_done1161
    pop $I19, rx366_bstack
    if_null rx366_cstack, rx366_cstack_done1166
    unless rx366_cstack, rx366_cstack_done1166
    dec $I19
    set $P11, rx366_cstack[$I19]
  rx366_cstack_done1166:
    pop rx366_rep, rx366_bstack
    pop rx366_pos, rx366_bstack
    pop $I19, rx366_bstack
    lt rx366_pos, -1, rx366_done1161
    lt rx366_pos, 0, rx366_fail1163
    eq $I19, 0, rx366_fail1163
    nqp_islist $I20, rx366_cstack
    unless $I20, rx366_jump1164
    elements $I18, rx366_bstack
    le $I18, 0, rx366_cut1165
    dec $I18
    set $I18, rx366_bstack[$I18]
  rx366_cut1165:
    assign rx366_cstack, $I18
  rx366_jump1164:
    jump $I19
  rx366_done1161:
    rx366_cur."!cursor_fail"()
    .return (rx366_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_93_1346277621.774_caps" :subid("cuid_memo_173_1346277621.774")
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
.sub "cuid_93_1346277621.774_nfa" :subid("cuid_memo_174_1346277621.774")
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
.sub "cuid_93_1346277621.774_alt_nfa__17_1346277623.383" :subid("cuid_memo_175_1346277621.774")
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
.sub "cuid_93_1346277621.774_alt_nfa__19_1346277623.386" :subid("cuid_memo_176_1346277621.774")
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
.sub "cuid_93_1346277621.774_alt_nfa__18_1346277623.384" :subid("cuid_memo_177_1346277621.774")
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
.sub "" :subid("cuid_92_1346277621.774") :anon :lex :outer("cuid_93_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5004 = 'cuid_87_1346277621.774' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_89_1346277621.774' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_91_1346277621.774' 
    capture_lex $P5004 
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
    eq $I19, 1, rx375_restart1187
    gt rx375_pos, rx375_eos, rx375_fail1188
    repr_get_attr_int $I11, self, rx375_curclass, "$!from"
    ne $I11, -1, rxscan376_done1194
    goto rxscan376_scan1193
  rxscan376_loop1192:
    inc rx375_pos
    gt rx375_pos, rx375_eos, rx375_fail1188
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!from", rx375_pos
  rxscan376_scan1193:
    nqp_rxmark rx375_bstack, rxscan376_loop1192, rx375_pos, 0
  rxscan376_done1194:
  alt377_01196:
    nqp_rxmark rx375_bstack, alt377_11212, rx375_pos, 0
    nqp_rxmark rx375_bstack, rxquantr378_done1198, rx375_pos, 0
  rxquantr378_loop1197:
    ge rx375_pos, rx375_eos, rx375_fail1188
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1188
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr378_done1198
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr378_done1198
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr378_done1198, rx375_pos, rx375_rep
    goto rxquantr378_loop1197
  rxquantr378_done1198:
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail1188
    substr $S10, rx375_tgt, rx375_pos, 1
    ne $S10, ucs4:"-", rx375_fail1188
    add rx375_pos, 1
    .const 'Sub' $P5001 = 'cuid_87_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    ge $I11, 0, rx375_fail1188
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur."obs"("- as character range", ".. for range, for explicit - in character class, escape it or place as last thing")
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail1188
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
    goto alt377_end1195
  alt377_11212:
    nqp_rxmark rx375_bstack, rxquantr383_done1214, rx375_pos, 0
  rxquantr383_loop1213:
    ge rx375_pos, rx375_eos, rx375_fail1188
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1188
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr383_done1214
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr383_done1214
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr383_done1214, rx375_pos, rx375_rep
    goto rxquantr383_loop1213
  rxquantr383_done1214:
    .const 'Sub' $P5002 = 'cuid_89_1346277621.774' 
    capture_lex $P5002
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur.$P5002()
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail1188
    nqp_rxmark rx375_bstack, rxsubrule392_pass1242, -1, 0
  rxsubrule392_pass1242:
    rx375_cstack = rx375_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
    nqp_rxmark rx375_bstack, rxquantr393_done1244, rx375_pos, 0
  rxquantr393_loop1243:
    nqp_rxmark rx375_bstack, rxquantr394_done1246, rx375_pos, 0
  rxquantr394_loop1245:
    ge rx375_pos, rx375_eos, rx375_fail1188
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1188
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr394_done1246
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr394_done1246
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr394_done1246, rx375_pos, rx375_rep
    goto rxquantr394_loop1245
  rxquantr394_done1246:
    add $I11, rx375_pos, 2
    gt $I11, rx375_eos, rx375_fail1188
    substr $S10, rx375_tgt, rx375_pos, 2
    ne $S10, ucs4:"..", rx375_fail1188
    add rx375_pos, 2
    nqp_rxmark rx375_bstack, rxquantr395_done1248, rx375_pos, 0
  rxquantr395_loop1247:
    ge rx375_pos, rx375_eos, rx375_fail1188
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1188
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr395_done1248
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr395_done1248
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr395_done1248, rx375_pos, rx375_rep
    goto rxquantr395_loop1247
  rxquantr395_done1248:
    .const 'Sub' $P5003 = 'cuid_91_1346277621.774' 
    capture_lex $P5003
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur.$P5003()
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail1188
    nqp_rxmark rx375_bstack, rxsubrule404_pass1276, -1, 0
  rxsubrule404_pass1276:
    rx375_cstack = rx375_cur."!cursor_capture"($P11, 1)
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
    nqp_rxpeek $I19, rx375_bstack, rxquantr393_done1244
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr393_done1244
    inc rx375_rep
  rxquantr393_done1244:
  alt377_end1195:
    rx375_cur."!cursor_pass"(rx375_pos, 'backtrack'=>1)
    .return (rx375_cur)
  rx375_restart1187:
    repr_get_attr_obj rx375_cstack, rx375_cur, rx375_curclass, "$!cstack"
  rx375_fail1188:
    unless rx375_bstack, rx375_done1186
    pop $I19, rx375_bstack
    if_null rx375_cstack, rx375_cstack_done1191
    unless rx375_cstack, rx375_cstack_done1191
    dec $I19
    set $P11, rx375_cstack[$I19]
  rx375_cstack_done1191:
    pop rx375_rep, rx375_bstack
    pop rx375_pos, rx375_bstack
    pop $I19, rx375_bstack
    lt rx375_pos, -1, rx375_done1186
    lt rx375_pos, 0, rx375_fail1188
    eq $I19, 0, rx375_fail1188
    nqp_islist $I20, rx375_cstack
    unless $I20, rx375_jump1189
    elements $I18, rx375_bstack
    le $I18, 0, rx375_cut1190
    dec $I18
    set $I18, rx375_bstack[$I18]
  rx375_cut1190:
    assign rx375_cstack, $I18
  rx375_jump1189:
    jump $I19
  rx375_done1186:
    rx375_cur."!cursor_fail"()
    .return (rx375_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_92_1346277621.774_caps" :subid("cuid_memo_178_1346277621.774")
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
.sub "" :subid("cuid_87_1346277621.774") :anon :lex :outer("cuid_92_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx379_tgt
    .local int rx379_pos
    .local int rx379_off
    .local int rx379_eos
    .local int rx379_rep
    .local pmc rx379_cur
    .local pmc rx379_curclass
    .local pmc rx379_bstack
    .local pmc rx379_cstack
    (rx379_cur, rx379_tgt, rx379_pos, rx379_curclass, rx379_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx379_cur
    length rx379_eos, rx379_tgt
    eq $I19, 1, rx379_restart1201
    gt rx379_pos, rx379_eos, rx379_fail1202
    repr_get_attr_int $I11, self, rx379_curclass, "$!from"
    ne $I11, -1, rxscan380_done1208
    goto rxscan380_scan1207
  rxscan380_loop1206:
    inc rx379_pos
    gt rx379_pos, rx379_eos, rx379_fail1202
    repr_bind_attr_int rx379_cur, rx379_curclass, "$!from", rx379_pos
  rxscan380_scan1207:
    nqp_rxmark rx379_bstack, rxscan380_loop1206, rx379_pos, 0
  rxscan380_done1208:
    nqp_rxmark rx379_bstack, rxquantr381_done1210, rx379_pos, 0
  rxquantr381_loop1209:
    ge rx379_pos, rx379_eos, rx379_fail1202
    is_cclass $I11, .CCLASS_WHITESPACE, rx379_tgt, rx379_pos
    unless $I11, rx379_fail1202
    add rx379_pos, 1
    nqp_rxpeek $I19, rx379_bstack, rxquantr381_done1210
    inc $I19
    inc $I19
    set rx379_rep, rx379_bstack[$I19]
    nqp_rxcommit rx379_bstack, rxquantr381_done1210
    inc rx379_rep
    nqp_rxmark rx379_bstack, rxquantr381_done1210, rx379_pos, rx379_rep
    goto rxquantr381_loop1209
  rxquantr381_done1210:
    add $I11, rx379_pos, 1
    gt $I11, rx379_eos, rx379_fail1202
    substr $S10, rx379_tgt, rx379_pos, 1
    ne $S10, ucs4:"]", rx379_fail1202
    add rx379_pos, 1
    rx379_cur."!cursor_pass"(rx379_pos, 'backtrack'=>1)
    .return (rx379_cur)
  rx379_restart1201:
    repr_get_attr_obj rx379_cstack, rx379_cur, rx379_curclass, "$!cstack"
  rx379_fail1202:
    unless rx379_bstack, rx379_done1200
    pop $I19, rx379_bstack
    if_null rx379_cstack, rx379_cstack_done1205
    unless rx379_cstack, rx379_cstack_done1205
    dec $I19
    set $P11, rx379_cstack[$I19]
  rx379_cstack_done1205:
    pop rx379_rep, rx379_bstack
    pop rx379_pos, rx379_bstack
    pop $I19, rx379_bstack
    lt rx379_pos, -1, rx379_done1200
    lt rx379_pos, 0, rx379_fail1202
    eq $I19, 0, rx379_fail1202
    nqp_islist $I20, rx379_cstack
    unless $I20, rx379_jump1203
    elements $I18, rx379_bstack
    le $I18, 0, rx379_cut1204
    dec $I18
    set $I18, rx379_bstack[$I18]
  rx379_cut1204:
    assign rx379_cstack, $I18
  rx379_jump1203:
    jump $I19
  rx379_done1200:
    rx379_cur."!cursor_fail"()
    .return (rx379_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_87_1346277621.774_caps" :subid("cuid_memo_179_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_87_1346277621.774_nfa" :subid("cuid_memo_180_1346277621.774")
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
.sub "" :subid("cuid_89_1346277621.774") :anon :lex :outer("cuid_92_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5002 = 'cuid_88_1346277621.774' 
    capture_lex $P5002 
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
    eq $I19, 1, rx384_restart1217
    gt rx384_pos, rx384_eos, rx384_fail1218
    repr_get_attr_int $I11, self, rx384_curclass, "$!from"
    ne $I11, -1, rxscan385_done1224
    goto rxscan385_scan1223
  rxscan385_loop1222:
    inc rx384_pos
    gt rx384_pos, rx384_eos, rx384_fail1218
    repr_bind_attr_int rx384_cur, rx384_curclass, "$!from", rx384_pos
  rxscan385_scan1223:
    nqp_rxmark rx384_bstack, rxscan385_loop1222, rx384_pos, 0
  rxscan385_done1224:
  alt386_01226:
    nqp_rxmark rx384_bstack, alt386_11228, rx384_pos, 0
    add $I11, rx384_pos, 1
    gt $I11, rx384_eos, rx384_fail1218
    substr $S10, rx384_tgt, rx384_pos, 1
    ne $S10, ucs4:"\\", rx384_fail1218
    add rx384_pos, 1
    repr_bind_attr_int rx384_cur, rx384_curclass, "$!pos", rx384_pos
    $P11 = rx384_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx384_curclass, "$!pos"
    lt $I11, 0, rx384_fail1218
    nqp_rxmark rx384_bstack, rxsubrule387_pass1227, -1, 0
  rxsubrule387_pass1227:
    rx384_cstack = rx384_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx384_pos, $P11, rx384_curclass, "$!pos"
    goto alt386_end1225
  alt386_11228:
    .const 'Sub' $P5001 = 'cuid_88_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx384_cur, rx384_curclass, "$!pos", rx384_pos
    $P11 = rx384_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx384_curclass, "$!pos"
    lt $I11, 0, rx384_fail1218
    nqp_rxmark rx384_bstack, rxsubrule391_pass1241, -1, 0
  rxsubrule391_pass1241:
    rx384_cstack = rx384_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx384_pos, $P11, rx384_curclass, "$!pos"
  alt386_end1225:
    rx384_cur."!cursor_pass"(rx384_pos, 'backtrack'=>1)
    .return (rx384_cur)
  rx384_restart1217:
    repr_get_attr_obj rx384_cstack, rx384_cur, rx384_curclass, "$!cstack"
  rx384_fail1218:
    unless rx384_bstack, rx384_done1216
    pop $I19, rx384_bstack
    if_null rx384_cstack, rx384_cstack_done1221
    unless rx384_cstack, rx384_cstack_done1221
    dec $I19
    set $P11, rx384_cstack[$I19]
  rx384_cstack_done1221:
    pop rx384_rep, rx384_bstack
    pop rx384_pos, rx384_bstack
    pop $I19, rx384_bstack
    lt rx384_pos, -1, rx384_done1216
    lt rx384_pos, 0, rx384_fail1218
    eq $I19, 0, rx384_fail1218
    nqp_islist $I20, rx384_cstack
    unless $I20, rx384_jump1219
    elements $I18, rx384_bstack
    le $I18, 0, rx384_cut1220
    dec $I18
    set $I18, rx384_bstack[$I18]
  rx384_cut1220:
    assign rx384_cstack, $I18
  rx384_jump1219:
    jump $I19
  rx384_done1216:
    rx384_cur."!cursor_fail"()
    .return (rx384_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_89_1346277621.774_caps" :subid("cuid_memo_181_1346277621.774")
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
.sub "" :subid("cuid_88_1346277621.774") :anon :lex :outer("cuid_89_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx388_tgt
    .local int rx388_pos
    .local int rx388_off
    .local int rx388_eos
    .local int rx388_rep
    .local pmc rx388_cur
    .local pmc rx388_curclass
    .local pmc rx388_bstack
    .local pmc rx388_cstack
    (rx388_cur, rx388_tgt, rx388_pos, rx388_curclass, rx388_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx388_cur
    length rx388_eos, rx388_tgt
    eq $I19, 1, rx388_restart1231
    gt rx388_pos, rx388_eos, rx388_fail1232
    repr_get_attr_int $I11, self, rx388_curclass, "$!from"
    ne $I11, -1, rxscan389_done1238
    goto rxscan389_scan1237
  rxscan389_loop1236:
    inc rx388_pos
    gt rx388_pos, rx388_eos, rx388_fail1232
    repr_bind_attr_int rx388_cur, rx388_curclass, "$!from", rx388_pos
  rxscan389_scan1237:
    nqp_rxmark rx388_bstack, rxscan389_loop1236, rx388_pos, 0
  rxscan389_done1238:
    nqp_rxmark rx388_bstack, rxconj390_fail1239, rx388_pos, 0
    goto rxconj390_first1240
  rxconj390_fail1239:
    goto rx388_fail1232
  rxconj390_first1240:
    add $I11, rx388_pos, 1
    gt $I11, rx388_eos, rx388_fail1232
    substr $S10, rx388_tgt, rx388_pos, 1
    eq $S10, ucs4:"]", rx388_fail1232
    add rx388_pos, 1
    nqp_rxpeek $I19, rx388_bstack, rxconj390_fail1239
    inc $I19
    set $I11, rx388_bstack[$I19]
    nqp_rxmark rx388_bstack, rxconj390_fail1239, $I11, rx388_pos
    set rx388_pos, $I11
    add $I11, rx388_pos, 1
    gt $I11, rx388_eos, rx388_fail1232
    substr $S10, rx388_tgt, rx388_pos, 1
    eq $S10, ucs4:"\\", rx388_fail1232
    add rx388_pos, 1
    nqp_rxpeek $I19, rx388_bstack, rxconj390_fail1239
    inc $I19
    set $I11, rx388_bstack[$I19]
    inc $I19
    set $I12, rx388_bstack[$I19]
    ne rx388_pos, $I12, rx388_fail1232
    set rx388_pos, $I11
    ge rx388_pos, rx388_eos, rx388_fail1232
    add rx388_pos, 1
    rx388_cur."!cursor_pass"(rx388_pos, 'backtrack'=>1)
    .return (rx388_cur)
  rx388_restart1231:
    repr_get_attr_obj rx388_cstack, rx388_cur, rx388_curclass, "$!cstack"
  rx388_fail1232:
    unless rx388_bstack, rx388_done1230
    pop $I19, rx388_bstack
    if_null rx388_cstack, rx388_cstack_done1235
    unless rx388_cstack, rx388_cstack_done1235
    dec $I19
    set $P11, rx388_cstack[$I19]
  rx388_cstack_done1235:
    pop rx388_rep, rx388_bstack
    pop rx388_pos, rx388_bstack
    pop $I19, rx388_bstack
    lt rx388_pos, -1, rx388_done1230
    lt rx388_pos, 0, rx388_fail1232
    eq $I19, 0, rx388_fail1232
    nqp_islist $I20, rx388_cstack
    unless $I20, rx388_jump1233
    elements $I18, rx388_bstack
    le $I18, 0, rx388_cut1234
    dec $I18
    set $I18, rx388_bstack[$I18]
  rx388_cut1234:
    assign rx388_cstack, $I18
  rx388_jump1233:
    jump $I19
  rx388_done1230:
    rx388_cur."!cursor_fail"()
    .return (rx388_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_88_1346277621.774_caps" :subid("cuid_memo_182_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1346277621.774") :anon :lex :outer("cuid_92_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5002 = 'cuid_90_1346277621.774' 
    capture_lex $P5002 
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
    eq $I19, 1, rx396_restart1251
    gt rx396_pos, rx396_eos, rx396_fail1252
    repr_get_attr_int $I11, self, rx396_curclass, "$!from"
    ne $I11, -1, rxscan397_done1258
    goto rxscan397_scan1257
  rxscan397_loop1256:
    inc rx396_pos
    gt rx396_pos, rx396_eos, rx396_fail1252
    repr_bind_attr_int rx396_cur, rx396_curclass, "$!from", rx396_pos
  rxscan397_scan1257:
    nqp_rxmark rx396_bstack, rxscan397_loop1256, rx396_pos, 0
  rxscan397_done1258:
  alt398_01260:
    nqp_rxmark rx396_bstack, alt398_11262, rx396_pos, 0
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail1252
    substr $S10, rx396_tgt, rx396_pos, 1
    ne $S10, ucs4:"\\", rx396_fail1252
    add rx396_pos, 1
    repr_bind_attr_int rx396_cur, rx396_curclass, "$!pos", rx396_pos
    $P11 = rx396_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx396_curclass, "$!pos"
    lt $I11, 0, rx396_fail1252
    nqp_rxmark rx396_bstack, rxsubrule399_pass1261, -1, 0
  rxsubrule399_pass1261:
    rx396_cstack = rx396_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx396_pos, $P11, rx396_curclass, "$!pos"
    goto alt398_end1259
  alt398_11262:
    .const 'Sub' $P5001 = 'cuid_90_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx396_cur, rx396_curclass, "$!pos", rx396_pos
    $P11 = rx396_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx396_curclass, "$!pos"
    lt $I11, 0, rx396_fail1252
    nqp_rxmark rx396_bstack, rxsubrule403_pass1275, -1, 0
  rxsubrule403_pass1275:
    rx396_cstack = rx396_cur."!cursor_capture"($P11, 0)
    repr_get_attr_int rx396_pos, $P11, rx396_curclass, "$!pos"
  alt398_end1259:
    rx396_cur."!cursor_pass"(rx396_pos, 'backtrack'=>1)
    .return (rx396_cur)
  rx396_restart1251:
    repr_get_attr_obj rx396_cstack, rx396_cur, rx396_curclass, "$!cstack"
  rx396_fail1252:
    unless rx396_bstack, rx396_done1250
    pop $I19, rx396_bstack
    if_null rx396_cstack, rx396_cstack_done1255
    unless rx396_cstack, rx396_cstack_done1255
    dec $I19
    set $P11, rx396_cstack[$I19]
  rx396_cstack_done1255:
    pop rx396_rep, rx396_bstack
    pop rx396_pos, rx396_bstack
    pop $I19, rx396_bstack
    lt rx396_pos, -1, rx396_done1250
    lt rx396_pos, 0, rx396_fail1252
    eq $I19, 0, rx396_fail1252
    nqp_islist $I20, rx396_cstack
    unless $I20, rx396_jump1253
    elements $I18, rx396_bstack
    le $I18, 0, rx396_cut1254
    dec $I18
    set $I18, rx396_bstack[$I18]
  rx396_cut1254:
    assign rx396_cstack, $I18
  rx396_jump1253:
    jump $I19
  rx396_done1250:
    rx396_cur."!cursor_fail"()
    .return (rx396_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_91_1346277621.774_caps" :subid("cuid_memo_183_1346277621.774")
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
.sub "" :subid("cuid_90_1346277621.774") :anon :lex :outer("cuid_91_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx400_tgt
    .local int rx400_pos
    .local int rx400_off
    .local int rx400_eos
    .local int rx400_rep
    .local pmc rx400_cur
    .local pmc rx400_curclass
    .local pmc rx400_bstack
    .local pmc rx400_cstack
    (rx400_cur, rx400_tgt, rx400_pos, rx400_curclass, rx400_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx400_cur
    length rx400_eos, rx400_tgt
    eq $I19, 1, rx400_restart1265
    gt rx400_pos, rx400_eos, rx400_fail1266
    repr_get_attr_int $I11, self, rx400_curclass, "$!from"
    ne $I11, -1, rxscan401_done1272
    goto rxscan401_scan1271
  rxscan401_loop1270:
    inc rx400_pos
    gt rx400_pos, rx400_eos, rx400_fail1266
    repr_bind_attr_int rx400_cur, rx400_curclass, "$!from", rx400_pos
  rxscan401_scan1271:
    nqp_rxmark rx400_bstack, rxscan401_loop1270, rx400_pos, 0
  rxscan401_done1272:
    nqp_rxmark rx400_bstack, rxconj402_fail1273, rx400_pos, 0
    goto rxconj402_first1274
  rxconj402_fail1273:
    goto rx400_fail1266
  rxconj402_first1274:
    add $I11, rx400_pos, 1
    gt $I11, rx400_eos, rx400_fail1266
    substr $S10, rx400_tgt, rx400_pos, 1
    eq $S10, ucs4:"]", rx400_fail1266
    add rx400_pos, 1
    nqp_rxpeek $I19, rx400_bstack, rxconj402_fail1273
    inc $I19
    set $I11, rx400_bstack[$I19]
    nqp_rxmark rx400_bstack, rxconj402_fail1273, $I11, rx400_pos
    set rx400_pos, $I11
    add $I11, rx400_pos, 1
    gt $I11, rx400_eos, rx400_fail1266
    substr $S10, rx400_tgt, rx400_pos, 1
    eq $S10, ucs4:"\\", rx400_fail1266
    add rx400_pos, 1
    nqp_rxpeek $I19, rx400_bstack, rxconj402_fail1273
    inc $I19
    set $I11, rx400_bstack[$I19]
    inc $I19
    set $I12, rx400_bstack[$I19]
    ne rx400_pos, $I12, rx400_fail1266
    set rx400_pos, $I11
    ge rx400_pos, rx400_eos, rx400_fail1266
    add rx400_pos, 1
    rx400_cur."!cursor_pass"(rx400_pos, 'backtrack'=>1)
    .return (rx400_cur)
  rx400_restart1265:
    repr_get_attr_obj rx400_cstack, rx400_cur, rx400_curclass, "$!cstack"
  rx400_fail1266:
    unless rx400_bstack, rx400_done1264
    pop $I19, rx400_bstack
    if_null rx400_cstack, rx400_cstack_done1269
    unless rx400_cstack, rx400_cstack_done1269
    dec $I19
    set $P11, rx400_cstack[$I19]
  rx400_cstack_done1269:
    pop rx400_rep, rx400_bstack
    pop rx400_pos, rx400_bstack
    pop $I19, rx400_bstack
    lt rx400_pos, -1, rx400_done1264
    lt rx400_pos, 0, rx400_fail1266
    eq $I19, 0, rx400_fail1266
    nqp_islist $I20, rx400_cstack
    unless $I20, rx400_jump1267
    elements $I18, rx400_bstack
    le $I18, 0, rx400_cut1268
    dec $I18
    set $I18, rx400_bstack[$I18]
  rx400_cut1268:
    assign rx400_cstack, $I18
  rx400_jump1267:
    jump $I19
  rx400_done1264:
    rx400_cur."!cursor_fail"()
    .return (rx400_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_90_1346277621.774_caps" :subid("cuid_memo_184_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_internal" :subid("cuid_95_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 233
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_94_1346277621.774' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx416_restart1303
    gt rx416_pos, rx416_eos, rx416_fail1304
    repr_get_attr_int $I11, self, rx416_curclass, "$!from"
    ne $I11, -1, rxscan417_done1310
    goto rxscan417_scan1309
  rxscan417_loop1308:
    inc rx416_pos
    gt rx416_pos, rx416_eos, rx416_fail1304
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!from", rx416_pos
  rxscan417_scan1309:
    nqp_rxmark rx416_bstack, rxscan417_loop1308, rx416_pos, 0
  rxscan417_done1310:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt418_01312
    nqp_push_label $P11, alt418_11334
    nqp_rxmark rx416_bstack, alt418_end1311, -1, 0
    rx416_cur."!alt"(rx416_pos, "alt_nfa__21_1346277623.423", $P11)
    goto rx416_fail1304
  alt418_01312:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1304
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:":", rx416_fail1304
    add rx416_pos, 1
    nqp_rxmark rx416_bstack, rxquantr419_done1314, -1, 0
  rxquantr419_loop1313:
    .const 'Sub' $P5001 = 'cuid_94_1346277621.774' 
    capture_lex $P5001
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!pos", rx416_pos
    $P11 = rx416_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1304
    goto rxsubrule424_pass1330
  rxsubrule424_back1331:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1304
  rxsubrule424_pass1330:
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "n")
    set_addr $I11, rxsubrule424_back1331
    push rx416_bstack, $I11
    push rx416_bstack, 0
    push rx416_bstack, rx416_pos
    elements $I11, rx416_cstack
    push rx416_bstack, $I11
    repr_get_attr_int rx416_pos, $P11, rx416_curclass, "$!pos"
    nqp_rxpeek $I19, rx416_bstack, rxquantr419_done1314
    inc $I19
    inc $I19
    set rx416_rep, rx416_bstack[$I19]
    nqp_rxcommit rx416_bstack, rxquantr419_done1314
    inc rx416_rep
  rxquantr419_done1314:
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!pos", rx416_pos
    $P11 = rx416_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1304
    nqp_rxmark rx416_bstack, rxsubrule425_pass1332, -1, 0
  rxsubrule425_pass1332:
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx416_pos, $P11, rx416_curclass, "$!pos"
    le rx416_pos, 0, rx416_fail1304
    is_cclass $I11, .CCLASS_WORD, rx416_tgt, rx416_pos
    if $I11, rx416_fail1304
    sub $I11, rx416_pos, 1
    is_cclass $I11, .CCLASS_WORD, rx416_tgt, $I11
    unless $I11, rx416_fail1304
    goto alt418_end1311
  alt418_11334:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1304
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:":", rx416_fail1304
    add rx416_pos, 1
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!pos", rx416_pos
    $P11 = rx416_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1304
    nqp_rxmark rx416_bstack, rxsubrule427_pass1335, -1, 0
  rxsubrule427_pass1335:
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx416_pos, $P11, rx416_curclass, "$!pos"
    nqp_rxmark rx416_bstack, rxquantr428_done1337, rx416_pos, 0
  rxquantr428_loop1336:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1304
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:"(", rx416_fail1304
    add rx416_pos, 1
    nqp_rxmark rx416_bstack, rxcap429_fail1339, rx416_pos, 0
    nqp_rxmark rx416_bstack, rxquantr430_done1341, -1, 0
  rxquantr430_loop1340:
    ge rx416_pos, rx416_eos, rx416_fail1304
    is_cclass $I11, .CCLASS_NUMERIC, rx416_tgt, rx416_pos
    unless $I11, rx416_fail1304
    add rx416_pos, 1
    nqp_rxpeek $I19, rx416_bstack, rxquantr430_done1341
    inc $I19
    inc $I19
    set rx416_rep, rx416_bstack[$I19]
    nqp_rxcommit rx416_bstack, rxquantr430_done1341
    inc rx416_rep
    nqp_rxmark rx416_bstack, rxquantr430_done1341, rx416_pos, rx416_rep
    goto rxquantr430_loop1340
  rxquantr430_done1341:
    nqp_rxpeek $I19, rx416_bstack, rxcap429_fail1339
    inc $I19
    set $I11, rx416_bstack[$I19]
    $P11 = rx416_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx416_pos)
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "n")
    goto rxcap429_done1338
  rxcap429_fail1339:
    goto rx416_fail1304
  rxcap429_done1338:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1304
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:")", rx416_fail1304
    add rx416_pos, 1
    nqp_rxpeek $I19, rx416_bstack, rxquantr428_done1337
    inc $I19
    inc $I19
    set rx416_rep, rx416_bstack[$I19]
    nqp_rxcommit rx416_bstack, rxquantr428_done1337
    inc rx416_rep
  rxquantr428_done1337:
    goto alt418_end1311
  alt418_end1311:
    nqp_rxcommit rx416_bstack, alt418_end1311
    rx416_cur."!cursor_pass"(rx416_pos, "mod_internal", 'backtrack'=>1)
    .return (rx416_cur)
  rx416_restart1303:
    repr_get_attr_obj rx416_cstack, rx416_cur, rx416_curclass, "$!cstack"
  rx416_fail1304:
    unless rx416_bstack, rx416_done1302
    pop $I19, rx416_bstack
    if_null rx416_cstack, rx416_cstack_done1307
    unless rx416_cstack, rx416_cstack_done1307
    dec $I19
    set $P11, rx416_cstack[$I19]
  rx416_cstack_done1307:
    pop rx416_rep, rx416_bstack
    pop rx416_pos, rx416_bstack
    pop $I19, rx416_bstack
    lt rx416_pos, -1, rx416_done1302
    lt rx416_pos, 0, rx416_fail1304
    eq $I19, 0, rx416_fail1304
    nqp_islist $I20, rx416_cstack
    unless $I20, rx416_jump1305
    elements $I18, rx416_bstack
    le $I18, 0, rx416_cut1306
    dec $I18
    set $I18, rx416_bstack[$I18]
  rx416_cut1306:
    assign rx416_cstack, $I18
  rx416_jump1305:
    jump $I19
  rx416_done1302:
    rx416_cur."!cursor_fail"()
    .return (rx416_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_95_1346277621.774_caps" :subid("cuid_memo_185_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["n"], $P5002
    box $P5003, 0
    set $P5001["mod_ident"], $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_95_1346277621.774_nfa" :subid("cuid_memo_186_1346277621.774")
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
    push $P5001, $P5025
    new $P5029, 'ResizablePMCArray'
    box $P5030, 4
    push $P5029, $P5030
    box $P5031, 8
    push $P5029, $P5031
    box $P5032, 7
    push $P5029, $P5032
    push $P5001, $P5029
    new $P5033, 'ResizablePMCArray'
    box $P5034, 1
    push $P5033, $P5034
    box $P5035, 0
    push $P5033, $P5035
    box $P5036, 6
    push $P5033, $P5036
    box $P5037, 1
    push $P5033, $P5037
    box $P5038, 0
    push $P5033, $P5038
    box $P5039, 8
    push $P5033, $P5039
    box $P5040, 2
    push $P5033, $P5040
    box $P5041, 41
    push $P5033, $P5041
    box $P5042, 0
    push $P5033, $P5042
    push $P5001, $P5033
    new $P5043, 'ResizablePMCArray'
    push $P5001, $P5043
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_95_1346277621.774_alt_nfa__21_1346277623.423" :subid("cuid_memo_187_1346277621.774")
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
    push $P5012, $P5029
    new $P5033, 'ResizablePMCArray'
    box $P5034, 4
    push $P5033, $P5034
    box $P5035, 8
    push $P5033, $P5035
    box $P5036, 6
    push $P5033, $P5036
    push $P5012, $P5033
    new $P5037, 'ResizablePMCArray'
    box $P5038, 1
    push $P5037, $P5038
    box $P5039, 0
    push $P5037, $P5039
    box $P5040, 5
    push $P5037, $P5040
    box $P5041, 1
    push $P5037, $P5041
    box $P5042, 0
    push $P5037, $P5042
    box $P5043, 7
    push $P5037, $P5043
    box $P5044, 2
    push $P5037, $P5044
    box $P5045, 41
    push $P5037, $P5045
    box $P5046, 0
    push $P5037, $P5046
    push $P5012, $P5037
    new $P5047, 'ResizablePMCArray'
    push $P5012, $P5047
    push $P5001, $P5012
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1346277621.774") :anon :lex :outer("cuid_95_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local string rx420_tgt
    .local int rx420_pos
    .local int rx420_off
    .local int rx420_eos
    .local int rx420_rep
    .local pmc rx420_cur
    .local pmc rx420_curclass
    .local pmc rx420_bstack
    .local pmc rx420_cstack
    (rx420_cur, rx420_tgt, rx420_pos, rx420_curclass, rx420_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx420_cur
    length rx420_eos, rx420_tgt
    eq $I19, 1, rx420_restart1317
    gt rx420_pos, rx420_eos, rx420_fail1318
    repr_get_attr_int $I11, self, rx420_curclass, "$!from"
    ne $I11, -1, rxscan421_done1324
    goto rxscan421_scan1323
  rxscan421_loop1322:
    inc rx420_pos
    gt rx420_pos, rx420_eos, rx420_fail1318
    repr_bind_attr_int rx420_cur, rx420_curclass, "$!from", rx420_pos
  rxscan421_scan1323:
    nqp_rxmark rx420_bstack, rxscan421_loop1322, rx420_pos, 0
  rxscan421_done1324:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt422_01326
    nqp_push_label $P11, alt422_11327
    nqp_rxmark rx420_bstack, alt422_end1325, -1, 0
    rx420_cur."!alt"(rx420_pos, "alt_nfa__20_1346277623.399", $P11)
    goto rx420_fail1318
  alt422_01326:
    add $I11, rx420_pos, 1
    gt $I11, rx420_eos, rx420_fail1318
    substr $S10, rx420_tgt, rx420_pos, 1
    ne $S10, ucs4:"!", rx420_fail1318
    add rx420_pos, 1
    goto alt422_end1325
  alt422_11327:
    nqp_rxmark rx420_bstack, rxquantr423_done1329, -1, 0
  rxquantr423_loop1328:
    ge rx420_pos, rx420_eos, rx420_fail1318
    is_cclass $I11, .CCLASS_NUMERIC, rx420_tgt, rx420_pos
    unless $I11, rx420_fail1318
    add rx420_pos, 1
    nqp_rxpeek $I19, rx420_bstack, rxquantr423_done1329
    inc $I19
    inc $I19
    set rx420_rep, rx420_bstack[$I19]
    nqp_rxcommit rx420_bstack, rxquantr423_done1329
    inc rx420_rep
    nqp_rxmark rx420_bstack, rxquantr423_done1329, rx420_pos, rx420_rep
    goto rxquantr423_loop1328
  rxquantr423_done1329:
    goto alt422_end1325
  alt422_end1325:
    rx420_cur."!cursor_pass"(rx420_pos, 'backtrack'=>1)
    .return (rx420_cur)
  rx420_restart1317:
    repr_get_attr_obj rx420_cstack, rx420_cur, rx420_curclass, "$!cstack"
  rx420_fail1318:
    unless rx420_bstack, rx420_done1316
    pop $I19, rx420_bstack
    if_null rx420_cstack, rx420_cstack_done1321
    unless rx420_cstack, rx420_cstack_done1321
    dec $I19
    set $P11, rx420_cstack[$I19]
  rx420_cstack_done1321:
    pop rx420_rep, rx420_bstack
    pop rx420_pos, rx420_bstack
    pop $I19, rx420_bstack
    lt rx420_pos, -1, rx420_done1316
    lt rx420_pos, 0, rx420_fail1318
    eq $I19, 0, rx420_fail1318
    nqp_islist $I20, rx420_cstack
    unless $I20, rx420_jump1319
    elements $I18, rx420_bstack
    le $I18, 0, rx420_cut1320
    dec $I18
    set $I18, rx420_bstack[$I18]
  rx420_cut1320:
    assign rx420_cstack, $I18
  rx420_jump1319:
    jump $I19
  rx420_done1316:
    rx420_cur."!cursor_fail"()
    .return (rx420_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1346277621.774_caps" :subid("cuid_memo_188_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1346277621.774_nfa" :subid("cuid_memo_189_1346277621.774")
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
.sub "cuid_94_1346277621.774_alt_nfa__20_1346277623.399" :subid("cuid_memo_190_1346277621.774")
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
.sub "mod_ident" :subid("cuid_96_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 240
    .param pmc self 
    $P5001 = self."!protoregex"("mod_ident")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_ident:sym<ignorecase>" :subid("cuid_97_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 241
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx431_tgt
    .local int rx431_pos
    .local int rx431_off
    .local int rx431_eos
    .local int rx431_rep
    .local pmc rx431_cur
    .local pmc rx431_curclass
    .local pmc rx431_bstack
    .local pmc rx431_cstack
    (rx431_cur, rx431_tgt, rx431_pos, rx431_curclass, rx431_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx431_cur
    length rx431_eos, rx431_tgt
    eq $I19, 1, rx431_restart1344
    gt rx431_pos, rx431_eos, rx431_fail1345
    repr_get_attr_int $I11, self, rx431_curclass, "$!from"
    ne $I11, -1, rxscan432_done1351
    goto rxscan432_scan1350
  rxscan432_loop1349:
    inc rx431_pos
    gt rx431_pos, rx431_eos, rx431_fail1345
    repr_bind_attr_int rx431_cur, rx431_curclass, "$!from", rx431_pos
  rxscan432_scan1350:
    nqp_rxmark rx431_bstack, rxscan432_loop1349, rx431_pos, 0
  rxscan432_done1351:
    nqp_rxmark rx431_bstack, rxcap433_fail1353, rx431_pos, 0
    add $I11, rx431_pos, 1
    gt $I11, rx431_eos, rx431_fail1345
    substr $S10, rx431_tgt, rx431_pos, 1
    ne $S10, ucs4:"i", rx431_fail1345
    add rx431_pos, 1
    nqp_rxpeek $I19, rx431_bstack, rxcap433_fail1353
    inc $I19
    set $I11, rx431_bstack[$I19]
    $P11 = rx431_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx431_pos)
    rx431_cstack = rx431_cur."!cursor_capture"($P11, "sym")
    goto rxcap433_done1352
  rxcap433_fail1353:
    goto rx431_fail1345
  rxcap433_done1352:
    nqp_rxmark rx431_bstack, rxquantr434_done1355, rx431_pos, 0
  rxquantr434_loop1354:
    add $I11, rx431_pos, 9
    gt $I11, rx431_eos, rx431_fail1345
    substr $S10, rx431_tgt, rx431_pos, 9
    ne $S10, ucs4:"gnorecase", rx431_fail1345
    add rx431_pos, 9
    nqp_rxpeek $I19, rx431_bstack, rxquantr434_done1355
    inc $I19
    inc $I19
    set rx431_rep, rx431_bstack[$I19]
    nqp_rxcommit rx431_bstack, rxquantr434_done1355
    inc rx431_rep
  rxquantr434_done1355:
    rx431_cur."!cursor_pass"(rx431_pos, "mod_ident:sym<ignorecase>", 'backtrack'=>1)
    .return (rx431_cur)
  rx431_restart1344:
    repr_get_attr_obj rx431_cstack, rx431_cur, rx431_curclass, "$!cstack"
  rx431_fail1345:
    unless rx431_bstack, rx431_done1343
    pop $I19, rx431_bstack
    if_null rx431_cstack, rx431_cstack_done1348
    unless rx431_cstack, rx431_cstack_done1348
    dec $I19
    set $P11, rx431_cstack[$I19]
  rx431_cstack_done1348:
    pop rx431_rep, rx431_bstack
    pop rx431_pos, rx431_bstack
    pop $I19, rx431_bstack
    lt rx431_pos, -1, rx431_done1343
    lt rx431_pos, 0, rx431_fail1345
    eq $I19, 0, rx431_fail1345
    nqp_islist $I20, rx431_cstack
    unless $I20, rx431_jump1346
    elements $I18, rx431_bstack
    le $I18, 0, rx431_cut1347
    dec $I18
    set $I18, rx431_bstack[$I18]
  rx431_cut1347:
    assign rx431_cstack, $I18
  rx431_jump1346:
    jump $I19
  rx431_done1343:
    rx431_cur."!cursor_fail"()
    .return (rx431_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_97_1346277621.774_caps" :subid("cuid_memo_191_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_97_1346277621.774_nfa" :subid("cuid_memo_192_1346277621.774")
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
.sub "mod_ident:sym<ratchet>" :subid("cuid_98_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 242
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx435_tgt
    .local int rx435_pos
    .local int rx435_off
    .local int rx435_eos
    .local int rx435_rep
    .local pmc rx435_cur
    .local pmc rx435_curclass
    .local pmc rx435_bstack
    .local pmc rx435_cstack
    (rx435_cur, rx435_tgt, rx435_pos, rx435_curclass, rx435_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx435_cur
    length rx435_eos, rx435_tgt
    eq $I19, 1, rx435_restart1358
    gt rx435_pos, rx435_eos, rx435_fail1359
    repr_get_attr_int $I11, self, rx435_curclass, "$!from"
    ne $I11, -1, rxscan436_done1365
    goto rxscan436_scan1364
  rxscan436_loop1363:
    inc rx435_pos
    gt rx435_pos, rx435_eos, rx435_fail1359
    repr_bind_attr_int rx435_cur, rx435_curclass, "$!from", rx435_pos
  rxscan436_scan1364:
    nqp_rxmark rx435_bstack, rxscan436_loop1363, rx435_pos, 0
  rxscan436_done1365:
    nqp_rxmark rx435_bstack, rxcap437_fail1367, rx435_pos, 0
    add $I11, rx435_pos, 1
    gt $I11, rx435_eos, rx435_fail1359
    substr $S10, rx435_tgt, rx435_pos, 1
    ne $S10, ucs4:"r", rx435_fail1359
    add rx435_pos, 1
    nqp_rxpeek $I19, rx435_bstack, rxcap437_fail1367
    inc $I19
    set $I11, rx435_bstack[$I19]
    $P11 = rx435_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx435_pos)
    rx435_cstack = rx435_cur."!cursor_capture"($P11, "sym")
    goto rxcap437_done1366
  rxcap437_fail1367:
    goto rx435_fail1359
  rxcap437_done1366:
    nqp_rxmark rx435_bstack, rxquantr438_done1369, rx435_pos, 0
  rxquantr438_loop1368:
    add $I11, rx435_pos, 6
    gt $I11, rx435_eos, rx435_fail1359
    substr $S10, rx435_tgt, rx435_pos, 6
    ne $S10, ucs4:"atchet", rx435_fail1359
    add rx435_pos, 6
    nqp_rxpeek $I19, rx435_bstack, rxquantr438_done1369
    inc $I19
    inc $I19
    set rx435_rep, rx435_bstack[$I19]
    nqp_rxcommit rx435_bstack, rxquantr438_done1369
    inc rx435_rep
  rxquantr438_done1369:
    rx435_cur."!cursor_pass"(rx435_pos, "mod_ident:sym<ratchet>", 'backtrack'=>1)
    .return (rx435_cur)
  rx435_restart1358:
    repr_get_attr_obj rx435_cstack, rx435_cur, rx435_curclass, "$!cstack"
  rx435_fail1359:
    unless rx435_bstack, rx435_done1357
    pop $I19, rx435_bstack
    if_null rx435_cstack, rx435_cstack_done1362
    unless rx435_cstack, rx435_cstack_done1362
    dec $I19
    set $P11, rx435_cstack[$I19]
  rx435_cstack_done1362:
    pop rx435_rep, rx435_bstack
    pop rx435_pos, rx435_bstack
    pop $I19, rx435_bstack
    lt rx435_pos, -1, rx435_done1357
    lt rx435_pos, 0, rx435_fail1359
    eq $I19, 0, rx435_fail1359
    nqp_islist $I20, rx435_cstack
    unless $I20, rx435_jump1360
    elements $I18, rx435_bstack
    le $I18, 0, rx435_cut1361
    dec $I18
    set $I18, rx435_bstack[$I18]
  rx435_cut1361:
    assign rx435_cstack, $I18
  rx435_jump1360:
    jump $I19
  rx435_done1357:
    rx435_cur."!cursor_fail"()
    .return (rx435_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_98_1346277621.774_caps" :subid("cuid_memo_193_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_98_1346277621.774_nfa" :subid("cuid_memo_194_1346277621.774")
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
.sub "mod_ident:sym<sigspace>" :subid("cuid_99_1346277621.774") :anon :lex :outer("cuid_100_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 243
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local string rx439_tgt
    .local int rx439_pos
    .local int rx439_off
    .local int rx439_eos
    .local int rx439_rep
    .local pmc rx439_cur
    .local pmc rx439_curclass
    .local pmc rx439_bstack
    .local pmc rx439_cstack
    (rx439_cur, rx439_tgt, rx439_pos, rx439_curclass, rx439_bstack, $I19) = self."!cursor_start"()
    store_lex unicode:"$\x{a2}", rx439_cur
    length rx439_eos, rx439_tgt
    eq $I19, 1, rx439_restart1372
    gt rx439_pos, rx439_eos, rx439_fail1373
    repr_get_attr_int $I11, self, rx439_curclass, "$!from"
    ne $I11, -1, rxscan440_done1379
    goto rxscan440_scan1378
  rxscan440_loop1377:
    inc rx439_pos
    gt rx439_pos, rx439_eos, rx439_fail1373
    repr_bind_attr_int rx439_cur, rx439_curclass, "$!from", rx439_pos
  rxscan440_scan1378:
    nqp_rxmark rx439_bstack, rxscan440_loop1377, rx439_pos, 0
  rxscan440_done1379:
    nqp_rxmark rx439_bstack, rxcap441_fail1381, rx439_pos, 0
    add $I11, rx439_pos, 1
    gt $I11, rx439_eos, rx439_fail1373
    substr $S10, rx439_tgt, rx439_pos, 1
    ne $S10, ucs4:"s", rx439_fail1373
    add rx439_pos, 1
    nqp_rxpeek $I19, rx439_bstack, rxcap441_fail1381
    inc $I19
    set $I11, rx439_bstack[$I19]
    $P11 = rx439_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx439_pos)
    rx439_cstack = rx439_cur."!cursor_capture"($P11, "sym")
    goto rxcap441_done1380
  rxcap441_fail1381:
    goto rx439_fail1373
  rxcap441_done1380:
    nqp_rxmark rx439_bstack, rxquantr442_done1383, rx439_pos, 0
  rxquantr442_loop1382:
    add $I11, rx439_pos, 7
    gt $I11, rx439_eos, rx439_fail1373
    substr $S10, rx439_tgt, rx439_pos, 7
    ne $S10, ucs4:"igspace", rx439_fail1373
    add rx439_pos, 7
    nqp_rxpeek $I19, rx439_bstack, rxquantr442_done1383
    inc $I19
    inc $I19
    set rx439_rep, rx439_bstack[$I19]
    nqp_rxcommit rx439_bstack, rxquantr442_done1383
    inc rx439_rep
  rxquantr442_done1383:
    rx439_cur."!cursor_pass"(rx439_pos, "mod_ident:sym<sigspace>", 'backtrack'=>1)
    .return (rx439_cur)
  rx439_restart1372:
    repr_get_attr_obj rx439_cstack, rx439_cur, rx439_curclass, "$!cstack"
  rx439_fail1373:
    unless rx439_bstack, rx439_done1371
    pop $I19, rx439_bstack
    if_null rx439_cstack, rx439_cstack_done1376
    unless rx439_cstack, rx439_cstack_done1376
    dec $I19
    set $P11, rx439_cstack[$I19]
  rx439_cstack_done1376:
    pop rx439_rep, rx439_bstack
    pop rx439_pos, rx439_bstack
    pop $I19, rx439_bstack
    lt rx439_pos, -1, rx439_done1371
    lt rx439_pos, 0, rx439_fail1373
    eq $I19, 0, rx439_fail1373
    nqp_islist $I20, rx439_cstack
    unless $I20, rx439_jump1374
    elements $I18, rx439_bstack
    le $I18, 0, rx439_cut1375
    dec $I18
    set $I18, rx439_bstack[$I18]
  rx439_cut1375:
    assign rx439_cstack, $I18
  rx439_jump1374:
    jump $I19
  rx439_done1371:
    rx439_cur."!cursor_fail"()
    .return (rx439_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_99_1346277621.774_caps" :subid("cuid_memo_195_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_99_1346277621.774_nfa" :subid("cuid_memo_196_1346277621.774")
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
.sub "" :subid("cuid_157_1346277621.774") :anon :lex :outer("cuid_1_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 247
    .const 'Sub' $P5067 = 'cuid_165_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_167_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_170_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_174_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_187_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_191_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_101_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_102_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_103_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_104_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_105_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_106_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_107_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_108_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_109_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_110_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_111_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_112_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_113_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_114_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_115_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_116_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_117_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_118_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_119_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_120_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_121_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_122_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_123_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_124_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_125_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_126_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_127_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_128_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_129_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_130_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_131_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_132_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_133_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_134_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_135_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_136_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_137_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_138_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_139_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_140_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_141_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_142_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_143_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_144_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_145_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_146_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_147_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_148_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_149_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_150_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_151_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_152_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_153_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_154_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_155_1346277621.774' 
    capture_lex $P5067 
    .const 'Sub' $P5067 = 'cuid_156_1346277621.774' 
    capture_lex $P5067 
    .lex "&backmod", $P101 
    .lex "&buildsub", $P102 
    .lex "&qbuildsub", $P103 
    .lex "&capnames", $P104 
    .lex "&alt_nfas", $P105 
    .lex "&qalt_nfas", $P106 
    .lex "$?PACKAGE", $P107 
    .lex "$?CLASS", $P108 
    .const 'Sub' $P5001 = 'cuid_165_1346277621.774' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_167_1346277621.774' 
    capture_lex $P5002
    set $P102, $P5002
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5003["buildsub"], $P102
    .const 'Sub' $P5005 = 'cuid_170_1346277621.774' 
    capture_lex $P5005
    set $P103, $P5005
    find_lex $P5007, "$?PACKAGE"
    get_who $P5006, $P5007
    set $P5006["qbuildsub"], $P103
    .const 'Sub' $P5008 = 'cuid_174_1346277621.774' 
    capture_lex $P5008
    set $P104, $P5008
    .const 'Sub' $P5009 = 'cuid_187_1346277621.774' 
    capture_lex $P5009
    set $P105, $P5009
    .const 'Sub' $P5010 = 'cuid_191_1346277621.774' 
    capture_lex $P5010
    set $P106, $P5010
    .const 'Sub' $P5011 = 'cuid_101_1346277621.774' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_102_1346277621.774' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_103_1346277621.774' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_104_1346277621.774' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_105_1346277621.774' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_106_1346277621.774' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_107_1346277621.774' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_108_1346277621.774' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_109_1346277621.774' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_110_1346277621.774' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_111_1346277621.774' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_112_1346277621.774' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_113_1346277621.774' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_114_1346277621.774' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_115_1346277621.774' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_116_1346277621.774' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_117_1346277621.774' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_118_1346277621.774' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_119_1346277621.774' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_120_1346277621.774' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_121_1346277621.774' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_122_1346277621.774' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_123_1346277621.774' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_124_1346277621.774' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_125_1346277621.774' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_126_1346277621.774' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_127_1346277621.774' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_128_1346277621.774' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_129_1346277621.774' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_130_1346277621.774' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_131_1346277621.774' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_132_1346277621.774' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_133_1346277621.774' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_134_1346277621.774' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_135_1346277621.774' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_136_1346277621.774' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_137_1346277621.774' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_138_1346277621.774' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_139_1346277621.774' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_140_1346277621.774' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_141_1346277621.774' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_142_1346277621.774' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_143_1346277621.774' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_144_1346277621.774' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_145_1346277621.774' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_146_1346277621.774' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_147_1346277621.774' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_148_1346277621.774' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_149_1346277621.774' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_150_1346277621.774' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_151_1346277621.774' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_152_1346277621.774' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_153_1346277621.774' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_154_1346277621.774' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_155_1346277621.774' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_156_1346277621.774' 
    capture_lex $P5066
    .return ($P5066) 
.end
.HLL "nqp"
.namespace []
.sub "backmod" :subid("cuid_165_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 755
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ast", _lex_param_0 
    .lex "$backmod", _lex_param_1 
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, ":"
    unless $I5001 goto if443_else1384 
.annotate 'line', 756
    $P5001 = _lex_param_0."backtrack"("r")
    set $P5007, $P5001
    goto if443_end1385
  if443_else1384:
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, ":?"
    set $I5004, $I5002
    if $I5002 goto unless445_end1389 
    set $S5003, _lex_param_1
    iseq $I5003, $S5003, "?"
    set $I5004, $I5003
  unless445_end1389:
    unless $I5004 goto if444_else1386 
.annotate 'line', 757
    $P5002 = _lex_param_0."backtrack"("f")
    set $P5006, $P5002
    goto if444_end1387
  if444_else1386:
    set $S5004, _lex_param_1
    iseq $I5005, $S5004, ":!"
    set $I5007, $I5005
    if $I5005 goto unless447_end1393 
    set $S5005, _lex_param_1
    iseq $I5006, $S5005, "!"
    set $I5007, $I5006
  unless447_end1393:
    box $P5005, $I5007
    set $P5004, $P5005
    unless $I5007 goto if446_end1391 
.annotate 'line', 758
    $P5003 = _lex_param_0."backtrack"("g")
    set $P5004, $P5003
  if446_end1391:
    set $P5006, $P5004
  if444_end1387:
    set $P5007, $P5006
  if443_end1385:
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "buildsub" :subid("cuid_167_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 762
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc _lex_param_2 :named("anon") :optional 
    .param int haz_param_3 :opt_flag 
    .const 'Sub' $P5113 = 'cuid_166_1346277621.774' 
    capture_lex $P5113 
    .const 'Sub' $P5113 = 'cuid_168_1346277621.774' 
    capture_lex $P5113 
    if haz_param_2, default1423
    get_hll_global $P5109, "GLOBAL"
    nqp_get_package_through_who $P5108, $P5109, "PAST"
    get_who $P5107, $P5108
    set $P5106, $P5107["Block"]
    unless_null $P5106, fallback1424
    nqp_get_sc_object $P5110, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5106, $P5110
  fallback1424:
    $P5111 = $P5106."new"("method" :named("blocktype"))
    set _lex_param_1, $P5111
  default1423:
    if haz_param_3, default1425
    nqp_get_sc_object $P5112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5112
  default1425:
    .lex "$blockid", $P101 
    .lex "$hashpast", $P102 
    .lex "$initpast", $P103 
    .lex "$capblock", $P104 
    .lex "$nfapast", $P105 
    .lex "$qast", _lex_param_0 
    .lex "$block", _lex_param_1 
    .lex "$anon", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
.annotate 'line', 763
    $P5006 = _lex_param_1."subid"()
    set $P101, $P5006
.annotate 'line', 764
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "PAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Op"]
    unless_null $P5007, fallback1394
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback1394:
    $P5012 = $P5007."new"("hash" :named("pasttype"))
    set $P102, $P5012
.annotate 'line', 765
    $P5016 = "&capnames"(_lex_param_0, 0)
    set $P5013, $P5016
    iter $P5015, $P5016
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers1397
    push_eh $P5018
  for_next1398:
    unless $P5015, for_done1400
    shift $P5019, $P5015
  for_redo1399:
    .const 'Sub' $P5017 = 'cuid_166_1346277621.774' 
    capture_lex $P5017
    $P5013 = $P5017($P5019)
    goto for_next1398
  for_handlers1397:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next1398
    eq $P5018, .CONTROL_LOOP_REDO, for_redo1399
  for_done1400:
    pop_eh 
.annotate 'line', 772
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "PAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Stmts"]
    unless_null $P5020, fallback1401
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5024
  fallback1401:
    $P5025 = $P5020."new"()
    set $P103, $P5025
.annotate 'line', 773
    get_hll_global $P5029, "GLOBAL"
    nqp_get_package_through_who $P5028, $P5029, "PAST"
    get_who $P5027, $P5028
    set $P5026, $P5027["Block"]
    unless_null $P5026, fallback1402
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5030
  fallback1402:
    new $P5031, 'ResizablePMCArray'
    box $P5032, "Sub"
    push $P5031, $P5032
    set $S5002, $P101
    concat $S5001, $S5002, "_caps"
    $P5033 = $P5026."new"($P102, "nqp" :named("hll"), $P5031 :named("namespace"), 0 :named("lexical"), $S5001 :named("name"))
    set $P104, $P5033
.annotate 'line', 775
    get_hll_global $P5037, "GLOBAL"
    nqp_get_package_through_who $P5036, $P5037, "PAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["Stmt"]
    unless_null $P5034, fallback1403
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5038
  fallback1403:
    $P5039 = $P5034."new"($P104)
    $P5040 = $P103."push"($P5039)
.annotate 'line', 777
    get_hll_global $P5044, "GLOBAL"
    nqp_get_package_through_who $P5043, $P5044, "QRegex"
    get_who $P5042, $P5043
    set $P5041, $P5042["NFA"]
    unless_null $P5041, fallback1404
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5041, $P5045
  fallback1404:
    $P5046 = $P5041."new"()
    $P5047 = $P5046."addnode"(_lex_param_0)
    $P5048 = $P5047."past"()
    set $P105, $P5048
    set $P5051, $P105
    unless $P105 goto if449_end1406 
    .const 'Sub' $P5049 = 'cuid_168_1346277621.774' 
    capture_lex $P5049
    $P5050 = $P5049()
    set $P5051, $P5050
  if449_end1406:
.annotate 'line', 784
    $P5052 = "&alt_nfas"(_lex_param_0, $P101, $P103)
.annotate 'line', 786
    $P5053 = _lex_param_1."symbol"(utf8:"$\x{a2}")
    set $P5062, $P5053
    if $P5053 goto unless450_end1410 
.annotate 'line', 787
    get_hll_global $P5057, "GLOBAL"
    nqp_get_package_through_who $P5056, $P5057, "PAST"
    get_who $P5055, $P5056
    set $P5054, $P5055["Var"]
    unless_null $P5054, fallback1411
    nqp_get_sc_object $P5058, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5054, $P5058
  fallback1411:
    $P5059 = $P5054."new"(utf8:"$\x{a2}" :named("name"), "lexical" :named("scope"), 1 :named("isdecl"))
    $P5060 = $P103."push"($P5059)
.annotate 'line', 788
    $P5061 = _lex_param_1."symbol"(utf8:"$\x{a2}", "lexical" :named("scope"))
    set $P5062, $P5061
  unless450_end1410:
    set _lex_param_1["orig_qast"], _lex_param_0
.annotate 'line', 793
    get_hll_global $P5066, "GLOBAL"
    nqp_get_package_through_who $P5065, $P5066, "QAST"
    get_who $P5064, $P5065
    set $P5063, $P5064["Regex"]
    unless_null $P5063, fallback1412
    nqp_get_sc_object $P5067, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5063, $P5067
  fallback1412:
.annotate 'line', 794
    get_hll_global $P5071, "GLOBAL"
    nqp_get_package_through_who $P5070, $P5071, "QAST"
    get_who $P5069, $P5070
    set $P5068, $P5069["Regex"]
    unless_null $P5068, fallback1413
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5068, $P5072
  fallback1413:
    $P5073 = $P5068."new"("scan" :named("rxtype"))
    unless _lex_param_2 goto if451_else1414 
.annotate 'line', 797
    get_hll_global $P5077, "GLOBAL"
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Regex"]
    unless_null $P5074, fallback1416
    nqp_get_sc_object $P5078, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5074, $P5078
  fallback1416:
    $P5079 = $P5074."new"("pass" :named("rxtype"))
    set $P5096, $P5079
    goto if451_end1415
  if451_else1414:
.annotate 'line', 798
    get_hll_global $P5083, "GLOBAL"
    nqp_get_package_through_who $P5082, $P5083, "QAST"
    get_who $P5081, $P5082
    set $P5080, $P5081["Regex"]
    unless_null $P5080, fallback1417
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5080, $P5084
  fallback1417:
    find_dynamic_lex $P5086, "%*RX"
    unless_null $P5086, fallback1418
    get_hll_global $P5089, "GLOBAL"
    get_who $P5088, $P5089
    set $P5087, $P5088["%RX"]
    unless_null $P5087, fallback1419
    get_hll_global $P5091, "GLOBAL"
    get_who $P5090, $P5091
    new $P5092, 'Hash'
    set $P5090["%RX"], $P5092
    set $P5087, $P5092
  fallback1419:
    unless_null $P5087, vivi_4521420
    die "Contextual %*RX not found"
    box $P5093, "Contextual %*RX not found"
    set $P5087, $P5093
  vivi_4521420:
    set $P5086, $P5087
  fallback1418:
    set $P5085, $P5086["name"]
    unless_null $P5085, fallback1421
    nqp_get_sc_object $P5094, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5085, $P5094
  fallback1421:
    $P5095 = $P5080."new"("pass" :named("rxtype"), $P5085 :named("name"))
    set $P5096, $P5095
  if451_end1415:
    $P5097 = $P5063."new"($P5073, _lex_param_0, $P5096, "concat" :named("rxtype"))
    set _lex_param_0, $P5097
.annotate 'line', 799
    $P5098 = _lex_param_1."push"($P103)
.annotate 'line', 800
    get_hll_global $P5102, "GLOBAL"
    nqp_get_package_through_who $P5101, $P5102, "PAST"
    get_who $P5100, $P5101
    set $P5099, $P5100["QAST"]
    unless_null $P5099, fallback1422
    nqp_get_sc_object $P5103, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5099, $P5103
  fallback1422:
    $P5104 = $P5099."new"(_lex_param_0)
    $P5105 = _lex_param_1."push"($P5104)
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1346277621.774") :anon :lex :outer("cuid_167_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 765
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 766
    $P5001 = _lex_param_0."key"()
    set $S5001, $P5001
    isgt $I5001, $S5001, ""
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if448_end1396 
.annotate 'line', 767
    find_lex $P5002, "$hashpast"
    $P5003 = _lex_param_0."key"()
    $P5004 = $P5002."push"($P5003)
.annotate 'line', 768
    find_lex $P5005, "$hashpast"
.annotate 'line', 769
    $P5006 = _lex_param_0."key"()
    set $S5002, $P5006
    is_cclass $I5002, .CCLASS_NUMERIC, $S5002, 0
    set $N5002, $I5002
    $P5007 = _lex_param_0."value"()
    set $N5004, $P5007
    set $N5005, 1
    isgt $I5003, $N5004, $N5005
    set $N5006, $I5003
    set $N5007, 2
    mul $N5003, $N5006, $N5007
    add $N5001, $N5002, $N5003
    $P5008 = $P5005."push"($N5001)
    set $P5009, $P5008
  if448_end1396:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1346277621.774") :anon :lex :outer("cuid_167_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 778
    .lex "$nfablock", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 779
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Block"]
    unless_null $P5002, fallback1407
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1407:
    new $P5007, 'ResizablePMCArray'
    box $P5008, "Sub"
    push $P5007, $P5008
    find_lex $P5009, "$blockid"
    set $S5002, $P5009
    concat $S5001, $S5002, "_nfa"
    find_lex $P5010, "$nfapast"
    $P5011 = $P5002."new"($P5010, "nqp" :named("hll"), $P5007 :named("namespace"), 0 :named("lexical"), $S5001 :named("name"))
    set $P101, $P5011
.annotate 'line', 782
    find_lex $P5012, "$initpast"
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "PAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Stmt"]
    unless_null $P5013, fallback1408
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5017
  fallback1408:
    $P5018 = $P5013."new"($P101)
    $P5019 = $P5012."push"($P5018)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "qbuildsub" :subid("cuid_170_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 804
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_4 :opt_flag 
    .param pmc _lex_param_2 :named("anon") :optional 
    .param int haz_param_5 :opt_flag 
    .param pmc _lex_param_3 :named("addself") :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5114 = 'cuid_169_1346277621.774' 
    capture_lex $P5114 
    .const 'Sub' $P5114 = 'cuid_171_1346277621.774' 
    capture_lex $P5114 
    if haz_param_4, default1459
    get_hll_global $P5109, "GLOBAL"
    nqp_get_package_through_who $P5108, $P5109, "QAST"
    get_who $P5107, $P5108
    set $P5106, $P5107["Block"]
    unless_null $P5106, fallback1460
    nqp_get_sc_object $P5110, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5106, $P5110
  fallback1460:
    $P5111 = $P5106."new"()
    set _lex_param_1, $P5111
  default1459:
    if haz_param_5, default1461
    nqp_get_sc_object $P5112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5112
  default1461:
    if haz_param_6, default1462
    nqp_get_sc_object $P5113, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_3, $P5113
  default1462:
    .lex "$blockid", $P101 
    .lex "$hashpast", $P102 
    .lex "$initpast", $P103 
    .lex "$capblock", $P104 
    .lex "$nfapast", $P105 
    .lex "$qast", _lex_param_0 
    .lex "$block", _lex_param_1 
    .lex "$anon", _lex_param_2 
    .lex "$addself", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
.annotate 'line', 805
    $P5006 = _lex_param_1."cuid"()
    set $P101, $P5006
.annotate 'line', 806
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Op"]
    unless_null $P5007, fallback1426
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback1426:
    $P5012 = $P5007."new"("hash" :named("op"))
    set $P102, $P5012
.annotate 'line', 807
    $P5016 = "&capnames"(_lex_param_0, 0)
    set $P5013, $P5016
    iter $P5015, $P5016
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers1431
    push_eh $P5018
  for_next1432:
    unless $P5015, for_done1434
    shift $P5019, $P5015
  for_redo1433:
    .const 'Sub' $P5017 = 'cuid_169_1346277621.774' 
    capture_lex $P5017
    $P5013 = $P5017($P5019)
    goto for_next1432
  for_handlers1431:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next1432
    eq $P5018, .CONTROL_LOOP_REDO, for_redo1433
  for_done1434:
    pop_eh 
.annotate 'line', 814
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Stmts"]
    unless_null $P5020, fallback1435
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5024
  fallback1435:
    $P5025 = $P5020."new"()
    set $P103, $P5025
    set $P5033, _lex_param_3
    unless _lex_param_3 goto if454_end1437 
.annotate 'line', 815
.annotate 'line', 816
    get_hll_global $P5029, "GLOBAL"
    nqp_get_package_through_who $P5028, $P5029, "QAST"
    get_who $P5027, $P5028
    set $P5026, $P5027["Var"]
    unless_null $P5026, fallback1438
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5030
  fallback1438:
    $P5031 = $P5026."new"("self" :named("name"), "local" :named("scope"), "param" :named("decl"))
    $P5032 = $P103."push"($P5031)
    set $P5033, $P5032
  if454_end1437:
.annotate 'line', 818
    get_hll_global $P5037, "GLOBAL"
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["BlockMemo"]
    unless_null $P5034, fallback1439
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5038
  fallback1439:
    set $S5002, $P101
    concat $S5001, $S5002, "_caps"
    $P5039 = $P5034."new"($P102, $S5001 :named("name"))
    set $P104, $P5039
.annotate 'line', 819
    get_hll_global $P5043, "GLOBAL"
    nqp_get_package_through_who $P5042, $P5043, "QAST"
    get_who $P5041, $P5042
    set $P5040, $P5041["Stmt"]
    unless_null $P5040, fallback1440
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5044
  fallback1440:
    $P5045 = $P5040."new"($P104)
    $P5046 = $P103."push"($P5045)
.annotate 'line', 821
    get_hll_global $P5050, "GLOBAL"
    nqp_get_package_through_who $P5049, $P5050, "QRegex"
    get_who $P5048, $P5049
    set $P5047, $P5048["NFA"]
    unless_null $P5047, fallback1441
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5047, $P5051
  fallback1441:
    $P5052 = $P5047."new"()
    $P5053 = $P5052."addnode"(_lex_param_0)
    $P5054 = $P5053."qast"()
    set $P105, $P5054
    set $P5057, $P105
    unless $P105 goto if455_end1443 
    .const 'Sub' $P5055 = 'cuid_171_1346277621.774' 
    capture_lex $P5055
    $P5056 = $P5055()
    set $P5057, $P5056
  if455_end1443:
.annotate 'line', 826
    $P5058 = "&qalt_nfas"(_lex_param_0, $P101, $P103)
.annotate 'line', 828
    $P5059 = _lex_param_1."symbol"(utf8:"$\x{a2}")
    set $P5068, $P5059
    if $P5059 goto unless456_end1447 
.annotate 'line', 829
    get_hll_global $P5063, "GLOBAL"
    nqp_get_package_through_who $P5062, $P5063, "QAST"
    get_who $P5061, $P5062
    set $P5060, $P5061["Var"]
    unless_null $P5060, fallback1448
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5060, $P5064
  fallback1448:
    $P5065 = $P5060."new"(utf8:"$\x{a2}" :named("name"), "lexical" :named("scope"), "var" :named("decl"))
    $P5066 = $P103."push"($P5065)
.annotate 'line', 830
    $P5067 = _lex_param_1."symbol"(utf8:"$\x{a2}", "lexical" :named("scope"))
    set $P5068, $P5067
  unless456_end1447:
    set _lex_param_1["orig_qast"], _lex_param_0
.annotate 'line', 835
    get_hll_global $P5072, "GLOBAL"
    nqp_get_package_through_who $P5071, $P5072, "QAST"
    get_who $P5070, $P5071
    set $P5069, $P5070["Regex"]
    unless_null $P5069, fallback1449
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5069, $P5073
  fallback1449:
.annotate 'line', 836
    get_hll_global $P5077, "GLOBAL"
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Regex"]
    unless_null $P5074, fallback1450
    nqp_get_sc_object $P5078, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5074, $P5078
  fallback1450:
    $P5079 = $P5074."new"("scan" :named("rxtype"))
    unless _lex_param_2 goto if457_else1451 
.annotate 'line', 839
    get_hll_global $P5083, "GLOBAL"
    nqp_get_package_through_who $P5082, $P5083, "QAST"
    get_who $P5081, $P5082
    set $P5080, $P5081["Regex"]
    unless_null $P5080, fallback1453
    nqp_get_sc_object $P5084, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5080, $P5084
  fallback1453:
    $P5085 = $P5080."new"("pass" :named("rxtype"))
    set $P5102, $P5085
    goto if457_end1452
  if457_else1451:
.annotate 'line', 840
    get_hll_global $P5089, "GLOBAL"
    nqp_get_package_through_who $P5088, $P5089, "QAST"
    get_who $P5087, $P5088
    set $P5086, $P5087["Regex"]
    unless_null $P5086, fallback1454
    nqp_get_sc_object $P5090, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5086, $P5090
  fallback1454:
    find_dynamic_lex $P5092, "%*RX"
    unless_null $P5092, fallback1455
    get_hll_global $P5095, "GLOBAL"
    get_who $P5094, $P5095
    set $P5093, $P5094["%RX"]
    unless_null $P5093, fallback1456
    get_hll_global $P5097, "GLOBAL"
    get_who $P5096, $P5097
    new $P5098, 'Hash'
    set $P5096["%RX"], $P5098
    set $P5093, $P5098
  fallback1456:
    unless_null $P5093, vivi_4581457
    die "Contextual %*RX not found"
    box $P5099, "Contextual %*RX not found"
    set $P5093, $P5099
  vivi_4581457:
    set $P5092, $P5093
  fallback1455:
    set $P5091, $P5092["name"]
    unless_null $P5091, fallback1458
    nqp_get_sc_object $P5100, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5091, $P5100
  fallback1458:
    $P5101 = $P5086."new"("pass" :named("rxtype"), $P5091 :named("name"))
    set $P5102, $P5101
  if457_end1452:
    $P5103 = $P5069."new"($P5079, _lex_param_0, $P5102, "concat" :named("rxtype"))
    set _lex_param_0, $P5103
.annotate 'line', 841
    $P5104 = _lex_param_1."push"($P103)
.annotate 'line', 842
    $P5105 = _lex_param_1."push"(_lex_param_0)
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1346277621.774") :anon :lex :outer("cuid_170_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 807
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 808
    $P5001 = _lex_param_0."key"()
    set $S5001, $P5001
    isgt $I5001, $S5001, ""
    box $P5022, $I5001
    set $P5021, $P5022
    unless $I5001 goto if453_end1428 
.annotate 'line', 809
    find_lex $P5002, "$hashpast"
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["SVal"]
    unless_null $P5003, fallback1429
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1429:
    $P5008 = _lex_param_0."key"()
    $P5009 = $P5003."new"($P5008 :named("value"))
    $P5010 = $P5002."push"($P5009)
.annotate 'line', 810
    find_lex $P5011, "$hashpast"
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["IVal"]
    unless_null $P5012, fallback1430
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback1430:
.annotate 'line', 811
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
  if453_end1428:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1346277621.774") :anon :lex :outer("cuid_170_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 822
    .lex "$nfablock", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 823
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["BlockMemo"]
    unless_null $P5002, fallback1444
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1444:
    find_lex $P5007, "$blockid"
    set $S5002, $P5007
    concat $S5001, $S5002, "_nfa"
    find_lex $P5008, "$nfapast"
    $P5009 = $P5002."new"($P5008, $S5001 :named("name"))
    set $P101, $P5009
.annotate 'line', 824
    find_lex $P5010, "$initpast"
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Stmt"]
    unless_null $P5011, fallback1445
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5015
  fallback1445:
    $P5016 = $P5011."new"($P101)
    $P5017 = $P5010."push"($P5016)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "capnames" :subid("cuid_174_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 846
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_173_1346277621.774' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_177_1346277621.774' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_179_1346277621.774' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_181_1346277621.774' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_184_1346277621.774' 
    capture_lex $P5026 
    .lex "%capnames", $P101 
    .lex "$rxtype", $P102 
    .lex "$ast", _lex_param_0 
    .lex "$count", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 848
    $P5003 = _lex_param_0."rxtype"()
    set $P102, $P5003
    set $S5001, $P102
    iseq $I5001, $S5001, "concat"
    unless $I5001 goto if459_else1463 
.annotate 'line', 849
.annotate 'line', 850
    $P5007 = _lex_param_0."list"()
    set $P5004, $P5007
    iter $P5006, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers1471
    push_eh $P5009
  for_next1472:
    unless $P5006, for_done1474
    shift $P5010, $P5006
  for_redo1473:
    .const 'Sub' $P5008 = 'cuid_173_1346277621.774' 
    capture_lex $P5008
    $P5004 = $P5008($P5010)
    goto for_next1472
  for_handlers1471:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next1472
    eq $P5009, .CONTROL_LOOP_REDO, for_redo1473
  for_done1474:
    pop_eh 
    set $P5025, $P5004
    goto if459_end1464
  if459_else1463:
    set $S5002, $P102
    iseq $I5002, $S5002, "altseq"
    set $I5004, $I5002
    if $I5002 goto unless461_end1478 
    set $S5003, $P102
    iseq $I5003, $S5003, "alt"
    set $I5004, $I5003
  unless461_end1478:
    unless $I5004 goto if460_else1475 
    .const 'Sub' $P5011 = 'cuid_177_1346277621.774' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5024, $P5012
    goto if460_end1476
  if460_else1475:
    set $S5004, $P102
    iseq $I5005, $S5004, "subrule"
    set $I5007, $I5005
    unless $I5005 goto if466_end1500 
.annotate 'line', 867
    $P5013 = _lex_param_0."subtype"()
    set $S5005, $P5013
    iseq $I5006, $S5005, "capture"
    set $I5007, $I5006
  if466_end1500:
    unless $I5007 goto if465_else1497 
    .const 'Sub' $P5014 = 'cuid_179_1346277621.774' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5023, $P5015
    goto if465_end1498
  if465_else1497:
    set $S5006, $P102
    iseq $I5008, $S5006, "subcapture"
    unless $I5008 goto if470_else1511 
    .const 'Sub' $P5016 = 'cuid_181_1346277621.774' 
    capture_lex $P5016
    $P5017 = $P5016()
    set $P5022, $P5017
    goto if470_end1512
  if470_else1511:
    set $S5007, $P102
    iseq $I5009, $S5007, "quant"
    box $P5021, $I5009
    set $P5020, $P5021
    unless $I5009 goto if473_end1530 
    .const 'Sub' $P5018 = 'cuid_184_1346277621.774' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
  if473_end1530:
    set $P5022, $P5020
  if470_end1512:
    set $P5023, $P5022
  if465_end1498:
    set $P5024, $P5023
  if460_end1476:
    set $P5025, $P5024
  if459_end1464:
    set $P101[""], _lex_param_1
    delete $P101["$!from"]
    delete $P101["$!to"]
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1346277621.774") :anon :lex :outer("cuid_174_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 850
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_172_1346277621.774' 
    capture_lex $P5012 
    .lex "%x", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 851
    find_lex $P5002, "$count"
    $P5003 = "&capnames"(_lex_param_0, $P5002)
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers1466
    push_eh $P5008
  for_next1467:
    unless $P5006, for_done1469
    shift $P5009, $P5006
  for_redo1468:
    .const 'Sub' $P5007 = 'cuid_172_1346277621.774' 
    capture_lex $P5007
    $P5004 = $P5007($P5009)
    goto for_next1467
  for_handlers1466:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next1467
    eq $P5008, .CONTROL_LOOP_REDO, for_redo1468
  for_done1469:
    pop_eh 
    set $P5010, $P101[""]
    unless_null $P5010, fallback1470
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback1470:
    store_lex "$count", $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1346277621.774") :anon :lex :outer("cuid_173_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 852
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1465
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1465:
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
.sub "" :subid("cuid_177_1346277621.774") :anon :lex :outer("cuid_174_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 856
    .const 'Sub' $P5011 = 'cuid_176_1346277621.774' 
    capture_lex $P5011 
    .lex "$max", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5002, "$count"
    set $P101, $P5002
.annotate 'line', 858
    find_lex $P5006, "$ast"
    $P5007 = $P5006."list"()
    set $P5003, $P5007
    iter $P5005, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers1493
    push_eh $P5009
  for_next1494:
    unless $P5005, for_done1496
    shift $P5010, $P5005
  for_redo1495:
    .const 'Sub' $P5008 = 'cuid_176_1346277621.774' 
    capture_lex $P5008
    $P5003 = $P5008($P5010)
    goto for_next1494
  for_handlers1493:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next1494
    eq $P5009, .CONTROL_LOOP_REDO, for_redo1495
  for_done1496:
    pop_eh 
    store_lex "$count", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1346277621.774") :anon :lex :outer("cuid_177_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 858
    .param pmc _lex_param_0 
    .const 'Sub' $P5017 = 'cuid_175_1346277621.774' 
    capture_lex $P5017 
    .lex "%x", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 859
    find_lex $P5002, "$count"
    $P5003 = "&capnames"(_lex_param_0, $P5002)
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers1485
    push_eh $P5008
  for_next1486:
    unless $P5006, for_done1488
    shift $P5009, $P5006
  for_redo1487:
    .const 'Sub' $P5007 = 'cuid_175_1346277621.774' 
    capture_lex $P5007
    $P5004 = $P5007($P5009)
    goto for_next1486
  for_handlers1485:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next1486
    eq $P5008, .CONTROL_LOOP_REDO, for_redo1487
  for_done1488:
    pop_eh 
    set $P5010, $P101[""]
    unless_null $P5010, fallback1491
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback1491:
    set $N5001, $P5010
    find_lex $P5012, "$max"
    set $N5002, $P5012
    isgt $I5001, $N5001, $N5002
    box $P5016, $I5001
    set $P5015, $P5016
    unless $I5001 goto if464_end1490 
    set $P5013, $P101[""]
    unless_null $P5013, fallback1492
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5014
  fallback1492:
    store_lex "$max", $P5013
    set $P5015, $P5013
  if464_end1490:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1346277621.774") :anon :lex :outer("cuid_176_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 860
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
.annotate 'line', 861
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1483
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1483:
    set $N5001, $P5003
    set $N5002, 2
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if463_end1482 
    find_lex $P5008, "%x"
    $P5009 = _lex_param_0."key"()
    set $S5003, $P5009
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback1484
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5010
  fallback1484:
    set $N5003, $P5007
    set $N5004, 1
    iseq $I5002, $N5003, $N5004
    set $I5003, $I5002
  if463_end1482:
    unless $I5003 goto if462_else1479 
    set $I5004, 1
    goto if462_end1480
  if462_else1479:
    set $I5004, 2
  if462_end1480:
    box $P5011, $I5004
    set $P5001[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1346277621.774") :anon :lex :outer("cuid_174_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 867
    .const 'Sub' $P5017 = 'cuid_178_1346277621.774' 
    capture_lex $P5017 
    .lex "$name", $P101 
    .lex "@names", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 868
    find_lex $P5003, "$ast"
    $P5004 = $P5003."name"()
    set $P101, $P5004
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if467_end1502 
.annotate 'line', 869
    find_lex $P5005, "$count"
    set $P101, $P5005
    find_lex $P5006, "$ast"
    $P5007 = $P5006."name"($P101)
    set $P5008, $P5007
  if467_end1502:
    set $S5002, $P101
    split $P5010, "=", $S5002
    set $P102, $P5010
    set $P5011, $P102
    iter $P5013, $P102
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, for_handlers1507
    push_eh $P5015
  for_next1508:
    unless $P5013, for_done1510
    shift $P5016, $P5013
  for_redo1509:
    .const 'Sub' $P5014 = 'cuid_178_1346277621.774' 
    capture_lex $P5014
    $P5011 = $P5014($P5016)
    goto for_next1508
  for_handlers1507:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5015, $P5015, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, for_next1508
    eq $P5015, .CONTROL_LOOP_REDO, for_redo1509
  for_done1510:
    pop_eh 
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1346277621.774") :anon :lex :outer("cuid_179_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 871
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, "0"
    set $I5003, $I5001
    if $I5001 goto unless469_end1506 
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    set $I5003, $I5002
  unless469_end1506:
    box $P5003, $I5003
    set $P5002, $P5003
    unless $I5003 goto if468_end1504 
.annotate 'line', 872
    set $N5004, _lex_param_0
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5001, $N5003
    store_lex "$count", $P5001
    set $P5002, $P5001
  if468_end1504:
    find_lex $P5004, "%capnames"
    set $S5002, _lex_param_0
    box $P5005, 1
    set $P5004[$S5002], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1346277621.774") :anon :lex :outer("cuid_174_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 876
    .const 'Sub' $P5024 = 'cuid_180_1346277621.774' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_182_1346277621.774' 
    capture_lex $P5024 
    .lex "%x", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 877
    find_lex $P5006, "$ast"
    $P5007 = $P5006."name"()
    set $S5001, $P5007
    split $P5005, " ", $S5001
    set $P5002, $P5005
    iter $P5004, $P5005
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers1517
    push_eh $P5009
  for_next1518:
    unless $P5004, for_done1520
    shift $P5010, $P5004
  for_redo1519:
    .const 'Sub' $P5008 = 'cuid_180_1346277621.774' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next1518
  for_handlers1517:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next1518
    eq $P5009, .CONTROL_LOOP_REDO, for_redo1519
  for_done1520:
    pop_eh 
.annotate 'line', 881
    find_lex $P5012, "$ast"
    set $P5011, $P5012[0]
    unless_null $P5011, fallback1521
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5013
  fallback1521:
    find_lex $P5014, "$count"
    $P5015 = "&capnames"($P5011, $P5014)
    set $P101, $P5015
    set $P5016, $P101
    iter $P5018, $P101
    new $P5020, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5020, for_handlers1524
    push_eh $P5020
  for_next1525:
    unless $P5018, for_done1527
    shift $P5021, $P5018
  for_redo1526:
    .const 'Sub' $P5019 = 'cuid_182_1346277621.774' 
    capture_lex $P5019
    $P5016 = $P5019($P5021)
    goto for_next1525
  for_handlers1524:
    .get_results ($P5020)
    pop_upto_eh $P5020
    getattribute $P5020, $P5020, 'type'
    eq $P5020, .CONTROL_LOOP_NEXT, for_next1525
    eq $P5020, .CONTROL_LOOP_REDO, for_redo1526
  for_done1527:
    pop_eh 
    set $P5022, $P101[""]
    unless_null $P5022, fallback1528
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5023
  fallback1528:
    store_lex "$count", $P5022
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1346277621.774") :anon :lex :outer("cuid_181_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 877
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, "0"
    set $I5003, $I5001
    if $I5001 goto unless472_end1516 
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    set $I5003, $I5002
  unless472_end1516:
    box $P5003, $I5003
    set $P5002, $P5003
    unless $I5003 goto if471_end1514 
.annotate 'line', 878
    set $N5004, _lex_param_0
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5001, $N5003
    store_lex "$count", $P5001
    set $P5002, $P5001
  if471_end1514:
    find_lex $P5004, "%capnames"
    set $S5002, _lex_param_0
    box $P5005, 1
    set $P5004[$S5002], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1346277621.774") :anon :lex :outer("cuid_181_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 882
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1522
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5006
  fallback1522:
    set $N5002, $P5003
    find_lex $P5008, "%x"
    $P5009 = _lex_param_0."key"()
    set $S5003, $P5009
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback1523
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5010
  fallback1523:
    set $N5003, $P5007
    add $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5001[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1346277621.774") :anon :lex :outer("cuid_174_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 885
    .const 'Sub' $P5015 = 'cuid_183_1346277621.774' 
    capture_lex $P5015 
    .lex "%astcap", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 886
    find_lex $P5003, "$ast"
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1531
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback1531:
    find_lex $P5005, "$count"
    $P5006 = "&capnames"($P5002, $P5005)
    set $P101, $P5006
    set $P5007, $P101
    iter $P5009, $P101
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, for_handlers1532
    push_eh $P5011
  for_next1533:
    unless $P5009, for_done1535
    shift $P5012, $P5009
  for_redo1534:
    .const 'Sub' $P5010 = 'cuid_183_1346277621.774' 
    capture_lex $P5010
    $P5007 = $P5010($P5012)
    goto for_next1533
  for_handlers1532:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5011, $P5011, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, for_next1533
    eq $P5011, .CONTROL_LOOP_REDO, for_redo1534
  for_done1535:
    pop_eh 
    set $P5013, $P101[""]
    unless_null $P5013, fallback1536
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5014
  fallback1536:
    store_lex "$count", $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1346277621.774") :anon :lex :outer("cuid_184_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 887
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
.sub "alt_nfas" :subid("cuid_187_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 896
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5019 = 'cuid_186_1346277621.774' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_188_1346277621.774' 
    capture_lex $P5019 
    .lex "$rxtype", $P101 
    .lex "$ast", _lex_param_0 
    .lex "$subid", _lex_param_1 
    .lex "$initpast", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 897
    $P5002 = _lex_param_0."rxtype"()
    set $P101, $P5002
    set $S5001, $P101
    iseq $I5001, $S5001, "alt"
    unless $I5001 goto if474_else1537 
    .const 'Sub' $P5003 = 'cuid_186_1346277621.774' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5018, $P5004
    goto if474_end1538
  if474_else1537:
    set $S5002, $P101
    iseq $I5002, $S5002, "subcapture"
    set $I5004, $I5002
    if $I5002 goto unless476_end1551 
    set $S5003, $P101
    iseq $I5003, $S5003, "quant"
    set $I5004, $I5003
  unless476_end1551:
    unless $I5004 goto if475_else1548 
.annotate 'line', 910
.annotate 'line', 911
    set $P5005, _lex_param_0[0]
    unless_null $P5005, fallback1552
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5006
  fallback1552:
    $P5007 = "&alt_nfas"($P5005, _lex_param_1, _lex_param_2)
    set $P5017, $P5007
    goto if475_end1549
  if475_else1548:
    set $S5004, $P101
    iseq $I5005, $S5004, "concat"
    set $I5007, $I5005
    if $I5005 goto unless480_end1560 
    set $S5005, $P101
    iseq $I5006, $S5005, "altseq"
    set $I5007, $I5006
  unless480_end1560:
    set $I5009, $I5007
    if $I5007 goto unless479_end1558 
    set $S5006, $P101
    iseq $I5008, $S5006, "conj"
    set $I5009, $I5008
  unless479_end1558:
    set $I5011, $I5009
    if $I5009 goto unless478_end1556 
    set $S5007, $P101
    iseq $I5010, $S5007, "conjseq"
    set $I5011, $I5010
  unless478_end1556:
    box $P5016, $I5011
    set $P5015, $P5016
    unless $I5011 goto if477_end1554 
.annotate 'line', 913
.annotate 'line', 914
    $P5011 = _lex_param_0."list"()
    set $P5008, $P5011
    iter $P5010, $P5011
    new $P5013, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5013, for_handlers1561
    push_eh $P5013
  for_next1562:
    unless $P5010, for_done1564
    shift $P5014, $P5010
  for_redo1563:
    .const 'Sub' $P5012 = 'cuid_188_1346277621.774' 
    capture_lex $P5012
    $P5008 = $P5012($P5014)
    goto for_next1562
  for_handlers1561:
    .get_results ($P5013)
    pop_upto_eh $P5013
    getattribute $P5013, $P5013, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, for_next1562
    eq $P5013, .CONTROL_LOOP_REDO, for_redo1563
  for_done1564:
    pop_eh 
    set $P5015, $P5008
  if477_end1554:
    set $P5017, $P5015
  if475_end1549:
    set $P5018, $P5017
  if474_end1538:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1346277621.774") :anon :lex :outer("cuid_187_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 898
    .const 'Sub' $P5044 = 'cuid_185_1346277621.774' 
    capture_lex $P5044 
    .lex "$nfapast", $P101 
    .lex "$nfablock", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 899
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback1539
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1539:
    $P5008 = $P5003."new"("list" :named("pasttype"))
    set $P101, $P5008
.annotate 'line', 900
    find_lex $P5009, "$ast"
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "PAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Node"]
    unless_null $P5010, fallback1540
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback1540:
    $P5015 = $P5010."unique"("alt_nfa_")
    set $S5003, $P5015
    concat $S5002, $S5003, "_"
    time $N5001
    set $S5004, $N5001
    concat $S5001, $S5002, $S5004
    $P5016 = $P5009."name"($S5001)
.annotate 'line', 901
    find_lex $P5020, "$ast"
    $P5021 = $P5020."list"()
    set $P5017, $P5021
    iter $P5019, $P5021
    new $P5023, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5023, for_handlers1542
    push_eh $P5023
  for_next1543:
    unless $P5019, for_done1545
    shift $P5024, $P5019
  for_redo1544:
    .const 'Sub' $P5022 = 'cuid_185_1346277621.774' 
    capture_lex $P5022
    $P5017 = $P5022($P5024)
    goto for_next1543
  for_handlers1542:
    .get_results ($P5023)
    pop_upto_eh $P5023
    getattribute $P5023, $P5023, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, for_next1543
    eq $P5023, .CONTROL_LOOP_REDO, for_redo1544
  for_done1545:
    pop_eh 
.annotate 'line', 905
    get_hll_global $P5028, "GLOBAL"
    nqp_get_package_through_who $P5027, $P5028, "PAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["Block"]
    unless_null $P5025, fallback1546
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5029
  fallback1546:
    new $P5030, 'ResizablePMCArray'
    box $P5031, "Sub"
    push $P5030, $P5031
    find_lex $P5032, "$subid"
    set $S5007, $P5032
    concat $S5006, $S5007, "_"
.annotate 'line', 907
    find_lex $P5033, "$ast"
    $P5034 = $P5033."name"()
    set $S5008, $P5034
    concat $S5005, $S5006, $S5008
    $P5035 = $P5025."new"($P101, "nqp" :named("hll"), $P5030 :named("namespace"), 0 :named("lexical"), $S5005 :named("name"))
    set $P102, $P5035
.annotate 'line', 908
    find_lex $P5036, "$initpast"
    get_hll_global $P5040, "GLOBAL"
    nqp_get_package_through_who $P5039, $P5040, "PAST"
    get_who $P5038, $P5039
    set $P5037, $P5038["Stmt"]
    unless_null $P5037, fallback1547
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5037, $P5041
  fallback1547:
    $P5042 = $P5037."new"($P102)
    $P5043 = $P5036."push"($P5042)
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1346277621.774") :anon :lex :outer("cuid_186_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 901
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 902
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&alt_nfas"(_lex_param_0, $P5001, $P5002)
.annotate 'line', 903
    find_lex $P5004, "$nfapast"
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "QRegex"
    get_who $P5006, $P5007
    set $P5005, $P5006["NFA"]
    unless_null $P5005, fallback1541
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5009
  fallback1541:
    $P5010 = $P5005."new"()
    $P5011 = $P5010."addnode"(_lex_param_0)
    $P5012 = $P5011."past"(1 :named("non_empty"))
    $P5013 = $P5004."push"($P5012)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1346277621.774") :anon :lex :outer("cuid_187_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 914
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&alt_nfas"(_lex_param_0, $P5001, $P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "qalt_nfas" :subid("cuid_191_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 918
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5019 = 'cuid_190_1346277621.774' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_192_1346277621.774' 
    capture_lex $P5019 
    .lex "$rxtype", $P101 
    .lex "$ast", _lex_param_0 
    .lex "$subid", _lex_param_1 
    .lex "$initpast", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 919
    $P5002 = _lex_param_0."rxtype"()
    set $P101, $P5002
    set $S5001, $P101
    iseq $I5001, $S5001, "alt"
    unless $I5001 goto if481_else1565 
    .const 'Sub' $P5003 = 'cuid_190_1346277621.774' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5018, $P5004
    goto if481_end1566
  if481_else1565:
    set $S5002, $P101
    iseq $I5002, $S5002, "subcapture"
    set $I5004, $I5002
    if $I5002 goto unless483_end1579 
    set $S5003, $P101
    iseq $I5003, $S5003, "quant"
    set $I5004, $I5003
  unless483_end1579:
    unless $I5004 goto if482_else1576 
.annotate 'line', 930
.annotate 'line', 931
    set $P5005, _lex_param_0[0]
    unless_null $P5005, fallback1580
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5006
  fallback1580:
    $P5007 = "&qalt_nfas"($P5005, _lex_param_1, _lex_param_2)
    set $P5017, $P5007
    goto if482_end1577
  if482_else1576:
    set $S5004, $P101
    iseq $I5005, $S5004, "concat"
    set $I5007, $I5005
    if $I5005 goto unless487_end1588 
    set $S5005, $P101
    iseq $I5006, $S5005, "altseq"
    set $I5007, $I5006
  unless487_end1588:
    set $I5009, $I5007
    if $I5007 goto unless486_end1586 
    set $S5006, $P101
    iseq $I5008, $S5006, "conj"
    set $I5009, $I5008
  unless486_end1586:
    set $I5011, $I5009
    if $I5009 goto unless485_end1584 
    set $S5007, $P101
    iseq $I5010, $S5007, "conjseq"
    set $I5011, $I5010
  unless485_end1584:
    box $P5016, $I5011
    set $P5015, $P5016
    unless $I5011 goto if484_end1582 
.annotate 'line', 933
.annotate 'line', 934
    $P5011 = _lex_param_0."list"()
    set $P5008, $P5011
    iter $P5010, $P5011
    new $P5013, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5013, for_handlers1589
    push_eh $P5013
  for_next1590:
    unless $P5010, for_done1592
    shift $P5014, $P5010
  for_redo1591:
    .const 'Sub' $P5012 = 'cuid_192_1346277621.774' 
    capture_lex $P5012
    $P5008 = $P5012($P5014)
    goto for_next1590
  for_handlers1589:
    .get_results ($P5013)
    pop_upto_eh $P5013
    getattribute $P5013, $P5013, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, for_next1590
    eq $P5013, .CONTROL_LOOP_REDO, for_redo1591
  for_done1592:
    pop_eh 
    set $P5015, $P5008
  if484_end1582:
    set $P5017, $P5015
  if482_end1577:
    set $P5018, $P5017
  if481_end1566:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1346277621.774") :anon :lex :outer("cuid_191_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 920
    .const 'Sub' $P5042 = 'cuid_189_1346277621.774' 
    capture_lex $P5042 
    .lex "$nfapast", $P101 
    .lex "$nfablock", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 921
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback1567
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1567:
    $P5008 = $P5003."new"("list" :named("op"))
    set $P101, $P5008
.annotate 'line', 922
    find_lex $P5009, "$ast"
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Node"]
    unless_null $P5010, fallback1568
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback1568:
    $P5015 = $P5010."unique"("alt_nfa_")
    set $S5003, $P5015
    concat $S5002, $S5003, "_"
    time $N5001
    set $S5004, $N5001
    concat $S5001, $S5002, $S5004
    $P5016 = $P5009."name"($S5001)
.annotate 'line', 923
    find_lex $P5020, "$ast"
    $P5021 = $P5020."list"()
    set $P5017, $P5021
    iter $P5019, $P5021
    new $P5023, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5023, for_handlers1570
    push_eh $P5023
  for_next1571:
    unless $P5019, for_done1573
    shift $P5024, $P5019
  for_redo1572:
    .const 'Sub' $P5022 = 'cuid_189_1346277621.774' 
    capture_lex $P5022
    $P5017 = $P5022($P5024)
    goto for_next1571
  for_handlers1570:
    .get_results ($P5023)
    pop_upto_eh $P5023
    getattribute $P5023, $P5023, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, for_next1571
    eq $P5023, .CONTROL_LOOP_REDO, for_redo1572
  for_done1573:
    pop_eh 
.annotate 'line', 927
    get_hll_global $P5028, "GLOBAL"
    nqp_get_package_through_who $P5027, $P5028, "QAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["BlockMemo"]
    unless_null $P5025, fallback1574
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5029
  fallback1574:
    find_lex $P5030, "$subid"
    set $S5007, $P5030
    concat $S5006, $S5007, "_"
    find_lex $P5031, "$ast"
    $P5032 = $P5031."name"()
    set $S5008, $P5032
    concat $S5005, $S5006, $S5008
    $P5033 = $P5025."new"($P101, $S5005 :named("name"))
    set $P102, $P5033
.annotate 'line', 928
    find_lex $P5034, "$initpast"
    get_hll_global $P5038, "GLOBAL"
    nqp_get_package_through_who $P5037, $P5038, "QAST"
    get_who $P5036, $P5037
    set $P5035, $P5036["Stmt"]
    unless_null $P5035, fallback1575
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5039
  fallback1575:
    $P5040 = $P5035."new"($P102)
    $P5041 = $P5034."push"($P5040)
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1346277621.774") :anon :lex :outer("cuid_190_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 923
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 924
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&qalt_nfas"(_lex_param_0, $P5001, $P5002)
.annotate 'line', 925
    find_lex $P5004, "$nfapast"
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "QRegex"
    get_who $P5006, $P5007
    set $P5005, $P5006["NFA"]
    unless_null $P5005, fallback1569
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5009
  fallback1569:
    $P5010 = $P5005."new"()
    $P5011 = $P5010."addnode"(_lex_param_0)
    $P5012 = $P5011."qast"(1 :named("non_empty"))
    $P5013 = $P5004."push"($P5012)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1346277621.774") :anon :lex :outer("cuid_191_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 934
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&qalt_nfas"(_lex_param_0, $P5001, $P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_101_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 248
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 249
    set $P5001, _lex_param_1["nibbler"]
    unless_null $P5001, fallback1593
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1593:
    $P5003 = $P5001."ast"()
    $P5004 = "&buildsub"($P5003)
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "nibbler" :subid("cuid_102_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $P5001, _lex_param_1["termaltseq"]
    unless_null $P5001, fallback1594
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1594:
    $P5003 = $P5001."ast"()
    $P5004 = _lex_param_1."!make"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "termaltseq" :subid("cuid_103_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_193_1346277621.774' 
    capture_lex $P5026 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 255
    set $P5003, _lex_param_1["termconjseq"]
    unless_null $P5003, fallback1595
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1595:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1596
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1596:
    $P5006 = $P5002."ast"()
    set $P101, $P5006
    set $P5007, _lex_param_1["termconjseq"]
    unless_null $P5007, fallback1599
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1599:
    set $N5001, $P5007
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5024, $I5001
    set $P5023, $P5024
    unless $I5001 goto if488_end1598 
.annotate 'line', 256
.annotate 'line', 257
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1600
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1600:
    $P5014 = $P5009."new"("altseq" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5014
    set $P5018, _lex_param_1["termconjseq"]
    unless_null $P5018, fallback1601
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5019
  fallback1601:
    set $P5015, $P5018
    iter $P5017, $P5018
    new $P5021, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5021, for_handlers1602
    push_eh $P5021
  for_next1603:
    unless $P5017, for_done1605
    shift $P5022, $P5017
  for_redo1604:
    .const 'Sub' $P5020 = 'cuid_193_1346277621.774' 
    capture_lex $P5020
    $P5015 = $P5020($P5022)
    goto for_next1603
  for_handlers1602:
    .get_results ($P5021)
    pop_upto_eh $P5021
    getattribute $P5021, $P5021, 'type'
    eq $P5021, .CONTROL_LOOP_NEXT, for_next1603
    eq $P5021, .CONTROL_LOOP_REDO, for_redo1604
  for_done1605:
    pop_eh 
    set $P5023, $P5015
  if488_end1598:
.annotate 'line', 260
    $P5025 = _lex_param_1."!make"($P101)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1346277621.774") :anon :lex :outer("cuid_103_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 258
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termconjseq" :subid("cuid_104_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 263
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_194_1346277621.774' 
    capture_lex $P5026 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 264
    set $P5003, _lex_param_1["termalt"]
    unless_null $P5003, fallback1606
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1606:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1607
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1607:
    $P5006 = $P5002."ast"()
    set $P101, $P5006
    set $P5007, _lex_param_1["termalt"]
    unless_null $P5007, fallback1610
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1610:
    set $N5001, $P5007
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5024, $I5001
    set $P5023, $P5024
    unless $I5001 goto if489_end1609 
.annotate 'line', 265
.annotate 'line', 266
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1611
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1611:
    $P5014 = $P5009."new"("conjseq" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5014
    set $P5018, _lex_param_1["termalt"]
    unless_null $P5018, fallback1612
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5019
  fallback1612:
    set $P5015, $P5018
    iter $P5017, $P5018
    new $P5021, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5021, for_handlers1613
    push_eh $P5021
  for_next1614:
    unless $P5017, for_done1616
    shift $P5022, $P5017
  for_redo1615:
    .const 'Sub' $P5020 = 'cuid_194_1346277621.774' 
    capture_lex $P5020
    $P5015 = $P5020($P5022)
    goto for_next1614
  for_handlers1613:
    .get_results ($P5021)
    pop_upto_eh $P5021
    getattribute $P5021, $P5021, 'type'
    eq $P5021, .CONTROL_LOOP_NEXT, for_next1614
    eq $P5021, .CONTROL_LOOP_REDO, for_redo1615
  for_done1616:
    pop_eh 
    set $P5023, $P5015
  if489_end1609:
.annotate 'line', 269
    $P5025 = _lex_param_1."!make"($P101)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1346277621.774") :anon :lex :outer("cuid_104_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 267
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termalt" :subid("cuid_105_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 272
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_195_1346277621.774' 
    capture_lex $P5026 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 273
    set $P5003, _lex_param_1["termconj"]
    unless_null $P5003, fallback1617
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1617:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1618
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1618:
    $P5006 = $P5002."ast"()
    set $P101, $P5006
    set $P5007, _lex_param_1["termconj"]
    unless_null $P5007, fallback1621
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1621:
    set $N5001, $P5007
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5024, $I5001
    set $P5023, $P5024
    unless $I5001 goto if490_end1620 
.annotate 'line', 274
.annotate 'line', 275
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1622
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1622:
    $P5014 = $P5009."new"("alt" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5014
    set $P5018, _lex_param_1["termconj"]
    unless_null $P5018, fallback1623
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5019
  fallback1623:
    set $P5015, $P5018
    iter $P5017, $P5018
    new $P5021, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5021, for_handlers1624
    push_eh $P5021
  for_next1625:
    unless $P5017, for_done1627
    shift $P5022, $P5017
  for_redo1626:
    .const 'Sub' $P5020 = 'cuid_195_1346277621.774' 
    capture_lex $P5020
    $P5015 = $P5020($P5022)
    goto for_next1625
  for_handlers1624:
    .get_results ($P5021)
    pop_upto_eh $P5021
    getattribute $P5021, $P5021, 'type'
    eq $P5021, .CONTROL_LOOP_NEXT, for_next1625
    eq $P5021, .CONTROL_LOOP_REDO, for_redo1626
  for_done1627:
    pop_eh 
    set $P5023, $P5015
  if490_end1620:
.annotate 'line', 278
    $P5025 = _lex_param_1."!make"($P101)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1346277621.774") :anon :lex :outer("cuid_105_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 276
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termconj" :subid("cuid_106_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 281
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_196_1346277621.774' 
    capture_lex $P5026 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 282
    set $P5003, _lex_param_1["termish"]
    unless_null $P5003, fallback1628
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1628:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1629
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1629:
    $P5006 = $P5002."ast"()
    set $P101, $P5006
    set $P5007, _lex_param_1["termish"]
    unless_null $P5007, fallback1632
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1632:
    set $N5001, $P5007
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5024, $I5001
    set $P5023, $P5024
    unless $I5001 goto if491_end1631 
.annotate 'line', 283
.annotate 'line', 284
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1633
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1633:
    $P5014 = $P5009."new"("conj" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5014
    set $P5018, _lex_param_1["termish"]
    unless_null $P5018, fallback1634
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5019
  fallback1634:
    set $P5015, $P5018
    iter $P5017, $P5018
    new $P5021, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5021, for_handlers1635
    push_eh $P5021
  for_next1636:
    unless $P5017, for_done1638
    shift $P5022, $P5017
  for_redo1637:
    .const 'Sub' $P5020 = 'cuid_196_1346277621.774' 
    capture_lex $P5020
    $P5015 = $P5020($P5022)
    goto for_next1636
  for_handlers1635:
    .get_results ($P5021)
    pop_upto_eh $P5021
    getattribute $P5021, $P5021, 'type'
    eq $P5021, .CONTROL_LOOP_NEXT, for_next1636
    eq $P5021, .CONTROL_LOOP_REDO, for_redo1637
  for_done1638:
    pop_eh 
    set $P5023, $P5015
  if491_end1631:
.annotate 'line', 287
    $P5025 = _lex_param_1."!make"($P101)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1346277621.774") :anon :lex :outer("cuid_106_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 285
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$qast"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_107_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 290
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_197_1346277621.774' 
    capture_lex $P5019 
    .lex "$qast", $P101 
    .lex "$lastlit", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 291
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Regex"]
    unless_null $P5003, fallback1639
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1639:
    $P5008 = $P5003."new"("concat" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5008
    box $P5009, 0
    set $P102, $P5009
    set $P5013, _lex_param_1["noun"]
    unless_null $P5013, fallback1640
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5014
  fallback1640:
    set $P5010, $P5013
    iter $P5012, $P5013
    new $P5016, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5016, for_handlers1659
    push_eh $P5016
  for_next1660:
    unless $P5012, for_done1662
    shift $P5017, $P5012
  for_redo1661:
    .const 'Sub' $P5015 = 'cuid_197_1346277621.774' 
    capture_lex $P5015
    $P5010 = $P5015($P5017)
    goto for_next1660
  for_handlers1659:
    .get_results ($P5016)
    pop_upto_eh $P5016
    getattribute $P5016, $P5016, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, for_next1660
    eq $P5016, .CONTROL_LOOP_REDO, for_redo1661
  for_done1662:
    pop_eh 
.annotate 'line', 308
    $P5018 = _lex_param_1."!make"($P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1346277621.774") :anon :lex :outer("cuid_107_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 293
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 294
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    set $P5039, $P101
    unless $P101 goto if492_end1642 
.annotate 'line', 295
    find_lex $P5003, "$lastlit"
    set $P5005, $P5003
    unless $P5003 goto if495_end1648 
.annotate 'line', 296
    $P5004 = $P101."rxtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "literal"
    box $P5006, $I5001
    set $P5005, $P5006
  if495_end1648:
    set $P5015, $P5005
    unless $P5005 goto if494_end1646 
.annotate 'line', 297
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Node"]
    unless_null $P5007, fallback1649
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback1649:
    set $P5012, $P101[0]
    unless_null $P5012, fallback1650
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5013
  fallback1650:
    $P5014 = $P5007."ACCEPTS"($P5012)
    isfalse $I5002, $P5014
    box $P5016, $I5002
    set $P5015, $P5016
  if494_end1646:
    unless $P5015 goto if493_else1643 
    find_lex $P5017, "$lastlit"
    find_lex $P5019, "$lastlit"
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1651
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5020
  fallback1651:
    set $S5003, $P5018
    set $P5021, $P101[0]
    unless_null $P5021, fallback1652
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5022
  fallback1652:
    set $S5004, $P5021
    concat $S5002, $S5003, $S5004
    box $P5023, $S5002
    set $P5017[0], $P5023
    set $P5038, $P5023
    goto if493_end1644
  if493_else1643:
.annotate 'line', 300
.annotate 'line', 301
    find_lex $P5024, "$qast"
    $P5025 = _lex_param_0."ast"()
    $P5026 = $P5024."push"($P5025)
.annotate 'line', 302
    $P5027 = $P101."rxtype"()
    set $S5005, $P5027
    iseq $I5003, $S5005, "literal"
    set $I5005, $I5003
    unless $I5003 goto if497_end1656 
.annotate 'line', 303
    get_hll_global $P5031, "GLOBAL"
    nqp_get_package_through_who $P5030, $P5031, "QAST"
    get_who $P5029, $P5030
    set $P5028, $P5029["Node"]
    unless_null $P5028, fallback1657
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5032
  fallback1657:
    set $P5033, $P101[0]
    unless_null $P5033, fallback1658
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5033, $P5034
  fallback1658:
    $P5035 = $P5028."ACCEPTS"($P5033)
    isfalse $I5004, $P5035
    set $I5005, $I5004
  if497_end1656:
    unless $I5005 goto if496_else1653 
    set $P5036, $P101
    goto if496_end1654
  if496_else1653:
    box $P5037, 0
    set $P5036, $P5037
  if496_end1654:
    store_lex "$lastlit", $P5036
    set $P5038, $P5036
  if493_end1644:
    set $P5039, $P5038
  if492_end1642:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "quantified_atom" :subid("cuid_108_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 311
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5081 = 'cuid_198_1346277621.774' 
    capture_lex $P5081 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 312
    set $P5002, _lex_param_1["atom"]
    unless_null $P5002, fallback1663
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback1663:
    $P5004 = $P5002."ast"()
    set $P101, $P5004
    set $P5005, _lex_param_1["quantifier"]
    unless_null $P5005, fallback1666
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5006
  fallback1666:
    set $P5009, $P5005
    unless $P5005 goto if498_end1665 
    .const 'Sub' $P5007 = 'cuid_198_1346277621.774' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if498_end1665:
    set $P5010, _lex_param_1["separator"]
    unless_null $P5010, fallback1671
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback1671:
    set $P5054, $P5010
    unless $P5010 goto if499_end1670 
.annotate 'line', 318
.annotate 'line', 319
    $P5012 = $P101."rxtype"()
    set $S5001, $P5012
    iseq $I5001, $S5001, "quant"
    box $P5022, $I5001
    set $P5021, $P5022
    if $I5001 goto unless500_end1673 
.annotate 'line', 320
    $P5013 = _lex_param_1."CURSOR"()
    set $P5016, _lex_param_1["separator"]
    unless_null $P5016, fallback1674
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5017
  fallback1674:
    set $P5015, $P5016[0]
    unless_null $P5015, fallback1675
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5018
  fallback1675:
    set $P5014, $P5015["septype"]
    unless_null $P5014, fallback1676
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5019
  fallback1676:
    set $S5004, $P5014
    concat $S5003, "'", $S5004
    concat $S5002, $S5003, "' many only be used immediately following a quantifier"
    $P5020 = $P5013."panic"($S5002)
    set $P5021, $P5020
  unless500_end1673:
.annotate 'line', 323
    set $P5024, _lex_param_1["separator"]
    unless_null $P5024, fallback1677
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5025
  fallback1677:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback1678
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5023, $P5026
  fallback1678:
    $P5027 = $P5023."ast"()
    $P5028 = $P101."push"($P5027)
    set $P5031, _lex_param_1["separator"]
    unless_null $P5031, fallback1681
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5031, $P5032
  fallback1681:
    set $P5030, $P5031[0]
    unless_null $P5030, fallback1682
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5030, $P5033
  fallback1682:
    set $P5029, $P5030["septype"]
    unless_null $P5029, fallback1683
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5034
  fallback1683:
    set $S5005, $P5029
    iseq $I5002, $S5005, "%%"
    box $P5053, $I5002
    set $P5052, $P5053
    unless $I5002 goto if501_end1680 
.annotate 'line', 324
.annotate 'line', 325
    get_hll_global $P5038, "GLOBAL"
    nqp_get_package_through_who $P5037, $P5038, "QAST"
    get_who $P5036, $P5037
    set $P5035, $P5036["Regex"]
    unless_null $P5035, fallback1684
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5039
  fallback1684:
.annotate 'line', 326
    get_hll_global $P5043, "GLOBAL"
    nqp_get_package_through_who $P5042, $P5043, "QAST"
    get_who $P5041, $P5042
    set $P5040, $P5041["Regex"]
    unless_null $P5040, fallback1685
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5044
  fallback1685:
    set $P5046, _lex_param_1["separator"]
    unless_null $P5046, fallback1686
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5046, $P5047
  fallback1686:
    set $P5045, $P5046[0]
    unless_null $P5045, fallback1687
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5045, $P5048
  fallback1687:
    $P5049 = $P5045."ast"()
    $P5050 = $P5040."new"($P5049, "quant" :named("rxtype"), 0 :named("min"), 1 :named("max"))
    $P5051 = $P5035."new"($P101, $P5050, "concat" :named("rxtype"))
    set $P101, $P5051
    set $P5052, $P101
  if501_end1680:
    set $P5054, $P5052
  if499_end1670:
    set $P5056, $P101
    unless $P101 goto if504_end1693 
.annotate 'line', 329
    $P5055 = $P101."backtrack"()
    isfalse $I5003, $P5055
    box $P5057, $I5003
    set $P5056, $P5057
  if504_end1693:
    set $P5077, $P5056
    unless $P5056 goto if503_end1691 
    find_dynamic_lex $P5059, "%*RX"
    unless_null $P5059, fallback1696
    get_hll_global $P5062, "GLOBAL"
    get_who $P5061, $P5062
    set $P5060, $P5061["%RX"]
    unless_null $P5060, fallback1697
    get_hll_global $P5064, "GLOBAL"
    get_who $P5063, $P5064
    new $P5065, 'Hash'
    set $P5063["%RX"], $P5065
    set $P5060, $P5065
  fallback1697:
    unless_null $P5060, vivi_5061698
    die "Contextual %*RX not found"
    box $P5066, "Contextual %*RX not found"
    set $P5060, $P5066
  vivi_5061698:
    set $P5059, $P5060
  fallback1696:
    set $P5058, $P5059["r"]
    unless_null $P5058, fallback1699
    nqp_get_sc_object $P5067, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5058, $P5067
  fallback1699:
    set $P5076, $P5058
    if $P5058 goto unless505_end1695 
    set $P5068, _lex_param_1["backmod"]
    unless_null $P5068, fallback1702
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5068, $P5069
  fallback1702:
    set $P5074, $P5068
    unless $P5068 goto if507_end1701 
    set $P5071, _lex_param_1["backmod"]
    unless_null $P5071, fallback1703
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5071, $P5072
  fallback1703:
    set $P5070, $P5071[0]
    unless_null $P5070, fallback1704
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5070, $P5073
  fallback1704:
    set $S5006, $P5070
    iseq $I5004, $S5006, ":"
    box $P5075, $I5004
    set $P5074, $P5075
  if507_end1701:
    set $P5076, $P5074
  unless505_end1695:
    set $P5077, $P5076
  if503_end1691:
    set $P5079, $P5077
    unless $P5077 goto if502_end1689 
    $P5078 = $P101."backtrack"("r")
    set $P5079, $P5078
  if502_end1689:
.annotate 'line', 331
    $P5080 = _lex_param_1."!make"($P101)
    .return ($P5080) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1346277621.774") :anon :lex :outer("cuid_108_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 313
    .lex "$ast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 314
    find_lex $P5004, "$/"
    set $P5003, $P5004["quantifier"]
    unless_null $P5003, fallback1667
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5005
  fallback1667:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1668
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1668:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
.annotate 'line', 315
    find_lex $P5008, "$qast"
    $P5009 = $P101."unshift"($P5008)
    store_lex "$qast", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "separator" :subid("cuid_109_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 334
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 335
    set $P5001, _lex_param_1["quantified_atom"]
    unless_null $P5001, fallback1705
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1705:
    $P5003 = $P5001."ast"()
    $P5004 = _lex_param_1."!make"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "atom" :subid("cuid_110_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 338
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5010 = 'cuid_199_1346277621.774' 
    capture_lex $P5010 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $P5001, _lex_param_1["metachar"]
    unless_null $P5001, fallback1708
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1708:
    unless $P5001 goto if508_else1706 
.annotate 'line', 339
.annotate 'line', 340
    set $P5003, _lex_param_1["metachar"]
    unless_null $P5003, fallback1709
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1709:
    $P5005 = $P5003."ast"()
    $P5006 = _lex_param_1."!make"($P5005)
    set $P5009, $P5006
    goto if508_end1707
  if508_else1706:
    .const 'Sub' $P5007 = 'cuid_199_1346277621.774' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if508_end1707:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1346277621.774") :anon :lex :outer("cuid_110_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 342
    .lex "$qast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 343
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1710
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1710:
    find_lex $P5007, "$/"
    set $S5001, $P5007
    find_lex $P5008, "$/"
    $P5009 = $P5002."new"($S5001, "literal" :named("rxtype"), $P5008 :named("node"))
    set $P101, $P5009
    find_dynamic_lex $P5011, "%*RX"
    unless_null $P5011, fallback1713
    get_hll_global $P5014, "GLOBAL"
    get_who $P5013, $P5014
    set $P5012, $P5013["%RX"]
    unless_null $P5012, fallback1714
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    new $P5017, 'Hash'
    set $P5015["%RX"], $P5017
    set $P5012, $P5017
  fallback1714:
    unless_null $P5012, vivi_5101715
    die "Contextual %*RX not found"
    box $P5018, "Contextual %*RX not found"
    set $P5012, $P5018
  vivi_5101715:
    set $P5011, $P5012
  fallback1713:
    set $P5010, $P5011["i"]
    unless_null $P5010, fallback1716
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5019
  fallback1716:
    set $P5021, $P5010
    unless $P5010 goto if509_end1712 
.annotate 'line', 344
    $P5020 = $P101."subtype"("ignorecase")
    set $P5021, $P5020
  if509_end1712:
.annotate 'line', 345
    find_dynamic_lex $P5022, "$/"
    $P5023 = $P5022."!make"($P101)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<*>" :subid("cuid_111_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 349
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 350
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1717
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1717:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 0 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 351
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1718
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback1718:
    $P5010 = "&backmod"($P101, $P5008)
    $P5011 = _lex_param_1."!make"($P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<+>" :subid("cuid_112_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 354
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 355
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1719
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1719:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 1 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 356
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1720
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback1720:
    $P5010 = "&backmod"($P101, $P5008)
    $P5011 = _lex_param_1."!make"($P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<?>" :subid("cuid_113_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 359
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 360
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1721
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1721:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 0 :named("min"), 1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 361
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1722
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback1722:
    $P5010 = "&backmod"($P101, $P5008)
    $P5011 = _lex_param_1."!make"($P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<**>" :subid("cuid_114_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 364
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 366
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1723
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1723:
    set $P5007, _lex_param_1["min"]
    unless_null $P5007, fallback1724
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1724:
    set $N5001, $P5007
    $P5009 = $P5002."new"("quant" :named("rxtype"), $N5001 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5009
    set $P5010, _lex_param_1["max"]
    unless_null $P5010, fallback1727
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback1727:
    isfalse $I5001, $P5010
    unless $I5001 goto if511_else1725 
.annotate 'line', 367
    set $P5012, _lex_param_1["min"]
    unless_null $P5012, fallback1728
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5013
  fallback1728:
    set $N5002, $P5012
    $P5014 = $P101."max"($N5002)
    set $P5026, $P5014
    goto if511_end1726
  if511_else1725:
    set $P5016, _lex_param_1["max"]
    unless_null $P5016, fallback1731
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5016, $P5017
  fallback1731:
    set $P5015, $P5016[0]
    unless_null $P5015, fallback1732
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5018
  fallback1732:
    set $S5001, $P5015
    isne $I5002, $S5001, "*"
    box $P5025, $I5002
    set $P5024, $P5025
    unless $I5002 goto if512_end1730 
.annotate 'line', 368
    set $P5020, _lex_param_1["max"]
    unless_null $P5020, fallback1733
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5021
  fallback1733:
    set $P5019, $P5020[0]
    unless_null $P5019, fallback1734
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5022
  fallback1734:
    set $N5003, $P5019
    $P5023 = $P101."max"($N5003)
    set $P5024, $P5023
  if512_end1730:
    set $P5026, $P5024
  if511_end1726:
.annotate 'line', 369
    set $P5027, _lex_param_1["backmod"]
    unless_null $P5027, fallback1735
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5028
  fallback1735:
    $P5029 = "&backmod"($P101, $P5027)
    $P5030 = _lex_param_1."!make"($P5029)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<ws>" :subid("cuid_115_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_dynamic_lex $P5003, "%*RX"
    unless_null $P5003, fallback1738
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["%RX"]
    unless_null $P5004, fallback1739
    get_hll_global $P5008, "GLOBAL"
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%RX"], $P5009
    set $P5004, $P5009
  fallback1739:
    unless_null $P5004, vivi_5141740
    die "Contextual %*RX not found"
    box $P5010, "Contextual %*RX not found"
    set $P5004, $P5010
  vivi_5141740:
    set $P5003, $P5004
  fallback1738:
    set $P5002, $P5003["s"]
    unless_null $P5002, fallback1741
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5011
  fallback1741:
    unless $P5002 goto if513_else1736 
.annotate 'line', 374
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback1742
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback1742:
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "PAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Node"]
    unless_null $P5017, fallback1743
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1743:
    $P5022 = $P5017."new"("ws")
    $P5023 = $P5012."new"($P5022, "ws" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"))
    set $P5024, $P5023
    goto if513_end1737
  if513_else1736:
    box $P5025, 0
    set $P5024, $P5025
  if513_end1737:
    set $P101, $P5024
.annotate 'line', 376
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<[ ]>" :subid("cuid_116_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 379
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 380
    set $P5001, _lex_param_1["nibbler"]
    unless_null $P5001, fallback1744
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1744:
    $P5003 = $P5001."ast"()
    $P5004 = _lex_param_1."!make"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<( )>" :subid("cuid_117_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 383
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$subpast", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 384
    get_hll_global $P5006, "GLOBAL"
    nqp_get_package_through_who $P5005, $P5006, "PAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback1745
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5007
  fallback1745:
    set $P5008, _lex_param_1["nibbler"]
    unless_null $P5008, fallback1746
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback1746:
    $P5010 = $P5008."ast"()
    $P5011 = "&buildsub"($P5010, 1 :named("anon"))
    $P5012 = $P5003."new"($P5011)
    set $P101, $P5012
.annotate 'line', 385
    get_hll_global $P5016, "GLOBAL"
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Regex"]
    unless_null $P5013, fallback1747
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5017
  fallback1747:
    set $P5018, _lex_param_1["nibbler"]
    unless_null $P5018, fallback1748
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5019
  fallback1748:
    $P5020 = $P5018."ast"()
    $P5021 = $P5013."new"($P101, $P5020, "subrule" :named("rxtype"), "capture" :named("subtype"), _lex_param_1 :named("node"))
    set $P102, $P5021
.annotate 'line', 387
    $P5022 = _lex_param_1."!make"($P102)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<'>" :subid("cuid_118_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 390
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$quote", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 391
    set $P5003, _lex_param_1["quote_EXPR"]
    unless_null $P5003, fallback1749
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1749:
    $P5005 = $P5003."ast"()
    set $P101, $P5005
.annotate 'line', 392
    get_hll_global $P5009, "GLOBAL"
    nqp_get_package_through_who $P5008, $P5009, "PAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Val"]
    unless_null $P5006, fallback1752
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback1752:
    $P5011 = $P5006."ACCEPTS"($P101)
    set $P5013, $P5011
    unless $P5011 goto if515_end1751 
    $P5012 = $P101."value"()
    set $P101, $P5012
    set $P5013, $P101
  if515_end1751:
.annotate 'line', 393
    get_hll_global $P5017, "GLOBAL"
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set $P5014, $P5015["SVal"]
    unless_null $P5014, fallback1755
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5018
  fallback1755:
    $P5019 = $P5014."ACCEPTS"($P101)
    set $P5021, $P5019
    unless $P5019 goto if516_end1754 
    $P5020 = $P101."value"()
    set $P101, $P5020
    set $P5021, $P101
  if516_end1754:
.annotate 'line', 394
    get_hll_global $P5025, "GLOBAL"
    nqp_get_package_through_who $P5024, $P5025, "QAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["Regex"]
    unless_null $P5022, fallback1756
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5026
  fallback1756:
    $P5027 = $P5022."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5027
    find_dynamic_lex $P5029, "%*RX"
    unless_null $P5029, fallback1759
    get_hll_global $P5032, "GLOBAL"
    get_who $P5031, $P5032
    set $P5030, $P5031["%RX"]
    unless_null $P5030, fallback1760
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%RX"], $P5035
    set $P5030, $P5035
  fallback1760:
    unless_null $P5030, vivi_5181761
    die "Contextual %*RX not found"
    box $P5036, "Contextual %*RX not found"
    set $P5030, $P5036
  vivi_5181761:
    set $P5029, $P5030
  fallback1759:
    set $P5028, $P5029["i"]
    unless_null $P5028, fallback1762
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5037
  fallback1762:
    set $P5039, $P5028
    unless $P5028 goto if517_end1758 
.annotate 'line', 395
    $P5038 = $P102."subtype"("ignorecase")
    set $P5039, $P5038
  if517_end1758:
.annotate 'line', 396
    $P5040 = _lex_param_1."!make"($P102)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<\">" :subid("cuid_119_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 399
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$quote", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 400
    set $P5003, _lex_param_1["quote_EXPR"]
    unless_null $P5003, fallback1763
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1763:
    $P5005 = $P5003."ast"()
    set $P101, $P5005
.annotate 'line', 401
    get_hll_global $P5009, "GLOBAL"
    nqp_get_package_through_who $P5008, $P5009, "PAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Val"]
    unless_null $P5006, fallback1766
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback1766:
    $P5011 = $P5006."ACCEPTS"($P101)
    set $P5013, $P5011
    unless $P5011 goto if519_end1765 
    $P5012 = $P101."value"()
    set $P101, $P5012
    set $P5013, $P101
  if519_end1765:
.annotate 'line', 402
    get_hll_global $P5017, "GLOBAL"
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set $P5014, $P5015["SVal"]
    unless_null $P5014, fallback1769
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5018
  fallback1769:
    $P5019 = $P5014."ACCEPTS"($P101)
    set $P5021, $P5019
    unless $P5019 goto if520_end1768 
    $P5020 = $P101."value"()
    set $P101, $P5020
    set $P5021, $P101
  if520_end1768:
.annotate 'line', 403
    get_hll_global $P5025, "GLOBAL"
    nqp_get_package_through_who $P5024, $P5025, "QAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["Regex"]
    unless_null $P5022, fallback1770
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5026
  fallback1770:
    $P5027 = $P5022."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5027
    find_dynamic_lex $P5029, "%*RX"
    unless_null $P5029, fallback1773
    get_hll_global $P5032, "GLOBAL"
    get_who $P5031, $P5032
    set $P5030, $P5031["%RX"]
    unless_null $P5030, fallback1774
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    new $P5035, 'Hash'
    set $P5033["%RX"], $P5035
    set $P5030, $P5035
  fallback1774:
    unless_null $P5030, vivi_5221775
    die "Contextual %*RX not found"
    box $P5036, "Contextual %*RX not found"
    set $P5030, $P5036
  vivi_5221775:
    set $P5029, $P5030
  fallback1773:
    set $P5028, $P5029["i"]
    unless_null $P5028, fallback1776
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5037
  fallback1776:
    set $P5039, $P5028
    unless $P5028 goto if521_end1772 
.annotate 'line', 404
    $P5038 = $P102."subtype"("ignorecase")
    set $P5039, $P5038
  if521_end1772:
.annotate 'line', 405
    $P5040 = _lex_param_1."!make"($P102)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<.>" :subid("cuid_120_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 409
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1777
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1777:
    $P5006 = $P5001."new"("cclass" :named("rxtype"), "." :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^>" :subid("cuid_121_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 413
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1778
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1778:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "bos" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^^>" :subid("cuid_122_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 416
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 417
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1779
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1779:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "bol" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$>" :subid("cuid_123_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 421
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1780
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1780:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "eos" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$$>" :subid("cuid_124_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 424
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 425
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1781
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1781:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "eol" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<lwb>" :subid("cuid_125_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 428
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 429
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1782
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1782:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "lwb" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<rwb>" :subid("cuid_126_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 432
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 433
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1783
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1783:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "rwb" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<from>" :subid("cuid_127_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 436
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 437
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1784
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1784:
.annotate 'line', 439
    get_hll_global $P5009, "GLOBAL"
    nqp_get_package_through_who $P5008, $P5009, "PAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Node"]
    unless_null $P5006, fallback1785
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback1785:
    $P5011 = $P5006."new"("!LITERAL", "")
    $P5012 = $P5001."new"($P5011, "subrule" :named("rxtype"), "capture" :named("subtype"), "r" :named("backtrack"), "$!from" :named("name"), _lex_param_1 :named("node"))
    $P5013 = _lex_param_1."!make"($P5012)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<to>" :subid("cuid_128_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 442
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 443
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1786
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1786:
.annotate 'line', 445
    get_hll_global $P5009, "GLOBAL"
    nqp_get_package_through_who $P5008, $P5009, "PAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Node"]
    unless_null $P5006, fallback1787
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback1787:
    $P5011 = $P5006."new"("!LITERAL", "")
    $P5012 = $P5001."new"($P5011, "subrule" :named("rxtype"), "capture" :named("subtype"), "r" :named("backtrack"), "$!to" :named("name"), _lex_param_1 :named("node"))
    $P5013 = _lex_param_1."!make"($P5012)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<bs>" :subid("cuid_129_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 448
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 449
    set $P5001, _lex_param_1["backslash"]
    unless_null $P5001, fallback1788
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1788:
    $P5003 = $P5001."ast"()
    $P5004 = _lex_param_1."!make"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<assert>" :subid("cuid_130_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 452
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 453
    set $P5001, _lex_param_1["assertion"]
    unless_null $P5001, fallback1789
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1789:
    $P5003 = $P5001."ast"()
    $P5004 = _lex_param_1."!make"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<var>" :subid("cuid_131_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 456
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "$name", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    set $P5003, _lex_param_1["pos"]
    unless_null $P5003, fallback1792
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1792:
    unless $P5003 goto if523_else1790 
    set $P5005, _lex_param_1["pos"]
    unless_null $P5005, fallback1793
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5006
  fallback1793:
    set $N5001, $P5005
    box $P5010, $N5001
    set $P5009, $P5010
    goto if523_end1791
  if523_else1790:
    set $P5007, _lex_param_1["name"]
    unless_null $P5007, fallback1794
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1794:
    set $S5001, $P5007
    box $P5011, $S5001
    set $P5009, $P5011
  if523_end1791:
    set $P102, $P5009
    set $P5012, _lex_param_1["quantified_atom"]
    unless_null $P5012, fallback1797
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5013
  fallback1797:
    unless $P5012 goto if524_else1795 
.annotate 'line', 459
.annotate 'line', 460
    set $P5015, _lex_param_1["quantified_atom"]
    unless_null $P5015, fallback1798
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5016
  fallback1798:
    set $P5014, $P5015[0]
    unless_null $P5014, fallback1799
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5017
  fallback1799:
    $P5018 = $P5014."ast"()
    set $P101, $P5018
.annotate 'line', 461
    $P5019 = $P101."rxtype"()
    set $S5002, $P5019
    iseq $I5001, $S5002, "quant"
    set $I5003, $I5001
    unless $I5001 goto if526_end1803 
    set $P5020, $P101[0]
    unless_null $P5020, fallback1804
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5021
  fallback1804:
    $P5022 = $P5020."rxtype"()
    set $S5003, $P5022
    iseq $I5002, $S5003, "subrule"
    set $I5003, $I5002
  if526_end1803:
    unless $I5003 goto if525_else1800 
.annotate 'line', 462
    nqp_decontainerize $P5023, _lex_param_0
    set $P5024, $P101[0]
    unless_null $P5024, fallback1805
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5025
  fallback1805:
    $P5026 = $P5023."subrule_alias"($P5024, $P102)
    set $P5037, $P5026
    goto if525_end1801
  if525_else1800:
.annotate 'line', 464
    $P5027 = $P101."rxtype"()
    set $S5004, $P5027
    iseq $I5004, $S5004, "subrule"
    unless $I5004 goto if527_else1806 
.annotate 'line', 465
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."subrule_alias"($P101, $P102)
    set $P5036, $P5029
    goto if527_end1807
  if527_else1806:
.annotate 'line', 467
.annotate 'line', 468
    get_hll_global $P5033, "GLOBAL"
    nqp_get_package_through_who $P5032, $P5033, "QAST"
    get_who $P5031, $P5032
    set $P5030, $P5031["Regex"]
    unless_null $P5030, fallback1808
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5030, $P5034
  fallback1808:
    $P5035 = $P5030."new"($P101, $P102 :named("name"), "subcapture" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5035
    set $P5036, $P101
  if527_end1807:
    set $P5037, $P5036
  if525_end1801:
    set $P5050, $P5037
    goto if524_end1796
  if524_else1795:
.annotate 'line', 472
.annotate 'line', 473
    get_hll_global $P5041, "GLOBAL"
    nqp_get_package_through_who $P5040, $P5041, "QAST"
    get_who $P5039, $P5040
    set $P5038, $P5039["Regex"]
    unless_null $P5038, fallback1809
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5038, $P5042
  fallback1809:
    get_hll_global $P5046, "GLOBAL"
    nqp_get_package_through_who $P5045, $P5046, "PAST"
    get_who $P5044, $P5045
    set $P5043, $P5044["Node"]
    unless_null $P5043, fallback1810
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5043, $P5047
  fallback1810:
    $P5048 = $P5043."new"("!BACKREF", $P102)
    $P5049 = $P5038."new"($P5048, "subrule" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5049
    set $P5050, $P101
  if524_end1796:
.annotate 'line', 476
    $P5051 = _lex_param_1."!make"($P101)
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<~>" :subid("cuid_132_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 479
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 480
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1811
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1811:
.annotate 'line', 481
    set $P5006, _lex_param_1["EXPR"]
    unless_null $P5006, fallback1812
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback1812:
    $P5008 = $P5006."ast"()
.annotate 'line', 482
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1813
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1813:
.annotate 'line', 483
    set $P5014, _lex_param_1["GOAL"]
    unless_null $P5014, fallback1814
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5015
  fallback1814:
    $P5016 = $P5014."ast"()
.annotate 'line', 484
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Regex"]
    unless_null $P5017, fallback1815
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1815:
    get_hll_global $P5025, "GLOBAL"
    nqp_get_package_through_who $P5024, $P5025, "PAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["Node"]
    unless_null $P5022, fallback1816
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5026
  fallback1816:
    set $P5027, _lex_param_1["GOAL"]
    unless_null $P5027, fallback1817
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5028
  fallback1817:
    set $S5001, $P5027
    $P5029 = $P5022."new"("FAILGOAL", $S5001)
    $P5030 = $P5017."new"($P5029, "subrule" :named("rxtype"), "method" :named("subtype"))
    $P5031 = $P5009."new"($P5016, $P5030, "altseq" :named("rxtype"))
    $P5032 = $P5001."new"($P5008, $P5031, "concat" :named("rxtype"))
    $P5033 = _lex_param_1."!make"($P5032)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<s>" :subid("cuid_133_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 492
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 493
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1818
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1818:
    set $P5006, _lex_param_1["sym"]
    unless_null $P5006, fallback1821
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback1821:
    set $S5001, $P5006
    iseq $I5001, $S5001, "n"
    unless $I5001 goto if528_else1819 
    set $S5003, "nl"
    goto if528_end1820
  if528_else1819:
    set $P5008, _lex_param_1["sym"]
    unless_null $P5008, fallback1822
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback1822:
    set $S5002, $P5008
    set $S5003, $S5002
  if528_end1820:
    set $P5010, _lex_param_1["sym"]
    unless_null $P5010, fallback1823
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback1823:
    set $S5004, $P5010
    isle $I5002, $S5004, "Z"
    $P5012 = $P5001."new"(".CCLASS_WHITESPACE", "cclass" :named("rxtype"), $S5003 :named("subtype"), $I5002 :named("negate"), _lex_param_1 :named("node"))
    $P5013 = _lex_param_1."!make"($P5012)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<b>" :subid("cuid_134_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 498
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 499
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1824
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1824:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1825
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1825:
    set $S5001, $P5007
    iseq $I5001, $S5001, "B"
    $P5009 = $P5002."new"("\b", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5009
.annotate 'line', 501
    $P5010 = _lex_param_1."!make"($P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<e>" :subid("cuid_135_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 504
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 505
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1826
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1826:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1827
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1827:
    set $S5001, $P5007
    iseq $I5001, $S5001, "E"
    $P5009 = $P5002."new"("\e", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5009
.annotate 'line', 507
    $P5010 = _lex_param_1."!make"($P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<f>" :subid("cuid_136_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 510
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 511
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1828
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1828:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1829
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1829:
    set $S5001, $P5007
    iseq $I5001, $S5001, "F"
    $P5009 = $P5002."new"("\f", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5009
.annotate 'line', 513
    $P5010 = _lex_param_1."!make"($P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<h>" :subid("cuid_137_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 516
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 517
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1830
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1830:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1831
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1831:
    set $S5001, $P5007
    iseq $I5001, $S5001, "H"
    $P5009 = $P5002."new"(utf8:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5009
.annotate 'line', 519
    $P5010 = _lex_param_1."!make"($P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<r>" :subid("cuid_138_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 522
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 523
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1832
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1832:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1833
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1833:
    set $S5001, $P5007
    iseq $I5001, $S5001, "R"
    $P5009 = $P5002."new"("\r", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5009
.annotate 'line', 525
    $P5010 = _lex_param_1."!make"($P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<t>" :subid("cuid_139_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 528
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 529
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1834
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1834:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1835
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1835:
    set $S5001, $P5007
    iseq $I5001, $S5001, "T"
    $P5009 = $P5002."new"("\t", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5009
.annotate 'line', 531
    $P5010 = _lex_param_1."!make"($P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<v>" :subid("cuid_140_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 534
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 535
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1836
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1836:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1837
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1837:
    set $S5001, $P5007
    iseq $I5001, $S5001, "V"
    $P5009 = $P5002."new"(utf8:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5009
.annotate 'line', 538
    $P5010 = _lex_param_1."!make"($P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<o>" :subid("cuid_141_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 541
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$octlit", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 543
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Actions"]
    unless_null $P5002, fallback1838
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1838:
    set $P5007, _lex_param_1["octint"]
    unless_null $P5007, fallback1841
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1841:
    set $P5013, $P5007
    if $P5007 goto unless529_end1840 
    set $P5010, _lex_param_1["octints"]
    unless_null $P5010, fallback1842
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback1842:
    set $P5009, $P5010["octint"]
    unless_null $P5009, fallback1843
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback1843:
    set $P5013, $P5009
  unless529_end1840:
    $P5014 = $P5002."ints_to_string"($P5013)
    set $P101, $P5014
.annotate 'line', 544
    set $P5015, _lex_param_1["sym"]
    unless_null $P5015, fallback1846
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5016
  fallback1846:
    set $S5001, $P5015
    iseq $I5001, $S5001, "O"
    unless $I5001 goto if530_else1844 
.annotate 'line', 545
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Regex"]
    unless_null $P5017, fallback1847
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1847:
    $P5022 = $P5017."new"($P101, "enumcharlist" :named("rxtype"), 1 :named("negate"), _lex_param_1 :named("node"))
    set $P5029, $P5022
    goto if530_end1845
  if530_else1844:
.annotate 'line', 547
    get_hll_global $P5026, "GLOBAL"
    nqp_get_package_through_who $P5025, $P5026, "QAST"
    get_who $P5024, $P5025
    set $P5023, $P5024["Regex"]
    unless_null $P5023, fallback1848
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5023, $P5027
  fallback1848:
    $P5028 = $P5023."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P5029, $P5028
  if530_end1845:
    $P5030 = _lex_param_1."!make"($P5029)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<x>" :subid("cuid_142_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 550
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$hexlit", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 552
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Actions"]
    unless_null $P5002, fallback1849
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1849:
    set $P5007, _lex_param_1["hexint"]
    unless_null $P5007, fallback1852
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1852:
    set $P5013, $P5007
    if $P5007 goto unless531_end1851 
    set $P5010, _lex_param_1["hexints"]
    unless_null $P5010, fallback1853
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5011
  fallback1853:
    set $P5009, $P5010["hexint"]
    unless_null $P5009, fallback1854
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback1854:
    set $P5013, $P5009
  unless531_end1851:
    $P5014 = $P5002."ints_to_string"($P5013)
    set $P101, $P5014
.annotate 'line', 553
    set $P5015, _lex_param_1["sym"]
    unless_null $P5015, fallback1857
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5016
  fallback1857:
    set $S5001, $P5015
    iseq $I5001, $S5001, "X"
    unless $I5001 goto if532_else1855 
.annotate 'line', 554
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Regex"]
    unless_null $P5017, fallback1858
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1858:
    $P5022 = $P5017."new"($P101, "enumcharlist" :named("rxtype"), 1 :named("negate"), _lex_param_1 :named("node"))
    set $P5029, $P5022
    goto if532_end1856
  if532_else1855:
.annotate 'line', 556
    get_hll_global $P5026, "GLOBAL"
    nqp_get_package_through_who $P5025, $P5026, "QAST"
    get_who $P5024, $P5025
    set $P5023, $P5024["Regex"]
    unless_null $P5023, fallback1859
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5023, $P5027
  fallback1859:
    $P5028 = $P5023."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P5029, $P5028
  if532_end1856:
    $P5030 = _lex_param_1."!make"($P5029)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<c>" :subid("cuid_143_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 559
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 560
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1860
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback1860:
    set $P5006, _lex_param_1["charspec"]
    unless_null $P5006, fallback1861
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback1861:
    $P5008 = $P5006."ast"()
    $P5009 = $P5001."new"($P5008, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    $P5010 = _lex_param_1."!make"($P5009)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<misc>" :subid("cuid_144_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 563
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 564
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1862
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1862:
    set $S5001, _lex_param_1
    $P5007 = $P5002."new"($S5001, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 565
    $P5008 = _lex_param_1."!make"($P101)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<?>" :subid("cuid_145_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 568
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1865
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback1865:
    unless $P5002 goto if533_else1863 
.annotate 'line', 570
.annotate 'line', 571
    set $P5004, _lex_param_1["assertion"]
    unless_null $P5004, fallback1866
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5005
  fallback1866:
    $P5006 = $P5004."ast"()
    set $P101, $P5006
.annotate 'line', 572
    $P5007 = $P101."subtype"("zerowidth")
    set $P5014, $P5007
    goto if533_end1864
  if533_else1863:
.annotate 'line', 574
.annotate 'line', 575
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["Regex"]
    unless_null $P5008, fallback1867
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5012
  fallback1867:
    $P5013 = $P5008."new"("anchor" :named("rxtype"), "pass" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5013
    set $P5014, $P101
  if533_end1864:
.annotate 'line', 577
    $P5015 = _lex_param_1."!make"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<!>" :subid("cuid_146_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 580
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1870
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback1870:
    unless $P5002 goto if534_else1868 
.annotate 'line', 582
.annotate 'line', 583
    set $P5004, _lex_param_1["assertion"]
    unless_null $P5004, fallback1871
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5005
  fallback1871:
    $P5006 = $P5004."ast"()
    set $P101, $P5006
.annotate 'line', 584
    $P5007 = $P101."negate"()
    isfalse $I5001, $P5007
    $P5008 = $P101."negate"($I5001)
.annotate 'line', 585
    $P5009 = $P101."subtype"("zerowidth")
    set $P5016, $P5009
    goto if534_end1869
  if534_else1868:
.annotate 'line', 587
.annotate 'line', 588
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Regex"]
    unless_null $P5010, fallback1872
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback1872:
    $P5015 = $P5010."new"("anchor" :named("rxtype"), "fail" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5015
    set $P5016, $P101
  if534_end1869:
.annotate 'line', 590
    $P5017 = _lex_param_1."!make"($P101)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<|>" :subid("cuid_147_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 593
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "$name", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    set $P5003, _lex_param_1["identifier"]
    unless_null $P5003, fallback1873
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1873:
    set $S5001, $P5003
    box $P5005, $S5001
    set $P102, $P5005
    set $S5002, $P102
    iseq $I5001, $S5002, "c"
    unless $I5001 goto if535_else1874 
.annotate 'line', 596
    box $P5006, 0
    set $P101, $P5006
    set $P5021, $P101
    goto if535_end1875
  if535_else1874:
    set $S5003, $P102
    iseq $I5002, $S5003, "w"
    box $P5020, $I5002
    set $P5019, $P5020
    unless $I5002 goto if536_end1877 
.annotate 'line', 601
.annotate 'line', 602
    get_hll_global $P5010, "GLOBAL"
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Regex"]
    unless_null $P5007, fallback1878
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5011
  fallback1878:
.annotate 'line', 603
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "PAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Node"]
    unless_null $P5012, fallback1879
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback1879:
    $P5017 = $P5012."new"("wb")
    $P5018 = $P5007."new"($P5017, "subrule" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"), "" :named("name"))
    set $P101, $P5018
    set $P5019, $P101
  if536_end1877:
    set $P5021, $P5019
  if535_end1875:
.annotate 'line', 606
    $P5022 = _lex_param_1."!make"($P101)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<method>" :subid("cuid_148_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 609
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 610
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1880
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback1880:
    $P5004 = $P5002."ast"()
    set $P101, $P5004
.annotate 'line', 611
    $P5005 = $P101."subtype"("method")
.annotate 'line', 612
    $P5006 = $P101."name"("")
.annotate 'line', 613
    $P5007 = _lex_param_1."!make"($P101)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<name>" :subid("cuid_149_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 616
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5071 = 'cuid_200_1346277621.774' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_201_1346277621.774' 
    capture_lex $P5071 
    .lex "$name", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    set $P5003, _lex_param_1["longname"]
    unless_null $P5003, fallback1881
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1881:
    set $S5001, $P5003
    box $P5005, $S5001
    set $P101, $P5005
    set $P5006, _lex_param_1["assertion"]
    unless_null $P5006, fallback1884
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback1884:
    unless $P5006 goto if537_else1882 
.annotate 'line', 619
.annotate 'line', 620
    set $P5009, _lex_param_1["assertion"]
    unless_null $P5009, fallback1885
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5010
  fallback1885:
    set $P5008, $P5009[0]
    unless_null $P5008, fallback1886
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5011
  fallback1886:
    $P5012 = $P5008."ast"()
    set $P102, $P5012
.annotate 'line', 621
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."subrule_alias"($P102, $P101)
    set $P5069, $P5014
    goto if537_end1883
  if537_else1882:
    set $S5002, $P101
    iseq $I5001, $S5002, "sym"
    unless $I5001 goto if538_else1887 
    .const 'Sub' $P5015 = 'cuid_200_1346277621.774' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5068, $P5016
    goto if538_end1888
  if538_else1887:
.annotate 'line', 631
.annotate 'line', 632
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Regex"]
    unless_null $P5017, fallback1905
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1905:
.annotate 'line', 633
    get_hll_global $P5025, "GLOBAL"
    nqp_get_package_through_who $P5024, $P5025, "PAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["Node"]
    unless_null $P5022, fallback1906
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5026
  fallback1906:
    $P5027 = $P5022."new"($P101)
    $P5028 = $P5017."new"($P5027, "subrule" :named("rxtype"), "capture" :named("subtype"), _lex_param_1 :named("node"), $P101 :named("name"))
    set $P102, $P5028
    set $P5029, _lex_param_1["arglist"]
    unless_null $P5029, fallback1909
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5030
  fallback1909:
    unless $P5029 goto if543_else1907 
.annotate 'line', 635
.annotate 'line', 636
    set $P5035, _lex_param_1["arglist"]
    unless_null $P5035, fallback1910
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5036
  fallback1910:
    set $P5034, $P5035[0]
    unless_null $P5034, fallback1911
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5037
  fallback1911:
    $P5038 = $P5034."ast"()
    $P5039 = $P5038."list"()
    set $P5031, $P5039
    iter $P5033, $P5039
    new $P5041, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5041, for_handlers1913
    push_eh $P5041
  for_next1914:
    unless $P5033, for_done1916
    shift $P5042, $P5033
  for_redo1915:
    .const 'Sub' $P5040 = 'cuid_201_1346277621.774' 
    capture_lex $P5040
    $P5031 = $P5040($P5042)
    goto for_next1914
  for_handlers1913:
    .get_results ($P5041)
    pop_upto_eh $P5041
    getattribute $P5041, $P5041, 'type'
    eq $P5041, .CONTROL_LOOP_NEXT, for_next1914
    eq $P5041, .CONTROL_LOOP_REDO, for_redo1915
  for_done1916:
    pop_eh 
    set $P5067, $P5031
    goto if543_end1908
  if543_else1907:
    set $P5043, _lex_param_1["nibbler"]
    unless_null $P5043, fallback1919
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5043, $P5044
  fallback1919:
    set $P5066, $P5043
    unless $P5043 goto if544_end1918 
.annotate 'line', 638
    set $S5003, $P101
    iseq $I5002, $S5003, "after"
    unless $I5002 goto if545_else1920 
.annotate 'line', 640
    set $P5045, $P102[0]
    unless_null $P5045, fallback1922
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5045, $P5046
  fallback1922:
    nqp_decontainerize $P5047, _lex_param_0
    set $P5049, _lex_param_1["nibbler"]
    unless_null $P5049, fallback1923
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5049, $P5050
  fallback1923:
    set $P5048, $P5049[0]
    unless_null $P5048, fallback1924
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5048, $P5051
  fallback1924:
    $P5052 = $P5048."ast"()
    $P5053 = $P5047."flip_ast"($P5052)
    $P5054 = "&buildsub"($P5053, 1 :named("anon"))
    $P5055 = $P5045."push"($P5054)
    set $P5065, $P5055
    goto if545_end1921
  if545_else1920:
.annotate 'line', 641
    set $P5056, $P102[0]
    unless_null $P5056, fallback1925
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5056, $P5057
  fallback1925:
    set $P5059, _lex_param_1["nibbler"]
    unless_null $P5059, fallback1926
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5059, $P5060
  fallback1926:
    set $P5058, $P5059[0]
    unless_null $P5058, fallback1927
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5058, $P5061
  fallback1927:
    $P5062 = $P5058."ast"()
    $P5063 = "&buildsub"($P5062, 1 :named("anon"))
    $P5064 = $P5056."push"($P5063)
    set $P5065, $P5064
  if545_end1921:
    set $P5066, $P5065
  if544_end1918:
    set $P5067, $P5066
  if543_end1908:
    set $P5068, $P5067
  if538_end1888:
    set $P5069, $P5068
  if537_end1883:
.annotate 'line', 644
    $P5070 = _lex_param_1."!make"($P102)
    .return ($P5070) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1346277621.774") :anon :lex :outer("cuid_149_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 623
    .lex "$loc", $P101 
    .lex "$rxname", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_dynamic_lex $P5004, "%*RX"
    unless_null $P5004, fallback1889
    get_hll_global $P5007, "GLOBAL"
    get_who $P5006, $P5007
    set $P5005, $P5006["%RX"]
    unless_null $P5005, fallback1890
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%RX"], $P5010
    set $P5005, $P5010
  fallback1890:
    unless_null $P5005, vivi_5391891
    die "Contextual %*RX not found"
    box $P5011, "Contextual %*RX not found"
    set $P5005, $P5011
  vivi_5391891:
    set $P5004, $P5005
  fallback1889:
    set $P5003, $P5004["name"]
    unless_null $P5003, fallback1892
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5012
  fallback1892:
    set $S5001, $P5003
    index $I5001, $S5001, ":sym<", 0
    box $P5013, $I5001
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    box $P5026, $I5002
    set $P5025, $P5026
    unless $I5002 goto if540_end1894 
    find_dynamic_lex $P5015, "%*RX"
    unless_null $P5015, fallback1895
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    set $P5016, $P5017["%RX"]
    unless_null $P5016, fallback1896
    get_hll_global $P5020, "GLOBAL"
    get_who $P5019, $P5020
    new $P5021, 'Hash'
    set $P5019["%RX"], $P5021
    set $P5016, $P5021
  fallback1896:
    unless_null $P5016, vivi_5411897
    die "Contextual %*RX not found"
    box $P5022, "Contextual %*RX not found"
    set $P5016, $P5022
  vivi_5411897:
    set $P5015, $P5016
  fallback1895:
    set $P5014, $P5015["name"]
    unless_null $P5014, fallback1898
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5023
  fallback1898:
    set $S5002, $P5014
    index $I5003, $S5002, utf8:":sym\x{ab}", 0
    box $P5024, $I5003
    set $P101, $P5024
    set $P5025, $P101
  if540_end1894:
    find_dynamic_lex $P5028, "%*RX"
    unless_null $P5028, fallback1899
    get_hll_global $P5031, "GLOBAL"
    get_who $P5030, $P5031
    set $P5029, $P5030["%RX"]
    unless_null $P5029, fallback1900
    get_hll_global $P5033, "GLOBAL"
    get_who $P5032, $P5033
    new $P5034, 'Hash'
    set $P5032["%RX"], $P5034
    set $P5029, $P5034
  fallback1900:
    unless_null $P5029, vivi_5421901
    die "Contextual %*RX not found"
    box $P5035, "Contextual %*RX not found"
    set $P5029, $P5035
  vivi_5421901:
    set $P5028, $P5029
  fallback1899:
    set $P5027, $P5028["name"]
    unless_null $P5027, fallback1902
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5027, $P5036
  fallback1902:
    set $S5005, $P5027
    set $N5004, $P101
    set $N5005, 5
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    substr $S5004, $S5005, $I5004
    chopn $S5003, $S5004, 1
    box $P5037, $S5003
    set $P102, $P5037
.annotate 'line', 628
    get_hll_global $P5041, "GLOBAL"
    nqp_get_package_through_who $P5040, $P5041, "QAST"
    get_who $P5039, $P5040
    set $P5038, $P5039["Regex"]
    unless_null $P5038, fallback1903
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5038, $P5042
  fallback1903:
    find_lex $P5043, "$/"
.annotate 'line', 629
    get_hll_global $P5047, "GLOBAL"
    nqp_get_package_through_who $P5046, $P5047, "QAST"
    get_who $P5045, $P5046
    set $P5044, $P5045["Regex"]
    unless_null $P5044, fallback1904
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5044, $P5048
  fallback1904:
    find_lex $P5049, "$/"
    $P5050 = $P5044."new"($P102, "literal" :named("rxtype"), $P5049 :named("node"))
    $P5051 = $P5038."new"($P5050, "sym" :named("name"), "subcapture" :named("rxtype"), $P5043 :named("node"))
    store_lex "$qast", $P5051
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1346277621.774") :anon :lex :outer("cuid_149_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 636
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "$qast"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback1912
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5003
  fallback1912:
    $P5004 = $P5001."push"(_lex_param_0)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<[>" :subid("cuid_150_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 647
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_202_1346277621.774' 
    capture_lex $P5036 
    .lex "$clist", $P101 
    .lex "$qast", $P102 
    .lex "$i", $P103 
    .lex "$n", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    set $P5005, _lex_param_1["cclass_elem"]
    unless_null $P5005, fallback1928
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5006
  fallback1928:
    set $P101, $P5005
.annotate 'line', 649
    set $P5007, $P101[0]
    unless_null $P5007, fallback1929
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback1929:
    $P5009 = $P5007."ast"()
    set $P102, $P5009
.annotate 'line', 650
    $P5010 = $P102."negate"()
    set $P5012, $P5010
    unless $P5010 goto if547_end1933 
    $P5011 = $P102."rxtype"()
    set $S5001, $P5011
    iseq $I5001, $S5001, "subrule"
    box $P5013, $I5001
    set $P5012, $P5013
  if547_end1933:
    set $P5027, $P5012
    unless $P5012 goto if546_end1931 
.annotate 'line', 651
    $P5014 = $P102."subtype"("zerowidth")
.annotate 'line', 652
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Regex"]
    unless_null $P5015, fallback1934
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback1934:
.annotate 'line', 654
    get_hll_global $P5023, "GLOBAL"
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Regex"]
    unless_null $P5020, fallback1935
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5024
  fallback1935:
    $P5025 = $P5020."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P5026 = $P5015."new"($P102, $P5025, "concat" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5026
    set $P5027, $P102
  if546_end1931:
    box $P5028, 1
    set $P103, $P5028
    set $N5001, $P101
    box $P5029, $N5001
    set $P104, $P5029
    new $P5033, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5033, while548_handlers1939
    push_eh $P5033
  while548_test1936:
    set $N5002, $P103
    set $N5003, $P104
    islt $I5002, $N5002, $N5003
    box $P5034, $I5002
    set $P5032, $P5034
    unless $I5002 goto while548_done1940 
  while548_redo1938:
    .const 'Sub' $P5030 = 'cuid_202_1346277621.774' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
    goto while548_test1936 
  while548_handlers1939:
    .get_results ($P5033)
    pop_upto_eh $P5033
    getattribute $P5033, $P5033, 'type'
    eq $P5033, .CONTROL_LOOP_NEXT, while548_test1936
    eq $P5033, .CONTROL_LOOP_REDO, while548_redo1938
  while548_done1940:
    pop_eh 
.annotate 'line', 669
    $P5035 = _lex_param_1."!make"($P102)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1346277621.774") :anon :lex :outer("cuid_150_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 658
    .lex "$ast", $P101 
    .local pmc tmp_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 659
    find_lex $P5003, "$clist"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback1941
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback1941:
    $P5006 = $P5002."ast"()
    set $P101, $P5006
.annotate 'line', 660
    $P5007 = $P101."negate"()
    unless $P5007 goto if549_else1942 
.annotate 'line', 661
    $P5008 = $P101."subtype"("zerowidth")
.annotate 'line', 662
    get_hll_global $P5012, "GLOBAL"
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1944
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5013
  fallback1944:
    find_lex $P5014, "$qast"
    find_lex $P5015, "$/"
    $P5016 = $P5009."new"($P101, $P5014, "concat" :named("rxtype"), $P5015 :named("node"))
    store_lex "$qast", $P5016
    set $P5025, $P5016
    goto if549_end1943
  if549_else1942:
.annotate 'line', 664
.annotate 'line', 665
    get_hll_global $P5020, "GLOBAL"
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Regex"]
    unless_null $P5017, fallback1945
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5021
  fallback1945:
    find_lex $P5022, "$qast"
    find_lex $P5023, "$/"
    $P5024 = $P5017."new"($P5022, $P101, "altseq" :named("rxtype"), $P5023 :named("node"))
    store_lex "$qast", $P5024
    set $P5025, $P5024
  if549_end1943:
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
.sub "arg" :subid("cuid_151_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 672
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 673
    set $P5001, _lex_param_1["quote_EXPR"]
    unless_null $P5001, fallback1948
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1948:
    unless $P5001 goto if550_else1946 
    set $P5003, _lex_param_1["quote_EXPR"]
    unless_null $P5003, fallback1949
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback1949:
    $P5005 = $P5003."ast"()
    set $P5008, $P5005
    goto if550_end1947
  if550_else1946:
    set $P5006, _lex_param_1["val"]
    unless_null $P5006, fallback1950
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback1950:
    set $N5001, $P5006
    box $P5009, $N5001
    set $P5008, $P5009
  if550_end1947:
    $P5010 = _lex_param_1."!make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "arglist" :subid("cuid_152_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 676
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_203_1346277621.774' 
    capture_lex $P5017 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 677
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback1951
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback1951:
    $P5007 = $P5002."new"("list" :named("pasttype"))
    set $P101, $P5007
    set $P5011, _lex_param_1["arg"]
    unless_null $P5011, fallback1952
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5012
  fallback1952:
    set $P5008, $P5011
    iter $P5010, $P5011
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers1953
    push_eh $P5014
  for_next1954:
    unless $P5010, for_done1956
    shift $P5015, $P5010
  for_redo1955:
    .const 'Sub' $P5013 = 'cuid_203_1346277621.774' 
    capture_lex $P5013
    $P5008 = $P5013($P5015)
    goto for_next1954
  for_handlers1953:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5014, $P5014, 'type'
    eq $P5014, .CONTROL_LOOP_NEXT, for_next1954
    eq $P5014, .CONTROL_LOOP_REDO, for_redo1955
  for_done1956:
    pop_eh 
.annotate 'line', 679
    $P5016 = _lex_param_1."!make"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1346277621.774") :anon :lex :outer("cuid_152_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 678
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cclass_elem" :subid("cuid_153_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_204_1346277621.774' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_205_1346277621.774' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_209_1346277621.774' 
    capture_lex $P5017 
    .lex "$str", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    box $P5003, ""
    set $P101, $P5003
    set $P5004, _lex_param_1["name"]
    unless_null $P5004, fallback1959
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5005
  fallback1959:
    unless $P5004 goto if551_else1957 
    .const 'Sub' $P5006 = 'cuid_204_1346277621.774' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5015, $P5007
    goto if551_end1958
  if551_else1957:
    set $P5008, _lex_param_1["uniprop"]
    unless_null $P5008, fallback1966
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5009
  fallback1966:
    unless $P5008 goto if552_else1964 
    .const 'Sub' $P5010 = 'cuid_205_1346277621.774' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5014, $P5011
    goto if552_end1965
  if552_else1964:
    .const 'Sub' $P5012 = 'cuid_209_1346277621.774' 
    capture_lex $P5012
    $P5013 = $P5012()
    set $P5014, $P5013
  if552_end1965:
    set $P5015, $P5014
  if551_end1958:
.annotate 'line', 746
    $P5016 = _lex_param_1."!make"($P102)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1346277621.774") :anon :lex :outer("cuid_153_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 685
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    set $P5002, $P5003["name"]
    unless_null $P5002, fallback1960
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback1960:
    set $S5001, $P5002
    box $P5005, $S5001
    set $P101, $P5005
.annotate 'line', 687
    get_hll_global $P5009, "GLOBAL"
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Regex"]
    unless_null $P5006, fallback1961
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback1961:
    get_hll_global $P5014, "GLOBAL"
    nqp_get_package_through_who $P5013, $P5014, "PAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Node"]
    unless_null $P5011, fallback1962
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5015
  fallback1962:
    $P5016 = $P5011."new"($P101)
    find_lex $P5018, "$/"
    set $P5017, $P5018["sign"]
    unless_null $P5017, fallback1963
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5019
  fallback1963:
    set $S5002, $P5017
    iseq $I5001, $S5002, "-"
    find_lex $P5020, "$/"
    $P5021 = $P5006."new"($P5016, "subrule" :named("rxtype"), "method" :named("subtype"), $I5001 :named("negate"), $P5020 :named("node"))
    store_lex "$qast", $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1346277621.774") :anon :lex :outer("cuid_153_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 690
    .lex "$uniprop", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    set $P5002, $P5003["uniprop"]
    unless_null $P5002, fallback1967
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5004
  fallback1967:
    set $S5001, $P5002
    box $P5005, $S5001
    set $P101, $P5005
.annotate 'line', 692
    get_hll_global $P5009, "GLOBAL"
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Regex"]
    unless_null $P5006, fallback1968
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback1968:
    find_lex $P5012, "$/"
    set $P5011, $P5012["sign"]
    unless_null $P5011, fallback1973
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5013
  fallback1973:
    set $S5002, $P5011
    iseq $I5001, $S5002, "-"
    set $I5003, $I5001
    unless $I5001 goto if554_end1972 
    find_lex $P5015, "$/"
    set $P5014, $P5015["invert"]
    unless_null $P5014, fallback1974
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5016
  fallback1974:
    set $S5003, $P5014
    isne $I5002, $S5003, "!"
    set $I5003, $I5002
  if554_end1972:
    set $I5007, $I5003
    if $I5003 goto unless553_end1970 
    find_lex $P5018, "$/"
    set $P5017, $P5018["sign"]
    unless_null $P5017, fallback1977
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5019
  fallback1977:
    set $S5004, $P5017
    isne $I5004, $S5004, "-"
    set $I5006, $I5004
    unless $I5004 goto if555_end1976 
    find_lex $P5021, "$/"
    set $P5020, $P5021["invert"]
    unless_null $P5020, fallback1978
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5022
  fallback1978:
    set $S5005, $P5020
    iseq $I5005, $S5005, "!"
    set $I5006, $I5005
  if555_end1976:
    set $I5007, $I5006
  unless553_end1970:
    find_lex $P5023, "$/"
    $P5024 = $P5006."new"($P101, "uniprop" :named("rxtype"), $I5007 :named("negate"), $P5023 :named("node"))
    store_lex "$qast", $P5024
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1346277621.774") :anon :lex :outer("cuid_153_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 696
    .const 'Sub' $P5058 = 'cuid_207_1346277621.774' 
    capture_lex $P5058 
    .lex "@alts", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "$/"
    set $P5005, $P5006["charspec"]
    unless_null $P5005, fallback1979
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5007
  fallback1979:
    set $P5002, $P5005
    iter $P5004, $P5005
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers2039
    push_eh $P5009
  for_next2040:
    unless $P5004, for_done2042
    shift $P5010, $P5004
  for_redo2041:
    .const 'Sub' $P5008 = 'cuid_207_1346277621.774' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next2040
  for_handlers2039:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next2040
    eq $P5009, .CONTROL_LOOP_REDO, for_redo2041
  for_done2042:
    pop_eh 
    find_lex $P5011, "$str"
    set $S5001, $P5011
    length $I5001, $S5001
    box $P5025, $I5001
    set $P5024, $P5025
    unless $I5001 goto if571_end2044 
.annotate 'line', 736
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback2045
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback2045:
    find_lex $P5017, "$str"
    find_lex $P5018, "$/"
    find_lex $P5020, "$/"
    set $P5019, $P5020["sign"]
    unless_null $P5019, fallback2046
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5021
  fallback2046:
    set $S5002, $P5019
    iseq $I5002, $S5002, "-"
    $P5022 = $P5012."new"($P5017, "enumcharlist" :named("rxtype"), $P5018 :named("node"), $I5002 :named("negate"))
    $P5023 = $P101."push"($P5022)
    set $P5024, $P5023
  if571_end2044:
    set $N5001, $P101
    set $N5002, 1
    iseq $I5003, $N5001, $N5002
    unless $I5003 goto if572_else2047 
    set $P5026, $P101[0]
    unless_null $P5026, fallback2049
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5027
  fallback2049:
    set $P5057, $P5026
    goto if572_end2048
  if572_else2047:
    find_lex $P5029, "$/"
    set $P5028, $P5029["sign"]
    unless_null $P5028, fallback2052
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5030
  fallback2052:
    set $S5003, $P5028
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if573_else2050 
.annotate 'line', 740
    get_hll_global $P5034, "GLOBAL"
    nqp_get_package_through_who $P5033, $P5034, "QAST"
    get_who $P5032, $P5033
    set $P5031, $P5032["Regex"]
    unless_null $P5031, fallback2053
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5031, $P5035
  fallback2053:
    find_lex $P5036, "$/"
.annotate 'line', 741
    get_hll_global $P5040, "GLOBAL"
    nqp_get_package_through_who $P5039, $P5040, "QAST"
    get_who $P5038, $P5039
    set $P5037, $P5038["Regex"]
    unless_null $P5037, fallback2054
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5037, $P5041
  fallback2054:
    $P5042 = $P5037."new"($P101 :flat, "conj" :named("rxtype"), "zerowidth" :named("subtype"))
.annotate 'line', 742
    get_hll_global $P5046, "GLOBAL"
    nqp_get_package_through_who $P5045, $P5046, "QAST"
    get_who $P5044, $P5045
    set $P5043, $P5044["Regex"]
    unless_null $P5043, fallback2055
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5043, $P5047
  fallback2055:
    $P5048 = $P5043."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P5049 = $P5031."new"($P5042, $P5048, "concat" :named("rxtype"), $P5036 :named("node"))
    set $P5056, $P5049
    goto if573_end2051
  if573_else2050:
.annotate 'line', 743
    get_hll_global $P5053, "GLOBAL"
    nqp_get_package_through_who $P5052, $P5053, "QAST"
    get_who $P5051, $P5052
    set $P5050, $P5051["Regex"]
    unless_null $P5050, fallback2056
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5050, $P5054
  fallback2056:
    $P5055 = $P5050."new"($P101 :flat, "altseq" :named("rxtype"))
    set $P5056, $P5055
  if573_end2051:
    set $P5057, $P5056
  if572_end2048:
    store_lex "$qast", $P5057
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1346277621.774") :anon :lex :outer("cuid_209_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 698
    .param pmc _lex_param_0 
    .const 'Sub' $P5017 = 'cuid_206_1346277621.774' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_208_1346277621.774' 
    capture_lex $P5017 
    .lex "$_", _lex_param_0 
    set $P5001, _lex_param_0[1]
    unless_null $P5001, fallback1982
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5002
  fallback1982:
    unless $P5001 goto if556_else1980 
    .const 'Sub' $P5003 = 'cuid_206_1346277621.774' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5016, $P5004
    goto if556_end1981
  if556_else1980:
    set $P5006, _lex_param_0[0]
    unless_null $P5006, fallback2031
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5007
  fallback2031:
    set $P5005, $P5006["backslash"]
    unless_null $P5005, fallback2032
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5008
  fallback2032:
    unless $P5005 goto if569_else2029 
    .const 'Sub' $P5009 = 'cuid_208_1346277621.774' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5015, $P5010
    goto if569_end2030
  if569_else2029:
.annotate 'line', 734
    find_lex $P5011, "$str"
    set $S5002, $P5011
    set $P5012, _lex_param_0[0]
    unless_null $P5012, fallback2038
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5013
  fallback2038:
    set $S5003, $P5012
    concat $S5001, $S5002, $S5003
    box $P5014, $S5001
    store_lex "$str", $P5014
    set $P5015, $P5014
  if569_end2030:
    set $P5016, $P5015
  if556_end1981:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1346277621.774") :anon :lex :outer("cuid_207_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 699
    .lex "$node", $P101 
    .lex "$lhs", $P102 
    .lex "$rhs", $P103 
    .lex "$ord0", $P104 
    .lex "$ord1", $P105 
    .local pmc tmp_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    find_lex $P5008, "$_"
    set $P5007, $P5008[0]
    unless_null $P5007, fallback1985
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5009
  fallback1985:
    set $P5006, $P5007["backslash"]
    unless_null $P5006, fallback1986
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5010
  fallback1986:
    unless $P5006 goto if557_else1983 
.annotate 'line', 703
.annotate 'line', 704
    find_lex $P5013, "$_"
    set $P5012, $P5013[0]
    unless_null $P5012, fallback1987
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5014
  fallback1987:
    set $P5011, $P5012["backslash"]
    unless_null $P5011, fallback1988
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5015
  fallback1988:
    $P5016 = $P5011."ast"()
    set $P101, $P5016
.annotate 'line', 706
    $P5017 = $P101."rxtype"()
    set $S5001, $P5017
    isne $I5001, $S5001, "literal"
    set $I5003, $I5001
    unless $I5001 goto if561_end1996 
    $P5018 = $P101."rxtype"()
    set $S5002, $P5018
    isne $I5002, $S5002, "enumcharlist"
    set $I5003, $I5002
  if561_end1996:
    box $P5021, $I5003
    set $P5020, $P5021
    if $I5003 goto unless560_end1994 
.annotate 'line', 707
    $P5019 = $P101."negate"()
    set $P5020, $P5019
  unless560_end1994:
    set $P5024, $P5020
    if $P5020 goto unless559_end1992 
    set $P5022, $P101[0]
    unless_null $P5022, fallback1997
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5023
  fallback1997:
    set $S5003, $P5022
    length $I5005, $S5003
    set $N5001, $I5005
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    box $P5025, $I5004
    set $P5024, $P5025
  unless559_end1992:
    set $P5030, $P5024
    unless $P5024 goto if558_end1990 
.annotate 'line', 705
    find_lex $P5026, "$/"
    $P5027 = $P5026."CURSOR"()
    find_lex $P5028, "$_"
    set $S5005, $P5028
    concat $S5004, "Illegal range endpoint in regex: ", $S5005
    $P5029 = $P5027."panic"($S5004)
    set $P5030, $P5029
  if558_end1990:
    set $P5031, $P101[0]
    unless_null $P5031, fallback1998
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5031, $P5032
  fallback1998:
    set $P102, $P5031
    set $P5039, $P102
    goto if557_end1984
  if557_else1983:
.annotate 'line', 710
    find_lex $P5035, "$_"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback1999
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5036
  fallback1999:
    set $P5033, $P5034[0]
    unless_null $P5033, fallback2000
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5033, $P5037
  fallback2000:
    set $S5006, $P5033
    box $P5038, $S5006
    set $P102, $P5038
    set $P5039, $P102
  if557_end1984:
    find_lex $P5043, "$_"
    set $P5042, $P5043[1]
    unless_null $P5042, fallback2003
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5044
  fallback2003:
    set $P5041, $P5042[0]
    unless_null $P5041, fallback2004
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5041, $P5045
  fallback2004:
    set $P5040, $P5041["backslash"]
    unless_null $P5040, fallback2005
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5040, $P5046
  fallback2005:
    unless $P5040 goto if562_else2001 
.annotate 'line', 713
.annotate 'line', 714
    find_lex $P5050, "$_"
    set $P5049, $P5050[1]
    unless_null $P5049, fallback2006
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5049, $P5051
  fallback2006:
    set $P5048, $P5049[0]
    unless_null $P5048, fallback2007
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5048, $P5052
  fallback2007:
    set $P5047, $P5048["backslash"]
    unless_null $P5047, fallback2008
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5047, $P5053
  fallback2008:
    $P5054 = $P5047."ast"()
    set $P101, $P5054
.annotate 'line', 716
    $P5055 = $P101."rxtype"()
    set $S5007, $P5055
    isne $I5006, $S5007, "literal"
    set $I5008, $I5006
    unless $I5006 goto if566_end2016 
    $P5056 = $P101."rxtype"()
    set $S5008, $P5056
    isne $I5007, $S5008, "enumcharlist"
    set $I5008, $I5007
  if566_end2016:
    box $P5059, $I5008
    set $P5058, $P5059
    if $I5008 goto unless565_end2014 
.annotate 'line', 717
    $P5057 = $P101."negate"()
    set $P5058, $P5057
  unless565_end2014:
    set $P5062, $P5058
    if $P5058 goto unless564_end2012 
    set $P5060, $P101[0]
    unless_null $P5060, fallback2017
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5060, $P5061
  fallback2017:
    set $S5009, $P5060
    length $I5010, $S5009
    set $N5003, $I5010
    set $N5004, 1
    isne $I5009, $N5003, $N5004
    box $P5063, $I5009
    set $P5062, $P5063
  unless564_end2012:
    set $P5068, $P5062
    unless $P5062 goto if563_end2010 
.annotate 'line', 715
    find_lex $P5064, "$/"
    $P5065 = $P5064."CURSOR"()
    find_lex $P5066, "$_"
    set $S5011, $P5066
    concat $S5010, "Illegal range endpoint in regex: ", $S5011
    $P5067 = $P5065."panic"($S5010)
    set $P5068, $P5067
  if563_end2010:
    set $P5069, $P101[0]
    unless_null $P5069, fallback2018
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5069, $P5070
  fallback2018:
    set $P103, $P5069
    set $P5079, $P103
    goto if562_end2002
  if562_else2001:
.annotate 'line', 720
    find_lex $P5074, "$_"
    set $P5073, $P5074[1]
    unless_null $P5073, fallback2019
    nqp_get_sc_object $P5075, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5073, $P5075
  fallback2019:
    set $P5072, $P5073[0]
    unless_null $P5072, fallback2020
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5072, $P5076
  fallback2020:
    set $P5071, $P5072[0]
    unless_null $P5071, fallback2021
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5071, $P5077
  fallback2021:
    set $S5012, $P5071
    box $P5078, $S5012
    set $P103, $P5078
    set $P5079, $P103
  if562_end2002:
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
    unless $I5013 goto if567_end2023 
.annotate 'line', 725
    find_lex $P5082, "$/"
    $P5083 = $P5082."CURSOR"()
    find_lex $P5084, "$_"
    set $S5016, $P5084
    concat $S5015, "Illegal reversed character range in regex: ", $S5016
    $P5085 = $P5083."panic"($S5015)
    set $P5086, $P5085
  if567_end2023:
    new $P5091, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5091, while568_handlers2027
    push_eh $P5091
  while568_test2024:
    set $N5007, $P104
    set $N5008, $P105
    isle $I5014, $N5007, $N5008
    box $P5092, $I5014
    set $P5090, $P5092
    unless $I5014 goto while568_done2028 
  while568_redo2026:
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
    goto while568_test2024 
  while568_handlers2027:
    .get_results ($P5091)
    pop_upto_eh $P5091
    getattribute $P5091, $P5091, 'type'
    eq $P5091, .CONTROL_LOOP_NEXT, while568_test2024
    eq $P5091, .CONTROL_LOOP_REDO, while568_redo2026
  while568_done2028:
    pop_eh 
    .return ($P5090) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1346277621.774") :anon :lex :outer("cuid_207_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 729
    .lex "$bs", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 730
    find_lex $P5004, "$_"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback2033
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5005
  fallback2033:
    set $P5002, $P5003["backslash"]
    unless_null $P5002, fallback2034
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback2034:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    find_lex $P5009, "$/"
    set $P5008, $P5009["sign"]
    unless_null $P5008, fallback2037
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5010
  fallback2037:
    set $S5001, $P5008
    iseq $I5001, $S5001, "-"
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto if570_end2036 
.annotate 'line', 731
    $P5011 = $P101."negate"()
    isfalse $I5002, $P5011
    $P5012 = $P101."negate"($I5002)
    set $P5013, $P5012
  if570_end2036:
.annotate 'line', 732
    find_lex $P5015, "@alts"
    $P5016 = $P5015."push"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "mod_internal" :subid("cuid_154_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $P5003, _lex_param_1["n"]
    unless_null $P5003, fallback2059
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5004
  fallback2059:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback2060
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback2060:
    set $S5001, $P5002
    isgt $I5001, $S5001, ""
    unless $I5001 goto if574_else2057 
    set $P5007, _lex_param_1["n"]
    unless_null $P5007, fallback2061
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback2061:
    set $P5006, $P5007[0]
    unless_null $P5006, fallback2062
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5009
  fallback2062:
    set $N5001, $P5006
    box $P5011, $N5001
    set $P5010, $P5011
    goto if574_end2058
  if574_else2057:
    box $P5012, 1
    set $P5010, $P5012
  if574_end2058:
    set $P101, $P5010
    find_dynamic_lex $P5013, "%*RX"
    unless_null $P5013, fallback2063
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["%RX"]
    unless_null $P5014, fallback2064
    get_hll_global $P5018, "GLOBAL"
    get_who $P5017, $P5018
    new $P5019, 'Hash'
    set $P5017["%RX"], $P5019
    set $P5014, $P5019
  fallback2064:
    unless_null $P5014, vivi_5752065
    die "Contextual %*RX not found"
    box $P5020, "Contextual %*RX not found"
    set $P5014, $P5020
  vivi_5752065:
    set $P5013, $P5014
  fallback2063:
    set $P5022, _lex_param_1["mod_ident"]
    unless_null $P5022, fallback2066
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5023
  fallback2066:
    set $P5021, $P5022["sym"]
    unless_null $P5021, fallback2067
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5024
  fallback2067:
    set $S5002, $P5021
    set $P5013[$S5002], $P101
.annotate 'line', 752
    $P5025 = _lex_param_1."!make"(0)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "subrule_alias" :subid("cuid_155_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 938
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    .lex "$name", _lex_param_2 
.annotate 'line', 939
    $P5001 = _lex_param_1."name"()
    set $S5001, $P5001
    isgt $I5001, $S5001, ""
    unless $I5001 goto if576_else2068 
    set $S5004, _lex_param_2
    concat $S5003, $S5004, "="
    $P5002 = _lex_param_1."name"()
    set $S5005, $P5002
    concat $S5002, $S5003, $S5005
    $P5003 = _lex_param_1."name"($S5002)
    set $P5005, $P5003
    goto if576_end2069
  if576_else2068:
.annotate 'line', 940
    $P5004 = _lex_param_1."name"(_lex_param_2)
    set $P5005, $P5004
  if576_end2069:
.annotate 'line', 941
    $P5006 = _lex_param_1."subtype"("capture")
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "flip_ast" :subid("cuid_156_1346277621.774") :anon :lex :outer("cuid_157_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 944
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_210_1346277621.774' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_211_1346277621.774' 
    capture_lex $P5026 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_2070
    .lex "RETURN", $P101
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback2074
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback2074:
    type_check $I5001, _lex_param_1, $P5001
    box $P5009, $I5001
    set $P5008, $P5009
    if $I5001 goto unless577_end2073 
    find_lex $P5006, "RETURN"
    $P5007 = $P5006(_lex_param_1)
    set $P5008, $P5007
  unless577_end2073:
.annotate 'line', 946
    $P5010 = _lex_param_1."rxtype"()
    set $S5001, $P5010
    iseq $I5002, $S5001, "literal"
    unless $I5002 goto if578_else2075 
.annotate 'line', 947
    set $P5011, _lex_param_1[0]
    unless_null $P5011, fallback2077
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5012
  fallback2077:
    $P5013 = $P5011."reverse"()
    set _lex_param_1[0], $P5013
    set $P5025, $P5013
    goto if578_end2076
  if578_else2075:
.annotate 'line', 949
    $P5014 = _lex_param_1."rxtype"()
    set $S5002, $P5014
    iseq $I5003, $S5002, "concat"
    unless $I5003 goto if579_else2078 
    .const 'Sub' $P5015 = 'cuid_210_1346277621.774' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5024, $P5016
    goto if579_end2079
  if579_else2078:
.annotate 'line', 954
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, for_handlers2090
    push_eh $P5022
  for_next2091:
    unless $P5019, for_done2093
    shift $P5023, $P5019
  for_redo2092:
    .const 'Sub' $P5021 = 'cuid_211_1346277621.774' 
    capture_lex $P5021
    $P5017 = $P5021($P5023)
    goto for_next2091
  for_handlers2090:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5022, $P5022, 'type'
    eq $P5022, .CONTROL_LOOP_NEXT, for_next2091
    eq $P5022, .CONTROL_LOOP_REDO, for_redo2092
  for_done2093:
    pop_eh 
    set $P5024, $P5017
  if579_end2079:
    set $P5025, $P5024
  if578_end2076:
    goto lexotic_2071
  lexotic_2070:
    .get_results (_lex_param_1)
  lexotic_2071:
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1346277621.774") :anon :lex :outer("cuid_156_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 949
    .lex "@tmp", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, while580_handlers2083
    push_eh $P5009
  while580_test2080:
    find_lex $P5002, "$qast"
    $P5003 = $P5002."list"()
    set $N5001, $P5003
    box $P5010, $N5001
    set $P5008, $P5010
    unless $N5001 goto while580_done2084 
  while580_redo2082:
.annotate 'line', 951
    find_lex $P5004, "$qast"
    $P5005 = $P5004."list"()
    $P5006 = $P5005."shift"()
    $P5007 = $P101."push"($P5006)
    set $P5008, $P5007
    goto while580_test2080 
  while580_handlers2083:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while580_test2080
    eq $P5009, .CONTROL_LOOP_REDO, while580_redo2082
  while580_done2084:
    pop_eh 
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, while581_handlers2088
    push_eh $P5019
  while581_test2085:
    set $P5018, $P101
    unless $P101 goto while581_done2089 
  while581_redo2087:
.annotate 'line', 952
    find_lex $P5011, "$qast"
    $P5012 = $P5011."list"()
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P101."pop"()
    $P5016 = $P5013."flip_ast"($P5015)
    $P5017 = $P5012."push"($P5016)
    set $P5018, $P5017
    goto while581_test2085 
  while581_handlers2088:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5019, $P5019, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while581_test2085
    eq $P5019, .CONTROL_LOOP_REDO, while581_redo2087
  while581_done2089:
    pop_eh 
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1346277621.774") :anon :lex :outer("cuid_156_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 955
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."flip_ast"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1346277621.774") :anon :lex :outer("cuid_1_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 962
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_213_1346277621.774") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .const 'Sub' $P5001 = 'cuid_212_1346277621.774' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1346277621.774" 
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
    nqp_create_sc $P5001, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\gen\\NQPP6QRegex.pm")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "QAST"
    push $P5003, "QRegex"
    push $P5003, "NQPCursorRole"
    push $P5003, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638"
    push $P5003, "src\\stage2\\QRegex.nqp"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "HLL"
    push $P5003, "PIRT"
    push $P5003, "PAST"
    push $P5003, "__PAST_CORE_SC__"
    push $P5003, "CREATE"
    push $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649"
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
    push $P5003, "2BB67A389134BBAD0A6C35350CCD1D56BE456969-1346277591.613"
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
    push $P5003, "metachar:sym<PIR>"
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
    push $P5003, "get_exports"
    push $P5003, "get_module"
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
    push $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503"
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
    push $P5003, "AA49D86054CDC686E34A37C6F89EC4059A76B342-1346277582.704"
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
    push $P5003, "41C17C7E374A7792284F461955403B04C8234C59-1346277601.013"
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
    .const 'Sub' $P5004 = 'cuid_212_1346277621.774' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAIAAAAgAAAAAkAAADIAAAARB8AAJkAAADUKAAADEIAAAAAAAAMQgAAAAAAAAxCAAAMQgAAAAAAAAUAAAAGAAAADgAAAAAAAAAQAAAAEQAAAEsAAABMAAAAGQEAAAAAAAAbAQAAHAEAACgBAAApAQAAPwEAAEABAAABAAAAAAAAAAEAAAAmAQAAAQAAAOYNAAABAAAAPBQAAAEAAAB0GQAAAQAAAFAbAAABAAAABhwAAAEAAADmHAAAAQAAAMYdAAAAAAAAiwAAAAAAAAAAAAAACgAKAAAAAgAAAAIAAAAAAIwAAAADAAAAAgAAAAAAjQAAAAQAAAACAAEAAAAaAAAABwAAAAIAAQAAAEQAAAAIAAAAAgABAAAAUQAAAAkAAAACAAEAAABXAAAACgAAAAIAAQAAAFsAAAALAAAAAgAAAAAAjgAAAAwAAAACAAAAAACPAAAADQAAAAIAAgAAAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAAkAAAAAAAAAABAAAACgAAAAAACgDBAAAADwAAAAIAAwAAAAgAAAASAAAAAgADAAAACQAAABMAAAACAAMAAAAKAAAAFAAAAAIAAwAAAAsAAAAVAAAAAgADAAAADAAAABYAAAACAAMAAAAPAAAAFwAAAAIAAwAAABEAAAAYAAAAAgADAAAAEwAAABkAAAACAAMAAAAVAAAAGgAAAAIAAwAAABcAAAAbAAAAAgADAAAAGAAAABwAAAACAAMAAAAaAAAAHQAAAAIAAwAAABsAAAAeAAAAAgABAAAAUgAAAB8AAAACAAEAAABTAAAAIAAAAAIAAQAAAFQAAAAhAAAAAgABAAAAVQAAACIAAAACAAEAAABWAAAAIwAAAAIAAQAAAGYAAAAkAAAAAgABAAAAZwAAACUAAAACAAEAAABoAAAAJgAAAAIAAQAAAGkAAAAnAAAAAgABAAAAagAAACgAAAACAAEAAABrAAAAKQAAAAIAAQAAAGwAAAAqAAAAAgABAAAAbQAAACsAAAACAAEAAABuAAAALAAAAAIAAQAAAG8AAAAtAAAAAgABAAAAcAAAAC4AAAACAAEAAABxAAAALwAAAAIAAQAAAHIAAAAwAAAAAgABAAAAcwAAADEAAAACAAEAAAB0AAAAMgAAAAIAAQAAAHUAAAAzAAAAAgABAAAAdgAAADQAAAACAAEAAAB3AAAANQAAAAIAAQAAAHgAAAA2AAAAAgABAAAAeQAAADcAAAACAAEAAAB6AAAAOAAAAAIAAQAAAHsAAAA5AAAAAgABAAAAfAAAADoAAAACAAEAAAB9AAAAOwAAAAIAAQAAAH4AAAA8AAAAAgAAAAAAAwAAAD0AAAACAAEAAACAAAAAPgAAAAIAAQAAAIEAAAA/AAAAAgABAAAAggAAAEAAAAACAAEAAACDAAAAQQAAAAIAAQAAAIQAAABCAAAAAgABAAAAhQAAAEMAAAACAAEAAACGAAAARAAAAAIAAQAAAIcAAABFAAAAAgABAAAAiAAAAEYAAAACAAEAAACJAAAARwAAAAIAAQAAAIoAAABIAAAAAgABAAAAiwAAAEkAAAACAAEAAACMAAAASgAAAAIABAAAADAAAABNAAAAAgAAAAAADgAAAE4AAAACAAQAAAADAAAATwAAAAIABAAAAAQAAABQAAAAAgAEAAAABQAAAFEAAAACAAQAAAAGAAAAUgAAAAIABAAAAAcAAABTAAAAAgAEAAAACAAAAFQAAAACAAQAAAAJAAAAVQAAAAIABAAAAAoAAABWAAAAAgAEAAAACwAAAFcAAAACAAQAAAAMAAAAWAAAAAIABAAAAA0AAABZAAAAAgAEAAAADgAAAFoAAAACAAQAAAAPAAAAWwAAAAIABAAAABAAAABcAAAAAgAEAAAAEQAAAF0AAAACAAQAAAASAAAAXgAAAAIABAAAABMAAABfAAAAAgAEAAAAFAAAAGAAAAACAAQAAAAVAAAAYQAAAAIABAAAABYAAABiAAAAAgAEAAAAFwAAAGMAAAACAAQAAAAYAAAAZAAAAAIABAAAABkAAABlAAAAAgAEAAAAGgAAAGYAAAACAAQAAAAbAAAAZwAAAAIABAAAABwAAABoAAAAAgAEAAAAHQAAAGkAAAACAAQAAAAeAAAAagAAAAIABAAAAB8AAABrAAAAAgAEAAAAIAAAAGwAAAACAAQAAAAhAAAAbQAAAAIABAAAACIAAABuAAAAAgAEAAAAIwAAAG8AAAACAAQAAAAkAAAAcAAAAAIABAAAACUAAABxAAAAAgAEAAAAJgAAAHIAAAACAAQAAAAnAAAAcwAAAAIABAAAACgAAAB0AAAAAgAEAAAAKQAAAHUAAAACAAQAAAAqAAAAdgAAAAIABAAAACsAAAB3AAAAAgAEAAAALAAAAHgAAAACAAQAAAAtAAAAeQAAAAIABAAAAC4AAAB6AAAAAgAEAAAALwAAAHsAAAACAAQAAAAxAAAAfAAAAAIABAAAADIAAAB9AAAAAgAEAAAAMwAAAH4AAAACAAQAAAA0AAAAfwAAAAIABAAAADUAAACAAAAAAgAEAAAANgAAAIEAAAACAAQAAAA3AAAAggAAAAIABAAAADgAAACDAAAAAgAEAAAAOQAAAIQAAAACAAQAAAA6AAAAhQAAAAIABAAAADsAAACGAAAAAgAEAAAAPAAAAIcAAAACAAAAAAACAAAAiAAAAAIAAAAAAAQAAACJAAAAAgAAAAAABQAAAIoAAAACAAAAAAAGAAAAiwAAAAIAAAAAAAcAAACMAAAAAgAAAAAACAAAAI0AAAACAAAAAAAJAAAAjgAAAAIAAAAAAAoAAACPAAAAAgAAAAAACwAAAJAAAAACAAAAAAAMAAAAkQAAAAIAAAAAAA0AAACSAAAAAgAAAAAADwAAAJMAAAACAAAAAAAQAAAAlAAAAAIAAAAAABEAAACVAAAAAgAAAAAAEgAAAJYAAAACAAAAAAATAAAAlwAAAAIAAAAAABQAAACYAAAAAgAAAAAAFQAAAJkAAAACAAAAAAAWAAAAmgAAAAIAAAAAABcAAACbAAAAAgAAAAAAGAAAAJwAAAACAAAAAAAZAAAAnQAAAAIAAAAAABoAAACeAAAAAgAAAAAAGwAAAJ8AAAACAAAAAAAcAAAAoAAAAAIAAAAAAB0AAAChAAAAAgAAAAAAHgAAAKIAAAACAAAAAAAfAAAAowAAAAIAAAAAACAAAACkAAAAAgAAAAAAIQAAAKUAAAACAAAAAAAiAAAApgAAAAIAAAAAACMAAACnAAAAAgAAAAAAJAAAAKgAAAACAAAAAAAlAAAAqQAAAAIAAAAAACYAAACqAAAAAgAAAAAAJwAAAKsAAAACAAAAAAAoAAAArAAAAAIAAAAAACkAAACtAAAAAgAAAAAAKgAAAK4AAAACAAAAAAArAAAArwAAAAIAAAAAACwAAACwAAAAAgAAAAAALQAAALEAAAACAAAAAAAuAAAAsgAAAAIAAAAAAC8AAACzAAAAAgAAAAAAMAAAALQAAAACAAAAAAAxAAAAtQAAAAIAAAAAADIAAAC2AAAAAgAAAAAAMwAAALcAAAACAAAAAAA0AAAAuAAAAAIAAAAAADUAAAC5AAAAAgAAAAAANgAAALoAAAACAAAAAAA3AAAAuwAAAAIAAAAAADgAAAC8AAAAAgAAAAAAOQAAAL0AAAACAAAAAAA6AAAAvgAAAAIAAAAAADsAAAC/AAAAAgAAAAAAPAAAAMAAAAACAAAAAAA9AAAAwQAAAAIAAAAAAD4AAADCAAAAAgAAAAAAPwAAAMMAAAACAAAAAABAAAAAxAAAAAIAAAAAAEEAAADFAAAAAgAAAAAAQgAAAMYAAAACAAAAAABDAAAAxwAAAAIAAAAAAEQAAADIAAAAAgAAAAAARQAAAMkAAAACAAAAAABGAAAAygAAAAIAAAAAAEcAAADLAAAAAgAAAAAASAAAAMwAAAACAAAAAABJAAAAzQAAAAIAAAAAAEoAAADOAAAAAgAAAAAASwAAAM8AAAACAAAAAABMAAAA0AAAAAIAAAAAAE0AAADRAAAAAgAAAAAATgAAANIAAAACAAAAAABPAAAA0wAAAAIAAAAAAFAAAAAAAAAAAAAAAAQAAAAAAAAAAgAAAAAAAQAAAAIABAAAAAEAAAACAAEAAABRAAAAAgADAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAQAAAFMAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAMAAAAEAAAAAQAAAAAAAAADAAAAAgAAAAEAAAAAAAAAAwAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgADAAAABwAAAAEAAQABAAIAAwAAAAcAAAACAAMAAAAHAAAAAgADAAAABwAAAAIAAwAAAAcAAAACAAMAAAAHAAAAAgADAAAABwAAAP///////////////////////////////wAAAAAAAAAABAAAAAAAAAACAAMAAAAHAAAAAwACAAEAAABRAAAACgAKAAAA1AAAAAQAAAAAAAAAAADVAAAABAABAAAAAAAAANYAAAAEAAIAAAAAAAAA1wAAAAQAAwAAAAAAAADYAAAABAAEAAAAAAAAANkAAAAEAAUAAAAAAAAA2gAAAAQABgAAAAAAAADbAAAABAAHAAAAAAAAANwAAAAEAAgAAAAAAAAA3QAAAAQACQAAAAAAAAACAAQAAAABAAAAAwACAAAAAAABAAAAAwAAAAAAkQAAAAAAAABRAAAACgAAAAAACgBlAAAADwAAAAIAAwAAAAgAAAASAAAAAgADAAAACQAAABMAAAACAAMAAAAKAAAAFAAAAAIAAwAAAAsAAAAVAAAAAgADAAAADAAAABYAAAACAAMAAAAPAAAAFwAAAAIAAwAAABEAAAAYAAAAAgADAAAAEwAAABkAAAACAAMAAAAVAAAAGgAAAAIAAwAAABcAAAAbAAAAAgADAAAAGAAAABwAAAACAAMAAAAaAAAAHQAAAAIAAwAAABsAAADeAAAAAgAEAAAAPgAAAN8AAAACAAQAAAA/AAAA4AAAAAIABAAAAEAAAACBAAAAAgAEAAAAQQAAAFQAAAACAAQAAABCAAAATQAAAAIAAAAAAFgAAABYAAAAAgAEAAAARAAAAFkAAAACAAQAAABFAAAAZQAAAAIABAAAAEYAAABmAAAAAgAEAAAARwAAAF0AAAACAAQAAABIAAAAXwAAAAIABAAAAEkAAABhAAAAAgAEAAAASgAAAGMAAAACAAQAAABLAAAAfAAAAAIABAAAAEwAAABbAAAAAgAEAAAATQAAAFwAAAACAAQAAABOAAAAaQAAAAIABAAAAE8AAABqAAAAAgAEAAAAUAAAAGsAAAACAAQAAABRAAAAbAAAAAIABAAAAFIAAABtAAAAAgAEAAAAUwAAAG4AAAACAAQAAABUAAAAbwAAAAIABAAAAFUAAABwAAAAAgAEAAAAVgAAAHEAAAACAAQAAABXAAAAcgAAAAIABAAAAFgAAABzAAAAAgAEAAAAWQAAAHQAAAACAAQAAABaAAAAdQAAAAIABAAAAFsAAAB2AAAAAgAEAAAAXAAAAHcAAAACAAQAAABdAAAAeAAAAAIABAAAAF4AAACMAAAAAgAAAAAAUgAAAI0AAAACAAAAAABTAAAAjgAAAAIAAAAAAFQAAACPAAAAAgAAAAAAVQAAAJAAAAACAAAAAABWAAAAkQAAAAIAAAAAAFcAAACSAAAAAgAAAAAAWQAAAJMAAAACAAAAAABaAAAAlAAAAAIAAAAAAFsAAACWAAAAAgAAAAAAXAAAAJcAAAACAAAAAABdAAAAmAAAAAIAAAAAAF4AAACaAAAAAgAAAAAAXwAAAJ0AAAACAAAAAABgAAAAngAAAAIAAAAAAGEAAACfAAAAAgAAAAAAYgAAAKAAAAACAAAAAABjAAAAoQAAAAIAAAAAAGQAAACiAAAAAgAAAAAAZQAAAKMAAAACAAAAAABmAAAApAAAAAIAAAAAAGcAAAClAAAAAgAAAAAAaAAAAKYAAAACAAAAAABpAAAAqQAAAAIAAAAAAGoAAACqAAAAAgAAAAAAawAAAKsAAAACAAAAAABsAAAArAAAAAIAAAAAAG0AAACtAAAAAgAAAAAAbgAAALIAAAACAAAAAABvAAAAswAAAAIAAAAAAHAAAACwAAAAAgAAAAAAcQAAALYAAAACAAAAAAByAAAAtwAAAAIAAAAAAHMAAAC4AAAAAgAAAAAAdAAAALkAAAACAAAAAAB1AAAAugAAAAIAAAAAAHYAAAC7AAAAAgAAAAAAdwAAALwAAAACAAAAAAB4AAAAvQAAAAIAAAAAAHkAAAC+AAAAAgAAAAAAegAAAL8AAAACAAAAAAB7AAAAwAAAAAIAAAAAAHwAAADGAAAAAgAAAAAAfQAAAMgAAAACAAAAAAB+AAAAyQAAAAIAAAAAAH8AAADKAAAAAgAAAAAAgAAAAMsAAAACAAAAAACBAAAAzAAAAAIAAAAAAIIAAADNAAAAAgAAAAAAgwAAAIoAAAACAAAAAACEAAAAiwAAAAIAAAAAAIUAAADOAAAAAgAAAAAAhgAAAM8AAAACAAAAAACHAAAA4QAAAAIAAAAAAIgAAADiAAAAAgAAAAAAiQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABRAAAAAgAEAAAAPQAAAAIAAwAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAwAAAAcAAAADAAIABAAAAD0AAAADAAIAAAAAAFEAAAADAAAAAACSAAAAAAAAAIoAAAAKAAAAAAAKADoAAAAPAAAAAgADAAAACAAAABIAAAACAAMAAAAJAAAAEwAAAAIAAwAAAAoAAAAUAAAAAgAEAAAAYAAAABUAAAACAAMAAAAMAAAAFgAAAAIAAwAAAA8AAAAXAAAAAgADAAAAEQAAABgAAAACAAMAAAATAAAAGQAAAAIAAwAAABUAAAAaAAAAAgADAAAAFwAAABsAAAACAAMAAAAYAAAAHAAAAAIAAwAAABoAAAAdAAAAAgADAAAAGwAAAOMAAAACAAQAAABhAAAA5AAAAAIABAAAAGIAAADlAAAAAgAEAAAAYwAAAOYAAAACAAQAAABkAAAA5wAAAAIABAAAAGUAAADoAAAAAgAEAAAAZgAAAOkAAAACAAQAAABnAAAA6gAAAAIABAAAAGgAAADrAAAAAgAEAAAAaQAAAOwAAAACAAQAAABqAAAA7QAAAAIABAAAAGsAAAB6AAAAAgAEAAAAbAAAAO4AAAACAAQAAABtAAAA7wAAAAIABAAAAG4AAADwAAAAAgAEAAAAbwAAAPEAAAACAAQAAABwAAAA8gAAAAIABAAAAHEAAADzAAAAAgAEAAAAcgAAAPQAAAACAAQAAABzAAAA9QAAAAIABAAAAHQAAAD2AAAAAgAEAAAAdQAAAPcAAAACAAQAAAB2AAAA+AAAAAIABAAAAHcAAAD5AAAAAgAEAAAAeAAAAPoAAAACAAQAAAB5AAAAIAAAAAIABAAAAHoAAAD7AAAAAgAEAAAAewAAAPwAAAACAAQAAAB8AAAA/QAAAAIABAAAAH0AAAD+AAAAAgAEAAAAfgAAAP8AAAACAAQAAAB/AAAAAAEAAAIABAAAAIAAAAABAQAAAgAEAAAAgQAAAAIBAAACAAQAAACCAAAAAwEAAAIABAAAAIMAAAAEAQAAAgAEAAAAhAAAAAUBAAACAAQAAACFAAAABgEAAAIABAAAAIYAAAAHAQAAAgAEAAAAhwAAAAgBAAACAAQAAACIAAAACQEAAAIABAAAAIkAAAAKAQAAAgAEAAAAigAAAAsBAAACAAQAAACLAAAADAEAAAIABAAAAIwAAAANAQAAAgAEAAAAjQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAACKAAAAAgAEAAAAXwAAAAIAAwAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgADAAAABwAAAAIAAwAAAAcAAAABAAIAAwAAAAcAAAACAAMAAAAHAAAAAgADAAAABwAAAAEAAgADAAAABwAAAAEAAQD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgADAAAABwAAAAMAAgAEAAAAXwAAAAoACwAAAA4BAAAEAAAAAAAAAAAADwEAAAQAAQAAAAAAAAAQAQAABAACAAAAAAAAABEBAAAEAAMAAAAAAAAAEgEAAAQABAAAAAAAAAATAQAABAAFAAAAAAAAABQBAAAEAAYAAAAAAAAAFQEAAAQABwAAAAAAAAAWAQAABAAIAAAAAAAAABcBAAAEAAkAAAAAAAAAGAEAAAQACgAAAAAAAAACAAAAAACKAAAAAwAAAAAAkwAAAAAAAACMAAAACgAXAAAAJwEAAAIABwAAAAEAAAAqAQAAAgAHAAAABgAAACsBAAACAAcAAAAKAAAALAEAAAIABwAAACUAAAAtAQAAAgAHAAAALQAAAC4BAAACAAcAAAAxAAAALwEAAAIABwAAADUAAAAwAQAAAgAHAAAAOQAAADEBAAACAAcAAAA7AAAAMgEAAAIABwAAAD8AAAAzAQAAAgAHAAAARAAAADQBAAACAAcAAABMAAAANQEAAAIABwAAAE4AAAA2AQAAAgAHAAAAVAAAADcBAAACAAcAAABYAAAAOAEAAAIABwAAAFwAAAA5AQAAAgAHAAAAYAAAADoBAAACAAcAAABnAAAAOwEAAAIABwAAAGoAAAA8AQAAAgAHAAAAbQAAAD0BAAACAAcAAAB2AAAAPgEAAAIACAAAACcAAABBAQAAAgAIAAAAOAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACMAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAIwAAAADAAAAAACUAAAAAAAAAI0AAAAKAAIAAABCAQAAAgABAAAAAQAAAEMBAAACAAAAAACVAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAI0AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAjQAAAAMAAAAAAJYAAAAAAAAAjgAAAAoABQAAAEQBAAACAAQAAAABAAAARQEAAAIABAAAAD0AAABBAQAAAgAEAAAAXwAAAEYBAAACAAQAAADaAAAARwEAAAIABAAAAJ8AAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAjgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACOAAAAAwAAAAAAlwAAAAAAAACPAAAACgAFAAAASAEAAAIACAAAAAEAAAArAQAAAgAIAAAABAAAAEkBAAACAAgAAAAMAAAASgEAAAIACAAAABsAAABLAQAAAgAIAAAAIgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACPAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAI8AAAADAAAAAACYAAAAAAAAAJUAAAAKAAMAAABEAQAAAgAAAAAAAQAAAEUBAAACAAAAAABRAAAAQQEAAAIAAAAAAIoAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAlQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAADAAAABQAAAAAAAAABAAAAAwAAAAUAAAAQAAAAAQAAAAMAAAAFAAAAIAAAAAEAAAADAAAABQAAADAAAAABAAAAAwAAAAUAAABAAAAAAQAAAAMAAAAFAAAAUAAAAAEAAAADAAAABQAAAGAAAAABAAAAAwAAAAUAAABwAAAAAQAAAAMAAAAFAAAAgAAAAAEAAAADAAAABQAAAJAAAAABAAAAAwAAAAUAAACgAAAAAQAAAAMAAAAFAAAAsAAAAAEAAAADAAAABQAAAMAAAAABAAAAAwAAAAUAAADQAAAAAQAAAAMAAAAFAAAA4AAAAAEAAAADAAAABQAAAPAAAAABAAAAAwAAAAUAAAAAAQAAAQAAAAMAAAAFAAAAEAEAAAEAAAADAAAABQAAACABAAABAAAAAwAAAAUAAAAwAQAAAQAAAAMAAAAFAAAAQAEAAAEAAAADAAAABQAAAFABAAABAAAAAwAAAAUAAABgAQAAAQAAAAMAAAAFAAAAcAEAAAEAAAADAAAABQAAAIABAAABAAAAAwAAAAUAAACQAQAAAQAAAAMAAAAFAAAAoAEAAAEAAAADAAAABQAAALABAAABAAAAAwAAAAUAAADAAQAAAQAAAAMAAAAFAAAA0AEAAAEAAAADAAAABQAAAOABAAABAAAAAwAAAAUAAADwAQAAAQAAAAMAAAAFAAAAAAIAAAEAAAADAAAABQAAABACAAABAAAAAwAAAAUAAAAgAgAAAQAAAAMAAAAFAAAAMAIAAAEAAAADAAAABQAAAEACAAABAAAAAwAAAAUAAABQAgAAAQAAAAMAAAAFAAAAYAIAAAEAAAADAAAABQAAAHACAAABAAAAAwAAAAUAAACAAgAAAQAAAAMAAAAFAAAAkAIAAAEAAAADAAAABQAAAKACAAABAAAAAwAAAAUAAACwAgAAAQAAAAMAAAAFAAAAwAIAAAEAAAADAAAABQAAANACAAABAAAAAwAAAAUAAADgAgAAAQAAAAMAAAAFAAAA8AIAAAEAAAADAAAABQAAAAADAAABAAAAAwAAAAUAAAAQAwAAAQAAAAMAAAAFAAAAIAMAAAEAAAADAAAABQAAADADAAABAAAAAwAAAAUAAABAAwAAAQAAAAMAAAAFAAAAUAMAAAEAAAADAAAABQAAAGADAAABAAAAAwAAAAUAAABwAwAAAQAAAAMAAAAFAAAAgAMAAAEAAAADAAAABQAAAJADAAABAAAAAwAAAAUAAACgAwAAAQAAAAMAAAAFAAAAsAMAAAEAAAADAAAABQAAAMADAAABAAAAAwAAAAUAAADQAwAAAQAAAAMAAAAFAAAA4AMAAAEAAAADAAAABQAAAPADAAABAAAAAwAAAAUAAAAABAAAAQAAAAMAAAAFAAAAEAQAAAEAAAADAAAABQAAACAEAAABAAAAAwAAAAUAAAAwBAAAAQAAAAMAAAAFAAAAQAQAAAEAAAADAAAABQAAAFAEAAABAAAAAwAAAAUAAABgBAAAAQAAAAMAAAAFAAAAcAQAAAEAAAADAAAABQAAAIAEAAABAAAAAwAAAAUAAACQBAAAAQAAAAMAAAAFAAAAoAQAAAEAAAADAAAABQAAALAEAAABAAAAAwAAAAUAAADABAAAAQAAAAMAAAAFAAAA0AQAAAEAAAADAAAABQAAAOAEAAABAAAAAAAAAAIAAADwBAAAAAAAAAMAAAAFAAAA8AQAAAEAAAADAAAABQAAAAAFAAABAAAAAwAAAAUAAAAQBQAAAQAAAAMAAAAFAAAAIAUAAAEAAAADAAAABQAAADAFAAABAAAAAwAAAAUAAABABQAAAQAAAAMAAAAFAAAAUAUAAAEAAAADAAAABQAAAGAFAAABAAAAAwAAAAUAAABwBQAAAQAAAAMAAAAFAAAAgAUAAAEAAAADAAAABQAAAJAFAAABAAAAAwAAAAUAAACgBQAAAQAAAAMAAAAFAAAAsAUAAAEAAAADAAAABQAAAMAFAAABAAAAAwAAAAUAAADQBQAAAQAAAAMAAAAFAAAA4AUAAAEAAAADAAAABQAAAPAFAAABAAAAAwAAAAUAAAAABgAAAQAAAAMAAAAFAAAAEAYAAAEAAAADAAAABQAAACAGAAABAAAAAwAAAAUAAAAwBgAAAQAAAAMAAAAFAAAAQAYAAAEAAAADAAAABQAAAFAGAAABAAAAAwAAAAUAAABgBgAAAQAAAAMAAAAFAAAAcAYAAAEAAAADAAAABQAAAIAGAAABAAAAAwAAAAUAAACQBgAAAQAAAAMAAAAFAAAAoAYAAAEAAAADAAAABQAAALAGAAABAAAAAwAAAAUAAADABgAAAQAAAAMAAAAFAAAA0AYAAAEAAAADAAAABQAAAOAGAAABAAAAAwAAAAUAAADwBgAAAQAAAAMAAAAFAAAAAAcAAAEAAAADAAAABQAAABAHAAABAAAAAwAAAAUAAAAgBwAAAQAAAAMAAAAFAAAAMAcAAAEAAAADAAAABQAAAEAHAAABAAAAAwAAAAUAAABQBwAAAQAAAAMAAAAFAAAAYAcAAAEAAAADAAAABQAAAHAHAAABAAAAAwAAAAUAAACABwAAAQAAAAMAAAAFAAAAkAcAAAEAAAADAAAABQAAAKAHAAABAAAAAwAAAAUAAACwBwAAAQAAAAMAAAAFAAAAwAcAAAEAAAADAAAABQAAANAHAAABAAAAAwAAAAUAAADgBwAAAQAAAAMAAAAFAAAA8AcAAAEAAAADAAAABQAAAAAIAAABAAAAAwAAAAUAAAAQCAAAAQAAAAMAAAAFAAAAIAgAAAEAAAADAAAABQAAADAIAAABAAAAAwAAAAUAAABACAAAAQAAAAMAAAAFAAAAUAgAAAEAAAADAAAABQAAAGAIAAABAAAAAAAAAAMAAABwCAAAAAAAAAUAAAAAAAAAcAgAAAEAAAAAAAAABAAAAIAIAAAAAAAAAAAAAAUAAACACAAAAAAAAAAAAAAGAAAAgAgAAAAAAAAAAAAABwAAAIAIAAAAAAAABgAAAAYAAACACAAAAQAAAAYAAAAGAAAAEhIAAAEAAAAGAAAABgAAAPYXAAABAAAABQAAAAAAAADoGAAAAQAAAAUAAAAAAAAA+BgAAAEAAAAAAAAACAAAAAgZAAAAAAAABQAAAAAAAAAIGQAAAQAAAAUAAAAAAAAAGBkAAAEAAAAFAAAAAAAAACgZAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEACwAAAAAAPAAAAAEAAQABAAsAAAAAAD0AAAABAAEAAQALAAAAAAA+AAAAAQABAAEACwAAAAAAPwAAAAEAAQABAAsAAAAAAEAAAAABAAEAAQALAAAAAABBAAAAAQABAAEACwAAAAAAQgAAAAEAAQABAAsAAAAAAEMAAAABAAEAAQALAAAAAABEAAAAAQABAAEACwAAAAAARQAAAAEAAQABAAsAAAAAAEYAAAABAAEAAQALAAAAAABHAAAAAQABAAEACwAAAAAASAAAAAEAAQABAAsAAAAAAEkAAAABAAEAAQALAAAAAABKAAAAAQABAAEACwAAAAAASwAAAAEAAQABAAsAAAAAAEwAAAABAAEAAQALAAAAAABNAAAAAQABAAEACwAAAAAATgAAAAEAAQABAAsAAAAAAE8AAAABAAEAAQALAAAAAABQAAAAAQABAAEACwAAAAAAUQAAAAEAAQABAAsAAAAAAFIAAAABAAEAAQALAAAAAABTAAAAAQABAAEACwAAAAAAVAAAAAEAAQABAAsAAAAAAFUAAAABAAEAAQALAAAAAABWAAAAAQABAAEACwAAAAAAVwAAAAEAAQABAAsAAAAAAFgAAAABAAEAAQALAAAAAABZAAAAAQABAAEACwAAAAAAWgAAAAEAAQABAAsAAAAAAFsAAAABAAEAAQALAAAAAABcAAAAAQABAAEACwAAAAAAXQAAAAEAAQABAAsAAAAAAF4AAAABAAEAAQALAAAAAABfAAAAAQABAAEACwAAAAAAYAAAAAEAAQABAAsAAAAAAGEAAAABAAEAAQALAAAAAABiAAAAAQABAAEACwAAAAAAYwAAAAEAAQABAAsAAAAAAGQAAAABAAEAAQALAAAAAABlAAAAAQABAAEACwAAAAAAZgAAAAEAAQABAAsAAAAAAGcAAAABAAEAAQALAAAAAABoAAAAAQABAAEACwAAAAAAaQAAAAEAAQABAAsAAAAAAGoAAAABAAEAAQALAAAAAABrAAAAAQABAAEACwAAAAAAbAAAAAEAAQABAAsAAAAAAG0AAAABAAEAAQALAAAAAABuAAAAAQABAAEACwAAAAAAbwAAAAEAAQABAAsAAAAAAHAAAAABAAEAAQALAAAAAABxAAAAAQABAAEACwAAAAAAcgAAAAEAAQABAAsAAAAAAHMAAAABAAEAAQALAAAAAAB0AAAAAQABAAEACwAAAAAAdQAAAAEAAQABAAsAAAAAAHYAAAABAAEAAQALAAAAAAB3AAAAAQABAAEACwAAAAAAeAAAAAEAAQABAAsAAAAAAHkAAAABAAEAAQALAAAAAAB6AAAAAQABAAEACwAAAAAAewAAAAEAAQABAAsAAAAAAHwAAAABAAEAAQALAAAAAAB9AAAAAQABAAEACwAAAAAAfgAAAAEAAQABAAsAAAAAAH8AAAABAAEAAQALAAAAAACAAAAAAQABAAEACwAAAAAAgQAAAAEAAQABAAsAAAAAAIIAAAABAAEAAQALAAAAAACDAAAAAQABAAEACwAAAAAAhAAAAAEAAQABAAsAAAAAAIUAAAABAAEAAQALAAAAAACGAAAAAQABAAEAGgEAAAcAAAAAAAoAAAAAAAYAHQEAAAoAAAAAAAoATwAAAIcAAAACAAAAAAACAAAAPAAAAAIAAAAAAAMAAACIAAAAAgAAAAAABAAAAIkAAAACAAAAAAAFAAAAigAAAAIAAAAAAAYAAACLAAAAAgAAAAAABwAAAIwAAAACAAAAAAAIAAAAjQAAAAIAAAAAAAkAAACOAAAAAgAAAAAACgAAAI8AAAACAAAAAAALAAAAkAAAAAIAAAAAAAwAAACRAAAAAgAAAAAADQAAAE0AAAACAAAAAAAOAAAAkgAAAAIAAAAAAA8AAACTAAAAAgAAAAAAEAAAAJQAAAACAAAAAAARAAAAlQAAAAIAAAAAABIAAACWAAAAAgAAAAAAEwAAAJcAAAACAAAAAAAUAAAAmAAAAAIAAAAAABUAAACZAAAAAgAAAAAAFgAAAJoAAAACAAAAAAAXAAAAmwAAAAIAAAAAABgAAACcAAAAAgAAAAAAGQAAAJ0AAAACAAAAAAAaAAAAngAAAAIAAAAAABsAAACfAAAAAgAAAAAAHAAAAKAAAAACAAAAAAAdAAAAoQAAAAIAAAAAAB4AAACiAAAAAgAAAAAAHwAAAKMAAAACAAAAAAAgAAAApAAAAAIAAAAAACEAAAClAAAAAgAAAAAAIgAAAKYAAAACAAAAAAAjAAAApwAAAAIAAAAAACQAAACoAAAAAgAAAAAAJQAAAKkAAAACAAAAAAAmAAAAqgAAAAIAAAAAACcAAACrAAAAAgAAAAAAKAAAAKwAAAACAAAAAAApAAAArQAAAAIAAAAAACoAAACuAAAAAgAAAAAAKwAAAK8AAAACAAAAAAAsAAAAsAAAAAIAAAAAAC0AAACxAAAAAgAAAAAALgAAALIAAAACAAAAAAAvAAAAswAAAAIAAAAAADAAAAC0AAAAAgAAAAAAMQAAALUAAAACAAAAAAAyAAAAtgAAAAIAAAAAADMAAAC3AAAAAgAAAAAANAAAALgAAAACAAAAAAA1AAAAuQAAAAIAAAAAADYAAAC6AAAAAgAAAAAANwAAALsAAAACAAAAAAA4AAAAvAAAAAIAAAAAADkAAAC9AAAAAgAAAAAAOgAAAL4AAAACAAAAAAA7AAAAvwAAAAIAAAAAADwAAADAAAAAAgAAAAAAPQAAAMEAAAACAAAAAAA+AAAAwgAAAAIAAAAAAD8AAADDAAAAAgAAAAAAQAAAAMQAAAACAAAAAABBAAAAxQAAAAIAAAAAAEIAAADGAAAAAgAAAAAAQwAAAMcAAAACAAAAAABEAAAAyAAAAAIAAAAAAEUAAADJAAAAAgAAAAAARgAAAMoAAAACAAAAAABHAAAAywAAAAIAAAAAAEgAAADMAAAAAgAAAAAASQAAAM0AAAACAAAAAABKAAAAzgAAAAIAAAAAAEsAAADPAAAAAgAAAAAATAAAANAAAAACAAAAAABNAAAA0QAAAAIAAAAAAE4AAADSAAAAAgAAAAAATwAAANMAAAACAAAAAABQAAAABwBPAAAAAgAAAAAAAgAAAAIAAAAAAAMAAAACAAAAAAAEAAAAAgAAAAAABQAAAAIAAAAAAAYAAAACAAAAAAAHAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAANAAAAAgAAAAAADgAAAAIAAAAAAA8AAAACAAAAAAAQAAAAAgAAAAAAEQAAAAIAAAAAABIAAAACAAAAAAATAAAAAgAAAAAAFAAAAAIAAAAAABUAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAACAAAAAAAuAAAAAgAAAAAALwAAAAIAAAAAADAAAAACAAAAAAAxAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAAAgAAAAAANQAAAAIAAAAAADYAAAACAAAAAAA3AAAAAgAAAAAAOAAAAAIAAAAAADkAAAACAAAAAAA6AAAAAgAAAAAAOwAAAAIAAAAAADwAAAACAAAAAAA9AAAAAgAAAAAAPgAAAAIAAAAAAD8AAAACAAAAAABAAAAAAgAAAAAAQQAAAAIAAAAAAEIAAAACAAAAAABDAAAAAgAAAAAARAAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABPAAAAAgAAAAAAUAAAAAcAAAAAAAcAAQAAAAIABAAAAAEAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAQAAAACAAAAAAABAAAAAgAEAAAAAQAAAAIAAQAAAFEAAAACAAMAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAoAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUQAAAAYAHgEAAAYA1AAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABRAAAABgAjAAAABgDVAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFEAAAAGACQAAAAGANYAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUQAAAAYAJQAAAAYA1wAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABRAAAABgAfAQAABgDYAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFEAAAAGACABAAAGANkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUQAAAAYAIQEAAAYA2gAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABRAAAABgAiAQAABgDbAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFEAAAAGACMBAAAGANwAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUQAAAAYAJAEAAAYA3QAAAAcAAAAAAAEABgAlAQAACgAAAAAACgA4AAAAjAAAAAIAAAAAAFIAAACNAAAAAgAAAAAAUwAAAI4AAAACAAAAAABUAAAAjwAAAAIAAAAAAFUAAACQAAAAAgAAAAAAVgAAAJEAAAACAAAAAABXAAAATQAAAAIAAAAAAFgAAACSAAAAAgAAAAAAWQAAAJMAAAACAAAAAABaAAAAlAAAAAIAAAAAAFsAAACWAAAAAgAAAAAAXAAAAJcAAAACAAAAAABdAAAAmAAAAAIAAAAAAF4AAACaAAAAAgAAAAAAXwAAAJ0AAAACAAAAAABgAAAAngAAAAIAAAAAAGEAAACfAAAAAgAAAAAAYgAAAKAAAAACAAAAAABjAAAAoQAAAAIAAAAAAGQAAACiAAAAAgAAAAAAZQAAAKMAAAACAAAAAABmAAAApAAAAAIAAAAAAGcAAAClAAAAAgAAAAAAaAAAAKYAAAACAAAAAABpAAAAqQAAAAIAAAAAAGoAAACqAAAAAgAAAAAAawAAAKsAAAACAAAAAABsAAAArAAAAAIAAAAAAG0AAACtAAAAAgAAAAAAbgAAALIAAAACAAAAAABvAAAAswAAAAIAAAAAAHAAAACwAAAAAgAAAAAAcQAAALYAAAACAAAAAAByAAAAtwAAAAIAAAAAAHMAAAC4AAAAAgAAAAAAdAAAALkAAAACAAAAAAB1AAAAugAAAAIAAAAAAHYAAAC7AAAAAgAAAAAAdwAAALwAAAACAAAAAAB4AAAAvQAAAAIAAAAAAHkAAAC+AAAAAgAAAAAAegAAAL8AAAACAAAAAAB7AAAAwAAAAAIAAAAAAHwAAADGAAAAAgAAAAAAfQAAAMgAAAACAAAAAAB+AAAAyQAAAAIAAAAAAH8AAADKAAAAAgAAAAAAgAAAAMsAAAACAAAAAACBAAAAzAAAAAIAAAAAAIIAAADNAAAAAgAAAAAAgwAAAIoAAAACAAAAAACEAAAAiwAAAAIAAAAAAIUAAADOAAAAAgAAAAAAhgAAAM8AAAACAAAAAACHAAAA4QAAAAIAAAAAAIgAAADiAAAAAgAAAAAAiQAAAAcAOAAAAAIAAAAAAFIAAAACAAAAAABTAAAAAgAAAAAAVAAAAAIAAAAAAFUAAAACAAAAAABWAAAAAgAAAAAAVwAAAAIAAAAAAFgAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABcAAAAAgAAAAAAXQAAAAIAAAAAAF4AAAACAAAAAABfAAAAAgAAAAAAYAAAAAIAAAAAAGEAAAACAAAAAABiAAAAAgAAAAAAYwAAAAIAAAAAAGQAAAACAAAAAABlAAAAAgAAAAAAZgAAAAIAAAAAAGcAAAACAAAAAABoAAAAAgAAAAAAaQAAAAIAAAAAAGoAAAACAAAAAABrAAAAAgAAAAAAbAAAAAIAAAAAAG0AAAACAAAAAABuAAAAAgAAAAAAbwAAAAIAAAAAAHAAAAACAAAAAABxAAAAAgAAAAAAcgAAAAIAAAAAAHMAAAACAAAAAAB0AAAAAgAAAAAAdQAAAAIAAAAAAHYAAAACAAAAAAB3AAAAAgAAAAAAeAAAAAIAAAAAAHkAAAACAAAAAAB6AAAAAgAAAAAAewAAAAIAAAAAAHwAAAACAAAAAAB9AAAAAgAAAAAAfgAAAAIAAAAAAH8AAAACAAAAAACAAAAAAgAAAAAAgQAAAAIAAAAAAIIAAAACAAAAAACDAAAAAgAAAAAAhAAAAAIAAAAAAIUAAAACAAAAAACGAAAAAgAAAAAAhwAAAAIAAAAAAIgAAAACAAAAAACJAAAABwAAAAAABwABAAAAAgAEAAAAPQAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAFEAAAACAAQAAAA9AAAAAgADAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGACYBAAAKAAAAAAAKAAAAAAAHAAAAAAAHAAAAAAAHAAEAAAACAAQAAABfAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAigAAAAIABAAAAF8AAAACAAMAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAIAAAAEAAAAAAAAAAAAAgAEAAAAYQAAAAcAAgAAAAQAAAAAAAAAAAACAAQAAABhAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIABAAAAGEAAAABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAABDAQAABwAAAAAACgAAAAAA", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 2
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 3
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 80
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_101_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 135
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 81
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_167_1346277621.774" 
    set $P5001["buildsub"], $P5003
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 81
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_170_1346277621.774" 
    set $P5001["qbuildsub"], $P5003
    .const 'Sub' $P5001 = "cuid_155_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1346277621.774" 
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 137
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_157_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 81
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_157_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_157_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 81
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_157_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_158_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 138
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_158_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_158_1346277621.774"
    nqp_get_sc_object $P5002, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 138
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_158_1346277621.774"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "CFB984DF95ACEC0885E1D037E3123D5A32471909-1346277621.81", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1346277621.774") :anon :lex :outer("cuid_213_1346277621.774")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1346277621.774" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1346277621.774" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1346277621.774") :load
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .const 'Sub' $P5001 = "cuid_1_1346277621.774" 
    $P5002 = $P5001()
    .return ($P5002) 
.end