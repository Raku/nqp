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
.sub "" :subid("cuid_1_1347804160.506") :anon :lex
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5044 = 'cuid_159_1347804160.506' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_100_1347804160.506' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_157_1347804160.506' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_158_1347804160.506' 
    capture_lex $P5044 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "$p6regex", $P104 
    .lex "&MAIN", $P105 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P104, $P5001
    .const 'Sub' $P5002 = 'cuid_159_1347804160.506' 
    capture_lex $P5002
    set $P105, $P5002
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
    .const 'Sub' $P5009 = 'cuid_100_1347804160.506' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_157_1347804160.506' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_158_1347804160.506' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 912
    nqp_get_sc_object $P5019, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5018, $P5019, "QRegex"
    nqp_get_package_through_who $P5017, $P5018, "P6Regex"
    get_who $P5016, $P5017
    set $P5015, $P5016["Compiler"]
    unless_null $P5015, fallback2124
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5015, $P5020
  fallback2124:
    $P5021 = $P5015."new"()
    set $P104, $P5021
.annotate 'line', 913
    $P5022 = $P104."language"("QRegex::P6Regex")
.annotate 'line', 914
    nqp_get_sc_object $P5027, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5026, $P5027, "QRegex"
    nqp_get_package_through_who $P5025, $P5026, "P6Regex"
    get_who $P5024, $P5025
    set $P5023, $P5024["Grammar"]
    unless_null $P5023, fallback2125
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5023, $P5028
  fallback2125:
    $P5029 = $P104."parsegrammar"($P5023)
.annotate 'line', 915
    nqp_get_sc_object $P5034, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5033, $P5034, "QRegex"
    nqp_get_package_through_who $P5032, $P5033, "P6Regex"
    get_who $P5031, $P5032
    set $P5030, $P5031["Actions"]
    unless_null $P5030, fallback2126
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5030, $P5035
  fallback2126:
    $P5036 = $P104."parseactions"($P5030)
    set $P5043, _lex_param_0
    unless _lex_param_0 goto if568_end2128 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5037, "ModuleLoader"
    getinterp $P5039
    set $P5038, $P5039["context"]
    $P5040 = $P5037."set_mainline_module"($P5038)
    .const 'Sub' $P5041 = "cuid_159_1347804160.506" 
    $P5042 = $P5041(_lex_param_0 :flat)
    set $P5043, $P5042
  if568_end2128:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "MAIN" :subid("cuid_159_1347804160.506") :anon :lex :outer("cuid_1_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 917
    .param pmc _lex_param_0 
    .lex "@ARGS", _lex_param_0 
.annotate 'line', 918
    find_lex $P5001, "$p6regex"
    $P5002 = $P5001."command_line"(_lex_param_0, "utf8" :named("encoding"), "ucs4" :named("transcode"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1347804160.506") :anon :lex :outer("cuid_1_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 10
    .const 'Sub' $P5080 = 'cuid_2_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_3_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_5_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_6_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_7_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_8_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_9_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_10_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_11_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_12_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_13_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_14_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_16_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_18_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_19_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_21_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_22_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_23_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_24_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_25_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_29_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_30_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_32_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_33_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_34_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_35_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_36_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_37_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_38_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_39_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_40_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_41_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_42_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_43_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_44_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_45_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_46_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_47_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_48_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_49_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_50_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_51_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_52_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_53_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_54_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_55_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_56_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_57_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_58_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_59_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_60_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_61_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_62_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_63_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_64_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_65_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_66_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_67_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_68_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_69_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_70_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_71_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_72_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_73_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_74_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_75_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_76_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_78_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_80_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_81_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_82_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_84_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_86_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_93_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_95_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_96_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_97_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_98_1347804160.506' 
    capture_lex $P5080 
    .const 'Sub' $P5080 = 'cuid_99_1347804160.506' 
    capture_lex $P5080 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1347804160.506' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1347804160.506' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_5_1347804160.506' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_6_1347804160.506' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_7_1347804160.506' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_8_1347804160.506' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_9_1347804160.506' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_10_1347804160.506' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_11_1347804160.506' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_12_1347804160.506' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_13_1347804160.506' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_14_1347804160.506' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_16_1347804160.506' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_18_1347804160.506' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_19_1347804160.506' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_21_1347804160.506' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_22_1347804160.506' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_23_1347804160.506' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_24_1347804160.506' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_25_1347804160.506' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_29_1347804160.506' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_30_1347804160.506' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_32_1347804160.506' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_33_1347804160.506' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_34_1347804160.506' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_35_1347804160.506' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_36_1347804160.506' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_37_1347804160.506' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_38_1347804160.506' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_39_1347804160.506' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_40_1347804160.506' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_41_1347804160.506' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_42_1347804160.506' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_43_1347804160.506' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_44_1347804160.506' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_45_1347804160.506' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_46_1347804160.506' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_47_1347804160.506' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_48_1347804160.506' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_49_1347804160.506' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_50_1347804160.506' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_51_1347804160.506' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_52_1347804160.506' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_53_1347804160.506' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_54_1347804160.506' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_55_1347804160.506' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_56_1347804160.506' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_57_1347804160.506' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_58_1347804160.506' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_59_1347804160.506' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_60_1347804160.506' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_61_1347804160.506' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_62_1347804160.506' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_63_1347804160.506' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_64_1347804160.506' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_65_1347804160.506' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_66_1347804160.506' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_67_1347804160.506' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_68_1347804160.506' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_69_1347804160.506' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_70_1347804160.506' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_71_1347804160.506' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_72_1347804160.506' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_73_1347804160.506' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_74_1347804160.506' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_75_1347804160.506' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_76_1347804160.506' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_78_1347804160.506' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_80_1347804160.506' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_81_1347804160.506' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_82_1347804160.506' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_84_1347804160.506' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_86_1347804160.506' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_93_1347804160.506' 
    capture_lex $P5074
    .const 'Sub' $P5075 = 'cuid_95_1347804160.506' 
    capture_lex $P5075
    .const 'Sub' $P5076 = 'cuid_96_1347804160.506' 
    capture_lex $P5076
    .const 'Sub' $P5077 = 'cuid_97_1347804160.506' 
    capture_lex $P5077
    .const 'Sub' $P5078 = 'cuid_98_1347804160.506' 
    capture_lex $P5078
    .const 'Sub' $P5079 = 'cuid_99_1347804160.506' 
    capture_lex $P5079
    .return ($P5079) 
.end
.HLL "nqp"
.namespace []
.sub "obs" :subid("cuid_2_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "ws" :subid("cuid_3_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    rx12_cur."!alt"(rx12_pos, "alt_nfa__1_1347804160.641", $P11)
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
.sub "cuid_3_1347804160.506_caps" :subid("cuid_memo_1_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_3_1347804160.506_nfa" :subid("cuid_memo_2_1347804160.506")
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
.sub "cuid_3_1347804160.506_alt_nfa__1_1347804160.641" :subid("cuid_memo_3_1347804160.506")
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
.sub "normspace" :subid("cuid_5_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 19
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_4_1347804160.506' 
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
    .const 'Sub' $P5001 = 'cuid_4_1347804160.506' 
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
.sub "cuid_5_1347804160.506_caps" :subid("cuid_memo_4_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_5_1347804160.506_nfa" :subid("cuid_memo_5_1347804160.506")
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
.sub "" :subid("cuid_4_1347804160.506") :anon :lex :outer("cuid_5_1347804160.506")
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
    rx20_cur."!alt"(rx20_pos, "alt_nfa__2_1347804160.653", $P11)
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
.sub "cuid_4_1347804160.506_caps" :subid("cuid_memo_6_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_4_1347804160.506_nfa" :subid("cuid_memo_7_1347804160.506")
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
.sub "cuid_4_1347804160.506_alt_nfa__2_1347804160.653" :subid("cuid_memo_8_1347804160.506")
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
.sub "identifier" :subid("cuid_6_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_6_1347804160.506_caps" :subid("cuid_memo_9_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_6_1347804160.506_nfa" :subid("cuid_memo_10_1347804160.506")
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
.sub "arg" :subid("cuid_7_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    rx30_cur."!alt"(rx30_pos, "alt_nfa__3_1347804160.678", $P11)
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
.sub "cuid_7_1347804160.506_caps" :subid("cuid_memo_11_1347804160.506")
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
.sub "cuid_7_1347804160.506_nfa" :subid("cuid_memo_12_1347804160.506")
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
.sub "cuid_7_1347804160.506_alt_nfa__3_1347804160.678" :subid("cuid_memo_13_1347804160.506")
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
.sub "arglist" :subid("cuid_8_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_8_1347804160.506_caps" :subid("cuid_memo_14_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["arg"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_9_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5003, $P5004
    set $P5002, $P5003["%RX"]
    unless_null $P5002, fallback125
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
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
.sub "cuid_9_1347804160.506_caps" :subid("cuid_memo_15_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_9_1347804160.506_nfa" :subid("cuid_memo_16_1347804160.506")
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
.sub "nibbler" :subid("cuid_10_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .const 'Sub' $P5014 = 'cuid_161_1347804160.506' 
    capture_lex $P5014 
    .lex "$OLDRX", $P101 
    .lex "%*RX", $P102 
    .lex utf8:"$\x{a2}", $P103 
    .lex "$/", $P104 
    .lex "self", _lex_param_0 
    .local pmc self 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
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
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["%RX"]
    unless_null $P5004, fallback144
    nqp_get_sc_object $P5008, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
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
    .const 'Sub' $P5012 = 'cuid_161_1347804160.506' 
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
    rx54_cur."!alt"(rx54_pos, "alt_nfa__4_1347804160.722", $P11)
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
.sub "cuid_10_1347804160.506_caps" :subid("cuid_memo_17_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["termaltseq"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_10_1347804160.506_nfa" :subid("cuid_memo_18_1347804160.506")
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
.sub "cuid_10_1347804160.506_alt_nfa__4_1347804160.722" :subid("cuid_memo_19_1347804160.506")
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
.sub "" :subid("cuid_161_1347804160.506") :anon :lex :outer("cuid_10_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 42
    .const 'Sub' $P5007 = 'cuid_160_1347804160.506' 
    capture_lex $P5007 
    find_lex $P5004, "$OLDRX"
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next149:
    unless $P5003, for_done151
    shift $P5006, $P5003
  for_redo150:
    .const 'Sub' $P5005 = 'cuid_160_1347804160.506' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next149
  for_done151:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1347804160.506") :anon :lex :outer("cuid_161_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_dynamic_lex $P5001, "%*RX"
    unless_null $P5001, fallback146
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5003, $P5004
    set $P5002, $P5003["%RX"]
    unless_null $P5002, fallback147
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
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
.sub "termaltseq" :subid("cuid_11_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_11_1347804160.506_caps" :subid("cuid_memo_20_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termconjseq"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_11_1347804160.506_nfa" :subid("cuid_memo_21_1347804160.506")
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
.sub "termconjseq" :subid("cuid_12_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_12_1347804160.506_caps" :subid("cuid_memo_22_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termalt"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_12_1347804160.506_nfa" :subid("cuid_memo_23_1347804160.506")
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
.sub "termalt" :subid("cuid_13_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_13_1347804160.506_caps" :subid("cuid_memo_24_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termconj"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_13_1347804160.506_nfa" :subid("cuid_memo_25_1347804160.506")
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
.sub "termconj" :subid("cuid_14_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_14_1347804160.506_caps" :subid("cuid_memo_26_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["termish"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_14_1347804160.506_nfa" :subid("cuid_memo_27_1347804160.506")
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
.sub "termish" :subid("cuid_16_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 69
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_15_1347804160.506' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_162_1347804160.506' 
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
    .const 'Sub' $P5001 = 'cuid_15_1347804160.506' 
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
    .const 'Sub' $P5003 = 'cuid_162_1347804160.506' 
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
.sub "cuid_16_1347804160.506_caps" :subid("cuid_memo_28_1347804160.506")
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
.sub "" :subid("cuid_15_1347804160.506") :anon :lex :outer("cuid_16_1347804160.506")
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
.sub "cuid_15_1347804160.506_caps" :subid("cuid_memo_29_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_15_1347804160.506_nfa" :subid("cuid_memo_30_1347804160.506")
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
.sub "" :subid("cuid_162_1347804160.506") :anon :lex :outer("cuid_16_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 71
    .lex "$char", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    set $P5002, $P5003[0]
    unless_null $P5002, fallback261
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
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
.sub "quantified_atom" :subid("cuid_18_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 77
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_17_1347804160.506' 
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
    rx98_cur."!alt"(rx98_pos, "alt_nfa__5_1347804160.805", $P11)
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
    .const 'Sub' $P5001 = 'cuid_17_1347804160.506' 
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
.sub "cuid_18_1347804160.506_caps" :subid("cuid_memo_31_1347804160.506")
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
.sub "cuid_18_1347804160.506_nfa" :subid("cuid_memo_32_1347804160.506")
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
.sub "cuid_18_1347804160.506_alt_nfa__5_1347804160.805" :subid("cuid_memo_33_1347804160.506")
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
.sub "" :subid("cuid_17_1347804160.506") :anon :lex :outer("cuid_18_1347804160.506")
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
.sub "cuid_17_1347804160.506_caps" :subid("cuid_memo_34_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_17_1347804160.506_nfa" :subid("cuid_memo_35_1347804160.506")
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
.sub "separator" :subid("cuid_19_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_19_1347804160.506_caps" :subid("cuid_memo_36_1347804160.506")
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
.sub "cuid_19_1347804160.506_nfa" :subid("cuid_memo_37_1347804160.506")
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
.sub "atom" :subid("cuid_21_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_20_1347804160.506' 
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
    rx118_cur."!alt"(rx118_pos, "alt_nfa__6_1347804160.825", $P11)
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
    .const 'Sub' $P5001 = 'cuid_20_1347804160.506' 
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
.sub "cuid_21_1347804160.506_caps" :subid("cuid_memo_38_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["metachar"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_21_1347804160.506_nfa" :subid("cuid_memo_39_1347804160.506")
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
.sub "cuid_21_1347804160.506_alt_nfa__6_1347804160.825" :subid("cuid_memo_40_1347804160.506")
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
.sub "" :subid("cuid_20_1347804160.506") :anon :lex :outer("cuid_21_1347804160.506")
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
.sub "cuid_20_1347804160.506_caps" :subid("cuid_memo_41_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_20_1347804160.506_nfa" :subid("cuid_memo_42_1347804160.506")
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
.sub "quantifier" :subid("cuid_22_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 97
    .param pmc self 
    $P5001 = self."!protoregex"("quantifier")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<*>" :subid("cuid_23_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_23_1347804160.506_caps" :subid("cuid_memo_43_1347804160.506")
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
.sub "cuid_23_1347804160.506_nfa" :subid("cuid_memo_44_1347804160.506")
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
.sub "quantifier:sym<+>" :subid("cuid_24_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_24_1347804160.506_caps" :subid("cuid_memo_45_1347804160.506")
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
.sub "cuid_24_1347804160.506_nfa" :subid("cuid_memo_46_1347804160.506")
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
.sub "quantifier:sym<?>" :subid("cuid_25_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_25_1347804160.506_caps" :subid("cuid_memo_47_1347804160.506")
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
.sub "cuid_25_1347804160.506_nfa" :subid("cuid_memo_48_1347804160.506")
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
.sub "quantifier:sym<{N,M}>" :subid("cuid_29_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .const 'Sub' $P5007 = 'cuid_163_1347804160.506' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_26_1347804160.506' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_27_1347804160.506' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_28_1347804160.506' 
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
    .const 'Sub' $P5002 = 'cuid_163_1347804160.506' 
    capture_lex $P5002
    $P5003 = $P5002()
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail384
    substr $S10, rx138_tgt, rx138_pos, 1
    ne $S10, ucs4:"{", rx138_fail384
    add rx138_pos, 1
    .const 'Sub' $P5004 = 'cuid_26_1347804160.506' 
    capture_lex $P5004
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail384
    nqp_rxmark rx138_bstack, rxsubrule143_pass403, -1, 0
  rxsubrule143_pass403:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    .const 'Sub' $P5005 = 'cuid_27_1347804160.506' 
    capture_lex $P5005
    repr_bind_attr_int rx138_cur, rx138_curclass, "$!pos", rx138_pos
    $P11 = rx138_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx138_curclass, "$!pos"
    lt $I11, 0, rx138_fail384
    nqp_rxmark rx138_bstack, rxsubrule147_pass416, -1, 0
  rxsubrule147_pass416:
    rx138_cstack = rx138_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx138_pos, $P11, rx138_curclass, "$!pos"
    .const 'Sub' $P5006 = 'cuid_28_1347804160.506' 
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
.sub "cuid_29_1347804160.506_caps" :subid("cuid_memo_49_1347804160.506")
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
.sub "" :subid("cuid_163_1347804160.506") :anon :lex :outer("cuid_29_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 101

    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_26_1347804160.506") :anon :lex :outer("cuid_29_1347804160.506")
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
.sub "cuid_26_1347804160.506_caps" :subid("cuid_memo_50_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_26_1347804160.506_nfa" :subid("cuid_memo_51_1347804160.506")
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
.sub "" :subid("cuid_27_1347804160.506") :anon :lex :outer("cuid_29_1347804160.506")
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
.sub "cuid_27_1347804160.506_caps" :subid("cuid_memo_52_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_27_1347804160.506_nfa" :subid("cuid_memo_53_1347804160.506")
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
.sub "" :subid("cuid_28_1347804160.506") :anon :lex :outer("cuid_29_1347804160.506")
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
.sub "cuid_28_1347804160.506_caps" :subid("cuid_memo_54_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_28_1347804160.506_nfa" :subid("cuid_memo_55_1347804160.506")
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
.sub "quantifier:sym<**>" :subid("cuid_30_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_30_1347804160.506_caps" :subid("cuid_memo_56_1347804160.506")
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
.sub "cuid_30_1347804160.506_nfa" :subid("cuid_memo_57_1347804160.506")
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
.sub "backmod" :subid("cuid_32_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 118
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_31_1347804160.506' 
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
    rx168_cur."!alt"(rx168_pos, "alt_nfa__7_1347804160.896", $P11)
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
    .const 'Sub' $P5001 = 'cuid_31_1347804160.506' 
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
.sub "cuid_32_1347804160.506_caps" :subid("cuid_memo_58_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_32_1347804160.506_nfa" :subid("cuid_memo_59_1347804160.506")
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
.sub "cuid_32_1347804160.506_alt_nfa__7_1347804160.896" :subid("cuid_memo_60_1347804160.506")
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
.sub "" :subid("cuid_31_1347804160.506") :anon :lex :outer("cuid_32_1347804160.506")
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
.sub "cuid_31_1347804160.506_caps" :subid("cuid_memo_61_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_31_1347804160.506_nfa" :subid("cuid_memo_62_1347804160.506")
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
.sub "metachar" :subid("cuid_33_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 120
    .param pmc self 
    $P5001 = self."!protoregex"("metachar")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<ws>" :subid("cuid_34_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_34_1347804160.506_caps" :subid("cuid_memo_63_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_34_1347804160.506_nfa" :subid("cuid_memo_64_1347804160.506")
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
.sub "metachar:sym<[ ]>" :subid("cuid_35_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_35_1347804160.506_caps" :subid("cuid_memo_65_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_35_1347804160.506_nfa" :subid("cuid_memo_66_1347804160.506")
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
.sub "metachar:sym<( )>" :subid("cuid_36_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_36_1347804160.506_caps" :subid("cuid_memo_67_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["nibbler"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_36_1347804160.506_nfa" :subid("cuid_memo_68_1347804160.506")
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
.sub "metachar:sym<'>" :subid("cuid_37_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_37_1347804160.506_caps" :subid("cuid_memo_69_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_37_1347804160.506_nfa" :subid("cuid_memo_70_1347804160.506")
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
.sub "metachar:sym<\">" :subid("cuid_38_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_38_1347804160.506_caps" :subid("cuid_memo_71_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quote_EXPR"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_38_1347804160.506_nfa" :subid("cuid_memo_72_1347804160.506")
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
.sub "metachar:sym<.>" :subid("cuid_39_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_39_1347804160.506_caps" :subid("cuid_memo_73_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_39_1347804160.506_nfa" :subid("cuid_memo_74_1347804160.506")
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
.sub "metachar:sym<^>" :subid("cuid_40_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_40_1347804160.506_caps" :subid("cuid_memo_75_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_40_1347804160.506_nfa" :subid("cuid_memo_76_1347804160.506")
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
.sub "metachar:sym<^^>" :subid("cuid_41_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_41_1347804160.506_caps" :subid("cuid_memo_77_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_41_1347804160.506_nfa" :subid("cuid_memo_78_1347804160.506")
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
.sub "metachar:sym<$>" :subid("cuid_42_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_42_1347804160.506_caps" :subid("cuid_memo_79_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_42_1347804160.506_nfa" :subid("cuid_memo_80_1347804160.506")
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
.sub "metachar:sym<$$>" :subid("cuid_43_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_43_1347804160.506_caps" :subid("cuid_memo_81_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_43_1347804160.506_nfa" :subid("cuid_memo_82_1347804160.506")
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
.sub "metachar:sym<:::>" :subid("cuid_44_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_44_1347804160.506_caps" :subid("cuid_memo_83_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_44_1347804160.506_nfa" :subid("cuid_memo_84_1347804160.506")
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
.sub "metachar:sym<::>" :subid("cuid_45_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_45_1347804160.506_caps" :subid("cuid_memo_85_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_45_1347804160.506_nfa" :subid("cuid_memo_86_1347804160.506")
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
.sub "metachar:sym<lwb>" :subid("cuid_46_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    rx212_cur."!alt"(rx212_pos, "alt_nfa__8_1347804160.967", $P11)
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
.sub "cuid_46_1347804160.506_caps" :subid("cuid_memo_87_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_46_1347804160.506_nfa" :subid("cuid_memo_88_1347804160.506")
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
.sub "cuid_46_1347804160.506_alt_nfa__8_1347804160.967" :subid("cuid_memo_89_1347804160.506")
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
.sub "metachar:sym<rwb>" :subid("cuid_47_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    rx216_cur."!alt"(rx216_pos, "alt_nfa__9_1347804160.973", $P11)
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
.sub "cuid_47_1347804160.506_caps" :subid("cuid_memo_90_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_47_1347804160.506_nfa" :subid("cuid_memo_91_1347804160.506")
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
.sub "cuid_47_1347804160.506_alt_nfa__9_1347804160.973" :subid("cuid_memo_92_1347804160.506")
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
.sub "metachar:sym<from>" :subid("cuid_48_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_48_1347804160.506_caps" :subid("cuid_memo_93_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_48_1347804160.506_nfa" :subid("cuid_memo_94_1347804160.506")
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
.sub "metachar:sym<to>" :subid("cuid_49_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_49_1347804160.506_caps" :subid("cuid_memo_95_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_49_1347804160.506_nfa" :subid("cuid_memo_96_1347804160.506")
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
.sub "metachar:sym<bs>" :subid("cuid_50_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_50_1347804160.506_caps" :subid("cuid_memo_97_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["backslash"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_50_1347804160.506_nfa" :subid("cuid_memo_98_1347804160.506")
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
.sub "metachar:sym<mod>" :subid("cuid_51_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_51_1347804160.506_caps" :subid("cuid_memo_99_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["mod_internal"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_51_1347804160.506_nfa" :subid("cuid_memo_100_1347804160.506")
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
.sub "metachar:sym<quantifier>" :subid("cuid_52_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_52_1347804160.506_caps" :subid("cuid_memo_101_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["quantifier"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_52_1347804160.506_nfa" :subid("cuid_memo_102_1347804160.506")
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
.sub "metachar:sym<~>" :subid("cuid_53_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_53_1347804160.506_caps" :subid("cuid_memo_103_1347804160.506")
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
.sub "cuid_53_1347804160.506_nfa" :subid("cuid_memo_104_1347804160.506")
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
.sub "metachar:sym<{*}>" :subid("cuid_54_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_54_1347804160.506_caps" :subid("cuid_memo_105_1347804160.506")
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
.sub "cuid_54_1347804160.506_nfa" :subid("cuid_memo_106_1347804160.506")
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
.sub "metachar:sym<assert>" :subid("cuid_55_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
.sub "cuid_55_1347804160.506_caps" :subid("cuid_memo_107_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_55_1347804160.506_nfa" :subid("cuid_memo_108_1347804160.506")
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
.sub "metachar:sym<var>" :subid("cuid_56_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    rx257_cur."!alt"(rx257_pos, "alt_nfa__10_1347804161.055", $P11)
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
.sub "cuid_56_1347804160.506_caps" :subid("cuid_memo_109_1347804160.506")
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
.sub "cuid_56_1347804160.506_nfa" :subid("cuid_memo_110_1347804160.506")
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
.sub "cuid_56_1347804160.506_alt_nfa__10_1347804161.055" :subid("cuid_memo_111_1347804160.506")
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
.sub "metachar:sym<PIR>" :subid("cuid_57_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    add $I11, rx268_pos, 6
    gt $I11, rx268_eos, rx268_fail806
    substr $S10, rx268_tgt, rx268_pos, 6
    ne $S10, ucs4:":PIR{{", rx268_fail806
    add rx268_pos, 6
    nqp_rxmark rx268_bstack, rxcap270_fail814, rx268_pos, 0
    set rx268_rep, 0
    nqp_rxmark rx268_bstack, rxquantf271_loop815, rx268_pos, rx268_rep
    goto rxquantf271_done816
  rxquantf271_loop815:
    set $I12, rx268_rep
    ge rx268_pos, rx268_eos, rx268_fail806
    add rx268_pos, 1
    set rx268_rep, $I12
    inc rx268_rep
    nqp_rxmark rx268_bstack, rxquantf271_loop815, rx268_pos, rx268_rep
  rxquantf271_done816:
    nqp_rxpeek $I19, rx268_bstack, rxcap270_fail814
    inc $I19
    set $I11, rx268_bstack[$I19]
    $P11 = rx268_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx268_pos)
    rx268_cstack = rx268_cur."!cursor_capture"($P11, "pir")
    goto rxcap270_done813
  rxcap270_fail814:
    goto rx268_fail806
  rxcap270_done813:
    add $I11, rx268_pos, 2
    gt $I11, rx268_eos, rx268_fail806
    substr $S10, rx268_tgt, rx268_pos, 2
    ne $S10, ucs4:"}}", rx268_fail806
    add rx268_pos, 2
    rx268_cur."!cursor_pass"(rx268_pos, "metachar:sym<PIR>", 'backtrack'=>1)
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
.sub "cuid_57_1347804160.506_caps" :subid("cuid_memo_112_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["pir"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_57_1347804160.506_nfa" :subid("cuid_memo_113_1347804160.506")
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
.sub "backslash" :subid("cuid_58_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 172
    .param pmc self 
    $P5001 = self."!protoregex"("backslash")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<s>" :subid("cuid_59_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx272_restart820
    gt rx272_pos, rx272_eos, rx272_fail821
    repr_get_attr_int $I11, self, rx272_curclass, "$!from"
    ne $I11, -1, rxscan273_done827
    goto rxscan273_scan826
  rxscan273_loop825:
    inc rx272_pos
    gt rx272_pos, rx272_eos, rx272_fail821
    repr_bind_attr_int rx272_cur, rx272_curclass, "$!from", rx272_pos
  rxscan273_scan826:
    nqp_rxmark rx272_bstack, rxscan273_loop825, rx272_pos, 0
  rxscan273_done827:
    nqp_rxmark rx272_bstack, rxcap274_fail829, rx272_pos, 0
    ge rx272_pos, rx272_eos, rx272_fail821
    substr $S11, rx272_tgt, rx272_pos, 1
    index $I11, ucs4:"dDnNsSwW", $S11
    lt $I11, 0, rx272_fail821
    inc rx272_pos
    nqp_rxpeek $I19, rx272_bstack, rxcap274_fail829
    inc $I19
    set $I11, rx272_bstack[$I19]
    $P11 = rx272_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx272_pos)
    rx272_cstack = rx272_cur."!cursor_capture"($P11, "sym")
    goto rxcap274_done828
  rxcap274_fail829:
    goto rx272_fail821
  rxcap274_done828:
    rx272_cur."!cursor_pass"(rx272_pos, "backslash:sym<s>", 'backtrack'=>1)
    .return (rx272_cur)
  rx272_restart820:
    repr_get_attr_obj rx272_cstack, rx272_cur, rx272_curclass, "$!cstack"
  rx272_fail821:
    unless rx272_bstack, rx272_done819
    pop $I19, rx272_bstack
    if_null rx272_cstack, rx272_cstack_done824
    unless rx272_cstack, rx272_cstack_done824
    dec $I19
    set $P11, rx272_cstack[$I19]
  rx272_cstack_done824:
    pop rx272_rep, rx272_bstack
    pop rx272_pos, rx272_bstack
    pop $I19, rx272_bstack
    lt rx272_pos, -1, rx272_done819
    lt rx272_pos, 0, rx272_fail821
    eq $I19, 0, rx272_fail821
    nqp_islist $I20, rx272_cstack
    unless $I20, rx272_jump822
    elements $I18, rx272_bstack
    le $I18, 0, rx272_cut823
    dec $I18
    set $I18, rx272_bstack[$I18]
  rx272_cut823:
    assign rx272_cstack, $I18
  rx272_jump822:
    jump $I19
  rx272_done819:
    rx272_cur."!cursor_fail"()
    .return (rx272_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_59_1347804160.506_caps" :subid("cuid_memo_114_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_59_1347804160.506_nfa" :subid("cuid_memo_115_1347804160.506")
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
.sub "backslash:sym<b>" :subid("cuid_60_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx275_restart832
    gt rx275_pos, rx275_eos, rx275_fail833
    repr_get_attr_int $I11, self, rx275_curclass, "$!from"
    ne $I11, -1, rxscan276_done839
    goto rxscan276_scan838
  rxscan276_loop837:
    inc rx275_pos
    gt rx275_pos, rx275_eos, rx275_fail833
    repr_bind_attr_int rx275_cur, rx275_curclass, "$!from", rx275_pos
  rxscan276_scan838:
    nqp_rxmark rx275_bstack, rxscan276_loop837, rx275_pos, 0
  rxscan276_done839:
    nqp_rxmark rx275_bstack, rxcap277_fail841, rx275_pos, 0
    ge rx275_pos, rx275_eos, rx275_fail833
    substr $S11, rx275_tgt, rx275_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx275_fail833
    inc rx275_pos
    nqp_rxpeek $I19, rx275_bstack, rxcap277_fail841
    inc $I19
    set $I11, rx275_bstack[$I19]
    $P11 = rx275_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx275_pos)
    rx275_cstack = rx275_cur."!cursor_capture"($P11, "sym")
    goto rxcap277_done840
  rxcap277_fail841:
    goto rx275_fail833
  rxcap277_done840:
    rx275_cur."!cursor_pass"(rx275_pos, "backslash:sym<b>", 'backtrack'=>1)
    .return (rx275_cur)
  rx275_restart832:
    repr_get_attr_obj rx275_cstack, rx275_cur, rx275_curclass, "$!cstack"
  rx275_fail833:
    unless rx275_bstack, rx275_done831
    pop $I19, rx275_bstack
    if_null rx275_cstack, rx275_cstack_done836
    unless rx275_cstack, rx275_cstack_done836
    dec $I19
    set $P11, rx275_cstack[$I19]
  rx275_cstack_done836:
    pop rx275_rep, rx275_bstack
    pop rx275_pos, rx275_bstack
    pop $I19, rx275_bstack
    lt rx275_pos, -1, rx275_done831
    lt rx275_pos, 0, rx275_fail833
    eq $I19, 0, rx275_fail833
    nqp_islist $I20, rx275_cstack
    unless $I20, rx275_jump834
    elements $I18, rx275_bstack
    le $I18, 0, rx275_cut835
    dec $I18
    set $I18, rx275_bstack[$I18]
  rx275_cut835:
    assign rx275_cstack, $I18
  rx275_jump834:
    jump $I19
  rx275_done831:
    rx275_cur."!cursor_fail"()
    .return (rx275_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_60_1347804160.506_caps" :subid("cuid_memo_116_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_60_1347804160.506_nfa" :subid("cuid_memo_117_1347804160.506")
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
.sub "backslash:sym<e>" :subid("cuid_61_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx278_restart844
    gt rx278_pos, rx278_eos, rx278_fail845
    repr_get_attr_int $I11, self, rx278_curclass, "$!from"
    ne $I11, -1, rxscan279_done851
    goto rxscan279_scan850
  rxscan279_loop849:
    inc rx278_pos
    gt rx278_pos, rx278_eos, rx278_fail845
    repr_bind_attr_int rx278_cur, rx278_curclass, "$!from", rx278_pos
  rxscan279_scan850:
    nqp_rxmark rx278_bstack, rxscan279_loop849, rx278_pos, 0
  rxscan279_done851:
    nqp_rxmark rx278_bstack, rxcap280_fail853, rx278_pos, 0
    ge rx278_pos, rx278_eos, rx278_fail845
    substr $S11, rx278_tgt, rx278_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx278_fail845
    inc rx278_pos
    nqp_rxpeek $I19, rx278_bstack, rxcap280_fail853
    inc $I19
    set $I11, rx278_bstack[$I19]
    $P11 = rx278_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx278_pos)
    rx278_cstack = rx278_cur."!cursor_capture"($P11, "sym")
    goto rxcap280_done852
  rxcap280_fail853:
    goto rx278_fail845
  rxcap280_done852:
    rx278_cur."!cursor_pass"(rx278_pos, "backslash:sym<e>", 'backtrack'=>1)
    .return (rx278_cur)
  rx278_restart844:
    repr_get_attr_obj rx278_cstack, rx278_cur, rx278_curclass, "$!cstack"
  rx278_fail845:
    unless rx278_bstack, rx278_done843
    pop $I19, rx278_bstack
    if_null rx278_cstack, rx278_cstack_done848
    unless rx278_cstack, rx278_cstack_done848
    dec $I19
    set $P11, rx278_cstack[$I19]
  rx278_cstack_done848:
    pop rx278_rep, rx278_bstack
    pop rx278_pos, rx278_bstack
    pop $I19, rx278_bstack
    lt rx278_pos, -1, rx278_done843
    lt rx278_pos, 0, rx278_fail845
    eq $I19, 0, rx278_fail845
    nqp_islist $I20, rx278_cstack
    unless $I20, rx278_jump846
    elements $I18, rx278_bstack
    le $I18, 0, rx278_cut847
    dec $I18
    set $I18, rx278_bstack[$I18]
  rx278_cut847:
    assign rx278_cstack, $I18
  rx278_jump846:
    jump $I19
  rx278_done843:
    rx278_cur."!cursor_fail"()
    .return (rx278_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_61_1347804160.506_caps" :subid("cuid_memo_118_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_61_1347804160.506_nfa" :subid("cuid_memo_119_1347804160.506")
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
.sub "backslash:sym<f>" :subid("cuid_62_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx281_restart856
    gt rx281_pos, rx281_eos, rx281_fail857
    repr_get_attr_int $I11, self, rx281_curclass, "$!from"
    ne $I11, -1, rxscan282_done863
    goto rxscan282_scan862
  rxscan282_loop861:
    inc rx281_pos
    gt rx281_pos, rx281_eos, rx281_fail857
    repr_bind_attr_int rx281_cur, rx281_curclass, "$!from", rx281_pos
  rxscan282_scan862:
    nqp_rxmark rx281_bstack, rxscan282_loop861, rx281_pos, 0
  rxscan282_done863:
    nqp_rxmark rx281_bstack, rxcap283_fail865, rx281_pos, 0
    ge rx281_pos, rx281_eos, rx281_fail857
    substr $S11, rx281_tgt, rx281_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx281_fail857
    inc rx281_pos
    nqp_rxpeek $I19, rx281_bstack, rxcap283_fail865
    inc $I19
    set $I11, rx281_bstack[$I19]
    $P11 = rx281_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx281_pos)
    rx281_cstack = rx281_cur."!cursor_capture"($P11, "sym")
    goto rxcap283_done864
  rxcap283_fail865:
    goto rx281_fail857
  rxcap283_done864:
    rx281_cur."!cursor_pass"(rx281_pos, "backslash:sym<f>", 'backtrack'=>1)
    .return (rx281_cur)
  rx281_restart856:
    repr_get_attr_obj rx281_cstack, rx281_cur, rx281_curclass, "$!cstack"
  rx281_fail857:
    unless rx281_bstack, rx281_done855
    pop $I19, rx281_bstack
    if_null rx281_cstack, rx281_cstack_done860
    unless rx281_cstack, rx281_cstack_done860
    dec $I19
    set $P11, rx281_cstack[$I19]
  rx281_cstack_done860:
    pop rx281_rep, rx281_bstack
    pop rx281_pos, rx281_bstack
    pop $I19, rx281_bstack
    lt rx281_pos, -1, rx281_done855
    lt rx281_pos, 0, rx281_fail857
    eq $I19, 0, rx281_fail857
    nqp_islist $I20, rx281_cstack
    unless $I20, rx281_jump858
    elements $I18, rx281_bstack
    le $I18, 0, rx281_cut859
    dec $I18
    set $I18, rx281_bstack[$I18]
  rx281_cut859:
    assign rx281_cstack, $I18
  rx281_jump858:
    jump $I19
  rx281_done855:
    rx281_cur."!cursor_fail"()
    .return (rx281_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_62_1347804160.506_caps" :subid("cuid_memo_120_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_62_1347804160.506_nfa" :subid("cuid_memo_121_1347804160.506")
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
.sub "backslash:sym<h>" :subid("cuid_63_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx284_restart868
    gt rx284_pos, rx284_eos, rx284_fail869
    repr_get_attr_int $I11, self, rx284_curclass, "$!from"
    ne $I11, -1, rxscan285_done875
    goto rxscan285_scan874
  rxscan285_loop873:
    inc rx284_pos
    gt rx284_pos, rx284_eos, rx284_fail869
    repr_bind_attr_int rx284_cur, rx284_curclass, "$!from", rx284_pos
  rxscan285_scan874:
    nqp_rxmark rx284_bstack, rxscan285_loop873, rx284_pos, 0
  rxscan285_done875:
    nqp_rxmark rx284_bstack, rxcap286_fail877, rx284_pos, 0
    ge rx284_pos, rx284_eos, rx284_fail869
    substr $S11, rx284_tgt, rx284_pos, 1
    index $I11, ucs4:"hH", $S11
    lt $I11, 0, rx284_fail869
    inc rx284_pos
    nqp_rxpeek $I19, rx284_bstack, rxcap286_fail877
    inc $I19
    set $I11, rx284_bstack[$I19]
    $P11 = rx284_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx284_pos)
    rx284_cstack = rx284_cur."!cursor_capture"($P11, "sym")
    goto rxcap286_done876
  rxcap286_fail877:
    goto rx284_fail869
  rxcap286_done876:
    rx284_cur."!cursor_pass"(rx284_pos, "backslash:sym<h>", 'backtrack'=>1)
    .return (rx284_cur)
  rx284_restart868:
    repr_get_attr_obj rx284_cstack, rx284_cur, rx284_curclass, "$!cstack"
  rx284_fail869:
    unless rx284_bstack, rx284_done867
    pop $I19, rx284_bstack
    if_null rx284_cstack, rx284_cstack_done872
    unless rx284_cstack, rx284_cstack_done872
    dec $I19
    set $P11, rx284_cstack[$I19]
  rx284_cstack_done872:
    pop rx284_rep, rx284_bstack
    pop rx284_pos, rx284_bstack
    pop $I19, rx284_bstack
    lt rx284_pos, -1, rx284_done867
    lt rx284_pos, 0, rx284_fail869
    eq $I19, 0, rx284_fail869
    nqp_islist $I20, rx284_cstack
    unless $I20, rx284_jump870
    elements $I18, rx284_bstack
    le $I18, 0, rx284_cut871
    dec $I18
    set $I18, rx284_bstack[$I18]
  rx284_cut871:
    assign rx284_cstack, $I18
  rx284_jump870:
    jump $I19
  rx284_done867:
    rx284_cur."!cursor_fail"()
    .return (rx284_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_63_1347804160.506_caps" :subid("cuid_memo_122_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_63_1347804160.506_nfa" :subid("cuid_memo_123_1347804160.506")
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
.sub "backslash:sym<r>" :subid("cuid_64_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx287_restart880
    gt rx287_pos, rx287_eos, rx287_fail881
    repr_get_attr_int $I11, self, rx287_curclass, "$!from"
    ne $I11, -1, rxscan288_done887
    goto rxscan288_scan886
  rxscan288_loop885:
    inc rx287_pos
    gt rx287_pos, rx287_eos, rx287_fail881
    repr_bind_attr_int rx287_cur, rx287_curclass, "$!from", rx287_pos
  rxscan288_scan886:
    nqp_rxmark rx287_bstack, rxscan288_loop885, rx287_pos, 0
  rxscan288_done887:
    nqp_rxmark rx287_bstack, rxcap289_fail889, rx287_pos, 0
    ge rx287_pos, rx287_eos, rx287_fail881
    substr $S11, rx287_tgt, rx287_pos, 1
    index $I11, ucs4:"rR", $S11
    lt $I11, 0, rx287_fail881
    inc rx287_pos
    nqp_rxpeek $I19, rx287_bstack, rxcap289_fail889
    inc $I19
    set $I11, rx287_bstack[$I19]
    $P11 = rx287_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx287_pos)
    rx287_cstack = rx287_cur."!cursor_capture"($P11, "sym")
    goto rxcap289_done888
  rxcap289_fail889:
    goto rx287_fail881
  rxcap289_done888:
    rx287_cur."!cursor_pass"(rx287_pos, "backslash:sym<r>", 'backtrack'=>1)
    .return (rx287_cur)
  rx287_restart880:
    repr_get_attr_obj rx287_cstack, rx287_cur, rx287_curclass, "$!cstack"
  rx287_fail881:
    unless rx287_bstack, rx287_done879
    pop $I19, rx287_bstack
    if_null rx287_cstack, rx287_cstack_done884
    unless rx287_cstack, rx287_cstack_done884
    dec $I19
    set $P11, rx287_cstack[$I19]
  rx287_cstack_done884:
    pop rx287_rep, rx287_bstack
    pop rx287_pos, rx287_bstack
    pop $I19, rx287_bstack
    lt rx287_pos, -1, rx287_done879
    lt rx287_pos, 0, rx287_fail881
    eq $I19, 0, rx287_fail881
    nqp_islist $I20, rx287_cstack
    unless $I20, rx287_jump882
    elements $I18, rx287_bstack
    le $I18, 0, rx287_cut883
    dec $I18
    set $I18, rx287_bstack[$I18]
  rx287_cut883:
    assign rx287_cstack, $I18
  rx287_jump882:
    jump $I19
  rx287_done879:
    rx287_cur."!cursor_fail"()
    .return (rx287_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_64_1347804160.506_caps" :subid("cuid_memo_124_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_64_1347804160.506_nfa" :subid("cuid_memo_125_1347804160.506")
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
.sub "backslash:sym<t>" :subid("cuid_65_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx290_restart892
    gt rx290_pos, rx290_eos, rx290_fail893
    repr_get_attr_int $I11, self, rx290_curclass, "$!from"
    ne $I11, -1, rxscan291_done899
    goto rxscan291_scan898
  rxscan291_loop897:
    inc rx290_pos
    gt rx290_pos, rx290_eos, rx290_fail893
    repr_bind_attr_int rx290_cur, rx290_curclass, "$!from", rx290_pos
  rxscan291_scan898:
    nqp_rxmark rx290_bstack, rxscan291_loop897, rx290_pos, 0
  rxscan291_done899:
    nqp_rxmark rx290_bstack, rxcap292_fail901, rx290_pos, 0
    ge rx290_pos, rx290_eos, rx290_fail893
    substr $S11, rx290_tgt, rx290_pos, 1
    index $I11, ucs4:"tT", $S11
    lt $I11, 0, rx290_fail893
    inc rx290_pos
    nqp_rxpeek $I19, rx290_bstack, rxcap292_fail901
    inc $I19
    set $I11, rx290_bstack[$I19]
    $P11 = rx290_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx290_pos)
    rx290_cstack = rx290_cur."!cursor_capture"($P11, "sym")
    goto rxcap292_done900
  rxcap292_fail901:
    goto rx290_fail893
  rxcap292_done900:
    rx290_cur."!cursor_pass"(rx290_pos, "backslash:sym<t>", 'backtrack'=>1)
    .return (rx290_cur)
  rx290_restart892:
    repr_get_attr_obj rx290_cstack, rx290_cur, rx290_curclass, "$!cstack"
  rx290_fail893:
    unless rx290_bstack, rx290_done891
    pop $I19, rx290_bstack
    if_null rx290_cstack, rx290_cstack_done896
    unless rx290_cstack, rx290_cstack_done896
    dec $I19
    set $P11, rx290_cstack[$I19]
  rx290_cstack_done896:
    pop rx290_rep, rx290_bstack
    pop rx290_pos, rx290_bstack
    pop $I19, rx290_bstack
    lt rx290_pos, -1, rx290_done891
    lt rx290_pos, 0, rx290_fail893
    eq $I19, 0, rx290_fail893
    nqp_islist $I20, rx290_cstack
    unless $I20, rx290_jump894
    elements $I18, rx290_bstack
    le $I18, 0, rx290_cut895
    dec $I18
    set $I18, rx290_bstack[$I18]
  rx290_cut895:
    assign rx290_cstack, $I18
  rx290_jump894:
    jump $I19
  rx290_done891:
    rx290_cur."!cursor_fail"()
    .return (rx290_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_65_1347804160.506_caps" :subid("cuid_memo_126_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_65_1347804160.506_nfa" :subid("cuid_memo_127_1347804160.506")
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
.sub "backslash:sym<v>" :subid("cuid_66_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx293_restart904
    gt rx293_pos, rx293_eos, rx293_fail905
    repr_get_attr_int $I11, self, rx293_curclass, "$!from"
    ne $I11, -1, rxscan294_done911
    goto rxscan294_scan910
  rxscan294_loop909:
    inc rx293_pos
    gt rx293_pos, rx293_eos, rx293_fail905
    repr_bind_attr_int rx293_cur, rx293_curclass, "$!from", rx293_pos
  rxscan294_scan910:
    nqp_rxmark rx293_bstack, rxscan294_loop909, rx293_pos, 0
  rxscan294_done911:
    nqp_rxmark rx293_bstack, rxcap295_fail913, rx293_pos, 0
    ge rx293_pos, rx293_eos, rx293_fail905
    substr $S11, rx293_tgt, rx293_pos, 1
    index $I11, ucs4:"vV", $S11
    lt $I11, 0, rx293_fail905
    inc rx293_pos
    nqp_rxpeek $I19, rx293_bstack, rxcap295_fail913
    inc $I19
    set $I11, rx293_bstack[$I19]
    $P11 = rx293_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx293_pos)
    rx293_cstack = rx293_cur."!cursor_capture"($P11, "sym")
    goto rxcap295_done912
  rxcap295_fail913:
    goto rx293_fail905
  rxcap295_done912:
    rx293_cur."!cursor_pass"(rx293_pos, "backslash:sym<v>", 'backtrack'=>1)
    .return (rx293_cur)
  rx293_restart904:
    repr_get_attr_obj rx293_cstack, rx293_cur, rx293_curclass, "$!cstack"
  rx293_fail905:
    unless rx293_bstack, rx293_done903
    pop $I19, rx293_bstack
    if_null rx293_cstack, rx293_cstack_done908
    unless rx293_cstack, rx293_cstack_done908
    dec $I19
    set $P11, rx293_cstack[$I19]
  rx293_cstack_done908:
    pop rx293_rep, rx293_bstack
    pop rx293_pos, rx293_bstack
    pop $I19, rx293_bstack
    lt rx293_pos, -1, rx293_done903
    lt rx293_pos, 0, rx293_fail905
    eq $I19, 0, rx293_fail905
    nqp_islist $I20, rx293_cstack
    unless $I20, rx293_jump906
    elements $I18, rx293_bstack
    le $I18, 0, rx293_cut907
    dec $I18
    set $I18, rx293_bstack[$I18]
  rx293_cut907:
    assign rx293_cstack, $I18
  rx293_jump906:
    jump $I19
  rx293_done903:
    rx293_cur."!cursor_fail"()
    .return (rx293_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_66_1347804160.506_caps" :subid("cuid_memo_128_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_66_1347804160.506_nfa" :subid("cuid_memo_129_1347804160.506")
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
.sub "backslash:sym<o>" :subid("cuid_67_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx296_restart916
    gt rx296_pos, rx296_eos, rx296_fail917
    repr_get_attr_int $I11, self, rx296_curclass, "$!from"
    ne $I11, -1, rxscan297_done923
    goto rxscan297_scan922
  rxscan297_loop921:
    inc rx296_pos
    gt rx296_pos, rx296_eos, rx296_fail917
    repr_bind_attr_int rx296_cur, rx296_curclass, "$!from", rx296_pos
  rxscan297_scan922:
    nqp_rxmark rx296_bstack, rxscan297_loop921, rx296_pos, 0
  rxscan297_done923:
    nqp_rxmark rx296_bstack, rxcap298_fail925, rx296_pos, 0
    ge rx296_pos, rx296_eos, rx296_fail917
    substr $S11, rx296_tgt, rx296_pos, 1
    index $I11, ucs4:"oO", $S11
    lt $I11, 0, rx296_fail917
    inc rx296_pos
    nqp_rxpeek $I19, rx296_bstack, rxcap298_fail925
    inc $I19
    set $I11, rx296_bstack[$I19]
    $P11 = rx296_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx296_pos)
    rx296_cstack = rx296_cur."!cursor_capture"($P11, "sym")
    goto rxcap298_done924
  rxcap298_fail925:
    goto rx296_fail917
  rxcap298_done924:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt299_0927
    nqp_push_label $P11, alt299_1929
    nqp_rxmark rx296_bstack, alt299_end926, -1, 0
    rx296_cur."!alt"(rx296_pos, "alt_nfa__11_1347804161.127", $P11)
    goto rx296_fail917
  alt299_0927:
    repr_bind_attr_int rx296_cur, rx296_curclass, "$!pos", rx296_pos
    $P11 = rx296_cur."octint"()
    repr_get_attr_int $I11, $P11, rx296_curclass, "$!pos"
    lt $I11, 0, rx296_fail917
    nqp_rxmark rx296_bstack, rxsubrule300_pass928, -1, 0
  rxsubrule300_pass928:
    rx296_cstack = rx296_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx296_pos, $P11, rx296_curclass, "$!pos"
    goto alt299_end926
  alt299_1929:
    add $I11, rx296_pos, 1
    gt $I11, rx296_eos, rx296_fail917
    substr $S10, rx296_tgt, rx296_pos, 1
    ne $S10, ucs4:"[", rx296_fail917
    add rx296_pos, 1
    repr_bind_attr_int rx296_cur, rx296_curclass, "$!pos", rx296_pos
    $P11 = rx296_cur."octints"()
    repr_get_attr_int $I11, $P11, rx296_curclass, "$!pos"
    lt $I11, 0, rx296_fail917
    nqp_rxmark rx296_bstack, rxsubrule301_pass930, -1, 0
  rxsubrule301_pass930:
    rx296_cstack = rx296_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx296_pos, $P11, rx296_curclass, "$!pos"
    add $I11, rx296_pos, 1
    gt $I11, rx296_eos, rx296_fail917
    substr $S10, rx296_tgt, rx296_pos, 1
    ne $S10, ucs4:"]", rx296_fail917
    add rx296_pos, 1
    goto alt299_end926
  alt299_end926:
    nqp_rxcommit rx296_bstack, alt299_end926
    rx296_cur."!cursor_pass"(rx296_pos, "backslash:sym<o>", 'backtrack'=>1)
    .return (rx296_cur)
  rx296_restart916:
    repr_get_attr_obj rx296_cstack, rx296_cur, rx296_curclass, "$!cstack"
  rx296_fail917:
    unless rx296_bstack, rx296_done915
    pop $I19, rx296_bstack
    if_null rx296_cstack, rx296_cstack_done920
    unless rx296_cstack, rx296_cstack_done920
    dec $I19
    set $P11, rx296_cstack[$I19]
  rx296_cstack_done920:
    pop rx296_rep, rx296_bstack
    pop rx296_pos, rx296_bstack
    pop $I19, rx296_bstack
    lt rx296_pos, -1, rx296_done915
    lt rx296_pos, 0, rx296_fail917
    eq $I19, 0, rx296_fail917
    nqp_islist $I20, rx296_cstack
    unless $I20, rx296_jump918
    elements $I18, rx296_bstack
    le $I18, 0, rx296_cut919
    dec $I18
    set $I18, rx296_bstack[$I18]
  rx296_cut919:
    assign rx296_cstack, $I18
  rx296_jump918:
    jump $I19
  rx296_done915:
    rx296_cur."!cursor_fail"()
    .return (rx296_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_67_1347804160.506_caps" :subid("cuid_memo_130_1347804160.506")
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
.sub "cuid_67_1347804160.506_nfa" :subid("cuid_memo_131_1347804160.506")
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
.sub "cuid_67_1347804160.506_alt_nfa__11_1347804161.127" :subid("cuid_memo_132_1347804160.506")
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
.sub "backslash:sym<x>" :subid("cuid_68_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx302_restart933
    gt rx302_pos, rx302_eos, rx302_fail934
    repr_get_attr_int $I11, self, rx302_curclass, "$!from"
    ne $I11, -1, rxscan303_done940
    goto rxscan303_scan939
  rxscan303_loop938:
    inc rx302_pos
    gt rx302_pos, rx302_eos, rx302_fail934
    repr_bind_attr_int rx302_cur, rx302_curclass, "$!from", rx302_pos
  rxscan303_scan939:
    nqp_rxmark rx302_bstack, rxscan303_loop938, rx302_pos, 0
  rxscan303_done940:
    nqp_rxmark rx302_bstack, rxcap304_fail942, rx302_pos, 0
    ge rx302_pos, rx302_eos, rx302_fail934
    substr $S11, rx302_tgt, rx302_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx302_fail934
    inc rx302_pos
    nqp_rxpeek $I19, rx302_bstack, rxcap304_fail942
    inc $I19
    set $I11, rx302_bstack[$I19]
    $P11 = rx302_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx302_pos)
    rx302_cstack = rx302_cur."!cursor_capture"($P11, "sym")
    goto rxcap304_done941
  rxcap304_fail942:
    goto rx302_fail934
  rxcap304_done941:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt305_0944
    nqp_push_label $P11, alt305_1946
    nqp_rxmark rx302_bstack, alt305_end943, -1, 0
    rx302_cur."!alt"(rx302_pos, "alt_nfa__12_1347804161.139", $P11)
    goto rx302_fail934
  alt305_0944:
    repr_bind_attr_int rx302_cur, rx302_curclass, "$!pos", rx302_pos
    $P11 = rx302_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx302_curclass, "$!pos"
    lt $I11, 0, rx302_fail934
    nqp_rxmark rx302_bstack, rxsubrule306_pass945, -1, 0
  rxsubrule306_pass945:
    rx302_cstack = rx302_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx302_pos, $P11, rx302_curclass, "$!pos"
    goto alt305_end943
  alt305_1946:
    add $I11, rx302_pos, 1
    gt $I11, rx302_eos, rx302_fail934
    substr $S10, rx302_tgt, rx302_pos, 1
    ne $S10, ucs4:"[", rx302_fail934
    add rx302_pos, 1
    repr_bind_attr_int rx302_cur, rx302_curclass, "$!pos", rx302_pos
    $P11 = rx302_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx302_curclass, "$!pos"
    lt $I11, 0, rx302_fail934
    nqp_rxmark rx302_bstack, rxsubrule307_pass947, -1, 0
  rxsubrule307_pass947:
    rx302_cstack = rx302_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx302_pos, $P11, rx302_curclass, "$!pos"
    add $I11, rx302_pos, 1
    gt $I11, rx302_eos, rx302_fail934
    substr $S10, rx302_tgt, rx302_pos, 1
    ne $S10, ucs4:"]", rx302_fail934
    add rx302_pos, 1
    goto alt305_end943
  alt305_end943:
    nqp_rxcommit rx302_bstack, alt305_end943
    rx302_cur."!cursor_pass"(rx302_pos, "backslash:sym<x>", 'backtrack'=>1)
    .return (rx302_cur)
  rx302_restart933:
    repr_get_attr_obj rx302_cstack, rx302_cur, rx302_curclass, "$!cstack"
  rx302_fail934:
    unless rx302_bstack, rx302_done932
    pop $I19, rx302_bstack
    if_null rx302_cstack, rx302_cstack_done937
    unless rx302_cstack, rx302_cstack_done937
    dec $I19
    set $P11, rx302_cstack[$I19]
  rx302_cstack_done937:
    pop rx302_rep, rx302_bstack
    pop rx302_pos, rx302_bstack
    pop $I19, rx302_bstack
    lt rx302_pos, -1, rx302_done932
    lt rx302_pos, 0, rx302_fail934
    eq $I19, 0, rx302_fail934
    nqp_islist $I20, rx302_cstack
    unless $I20, rx302_jump935
    elements $I18, rx302_bstack
    le $I18, 0, rx302_cut936
    dec $I18
    set $I18, rx302_bstack[$I18]
  rx302_cut936:
    assign rx302_cstack, $I18
  rx302_jump935:
    jump $I19
  rx302_done932:
    rx302_cur."!cursor_fail"()
    .return (rx302_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_68_1347804160.506_caps" :subid("cuid_memo_133_1347804160.506")
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
.sub "cuid_68_1347804160.506_nfa" :subid("cuid_memo_134_1347804160.506")
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
.sub "cuid_68_1347804160.506_alt_nfa__12_1347804161.139" :subid("cuid_memo_135_1347804160.506")
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
.sub "backslash:sym<c>" :subid("cuid_69_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx308_restart950
    gt rx308_pos, rx308_eos, rx308_fail951
    repr_get_attr_int $I11, self, rx308_curclass, "$!from"
    ne $I11, -1, rxscan309_done957
    goto rxscan309_scan956
  rxscan309_loop955:
    inc rx308_pos
    gt rx308_pos, rx308_eos, rx308_fail951
    repr_bind_attr_int rx308_cur, rx308_curclass, "$!from", rx308_pos
  rxscan309_scan956:
    nqp_rxmark rx308_bstack, rxscan309_loop955, rx308_pos, 0
  rxscan309_done957:
    nqp_rxmark rx308_bstack, rxcap310_fail959, rx308_pos, 0
    ge rx308_pos, rx308_eos, rx308_fail951
    substr $S11, rx308_tgt, rx308_pos, 1
    index $I11, ucs4:"cC", $S11
    lt $I11, 0, rx308_fail951
    inc rx308_pos
    nqp_rxpeek $I19, rx308_bstack, rxcap310_fail959
    inc $I19
    set $I11, rx308_bstack[$I19]
    $P11 = rx308_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx308_pos)
    rx308_cstack = rx308_cur."!cursor_capture"($P11, "sym")
    goto rxcap310_done958
  rxcap310_fail959:
    goto rx308_fail951
  rxcap310_done958:
    repr_bind_attr_int rx308_cur, rx308_curclass, "$!pos", rx308_pos
    $P11 = rx308_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx308_curclass, "$!pos"
    lt $I11, 0, rx308_fail951
    nqp_rxmark rx308_bstack, rxsubrule311_pass960, -1, 0
  rxsubrule311_pass960:
    rx308_cstack = rx308_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx308_pos, $P11, rx308_curclass, "$!pos"
    rx308_cur."!cursor_pass"(rx308_pos, "backslash:sym<c>", 'backtrack'=>1)
    .return (rx308_cur)
  rx308_restart950:
    repr_get_attr_obj rx308_cstack, rx308_cur, rx308_curclass, "$!cstack"
  rx308_fail951:
    unless rx308_bstack, rx308_done949
    pop $I19, rx308_bstack
    if_null rx308_cstack, rx308_cstack_done954
    unless rx308_cstack, rx308_cstack_done954
    dec $I19
    set $P11, rx308_cstack[$I19]
  rx308_cstack_done954:
    pop rx308_rep, rx308_bstack
    pop rx308_pos, rx308_bstack
    pop $I19, rx308_bstack
    lt rx308_pos, -1, rx308_done949
    lt rx308_pos, 0, rx308_fail951
    eq $I19, 0, rx308_fail951
    nqp_islist $I20, rx308_cstack
    unless $I20, rx308_jump952
    elements $I18, rx308_bstack
    le $I18, 0, rx308_cut953
    dec $I18
    set $I18, rx308_bstack[$I18]
  rx308_cut953:
    assign rx308_cstack, $I18
  rx308_jump952:
    jump $I19
  rx308_done949:
    rx308_cur."!cursor_fail"()
    .return (rx308_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_69_1347804160.506_caps" :subid("cuid_memo_136_1347804160.506")
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
.sub "cuid_69_1347804160.506_nfa" :subid("cuid_memo_137_1347804160.506")
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
.sub "backslash:sym<A>" :subid("cuid_70_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx312_restart963
    gt rx312_pos, rx312_eos, rx312_fail964
    repr_get_attr_int $I11, self, rx312_curclass, "$!from"
    ne $I11, -1, rxscan313_done970
    goto rxscan313_scan969
  rxscan313_loop968:
    inc rx312_pos
    gt rx312_pos, rx312_eos, rx312_fail964
    repr_bind_attr_int rx312_cur, rx312_curclass, "$!from", rx312_pos
  rxscan313_scan969:
    nqp_rxmark rx312_bstack, rxscan313_loop968, rx312_pos, 0
  rxscan313_done970:
    add $I11, rx312_pos, 1
    gt $I11, rx312_eos, rx312_fail964
    substr $S10, rx312_tgt, rx312_pos, 1
    ne $S10, ucs4:"A", rx312_fail964
    add rx312_pos, 1
    repr_bind_attr_int rx312_cur, rx312_curclass, "$!pos", rx312_pos
    $P11 = rx312_cur."obs"("\\\\A as beginning-of-string matcher", "^")
    repr_get_attr_int $I11, $P11, rx312_curclass, "$!pos"
    lt $I11, 0, rx312_fail964
    repr_get_attr_int rx312_pos, $P11, rx312_curclass, "$!pos"
    rx312_cur."!cursor_pass"(rx312_pos, "backslash:sym<A>", 'backtrack'=>1)
    .return (rx312_cur)
  rx312_restart963:
    repr_get_attr_obj rx312_cstack, rx312_cur, rx312_curclass, "$!cstack"
  rx312_fail964:
    unless rx312_bstack, rx312_done962
    pop $I19, rx312_bstack
    if_null rx312_cstack, rx312_cstack_done967
    unless rx312_cstack, rx312_cstack_done967
    dec $I19
    set $P11, rx312_cstack[$I19]
  rx312_cstack_done967:
    pop rx312_rep, rx312_bstack
    pop rx312_pos, rx312_bstack
    pop $I19, rx312_bstack
    lt rx312_pos, -1, rx312_done962
    lt rx312_pos, 0, rx312_fail964
    eq $I19, 0, rx312_fail964
    nqp_islist $I20, rx312_cstack
    unless $I20, rx312_jump965
    elements $I18, rx312_bstack
    le $I18, 0, rx312_cut966
    dec $I18
    set $I18, rx312_bstack[$I18]
  rx312_cut966:
    assign rx312_cstack, $I18
  rx312_jump965:
    jump $I19
  rx312_done962:
    rx312_cur."!cursor_fail"()
    .return (rx312_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_70_1347804160.506_caps" :subid("cuid_memo_138_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_70_1347804160.506_nfa" :subid("cuid_memo_139_1347804160.506")
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
.sub "backslash:sym<z>" :subid("cuid_71_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx315_restart974
    gt rx315_pos, rx315_eos, rx315_fail975
    repr_get_attr_int $I11, self, rx315_curclass, "$!from"
    ne $I11, -1, rxscan316_done981
    goto rxscan316_scan980
  rxscan316_loop979:
    inc rx315_pos
    gt rx315_pos, rx315_eos, rx315_fail975
    repr_bind_attr_int rx315_cur, rx315_curclass, "$!from", rx315_pos
  rxscan316_scan980:
    nqp_rxmark rx315_bstack, rxscan316_loop979, rx315_pos, 0
  rxscan316_done981:
    add $I11, rx315_pos, 1
    gt $I11, rx315_eos, rx315_fail975
    substr $S10, rx315_tgt, rx315_pos, 1
    ne $S10, ucs4:"z", rx315_fail975
    add rx315_pos, 1
    repr_bind_attr_int rx315_cur, rx315_curclass, "$!pos", rx315_pos
    $P11 = rx315_cur."obs"("\\\\z as end-of-string matcher", "$")
    repr_get_attr_int $I11, $P11, rx315_curclass, "$!pos"
    lt $I11, 0, rx315_fail975
    repr_get_attr_int rx315_pos, $P11, rx315_curclass, "$!pos"
    rx315_cur."!cursor_pass"(rx315_pos, "backslash:sym<z>", 'backtrack'=>1)
    .return (rx315_cur)
  rx315_restart974:
    repr_get_attr_obj rx315_cstack, rx315_cur, rx315_curclass, "$!cstack"
  rx315_fail975:
    unless rx315_bstack, rx315_done973
    pop $I19, rx315_bstack
    if_null rx315_cstack, rx315_cstack_done978
    unless rx315_cstack, rx315_cstack_done978
    dec $I19
    set $P11, rx315_cstack[$I19]
  rx315_cstack_done978:
    pop rx315_rep, rx315_bstack
    pop rx315_pos, rx315_bstack
    pop $I19, rx315_bstack
    lt rx315_pos, -1, rx315_done973
    lt rx315_pos, 0, rx315_fail975
    eq $I19, 0, rx315_fail975
    nqp_islist $I20, rx315_cstack
    unless $I20, rx315_jump976
    elements $I18, rx315_bstack
    le $I18, 0, rx315_cut977
    dec $I18
    set $I18, rx315_bstack[$I18]
  rx315_cut977:
    assign rx315_cstack, $I18
  rx315_jump976:
    jump $I19
  rx315_done973:
    rx315_cur."!cursor_fail"()
    .return (rx315_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_71_1347804160.506_caps" :subid("cuid_memo_140_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_71_1347804160.506_nfa" :subid("cuid_memo_141_1347804160.506")
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
.sub "backslash:sym<Z>" :subid("cuid_72_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx318_restart985
    gt rx318_pos, rx318_eos, rx318_fail986
    repr_get_attr_int $I11, self, rx318_curclass, "$!from"
    ne $I11, -1, rxscan319_done992
    goto rxscan319_scan991
  rxscan319_loop990:
    inc rx318_pos
    gt rx318_pos, rx318_eos, rx318_fail986
    repr_bind_attr_int rx318_cur, rx318_curclass, "$!from", rx318_pos
  rxscan319_scan991:
    nqp_rxmark rx318_bstack, rxscan319_loop990, rx318_pos, 0
  rxscan319_done992:
    add $I11, rx318_pos, 1
    gt $I11, rx318_eos, rx318_fail986
    substr $S10, rx318_tgt, rx318_pos, 1
    ne $S10, ucs4:"Z", rx318_fail986
    add rx318_pos, 1
    repr_bind_attr_int rx318_cur, rx318_curclass, "$!pos", rx318_pos
    $P11 = rx318_cur."obs"("\\\\Z as end-of-string matcher", "\\\\n?$")
    repr_get_attr_int $I11, $P11, rx318_curclass, "$!pos"
    lt $I11, 0, rx318_fail986
    repr_get_attr_int rx318_pos, $P11, rx318_curclass, "$!pos"
    rx318_cur."!cursor_pass"(rx318_pos, "backslash:sym<Z>", 'backtrack'=>1)
    .return (rx318_cur)
  rx318_restart985:
    repr_get_attr_obj rx318_cstack, rx318_cur, rx318_curclass, "$!cstack"
  rx318_fail986:
    unless rx318_bstack, rx318_done984
    pop $I19, rx318_bstack
    if_null rx318_cstack, rx318_cstack_done989
    unless rx318_cstack, rx318_cstack_done989
    dec $I19
    set $P11, rx318_cstack[$I19]
  rx318_cstack_done989:
    pop rx318_rep, rx318_bstack
    pop rx318_pos, rx318_bstack
    pop $I19, rx318_bstack
    lt rx318_pos, -1, rx318_done984
    lt rx318_pos, 0, rx318_fail986
    eq $I19, 0, rx318_fail986
    nqp_islist $I20, rx318_cstack
    unless $I20, rx318_jump987
    elements $I18, rx318_bstack
    le $I18, 0, rx318_cut988
    dec $I18
    set $I18, rx318_bstack[$I18]
  rx318_cut988:
    assign rx318_cstack, $I18
  rx318_jump987:
    jump $I19
  rx318_done984:
    rx318_cur."!cursor_fail"()
    .return (rx318_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_72_1347804160.506_caps" :subid("cuid_memo_142_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_72_1347804160.506_nfa" :subid("cuid_memo_143_1347804160.506")
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
.sub "backslash:sym<Q>" :subid("cuid_73_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx321_restart996
    gt rx321_pos, rx321_eos, rx321_fail997
    repr_get_attr_int $I11, self, rx321_curclass, "$!from"
    ne $I11, -1, rxscan322_done1003
    goto rxscan322_scan1002
  rxscan322_loop1001:
    inc rx321_pos
    gt rx321_pos, rx321_eos, rx321_fail997
    repr_bind_attr_int rx321_cur, rx321_curclass, "$!from", rx321_pos
  rxscan322_scan1002:
    nqp_rxmark rx321_bstack, rxscan322_loop1001, rx321_pos, 0
  rxscan322_done1003:
    add $I11, rx321_pos, 1
    gt $I11, rx321_eos, rx321_fail997
    substr $S10, rx321_tgt, rx321_pos, 1
    ne $S10, ucs4:"Q", rx321_fail997
    add rx321_pos, 1
    repr_bind_attr_int rx321_cur, rx321_curclass, "$!pos", rx321_pos
    $P11 = rx321_cur."obs"("\\\\Q as quotemeta", "quotes or literal variable match")
    repr_get_attr_int $I11, $P11, rx321_curclass, "$!pos"
    lt $I11, 0, rx321_fail997
    repr_get_attr_int rx321_pos, $P11, rx321_curclass, "$!pos"
    rx321_cur."!cursor_pass"(rx321_pos, "backslash:sym<Q>", 'backtrack'=>1)
    .return (rx321_cur)
  rx321_restart996:
    repr_get_attr_obj rx321_cstack, rx321_cur, rx321_curclass, "$!cstack"
  rx321_fail997:
    unless rx321_bstack, rx321_done995
    pop $I19, rx321_bstack
    if_null rx321_cstack, rx321_cstack_done1000
    unless rx321_cstack, rx321_cstack_done1000
    dec $I19
    set $P11, rx321_cstack[$I19]
  rx321_cstack_done1000:
    pop rx321_rep, rx321_bstack
    pop rx321_pos, rx321_bstack
    pop $I19, rx321_bstack
    lt rx321_pos, -1, rx321_done995
    lt rx321_pos, 0, rx321_fail997
    eq $I19, 0, rx321_fail997
    nqp_islist $I20, rx321_cstack
    unless $I20, rx321_jump998
    elements $I18, rx321_bstack
    le $I18, 0, rx321_cut999
    dec $I18
    set $I18, rx321_bstack[$I18]
  rx321_cut999:
    assign rx321_cstack, $I18
  rx321_jump998:
    jump $I19
  rx321_done995:
    rx321_cur."!cursor_fail"()
    .return (rx321_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_73_1347804160.506_caps" :subid("cuid_memo_144_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_73_1347804160.506_nfa" :subid("cuid_memo_145_1347804160.506")
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
.sub "backslash:sym<unrec>" :subid("cuid_74_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 188
    .param pmc _lex_param_0 
    .const 'Sub' $P5004 = 'cuid_164_1347804160.506' 
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
    eq $I19, 1, rx324_restart1007
    gt rx324_pos, rx324_eos, rx324_fail1008
    repr_get_attr_int $I11, self, rx324_curclass, "$!from"
    ne $I11, -1, rxscan325_done1014
    goto rxscan325_scan1013
  rxscan325_loop1012:
    inc rx324_pos
    gt rx324_pos, rx324_eos, rx324_fail1008
    repr_bind_attr_int rx324_cur, rx324_curclass, "$!from", rx324_pos
  rxscan325_scan1013:
    nqp_rxmark rx324_bstack, rxscan325_loop1012, rx324_pos, 0
  rxscan325_done1014:
    repr_bind_attr_int rx324_cur, rx324_curclass, "$!pos", rx324_pos
    store_lex unicode:"$\x{a2}", rx324_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_164_1347804160.506' 
    capture_lex $P5002
    $P5003 = $P5002()
    ge rx324_pos, rx324_eos, rx324_fail1008
    is_cclass $I11, .CCLASS_WORD, rx324_tgt, rx324_pos
    unless $I11, rx324_fail1008
    add rx324_pos, 1
    repr_bind_attr_int rx324_cur, rx324_curclass, "$!pos", rx324_pos
    $P11 = rx324_cur."panic"("Unrecognized backslash sequence")
    repr_get_attr_int $I11, $P11, rx324_curclass, "$!pos"
    lt $I11, 0, rx324_fail1008
    repr_get_attr_int rx324_pos, $P11, rx324_curclass, "$!pos"
    rx324_cur."!cursor_pass"(rx324_pos, "backslash:sym<unrec>", 'backtrack'=>1)
    .return (rx324_cur)
  rx324_restart1007:
    repr_get_attr_obj rx324_cstack, rx324_cur, rx324_curclass, "$!cstack"
  rx324_fail1008:
    unless rx324_bstack, rx324_done1006
    pop $I19, rx324_bstack
    if_null rx324_cstack, rx324_cstack_done1011
    unless rx324_cstack, rx324_cstack_done1011
    dec $I19
    set $P11, rx324_cstack[$I19]
  rx324_cstack_done1011:
    pop rx324_rep, rx324_bstack
    pop rx324_pos, rx324_bstack
    pop $I19, rx324_bstack
    lt rx324_pos, -1, rx324_done1006
    lt rx324_pos, 0, rx324_fail1008
    eq $I19, 0, rx324_fail1008
    nqp_islist $I20, rx324_cstack
    unless $I20, rx324_jump1009
    elements $I18, rx324_bstack
    le $I18, 0, rx324_cut1010
    dec $I18
    set $I18, rx324_bstack[$I18]
  rx324_cut1010:
    assign rx324_cstack, $I18
  rx324_jump1009:
    jump $I19
  rx324_done1006:
    rx324_cur."!cursor_fail"()
    .return (rx324_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_74_1347804160.506_caps" :subid("cuid_memo_146_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1347804160.506") :anon :lex :outer("cuid_74_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 188

    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<misc>" :subid("cuid_75_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx327_restart1018
    gt rx327_pos, rx327_eos, rx327_fail1019
    repr_get_attr_int $I11, self, rx327_curclass, "$!from"
    ne $I11, -1, rxscan328_done1025
    goto rxscan328_scan1024
  rxscan328_loop1023:
    inc rx327_pos
    gt rx327_pos, rx327_eos, rx327_fail1019
    repr_bind_attr_int rx327_cur, rx327_curclass, "$!from", rx327_pos
  rxscan328_scan1024:
    nqp_rxmark rx327_bstack, rxscan328_loop1023, rx327_pos, 0
  rxscan328_done1025:
    ge rx327_pos, rx327_eos, rx327_fail1019
    is_cclass $I11, .CCLASS_WORD, rx327_tgt, rx327_pos
    if $I11, rx327_fail1019
    add rx327_pos, 1
    rx327_cur."!cursor_pass"(rx327_pos, "backslash:sym<misc>", 'backtrack'=>1)
    .return (rx327_cur)
  rx327_restart1018:
    repr_get_attr_obj rx327_cstack, rx327_cur, rx327_curclass, "$!cstack"
  rx327_fail1019:
    unless rx327_bstack, rx327_done1017
    pop $I19, rx327_bstack
    if_null rx327_cstack, rx327_cstack_done1022
    unless rx327_cstack, rx327_cstack_done1022
    dec $I19
    set $P11, rx327_cstack[$I19]
  rx327_cstack_done1022:
    pop rx327_rep, rx327_bstack
    pop rx327_pos, rx327_bstack
    pop $I19, rx327_bstack
    lt rx327_pos, -1, rx327_done1017
    lt rx327_pos, 0, rx327_fail1019
    eq $I19, 0, rx327_fail1019
    nqp_islist $I20, rx327_cstack
    unless $I20, rx327_jump1020
    elements $I18, rx327_bstack
    le $I18, 0, rx327_cut1021
    dec $I18
    set $I18, rx327_bstack[$I18]
  rx327_cut1021:
    assign rx327_cstack, $I18
  rx327_jump1020:
    jump $I19
  rx327_done1017:
    rx327_cur."!cursor_fail"()
    .return (rx327_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_75_1347804160.506_caps" :subid("cuid_memo_147_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_75_1347804160.506_nfa" :subid("cuid_memo_148_1347804160.506")
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
.sub "assertion" :subid("cuid_76_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 191
    .param pmc self 
    $P5001 = self."!protoregex"("assertion")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<?>" :subid("cuid_78_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 193
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_77_1347804160.506' 
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
    eq $I19, 1, rx329_restart1028
    gt rx329_pos, rx329_eos, rx329_fail1029
    repr_get_attr_int $I11, self, rx329_curclass, "$!from"
    ne $I11, -1, rxscan330_done1035
    goto rxscan330_scan1034
  rxscan330_loop1033:
    inc rx329_pos
    gt rx329_pos, rx329_eos, rx329_fail1029
    repr_bind_attr_int rx329_cur, rx329_curclass, "$!from", rx329_pos
  rxscan330_scan1034:
    nqp_rxmark rx329_bstack, rxscan330_loop1033, rx329_pos, 0
  rxscan330_done1035:
    add $I11, rx329_pos, 1
    gt $I11, rx329_eos, rx329_fail1029
    substr $S10, rx329_tgt, rx329_pos, 1
    ne $S10, ucs4:"?", rx329_fail1029
    add rx329_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt331_01037
    nqp_push_label $P11, alt331_11048
    nqp_rxmark rx329_bstack, alt331_end1036, -1, 0
    rx329_cur."!alt"(rx329_pos, "alt_nfa__13_1347804161.204", $P11)
    goto rx329_fail1029
  alt331_01037:
    .const 'Sub' $P5001 = 'cuid_77_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx329_cur, rx329_curclass, "$!pos", rx329_pos
    $P11 = rx329_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx329_curclass, "$!pos"
    lt $I11, 0, rx329_fail1029
    goto alt331_end1036
  alt331_11048:
    repr_bind_attr_int rx329_cur, rx329_curclass, "$!pos", rx329_pos
    $P11 = rx329_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx329_curclass, "$!pos"
    lt $I11, 0, rx329_fail1029
    nqp_rxmark rx329_bstack, rxsubrule334_pass1049, -1, 0
  rxsubrule334_pass1049:
    rx329_cstack = rx329_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx329_pos, $P11, rx329_curclass, "$!pos"
    goto alt331_end1036
  alt331_end1036:
    nqp_rxcommit rx329_bstack, alt331_end1036
    rx329_cur."!cursor_pass"(rx329_pos, "assertion:sym<?>", 'backtrack'=>1)
    .return (rx329_cur)
  rx329_restart1028:
    repr_get_attr_obj rx329_cstack, rx329_cur, rx329_curclass, "$!cstack"
  rx329_fail1029:
    unless rx329_bstack, rx329_done1027
    pop $I19, rx329_bstack
    if_null rx329_cstack, rx329_cstack_done1032
    unless rx329_cstack, rx329_cstack_done1032
    dec $I19
    set $P11, rx329_cstack[$I19]
  rx329_cstack_done1032:
    pop rx329_rep, rx329_bstack
    pop rx329_pos, rx329_bstack
    pop $I19, rx329_bstack
    lt rx329_pos, -1, rx329_done1027
    lt rx329_pos, 0, rx329_fail1029
    eq $I19, 0, rx329_fail1029
    nqp_islist $I20, rx329_cstack
    unless $I20, rx329_jump1030
    elements $I18, rx329_bstack
    le $I18, 0, rx329_cut1031
    dec $I18
    set $I18, rx329_bstack[$I18]
  rx329_cut1031:
    assign rx329_cstack, $I18
  rx329_jump1030:
    jump $I19
  rx329_done1027:
    rx329_cur."!cursor_fail"()
    .return (rx329_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_78_1347804160.506_caps" :subid("cuid_memo_149_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_78_1347804160.506_nfa" :subid("cuid_memo_150_1347804160.506")
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
.sub "cuid_78_1347804160.506_alt_nfa__13_1347804161.204" :subid("cuid_memo_151_1347804160.506")
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
.sub "" :subid("cuid_77_1347804160.506") :anon :lex :outer("cuid_78_1347804160.506")
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
    eq $I19, 1, rx332_restart1040
    gt rx332_pos, rx332_eos, rx332_fail1041
    repr_get_attr_int $I11, self, rx332_curclass, "$!from"
    ne $I11, -1, rxscan333_done1047
    goto rxscan333_scan1046
  rxscan333_loop1045:
    inc rx332_pos
    gt rx332_pos, rx332_eos, rx332_fail1041
    repr_bind_attr_int rx332_cur, rx332_curclass, "$!from", rx332_pos
  rxscan333_scan1046:
    nqp_rxmark rx332_bstack, rxscan333_loop1045, rx332_pos, 0
  rxscan333_done1047:
    add $I11, rx332_pos, 1
    gt $I11, rx332_eos, rx332_fail1041
    substr $S10, rx332_tgt, rx332_pos, 1
    ne $S10, ucs4:">", rx332_fail1041
    add rx332_pos, 1
    rx332_cur."!cursor_pass"(rx332_pos, 'backtrack'=>1)
    .return (rx332_cur)
  rx332_restart1040:
    repr_get_attr_obj rx332_cstack, rx332_cur, rx332_curclass, "$!cstack"
  rx332_fail1041:
    unless rx332_bstack, rx332_done1039
    pop $I19, rx332_bstack
    if_null rx332_cstack, rx332_cstack_done1044
    unless rx332_cstack, rx332_cstack_done1044
    dec $I19
    set $P11, rx332_cstack[$I19]
  rx332_cstack_done1044:
    pop rx332_rep, rx332_bstack
    pop rx332_pos, rx332_bstack
    pop $I19, rx332_bstack
    lt rx332_pos, -1, rx332_done1039
    lt rx332_pos, 0, rx332_fail1041
    eq $I19, 0, rx332_fail1041
    nqp_islist $I20, rx332_cstack
    unless $I20, rx332_jump1042
    elements $I18, rx332_bstack
    le $I18, 0, rx332_cut1043
    dec $I18
    set $I18, rx332_bstack[$I18]
  rx332_cut1043:
    assign rx332_cstack, $I18
  rx332_jump1042:
    jump $I19
  rx332_done1039:
    rx332_cur."!cursor_fail"()
    .return (rx332_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_77_1347804160.506_caps" :subid("cuid_memo_152_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_77_1347804160.506_nfa" :subid("cuid_memo_153_1347804160.506")
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
.sub "assertion:sym<!>" :subid("cuid_80_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 194
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_79_1347804160.506' 
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
    eq $I19, 1, rx335_restart1052
    gt rx335_pos, rx335_eos, rx335_fail1053
    repr_get_attr_int $I11, self, rx335_curclass, "$!from"
    ne $I11, -1, rxscan336_done1059
    goto rxscan336_scan1058
  rxscan336_loop1057:
    inc rx335_pos
    gt rx335_pos, rx335_eos, rx335_fail1053
    repr_bind_attr_int rx335_cur, rx335_curclass, "$!from", rx335_pos
  rxscan336_scan1058:
    nqp_rxmark rx335_bstack, rxscan336_loop1057, rx335_pos, 0
  rxscan336_done1059:
    add $I11, rx335_pos, 1
    gt $I11, rx335_eos, rx335_fail1053
    substr $S10, rx335_tgt, rx335_pos, 1
    ne $S10, ucs4:"!", rx335_fail1053
    add rx335_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt337_01061
    nqp_push_label $P11, alt337_11072
    nqp_rxmark rx335_bstack, alt337_end1060, -1, 0
    rx335_cur."!alt"(rx335_pos, "alt_nfa__14_1347804161.215", $P11)
    goto rx335_fail1053
  alt337_01061:
    .const 'Sub' $P5001 = 'cuid_79_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx335_cur, rx335_curclass, "$!pos", rx335_pos
    $P11 = rx335_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx335_curclass, "$!pos"
    lt $I11, 0, rx335_fail1053
    goto alt337_end1060
  alt337_11072:
    repr_bind_attr_int rx335_cur, rx335_curclass, "$!pos", rx335_pos
    $P11 = rx335_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx335_curclass, "$!pos"
    lt $I11, 0, rx335_fail1053
    nqp_rxmark rx335_bstack, rxsubrule340_pass1073, -1, 0
  rxsubrule340_pass1073:
    rx335_cstack = rx335_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx335_pos, $P11, rx335_curclass, "$!pos"
    goto alt337_end1060
  alt337_end1060:
    nqp_rxcommit rx335_bstack, alt337_end1060
    rx335_cur."!cursor_pass"(rx335_pos, "assertion:sym<!>", 'backtrack'=>1)
    .return (rx335_cur)
  rx335_restart1052:
    repr_get_attr_obj rx335_cstack, rx335_cur, rx335_curclass, "$!cstack"
  rx335_fail1053:
    unless rx335_bstack, rx335_done1051
    pop $I19, rx335_bstack
    if_null rx335_cstack, rx335_cstack_done1056
    unless rx335_cstack, rx335_cstack_done1056
    dec $I19
    set $P11, rx335_cstack[$I19]
  rx335_cstack_done1056:
    pop rx335_rep, rx335_bstack
    pop rx335_pos, rx335_bstack
    pop $I19, rx335_bstack
    lt rx335_pos, -1, rx335_done1051
    lt rx335_pos, 0, rx335_fail1053
    eq $I19, 0, rx335_fail1053
    nqp_islist $I20, rx335_cstack
    unless $I20, rx335_jump1054
    elements $I18, rx335_bstack
    le $I18, 0, rx335_cut1055
    dec $I18
    set $I18, rx335_bstack[$I18]
  rx335_cut1055:
    assign rx335_cstack, $I18
  rx335_jump1054:
    jump $I19
  rx335_done1051:
    rx335_cur."!cursor_fail"()
    .return (rx335_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_80_1347804160.506_caps" :subid("cuid_memo_154_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_80_1347804160.506_nfa" :subid("cuid_memo_155_1347804160.506")
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
.sub "cuid_80_1347804160.506_alt_nfa__14_1347804161.215" :subid("cuid_memo_156_1347804160.506")
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
.sub "" :subid("cuid_79_1347804160.506") :anon :lex :outer("cuid_80_1347804160.506")
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
    eq $I19, 1, rx338_restart1064
    gt rx338_pos, rx338_eos, rx338_fail1065
    repr_get_attr_int $I11, self, rx338_curclass, "$!from"
    ne $I11, -1, rxscan339_done1071
    goto rxscan339_scan1070
  rxscan339_loop1069:
    inc rx338_pos
    gt rx338_pos, rx338_eos, rx338_fail1065
    repr_bind_attr_int rx338_cur, rx338_curclass, "$!from", rx338_pos
  rxscan339_scan1070:
    nqp_rxmark rx338_bstack, rxscan339_loop1069, rx338_pos, 0
  rxscan339_done1071:
    add $I11, rx338_pos, 1
    gt $I11, rx338_eos, rx338_fail1065
    substr $S10, rx338_tgt, rx338_pos, 1
    ne $S10, ucs4:">", rx338_fail1065
    add rx338_pos, 1
    rx338_cur."!cursor_pass"(rx338_pos, 'backtrack'=>1)
    .return (rx338_cur)
  rx338_restart1064:
    repr_get_attr_obj rx338_cstack, rx338_cur, rx338_curclass, "$!cstack"
  rx338_fail1065:
    unless rx338_bstack, rx338_done1063
    pop $I19, rx338_bstack
    if_null rx338_cstack, rx338_cstack_done1068
    unless rx338_cstack, rx338_cstack_done1068
    dec $I19
    set $P11, rx338_cstack[$I19]
  rx338_cstack_done1068:
    pop rx338_rep, rx338_bstack
    pop rx338_pos, rx338_bstack
    pop $I19, rx338_bstack
    lt rx338_pos, -1, rx338_done1063
    lt rx338_pos, 0, rx338_fail1065
    eq $I19, 0, rx338_fail1065
    nqp_islist $I20, rx338_cstack
    unless $I20, rx338_jump1066
    elements $I18, rx338_bstack
    le $I18, 0, rx338_cut1067
    dec $I18
    set $I18, rx338_bstack[$I18]
  rx338_cut1067:
    assign rx338_cstack, $I18
  rx338_jump1066:
    jump $I19
  rx338_done1063:
    rx338_cur."!cursor_fail"()
    .return (rx338_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_79_1347804160.506_caps" :subid("cuid_memo_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_79_1347804160.506_nfa" :subid("cuid_memo_158_1347804160.506")
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
.sub "assertion:sym<|>" :subid("cuid_81_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx341_restart1076
    gt rx341_pos, rx341_eos, rx341_fail1077
    repr_get_attr_int $I11, self, rx341_curclass, "$!from"
    ne $I11, -1, rxscan342_done1083
    goto rxscan342_scan1082
  rxscan342_loop1081:
    inc rx341_pos
    gt rx341_pos, rx341_eos, rx341_fail1077
    repr_bind_attr_int rx341_cur, rx341_curclass, "$!from", rx341_pos
  rxscan342_scan1082:
    nqp_rxmark rx341_bstack, rxscan342_loop1081, rx341_pos, 0
  rxscan342_done1083:
    add $I11, rx341_pos, 1
    gt $I11, rx341_eos, rx341_fail1077
    substr $S10, rx341_tgt, rx341_pos, 1
    ne $S10, ucs4:"|", rx341_fail1077
    add rx341_pos, 1
    repr_bind_attr_int rx341_cur, rx341_curclass, "$!pos", rx341_pos
    $P11 = rx341_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx341_curclass, "$!pos"
    lt $I11, 0, rx341_fail1077
    nqp_rxmark rx341_bstack, rxsubrule343_pass1084, -1, 0
  rxsubrule343_pass1084:
    rx341_cstack = rx341_cur."!cursor_capture"($P11, "identifier")
    repr_get_attr_int rx341_pos, $P11, rx341_curclass, "$!pos"
    rx341_cur."!cursor_pass"(rx341_pos, "assertion:sym<|>", 'backtrack'=>1)
    .return (rx341_cur)
  rx341_restart1076:
    repr_get_attr_obj rx341_cstack, rx341_cur, rx341_curclass, "$!cstack"
  rx341_fail1077:
    unless rx341_bstack, rx341_done1075
    pop $I19, rx341_bstack
    if_null rx341_cstack, rx341_cstack_done1080
    unless rx341_cstack, rx341_cstack_done1080
    dec $I19
    set $P11, rx341_cstack[$I19]
  rx341_cstack_done1080:
    pop rx341_rep, rx341_bstack
    pop rx341_pos, rx341_bstack
    pop $I19, rx341_bstack
    lt rx341_pos, -1, rx341_done1075
    lt rx341_pos, 0, rx341_fail1077
    eq $I19, 0, rx341_fail1077
    nqp_islist $I20, rx341_cstack
    unless $I20, rx341_jump1078
    elements $I18, rx341_bstack
    le $I18, 0, rx341_cut1079
    dec $I18
    set $I18, rx341_bstack[$I18]
  rx341_cut1079:
    assign rx341_cstack, $I18
  rx341_jump1078:
    jump $I19
  rx341_done1075:
    rx341_cur."!cursor_fail"()
    .return (rx341_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_81_1347804160.506_caps" :subid("cuid_memo_159_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["identifier"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_81_1347804160.506_nfa" :subid("cuid_memo_160_1347804160.506")
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
.sub "assertion:sym<method>" :subid("cuid_82_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx344_restart1087
    gt rx344_pos, rx344_eos, rx344_fail1088
    repr_get_attr_int $I11, self, rx344_curclass, "$!from"
    ne $I11, -1, rxscan345_done1094
    goto rxscan345_scan1093
  rxscan345_loop1092:
    inc rx344_pos
    gt rx344_pos, rx344_eos, rx344_fail1088
    repr_bind_attr_int rx344_cur, rx344_curclass, "$!from", rx344_pos
  rxscan345_scan1093:
    nqp_rxmark rx344_bstack, rxscan345_loop1092, rx344_pos, 0
  rxscan345_done1094:
    add $I11, rx344_pos, 1
    gt $I11, rx344_eos, rx344_fail1088
    substr $S10, rx344_tgt, rx344_pos, 1
    ne $S10, ucs4:".", rx344_fail1088
    add rx344_pos, 1
    repr_bind_attr_int rx344_cur, rx344_curclass, "$!pos", rx344_pos
    $P11 = rx344_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx344_curclass, "$!pos"
    lt $I11, 0, rx344_fail1088
    nqp_rxmark rx344_bstack, rxsubrule346_pass1095, -1, 0
  rxsubrule346_pass1095:
    rx344_cstack = rx344_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx344_pos, $P11, rx344_curclass, "$!pos"
    rx344_cur."!cursor_pass"(rx344_pos, "assertion:sym<method>", 'backtrack'=>1)
    .return (rx344_cur)
  rx344_restart1087:
    repr_get_attr_obj rx344_cstack, rx344_cur, rx344_curclass, "$!cstack"
  rx344_fail1088:
    unless rx344_bstack, rx344_done1086
    pop $I19, rx344_bstack
    if_null rx344_cstack, rx344_cstack_done1091
    unless rx344_cstack, rx344_cstack_done1091
    dec $I19
    set $P11, rx344_cstack[$I19]
  rx344_cstack_done1091:
    pop rx344_rep, rx344_bstack
    pop rx344_pos, rx344_bstack
    pop $I19, rx344_bstack
    lt rx344_pos, -1, rx344_done1086
    lt rx344_pos, 0, rx344_fail1088
    eq $I19, 0, rx344_fail1088
    nqp_islist $I20, rx344_cstack
    unless $I20, rx344_jump1089
    elements $I18, rx344_bstack
    le $I18, 0, rx344_cut1090
    dec $I18
    set $I18, rx344_bstack[$I18]
  rx344_cut1090:
    assign rx344_cstack, $I18
  rx344_jump1089:
    jump $I19
  rx344_done1086:
    rx344_cur."!cursor_fail"()
    .return (rx344_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_82_1347804160.506_caps" :subid("cuid_memo_161_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["assertion"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_82_1347804160.506_nfa" :subid("cuid_memo_162_1347804160.506")
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
.sub "assertion:sym<name>" :subid("cuid_84_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 201
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_83_1347804160.506' 
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
    eq $I19, 1, rx347_restart1098
    gt rx347_pos, rx347_eos, rx347_fail1099
    repr_get_attr_int $I11, self, rx347_curclass, "$!from"
    ne $I11, -1, rxscan348_done1105
    goto rxscan348_scan1104
  rxscan348_loop1103:
    inc rx347_pos
    gt rx347_pos, rx347_eos, rx347_fail1099
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!from", rx347_pos
  rxscan348_scan1104:
    nqp_rxmark rx347_bstack, rxscan348_loop1103, rx347_pos, 0
  rxscan348_done1105:
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."identifier"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1099
    nqp_rxmark rx347_bstack, rxsubrule349_pass1106, -1, 0
  rxsubrule349_pass1106:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "longname")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    nqp_rxmark rx347_bstack, rxquantr350_done1108, rx347_pos, 0
  rxquantr350_loop1107:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt351_01110
    nqp_push_label $P11, alt351_11121
    nqp_push_label $P11, alt351_21123
    nqp_push_label $P11, alt351_31125
    nqp_push_label $P11, alt351_41127
    nqp_rxmark rx347_bstack, alt351_end1109, -1, 0
    rx347_cur."!alt"(rx347_pos, "alt_nfa__15_1347804161.247", $P11)
    goto rx347_fail1099
  alt351_01110:
    .const 'Sub' $P5001 = 'cuid_83_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1099
    goto alt351_end1109
  alt351_11121:
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1099
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:"=", rx347_fail1099
    add rx347_pos, 1
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."assertion"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1099
    nqp_rxmark rx347_bstack, rxsubrule354_pass1122, -1, 0
  rxsubrule354_pass1122:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "assertion")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    goto alt351_end1109
  alt351_21123:
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1099
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:":", rx347_fail1099
    add rx347_pos, 1
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1099
    nqp_rxmark rx347_bstack, rxsubrule355_pass1124, -1, 0
  rxsubrule355_pass1124:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    goto alt351_end1109
  alt351_31125:
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1099
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:"(", rx347_fail1099
    add rx347_pos, 1
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."arglist"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1099
    nqp_rxmark rx347_bstack, rxsubrule356_pass1126, -1, 0
  rxsubrule356_pass1126:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "arglist")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail1099
    substr $S10, rx347_tgt, rx347_pos, 1
    ne $S10, ucs4:")", rx347_fail1099
    add rx347_pos, 1
    goto alt351_end1109
  alt351_41127:
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1099
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    repr_bind_attr_int rx347_cur, rx347_curclass, "$!pos", rx347_pos
    $P11 = rx347_cur."nibbler"()
    repr_get_attr_int $I11, $P11, rx347_curclass, "$!pos"
    lt $I11, 0, rx347_fail1099
    nqp_rxmark rx347_bstack, rxsubrule358_pass1129, -1, 0
  rxsubrule358_pass1129:
    rx347_cstack = rx347_cur."!cursor_capture"($P11, "nibbler")
    repr_get_attr_int rx347_pos, $P11, rx347_curclass, "$!pos"
    goto alt351_end1109
  alt351_end1109:
    nqp_rxpeek $I19, rx347_bstack, rxquantr350_done1108
    inc $I19
    inc $I19
    set rx347_rep, rx347_bstack[$I19]
    nqp_rxcommit rx347_bstack, rxquantr350_done1108
    inc rx347_rep
  rxquantr350_done1108:
    rx347_cur."!cursor_pass"(rx347_pos, "assertion:sym<name>", 'backtrack'=>1)
    .return (rx347_cur)
  rx347_restart1098:
    repr_get_attr_obj rx347_cstack, rx347_cur, rx347_curclass, "$!cstack"
  rx347_fail1099:
    unless rx347_bstack, rx347_done1097
    pop $I19, rx347_bstack
    if_null rx347_cstack, rx347_cstack_done1102
    unless rx347_cstack, rx347_cstack_done1102
    dec $I19
    set $P11, rx347_cstack[$I19]
  rx347_cstack_done1102:
    pop rx347_rep, rx347_bstack
    pop rx347_pos, rx347_bstack
    pop $I19, rx347_bstack
    lt rx347_pos, -1, rx347_done1097
    lt rx347_pos, 0, rx347_fail1099
    eq $I19, 0, rx347_fail1099
    nqp_islist $I20, rx347_cstack
    unless $I20, rx347_jump1100
    elements $I18, rx347_bstack
    le $I18, 0, rx347_cut1101
    dec $I18
    set $I18, rx347_bstack[$I18]
  rx347_cut1101:
    assign rx347_cstack, $I18
  rx347_jump1100:
    jump $I19
  rx347_done1097:
    rx347_cur."!cursor_fail"()
    .return (rx347_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_84_1347804160.506_caps" :subid("cuid_memo_163_1347804160.506")
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
.sub "cuid_84_1347804160.506_nfa" :subid("cuid_memo_164_1347804160.506")
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
.sub "cuid_84_1347804160.506_alt_nfa__15_1347804161.247" :subid("cuid_memo_165_1347804160.506")
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
.sub "" :subid("cuid_83_1347804160.506") :anon :lex :outer("cuid_84_1347804160.506")
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
    eq $I19, 1, rx352_restart1113
    gt rx352_pos, rx352_eos, rx352_fail1114
    repr_get_attr_int $I11, self, rx352_curclass, "$!from"
    ne $I11, -1, rxscan353_done1120
    goto rxscan353_scan1119
  rxscan353_loop1118:
    inc rx352_pos
    gt rx352_pos, rx352_eos, rx352_fail1114
    repr_bind_attr_int rx352_cur, rx352_curclass, "$!from", rx352_pos
  rxscan353_scan1119:
    nqp_rxmark rx352_bstack, rxscan353_loop1118, rx352_pos, 0
  rxscan353_done1120:
    add $I11, rx352_pos, 1
    gt $I11, rx352_eos, rx352_fail1114
    substr $S10, rx352_tgt, rx352_pos, 1
    ne $S10, ucs4:">", rx352_fail1114
    add rx352_pos, 1
    rx352_cur."!cursor_pass"(rx352_pos, 'backtrack'=>1)
    .return (rx352_cur)
  rx352_restart1113:
    repr_get_attr_obj rx352_cstack, rx352_cur, rx352_curclass, "$!cstack"
  rx352_fail1114:
    unless rx352_bstack, rx352_done1112
    pop $I19, rx352_bstack
    if_null rx352_cstack, rx352_cstack_done1117
    unless rx352_cstack, rx352_cstack_done1117
    dec $I19
    set $P11, rx352_cstack[$I19]
  rx352_cstack_done1117:
    pop rx352_rep, rx352_bstack
    pop rx352_pos, rx352_bstack
    pop $I19, rx352_bstack
    lt rx352_pos, -1, rx352_done1112
    lt rx352_pos, 0, rx352_fail1114
    eq $I19, 0, rx352_fail1114
    nqp_islist $I20, rx352_cstack
    unless $I20, rx352_jump1115
    elements $I18, rx352_bstack
    le $I18, 0, rx352_cut1116
    dec $I18
    set $I18, rx352_bstack[$I18]
  rx352_cut1116:
    assign rx352_cstack, $I18
  rx352_jump1115:
    jump $I19
  rx352_done1112:
    rx352_cur."!cursor_fail"()
    .return (rx352_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_83_1347804160.506_caps" :subid("cuid_memo_166_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_83_1347804160.506_nfa" :subid("cuid_memo_167_1347804160.506")
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
.sub "assertion:sym<[>" :subid("cuid_86_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 212
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_85_1347804160.506' 
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
    eq $I19, 1, rx359_restart1132
    gt rx359_pos, rx359_eos, rx359_fail1133
    repr_get_attr_int $I11, self, rx359_curclass, "$!from"
    ne $I11, -1, rxscan360_done1139
    goto rxscan360_scan1138
  rxscan360_loop1137:
    inc rx359_pos
    gt rx359_pos, rx359_eos, rx359_fail1133
    repr_bind_attr_int rx359_cur, rx359_curclass, "$!from", rx359_pos
  rxscan360_scan1138:
    nqp_rxmark rx359_bstack, rxscan360_loop1137, rx359_pos, 0
  rxscan360_done1139:
    .const 'Sub' $P5001 = 'cuid_85_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx359_cur, rx359_curclass, "$!pos", rx359_pos
    $P11 = rx359_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx359_curclass, "$!pos"
    lt $I11, 0, rx359_fail1133
    nqp_rxmark rx359_bstack, rxquantr364_done1156, -1, 0
  rxquantr364_loop1155:
    repr_bind_attr_int rx359_cur, rx359_curclass, "$!pos", rx359_pos
    $P11 = rx359_cur."cclass_elem"()
    repr_get_attr_int $I11, $P11, rx359_curclass, "$!pos"
    lt $I11, 0, rx359_fail1133
    goto rxsubrule365_pass1157
  rxsubrule365_back1158:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx359_curclass, "$!pos"
    lt $I11, 0, rx359_fail1133
  rxsubrule365_pass1157:
    rx359_cstack = rx359_cur."!cursor_capture"($P11, "cclass_elem")
    set_addr $I11, rxsubrule365_back1158
    push rx359_bstack, $I11
    push rx359_bstack, 0
    push rx359_bstack, rx359_pos
    elements $I11, rx359_cstack
    push rx359_bstack, $I11
    repr_get_attr_int rx359_pos, $P11, rx359_curclass, "$!pos"
    nqp_rxpeek $I19, rx359_bstack, rxquantr364_done1156
    inc $I19
    inc $I19
    set rx359_rep, rx359_bstack[$I19]
    nqp_rxcommit rx359_bstack, rxquantr364_done1156
    inc rx359_rep
    nqp_rxmark rx359_bstack, rxquantr364_done1156, rx359_pos, rx359_rep
    goto rxquantr364_loop1155
  rxquantr364_done1156:
    rx359_cur."!cursor_pass"(rx359_pos, "assertion:sym<[>", 'backtrack'=>1)
    .return (rx359_cur)
  rx359_restart1132:
    repr_get_attr_obj rx359_cstack, rx359_cur, rx359_curclass, "$!cstack"
  rx359_fail1133:
    unless rx359_bstack, rx359_done1131
    pop $I19, rx359_bstack
    if_null rx359_cstack, rx359_cstack_done1136
    unless rx359_cstack, rx359_cstack_done1136
    dec $I19
    set $P11, rx359_cstack[$I19]
  rx359_cstack_done1136:
    pop rx359_rep, rx359_bstack
    pop rx359_pos, rx359_bstack
    pop $I19, rx359_bstack
    lt rx359_pos, -1, rx359_done1131
    lt rx359_pos, 0, rx359_fail1133
    eq $I19, 0, rx359_fail1133
    nqp_islist $I20, rx359_cstack
    unless $I20, rx359_jump1134
    elements $I18, rx359_bstack
    le $I18, 0, rx359_cut1135
    dec $I18
    set $I18, rx359_bstack[$I18]
  rx359_cut1135:
    assign rx359_cstack, $I18
  rx359_jump1134:
    jump $I19
  rx359_done1131:
    rx359_cur."!cursor_fail"()
    .return (rx359_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_86_1347804160.506_caps" :subid("cuid_memo_168_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 2
    set $P5001["cclass_elem"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_86_1347804160.506_nfa" :subid("cuid_memo_169_1347804160.506")
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
.sub "" :subid("cuid_85_1347804160.506") :anon :lex :outer("cuid_86_1347804160.506")
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
    eq $I19, 1, rx361_restart1142
    gt rx361_pos, rx361_eos, rx361_fail1143
    repr_get_attr_int $I11, self, rx361_curclass, "$!from"
    ne $I11, -1, rxscan362_done1149
    goto rxscan362_scan1148
  rxscan362_loop1147:
    inc rx361_pos
    gt rx361_pos, rx361_eos, rx361_fail1143
    repr_bind_attr_int rx361_cur, rx361_curclass, "$!from", rx361_pos
  rxscan362_scan1148:
    nqp_rxmark rx361_bstack, rxscan362_loop1147, rx361_pos, 0
  rxscan362_done1149:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt363_01151
    nqp_push_label $P11, alt363_11152
    nqp_push_label $P11, alt363_21153
    nqp_push_label $P11, alt363_31154
    nqp_rxmark rx361_bstack, alt363_end1150, -1, 0
    rx361_cur."!alt"(rx361_pos, "alt_nfa__16_1347804161.255", $P11)
    goto rx361_fail1143
  alt363_01151:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1143
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:"[", rx361_fail1143
    add rx361_pos, 1
    goto alt363_end1150
  alt363_11152:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1143
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:"+", rx361_fail1143
    add rx361_pos, 1
    goto alt363_end1150
  alt363_21153:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1143
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:"-", rx361_fail1143
    add rx361_pos, 1
    goto alt363_end1150
  alt363_31154:
    add $I11, rx361_pos, 1
    gt $I11, rx361_eos, rx361_fail1143
    substr $S10, rx361_tgt, rx361_pos, 1
    ne $S10, ucs4:":", rx361_fail1143
    add rx361_pos, 1
    goto alt363_end1150
  alt363_end1150:
    rx361_cur."!cursor_pass"(rx361_pos, 'backtrack'=>1)
    .return (rx361_cur)
  rx361_restart1142:
    repr_get_attr_obj rx361_cstack, rx361_cur, rx361_curclass, "$!cstack"
  rx361_fail1143:
    unless rx361_bstack, rx361_done1141
    pop $I19, rx361_bstack
    if_null rx361_cstack, rx361_cstack_done1146
    unless rx361_cstack, rx361_cstack_done1146
    dec $I19
    set $P11, rx361_cstack[$I19]
  rx361_cstack_done1146:
    pop rx361_rep, rx361_bstack
    pop rx361_pos, rx361_bstack
    pop $I19, rx361_bstack
    lt rx361_pos, -1, rx361_done1141
    lt rx361_pos, 0, rx361_fail1143
    eq $I19, 0, rx361_fail1143
    nqp_islist $I20, rx361_cstack
    unless $I20, rx361_jump1144
    elements $I18, rx361_bstack
    le $I18, 0, rx361_cut1145
    dec $I18
    set $I18, rx361_bstack[$I18]
  rx361_cut1145:
    assign rx361_cstack, $I18
  rx361_jump1144:
    jump $I19
  rx361_done1141:
    rx361_cur."!cursor_fail"()
    .return (rx361_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_85_1347804160.506_caps" :subid("cuid_memo_170_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_85_1347804160.506_nfa" :subid("cuid_memo_171_1347804160.506")
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
.sub "cuid_85_1347804160.506_alt_nfa__16_1347804161.255" :subid("cuid_memo_172_1347804160.506")
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
.sub "cclass_elem" :subid("cuid_93_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 214
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_92_1347804160.506' 
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
    eq $I19, 1, rx366_restart1161
    gt rx366_pos, rx366_eos, rx366_fail1162
    repr_get_attr_int $I11, self, rx366_curclass, "$!from"
    ne $I11, -1, rxscan367_done1168
    goto rxscan367_scan1167
  rxscan367_loop1166:
    inc rx366_pos
    gt rx366_pos, rx366_eos, rx366_fail1162
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!from", rx366_pos
  rxscan367_scan1167:
    nqp_rxmark rx366_bstack, rxscan367_loop1166, rx366_pos, 0
  rxscan367_done1168:
    nqp_rxmark rx366_bstack, rxcap368_fail1170, rx366_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt369_01172
    nqp_push_label $P11, alt369_11173
    nqp_push_label $P11, alt369_21174
    nqp_rxmark rx366_bstack, alt369_end1171, -1, 0
    rx366_cur."!alt"(rx366_pos, "alt_nfa__17_1347804161.317", $P11)
    goto rx366_fail1162
  alt369_01172:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1162
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"+", rx366_fail1162
    add rx366_pos, 1
    goto alt369_end1171
  alt369_11173:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1162
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"-", rx366_fail1162
    add rx366_pos, 1
    goto alt369_end1171
  alt369_21174:
    goto alt369_end1171
  alt369_end1171:
    nqp_rxcommit rx366_bstack, alt369_end1171
    nqp_rxpeek $I19, rx366_bstack, rxcap368_fail1170
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "sign")
    goto rxcap368_done1169
  rxcap368_fail1170:
    goto rx366_fail1162
  rxcap368_done1169:
    nqp_rxmark rx366_bstack, rxquantr371_done1177, rx366_pos, 0
  rxquantr371_loop1176:
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1162
    goto rxsubrule372_pass1178
  rxsubrule372_back1179:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1162
  rxsubrule372_pass1178:
    rx366_cstack = rx366_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule372_back1179
    push rx366_bstack, $I11
    push rx366_bstack, 0
    push rx366_bstack, rx366_pos
    elements $I11, rx366_cstack
    push rx366_bstack, $I11
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    nqp_rxpeek $I19, rx366_bstack, rxquantr371_done1177
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr371_done1177
    inc rx366_rep
  rxquantr371_done1177:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt373_01181
    nqp_push_label $P11, alt373_11280
    nqp_push_label $P11, alt373_21285
    nqp_rxmark rx366_bstack, alt373_end1180, -1, 0
    rx366_cur."!alt"(rx366_pos, "alt_nfa__18_1347804161.318", $P11)
    goto rx366_fail1162
  alt373_01181:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1162
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"[", rx366_fail1162
    add rx366_pos, 1
    nqp_rxmark rx366_bstack, rxquantr374_done1183, rx366_pos, 0
  rxquantr374_loop1182:
    .const 'Sub' $P5001 = 'cuid_92_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1162
    goto rxsubrule405_pass1276
  rxsubrule405_back1277:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1162
  rxsubrule405_pass1276:
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "charspec")
    set_addr $I11, rxsubrule405_back1277
    push rx366_bstack, $I11
    push rx366_bstack, 0
    push rx366_bstack, rx366_pos
    elements $I11, rx366_cstack
    push rx366_bstack, $I11
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    nqp_rxpeek $I19, rx366_bstack, rxquantr374_done1183
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr374_done1183
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr374_done1183, rx366_pos, rx366_rep
    goto rxquantr374_loop1182
  rxquantr374_done1183:
    nqp_rxmark rx366_bstack, rxquantr406_done1279, rx366_pos, 0
  rxquantr406_loop1278:
    ge rx366_pos, rx366_eos, rx366_fail1162
    is_cclass $I11, .CCLASS_WHITESPACE, rx366_tgt, rx366_pos
    unless $I11, rx366_fail1162
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr406_done1279
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr406_done1279
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr406_done1279, rx366_pos, rx366_rep
    goto rxquantr406_loop1278
  rxquantr406_done1279:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1162
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"]", rx366_fail1162
    add rx366_pos, 1
    goto alt373_end1180
  alt373_11280:
    nqp_rxmark rx366_bstack, rxcap407_fail1282, rx366_pos, 0
    nqp_rxmark rx366_bstack, rxquantr408_done1284, -1, 0
  rxquantr408_loop1283:
    ge rx366_pos, rx366_eos, rx366_fail1162
    is_cclass $I11, .CCLASS_WORD, rx366_tgt, rx366_pos
    unless $I11, rx366_fail1162
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr408_done1284
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr408_done1284
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr408_done1284, rx366_pos, rx366_rep
    goto rxquantr408_loop1283
  rxquantr408_done1284:
    nqp_rxpeek $I19, rx366_bstack, rxcap407_fail1282
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "name")
    goto rxcap407_done1281
  rxcap407_fail1282:
    goto rx366_fail1162
  rxcap407_done1281:
    goto alt373_end1180
  alt373_21285:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1162
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:":", rx366_fail1162
    add rx366_pos, 1
    nqp_rxmark rx366_bstack, rxcap409_fail1287, rx366_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt410_01289
    nqp_push_label $P11, alt410_11290
    nqp_rxmark rx366_bstack, alt410_end1288, -1, 0
    rx366_cur."!alt"(rx366_pos, "alt_nfa__19_1347804161.319", $P11)
    goto rx366_fail1162
  alt410_01289:
    add $I11, rx366_pos, 1
    gt $I11, rx366_eos, rx366_fail1162
    substr $S10, rx366_tgt, rx366_pos, 1
    ne $S10, ucs4:"!", rx366_fail1162
    add rx366_pos, 1
    goto alt410_end1288
  alt410_11290:
    goto alt410_end1288
  alt410_end1288:
    nqp_rxcommit rx366_bstack, alt410_end1288
    nqp_rxpeek $I19, rx366_bstack, rxcap409_fail1287
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "invert")
    goto rxcap409_done1286
  rxcap409_fail1287:
    goto rx366_fail1162
  rxcap409_done1286:
    nqp_rxmark rx366_bstack, rxcap412_fail1293, rx366_pos, 0
    nqp_rxmark rx366_bstack, rxquantr413_done1295, -1, 0
  rxquantr413_loop1294:
    ge rx366_pos, rx366_eos, rx366_fail1162
    is_cclass $I11, .CCLASS_WORD, rx366_tgt, rx366_pos
    unless $I11, rx366_fail1162
    add rx366_pos, 1
    nqp_rxpeek $I19, rx366_bstack, rxquantr413_done1295
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr413_done1295
    inc rx366_rep
    nqp_rxmark rx366_bstack, rxquantr413_done1295, rx366_pos, rx366_rep
    goto rxquantr413_loop1294
  rxquantr413_done1295:
    nqp_rxpeek $I19, rx366_bstack, rxcap412_fail1293
    inc $I19
    set $I11, rx366_bstack[$I19]
    $P11 = rx366_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx366_pos)
    rx366_cstack = rx366_cur."!cursor_capture"($P11, "uniprop")
    goto rxcap412_done1292
  rxcap412_fail1293:
    goto rx366_fail1162
  rxcap412_done1292:
    goto alt373_end1180
  alt373_end1180:
    nqp_rxcommit rx366_bstack, alt373_end1180
    nqp_rxmark rx366_bstack, rxquantr414_done1297, rx366_pos, 0
  rxquantr414_loop1296:
    repr_bind_attr_int rx366_cur, rx366_curclass, "$!pos", rx366_pos
    $P11 = rx366_cur."normspace"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1162
    goto rxsubrule415_pass1298
  rxsubrule415_back1299:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx366_curclass, "$!pos"
    lt $I11, 0, rx366_fail1162
  rxsubrule415_pass1298:
    rx366_cstack = rx366_cur."!cursor_push_cstack"($P11)
    set_addr $I11, rxsubrule415_back1299
    push rx366_bstack, $I11
    push rx366_bstack, 0
    push rx366_bstack, rx366_pos
    elements $I11, rx366_cstack
    push rx366_bstack, $I11
    repr_get_attr_int rx366_pos, $P11, rx366_curclass, "$!pos"
    nqp_rxpeek $I19, rx366_bstack, rxquantr414_done1297
    inc $I19
    inc $I19
    set rx366_rep, rx366_bstack[$I19]
    nqp_rxcommit rx366_bstack, rxquantr414_done1297
    inc rx366_rep
  rxquantr414_done1297:
    rx366_cur."!cursor_pass"(rx366_pos, "cclass_elem", 'backtrack'=>1)
    .return (rx366_cur)
  rx366_restart1161:
    repr_get_attr_obj rx366_cstack, rx366_cur, rx366_curclass, "$!cstack"
  rx366_fail1162:
    unless rx366_bstack, rx366_done1160
    pop $I19, rx366_bstack
    if_null rx366_cstack, rx366_cstack_done1165
    unless rx366_cstack, rx366_cstack_done1165
    dec $I19
    set $P11, rx366_cstack[$I19]
  rx366_cstack_done1165:
    pop rx366_rep, rx366_bstack
    pop rx366_pos, rx366_bstack
    pop $I19, rx366_bstack
    lt rx366_pos, -1, rx366_done1160
    lt rx366_pos, 0, rx366_fail1162
    eq $I19, 0, rx366_fail1162
    nqp_islist $I20, rx366_cstack
    unless $I20, rx366_jump1163
    elements $I18, rx366_bstack
    le $I18, 0, rx366_cut1164
    dec $I18
    set $I18, rx366_bstack[$I18]
  rx366_cut1164:
    assign rx366_cstack, $I18
  rx366_jump1163:
    jump $I19
  rx366_done1160:
    rx366_cur."!cursor_fail"()
    .return (rx366_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_93_1347804160.506_caps" :subid("cuid_memo_173_1347804160.506")
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
.sub "cuid_93_1347804160.506_nfa" :subid("cuid_memo_174_1347804160.506")
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
.sub "cuid_93_1347804160.506_alt_nfa__17_1347804161.317" :subid("cuid_memo_175_1347804160.506")
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
.sub "cuid_93_1347804160.506_alt_nfa__19_1347804161.319" :subid("cuid_memo_176_1347804160.506")
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
.sub "cuid_93_1347804160.506_alt_nfa__18_1347804161.318" :subid("cuid_memo_177_1347804160.506")
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
.sub "" :subid("cuid_92_1347804160.506") :anon :lex :outer("cuid_93_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5004 = 'cuid_87_1347804160.506' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_89_1347804160.506' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_91_1347804160.506' 
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
    eq $I19, 1, rx375_restart1186
    gt rx375_pos, rx375_eos, rx375_fail1187
    repr_get_attr_int $I11, self, rx375_curclass, "$!from"
    ne $I11, -1, rxscan376_done1193
    goto rxscan376_scan1192
  rxscan376_loop1191:
    inc rx375_pos
    gt rx375_pos, rx375_eos, rx375_fail1187
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!from", rx375_pos
  rxscan376_scan1192:
    nqp_rxmark rx375_bstack, rxscan376_loop1191, rx375_pos, 0
  rxscan376_done1193:
  alt377_01195:
    nqp_rxmark rx375_bstack, alt377_11211, rx375_pos, 0
    nqp_rxmark rx375_bstack, rxquantr378_done1197, rx375_pos, 0
  rxquantr378_loop1196:
    ge rx375_pos, rx375_eos, rx375_fail1187
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1187
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr378_done1197
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr378_done1197
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr378_done1197, rx375_pos, rx375_rep
    goto rxquantr378_loop1196
  rxquantr378_done1197:
    add $I11, rx375_pos, 1
    gt $I11, rx375_eos, rx375_fail1187
    substr $S10, rx375_tgt, rx375_pos, 1
    ne $S10, ucs4:"-", rx375_fail1187
    add rx375_pos, 1
    .const 'Sub' $P5001 = 'cuid_87_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    ge $I11, 0, rx375_fail1187
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur."obs"("- as character range", ".. for range, for explicit - in character class, escape it or place as last thing")
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail1187
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
    goto alt377_end1194
  alt377_11211:
    nqp_rxmark rx375_bstack, rxquantr383_done1213, rx375_pos, 0
  rxquantr383_loop1212:
    ge rx375_pos, rx375_eos, rx375_fail1187
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1187
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr383_done1213
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr383_done1213
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr383_done1213, rx375_pos, rx375_rep
    goto rxquantr383_loop1212
  rxquantr383_done1213:
    .const 'Sub' $P5002 = 'cuid_89_1347804160.506' 
    capture_lex $P5002
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur.$P5002()
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail1187
    nqp_rxmark rx375_bstack, rxsubrule392_pass1241, -1, 0
  rxsubrule392_pass1241:
    rx375_cstack = rx375_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
    nqp_rxmark rx375_bstack, rxquantr393_done1243, rx375_pos, 0
  rxquantr393_loop1242:
    nqp_rxmark rx375_bstack, rxquantr394_done1245, rx375_pos, 0
  rxquantr394_loop1244:
    ge rx375_pos, rx375_eos, rx375_fail1187
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1187
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr394_done1245
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr394_done1245
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr394_done1245, rx375_pos, rx375_rep
    goto rxquantr394_loop1244
  rxquantr394_done1245:
    add $I11, rx375_pos, 2
    gt $I11, rx375_eos, rx375_fail1187
    substr $S10, rx375_tgt, rx375_pos, 2
    ne $S10, ucs4:"..", rx375_fail1187
    add rx375_pos, 2
    nqp_rxmark rx375_bstack, rxquantr395_done1247, rx375_pos, 0
  rxquantr395_loop1246:
    ge rx375_pos, rx375_eos, rx375_fail1187
    is_cclass $I11, .CCLASS_WHITESPACE, rx375_tgt, rx375_pos
    unless $I11, rx375_fail1187
    add rx375_pos, 1
    nqp_rxpeek $I19, rx375_bstack, rxquantr395_done1247
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr395_done1247
    inc rx375_rep
    nqp_rxmark rx375_bstack, rxquantr395_done1247, rx375_pos, rx375_rep
    goto rxquantr395_loop1246
  rxquantr395_done1247:
    .const 'Sub' $P5003 = 'cuid_91_1347804160.506' 
    capture_lex $P5003
    repr_bind_attr_int rx375_cur, rx375_curclass, "$!pos", rx375_pos
    $P11 = rx375_cur.$P5003()
    repr_get_attr_int $I11, $P11, rx375_curclass, "$!pos"
    lt $I11, 0, rx375_fail1187
    nqp_rxmark rx375_bstack, rxsubrule404_pass1275, -1, 0
  rxsubrule404_pass1275:
    rx375_cstack = rx375_cur."!cursor_capture"($P11, "1")
    repr_get_attr_int rx375_pos, $P11, rx375_curclass, "$!pos"
    nqp_rxpeek $I19, rx375_bstack, rxquantr393_done1243
    inc $I19
    inc $I19
    set rx375_rep, rx375_bstack[$I19]
    nqp_rxcommit rx375_bstack, rxquantr393_done1243
    inc rx375_rep
  rxquantr393_done1243:
  alt377_end1194:
    rx375_cur."!cursor_pass"(rx375_pos, 'backtrack'=>1)
    .return (rx375_cur)
  rx375_restart1186:
    repr_get_attr_obj rx375_cstack, rx375_cur, rx375_curclass, "$!cstack"
  rx375_fail1187:
    unless rx375_bstack, rx375_done1185
    pop $I19, rx375_bstack
    if_null rx375_cstack, rx375_cstack_done1190
    unless rx375_cstack, rx375_cstack_done1190
    dec $I19
    set $P11, rx375_cstack[$I19]
  rx375_cstack_done1190:
    pop rx375_rep, rx375_bstack
    pop rx375_pos, rx375_bstack
    pop $I19, rx375_bstack
    lt rx375_pos, -1, rx375_done1185
    lt rx375_pos, 0, rx375_fail1187
    eq $I19, 0, rx375_fail1187
    nqp_islist $I20, rx375_cstack
    unless $I20, rx375_jump1188
    elements $I18, rx375_bstack
    le $I18, 0, rx375_cut1189
    dec $I18
    set $I18, rx375_bstack[$I18]
  rx375_cut1189:
    assign rx375_cstack, $I18
  rx375_jump1188:
    jump $I19
  rx375_done1185:
    rx375_cur."!cursor_fail"()
    .return (rx375_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_92_1347804160.506_caps" :subid("cuid_memo_178_1347804160.506")
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
.sub "" :subid("cuid_87_1347804160.506") :anon :lex :outer("cuid_92_1347804160.506")
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
    eq $I19, 1, rx379_restart1200
    gt rx379_pos, rx379_eos, rx379_fail1201
    repr_get_attr_int $I11, self, rx379_curclass, "$!from"
    ne $I11, -1, rxscan380_done1207
    goto rxscan380_scan1206
  rxscan380_loop1205:
    inc rx379_pos
    gt rx379_pos, rx379_eos, rx379_fail1201
    repr_bind_attr_int rx379_cur, rx379_curclass, "$!from", rx379_pos
  rxscan380_scan1206:
    nqp_rxmark rx379_bstack, rxscan380_loop1205, rx379_pos, 0
  rxscan380_done1207:
    nqp_rxmark rx379_bstack, rxquantr381_done1209, rx379_pos, 0
  rxquantr381_loop1208:
    ge rx379_pos, rx379_eos, rx379_fail1201
    is_cclass $I11, .CCLASS_WHITESPACE, rx379_tgt, rx379_pos
    unless $I11, rx379_fail1201
    add rx379_pos, 1
    nqp_rxpeek $I19, rx379_bstack, rxquantr381_done1209
    inc $I19
    inc $I19
    set rx379_rep, rx379_bstack[$I19]
    nqp_rxcommit rx379_bstack, rxquantr381_done1209
    inc rx379_rep
    nqp_rxmark rx379_bstack, rxquantr381_done1209, rx379_pos, rx379_rep
    goto rxquantr381_loop1208
  rxquantr381_done1209:
    add $I11, rx379_pos, 1
    gt $I11, rx379_eos, rx379_fail1201
    substr $S10, rx379_tgt, rx379_pos, 1
    ne $S10, ucs4:"]", rx379_fail1201
    add rx379_pos, 1
    rx379_cur."!cursor_pass"(rx379_pos, 'backtrack'=>1)
    .return (rx379_cur)
  rx379_restart1200:
    repr_get_attr_obj rx379_cstack, rx379_cur, rx379_curclass, "$!cstack"
  rx379_fail1201:
    unless rx379_bstack, rx379_done1199
    pop $I19, rx379_bstack
    if_null rx379_cstack, rx379_cstack_done1204
    unless rx379_cstack, rx379_cstack_done1204
    dec $I19
    set $P11, rx379_cstack[$I19]
  rx379_cstack_done1204:
    pop rx379_rep, rx379_bstack
    pop rx379_pos, rx379_bstack
    pop $I19, rx379_bstack
    lt rx379_pos, -1, rx379_done1199
    lt rx379_pos, 0, rx379_fail1201
    eq $I19, 0, rx379_fail1201
    nqp_islist $I20, rx379_cstack
    unless $I20, rx379_jump1202
    elements $I18, rx379_bstack
    le $I18, 0, rx379_cut1203
    dec $I18
    set $I18, rx379_bstack[$I18]
  rx379_cut1203:
    assign rx379_cstack, $I18
  rx379_jump1202:
    jump $I19
  rx379_done1199:
    rx379_cur."!cursor_fail"()
    .return (rx379_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_87_1347804160.506_caps" :subid("cuid_memo_179_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_87_1347804160.506_nfa" :subid("cuid_memo_180_1347804160.506")
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
.sub "" :subid("cuid_89_1347804160.506") :anon :lex :outer("cuid_92_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5002 = 'cuid_88_1347804160.506' 
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
    eq $I19, 1, rx384_restart1216
    gt rx384_pos, rx384_eos, rx384_fail1217
    repr_get_attr_int $I11, self, rx384_curclass, "$!from"
    ne $I11, -1, rxscan385_done1223
    goto rxscan385_scan1222
  rxscan385_loop1221:
    inc rx384_pos
    gt rx384_pos, rx384_eos, rx384_fail1217
    repr_bind_attr_int rx384_cur, rx384_curclass, "$!from", rx384_pos
  rxscan385_scan1222:
    nqp_rxmark rx384_bstack, rxscan385_loop1221, rx384_pos, 0
  rxscan385_done1223:
  alt386_01225:
    nqp_rxmark rx384_bstack, alt386_11227, rx384_pos, 0
    add $I11, rx384_pos, 1
    gt $I11, rx384_eos, rx384_fail1217
    substr $S10, rx384_tgt, rx384_pos, 1
    ne $S10, ucs4:"\\", rx384_fail1217
    add rx384_pos, 1
    repr_bind_attr_int rx384_cur, rx384_curclass, "$!pos", rx384_pos
    $P11 = rx384_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx384_curclass, "$!pos"
    lt $I11, 0, rx384_fail1217
    nqp_rxmark rx384_bstack, rxsubrule387_pass1226, -1, 0
  rxsubrule387_pass1226:
    rx384_cstack = rx384_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx384_pos, $P11, rx384_curclass, "$!pos"
    goto alt386_end1224
  alt386_11227:
    .const 'Sub' $P5001 = 'cuid_88_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx384_cur, rx384_curclass, "$!pos", rx384_pos
    $P11 = rx384_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx384_curclass, "$!pos"
    lt $I11, 0, rx384_fail1217
    nqp_rxmark rx384_bstack, rxsubrule391_pass1240, -1, 0
  rxsubrule391_pass1240:
    rx384_cstack = rx384_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx384_pos, $P11, rx384_curclass, "$!pos"
  alt386_end1224:
    rx384_cur."!cursor_pass"(rx384_pos, 'backtrack'=>1)
    .return (rx384_cur)
  rx384_restart1216:
    repr_get_attr_obj rx384_cstack, rx384_cur, rx384_curclass, "$!cstack"
  rx384_fail1217:
    unless rx384_bstack, rx384_done1215
    pop $I19, rx384_bstack
    if_null rx384_cstack, rx384_cstack_done1220
    unless rx384_cstack, rx384_cstack_done1220
    dec $I19
    set $P11, rx384_cstack[$I19]
  rx384_cstack_done1220:
    pop rx384_rep, rx384_bstack
    pop rx384_pos, rx384_bstack
    pop $I19, rx384_bstack
    lt rx384_pos, -1, rx384_done1215
    lt rx384_pos, 0, rx384_fail1217
    eq $I19, 0, rx384_fail1217
    nqp_islist $I20, rx384_cstack
    unless $I20, rx384_jump1218
    elements $I18, rx384_bstack
    le $I18, 0, rx384_cut1219
    dec $I18
    set $I18, rx384_bstack[$I18]
  rx384_cut1219:
    assign rx384_cstack, $I18
  rx384_jump1218:
    jump $I19
  rx384_done1215:
    rx384_cur."!cursor_fail"()
    .return (rx384_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_89_1347804160.506_caps" :subid("cuid_memo_181_1347804160.506")
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
.sub "" :subid("cuid_88_1347804160.506") :anon :lex :outer("cuid_89_1347804160.506")
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
    eq $I19, 1, rx388_restart1230
    gt rx388_pos, rx388_eos, rx388_fail1231
    repr_get_attr_int $I11, self, rx388_curclass, "$!from"
    ne $I11, -1, rxscan389_done1237
    goto rxscan389_scan1236
  rxscan389_loop1235:
    inc rx388_pos
    gt rx388_pos, rx388_eos, rx388_fail1231
    repr_bind_attr_int rx388_cur, rx388_curclass, "$!from", rx388_pos
  rxscan389_scan1236:
    nqp_rxmark rx388_bstack, rxscan389_loop1235, rx388_pos, 0
  rxscan389_done1237:
    nqp_rxmark rx388_bstack, rxconj390_fail1238, rx388_pos, 0
    goto rxconj390_first1239
  rxconj390_fail1238:
    goto rx388_fail1231
  rxconj390_first1239:
    add $I11, rx388_pos, 1
    gt $I11, rx388_eos, rx388_fail1231
    substr $S10, rx388_tgt, rx388_pos, 1
    eq $S10, ucs4:"]", rx388_fail1231
    add rx388_pos, 1
    nqp_rxpeek $I19, rx388_bstack, rxconj390_fail1238
    inc $I19
    set $I11, rx388_bstack[$I19]
    nqp_rxmark rx388_bstack, rxconj390_fail1238, $I11, rx388_pos
    set rx388_pos, $I11
    add $I11, rx388_pos, 1
    gt $I11, rx388_eos, rx388_fail1231
    substr $S10, rx388_tgt, rx388_pos, 1
    eq $S10, ucs4:"\\", rx388_fail1231
    add rx388_pos, 1
    nqp_rxpeek $I19, rx388_bstack, rxconj390_fail1238
    inc $I19
    set $I11, rx388_bstack[$I19]
    inc $I19
    set $I12, rx388_bstack[$I19]
    ne rx388_pos, $I12, rx388_fail1231
    set rx388_pos, $I11
    ge rx388_pos, rx388_eos, rx388_fail1231
    add rx388_pos, 1
    rx388_cur."!cursor_pass"(rx388_pos, 'backtrack'=>1)
    .return (rx388_cur)
  rx388_restart1230:
    repr_get_attr_obj rx388_cstack, rx388_cur, rx388_curclass, "$!cstack"
  rx388_fail1231:
    unless rx388_bstack, rx388_done1229
    pop $I19, rx388_bstack
    if_null rx388_cstack, rx388_cstack_done1234
    unless rx388_cstack, rx388_cstack_done1234
    dec $I19
    set $P11, rx388_cstack[$I19]
  rx388_cstack_done1234:
    pop rx388_rep, rx388_bstack
    pop rx388_pos, rx388_bstack
    pop $I19, rx388_bstack
    lt rx388_pos, -1, rx388_done1229
    lt rx388_pos, 0, rx388_fail1231
    eq $I19, 0, rx388_fail1231
    nqp_islist $I20, rx388_cstack
    unless $I20, rx388_jump1232
    elements $I18, rx388_bstack
    le $I18, 0, rx388_cut1233
    dec $I18
    set $I18, rx388_bstack[$I18]
  rx388_cut1233:
    assign rx388_cstack, $I18
  rx388_jump1232:
    jump $I19
  rx388_done1229:
    rx388_cur."!cursor_fail"()
    .return (rx388_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_88_1347804160.506_caps" :subid("cuid_memo_182_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1347804160.506") :anon :lex :outer("cuid_92_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .param pmc self 
    .const 'Sub' $P5002 = 'cuid_90_1347804160.506' 
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
    eq $I19, 1, rx396_restart1250
    gt rx396_pos, rx396_eos, rx396_fail1251
    repr_get_attr_int $I11, self, rx396_curclass, "$!from"
    ne $I11, -1, rxscan397_done1257
    goto rxscan397_scan1256
  rxscan397_loop1255:
    inc rx396_pos
    gt rx396_pos, rx396_eos, rx396_fail1251
    repr_bind_attr_int rx396_cur, rx396_curclass, "$!from", rx396_pos
  rxscan397_scan1256:
    nqp_rxmark rx396_bstack, rxscan397_loop1255, rx396_pos, 0
  rxscan397_done1257:
  alt398_01259:
    nqp_rxmark rx396_bstack, alt398_11261, rx396_pos, 0
    add $I11, rx396_pos, 1
    gt $I11, rx396_eos, rx396_fail1251
    substr $S10, rx396_tgt, rx396_pos, 1
    ne $S10, ucs4:"\\", rx396_fail1251
    add rx396_pos, 1
    repr_bind_attr_int rx396_cur, rx396_curclass, "$!pos", rx396_pos
    $P11 = rx396_cur."backslash"()
    repr_get_attr_int $I11, $P11, rx396_curclass, "$!pos"
    lt $I11, 0, rx396_fail1251
    nqp_rxmark rx396_bstack, rxsubrule399_pass1260, -1, 0
  rxsubrule399_pass1260:
    rx396_cstack = rx396_cur."!cursor_capture"($P11, "backslash")
    repr_get_attr_int rx396_pos, $P11, rx396_curclass, "$!pos"
    goto alt398_end1258
  alt398_11261:
    .const 'Sub' $P5001 = 'cuid_90_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx396_cur, rx396_curclass, "$!pos", rx396_pos
    $P11 = rx396_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx396_curclass, "$!pos"
    lt $I11, 0, rx396_fail1251
    nqp_rxmark rx396_bstack, rxsubrule403_pass1274, -1, 0
  rxsubrule403_pass1274:
    rx396_cstack = rx396_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx396_pos, $P11, rx396_curclass, "$!pos"
  alt398_end1258:
    rx396_cur."!cursor_pass"(rx396_pos, 'backtrack'=>1)
    .return (rx396_cur)
  rx396_restart1250:
    repr_get_attr_obj rx396_cstack, rx396_cur, rx396_curclass, "$!cstack"
  rx396_fail1251:
    unless rx396_bstack, rx396_done1249
    pop $I19, rx396_bstack
    if_null rx396_cstack, rx396_cstack_done1254
    unless rx396_cstack, rx396_cstack_done1254
    dec $I19
    set $P11, rx396_cstack[$I19]
  rx396_cstack_done1254:
    pop rx396_rep, rx396_bstack
    pop rx396_pos, rx396_bstack
    pop $I19, rx396_bstack
    lt rx396_pos, -1, rx396_done1249
    lt rx396_pos, 0, rx396_fail1251
    eq $I19, 0, rx396_fail1251
    nqp_islist $I20, rx396_cstack
    unless $I20, rx396_jump1252
    elements $I18, rx396_bstack
    le $I18, 0, rx396_cut1253
    dec $I18
    set $I18, rx396_bstack[$I18]
  rx396_cut1253:
    assign rx396_cstack, $I18
  rx396_jump1252:
    jump $I19
  rx396_done1249:
    rx396_cur."!cursor_fail"()
    .return (rx396_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_91_1347804160.506_caps" :subid("cuid_memo_183_1347804160.506")
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
.sub "" :subid("cuid_90_1347804160.506") :anon :lex :outer("cuid_91_1347804160.506")
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
    eq $I19, 1, rx400_restart1264
    gt rx400_pos, rx400_eos, rx400_fail1265
    repr_get_attr_int $I11, self, rx400_curclass, "$!from"
    ne $I11, -1, rxscan401_done1271
    goto rxscan401_scan1270
  rxscan401_loop1269:
    inc rx400_pos
    gt rx400_pos, rx400_eos, rx400_fail1265
    repr_bind_attr_int rx400_cur, rx400_curclass, "$!from", rx400_pos
  rxscan401_scan1270:
    nqp_rxmark rx400_bstack, rxscan401_loop1269, rx400_pos, 0
  rxscan401_done1271:
    nqp_rxmark rx400_bstack, rxconj402_fail1272, rx400_pos, 0
    goto rxconj402_first1273
  rxconj402_fail1272:
    goto rx400_fail1265
  rxconj402_first1273:
    add $I11, rx400_pos, 1
    gt $I11, rx400_eos, rx400_fail1265
    substr $S10, rx400_tgt, rx400_pos, 1
    eq $S10, ucs4:"]", rx400_fail1265
    add rx400_pos, 1
    nqp_rxpeek $I19, rx400_bstack, rxconj402_fail1272
    inc $I19
    set $I11, rx400_bstack[$I19]
    nqp_rxmark rx400_bstack, rxconj402_fail1272, $I11, rx400_pos
    set rx400_pos, $I11
    add $I11, rx400_pos, 1
    gt $I11, rx400_eos, rx400_fail1265
    substr $S10, rx400_tgt, rx400_pos, 1
    eq $S10, ucs4:"\\", rx400_fail1265
    add rx400_pos, 1
    nqp_rxpeek $I19, rx400_bstack, rxconj402_fail1272
    inc $I19
    set $I11, rx400_bstack[$I19]
    inc $I19
    set $I12, rx400_bstack[$I19]
    ne rx400_pos, $I12, rx400_fail1265
    set rx400_pos, $I11
    ge rx400_pos, rx400_eos, rx400_fail1265
    add rx400_pos, 1
    rx400_cur."!cursor_pass"(rx400_pos, 'backtrack'=>1)
    .return (rx400_cur)
  rx400_restart1264:
    repr_get_attr_obj rx400_cstack, rx400_cur, rx400_curclass, "$!cstack"
  rx400_fail1265:
    unless rx400_bstack, rx400_done1263
    pop $I19, rx400_bstack
    if_null rx400_cstack, rx400_cstack_done1268
    unless rx400_cstack, rx400_cstack_done1268
    dec $I19
    set $P11, rx400_cstack[$I19]
  rx400_cstack_done1268:
    pop rx400_rep, rx400_bstack
    pop rx400_pos, rx400_bstack
    pop $I19, rx400_bstack
    lt rx400_pos, -1, rx400_done1263
    lt rx400_pos, 0, rx400_fail1265
    eq $I19, 0, rx400_fail1265
    nqp_islist $I20, rx400_cstack
    unless $I20, rx400_jump1266
    elements $I18, rx400_bstack
    le $I18, 0, rx400_cut1267
    dec $I18
    set $I18, rx400_bstack[$I18]
  rx400_cut1267:
    assign rx400_cstack, $I18
  rx400_jump1266:
    jump $I19
  rx400_done1263:
    rx400_cur."!cursor_fail"()
    .return (rx400_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_90_1347804160.506_caps" :subid("cuid_memo_184_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_internal" :subid("cuid_95_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 233
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_94_1347804160.506' 
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
    eq $I19, 1, rx416_restart1302
    gt rx416_pos, rx416_eos, rx416_fail1303
    repr_get_attr_int $I11, self, rx416_curclass, "$!from"
    ne $I11, -1, rxscan417_done1309
    goto rxscan417_scan1308
  rxscan417_loop1307:
    inc rx416_pos
    gt rx416_pos, rx416_eos, rx416_fail1303
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!from", rx416_pos
  rxscan417_scan1308:
    nqp_rxmark rx416_bstack, rxscan417_loop1307, rx416_pos, 0
  rxscan417_done1309:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt418_01311
    nqp_push_label $P11, alt418_11333
    nqp_rxmark rx416_bstack, alt418_end1310, -1, 0
    rx416_cur."!alt"(rx416_pos, "alt_nfa__21_1347804161.341", $P11)
    goto rx416_fail1303
  alt418_01311:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1303
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:":", rx416_fail1303
    add rx416_pos, 1
    nqp_rxmark rx416_bstack, rxquantr419_done1313, -1, 0
  rxquantr419_loop1312:
    .const 'Sub' $P5001 = 'cuid_94_1347804160.506' 
    capture_lex $P5001
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!pos", rx416_pos
    $P11 = rx416_cur.$P5001()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1303
    goto rxsubrule424_pass1329
  rxsubrule424_back1330:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1303
  rxsubrule424_pass1329:
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "n")
    set_addr $I11, rxsubrule424_back1330
    push rx416_bstack, $I11
    push rx416_bstack, 0
    push rx416_bstack, rx416_pos
    elements $I11, rx416_cstack
    push rx416_bstack, $I11
    repr_get_attr_int rx416_pos, $P11, rx416_curclass, "$!pos"
    nqp_rxpeek $I19, rx416_bstack, rxquantr419_done1313
    inc $I19
    inc $I19
    set rx416_rep, rx416_bstack[$I19]
    nqp_rxcommit rx416_bstack, rxquantr419_done1313
    inc rx416_rep
  rxquantr419_done1313:
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!pos", rx416_pos
    $P11 = rx416_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1303
    nqp_rxmark rx416_bstack, rxsubrule425_pass1331, -1, 0
  rxsubrule425_pass1331:
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx416_pos, $P11, rx416_curclass, "$!pos"
    le rx416_pos, 0, rx416_fail1303
    is_cclass $I11, .CCLASS_WORD, rx416_tgt, rx416_pos
    if $I11, rx416_fail1303
    sub $I11, rx416_pos, 1
    is_cclass $I11, .CCLASS_WORD, rx416_tgt, $I11
    unless $I11, rx416_fail1303
    goto alt418_end1310
  alt418_11333:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1303
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:":", rx416_fail1303
    add rx416_pos, 1
    repr_bind_attr_int rx416_cur, rx416_curclass, "$!pos", rx416_pos
    $P11 = rx416_cur."mod_ident"()
    repr_get_attr_int $I11, $P11, rx416_curclass, "$!pos"
    lt $I11, 0, rx416_fail1303
    nqp_rxmark rx416_bstack, rxsubrule427_pass1334, -1, 0
  rxsubrule427_pass1334:
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "mod_ident")
    repr_get_attr_int rx416_pos, $P11, rx416_curclass, "$!pos"
    nqp_rxmark rx416_bstack, rxquantr428_done1336, rx416_pos, 0
  rxquantr428_loop1335:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1303
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:"(", rx416_fail1303
    add rx416_pos, 1
    nqp_rxmark rx416_bstack, rxcap429_fail1338, rx416_pos, 0
    nqp_rxmark rx416_bstack, rxquantr430_done1340, -1, 0
  rxquantr430_loop1339:
    ge rx416_pos, rx416_eos, rx416_fail1303
    is_cclass $I11, .CCLASS_NUMERIC, rx416_tgt, rx416_pos
    unless $I11, rx416_fail1303
    add rx416_pos, 1
    nqp_rxpeek $I19, rx416_bstack, rxquantr430_done1340
    inc $I19
    inc $I19
    set rx416_rep, rx416_bstack[$I19]
    nqp_rxcommit rx416_bstack, rxquantr430_done1340
    inc rx416_rep
    nqp_rxmark rx416_bstack, rxquantr430_done1340, rx416_pos, rx416_rep
    goto rxquantr430_loop1339
  rxquantr430_done1340:
    nqp_rxpeek $I19, rx416_bstack, rxcap429_fail1338
    inc $I19
    set $I11, rx416_bstack[$I19]
    $P11 = rx416_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx416_pos)
    rx416_cstack = rx416_cur."!cursor_capture"($P11, "n")
    goto rxcap429_done1337
  rxcap429_fail1338:
    goto rx416_fail1303
  rxcap429_done1337:
    add $I11, rx416_pos, 1
    gt $I11, rx416_eos, rx416_fail1303
    substr $S10, rx416_tgt, rx416_pos, 1
    ne $S10, ucs4:")", rx416_fail1303
    add rx416_pos, 1
    nqp_rxpeek $I19, rx416_bstack, rxquantr428_done1336
    inc $I19
    inc $I19
    set rx416_rep, rx416_bstack[$I19]
    nqp_rxcommit rx416_bstack, rxquantr428_done1336
    inc rx416_rep
  rxquantr428_done1336:
    goto alt418_end1310
  alt418_end1310:
    nqp_rxcommit rx416_bstack, alt418_end1310
    rx416_cur."!cursor_pass"(rx416_pos, "mod_internal", 'backtrack'=>1)
    .return (rx416_cur)
  rx416_restart1302:
    repr_get_attr_obj rx416_cstack, rx416_cur, rx416_curclass, "$!cstack"
  rx416_fail1303:
    unless rx416_bstack, rx416_done1301
    pop $I19, rx416_bstack
    if_null rx416_cstack, rx416_cstack_done1306
    unless rx416_cstack, rx416_cstack_done1306
    dec $I19
    set $P11, rx416_cstack[$I19]
  rx416_cstack_done1306:
    pop rx416_rep, rx416_bstack
    pop rx416_pos, rx416_bstack
    pop $I19, rx416_bstack
    lt rx416_pos, -1, rx416_done1301
    lt rx416_pos, 0, rx416_fail1303
    eq $I19, 0, rx416_fail1303
    nqp_islist $I20, rx416_cstack
    unless $I20, rx416_jump1304
    elements $I18, rx416_bstack
    le $I18, 0, rx416_cut1305
    dec $I18
    set $I18, rx416_bstack[$I18]
  rx416_cut1305:
    assign rx416_cstack, $I18
  rx416_jump1304:
    jump $I19
  rx416_done1301:
    rx416_cur."!cursor_fail"()
    .return (rx416_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_95_1347804160.506_caps" :subid("cuid_memo_185_1347804160.506")
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
.sub "cuid_95_1347804160.506_nfa" :subid("cuid_memo_186_1347804160.506")
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
.sub "cuid_95_1347804160.506_alt_nfa__21_1347804161.341" :subid("cuid_memo_187_1347804160.506")
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
.sub "" :subid("cuid_94_1347804160.506") :anon :lex :outer("cuid_95_1347804160.506")
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
    eq $I19, 1, rx420_restart1316
    gt rx420_pos, rx420_eos, rx420_fail1317
    repr_get_attr_int $I11, self, rx420_curclass, "$!from"
    ne $I11, -1, rxscan421_done1323
    goto rxscan421_scan1322
  rxscan421_loop1321:
    inc rx420_pos
    gt rx420_pos, rx420_eos, rx420_fail1317
    repr_bind_attr_int rx420_cur, rx420_curclass, "$!from", rx420_pos
  rxscan421_scan1322:
    nqp_rxmark rx420_bstack, rxscan421_loop1321, rx420_pos, 0
  rxscan421_done1323:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt422_01325
    nqp_push_label $P11, alt422_11326
    nqp_rxmark rx420_bstack, alt422_end1324, -1, 0
    rx420_cur."!alt"(rx420_pos, "alt_nfa__20_1347804161.327", $P11)
    goto rx420_fail1317
  alt422_01325:
    add $I11, rx420_pos, 1
    gt $I11, rx420_eos, rx420_fail1317
    substr $S10, rx420_tgt, rx420_pos, 1
    ne $S10, ucs4:"!", rx420_fail1317
    add rx420_pos, 1
    goto alt422_end1324
  alt422_11326:
    nqp_rxmark rx420_bstack, rxquantr423_done1328, -1, 0
  rxquantr423_loop1327:
    ge rx420_pos, rx420_eos, rx420_fail1317
    is_cclass $I11, .CCLASS_NUMERIC, rx420_tgt, rx420_pos
    unless $I11, rx420_fail1317
    add rx420_pos, 1
    nqp_rxpeek $I19, rx420_bstack, rxquantr423_done1328
    inc $I19
    inc $I19
    set rx420_rep, rx420_bstack[$I19]
    nqp_rxcommit rx420_bstack, rxquantr423_done1328
    inc rx420_rep
    nqp_rxmark rx420_bstack, rxquantr423_done1328, rx420_pos, rx420_rep
    goto rxquantr423_loop1327
  rxquantr423_done1328:
    goto alt422_end1324
  alt422_end1324:
    rx420_cur."!cursor_pass"(rx420_pos, 'backtrack'=>1)
    .return (rx420_cur)
  rx420_restart1316:
    repr_get_attr_obj rx420_cstack, rx420_cur, rx420_curclass, "$!cstack"
  rx420_fail1317:
    unless rx420_bstack, rx420_done1315
    pop $I19, rx420_bstack
    if_null rx420_cstack, rx420_cstack_done1320
    unless rx420_cstack, rx420_cstack_done1320
    dec $I19
    set $P11, rx420_cstack[$I19]
  rx420_cstack_done1320:
    pop rx420_rep, rx420_bstack
    pop rx420_pos, rx420_bstack
    pop $I19, rx420_bstack
    lt rx420_pos, -1, rx420_done1315
    lt rx420_pos, 0, rx420_fail1317
    eq $I19, 0, rx420_fail1317
    nqp_islist $I20, rx420_cstack
    unless $I20, rx420_jump1318
    elements $I18, rx420_bstack
    le $I18, 0, rx420_cut1319
    dec $I18
    set $I18, rx420_bstack[$I18]
  rx420_cut1319:
    assign rx420_cstack, $I18
  rx420_jump1318:
    jump $I19
  rx420_done1315:
    rx420_cur."!cursor_fail"()
    .return (rx420_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1347804160.506_caps" :subid("cuid_memo_188_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_94_1347804160.506_nfa" :subid("cuid_memo_189_1347804160.506")
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
.sub "cuid_94_1347804160.506_alt_nfa__20_1347804161.327" :subid("cuid_memo_190_1347804160.506")
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
.sub "mod_ident" :subid("cuid_96_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 240
    .param pmc self 
    $P5001 = self."!protoregex"("mod_ident")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "mod_ident:sym<ignorecase>" :subid("cuid_97_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx431_restart1343
    gt rx431_pos, rx431_eos, rx431_fail1344
    repr_get_attr_int $I11, self, rx431_curclass, "$!from"
    ne $I11, -1, rxscan432_done1350
    goto rxscan432_scan1349
  rxscan432_loop1348:
    inc rx431_pos
    gt rx431_pos, rx431_eos, rx431_fail1344
    repr_bind_attr_int rx431_cur, rx431_curclass, "$!from", rx431_pos
  rxscan432_scan1349:
    nqp_rxmark rx431_bstack, rxscan432_loop1348, rx431_pos, 0
  rxscan432_done1350:
    nqp_rxmark rx431_bstack, rxcap433_fail1352, rx431_pos, 0
    add $I11, rx431_pos, 1
    gt $I11, rx431_eos, rx431_fail1344
    substr $S10, rx431_tgt, rx431_pos, 1
    ne $S10, ucs4:"i", rx431_fail1344
    add rx431_pos, 1
    nqp_rxpeek $I19, rx431_bstack, rxcap433_fail1352
    inc $I19
    set $I11, rx431_bstack[$I19]
    $P11 = rx431_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx431_pos)
    rx431_cstack = rx431_cur."!cursor_capture"($P11, "sym")
    goto rxcap433_done1351
  rxcap433_fail1352:
    goto rx431_fail1344
  rxcap433_done1351:
    nqp_rxmark rx431_bstack, rxquantr434_done1354, rx431_pos, 0
  rxquantr434_loop1353:
    add $I11, rx431_pos, 9
    gt $I11, rx431_eos, rx431_fail1344
    substr $S10, rx431_tgt, rx431_pos, 9
    ne $S10, ucs4:"gnorecase", rx431_fail1344
    add rx431_pos, 9
    nqp_rxpeek $I19, rx431_bstack, rxquantr434_done1354
    inc $I19
    inc $I19
    set rx431_rep, rx431_bstack[$I19]
    nqp_rxcommit rx431_bstack, rxquantr434_done1354
    inc rx431_rep
  rxquantr434_done1354:
    rx431_cur."!cursor_pass"(rx431_pos, "mod_ident:sym<ignorecase>", 'backtrack'=>1)
    .return (rx431_cur)
  rx431_restart1343:
    repr_get_attr_obj rx431_cstack, rx431_cur, rx431_curclass, "$!cstack"
  rx431_fail1344:
    unless rx431_bstack, rx431_done1342
    pop $I19, rx431_bstack
    if_null rx431_cstack, rx431_cstack_done1347
    unless rx431_cstack, rx431_cstack_done1347
    dec $I19
    set $P11, rx431_cstack[$I19]
  rx431_cstack_done1347:
    pop rx431_rep, rx431_bstack
    pop rx431_pos, rx431_bstack
    pop $I19, rx431_bstack
    lt rx431_pos, -1, rx431_done1342
    lt rx431_pos, 0, rx431_fail1344
    eq $I19, 0, rx431_fail1344
    nqp_islist $I20, rx431_cstack
    unless $I20, rx431_jump1345
    elements $I18, rx431_bstack
    le $I18, 0, rx431_cut1346
    dec $I18
    set $I18, rx431_bstack[$I18]
  rx431_cut1346:
    assign rx431_cstack, $I18
  rx431_jump1345:
    jump $I19
  rx431_done1342:
    rx431_cur."!cursor_fail"()
    .return (rx431_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_97_1347804160.506_caps" :subid("cuid_memo_191_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_97_1347804160.506_nfa" :subid("cuid_memo_192_1347804160.506")
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
.sub "mod_ident:sym<ratchet>" :subid("cuid_98_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx435_restart1357
    gt rx435_pos, rx435_eos, rx435_fail1358
    repr_get_attr_int $I11, self, rx435_curclass, "$!from"
    ne $I11, -1, rxscan436_done1364
    goto rxscan436_scan1363
  rxscan436_loop1362:
    inc rx435_pos
    gt rx435_pos, rx435_eos, rx435_fail1358
    repr_bind_attr_int rx435_cur, rx435_curclass, "$!from", rx435_pos
  rxscan436_scan1363:
    nqp_rxmark rx435_bstack, rxscan436_loop1362, rx435_pos, 0
  rxscan436_done1364:
    nqp_rxmark rx435_bstack, rxcap437_fail1366, rx435_pos, 0
    add $I11, rx435_pos, 1
    gt $I11, rx435_eos, rx435_fail1358
    substr $S10, rx435_tgt, rx435_pos, 1
    ne $S10, ucs4:"r", rx435_fail1358
    add rx435_pos, 1
    nqp_rxpeek $I19, rx435_bstack, rxcap437_fail1366
    inc $I19
    set $I11, rx435_bstack[$I19]
    $P11 = rx435_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx435_pos)
    rx435_cstack = rx435_cur."!cursor_capture"($P11, "sym")
    goto rxcap437_done1365
  rxcap437_fail1366:
    goto rx435_fail1358
  rxcap437_done1365:
    nqp_rxmark rx435_bstack, rxquantr438_done1368, rx435_pos, 0
  rxquantr438_loop1367:
    add $I11, rx435_pos, 6
    gt $I11, rx435_eos, rx435_fail1358
    substr $S10, rx435_tgt, rx435_pos, 6
    ne $S10, ucs4:"atchet", rx435_fail1358
    add rx435_pos, 6
    nqp_rxpeek $I19, rx435_bstack, rxquantr438_done1368
    inc $I19
    inc $I19
    set rx435_rep, rx435_bstack[$I19]
    nqp_rxcommit rx435_bstack, rxquantr438_done1368
    inc rx435_rep
  rxquantr438_done1368:
    rx435_cur."!cursor_pass"(rx435_pos, "mod_ident:sym<ratchet>", 'backtrack'=>1)
    .return (rx435_cur)
  rx435_restart1357:
    repr_get_attr_obj rx435_cstack, rx435_cur, rx435_curclass, "$!cstack"
  rx435_fail1358:
    unless rx435_bstack, rx435_done1356
    pop $I19, rx435_bstack
    if_null rx435_cstack, rx435_cstack_done1361
    unless rx435_cstack, rx435_cstack_done1361
    dec $I19
    set $P11, rx435_cstack[$I19]
  rx435_cstack_done1361:
    pop rx435_rep, rx435_bstack
    pop rx435_pos, rx435_bstack
    pop $I19, rx435_bstack
    lt rx435_pos, -1, rx435_done1356
    lt rx435_pos, 0, rx435_fail1358
    eq $I19, 0, rx435_fail1358
    nqp_islist $I20, rx435_cstack
    unless $I20, rx435_jump1359
    elements $I18, rx435_bstack
    le $I18, 0, rx435_cut1360
    dec $I18
    set $I18, rx435_bstack[$I18]
  rx435_cut1360:
    assign rx435_cstack, $I18
  rx435_jump1359:
    jump $I19
  rx435_done1356:
    rx435_cur."!cursor_fail"()
    .return (rx435_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_98_1347804160.506_caps" :subid("cuid_memo_193_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_98_1347804160.506_nfa" :subid("cuid_memo_194_1347804160.506")
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
.sub "mod_ident:sym<sigspace>" :subid("cuid_99_1347804160.506") :anon :lex :outer("cuid_100_1347804160.506")
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
    eq $I19, 1, rx439_restart1371
    gt rx439_pos, rx439_eos, rx439_fail1372
    repr_get_attr_int $I11, self, rx439_curclass, "$!from"
    ne $I11, -1, rxscan440_done1378
    goto rxscan440_scan1377
  rxscan440_loop1376:
    inc rx439_pos
    gt rx439_pos, rx439_eos, rx439_fail1372
    repr_bind_attr_int rx439_cur, rx439_curclass, "$!from", rx439_pos
  rxscan440_scan1377:
    nqp_rxmark rx439_bstack, rxscan440_loop1376, rx439_pos, 0
  rxscan440_done1378:
    nqp_rxmark rx439_bstack, rxcap441_fail1380, rx439_pos, 0
    add $I11, rx439_pos, 1
    gt $I11, rx439_eos, rx439_fail1372
    substr $S10, rx439_tgt, rx439_pos, 1
    ne $S10, ucs4:"s", rx439_fail1372
    add rx439_pos, 1
    nqp_rxpeek $I19, rx439_bstack, rxcap441_fail1380
    inc $I19
    set $I11, rx439_bstack[$I19]
    $P11 = rx439_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx439_pos)
    rx439_cstack = rx439_cur."!cursor_capture"($P11, "sym")
    goto rxcap441_done1379
  rxcap441_fail1380:
    goto rx439_fail1372
  rxcap441_done1379:
    nqp_rxmark rx439_bstack, rxquantr442_done1382, rx439_pos, 0
  rxquantr442_loop1381:
    add $I11, rx439_pos, 7
    gt $I11, rx439_eos, rx439_fail1372
    substr $S10, rx439_tgt, rx439_pos, 7
    ne $S10, ucs4:"igspace", rx439_fail1372
    add rx439_pos, 7
    nqp_rxpeek $I19, rx439_bstack, rxquantr442_done1382
    inc $I19
    inc $I19
    set rx439_rep, rx439_bstack[$I19]
    nqp_rxcommit rx439_bstack, rxquantr442_done1382
    inc rx439_rep
  rxquantr442_done1382:
    rx439_cur."!cursor_pass"(rx439_pos, "mod_ident:sym<sigspace>", 'backtrack'=>1)
    .return (rx439_cur)
  rx439_restart1371:
    repr_get_attr_obj rx439_cstack, rx439_cur, rx439_curclass, "$!cstack"
  rx439_fail1372:
    unless rx439_bstack, rx439_done1370
    pop $I19, rx439_bstack
    if_null rx439_cstack, rx439_cstack_done1375
    unless rx439_cstack, rx439_cstack_done1375
    dec $I19
    set $P11, rx439_cstack[$I19]
  rx439_cstack_done1375:
    pop rx439_rep, rx439_bstack
    pop rx439_pos, rx439_bstack
    pop $I19, rx439_bstack
    lt rx439_pos, -1, rx439_done1370
    lt rx439_pos, 0, rx439_fail1372
    eq $I19, 0, rx439_fail1372
    nqp_islist $I20, rx439_cstack
    unless $I20, rx439_jump1373
    elements $I18, rx439_bstack
    le $I18, 0, rx439_cut1374
    dec $I18
    set $I18, rx439_bstack[$I18]
  rx439_cut1374:
    assign rx439_cstack, $I18
  rx439_jump1373:
    jump $I19
  rx439_done1370:
    rx439_cur."!cursor_fail"()
    .return (rx439_cur) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_99_1347804160.506_caps" :subid("cuid_memo_195_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'Hash'
    box $P5002, 0
    set $P5001["sym"], $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace ["Sub"]
.sub "cuid_99_1347804160.506_nfa" :subid("cuid_memo_196_1347804160.506")
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
.sub "" :subid("cuid_157_1347804160.506") :anon :lex :outer("cuid_1_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 247
    .const 'Sub' $P5063 = 'cuid_165_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_167_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_171_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_184_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_101_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_102_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_103_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_104_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_105_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_106_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_107_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_108_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_109_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_110_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_111_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_112_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_113_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_114_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_115_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_116_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_117_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_118_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_119_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_120_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_121_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_122_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_123_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_124_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_125_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_126_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_127_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_128_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_129_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_130_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_131_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_132_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_133_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_134_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_135_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_136_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_137_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_138_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_139_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_140_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_141_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_142_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_143_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_144_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_145_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_146_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_147_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_148_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_149_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_150_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_151_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_152_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_153_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_154_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_155_1347804160.506' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_156_1347804160.506' 
    capture_lex $P5063 
    .lex "&backmod", $P101 
    .lex "&qbuildsub", $P102 
    .lex "&capnames", $P103 
    .lex "&qalt_nfas", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    .const 'Sub' $P5001 = 'cuid_165_1347804160.506' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_167_1347804160.506' 
    capture_lex $P5002
    set $P102, $P5002
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5003["qbuildsub"], $P102
    .const 'Sub' $P5005 = 'cuid_171_1347804160.506' 
    capture_lex $P5005
    set $P103, $P5005
    .const 'Sub' $P5006 = 'cuid_184_1347804160.506' 
    capture_lex $P5006
    set $P104, $P5006
    .const 'Sub' $P5007 = 'cuid_101_1347804160.506' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_102_1347804160.506' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_103_1347804160.506' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_104_1347804160.506' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_105_1347804160.506' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_106_1347804160.506' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_107_1347804160.506' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_108_1347804160.506' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_109_1347804160.506' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_110_1347804160.506' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_111_1347804160.506' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_112_1347804160.506' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_113_1347804160.506' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_114_1347804160.506' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_115_1347804160.506' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_116_1347804160.506' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_117_1347804160.506' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_118_1347804160.506' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_119_1347804160.506' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_120_1347804160.506' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_121_1347804160.506' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_122_1347804160.506' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_123_1347804160.506' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_124_1347804160.506' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_125_1347804160.506' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_126_1347804160.506' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_127_1347804160.506' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_128_1347804160.506' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_129_1347804160.506' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_130_1347804160.506' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_131_1347804160.506' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_132_1347804160.506' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_133_1347804160.506' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_134_1347804160.506' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_135_1347804160.506' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_136_1347804160.506' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_137_1347804160.506' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_138_1347804160.506' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_139_1347804160.506' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_140_1347804160.506' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_141_1347804160.506' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_142_1347804160.506' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_143_1347804160.506' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_144_1347804160.506' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_145_1347804160.506' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_146_1347804160.506' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_147_1347804160.506' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_148_1347804160.506' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_149_1347804160.506' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_150_1347804160.506' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_151_1347804160.506' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_152_1347804160.506' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_153_1347804160.506' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_154_1347804160.506' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_155_1347804160.506' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_156_1347804160.506' 
    capture_lex $P5062
    .return ($P5062) 
.end
.HLL "nqp"
.namespace []
.sub "backmod" :subid("cuid_165_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 766
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$ast", _lex_param_0 
    .lex "$backmod", _lex_param_1 
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, ":"
    unless $I5001 goto if443_else1383 
.annotate 'line', 767
    $P5001 = _lex_param_0."backtrack"("r")
    set $P5007, $P5001
    goto if443_end1384
  if443_else1383:
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, ":?"
    set $I5004, $I5002
    if $I5002 goto unless445_end1388 
    set $S5003, _lex_param_1
    iseq $I5003, $S5003, "?"
    set $I5004, $I5003
  unless445_end1388:
    unless $I5004 goto if444_else1385 
.annotate 'line', 768
    $P5002 = _lex_param_0."backtrack"("f")
    set $P5006, $P5002
    goto if444_end1386
  if444_else1385:
    set $S5004, _lex_param_1
    iseq $I5005, $S5004, ":!"
    set $I5007, $I5005
    if $I5005 goto unless447_end1392 
    set $S5005, _lex_param_1
    iseq $I5006, $S5005, "!"
    set $I5007, $I5006
  unless447_end1392:
    box $P5005, $I5007
    set $P5004, $P5005
    unless $I5007 goto if446_end1390 
.annotate 'line', 769
    $P5003 = _lex_param_0."backtrack"("g")
    set $P5004, $P5003
  if446_end1390:
    set $P5006, $P5004
  if444_end1386:
    set $P5007, $P5006
  if443_end1384:
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "qbuildsub" :subid("cuid_167_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 773
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc _lex_param_2 :named("anon") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc _lex_param_3 :named("addself") :optional 
    .param int haz_param_4 :opt_flag 
    .const 'Sub' $P5113 = 'cuid_166_1347804160.506' 
    capture_lex $P5113 
    .const 'Sub' $P5113 = 'cuid_168_1347804160.506' 
    capture_lex $P5113 
    if haz_param_2, default1425
    nqp_get_sc_object $P5108, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5107, $P5108, "QAST"
    get_who $P5106, $P5107
    set $P5105, $P5106["Block"]
    unless_null $P5105, fallback1426
    nqp_get_sc_object $P5109, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5105, $P5109
  fallback1426:
    $P5110 = $P5105."new"()
    set _lex_param_1, $P5110
  default1425:
    if haz_param_3, default1427
    nqp_get_sc_object $P5111, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_2, $P5111
  default1427:
    if haz_param_4, default1428
    nqp_get_sc_object $P5112, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_3, $P5112
  default1428:
    .lex "$blockid", $P101 
    .lex "$hashpast", $P102 
    .lex "$initpast", $P103 
    .lex "$capblock", $P104 
    .lex "$nfapast", $P105 
    .lex "$qast", _lex_param_0 
    .lex "$block", _lex_param_1 
    .lex "$anon", _lex_param_2 
    .lex "$addself", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P105, $P5005
.annotate 'line', 774
    $P5006 = _lex_param_1."cuid"()
    set $P101, $P5006
.annotate 'line', 775
    nqp_get_sc_object $P5010, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Op"]
    unless_null $P5007, fallback1393
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback1393:
    $P5012 = $P5007."new"("hash" :named("op"))
    set $P102, $P5012
.annotate 'line', 776
    $P5016 = "&capnames"(_lex_param_0, 0)
    set $P5013, $P5016
    iter $P5015, $P5016
  for_next1398:
    unless $P5015, for_done1400
    shift $P5018, $P5015
  for_redo1399:
    .const 'Sub' $P5017 = 'cuid_166_1347804160.506' 
    capture_lex $P5017
    $P5013 = $P5017($P5018)
    goto for_next1398
  for_done1400:
.annotate 'line', 783
    nqp_get_sc_object $P5022, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Stmts"]
    unless_null $P5019, fallback1401
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5023
  fallback1401:
    $P5024 = $P5019."new"()
    set $P103, $P5024
    set $P5032, _lex_param_3
    unless _lex_param_3 goto if449_end1403 
.annotate 'line', 784
.annotate 'line', 785
    nqp_get_sc_object $P5028, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5027, $P5028, "QAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["Var"]
    unless_null $P5025, fallback1404
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5025, $P5029
  fallback1404:
    $P5030 = $P5025."new"("self" :named("name"), "local" :named("scope"), "param" :named("decl"))
    $P5031 = $P103."push"($P5030)
    set $P5032, $P5031
  if449_end1403:
.annotate 'line', 787
    nqp_get_sc_object $P5036, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5035, $P5036, "QAST"
    get_who $P5034, $P5035
    set $P5033, $P5034["BlockMemo"]
    unless_null $P5033, fallback1405
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5033, $P5037
  fallback1405:
    set $S5002, $P101
    concat $S5001, $S5002, "_caps"
    $P5038 = $P5033."new"($P102, $S5001 :named("name"))
    set $P104, $P5038
.annotate 'line', 788
    nqp_get_sc_object $P5042, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5041, $P5042, "QAST"
    get_who $P5040, $P5041
    set $P5039, $P5040["Stmt"]
    unless_null $P5039, fallback1406
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5039, $P5043
  fallback1406:
    $P5044 = $P5039."new"($P104)
    $P5045 = $P103."push"($P5044)
.annotate 'line', 790
    nqp_get_sc_object $P5049, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5048, $P5049, "QRegex"
    get_who $P5047, $P5048
    set $P5046, $P5047["NFA"]
    unless_null $P5046, fallback1407
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5046, $P5050
  fallback1407:
    $P5051 = $P5046."new"()
    $P5052 = $P5051."addnode"(_lex_param_0)
    $P5053 = $P5052."qast"()
    set $P105, $P5053
    set $P5056, $P105
    unless $P105 goto if450_end1409 
    .const 'Sub' $P5054 = 'cuid_168_1347804160.506' 
    capture_lex $P5054
    $P5055 = $P5054()
    set $P5056, $P5055
  if450_end1409:
.annotate 'line', 795
    $P5057 = "&qalt_nfas"(_lex_param_0, $P101, $P103)
.annotate 'line', 797
    $P5058 = _lex_param_1."symbol"(utf8:"$\x{a2}")
    set $P5067, $P5058
    if $P5058 goto unless451_end1413 
.annotate 'line', 798
    nqp_get_sc_object $P5062, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5061, $P5062, "QAST"
    get_who $P5060, $P5061
    set $P5059, $P5060["Var"]
    unless_null $P5059, fallback1414
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5059, $P5063
  fallback1414:
    $P5064 = $P5059."new"(utf8:"$\x{a2}" :named("name"), "lexical" :named("scope"), "var" :named("decl"))
    $P5065 = $P103."push"($P5064)
.annotate 'line', 799
    $P5066 = _lex_param_1."symbol"(utf8:"$\x{a2}", "lexical" :named("scope"))
    set $P5067, $P5066
  unless451_end1413:
    set _lex_param_1["orig_qast"], _lex_param_0
.annotate 'line', 804
    nqp_get_sc_object $P5071, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5070, $P5071, "QAST"
    get_who $P5069, $P5070
    set $P5068, $P5069["Regex"]
    unless_null $P5068, fallback1415
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5068, $P5072
  fallback1415:
.annotate 'line', 805
    nqp_get_sc_object $P5076, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5075, $P5076, "QAST"
    get_who $P5074, $P5075
    set $P5073, $P5074["Regex"]
    unless_null $P5073, fallback1416
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5073, $P5077
  fallback1416:
    $P5078 = $P5073."new"("scan" :named("rxtype"))
    unless _lex_param_2 goto if452_else1417 
.annotate 'line', 808
    nqp_get_sc_object $P5082, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5081, $P5082, "QAST"
    get_who $P5080, $P5081
    set $P5079, $P5080["Regex"]
    unless_null $P5079, fallback1419
    nqp_get_sc_object $P5083, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5079, $P5083
  fallback1419:
    $P5084 = $P5079."new"("pass" :named("rxtype"))
    set $P5101, $P5084
    goto if452_end1418
  if452_else1417:
.annotate 'line', 809
    nqp_get_sc_object $P5088, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5087, $P5088, "QAST"
    get_who $P5086, $P5087
    set $P5085, $P5086["Regex"]
    unless_null $P5085, fallback1420
    nqp_get_sc_object $P5089, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5085, $P5089
  fallback1420:
    find_dynamic_lex $P5091, "%*RX"
    unless_null $P5091, fallback1421
    nqp_get_sc_object $P5094, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5093, $P5094
    set $P5092, $P5093["%RX"]
    unless_null $P5092, fallback1422
    nqp_get_sc_object $P5096, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5095, $P5096
    new $P5097, 'Hash'
    set $P5095["%RX"], $P5097
    set $P5092, $P5097
  fallback1422:
    unless_null $P5092, vivi_4531423
    die "Contextual %*RX not found"
    box $P5098, "Contextual %*RX not found"
    set $P5092, $P5098
  vivi_4531423:
    set $P5091, $P5092
  fallback1421:
    set $P5090, $P5091["name"]
    unless_null $P5090, fallback1424
    nqp_get_sc_object $P5099, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5090, $P5099
  fallback1424:
    $P5100 = $P5085."new"("pass" :named("rxtype"), $P5090 :named("name"))
    set $P5101, $P5100
  if452_end1418:
    $P5102 = $P5068."new"($P5078, _lex_param_0, $P5101, "concat" :named("rxtype"))
    set _lex_param_0, $P5102
.annotate 'line', 810
    $P5103 = _lex_param_1."push"($P103)
.annotate 'line', 811
    $P5104 = _lex_param_1."push"(_lex_param_0)
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1347804160.506") :anon :lex :outer("cuid_167_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 776
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 777
    $P5001 = _lex_param_0."key"()
    set $S5001, $P5001
    isgt $I5001, $S5001, ""
    box $P5022, $I5001
    set $P5021, $P5022
    unless $I5001 goto if448_end1395 
.annotate 'line', 778
    find_lex $P5002, "$hashpast"
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["SVal"]
    unless_null $P5003, fallback1396
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5007
  fallback1396:
    $P5008 = _lex_param_0."key"()
    $P5009 = $P5003."new"($P5008 :named("value"))
    $P5010 = $P5002."push"($P5009)
.annotate 'line', 779
    find_lex $P5011, "$hashpast"
    nqp_get_sc_object $P5015, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["IVal"]
    unless_null $P5012, fallback1397
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5016
  fallback1397:
.annotate 'line', 780
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
  if448_end1395:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1347804160.506") :anon :lex :outer("cuid_167_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 791
    .lex "$nfablock", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 792
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["BlockMemo"]
    unless_null $P5002, fallback1410
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1410:
    find_lex $P5007, "$blockid"
    set $S5002, $P5007
    concat $S5001, $S5002, "_nfa"
    find_lex $P5008, "$nfapast"
    $P5009 = $P5002."new"($P5008, $S5001 :named("name"))
    set $P101, $P5009
.annotate 'line', 793
    find_lex $P5010, "$initpast"
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Stmt"]
    unless_null $P5011, fallback1411
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback1411:
    $P5016 = $P5011."new"($P101)
    $P5017 = $P5010."push"($P5016)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "capnames" :subid("cuid_171_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 815
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5025 = 'cuid_170_1347804160.506' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_174_1347804160.506' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_176_1347804160.506' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_178_1347804160.506' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_181_1347804160.506' 
    capture_lex $P5025 
    .lex "%capnames", $P101 
    .lex "$rxtype", $P102 
    .lex "$ast", _lex_param_0 
    .lex "$count", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
.annotate 'line', 817
    $P5003 = _lex_param_0."rxtype"()
    set $P102, $P5003
    set $S5001, $P102
    iseq $I5001, $S5001, "concat"
    unless $I5001 goto if454_else1429 
.annotate 'line', 818
.annotate 'line', 819
    $P5007 = _lex_param_0."list"()
    set $P5004, $P5007
    iter $P5006, $P5007
  for_next1436:
    unless $P5006, for_done1438
    shift $P5009, $P5006
  for_redo1437:
    .const 'Sub' $P5008 = 'cuid_170_1347804160.506' 
    capture_lex $P5008
    $P5004 = $P5008($P5009)
    goto for_next1436
  for_done1438:
    set $P5024, $P5004
    goto if454_end1430
  if454_else1429:
    set $S5002, $P102
    iseq $I5002, $S5002, "altseq"
    set $I5004, $I5002
    if $I5002 goto unless456_end1442 
    set $S5003, $P102
    iseq $I5003, $S5003, "alt"
    set $I5004, $I5003
  unless456_end1442:
    unless $I5004 goto if455_else1439 
    .const 'Sub' $P5010 = 'cuid_174_1347804160.506' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5023, $P5011
    goto if455_end1440
  if455_else1439:
    set $S5004, $P102
    iseq $I5005, $S5004, "subrule"
    set $I5007, $I5005
    unless $I5005 goto if461_end1462 
.annotate 'line', 836
    $P5012 = _lex_param_0."subtype"()
    set $S5005, $P5012
    iseq $I5006, $S5005, "capture"
    set $I5007, $I5006
  if461_end1462:
    unless $I5007 goto if460_else1459 
    .const 'Sub' $P5013 = 'cuid_176_1347804160.506' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5022, $P5014
    goto if460_end1460
  if460_else1459:
    set $S5006, $P102
    iseq $I5008, $S5006, "subcapture"
    unless $I5008 goto if465_else1472 
    .const 'Sub' $P5015 = 'cuid_178_1347804160.506' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5021, $P5016
    goto if465_end1473
  if465_else1472:
    set $S5007, $P102
    iseq $I5009, $S5007, "quant"
    box $P5020, $I5009
    set $P5019, $P5020
    unless $I5009 goto if468_end1489 
    .const 'Sub' $P5017 = 'cuid_181_1347804160.506' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
  if468_end1489:
    set $P5021, $P5019
  if465_end1473:
    set $P5022, $P5021
  if460_end1460:
    set $P5023, $P5022
  if455_end1440:
    set $P5024, $P5023
  if454_end1430:
    set $P101[""], _lex_param_1
    delete $P101["$!from"]
    delete $P101["$!to"]
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1347804160.506") :anon :lex :outer("cuid_171_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_169_1347804160.506' 
    capture_lex $P5011 
    .lex "%x", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 820
    find_lex $P5002, "$count"
    $P5003 = "&capnames"(_lex_param_0, $P5002)
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next1432:
    unless $P5006, for_done1434
    shift $P5008, $P5006
  for_redo1433:
    .const 'Sub' $P5007 = 'cuid_169_1347804160.506' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next1432
  for_done1434:
    set $P5009, $P101[""]
    unless_null $P5009, fallback1435
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5010
  fallback1435:
    store_lex "$count", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1347804160.506") :anon :lex :outer("cuid_170_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 821
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1431
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5006
  fallback1431:
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
.sub "" :subid("cuid_174_1347804160.506") :anon :lex :outer("cuid_171_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 825
    .const 'Sub' $P5010 = 'cuid_173_1347804160.506' 
    capture_lex $P5010 
    .lex "$max", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_lex $P5002, "$count"
    set $P101, $P5002
.annotate 'line', 827
    find_lex $P5006, "$ast"
    $P5007 = $P5006."list"()
    set $P5003, $P5007
    iter $P5005, $P5007
  for_next1456:
    unless $P5005, for_done1458
    shift $P5009, $P5005
  for_redo1457:
    .const 'Sub' $P5008 = 'cuid_173_1347804160.506' 
    capture_lex $P5008
    $P5003 = $P5008($P5009)
    goto for_next1456
  for_done1458:
    store_lex "$count", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1347804160.506") :anon :lex :outer("cuid_174_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 827
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_172_1347804160.506' 
    capture_lex $P5016 
    .lex "%x", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 828
    find_lex $P5002, "$count"
    $P5003 = "&capnames"(_lex_param_0, $P5002)
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next1449:
    unless $P5006, for_done1451
    shift $P5008, $P5006
  for_redo1450:
    .const 'Sub' $P5007 = 'cuid_172_1347804160.506' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next1449
  for_done1451:
    set $P5009, $P101[""]
    unless_null $P5009, fallback1454
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5010
  fallback1454:
    set $N5001, $P5009
    find_lex $P5011, "$max"
    set $N5002, $P5011
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if459_end1453 
    set $P5012, $P101[""]
    unless_null $P5012, fallback1455
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5013
  fallback1455:
    store_lex "$max", $P5012
    set $P5014, $P5012
  if459_end1453:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1347804160.506") :anon :lex :outer("cuid_173_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 829
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
.annotate 'line', 830
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1447
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5006
  fallback1447:
    set $N5001, $P5003
    set $N5002, 2
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if458_end1446 
    find_lex $P5008, "%x"
    $P5009 = _lex_param_0."key"()
    set $S5003, $P5009
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback1448
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5010
  fallback1448:
    set $N5003, $P5007
    set $N5004, 1
    iseq $I5002, $N5003, $N5004
    set $I5003, $I5002
  if458_end1446:
    unless $I5003 goto if457_else1443 
    set $I5004, 1
    goto if457_end1444
  if457_else1443:
    set $I5004, 2
  if457_end1444:
    box $P5011, $I5004
    set $P5001[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1347804160.506") :anon :lex :outer("cuid_171_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 836
    .const 'Sub' $P5016 = 'cuid_175_1347804160.506' 
    capture_lex $P5016 
    .lex "$name", $P101 
    .lex "@names", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
.annotate 'line', 837
    find_lex $P5003, "$ast"
    $P5004 = $P5003."name"()
    set $P101, $P5004
    set $S5001, $P101
    iseq $I5001, $S5001, ""
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if462_end1464 
.annotate 'line', 838
    find_lex $P5005, "$count"
    set $P101, $P5005
    find_lex $P5006, "$ast"
    $P5007 = $P5006."name"($P101)
    set $P5008, $P5007
  if462_end1464:
    set $S5002, $P101
    split $P5010, "=", $S5002
    set $P102, $P5010
    set $P5011, $P102
    iter $P5013, $P102
  for_next1469:
    unless $P5013, for_done1471
    shift $P5015, $P5013
  for_redo1470:
    .const 'Sub' $P5014 = 'cuid_175_1347804160.506' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1469
  for_done1471:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1347804160.506") :anon :lex :outer("cuid_176_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 840
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, "0"
    set $I5003, $I5001
    if $I5001 goto unless464_end1468 
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    set $I5003, $I5002
  unless464_end1468:
    box $P5003, $I5003
    set $P5002, $P5003
    unless $I5003 goto if463_end1466 
.annotate 'line', 841
    set $N5004, _lex_param_0
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5001, $N5003
    store_lex "$count", $P5001
    set $P5002, $P5001
  if463_end1466:
    find_lex $P5004, "%capnames"
    set $S5002, _lex_param_0
    box $P5005, 1
    set $P5004[$S5002], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1347804160.506") :anon :lex :outer("cuid_171_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 845
    .const 'Sub' $P5022 = 'cuid_177_1347804160.506' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_179_1347804160.506' 
    capture_lex $P5022 
    .lex "%x", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 846
    find_lex $P5006, "$ast"
    $P5007 = $P5006."name"()
    set $S5001, $P5007
    split $P5005, " ", $S5001
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next1478:
    unless $P5004, for_done1480
    shift $P5009, $P5004
  for_redo1479:
    .const 'Sub' $P5008 = 'cuid_177_1347804160.506' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next1478
  for_done1480:
.annotate 'line', 850
    find_lex $P5011, "$ast"
    set $P5010, $P5011[0]
    unless_null $P5010, fallback1481
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5012
  fallback1481:
    find_lex $P5013, "$count"
    $P5014 = "&capnames"($P5010, $P5013)
    set $P101, $P5014
    set $P5015, $P101
    iter $P5017, $P101
  for_next1484:
    unless $P5017, for_done1486
    shift $P5019, $P5017
  for_redo1485:
    .const 'Sub' $P5018 = 'cuid_179_1347804160.506' 
    capture_lex $P5018
    $P5015 = $P5018($P5019)
    goto for_next1484
  for_done1486:
    set $P5020, $P101[""]
    unless_null $P5020, fallback1487
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5021
  fallback1487:
    store_lex "$count", $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1347804160.506") :anon :lex :outer("cuid_178_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 846
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, "0"
    set $I5003, $I5001
    if $I5001 goto unless467_end1477 
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    set $I5003, $I5002
  unless467_end1477:
    box $P5003, $I5003
    set $P5002, $P5003
    unless $I5003 goto if466_end1475 
.annotate 'line', 847
    set $N5004, _lex_param_0
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5001, $N5003
    store_lex "$count", $P5001
    set $P5002, $P5001
  if466_end1475:
    find_lex $P5004, "%capnames"
    set $S5002, _lex_param_0
    box $P5005, 1
    set $P5004[$S5002], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1347804160.506") :anon :lex :outer("cuid_178_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 851
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%capnames"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    find_lex $P5004, "%capnames"
    $P5005 = _lex_param_0."key"()
    set $S5002, $P5005
    set $P5003, $P5004[$S5002]
    unless_null $P5003, fallback1482
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5006
  fallback1482:
    set $N5002, $P5003
    find_lex $P5008, "%x"
    $P5009 = _lex_param_0."key"()
    set $S5003, $P5009
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback1483
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5010
  fallback1483:
    set $N5003, $P5007
    add $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5001[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1347804160.506") :anon :lex :outer("cuid_171_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 854
    .const 'Sub' $P5014 = 'cuid_180_1347804160.506' 
    capture_lex $P5014 
    .lex "%astcap", $P101 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 855
    find_lex $P5003, "$ast"
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1490
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5004
  fallback1490:
    find_lex $P5005, "$count"
    $P5006 = "&capnames"($P5002, $P5005)
    set $P101, $P5006
    set $P5007, $P101
    iter $P5009, $P101
  for_next1491:
    unless $P5009, for_done1493
    shift $P5011, $P5009
  for_redo1492:
    .const 'Sub' $P5010 = 'cuid_180_1347804160.506' 
    capture_lex $P5010
    $P5007 = $P5010($P5011)
    goto for_next1491
  for_done1493:
    set $P5012, $P101[""]
    unless_null $P5012, fallback1494
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5013
  fallback1494:
    store_lex "$count", $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1347804160.506") :anon :lex :outer("cuid_181_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 856
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
.sub "qalt_nfas" :subid("cuid_184_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 865
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5018 = 'cuid_183_1347804160.506' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_185_1347804160.506' 
    capture_lex $P5018 
    .lex "$rxtype", $P101 
    .lex "$ast", _lex_param_0 
    .lex "$subid", _lex_param_1 
    .lex "$initpast", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 866
    $P5002 = _lex_param_0."rxtype"()
    set $P101, $P5002
    set $S5001, $P101
    iseq $I5001, $S5001, "alt"
    unless $I5001 goto if469_else1495 
    .const 'Sub' $P5003 = 'cuid_183_1347804160.506' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5017, $P5004
    goto if469_end1496
  if469_else1495:
    set $S5002, $P101
    iseq $I5002, $S5002, "subcapture"
    set $I5004, $I5002
    if $I5002 goto unless471_end1508 
    set $S5003, $P101
    iseq $I5003, $S5003, "quant"
    set $I5004, $I5003
  unless471_end1508:
    unless $I5004 goto if470_else1505 
.annotate 'line', 877
.annotate 'line', 878
    set $P5005, _lex_param_0[0]
    unless_null $P5005, fallback1509
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5005, $P5006
  fallback1509:
    $P5007 = "&qalt_nfas"($P5005, _lex_param_1, _lex_param_2)
    set $P5016, $P5007
    goto if470_end1506
  if470_else1505:
    set $S5004, $P101
    iseq $I5005, $S5004, "concat"
    set $I5007, $I5005
    if $I5005 goto unless475_end1517 
    set $S5005, $P101
    iseq $I5006, $S5005, "altseq"
    set $I5007, $I5006
  unless475_end1517:
    set $I5009, $I5007
    if $I5007 goto unless474_end1515 
    set $S5006, $P101
    iseq $I5008, $S5006, "conj"
    set $I5009, $I5008
  unless474_end1515:
    set $I5011, $I5009
    if $I5009 goto unless473_end1513 
    set $S5007, $P101
    iseq $I5010, $S5007, "conjseq"
    set $I5011, $I5010
  unless473_end1513:
    box $P5015, $I5011
    set $P5014, $P5015
    unless $I5011 goto if472_end1511 
.annotate 'line', 880
.annotate 'line', 881
    $P5011 = _lex_param_0."list"()
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next1518:
    unless $P5010, for_done1520
    shift $P5013, $P5010
  for_redo1519:
    .const 'Sub' $P5012 = 'cuid_185_1347804160.506' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next1518
  for_done1520:
    set $P5014, $P5008
  if472_end1511:
    set $P5016, $P5014
  if470_end1506:
    set $P5017, $P5016
  if469_end1496:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1347804160.506") :anon :lex :outer("cuid_184_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 867
    .const 'Sub' $P5041 = 'cuid_182_1347804160.506' 
    capture_lex $P5041 
    .lex "$nfapast", $P101 
    .lex "$nfablock", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
.annotate 'line', 868
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Op"]
    unless_null $P5003, fallback1497
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5007
  fallback1497:
    $P5008 = $P5003."new"("list" :named("op"))
    set $P101, $P5008
.annotate 'line', 869
    find_lex $P5009, "$ast"
    nqp_get_sc_object $P5013, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Node"]
    unless_null $P5010, fallback1498
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback1498:
    $P5015 = $P5010."unique"("alt_nfa_")
    set $S5003, $P5015
    concat $S5002, $S5003, "_"
    time $N5001
    set $S5004, $N5001
    concat $S5001, $S5002, $S5004
    $P5016 = $P5009."name"($S5001)
.annotate 'line', 870
    find_lex $P5020, "$ast"
    $P5021 = $P5020."list"()
    set $P5017, $P5021
    iter $P5019, $P5021
  for_next1500:
    unless $P5019, for_done1502
    shift $P5023, $P5019
  for_redo1501:
    .const 'Sub' $P5022 = 'cuid_182_1347804160.506' 
    capture_lex $P5022
    $P5017 = $P5022($P5023)
    goto for_next1500
  for_done1502:
.annotate 'line', 874
    nqp_get_sc_object $P5027, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["BlockMemo"]
    unless_null $P5024, fallback1503
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5024, $P5028
  fallback1503:
    find_lex $P5029, "$subid"
    set $S5007, $P5029
    concat $S5006, $S5007, "_"
    find_lex $P5030, "$ast"
    $P5031 = $P5030."name"()
    set $S5008, $P5031
    concat $S5005, $S5006, $S5008
    $P5032 = $P5024."new"($P101, $S5005 :named("name"))
    set $P102, $P5032
.annotate 'line', 875
    find_lex $P5033, "$initpast"
    nqp_get_sc_object $P5037, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5036, $P5037, "QAST"
    get_who $P5035, $P5036
    set $P5034, $P5035["Stmt"]
    unless_null $P5034, fallback1504
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5034, $P5038
  fallback1504:
    $P5039 = $P5034."new"($P102)
    $P5040 = $P5033."push"($P5039)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1347804160.506") :anon :lex :outer("cuid_183_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 870
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 871
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&qalt_nfas"(_lex_param_0, $P5001, $P5002)
.annotate 'line', 872
    find_lex $P5004, "$nfapast"
    nqp_get_sc_object $P5008, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5007, $P5008, "QRegex"
    get_who $P5006, $P5007
    set $P5005, $P5006["NFA"]
    unless_null $P5005, fallback1499
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5005, $P5009
  fallback1499:
    $P5010 = $P5005."new"()
    $P5011 = $P5010."addnode"(_lex_param_0)
    $P5012 = $P5011."qast"(1 :named("non_empty"))
    $P5013 = $P5004."push"($P5012)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1347804160.506") :anon :lex :outer("cuid_184_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 881
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$subid"
    find_lex $P5002, "$initpast"
    $P5003 = "&qalt_nfas"(_lex_param_0, $P5001, $P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_101_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 248
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 249
    unless_null _lex_param_1, fallback1521
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1521:
    set $P5001, _lex_param_1["nibbler"]
    unless_null $P5001, fallback1522
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1522:
    $P5004 = $P5001."ast"()
    $P5005 = "&qbuildsub"($P5004, 1 :named("anon"), 1 :named("addself"))
    $P5006 = _lex_param_1."!make"($P5005)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "nibbler" :subid("cuid_102_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback1523
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1523:
    set $P5001, _lex_param_1["termaltseq"]
    unless_null $P5001, fallback1524
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1524:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "termaltseq" :subid("cuid_103_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_186_1347804160.506' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 255
    unless_null _lex_param_1, fallback1525
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1525:
    set $P5003, _lex_param_1["termconjseq"]
    unless_null $P5003, fallback1526
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1526:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1527
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1527:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1530
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1530:
    set $P5008, _lex_param_1["termconjseq"]
    unless_null $P5008, fallback1531
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1531:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if476_end1529 
.annotate 'line', 256
.annotate 'line', 257
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1532
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback1532:
    $P5016 = $P5011."new"("altseq" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1533
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5021
  fallback1533:
    set $P5020, _lex_param_1["termconjseq"]
    unless_null $P5020, fallback1534
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5022
  fallback1534:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1535:
    unless $P5019, for_done1537
    shift $P5024, $P5019
  for_redo1536:
    .const 'Sub' $P5023 = 'cuid_186_1347804160.506' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1535
  for_done1537:
    set $P5025, $P5017
  if476_end1529:
.annotate 'line', 260
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1347804160.506") :anon :lex :outer("cuid_103_1347804160.506")
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
.sub "termconjseq" :subid("cuid_104_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 263
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_187_1347804160.506' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 264
    unless_null _lex_param_1, fallback1538
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1538:
    set $P5003, _lex_param_1["termalt"]
    unless_null $P5003, fallback1539
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1539:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1540
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1540:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1543
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1543:
    set $P5008, _lex_param_1["termalt"]
    unless_null $P5008, fallback1544
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1544:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if477_end1542 
.annotate 'line', 265
.annotate 'line', 266
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1545
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback1545:
    $P5016 = $P5011."new"("conjseq" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1546
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5021
  fallback1546:
    set $P5020, _lex_param_1["termalt"]
    unless_null $P5020, fallback1547
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5022
  fallback1547:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1548:
    unless $P5019, for_done1550
    shift $P5024, $P5019
  for_redo1549:
    .const 'Sub' $P5023 = 'cuid_187_1347804160.506' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1548
  for_done1550:
    set $P5025, $P5017
  if477_end1542:
.annotate 'line', 269
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1347804160.506") :anon :lex :outer("cuid_104_1347804160.506")
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
.sub "termalt" :subid("cuid_105_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 272
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_188_1347804160.506' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 273
    unless_null _lex_param_1, fallback1551
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1551:
    set $P5003, _lex_param_1["termconj"]
    unless_null $P5003, fallback1552
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1552:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1553
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1553:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1556
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1556:
    set $P5008, _lex_param_1["termconj"]
    unless_null $P5008, fallback1557
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1557:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if478_end1555 
.annotate 'line', 274
.annotate 'line', 275
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1558
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback1558:
    $P5016 = $P5011."new"("alt" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1559
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5021
  fallback1559:
    set $P5020, _lex_param_1["termconj"]
    unless_null $P5020, fallback1560
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5022
  fallback1560:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1561:
    unless $P5019, for_done1563
    shift $P5024, $P5019
  for_redo1562:
    .const 'Sub' $P5023 = 'cuid_188_1347804160.506' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1561
  for_done1563:
    set $P5025, $P5017
  if478_end1555:
.annotate 'line', 278
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1347804160.506") :anon :lex :outer("cuid_105_1347804160.506")
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
.sub "termconj" :subid("cuid_106_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 281
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_189_1347804160.506' 
    capture_lex $P5028 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 282
    unless_null _lex_param_1, fallback1564
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1564:
    set $P5003, _lex_param_1["termish"]
    unless_null $P5003, fallback1565
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1565:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1566
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1566:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    unless_null _lex_param_1, fallback1569
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1569:
    set $P5008, _lex_param_1["termish"]
    unless_null $P5008, fallback1570
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1570:
    set $N5001, $P5008
    set $N5002, 1
    isgt $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if479_end1568 
.annotate 'line', 283
.annotate 'line', 284
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["Regex"]
    unless_null $P5011, fallback1571
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback1571:
    $P5016 = $P5011."new"("conj" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5016
    unless_null _lex_param_1, fallback1572
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5021
  fallback1572:
    set $P5020, _lex_param_1["termish"]
    unless_null $P5020, fallback1573
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5022
  fallback1573:
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next1574:
    unless $P5019, for_done1576
    shift $P5024, $P5019
  for_redo1575:
    .const 'Sub' $P5023 = 'cuid_189_1347804160.506' 
    capture_lex $P5023
    $P5017 = $P5023($P5024)
    goto for_next1574
  for_done1576:
    set $P5025, $P5017
  if479_end1568:
.annotate 'line', 287
    $P5027 = _lex_param_1."!make"($P101)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1347804160.506") :anon :lex :outer("cuid_106_1347804160.506")
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
.sub "termish" :subid("cuid_107_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 290
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_190_1347804160.506' 
    capture_lex $P5019 
    .lex "$qast", $P101 
    .lex "$lastlit", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
.annotate 'line', 291
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Regex"]
    unless_null $P5003, fallback1577
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5007
  fallback1577:
    $P5008 = $P5003."new"("concat" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5008
    box $P5009, 0
    set $P102, $P5009
    unless_null _lex_param_1, fallback1578
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5014
  fallback1578:
    set $P5013, _lex_param_1["noun"]
    unless_null $P5013, fallback1579
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5015
  fallback1579:
    set $P5010, $P5013
    iter $P5012, $P5013
  for_next1598:
    unless $P5012, for_done1600
    shift $P5017, $P5012
  for_redo1599:
    .const 'Sub' $P5016 = 'cuid_190_1347804160.506' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next1598
  for_done1600:
.annotate 'line', 308
    $P5018 = _lex_param_1."!make"($P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1347804160.506") :anon :lex :outer("cuid_107_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 293
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 294
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    set $P5039, $P101
    unless $P101 goto if480_end1581 
.annotate 'line', 295
    find_lex $P5003, "$lastlit"
    set $P5005, $P5003
    unless $P5003 goto if483_end1587 
.annotate 'line', 296
    $P5004 = $P101."rxtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "literal"
    box $P5006, $I5001
    set $P5005, $P5006
  if483_end1587:
    set $P5015, $P5005
    unless $P5005 goto if482_end1585 
.annotate 'line', 297
    nqp_get_sc_object $P5010, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Node"]
    unless_null $P5007, fallback1588
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback1588:
    set $P5012, $P101[0]
    unless_null $P5012, fallback1589
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5013
  fallback1589:
    $P5014 = $P5007."ACCEPTS"($P5012)
    isfalse $I5002, $P5014
    box $P5016, $I5002
    set $P5015, $P5016
  if482_end1585:
    unless $P5015 goto if481_else1582 
    find_lex $P5017, "$lastlit"
    find_lex $P5019, "$lastlit"
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1590
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5020
  fallback1590:
    set $S5003, $P5018
    set $P5021, $P101[0]
    unless_null $P5021, fallback1591
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5021, $P5022
  fallback1591:
    set $S5004, $P5021
    concat $S5002, $S5003, $S5004
    box $P5023, $S5002
    set $P5017[0], $P5023
    set $P5038, $P5023
    goto if481_end1583
  if481_else1582:
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
    unless $I5003 goto if485_end1595 
.annotate 'line', 303
    nqp_get_sc_object $P5031, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5030, $P5031, "QAST"
    get_who $P5029, $P5030
    set $P5028, $P5029["Node"]
    unless_null $P5028, fallback1596
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5028, $P5032
  fallback1596:
    set $P5033, $P101[0]
    unless_null $P5033, fallback1597
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5033, $P5034
  fallback1597:
    $P5035 = $P5028."ACCEPTS"($P5033)
    isfalse $I5004, $P5035
    set $I5005, $I5004
  if485_end1595:
    unless $I5005 goto if484_else1592 
    set $P5036, $P101
    goto if484_end1593
  if484_else1592:
    box $P5037, 0
    set $P5036, $P5037
  if484_end1593:
    store_lex "$lastlit", $P5036
    set $P5038, $P5036
  if481_end1583:
    set $P5039, $P5038
  if480_end1581:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "quantified_atom" :subid("cuid_108_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 311
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5090 = 'cuid_191_1347804160.506' 
    capture_lex $P5090 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 312
    unless_null _lex_param_1, fallback1601
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5003
  fallback1601:
    set $P5002, _lex_param_1["atom"]
    unless_null $P5002, fallback1602
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5004
  fallback1602:
    $P5005 = $P5002."ast"()
    set $P101, $P5005
    unless_null _lex_param_1, fallback1605
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5007
  fallback1605:
    set $P5006, _lex_param_1["quantifier"]
    unless_null $P5006, fallback1606
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5008
  fallback1606:
    set $P5011, $P5006
    unless $P5006 goto if486_end1604 
    .const 'Sub' $P5009 = 'cuid_191_1347804160.506' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if486_end1604:
    unless_null _lex_param_1, fallback1612
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5013
  fallback1612:
    set $P5012, _lex_param_1["separator"]
    unless_null $P5012, fallback1613
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5014
  fallback1613:
    set $P5061, $P5012
    unless $P5012 goto if487_end1611 
.annotate 'line', 318
.annotate 'line', 319
    $P5015 = $P101."rxtype"()
    set $S5001, $P5015
    iseq $I5001, $S5001, "quant"
    box $P5026, $I5001
    set $P5025, $P5026
    if $I5001 goto unless488_end1615 
.annotate 'line', 320
    $P5016 = _lex_param_1."CURSOR"()
    unless_null _lex_param_1, fallback1616
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5020
  fallback1616:
    set $P5019, _lex_param_1["separator"]
    unless_null $P5019, fallback1617
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5021
  fallback1617:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1618
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5022
  fallback1618:
    set $P5017, $P5018["septype"]
    unless_null $P5017, fallback1619
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5023
  fallback1619:
    set $S5004, $P5017
    concat $S5003, "'", $S5004
    concat $S5002, $S5003, "' many only be used immediately following a quantifier"
    $P5024 = $P5016."panic"($S5002)
    set $P5025, $P5024
  unless488_end1615:
.annotate 'line', 323
    unless_null _lex_param_1, fallback1620
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5029
  fallback1620:
    set $P5028, _lex_param_1["separator"]
    unless_null $P5028, fallback1621
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5028, $P5030
  fallback1621:
    set $P5027, $P5028[0]
    unless_null $P5027, fallback1622
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5027, $P5031
  fallback1622:
    $P5032 = $P5027."ast"()
    $P5033 = $P101."push"($P5032)
    unless_null _lex_param_1, fallback1625
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5037
  fallback1625:
    set $P5036, _lex_param_1["separator"]
    unless_null $P5036, fallback1626
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5036, $P5038
  fallback1626:
    set $P5035, $P5036[0]
    unless_null $P5035, fallback1627
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5035, $P5039
  fallback1627:
    set $P5034, $P5035["septype"]
    unless_null $P5034, fallback1628
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5034, $P5040
  fallback1628:
    set $S5005, $P5034
    iseq $I5002, $S5005, "%%"
    box $P5060, $I5002
    set $P5059, $P5060
    unless $I5002 goto if489_end1624 
.annotate 'line', 324
.annotate 'line', 325
    nqp_get_sc_object $P5044, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5043, $P5044, "QAST"
    get_who $P5042, $P5043
    set $P5041, $P5042["Regex"]
    unless_null $P5041, fallback1629
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5041, $P5045
  fallback1629:
.annotate 'line', 326
    nqp_get_sc_object $P5049, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5048, $P5049, "QAST"
    get_who $P5047, $P5048
    set $P5046, $P5047["Regex"]
    unless_null $P5046, fallback1630
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5046, $P5050
  fallback1630:
    unless_null _lex_param_1, fallback1631
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5053
  fallback1631:
    set $P5052, _lex_param_1["separator"]
    unless_null $P5052, fallback1632
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5052, $P5054
  fallback1632:
    set $P5051, $P5052[0]
    unless_null $P5051, fallback1633
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5051, $P5055
  fallback1633:
    $P5056 = $P5051."ast"()
    $P5057 = $P5046."new"($P5056, "quant" :named("rxtype"), 0 :named("min"), 1 :named("max"))
    $P5058 = $P5041."new"($P101, $P5057, "concat" :named("rxtype"))
    set $P101, $P5058
    set $P5059, $P101
  if489_end1624:
    set $P5061, $P5059
  if487_end1611:
    set $P5063, $P101
    unless $P101 goto if492_end1639 
.annotate 'line', 329
    $P5062 = $P101."backtrack"()
    isfalse $I5003, $P5062
    box $P5064, $I5003
    set $P5063, $P5064
  if492_end1639:
    set $P5086, $P5063
    unless $P5063 goto if491_end1637 
    find_dynamic_lex $P5066, "%*RX"
    unless_null $P5066, fallback1642
    nqp_get_sc_object $P5069, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5068, $P5069
    set $P5067, $P5068["%RX"]
    unless_null $P5067, fallback1643
    nqp_get_sc_object $P5071, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5070, $P5071
    new $P5072, 'Hash'
    set $P5070["%RX"], $P5072
    set $P5067, $P5072
  fallback1643:
    unless_null $P5067, vivi_4941644
    die "Contextual %*RX not found"
    box $P5073, "Contextual %*RX not found"
    set $P5067, $P5073
  vivi_4941644:
    set $P5066, $P5067
  fallback1642:
    set $P5065, $P5066["r"]
    unless_null $P5065, fallback1645
    nqp_get_sc_object $P5074, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5065, $P5074
  fallback1645:
    set $P5085, $P5065
    if $P5065 goto unless493_end1641 
    unless_null _lex_param_1, fallback1648
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5076
  fallback1648:
    set $P5075, _lex_param_1["backmod"]
    unless_null $P5075, fallback1649
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5075, $P5077
  fallback1649:
    set $P5083, $P5075
    unless $P5075 goto if495_end1647 
    unless_null _lex_param_1, fallback1650
    nqp_get_sc_object $P5080, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5080
  fallback1650:
    set $P5079, _lex_param_1["backmod"]
    unless_null $P5079, fallback1651
    nqp_get_sc_object $P5081, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5079, $P5081
  fallback1651:
    set $P5078, $P5079[0]
    unless_null $P5078, fallback1652
    nqp_get_sc_object $P5082, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5078, $P5082
  fallback1652:
    set $S5006, $P5078
    iseq $I5004, $S5006, ":"
    box $P5084, $I5004
    set $P5083, $P5084
  if495_end1647:
    set $P5085, $P5083
  unless493_end1641:
    set $P5086, $P5085
  if491_end1637:
    set $P5088, $P5086
    unless $P5086 goto if490_end1635 
    $P5087 = $P101."backtrack"("r")
    set $P5088, $P5087
  if490_end1635:
.annotate 'line', 331
    $P5089 = _lex_param_1."!make"($P101)
    .return ($P5089) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1347804160.506") :anon :lex :outer("cuid_108_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 313
    .lex "$ast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 314
    find_lex $P5004, "$/"
    unless_null $P5004, fallback1607
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5005
  fallback1607:
    set $P5003, $P5004["quantifier"]
    unless_null $P5003, fallback1608
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5006
  fallback1608:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback1609
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5007
  fallback1609:
    $P5008 = $P5002."ast"()
    set $P101, $P5008
.annotate 'line', 315
    find_lex $P5009, "$qast"
    $P5010 = $P101."unshift"($P5009)
    store_lex "$qast", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "separator" :subid("cuid_109_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 334
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 335
    unless_null _lex_param_1, fallback1653
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1653:
    set $P5001, _lex_param_1["quantified_atom"]
    unless_null $P5001, fallback1654
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1654:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "atom" :subid("cuid_110_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 338
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_192_1347804160.506' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    unless_null _lex_param_1, fallback1657
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1657:
    set $P5001, _lex_param_1["metachar"]
    unless_null $P5001, fallback1658
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1658:
    unless $P5001 goto if496_else1655 
.annotate 'line', 339
.annotate 'line', 340
    unless_null _lex_param_1, fallback1659
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5005
  fallback1659:
    set $P5004, _lex_param_1["metachar"]
    unless_null $P5004, fallback1660
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5006
  fallback1660:
    $P5007 = $P5004."ast"()
    $P5008 = _lex_param_1."!make"($P5007)
    set $P5011, $P5008
    goto if496_end1656
  if496_else1655:
    .const 'Sub' $P5009 = 'cuid_192_1347804160.506' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if496_end1656:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1347804160.506") :anon :lex :outer("cuid_110_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 342
    .lex "$qast", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 343
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1661
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1661:
    find_lex $P5007, "$/"
    set $S5001, $P5007
    find_lex $P5008, "$/"
    $P5009 = $P5002."new"($S5001, "literal" :named("rxtype"), $P5008 :named("node"))
    set $P101, $P5009
    find_dynamic_lex $P5011, "%*RX"
    unless_null $P5011, fallback1664
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5013, $P5014
    set $P5012, $P5013["%RX"]
    unless_null $P5012, fallback1665
    nqp_get_sc_object $P5016, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5015, $P5016
    new $P5017, 'Hash'
    set $P5015["%RX"], $P5017
    set $P5012, $P5017
  fallback1665:
    unless_null $P5012, vivi_4981666
    die "Contextual %*RX not found"
    box $P5018, "Contextual %*RX not found"
    set $P5012, $P5018
  vivi_4981666:
    set $P5011, $P5012
  fallback1664:
    set $P5010, $P5011["i"]
    unless_null $P5010, fallback1667
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5019
  fallback1667:
    set $P5021, $P5010
    unless $P5010 goto if497_end1663 
.annotate 'line', 344
    $P5020 = $P101."subtype"("ignorecase")
    set $P5021, $P5020
  if497_end1663:
.annotate 'line', 345
    find_dynamic_lex $P5022, "$/"
    $P5023 = $P5022."!make"($P101)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<*>" :subid("cuid_111_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 349
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 350
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1668
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1668:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 0 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 351
    unless_null _lex_param_1, fallback1669
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1669:
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1670
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1670:
    $P5011 = "&backmod"($P101, $P5008)
    $P5012 = _lex_param_1."!make"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<+>" :subid("cuid_112_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 354
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 355
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1671
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1671:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 1 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 356
    unless_null _lex_param_1, fallback1672
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1672:
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1673
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1673:
    $P5011 = "&backmod"($P101, $P5008)
    $P5012 = _lex_param_1."!make"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<?>" :subid("cuid_113_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 359
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 360
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1674
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1674:
    $P5007 = $P5002."new"("quant" :named("rxtype"), 0 :named("min"), 1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 361
    unless_null _lex_param_1, fallback1675
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1675:
    set $P5008, _lex_param_1["backmod"]
    unless_null $P5008, fallback1676
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1676:
    $P5011 = "&backmod"($P101, $P5008)
    $P5012 = _lex_param_1."!make"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "quantifier:sym<**>" :subid("cuid_114_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 364
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 366
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1677
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1677:
    unless_null _lex_param_1, fallback1678
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1678:
    set $P5007, _lex_param_1["min"]
    unless_null $P5007, fallback1679
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1679:
    set $N5001, $P5007
    $P5010 = $P5002."new"("quant" :named("rxtype"), $N5001 :named("min"), -1 :named("max"), _lex_param_1 :named("node"))
    set $P101, $P5010
    unless_null _lex_param_1, fallback1682
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5012
  fallback1682:
    set $P5011, _lex_param_1["max"]
    unless_null $P5011, fallback1683
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5013
  fallback1683:
    isfalse $I5001, $P5011
    unless $I5001 goto if499_else1680 
.annotate 'line', 367
    unless_null _lex_param_1, fallback1684
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5015
  fallback1684:
    set $P5014, _lex_param_1["min"]
    unless_null $P5014, fallback1685
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5014, $P5016
  fallback1685:
    set $N5002, $P5014
    $P5017 = $P101."max"($N5002)
    set $P5031, $P5017
    goto if499_end1681
  if499_else1680:
    unless_null _lex_param_1, fallback1688
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5020
  fallback1688:
    set $P5019, _lex_param_1["max"]
    unless_null $P5019, fallback1689
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5021
  fallback1689:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1690
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5022
  fallback1690:
    set $S5001, $P5018
    isne $I5002, $S5001, "*"
    box $P5030, $I5002
    set $P5029, $P5030
    unless $I5002 goto if500_end1687 
.annotate 'line', 368
    unless_null _lex_param_1, fallback1691
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5025
  fallback1691:
    set $P5024, _lex_param_1["max"]
    unless_null $P5024, fallback1692
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5024, $P5026
  fallback1692:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback1693
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5023, $P5027
  fallback1693:
    set $N5003, $P5023
    $P5028 = $P101."max"($N5003)
    set $P5029, $P5028
  if500_end1687:
    set $P5031, $P5029
  if499_end1681:
.annotate 'line', 369
    unless_null _lex_param_1, fallback1694
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5033
  fallback1694:
    set $P5032, _lex_param_1["backmod"]
    unless_null $P5032, fallback1695
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5032, $P5034
  fallback1695:
    $P5035 = "&backmod"($P101, $P5032)
    $P5036 = _lex_param_1."!make"($P5035)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<ws>" :subid("cuid_115_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_dynamic_lex $P5003, "%*RX"
    unless_null $P5003, fallback1698
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["%RX"]
    unless_null $P5004, fallback1699
    nqp_get_sc_object $P5008, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5007, $P5008
    new $P5009, 'Hash'
    set $P5007["%RX"], $P5009
    set $P5004, $P5009
  fallback1699:
    unless_null $P5004, vivi_5021700
    die "Contextual %*RX not found"
    box $P5010, "Contextual %*RX not found"
    set $P5004, $P5010
  vivi_5021700:
    set $P5003, $P5004
  fallback1698:
    set $P5002, $P5003["s"]
    unless_null $P5002, fallback1701
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5011
  fallback1701:
    unless $P5002 goto if501_else1696 
.annotate 'line', 374
    nqp_get_sc_object $P5015, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback1702
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5016
  fallback1702:
.annotate 'line', 375
    nqp_get_sc_object $P5020, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Node"]
    unless_null $P5017, fallback1703
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5021
  fallback1703:
    nqp_get_sc_object $P5025, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5024, $P5025, "QAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["SVal"]
    unless_null $P5022, fallback1704
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5022, $P5026
  fallback1704:
    $P5027 = $P5022."new"("ws" :named("value"))
    $P5028 = $P5017."new"($P5027)
    $P5029 = $P5012."new"($P5028, "ws" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"))
    set $P5030, $P5029
    goto if501_end1697
  if501_else1696:
    box $P5031, 0
    set $P5030, $P5031
  if501_end1697:
    set $P101, $P5030
.annotate 'line', 377
    $P5032 = _lex_param_1."!make"($P101)
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<[ ]>" :subid("cuid_116_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 380
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 381
    unless_null _lex_param_1, fallback1705
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1705:
    set $P5001, _lex_param_1["nibbler"]
    unless_null $P5001, fallback1706
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1706:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<( )>" :subid("cuid_117_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 384
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$subpast", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
.annotate 'line', 385
    nqp_get_sc_object $P5006, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5005, $P5006, "QAST"
    get_who $P5004, $P5005
    set $P5003, $P5004["Node"]
    unless_null $P5003, fallback1707
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5007
  fallback1707:
    unless_null _lex_param_1, fallback1708
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback1708:
    set $P5008, _lex_param_1["nibbler"]
    unless_null $P5008, fallback1709
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback1709:
    $P5011 = $P5008."ast"()
    $P5012 = "&qbuildsub"($P5011, 1 :named("anon"), 1 :named("addself"))
    $P5013 = $P5003."new"($P5012)
    set $P101, $P5013
.annotate 'line', 386
    nqp_get_sc_object $P5017, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5016, $P5017, "QAST"
    get_who $P5015, $P5016
    set $P5014, $P5015["Regex"]
    unless_null $P5014, fallback1710
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5014, $P5018
  fallback1710:
    unless_null _lex_param_1, fallback1711
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5020
  fallback1711:
    set $P5019, _lex_param_1["nibbler"]
    unless_null $P5019, fallback1712
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5021
  fallback1712:
    $P5022 = $P5019."ast"()
    $P5023 = $P5014."new"($P101, $P5022, "subrule" :named("rxtype"), "capture" :named("subtype"), _lex_param_1 :named("node"))
    set $P102, $P5023
.annotate 'line', 388
    $P5024 = _lex_param_1."!make"($P102)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<'>" :subid("cuid_118_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 391
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$quote", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
.annotate 'line', 392
    unless_null _lex_param_1, fallback1713
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1713:
    set $P5003, _lex_param_1["quote_EXPR"]
    unless_null $P5003, fallback1714
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1714:
    $P5006 = $P5003."ast"()
    set $P101, $P5006
.annotate 'line', 393
    nqp_get_sc_object $P5010, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["SVal"]
    unless_null $P5007, fallback1717
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback1717:
    $P5012 = $P5007."ACCEPTS"($P101)
    set $P5014, $P5012
    unless $P5012 goto if503_end1716 
    $P5013 = $P101."value"()
    set $P101, $P5013
    set $P5014, $P101
  if503_end1716:
.annotate 'line', 394
    nqp_get_sc_object $P5018, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Regex"]
    unless_null $P5015, fallback1718
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5015, $P5019
  fallback1718:
    $P5020 = $P5015."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5020
    find_dynamic_lex $P5022, "%*RX"
    unless_null $P5022, fallback1721
    nqp_get_sc_object $P5025, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5024, $P5025
    set $P5023, $P5024["%RX"]
    unless_null $P5023, fallback1722
    nqp_get_sc_object $P5027, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5026, $P5027
    new $P5028, 'Hash'
    set $P5026["%RX"], $P5028
    set $P5023, $P5028
  fallback1722:
    unless_null $P5023, vivi_5051723
    die "Contextual %*RX not found"
    box $P5029, "Contextual %*RX not found"
    set $P5023, $P5029
  vivi_5051723:
    set $P5022, $P5023
  fallback1721:
    set $P5021, $P5022["i"]
    unless_null $P5021, fallback1724
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5021, $P5030
  fallback1724:
    set $P5032, $P5021
    unless $P5021 goto if504_end1720 
.annotate 'line', 395
    $P5031 = $P102."subtype"("ignorecase")
    set $P5032, $P5031
  if504_end1720:
.annotate 'line', 396
    $P5033 = _lex_param_1."!make"($P102)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<\">" :subid("cuid_119_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 399
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$quote", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
.annotate 'line', 400
    unless_null _lex_param_1, fallback1725
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1725:
    set $P5003, _lex_param_1["quote_EXPR"]
    unless_null $P5003, fallback1726
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1726:
    $P5006 = $P5003."ast"()
    set $P101, $P5006
.annotate 'line', 401
    nqp_get_sc_object $P5010, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["SVal"]
    unless_null $P5007, fallback1729
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback1729:
    $P5012 = $P5007."ACCEPTS"($P101)
    set $P5014, $P5012
    unless $P5012 goto if506_end1728 
    $P5013 = $P101."value"()
    set $P101, $P5013
    set $P5014, $P101
  if506_end1728:
.annotate 'line', 402
    nqp_get_sc_object $P5018, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Regex"]
    unless_null $P5015, fallback1730
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5015, $P5019
  fallback1730:
    $P5020 = $P5015."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5020
    find_dynamic_lex $P5022, "%*RX"
    unless_null $P5022, fallback1733
    nqp_get_sc_object $P5025, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5024, $P5025
    set $P5023, $P5024["%RX"]
    unless_null $P5023, fallback1734
    nqp_get_sc_object $P5027, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5026, $P5027
    new $P5028, 'Hash'
    set $P5026["%RX"], $P5028
    set $P5023, $P5028
  fallback1734:
    unless_null $P5023, vivi_5081735
    die "Contextual %*RX not found"
    box $P5029, "Contextual %*RX not found"
    set $P5023, $P5029
  vivi_5081735:
    set $P5022, $P5023
  fallback1733:
    set $P5021, $P5022["i"]
    unless_null $P5021, fallback1736
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5021, $P5030
  fallback1736:
    set $P5032, $P5021
    unless $P5021 goto if507_end1732 
.annotate 'line', 403
    $P5031 = $P102."subtype"("ignorecase")
    set $P5032, $P5031
  if507_end1732:
.annotate 'line', 404
    $P5033 = _lex_param_1."!make"($P102)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<.>" :subid("cuid_120_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 408
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1737
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1737:
    $P5006 = $P5001."new"("cclass" :named("rxtype"), "." :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^>" :subid("cuid_121_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 411
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 412
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1738
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1738:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "bos" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<^^>" :subid("cuid_122_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 415
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 416
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1739
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1739:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "bol" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$>" :subid("cuid_123_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 419
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 420
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1740
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1740:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "eos" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<$$>" :subid("cuid_124_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 423
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 424
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1741
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1741:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "eol" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<lwb>" :subid("cuid_125_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 427
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 428
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1742
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1742:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "lwb" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<rwb>" :subid("cuid_126_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 432
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1743
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1743:
    $P5006 = $P5001."new"("anchor" :named("rxtype"), "rwb" :named("subtype"), _lex_param_1 :named("node"))
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<from>" :subid("cuid_127_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 435
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 436
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1744
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1744:
.annotate 'line', 438
    nqp_get_sc_object $P5009, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Node"]
    unless_null $P5006, fallback1745
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5010
  fallback1745:
.annotate 'line', 439
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["SVal"]
    unless_null $P5011, fallback1746
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback1746:
    $P5016 = $P5011."new"("!LITERAL" :named("value"))
.annotate 'line', 440
    nqp_get_sc_object $P5020, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["SVal"]
    unless_null $P5017, fallback1747
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5021
  fallback1747:
    $P5022 = $P5017."new"("" :named("value"))
    $P5023 = $P5006."new"($P5016, $P5022)
    $P5024 = $P5001."new"($P5023, "subrule" :named("rxtype"), "capture" :named("subtype"), "r" :named("backtrack"), "$!from" :named("name"), _lex_param_1 :named("node"))
    $P5025 = _lex_param_1."!make"($P5024)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<to>" :subid("cuid_128_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 443
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 444
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1748
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1748:
.annotate 'line', 446
    nqp_get_sc_object $P5009, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5008, $P5009, "QAST"
    get_who $P5007, $P5008
    set $P5006, $P5007["Node"]
    unless_null $P5006, fallback1749
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5010
  fallback1749:
.annotate 'line', 447
    nqp_get_sc_object $P5014, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5013, $P5014, "QAST"
    get_who $P5012, $P5013
    set $P5011, $P5012["SVal"]
    unless_null $P5011, fallback1750
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback1750:
    $P5016 = $P5011."new"("!LITERAL" :named("value"))
.annotate 'line', 448
    nqp_get_sc_object $P5020, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["SVal"]
    unless_null $P5017, fallback1751
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5021
  fallback1751:
    $P5022 = $P5017."new"("" :named("value"))
    $P5023 = $P5006."new"($P5016, $P5022)
    $P5024 = $P5001."new"($P5023, "subrule" :named("rxtype"), "capture" :named("subtype"), "r" :named("backtrack"), "$!to" :named("name"), _lex_param_1 :named("node"))
    $P5025 = _lex_param_1."!make"($P5024)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<bs>" :subid("cuid_129_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 451
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 452
    unless_null _lex_param_1, fallback1752
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1752:
    set $P5001, _lex_param_1["backslash"]
    unless_null $P5001, fallback1753
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1753:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<assert>" :subid("cuid_130_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 455
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 456
    unless_null _lex_param_1, fallback1754
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1754:
    set $P5001, _lex_param_1["assertion"]
    unless_null $P5001, fallback1755
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1755:
    $P5004 = $P5001."ast"()
    $P5005 = _lex_param_1."!make"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<var>" :subid("cuid_131_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 459
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "$name", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    unless_null _lex_param_1, fallback1758
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1758:
    set $P5003, _lex_param_1["pos"]
    unless_null $P5003, fallback1759
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1759:
    unless $P5003 goto if509_else1756 
    unless_null _lex_param_1, fallback1760
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5007
  fallback1760:
    set $P5006, _lex_param_1["pos"]
    unless_null $P5006, fallback1761
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5008
  fallback1761:
    set $N5001, $P5006
    box $P5013, $N5001
    set $P5012, $P5013
    goto if509_end1757
  if509_else1756:
    unless_null _lex_param_1, fallback1762
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5010
  fallback1762:
    set $P5009, _lex_param_1["name"]
    unless_null $P5009, fallback1763
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5011
  fallback1763:
    set $S5001, $P5009
    box $P5014, $S5001
    set $P5012, $P5014
  if509_end1757:
    set $P102, $P5012
    unless_null _lex_param_1, fallback1766
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5016
  fallback1766:
    set $P5015, _lex_param_1["quantified_atom"]
    unless_null $P5015, fallback1767
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5015, $P5017
  fallback1767:
    unless $P5015 goto if510_else1764 
.annotate 'line', 462
.annotate 'line', 463
    unless_null _lex_param_1, fallback1768
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5020
  fallback1768:
    set $P5019, _lex_param_1["quantified_atom"]
    unless_null $P5019, fallback1769
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5021
  fallback1769:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback1770
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5022
  fallback1770:
    $P5023 = $P5018."ast"()
    set $P101, $P5023
.annotate 'line', 464
    $P5024 = $P101."rxtype"()
    set $S5002, $P5024
    iseq $I5001, $S5002, "quant"
    set $I5003, $I5001
    unless $I5001 goto if512_end1774 
    set $P5025, $P101[0]
    unless_null $P5025, fallback1775
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5025, $P5026
  fallback1775:
    $P5027 = $P5025."rxtype"()
    set $S5003, $P5027
    iseq $I5002, $S5003, "subrule"
    set $I5003, $I5002
  if512_end1774:
    unless $I5003 goto if511_else1771 
.annotate 'line', 465
    nqp_decontainerize $P5028, _lex_param_0
    set $P5029, $P101[0]
    unless_null $P5029, fallback1776
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5029, $P5030
  fallback1776:
    $P5031 = $P5028."subrule_alias"($P5029, $P102)
    set $P5042, $P5031
    goto if511_end1772
  if511_else1771:
.annotate 'line', 467
    $P5032 = $P101."rxtype"()
    set $S5004, $P5032
    iseq $I5004, $S5004, "subrule"
    unless $I5004 goto if513_else1777 
.annotate 'line', 468
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."subrule_alias"($P101, $P102)
    set $P5041, $P5034
    goto if513_end1778
  if513_else1777:
.annotate 'line', 470
.annotate 'line', 471
    nqp_get_sc_object $P5038, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5037, $P5038, "QAST"
    get_who $P5036, $P5037
    set $P5035, $P5036["Regex"]
    unless_null $P5035, fallback1779
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5035, $P5039
  fallback1779:
    $P5040 = $P5035."new"($P101, $P102 :named("name"), "subcapture" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5040
    set $P5041, $P101
  if513_end1778:
    set $P5042, $P5041
  if511_end1772:
    set $P5067, $P5042
    goto if510_end1765
  if510_else1764:
.annotate 'line', 475
.annotate 'line', 476
    nqp_get_sc_object $P5046, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5045, $P5046, "QAST"
    get_who $P5044, $P5045
    set $P5043, $P5044["Regex"]
    unless_null $P5043, fallback1780
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5043, $P5047
  fallback1780:
.annotate 'line', 477
    nqp_get_sc_object $P5051, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5050, $P5051, "QAST"
    get_who $P5049, $P5050
    set $P5048, $P5049["Node"]
    unless_null $P5048, fallback1781
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5048, $P5052
  fallback1781:
.annotate 'line', 478
    nqp_get_sc_object $P5056, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5055, $P5056, "QAST"
    get_who $P5054, $P5055
    set $P5053, $P5054["SVal"]
    unless_null $P5053, fallback1782
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5053, $P5057
  fallback1782:
    $P5058 = $P5053."new"("!BACKREF" :named("value"))
.annotate 'line', 479
    nqp_get_sc_object $P5062, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5061, $P5062, "QAST"
    get_who $P5060, $P5061
    set $P5059, $P5060["SVal"]
    unless_null $P5059, fallback1783
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5059, $P5063
  fallback1783:
    $P5064 = $P5059."new"($P102 :named("value"))
    $P5065 = $P5048."new"($P5058, $P5064)
    $P5066 = $P5043."new"($P5065, "subrule" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5066
    set $P5067, $P101
  if510_end1765:
.annotate 'line', 481
    $P5068 = _lex_param_1."!make"($P101)
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "metachar:sym<~>" :subid("cuid_132_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 484
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 485
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1784
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1784:
.annotate 'line', 486
    unless_null _lex_param_1, fallback1785
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5007
  fallback1785:
    set $P5006, _lex_param_1["EXPR"]
    unless_null $P5006, fallback1786
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5008
  fallback1786:
    $P5009 = $P5006."ast"()
.annotate 'line', 487
    nqp_get_sc_object $P5013, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Regex"]
    unless_null $P5010, fallback1787
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback1787:
.annotate 'line', 488
    unless_null _lex_param_1, fallback1788
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5016
  fallback1788:
    set $P5015, _lex_param_1["GOAL"]
    unless_null $P5015, fallback1789
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5015, $P5017
  fallback1789:
    $P5018 = $P5015."ast"()
.annotate 'line', 489
    nqp_get_sc_object $P5022, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Regex"]
    unless_null $P5019, fallback1790
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5023
  fallback1790:
.annotate 'line', 490
    nqp_get_sc_object $P5027, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5026, $P5027, "QAST"
    get_who $P5025, $P5026
    set $P5024, $P5025["Node"]
    unless_null $P5024, fallback1791
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5024, $P5028
  fallback1791:
.annotate 'line', 491
    nqp_get_sc_object $P5032, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5031, $P5032, "QAST"
    get_who $P5030, $P5031
    set $P5029, $P5030["SVal"]
    unless_null $P5029, fallback1792
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5029, $P5033
  fallback1792:
    $P5034 = $P5029."new"("FAILGOAL" :named("value"))
.annotate 'line', 492
    nqp_get_sc_object $P5038, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5037, $P5038, "QAST"
    get_who $P5036, $P5037
    set $P5035, $P5036["SVal"]
    unless_null $P5035, fallback1793
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5035, $P5039
  fallback1793:
    unless_null _lex_param_1, fallback1794
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5041
  fallback1794:
    set $P5040, _lex_param_1["GOAL"]
    unless_null $P5040, fallback1795
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5040, $P5042
  fallback1795:
    set $S5001, $P5040
    $P5043 = $P5035."new"($S5001 :named("value"))
    $P5044 = $P5024."new"($P5034, $P5043)
    $P5045 = $P5019."new"($P5044, "subrule" :named("rxtype"), "method" :named("subtype"))
    $P5046 = $P5010."new"($P5018, $P5045, "altseq" :named("rxtype"))
    $P5047 = $P5001."new"($P5009, $P5046, "concat" :named("rxtype"))
    $P5048 = _lex_param_1."!make"($P5047)
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<s>" :subid("cuid_133_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 499
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 500
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1796
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1796:
    unless_null _lex_param_1, fallback1799
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5007
  fallback1799:
    set $P5006, _lex_param_1["sym"]
    unless_null $P5006, fallback1800
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5008
  fallback1800:
    set $S5001, $P5006
    iseq $I5001, $S5001, "n"
    unless $I5001 goto if514_else1797 
    set $S5003, "nl"
    goto if514_end1798
  if514_else1797:
    unless_null _lex_param_1, fallback1801
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5010
  fallback1801:
    set $P5009, _lex_param_1["sym"]
    unless_null $P5009, fallback1802
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5011
  fallback1802:
    set $S5002, $P5009
    set $S5003, $S5002
  if514_end1798:
    unless_null _lex_param_1, fallback1803
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5013
  fallback1803:
    set $P5012, _lex_param_1["sym"]
    unless_null $P5012, fallback1804
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5014
  fallback1804:
    set $S5004, $P5012
    isle $I5002, $S5004, "Z"
    $P5015 = $P5001."new"(".CCLASS_WHITESPACE", "cclass" :named("rxtype"), $S5003 :named("subtype"), $I5002 :named("negate"), _lex_param_1 :named("node"))
    $P5016 = _lex_param_1."!make"($P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<b>" :subid("cuid_134_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 505
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 506
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1805
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1805:
    unless_null _lex_param_1, fallback1806
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1806:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1807
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1807:
    set $S5001, $P5007
    iseq $I5001, $S5001, "B"
    $P5010 = $P5002."new"("\b", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 508
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<e>" :subid("cuid_135_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 511
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 512
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1808
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1808:
    unless_null _lex_param_1, fallback1809
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1809:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1810
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1810:
    set $S5001, $P5007
    iseq $I5001, $S5001, "E"
    $P5010 = $P5002."new"("\e", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 514
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<f>" :subid("cuid_136_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 517
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 518
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1811
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1811:
    unless_null _lex_param_1, fallback1812
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1812:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1813
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1813:
    set $S5001, $P5007
    iseq $I5001, $S5001, "F"
    $P5010 = $P5002."new"("\f", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 520
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<h>" :subid("cuid_137_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 523
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 524
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1814
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1814:
    unless_null _lex_param_1, fallback1815
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1815:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1816
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1816:
    set $S5001, $P5007
    iseq $I5001, $S5001, "H"
    $P5010 = $P5002."new"(utf8:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 526
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<r>" :subid("cuid_138_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 529
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 530
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1817
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1817:
    unless_null _lex_param_1, fallback1818
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1818:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1819
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1819:
    set $S5001, $P5007
    iseq $I5001, $S5001, "R"
    $P5010 = $P5002."new"("\r", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 532
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<t>" :subid("cuid_139_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 535
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 536
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1820
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1820:
    unless_null _lex_param_1, fallback1821
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1821:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1822
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1822:
    set $S5001, $P5007
    iseq $I5001, $S5001, "T"
    $P5010 = $P5002."new"("\t", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 538
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<v>" :subid("cuid_140_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 541
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 542
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1823
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1823:
    unless_null _lex_param_1, fallback1824
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1824:
    set $P5007, _lex_param_1["sym"]
    unless_null $P5007, fallback1825
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1825:
    set $S5001, $P5007
    iseq $I5001, $S5001, "V"
    $P5010 = $P5002."new"(utf8:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("rxtype"), $I5001 :named("negate"), _lex_param_1 :named("node"))
    set $P101, $P5010
.annotate 'line', 545
    $P5011 = _lex_param_1."!make"($P101)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<o>" :subid("cuid_141_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 548
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$octlit", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 550
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Actions"]
    unless_null $P5002, fallback1826
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1826:
    unless_null _lex_param_1, fallback1829
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1829:
    set $P5007, _lex_param_1["octint"]
    unless_null $P5007, fallback1830
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1830:
    set $P5015, $P5007
    if $P5007 goto unless515_end1828 
    unless_null _lex_param_1, fallback1831
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5012
  fallback1831:
    set $P5011, _lex_param_1["octints"]
    unless_null $P5011, fallback1832
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5013
  fallback1832:
    set $P5010, $P5011["octint"]
    unless_null $P5010, fallback1833
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback1833:
    set $P5015, $P5010
  unless515_end1828:
    $P5016 = $P5002."ints_to_string"($P5015)
    set $P101, $P5016
.annotate 'line', 551
    unless_null _lex_param_1, fallback1836
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5018
  fallback1836:
    set $P5017, _lex_param_1["sym"]
    unless_null $P5017, fallback1837
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5019
  fallback1837:
    set $S5001, $P5017
    iseq $I5001, $S5001, "O"
    unless $I5001 goto if516_else1834 
.annotate 'line', 552
    nqp_get_sc_object $P5023, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Regex"]
    unless_null $P5020, fallback1838
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5024
  fallback1838:
    $P5025 = $P5020."new"($P101, "enumcharlist" :named("rxtype"), 1 :named("negate"), _lex_param_1 :named("node"))
    set $P5032, $P5025
    goto if516_end1835
  if516_else1834:
.annotate 'line', 554
    nqp_get_sc_object $P5029, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5028, $P5029, "QAST"
    get_who $P5027, $P5028
    set $P5026, $P5027["Regex"]
    unless_null $P5026, fallback1839
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5026, $P5030
  fallback1839:
    $P5031 = $P5026."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P5032, $P5031
  if516_end1835:
    $P5033 = _lex_param_1."!make"($P5032)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<x>" :subid("cuid_142_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 557
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$hexlit", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 559
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "HLL"
    get_who $P5003, $P5004
    set $P5002, $P5003["Actions"]
    unless_null $P5002, fallback1840
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1840:
    unless_null _lex_param_1, fallback1843
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1843:
    set $P5007, _lex_param_1["hexint"]
    unless_null $P5007, fallback1844
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1844:
    set $P5015, $P5007
    if $P5007 goto unless517_end1842 
    unless_null _lex_param_1, fallback1845
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5012
  fallback1845:
    set $P5011, _lex_param_1["hexints"]
    unless_null $P5011, fallback1846
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5013
  fallback1846:
    set $P5010, $P5011["hexint"]
    unless_null $P5010, fallback1847
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback1847:
    set $P5015, $P5010
  unless517_end1842:
    $P5016 = $P5002."ints_to_string"($P5015)
    set $P101, $P5016
.annotate 'line', 560
    unless_null _lex_param_1, fallback1850
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5018
  fallback1850:
    set $P5017, _lex_param_1["sym"]
    unless_null $P5017, fallback1851
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5019
  fallback1851:
    set $S5001, $P5017
    iseq $I5001, $S5001, "X"
    unless $I5001 goto if518_else1848 
.annotate 'line', 561
    nqp_get_sc_object $P5023, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Regex"]
    unless_null $P5020, fallback1852
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5024
  fallback1852:
    $P5025 = $P5020."new"($P101, "enumcharlist" :named("rxtype"), 1 :named("negate"), _lex_param_1 :named("node"))
    set $P5032, $P5025
    goto if518_end1849
  if518_else1848:
.annotate 'line', 563
    nqp_get_sc_object $P5029, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5028, $P5029, "QAST"
    get_who $P5027, $P5028
    set $P5026, $P5027["Regex"]
    unless_null $P5026, fallback1853
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5026, $P5030
  fallback1853:
    $P5031 = $P5026."new"($P101, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P5032, $P5031
  if518_end1849:
    $P5033 = _lex_param_1."!make"($P5032)
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<c>" :subid("cuid_143_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 566
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 567
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback1854
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback1854:
    unless_null _lex_param_1, fallback1855
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5007
  fallback1855:
    set $P5006, _lex_param_1["charspec"]
    unless_null $P5006, fallback1856
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5008
  fallback1856:
    $P5009 = $P5006."ast"()
    $P5010 = $P5001."new"($P5009, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    $P5011 = _lex_param_1."!make"($P5010)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "backslash:sym<misc>" :subid("cuid_144_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 570
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 571
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Regex"]
    unless_null $P5002, fallback1857
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1857:
    set $S5001, _lex_param_1
    $P5007 = $P5002."new"($S5001, "literal" :named("rxtype"), _lex_param_1 :named("node"))
    set $P101, $P5007
.annotate 'line', 572
    $P5008 = _lex_param_1."!make"($P101)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<?>" :subid("cuid_145_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 575
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    unless_null _lex_param_1, fallback1860
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5003
  fallback1860:
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1861
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5004
  fallback1861:
    unless $P5002 goto if519_else1858 
.annotate 'line', 577
.annotate 'line', 578
    unless_null _lex_param_1, fallback1862
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5006
  fallback1862:
    set $P5005, _lex_param_1["assertion"]
    unless_null $P5005, fallback1863
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5005, $P5007
  fallback1863:
    $P5008 = $P5005."ast"()
    set $P101, $P5008
.annotate 'line', 579
    $P5009 = $P101."subtype"("zerowidth")
    set $P5016, $P5009
    goto if519_end1859
  if519_else1858:
.annotate 'line', 581
.annotate 'line', 582
    nqp_get_sc_object $P5013, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["Regex"]
    unless_null $P5010, fallback1864
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback1864:
    $P5015 = $P5010."new"("anchor" :named("rxtype"), "pass" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5015
    set $P5016, $P101
  if519_end1859:
.annotate 'line', 584
    $P5017 = _lex_param_1."!make"($P101)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<!>" :subid("cuid_146_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 587
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    unless_null _lex_param_1, fallback1867
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5003
  fallback1867:
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1868
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5004
  fallback1868:
    unless $P5002 goto if520_else1865 
.annotate 'line', 589
.annotate 'line', 590
    unless_null _lex_param_1, fallback1869
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5006
  fallback1869:
    set $P5005, _lex_param_1["assertion"]
    unless_null $P5005, fallback1870
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5005, $P5007
  fallback1870:
    $P5008 = $P5005."ast"()
    set $P101, $P5008
.annotate 'line', 591
    $P5009 = $P101."negate"()
    isfalse $I5001, $P5009
    $P5010 = $P101."negate"($I5001)
.annotate 'line', 592
    $P5011 = $P101."subtype"("zerowidth")
    set $P5018, $P5011
    goto if520_end1866
  if520_else1865:
.annotate 'line', 594
.annotate 'line', 595
    nqp_get_sc_object $P5015, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback1871
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5016
  fallback1871:
    $P5017 = $P5012."new"("anchor" :named("rxtype"), "fail" :named("subtype"), _lex_param_1 :named("node"))
    set $P101, $P5017
    set $P5018, $P101
  if520_end1866:
.annotate 'line', 597
    $P5019 = _lex_param_1."!make"($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<|>" :subid("cuid_147_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 600
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "$name", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    unless_null _lex_param_1, fallback1872
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1872:
    set $P5003, _lex_param_1["identifier"]
    unless_null $P5003, fallback1873
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1873:
    set $S5001, $P5003
    box $P5006, $S5001
    set $P102, $P5006
    set $S5002, $P102
    iseq $I5001, $S5002, "c"
    unless $I5001 goto if521_else1874 
.annotate 'line', 603
    box $P5007, 0
    set $P101, $P5007
    set $P5028, $P101
    goto if521_end1875
  if521_else1874:
    set $S5003, $P102
    iseq $I5002, $S5003, "w"
    box $P5027, $I5002
    set $P5026, $P5027
    unless $I5002 goto if522_end1877 
.annotate 'line', 608
.annotate 'line', 609
    nqp_get_sc_object $P5011, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["Regex"]
    unless_null $P5008, fallback1878
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5012
  fallback1878:
.annotate 'line', 611
    nqp_get_sc_object $P5016, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Node"]
    unless_null $P5013, fallback1879
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5017
  fallback1879:
    nqp_get_sc_object $P5021, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5020, $P5021, "QAST"
    get_who $P5019, $P5020
    set $P5018, $P5019["SVal"]
    unless_null $P5018, fallback1880
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5022
  fallback1880:
    $P5023 = $P5018."new"("wb" :named("value"))
    $P5024 = $P5013."new"($P5023)
    $P5025 = $P5008."new"($P5024, "subrule" :named("rxtype"), "method" :named("subtype"), _lex_param_1 :named("node"), "" :named("name"))
    set $P101, $P5025
    set $P5026, $P101
  if522_end1877:
    set $P5028, $P5026
  if521_end1875:
.annotate 'line', 613
    $P5029 = _lex_param_1."!make"($P101)
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<method>" :subid("cuid_148_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 616
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$qast", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 617
    unless_null _lex_param_1, fallback1881
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5003
  fallback1881:
    set $P5002, _lex_param_1["assertion"]
    unless_null $P5002, fallback1882
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5004
  fallback1882:
    $P5005 = $P5002."ast"()
    set $P101, $P5005
.annotate 'line', 618
    $P5006 = $P101."subtype"("method")
.annotate 'line', 619
    $P5007 = $P101."name"("")
.annotate 'line', 620
    $P5008 = _lex_param_1."!make"($P101)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<name>" :subid("cuid_149_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 623
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5084 = 'cuid_193_1347804160.506' 
    capture_lex $P5084 
    .const 'Sub' $P5084 = 'cuid_194_1347804160.506' 
    capture_lex $P5084 
    .lex "$name", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    unless_null _lex_param_1, fallback1883
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback1883:
    set $P5003, _lex_param_1["longname"]
    unless_null $P5003, fallback1884
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback1884:
    set $S5001, $P5003
    box $P5006, $S5001
    set $P101, $P5006
    unless_null _lex_param_1, fallback1887
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5008
  fallback1887:
    set $P5007, _lex_param_1["assertion"]
    unless_null $P5007, fallback1888
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback1888:
    unless $P5007 goto if523_else1885 
.annotate 'line', 626
.annotate 'line', 627
    unless_null _lex_param_1, fallback1889
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5012
  fallback1889:
    set $P5011, _lex_param_1["assertion"]
    unless_null $P5011, fallback1890
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5013
  fallback1890:
    set $P5010, $P5011[0]
    unless_null $P5010, fallback1891
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback1891:
    $P5015 = $P5010."ast"()
    set $P102, $P5015
.annotate 'line', 628
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."subrule_alias"($P102, $P101)
    set $P5082, $P5017
    goto if523_end1886
  if523_else1885:
    set $S5002, $P101
    iseq $I5001, $S5002, "sym"
    unless $I5001 goto if524_else1892 
    .const 'Sub' $P5018 = 'cuid_193_1347804160.506' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5081, $P5019
    goto if524_end1893
  if524_else1892:
.annotate 'line', 639
.annotate 'line', 640
    nqp_get_sc_object $P5023, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5022, $P5023, "QAST"
    get_who $P5021, $P5022
    set $P5020, $P5021["Regex"]
    unless_null $P5020, fallback1910
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5024
  fallback1910:
.annotate 'line', 642
    nqp_get_sc_object $P5028, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5027, $P5028, "QAST"
    get_who $P5026, $P5027
    set $P5025, $P5026["Node"]
    unless_null $P5025, fallback1911
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5025, $P5029
  fallback1911:
    nqp_get_sc_object $P5033, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5032, $P5033, "QAST"
    get_who $P5031, $P5032
    set $P5030, $P5031["SVal"]
    unless_null $P5030, fallback1912
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5030, $P5034
  fallback1912:
    $P5035 = $P5030."new"($P101 :named("value"))
    $P5036 = $P5025."new"($P5035)
    $P5037 = $P5020."new"($P5036, "subrule" :named("rxtype"), "capture" :named("subtype"), _lex_param_1 :named("node"), $P101 :named("name"))
    set $P102, $P5037
    unless_null _lex_param_1, fallback1915
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5039
  fallback1915:
    set $P5038, _lex_param_1["arglist"]
    unless_null $P5038, fallback1916
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5038, $P5040
  fallback1916:
    unless $P5038 goto if529_else1913 
.annotate 'line', 643
.annotate 'line', 644
    unless_null _lex_param_1, fallback1917
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5046
  fallback1917:
    set $P5045, _lex_param_1["arglist"]
    unless_null $P5045, fallback1918
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5045, $P5047
  fallback1918:
    set $P5044, $P5045[0]
    unless_null $P5044, fallback1919
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5044, $P5048
  fallback1919:
    $P5049 = $P5044."ast"()
    $P5050 = $P5049."list"()
    set $P5041, $P5050
    iter $P5043, $P5050
  for_next1921:
    unless $P5043, for_done1923
    shift $P5052, $P5043
  for_redo1922:
    .const 'Sub' $P5051 = 'cuid_194_1347804160.506' 
    capture_lex $P5051
    $P5041 = $P5051($P5052)
    goto for_next1921
  for_done1923:
    set $P5080, $P5041
    goto if529_end1914
  if529_else1913:
    unless_null _lex_param_1, fallback1926
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5054
  fallback1926:
    set $P5053, _lex_param_1["nibbler"]
    unless_null $P5053, fallback1927
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5053, $P5055
  fallback1927:
    set $P5079, $P5053
    unless $P5053 goto if530_end1925 
.annotate 'line', 646
    set $S5003, $P101
    iseq $I5002, $S5003, "after"
    unless $I5002 goto if531_else1928 
.annotate 'line', 648
    set $P5056, $P102[0]
    unless_null $P5056, fallback1930
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5056, $P5057
  fallback1930:
    nqp_decontainerize $P5058, _lex_param_0
    unless_null _lex_param_1, fallback1931
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5061
  fallback1931:
    set $P5060, _lex_param_1["nibbler"]
    unless_null $P5060, fallback1932
    nqp_get_sc_object $P5062, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5060, $P5062
  fallback1932:
    set $P5059, $P5060[0]
    unless_null $P5059, fallback1933
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5059, $P5063
  fallback1933:
    $P5064 = $P5059."ast"()
    $P5065 = $P5058."flip_ast"($P5064)
    $P5066 = "&qbuildsub"($P5065, 1 :named("anon"), 1 :named("addself"))
    $P5067 = $P5056."push"($P5066)
    set $P5078, $P5067
    goto if531_end1929
  if531_else1928:
.annotate 'line', 649
    set $P5068, $P102[0]
    unless_null $P5068, fallback1934
    nqp_get_sc_object $P5069, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5068, $P5069
  fallback1934:
    unless_null _lex_param_1, fallback1935
    nqp_get_sc_object $P5072, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5072
  fallback1935:
    set $P5071, _lex_param_1["nibbler"]
    unless_null $P5071, fallback1936
    nqp_get_sc_object $P5073, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5071, $P5073
  fallback1936:
    set $P5070, $P5071[0]
    unless_null $P5070, fallback1937
    nqp_get_sc_object $P5074, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5070, $P5074
  fallback1937:
    $P5075 = $P5070."ast"()
    $P5076 = "&qbuildsub"($P5075, 1 :named("anon"), 1 :named("addself"))
    $P5077 = $P5068."push"($P5076)
    set $P5078, $P5077
  if531_end1929:
    set $P5079, $P5078
  if530_end1925:
    set $P5080, $P5079
  if529_end1914:
    set $P5081, $P5080
  if524_end1893:
    set $P5082, $P5081
  if523_end1886:
.annotate 'line', 652
    $P5083 = _lex_param_1."!make"($P102)
    .return ($P5083) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1347804160.506") :anon :lex :outer("cuid_149_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 630
    .lex "$loc", $P101 
    .lex "$rxname", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    find_dynamic_lex $P5004, "%*RX"
    unless_null $P5004, fallback1894
    nqp_get_sc_object $P5007, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5006, $P5007
    set $P5005, $P5006["%RX"]
    unless_null $P5005, fallback1895
    nqp_get_sc_object $P5009, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5008, $P5009
    new $P5010, 'Hash'
    set $P5008["%RX"], $P5010
    set $P5005, $P5010
  fallback1895:
    unless_null $P5005, vivi_5251896
    die "Contextual %*RX not found"
    box $P5011, "Contextual %*RX not found"
    set $P5005, $P5011
  vivi_5251896:
    set $P5004, $P5005
  fallback1894:
    set $P5003, $P5004["name"]
    unless_null $P5003, fallback1897
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5012
  fallback1897:
    set $S5001, $P5003
    index $I5001, $S5001, ":sym<", 0
    box $P5013, $I5001
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    box $P5026, $I5002
    set $P5025, $P5026
    unless $I5002 goto if526_end1899 
    find_dynamic_lex $P5015, "%*RX"
    unless_null $P5015, fallback1900
    nqp_get_sc_object $P5018, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5017, $P5018
    set $P5016, $P5017["%RX"]
    unless_null $P5016, fallback1901
    nqp_get_sc_object $P5020, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5019, $P5020
    new $P5021, 'Hash'
    set $P5019["%RX"], $P5021
    set $P5016, $P5021
  fallback1901:
    unless_null $P5016, vivi_5271902
    die "Contextual %*RX not found"
    box $P5022, "Contextual %*RX not found"
    set $P5016, $P5022
  vivi_5271902:
    set $P5015, $P5016
  fallback1900:
    set $P5014, $P5015["name"]
    unless_null $P5014, fallback1903
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5014, $P5023
  fallback1903:
    set $S5002, $P5014
    index $I5003, $S5002, utf8:":sym\x{ab}", 0
    box $P5024, $I5003
    set $P101, $P5024
    set $P5025, $P101
  if526_end1899:
    find_dynamic_lex $P5028, "%*RX"
    unless_null $P5028, fallback1904
    nqp_get_sc_object $P5031, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5030, $P5031
    set $P5029, $P5030["%RX"]
    unless_null $P5029, fallback1905
    nqp_get_sc_object $P5033, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5032, $P5033
    new $P5034, 'Hash'
    set $P5032["%RX"], $P5034
    set $P5029, $P5034
  fallback1905:
    unless_null $P5029, vivi_5281906
    die "Contextual %*RX not found"
    box $P5035, "Contextual %*RX not found"
    set $P5029, $P5035
  vivi_5281906:
    set $P5028, $P5029
  fallback1904:
    set $P5027, $P5028["name"]
    unless_null $P5027, fallback1907
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5027, $P5036
  fallback1907:
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
.annotate 'line', 636
    nqp_get_sc_object $P5042, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5041, $P5042, "QAST"
    get_who $P5040, $P5041
    set $P5039, $P5040["Regex"]
    unless_null $P5039, fallback1908
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5039, $P5043
  fallback1908:
    find_lex $P5044, "$/"
.annotate 'line', 637
    nqp_get_sc_object $P5048, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5047, $P5048, "QAST"
    get_who $P5046, $P5047
    set $P5045, $P5046["Regex"]
    unless_null $P5045, fallback1909
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5045, $P5049
  fallback1909:
    find_lex $P5050, "$/"
    $P5051 = $P5045."new"($P102, "literal" :named("rxtype"), $P5050 :named("node"))
    $P5052 = $P5039."new"($P5051, "sym" :named("name"), "subcapture" :named("rxtype"), $P5044 :named("node"))
    store_lex "$qast", $P5052
    .return ($P5052) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1347804160.506") :anon :lex :outer("cuid_149_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "$qast"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback1920
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1920:
    $P5004 = $P5001."push"(_lex_param_0)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "assertion:sym<[>" :subid("cuid_150_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 655
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_195_1347804160.506' 
    capture_lex $P5036 
    .lex "$clist", $P101 
    .lex "$qast", $P102 
    .lex "$i", $P103 
    .lex "$n", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P104, $P5004
    unless_null _lex_param_1, fallback1938
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5006
  fallback1938:
    set $P5005, _lex_param_1["cclass_elem"]
    unless_null $P5005, fallback1939
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5005, $P5007
  fallback1939:
    set $P101, $P5005
.annotate 'line', 657
    set $P5008, $P101[0]
    unless_null $P5008, fallback1940
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5009
  fallback1940:
    $P5010 = $P5008."ast"()
    set $P102, $P5010
.annotate 'line', 658
    $P5011 = $P102."negate"()
    set $P5013, $P5011
    unless $P5011 goto if533_end1944 
    $P5012 = $P102."rxtype"()
    set $S5001, $P5012
    iseq $I5001, $S5001, "subrule"
    box $P5014, $I5001
    set $P5013, $P5014
  if533_end1944:
    set $P5028, $P5013
    unless $P5013 goto if532_end1942 
.annotate 'line', 659
    $P5015 = $P102."subtype"("zerowidth")
.annotate 'line', 660
    nqp_get_sc_object $P5019, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5018, $P5019, "QAST"
    get_who $P5017, $P5018
    set $P5016, $P5017["Regex"]
    unless_null $P5016, fallback1945
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5016, $P5020
  fallback1945:
.annotate 'line', 662
    nqp_get_sc_object $P5024, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5023, $P5024, "QAST"
    get_who $P5022, $P5023
    set $P5021, $P5022["Regex"]
    unless_null $P5021, fallback1946
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5021, $P5025
  fallback1946:
    $P5026 = $P5021."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P5027 = $P5016."new"($P102, $P5026, "concat" :named("rxtype"), _lex_param_1 :named("node"))
    set $P102, $P5027
    set $P5028, $P102
  if532_end1942:
    box $P5029, 1
    set $P103, $P5029
    set $N5001, $P101
    box $P5030, $N5001
    set $P104, $P5030
  while534_test1947:
    set $N5002, $P103
    set $N5003, $P104
    islt $I5002, $N5002, $N5003
    box $P5034, $I5002
    set $P5033, $P5034
    unless $I5002 goto while534_done1951 
  while534_redo1949:
    .const 'Sub' $P5031 = 'cuid_195_1347804160.506' 
    capture_lex $P5031
    $P5032 = $P5031()
    set $P5033, $P5032
    goto while534_test1947 
  while534_done1951:
.annotate 'line', 677
    $P5035 = _lex_param_1."!make"($P102)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1347804160.506") :anon :lex :outer("cuid_150_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 666
    .lex "$ast", $P101 
    .local pmc tmp_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 667
    find_lex $P5003, "$clist"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback1952
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5005
  fallback1952:
    $P5006 = $P5002."ast"()
    set $P101, $P5006
.annotate 'line', 668
    $P5007 = $P101."negate"()
    unless $P5007 goto if535_else1953 
.annotate 'line', 669
    $P5008 = $P101."subtype"("zerowidth")
.annotate 'line', 670
    nqp_get_sc_object $P5012, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5011, $P5012, "QAST"
    get_who $P5010, $P5011
    set $P5009, $P5010["Regex"]
    unless_null $P5009, fallback1955
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5013
  fallback1955:
    find_lex $P5014, "$qast"
    find_lex $P5015, "$/"
    $P5016 = $P5009."new"($P101, $P5014, "concat" :named("rxtype"), $P5015 :named("node"))
    store_lex "$qast", $P5016
    set $P5025, $P5016
    goto if535_end1954
  if535_else1953:
.annotate 'line', 672
.annotate 'line', 673
    nqp_get_sc_object $P5020, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Regex"]
    unless_null $P5017, fallback1956
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5021
  fallback1956:
    find_lex $P5022, "$qast"
    find_lex $P5023, "$/"
    $P5024 = $P5017."new"($P5022, $P101, "altseq" :named("rxtype"), $P5023 :named("node"))
    store_lex "$qast", $P5024
    set $P5025, $P5024
  if535_end1954:
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
.sub "arg" :subid("cuid_151_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 680
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 681
    unless_null _lex_param_1, fallback1959
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5002
  fallback1959:
    set $P5001, _lex_param_1["quote_EXPR"]
    unless_null $P5001, fallback1960
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback1960:
    unless $P5001 goto if536_else1957 
.annotate 'line', 682
    unless_null _lex_param_1, fallback1961
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5005
  fallback1961:
    set $P5004, _lex_param_1["quote_EXPR"]
    unless_null $P5004, fallback1962
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5006
  fallback1962:
    $P5007 = $P5004."ast"()
    set $P5017, $P5007
    goto if536_end1958
  if536_else1957:
.annotate 'line', 683
    nqp_get_sc_object $P5011, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["NVal"]
    unless_null $P5008, fallback1963
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5012
  fallback1963:
    unless_null _lex_param_1, fallback1964
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5014
  fallback1964:
    set $P5013, _lex_param_1["val"]
    unless_null $P5013, fallback1965
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5015
  fallback1965:
    set $N5001, $P5013
    $P5016 = $P5008."new"($N5001 :named("value"))
    set $P5017, $P5016
  if536_end1958:
    $P5018 = _lex_param_1."!make"($P5017)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "arglist" :subid("cuid_152_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 686
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_196_1347804160.506' 
    capture_lex $P5017 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 687
    nqp_get_sc_object $P5005, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback1966
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback1966:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    unless_null _lex_param_1, fallback1967
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5012
  fallback1967:
    set $P5011, _lex_param_1["arg"]
    unless_null $P5011, fallback1968
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5013
  fallback1968:
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next1969:
    unless $P5010, for_done1971
    shift $P5015, $P5010
  for_redo1970:
    .const 'Sub' $P5014 = 'cuid_196_1347804160.506' 
    capture_lex $P5014
    $P5008 = $P5014($P5015)
    goto for_next1969
  for_done1971:
.annotate 'line', 689
    $P5016 = _lex_param_1."!make"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1347804160.506") :anon :lex :outer("cuid_152_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 688
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cclass_elem" :subid("cuid_153_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 692
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_197_1347804160.506' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_198_1347804160.506' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_202_1347804160.506' 
    capture_lex $P5019 
    .lex "$str", $P101 
    .lex "$qast", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    box $P5003, ""
    set $P101, $P5003
    unless_null _lex_param_1, fallback1974
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5005
  fallback1974:
    set $P5004, _lex_param_1["name"]
    unless_null $P5004, fallback1975
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5006
  fallback1975:
    unless $P5004 goto if537_else1972 
    .const 'Sub' $P5007 = 'cuid_197_1347804160.506' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5017, $P5008
    goto if537_end1973
  if537_else1972:
    unless_null _lex_param_1, fallback1985
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5010
  fallback1985:
    set $P5009, _lex_param_1["uniprop"]
    unless_null $P5009, fallback1986
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5011
  fallback1986:
    unless $P5009 goto if538_else1983 
    .const 'Sub' $P5012 = 'cuid_198_1347804160.506' 
    capture_lex $P5012
    $P5013 = $P5012()
    set $P5016, $P5013
    goto if538_end1984
  if538_else1983:
    .const 'Sub' $P5014 = 'cuid_202_1347804160.506' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5016, $P5015
  if538_end1984:
    set $P5017, $P5016
  if537_end1973:
.annotate 'line', 757
    $P5018 = _lex_param_1."!make"($P102)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1347804160.506") :anon :lex :outer("cuid_153_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 695
    .lex "$name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    unless_null $P5003, fallback1976
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5004
  fallback1976:
    set $P5002, $P5003["name"]
    unless_null $P5002, fallback1977
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5005
  fallback1977:
    set $S5001, $P5002
    box $P5006, $S5001
    set $P101, $P5006
.annotate 'line', 697
    nqp_get_sc_object $P5010, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Regex"]
    unless_null $P5007, fallback1978
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback1978:
    find_lex $P5013, "$/"
    unless_null $P5013, fallback1979
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5014
  fallback1979:
    set $P5012, $P5013["sign"]
    unless_null $P5012, fallback1980
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5015
  fallback1980:
    set $S5002, $P5012
    iseq $I5001, $S5002, "-"
    find_lex $P5016, "$/"
.annotate 'line', 699
    nqp_get_sc_object $P5020, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5019, $P5020, "QAST"
    get_who $P5018, $P5019
    set $P5017, $P5018["Node"]
    unless_null $P5017, fallback1981
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5021
  fallback1981:
    nqp_get_sc_object $P5025, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5024, $P5025, "QAST"
    get_who $P5023, $P5024
    set $P5022, $P5023["SVal"]
    unless_null $P5022, fallback1982
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5022, $P5026
  fallback1982:
    $P5027 = $P5022."new"($P101 :named("value"))
    $P5028 = $P5017."new"($P5027)
    $P5029 = $P5007."new"($P5028, "subrule" :named("rxtype"), "method" :named("subtype"), $I5001 :named("negate"), $P5016 :named("node"))
    store_lex "$qast", $P5029
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1347804160.506") :anon :lex :outer("cuid_153_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 701
    .lex "$uniprop", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_lex $P5003, "$/"
    unless_null $P5003, fallback1987
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5004
  fallback1987:
    set $P5002, $P5003["uniprop"]
    unless_null $P5002, fallback1988
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5005
  fallback1988:
    set $S5001, $P5002
    box $P5006, $S5001
    set $P101, $P5006
.annotate 'line', 703
    nqp_get_sc_object $P5010, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set $P5007, $P5008["Regex"]
    unless_null $P5007, fallback1989
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback1989:
    find_lex $P5013, "$/"
    unless_null $P5013, fallback1994
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5014
  fallback1994:
    set $P5012, $P5013["sign"]
    unless_null $P5012, fallback1995
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5015
  fallback1995:
    set $S5002, $P5012
    iseq $I5001, $S5002, "-"
    set $I5003, $I5001
    unless $I5001 goto if540_end1993 
    find_lex $P5017, "$/"
    unless_null $P5017, fallback1996
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5018
  fallback1996:
    set $P5016, $P5017["invert"]
    unless_null $P5016, fallback1997
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5016, $P5019
  fallback1997:
    set $S5003, $P5016
    isne $I5002, $S5003, "!"
    set $I5003, $I5002
  if540_end1993:
    set $I5007, $I5003
    if $I5003 goto unless539_end1991 
    find_lex $P5021, "$/"
    unless_null $P5021, fallback2000
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5021, $P5022
  fallback2000:
    set $P5020, $P5021["sign"]
    unless_null $P5020, fallback2001
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5023
  fallback2001:
    set $S5004, $P5020
    isne $I5004, $S5004, "-"
    set $I5006, $I5004
    unless $I5004 goto if541_end1999 
    find_lex $P5025, "$/"
    unless_null $P5025, fallback2002
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5025, $P5026
  fallback2002:
    set $P5024, $P5025["invert"]
    unless_null $P5024, fallback2003
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5024, $P5027
  fallback2003:
    set $S5005, $P5024
    iseq $I5005, $S5005, "!"
    set $I5006, $I5005
  if541_end1999:
    set $I5007, $I5006
  unless539_end1991:
    find_lex $P5028, "$/"
    $P5029 = $P5007."new"($P101, "uniprop" :named("rxtype"), $I5007 :named("negate"), $P5028 :named("node"))
    store_lex "$qast", $P5029
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1347804160.506") :anon :lex :outer("cuid_153_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 707
    .const 'Sub' $P5060 = 'cuid_200_1347804160.506' 
    capture_lex $P5060 
    .lex "@alts", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "$/"
    unless_null $P5006, fallback2004
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5007
  fallback2004:
    set $P5005, $P5006["charspec"]
    unless_null $P5005, fallback2005
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5005, $P5008
  fallback2005:
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next2066:
    unless $P5004, for_done2068
    shift $P5010, $P5004
  for_redo2067:
    .const 'Sub' $P5009 = 'cuid_200_1347804160.506' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next2066
  for_done2068:
    find_lex $P5011, "$str"
    set $S5001, $P5011
    length $I5001, $S5001
    box $P5026, $I5001
    set $P5025, $P5026
    unless $I5001 goto if557_end2070 
.annotate 'line', 747
    nqp_get_sc_object $P5015, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["Regex"]
    unless_null $P5012, fallback2071
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5016
  fallback2071:
    find_lex $P5017, "$str"
    find_lex $P5018, "$/"
    find_lex $P5020, "$/"
    unless_null $P5020, fallback2072
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5021
  fallback2072:
    set $P5019, $P5020["sign"]
    unless_null $P5019, fallback2073
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5022
  fallback2073:
    set $S5002, $P5019
    iseq $I5002, $S5002, "-"
    $P5023 = $P5012."new"($P5017, "enumcharlist" :named("rxtype"), $P5018 :named("node"), $I5002 :named("negate"))
    $P5024 = $P101."push"($P5023)
    set $P5025, $P5024
  if557_end2070:
    set $N5001, $P101
    set $N5002, 1
    iseq $I5003, $N5001, $N5002
    unless $I5003 goto if558_else2074 
    set $P5027, $P101[0]
    unless_null $P5027, fallback2076
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5027, $P5028
  fallback2076:
    set $P5059, $P5027
    goto if558_end2075
  if558_else2074:
    find_lex $P5030, "$/"
    unless_null $P5030, fallback2079
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5030, $P5031
  fallback2079:
    set $P5029, $P5030["sign"]
    unless_null $P5029, fallback2080
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5029, $P5032
  fallback2080:
    set $S5003, $P5029
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if559_else2077 
.annotate 'line', 751
    nqp_get_sc_object $P5036, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5035, $P5036, "QAST"
    get_who $P5034, $P5035
    set $P5033, $P5034["Regex"]
    unless_null $P5033, fallback2081
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5033, $P5037
  fallback2081:
    find_lex $P5038, "$/"
.annotate 'line', 752
    nqp_get_sc_object $P5042, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5041, $P5042, "QAST"
    get_who $P5040, $P5041
    set $P5039, $P5040["Regex"]
    unless_null $P5039, fallback2082
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5039, $P5043
  fallback2082:
    $P5044 = $P5039."new"($P101 :flat, "conj" :named("rxtype"), "zerowidth" :named("subtype"))
.annotate 'line', 753
    nqp_get_sc_object $P5048, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5047, $P5048, "QAST"
    get_who $P5046, $P5047
    set $P5045, $P5046["Regex"]
    unless_null $P5045, fallback2083
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5045, $P5049
  fallback2083:
    $P5050 = $P5045."new"("cclass" :named("rxtype"), "." :named("subtype"))
    $P5051 = $P5033."new"($P5044, $P5050, "concat" :named("rxtype"), $P5038 :named("node"))
    set $P5058, $P5051
    goto if559_end2078
  if559_else2077:
.annotate 'line', 754
    nqp_get_sc_object $P5055, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5054, $P5055, "QAST"
    get_who $P5053, $P5054
    set $P5052, $P5053["Regex"]
    unless_null $P5052, fallback2084
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5052, $P5056
  fallback2084:
    $P5057 = $P5052."new"($P101 :flat, "altseq" :named("rxtype"))
    set $P5058, $P5057
  if559_end2078:
    set $P5059, $P5058
  if558_end2075:
    store_lex "$qast", $P5059
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1347804160.506") :anon :lex :outer("cuid_202_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 709
    .param pmc _lex_param_0 
    .const 'Sub' $P5017 = 'cuid_199_1347804160.506' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_201_1347804160.506' 
    capture_lex $P5017 
    .lex "$_", _lex_param_0 
    set $P5001, _lex_param_0[1]
    unless_null $P5001, fallback2008
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5002
  fallback2008:
    unless $P5001 goto if542_else2006 
    .const 'Sub' $P5003 = 'cuid_199_1347804160.506' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5016, $P5004
    goto if542_end2007
  if542_else2006:
    set $P5006, _lex_param_0[0]
    unless_null $P5006, fallback2057
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5007
  fallback2057:
    set $P5005, $P5006["backslash"]
    unless_null $P5005, fallback2058
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5005, $P5008
  fallback2058:
    unless $P5005 goto if555_else2055 
    .const 'Sub' $P5009 = 'cuid_201_1347804160.506' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5015, $P5010
    goto if555_end2056
  if555_else2055:
.annotate 'line', 745
    find_lex $P5011, "$str"
    set $S5002, $P5011
    set $P5012, _lex_param_0[0]
    unless_null $P5012, fallback2065
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5013
  fallback2065:
    set $S5003, $P5012
    concat $S5001, $S5002, $S5003
    box $P5014, $S5001
    store_lex "$str", $P5014
    set $P5015, $P5014
  if555_end2056:
    set $P5016, $P5015
  if542_end2007:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1347804160.506") :anon :lex :outer("cuid_200_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 710
    .lex "$node", $P101 
    .lex "$lhs", $P102 
    .lex "$rhs", $P103 
    .lex "$ord0", $P104 
    .lex "$ord1", $P105 
    .local pmc tmp_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P105, $P5005
    find_lex $P5008, "$_"
    set $P5007, $P5008[0]
    unless_null $P5007, fallback2011
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5009
  fallback2011:
    set $P5006, $P5007["backslash"]
    unless_null $P5006, fallback2012
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5010
  fallback2012:
    unless $P5006 goto if543_else2009 
.annotate 'line', 714
.annotate 'line', 715
    find_lex $P5013, "$_"
    set $P5012, $P5013[0]
    unless_null $P5012, fallback2013
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5012, $P5014
  fallback2013:
    set $P5011, $P5012["backslash"]
    unless_null $P5011, fallback2014
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5015
  fallback2014:
    $P5016 = $P5011."ast"()
    set $P101, $P5016
.annotate 'line', 717
    $P5017 = $P101."rxtype"()
    set $S5001, $P5017
    isne $I5001, $S5001, "literal"
    set $I5003, $I5001
    unless $I5001 goto if547_end2022 
    $P5018 = $P101."rxtype"()
    set $S5002, $P5018
    isne $I5002, $S5002, "enumcharlist"
    set $I5003, $I5002
  if547_end2022:
    box $P5021, $I5003
    set $P5020, $P5021
    if $I5003 goto unless546_end2020 
.annotate 'line', 718
    $P5019 = $P101."negate"()
    set $P5020, $P5019
  unless546_end2020:
    set $P5024, $P5020
    if $P5020 goto unless545_end2018 
    set $P5022, $P101[0]
    unless_null $P5022, fallback2023
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5022, $P5023
  fallback2023:
    set $S5003, $P5022
    length $I5005, $S5003
    set $N5001, $I5005
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    box $P5025, $I5004
    set $P5024, $P5025
  unless545_end2018:
    set $P5030, $P5024
    unless $P5024 goto if544_end2016 
.annotate 'line', 716
    find_lex $P5026, "$/"
    $P5027 = $P5026."CURSOR"()
    find_lex $P5028, "$_"
    set $S5005, $P5028
    concat $S5004, "Illegal range endpoint in regex: ", $S5005
    $P5029 = $P5027."panic"($S5004)
    set $P5030, $P5029
  if544_end2016:
    set $P5031, $P101[0]
    unless_null $P5031, fallback2024
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5031, $P5032
  fallback2024:
    set $P102, $P5031
    set $P5039, $P102
    goto if543_end2010
  if543_else2009:
.annotate 'line', 721
    find_lex $P5035, "$_"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback2025
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5034, $P5036
  fallback2025:
    set $P5033, $P5034[0]
    unless_null $P5033, fallback2026
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5033, $P5037
  fallback2026:
    set $S5006, $P5033
    box $P5038, $S5006
    set $P102, $P5038
    set $P5039, $P102
  if543_end2010:
    find_lex $P5043, "$_"
    set $P5042, $P5043[1]
    unless_null $P5042, fallback2029
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5042, $P5044
  fallback2029:
    set $P5041, $P5042[0]
    unless_null $P5041, fallback2030
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5041, $P5045
  fallback2030:
    set $P5040, $P5041["backslash"]
    unless_null $P5040, fallback2031
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5040, $P5046
  fallback2031:
    unless $P5040 goto if548_else2027 
.annotate 'line', 724
.annotate 'line', 725
    find_lex $P5050, "$_"
    set $P5049, $P5050[1]
    unless_null $P5049, fallback2032
    nqp_get_sc_object $P5051, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5049, $P5051
  fallback2032:
    set $P5048, $P5049[0]
    unless_null $P5048, fallback2033
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5048, $P5052
  fallback2033:
    set $P5047, $P5048["backslash"]
    unless_null $P5047, fallback2034
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5047, $P5053
  fallback2034:
    $P5054 = $P5047."ast"()
    set $P101, $P5054
.annotate 'line', 727
    $P5055 = $P101."rxtype"()
    set $S5007, $P5055
    isne $I5006, $S5007, "literal"
    set $I5008, $I5006
    unless $I5006 goto if552_end2042 
    $P5056 = $P101."rxtype"()
    set $S5008, $P5056
    isne $I5007, $S5008, "enumcharlist"
    set $I5008, $I5007
  if552_end2042:
    box $P5059, $I5008
    set $P5058, $P5059
    if $I5008 goto unless551_end2040 
.annotate 'line', 728
    $P5057 = $P101."negate"()
    set $P5058, $P5057
  unless551_end2040:
    set $P5062, $P5058
    if $P5058 goto unless550_end2038 
    set $P5060, $P101[0]
    unless_null $P5060, fallback2043
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5060, $P5061
  fallback2043:
    set $S5009, $P5060
    length $I5010, $S5009
    set $N5003, $I5010
    set $N5004, 1
    isne $I5009, $N5003, $N5004
    box $P5063, $I5009
    set $P5062, $P5063
  unless550_end2038:
    set $P5068, $P5062
    unless $P5062 goto if549_end2036 
.annotate 'line', 726
    find_lex $P5064, "$/"
    $P5065 = $P5064."CURSOR"()
    find_lex $P5066, "$_"
    set $S5011, $P5066
    concat $S5010, "Illegal range endpoint in regex: ", $S5011
    $P5067 = $P5065."panic"($S5010)
    set $P5068, $P5067
  if549_end2036:
    set $P5069, $P101[0]
    unless_null $P5069, fallback2044
    nqp_get_sc_object $P5070, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5069, $P5070
  fallback2044:
    set $P103, $P5069
    set $P5079, $P103
    goto if548_end2028
  if548_else2027:
.annotate 'line', 731
    find_lex $P5074, "$_"
    set $P5073, $P5074[1]
    unless_null $P5073, fallback2045
    nqp_get_sc_object $P5075, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5073, $P5075
  fallback2045:
    set $P5072, $P5073[0]
    unless_null $P5072, fallback2046
    nqp_get_sc_object $P5076, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5072, $P5076
  fallback2046:
    set $P5071, $P5072[0]
    unless_null $P5071, fallback2047
    nqp_get_sc_object $P5077, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5071, $P5077
  fallback2047:
    set $S5012, $P5071
    box $P5078, $S5012
    set $P103, $P5078
    set $P5079, $P103
  if548_end2028:
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
    unless $I5013 goto if553_end2049 
.annotate 'line', 736
    find_lex $P5082, "$/"
    $P5083 = $P5082."CURSOR"()
    find_lex $P5084, "$_"
    set $S5016, $P5084
    concat $S5015, "Illegal reversed character range in regex: ", $S5016
    $P5085 = $P5083."panic"($S5015)
    set $P5086, $P5085
  if553_end2049:
    new $P5091, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5091, while554_handlers2053
    push_eh $P5091
  while554_test2050:
    set $N5007, $P104
    set $N5008, $P105
    isle $I5014, $N5007, $N5008
    box $P5092, $I5014
    set $P5090, $P5092
    unless $I5014 goto while554_done2054 
  while554_redo2052:
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
    goto while554_test2050 
  while554_handlers2053:
    .get_results ($P5091)
    pop_upto_eh $P5091
    getattribute $P5091, $P5091, 'type'
    eq $P5091, .CONTROL_LOOP_NEXT, while554_test2050
    eq $P5091, .CONTROL_LOOP_REDO, while554_redo2052
  while554_done2054:
    pop_eh 
    .return ($P5090) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1347804160.506") :anon :lex :outer("cuid_200_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 740
    .lex "$bs", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 741
    find_lex $P5004, "$_"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback2059
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback2059:
    set $P5002, $P5003["backslash"]
    unless_null $P5002, fallback2060
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback2060:
    $P5007 = $P5002."ast"()
    set $P101, $P5007
    find_lex $P5009, "$/"
    unless_null $P5009, fallback2063
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5010
  fallback2063:
    set $P5008, $P5009["sign"]
    unless_null $P5008, fallback2064
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5011
  fallback2064:
    set $S5001, $P5008
    iseq $I5001, $S5001, "-"
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if556_end2062 
.annotate 'line', 742
    $P5012 = $P101."negate"()
    isfalse $I5002, $P5012
    $P5013 = $P101."negate"($I5002)
    set $P5014, $P5013
  if556_end2062:
.annotate 'line', 743
    find_lex $P5016, "@alts"
    $P5017 = $P5016."push"($P101)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "mod_internal" :subid("cuid_154_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 760
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    unless_null _lex_param_1, fallback2087
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5004
  fallback2087:
    set $P5003, _lex_param_1["n"]
    unless_null $P5003, fallback2088
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback2088:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback2089
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback2089:
    set $S5001, $P5002
    isgt $I5001, $S5001, ""
    unless $I5001 goto if560_else2085 
    unless_null _lex_param_1, fallback2090
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5009
  fallback2090:
    set $P5008, _lex_param_1["n"]
    unless_null $P5008, fallback2091
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback2091:
    set $P5007, $P5008[0]
    unless_null $P5007, fallback2092
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback2092:
    set $N5001, $P5007
    box $P5013, $N5001
    set $P5012, $P5013
    goto if560_end2086
  if560_else2085:
    box $P5014, 1
    set $P5012, $P5014
  if560_end2086:
    set $P101, $P5012
    find_dynamic_lex $P5015, "%*RX"
    unless_null $P5015, fallback2093
    nqp_get_sc_object $P5018, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5017, $P5018
    set $P5016, $P5017["%RX"]
    unless_null $P5016, fallback2094
    nqp_get_sc_object $P5020, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    get_who $P5019, $P5020
    new $P5021, 'Hash'
    set $P5019["%RX"], $P5021
    set $P5016, $P5021
  fallback2094:
    unless_null $P5016, vivi_5612095
    die "Contextual %*RX not found"
    box $P5022, "Contextual %*RX not found"
    set $P5016, $P5022
  vivi_5612095:
    set $P5015, $P5016
  fallback2093:
    unless_null _lex_param_1, fallback2096
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5025
  fallback2096:
    set $P5024, _lex_param_1["mod_ident"]
    unless_null $P5024, fallback2097
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5024, $P5026
  fallback2097:
    set $P5023, $P5024["sym"]
    unless_null $P5023, fallback2098
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5023, $P5027
  fallback2098:
    set $S5002, $P5023
    set $P5015[$S5002], $P101
.annotate 'line', 763
    $P5028 = _lex_param_1."!make"(0)
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "subrule_alias" :subid("cuid_155_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 885
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    .lex "$name", _lex_param_2 
.annotate 'line', 886
    $P5001 = _lex_param_1."name"()
    set $S5001, $P5001
    isgt $I5001, $S5001, ""
    unless $I5001 goto if562_else2099 
    set $S5004, _lex_param_2
    concat $S5003, $S5004, "="
    $P5002 = _lex_param_1."name"()
    set $S5005, $P5002
    concat $S5002, $S5003, $S5005
    $P5003 = _lex_param_1."name"($S5002)
    set $P5005, $P5003
    goto if562_end2100
  if562_else2099:
.annotate 'line', 887
    $P5004 = _lex_param_1."name"(_lex_param_2)
    set $P5005, $P5004
  if562_end2100:
.annotate 'line', 888
    $P5006 = _lex_param_1."subtype"("capture")
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "flip_ast" :subid("cuid_156_1347804160.506") :anon :lex :outer("cuid_157_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 891
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5025 = 'cuid_203_1347804160.506' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_204_1347804160.506' 
    capture_lex $P5025 
    .lex "self", _lex_param_0 
    .lex "$qast", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_2101
    .lex "RETURN", $P101
    nqp_get_sc_object $P5004, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["Regex"]
    unless_null $P5001, fallback2105
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback2105:
    type_check $I5001, _lex_param_1, $P5001
    box $P5009, $I5001
    set $P5008, $P5009
    if $I5001 goto unless563_end2104 
    find_lex $P5006, "RETURN"
    $P5007 = $P5006(_lex_param_1)
    set $P5008, $P5007
  unless563_end2104:
.annotate 'line', 893
    $P5010 = _lex_param_1."rxtype"()
    set $S5001, $P5010
    iseq $I5002, $S5001, "literal"
    unless $I5002 goto if564_else2106 
.annotate 'line', 894
    set $P5011, _lex_param_1[0]
    unless_null $P5011, fallback2108
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5012
  fallback2108:
    $P5013 = $P5011."reverse"()
    set _lex_param_1[0], $P5013
    set $P5024, $P5013
    goto if564_end2107
  if564_else2106:
.annotate 'line', 896
    $P5014 = _lex_param_1."rxtype"()
    set $S5002, $P5014
    iseq $I5003, $S5002, "concat"
    unless $I5003 goto if565_else2109 
    .const 'Sub' $P5015 = 'cuid_203_1347804160.506' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5023, $P5016
    goto if565_end2110
  if565_else2109:
.annotate 'line', 901
    $P5020 = _lex_param_1."list"()
    set $P5017, $P5020
    iter $P5019, $P5020
  for_next2121:
    unless $P5019, for_done2123
    shift $P5022, $P5019
  for_redo2122:
    .const 'Sub' $P5021 = 'cuid_204_1347804160.506' 
    capture_lex $P5021
    $P5017 = $P5021($P5022)
    goto for_next2121
  for_done2123:
    set $P5023, $P5017
  if565_end2110:
    set $P5024, $P5023
  if564_end2107:
    goto lexotic_2102
  lexotic_2101:
    .get_results (_lex_param_1)
  lexotic_2102:
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1347804160.506") :anon :lex :outer("cuid_156_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 896
    .lex "@tmp", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
  while566_test2111:
    find_lex $P5002, "$qast"
    $P5003 = $P5002."list"()
    set $N5001, $P5003
    box $P5009, $N5001
    set $P5008, $P5009
    unless $N5001 goto while566_done2115 
  while566_redo2113:
.annotate 'line', 898
    find_lex $P5004, "$qast"
    $P5005 = $P5004."list"()
    $P5006 = $P5005."shift"()
    $P5007 = $P101."push"($P5006)
    set $P5008, $P5007
    goto while566_test2111 
  while566_done2115:
  while567_test2116:
    set $P5017, $P101
    unless $P101 goto while567_done2120 
  while567_redo2118:
.annotate 'line', 899
    find_lex $P5010, "$qast"
    $P5011 = $P5010."list"()
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P101."pop"()
    $P5015 = $P5012."flip_ast"($P5014)
    $P5016 = $P5011."push"($P5015)
    set $P5017, $P5016
    goto while567_test2116 
  while567_done2120:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1347804160.506") :anon :lex :outer("cuid_156_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 902
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."flip_ast"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1347804160.506") :anon :lex :outer("cuid_1_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
.annotate 'line', 909
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1347804160.506") :load :init
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .const 'Sub' $P5001 = 'cuid_205_1347804160.506' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347804160.506" 
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
    nqp_create_sc $P5001, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\gen\\NQPP6QRegex.pm")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "QAST"
    push $P5003, "QRegex"
    push $P5003, "NQPCursorRole"
    push $P5003, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474"
    push $P5003, "src\\stage2\\QRegex.nqp"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "HLL"
    push $P5003, "PIRT"
    push $P5003, "DEFAULT"
    push $P5003, "CREATE"
    push $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939"
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
    push $P5003, "0CFDE924CE6043A335172F6CBA992E3B34BC4C96-1347804144.653"
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
    push $P5003, "569A1B419F724EEF275BC7729D702142D988A435-1347804135.739"
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
    push $P5003, "5999FA70DED24A5080F4680C3CF5A9B13CAD7450-1347804139.915"
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
    push $P5003, "4454B4C8CDB4DF59AECFB0356C4D8728B53E4241-1347804149.338"
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
    .const 'Sub' $P5004 = 'cuid_205_1347804160.506' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAHAAAAeAAAAAsAAADQAAAAZCAAAJ0AAAA0KgAAjEMAAAAAAACMQwAAAAAAAIxDAACMQwAAAAAAAAUAAAAGAAAADwAAABAAAABKAAAASwAAABYBAAAAAAAAGQEAABoBAAAmAQAAJwEAAD0BAAA+AQAAAQAAAAAAAAABAAAAGAEAAAEAAADAAQAAAQAAAFoCAAABAAAAGg8AAAEAAABwFQAAAQAAAIwaAAABAAAAaBwAAAEAAAAeHQAAAQAAAP4dAAABAAAA3h4AAAAAAACNAAAAAAAAAAAAAAAKAAkAAAACAAAAAgAAAAAAjgAAAAMAAAACAAAAAACPAAAABAAAAAIAAQAAABsAAAAHAAAAAgABAAAARQAAAAgAAAACAAEAAABSAAAACQAAAAIAAQAAAFgAAAAKAAAAAgABAAAAXAAAAAsAAAACAAAAAACQAAAADAAAAAIAAAAAAJEAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAAkgAAAAAAAAABAAAACgABAAAADQAAAAIAAAAAAAIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwAAAAAAkwAAAAAAAAACAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAJQAAAAAAAAAAwAAAAoAAAAAAAoAwQAAAA4AAAACAAIAAAAIAAAAEQAAAAIAAgAAAAkAAAASAAAAAgACAAAACgAAABMAAAACAAIAAAALAAAAFAAAAAIAAgAAAAwAAAAVAAAAAgACAAAADwAAABYAAAACAAIAAAARAAAAFwAAAAIAAgAAABMAAAAYAAAAAgACAAAAFQAAABkAAAACAAIAAAAXAAAAGgAAAAIAAgAAABgAAAAbAAAAAgACAAAAGgAAABwAAAACAAIAAAAbAAAAHQAAAAIAAQAAAFMAAAAeAAAAAgABAAAAVAAAAB8AAAACAAEAAABVAAAAIAAAAAIAAQAAAFYAAAAhAAAAAgABAAAAVwAAACIAAAACAAEAAABnAAAAIwAAAAIAAQAAAGgAAAAkAAAAAgABAAAAaQAAACUAAAACAAEAAABqAAAAJgAAAAIAAQAAAGsAAAAnAAAAAgABAAAAbAAAACgAAAACAAEAAABtAAAAKQAAAAIAAQAAAG4AAAAqAAAAAgABAAAAbwAAACsAAAACAAEAAABwAAAALAAAAAIAAQAAAHEAAAAtAAAAAgABAAAAcgAAAC4AAAACAAEAAABzAAAALwAAAAIAAQAAAHQAAAAwAAAAAgABAAAAdQAAADEAAAACAAEAAAB2AAAAMgAAAAIAAQAAAHcAAAAzAAAAAgABAAAAeAAAADQAAAACAAEAAAB5AAAANQAAAAIAAQAAAHoAAAA2AAAAAgABAAAAewAAADcAAAACAAEAAAB8AAAAOAAAAAIAAQAAAH0AAAA5AAAAAgABAAAAfgAAADoAAAACAAEAAAB/AAAAOwAAAAIAAAAAAAUAAAA8AAAAAgABAAAAgQAAAD0AAAACAAEAAACCAAAAPgAAAAIAAQAAAIMAAAA/AAAAAgABAAAAhAAAAEAAAAACAAEAAACFAAAAQQAAAAIAAQAAAIYAAABCAAAAAgABAAAAhwAAAEMAAAACAAEAAACIAAAARAAAAAIAAQAAAIkAAABFAAAAAgABAAAAigAAAEYAAAACAAEAAACLAAAARwAAAAIAAQAAAIwAAABIAAAAAgABAAAAjQAAAEkAAAACAAMAAAAyAAAATAAAAAIAAAAAABAAAABNAAAAAgADAAAABQAAAE4AAAACAAMAAAAGAAAATwAAAAIAAwAAAAcAAABQAAAAAgADAAAACAAAAFEAAAACAAMAAAAJAAAAUgAAAAIAAwAAAAoAAABTAAAAAgADAAAACwAAAFQAAAACAAMAAAAMAAAAVQAAAAIAAwAAAA0AAABWAAAAAgADAAAADgAAAFcAAAACAAMAAAAPAAAAWAAAAAIAAwAAABAAAABZAAAAAgADAAAAEQAAAFoAAAACAAMAAAASAAAAWwAAAAIAAwAAABMAAABcAAAAAgADAAAAFAAAAF0AAAACAAMAAAAVAAAAXgAAAAIAAwAAABYAAABfAAAAAgADAAAAFwAAAGAAAAACAAMAAAAYAAAAYQAAAAIAAwAAABkAAABiAAAAAgADAAAAGgAAAGMAAAACAAMAAAAbAAAAZAAAAAIAAwAAABwAAABlAAAAAgADAAAAHQAAAGYAAAACAAMAAAAeAAAAZwAAAAIAAwAAAB8AAABoAAAAAgADAAAAIAAAAGkAAAACAAMAAAAhAAAAagAAAAIAAwAAACIAAABrAAAAAgADAAAAIwAAAGwAAAACAAMAAAAkAAAAbQAAAAIAAwAAACUAAABuAAAAAgADAAAAJgAAAG8AAAACAAMAAAAnAAAAcAAAAAIAAwAAACgAAABxAAAAAgADAAAAKQAAAHIAAAACAAMAAAAqAAAAcwAAAAIAAwAAACsAAAB0AAAAAgADAAAALAAAAHUAAAACAAMAAAAtAAAAdgAAAAIAAwAAAC4AAAB3AAAAAgADAAAALwAAAHgAAAACAAMAAAAwAAAAeQAAAAIAAwAAADEAAAB6AAAAAgADAAAAMwAAAHsAAAACAAMAAAA0AAAAfAAAAAIAAwAAADUAAAB9AAAAAgADAAAANgAAAH4AAAACAAMAAAA3AAAAfwAAAAIAAwAAADgAAACAAAAAAgADAAAAOQAAAIEAAAACAAMAAAA6AAAAggAAAAIAAwAAADsAAACDAAAAAgADAAAAPAAAAIQAAAACAAMAAAA9AAAAhQAAAAIAAwAAAD4AAACGAAAAAgAAAAAABAAAAIcAAAACAAAAAAAGAAAAiAAAAAIAAAAAAAcAAACJAAAAAgAAAAAACAAAAIoAAAACAAAAAAAJAAAAiwAAAAIAAAAAAAoAAACMAAAAAgAAAAAACwAAAI0AAAACAAAAAAAMAAAAjgAAAAIAAAAAAA0AAACPAAAAAgAAAAAADgAAAJAAAAACAAAAAAAPAAAAkQAAAAIAAAAAABEAAACSAAAAAgAAAAAAEgAAAJMAAAACAAAAAAATAAAAlAAAAAIAAAAAABQAAACVAAAAAgAAAAAAFQAAAJYAAAACAAAAAAAWAAAAlwAAAAIAAAAAABcAAACYAAAAAgAAAAAAGAAAAJkAAAACAAAAAAAZAAAAmgAAAAIAAAAAABoAAACbAAAAAgAAAAAAGwAAAJwAAAACAAAAAAAcAAAAnQAAAAIAAAAAAB0AAACeAAAAAgAAAAAAHgAAAJ8AAAACAAAAAAAfAAAAoAAAAAIAAAAAACAAAAChAAAAAgAAAAAAIQAAAKIAAAACAAAAAAAiAAAAowAAAAIAAAAAACMAAACkAAAAAgAAAAAAJAAAAKUAAAACAAAAAAAlAAAApgAAAAIAAAAAACYAAACnAAAAAgAAAAAAJwAAAKgAAAACAAAAAAAoAAAAqQAAAAIAAAAAACkAAACqAAAAAgAAAAAAKgAAAKsAAAACAAAAAAArAAAArAAAAAIAAAAAACwAAACtAAAAAgAAAAAALQAAAK4AAAACAAAAAAAuAAAArwAAAAIAAAAAAC8AAACwAAAAAgAAAAAAMAAAALEAAAACAAAAAAAxAAAAsgAAAAIAAAAAADIAAACzAAAAAgAAAAAAMwAAALQAAAACAAAAAAA0AAAAtQAAAAIAAAAAADUAAAC2AAAAAgAAAAAANgAAALcAAAACAAAAAAA3AAAAuAAAAAIAAAAAADgAAAC5AAAAAgAAAAAAOQAAALoAAAACAAAAAAA6AAAAuwAAAAIAAAAAADsAAAC8AAAAAgAAAAAAPAAAAL0AAAACAAAAAAA9AAAAvgAAAAIAAAAAAD4AAAC/AAAAAgAAAAAAPwAAAMAAAAACAAAAAABAAAAAwQAAAAIAAAAAAEEAAADCAAAAAgAAAAAAQgAAAMMAAAACAAAAAABDAAAAxAAAAAIAAAAAAEQAAADFAAAAAgAAAAAARQAAAMYAAAACAAAAAABGAAAAxwAAAAIAAAAAAEcAAADIAAAAAgAAAAAASAAAAMkAAAACAAAAAABJAAAAygAAAAIAAAAAAEoAAADLAAAAAgAAAAAASwAAAMwAAAACAAAAAABMAAAAzQAAAAIAAAAAAE0AAADOAAAAAgAAAAAATgAAAM8AAAACAAAAAABPAAAA0AAAAAIAAAAAAFAAAADRAAAAAgAAAAAAUQAAANIAAAACAAAAAABSAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAAMAAAACAAMAAAADAAAAAgABAAAAUgAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABUAAAAAAAAAAAAAAAKAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAABAAAAAEAAAAAAAAAAgAAAAIAAAABAAAAAAAAAAIAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAAAcAAAABAAEAAQACAAIAAAAHAAAAAgACAAAABwAAAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAIAAgAAAAcAAAD///////////////////////////////8AAAAAAAAAAAQAAAAAAAAAAgACAAAABwAAAAMAAgABAAAAUgAAAAoACgAAANMAAAAEAAAAAAAAAAAA1AAAAAQAAQAAAAAAAADVAAAABAACAAAAAAAAANYAAAAEAAMAAAAAAAAA1wAAAAQABAAAAAAAAADYAAAABAAFAAAAAAAAANkAAAAEAAYAAAAAAAAA2gAAAAQABwAAAAAAAADbAAAABAAIAAAAAAAAANwAAAAEAAkAAAAAAAAAAgADAAAAAwAAAAMAAgAAAAAAAwAAAAMAAAAAAJUAAAAAAAAAUwAAAAoAAAAAAAoAZQAAAA4AAAACAAIAAAAIAAAAEQAAAAIAAgAAAAkAAAASAAAAAgACAAAACgAAABMAAAACAAIAAAALAAAAFAAAAAIAAgAAAAwAAAAVAAAAAgACAAAADwAAABYAAAACAAIAAAARAAAAFwAAAAIAAgAAABMAAAAYAAAAAgACAAAAFQAAABkAAAACAAIAAAAXAAAAGgAAAAIAAgAAABgAAAAbAAAAAgACAAAAGgAAABwAAAACAAIAAAAbAAAA3QAAAAIAAwAAAEAAAADeAAAAAgADAAAAQQAAAN8AAAACAAMAAABCAAAAgAAAAAIAAwAAAEMAAABTAAAAAgADAAAARAAAAEwAAAACAAAAAABaAAAAVwAAAAIAAwAAAEYAAABYAAAAAgADAAAARwAAAGQAAAACAAMAAABIAAAAZQAAAAIAAwAAAEkAAABcAAAAAgADAAAASgAAAF4AAAACAAMAAABLAAAAYAAAAAIAAwAAAEwAAABiAAAAAgADAAAATQAAAHsAAAACAAMAAABOAAAAWgAAAAIAAwAAAE8AAABbAAAAAgADAAAAUAAAAGgAAAACAAMAAABRAAAAaQAAAAIAAwAAAFIAAABqAAAAAgADAAAAUwAAAGsAAAACAAMAAABUAAAAbAAAAAIAAwAAAFUAAABtAAAAAgADAAAAVgAAAG4AAAACAAMAAABXAAAAbwAAAAIAAwAAAFgAAABwAAAAAgADAAAAWQAAAHEAAAACAAMAAABaAAAAcgAAAAIAAwAAAFsAAABzAAAAAgADAAAAXAAAAHQAAAACAAMAAABdAAAAdQAAAAIAAwAAAF4AAAB2AAAAAgADAAAAXwAAAHcAAAACAAMAAABgAAAAiwAAAAIAAAAAAFQAAACMAAAAAgAAAAAAVQAAAI0AAAACAAAAAABWAAAAjgAAAAIAAAAAAFcAAACPAAAAAgAAAAAAWAAAAJAAAAACAAAAAABZAAAAkQAAAAIAAAAAAFsAAACSAAAAAgAAAAAAXAAAAJMAAAACAAAAAABdAAAAlQAAAAIAAAAAAF4AAACWAAAAAgAAAAAAXwAAAJcAAAACAAAAAABgAAAAmQAAAAIAAAAAAGEAAACcAAAAAgAAAAAAYgAAAJ0AAAACAAAAAABjAAAAngAAAAIAAAAAAGQAAACfAAAAAgAAAAAAZQAAAKAAAAACAAAAAABmAAAAoQAAAAIAAAAAAGcAAACiAAAAAgAAAAAAaAAAAKMAAAACAAAAAABpAAAApAAAAAIAAAAAAGoAAAClAAAAAgAAAAAAawAAAKgAAAACAAAAAABsAAAAqQAAAAIAAAAAAG0AAACqAAAAAgAAAAAAbgAAAKsAAAACAAAAAABvAAAArAAAAAIAAAAAAHAAAACxAAAAAgAAAAAAcQAAALIAAAACAAAAAAByAAAArwAAAAIAAAAAAHMAAAC1AAAAAgAAAAAAdAAAALYAAAACAAAAAAB1AAAAtwAAAAIAAAAAAHYAAAC4AAAAAgAAAAAAdwAAALkAAAACAAAAAAB4AAAAugAAAAIAAAAAAHkAAAC7AAAAAgAAAAAAegAAALwAAAACAAAAAAB7AAAAvQAAAAIAAAAAAHwAAAC+AAAAAgAAAAAAfQAAAL8AAAACAAAAAAB+AAAAxQAAAAIAAAAAAH8AAADHAAAAAgAAAAAAgAAAAMgAAAACAAAAAACBAAAAyQAAAAIAAAAAAIIAAADKAAAAAgAAAAAAgwAAAMsAAAACAAAAAACEAAAAzAAAAAIAAAAAAIUAAACJAAAAAgAAAAAAhgAAAIoAAAACAAAAAACHAAAAzQAAAAIAAAAAAIgAAADOAAAAAgAAAAAAiQAAAOAAAAACAAAAAACKAAAA4QAAAAIAAAAAAIsAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAUwAAAAIAAwAAAD8AAAACAAIAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAHAAAAAwACAAMAAAA/AAAAAwACAAAAAABTAAAAAwAAAAAAlgAAAAAAAACMAAAACgAAAAAACgA4AAAADgAAAAIAAgAAAAgAAAARAAAAAgACAAAACQAAABIAAAACAAIAAAAKAAAAEwAAAAIAAwAAAGIAAAAUAAAAAgACAAAADAAAABUAAAACAAIAAAAPAAAAFgAAAAIAAgAAABEAAAAXAAAAAgACAAAAEwAAABgAAAACAAIAAAAVAAAAGQAAAAIAAgAAABcAAAAaAAAAAgACAAAAGAAAABsAAAACAAIAAAAaAAAAHAAAAAIAAgAAABsAAADiAAAAAgADAAAAYwAAAOMAAAACAAMAAABkAAAA5AAAAAIAAwAAAGUAAADlAAAAAgADAAAAZgAAAOYAAAACAAMAAABnAAAA5wAAAAIAAwAAAGgAAADoAAAAAgADAAAAaQAAAOkAAAACAAMAAABqAAAA6gAAAAIAAwAAAGsAAAB5AAAAAgADAAAAbAAAAOsAAAACAAMAAABtAAAA7AAAAAIAAwAAAG4AAADtAAAAAgADAAAAbwAAAO4AAAACAAMAAABwAAAA7wAAAAIAAwAAAHEAAADwAAAAAgADAAAAcgAAAPEAAAACAAMAAABzAAAA8gAAAAIAAwAAAHQAAADzAAAAAgADAAAAdQAAAPQAAAACAAMAAAB2AAAA9QAAAAIAAwAAAHcAAAD2AAAAAgADAAAAeAAAAPcAAAACAAMAAAB5AAAAHwAAAAIAAwAAAHoAAAD4AAAAAgADAAAAewAAAPkAAAACAAMAAAB8AAAA+gAAAAIAAwAAAH0AAAD7AAAAAgADAAAAfgAAAPwAAAACAAMAAAB/AAAA/QAAAAIAAwAAAIAAAAD+AAAAAgADAAAAgQAAAP8AAAACAAMAAACCAAAAAAEAAAIAAwAAAIMAAAABAQAAAgADAAAAhAAAAAIBAAACAAMAAACFAAAAAwEAAAIAAwAAAIYAAAAEAQAAAgADAAAAhwAAAAUBAAACAAMAAACIAAAABgEAAAIAAwAAAIkAAAAHAQAAAgADAAAAigAAAAgBAAACAAMAAACLAAAACQEAAAIAAwAAAIwAAAAKAQAAAgADAAAAjQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAACMAAAAAgADAAAAYQAAAAIAAgAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAABwAAAAIAAgAAAAcAAAABAAIAAgAAAAcAAAACAAIAAAAHAAAAAgACAAAABwAAAAEAAgACAAAABwAAAAEAAQD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAABwAAAAMAAgADAAAAYQAAAAoACwAAAAsBAAAEAAAAAAAAAAAADAEAAAQAAQAAAAAAAAANAQAABAACAAAAAAAAAA4BAAAEAAMAAAAAAAAADwEAAAQABAAAAAAAAAAQAQAABAAFAAAAAAAAABEBAAAEAAYAAAAAAAAAEgEAAAQABwAAAAAAAAATAQAABAAIAAAAAAAAABQBAAAEAAkAAAAAAAAAFQEAAAQACgAAAAAAAAACAAAAAACMAAAAAwAAAAAAlwAAAAAAAACOAAAACgAXAAAAJQEAAAIABgAAAAMAAAAoAQAAAgAGAAAACAAAACkBAAACAAYAAAAMAAAAKgEAAAIABgAAACcAAAArAQAAAgAGAAAALwAAACwBAAACAAYAAAAzAAAALQEAAAIABgAAADcAAAAuAQAAAgAGAAAAOwAAAC8BAAACAAYAAAA+AAAAMAEAAAIABgAAAEIAAAAxAQAAAgAGAAAARwAAADIBAAACAAYAAABPAAAAMwEAAAIABgAAAFEAAAA0AQAAAgAGAAAAVwAAADUBAAACAAYAAABbAAAANgEAAAIABgAAAF8AAAA3AQAAAgAGAAAAYwAAADgBAAACAAYAAABrAAAAOQEAAAIABgAAAG4AAAA6AQAAAgAGAAAAcQAAADsBAAACAAYAAAB6AAAAPAEAAAIABwAAACkAAAA/AQAAAgAHAAAAOgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACOAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAI4AAAADAAAAAACYAAAAAAAAAI8AAAAKAAIAAABAAQAAAgABAAAAAwAAAEEBAAACAAAAAACZAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAI8AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAjwAAAAMAAAAAAJoAAAAAAAAAkAAAAAoABQAAAEIBAAACAAMAAAADAAAAQwEAAAIAAwAAAD8AAAA/AQAAAgADAAAAYQAAAEQBAAACAAMAAADVAAAARQEAAAIAAwAAAJ8AAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAkAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACQAAAAAwAAAAAAmwAAAAAAAACRAAAACgAFAAAARgEAAAIABwAAAAMAAAApAQAAAgAHAAAABgAAAEcBAAACAAcAAAAOAAAASAEAAAIABwAAAB0AAABJAQAAAgAHAAAAJAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACRAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAJEAAAADAAAAAACcAAAAAAAAAJkAAAAKAAMAAABCAQAAAgAAAAAAAwAAAEMBAAACAAAAAABTAAAAPwEAAAIAAAAAAIwAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAmQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAIAAAAFAAAAAAAAAAEAAAACAAAABQAAABAAAAABAAAAAgAAAAUAAAAgAAAAAQAAAAIAAAAFAAAAMAAAAAEAAAACAAAABQAAAEAAAAABAAAAAgAAAAUAAABQAAAAAQAAAAIAAAAFAAAAYAAAAAEAAAACAAAABQAAAHAAAAABAAAAAgAAAAUAAACAAAAAAQAAAAIAAAAFAAAAkAAAAAEAAAACAAAABQAAAKAAAAABAAAAAgAAAAUAAACwAAAAAQAAAAIAAAAFAAAAwAAAAAEAAAACAAAABQAAANAAAAABAAAAAgAAAAUAAADgAAAAAQAAAAIAAAAFAAAA8AAAAAEAAAACAAAABQAAAAABAAABAAAAAgAAAAUAAAAQAQAAAQAAAAIAAAAFAAAAIAEAAAEAAAACAAAABQAAADABAAABAAAAAgAAAAUAAABAAQAAAQAAAAIAAAAFAAAAUAEAAAEAAAACAAAABQAAAGABAAABAAAAAgAAAAUAAABwAQAAAQAAAAIAAAAFAAAAgAEAAAEAAAACAAAABQAAAJABAAABAAAAAgAAAAUAAACgAQAAAQAAAAIAAAAFAAAAsAEAAAEAAAACAAAABQAAAMABAAABAAAAAgAAAAUAAADQAQAAAQAAAAIAAAAFAAAA4AEAAAEAAAACAAAABQAAAPABAAABAAAAAgAAAAUAAAAAAgAAAQAAAAIAAAAFAAAAEAIAAAEAAAACAAAABQAAACACAAABAAAAAgAAAAUAAAAwAgAAAQAAAAIAAAAFAAAAQAIAAAEAAAACAAAABQAAAFACAAABAAAAAgAAAAUAAABgAgAAAQAAAAIAAAAFAAAAcAIAAAEAAAACAAAABQAAAIACAAABAAAAAgAAAAUAAACQAgAAAQAAAAIAAAAFAAAAoAIAAAEAAAACAAAABQAAALACAAABAAAAAgAAAAUAAADAAgAAAQAAAAIAAAAFAAAA0AIAAAEAAAACAAAABQAAAOACAAABAAAAAgAAAAUAAADwAgAAAQAAAAIAAAAFAAAAAAMAAAEAAAACAAAABQAAABADAAABAAAAAgAAAAUAAAAgAwAAAQAAAAIAAAAFAAAAMAMAAAEAAAACAAAABQAAAEADAAABAAAAAgAAAAUAAABQAwAAAQAAAAIAAAAFAAAAYAMAAAEAAAACAAAABQAAAHADAAABAAAAAgAAAAUAAACAAwAAAQAAAAIAAAAFAAAAkAMAAAEAAAACAAAABQAAAKADAAABAAAAAgAAAAUAAACwAwAAAQAAAAIAAAAFAAAAwAMAAAEAAAACAAAABQAAANADAAABAAAAAgAAAAUAAADgAwAAAQAAAAIAAAAFAAAA8AMAAAEAAAACAAAABQAAAAAEAAABAAAAAgAAAAUAAAAQBAAAAQAAAAIAAAAFAAAAIAQAAAEAAAACAAAABQAAADAEAAABAAAAAgAAAAUAAABABAAAAQAAAAIAAAAFAAAAUAQAAAEAAAACAAAABQAAAGAEAAABAAAAAgAAAAUAAABwBAAAAQAAAAIAAAAFAAAAgAQAAAEAAAACAAAABQAAAJAEAAABAAAAAgAAAAUAAACgBAAAAQAAAAIAAAAFAAAAsAQAAAEAAAACAAAABQAAAMAEAAABAAAAAgAAAAUAAADQBAAAAQAAAAIAAAAFAAAA4AQAAAEAAAAAAAAABAAAAPAEAAAAAAAAAgAAAAUAAADwBAAAAQAAAAIAAAAFAAAAAAUAAAEAAAACAAAABQAAABAFAAABAAAAAgAAAAUAAAAgBQAAAQAAAAIAAAAFAAAAMAUAAAEAAAACAAAABQAAAEAFAAABAAAAAgAAAAUAAABQBQAAAQAAAAIAAAAFAAAAYAUAAAEAAAACAAAABQAAAHAFAAABAAAAAgAAAAUAAACABQAAAQAAAAIAAAAFAAAAkAUAAAEAAAACAAAABQAAAKAFAAABAAAAAgAAAAUAAACwBQAAAQAAAAIAAAAFAAAAwAUAAAEAAAACAAAABQAAANAFAAABAAAAAgAAAAUAAADgBQAAAQAAAAIAAAAFAAAA8AUAAAEAAAACAAAABQAAAAAGAAABAAAAAgAAAAUAAAAQBgAAAQAAAAIAAAAFAAAAIAYAAAEAAAACAAAABQAAADAGAAABAAAAAgAAAAUAAABABgAAAQAAAAIAAAAFAAAAUAYAAAEAAAACAAAABQAAAGAGAAABAAAAAgAAAAUAAABwBgAAAQAAAAIAAAAFAAAAgAYAAAEAAAACAAAABQAAAJAGAAABAAAAAgAAAAUAAACgBgAAAQAAAAIAAAAFAAAAsAYAAAEAAAACAAAABQAAAMAGAAABAAAAAgAAAAUAAADQBgAAAQAAAAIAAAAFAAAA4AYAAAEAAAACAAAABQAAAPAGAAABAAAAAgAAAAUAAAAABwAAAQAAAAIAAAAFAAAAEAcAAAEAAAACAAAABQAAACAHAAABAAAAAgAAAAUAAAAwBwAAAQAAAAIAAAAFAAAAQAcAAAEAAAACAAAABQAAAFAHAAABAAAAAgAAAAUAAABgBwAAAQAAAAIAAAAFAAAAcAcAAAEAAAACAAAABQAAAIAHAAABAAAAAgAAAAUAAACQBwAAAQAAAAIAAAAFAAAAoAcAAAEAAAACAAAABQAAALAHAAABAAAAAgAAAAUAAADABwAAAQAAAAIAAAAFAAAA0AcAAAEAAAACAAAABQAAAOAHAAABAAAAAgAAAAUAAADwBwAAAQAAAAIAAAAFAAAAAAgAAAEAAAACAAAABQAAABAIAAABAAAAAgAAAAUAAAAgCAAAAQAAAAIAAAAFAAAAMAgAAAEAAAACAAAABQAAAEAIAAABAAAAAgAAAAUAAABQCAAAAQAAAAIAAAAFAAAAYAgAAAEAAAAAAAAABQAAAHAIAAAAAAAABAAAAAAAAABwCAAAAQAAAAAAAAAGAAAAgAgAAAAAAAAAAAAABwAAAIAIAAAAAAAAAAAAAAgAAACACAAAAAAAAAAAAAAJAAAAgAgAAAAAAAAEAAAAAAAAAIAIAAABAAAABAAAAAAAAACQCAAAAQAAAAUAAAAGAAAAoAgAAAEAAAAFAAAABgAAADISAAABAAAABQAAAAYAAAAWGAAAAQAAAAQAAAAAAAAACBkAAAEAAAAEAAAAAAAAABgZAAABAAAAAAAAAAoAAAAoGQAAAAAAAAQAAAAAAAAAKBkAAAEAAAAEAAAAAAAAADgZAAABAAAABAAAAAAAAABIGQAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQALAAAAAAAlAAAAAQABAAEACwAAAAAAJgAAAAEAAQABAAsAAAAAACcAAAABAAEAAQALAAAAAAAoAAAAAQABAAEACwAAAAAAKQAAAAEAAQABAAsAAAAAACoAAAABAAEAAQALAAAAAAArAAAAAQABAAEACwAAAAAALAAAAAEAAQABAAsAAAAAAC0AAAABAAEAAQALAAAAAAAuAAAAAQABAAEACwAAAAAALwAAAAEAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAAAQABAAEACwAAAAAANQAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQALAAAAAABVAAAAAQABAAEACwAAAAAAVgAAAAEAAQABAAsAAAAAAFcAAAABAAEAAQALAAAAAABYAAAAAQABAAEACwAAAAAAWQAAAAEAAQABAAsAAAAAAFoAAAABAAEAAQALAAAAAABbAAAAAQABAAEACwAAAAAAXAAAAAEAAQABAAsAAAAAAF0AAAABAAEAAQALAAAAAABeAAAAAQABAAEACwAAAAAAXwAAAAEAAQABAAsAAAAAAGAAAAABAAEAAQALAAAAAABhAAAAAQABAAEACwAAAAAAYgAAAAEAAQABAAsAAAAAAGMAAAABAAEAAQALAAAAAABkAAAAAQABAAEACwAAAAAAZQAAAAEAAQABAAsAAAAAAGYAAAABAAEAAQALAAAAAABnAAAAAQABAAEACwAAAAAAaAAAAAEAAQABAAsAAAAAAGkAAAABAAEAAQALAAAAAABqAAAAAQABAAEACwAAAAAAawAAAAEAAQABAAsAAAAAAGwAAAABAAEAAQALAAAAAABtAAAAAQABAAEACwAAAAAAbgAAAAEAAQABAAsAAAAAAG8AAAABAAEAAQALAAAAAABwAAAAAQABAAEACwAAAAAAcQAAAAEAAQABAAsAAAAAAHIAAAABAAEAAQALAAAAAABzAAAAAQABAAEACwAAAAAAdAAAAAEAAQABAAsAAAAAAHUAAAABAAEAAQALAAAAAAB2AAAAAQABAAEACwAAAAAAdwAAAAEAAQABAAsAAAAAAHgAAAABAAEAAQALAAAAAAB5AAAAAQABAAEACwAAAAAAegAAAAEAAQABAAsAAAAAAHsAAAABAAEAAQALAAAAAAB8AAAAAQABAAEACwAAAAAAfQAAAAEAAQABAAsAAAAAAH4AAAABAAEAAQALAAAAAAB/AAAAAQABAAEACwAAAAAAgAAAAAEAAQABAAsAAAAAAIEAAAABAAEAAQALAAAAAACCAAAAAQABAAEACwAAAAAAgwAAAAEAAQABAAsAAAAAAIQAAAABAAEAAQALAAAAAACFAAAAAQABAAEACwAAAAAAhgAAAAEAAQABABcBAAAHAAAAAAAKAAAAAAAYAQAABwAAAAAACgAAAAAADQAAAAcAAAAAAAoAAAAAAAYAGwEAAAoAAAAAAAoATwAAAIYAAAACAAAAAAAEAAAAOwAAAAIAAAAAAAUAAACHAAAAAgAAAAAABgAAAIgAAAACAAAAAAAHAAAAiQAAAAIAAAAAAAgAAACKAAAAAgAAAAAACQAAAIsAAAACAAAAAAAKAAAAjAAAAAIAAAAAAAsAAACNAAAAAgAAAAAADAAAAI4AAAACAAAAAAANAAAAjwAAAAIAAAAAAA4AAACQAAAAAgAAAAAADwAAAEwAAAACAAAAAAAQAAAAkQAAAAIAAAAAABEAAACSAAAAAgAAAAAAEgAAAJMAAAACAAAAAAATAAAAlAAAAAIAAAAAABQAAACVAAAAAgAAAAAAFQAAAJYAAAACAAAAAAAWAAAAlwAAAAIAAAAAABcAAACYAAAAAgAAAAAAGAAAAJkAAAACAAAAAAAZAAAAmgAAAAIAAAAAABoAAACbAAAAAgAAAAAAGwAAAJwAAAACAAAAAAAcAAAAnQAAAAIAAAAAAB0AAACeAAAAAgAAAAAAHgAAAJ8AAAACAAAAAAAfAAAAoAAAAAIAAAAAACAAAAChAAAAAgAAAAAAIQAAAKIAAAACAAAAAAAiAAAAowAAAAIAAAAAACMAAACkAAAAAgAAAAAAJAAAAKUAAAACAAAAAAAlAAAApgAAAAIAAAAAACYAAACnAAAAAgAAAAAAJwAAAKgAAAACAAAAAAAoAAAAqQAAAAIAAAAAACkAAACqAAAAAgAAAAAAKgAAAKsAAAACAAAAAAArAAAArAAAAAIAAAAAACwAAACtAAAAAgAAAAAALQAAAK4AAAACAAAAAAAuAAAArwAAAAIAAAAAAC8AAACwAAAAAgAAAAAAMAAAALEAAAACAAAAAAAxAAAAsgAAAAIAAAAAADIAAACzAAAAAgAAAAAAMwAAALQAAAACAAAAAAA0AAAAtQAAAAIAAAAAADUAAAC2AAAAAgAAAAAANgAAALcAAAACAAAAAAA3AAAAuAAAAAIAAAAAADgAAAC5AAAAAgAAAAAAOQAAALoAAAACAAAAAAA6AAAAuwAAAAIAAAAAADsAAAC8AAAAAgAAAAAAPAAAAL0AAAACAAAAAAA9AAAAvgAAAAIAAAAAAD4AAAC/AAAAAgAAAAAAPwAAAMAAAAACAAAAAABAAAAAwQAAAAIAAAAAAEEAAADCAAAAAgAAAAAAQgAAAMMAAAACAAAAAABDAAAAxAAAAAIAAAAAAEQAAADFAAAAAgAAAAAARQAAAMYAAAACAAAAAABGAAAAxwAAAAIAAAAAAEcAAADIAAAAAgAAAAAASAAAAMkAAAACAAAAAABJAAAAygAAAAIAAAAAAEoAAADLAAAAAgAAAAAASwAAAMwAAAACAAAAAABMAAAAzQAAAAIAAAAAAE0AAADOAAAAAgAAAAAATgAAAM8AAAACAAAAAABPAAAA0AAAAAIAAAAAAFAAAADRAAAAAgAAAAAAUQAAANIAAAACAAAAAABSAAAABwBPAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAIAAAAAAEQAAAACAAAAAABFAAAAAgAAAAAARgAAAAIAAAAAAEcAAAACAAAAAABIAAAAAgAAAAAASQAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAcAAAAAAAcAAQAAAAIAAwAAAAMAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAQAAAACAAAAAAADAAAAAgADAAAAAwAAAAIAAQAAAFIAAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAoAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAHAEAAAYA0wAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgAiAAAABgDUAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGACMAAAAGANUAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAJAAAAAYA1gAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgAdAQAABgDXAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGAB4BAAAGANgAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAHwEAAAYA2QAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABSAAAABgAgAQAABgDaAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAFIAAAAGACEBAAAGANsAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAUgAAAAYAIgEAAAYA3AAAAAcAAAAAAAEABgAjAQAACgAAAAAACgA4AAAAiwAAAAIAAAAAAFQAAACMAAAAAgAAAAAAVQAAAI0AAAACAAAAAABWAAAAjgAAAAIAAAAAAFcAAACPAAAAAgAAAAAAWAAAAJAAAAACAAAAAABZAAAATAAAAAIAAAAAAFoAAACRAAAAAgAAAAAAWwAAAJIAAAACAAAAAABcAAAAkwAAAAIAAAAAAF0AAACVAAAAAgAAAAAAXgAAAJYAAAACAAAAAABfAAAAlwAAAAIAAAAAAGAAAACZAAAAAgAAAAAAYQAAAJwAAAACAAAAAABiAAAAnQAAAAIAAAAAAGMAAACeAAAAAgAAAAAAZAAAAJ8AAAACAAAAAABlAAAAoAAAAAIAAAAAAGYAAAChAAAAAgAAAAAAZwAAAKIAAAACAAAAAABoAAAAowAAAAIAAAAAAGkAAACkAAAAAgAAAAAAagAAAKUAAAACAAAAAABrAAAAqAAAAAIAAAAAAGwAAACpAAAAAgAAAAAAbQAAAKoAAAACAAAAAABuAAAAqwAAAAIAAAAAAG8AAACsAAAAAgAAAAAAcAAAALEAAAACAAAAAABxAAAAsgAAAAIAAAAAAHIAAACvAAAAAgAAAAAAcwAAALUAAAACAAAAAAB0AAAAtgAAAAIAAAAAAHUAAAC3AAAAAgAAAAAAdgAAALgAAAACAAAAAAB3AAAAuQAAAAIAAAAAAHgAAAC6AAAAAgAAAAAAeQAAALsAAAACAAAAAAB6AAAAvAAAAAIAAAAAAHsAAAC9AAAAAgAAAAAAfAAAAL4AAAACAAAAAAB9AAAAvwAAAAIAAAAAAH4AAADFAAAAAgAAAAAAfwAAAMcAAAACAAAAAACAAAAAyAAAAAIAAAAAAIEAAADJAAAAAgAAAAAAggAAAMoAAAACAAAAAACDAAAAywAAAAIAAAAAAIQAAADMAAAAAgAAAAAAhQAAAIkAAAACAAAAAACGAAAAigAAAAIAAAAAAIcAAADNAAAAAgAAAAAAiAAAAM4AAAACAAAAAACJAAAA4AAAAAIAAAAAAIoAAADhAAAAAgAAAAAAiwAAAAcAOAAAAAIAAAAAAFQAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAIAAAAAAGYAAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAABwAAAAAABwABAAAAAgADAAAAPwAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAFMAAAACAAMAAAA/AAAAAgACAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGACQBAAAKAAAAAAAKAAAAAAAHAAAAAAAHAAAAAAAHAAEAAAACAAMAAABhAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAjAAAAAIAAwAAAGEAAAACAAIAAAAHAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAIAAAAEAAAAAAAAAAAAAgADAAAAYwAAAAcAAgAAAAQAAAAAAAAAAAACAAMAAABjAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAwAAAGMAAAABAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAACwAAAAcAAAAAAAoAAAAAAAwAAAAHAAAAAAAKAAAAAABBAQAABwAAAAAACgAAAAAA", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 1
    $P5003 = $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 82
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_101_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 127
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 137
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 83
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_167_1347804160.506" 
    set $P5001["qbuildsub"], $P5003
    .const 'Sub' $P5001 = "cuid_155_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1347804160.506" 
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 139
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_157_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 83
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_157_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_157_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 83
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_157_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_158_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 140
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_158_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_158_1347804160.506"
    nqp_get_sc_object $P5002, "59F7465B80A147A3928525E3AD2A07D9205C57E4-1347804160.521", 140
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_158_1347804160.506"
    $P5005 = $P5004."finish_static_lexpad"()
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1347804160.506") :anon :lex :outer("cuid_206_1347804160.506")
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1347804160.506" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1347804160.506" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1347804160.506") :load
.annotate 'file', "src\\stage2\\gen\\NQPP6QRegex.pm"
    .const 'Sub' $P5001 = "cuid_1_1347804160.506" 
    $P5002 = $P5001()
    .return ($P5002) 
.end