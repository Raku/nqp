
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303391590.341")
.annotate 'line', 0
    get_hll_global $P3242, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3241" 
    capture_lex $P3242
    get_hll_global $P3212, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3211" 
    capture_lex $P3212
    get_hll_global $P2752, ["HLL";"CommandLine";"Parser"], "_block2751" 
    capture_lex $P2752
    get_hll_global $P2653, ["HLL";"CommandLine";"Result"], "_block2652" 
    capture_lex $P2653
    get_hll_global $P1389, ["HLL";"Compiler"], "_block1388" 
    capture_lex $P1389
    get_hll_global $P672, ["HLL";"Actions"], "_block671" 
    capture_lex $P672
    get_hll_global $P17, ["HLL";"Grammar"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
.annotate 'line', 1785
    new $P15, "Undef"
    .lex "$compiler", $P15
.annotate 'line', 1059
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1058
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    get_hll_global $P17, ["HLL";"Grammar"], "_block16" 
    capture_lex $P17
    $P17()
.annotate 'line', 861
    get_hll_global $P672, ["HLL";"Actions"], "_block671" 
    capture_lex $P672
    $P672()
.annotate 'line', 1066
    get_hll_global $P1389, ["HLL";"Compiler"], "_block1388" 
    capture_lex $P1389
    $P1389()
.annotate 'line', 1785
    get_hll_global $P2649, ["HLL"], "Compiler"
    $P2650 = $P2649."new"()
    store_lex "$compiler", $P2650
.annotate 'line', 1786
    find_lex $P2651, "$compiler"
    unless_null $P2651, vivify_1021
    new $P2651, "Undef"
  vivify_1021:
    $P2651."language"("parrot")
.annotate 'line', 1879
    get_hll_global $P2653, ["HLL";"CommandLine";"Result"], "_block2652" 
    capture_lex $P2653
    $P2653()
.annotate 'line', 1912
    get_hll_global $P2752, ["HLL";"CommandLine";"Parser"], "_block2751" 
    capture_lex $P2752
    $P2752()
.annotate 'line', 2090
    get_hll_global $P3212, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3211" 
    capture_lex $P3212
    $P3212()
.annotate 'line', 2100
    get_hll_global $P3242, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3241" 
    capture_lex $P3242
    $P3832 = $P3242()
.annotate 'line', 1
    .return ($P3832)
.annotate 'line', 1058
    .const 'Sub' $P3834 = "292_1303391590.341" 
.annotate 'line', 1
    .return ($P3834)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post293") :outer("10_1303391590.341")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303391590.341" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3838, "1303391582.588"
    isnull $I3839, $P3838
    if $I3839, if_3837
    .const 'Sub' $P3982 = "10_1303391590.341" 
    $P3983 = $P3982."get_lexinfo"()
    nqp_get_sc_object $P3984, "1303391582.588", 0
    $P3983."set_static_lexpad_value"("GLOBALish", $P3984)
    .const 'Sub' $P3985 = "10_1303391590.341" 
    $P3986 = $P3985."get_lexinfo"()
    $P3986."finish_static_lexpad"()
    .const 'Sub' $P3987 = "10_1303391590.341" 
    $P3988 = $P3987."get_lexinfo"()
    nqp_get_sc_object $P3989, "1303391582.588", 0
    $P3988."set_static_lexpad_value"("$?PACKAGE", $P3989)
    .const 'Sub' $P3990 = "10_1303391590.341" 
    $P3991 = $P3990."get_lexinfo"()
    $P3991."finish_static_lexpad"()
    nqp_get_sc_object $P3992, "1303391582.588", 1
    set_hll_global ["HLL"], "Grammar", $P3992
    .const 'Sub' $P3993 = "11_1303391590.341" 
    $P3994 = $P3993."get_lexinfo"()
    nqp_get_sc_object $P3995, "1303391582.588", 1
    $P3994."set_static_lexpad_value"("$?PACKAGE", $P3995)
    .const 'Sub' $P3996 = "11_1303391590.341" 
    $P3997 = $P3996."get_lexinfo"()
    $P3997."finish_static_lexpad"()
    .const 'Sub' $P3998 = "11_1303391590.341" 
    $P3999 = $P3998."get_lexinfo"()
    nqp_get_sc_object $P4000, "1303391582.588", 1
    $P3999."set_static_lexpad_value"("$?CLASS", $P4000)
    .const 'Sub' $P4001 = "11_1303391590.341" 
    $P4002 = $P4001."get_lexinfo"()
    $P4002."finish_static_lexpad"()
    nqp_get_sc_object $P4003, "1303391582.588", 2
    set_hll_global ["HLL"], "Actions", $P4003
    .const 'Sub' $P4004 = "120_1303391590.341" 
    $P4005 = $P4004."get_lexinfo"()
    nqp_get_sc_object $P4006, "1303391582.588", 2
    $P4005."set_static_lexpad_value"("$?PACKAGE", $P4006)
    .const 'Sub' $P4007 = "120_1303391590.341" 
    $P4008 = $P4007."get_lexinfo"()
    $P4008."finish_static_lexpad"()
    .const 'Sub' $P4009 = "120_1303391590.341" 
    $P4010 = $P4009."get_lexinfo"()
    nqp_get_sc_object $P4011, "1303391582.588", 2
    $P4010."set_static_lexpad_value"("$?CLASS", $P4011)
    .const 'Sub' $P4012 = "120_1303391590.341" 
    $P4013 = $P4012."get_lexinfo"()
    $P4013."finish_static_lexpad"()
    nqp_get_sc_object $P4014, "1303391582.588", 3
    set_hll_global ["HLL"], "Compiler", $P4014
    .const 'Sub' $P4015 = "167_1303391590.341" 
    $P4016 = $P4015."get_lexinfo"()
    nqp_get_sc_object $P4017, "1303391582.588", 3
    $P4016."set_static_lexpad_value"("$?PACKAGE", $P4017)
    .const 'Sub' $P4018 = "167_1303391590.341" 
    $P4019 = $P4018."get_lexinfo"()
    $P4019."finish_static_lexpad"()
    .const 'Sub' $P4020 = "167_1303391590.341" 
    $P4021 = $P4020."get_lexinfo"()
    nqp_get_sc_object $P4022, "1303391582.588", 3
    $P4021."set_static_lexpad_value"("$?CLASS", $P4022)
    .const 'Sub' $P4023 = "167_1303391590.341" 
    $P4024 = $P4023."get_lexinfo"()
    $P4024."finish_static_lexpad"()
    nqp_get_sc_object $P4025, "1303391582.588", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4025
    .const 'Sub' $P4026 = "234_1303391590.341" 
    $P4027 = $P4026."get_lexinfo"()
    nqp_get_sc_object $P4028, "1303391582.588", 4
    $P4027."set_static_lexpad_value"("$?PACKAGE", $P4028)
    .const 'Sub' $P4029 = "234_1303391590.341" 
    $P4030 = $P4029."get_lexinfo"()
    $P4030."finish_static_lexpad"()
    .const 'Sub' $P4031 = "234_1303391590.341" 
    $P4032 = $P4031."get_lexinfo"()
    nqp_get_sc_object $P4033, "1303391582.588", 4
    $P4032."set_static_lexpad_value"("$?CLASS", $P4033)
    .const 'Sub' $P4034 = "234_1303391590.341" 
    $P4035 = $P4034."get_lexinfo"()
    $P4035."finish_static_lexpad"()
    nqp_get_sc_object $P4036, "1303391582.588", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4036
    .const 'Sub' $P4037 = "242_1303391590.341" 
    $P4038 = $P4037."get_lexinfo"()
    nqp_get_sc_object $P4039, "1303391582.588", 5
    $P4038."set_static_lexpad_value"("$?PACKAGE", $P4039)
    .const 'Sub' $P4040 = "242_1303391590.341" 
    $P4041 = $P4040."get_lexinfo"()
    $P4041."finish_static_lexpad"()
    .const 'Sub' $P4042 = "242_1303391590.341" 
    $P4043 = $P4042."get_lexinfo"()
    nqp_get_sc_object $P4044, "1303391582.588", 5
    $P4043."set_static_lexpad_value"("$?CLASS", $P4044)
    .const 'Sub' $P4045 = "242_1303391590.341" 
    $P4046 = $P4045."get_lexinfo"()
    $P4046."finish_static_lexpad"()
    nqp_get_sc_object $P4047, "1303391582.588", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P4047
    .const 'Sub' $P4048 = "262_1303391590.341" 
    $P4049 = $P4048."get_lexinfo"()
    nqp_get_sc_object $P4050, "1303391582.588", 6
    $P4049."set_static_lexpad_value"("$?PACKAGE", $P4050)
    .const 'Sub' $P4051 = "262_1303391590.341" 
    $P4052 = $P4051."get_lexinfo"()
    $P4052."finish_static_lexpad"()
    .const 'Sub' $P4053 = "262_1303391590.341" 
    $P4054 = $P4053."get_lexinfo"()
    nqp_get_sc_object $P4055, "1303391582.588", 6
    $P4054."set_static_lexpad_value"("$?CLASS", $P4055)
    .const 'Sub' $P4056 = "262_1303391590.341" 
    $P4057 = $P4056."get_lexinfo"()
    $P4057."finish_static_lexpad"()
    nqp_get_sc_object $P4058, "1303391582.588", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4058
    .const 'Sub' $P4059 = "266_1303391590.341" 
    $P4060 = $P4059."get_lexinfo"()
    nqp_get_sc_object $P4061, "1303391582.588", 7
    $P4060."set_static_lexpad_value"("$?PACKAGE", $P4061)
    .const 'Sub' $P4062 = "266_1303391590.341" 
    $P4063 = $P4062."get_lexinfo"()
    $P4063."finish_static_lexpad"()
    .const 'Sub' $P4064 = "266_1303391590.341" 
    $P4065 = $P4064."get_lexinfo"()
    nqp_get_sc_object $P4066, "1303391582.588", 7
    $P4065."set_static_lexpad_value"("$?CLASS", $P4066)
    .const 'Sub' $P4067 = "266_1303391590.341" 
    $P4068 = $P4067."get_lexinfo"()
    $P4068."finish_static_lexpad"()
    goto if_3837_end
  if_3837:
    nqp_dynop_setup 
    getinterp $P3840
    get_class $P3841, "LexPad"
    get_class $P3842, "NQPLexPad"
    $P3840."hll_map"($P3841, $P3842)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P3843, "1303391582.588"
    .local pmc cur_sc
    set cur_sc, $P3843
    load_bytecode "SettingManager.pbc"
    get_hll_global $P3844, ["HLL"], "SettingManager"
    $P3845 = $P3844."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3845)
    get_hll_global $P3846, "KnowHOW"
    $P3847 = $P3846."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3847, cur_sc
    nqp_set_sc_object "1303391582.588", 0, $P3847
    .const 'Sub' $P3848 = "10_1303391590.341" 
    $P3849 = $P3848."get_lexinfo"()
    nqp_get_sc_object $P3850, "1303391582.588", 0
    $P3849."set_static_lexpad_value"("GLOBALish", $P3850)
    .const 'Sub' $P3851 = "10_1303391590.341" 
    $P3852 = $P3851."get_lexinfo"()
    $P3852."finish_static_lexpad"()
    .const 'Sub' $P3853 = "10_1303391590.341" 
    $P3854 = $P3853."get_lexinfo"()
    nqp_get_sc_object $P3855, "1303391582.588", 0
    $P3854."set_static_lexpad_value"("$?PACKAGE", $P3855)
    .const 'Sub' $P3856 = "10_1303391590.341" 
    $P3857 = $P3856."get_lexinfo"()
    $P3857."finish_static_lexpad"()
    load_bytecode "Regex.pbc"
    get_hll_global $P3858, "NQPClassHOW"
    $P3859 = $P3858."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3859, cur_sc
    nqp_set_sc_object "1303391582.588", 1, $P3859
    nqp_get_sc_object $P3860, "1303391582.588", 1
    nqp_get_sc_object $P3861, "1303391582.588", 0
    nqp_get_package_through_who $P3862, $P3861, "HLL"
    get_who $P3863, $P3862
    set $P3863["Grammar"], $P3860
    nqp_get_sc_object $P3864, "1303391582.588", 1
    set_hll_global ["HLL"], "Grammar", $P3864
    .const 'Sub' $P3865 = "11_1303391590.341" 
    $P3866 = $P3865."get_lexinfo"()
    nqp_get_sc_object $P3867, "1303391582.588", 1
    $P3866."set_static_lexpad_value"("$?PACKAGE", $P3867)
    .const 'Sub' $P3868 = "11_1303391590.341" 
    $P3869 = $P3868."get_lexinfo"()
    $P3869."finish_static_lexpad"()
    .const 'Sub' $P3870 = "11_1303391590.341" 
    $P3871 = $P3870."get_lexinfo"()
    nqp_get_sc_object $P3872, "1303391582.588", 1
    $P3871."set_static_lexpad_value"("$?CLASS", $P3872)
    .const 'Sub' $P3873 = "11_1303391590.341" 
    $P3874 = $P3873."get_lexinfo"()
    $P3874."finish_static_lexpad"()
    get_hll_global $P3875, "NQPClassHOW"
    $P3876 = $P3875."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3876, cur_sc
    nqp_set_sc_object "1303391582.588", 2, $P3876
    nqp_get_sc_object $P3877, "1303391582.588", 2
    nqp_get_sc_object $P3878, "1303391582.588", 0
    nqp_get_package_through_who $P3879, $P3878, "HLL"
    get_who $P3880, $P3879
    set $P3880["Actions"], $P3877
    nqp_get_sc_object $P3881, "1303391582.588", 2
    set_hll_global ["HLL"], "Actions", $P3881
    .const 'Sub' $P3882 = "120_1303391590.341" 
    $P3883 = $P3882."get_lexinfo"()
    nqp_get_sc_object $P3884, "1303391582.588", 2
    $P3883."set_static_lexpad_value"("$?PACKAGE", $P3884)
    .const 'Sub' $P3885 = "120_1303391590.341" 
    $P3886 = $P3885."get_lexinfo"()
    $P3886."finish_static_lexpad"()
    .const 'Sub' $P3887 = "120_1303391590.341" 
    $P3888 = $P3887."get_lexinfo"()
    nqp_get_sc_object $P3889, "1303391582.588", 2
    $P3888."set_static_lexpad_value"("$?CLASS", $P3889)
    .const 'Sub' $P3890 = "120_1303391590.341" 
    $P3891 = $P3890."get_lexinfo"()
    $P3891."finish_static_lexpad"()
    get_hll_global $P3892, "NQPClassHOW"
    $P3893 = $P3892."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3893, cur_sc
    nqp_set_sc_object "1303391582.588", 3, $P3893
    nqp_get_sc_object $P3894, "1303391582.588", 3
    nqp_get_sc_object $P3895, "1303391582.588", 0
    nqp_get_package_through_who $P3896, $P3895, "HLL"
    get_who $P3897, $P3896
    set $P3897["Compiler"], $P3894
    nqp_get_sc_object $P3898, "1303391582.588", 3
    set_hll_global ["HLL"], "Compiler", $P3898
    .const 'Sub' $P3899 = "167_1303391590.341" 
    $P3900 = $P3899."get_lexinfo"()
    nqp_get_sc_object $P3901, "1303391582.588", 3
    $P3900."set_static_lexpad_value"("$?PACKAGE", $P3901)
    .const 'Sub' $P3902 = "167_1303391590.341" 
    $P3903 = $P3902."get_lexinfo"()
    $P3903."finish_static_lexpad"()
    .const 'Sub' $P3904 = "167_1303391590.341" 
    $P3905 = $P3904."get_lexinfo"()
    nqp_get_sc_object $P3906, "1303391582.588", 3
    $P3905."set_static_lexpad_value"("$?CLASS", $P3906)
    .const 'Sub' $P3907 = "167_1303391590.341" 
    $P3908 = $P3907."get_lexinfo"()
    $P3908."finish_static_lexpad"()
    get_hll_global $P3909, "NQPClassHOW"
    $P3910 = $P3909."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P3910, cur_sc
    nqp_set_sc_object "1303391582.588", 4, $P3910
    nqp_get_sc_object $P3911, "1303391582.588", 4
    nqp_get_sc_object $P3912, "1303391582.588", 0
    nqp_get_package_through_who $P3913, $P3912, "HLL"
    nqp_get_package_through_who $P3914, $P3913, "CommandLine"
    get_who $P3915, $P3914
    set $P3915["Result"], $P3911
    nqp_get_sc_object $P3916, "1303391582.588", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P3916
    .const 'Sub' $P3917 = "234_1303391590.341" 
    $P3918 = $P3917."get_lexinfo"()
    nqp_get_sc_object $P3919, "1303391582.588", 4
    $P3918."set_static_lexpad_value"("$?PACKAGE", $P3919)
    .const 'Sub' $P3920 = "234_1303391590.341" 
    $P3921 = $P3920."get_lexinfo"()
    $P3921."finish_static_lexpad"()
    .const 'Sub' $P3922 = "234_1303391590.341" 
    $P3923 = $P3922."get_lexinfo"()
    nqp_get_sc_object $P3924, "1303391582.588", 4
    $P3923."set_static_lexpad_value"("$?CLASS", $P3924)
    .const 'Sub' $P3925 = "234_1303391590.341" 
    $P3926 = $P3925."get_lexinfo"()
    $P3926."finish_static_lexpad"()
    get_hll_global $P3927, "NQPClassHOW"
    $P3928 = $P3927."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P3928, cur_sc
    nqp_set_sc_object "1303391582.588", 5, $P3928
    nqp_get_sc_object $P3929, "1303391582.588", 5
    nqp_get_sc_object $P3930, "1303391582.588", 0
    nqp_get_package_through_who $P3931, $P3930, "HLL"
    nqp_get_package_through_who $P3932, $P3931, "CommandLine"
    get_who $P3933, $P3932
    set $P3933["Parser"], $P3929
    nqp_get_sc_object $P3934, "1303391582.588", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P3934
    .const 'Sub' $P3935 = "242_1303391590.341" 
    $P3936 = $P3935."get_lexinfo"()
    nqp_get_sc_object $P3937, "1303391582.588", 5
    $P3936."set_static_lexpad_value"("$?PACKAGE", $P3937)
    .const 'Sub' $P3938 = "242_1303391590.341" 
    $P3939 = $P3938."get_lexinfo"()
    $P3939."finish_static_lexpad"()
    .const 'Sub' $P3940 = "242_1303391590.341" 
    $P3941 = $P3940."get_lexinfo"()
    nqp_get_sc_object $P3942, "1303391582.588", 5
    $P3941."set_static_lexpad_value"("$?CLASS", $P3942)
    .const 'Sub' $P3943 = "242_1303391590.341" 
    $P3944 = $P3943."get_lexinfo"()
    $P3944."finish_static_lexpad"()
    get_hll_global $P3945, "NQPClassHOW"
    $P3946 = $P3945."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P3946, cur_sc
    nqp_set_sc_object "1303391582.588", 6, $P3946
    nqp_get_sc_object $P3947, "1303391582.588", 6
    nqp_get_sc_object $P3948, "1303391582.588", 0
    nqp_get_package_through_who $P3949, $P3948, "HLL"
    nqp_get_package_through_who $P3950, $P3949, "Compiler"
    nqp_get_package_through_who $P3951, $P3950, "SerializationContextBuilder"
    get_who $P3952, $P3951
    set $P3952["Event"], $P3947
    nqp_get_sc_object $P3953, "1303391582.588", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P3953
    .const 'Sub' $P3954 = "262_1303391590.341" 
    $P3955 = $P3954."get_lexinfo"()
    nqp_get_sc_object $P3956, "1303391582.588", 6
    $P3955."set_static_lexpad_value"("$?PACKAGE", $P3956)
    .const 'Sub' $P3957 = "262_1303391590.341" 
    $P3958 = $P3957."get_lexinfo"()
    $P3958."finish_static_lexpad"()
    .const 'Sub' $P3959 = "262_1303391590.341" 
    $P3960 = $P3959."get_lexinfo"()
    nqp_get_sc_object $P3961, "1303391582.588", 6
    $P3960."set_static_lexpad_value"("$?CLASS", $P3961)
    .const 'Sub' $P3962 = "262_1303391590.341" 
    $P3963 = $P3962."get_lexinfo"()
    $P3963."finish_static_lexpad"()
    get_hll_global $P3964, "NQPClassHOW"
    $P3965 = $P3964."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P3965, cur_sc
    nqp_set_sc_object "1303391582.588", 7, $P3965
    nqp_get_sc_object $P3966, "1303391582.588", 7
    nqp_get_sc_object $P3967, "1303391582.588", 0
    nqp_get_package_through_who $P3968, $P3967, "HLL"
    nqp_get_package_through_who $P3969, $P3968, "Compiler"
    get_who $P3970, $P3969
    set $P3970["SerializationContextBuilder"], $P3966
    nqp_get_sc_object $P3971, "1303391582.588", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P3971
    .const 'Sub' $P3972 = "266_1303391590.341" 
    $P3973 = $P3972."get_lexinfo"()
    nqp_get_sc_object $P3974, "1303391582.588", 7
    $P3973."set_static_lexpad_value"("$?PACKAGE", $P3974)
    .const 'Sub' $P3975 = "266_1303391590.341" 
    $P3976 = $P3975."get_lexinfo"()
    $P3976."finish_static_lexpad"()
    .const 'Sub' $P3977 = "266_1303391590.341" 
    $P3978 = $P3977."get_lexinfo"()
    nqp_get_sc_object $P3979, "1303391582.588", 7
    $P3978."set_static_lexpad_value"("$?CLASS", $P3979)
    .const 'Sub' $P3980 = "266_1303391590.341" 
    $P3981 = $P3980."get_lexinfo"()
    $P3981."finish_static_lexpad"()
  if_3837_end:
    nqp_get_sc_object $P4069, "1303391582.588", 0
    set_hll_global "GLOBAL", $P4069
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1303391590.341") :outer("10_1303391590.341")
.annotate 'line', 9
    .const 'Sub' $P459 = "119_1303391590.341" 
    capture_lex $P459
    .const 'Sub' $P438 = "118_1303391590.341" 
    capture_lex $P438
    .const 'Sub' $P433 = "117_1303391590.341" 
    capture_lex $P433
    .const 'Sub' $P418 = "116_1303391590.341" 
    capture_lex $P418
    .const 'Sub' $P408 = "115_1303391590.341" 
    capture_lex $P408
    .const 'Sub' $P404 = "114_1303391590.341" 
    capture_lex $P404
    .const 'Sub' $P400 = "113_1303391590.341" 
    capture_lex $P400
    .const 'Sub' $P397 = "112_1303391590.341" 
    capture_lex $P397
    .const 'Sub' $P395 = "111_1303391590.341" 
    capture_lex $P395
    .const 'Sub' $P393 = "110_1303391590.341" 
    capture_lex $P393
    .const 'Sub' $P387 = "109_1303391590.341" 
    capture_lex $P387
    .const 'Sub' $P384 = "108_1303391590.341" 
    capture_lex $P384
    .const 'Sub' $P380 = "107_1303391590.341" 
    capture_lex $P380
    .const 'Sub' $P352 = "106_1303391590.341" 
    capture_lex $P352
    .const 'Sub' $P347 = "105_1303391590.341" 
    capture_lex $P347
    .const 'Sub' $P338 = "103_1303391590.341" 
    capture_lex $P338
    .const 'Sub' $P332 = "101_1303391590.341" 
    capture_lex $P332
    .const 'Sub' $P319 = "98_1303391590.341" 
    capture_lex $P319
    .const 'Sub' $P287 = "93_1303391590.341" 
    capture_lex $P287
    .const 'Sub' $P281 = "91_1303391590.341" 
    capture_lex $P281
    .const 'Sub' $P276 = "89_1303391590.341" 
    capture_lex $P276
    .const 'Sub' $P270 = "87_1303391590.341" 
    capture_lex $P270
    .const 'Sub' $P264 = "85_1303391590.341" 
    capture_lex $P264
    .const 'Sub' $P259 = "83_1303391590.341" 
    capture_lex $P259
    .const 'Sub' $P254 = "81_1303391590.341" 
    capture_lex $P254
    .const 'Sub' $P249 = "79_1303391590.341" 
    capture_lex $P249
    .const 'Sub' $P244 = "77_1303391590.341" 
    capture_lex $P244
    .const 'Sub' $P239 = "75_1303391590.341" 
    capture_lex $P239
    .const 'Sub' $P234 = "73_1303391590.341" 
    capture_lex $P234
    .const 'Sub' $P229 = "71_1303391590.341" 
    capture_lex $P229
    .const 'Sub' $P224 = "69_1303391590.341" 
    capture_lex $P224
    .const 'Sub' $P212 = "65_1303391590.341" 
    capture_lex $P212
    .const 'Sub' $P199 = "63_1303391590.341" 
    capture_lex $P199
    .const 'Sub' $P187 = "61_1303391590.341" 
    capture_lex $P187
    .const 'Sub' $P181 = "59_1303391590.341" 
    capture_lex $P181
    .const 'Sub' $P174 = "57_1303391590.341" 
    capture_lex $P174
    .const 'Sub' $P168 = "55_1303391590.341" 
    capture_lex $P168
    .const 'Sub' $P161 = "53_1303391590.341" 
    capture_lex $P161
    .const 'Sub' $P155 = "51_1303391590.341" 
    capture_lex $P155
    .const 'Sub' $P148 = "49_1303391590.341" 
    capture_lex $P148
    .const 'Sub' $P142 = "47_1303391590.341" 
    capture_lex $P142
    .const 'Sub' $P136 = "45_1303391590.341" 
    capture_lex $P136
    .const 'Sub' $P127 = "43_1303391590.341" 
    capture_lex $P127
    .const 'Sub' $P119 = "41_1303391590.341" 
    capture_lex $P119
    .const 'Sub' $P111 = "40_1303391590.341" 
    capture_lex $P111
    .const 'Sub' $P105 = "38_1303391590.341" 
    capture_lex $P105
    .const 'Sub' $P100 = "36_1303391590.341" 
    capture_lex $P100
    .const 'Sub' $P92 = "34_1303391590.341" 
    capture_lex $P92
    .const 'Sub' $P86 = "32_1303391590.341" 
    capture_lex $P86
    .const 'Sub' $P80 = "30_1303391590.341" 
    capture_lex $P80
    .const 'Sub' $P74 = "28_1303391590.341" 
    capture_lex $P74
    .const 'Sub' $P29 = "14_1303391590.341" 
    capture_lex $P29
    .const 'Sub' $P22 = "12_1303391590.341" 
    capture_lex $P22
.annotate 'line', 10
    new $P18, "Undef"
    .lex "$brackets", $P18
    .lex "$?PACKAGE", $P19
    .lex "$?CLASS", $P20
    new $P21, "String"
    assign $P21, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P21
.annotate 'line', 845
    .const 'Sub' $P438 = "118_1303391590.341" 
    newclosure $P457, $P438
.annotate 'line', 9
    .return ($P457)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post294") :outer("11_1303391590.341")
.annotate 'line', 9
    get_hll_global $P17, ["HLL";"Grammar"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P459 = "119_1303391590.341" 
    capture_lex $P459
    $P459()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block458"  :anon :subid("119_1303391590.341") :outer("11_1303391590.341")
.annotate 'line', 9
    nqp_get_sc_object $P460, "1303391582.588", 1
    .local pmc type_obj
    set type_obj, $P460
    get_how $P461, type_obj
    .const 'Sub' $P462 = "12_1303391590.341" 
    $P461."add_method"(type_obj, "ws", $P462)
    get_how $P463, type_obj
    get_global $P464, "!PREFIX__ws"
    $P463."add_method"(type_obj, "!PREFIX__ws", $P464)
    get_how $P465, type_obj
    .const 'Sub' $P466 = "14_1303391590.341" 
    $P465."add_method"(type_obj, "termish", $P466)
    get_how $P467, type_obj
    get_global $P468, "!PREFIX__termish"
    $P467."add_method"(type_obj, "!PREFIX__termish", $P468)
    get_how $P469, type_obj
    .const 'Sub' $P470 = "16_1303391590.341" 
    $P469."add_method"(type_obj, "term", $P470)
    get_how $P471, type_obj
    .const 'Sub' $P472 = "17_1303391590.341" 
    $P471."add_method"(type_obj, "!PREFIX__term", $P472)
    get_how $P473, type_obj
    .const 'Sub' $P474 = "18_1303391590.341" 
    $P473."add_method"(type_obj, "infix", $P474)
    get_how $P475, type_obj
    .const 'Sub' $P476 = "19_1303391590.341" 
    $P475."add_method"(type_obj, "!PREFIX__infix", $P476)
    get_how $P477, type_obj
    .const 'Sub' $P478 = "20_1303391590.341" 
    $P477."add_method"(type_obj, "prefix", $P478)
    get_how $P479, type_obj
    .const 'Sub' $P480 = "21_1303391590.341" 
    $P479."add_method"(type_obj, "!PREFIX__prefix", $P480)
    get_how $P481, type_obj
    .const 'Sub' $P482 = "22_1303391590.341" 
    $P481."add_method"(type_obj, "postfix", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "23_1303391590.341" 
    $P483."add_method"(type_obj, "!PREFIX__postfix", $P484)
    get_how $P485, type_obj
    .const 'Sub' $P486 = "24_1303391590.341" 
    $P485."add_method"(type_obj, "circumfix", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "25_1303391590.341" 
    $P487."add_method"(type_obj, "!PREFIX__circumfix", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "26_1303391590.341" 
    $P489."add_method"(type_obj, "postcircumfix", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "27_1303391590.341" 
    $P491."add_method"(type_obj, "!PREFIX__postcircumfix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "28_1303391590.341" 
    $P493."add_method"(type_obj, "term:sym<circumfix>", $P494)
    get_how $P495, type_obj
    get_global $P496, "!PREFIX__term:sym<circumfix>"
    $P495."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "30_1303391590.341" 
    $P497."add_method"(type_obj, "infixish", $P498)
    get_how $P499, type_obj
    get_global $P500, "!PREFIX__infixish"
    $P499."add_method"(type_obj, "!PREFIX__infixish", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "32_1303391590.341" 
    $P501."add_method"(type_obj, "prefixish", $P502)
    get_how $P503, type_obj
    get_global $P504, "!PREFIX__prefixish"
    $P503."add_method"(type_obj, "!PREFIX__prefixish", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "34_1303391590.341" 
    $P505."add_method"(type_obj, "postfixish", $P506)
    get_how $P507, type_obj
    get_global $P508, "!PREFIX__postfixish"
    $P507."add_method"(type_obj, "!PREFIX__postfixish", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "36_1303391590.341" 
    $P509."add_method"(type_obj, "nullterm", $P510)
    get_how $P511, type_obj
    get_global $P512, "!PREFIX__nullterm"
    $P511."add_method"(type_obj, "!PREFIX__nullterm", $P512)
    get_how $P513, type_obj
    .const 'Sub' $P514 = "38_1303391590.341" 
    $P513."add_method"(type_obj, "nullterm_alt", $P514)
    get_how $P515, type_obj
    get_global $P516, "!PREFIX__nullterm_alt"
    $P515."add_method"(type_obj, "!PREFIX__nullterm_alt", $P516)
    get_how $P517, type_obj
    .const 'Sub' $P518 = "40_1303391590.341" 
    $P517."add_method"(type_obj, "nulltermish", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "41_1303391590.341" 
    $P519."add_method"(type_obj, "quote_delimited", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__quote_delimited"
    $P521."add_method"(type_obj, "!PREFIX__quote_delimited", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "43_1303391590.341" 
    $P523."add_method"(type_obj, "quote_atom", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__quote_atom"
    $P525."add_method"(type_obj, "!PREFIX__quote_atom", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "45_1303391590.341" 
    $P527."add_method"(type_obj, "decint", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__decint"
    $P529."add_method"(type_obj, "!PREFIX__decint", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "47_1303391590.341" 
    $P531."add_method"(type_obj, "decints", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__decints"
    $P533."add_method"(type_obj, "!PREFIX__decints", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "49_1303391590.341" 
    $P535."add_method"(type_obj, "hexint", $P536)
    get_how $P537, type_obj
    get_global $P538, "!PREFIX__hexint"
    $P537."add_method"(type_obj, "!PREFIX__hexint", $P538)
    get_how $P539, type_obj
    .const 'Sub' $P540 = "51_1303391590.341" 
    $P539."add_method"(type_obj, "hexints", $P540)
    get_how $P541, type_obj
    get_global $P542, "!PREFIX__hexints"
    $P541."add_method"(type_obj, "!PREFIX__hexints", $P542)
    get_how $P543, type_obj
    .const 'Sub' $P544 = "53_1303391590.341" 
    $P543."add_method"(type_obj, "octint", $P544)
    get_how $P545, type_obj
    get_global $P546, "!PREFIX__octint"
    $P545."add_method"(type_obj, "!PREFIX__octint", $P546)
    get_how $P547, type_obj
    .const 'Sub' $P548 = "55_1303391590.341" 
    $P547."add_method"(type_obj, "octints", $P548)
    get_how $P549, type_obj
    get_global $P550, "!PREFIX__octints"
    $P549."add_method"(type_obj, "!PREFIX__octints", $P550)
    get_how $P551, type_obj
    .const 'Sub' $P552 = "57_1303391590.341" 
    $P551."add_method"(type_obj, "binint", $P552)
    get_how $P553, type_obj
    get_global $P554, "!PREFIX__binint"
    $P553."add_method"(type_obj, "!PREFIX__binint", $P554)
    get_how $P555, type_obj
    .const 'Sub' $P556 = "59_1303391590.341" 
    $P555."add_method"(type_obj, "binints", $P556)
    get_how $P557, type_obj
    get_global $P558, "!PREFIX__binints"
    $P557."add_method"(type_obj, "!PREFIX__binints", $P558)
    get_how $P559, type_obj
    .const 'Sub' $P560 = "61_1303391590.341" 
    $P559."add_method"(type_obj, "integer", $P560)
    get_how $P561, type_obj
    get_global $P562, "!PREFIX__integer"
    $P561."add_method"(type_obj, "!PREFIX__integer", $P562)
    get_how $P563, type_obj
    .const 'Sub' $P564 = "63_1303391590.341" 
    $P563."add_method"(type_obj, "dec_number", $P564)
    get_how $P565, type_obj
    get_global $P566, "!PREFIX__dec_number"
    $P565."add_method"(type_obj, "!PREFIX__dec_number", $P566)
    get_how $P567, type_obj
    .const 'Sub' $P568 = "65_1303391590.341" 
    $P567."add_method"(type_obj, "escale", $P568)
    get_how $P569, type_obj
    get_global $P570, "!PREFIX__escale"
    $P569."add_method"(type_obj, "!PREFIX__escale", $P570)
    get_how $P571, type_obj
    .const 'Sub' $P572 = "67_1303391590.341" 
    $P571."add_method"(type_obj, "quote_escape", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "68_1303391590.341" 
    $P573."add_method"(type_obj, "!PREFIX__quote_escape", $P574)
    get_how $P575, type_obj
    .const 'Sub' $P576 = "69_1303391590.341" 
    $P575."add_method"(type_obj, "quote_escape:sym<backslash>", $P576)
    get_how $P577, type_obj
    get_global $P578, "!PREFIX__quote_escape:sym<backslash>"
    $P577."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P578)
    get_how $P579, type_obj
    .const 'Sub' $P580 = "71_1303391590.341" 
    $P579."add_method"(type_obj, "quote_escape:sym<stopper>", $P580)
    get_how $P581, type_obj
    get_global $P582, "!PREFIX__quote_escape:sym<stopper>"
    $P581."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P582)
    get_how $P583, type_obj
    .const 'Sub' $P584 = "73_1303391590.341" 
    $P583."add_method"(type_obj, "quote_escape:sym<bs>", $P584)
    get_how $P585, type_obj
    get_global $P586, "!PREFIX__quote_escape:sym<bs>"
    $P585."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P586)
    get_how $P587, type_obj
    .const 'Sub' $P588 = "75_1303391590.341" 
    $P587."add_method"(type_obj, "quote_escape:sym<nl>", $P588)
    get_how $P589, type_obj
    get_global $P590, "!PREFIX__quote_escape:sym<nl>"
    $P589."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "77_1303391590.341" 
    $P591."add_method"(type_obj, "quote_escape:sym<cr>", $P592)
    get_how $P593, type_obj
    get_global $P594, "!PREFIX__quote_escape:sym<cr>"
    $P593."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P594)
    get_how $P595, type_obj
    .const 'Sub' $P596 = "79_1303391590.341" 
    $P595."add_method"(type_obj, "quote_escape:sym<tab>", $P596)
    get_how $P597, type_obj
    get_global $P598, "!PREFIX__quote_escape:sym<tab>"
    $P597."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P598)
    get_how $P599, type_obj
    .const 'Sub' $P600 = "81_1303391590.341" 
    $P599."add_method"(type_obj, "quote_escape:sym<ff>", $P600)
    get_how $P601, type_obj
    get_global $P602, "!PREFIX__quote_escape:sym<ff>"
    $P601."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P602)
    get_how $P603, type_obj
    .const 'Sub' $P604 = "83_1303391590.341" 
    $P603."add_method"(type_obj, "quote_escape:sym<esc>", $P604)
    get_how $P605, type_obj
    get_global $P606, "!PREFIX__quote_escape:sym<esc>"
    $P605."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P606)
    get_how $P607, type_obj
    .const 'Sub' $P608 = "85_1303391590.341" 
    $P607."add_method"(type_obj, "quote_escape:sym<hex>", $P608)
    get_how $P609, type_obj
    get_global $P610, "!PREFIX__quote_escape:sym<hex>"
    $P609."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P610)
    get_how $P611, type_obj
    .const 'Sub' $P612 = "87_1303391590.341" 
    $P611."add_method"(type_obj, "quote_escape:sym<oct>", $P612)
    get_how $P613, type_obj
    get_global $P614, "!PREFIX__quote_escape:sym<oct>"
    $P613."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P614)
    get_how $P615, type_obj
    .const 'Sub' $P616 = "89_1303391590.341" 
    $P615."add_method"(type_obj, "quote_escape:sym<chr>", $P616)
    get_how $P617, type_obj
    get_global $P618, "!PREFIX__quote_escape:sym<chr>"
    $P617."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P618)
    get_how $P619, type_obj
    .const 'Sub' $P620 = "91_1303391590.341" 
    $P619."add_method"(type_obj, "quote_escape:sym<0>", $P620)
    get_how $P621, type_obj
    get_global $P622, "!PREFIX__quote_escape:sym<0>"
    $P621."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P622)
    get_how $P623, type_obj
    .const 'Sub' $P624 = "93_1303391590.341" 
    $P623."add_method"(type_obj, "quote_escape:sym<misc>", $P624)
    get_how $P625, type_obj
    get_global $P626, "!PREFIX__quote_escape:sym<misc>"
    $P625."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P626)
    get_how $P627, type_obj
    .const 'Sub' $P628 = "98_1303391590.341" 
    $P627."add_method"(type_obj, "charname", $P628)
    get_how $P629, type_obj
    get_global $P630, "!PREFIX__charname"
    $P629."add_method"(type_obj, "!PREFIX__charname", $P630)
    get_how $P631, type_obj
    .const 'Sub' $P632 = "101_1303391590.341" 
    $P631."add_method"(type_obj, "charnames", $P632)
    get_how $P633, type_obj
    get_global $P634, "!PREFIX__charnames"
    $P633."add_method"(type_obj, "!PREFIX__charnames", $P634)
    get_how $P635, type_obj
    .const 'Sub' $P636 = "103_1303391590.341" 
    $P635."add_method"(type_obj, "charspec", $P636)
    get_how $P637, type_obj
    get_global $P638, "!PREFIX__charspec"
    $P637."add_method"(type_obj, "!PREFIX__charspec", $P638)
    get_how $P639, type_obj
    .const 'Sub' $P640 = "105_1303391590.341" 
    $P639."add_method"(type_obj, "O", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "106_1303391590.341" 
    $P641."add_method"(type_obj, "panic", $P642)
    get_how $P643, type_obj
    .const 'Sub' $P644 = "107_1303391590.341" 
    $P643."add_method"(type_obj, "peek_delimiters", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "108_1303391590.341" 
    $P645."add_method"(type_obj, "quote_EXPR", $P646)
    get_how $P647, type_obj
    .const 'Sub' $P648 = "109_1303391590.341" 
    $P647."add_method"(type_obj, "quotemod_check", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "110_1303391590.341" 
    $P649."add_method"(type_obj, "starter", $P650)
    get_how $P651, type_obj
    .const 'Sub' $P652 = "111_1303391590.341" 
    $P651."add_method"(type_obj, "stopper", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "112_1303391590.341" 
    $P653."add_method"(type_obj, "split_words", $P654)
    get_how $P655, type_obj
    .const 'Sub' $P656 = "113_1303391590.341" 
    $P655."add_method"(type_obj, "EXPR", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "114_1303391590.341" 
    $P657."add_method"(type_obj, "EXPR_reduce", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "115_1303391590.341" 
    $P659."add_method"(type_obj, "ternary", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "116_1303391590.341" 
    $P661."add_method"(type_obj, "MARKER", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "117_1303391590.341" 
    $P663."add_method"(type_obj, "MARKED", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "118_1303391590.341" 
    $P665."add_method"(type_obj, "LANG", $P666)
    get_how $P667, type_obj
    get_hll_global $P668, ["Regex"], "Cursor"
    $P667."add_parent"(type_obj, $P668)
    get_how $P669, type_obj
    $P670 = $P669."compose"(type_obj)
    .return ($P670)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    .local pmc rx23_debug
    (rx23_cur, rx23_pos, rx23_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx23_cur
    .local pmc match
    .lex "$/", match
    length rx23_eos, rx23_tgt
    gt rx23_pos, rx23_eos, rx23_done
    set rx23_off, 0
    lt rx23_pos, 2, rx23_start
    sub rx23_off, rx23_pos, 1
    substr rx23_tgt, rx23_tgt, rx23_off
  rx23_start:
    eq $I10, 1, rx23_restart
    if_null rx23_debug, debug_295
    rx23_cur."!cursor_debug"("START", "ws")
  debug_295:
    $I10 = self.'from'()
    ne $I10, -1, rxscan26_done
    goto rxscan26_scan
  rxscan26_loop:
    (rx23_pos) = rx23_cur."from"()
    inc rx23_pos
    rx23_cur."!cursor_from"(rx23_pos)
    ge rx23_pos, rx23_eos, rxscan26_done
  rxscan26_scan:
    set_addr $I10, rxscan26_loop
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxscan26_done:
.annotate 'line', 12
  # rx subrule "ww" subtype=zerowidth negate=1
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."ww"()
    if $P10, rx23_fail
  # rx rxquantr27 ** 0..*
    set_addr $I10, rxquantr27_done
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxquantr27_loop:
  alt28_0:
    set_addr $I10, alt28_1
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx23_pos, rx23_off
    find_not_cclass $I11, 32, rx23_tgt, $I10, rx23_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx23_fail
    add rx23_pos, rx23_off, $I11
    goto alt28_end
  alt28_1:
  # rx literal  "#"
    add $I11, rx23_pos, 1
    gt $I11, rx23_eos, rx23_fail
    sub $I11, rx23_pos, rx23_off
    ord $I11, rx23_tgt, $I11
    ne $I11, 35, rx23_fail
    add rx23_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx23_pos, rx23_off
    find_cclass $I11, 4096, rx23_tgt, $I10, rx23_eos
    add rx23_pos, rx23_off, $I11
  alt28_end:
    set_addr $I10, rxquantr27_done
    (rx23_rep) = rx23_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr27_done
    rx23_cur."!mark_push"(rx23_rep, rx23_pos, $I10)
    goto rxquantr27_loop
  rxquantr27_done:
  # rx pass
    rx23_cur."!cursor_pass"(rx23_pos, "ws")
    if_null rx23_debug, debug_296
    rx23_cur."!cursor_debug"("PASS", "ws", " at pos=", rx23_pos)
  debug_296:
    .return (rx23_cur)
  rx23_restart:
.annotate 'line', 10
    if_null rx23_debug, debug_297
    rx23_cur."!cursor_debug"("NEXT", "ws")
  debug_297:
  rx23_fail:
    (rx23_rep, rx23_pos, $I10, $P10) = rx23_cur."!mark_fail"(0)
    lt rx23_pos, -1, rx23_done
    eq rx23_pos, -1, rx23_fail
    jump $I10
  rx23_done:
    rx23_cur."!cursor_fail"()
    if_null rx23_debug, debug_298
    rx23_cur."!cursor_debug"("FAIL", "ws")
  debug_298:
    .return (rx23_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303391590.341") :method
.annotate 'line', 10
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx30_tgt
    .local int rx30_pos
    .local int rx30_off
    .local int rx30_eos
    .local int rx30_rep
    .local pmc rx30_cur
    .local pmc rx30_debug
    (rx30_cur, rx30_pos, rx30_tgt, $I10) = self."!cursor_start"()
    rx30_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx30_cur
    .local pmc match
    .lex "$/", match
    length rx30_eos, rx30_tgt
    gt rx30_pos, rx30_eos, rx30_done
    set rx30_off, 0
    lt rx30_pos, 2, rx30_start
    sub rx30_off, rx30_pos, 1
    substr rx30_tgt, rx30_tgt, rx30_off
  rx30_start:
    eq $I10, 1, rx30_restart
    if_null rx30_debug, debug_299
    rx30_cur."!cursor_debug"("START", "termish")
  debug_299:
    $I10 = self.'from'()
    ne $I10, -1, rxscan33_done
    goto rxscan33_scan
  rxscan33_loop:
    (rx30_pos) = rx30_cur."from"()
    inc rx30_pos
    rx30_cur."!cursor_from"(rx30_pos)
    ge rx30_pos, rx30_eos, rxscan33_done
  rxscan33_scan:
    set_addr $I10, rxscan33_loop
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxscan33_done:
.annotate 'line', 15
  # rx rxquantr34 ** 0..*
    set_addr $I10, rxquantr34_done
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxquantr34_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."prefixish"()
    unless $P10, rx30_fail
    goto rxsubrule35_pass
  rxsubrule35_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx30_fail
  rxsubrule35_pass:
    set_addr $I10, rxsubrule35_back
    rx30_cur."!mark_push"(0, rx30_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx30_pos = $P10."pos"()
    set_addr $I10, rxquantr34_done
    (rx30_rep) = rx30_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr34_done
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I10)
    goto rxquantr34_loop
  rxquantr34_done:
.annotate 'line', 16
  # rx subrule "term" subtype=capture negate=
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."term"()
    unless $P10, rx30_fail
    rx30_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx30_pos = $P10."pos"()
.annotate 'line', 17
  # rx rxquantr36 ** 0..*
    set_addr $I10, rxquantr36_done
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxquantr36_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."postfixish"()
    unless $P10, rx30_fail
    goto rxsubrule37_pass
  rxsubrule37_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx30_fail
  rxsubrule37_pass:
    set_addr $I10, rxsubrule37_back
    rx30_cur."!mark_push"(0, rx30_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx30_pos = $P10."pos"()
    set_addr $I10, rxquantr36_done
    (rx30_rep) = rx30_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr36_done
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I10)
    goto rxquantr36_loop
  rxquantr36_done:
.annotate 'line', 14
  # rx pass
    rx30_cur."!cursor_pass"(rx30_pos, "termish")
    if_null rx30_debug, debug_300
    rx30_cur."!cursor_debug"("PASS", "termish", " at pos=", rx30_pos)
  debug_300:
    .return (rx30_cur)
  rx30_restart:
.annotate 'line', 10
    if_null rx30_debug, debug_301
    rx30_cur."!cursor_debug"("NEXT", "termish")
  debug_301:
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    if_null rx30_debug, debug_302
    rx30_cur."!cursor_debug"("FAIL", "termish")
  debug_302:
    .return (rx30_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303391590.341") :method
.annotate 'line', 10
    new $P32, "ResizablePMCArray"
    push $P32, ""
    .return ($P32)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303391590.341")
    .param pmc param_39
.annotate 'line', 20
    .lex "self", param_39
    $P40 = param_39."!protoregex"("term")
    .return ($P40)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303391590.341")
    .param pmc param_42
.annotate 'line', 20
    .lex "self", param_42
    $P43 = param_42."!PREFIX__!protoregex"("term")
    .return ($P43)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303391590.341")
    .param pmc param_45
.annotate 'line', 21
    .lex "self", param_45
    $P46 = param_45."!protoregex"("infix")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303391590.341")
    .param pmc param_48
.annotate 'line', 21
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("infix")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303391590.341")
    .param pmc param_51
.annotate 'line', 22
    .lex "self", param_51
    $P52 = param_51."!protoregex"("prefix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303391590.341")
    .param pmc param_54
.annotate 'line', 22
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("prefix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303391590.341")
    .param pmc param_57
.annotate 'line', 23
    .lex "self", param_57
    $P58 = param_57."!protoregex"("postfix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303391590.341")
    .param pmc param_60
.annotate 'line', 23
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("postfix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303391590.341")
    .param pmc param_63
.annotate 'line', 24
    .lex "self", param_63
    $P64 = param_63."!protoregex"("circumfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303391590.341")
    .param pmc param_66
.annotate 'line', 24
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("circumfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303391590.341")
    .param pmc param_69
.annotate 'line', 25
    .lex "self", param_69
    $P70 = param_69."!protoregex"("postcircumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303391590.341")
    .param pmc param_72
.annotate 'line', 25
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("postcircumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    .local pmc rx75_debug
    (rx75_cur, rx75_pos, rx75_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx75_cur
    .local pmc match
    .lex "$/", match
    length rx75_eos, rx75_tgt
    gt rx75_pos, rx75_eos, rx75_done
    set rx75_off, 0
    lt rx75_pos, 2, rx75_start
    sub rx75_off, rx75_pos, 1
    substr rx75_tgt, rx75_tgt, rx75_off
  rx75_start:
    eq $I10, 1, rx75_restart
    if_null rx75_debug, debug_303
    rx75_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_303:
    $I10 = self.'from'()
    ne $I10, -1, rxscan79_done
    goto rxscan79_scan
  rxscan79_loop:
    (rx75_pos) = rx75_cur."from"()
    inc rx75_pos
    rx75_cur."!cursor_from"(rx75_pos)
    ge rx75_pos, rx75_eos, rxscan79_done
  rxscan79_scan:
    set_addr $I10, rxscan79_loop
    rx75_cur."!mark_push"(0, rx75_pos, $I10)
  rxscan79_done:
.annotate 'line', 27
  # rx subrule "circumfix" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."circumfix"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx75_pos = $P10."pos"()
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "term:sym<circumfix>")
    if_null rx75_debug, debug_304
    rx75_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx75_pos)
  debug_304:
    .return (rx75_cur)
  rx75_restart:
.annotate 'line', 10
    if_null rx75_debug, debug_305
    rx75_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_305:
  rx75_fail:
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    if_null rx75_debug, debug_306
    rx75_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_306:
    .return (rx75_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303391590.341") :method
.annotate 'line', 10
    $P77 = self."!PREFIX__!subrule"("circumfix", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    .local pmc rx81_debug
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx81_cur
    .local pmc match
    .lex "$/", match
    length rx81_eos, rx81_tgt
    gt rx81_pos, rx81_eos, rx81_done
    set rx81_off, 0
    lt rx81_pos, 2, rx81_start
    sub rx81_off, rx81_pos, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
    eq $I10, 1, rx81_restart
    if_null rx81_debug, debug_307
    rx81_cur."!cursor_debug"("START", "infixish")
  debug_307:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    (rx81_pos) = rx81_cur."from"()
    inc rx81_pos
    rx81_cur."!cursor_from"(rx81_pos)
    ge rx81_pos, rx81_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan85_done:
.annotate 'line', 29
  # rx subrule "infix" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."infix"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx81_pos = $P10."pos"()
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "infixish")
    if_null rx81_debug, debug_308
    rx81_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx81_pos)
  debug_308:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 10
    if_null rx81_debug, debug_309
    rx81_cur."!cursor_debug"("NEXT", "infixish")
  debug_309:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_310
    rx81_cur."!cursor_debug"("FAIL", "infixish")
  debug_310:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303391590.341") :method
.annotate 'line', 10
    $P83 = self."!PREFIX__!subrule"("infix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_debug
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    gt rx87_pos, rx87_eos, rx87_done
    set rx87_off, 0
    lt rx87_pos, 2, rx87_start
    sub rx87_off, rx87_pos, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    eq $I10, 1, rx87_restart
    if_null rx87_debug, debug_311
    rx87_cur."!cursor_debug"("START", "prefixish")
  debug_311:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan91_done:
.annotate 'line', 30
  # rx subrule "prefix" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."prefix"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx87_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."ws"()
    unless $P10, rx87_fail
    rx87_pos = $P10."pos"()
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "prefixish")
    if_null rx87_debug, debug_312
    rx87_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx87_pos)
  debug_312:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 10
    if_null rx87_debug, debug_313
    rx87_cur."!cursor_debug"("NEXT", "prefixish")
  debug_313:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_314
    rx87_cur."!cursor_debug"("FAIL", "prefixish")
  debug_314:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303391590.341") :method
.annotate 'line', 10
    $P89 = self."!PREFIX__!subrule"("prefix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    .local pmc rx93_debug
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx93_cur
    .local pmc match
    .lex "$/", match
    length rx93_eos, rx93_tgt
    gt rx93_pos, rx93_eos, rx93_done
    set rx93_off, 0
    lt rx93_pos, 2, rx93_start
    sub rx93_off, rx93_pos, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
    eq $I10, 1, rx93_restart
    if_null rx93_debug, debug_315
    rx93_cur."!cursor_debug"("START", "postfixish")
  debug_315:
    $I10 = self.'from'()
    ne $I10, -1, rxscan98_done
    goto rxscan98_scan
  rxscan98_loop:
    (rx93_pos) = rx93_cur."from"()
    inc rx93_pos
    rx93_cur."!cursor_from"(rx93_pos)
    ge rx93_pos, rx93_eos, rxscan98_done
  rxscan98_scan:
    set_addr $I10, rxscan98_loop
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxscan98_done:
  alt99_0:
.annotate 'line', 31
    set_addr $I10, alt99_1
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
.annotate 'line', 32
  # rx subrule "postfix" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."postfix"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx93_pos = $P10."pos"()
    goto alt99_end
  alt99_1:
.annotate 'line', 33
  # rx subrule "postcircumfix" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."postcircumfix"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx93_pos = $P10."pos"()
  alt99_end:
.annotate 'line', 31
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "postfixish")
    if_null rx93_debug, debug_316
    rx93_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx93_pos)
  debug_316:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 10
    if_null rx93_debug, debug_317
    rx93_cur."!cursor_debug"("NEXT", "postfixish")
  debug_317:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_318
    rx93_cur."!cursor_debug"("FAIL", "postfixish")
  debug_318:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303391590.341") :method
.annotate 'line', 10
    $P95 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P96 = self."!PREFIX__!subrule"("postfix", "")
    new $P97, "ResizablePMCArray"
    push $P97, $P95
    push $P97, $P96
    .return ($P97)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    .local pmc rx101_debug
    (rx101_cur, rx101_pos, rx101_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx101_cur
    .local pmc match
    .lex "$/", match
    length rx101_eos, rx101_tgt
    gt rx101_pos, rx101_eos, rx101_done
    set rx101_off, 0
    lt rx101_pos, 2, rx101_start
    sub rx101_off, rx101_pos, 1
    substr rx101_tgt, rx101_tgt, rx101_off
  rx101_start:
    eq $I10, 1, rx101_restart
    if_null rx101_debug, debug_319
    rx101_cur."!cursor_debug"("START", "nullterm")
  debug_319:
    $I10 = self.'from'()
    ne $I10, -1, rxscan104_done
    goto rxscan104_scan
  rxscan104_loop:
    (rx101_pos) = rx101_cur."from"()
    inc rx101_pos
    rx101_cur."!cursor_from"(rx101_pos)
    ge rx101_pos, rx101_eos, rxscan104_done
  rxscan104_scan:
    set_addr $I10, rxscan104_loop
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
  rxscan104_done:
.annotate 'line', 36
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "nullterm")
    if_null rx101_debug, debug_320
    rx101_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx101_pos)
  debug_320:
    .return (rx101_cur)
  rx101_restart:
.annotate 'line', 10
    if_null rx101_debug, debug_321
    rx101_cur."!cursor_debug"("NEXT", "nullterm")
  debug_321:
  rx101_fail:
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    if_null rx101_debug, debug_322
    rx101_cur."!cursor_debug"("FAIL", "nullterm")
  debug_322:
    .return (rx101_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303391590.341") :method
.annotate 'line', 10
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 10
    .local string rx106_tgt
    .local int rx106_pos
    .local int rx106_off
    .local int rx106_eos
    .local int rx106_rep
    .local pmc rx106_cur
    .local pmc rx106_debug
    (rx106_cur, rx106_pos, rx106_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx106_cur
    .local pmc match
    .lex "$/", match
    length rx106_eos, rx106_tgt
    gt rx106_pos, rx106_eos, rx106_done
    set rx106_off, 0
    lt rx106_pos, 2, rx106_start
    sub rx106_off, rx106_pos, 1
    substr rx106_tgt, rx106_tgt, rx106_off
  rx106_start:
    eq $I10, 1, rx106_restart
    if_null rx106_debug, debug_323
    rx106_cur."!cursor_debug"("START", "nullterm_alt")
  debug_323:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    (rx106_pos) = rx106_cur."from"()
    inc rx106_pos
    rx106_cur."!cursor_from"(rx106_pos)
    ge rx106_pos, rx106_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx106_cur."!mark_push"(0, rx106_pos, $I10)
  rxscan110_done:
.annotate 'line', 37
  # rx subrule "nullterm" subtype=capture negate=
    rx106_cur."!cursor_pos"(rx106_pos)
    $P10 = rx106_cur."nullterm"()
    unless $P10, rx106_fail
    rx106_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx106_pos = $P10."pos"()
  # rx pass
    rx106_cur."!cursor_pass"(rx106_pos, "nullterm_alt")
    if_null rx106_debug, debug_324
    rx106_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx106_pos)
  debug_324:
    .return (rx106_cur)
  rx106_restart:
.annotate 'line', 10
    if_null rx106_debug, debug_325
    rx106_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_325:
  rx106_fail:
    (rx106_rep, rx106_pos, $I10, $P10) = rx106_cur."!mark_fail"(0)
    lt rx106_pos, -1, rx106_done
    eq rx106_pos, -1, rx106_fail
    jump $I10
  rx106_done:
    rx106_cur."!cursor_fail"()
    if_null rx106_debug, debug_326
    rx106_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_326:
    .return (rx106_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303391590.341") :method
.annotate 'line', 10
    $P108 = self."!PREFIX__!subrule"("nullterm", "")
    new $P109, "ResizablePMCArray"
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_112
.annotate 'line', 40
    .lex "self", param_112
    find_lex $P115, "self"
    $P116 = $P115."termish"()
    unless $P116, unless_114
    set $P113, $P116
    goto unless_114_end
  unless_114:
    find_lex $P117, "self"
    $P118 = $P117."nullterm_alt"()
    set $P113, $P118
  unless_114_end:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    .local pmc rx120_debug
    (rx120_cur, rx120_pos, rx120_tgt, $I10) = self."!cursor_start"()
    rx120_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx120_cur
    .local pmc match
    .lex "$/", match
    length rx120_eos, rx120_tgt
    gt rx120_pos, rx120_eos, rx120_done
    set rx120_off, 0
    lt rx120_pos, 2, rx120_start
    sub rx120_off, rx120_pos, 1
    substr rx120_tgt, rx120_tgt, rx120_off
  rx120_start:
    eq $I10, 1, rx120_restart
    if_null rx120_debug, debug_327
    rx120_cur."!cursor_debug"("START", "quote_delimited")
  debug_327:
    $I10 = self.'from'()
    ne $I10, -1, rxscan124_done
    goto rxscan124_scan
  rxscan124_loop:
    (rx120_pos) = rx120_cur."from"()
    inc rx120_pos
    rx120_cur."!cursor_from"(rx120_pos)
    ge rx120_pos, rx120_eos, rxscan124_done
  rxscan124_scan:
    set_addr $I10, rxscan124_loop
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  rxscan124_done:
.annotate 'line', 44
  # rx subrule "starter" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."starter"()
    unless $P10, rx120_fail
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx120_pos = $P10."pos"()
  # rx rxquantr125 ** 0..*
    set_addr $I10, rxquantr125_done
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  rxquantr125_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."quote_atom"()
    unless $P10, rx120_fail
    goto rxsubrule126_pass
  rxsubrule126_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx120_fail
  rxsubrule126_pass:
    set_addr $I10, rxsubrule126_back
    rx120_cur."!mark_push"(0, rx120_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx120_pos = $P10."pos"()
    set_addr $I10, rxquantr125_done
    (rx120_rep) = rx120_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr125_done
    rx120_cur."!mark_push"(rx120_rep, rx120_pos, $I10)
    goto rxquantr125_loop
  rxquantr125_done:
  # rx subrule "stopper" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."stopper"()
    unless $P10, rx120_fail
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx120_pos = $P10."pos"()
.annotate 'line', 43
  # rx pass
    rx120_cur."!cursor_pass"(rx120_pos, "quote_delimited")
    if_null rx120_debug, debug_328
    rx120_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx120_pos)
  debug_328:
    .return (rx120_cur)
  rx120_restart:
.annotate 'line', 40
    if_null rx120_debug, debug_329
    rx120_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_329:
  rx120_fail:
    (rx120_rep, rx120_pos, $I10, $P10) = rx120_cur."!mark_fail"(0)
    lt rx120_pos, -1, rx120_done
    eq rx120_pos, -1, rx120_fail
    jump $I10
  rx120_done:
    rx120_cur."!cursor_fail"()
    if_null rx120_debug, debug_330
    rx120_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_330:
    .return (rx120_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303391590.341") :method
.annotate 'line', 40
    $P122 = self."!PREFIX__!subrule"("starter", "")
    new $P123, "ResizablePMCArray"
    push $P123, $P122
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    .local pmc rx128_debug
    (rx128_cur, rx128_pos, rx128_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx128_cur
    .local pmc match
    .lex "$/", match
    length rx128_eos, rx128_tgt
    gt rx128_pos, rx128_eos, rx128_done
    set rx128_off, 0
    lt rx128_pos, 2, rx128_start
    sub rx128_off, rx128_pos, 1
    substr rx128_tgt, rx128_tgt, rx128_off
  rx128_start:
    eq $I10, 1, rx128_restart
    if_null rx128_debug, debug_331
    rx128_cur."!cursor_debug"("START", "quote_atom")
  debug_331:
    $I10 = self.'from'()
    ne $I10, -1, rxscan131_done
    goto rxscan131_scan
  rxscan131_loop:
    (rx128_pos) = rx128_cur."from"()
    inc rx128_pos
    rx128_cur."!cursor_from"(rx128_pos)
    ge rx128_pos, rx128_eos, rxscan131_done
  rxscan131_scan:
    set_addr $I10, rxscan131_loop
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  rxscan131_done:
.annotate 'line', 48
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."stopper"()
    if $P10, rx128_fail
  alt132_0:
.annotate 'line', 49
    set_addr $I10, alt132_1
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
.annotate 'line', 50
  # rx subrule "quote_escape" subtype=capture negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."quote_escape"()
    unless $P10, rx128_fail
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx128_pos = $P10."pos"()
    goto alt132_end
  alt132_1:
.annotate 'line', 51
  # rx rxquantr133 ** 1..*
    set_addr $I10, rxquantr133_done
    rx128_cur."!mark_push"(0, -1, $I10)
  rxquantr133_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."stopper"()
    if $P10, rx128_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."quote_escape"()
    if $P10, rx128_fail
  # rx charclass .
    ge rx128_pos, rx128_eos, rx128_fail
    inc rx128_pos
    set_addr $I10, rxquantr133_done
    (rx128_rep) = rx128_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr133_done
    rx128_cur."!mark_push"(rx128_rep, rx128_pos, $I10)
    goto rxquantr133_loop
  rxquantr133_done:
  alt132_end:
.annotate 'line', 47
  # rx pass
    rx128_cur."!cursor_pass"(rx128_pos, "quote_atom")
    if_null rx128_debug, debug_332
    rx128_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx128_pos)
  debug_332:
    .return (rx128_cur)
  rx128_restart:
.annotate 'line', 40
    if_null rx128_debug, debug_333
    rx128_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_333:
  rx128_fail:
    (rx128_rep, rx128_pos, $I10, $P10) = rx128_cur."!mark_fail"(0)
    lt rx128_pos, -1, rx128_done
    eq rx128_pos, -1, rx128_fail
    jump $I10
  rx128_done:
    rx128_cur."!cursor_fail"()
    if_null rx128_debug, debug_334
    rx128_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_334:
    .return (rx128_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303391590.341") :method
.annotate 'line', 40
    new $P130, "ResizablePMCArray"
    push $P130, ""
    .return ($P130)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_debug
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx137_cur
    .local pmc match
    .lex "$/", match
    length rx137_eos, rx137_tgt
    gt rx137_pos, rx137_eos, rx137_done
    set rx137_off, 0
    lt rx137_pos, 2, rx137_start
    sub rx137_off, rx137_pos, 1
    substr rx137_tgt, rx137_tgt, rx137_off
  rx137_start:
    eq $I10, 1, rx137_restart
    if_null rx137_debug, debug_335
    rx137_cur."!cursor_debug"("START", "decint")
  debug_335:
    $I10 = self.'from'()
    ne $I10, -1, rxscan140_done
    goto rxscan140_scan
  rxscan140_loop:
    (rx137_pos) = rx137_cur."from"()
    inc rx137_pos
    rx137_cur."!cursor_from"(rx137_pos)
    ge rx137_pos, rx137_eos, rxscan140_done
  rxscan140_scan:
    set_addr $I10, rxscan140_loop
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
  rxscan140_done:
.annotate 'line', 55
  # rx rxquantr141 ** 1..*
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(0, -1, $I10)
  rxquantr141_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx137_pos, rx137_off
    find_not_cclass $I11, 8, rx137_tgt, $I10, rx137_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx137_fail
    add rx137_pos, rx137_off, $I11
    set_addr $I10, rxquantr141_done
    (rx137_rep) = rx137_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(rx137_rep, rx137_pos, $I10)
  # rx literal  "_"
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail
    sub $I11, rx137_pos, rx137_off
    ord $I11, rx137_tgt, $I11
    ne $I11, 95, rx137_fail
    add rx137_pos, 1
    goto rxquantr141_loop
  rxquantr141_done:
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "decint")
    if_null rx137_debug, debug_336
    rx137_cur."!cursor_debug"("PASS", "decint", " at pos=", rx137_pos)
  debug_336:
    .return (rx137_cur)
  rx137_restart:
.annotate 'line', 40
    if_null rx137_debug, debug_337
    rx137_cur."!cursor_debug"("NEXT", "decint")
  debug_337:
  rx137_fail:
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    if_null rx137_debug, debug_338
    rx137_cur."!cursor_debug"("FAIL", "decint")
  debug_338:
    .return (rx137_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303391590.341") :method
.annotate 'line', 40
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
    rx143_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx143_cur
    .local pmc match
    .lex "$/", match
    length rx143_eos, rx143_tgt
    gt rx143_pos, rx143_eos, rx143_done
    set rx143_off, 0
    lt rx143_pos, 2, rx143_start
    sub rx143_off, rx143_pos, 1
    substr rx143_tgt, rx143_tgt, rx143_off
  rx143_start:
    eq $I10, 1, rx143_restart
    if_null rx143_debug, debug_339
    rx143_cur."!cursor_debug"("START", "decints")
  debug_339:
    $I10 = self.'from'()
    ne $I10, -1, rxscan146_done
    goto rxscan146_scan
  rxscan146_loop:
    (rx143_pos) = rx143_cur."from"()
    inc rx143_pos
    rx143_cur."!cursor_from"(rx143_pos)
    ge rx143_pos, rx143_eos, rxscan146_done
  rxscan146_scan:
    set_addr $I10, rxscan146_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan146_done:
.annotate 'line', 56
  # rx rxquantr147 ** 1..*
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(0, -1, $I10)
  rxquantr147_loop:
  # rx subrule "ws" subtype=method negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."ws"()
    unless $P10, rx143_fail
    rx143_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."decint"()
    unless $P10, rx143_fail
    rx143_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx143_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."ws"()
    unless $P10, rx143_fail
    rx143_pos = $P10."pos"()
    set_addr $I10, rxquantr147_done
    (rx143_rep) = rx143_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(rx143_rep, rx143_pos, $I10)
  # rx literal  ","
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 44, rx143_fail
    add rx143_pos, 1
    goto rxquantr147_loop
  rxquantr147_done:
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "decints")
    if_null rx143_debug, debug_340
    rx143_cur."!cursor_debug"("PASS", "decints", " at pos=", rx143_pos)
  debug_340:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 40
    if_null rx143_debug, debug_341
    rx143_cur."!cursor_debug"("NEXT", "decints")
  debug_341:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_342
    rx143_cur."!cursor_debug"("FAIL", "decints")
  debug_342:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303391590.341") :method
.annotate 'line', 40
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_debug
    (rx149_cur, rx149_pos, rx149_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx149_cur
    .local pmc match
    .lex "$/", match
    length rx149_eos, rx149_tgt
    gt rx149_pos, rx149_eos, rx149_done
    set rx149_off, 0
    lt rx149_pos, 2, rx149_start
    sub rx149_off, rx149_pos, 1
    substr rx149_tgt, rx149_tgt, rx149_off
  rx149_start:
    eq $I10, 1, rx149_restart
    if_null rx149_debug, debug_343
    rx149_cur."!cursor_debug"("START", "hexint")
  debug_343:
    $I10 = self.'from'()
    ne $I10, -1, rxscan152_done
    goto rxscan152_scan
  rxscan152_loop:
    (rx149_pos) = rx149_cur."from"()
    inc rx149_pos
    rx149_cur."!cursor_from"(rx149_pos)
    ge rx149_pos, rx149_eos, rxscan152_done
  rxscan152_scan:
    set_addr $I10, rxscan152_loop
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxscan152_done:
.annotate 'line', 58
  # rx rxquantr153 ** 1..*
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(0, -1, $I10)
  rxquantr153_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx149_pos, rx149_off
    set rx149_rep, 0
    sub $I12, rx149_eos, rx149_pos
  rxenumcharlistq154_loop:
    le $I12, 0, rxenumcharlistq154_done
    substr $S10, rx149_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq154_done
    inc rx149_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq154_loop
  rxenumcharlistq154_done:
    lt rx149_rep, 1, rx149_fail
    add rx149_pos, rx149_pos, rx149_rep
    set_addr $I10, rxquantr153_done
    (rx149_rep) = rx149_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(rx149_rep, rx149_pos, $I10)
  # rx literal  "_"
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    ord $I11, rx149_tgt, $I11
    ne $I11, 95, rx149_fail
    add rx149_pos, 1
    goto rxquantr153_loop
  rxquantr153_done:
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "hexint")
    if_null rx149_debug, debug_344
    rx149_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx149_pos)
  debug_344:
    .return (rx149_cur)
  rx149_restart:
.annotate 'line', 40
    if_null rx149_debug, debug_345
    rx149_cur."!cursor_debug"("NEXT", "hexint")
  debug_345:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_346
    rx149_cur."!cursor_debug"("FAIL", "hexint")
  debug_346:
    .return (rx149_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303391590.341") :method
.annotate 'line', 40
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_debug
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
    rx156_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx156_cur
    .local pmc match
    .lex "$/", match
    length rx156_eos, rx156_tgt
    gt rx156_pos, rx156_eos, rx156_done
    set rx156_off, 0
    lt rx156_pos, 2, rx156_start
    sub rx156_off, rx156_pos, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
    eq $I10, 1, rx156_restart
    if_null rx156_debug, debug_347
    rx156_cur."!cursor_debug"("START", "hexints")
  debug_347:
    $I10 = self.'from'()
    ne $I10, -1, rxscan159_done
    goto rxscan159_scan
  rxscan159_loop:
    (rx156_pos) = rx156_cur."from"()
    inc rx156_pos
    rx156_cur."!cursor_from"(rx156_pos)
    ge rx156_pos, rx156_eos, rxscan159_done
  rxscan159_scan:
    set_addr $I10, rxscan159_loop
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  rxscan159_done:
.annotate 'line', 59
  # rx rxquantr160 ** 1..*
    set_addr $I10, rxquantr160_done
    rx156_cur."!mark_push"(0, -1, $I10)
  rxquantr160_loop:
  # rx subrule "ws" subtype=method negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."ws"()
    unless $P10, rx156_fail
    rx156_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."hexint"()
    unless $P10, rx156_fail
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx156_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."ws"()
    unless $P10, rx156_fail
    rx156_pos = $P10."pos"()
    set_addr $I10, rxquantr160_done
    (rx156_rep) = rx156_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr160_done
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I10)
  # rx literal  ","
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    ord $I11, rx156_tgt, $I11
    ne $I11, 44, rx156_fail
    add rx156_pos, 1
    goto rxquantr160_loop
  rxquantr160_done:
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "hexints")
    if_null rx156_debug, debug_348
    rx156_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx156_pos)
  debug_348:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 40
    if_null rx156_debug, debug_349
    rx156_cur."!cursor_debug"("NEXT", "hexints")
  debug_349:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_350
    rx156_cur."!cursor_debug"("FAIL", "hexints")
  debug_350:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303391590.341") :method
.annotate 'line', 40
    new $P158, "ResizablePMCArray"
    push $P158, ""
    .return ($P158)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    gt rx162_pos, rx162_eos, rx162_done
    set rx162_off, 0
    lt rx162_pos, 2, rx162_start
    sub rx162_off, rx162_pos, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
    eq $I10, 1, rx162_restart
    if_null rx162_debug, debug_351
    rx162_cur."!cursor_debug"("START", "octint")
  debug_351:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    (rx162_pos) = rx162_cur."from"()
    inc rx162_pos
    rx162_cur."!cursor_from"(rx162_pos)
    ge rx162_pos, rx162_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan165_done:
.annotate 'line', 61
  # rx rxquantr166 ** 1..*
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(0, -1, $I10)
  rxquantr166_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx162_pos, rx162_off
    set rx162_rep, 0
    sub $I12, rx162_eos, rx162_pos
  rxenumcharlistq167_loop:
    le $I12, 0, rxenumcharlistq167_done
    substr $S10, rx162_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq167_done
    inc rx162_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq167_loop
  rxenumcharlistq167_done:
    lt rx162_rep, 1, rx162_fail
    add rx162_pos, rx162_pos, rx162_rep
    set_addr $I10, rxquantr166_done
    (rx162_rep) = rx162_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I10)
  # rx literal  "_"
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 95, rx162_fail
    add rx162_pos, 1
    goto rxquantr166_loop
  rxquantr166_done:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "octint")
    if_null rx162_debug, debug_352
    rx162_cur."!cursor_debug"("PASS", "octint", " at pos=", rx162_pos)
  debug_352:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 40
    if_null rx162_debug, debug_353
    rx162_cur."!cursor_debug"("NEXT", "octint")
  debug_353:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_354
    rx162_cur."!cursor_debug"("FAIL", "octint")
  debug_354:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303391590.341") :method
.annotate 'line', 40
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    .local pmc rx169_debug
    (rx169_cur, rx169_pos, rx169_tgt, $I10) = self."!cursor_start"()
    rx169_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    gt rx169_pos, rx169_eos, rx169_done
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    eq $I10, 1, rx169_restart
    if_null rx169_debug, debug_355
    rx169_cur."!cursor_debug"("START", "octints")
  debug_355:
    $I10 = self.'from'()
    ne $I10, -1, rxscan172_done
    goto rxscan172_scan
  rxscan172_loop:
    (rx169_pos) = rx169_cur."from"()
    inc rx169_pos
    rx169_cur."!cursor_from"(rx169_pos)
    ge rx169_pos, rx169_eos, rxscan172_done
  rxscan172_scan:
    set_addr $I10, rxscan172_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan172_done:
.annotate 'line', 62
  # rx rxquantr173 ** 1..*
    set_addr $I10, rxquantr173_done
    rx169_cur."!mark_push"(0, -1, $I10)
  rxquantr173_loop:
  # rx subrule "ws" subtype=method negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."ws"()
    unless $P10, rx169_fail
    rx169_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."octint"()
    unless $P10, rx169_fail
    rx169_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx169_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."ws"()
    unless $P10, rx169_fail
    rx169_pos = $P10."pos"()
    set_addr $I10, rxquantr173_done
    (rx169_rep) = rx169_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr173_done
    rx169_cur."!mark_push"(rx169_rep, rx169_pos, $I10)
  # rx literal  ","
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    ord $I11, rx169_tgt, $I11
    ne $I11, 44, rx169_fail
    add rx169_pos, 1
    goto rxquantr173_loop
  rxquantr173_done:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "octints")
    if_null rx169_debug, debug_356
    rx169_cur."!cursor_debug"("PASS", "octints", " at pos=", rx169_pos)
  debug_356:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 40
    if_null rx169_debug, debug_357
    rx169_cur."!cursor_debug"("NEXT", "octints")
  debug_357:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_358
    rx169_cur."!cursor_debug"("FAIL", "octints")
  debug_358:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303391590.341") :method
.annotate 'line', 40
    new $P171, "ResizablePMCArray"
    push $P171, ""
    .return ($P171)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_debug
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx175_cur
    .local pmc match
    .lex "$/", match
    length rx175_eos, rx175_tgt
    gt rx175_pos, rx175_eos, rx175_done
    set rx175_off, 0
    lt rx175_pos, 2, rx175_start
    sub rx175_off, rx175_pos, 1
    substr rx175_tgt, rx175_tgt, rx175_off
  rx175_start:
    eq $I10, 1, rx175_restart
    if_null rx175_debug, debug_359
    rx175_cur."!cursor_debug"("START", "binint")
  debug_359:
    $I10 = self.'from'()
    ne $I10, -1, rxscan178_done
    goto rxscan178_scan
  rxscan178_loop:
    (rx175_pos) = rx175_cur."from"()
    inc rx175_pos
    rx175_cur."!cursor_from"(rx175_pos)
    ge rx175_pos, rx175_eos, rxscan178_done
  rxscan178_scan:
    set_addr $I10, rxscan178_loop
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  rxscan178_done:
.annotate 'line', 64
  # rx rxquantr179 ** 1..*
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(0, -1, $I10)
  rxquantr179_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx175_pos, rx175_off
    set rx175_rep, 0
    sub $I12, rx175_eos, rx175_pos
  rxenumcharlistq180_loop:
    le $I12, 0, rxenumcharlistq180_done
    substr $S10, rx175_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq180_done
    inc rx175_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq180_loop
  rxenumcharlistq180_done:
    lt rx175_rep, 1, rx175_fail
    add rx175_pos, rx175_pos, rx175_rep
    set_addr $I10, rxquantr179_done
    (rx175_rep) = rx175_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(rx175_rep, rx175_pos, $I10)
  # rx literal  "_"
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 95, rx175_fail
    add rx175_pos, 1
    goto rxquantr179_loop
  rxquantr179_done:
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "binint")
    if_null rx175_debug, debug_360
    rx175_cur."!cursor_debug"("PASS", "binint", " at pos=", rx175_pos)
  debug_360:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 40
    if_null rx175_debug, debug_361
    rx175_cur."!cursor_debug"("NEXT", "binint")
  debug_361:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_362
    rx175_cur."!cursor_debug"("FAIL", "binint")
  debug_362:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303391590.341") :method
.annotate 'line', 40
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_debug
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    rx182_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    gt rx182_pos, rx182_eos, rx182_done
    set rx182_off, 0
    lt rx182_pos, 2, rx182_start
    sub rx182_off, rx182_pos, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
    eq $I10, 1, rx182_restart
    if_null rx182_debug, debug_363
    rx182_cur."!cursor_debug"("START", "binints")
  debug_363:
    $I10 = self.'from'()
    ne $I10, -1, rxscan185_done
    goto rxscan185_scan
  rxscan185_loop:
    (rx182_pos) = rx182_cur."from"()
    inc rx182_pos
    rx182_cur."!cursor_from"(rx182_pos)
    ge rx182_pos, rx182_eos, rxscan185_done
  rxscan185_scan:
    set_addr $I10, rxscan185_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  rxscan185_done:
.annotate 'line', 65
  # rx rxquantr186 ** 1..*
    set_addr $I10, rxquantr186_done
    rx182_cur."!mark_push"(0, -1, $I10)
  rxquantr186_loop:
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."binint"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx182_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
    set_addr $I10, rxquantr186_done
    (rx182_rep) = rx182_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr186_done
    rx182_cur."!mark_push"(rx182_rep, rx182_pos, $I10)
  # rx literal  ","
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 44, rx182_fail
    add rx182_pos, 1
    goto rxquantr186_loop
  rxquantr186_done:
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "binints")
    if_null rx182_debug, debug_364
    rx182_cur."!cursor_debug"("PASS", "binints", " at pos=", rx182_pos)
  debug_364:
    .return (rx182_cur)
  rx182_restart:
.annotate 'line', 40
    if_null rx182_debug, debug_365
    rx182_cur."!cursor_debug"("NEXT", "binints")
  debug_365:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_366
    rx182_cur."!cursor_debug"("FAIL", "binints")
  debug_366:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303391590.341") :method
.annotate 'line', 40
    new $P184, "ResizablePMCArray"
    push $P184, ""
    .return ($P184)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_debug
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx188_cur
    .local pmc match
    .lex "$/", match
    length rx188_eos, rx188_tgt
    gt rx188_pos, rx188_eos, rx188_done
    set rx188_off, 0
    lt rx188_pos, 2, rx188_start
    sub rx188_off, rx188_pos, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
    eq $I10, 1, rx188_restart
    if_null rx188_debug, debug_367
    rx188_cur."!cursor_debug"("START", "integer")
  debug_367:
    $I10 = self.'from'()
    ne $I10, -1, rxscan196_done
    goto rxscan196_scan
  rxscan196_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan196_done
  rxscan196_scan:
    set_addr $I10, rxscan196_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan196_done:
  alt197_0:
.annotate 'line', 68
    set_addr $I10, alt197_1
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 69
  # rx literal  "0"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 48, rx188_fail
    add rx188_pos, 1
  alt198_0:
    set_addr $I10, alt198_1
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  # rx literal  "b"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 98, rx188_fail
    add rx188_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."binint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx188_pos = $P10."pos"()
    goto alt198_end
  alt198_1:
    set_addr $I10, alt198_2
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 70
  # rx literal  "o"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 111, rx188_fail
    add rx188_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."octint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx188_pos = $P10."pos"()
    goto alt198_end
  alt198_2:
    set_addr $I10, alt198_3
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 71
  # rx literal  "x"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 120, rx188_fail
    add rx188_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."hexint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx188_pos = $P10."pos"()
    goto alt198_end
  alt198_3:
.annotate 'line', 72
  # rx literal  "d"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 100, rx188_fail
    add rx188_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."decint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx188_pos = $P10."pos"()
  alt198_end:
.annotate 'line', 69
    goto alt197_end
  alt197_1:
.annotate 'line', 74
  # rx subrule "decint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."decint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx188_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 67
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "integer")
    if_null rx188_debug, debug_368
    rx188_cur."!cursor_debug"("PASS", "integer", " at pos=", rx188_pos)
  debug_368:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 40
    if_null rx188_debug, debug_369
    rx188_cur."!cursor_debug"("NEXT", "integer")
  debug_369:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_370
    rx188_cur."!cursor_debug"("FAIL", "integer")
  debug_370:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303391590.341") :method
.annotate 'line', 40
    $P190 = self."!PREFIX__!subrule"("decint", "")
    $P191 = self."!PREFIX__!subrule"("decint", "0d")
    $P192 = self."!PREFIX__!subrule"("hexint", "0x")
    $P193 = self."!PREFIX__!subrule"("octint", "0o")
    $P194 = self."!PREFIX__!subrule"("binint", "0b")
    new $P195, "ResizablePMCArray"
    push $P195, $P190
    push $P195, $P191
    push $P195, $P192
    push $P195, $P193
    push $P195, $P194
    .return ($P195)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    .local pmc rx200_debug
    (rx200_cur, rx200_pos, rx200_tgt, $I10) = self."!cursor_start"()
    rx200_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx200_cur
    .local pmc match
    .lex "$/", match
    length rx200_eos, rx200_tgt
    gt rx200_pos, rx200_eos, rx200_done
    set rx200_off, 0
    lt rx200_pos, 2, rx200_start
    sub rx200_off, rx200_pos, 1
    substr rx200_tgt, rx200_tgt, rx200_off
  rx200_start:
    eq $I10, 1, rx200_restart
    if_null rx200_debug, debug_371
    rx200_cur."!cursor_debug"("START", "dec_number")
  debug_371:
    $I10 = self.'from'()
    ne $I10, -1, rxscan203_done
    goto rxscan203_scan
  rxscan203_loop:
    (rx200_pos) = rx200_cur."from"()
    inc rx200_pos
    rx200_cur."!cursor_from"(rx200_pos)
    ge rx200_pos, rx200_eos, rxscan203_done
  rxscan203_scan:
    set_addr $I10, rxscan203_loop
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxscan203_done:
  alt204_0:
.annotate 'line', 78
    set_addr $I10, alt204_1
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate 'line', 79
  # rx subcapture "coeff"
    set_addr $I10, rxcap_205_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx literal  "."
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    ord $I11, rx200_tgt, $I11
    ne $I11, 46, rx200_fail
    add rx200_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    set_addr $I10, rxcap_205_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_205_done
  rxcap_205_fail:
    goto rx200_fail
  rxcap_205_done:
  # rx rxquantr206 ** 0..1
    set_addr $I10, rxquantr206_done
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxquantr206_loop:
  # rx subrule "escale" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."escale"()
    unless $P10, rx200_fail
    goto rxsubrule207_pass
  rxsubrule207_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx200_fail
  rxsubrule207_pass:
    set_addr $I10, rxsubrule207_back
    rx200_cur."!mark_push"(0, rx200_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx200_pos = $P10."pos"()
    set_addr $I10, rxquantr206_done
    (rx200_rep) = rx200_cur."!mark_commit"($I10)
  rxquantr206_done:
    goto alt204_end
  alt204_1:
    set_addr $I10, alt204_2
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate 'line', 80
  # rx subcapture "coeff"
    set_addr $I10, rxcap_208_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
  # rx literal  "."
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    ord $I11, rx200_tgt, $I11
    ne $I11, 46, rx200_fail
    add rx200_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx200_fail
  rxcap_208_done:
  # rx rxquantr209 ** 0..1
    set_addr $I10, rxquantr209_done
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxquantr209_loop:
  # rx subrule "escale" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."escale"()
    unless $P10, rx200_fail
    goto rxsubrule210_pass
  rxsubrule210_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx200_fail
  rxsubrule210_pass:
    set_addr $I10, rxsubrule210_back
    rx200_cur."!mark_push"(0, rx200_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx200_pos = $P10."pos"()
    set_addr $I10, rxquantr209_done
    (rx200_rep) = rx200_cur."!mark_commit"($I10)
  rxquantr209_done:
    goto alt204_end
  alt204_2:
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_211_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    set_addr $I10, rxcap_211_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_211_done
  rxcap_211_fail:
    goto rx200_fail
  rxcap_211_done:
  # rx subrule "escale" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."escale"()
    unless $P10, rx200_fail
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx200_pos = $P10."pos"()
  alt204_end:
.annotate 'line', 78
  # rx pass
    rx200_cur."!cursor_pass"(rx200_pos, "dec_number")
    if_null rx200_debug, debug_372
    rx200_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx200_pos)
  debug_372:
    .return (rx200_cur)
  rx200_restart:
.annotate 'line', 40
    if_null rx200_debug, debug_373
    rx200_cur."!cursor_debug"("NEXT", "dec_number")
  debug_373:
  rx200_fail:
    (rx200_rep, rx200_pos, $I10, $P10) = rx200_cur."!mark_fail"(0)
    lt rx200_pos, -1, rx200_done
    eq rx200_pos, -1, rx200_fail
    jump $I10
  rx200_done:
    rx200_cur."!cursor_fail"()
    if_null rx200_debug, debug_374
    rx200_cur."!cursor_debug"("FAIL", "dec_number")
  debug_374:
    .return (rx200_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303391590.341") :method
.annotate 'line', 40
    new $P202, "ResizablePMCArray"
    push $P202, ""
    push $P202, ""
    push $P202, "."
    .return ($P202)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx213_tgt
    .local int rx213_pos
    .local int rx213_off
    .local int rx213_eos
    .local int rx213_rep
    .local pmc rx213_cur
    .local pmc rx213_debug
    (rx213_cur, rx213_pos, rx213_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx213_cur
    .local pmc match
    .lex "$/", match
    length rx213_eos, rx213_tgt
    gt rx213_pos, rx213_eos, rx213_done
    set rx213_off, 0
    lt rx213_pos, 2, rx213_start
    sub rx213_off, rx213_pos, 1
    substr rx213_tgt, rx213_tgt, rx213_off
  rx213_start:
    eq $I10, 1, rx213_restart
    if_null rx213_debug, debug_375
    rx213_cur."!cursor_debug"("START", "escale")
  debug_375:
    $I10 = self.'from'()
    ne $I10, -1, rxscan216_done
    goto rxscan216_scan
  rxscan216_loop:
    (rx213_pos) = rx213_cur."from"()
    inc rx213_pos
    rx213_cur."!cursor_from"(rx213_pos)
    ge rx213_pos, rx213_eos, rxscan216_done
  rxscan216_scan:
    set_addr $I10, rxscan216_loop
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  rxscan216_done:
.annotate 'line', 84
  # rx enumcharlist negate=0 
    ge rx213_pos, rx213_eos, rx213_fail
    sub $I10, rx213_pos, rx213_off
    substr $S10, rx213_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx213_fail
    inc rx213_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx213_pos, rx213_off
    set rx213_rep, 0
    sub $I12, rx213_eos, rx213_pos
    le $I12, 1, rxenumcharlistq217_loop
    set $I12, 1
  rxenumcharlistq217_loop:
    le $I12, 0, rxenumcharlistq217_done
    substr $S10, rx213_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq217_done
    inc rx213_rep
  rxenumcharlistq217_done:
    add rx213_pos, rx213_pos, rx213_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx213_pos, rx213_off
    find_not_cclass $I11, 8, rx213_tgt, $I10, rx213_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx213_fail
    add rx213_pos, rx213_off, $I11
  # rx pass
    rx213_cur."!cursor_pass"(rx213_pos, "escale")
    if_null rx213_debug, debug_376
    rx213_cur."!cursor_debug"("PASS", "escale", " at pos=", rx213_pos)
  debug_376:
    .return (rx213_cur)
  rx213_restart:
.annotate 'line', 40
    if_null rx213_debug, debug_377
    rx213_cur."!cursor_debug"("NEXT", "escale")
  debug_377:
  rx213_fail:
    (rx213_rep, rx213_pos, $I10, $P10) = rx213_cur."!mark_fail"(0)
    lt rx213_pos, -1, rx213_done
    eq rx213_pos, -1, rx213_fail
    jump $I10
  rx213_done:
    rx213_cur."!cursor_fail"()
    if_null rx213_debug, debug_378
    rx213_cur."!cursor_debug"("FAIL", "escale")
  debug_378:
    .return (rx213_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303391590.341") :method
.annotate 'line', 40
    new $P215, "ResizablePMCArray"
    push $P215, "e"
    push $P215, "E"
    .return ($P215)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303391590.341")
    .param pmc param_219
.annotate 'line', 86
    .lex "self", param_219
    $P220 = param_219."!protoregex"("quote_escape")
    .return ($P220)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303391590.341")
    .param pmc param_222
.annotate 'line', 86
    .lex "self", param_222
    $P223 = param_222."!PREFIX__!protoregex"("quote_escape")
    .return ($P223)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx225_tgt
    .local int rx225_pos
    .local int rx225_off
    .local int rx225_eos
    .local int rx225_rep
    .local pmc rx225_cur
    .local pmc rx225_debug
    (rx225_cur, rx225_pos, rx225_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx225_cur
    .local pmc match
    .lex "$/", match
    length rx225_eos, rx225_tgt
    gt rx225_pos, rx225_eos, rx225_done
    set rx225_off, 0
    lt rx225_pos, 2, rx225_start
    sub rx225_off, rx225_pos, 1
    substr rx225_tgt, rx225_tgt, rx225_off
  rx225_start:
    eq $I10, 1, rx225_restart
    if_null rx225_debug, debug_379
    rx225_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_379:
    $I10 = self.'from'()
    ne $I10, -1, rxscan228_done
    goto rxscan228_scan
  rxscan228_loop:
    (rx225_pos) = rx225_cur."from"()
    inc rx225_pos
    rx225_cur."!cursor_from"(rx225_pos)
    ge rx225_pos, rx225_eos, rxscan228_done
  rxscan228_scan:
    set_addr $I10, rxscan228_loop
    rx225_cur."!mark_push"(0, rx225_pos, $I10)
  rxscan228_done:
.annotate 'line', 87
  # rx literal  "\\\\"
    add $I11, rx225_pos, 2
    gt $I11, rx225_eos, rx225_fail
    sub $I11, rx225_pos, rx225_off
    substr $S10, rx225_tgt, $I11, 2
    ne $S10, "\\\\", rx225_fail
    add rx225_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx225_cur."!cursor_pos"(rx225_pos)
    $P10 = rx225_cur."quotemod_check"("q")
    unless $P10, rx225_fail
  # rx pass
    rx225_cur."!cursor_pass"(rx225_pos, "quote_escape:sym<backslash>")
    if_null rx225_debug, debug_380
    rx225_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx225_pos)
  debug_380:
    .return (rx225_cur)
  rx225_restart:
.annotate 'line', 40
    if_null rx225_debug, debug_381
    rx225_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_381:
  rx225_fail:
    (rx225_rep, rx225_pos, $I10, $P10) = rx225_cur."!mark_fail"(0)
    lt rx225_pos, -1, rx225_done
    eq rx225_pos, -1, rx225_fail
    jump $I10
  rx225_done:
    rx225_cur."!cursor_fail"()
    if_null rx225_debug, debug_382
    rx225_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_382:
    .return (rx225_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303391590.341") :method
.annotate 'line', 40
    new $P227, "ResizablePMCArray"
    push $P227, "\\\\"
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    .local pmc rx230_debug
    (rx230_cur, rx230_pos, rx230_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx230_cur
    .local pmc match
    .lex "$/", match
    length rx230_eos, rx230_tgt
    gt rx230_pos, rx230_eos, rx230_done
    set rx230_off, 0
    lt rx230_pos, 2, rx230_start
    sub rx230_off, rx230_pos, 1
    substr rx230_tgt, rx230_tgt, rx230_off
  rx230_start:
    eq $I10, 1, rx230_restart
    if_null rx230_debug, debug_383
    rx230_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_383:
    $I10 = self.'from'()
    ne $I10, -1, rxscan233_done
    goto rxscan233_scan
  rxscan233_loop:
    (rx230_pos) = rx230_cur."from"()
    inc rx230_pos
    rx230_cur."!cursor_from"(rx230_pos)
    ge rx230_pos, rx230_eos, rxscan233_done
  rxscan233_scan:
    set_addr $I10, rxscan233_loop
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  rxscan233_done:
.annotate 'line', 88
  # rx literal  "\\"
    add $I11, rx230_pos, 1
    gt $I11, rx230_eos, rx230_fail
    sub $I11, rx230_pos, rx230_off
    ord $I11, rx230_tgt, $I11
    ne $I11, 92, rx230_fail
    add rx230_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."quotemod_check"("q")
    unless $P10, rx230_fail
  # rx subrule "stopper" subtype=capture negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."stopper"()
    unless $P10, rx230_fail
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx230_pos = $P10."pos"()
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "quote_escape:sym<stopper>")
    if_null rx230_debug, debug_384
    rx230_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx230_pos)
  debug_384:
    .return (rx230_cur)
  rx230_restart:
.annotate 'line', 40
    if_null rx230_debug, debug_385
    rx230_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_385:
  rx230_fail:
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    if_null rx230_debug, debug_386
    rx230_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_386:
    .return (rx230_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303391590.341") :method
.annotate 'line', 40
    new $P232, "ResizablePMCArray"
    push $P232, "\\"
    .return ($P232)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx235_tgt
    .local int rx235_pos
    .local int rx235_off
    .local int rx235_eos
    .local int rx235_rep
    .local pmc rx235_cur
    .local pmc rx235_debug
    (rx235_cur, rx235_pos, rx235_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx235_cur
    .local pmc match
    .lex "$/", match
    length rx235_eos, rx235_tgt
    gt rx235_pos, rx235_eos, rx235_done
    set rx235_off, 0
    lt rx235_pos, 2, rx235_start
    sub rx235_off, rx235_pos, 1
    substr rx235_tgt, rx235_tgt, rx235_off
  rx235_start:
    eq $I10, 1, rx235_restart
    if_null rx235_debug, debug_387
    rx235_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_387:
    $I10 = self.'from'()
    ne $I10, -1, rxscan238_done
    goto rxscan238_scan
  rxscan238_loop:
    (rx235_pos) = rx235_cur."from"()
    inc rx235_pos
    rx235_cur."!cursor_from"(rx235_pos)
    ge rx235_pos, rx235_eos, rxscan238_done
  rxscan238_scan:
    set_addr $I10, rxscan238_loop
    rx235_cur."!mark_push"(0, rx235_pos, $I10)
  rxscan238_done:
.annotate 'line', 90
  # rx literal  "\\b"
    add $I11, rx235_pos, 2
    gt $I11, rx235_eos, rx235_fail
    sub $I11, rx235_pos, rx235_off
    substr $S10, rx235_tgt, $I11, 2
    ne $S10, "\\b", rx235_fail
    add rx235_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx235_cur."!cursor_pos"(rx235_pos)
    $P10 = rx235_cur."quotemod_check"("b")
    unless $P10, rx235_fail
  # rx pass
    rx235_cur."!cursor_pass"(rx235_pos, "quote_escape:sym<bs>")
    if_null rx235_debug, debug_388
    rx235_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx235_pos)
  debug_388:
    .return (rx235_cur)
  rx235_restart:
.annotate 'line', 40
    if_null rx235_debug, debug_389
    rx235_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_389:
  rx235_fail:
    (rx235_rep, rx235_pos, $I10, $P10) = rx235_cur."!mark_fail"(0)
    lt rx235_pos, -1, rx235_done
    eq rx235_pos, -1, rx235_fail
    jump $I10
  rx235_done:
    rx235_cur."!cursor_fail"()
    if_null rx235_debug, debug_390
    rx235_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_390:
    .return (rx235_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303391590.341") :method
.annotate 'line', 40
    new $P237, "ResizablePMCArray"
    push $P237, "\\b"
    .return ($P237)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    .local pmc rx240_debug
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx240_cur
    .local pmc match
    .lex "$/", match
    length rx240_eos, rx240_tgt
    gt rx240_pos, rx240_eos, rx240_done
    set rx240_off, 0
    lt rx240_pos, 2, rx240_start
    sub rx240_off, rx240_pos, 1
    substr rx240_tgt, rx240_tgt, rx240_off
  rx240_start:
    eq $I10, 1, rx240_restart
    if_null rx240_debug, debug_391
    rx240_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_391:
    $I10 = self.'from'()
    ne $I10, -1, rxscan243_done
    goto rxscan243_scan
  rxscan243_loop:
    (rx240_pos) = rx240_cur."from"()
    inc rx240_pos
    rx240_cur."!cursor_from"(rx240_pos)
    ge rx240_pos, rx240_eos, rxscan243_done
  rxscan243_scan:
    set_addr $I10, rxscan243_loop
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  rxscan243_done:
.annotate 'line', 91
  # rx literal  "\\n"
    add $I11, rx240_pos, 2
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    substr $S10, rx240_tgt, $I11, 2
    ne $S10, "\\n", rx240_fail
    add rx240_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx240_cur."!cursor_pos"(rx240_pos)
    $P10 = rx240_cur."quotemod_check"("b")
    unless $P10, rx240_fail
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "quote_escape:sym<nl>")
    if_null rx240_debug, debug_392
    rx240_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx240_pos)
  debug_392:
    .return (rx240_cur)
  rx240_restart:
.annotate 'line', 40
    if_null rx240_debug, debug_393
    rx240_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_393:
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    if_null rx240_debug, debug_394
    rx240_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_394:
    .return (rx240_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303391590.341") :method
.annotate 'line', 40
    new $P242, "ResizablePMCArray"
    push $P242, "\\n"
    .return ($P242)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    .local pmc rx245_debug
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx245_cur
    .local pmc match
    .lex "$/", match
    length rx245_eos, rx245_tgt
    gt rx245_pos, rx245_eos, rx245_done
    set rx245_off, 0
    lt rx245_pos, 2, rx245_start
    sub rx245_off, rx245_pos, 1
    substr rx245_tgt, rx245_tgt, rx245_off
  rx245_start:
    eq $I10, 1, rx245_restart
    if_null rx245_debug, debug_395
    rx245_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_395:
    $I10 = self.'from'()
    ne $I10, -1, rxscan248_done
    goto rxscan248_scan
  rxscan248_loop:
    (rx245_pos) = rx245_cur."from"()
    inc rx245_pos
    rx245_cur."!cursor_from"(rx245_pos)
    ge rx245_pos, rx245_eos, rxscan248_done
  rxscan248_scan:
    set_addr $I10, rxscan248_loop
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  rxscan248_done:
.annotate 'line', 92
  # rx literal  "\\r"
    add $I11, rx245_pos, 2
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 2
    ne $S10, "\\r", rx245_fail
    add rx245_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."quotemod_check"("b")
    unless $P10, rx245_fail
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "quote_escape:sym<cr>")
    if_null rx245_debug, debug_396
    rx245_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx245_pos)
  debug_396:
    .return (rx245_cur)
  rx245_restart:
.annotate 'line', 40
    if_null rx245_debug, debug_397
    rx245_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_397:
  rx245_fail:
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    if_null rx245_debug, debug_398
    rx245_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_398:
    .return (rx245_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303391590.341") :method
.annotate 'line', 40
    new $P247, "ResizablePMCArray"
    push $P247, "\\r"
    .return ($P247)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    .local pmc rx250_debug
    (rx250_cur, rx250_pos, rx250_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx250_cur
    .local pmc match
    .lex "$/", match
    length rx250_eos, rx250_tgt
    gt rx250_pos, rx250_eos, rx250_done
    set rx250_off, 0
    lt rx250_pos, 2, rx250_start
    sub rx250_off, rx250_pos, 1
    substr rx250_tgt, rx250_tgt, rx250_off
  rx250_start:
    eq $I10, 1, rx250_restart
    if_null rx250_debug, debug_399
    rx250_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_399:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    (rx250_pos) = rx250_cur."from"()
    inc rx250_pos
    rx250_cur."!cursor_from"(rx250_pos)
    ge rx250_pos, rx250_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx250_cur."!mark_push"(0, rx250_pos, $I10)
  rxscan253_done:
.annotate 'line', 93
  # rx literal  "\\t"
    add $I11, rx250_pos, 2
    gt $I11, rx250_eos, rx250_fail
    sub $I11, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I11, 2
    ne $S10, "\\t", rx250_fail
    add rx250_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."quotemod_check"("b")
    unless $P10, rx250_fail
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "quote_escape:sym<tab>")
    if_null rx250_debug, debug_400
    rx250_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx250_pos)
  debug_400:
    .return (rx250_cur)
  rx250_restart:
.annotate 'line', 40
    if_null rx250_debug, debug_401
    rx250_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_401:
  rx250_fail:
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    if_null rx250_debug, debug_402
    rx250_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_402:
    .return (rx250_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303391590.341") :method
.annotate 'line', 40
    new $P252, "ResizablePMCArray"
    push $P252, "\\t"
    .return ($P252)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    .local pmc rx255_debug
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    gt rx255_pos, rx255_eos, rx255_done
    set rx255_off, 0
    lt rx255_pos, 2, rx255_start
    sub rx255_off, rx255_pos, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
    eq $I10, 1, rx255_restart
    if_null rx255_debug, debug_403
    rx255_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_403:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    (rx255_pos) = rx255_cur."from"()
    inc rx255_pos
    rx255_cur."!cursor_from"(rx255_pos)
    ge rx255_pos, rx255_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan258_done:
.annotate 'line', 94
  # rx literal  "\\f"
    add $I11, rx255_pos, 2
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 2
    ne $S10, "\\f", rx255_fail
    add rx255_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."quotemod_check"("b")
    unless $P10, rx255_fail
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "quote_escape:sym<ff>")
    if_null rx255_debug, debug_404
    rx255_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx255_pos)
  debug_404:
    .return (rx255_cur)
  rx255_restart:
.annotate 'line', 40
    if_null rx255_debug, debug_405
    rx255_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_405:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_406
    rx255_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_406:
    .return (rx255_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303391590.341") :method
.annotate 'line', 40
    new $P257, "ResizablePMCArray"
    push $P257, "\\f"
    .return ($P257)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    .local pmc rx260_debug
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx260_cur
    .local pmc match
    .lex "$/", match
    length rx260_eos, rx260_tgt
    gt rx260_pos, rx260_eos, rx260_done
    set rx260_off, 0
    lt rx260_pos, 2, rx260_start
    sub rx260_off, rx260_pos, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
    eq $I10, 1, rx260_restart
    if_null rx260_debug, debug_407
    rx260_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_407:
    $I10 = self.'from'()
    ne $I10, -1, rxscan263_done
    goto rxscan263_scan
  rxscan263_loop:
    (rx260_pos) = rx260_cur."from"()
    inc rx260_pos
    rx260_cur."!cursor_from"(rx260_pos)
    ge rx260_pos, rx260_eos, rxscan263_done
  rxscan263_scan:
    set_addr $I10, rxscan263_loop
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  rxscan263_done:
.annotate 'line', 95
  # rx literal  "\\e"
    add $I11, rx260_pos, 2
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 2
    ne $S10, "\\e", rx260_fail
    add rx260_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."quotemod_check"("b")
    unless $P10, rx260_fail
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "quote_escape:sym<esc>")
    if_null rx260_debug, debug_408
    rx260_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx260_pos)
  debug_408:
    .return (rx260_cur)
  rx260_restart:
.annotate 'line', 40
    if_null rx260_debug, debug_409
    rx260_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_409:
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    if_null rx260_debug, debug_410
    rx260_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_410:
    .return (rx260_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303391590.341") :method
.annotate 'line', 40
    new $P262, "ResizablePMCArray"
    push $P262, "\\e"
    .return ($P262)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx265_tgt
    .local int rx265_pos
    .local int rx265_off
    .local int rx265_eos
    .local int rx265_rep
    .local pmc rx265_cur
    .local pmc rx265_debug
    (rx265_cur, rx265_pos, rx265_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx265_cur
    .local pmc match
    .lex "$/", match
    length rx265_eos, rx265_tgt
    gt rx265_pos, rx265_eos, rx265_done
    set rx265_off, 0
    lt rx265_pos, 2, rx265_start
    sub rx265_off, rx265_pos, 1
    substr rx265_tgt, rx265_tgt, rx265_off
  rx265_start:
    eq $I10, 1, rx265_restart
    if_null rx265_debug, debug_411
    rx265_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_411:
    $I10 = self.'from'()
    ne $I10, -1, rxscan268_done
    goto rxscan268_scan
  rxscan268_loop:
    (rx265_pos) = rx265_cur."from"()
    inc rx265_pos
    rx265_cur."!cursor_from"(rx265_pos)
    ge rx265_pos, rx265_eos, rxscan268_done
  rxscan268_scan:
    set_addr $I10, rxscan268_loop
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  rxscan268_done:
.annotate 'line', 97
  # rx literal  unicode:"\\x"
    add $I11, rx265_pos, 2
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    substr $S10, rx265_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx265_fail
    add rx265_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."quotemod_check"("b")
    unless $P10, rx265_fail
  alt269_0:
.annotate 'line', 98
    set_addr $I10, alt269_1
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."hexint"()
    unless $P10, rx265_fail
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx265_pos = $P10."pos"()
    goto alt269_end
  alt269_1:
  # rx literal  "["
    add $I11, rx265_pos, 1
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    ord $I11, rx265_tgt, $I11
    ne $I11, 91, rx265_fail
    add rx265_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."hexints"()
    unless $P10, rx265_fail
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx265_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx265_pos, 1
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    ord $I11, rx265_tgt, $I11
    ne $I11, 93, rx265_fail
    add rx265_pos, 1
  alt269_end:
.annotate 'line', 96
  # rx pass
    rx265_cur."!cursor_pass"(rx265_pos, "quote_escape:sym<hex>")
    if_null rx265_debug, debug_412
    rx265_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx265_pos)
  debug_412:
    .return (rx265_cur)
  rx265_restart:
.annotate 'line', 40
    if_null rx265_debug, debug_413
    rx265_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_413:
  rx265_fail:
    (rx265_rep, rx265_pos, $I10, $P10) = rx265_cur."!mark_fail"(0)
    lt rx265_pos, -1, rx265_done
    eq rx265_pos, -1, rx265_fail
    jump $I10
  rx265_done:
    rx265_cur."!cursor_fail"()
    if_null rx265_debug, debug_414
    rx265_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_414:
    .return (rx265_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303391590.341") :method
.annotate 'line', 40
    new $P267, "ResizablePMCArray"
    push $P267, unicode:"\\x"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    .local pmc rx271_debug
    (rx271_cur, rx271_pos, rx271_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx271_cur
    .local pmc match
    .lex "$/", match
    length rx271_eos, rx271_tgt
    gt rx271_pos, rx271_eos, rx271_done
    set rx271_off, 0
    lt rx271_pos, 2, rx271_start
    sub rx271_off, rx271_pos, 1
    substr rx271_tgt, rx271_tgt, rx271_off
  rx271_start:
    eq $I10, 1, rx271_restart
    if_null rx271_debug, debug_415
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_415:
    $I10 = self.'from'()
    ne $I10, -1, rxscan274_done
    goto rxscan274_scan
  rxscan274_loop:
    (rx271_pos) = rx271_cur."from"()
    inc rx271_pos
    rx271_cur."!cursor_from"(rx271_pos)
    ge rx271_pos, rx271_eos, rxscan274_done
  rxscan274_scan:
    set_addr $I10, rxscan274_loop
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  rxscan274_done:
.annotate 'line', 101
  # rx literal  "\\o"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, "\\o", rx271_fail
    add rx271_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."quotemod_check"("b")
    unless $P10, rx271_fail
  alt275_0:
.annotate 'line', 102
    set_addr $I10, alt275_1
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."octint"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx271_pos = $P10."pos"()
    goto alt275_end
  alt275_1:
  # rx literal  "["
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 91, rx271_fail
    add rx271_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."octints"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx271_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 93, rx271_fail
    add rx271_pos, 1
  alt275_end:
.annotate 'line', 100
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "quote_escape:sym<oct>")
    if_null rx271_debug, debug_416
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx271_pos)
  debug_416:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 40
    if_null rx271_debug, debug_417
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_417:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_418
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_418:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303391590.341") :method
.annotate 'line', 40
    new $P273, "ResizablePMCArray"
    push $P273, "\\o"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    .local pmc rx277_debug
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    gt rx277_pos, rx277_eos, rx277_done
    set rx277_off, 0
    lt rx277_pos, 2, rx277_start
    sub rx277_off, rx277_pos, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
    eq $I10, 1, rx277_restart
    if_null rx277_debug, debug_419
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_419:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    (rx277_pos) = rx277_cur."from"()
    inc rx277_pos
    rx277_cur."!cursor_from"(rx277_pos)
    ge rx277_pos, rx277_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan280_done:
.annotate 'line', 104
  # rx literal  "\\c"
    add $I11, rx277_pos, 2
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 2
    ne $S10, "\\c", rx277_fail
    add rx277_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."quotemod_check"("b")
    unless $P10, rx277_fail
  # rx subrule "charspec" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."charspec"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx277_pos = $P10."pos"()
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "quote_escape:sym<chr>")
    if_null rx277_debug, debug_420
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx277_pos)
  debug_420:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 40
    if_null rx277_debug, debug_421
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_421:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_422
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_422:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303391590.341") :method
.annotate 'line', 40
    new $P279, "ResizablePMCArray"
    push $P279, "\\c"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    .local pmc rx282_debug
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    gt rx282_pos, rx282_eos, rx282_done
    set rx282_off, 0
    lt rx282_pos, 2, rx282_start
    sub rx282_off, rx282_pos, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
    eq $I10, 1, rx282_restart
    if_null rx282_debug, debug_423
    rx282_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_423:
    $I10 = self.'from'()
    ne $I10, -1, rxscan285_done
    goto rxscan285_scan
  rxscan285_loop:
    (rx282_pos) = rx282_cur."from"()
    inc rx282_pos
    rx282_cur."!cursor_from"(rx282_pos)
    ge rx282_pos, rx282_eos, rxscan285_done
  rxscan285_scan:
    set_addr $I10, rxscan285_loop
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  rxscan285_done:
.annotate 'line', 105
  # rx literal  "\\"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    ord $I11, rx282_tgt, $I11
    ne $I11, 92, rx282_fail
    add rx282_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_286_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "0"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    ord $I11, rx282_tgt, $I11
    ne $I11, 48, rx282_fail
    add rx282_pos, 1
    set_addr $I10, rxcap_286_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_286_done
  rxcap_286_fail:
    goto rx282_fail
  rxcap_286_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."quotemod_check"("b")
    unless $P10, rx282_fail
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "quote_escape:sym<0>")
    if_null rx282_debug, debug_424
    rx282_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx282_pos)
  debug_424:
    .return (rx282_cur)
  rx282_restart:
.annotate 'line', 40
    if_null rx282_debug, debug_425
    rx282_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_425:
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    if_null rx282_debug, debug_426
    rx282_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_426:
    .return (rx282_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303391590.341") :method
.annotate 'line', 40
    new $P284, "ResizablePMCArray"
    push $P284, "\\0"
    .return ($P284)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .const 'Sub' $P307 = "97_1303391590.341" 
    capture_lex $P307
    .const 'Sub' $P300 = "96_1303391590.341" 
    capture_lex $P300
    .const 'Sub' $P295 = "95_1303391590.341" 
    capture_lex $P295
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    .local pmc rx288_debug
    (rx288_cur, rx288_pos, rx288_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx288_cur
    .local pmc match
    .lex "$/", match
    length rx288_eos, rx288_tgt
    gt rx288_pos, rx288_eos, rx288_done
    set rx288_off, 0
    lt rx288_pos, 2, rx288_start
    sub rx288_off, rx288_pos, 1
    substr rx288_tgt, rx288_tgt, rx288_off
  rx288_start:
    eq $I10, 1, rx288_restart
    if_null rx288_debug, debug_427
    rx288_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_427:
    $I10 = self.'from'()
    ne $I10, -1, rxscan291_done
    goto rxscan291_scan
  rxscan291_loop:
    (rx288_pos) = rx288_cur."from"()
    inc rx288_pos
    rx288_cur."!cursor_from"(rx288_pos)
    ge rx288_pos, rx288_eos, rxscan291_done
  rxscan291_scan:
    set_addr $I10, rxscan291_loop
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  rxscan291_done:
.annotate 'line', 107
    rx288_cur."!cursor_pos"(rx288_pos)
    find_lex $P292, unicode:"$\x{a2}"
    $P293 = $P292."MATCH"()
    store_lex "$/", $P293
    .const 'Sub' $P295 = "95_1303391590.341" 
    capture_lex $P295
    $P296 = $P295()
  # rx literal  "\\"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 92, rx288_fail
    add rx288_pos, 1
  alt297_0:
.annotate 'line', 108
    set_addr $I10, alt297_1
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate 'line', 109
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."quotemod_check"("b")
    unless $P10, rx288_fail
  alt298_0:
.annotate 'line', 110
    set_addr $I10, alt298_1
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate 'line', 111
  # rx subrule $P300 subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    .const 'Sub' $P300 = "96_1303391590.341" 
    capture_lex $P300
    $P10 = rx288_cur.$P300()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx288_pos = $P10."pos"()
    goto alt298_end
  alt298_1:
.annotate 'line', 112
  # rx subcapture "x"
    set_addr $I10, rxcap_303_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx charclass w
    ge rx288_pos, rx288_eos, rx288_fail
    sub $I10, rx288_pos, rx288_off
    is_cclass $I11, 8192, rx288_tgt, $I10
    unless $I11, rx288_fail
    inc rx288_pos
    set_addr $I10, rxcap_303_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_303_done
  rxcap_303_fail:
    goto rx288_fail
  rxcap_303_done:
    rx288_cur."!cursor_pos"(rx288_pos)
    find_lex $P304, unicode:"$\x{a2}"
    $P305 = $P304."MATCH"()
    store_lex "$/", $P305
    .const 'Sub' $P307 = "97_1303391590.341" 
    capture_lex $P307
    $P317 = $P307()
  alt298_end:
.annotate 'line', 109
    goto alt297_end
  alt297_1:
.annotate 'line', 114
  # rx subcapture "textq"
    set_addr $I10, rxcap_318_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx charclass .
    ge rx288_pos, rx288_eos, rx288_fail
    inc rx288_pos
    set_addr $I10, rxcap_318_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_318_done
  rxcap_318_fail:
    goto rx288_fail
  rxcap_318_done:
  alt297_end:
.annotate 'line', 106
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "quote_escape:sym<misc>")
    if_null rx288_debug, debug_435
    rx288_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx288_pos)
  debug_435:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 40
    if_null rx288_debug, debug_436
    rx288_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_436:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_437
    rx288_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_437:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303391590.341") :method
.annotate 'line', 40
    new $P290, "ResizablePMCArray"
    push $P290, ""
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block294"  :anon :subid("95_1303391590.341") :outer("93_1303391590.341")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("96_1303391590.341") :method :outer("93_1303391590.341")
.annotate 'line', 111
    .local string rx301_tgt
    .local int rx301_pos
    .local int rx301_off
    .local int rx301_eos
    .local int rx301_rep
    .local pmc rx301_cur
    .local pmc rx301_debug
    (rx301_cur, rx301_pos, rx301_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx301_cur
    .local pmc match
    .lex "$/", match
    length rx301_eos, rx301_tgt
    gt rx301_pos, rx301_eos, rx301_done
    set rx301_off, 0
    lt rx301_pos, 2, rx301_start
    sub rx301_off, rx301_pos, 1
    substr rx301_tgt, rx301_tgt, rx301_off
  rx301_start:
    eq $I10, 1, rx301_restart
    if_null rx301_debug, debug_428
    rx301_cur."!cursor_debug"("START", "")
  debug_428:
    $I10 = self.'from'()
    ne $I10, -1, rxscan302_done
    goto rxscan302_scan
  rxscan302_loop:
    (rx301_pos) = rx301_cur."from"()
    inc rx301_pos
    rx301_cur."!cursor_from"(rx301_pos)
    ge rx301_pos, rx301_eos, rxscan302_done
  rxscan302_scan:
    set_addr $I10, rxscan302_loop
    rx301_cur."!mark_push"(0, rx301_pos, $I10)
  rxscan302_done:
  # rx charclass W
    ge rx301_pos, rx301_eos, rx301_fail
    sub $I10, rx301_pos, rx301_off
    is_cclass $I11, 8192, rx301_tgt, $I10
    if $I11, rx301_fail
    inc rx301_pos
  # rx pass
    rx301_cur."!cursor_pass"(rx301_pos, "")
    if_null rx301_debug, debug_429
    rx301_cur."!cursor_debug"("PASS", "", " at pos=", rx301_pos)
  debug_429:
    .return (rx301_cur)
  rx301_restart:
    if_null rx301_debug, debug_430
    rx301_cur."!cursor_debug"("NEXT", "")
  debug_430:
  rx301_fail:
    (rx301_rep, rx301_pos, $I10, $P10) = rx301_cur."!mark_fail"(0)
    lt rx301_pos, -1, rx301_done
    eq rx301_pos, -1, rx301_fail
    jump $I10
  rx301_done:
    rx301_cur."!cursor_fail"()
    if_null rx301_debug, debug_431
    rx301_cur."!cursor_debug"("FAIL", "")
  debug_431:
    .return (rx301_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block306"  :anon :subid("97_1303391590.341") :outer("93_1303391590.341")
.annotate 'line', 112
    find_lex $P308, "$/"
    unless_null $P308, vivify_432
    new $P308, "Undef"
  vivify_432:
    $P309 = $P308."CURSOR"()
    new $P310, "String"
    assign $P310, "Unrecognized backslash sequence: '\\"
    find_lex $P311, "$/"
    unless_null $P311, vivify_433
    $P311 = root_new ['parrot';'Hash']
  vivify_433:
    set $P312, $P311["x"]
    unless_null $P312, vivify_434
    new $P312, "Undef"
  vivify_434:
    $S313 = $P312."Str"()
    concat $P314, $P310, $S313
    concat $P315, $P314, "'"
    $P316 = $P309."panic"($P315)
    .return ($P316)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .const 'Sub' $P329 = "100_1303391590.341" 
    capture_lex $P329
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    .local pmc rx320_debug
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx320_cur
    .local pmc match
    .lex "$/", match
    length rx320_eos, rx320_tgt
    gt rx320_pos, rx320_eos, rx320_done
    set rx320_off, 0
    lt rx320_pos, 2, rx320_start
    sub rx320_off, rx320_pos, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
    eq $I10, 1, rx320_restart
    if_null rx320_debug, debug_438
    rx320_cur."!cursor_debug"("START", "charname")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan324_done
    goto rxscan324_scan
  rxscan324_loop:
    (rx320_pos) = rx320_cur."from"()
    inc rx320_pos
    rx320_cur."!cursor_from"(rx320_pos)
    ge rx320_pos, rx320_eos, rxscan324_done
  rxscan324_scan:
    set_addr $I10, rxscan324_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxscan324_done:
  alt325_0:
.annotate 'line', 118
    set_addr $I10, alt325_1
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
.annotate 'line', 119
  # rx subrule "integer" subtype=capture negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."integer"()
    unless $P10, rx320_fail
    rx320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx320_pos = $P10."pos"()
    goto alt325_end
  alt325_1:
.annotate 'line', 120
  # rx enumcharlist negate=0 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx320_fail
    inc rx320_pos
  # rx rxquantf326 ** 0..*
    set_addr $I10, rxquantf326_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
    goto rxquantf326_done
  rxquantf326_loop:
  # rx enumcharlist negate=1 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx320_fail
    inc rx320_pos
    set_addr $I10, rxquantf326_loop
    rx320_cur."!mark_push"(rx320_rep, rx320_pos, $I10)
  rxquantf326_done:
  # rx enumcharlist negate=0 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx320_fail
    inc rx320_pos
.annotate 'line', 121
  # rx subrule "before" subtype=zerowidth negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    .const 'Sub' $P329 = "100_1303391590.341" 
    capture_lex $P329
    $P10 = rx320_cur."before"($P329)
    unless $P10, rx320_fail
  alt325_end:
.annotate 'line', 118
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "charname")
    if_null rx320_debug, debug_443
    rx320_cur."!cursor_debug"("PASS", "charname", " at pos=", rx320_pos)
  debug_443:
    .return (rx320_cur)
  rx320_restart:
.annotate 'line', 40
    if_null rx320_debug, debug_444
    rx320_cur."!cursor_debug"("NEXT", "charname")
  debug_444:
  rx320_fail:
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    if_null rx320_debug, debug_445
    rx320_cur."!cursor_debug"("FAIL", "charname")
  debug_445:
    .return (rx320_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303391590.341") :method
.annotate 'line', 40
    $P322 = self."!PREFIX__!subrule"("integer", "")
    new $P323, "ResizablePMCArray"
    push $P323, "Z"
    push $P323, "Y"
    push $P323, "X"
    push $P323, "W"
    push $P323, "V"
    push $P323, "U"
    push $P323, "T"
    push $P323, "S"
    push $P323, "R"
    push $P323, "Q"
    push $P323, "P"
    push $P323, "O"
    push $P323, "N"
    push $P323, "M"
    push $P323, "L"
    push $P323, "K"
    push $P323, "J"
    push $P323, "I"
    push $P323, "H"
    push $P323, "G"
    push $P323, "F"
    push $P323, "E"
    push $P323, "D"
    push $P323, "C"
    push $P323, "B"
    push $P323, "A"
    push $P323, "z"
    push $P323, "y"
    push $P323, "x"
    push $P323, "w"
    push $P323, "v"
    push $P323, "u"
    push $P323, "t"
    push $P323, "s"
    push $P323, "r"
    push $P323, "q"
    push $P323, "p"
    push $P323, "o"
    push $P323, "n"
    push $P323, "m"
    push $P323, "l"
    push $P323, "k"
    push $P323, "j"
    push $P323, "i"
    push $P323, "h"
    push $P323, "g"
    push $P323, "f"
    push $P323, "e"
    push $P323, "d"
    push $P323, "c"
    push $P323, "b"
    push $P323, "a"
    push $P323, $P322
    .return ($P323)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block328"  :anon :subid("100_1303391590.341") :method :outer("98_1303391590.341")
.annotate 'line', 121
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    .local pmc rx330_debug
    (rx330_cur, rx330_pos, rx330_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx330_cur
    .local pmc match
    .lex "$/", match
    length rx330_eos, rx330_tgt
    gt rx330_pos, rx330_eos, rx330_done
    set rx330_off, 0
    lt rx330_pos, 2, rx330_start
    sub rx330_off, rx330_pos, 1
    substr rx330_tgt, rx330_tgt, rx330_off
  rx330_start:
    eq $I10, 1, rx330_restart
    if_null rx330_debug, debug_439
    rx330_cur."!cursor_debug"("START", "")
  debug_439:
    $I10 = self.'from'()
    ne $I10, -1, rxscan331_done
    goto rxscan331_scan
  rxscan331_loop:
    (rx330_pos) = rx330_cur."from"()
    inc rx330_pos
    rx330_cur."!cursor_from"(rx330_pos)
    ge rx330_pos, rx330_eos, rxscan331_done
  rxscan331_scan:
    set_addr $I10, rxscan331_loop
    rx330_cur."!mark_push"(0, rx330_pos, $I10)
  rxscan331_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx330_pos, rx330_off
    find_not_cclass $I11, 32, rx330_tgt, $I10, rx330_eos
    add rx330_pos, rx330_off, $I11
  # rx enumcharlist negate=0 
    ge rx330_pos, rx330_eos, rx330_fail
    sub $I10, rx330_pos, rx330_off
    substr $S10, rx330_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx330_fail
    inc rx330_pos
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "")
    if_null rx330_debug, debug_440
    rx330_cur."!cursor_debug"("PASS", "", " at pos=", rx330_pos)
  debug_440:
    .return (rx330_cur)
  rx330_restart:
    if_null rx330_debug, debug_441
    rx330_cur."!cursor_debug"("NEXT", "")
  debug_441:
  rx330_fail:
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    if_null rx330_debug, debug_442
    rx330_cur."!cursor_debug"("FAIL", "")
  debug_442:
    .return (rx330_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx333_tgt
    .local int rx333_pos
    .local int rx333_off
    .local int rx333_eos
    .local int rx333_rep
    .local pmc rx333_cur
    .local pmc rx333_debug
    (rx333_cur, rx333_pos, rx333_tgt, $I10) = self."!cursor_start"()
    rx333_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx333_cur
    .local pmc match
    .lex "$/", match
    length rx333_eos, rx333_tgt
    gt rx333_pos, rx333_eos, rx333_done
    set rx333_off, 0
    lt rx333_pos, 2, rx333_start
    sub rx333_off, rx333_pos, 1
    substr rx333_tgt, rx333_tgt, rx333_off
  rx333_start:
    eq $I10, 1, rx333_restart
    if_null rx333_debug, debug_446
    rx333_cur."!cursor_debug"("START", "charnames")
  debug_446:
    $I10 = self.'from'()
    ne $I10, -1, rxscan336_done
    goto rxscan336_scan
  rxscan336_loop:
    (rx333_pos) = rx333_cur."from"()
    inc rx333_pos
    rx333_cur."!cursor_from"(rx333_pos)
    ge rx333_pos, rx333_eos, rxscan336_done
  rxscan336_scan:
    set_addr $I10, rxscan336_loop
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
  rxscan336_done:
.annotate 'line', 123
  # rx rxquantr337 ** 1..*
    set_addr $I10, rxquantr337_done
    rx333_cur."!mark_push"(0, -1, $I10)
  rxquantr337_loop:
  # rx subrule "ws" subtype=method negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."ws"()
    unless $P10, rx333_fail
    rx333_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."charname"()
    unless $P10, rx333_fail
    rx333_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx333_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."ws"()
    unless $P10, rx333_fail
    rx333_pos = $P10."pos"()
    set_addr $I10, rxquantr337_done
    (rx333_rep) = rx333_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr337_done
    rx333_cur."!mark_push"(rx333_rep, rx333_pos, $I10)
  # rx literal  ","
    add $I11, rx333_pos, 1
    gt $I11, rx333_eos, rx333_fail
    sub $I11, rx333_pos, rx333_off
    ord $I11, rx333_tgt, $I11
    ne $I11, 44, rx333_fail
    add rx333_pos, 1
    goto rxquantr337_loop
  rxquantr337_done:
  # rx pass
    rx333_cur."!cursor_pass"(rx333_pos, "charnames")
    if_null rx333_debug, debug_447
    rx333_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx333_pos)
  debug_447:
    .return (rx333_cur)
  rx333_restart:
.annotate 'line', 40
    if_null rx333_debug, debug_448
    rx333_cur."!cursor_debug"("NEXT", "charnames")
  debug_448:
  rx333_fail:
    (rx333_rep, rx333_pos, $I10, $P10) = rx333_cur."!mark_fail"(0)
    lt rx333_pos, -1, rx333_done
    eq rx333_pos, -1, rx333_fail
    jump $I10
  rx333_done:
    rx333_cur."!cursor_fail"()
    if_null rx333_debug, debug_449
    rx333_cur."!cursor_debug"("FAIL", "charnames")
  debug_449:
    .return (rx333_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303391590.341") :method
.annotate 'line', 40
    new $P335, "ResizablePMCArray"
    push $P335, ""
    .return ($P335)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303391590.341") :method :outer("11_1303391590.341")
.annotate 'line', 40
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx339_cur
    .local pmc match
    .lex "$/", match
    length rx339_eos, rx339_tgt
    gt rx339_pos, rx339_eos, rx339_done
    set rx339_off, 0
    lt rx339_pos, 2, rx339_start
    sub rx339_off, rx339_pos, 1
    substr rx339_tgt, rx339_tgt, rx339_off
  rx339_start:
    eq $I10, 1, rx339_restart
    if_null rx339_debug, debug_450
    rx339_cur."!cursor_debug"("START", "charspec")
  debug_450:
    $I10 = self.'from'()
    ne $I10, -1, rxscan344_done
    goto rxscan344_scan
  rxscan344_loop:
    (rx339_pos) = rx339_cur."from"()
    inc rx339_pos
    rx339_cur."!cursor_from"(rx339_pos)
    ge rx339_pos, rx339_eos, rxscan344_done
  rxscan344_scan:
    set_addr $I10, rxscan344_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan344_done:
  alt345_0:
.annotate 'line', 125
    set_addr $I10, alt345_1
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
.annotate 'line', 126
  # rx literal  "["
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 91, rx339_fail
    add rx339_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."charnames"()
    unless $P10, rx339_fail
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx339_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 93, rx339_fail
    add rx339_pos, 1
    goto alt345_end
  alt345_1:
    set_addr $I10, alt345_2
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
.annotate 'line', 127
  # rx charclass_q d r 1..-1
    sub $I10, rx339_pos, rx339_off
    find_not_cclass $I11, 8, rx339_tgt, $I10, rx339_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx339_fail
    add rx339_pos, rx339_off, $I11
  # rx rxquantr346 ** 0..*
    set_addr $I10, rxquantr346_done
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxquantr346_loop:
  # rx literal  "_"
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 95, rx339_fail
    add rx339_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx339_pos, rx339_off
    find_not_cclass $I11, 8, rx339_tgt, $I10, rx339_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx339_fail
    add rx339_pos, rx339_off, $I11
    set_addr $I10, rxquantr346_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr346_done
    rx339_cur."!mark_push"(rx339_rep, rx339_pos, $I10)
    goto rxquantr346_loop
  rxquantr346_done:
    goto alt345_end
  alt345_2:
    set_addr $I10, alt345_3
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
.annotate 'line', 128
  # rx enumcharlist negate=0 
    ge rx339_pos, rx339_eos, rx339_fail
    sub $I10, rx339_pos, rx339_off
    substr $S10, rx339_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx339_fail
    inc rx339_pos
    goto alt345_end
  alt345_3:
.annotate 'line', 129
  # rx subrule "panic" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."panic"("Unrecognized \\c character")
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
  alt345_end:
.annotate 'line', 124
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "charspec")
    if_null rx339_debug, debug_451
    rx339_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx339_pos)
  debug_451:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 40
    if_null rx339_debug, debug_452
    rx339_cur."!cursor_debug"("NEXT", "charspec")
  debug_452:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_453
    rx339_cur."!cursor_debug"("FAIL", "charspec")
  debug_453:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303391590.341") :method
.annotate 'line', 40
    $P341 = self."!PREFIX__!subrule"("panic", "")
    $P342 = self."!PREFIX__!subrule"("charnames", "[")
    new $P343, "ResizablePMCArray"
    push $P343, $P341
    push $P343, "Z"
    push $P343, "Y"
    push $P343, "X"
    push $P343, "W"
    push $P343, "V"
    push $P343, "U"
    push $P343, "T"
    push $P343, "S"
    push $P343, "R"
    push $P343, "Q"
    push $P343, "P"
    push $P343, "O"
    push $P343, "N"
    push $P343, "M"
    push $P343, "L"
    push $P343, "K"
    push $P343, "J"
    push $P343, "I"
    push $P343, "H"
    push $P343, "G"
    push $P343, "F"
    push $P343, "E"
    push $P343, "D"
    push $P343, "C"
    push $P343, "B"
    push $P343, "A"
    push $P343, "@"
    push $P343, "?"
    push $P343, ""
    push $P343, $P342
    .return ($P343)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_348
    .param pmc param_349
    .param pmc param_350 :optional
    .param int has_param_350 :opt_flag
.annotate 'line', 175
    .lex "self", param_348
    .lex "$spec", param_349
    if has_param_350, optparam_454
    new $P351, "Undef"
    set param_350, $P351
  optparam_454:
    .lex "$save", param_350
.annotate 'line', 176

            .include 'cclass.pasm'
            
            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'
            $P0 = find_lex '$spec'
            spec = $P0
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
            ($P0, $I0) = self.'!cursor_start'()
            $P0.'!cursor_pass'($I0, '')
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        
.annotate 'line', 175
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic"  :subid("106_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_353
    .param pmc param_354 :slurpy
.annotate 'line', 323
    .lex "self", param_353
    .lex "@args", param_354
.annotate 'line', 324
    new $P355, "Undef"
    .lex "$pos", $P355
.annotate 'line', 325
    new $P356, "Undef"
    .lex "$target", $P356
.annotate 'line', 324
    find_lex $P357, "self"
    $P358 = $P357."pos"()
    store_lex "$pos", $P358
.annotate 'line', 325
    find_lex $P359, "self"
    get_hll_global $P360, ["Regex"], "Cursor"
    getattribute $P361, $P359, $P360, "$!target"
    store_lex "$target", $P361
.annotate 'line', 326
    find_lex $P362, "@args"
    unless_null $P362, vivify_455
    $P362 = root_new ['parrot';'ResizablePMCArray']
  vivify_455:
    $P362."push"(" at line ")
.annotate 'line', 327
    find_lex $P363, "@args"
    unless_null $P363, vivify_456
    $P363 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    get_hll_global $P364, ["HLL"], "Compiler"
    find_lex $P365, "$target"
    unless_null $P365, vivify_457
    new $P365, "Undef"
  vivify_457:
    find_lex $P366, "$pos"
    unless_null $P366, vivify_458
    new $P366, "Undef"
  vivify_458:
    $P367 = $P364."lineof"($P365, $P366)
    add $P368, $P367, 1
    $P363."push"($P368)
.annotate 'line', 328
    find_lex $P369, "@args"
    unless_null $P369, vivify_459
    $P369 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
    $P369."push"(", near \"")
.annotate 'line', 329
    find_lex $P370, "@args"
    unless_null $P370, vivify_460
    $P370 = root_new ['parrot';'ResizablePMCArray']
  vivify_460:
    find_lex $P371, "$target"
    unless_null $P371, vivify_461
    new $P371, "Undef"
  vivify_461:
    set $S372, $P371
    find_lex $P373, "$pos"
    unless_null $P373, vivify_462
    new $P373, "Undef"
  vivify_462:
    set $I374, $P373
    substr $S375, $S372, $I374, 10
    escape $S376, $S375
    $P370."push"($S376)
.annotate 'line', 330
    find_lex $P377, "@args"
    unless_null $P377, vivify_463
    $P377 = root_new ['parrot';'ResizablePMCArray']
  vivify_463:
    $P377."push"("\"")
.annotate 'line', 331
    find_lex $P378, "@args"
    unless_null $P378, vivify_464
    $P378 = root_new ['parrot';'ResizablePMCArray']
  vivify_464:
    join $S379, "", $P378
    die $S379
.annotate 'line', 323
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_381
    .param pmc param_382
    .param pmc param_383
.annotate 'line', 344
    .lex "self", param_381
    .lex "$target", param_382
    .lex "$pos", param_383
.annotate 'line', 345

            .local pmc self
            self = find_lex 'self'
            .local string target
            $P0 = find_lex '$target'
            target = $P0
            .local int pos
            $P0 = find_lex '$pos'
            pos = $P0

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
        
.annotate 'line', 344
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR"  :subid("108_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_385
    .param pmc param_386 :slurpy
.annotate 'line', 406
    .lex "self", param_385
    .lex "@args", param_386
.annotate 'line', 407

            .include 'src/Regex/constants.pir'
            
            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'
            args = find_lex '@args'

            .local pmc cur, debug
            .local string target
            .local int pos

            (cur, pos, target) = self.'!cursor_start'()
            debug = getattribute cur, cur_class, '$!debug'
            if null debug goto debug_1
            cur.'!cursor_debug'('START', 'quote_EXPR')
          debug_1:

            .local pmc quotemod, true
            .lex '%*QUOTEMOD', quotemod
            quotemod = new ['Hash']

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
            (start, stop) = self.'peek_delimiters'(target, pos)

            .lex '$*QUOTE_START', start
            .lex '$*QUOTE_STOP', stop

            $P10 = cur.'quote_delimited'()
            unless $P10 goto fail
            cur.'!mark_push'(0, CURSOR_FAIL, 0, $P10)
            $P10.'!cursor_names'('quote_delimited')
            pos = $P10.'pos'()
            cur.'!cursor_pass'(pos, 'quote_EXPR')
            if null debug goto done
            cur.'!cursor_debug'('PASS', 'quote_EXPR')
            goto done
          fail:
            if null debug goto done
            cur.'!cursor_debug'('FAIL', 'quote_EXPR')
          done:
            .return (cur)
        
.annotate 'line', 406
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check" :nsentry :subid("109_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_388
    .param pmc param_389
.annotate 'line', 477
    .lex "self", param_388
    .lex "$mod", param_389
    find_lex $P390, "$mod"
    unless_null $P390, vivify_465
    new $P390, "Undef"
  vivify_465:
    find_dynamic_lex $P391, "%*QUOTEMOD"
    unless_null $P391, vivify_466
    get_hll_global $P391, "%QUOTEMOD"
    unless_null $P391, vivify_467
    die "Contextual %*QUOTEMOD not found"
  vivify_467:
  vivify_466:
    set $P392, $P391[$P390]
    unless_null $P392, vivify_468
    new $P392, "Undef"
  vivify_468:
    .return ($P392)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_394
.annotate 'line', 481
    .lex "self", param_394
.annotate 'line', 482

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

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
        
.annotate 'line', 481
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper"  :subid("111_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_396
.annotate 'line', 504
    .lex "self", param_396
.annotate 'line', 505

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

            (cur, pos, target) = self.'!cursor_start'()

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
        
.annotate 'line', 504
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words" :nsentry :subid("112_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_398
    .param pmc param_399
.annotate 'line', 527
    .lex "self", param_398
    .lex "$words", param_399
.annotate 'line', 528

            .local string words
            $P0 = find_lex '$words'
            words = $P0
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
        
.annotate 'line', 527
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR"  :subid("113_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_401
    .param pmc param_402 :optional
    .param int has_param_402 :opt_flag
.annotate 'line', 559
    .lex "self", param_401
    if has_param_402, optparam_469
    new $P403, "String"
    assign $P403, ""
    set param_402, $P403
  optparam_469:
    .lex "$preclim", param_402
.annotate 'line', 560

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here, debug
            .local int pos
            (here, pos) = self.'!cursor_start'()
            debug = getattribute here, cur_class, '$!debug'
            if null debug goto debug_1
            here.'!cursor_debug'('START', 'EXPR')
          debug_1:

            .const 'Sub' reduce = 'EXPR_reduce'
            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            here = here.termishrx()
            unless here goto fail
            .local pmc termish
            termish = here.'MATCH'()

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
            .local pmc infixcur, infix
            here = here.'ws'()
            infixcur = here.'infixish'()
            unless infixcur goto term_done
            infix = infixcur.'MATCH'()

            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec <= preclim goto term_done
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
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            capture_lex reduce
            self.reduce(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start'()
            repr_bind_attr_int here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            if null debug goto done
            here.'!cursor_debug'('PASS', 'EXPR')
            goto done

          fail:
            if null debug goto done
            here.'!cursor_debug'('FAIL', 'EXPR')
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        
.annotate 'line', 559
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce"  :subid("114_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_405
    .param pmc param_406
    .param pmc param_407
.annotate 'line', 737
    .lex "self", param_405
    .lex "$termstack", param_406
    .lex "$opstack", param_407
.annotate 'line', 738

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            opOPER = op['OPER']
            opO = opOPER['O']
            opassoc = opO['assoc']
            if opassoc == 'unary' goto op_unary
            if opassoc == 'list' goto op_list
          op_infix:
            .local pmc right, left
            right = pop termstack
            left = pop termstack
            op[0] = left
            op[1] = right
            $S0 = opO['reducecheck']
            unless $S0 goto op_infix_1
            self.$S0(op)
          op_infix_1:
            self.'!reduce'('EXPR', 'INFIX', op)
            goto done

          op_unary:
            .local pmc arg, afrom, ofrom
            arg = pop termstack
            op[0] = arg
            afrom = arg.'from'()
            ofrom = op.'from'()
            if afrom < ofrom goto op_postfix
          op_prefix:
            self.'!reduce'('EXPR', 'PREFIX', op)
            goto done
          op_postfix:
            self.'!reduce'('EXPR', 'POSTFIX', op)
            goto done

          op_list:
            .local string sym
            sym = opOPER['sym']
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $S0 = $P0['sym']
            if sym != $S0 goto op_sym_done
            arg = pop termstack
            unshift op, arg
            $P0 = pop opstack
            goto op_sym_loop
          op_sym_done:
            arg = pop termstack
            unshift op, arg
            self.'!reduce'('EXPR', 'LIST', op)
            goto done

          done:
            push termstack, op
        
.annotate 'line', 737
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary"  :subid("115_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_409
    .param pmc param_410
.annotate 'line', 805
    .lex "self", param_409
    .lex "$match", param_410
.annotate 'line', 806
    find_lex $P411, "$match"
    unless_null $P411, vivify_470
    $P411 = root_new ['parrot';'ResizablePMCArray']
  vivify_470:
    set $P412, $P411[1]
    unless_null $P412, vivify_471
    new $P412, "Undef"
  vivify_471:
    find_lex $P413, "$match"
    unless_null $P413, vivify_472
    $P413 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P413
  vivify_472:
    set $P413[2], $P412
.annotate 'line', 807
    find_lex $P414, "$match"
    unless_null $P414, vivify_473
    $P414 = root_new ['parrot';'Hash']
  vivify_473:
    set $P415, $P414["infix"]
    unless_null $P415, vivify_474
    $P415 = root_new ['parrot';'Hash']
  vivify_474:
    set $P416, $P415["EXPR"]
    unless_null $P416, vivify_475
    new $P416, "Undef"
  vivify_475:
    find_lex $P417, "$match"
    unless_null $P417, vivify_476
    $P417 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P417
  vivify_476:
    set $P417[1], $P416
.annotate 'line', 805
    .return ($P416)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_419
    .param pmc param_420
.annotate 'line', 810
    .lex "self", param_419
    .lex "$markname", param_420
.annotate 'line', 811
    new $P421, "Undef"
    .lex "$pos", $P421
.annotate 'line', 813
    $P422 = root_new ['parrot';'Hash']
    .lex "%markhash", $P422
.annotate 'line', 811
    find_lex $P423, "self"
    $P424 = $P423."pos"()
    store_lex "$pos", $P424
.annotate 'line', 812
    find_lex $P425, "self"
    find_lex $P426, "$markname"
    unless_null $P426, vivify_477
    new $P426, "Undef"
  vivify_477:
    find_lex $P427, "$pos"
    unless_null $P427, vivify_478
    new $P427, "Undef"
  vivify_478:
    $P425."!cursor_debug"("START", "MARKER name=", $P426, ", pos=", $P427)
.annotate 'line', 813

            $P428 = get_global '%!MARKHASH'
            unless null $P428 goto have_markhash
            $P428 = new ['Hash']
            set_global '%!MARKHASH', $P428
          have_markhash:
        
    store_lex "%markhash", $P428
.annotate 'line', 820
    find_lex $P429, "$pos"
    unless_null $P429, vivify_479
    new $P429, "Undef"
  vivify_479:
    find_lex $P430, "$markname"
    unless_null $P430, vivify_480
    new $P430, "Undef"
  vivify_480:
    find_lex $P431, "%markhash"
    unless_null $P431, vivify_481
    $P431 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P431
  vivify_481:
    set $P431[$P430], $P429
.annotate 'line', 821
    find_lex $P432, "self"
    $P432."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 810
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_434
    .param pmc param_435
.annotate 'line', 825
    .lex "self", param_434
    .lex "$markname", param_435
.annotate 'line', 826
    find_lex $P436, "self"
    find_lex $P437, "$markname"
    unless_null $P437, vivify_482
    new $P437, "Undef"
  vivify_482:
    $P436."!cursor_debug"("START", "MARKED name=", $P437)
.annotate 'line', 827

            .local pmc self, markname, markhash
            self = find_lex 'self'
            markname = find_lex '$markname'
            markhash = get_global '%!MARKHASH'
            if null markhash goto fail
            $P0 = markhash[markname]
            if null $P0 goto fail
            $P1 = self.'pos'()
            unless $P0 == $P1 goto fail
            self.'!cursor_debug'('PASS','MARKED')
            .return (1)
          fail:
            self.'!cursor_debug'('FAIL','MARKED')
            .return (0)
        
.annotate 'line', 825
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG"  :subid("118_1303391590.341") :outer("11_1303391590.341")
    .param pmc param_439
    .param pmc param_440
    .param pmc param_441
.annotate 'line', 845
    .lex "self", param_439
    .lex "$lang", param_440
    .lex "$regex", param_441
.annotate 'line', 846
    new $P442, "Undef"
    .lex "$lang_cursor", $P442
.annotate 'line', 847
    new $P443, "Undef"
    .lex "$*ACTIONS", $P443
.annotate 'line', 848
    new $P444, "Undef"
    .lex "$cur", $P444
.annotate 'line', 846
    find_lex $P445, "$lang"
    unless_null $P445, vivify_483
    new $P445, "Undef"
  vivify_483:
    find_dynamic_lex $P446, "%*LANG"
    unless_null $P446, vivify_484
    get_hll_global $P446, "%LANG"
    unless_null $P446, vivify_485
    die "Contextual %*LANG not found"
  vivify_485:
  vivify_484:
    set $P447, $P446[$P445]
    unless_null $P447, vivify_486
    new $P447, "Undef"
  vivify_486:
    store_lex "$lang_cursor", $P447
.annotate 'line', 847
    find_lex $P448, "$lang"
    unless_null $P448, vivify_487
    new $P448, "Undef"
  vivify_487:
    concat $P449, $P448, "-actions"
    find_dynamic_lex $P450, "%*LANG"
    unless_null $P450, vivify_488
    get_hll_global $P450, "%LANG"
    unless_null $P450, vivify_489
    die "Contextual %*LANG not found"
  vivify_489:
  vivify_488:
    set $P451, $P450[$P449]
    unless_null $P451, vivify_490
    new $P451, "Undef"
  vivify_490:
    store_lex "$*ACTIONS", $P451
.annotate 'line', 848

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P452, pos) = self.'!cursor_start'($P0)
            $P452.'!cursor_pos'(pos)
        
    store_lex "$cur", $P452
.annotate 'line', 856
    find_lex $P453, "$cur"
    unless_null $P453, vivify_491
    new $P453, "Undef"
  vivify_491:
    find_lex $P454, "$regex"
    unless_null $P454, vivify_492
    new $P454, "Undef"
  vivify_492:
    set $S455, $P454
    $P456 = $P453.$S455()
.annotate 'line', 845
    .return ($P456)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block671"  :subid("120_1303391590.341") :outer("10_1303391590.341")
.annotate 'line', 861
    .const 'Sub' $P1320 = "166_1303391590.341" 
    capture_lex $P1320
    .const 'Sub' $P1301 = "165_1303391590.341" 
    capture_lex $P1301
    .const 'Sub' $P1278 = "163_1303391590.341" 
    capture_lex $P1278
    .const 'Sub' $P1250 = "162_1303391590.341" 
    capture_lex $P1250
    .const 'Sub' $P1233 = "161_1303391590.341" 
    capture_lex $P1233
    .const 'Sub' $P1228 = "160_1303391590.341" 
    capture_lex $P1228
    .const 'Sub' $P1220 = "159_1303391590.341" 
    capture_lex $P1220
    .const 'Sub' $P1205 = "158_1303391590.341" 
    capture_lex $P1205
    .const 'Sub' $P1190 = "157_1303391590.341" 
    capture_lex $P1190
    .const 'Sub' $P1185 = "156_1303391590.341" 
    capture_lex $P1185
    .const 'Sub' $P1180 = "155_1303391590.341" 
    capture_lex $P1180
    .const 'Sub' $P1175 = "154_1303391590.341" 
    capture_lex $P1175
    .const 'Sub' $P1170 = "153_1303391590.341" 
    capture_lex $P1170
    .const 'Sub' $P1165 = "152_1303391590.341" 
    capture_lex $P1165
    .const 'Sub' $P1160 = "151_1303391590.341" 
    capture_lex $P1160
    .const 'Sub' $P1152 = "150_1303391590.341" 
    capture_lex $P1152
    .const 'Sub' $P1147 = "149_1303391590.341" 
    capture_lex $P1147
    .const 'Sub' $P1133 = "148_1303391590.341" 
    capture_lex $P1133
    .const 'Sub' $P1060 = "146_1303391590.341" 
    capture_lex $P1060
    .const 'Sub' $P999 = "143_1303391590.341" 
    capture_lex $P999
    .const 'Sub' $P992 = "142_1303391590.341" 
    capture_lex $P992
    .const 'Sub' $P985 = "141_1303391590.341" 
    capture_lex $P985
    .const 'Sub' $P978 = "140_1303391590.341" 
    capture_lex $P978
    .const 'Sub' $P971 = "139_1303391590.341" 
    capture_lex $P971
    .const 'Sub' $P964 = "138_1303391590.341" 
    capture_lex $P964
    .const 'Sub' $P956 = "137_1303391590.341" 
    capture_lex $P956
    .const 'Sub' $P948 = "136_1303391590.341" 
    capture_lex $P948
    .const 'Sub' $P942 = "135_1303391590.341" 
    capture_lex $P942
    .const 'Sub' $P934 = "134_1303391590.341" 
    capture_lex $P934
    .const 'Sub' $P926 = "133_1303391590.341" 
    capture_lex $P926
    .const 'Sub' $P821 = "130_1303391590.341" 
    capture_lex $P821
    .const 'Sub' $P785 = "127_1303391590.341" 
    capture_lex $P785
    .const 'Sub' $P780 = "126_1303391590.341" 
    capture_lex $P780
    .const 'Sub' $P743 = "123_1303391590.341" 
    capture_lex $P743
    .const 'Sub' $P673 = "121_1303391590.341" 
    capture_lex $P673
.annotate 'line', 862
    .const 'Sub' $P673 = "121_1303391590.341" 
    newclosure $P741, $P673
    .lex "string_to_int", $P741
.annotate 'line', 861
    find_lex $P742, "string_to_int"
    set_global "string_to_int", $P742
.annotate 'line', 881
    .const 'Sub' $P743 = "123_1303391590.341" 
    newclosure $P774, $P743
    .lex "ints_to_string", $P774
.annotate 'line', 861
    find_lex $P775, "ints_to_string"
    set_global "ints_to_string", $P775
    .lex "$?PACKAGE", $P776
    .lex "$?CLASS", $P777
    find_lex $P778, "string_to_int"
    find_lex $P779, "ints_to_string"
.annotate 'line', 1052
    .const 'Sub' $P1301 = "165_1303391590.341" 
    newclosure $P1316, $P1301
.annotate 'line', 861
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post493") :outer("120_1303391590.341")
.annotate 'line', 861
    get_hll_global $P672, ["HLL";"Actions"], "_block671" 
    .local pmc block
    set block, $P672
    .const 'Sub' $P1317 = "121_1303391590.341" 
    set_global "string_to_int", $P1317
    .const 'Sub' $P1318 = "123_1303391590.341" 
    set_global "ints_to_string", $P1318
    .const 'Sub' $P1320 = "166_1303391590.341" 
    capture_lex $P1320
    $P1320()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1319"  :anon :subid("166_1303391590.341") :outer("120_1303391590.341")
.annotate 'line', 861
    nqp_get_sc_object $P1321, "1303391582.588", 2
    .local pmc type_obj
    set type_obj, $P1321
    get_how $P1322, type_obj
    .const 'Sub' $P1323 = "126_1303391590.341" 
    $P1322."add_method"(type_obj, "CTXSAVE", $P1323)
    get_how $P1324, type_obj
    .const 'Sub' $P1325 = "127_1303391590.341" 
    $P1324."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1325)
    get_how $P1326, type_obj
    .const 'Sub' $P1327 = "130_1303391590.341" 
    $P1326."add_method"(type_obj, "EXPR", $P1327)
    get_how $P1328, type_obj
    .const 'Sub' $P1329 = "133_1303391590.341" 
    $P1328."add_method"(type_obj, "term:sym<circumfix>", $P1329)
    get_how $P1330, type_obj
    .const 'Sub' $P1331 = "134_1303391590.341" 
    $P1330."add_method"(type_obj, "termish", $P1331)
    get_how $P1332, type_obj
    .const 'Sub' $P1333 = "135_1303391590.341" 
    $P1332."add_method"(type_obj, "nullterm", $P1333)
    get_how $P1334, type_obj
    .const 'Sub' $P1335 = "136_1303391590.341" 
    $P1334."add_method"(type_obj, "nullterm_alt", $P1335)
    get_how $P1336, type_obj
    .const 'Sub' $P1337 = "137_1303391590.341" 
    $P1336."add_method"(type_obj, "integer", $P1337)
    get_how $P1338, type_obj
    .const 'Sub' $P1339 = "138_1303391590.341" 
    $P1338."add_method"(type_obj, "dec_number", $P1339)
    get_how $P1340, type_obj
    .const 'Sub' $P1341 = "139_1303391590.341" 
    $P1340."add_method"(type_obj, "decint", $P1341)
    get_how $P1342, type_obj
    .const 'Sub' $P1343 = "140_1303391590.341" 
    $P1342."add_method"(type_obj, "hexint", $P1343)
    get_how $P1344, type_obj
    .const 'Sub' $P1345 = "141_1303391590.341" 
    $P1344."add_method"(type_obj, "octint", $P1345)
    get_how $P1346, type_obj
    .const 'Sub' $P1347 = "142_1303391590.341" 
    $P1346."add_method"(type_obj, "binint", $P1347)
    get_how $P1348, type_obj
    .const 'Sub' $P1349 = "143_1303391590.341" 
    $P1348."add_method"(type_obj, "quote_EXPR", $P1349)
    get_how $P1350, type_obj
    .const 'Sub' $P1351 = "146_1303391590.341" 
    $P1350."add_method"(type_obj, "quote_delimited", $P1351)
    get_how $P1352, type_obj
    .const 'Sub' $P1353 = "148_1303391590.341" 
    $P1352."add_method"(type_obj, "quote_atom", $P1353)
    get_how $P1354, type_obj
    .const 'Sub' $P1355 = "149_1303391590.341" 
    $P1354."add_method"(type_obj, "quote_escape:sym<backslash>", $P1355)
    get_how $P1356, type_obj
    .const 'Sub' $P1357 = "150_1303391590.341" 
    $P1356."add_method"(type_obj, "quote_escape:sym<stopper>", $P1357)
    get_how $P1358, type_obj
    .const 'Sub' $P1359 = "151_1303391590.341" 
    $P1358."add_method"(type_obj, "quote_escape:sym<bs>", $P1359)
    get_how $P1360, type_obj
    .const 'Sub' $P1361 = "152_1303391590.341" 
    $P1360."add_method"(type_obj, "quote_escape:sym<nl>", $P1361)
    get_how $P1362, type_obj
    .const 'Sub' $P1363 = "153_1303391590.341" 
    $P1362."add_method"(type_obj, "quote_escape:sym<cr>", $P1363)
    get_how $P1364, type_obj
    .const 'Sub' $P1365 = "154_1303391590.341" 
    $P1364."add_method"(type_obj, "quote_escape:sym<tab>", $P1365)
    get_how $P1366, type_obj
    .const 'Sub' $P1367 = "155_1303391590.341" 
    $P1366."add_method"(type_obj, "quote_escape:sym<ff>", $P1367)
    get_how $P1368, type_obj
    .const 'Sub' $P1369 = "156_1303391590.341" 
    $P1368."add_method"(type_obj, "quote_escape:sym<esc>", $P1369)
    get_how $P1370, type_obj
    .const 'Sub' $P1371 = "157_1303391590.341" 
    $P1370."add_method"(type_obj, "quote_escape:sym<hex>", $P1371)
    get_how $P1372, type_obj
    .const 'Sub' $P1373 = "158_1303391590.341" 
    $P1372."add_method"(type_obj, "quote_escape:sym<oct>", $P1373)
    get_how $P1374, type_obj
    .const 'Sub' $P1375 = "159_1303391590.341" 
    $P1374."add_method"(type_obj, "quote_escape:sym<chr>", $P1375)
    get_how $P1376, type_obj
    .const 'Sub' $P1377 = "160_1303391590.341" 
    $P1376."add_method"(type_obj, "quote_escape:sym<0>", $P1377)
    get_how $P1378, type_obj
    .const 'Sub' $P1379 = "161_1303391590.341" 
    $P1378."add_method"(type_obj, "quote_escape:sym<misc>", $P1379)
    get_how $P1380, type_obj
    .const 'Sub' $P1381 = "162_1303391590.341" 
    $P1380."add_method"(type_obj, "charname", $P1381)
    get_how $P1382, type_obj
    .const 'Sub' $P1383 = "163_1303391590.341" 
    $P1382."add_method"(type_obj, "charnames", $P1383)
    get_how $P1384, type_obj
    .const 'Sub' $P1385 = "165_1303391590.341" 
    $P1384."add_method"(type_obj, "charspec", $P1385)
    get_how $P1386, type_obj
    $P1387 = $P1386."compose"(type_obj)
    .return ($P1387)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_674
    .param pmc param_675
.annotate 'line', 862
    .const 'Sub' $P691 = "122_1303391590.341" 
    capture_lex $P691
    .lex "$src", param_674
    .lex "$base", param_675
.annotate 'line', 863
    new $P676, "Undef"
    .lex "$len", $P676
.annotate 'line', 864
    new $P677, "Undef"
    .lex "$i", $P677
.annotate 'line', 865
    new $P678, "Undef"
    .lex "$result", $P678
.annotate 'line', 863
    find_lex $P679, "$src"
    unless_null $P679, vivify_494
    new $P679, "Undef"
  vivify_494:
    set $S680, $P679
    length $I681, $S680
    new $P682, 'Integer'
    set $P682, $I681
    store_lex "$len", $P682
.annotate 'line', 864
    new $P683, "Integer"
    assign $P683, 0
    store_lex "$i", $P683
.annotate 'line', 865
    new $P684, "Integer"
    assign $P684, 0
    store_lex "$result", $P684
.annotate 'line', 867
    new $P738, 'ExceptionHandler'
    set_label $P738, loop737_handler
    $P738."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P738
  loop737_test:
    find_lex $P685, "$i"
    unless_null $P685, vivify_495
    new $P685, "Undef"
  vivify_495:
    set $N686, $P685
    find_lex $P687, "$len"
    unless_null $P687, vivify_496
    new $P687, "Undef"
  vivify_496:
    set $N688, $P687
    islt $I689, $N686, $N688
    unless $I689, loop737_done
  loop737_redo:
    .const 'Sub' $P691 = "122_1303391590.341" 
    capture_lex $P691
    $P691()
  loop737_next:
    goto loop737_test
  loop737_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P739, exception, 'type'
    eq $P739, .CONTROL_LOOP_NEXT, loop737_next
    eq $P739, .CONTROL_LOOP_REDO, loop737_redo
  loop737_done:
    pop_eh 
    find_lex $P740, "$result"
    unless_null $P740, vivify_511
    new $P740, "Undef"
  vivify_511:
.annotate 'line', 862
    .return ($P740)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block690"  :anon :subid("122_1303391590.341") :outer("121_1303391590.341")
.annotate 'line', 868
    new $P692, "Undef"
    .lex "$char", $P692
.annotate 'line', 870
    new $P693, "Undef"
    .lex "$digitval", $P693
.annotate 'line', 868
    find_lex $P694, "$src"
    unless_null $P694, vivify_497
    new $P694, "Undef"
  vivify_497:
    set $S695, $P694
    find_lex $P696, "$i"
    unless_null $P696, vivify_498
    new $P696, "Undef"
  vivify_498:
    set $I697, $P696
    substr $S698, $S695, $I697, 1
    new $P699, 'String'
    set $P699, $S698
    store_lex "$char", $P699
.annotate 'line', 869
    find_lex $P701, "$char"
    unless_null $P701, vivify_499
    new $P701, "Undef"
  vivify_499:
    set $S702, $P701
    iseq $I703, $S702, "_"
    unless $I703, if_700_end
    set $I704, .CONTROL_LOOP_NEXT
    die 0, $I704
  if_700_end:
.annotate 'line', 870
    find_lex $P705, "$char"
    unless_null $P705, vivify_500
    new $P705, "Undef"
  vivify_500:
    set $S706, $P705
    index $I707, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S706
    new $P708, 'Integer'
    set $P708, $I707
    store_lex "$digitval", $P708
.annotate 'line', 871
    find_lex $P709, "$digitval"
    unless_null $P709, vivify_501
    new $P709, "Undef"
  vivify_501:
    div $P710, $P709, 2
    set $I711, $P710
    new $P712, 'Integer'
    set $P712, $I711
    store_lex "$digitval", $P712
.annotate 'line', 872
    find_lex $P716, "$digitval"
    unless_null $P716, vivify_502
    new $P716, "Undef"
  vivify_502:
    set $N717, $P716
    islt $I718, $N717, 0.0
    unless $I718, unless_715
    new $P714, 'Integer'
    set $P714, $I718
    goto unless_715_end
  unless_715:
    find_lex $P719, "$digitval"
    unless_null $P719, vivify_503
    new $P719, "Undef"
  vivify_503:
    set $N720, $P719
    find_lex $P721, "$base"
    unless_null $P721, vivify_504
    new $P721, "Undef"
  vivify_504:
    set $N722, $P721
    isge $I723, $N720, $N722
    new $P714, 'Integer'
    set $P714, $I723
  unless_715_end:
    unless $P714, if_713_end
.annotate 'line', 873
    find_lex $P724, "$src"
    unless_null $P724, vivify_505
    new $P724, "Undef"
  vivify_505:
    new $P725, 'String'
    set $P725, "Invalid radix conversion of character '"
    find_lex $P726, "$char"
    unless_null $P726, vivify_506
    new $P726, "Undef"
  vivify_506:
    concat $P727, $P725, $P726
    concat $P728, $P727, "'"
    $P724."panic"($P728)
  if_713_end:
.annotate 'line', 875
    find_lex $P729, "$base"
    unless_null $P729, vivify_507
    new $P729, "Undef"
  vivify_507:
    find_lex $P730, "$result"
    unless_null $P730, vivify_508
    new $P730, "Undef"
  vivify_508:
    mul $P731, $P729, $P730
    find_lex $P732, "$digitval"
    unless_null $P732, vivify_509
    new $P732, "Undef"
  vivify_509:
    add $P733, $P731, $P732
    store_lex "$result", $P733
.annotate 'line', 876
    find_lex $P734, "$i"
    unless_null $P734, vivify_510
    new $P734, "Undef"
  vivify_510:
    add $P735, $P734, 1
    store_lex "$i", $P735
    new $P736, "ResizablePMCArray"
    push $P736, $P733
    push $P736, $P735
.annotate 'line', 867
    .return ($P736)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("123_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_744
.annotate 'line', 881
    .const 'Sub' $P750 = "124_1303391590.341" 
    capture_lex $P750
    .lex "$ints", param_744
.annotate 'line', 882
    find_lex $P747, "$ints"
    unless_null $P747, vivify_512
    new $P747, "Undef"
  vivify_512:
    does $I748, $P747, "array"
    if $I748, if_746
.annotate 'line', 889
    find_lex $P770, "$ints"
    unless_null $P770, vivify_513
    new $P770, "Undef"
  vivify_513:
    $I771 = $P770."ast"()
    chr $S772, $I771
    new $P773, 'String'
    set $P773, $S772
.annotate 'line', 888
    set $P745, $P773
.annotate 'line', 882
    goto if_746_end
  if_746:
    .const 'Sub' $P750 = "124_1303391590.341" 
    capture_lex $P750
    $P769 = $P750()
    set $P745, $P769
  if_746_end:
.annotate 'line', 881
    .return ($P745)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block749"  :anon :subid("124_1303391590.341") :outer("123_1303391590.341")
.annotate 'line', 882
    .const 'Sub' $P758 = "125_1303391590.341" 
    capture_lex $P758
.annotate 'line', 883
    new $P751, "Undef"
    .lex "$result", $P751
    new $P752, "String"
    assign $P752, ""
    store_lex "$result", $P752
.annotate 'line', 884
    find_lex $P754, "$ints"
    unless_null $P754, vivify_514
    new $P754, "Undef"
  vivify_514:
    defined $I755, $P754
    unless $I755, for_undef_515
    iter $P753, $P754
    new $P766, 'ExceptionHandler'
    set_label $P766, loop765_handler
    $P766."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P766
  loop765_test:
    unless $P753, loop765_done
    shift $P756, $P753
  loop765_redo:
    .const 'Sub' $P758 = "125_1303391590.341" 
    capture_lex $P758
    $P758($P756)
  loop765_next:
    goto loop765_test
  loop765_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P767, exception, 'type'
    eq $P767, .CONTROL_LOOP_NEXT, loop765_next
    eq $P767, .CONTROL_LOOP_REDO, loop765_redo
  loop765_done:
    pop_eh 
  for_undef_515:
    find_lex $P768, "$result"
    unless_null $P768, vivify_518
    new $P768, "Undef"
  vivify_518:
.annotate 'line', 882
    .return ($P768)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block757"  :anon :subid("125_1303391590.341") :outer("124_1303391590.341")
    .param pmc param_759
.annotate 'line', 884
    .lex "$_", param_759
.annotate 'line', 885
    find_lex $P760, "$result"
    unless_null $P760, vivify_516
    new $P760, "Undef"
  vivify_516:
    find_lex $P761, "$_"
    unless_null $P761, vivify_517
    new $P761, "Undef"
  vivify_517:
    $I762 = $P761."ast"()
    chr $S763, $I762
    concat $P764, $P760, $S763
    store_lex "$result", $P764
.annotate 'line', 884
    .return ($P764)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_781
.annotate 'line', 894
    .lex "self", param_781
.annotate 'line', 895
    get_hll_global $P782, ["PAST"], "Op"
.annotate 'line', 901
    new $P783, "ResizablePMCArray"
    push $P783, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P783, "    if null $P0 goto ctxsave_done"
    push $P783, "    $I0 = can $P0, \"ctxsave\""
    push $P783, "    unless $I0 goto ctxsave_done"
    push $P783, "    $P0.\"ctxsave\"()"
    push $P783, "  ctxsave_done:"
    $P784 = $P782."new"($P783 :named("inline"))
.annotate 'line', 894
    .return ($P784)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_786
    .param pmc param_787
.annotate 'line', 908
    .const 'Sub' $P797 = "128_1303391590.341" 
    capture_lex $P797
    .lex "self", param_786
    .lex "$block", param_787
.annotate 'line', 909
    new $P788, "Undef"
    .lex "$outer_ctx", $P788
    find_dynamic_lex $P789, "%*COMPILING"
    unless_null $P789, vivify_519
    get_hll_global $P789, "%COMPILING"
    unless_null $P789, vivify_520
    die "Contextual %*COMPILING not found"
  vivify_520:
  vivify_519:
    set $P790, $P789["%?OPTIONS"]
    unless_null $P790, vivify_521
    $P790 = root_new ['parrot';'Hash']
  vivify_521:
    set $P791, $P790["outer_ctx"]
    unless_null $P791, vivify_522
    new $P791, "Undef"
  vivify_522:
    store_lex "$outer_ctx", $P791
.annotate 'line', 910
    find_lex $P794, "$outer_ctx"
    unless_null $P794, vivify_523
    new $P794, "Undef"
  vivify_523:
    defined $I795, $P794
    if $I795, if_793
    new $P792, 'Integer'
    set $P792, $I795
    goto if_793_end
  if_793:
    .const 'Sub' $P797 = "128_1303391590.341" 
    capture_lex $P797
    $P820 = $P797()
    set $P792, $P820
  if_793_end:
.annotate 'line', 908
    .return ($P792)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block796"  :anon :subid("128_1303391590.341") :outer("127_1303391590.341")
.annotate 'line', 910
    .const 'Sub' $P811 = "129_1303391590.341" 
    capture_lex $P811
.annotate 'line', 911
    $P798 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P798
    find_lex $P799, "$outer_ctx"
    unless_null $P799, vivify_524
    new $P799, "Undef"
  vivify_524:
    getattribute $P800, $P799, "current_namespace"
    $P801 = $P800."get_name"()
    store_lex "@ns", $P801
.annotate 'line', 912
    find_lex $P802, "@ns"
    unless_null $P802, vivify_525
    $P802 = root_new ['parrot';'ResizablePMCArray']
  vivify_525:
    $P802."shift"()
.annotate 'line', 913
    find_lex $P803, "$block"
    unless_null $P803, vivify_526
    new $P803, "Undef"
  vivify_526:
    find_lex $P804, "@ns"
    unless_null $P804, vivify_527
    $P804 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    $P803."namespace"($P804)
.annotate 'line', 914
    find_lex $P806, "$outer_ctx"
    unless_null $P806, vivify_528
    new $P806, "Undef"
  vivify_528:
    $P807 = $P806."lexpad_full"()
    defined $I808, $P807
    unless $I808, for_undef_529
    iter $P805, $P807
    new $P818, 'ExceptionHandler'
    set_label $P818, loop817_handler
    $P818."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P818
  loop817_test:
    unless $P805, loop817_done
    shift $P809, $P805
  loop817_redo:
    .const 'Sub' $P811 = "129_1303391590.341" 
    capture_lex $P811
    $P811($P809)
  loop817_next:
    goto loop817_test
  loop817_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P819, exception, 'type'
    eq $P819, .CONTROL_LOOP_NEXT, loop817_next
    eq $P819, .CONTROL_LOOP_REDO, loop817_redo
  loop817_done:
    pop_eh 
  for_undef_529:
.annotate 'line', 910
    .return ($P805)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block810"  :anon :subid("129_1303391590.341") :outer("128_1303391590.341")
    .param pmc param_812
.annotate 'line', 914
    .lex "$_", param_812
.annotate 'line', 915
    find_lex $P813, "$block"
    unless_null $P813, vivify_530
    new $P813, "Undef"
  vivify_530:
    find_lex $P814, "$_"
    unless_null $P814, vivify_531
    new $P814, "Undef"
  vivify_531:
    $P815 = $P814."key"()
    $P816 = $P813."symbol"($P815, "lexical" :named("scope"))
.annotate 'line', 914
    .return ($P816)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_824
    .param pmc param_825
    .param pmc param_826 :optional
    .param int has_param_826 :opt_flag
.annotate 'line', 921
    .const 'Sub' $P908 = "132_1303391590.341" 
    capture_lex $P908
    .const 'Sub' $P872 = "131_1303391590.341" 
    capture_lex $P872
    new $P823, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P823, control_822
    push_eh $P823
    .lex "self", param_824
    .lex "$/", param_825
    if has_param_826, optparam_532
    new $P827, "Undef"
    set param_826, $P827
  optparam_532:
    .lex "$key", param_826
.annotate 'line', 923
    new $P828, "Undef"
    .lex "$past", $P828
.annotate 'line', 922
    find_lex $P830, "$key"
    unless_null $P830, vivify_533
    new $P830, "Undef"
  vivify_533:
    if $P830, unless_829_end
    new $P831, "Exception"
    set $P831['type'], .CONTROL_RETURN
    new $P832, "Integer"
    assign $P832, 0
    setattribute $P831, 'payload', $P832
    throw $P831
  unless_829_end:
.annotate 'line', 923
    find_lex $P834, "$/"
    unless_null $P834, vivify_534
    new $P834, "Undef"
  vivify_534:
    $P835 = $P834."ast"()
    set $P833, $P835
    defined $I837, $P833
    if $I837, default_836
    find_lex $P838, "$/"
    unless_null $P838, vivify_535
    $P838 = root_new ['parrot';'Hash']
  vivify_535:
    set $P839, $P838["OPER"]
    unless_null $P839, vivify_536
    new $P839, "Undef"
  vivify_536:
    $P840 = $P839."ast"()
    set $P833, $P840
  default_836:
    store_lex "$past", $P833
.annotate 'line', 924
    find_lex $P842, "$past"
    unless_null $P842, vivify_537
    new $P842, "Undef"
  vivify_537:
    if $P842, unless_841_end
.annotate 'line', 925
    get_hll_global $P843, ["PAST"], "Op"
    find_lex $P844, "$/"
    unless_null $P844, vivify_538
    new $P844, "Undef"
  vivify_538:
    $P845 = $P843."new"($P844 :named("node"))
    store_lex "$past", $P845
.annotate 'line', 926
    find_lex $P847, "$/"
    unless_null $P847, vivify_539
    $P847 = root_new ['parrot';'Hash']
  vivify_539:
    set $P848, $P847["OPER"]
    unless_null $P848, vivify_540
    $P848 = root_new ['parrot';'Hash']
  vivify_540:
    set $P849, $P848["O"]
    unless_null $P849, vivify_541
    $P849 = root_new ['parrot';'Hash']
  vivify_541:
    set $P850, $P849["pasttype"]
    unless_null $P850, vivify_542
    new $P850, "Undef"
  vivify_542:
    if $P850, if_846
.annotate 'line', 927
    find_lex $P858, "$/"
    unless_null $P858, vivify_543
    $P858 = root_new ['parrot';'Hash']
  vivify_543:
    set $P859, $P858["OPER"]
    unless_null $P859, vivify_544
    $P859 = root_new ['parrot';'Hash']
  vivify_544:
    set $P860, $P859["O"]
    unless_null $P860, vivify_545
    $P860 = root_new ['parrot';'Hash']
  vivify_545:
    set $P861, $P860["pirop"]
    unless_null $P861, vivify_546
    new $P861, "Undef"
  vivify_546:
    unless $P861, if_857_end
    find_lex $P862, "$past"
    unless_null $P862, vivify_547
    new $P862, "Undef"
  vivify_547:
    find_lex $P863, "$/"
    unless_null $P863, vivify_548
    $P863 = root_new ['parrot';'Hash']
  vivify_548:
    set $P864, $P863["OPER"]
    unless_null $P864, vivify_549
    $P864 = root_new ['parrot';'Hash']
  vivify_549:
    set $P865, $P864["O"]
    unless_null $P865, vivify_550
    $P865 = root_new ['parrot';'Hash']
  vivify_550:
    set $P866, $P865["pirop"]
    unless_null $P866, vivify_551
    new $P866, "Undef"
  vivify_551:
    set $S867, $P866
    $P862."pirop"($S867)
  if_857_end:
    goto if_846_end
  if_846:
.annotate 'line', 926
    find_lex $P851, "$past"
    unless_null $P851, vivify_552
    new $P851, "Undef"
  vivify_552:
    find_lex $P852, "$/"
    unless_null $P852, vivify_553
    $P852 = root_new ['parrot';'Hash']
  vivify_553:
    set $P853, $P852["OPER"]
    unless_null $P853, vivify_554
    $P853 = root_new ['parrot';'Hash']
  vivify_554:
    set $P854, $P853["O"]
    unless_null $P854, vivify_555
    $P854 = root_new ['parrot';'Hash']
  vivify_555:
    set $P855, $P854["pasttype"]
    unless_null $P855, vivify_556
    new $P855, "Undef"
  vivify_556:
    set $S856, $P855
    $P851."pasttype"($S856)
  if_846_end:
.annotate 'line', 928
    find_lex $P869, "$past"
    unless_null $P869, vivify_557
    new $P869, "Undef"
  vivify_557:
    $P870 = $P869."name"()
    if $P870, unless_868_end
    .const 'Sub' $P872 = "131_1303391590.341" 
    capture_lex $P872
    $P872()
  unless_868_end:
  unless_841_end:
.annotate 'line', 934
    find_lex $P895, "$key"
    unless_null $P895, vivify_565
    new $P895, "Undef"
  vivify_565:
    set $S896, $P895
    iseq $I897, $S896, "POSTFIX"
    if $I897, if_894
.annotate 'line', 936
    find_lex $P903, "$/"
    unless_null $P903, vivify_566
    new $P903, "Undef"
  vivify_566:
    $P904 = $P903."list"()
    defined $I905, $P904
    unless $I905, for_undef_567
    iter $P902, $P904
    new $P920, 'ExceptionHandler'
    set_label $P920, loop919_handler
    $P920."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P920
  loop919_test:
    unless $P902, loop919_done
    shift $P906, $P902
  loop919_redo:
    .const 'Sub' $P908 = "132_1303391590.341" 
    capture_lex $P908
    $P908($P906)
  loop919_next:
    goto loop919_test
  loop919_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P921, exception, 'type'
    eq $P921, .CONTROL_LOOP_NEXT, loop919_next
    eq $P921, .CONTROL_LOOP_REDO, loop919_redo
  loop919_done:
    pop_eh 
  for_undef_567:
.annotate 'line', 935
    goto if_894_end
  if_894:
.annotate 'line', 934
    find_lex $P898, "$past"
    unless_null $P898, vivify_571
    new $P898, "Undef"
  vivify_571:
    find_lex $P899, "$/"
    unless_null $P899, vivify_572
    $P899 = root_new ['parrot';'ResizablePMCArray']
  vivify_572:
    set $P900, $P899[0]
    unless_null $P900, vivify_573
    new $P900, "Undef"
  vivify_573:
    $P901 = $P900."ast"()
    $P898."unshift"($P901)
  if_894_end:
.annotate 'line', 938
    find_lex $P922, "$/"
    find_lex $P923, "$past"
    unless_null $P923, vivify_574
    new $P923, "Undef"
  vivify_574:
    $P924 = $P922."!make"($P923)
.annotate 'line', 921
    .return ($P924)
  control_822:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P925, exception, "payload"
    .return ($P925)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block871"  :anon :subid("131_1303391590.341") :outer("130_1303391590.341")
.annotate 'line', 930
    new $P873, "Undef"
    .lex "$name", $P873
.annotate 'line', 929
    find_lex $P875, "$key"
    unless_null $P875, vivify_558
    new $P875, "Undef"
  vivify_558:
    set $S876, $P875
    iseq $I877, $S876, "LIST"
    unless $I877, if_874_end
    new $P878, "String"
    assign $P878, "infix"
    store_lex "$key", $P878
  if_874_end:
.annotate 'line', 930
    find_lex $P879, "$key"
    unless_null $P879, vivify_559
    new $P879, "Undef"
  vivify_559:
    set $S880, $P879
    downcase $S881, $S880
    new $P882, 'String'
    set $P882, $S881
    concat $P883, $P882, ":<"
    find_lex $P884, "$/"
    unless_null $P884, vivify_560
    $P884 = root_new ['parrot';'Hash']
  vivify_560:
    set $P885, $P884["OPER"]
    unless_null $P885, vivify_561
    $P885 = root_new ['parrot';'Hash']
  vivify_561:
    set $P886, $P885["sym"]
    unless_null $P886, vivify_562
    new $P886, "Undef"
  vivify_562:
    concat $P887, $P883, $P886
    concat $P888, $P887, ">"
    store_lex "$name", $P888
.annotate 'line', 931
    find_lex $P889, "$past"
    unless_null $P889, vivify_563
    new $P889, "Undef"
  vivify_563:
    new $P890, "String"
    assign $P890, "&"
    find_lex $P891, "$name"
    unless_null $P891, vivify_564
    new $P891, "Undef"
  vivify_564:
    concat $P892, $P890, $P891
    $P893 = $P889."name"($P892)
.annotate 'line', 928
    .return ($P893)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block907"  :anon :subid("132_1303391590.341") :outer("130_1303391590.341")
    .param pmc param_909
.annotate 'line', 936
    .lex "$_", param_909
    find_lex $P912, "$_"
    unless_null $P912, vivify_568
    new $P912, "Undef"
  vivify_568:
    $P913 = $P912."ast"()
    defined $I914, $P913
    if $I914, if_911
    new $P910, 'Integer'
    set $P910, $I914
    goto if_911_end
  if_911:
    find_lex $P915, "$past"
    unless_null $P915, vivify_569
    new $P915, "Undef"
  vivify_569:
    find_lex $P916, "$_"
    unless_null $P916, vivify_570
    new $P916, "Undef"
  vivify_570:
    $P917 = $P916."ast"()
    $P918 = $P915."push"($P917)
    set $P910, $P918
  if_911_end:
    .return ($P910)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_927
    .param pmc param_928
.annotate 'line', 941
    .lex "self", param_927
    .lex "$/", param_928
    find_lex $P929, "$/"
    find_lex $P930, "$/"
    unless_null $P930, vivify_575
    $P930 = root_new ['parrot';'Hash']
  vivify_575:
    set $P931, $P930["circumfix"]
    unless_null $P931, vivify_576
    new $P931, "Undef"
  vivify_576:
    $P932 = $P931."ast"()
    $P933 = $P929."!make"($P932)
    .return ($P933)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_935
    .param pmc param_936
.annotate 'line', 943
    .lex "self", param_935
    .lex "$/", param_936
    find_lex $P937, "$/"
    find_lex $P938, "$/"
    unless_null $P938, vivify_577
    $P938 = root_new ['parrot';'Hash']
  vivify_577:
    set $P939, $P938["term"]
    unless_null $P939, vivify_578
    new $P939, "Undef"
  vivify_578:
    $P940 = $P939."ast"()
    $P941 = $P937."!make"($P940)
    .return ($P941)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_943
    .param pmc param_944
.annotate 'line', 944
    .lex "self", param_943
    .lex "$/", param_944
    find_lex $P945, "$/"
    new $P946, "Undef"
    $P947 = $P945."!make"($P946)
    .return ($P947)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_949
    .param pmc param_950
.annotate 'line', 945
    .lex "self", param_949
    .lex "$/", param_950
    find_lex $P951, "$/"
    find_lex $P952, "$/"
    unless_null $P952, vivify_579
    $P952 = root_new ['parrot';'Hash']
  vivify_579:
    set $P953, $P952["term"]
    unless_null $P953, vivify_580
    new $P953, "Undef"
  vivify_580:
    $P954 = $P953."ast"()
    $P955 = $P951."!make"($P954)
    .return ($P955)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_957
    .param pmc param_958
.annotate 'line', 947
    .lex "self", param_957
    .lex "$/", param_958
    find_lex $P959, "$/"
    find_lex $P960, "$/"
    unless_null $P960, vivify_581
    $P960 = root_new ['parrot';'Hash']
  vivify_581:
    set $P961, $P960["VALUE"]
    unless_null $P961, vivify_582
    new $P961, "Undef"
  vivify_582:
    $P962 = $P961."ast"()
    $P963 = $P959."!make"($P962)
    .return ($P963)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_965
    .param pmc param_966
.annotate 'line', 949
    .lex "self", param_965
    .lex "$/", param_966
    find_lex $P967, "$/"
    find_lex $P968, "$/"
    unless_null $P968, vivify_583
    new $P968, "Undef"
  vivify_583:
    set $N969, $P968
    $P970 = $P967."!make"($N969)
    .return ($P970)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_972
    .param pmc param_973
.annotate 'line', 951
    .lex "self", param_972
    .lex "$/", param_973
    find_lex $P974, "$/"
    find_lex $P975, "$/"
    unless_null $P975, vivify_584
    new $P975, "Undef"
  vivify_584:
    $P976 = "string_to_int"($P975, 10)
    $P977 = $P974."!make"($P976)
    .return ($P977)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 952
    .lex "self", param_979
    .lex "$/", param_980
    find_lex $P981, "$/"
    find_lex $P982, "$/"
    unless_null $P982, vivify_585
    new $P982, "Undef"
  vivify_585:
    $P983 = "string_to_int"($P982, 16)
    $P984 = $P981."!make"($P983)
    .return ($P984)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_986
    .param pmc param_987
.annotate 'line', 953
    .lex "self", param_986
    .lex "$/", param_987
    find_lex $P988, "$/"
    find_lex $P989, "$/"
    unless_null $P989, vivify_586
    new $P989, "Undef"
  vivify_586:
    $P990 = "string_to_int"($P989, 8)
    $P991 = $P988."!make"($P990)
    .return ($P991)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_993
    .param pmc param_994
.annotate 'line', 954
    .lex "self", param_993
    .lex "$/", param_994
    find_lex $P995, "$/"
    find_lex $P996, "$/"
    unless_null $P996, vivify_587
    new $P996, "Undef"
  vivify_587:
    $P997 = "string_to_int"($P996, 2)
    $P998 = $P995."!make"($P997)
    .return ($P998)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1000
    .param pmc param_1001
.annotate 'line', 956
    .const 'Sub' $P1017 = "144_1303391590.341" 
    capture_lex $P1017
    .lex "self", param_1000
    .lex "$/", param_1001
.annotate 'line', 957
    new $P1002, "Undef"
    .lex "$past", $P1002
    find_lex $P1003, "$/"
    unless_null $P1003, vivify_588
    $P1003 = root_new ['parrot';'Hash']
  vivify_588:
    set $P1004, $P1003["quote_delimited"]
    unless_null $P1004, vivify_589
    new $P1004, "Undef"
  vivify_589:
    $P1005 = $P1004."ast"()
    store_lex "$past", $P1005
.annotate 'line', 958
    find_lex $P1007, "$/"
    unless_null $P1007, vivify_590
    new $P1007, "Undef"
  vivify_590:
    $P1008 = $P1007."CURSOR"()
    $P1009 = $P1008."quotemod_check"("w")
    unless $P1009, if_1006_end
.annotate 'line', 959
    get_hll_global $P1011, ["PAST"], "Node"
    find_lex $P1012, "$past"
    unless_null $P1012, vivify_591
    new $P1012, "Undef"
  vivify_591:
    $P1013 = $P1011."ACCEPTS"($P1012)
    if $P1013, if_1010
.annotate 'line', 962
    .const 'Sub' $P1017 = "144_1303391590.341" 
    capture_lex $P1017
    $P1017()
    goto if_1010_end
  if_1010:
.annotate 'line', 960
    find_lex $P1014, "$/"
    unless_null $P1014, vivify_602
    new $P1014, "Undef"
  vivify_602:
    $P1015 = $P1014."CURSOR"()
    $P1015."panic"("Can't form :w list from non-constant strings (yet)")
  if_1010_end:
  if_1006_end:
.annotate 'line', 973
    get_hll_global $P1049, ["PAST"], "Node"
    find_lex $P1050, "$past"
    unless_null $P1050, vivify_603
    new $P1050, "Undef"
  vivify_603:
    $P1051 = $P1049."ACCEPTS"($P1050)
    isfalse $I1052, $P1051
    unless $I1052, if_1048_end
.annotate 'line', 974
    get_hll_global $P1053, ["PAST"], "Val"
    find_lex $P1054, "$past"
    unless_null $P1054, vivify_604
    new $P1054, "Undef"
  vivify_604:
    set $S1055, $P1054
    $P1056 = $P1053."new"($S1055 :named("value"))
    store_lex "$past", $P1056
  if_1048_end:
.annotate 'line', 976
    find_lex $P1057, "$/"
    find_lex $P1058, "$past"
    unless_null $P1058, vivify_605
    new $P1058, "Undef"
  vivify_605:
    $P1059 = $P1057."!make"($P1058)
.annotate 'line', 956
    .return ($P1059)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1016"  :anon :subid("144_1303391590.341") :outer("143_1303391590.341")
.annotate 'line', 962
    .const 'Sub' $P1036 = "145_1303391590.341" 
    capture_lex $P1036
.annotate 'line', 963
    $P1018 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P1018
    get_hll_global $P1019, ["HLL";"Grammar"], "split_words"
    find_lex $P1020, "$/"
    unless_null $P1020, vivify_592
    new $P1020, "Undef"
  vivify_592:
    find_lex $P1021, "$past"
    unless_null $P1021, vivify_593
    new $P1021, "Undef"
  vivify_593:
    $P1022 = $P1019($P1020, $P1021)
    store_lex "@words", $P1022
.annotate 'line', 964
    find_lex $P1025, "@words"
    unless_null $P1025, vivify_594
    $P1025 = root_new ['parrot';'ResizablePMCArray']
  vivify_594:
    set $N1026, $P1025
    isne $I1027, $N1026, 1.0
    if $I1027, if_1024
.annotate 'line', 969
    find_lex $P1044, "@words"
    unless_null $P1044, vivify_595
    $P1044 = root_new ['parrot';'ResizablePMCArray']
  vivify_595:
    set $P1045, $P1044[0]
    unless_null $P1045, vivify_596
    new $P1045, "Undef"
  vivify_596:
    set $S1046, $P1045
    new $P1047, 'String'
    set $P1047, $S1046
    store_lex "$past", $P1047
.annotate 'line', 968
    set $P1023, $P1047
.annotate 'line', 964
    goto if_1024_end
  if_1024:
.annotate 'line', 965
    get_hll_global $P1028, ["PAST"], "Op"
    find_lex $P1029, "$/"
    unless_null $P1029, vivify_597
    new $P1029, "Undef"
  vivify_597:
    $P1030 = $P1028."new"("list" :named("pasttype"), $P1029 :named("node"))
    store_lex "$past", $P1030
.annotate 'line', 966
    find_lex $P1032, "@words"
    unless_null $P1032, vivify_598
    $P1032 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    defined $I1033, $P1032
    unless $I1033, for_undef_599
    iter $P1031, $P1032
    new $P1042, 'ExceptionHandler'
    set_label $P1042, loop1041_handler
    $P1042."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1042
  loop1041_test:
    unless $P1031, loop1041_done
    shift $P1034, $P1031
  loop1041_redo:
    .const 'Sub' $P1036 = "145_1303391590.341" 
    capture_lex $P1036
    $P1036($P1034)
  loop1041_next:
    goto loop1041_test
  loop1041_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1043, exception, 'type'
    eq $P1043, .CONTROL_LOOP_NEXT, loop1041_next
    eq $P1043, .CONTROL_LOOP_REDO, loop1041_redo
  loop1041_done:
    pop_eh 
  for_undef_599:
.annotate 'line', 964
    set $P1023, $P1031
  if_1024_end:
.annotate 'line', 962
    .return ($P1023)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1035"  :anon :subid("145_1303391590.341") :outer("144_1303391590.341")
    .param pmc param_1037
.annotate 'line', 966
    .lex "$_", param_1037
    find_lex $P1038, "$past"
    unless_null $P1038, vivify_600
    new $P1038, "Undef"
  vivify_600:
    find_lex $P1039, "$_"
    unless_null $P1039, vivify_601
    new $P1039, "Undef"
  vivify_601:
    $P1040 = $P1038."push"($P1039)
    .return ($P1040)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1061
    .param pmc param_1062
.annotate 'line', 979
    .const 'Sub' $P1074 = "147_1303391590.341" 
    capture_lex $P1074
    .lex "self", param_1061
    .lex "$/", param_1062
.annotate 'line', 980
    $P1063 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P1063
.annotate 'line', 981
    new $P1064, "Undef"
    .lex "$lastlit", $P1064
.annotate 'line', 997
    new $P1065, "Undef"
    .lex "$past", $P1065
.annotate 'line', 979
    find_lex $P1066, "@parts"
    unless_null $P1066, vivify_606
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_606:
.annotate 'line', 981
    new $P1067, "String"
    assign $P1067, ""
    store_lex "$lastlit", $P1067
.annotate 'line', 982
    find_lex $P1069, "$/"
    unless_null $P1069, vivify_607
    $P1069 = root_new ['parrot';'Hash']
  vivify_607:
    set $P1070, $P1069["quote_atom"]
    unless_null $P1070, vivify_608
    new $P1070, "Undef"
  vivify_608:
    defined $I1071, $P1070
    unless $I1071, for_undef_609
    iter $P1068, $P1070
    new $P1107, 'ExceptionHandler'
    set_label $P1107, loop1106_handler
    $P1107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1107
  loop1106_test:
    unless $P1068, loop1106_done
    shift $P1072, $P1068
  loop1106_redo:
    .const 'Sub' $P1074 = "147_1303391590.341" 
    capture_lex $P1074
    $P1074($P1072)
  loop1106_next:
    goto loop1106_test
  loop1106_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1108, exception, 'type'
    eq $P1108, .CONTROL_LOOP_NEXT, loop1106_next
    eq $P1108, .CONTROL_LOOP_REDO, loop1106_redo
  loop1106_done:
    pop_eh 
  for_undef_609:
.annotate 'line', 996
    find_lex $P1110, "$lastlit"
    unless_null $P1110, vivify_622
    new $P1110, "Undef"
  vivify_622:
    set $S1111, $P1110
    isgt $I1112, $S1111, ""
    unless $I1112, if_1109_end
    find_lex $P1113, "@parts"
    unless_null $P1113, vivify_623
    $P1113 = root_new ['parrot';'ResizablePMCArray']
  vivify_623:
    find_lex $P1114, "$lastlit"
    unless_null $P1114, vivify_624
    new $P1114, "Undef"
  vivify_624:
    $P1113."push"($P1114)
  if_1109_end:
.annotate 'line', 997
    find_lex $P1117, "@parts"
    unless_null $P1117, vivify_625
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_625:
    if $P1117, if_1116
    new $P1120, "String"
    assign $P1120, ""
    set $P1115, $P1120
    goto if_1116_end
  if_1116:
    find_lex $P1118, "@parts"
    unless_null $P1118, vivify_626
    $P1118 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    $P1119 = $P1118."shift"()
    set $P1115, $P1119
  if_1116_end:
    store_lex "$past", $P1115
.annotate 'line', 998
    new $P1128, 'ExceptionHandler'
    set_label $P1128, loop1127_handler
    $P1128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1128
  loop1127_test:
    find_lex $P1121, "@parts"
    unless_null $P1121, vivify_627
    $P1121 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    unless $P1121, loop1127_done
  loop1127_redo:
.annotate 'line', 999
    get_hll_global $P1122, ["PAST"], "Op"
    find_lex $P1123, "$past"
    unless_null $P1123, vivify_628
    new $P1123, "Undef"
  vivify_628:
    find_lex $P1124, "@parts"
    unless_null $P1124, vivify_629
    $P1124 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    $P1125 = $P1124."shift"()
    $P1126 = $P1122."new"($P1123, $P1125, "concat" :named("pirop"))
    store_lex "$past", $P1126
  loop1127_next:
.annotate 'line', 998
    goto loop1127_test
  loop1127_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1129, exception, 'type'
    eq $P1129, .CONTROL_LOOP_NEXT, loop1127_next
    eq $P1129, .CONTROL_LOOP_REDO, loop1127_redo
  loop1127_done:
    pop_eh 
.annotate 'line', 1001
    find_lex $P1130, "$/"
    find_lex $P1131, "$past"
    unless_null $P1131, vivify_630
    new $P1131, "Undef"
  vivify_630:
    $P1132 = $P1130."!make"($P1131)
.annotate 'line', 979
    .return ($P1132)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1073"  :anon :subid("147_1303391590.341") :outer("146_1303391590.341")
    .param pmc param_1076
.annotate 'line', 983
    new $P1075, "Undef"
    .lex "$ast", $P1075
    .lex "$_", param_1076
    find_lex $P1077, "$_"
    unless_null $P1077, vivify_610
    new $P1077, "Undef"
  vivify_610:
    $P1078 = $P1077."ast"()
    store_lex "$ast", $P1078
.annotate 'line', 984
    get_hll_global $P1081, ["PAST"], "Node"
    find_lex $P1082, "$ast"
    unless_null $P1082, vivify_611
    new $P1082, "Undef"
  vivify_611:
    $P1083 = $P1081."ACCEPTS"($P1082)
    isfalse $I1084, $P1083
    if $I1084, if_1080
.annotate 'line', 987
    find_lex $P1090, "$ast"
    unless_null $P1090, vivify_612
    new $P1090, "Undef"
  vivify_612:
    get_hll_global $P1091, ["PAST"], "Val"
    $P1092 = $P1090."isa"($P1091)
    if $P1092, if_1089
.annotate 'line', 991
    find_lex $P1098, "$lastlit"
    unless_null $P1098, vivify_613
    new $P1098, "Undef"
  vivify_613:
    set $S1099, $P1098
    isgt $I1100, $S1099, ""
    unless $I1100, if_1097_end
    find_lex $P1101, "@parts"
    unless_null $P1101, vivify_614
    $P1101 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    find_lex $P1102, "$lastlit"
    unless_null $P1102, vivify_615
    new $P1102, "Undef"
  vivify_615:
    $P1101."push"($P1102)
  if_1097_end:
.annotate 'line', 992
    find_lex $P1103, "@parts"
    unless_null $P1103, vivify_616
    $P1103 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    find_lex $P1104, "$ast"
    unless_null $P1104, vivify_617
    new $P1104, "Undef"
  vivify_617:
    $P1103."push"($P1104)
.annotate 'line', 993
    new $P1105, "String"
    assign $P1105, ""
    store_lex "$lastlit", $P1105
.annotate 'line', 990
    set $P1088, $P1105
.annotate 'line', 987
    goto if_1089_end
  if_1089:
.annotate 'line', 988
    find_lex $P1093, "$lastlit"
    unless_null $P1093, vivify_618
    new $P1093, "Undef"
  vivify_618:
    find_lex $P1094, "$ast"
    unless_null $P1094, vivify_619
    new $P1094, "Undef"
  vivify_619:
    $S1095 = $P1094."value"()
    concat $P1096, $P1093, $S1095
    store_lex "$lastlit", $P1096
.annotate 'line', 987
    set $P1088, $P1096
  if_1089_end:
    set $P1079, $P1088
.annotate 'line', 984
    goto if_1080_end
  if_1080:
.annotate 'line', 985
    find_lex $P1085, "$lastlit"
    unless_null $P1085, vivify_620
    new $P1085, "Undef"
  vivify_620:
    find_lex $P1086, "$ast"
    unless_null $P1086, vivify_621
    new $P1086, "Undef"
  vivify_621:
    concat $P1087, $P1085, $P1086
    store_lex "$lastlit", $P1087
.annotate 'line', 984
    set $P1079, $P1087
  if_1080_end:
.annotate 'line', 982
    .return ($P1079)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1134
    .param pmc param_1135
.annotate 'line', 1004
    .lex "self", param_1134
    .lex "$/", param_1135
.annotate 'line', 1005
    find_lex $P1136, "$/"
    find_lex $P1139, "$/"
    unless_null $P1139, vivify_631
    $P1139 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1140, $P1139["quote_escape"]
    unless_null $P1140, vivify_632
    new $P1140, "Undef"
  vivify_632:
    if $P1140, if_1138
    find_lex $P1144, "$/"
    unless_null $P1144, vivify_633
    new $P1144, "Undef"
  vivify_633:
    set $S1145, $P1144
    new $P1137, 'String'
    set $P1137, $S1145
    goto if_1138_end
  if_1138:
    find_lex $P1141, "$/"
    unless_null $P1141, vivify_634
    $P1141 = root_new ['parrot';'Hash']
  vivify_634:
    set $P1142, $P1141["quote_escape"]
    unless_null $P1142, vivify_635
    new $P1142, "Undef"
  vivify_635:
    $P1143 = $P1142."ast"()
    set $P1137, $P1143
  if_1138_end:
    $P1146 = $P1136."!make"($P1137)
.annotate 'line', 1004
    .return ($P1146)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1148
    .param pmc param_1149
.annotate 'line', 1008
    .lex "self", param_1148
    .lex "$/", param_1149
    find_lex $P1150, "$/"
    $P1151 = $P1150."!make"("\\")
    .return ($P1151)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1153
    .param pmc param_1154
.annotate 'line', 1009
    .lex "self", param_1153
    .lex "$/", param_1154
    find_lex $P1155, "$/"
    find_lex $P1156, "$/"
    unless_null $P1156, vivify_636
    $P1156 = root_new ['parrot';'Hash']
  vivify_636:
    set $P1157, $P1156["stopper"]
    unless_null $P1157, vivify_637
    new $P1157, "Undef"
  vivify_637:
    set $S1158, $P1157
    $P1159 = $P1155."!make"($S1158)
    .return ($P1159)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1161
    .param pmc param_1162
.annotate 'line', 1011
    .lex "self", param_1161
    .lex "$/", param_1162
    find_lex $P1163, "$/"
    $P1164 = $P1163."!make"("\b")
    .return ($P1164)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1166
    .param pmc param_1167
.annotate 'line', 1012
    .lex "self", param_1166
    .lex "$/", param_1167
    find_lex $P1168, "$/"
    $P1169 = $P1168."!make"("\n")
    .return ($P1169)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1171
    .param pmc param_1172
.annotate 'line', 1013
    .lex "self", param_1171
    .lex "$/", param_1172
    find_lex $P1173, "$/"
    $P1174 = $P1173."!make"("\r")
    .return ($P1174)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1176
    .param pmc param_1177
.annotate 'line', 1014
    .lex "self", param_1176
    .lex "$/", param_1177
    find_lex $P1178, "$/"
    $P1179 = $P1178."!make"("\t")
    .return ($P1179)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1181
    .param pmc param_1182
.annotate 'line', 1015
    .lex "self", param_1181
    .lex "$/", param_1182
    find_lex $P1183, "$/"
    $P1184 = $P1183."!make"("\f")
    .return ($P1184)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1186
    .param pmc param_1187
.annotate 'line', 1016
    .lex "self", param_1186
    .lex "$/", param_1187
    find_lex $P1188, "$/"
    $P1189 = $P1188."!make"("\e")
    .return ($P1189)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1191
    .param pmc param_1192
.annotate 'line', 1018
    .lex "self", param_1191
    .lex "$/", param_1192
.annotate 'line', 1019
    find_lex $P1193, "$/"
    find_lex $P1196, "$/"
    unless_null $P1196, vivify_638
    $P1196 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1197, $P1196["hexint"]
    unless_null $P1197, vivify_639
    new $P1197, "Undef"
  vivify_639:
    if $P1197, if_1195
    find_lex $P1200, "$/"
    unless_null $P1200, vivify_640
    $P1200 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1201, $P1200["hexints"]
    unless_null $P1201, vivify_641
    $P1201 = root_new ['parrot';'Hash']
  vivify_641:
    set $P1202, $P1201["hexint"]
    unless_null $P1202, vivify_642
    new $P1202, "Undef"
  vivify_642:
    set $P1194, $P1202
    goto if_1195_end
  if_1195:
    find_lex $P1198, "$/"
    unless_null $P1198, vivify_643
    $P1198 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1199, $P1198["hexint"]
    unless_null $P1199, vivify_644
    new $P1199, "Undef"
  vivify_644:
    set $P1194, $P1199
  if_1195_end:
    $P1203 = "ints_to_string"($P1194)
    $P1204 = $P1193."!make"($P1203)
.annotate 'line', 1018
    .return ($P1204)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1206
    .param pmc param_1207
.annotate 'line', 1022
    .lex "self", param_1206
    .lex "$/", param_1207
.annotate 'line', 1023
    find_lex $P1208, "$/"
    find_lex $P1211, "$/"
    unless_null $P1211, vivify_645
    $P1211 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1212, $P1211["octint"]
    unless_null $P1212, vivify_646
    new $P1212, "Undef"
  vivify_646:
    if $P1212, if_1210
    find_lex $P1215, "$/"
    unless_null $P1215, vivify_647
    $P1215 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1216, $P1215["octints"]
    unless_null $P1216, vivify_648
    $P1216 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1217, $P1216["octint"]
    unless_null $P1217, vivify_649
    new $P1217, "Undef"
  vivify_649:
    set $P1209, $P1217
    goto if_1210_end
  if_1210:
    find_lex $P1213, "$/"
    unless_null $P1213, vivify_650
    $P1213 = root_new ['parrot';'Hash']
  vivify_650:
    set $P1214, $P1213["octint"]
    unless_null $P1214, vivify_651
    new $P1214, "Undef"
  vivify_651:
    set $P1209, $P1214
  if_1210_end:
    $P1218 = "ints_to_string"($P1209)
    $P1219 = $P1208."!make"($P1218)
.annotate 'line', 1022
    .return ($P1219)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1221
    .param pmc param_1222
.annotate 'line', 1026
    .lex "self", param_1221
    .lex "$/", param_1222
.annotate 'line', 1027
    find_lex $P1223, "$/"
    find_lex $P1224, "$/"
    unless_null $P1224, vivify_652
    $P1224 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1225, $P1224["charspec"]
    unless_null $P1225, vivify_653
    new $P1225, "Undef"
  vivify_653:
    $P1226 = $P1225."ast"()
    $P1227 = $P1223."!make"($P1226)
.annotate 'line', 1026
    .return ($P1227)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1229
    .param pmc param_1230
.annotate 'line', 1030
    .lex "self", param_1229
    .lex "$/", param_1230
.annotate 'line', 1031
    find_lex $P1231, "$/"
    $P1232 = $P1231."!make"(unicode:"\x{0}")
.annotate 'line', 1030
    .return ($P1232)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1234
    .param pmc param_1235
.annotate 'line', 1034
    .lex "self", param_1234
    .lex "$/", param_1235
.annotate 'line', 1035
    find_lex $P1236, "$/"
    find_lex $P1239, "$/"
    unless_null $P1239, vivify_654
    $P1239 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1240, $P1239["textq"]
    unless_null $P1240, vivify_655
    new $P1240, "Undef"
  vivify_655:
    if $P1240, if_1238
    find_lex $P1246, "$/"
    unless_null $P1246, vivify_656
    $P1246 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1247, $P1246["textqq"]
    unless_null $P1247, vivify_657
    new $P1247, "Undef"
  vivify_657:
    $P1248 = $P1247."Str"()
    set $P1237, $P1248
    goto if_1238_end
  if_1238:
    new $P1241, "String"
    assign $P1241, "\\"
    find_lex $P1242, "$/"
    unless_null $P1242, vivify_658
    $P1242 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1243, $P1242["textq"]
    unless_null $P1243, vivify_659
    new $P1243, "Undef"
  vivify_659:
    $S1244 = $P1243."Str"()
    concat $P1245, $P1241, $S1244
    set $P1237, $P1245
  if_1238_end:
    $P1249 = $P1236."!make"($P1237)
.annotate 'line', 1034
    .return ($P1249)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1251
    .param pmc param_1252
.annotate 'line', 1038
    .lex "self", param_1251
    .lex "$/", param_1252
.annotate 'line', 1039
    new $P1253, "Undef"
    .lex "$codepoint", $P1253
.annotate 'line', 1040
    find_lex $P1256, "$/"
    unless_null $P1256, vivify_660
    $P1256 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1257, $P1256["integer"]
    unless_null $P1257, vivify_661
    new $P1257, "Undef"
  vivify_661:
    if $P1257, if_1255
.annotate 'line', 1041
    find_lex $P1261, "$/"
    unless_null $P1261, vivify_662
    new $P1261, "Undef"
  vivify_662:
    set $S1262, $P1261
    find_codepoint $I1263, $S1262
    new $P1254, 'Integer'
    set $P1254, $I1263
.annotate 'line', 1040
    goto if_1255_end
  if_1255:
    find_lex $P1258, "$/"
    unless_null $P1258, vivify_663
    $P1258 = root_new ['parrot';'Hash']
  vivify_663:
    set $P1259, $P1258["integer"]
    unless_null $P1259, vivify_664
    new $P1259, "Undef"
  vivify_664:
    $P1260 = $P1259."ast"()
    set $P1254, $P1260
  if_1255_end:
    store_lex "$codepoint", $P1254
.annotate 'line', 1042
    find_lex $P1265, "$codepoint"
    unless_null $P1265, vivify_665
    new $P1265, "Undef"
  vivify_665:
    set $N1266, $P1265
    islt $I1267, $N1266, 0.0
    unless $I1267, if_1264_end
    find_lex $P1268, "$/"
    unless_null $P1268, vivify_666
    new $P1268, "Undef"
  vivify_666:
    $P1269 = $P1268."CURSOR"()
    new $P1270, 'String'
    set $P1270, "Unrecognized character name "
    find_lex $P1271, "$/"
    unless_null $P1271, vivify_667
    new $P1271, "Undef"
  vivify_667:
    concat $P1272, $P1270, $P1271
    $P1269."panic"($P1272)
  if_1264_end:
.annotate 'line', 1043
    find_lex $P1273, "$/"
    find_lex $P1274, "$codepoint"
    unless_null $P1274, vivify_668
    new $P1274, "Undef"
  vivify_668:
    set $I1275, $P1274
    chr $S1276, $I1275
    $P1277 = $P1273."!make"($S1276)
.annotate 'line', 1038
    .return ($P1277)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1279
    .param pmc param_1280
.annotate 'line', 1046
    .const 'Sub' $P1289 = "164_1303391590.341" 
    capture_lex $P1289
    .lex "self", param_1279
    .lex "$/", param_1280
.annotate 'line', 1047
    new $P1281, "Undef"
    .lex "$str", $P1281
    new $P1282, "String"
    assign $P1282, ""
    store_lex "$str", $P1282
.annotate 'line', 1048
    find_lex $P1284, "$/"
    unless_null $P1284, vivify_669
    $P1284 = root_new ['parrot';'Hash']
  vivify_669:
    set $P1285, $P1284["charname"]
    unless_null $P1285, vivify_670
    new $P1285, "Undef"
  vivify_670:
    defined $I1286, $P1285
    unless $I1286, for_undef_671
    iter $P1283, $P1285
    new $P1296, 'ExceptionHandler'
    set_label $P1296, loop1295_handler
    $P1296."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1296
  loop1295_test:
    unless $P1283, loop1295_done
    shift $P1287, $P1283
  loop1295_redo:
    .const 'Sub' $P1289 = "164_1303391590.341" 
    capture_lex $P1289
    $P1289($P1287)
  loop1295_next:
    goto loop1295_test
  loop1295_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1297, exception, 'type'
    eq $P1297, .CONTROL_LOOP_NEXT, loop1295_next
    eq $P1297, .CONTROL_LOOP_REDO, loop1295_redo
  loop1295_done:
    pop_eh 
  for_undef_671:
.annotate 'line', 1049
    find_lex $P1298, "$/"
    find_lex $P1299, "$str"
    unless_null $P1299, vivify_674
    new $P1299, "Undef"
  vivify_674:
    $P1300 = $P1298."!make"($P1299)
.annotate 'line', 1046
    .return ($P1300)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1288"  :anon :subid("164_1303391590.341") :outer("163_1303391590.341")
    .param pmc param_1290
.annotate 'line', 1048
    .lex "$_", param_1290
    find_lex $P1291, "$str"
    unless_null $P1291, vivify_672
    new $P1291, "Undef"
  vivify_672:
    find_lex $P1292, "$_"
    unless_null $P1292, vivify_673
    new $P1292, "Undef"
  vivify_673:
    $S1293 = $P1292."ast"()
    concat $P1294, $P1291, $S1293
    store_lex "$str", $P1294
    .return ($P1294)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1303391590.341") :outer("120_1303391590.341")
    .param pmc param_1302
    .param pmc param_1303
.annotate 'line', 1052
    .lex "self", param_1302
    .lex "$/", param_1303
.annotate 'line', 1053
    find_lex $P1304, "$/"
    find_lex $P1307, "$/"
    unless_null $P1307, vivify_675
    $P1307 = root_new ['parrot';'Hash']
  vivify_675:
    set $P1308, $P1307["charnames"]
    unless_null $P1308, vivify_676
    new $P1308, "Undef"
  vivify_676:
    if $P1308, if_1306
    find_lex $P1312, "$/"
    unless_null $P1312, vivify_677
    new $P1312, "Undef"
  vivify_677:
    $I1313 = "string_to_int"($P1312, 10)
    chr $S1314, $I1313
    new $P1305, 'String'
    set $P1305, $S1314
    goto if_1306_end
  if_1306:
    find_lex $P1309, "$/"
    unless_null $P1309, vivify_678
    $P1309 = root_new ['parrot';'Hash']
  vivify_678:
    set $P1310, $P1309["charnames"]
    unless_null $P1310, vivify_679
    new $P1310, "Undef"
  vivify_679:
    $P1311 = $P1310."ast"()
    set $P1305, $P1311
  if_1306_end:
    $P1315 = $P1304."!make"($P1305)
.annotate 'line', 1052
    .return ($P1315)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1388"  :subid("167_1303391590.341") :outer("10_1303391590.341")
.annotate 'line', 1066
    .const 'Sub' $P2540 = "233_1303391590.341" 
    capture_lex $P2540
    .const 'Sub' $P2532 = "232_1303391590.341" 
    capture_lex $P2532
    .const 'Sub' $P2479 = "230_1303391590.341" 
    capture_lex $P2479
    .const 'Sub' $P2406 = "227_1303391590.341" 
    capture_lex $P2406
    .const 'Sub' $P2376 = "225_1303391590.341" 
    capture_lex $P2376
    .const 'Sub' $P2371 = "224_1303391590.341" 
    capture_lex $P2371
    .const 'Sub' $P2361 = "223_1303391590.341" 
    capture_lex $P2361
    .const 'Sub' $P2335 = "221_1303391590.341" 
    capture_lex $P2335
    .const 'Sub' $P2326 = "220_1303391590.341" 
    capture_lex $P2326
    .const 'Sub' $P2318 = "219_1303391590.341" 
    capture_lex $P2318
    .const 'Sub' $P2310 = "218_1303391590.341" 
    capture_lex $P2310
    .const 'Sub' $P2306 = "217_1303391590.341" 
    capture_lex $P2306
    .const 'Sub' $P2302 = "216_1303391590.341" 
    capture_lex $P2302
    .const 'Sub' $P2235 = "214_1303391590.341" 
    capture_lex $P2235
    .const 'Sub' $P2139 = "210_1303391590.341" 
    capture_lex $P2139
    .const 'Sub' $P2103 = "207_1303391590.341" 
    capture_lex $P2103
    .const 'Sub' $P2055 = "205_1303391590.341" 
    capture_lex $P2055
    .const 'Sub' $P2042 = "204_1303391590.341" 
    capture_lex $P2042
    .const 'Sub' $P2029 = "203_1303391590.341" 
    capture_lex $P2029
    .const 'Sub' $P2016 = "202_1303391590.341" 
    capture_lex $P2016
    .const 'Sub' $P2003 = "201_1303391590.341" 
    capture_lex $P2003
    .const 'Sub' $P1990 = "200_1303391590.341" 
    capture_lex $P1990
    .const 'Sub' $P1977 = "199_1303391590.341" 
    capture_lex $P1977
    .const 'Sub' $P1964 = "198_1303391590.341" 
    capture_lex $P1964
    .const 'Sub' $P1951 = "197_1303391590.341" 
    capture_lex $P1951
    .const 'Sub' $P1946 = "196_1303391590.341" 
    capture_lex $P1946
    .const 'Sub' $P1942 = "195_1303391590.341" 
    capture_lex $P1942
    .const 'Sub' $P1902 = "193_1303391590.341" 
    capture_lex $P1902
    .const 'Sub' $P1749 = "186_1303391590.341" 
    capture_lex $P1749
    .const 'Sub' $P1736 = "185_1303391590.341" 
    capture_lex $P1736
    .const 'Sub' $P1643 = "180_1303391590.341" 
    capture_lex $P1643
    .const 'Sub' $P1610 = "178_1303391590.341" 
    capture_lex $P1610
    .const 'Sub' $P1595 = "177_1303391590.341" 
    capture_lex $P1595
    .const 'Sub' $P1580 = "176_1303391590.341" 
    capture_lex $P1580
    .const 'Sub' $P1493 = "173_1303391590.341" 
    capture_lex $P1493
    .const 'Sub' $P1434 = "171_1303391590.341" 
    capture_lex $P1434
    .const 'Sub' $P1427 = "170_1303391590.341" 
    capture_lex $P1427
    .const 'Sub' $P1407 = "169_1303391590.341" 
    capture_lex $P1407
    .const 'Sub' $P1390 = "168_1303391590.341" 
    capture_lex $P1390
.annotate 'line', 1126
    .const 'Sub' $P1390 = "168_1303391590.341" 
    newclosure $P1403, $P1390
    .lex "value_type", $P1403
.annotate 'line', 1066
    .lex "$?PACKAGE", $P1404
    .lex "$?CLASS", $P1405
.annotate 'line', 1088
    .const 'Sub' $P1407 = "169_1303391590.341" 
    capture_lex $P1407
    $P1407()
.annotate 'line', 1066
    find_lex $P1421, "$?PACKAGE"
    get_who $P1422, $P1421
    set $P1423, $P1422["$interactive_ctx"]
    unless_null $P1423, vivify_687
    new $P1423, "Undef"
  vivify_687:
    find_lex $P1424, "$?PACKAGE"
    get_who $P1425, $P1424
    set $P1426, $P1425["%interactive_pad"]
    unless_null $P1426, vivify_688
    $P1426 = root_new ['parrot';'Hash']
  vivify_688:
.annotate 'line', 1106
    find_lex $P1492, "value_type"
.annotate 'line', 1722
    .const 'Sub' $P2532 = "232_1303391590.341" 
    newclosure $P2538, $P2532
.annotate 'line', 1066
    .return ($P2538)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post680") :outer("167_1303391590.341")
.annotate 'line', 1066
    get_hll_global $P1389, ["HLL";"Compiler"], "_block1388" 
    .local pmc block
    set block, $P1389
    .const 'Sub' $P2540 = "233_1303391590.341" 
    capture_lex $P2540
    $P2540()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2539"  :anon :subid("233_1303391590.341") :outer("167_1303391590.341")
.annotate 'line', 1066
    nqp_get_sc_object $P2541, "1303391582.588", 3
    .local pmc type_obj
    set type_obj, $P2541
    get_how $P2542, type_obj
    get_hll_global $P2543, "NQPAttribute"
    $P2544 = $P2543."new"("@!stages" :named("name"))
    $P2542."add_attribute"(type_obj, $P2544)
    get_how $P2545, type_obj
    get_hll_global $P2546, "NQPAttribute"
    $P2547 = $P2546."new"("$!parsegrammar" :named("name"))
    $P2545."add_attribute"(type_obj, $P2547)
    get_how $P2548, type_obj
    get_hll_global $P2549, "NQPAttribute"
    $P2550 = $P2549."new"("$!parseactions" :named("name"))
    $P2548."add_attribute"(type_obj, $P2550)
    get_how $P2551, type_obj
    get_hll_global $P2552, "NQPAttribute"
    $P2553 = $P2552."new"("$!astgrammar" :named("name"))
    $P2551."add_attribute"(type_obj, $P2553)
    get_how $P2554, type_obj
    get_hll_global $P2555, "NQPAttribute"
    $P2556 = $P2555."new"("$!commandline_banner" :named("name"))
    $P2554."add_attribute"(type_obj, $P2556)
    get_how $P2557, type_obj
    get_hll_global $P2558, "NQPAttribute"
    $P2559 = $P2558."new"("$!commandline_prompt" :named("name"))
    $P2557."add_attribute"(type_obj, $P2559)
    get_how $P2560, type_obj
    get_hll_global $P2561, "NQPAttribute"
    $P2562 = $P2561."new"("@!cmdoptions" :named("name"))
    $P2560."add_attribute"(type_obj, $P2562)
    get_how $P2563, type_obj
    get_hll_global $P2564, "NQPAttribute"
    $P2565 = $P2564."new"("$!usage" :named("name"))
    $P2563."add_attribute"(type_obj, $P2565)
    get_how $P2566, type_obj
    get_hll_global $P2567, "NQPAttribute"
    $P2568 = $P2567."new"("$!version" :named("name"))
    $P2566."add_attribute"(type_obj, $P2568)
    get_how $P2569, type_obj
    get_hll_global $P2570, "NQPAttribute"
    $P2571 = $P2570."new"("$!compiler_progname" :named("name"))
    $P2569."add_attribute"(type_obj, $P2571)
    get_how $P2572, type_obj
    get_hll_global $P2573, "NQPAttribute"
    $P2574 = $P2573."new"("$!language" :named("name"))
    $P2572."add_attribute"(type_obj, $P2574)
    get_how $P2575, type_obj
    .const 'Sub' $P2576 = "170_1303391590.341" 
    $P2575."add_method"(type_obj, "new", $P2576)
    get_how $P2577, type_obj
    .const 'Sub' $P2578 = "171_1303391590.341" 
    $P2577."add_method"(type_obj, "BUILD", $P2578)
    get_how $P2579, type_obj
    .const 'Sub' $P2580 = "173_1303391590.341" 
    $P2579."add_method"(type_obj, "get_exports", $P2580)
    get_how $P2581, type_obj
    .const 'Sub' $P2582 = "176_1303391590.341" 
    $P2581."add_method"(type_obj, "get_module", $P2582)
    get_how $P2583, type_obj
    .const 'Sub' $P2584 = "177_1303391590.341" 
    $P2583."add_method"(type_obj, "language", $P2584)
    get_how $P2585, type_obj
    .const 'Sub' $P2586 = "178_1303391590.341" 
    $P2585."add_method"(type_obj, "load_module", $P2586)
    get_how $P2587, type_obj
    .const 'Sub' $P2588 = "180_1303391590.341" 
    $P2587."add_method"(type_obj, "import", $P2588)
    get_how $P2589, type_obj
    .const 'Sub' $P2590 = "185_1303391590.341" 
    $P2589."add_method"(type_obj, "autoprint", $P2590)
    get_how $P2591, type_obj
    .const 'Sub' $P2592 = "186_1303391590.341" 
    $P2591."add_method"(type_obj, "interactive", $P2592)
    get_how $P2593, type_obj
    .const 'Sub' $P2594 = "193_1303391590.341" 
    $P2593."add_method"(type_obj, "eval", $P2594)
    get_how $P2595, type_obj
    .const 'Sub' $P2596 = "195_1303391590.341" 
    $P2595."add_method"(type_obj, "ctxsave", $P2596)
    get_how $P2597, type_obj
    .const 'Sub' $P2598 = "196_1303391590.341" 
    $P2597."add_method"(type_obj, "panic", $P2598)
    get_how $P2599, type_obj
    .const 'Sub' $P2600 = "197_1303391590.341" 
    $P2599."add_method"(type_obj, "stages", $P2600)
    get_how $P2601, type_obj
    .const 'Sub' $P2602 = "198_1303391590.341" 
    $P2601."add_method"(type_obj, "parsegrammar", $P2602)
    get_how $P2603, type_obj
    .const 'Sub' $P2604 = "199_1303391590.341" 
    $P2603."add_method"(type_obj, "parseactions", $P2604)
    get_how $P2605, type_obj
    .const 'Sub' $P2606 = "200_1303391590.341" 
    $P2605."add_method"(type_obj, "astgrammar", $P2606)
    get_how $P2607, type_obj
    .const 'Sub' $P2608 = "201_1303391590.341" 
    $P2607."add_method"(type_obj, "commandline_banner", $P2608)
    get_how $P2609, type_obj
    .const 'Sub' $P2610 = "202_1303391590.341" 
    $P2609."add_method"(type_obj, "commandline_prompt", $P2610)
    get_how $P2611, type_obj
    .const 'Sub' $P2612 = "203_1303391590.341" 
    $P2611."add_method"(type_obj, "compiler_progname", $P2612)
    get_how $P2613, type_obj
    .const 'Sub' $P2614 = "204_1303391590.341" 
    $P2613."add_method"(type_obj, "commandline_options", $P2614)
    get_how $P2615, type_obj
    .const 'Sub' $P2616 = "205_1303391590.341" 
    $P2615."add_method"(type_obj, "command_line", $P2616)
    get_how $P2617, type_obj
    .const 'Sub' $P2618 = "207_1303391590.341" 
    $P2617."add_method"(type_obj, "process_args", $P2618)
    get_how $P2619, type_obj
    .const 'Sub' $P2620 = "210_1303391590.341" 
    $P2619."add_method"(type_obj, "evalfiles", $P2620)
    get_how $P2621, type_obj
    .const 'Sub' $P2622 = "214_1303391590.341" 
    $P2621."add_method"(type_obj, "compile", $P2622)
    get_how $P2623, type_obj
    .const 'Sub' $P2624 = "216_1303391590.341" 
    $P2623."add_method"(type_obj, "parse", $P2624)
    get_how $P2625, type_obj
    .const 'Sub' $P2626 = "217_1303391590.341" 
    $P2625."add_method"(type_obj, "past", $P2626)
    get_how $P2627, type_obj
    .const 'Sub' $P2628 = "218_1303391590.341" 
    $P2627."add_method"(type_obj, "post", $P2628)
    get_how $P2629, type_obj
    .const 'Sub' $P2630 = "219_1303391590.341" 
    $P2629."add_method"(type_obj, "pir", $P2630)
    get_how $P2631, type_obj
    .const 'Sub' $P2632 = "220_1303391590.341" 
    $P2631."add_method"(type_obj, "evalpmc", $P2632)
    get_how $P2633, type_obj
    .const 'Sub' $P2634 = "221_1303391590.341" 
    $P2633."add_method"(type_obj, "dumper", $P2634)
    get_how $P2635, type_obj
    .const 'Sub' $P2636 = "223_1303391590.341" 
    $P2635."add_method"(type_obj, "usage", $P2636)
    get_how $P2637, type_obj
    .const 'Sub' $P2638 = "224_1303391590.341" 
    $P2637."add_method"(type_obj, "version", $P2638)
    get_how $P2639, type_obj
    .const 'Sub' $P2640 = "225_1303391590.341" 
    $P2639."add_method"(type_obj, "removestage", $P2640)
    get_how $P2641, type_obj
    .const 'Sub' $P2642 = "227_1303391590.341" 
    $P2641."add_method"(type_obj, "addstage", $P2642)
    get_how $P2643, type_obj
    .const 'Sub' $P2644 = "230_1303391590.341" 
    $P2643."add_method"(type_obj, "parse_name", $P2644)
    get_how $P2645, type_obj
    .const 'Sub' $P2646 = "232_1303391590.341" 
    $P2645."add_method"(type_obj, "lineof", $P2646)
    get_how $P2647, type_obj
    $P2648 = $P2647."compose"(type_obj)
    .return ($P2648)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1391
.annotate 'line', 1126
    .lex "$value", param_1391
.annotate 'line', 1127
    find_lex $P1394, "$value"
    unless_null $P1394, vivify_681
    new $P1394, "Undef"
  vivify_681:
    isa $I1395, $P1394, "NameSpace"
    if $I1395, if_1393
.annotate 'line', 1129
    find_lex $P1399, "$value"
    unless_null $P1399, vivify_682
    new $P1399, "Undef"
  vivify_682:
    isa $I1400, $P1399, "Sub"
    if $I1400, if_1398
    new $P1402, "String"
    assign $P1402, "var"
    set $P1397, $P1402
    goto if_1398_end
  if_1398:
    new $P1401, "String"
    assign $P1401, "sub"
    set $P1397, $P1401
  if_1398_end:
    set $P1392, $P1397
.annotate 'line', 1127
    goto if_1393_end
  if_1393:
    new $P1396, "String"
    assign $P1396, "namespace"
    set $P1392, $P1396
  if_1393_end:
.annotate 'line', 1126
    .return ($P1392)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1406"  :anon :subid("169_1303391590.341") :outer("167_1303391590.341")
.annotate 'line', 1093
    $P1408 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1408
.annotate 'line', 1090
    getinterp $P1409
    set $P1410, $P1409["context"]
    unless_null $P1410, vivify_683
    new $P1410, "Undef"
  vivify_683:
    find_lex $P1411, "$?PACKAGE"
    get_who $P1412, $P1411
    set $P1412["$interactive_ctx"], $P1410
    find_lex $P1413, "%pad_contents"
    unless_null $P1413, vivify_684
    $P1413 = root_new ['parrot';'Hash']
  vivify_684:
.annotate 'line', 1095
    find_lex $P1414, "$?PACKAGE"
    get_who $P1415, $P1414
    set $P1416, $P1415["$interactive_ctx"]
    unless_null $P1416, vivify_685
    new $P1416, "Undef"
  vivify_685:
    getattribute $P1417, $P1416, "lex_pad"
    find_lex $P1418, "%pad_contents"
    unless_null $P1418, vivify_686
    $P1418 = root_new ['parrot';'Hash']
  vivify_686:
    copy $P1417, $P1418
.annotate 'line', 1094
    find_lex $P1419, "$?PACKAGE"
    get_who $P1420, $P1419
    set $P1420["%interactive_pad"], $P1417
.annotate 'line', 1088
    .return ($P1417)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("170_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1428
.annotate 'line', 1100
    .lex "self", param_1428
.annotate 'line', 1101
    new $P1429, "Undef"
    .lex "$obj", $P1429
    find_lex $P1430, "self"
    repr_instance_of $P1431, $P1430
    store_lex "$obj", $P1431
.annotate 'line', 1102
    find_lex $P1432, "$obj"
    unless_null $P1432, vivify_689
    new $P1432, "Undef"
  vivify_689:
    $P1432."BUILD"()
    find_lex $P1433, "$obj"
    unless_null $P1433, vivify_690
    new $P1433, "Undef"
  vivify_690:
.annotate 'line', 1100
    .return ($P1433)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1435
.annotate 'line', 1106
    .const 'Sub' $P1456 = "172_1303391590.341" 
    capture_lex $P1456
    .lex "self", param_1435
.annotate 'line', 1116
    new $P1436, "Undef"
    .lex "$config_hash_idx", $P1436
.annotate 'line', 1120
    $P1437 = root_new ['parrot';'Hash']
    .lex "%config", $P1437
.annotate 'line', 1121
    new $P1438, "Undef"
    .lex "$version", $P1438
.annotate 'line', 1122
    new $P1439, "Undef"
    .lex "$revision", $P1439
.annotate 'line', 1108
    split $P1440, " ", "parse past post pir evalpmc"
    find_lex $P1441, "self"
    find_lex $P1442, "$?CLASS"
    setattribute $P1441, $P1442, "@!stages", $P1440
.annotate 'line', 1111
    split $P1443, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1444, "self"
    find_lex $P1445, "$?CLASS"
    setattribute $P1444, $P1445, "@!cmdoptions", $P1443
.annotate 'line', 1112
    new $P1446, "String"
    assign $P1446, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1447, "self"
    find_lex $P1448, "$?CLASS"
    setattribute $P1447, $P1448, "$!usage", $P1446
.annotate 'line', 1113
    find_lex $P1450, "self"
    find_lex $P1451, "$?CLASS"
    getattribute $P1452, $P1450, $P1451, "@!cmdoptions"
    unless_null $P1452, vivify_691
    $P1452 = root_new ['parrot';'ResizablePMCArray']
  vivify_691:
    defined $I1453, $P1452
    unless $I1453, for_undef_692
    iter $P1449, $P1452
    new $P1469, 'ExceptionHandler'
    set_label $P1469, loop1468_handler
    $P1469."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1469
  loop1468_test:
    unless $P1449, loop1468_done
    shift $P1454, $P1449
  loop1468_redo:
    .const 'Sub' $P1456 = "172_1303391590.341" 
    capture_lex $P1456
    $P1456($P1454)
  loop1468_next:
    goto loop1468_test
  loop1468_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1470, exception, 'type'
    eq $P1470, .CONTROL_LOOP_NEXT, loop1468_next
    eq $P1470, .CONTROL_LOOP_REDO, loop1468_redo
  loop1468_done:
    pop_eh 
  for_undef_692:
.annotate 'line', 1116

            .include 'iglobals.pasm'
            $P1471 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1471
.annotate 'line', 1120
    find_lex $P1472, "$config_hash_idx"
    unless_null $P1472, vivify_695
    new $P1472, "Undef"
  vivify_695:
    set $I1473, $P1472
    getinterp $P1474
    set $P1475, $P1474[$I1473]
    unless_null $P1475, vivify_696
    new $P1475, "Undef"
  vivify_696:
    store_lex "%config", $P1475
.annotate 'line', 1121
    find_lex $P1476, "%config"
    unless_null $P1476, vivify_697
    $P1476 = root_new ['parrot';'Hash']
  vivify_697:
    set $P1477, $P1476["VERSION"]
    unless_null $P1477, vivify_698
    new $P1477, "Undef"
  vivify_698:
    store_lex "$version", $P1477
.annotate 'line', 1122
    find_lex $P1479, "%config"
    unless_null $P1479, vivify_699
    $P1479 = root_new ['parrot';'Hash']
  vivify_699:
    set $P1480, $P1479["git_describe"]
    unless_null $P1480, vivify_700
    new $P1480, "Undef"
  vivify_700:
    set $P1478, $P1480
    defined $I1482, $P1478
    if $I1482, default_1481
    new $P1483, "String"
    assign $P1483, "(unknown)"
    set $P1478, $P1483
  default_1481:
    store_lex "$revision", $P1478
.annotate 'line', 1123
    new $P1484, 'String'
    set $P1484, "This compiler is built with NQP, parrot "
    find_lex $P1485, "$version"
    unless_null $P1485, vivify_701
    new $P1485, "Undef"
  vivify_701:
    concat $P1486, $P1484, $P1485
    concat $P1487, $P1486, ", revision "
    find_lex $P1488, "$revision"
    unless_null $P1488, vivify_702
    new $P1488, "Undef"
  vivify_702:
    concat $P1489, $P1487, $P1488
    find_lex $P1490, "self"
    find_lex $P1491, "$?CLASS"
    setattribute $P1490, $P1491, "$!version", $P1489
.annotate 'line', 1106
    .return ($P1489)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1455"  :anon :subid("172_1303391590.341") :outer("171_1303391590.341")
    .param pmc param_1457
.annotate 'line', 1113
    .lex "$_", param_1457
.annotate 'line', 1114
    find_lex $P1458, "self"
    find_lex $P1459, "$?CLASS"
    getattribute $P1460, $P1458, $P1459, "$!usage"
    unless_null $P1460, vivify_693
    new $P1460, "Undef"
  vivify_693:
    new $P1461, 'String'
    set $P1461, "    "
    find_lex $P1462, "$_"
    unless_null $P1462, vivify_694
    new $P1462, "Undef"
  vivify_694:
    concat $P1463, $P1461, $P1462
    concat $P1464, $P1463, "\n"
    concat $P1465, $P1460, $P1464
    find_lex $P1466, "self"
    find_lex $P1467, "$?CLASS"
    setattribute $P1466, $P1467, "$!usage", $P1465
.annotate 'line', 1113
    .return ($P1465)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("173_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1494
    .param pmc param_1495
    .param pmc param_1498 :slurpy
    .param pmc param_1496 :optional :named("tagset")
    .param int has_param_1496 :opt_flag
.annotate 'line', 1132
    .const 'Sub' $P1564 = "175_1303391590.341" 
    capture_lex $P1564
    .const 'Sub' $P1543 = "174_1303391590.341" 
    capture_lex $P1543
    .lex "self", param_1494
    .lex "$module", param_1495
    if has_param_1496, optparam_703
    new $P1497, "Undef"
    set param_1496, $P1497
  optparam_703:
    .lex "$tagset", param_1496
    .lex "@symbols", param_1498
.annotate 'line', 1139
    $P1499 = root_new ['parrot';'Hash']
    .lex "%exports", $P1499
.annotate 'line', 1140
    $P1500 = root_new ['parrot';'Hash']
    .lex "%source", $P1500
.annotate 'line', 1134
    find_lex $P1502, "$module"
    unless_null $P1502, vivify_704
    new $P1502, "Undef"
  vivify_704:
    does $I1503, $P1502, "hash"
    new $P1504, 'Integer'
    set $P1504, $I1503
    isfalse $I1505, $P1504
    unless $I1505, if_1501_end
.annotate 'line', 1135
    find_lex $P1506, "self"
    find_lex $P1507, "$module"
    unless_null $P1507, vivify_705
    new $P1507, "Undef"
  vivify_705:
    $P1508 = $P1506."get_module"($P1507)
    store_lex "$module", $P1508
  if_1501_end:
.annotate 'line', 1138
    find_lex $P1510, "$tagset"
    unless_null $P1510, vivify_706
    new $P1510, "Undef"
  vivify_706:
    set $P1509, $P1510
    defined $I1512, $P1509
    if $I1512, default_1511
    find_lex $P1515, "@symbols"
    unless_null $P1515, vivify_707
    $P1515 = root_new ['parrot';'ResizablePMCArray']
  vivify_707:
    if $P1515, if_1514
    new $P1517, "String"
    assign $P1517, "DEFAULT"
    set $P1513, $P1517
    goto if_1514_end
  if_1514:
    new $P1516, "String"
    assign $P1516, "ALL"
    set $P1513, $P1516
  if_1514_end:
    set $P1509, $P1513
  default_1511:
    store_lex "$tagset", $P1509
    find_lex $P1518, "%exports"
    unless_null $P1518, vivify_708
    $P1518 = root_new ['parrot';'Hash']
  vivify_708:
.annotate 'line', 1140
    find_lex $P1519, "$tagset"
    unless_null $P1519, vivify_709
    new $P1519, "Undef"
  vivify_709:
    set $S1520, $P1519
    find_lex $P1521, "$module"
    unless_null $P1521, vivify_710
    $P1521 = root_new ['parrot';'Hash']
  vivify_710:
    set $P1522, $P1521["EXPORT"]
    unless_null $P1522, vivify_711
    $P1522 = root_new ['parrot';'Hash']
  vivify_711:
    set $P1523, $P1522[$S1520]
    unless_null $P1523, vivify_712
    new $P1523, "Undef"
  vivify_712:
    store_lex "%source", $P1523
.annotate 'line', 1141
    find_lex $P1525, "%source"
    unless_null $P1525, vivify_713
    $P1525 = root_new ['parrot';'Hash']
  vivify_713:
    defined $I1526, $P1525
    new $P1527, 'Integer'
    set $P1527, $I1526
    isfalse $I1528, $P1527
    unless $I1528, if_1524_end
.annotate 'line', 1142
    find_lex $P1531, "$tagset"
    unless_null $P1531, vivify_714
    new $P1531, "Undef"
  vivify_714:
    set $S1532, $P1531
    iseq $I1533, $S1532, "ALL"
    if $I1533, if_1530
    $P1535 = root_new ['parrot';'Hash']
    set $P1529, $P1535
    goto if_1530_end
  if_1530:
    find_lex $P1534, "$module"
    unless_null $P1534, vivify_715
    new $P1534, "Undef"
  vivify_715:
    set $P1529, $P1534
  if_1530_end:
    store_lex "%source", $P1529
  if_1524_end:
.annotate 'line', 1144
    find_lex $P1537, "@symbols"
    unless_null $P1537, vivify_716
    $P1537 = root_new ['parrot';'ResizablePMCArray']
  vivify_716:
    if $P1537, if_1536
.annotate 'line', 1151
    find_lex $P1560, "%source"
    unless_null $P1560, vivify_717
    $P1560 = root_new ['parrot';'Hash']
  vivify_717:
    defined $I1561, $P1560
    unless $I1561, for_undef_718
    iter $P1559, $P1560
    new $P1577, 'ExceptionHandler'
    set_label $P1577, loop1576_handler
    $P1577."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1577
  loop1576_test:
    unless $P1559, loop1576_done
    shift $P1562, $P1559
  loop1576_redo:
    .const 'Sub' $P1564 = "175_1303391590.341" 
    capture_lex $P1564
    $P1564($P1562)
  loop1576_next:
    goto loop1576_test
  loop1576_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1578, exception, 'type'
    eq $P1578, .CONTROL_LOOP_NEXT, loop1576_next
    eq $P1578, .CONTROL_LOOP_REDO, loop1576_redo
  loop1576_done:
    pop_eh 
  for_undef_718:
.annotate 'line', 1150
    goto if_1536_end
  if_1536:
.annotate 'line', 1145
    find_lex $P1539, "@symbols"
    unless_null $P1539, vivify_725
    $P1539 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    defined $I1540, $P1539
    unless $I1540, for_undef_726
    iter $P1538, $P1539
    new $P1557, 'ExceptionHandler'
    set_label $P1557, loop1556_handler
    $P1557."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1557
  loop1556_test:
    unless $P1538, loop1556_done
    shift $P1541, $P1538
  loop1556_redo:
    .const 'Sub' $P1543 = "174_1303391590.341" 
    capture_lex $P1543
    $P1543($P1541)
  loop1556_next:
    goto loop1556_test
  loop1556_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1558, exception, 'type'
    eq $P1558, .CONTROL_LOOP_NEXT, loop1556_next
    eq $P1558, .CONTROL_LOOP_REDO, loop1556_redo
  loop1556_done:
    pop_eh 
  for_undef_726:
  if_1536_end:
.annotate 'line', 1144
    find_lex $P1579, "%exports"
    unless_null $P1579, vivify_735
    $P1579 = root_new ['parrot';'Hash']
  vivify_735:
.annotate 'line', 1132
    .return ($P1579)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1563"  :anon :subid("175_1303391590.341") :outer("173_1303391590.341")
    .param pmc param_1566
.annotate 'line', 1152
    new $P1565, "Undef"
    .lex "$value", $P1565
    .lex "$_", param_1566
    find_lex $P1567, "$_"
    unless_null $P1567, vivify_719
    new $P1567, "Undef"
  vivify_719:
    $P1568 = $P1567."value"()
    store_lex "$value", $P1568
.annotate 'line', 1153
    find_lex $P1569, "$value"
    unless_null $P1569, vivify_720
    new $P1569, "Undef"
  vivify_720:
    find_lex $P1570, "$_"
    unless_null $P1570, vivify_721
    new $P1570, "Undef"
  vivify_721:
    $P1571 = $P1570."key"()
    find_lex $P1572, "$value"
    unless_null $P1572, vivify_722
    new $P1572, "Undef"
  vivify_722:
    $P1573 = "value_type"($P1572)
    find_lex $P1574, "%exports"
    unless_null $P1574, vivify_723
    $P1574 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1574
  vivify_723:
    set $P1575, $P1574[$P1573]
    unless_null $P1575, vivify_724
    $P1575 = root_new ['parrot';'Hash']
    set $P1574[$P1573], $P1575
  vivify_724:
    set $P1575[$P1571], $P1569
.annotate 'line', 1151
    .return ($P1569)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1542"  :anon :subid("174_1303391590.341") :outer("173_1303391590.341")
    .param pmc param_1545
.annotate 'line', 1146
    new $P1544, "Undef"
    .lex "$value", $P1544
    .lex "$_", param_1545
    find_lex $P1546, "$_"
    unless_null $P1546, vivify_727
    new $P1546, "Undef"
  vivify_727:
    set $S1547, $P1546
    find_lex $P1548, "%source"
    unless_null $P1548, vivify_728
    $P1548 = root_new ['parrot';'Hash']
  vivify_728:
    set $P1549, $P1548[$S1547]
    unless_null $P1549, vivify_729
    new $P1549, "Undef"
  vivify_729:
    store_lex "$value", $P1549
.annotate 'line', 1147
    find_lex $P1550, "$value"
    unless_null $P1550, vivify_730
    new $P1550, "Undef"
  vivify_730:
    find_lex $P1551, "$_"
    unless_null $P1551, vivify_731
    new $P1551, "Undef"
  vivify_731:
    find_lex $P1552, "$value"
    unless_null $P1552, vivify_732
    new $P1552, "Undef"
  vivify_732:
    $P1553 = "value_type"($P1552)
    find_lex $P1554, "%exports"
    unless_null $P1554, vivify_733
    $P1554 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1554
  vivify_733:
    set $P1555, $P1554[$P1553]
    unless_null $P1555, vivify_734
    $P1555 = root_new ['parrot';'Hash']
    set $P1554[$P1553], $P1555
  vivify_734:
    set $P1555[$P1551], $P1550
.annotate 'line', 1145
    .return ($P1550)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1581
    .param pmc param_1582
.annotate 'line', 1159
    .lex "self", param_1581
    .lex "$name", param_1582
.annotate 'line', 1160
    $P1583 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1583
    find_lex $P1584, "self"
    find_lex $P1585, "$name"
    unless_null $P1585, vivify_736
    new $P1585, "Undef"
  vivify_736:
    $P1586 = $P1584."parse_name"($P1585)
    store_lex "@name", $P1586
.annotate 'line', 1161
    find_lex $P1587, "@name"
    unless_null $P1587, vivify_737
    $P1587 = root_new ['parrot';'ResizablePMCArray']
  vivify_737:
    find_lex $P1588, "self"
    find_lex $P1589, "$?CLASS"
    getattribute $P1590, $P1588, $P1589, "$!language"
    unless_null $P1590, vivify_738
    new $P1590, "Undef"
  vivify_738:
    set $S1591, $P1590
    downcase $S1592, $S1591
    $P1587."unshift"($S1592)
.annotate 'line', 1162
    find_lex $P1593, "@name"
    unless_null $P1593, vivify_739
    $P1593 = root_new ['parrot';'ResizablePMCArray']
  vivify_739:
    get_root_namespace $P1594, $P1593
.annotate 'line', 1159
    .return ($P1594)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1596
    .param pmc param_1597 :optional
    .param int has_param_1597 :opt_flag
.annotate 'line', 1165
    .lex "self", param_1596
    if has_param_1597, optparam_740
    new $P1598, "Undef"
    set param_1597, $P1598
  optparam_740:
    .lex "$name", param_1597
.annotate 'line', 1166
    find_lex $P1600, "$name"
    unless_null $P1600, vivify_741
    new $P1600, "Undef"
  vivify_741:
    unless $P1600, if_1599_end
.annotate 'line', 1167
    find_lex $P1601, "$name"
    unless_null $P1601, vivify_742
    new $P1601, "Undef"
  vivify_742:
    find_lex $P1602, "self"
    find_lex $P1603, "$?CLASS"
    setattribute $P1602, $P1603, "$!language", $P1601
.annotate 'line', 1168
    find_lex $P1604, "$name"
    unless_null $P1604, vivify_743
    new $P1604, "Undef"
  vivify_743:
    set $S1605, $P1604
    find_lex $P1606, "self"
    compreg $S1605, $P1606
  if_1599_end:
.annotate 'line', 1166
    find_lex $P1607, "self"
    find_lex $P1608, "$?CLASS"
    getattribute $P1609, $P1607, $P1608, "$!language"
    unless_null $P1609, vivify_744
    new $P1609, "Undef"
  vivify_744:
.annotate 'line', 1165
    .return ($P1609)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1611
    .param pmc param_1612
.annotate 'line', 1173
    .const 'Sub' $P1622 = "179_1303391590.341" 
    capture_lex $P1622
    .lex "self", param_1611
    .lex "$name", param_1612
.annotate 'line', 1174
    new $P1613, "Undef"
    .lex "$base", $P1613
.annotate 'line', 1175
    new $P1614, "Undef"
    .lex "$loaded", $P1614
.annotate 'line', 1174
    find_lex $P1615, "self"
    find_lex $P1616, "$name"
    unless_null $P1616, vivify_745
    new $P1616, "Undef"
  vivify_745:
    $P1617 = $P1615."parse_name"($P1616)
    join $S1618, "/", $P1617
    new $P1619, 'String'
    set $P1619, $S1618
    store_lex "$base", $P1619
.annotate 'line', 1175
    new $P1620, "Integer"
    assign $P1620, 0
    store_lex "$loaded", $P1620
.annotate 'line', 1176
    .const 'Sub' $P1622 = "179_1303391590.341" 
    capture_lex $P1622
    $P1622()
.annotate 'line', 1177
    find_lex $P1635, "$loaded"
    unless_null $P1635, vivify_747
    new $P1635, "Undef"
  vivify_747:
    if $P1635, unless_1634_end
    find_lex $P1636, "$base"
    unless_null $P1636, vivify_748
    new $P1636, "Undef"
  vivify_748:
    concat $P1637, $P1636, ".pir"
    set $S1638, $P1637
    load_bytecode $S1638
    new $P1639, "Integer"
    assign $P1639, 1
    store_lex "$loaded", $P1639
  unless_1634_end:
.annotate 'line', 1178
    find_lex $P1640, "self"
    find_lex $P1641, "$name"
    unless_null $P1641, vivify_749
    new $P1641, "Undef"
  vivify_749:
    $P1642 = $P1640."get_module"($P1641)
.annotate 'line', 1173
    .return ($P1642)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1621"  :anon :subid("179_1303391590.341") :outer("178_1303391590.341")
.annotate 'line', 1176
    new $P1629, 'ExceptionHandler'
    set_label $P1629, control_1628
    $P1629."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1629
    find_lex $P1623, "$base"
    unless_null $P1623, vivify_746
    new $P1623, "Undef"
  vivify_746:
    concat $P1624, $P1623, ".pbc"
    set $S1625, $P1624
    load_bytecode $S1625
    new $P1626, "Integer"
    assign $P1626, 1
    store_lex "$loaded", $P1626
    pop_eh 
    goto skip_handler_1627
  control_1628:
    .local pmc exception 
    .get_results (exception) 
    new $P1632, 'Integer'
    set $P1632, 1
    set exception["handled"], $P1632
    set $I1633, exception["handled"]
    ne $I1633, 1, nothandled_1631
  handled_1630:
    .return (exception)
  nothandled_1631:
    rethrow exception
  skip_handler_1627:
    .return ($P1626)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("180_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1644
    .param pmc param_1645
    .param pmc param_1646
.annotate 'line', 1181
    .const 'Sub' $P1652 = "181_1303391590.341" 
    capture_lex $P1652
    .lex "self", param_1644
    .lex "$target", param_1645
    .lex "%exports", param_1646
.annotate 'line', 1182
    find_lex $P1648, "%exports"
    unless_null $P1648, vivify_750
    $P1648 = root_new ['parrot';'Hash']
  vivify_750:
    defined $I1649, $P1648
    unless $I1649, for_undef_751
    iter $P1647, $P1648
    new $P1734, 'ExceptionHandler'
    set_label $P1734, loop1733_handler
    $P1734."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1734
  loop1733_test:
    unless $P1647, loop1733_done
    shift $P1650, $P1647
  loop1733_redo:
    .const 'Sub' $P1652 = "181_1303391590.341" 
    capture_lex $P1652
    $P1652($P1650)
  loop1733_next:
    goto loop1733_test
  loop1733_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1735, exception, 'type'
    eq $P1735, .CONTROL_LOOP_NEXT, loop1733_next
    eq $P1735, .CONTROL_LOOP_REDO, loop1733_redo
  loop1733_done:
    pop_eh 
  for_undef_751:
.annotate 'line', 1181
    .return ($P1647)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1651"  :anon :subid("181_1303391590.341") :outer("180_1303391590.341")
    .param pmc param_1655
.annotate 'line', 1182
    .const 'Sub' $P1722 = "184_1303391590.341" 
    capture_lex $P1722
    .const 'Sub' $P1702 = "183_1303391590.341" 
    capture_lex $P1702
    .const 'Sub' $P1673 = "182_1303391590.341" 
    capture_lex $P1673
.annotate 'line', 1183
    new $P1653, "Undef"
    .lex "$type", $P1653
.annotate 'line', 1184
    $P1654 = root_new ['parrot';'Hash']
    .lex "%items", $P1654
    .lex "$_", param_1655
.annotate 'line', 1183
    find_lex $P1656, "$_"
    unless_null $P1656, vivify_752
    new $P1656, "Undef"
  vivify_752:
    $P1657 = $P1656."key"()
    store_lex "$type", $P1657
.annotate 'line', 1184
    find_lex $P1658, "$_"
    unless_null $P1658, vivify_753
    new $P1658, "Undef"
  vivify_753:
    $P1659 = $P1658."value"()
    store_lex "%items", $P1659
.annotate 'line', 1185
    find_lex $P1662, "self"
    new $P1663, 'String'
    set $P1663, "import_"
    find_lex $P1664, "$type"
    unless_null $P1664, vivify_754
    new $P1664, "Undef"
  vivify_754:
    concat $P1665, $P1663, $P1664
    set $S1666, $P1665
    can $I1667, $P1662, $S1666
    if $I1667, if_1661
.annotate 'line', 1188
    find_lex $P1691, "$target"
    unless_null $P1691, vivify_755
    new $P1691, "Undef"
  vivify_755:
    new $P1692, 'String'
    set $P1692, "add_"
    find_lex $P1693, "$type"
    unless_null $P1693, vivify_756
    new $P1693, "Undef"
  vivify_756:
    concat $P1694, $P1692, $P1693
    set $S1695, $P1694
    can $I1696, $P1691, $S1695
    if $I1696, if_1690
.annotate 'line', 1192
    find_lex $P1718, "%items"
    unless_null $P1718, vivify_757
    $P1718 = root_new ['parrot';'Hash']
  vivify_757:
    defined $I1719, $P1718
    unless $I1719, for_undef_758
    iter $P1717, $P1718
    new $P1731, 'ExceptionHandler'
    set_label $P1731, loop1730_handler
    $P1731."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1731
  loop1730_test:
    unless $P1717, loop1730_done
    shift $P1720, $P1717
  loop1730_redo:
    .const 'Sub' $P1722 = "184_1303391590.341" 
    capture_lex $P1722
    $P1722($P1720)
  loop1730_next:
    goto loop1730_test
  loop1730_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1732, exception, 'type'
    eq $P1732, .CONTROL_LOOP_NEXT, loop1730_next
    eq $P1732, .CONTROL_LOOP_REDO, loop1730_redo
  loop1730_done:
    pop_eh 
  for_undef_758:
.annotate 'line', 1191
    set $P1689, $P1717
.annotate 'line', 1188
    goto if_1690_end
  if_1690:
.annotate 'line', 1189
    find_lex $P1698, "%items"
    unless_null $P1698, vivify_762
    $P1698 = root_new ['parrot';'Hash']
  vivify_762:
    defined $I1699, $P1698
    unless $I1699, for_undef_763
    iter $P1697, $P1698
    new $P1715, 'ExceptionHandler'
    set_label $P1715, loop1714_handler
    $P1715."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1715
  loop1714_test:
    unless $P1697, loop1714_done
    shift $P1700, $P1697
  loop1714_redo:
    .const 'Sub' $P1702 = "183_1303391590.341" 
    capture_lex $P1702
    $P1702($P1700)
  loop1714_next:
    goto loop1714_test
  loop1714_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1716, exception, 'type'
    eq $P1716, .CONTROL_LOOP_NEXT, loop1714_next
    eq $P1716, .CONTROL_LOOP_REDO, loop1714_redo
  loop1714_done:
    pop_eh 
  for_undef_763:
.annotate 'line', 1188
    set $P1689, $P1697
  if_1690_end:
    set $P1660, $P1689
.annotate 'line', 1185
    goto if_1661_end
  if_1661:
.annotate 'line', 1186
    find_lex $P1669, "%items"
    unless_null $P1669, vivify_768
    $P1669 = root_new ['parrot';'Hash']
  vivify_768:
    defined $I1670, $P1669
    unless $I1670, for_undef_769
    iter $P1668, $P1669
    new $P1687, 'ExceptionHandler'
    set_label $P1687, loop1686_handler
    $P1687."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1687
  loop1686_test:
    unless $P1668, loop1686_done
    shift $P1671, $P1668
  loop1686_redo:
    .const 'Sub' $P1673 = "182_1303391590.341" 
    capture_lex $P1673
    $P1673($P1671)
  loop1686_next:
    goto loop1686_test
  loop1686_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1688, exception, 'type'
    eq $P1688, .CONTROL_LOOP_NEXT, loop1686_next
    eq $P1688, .CONTROL_LOOP_REDO, loop1686_redo
  loop1686_done:
    pop_eh 
  for_undef_769:
.annotate 'line', 1185
    set $P1660, $P1668
  if_1661_end:
.annotate 'line', 1182
    .return ($P1660)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1721"  :anon :subid("184_1303391590.341") :outer("181_1303391590.341")
    .param pmc param_1723
.annotate 'line', 1192
    .lex "$_", param_1723
    find_lex $P1724, "$_"
    unless_null $P1724, vivify_759
    new $P1724, "Undef"
  vivify_759:
    $P1725 = $P1724."value"()
    find_lex $P1726, "$_"
    unless_null $P1726, vivify_760
    new $P1726, "Undef"
  vivify_760:
    $P1727 = $P1726."key"()
    set $S1728, $P1727
    find_lex $P1729, "$target"
    unless_null $P1729, vivify_761
    $P1729 = root_new ['parrot';'Hash']
    store_lex "$target", $P1729
  vivify_761:
    set $P1729[$S1728], $P1725
    .return ($P1725)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1701"  :anon :subid("183_1303391590.341") :outer("181_1303391590.341")
    .param pmc param_1703
.annotate 'line', 1189
    .lex "$_", param_1703
    find_lex $P1704, "$target"
    unless_null $P1704, vivify_764
    new $P1704, "Undef"
  vivify_764:
    find_lex $P1705, "$_"
    unless_null $P1705, vivify_765
    new $P1705, "Undef"
  vivify_765:
    $P1706 = $P1705."key"()
    find_lex $P1707, "$_"
    unless_null $P1707, vivify_766
    new $P1707, "Undef"
  vivify_766:
    $P1708 = $P1707."value"()
    new $P1709, 'String'
    set $P1709, "add_"
    find_lex $P1710, "$type"
    unless_null $P1710, vivify_767
    new $P1710, "Undef"
  vivify_767:
    concat $P1711, $P1709, $P1710
    set $S1712, $P1711
    $P1713 = $P1704.$S1712($P1706, $P1708)
    .return ($P1713)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1672"  :anon :subid("182_1303391590.341") :outer("181_1303391590.341")
    .param pmc param_1674
.annotate 'line', 1186
    .lex "$_", param_1674
    find_lex $P1675, "self"
    find_lex $P1676, "$target"
    unless_null $P1676, vivify_770
    new $P1676, "Undef"
  vivify_770:
    find_lex $P1677, "$_"
    unless_null $P1677, vivify_771
    new $P1677, "Undef"
  vivify_771:
    $P1678 = $P1677."key"()
    find_lex $P1679, "$_"
    unless_null $P1679, vivify_772
    new $P1679, "Undef"
  vivify_772:
    $P1680 = $P1679."value"()
    new $P1681, 'String'
    set $P1681, "import_"
    find_lex $P1682, "$type"
    unless_null $P1682, vivify_773
    new $P1682, "Undef"
  vivify_773:
    concat $P1683, $P1681, $P1682
    set $S1684, $P1683
    $P1685 = $P1675.$S1684($P1676, $P1678, $P1680)
    .return ($P1685)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1737
    .param pmc param_1738
.annotate 'line', 1197
    .lex "self", param_1737
    .lex "$value", param_1738
.annotate 'line', 1199
    getinterp $P1741
    $P1742 = $P1741."stdout_handle"()
    $N1743 = $P1742."tell"()
    find_dynamic_lex $P1744, "$*AUTOPRINTPOS"
    unless_null $P1744, vivify_774
    get_hll_global $P1744, "$AUTOPRINTPOS"
    unless_null $P1744, vivify_775
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_775:
  vivify_774:
    set $N1745, $P1744
    isgt $I1746, $N1743, $N1745
    unless $I1746, unless_1740
    new $P1739, 'Integer'
    set $P1739, $I1746
    goto unless_1740_end
  unless_1740:
.annotate 'line', 1198
    find_lex $P1747, "$value"
    unless_null $P1747, vivify_776
    new $P1747, "Undef"
  vivify_776:
    set $S1748, $P1747
    say $S1748
  unless_1740_end:
.annotate 'line', 1197
    .return ($P1739)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1750
    .param pmc param_1751 :slurpy :named
.annotate 'line', 1202
    .const 'Sub' $P1783 = "187_1303391590.341" 
    capture_lex $P1783
    .lex "self", param_1750
    .lex "%adverbs", param_1751
.annotate 'line', 1203
    new $P1752, "Undef"
    .lex "$target", $P1752
.annotate 'line', 1207
    new $P1753, "Undef"
    .lex "$stdin", $P1753
.annotate 'line', 1208
    new $P1754, "Undef"
    .lex "$encoding", $P1754
.annotate 'line', 1213
    new $P1755, "Undef"
    .lex "$save_ctx", $P1755
.annotate 'line', 1203
    find_lex $P1756, "%adverbs"
    unless_null $P1756, vivify_777
    $P1756 = root_new ['parrot';'Hash']
  vivify_777:
    set $P1757, $P1756["target"]
    unless_null $P1757, vivify_778
    new $P1757, "Undef"
  vivify_778:
    set $S1758, $P1757
    downcase $S1759, $S1758
    new $P1760, 'String'
    set $P1760, $S1759
    store_lex "$target", $P1760
.annotate 'line', 1205
    getinterp $P1761
    $P1762 = $P1761."stderr_handle"()
    find_lex $P1763, "self"
    $S1764 = $P1763."commandline_banner"()
    print $P1762, $S1764
.annotate 'line', 1207
    getinterp $P1765
    $P1766 = $P1765."stdin_handle"()
    store_lex "$stdin", $P1766
.annotate 'line', 1208
    find_lex $P1767, "%adverbs"
    unless_null $P1767, vivify_779
    $P1767 = root_new ['parrot';'Hash']
  vivify_779:
    set $P1768, $P1767["encoding"]
    unless_null $P1768, vivify_780
    new $P1768, "Undef"
  vivify_780:
    set $S1769, $P1768
    new $P1770, 'String'
    set $P1770, $S1769
    store_lex "$encoding", $P1770
.annotate 'line', 1209
    find_lex $P1774, "$encoding"
    unless_null $P1774, vivify_781
    new $P1774, "Undef"
  vivify_781:
    if $P1774, if_1773
    set $P1772, $P1774
    goto if_1773_end
  if_1773:
    find_lex $P1775, "$encoding"
    unless_null $P1775, vivify_782
    new $P1775, "Undef"
  vivify_782:
    set $S1776, $P1775
    isne $I1777, $S1776, "fixed_8"
    new $P1772, 'Integer'
    set $P1772, $I1777
  if_1773_end:
    unless $P1772, if_1771_end
.annotate 'line', 1210
    find_lex $P1778, "$stdin"
    unless_null $P1778, vivify_783
    new $P1778, "Undef"
  vivify_783:
    find_lex $P1779, "$encoding"
    unless_null $P1779, vivify_784
    new $P1779, "Undef"
  vivify_784:
    $P1778."encoding"($P1779)
  if_1771_end:
.annotate 'line', 1209
    find_lex $P1780, "$save_ctx"
    unless_null $P1780, vivify_785
    new $P1780, "Undef"
  vivify_785:
.annotate 'line', 1214
    new $P1900, 'ExceptionHandler'
    set_label $P1900, loop1899_handler
    $P1900."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1900
  loop1899_test:
    new $P1781, "Integer"
    assign $P1781, 1
    unless $P1781, loop1899_done
  loop1899_redo:
    .const 'Sub' $P1783 = "187_1303391590.341" 
    capture_lex $P1783
    $P1783()
  loop1899_next:
    goto loop1899_test
  loop1899_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1901, exception, 'type'
    eq $P1901, .CONTROL_LOOP_NEXT, loop1899_next
    eq $P1901, .CONTROL_LOOP_REDO, loop1899_redo
  loop1899_done:
    pop_eh 
.annotate 'line', 1202
    .return ($P1781)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1782"  :anon :subid("187_1303391590.341") :outer("186_1303391590.341")
.annotate 'line', 1214
    .const 'Sub' $P1815 = "188_1303391590.341" 
    capture_lex $P1815
.annotate 'line', 1217
    new $P1784, "Undef"
    .lex "$prompt", $P1784
.annotate 'line', 1218
    new $P1785, "Undef"
    .lex "$code", $P1785
.annotate 'line', 1223
    new $P1786, "Undef"
    .lex "$*AUTOPRINTPOS", $P1786
.annotate 'line', 1224
    new $P1787, "Undef"
    .lex "$*CTXSAVE", $P1787
.annotate 'line', 1225
    new $P1788, "Undef"
    .lex "$*MAIN_CTX", $P1788
.annotate 'line', 1215
    find_lex $P1790, "$stdin"
    unless_null $P1790, vivify_786
    new $P1790, "Undef"
  vivify_786:
    if $P1790, unless_1789_end
    set $I1791, .CONTROL_LOOP_LAST
    die 0, $I1791
  unless_1789_end:
.annotate 'line', 1217
    find_lex $P1793, "self"
    $P1794 = $P1793."commandline_prompt"()
    set $P1792, $P1794
    defined $I1796, $P1792
    if $I1796, default_1795
    new $P1797, "String"
    assign $P1797, "> "
    set $P1792, $P1797
  default_1795:
    store_lex "$prompt", $P1792
.annotate 'line', 1218
    find_lex $P1798, "$stdin"
    unless_null $P1798, vivify_787
    new $P1798, "Undef"
  vivify_787:
    find_lex $P1799, "$prompt"
    unless_null $P1799, vivify_788
    new $P1799, "Undef"
  vivify_788:
    set $S1800, $P1799
    $P1801 = $P1798."readline_interactive"($S1800)
    store_lex "$code", $P1801
.annotate 'line', 1220
    find_lex $P1803, "$code"
    unless_null $P1803, vivify_789
    new $P1803, "Undef"
  vivify_789:
    isnull $I1804, $P1803
    unless $I1804, if_1802_end
    set $I1805, .CONTROL_LOOP_LAST
    die 0, $I1805
  if_1802_end:
.annotate 'line', 1223
    getinterp $P1806
    $P1807 = $P1806."stdout_handle"()
    $P1808 = $P1807."tell"()
    store_lex "$*AUTOPRINTPOS", $P1808
.annotate 'line', 1224
    find_lex $P1809, "self"
    store_lex "$*CTXSAVE", $P1809
    find_lex $P1810, "$*MAIN_CTX"
    unless_null $P1810, vivify_790
    get_hll_global $P1810, "$MAIN_CTX"
    unless_null $P1810, vivify_791
    die "Contextual $*MAIN_CTX not found"
  vivify_791:
  vivify_790:
.annotate 'line', 1227
    find_lex $P1813, "$code"
    unless_null $P1813, vivify_792
    new $P1813, "Undef"
  vivify_792:
    if $P1813, if_1812
    set $P1811, $P1813
    goto if_1812_end
  if_1812:
    .const 'Sub' $P1815 = "188_1303391590.341" 
    capture_lex $P1815
    $P1898 = $P1815()
    set $P1811, $P1898
  if_1812_end:
.annotate 'line', 1214
    .return ($P1811)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1814"  :anon :subid("188_1303391590.341") :outer("187_1303391590.341")
.annotate 'line', 1227
    .const 'Sub' $P1848 = "191_1303391590.341" 
    capture_lex $P1848
    .const 'Sub' $P1821 = "189_1303391590.341" 
    capture_lex $P1821
.annotate 'line', 1229
    new $P1816, "Undef"
    .lex "$output", $P1816
.annotate 'line', 1228
    find_lex $P1817, "$code"
    unless_null $P1817, vivify_793
    new $P1817, "Undef"
  vivify_793:
    concat $P1818, $P1817, "\n"
    store_lex "$code", $P1818
    find_lex $P1819, "$output"
    unless_null $P1819, vivify_794
    new $P1819, "Undef"
  vivify_794:
.annotate 'line', 1230
    .const 'Sub' $P1821 = "189_1303391590.341" 
    capture_lex $P1821
    $P1821()
.annotate 'line', 1237
    find_dynamic_lex $P1845, "$*MAIN_CTX"
    unless_null $P1845, vivify_799
    get_hll_global $P1845, "$MAIN_CTX"
    unless_null $P1845, vivify_800
    die "Contextual $*MAIN_CTX not found"
  vivify_800:
  vivify_799:
    defined $I1846, $P1845
    unless $I1846, if_1844_end
    .const 'Sub' $P1848 = "191_1303391590.341" 
    capture_lex $P1848
    $P1848()
  if_1844_end:
.annotate 'line', 1245
    find_lex $P1877, "$output"
    unless_null $P1877, vivify_810
    new $P1877, "Undef"
  vivify_810:
    isnull $I1878, $P1877
    unless $I1878, if_1876_end
    set $I1879, .CONTROL_LOOP_NEXT
    die 0, $I1879
  if_1876_end:
.annotate 'line', 1247
    find_lex $P1882, "$target"
    unless_null $P1882, vivify_811
    new $P1882, "Undef"
  vivify_811:
    isfalse $I1883, $P1882
    if $I1883, if_1881
.annotate 'line', 1249
    find_lex $P1889, "$target"
    unless_null $P1889, vivify_812
    new $P1889, "Undef"
  vivify_812:
    set $S1890, $P1889
    iseq $I1891, $S1890, "pir"
    if $I1891, if_1888
.annotate 'line', 1252
    find_lex $P1893, "self"
    find_lex $P1894, "$output"
    unless_null $P1894, vivify_813
    new $P1894, "Undef"
  vivify_813:
    find_lex $P1895, "$target"
    unless_null $P1895, vivify_814
    new $P1895, "Undef"
  vivify_814:
    find_lex $P1896, "%adverbs"
    unless_null $P1896, vivify_815
    $P1896 = root_new ['parrot';'Hash']
  vivify_815:
    $P1897 = $P1893."dumper"($P1894, $P1895, $P1896 :flat)
.annotate 'line', 1251
    set $P1887, $P1897
.annotate 'line', 1249
    goto if_1888_end
  if_1888:
.annotate 'line', 1250
    find_lex $P1892, "$output"
    unless_null $P1892, vivify_816
    new $P1892, "Undef"
  vivify_816:
    say $P1892
  if_1888_end:
.annotate 'line', 1249
    set $P1880, $P1887
.annotate 'line', 1247
    goto if_1881_end
  if_1881:
.annotate 'line', 1248
    find_lex $P1884, "self"
    find_lex $P1885, "$output"
    unless_null $P1885, vivify_817
    new $P1885, "Undef"
  vivify_817:
    $P1886 = $P1884."autoprint"($P1885)
.annotate 'line', 1247
    set $P1880, $P1886
  if_1881_end:
.annotate 'line', 1227
    .return ($P1880)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1820"  :anon :subid("189_1303391590.341") :outer("188_1303391590.341")
.annotate 'line', 1230
    .const 'Sub' $P1833 = "190_1303391590.341" 
    capture_lex $P1833
    new $P1829, 'ExceptionHandler'
    set_label $P1829, control_1828
    $P1829."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1829
.annotate 'line', 1231
    find_lex $P1822, "self"
    find_lex $P1823, "$code"
    unless_null $P1823, vivify_795
    new $P1823, "Undef"
  vivify_795:
    find_lex $P1824, "$save_ctx"
    unless_null $P1824, vivify_796
    new $P1824, "Undef"
  vivify_796:
    find_lex $P1825, "%adverbs"
    unless_null $P1825, vivify_797
    $P1825 = root_new ['parrot';'Hash']
  vivify_797:
    $P1826 = $P1822."eval"($P1823, $P1825 :flat, $P1824 :named("outer_ctx"))
    store_lex "$output", $P1826
.annotate 'line', 1230
    pop_eh 
    goto skip_handler_1827
  control_1828:
.annotate 'line', 1232
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1833 = "190_1303391590.341" 
    newclosure $P1841, $P1833
    $P1841(exception)
    new $P1842, 'Integer'
    set $P1842, 1
    set exception["handled"], $P1842
    set $I1843, exception["handled"]
    ne $I1843, 1, nothandled_1831
  handled_1830:
    .return (exception)
  nothandled_1831:
    rethrow exception
  skip_handler_1827:
.annotate 'line', 1230
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1832"  :anon :subid("190_1303391590.341") :outer("189_1303391590.341")
    .param pmc param_1834
.annotate 'line', 1232
    .lex "$_", param_1834
    find_lex $P1835, "$_"
    .lex "$!", $P1835
.annotate 'line', 1233
    find_lex $P1836, "$!"
    unless_null $P1836, vivify_798
    new $P1836, "Undef"
  vivify_798:
    set $S1837, $P1836
    new $P1838, 'String'
    set $P1838, $S1837
    concat $P1839, $P1838, "\n"
    print $P1839
.annotate 'line', 1234
    set $I1840, .CONTROL_LOOP_NEXT
    die 0, $I1840
.annotate 'line', 1232
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1847"  :anon :subid("191_1303391590.341") :outer("188_1303391590.341")
.annotate 'line', 1237
    .const 'Sub' $P1861 = "192_1303391590.341" 
    capture_lex $P1861
    find_lex $P1849, "$?PACKAGE"
    get_who $P1850, $P1849
    set $P1851, $P1850["$interactive_ctx"]
    unless_null $P1851, vivify_801
    new $P1851, "Undef"
  vivify_801:
    find_lex $P1852, "$?PACKAGE"
    get_who $P1853, $P1852
    set $P1854, $P1853["%interactive_pad"]
    unless_null $P1854, vivify_802
    $P1854 = root_new ['parrot';'Hash']
  vivify_802:
.annotate 'line', 1240
    find_dynamic_lex $P1856, "$*MAIN_CTX"
    unless_null $P1856, vivify_803
    get_hll_global $P1856, "$MAIN_CTX"
    unless_null $P1856, vivify_804
    die "Contextual $*MAIN_CTX not found"
  vivify_804:
  vivify_803:
    $P1857 = $P1856."lexpad_full"()
    defined $I1858, $P1857
    unless $I1858, for_undef_805
    iter $P1855, $P1857
    new $P1871, 'ExceptionHandler'
    set_label $P1871, loop1870_handler
    $P1871."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1871
  loop1870_test:
    unless $P1855, loop1870_done
    shift $P1859, $P1855
  loop1870_redo:
    .const 'Sub' $P1861 = "192_1303391590.341" 
    capture_lex $P1861
    $P1861($P1859)
  loop1870_next:
    goto loop1870_test
  loop1870_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1872, exception, 'type'
    eq $P1872, .CONTROL_LOOP_NEXT, loop1870_next
    eq $P1872, .CONTROL_LOOP_REDO, loop1870_redo
  loop1870_done:
    pop_eh 
  for_undef_805:
.annotate 'line', 1243
    find_lex $P1873, "$?PACKAGE"
    get_who $P1874, $P1873
    set $P1875, $P1874["$interactive_ctx"]
    unless_null $P1875, vivify_809
    new $P1875, "Undef"
  vivify_809:
    store_lex "$save_ctx", $P1875
.annotate 'line', 1237
    .return ($P1875)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1860"  :anon :subid("192_1303391590.341") :outer("191_1303391590.341")
    .param pmc param_1862
.annotate 'line', 1240
    .lex "$_", param_1862
.annotate 'line', 1241
    find_lex $P1863, "$_"
    unless_null $P1863, vivify_806
    new $P1863, "Undef"
  vivify_806:
    $P1864 = $P1863."value"()
    find_lex $P1865, "$_"
    unless_null $P1865, vivify_807
    new $P1865, "Undef"
  vivify_807:
    $P1866 = $P1865."key"()
    find_lex $P1867, "$?PACKAGE"
    get_who $P1868, $P1867
    set $P1869, $P1868["%interactive_pad"]
    unless_null $P1869, vivify_808
    $P1869 = root_new ['parrot';'Hash']
    set $P1868["%interactive_pad"], $P1869
  vivify_808:
    set $P1869[$P1866], $P1864
.annotate 'line', 1240
    .return ($P1864)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1903
    .param pmc param_1904
    .param pmc param_1905 :slurpy
    .param pmc param_1906 :slurpy :named
.annotate 'line', 1258
    .const 'Sub' $P1925 = "194_1303391590.341" 
    capture_lex $P1925
    .lex "self", param_1903
    .lex "$code", param_1904
    .lex "@args", param_1905
    .lex "%adverbs", param_1906
.annotate 'line', 1259
    new $P1907, "Undef"
    .lex "$output", $P1907
.annotate 'line', 1258
    find_lex $P1908, "$output"
    unless_null $P1908, vivify_818
    new $P1908, "Undef"
  vivify_818:
.annotate 'line', 1260
    find_lex $P1909, "self"
    find_lex $P1910, "$code"
    unless_null $P1910, vivify_819
    new $P1910, "Undef"
  vivify_819:
    find_lex $P1911, "%adverbs"
    unless_null $P1911, vivify_820
    $P1911 = root_new ['parrot';'Hash']
  vivify_820:
    $P1912 = $P1909."compile"($P1910, $P1911 :flat)
    store_lex "$output", $P1912
.annotate 'line', 1262
    find_lex $P1916, "$output"
    unless_null $P1916, vivify_821
    new $P1916, "Undef"
  vivify_821:
    isa $I1917, $P1916, "String"
    new $P1918, 'Integer'
    set $P1918, $I1917
    isfalse $I1919, $P1918
    if $I1919, if_1915
    new $P1914, 'Integer'
    set $P1914, $I1919
    goto if_1915_end
  if_1915:
.annotate 'line', 1263
    find_lex $P1920, "%adverbs"
    unless_null $P1920, vivify_822
    $P1920 = root_new ['parrot';'Hash']
  vivify_822:
    set $P1921, $P1920["target"]
    unless_null $P1921, vivify_823
    new $P1921, "Undef"
  vivify_823:
    set $S1922, $P1921
    iseq $I1923, $S1922, ""
    new $P1914, 'Integer'
    set $P1914, $I1923
  if_1915_end:
    unless $P1914, if_1913_end
    .const 'Sub' $P1925 = "194_1303391590.341" 
    capture_lex $P1925
    $P1925()
  if_1913_end:
.annotate 'line', 1262
    find_lex $P1941, "$output"
    unless_null $P1941, vivify_834
    new $P1941, "Undef"
  vivify_834:
.annotate 'line', 1258
    .return ($P1941)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1924"  :anon :subid("194_1303391590.341") :outer("193_1303391590.341")
.annotate 'line', 1264
    new $P1926, "Undef"
    .lex "$outer_ctx", $P1926
    find_lex $P1927, "%adverbs"
    unless_null $P1927, vivify_824
    $P1927 = root_new ['parrot';'Hash']
  vivify_824:
    set $P1928, $P1927["outer_ctx"]
    unless_null $P1928, vivify_825
    new $P1928, "Undef"
  vivify_825:
    store_lex "$outer_ctx", $P1928
.annotate 'line', 1265
    find_lex $P1930, "$outer_ctx"
    unless_null $P1930, vivify_826
    new $P1930, "Undef"
  vivify_826:
    defined $I1931, $P1930
    unless $I1931, if_1929_end
.annotate 'line', 1266
    find_lex $P1932, "$output"
    unless_null $P1932, vivify_827
    $P1932 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    set $P1933, $P1932[0]
    unless_null $P1933, vivify_828
    new $P1933, "Undef"
  vivify_828:
    find_lex $P1934, "$outer_ctx"
    unless_null $P1934, vivify_829
    new $P1934, "Undef"
  vivify_829:
    $P1933."set_outer_ctx"($P1934)
  if_1929_end:
.annotate 'line', 1269
    find_lex $P1935, "%adverbs"
    unless_null $P1935, vivify_830
    $P1935 = root_new ['parrot';'Hash']
  vivify_830:
    set $P1936, $P1935["trace"]
    unless_null $P1936, vivify_831
    new $P1936, "Undef"
  vivify_831:
    set $I1937, $P1936
    trace $I1937
.annotate 'line', 1270
    find_lex $P1938, "$output"
    unless_null $P1938, vivify_832
    new $P1938, "Undef"
  vivify_832:
    find_lex $P1939, "@args"
    unless_null $P1939, vivify_833
    $P1939 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    $P1940 = $P1938($P1939 :flat)
    store_lex "$output", $P1940
.annotate 'line', 1271
    trace 0
.annotate 'line', 1263
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1943
.annotate 'line', 1277
    .lex "self", param_1943
.annotate 'line', 1279

                $P0 = getinterp
                $P1944 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1944
.annotate 'line', 1283
    new $P1945, "Integer"
    assign $P1945, 0
    store_dynamic_lex "$*CTXSAVE", $P1945
.annotate 'line', 1277
    .return ($P1945)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("196_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1947
    .param pmc param_1948 :slurpy
.annotate 'line', 1286
    .lex "self", param_1947
    .lex "@args", param_1948
.annotate 'line', 1287
    find_lex $P1949, "@args"
    unless_null $P1949, vivify_835
    $P1949 = root_new ['parrot';'ResizablePMCArray']
  vivify_835:
    join $S1950, "", $P1949
    die $S1950
.annotate 'line', 1286
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1952
    .param pmc param_1953 :optional
    .param int has_param_1953 :opt_flag
.annotate 'line', 1290
    .lex "self", param_1952
    if has_param_1953, optparam_836
    $P1954 = root_new ['parrot';'ResizablePMCArray']
    set param_1953, $P1954
  optparam_836:
    .lex "@value", param_1953
.annotate 'line', 1291
    find_lex $P1956, "@value"
    unless_null $P1956, vivify_837
    $P1956 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $N1957, $P1956
    unless $N1957, if_1955_end
.annotate 'line', 1292
    find_lex $P1958, "@value"
    unless_null $P1958, vivify_838
    $P1958 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    find_lex $P1959, "self"
    find_lex $P1960, "$?CLASS"
    setattribute $P1959, $P1960, "@!stages", $P1958
  if_1955_end:
.annotate 'line', 1291
    find_lex $P1961, "self"
    find_lex $P1962, "$?CLASS"
    getattribute $P1963, $P1961, $P1962, "@!stages"
    unless_null $P1963, vivify_839
    $P1963 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
.annotate 'line', 1290
    .return ($P1963)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1965
    .param pmc param_1966 :slurpy
.annotate 'line', 1297
    .lex "self", param_1965
    .lex "@value", param_1966
.annotate 'line', 1298
    find_lex $P1968, "@value"
    unless_null $P1968, vivify_840
    $P1968 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    set $N1969, $P1968
    unless $N1969, if_1967_end
.annotate 'line', 1299
    find_lex $P1970, "@value"
    unless_null $P1970, vivify_841
    $P1970 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $P1971, $P1970[0]
    unless_null $P1971, vivify_842
    new $P1971, "Undef"
  vivify_842:
    find_lex $P1972, "self"
    find_lex $P1973, "$?CLASS"
    setattribute $P1972, $P1973, "$!parsegrammar", $P1971
  if_1967_end:
.annotate 'line', 1298
    find_lex $P1974, "self"
    find_lex $P1975, "$?CLASS"
    getattribute $P1976, $P1974, $P1975, "$!parsegrammar"
    unless_null $P1976, vivify_843
    new $P1976, "Undef"
  vivify_843:
.annotate 'line', 1297
    .return ($P1976)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1978
    .param pmc param_1979 :slurpy
.annotate 'line', 1304
    .lex "self", param_1978
    .lex "@value", param_1979
.annotate 'line', 1305
    find_lex $P1981, "@value"
    unless_null $P1981, vivify_844
    $P1981 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $N1982, $P1981
    unless $N1982, if_1980_end
.annotate 'line', 1306
    find_lex $P1983, "@value"
    unless_null $P1983, vivify_845
    $P1983 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P1984, $P1983[0]
    unless_null $P1984, vivify_846
    new $P1984, "Undef"
  vivify_846:
    find_lex $P1985, "self"
    find_lex $P1986, "$?CLASS"
    setattribute $P1985, $P1986, "$!parseactions", $P1984
  if_1980_end:
.annotate 'line', 1305
    find_lex $P1987, "self"
    find_lex $P1988, "$?CLASS"
    getattribute $P1989, $P1987, $P1988, "$!parseactions"
    unless_null $P1989, vivify_847
    new $P1989, "Undef"
  vivify_847:
.annotate 'line', 1304
    .return ($P1989)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_1991
    .param pmc param_1992 :slurpy
.annotate 'line', 1311
    .lex "self", param_1991
    .lex "@value", param_1992
.annotate 'line', 1312
    find_lex $P1994, "@value"
    unless_null $P1994, vivify_848
    $P1994 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    set $N1995, $P1994
    unless $N1995, if_1993_end
.annotate 'line', 1313
    find_lex $P1996, "@value"
    unless_null $P1996, vivify_849
    $P1996 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P1997, $P1996[0]
    unless_null $P1997, vivify_850
    new $P1997, "Undef"
  vivify_850:
    find_lex $P1998, "self"
    find_lex $P1999, "$?CLASS"
    setattribute $P1998, $P1999, "$!astgrammar", $P1997
  if_1993_end:
.annotate 'line', 1312
    find_lex $P2000, "self"
    find_lex $P2001, "$?CLASS"
    getattribute $P2002, $P2000, $P2001, "$!astgrammar"
    unless_null $P2002, vivify_851
    new $P2002, "Undef"
  vivify_851:
.annotate 'line', 1311
    .return ($P2002)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2004
    .param pmc param_2005 :optional
    .param int has_param_2005 :opt_flag
.annotate 'line', 1318
    .lex "self", param_2004
    if has_param_2005, optparam_852
    new $P2006, "Undef"
    set param_2005, $P2006
  optparam_852:
    .lex "$value", param_2005
.annotate 'line', 1319
    find_lex $P2008, "$value"
    unless_null $P2008, vivify_853
    new $P2008, "Undef"
  vivify_853:
    defined $I2009, $P2008
    unless $I2009, if_2007_end
.annotate 'line', 1320
    find_lex $P2010, "$value"
    unless_null $P2010, vivify_854
    new $P2010, "Undef"
  vivify_854:
    find_lex $P2011, "self"
    find_lex $P2012, "$?CLASS"
    setattribute $P2011, $P2012, "$!commandline_banner", $P2010
  if_2007_end:
.annotate 'line', 1319
    find_lex $P2013, "self"
    find_lex $P2014, "$?CLASS"
    getattribute $P2015, $P2013, $P2014, "$!commandline_banner"
    unless_null $P2015, vivify_855
    new $P2015, "Undef"
  vivify_855:
.annotate 'line', 1318
    .return ($P2015)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2017
    .param pmc param_2018 :optional
    .param int has_param_2018 :opt_flag
.annotate 'line', 1325
    .lex "self", param_2017
    if has_param_2018, optparam_856
    new $P2019, "Undef"
    set param_2018, $P2019
  optparam_856:
    .lex "$value", param_2018
.annotate 'line', 1326
    find_lex $P2021, "$value"
    unless_null $P2021, vivify_857
    new $P2021, "Undef"
  vivify_857:
    defined $I2022, $P2021
    unless $I2022, if_2020_end
.annotate 'line', 1327
    find_lex $P2023, "$value"
    unless_null $P2023, vivify_858
    new $P2023, "Undef"
  vivify_858:
    find_lex $P2024, "self"
    find_lex $P2025, "$?CLASS"
    setattribute $P2024, $P2025, "$!commandline_prompt", $P2023
  if_2020_end:
.annotate 'line', 1326
    find_lex $P2026, "self"
    find_lex $P2027, "$?CLASS"
    getattribute $P2028, $P2026, $P2027, "$!commandline_prompt"
    unless_null $P2028, vivify_859
    new $P2028, "Undef"
  vivify_859:
.annotate 'line', 1325
    .return ($P2028)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2030
    .param pmc param_2031 :optional
    .param int has_param_2031 :opt_flag
.annotate 'line', 1332
    .lex "self", param_2030
    if has_param_2031, optparam_860
    new $P2032, "Undef"
    set param_2031, $P2032
  optparam_860:
    .lex "$value", param_2031
.annotate 'line', 1333
    find_lex $P2034, "$value"
    unless_null $P2034, vivify_861
    new $P2034, "Undef"
  vivify_861:
    defined $I2035, $P2034
    unless $I2035, if_2033_end
.annotate 'line', 1334
    find_lex $P2036, "$value"
    unless_null $P2036, vivify_862
    new $P2036, "Undef"
  vivify_862:
    find_lex $P2037, "self"
    find_lex $P2038, "$?CLASS"
    setattribute $P2037, $P2038, "$!compiler_progname", $P2036
  if_2033_end:
.annotate 'line', 1333
    find_lex $P2039, "self"
    find_lex $P2040, "$?CLASS"
    getattribute $P2041, $P2039, $P2040, "$!compiler_progname"
    unless_null $P2041, vivify_863
    new $P2041, "Undef"
  vivify_863:
.annotate 'line', 1332
    .return ($P2041)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2043
    .param pmc param_2044 :optional
    .param int has_param_2044 :opt_flag
.annotate 'line', 1339
    .lex "self", param_2043
    if has_param_2044, optparam_864
    $P2045 = root_new ['parrot';'ResizablePMCArray']
    set param_2044, $P2045
  optparam_864:
    .lex "@value", param_2044
.annotate 'line', 1340
    find_lex $P2047, "@value"
    unless_null $P2047, vivify_865
    $P2047 = root_new ['parrot';'ResizablePMCArray']
  vivify_865:
    set $N2048, $P2047
    unless $N2048, if_2046_end
.annotate 'line', 1341
    find_lex $P2049, "@value"
    unless_null $P2049, vivify_866
    $P2049 = root_new ['parrot';'ResizablePMCArray']
  vivify_866:
    find_lex $P2050, "self"
    find_lex $P2051, "$?CLASS"
    setattribute $P2050, $P2051, "@!cmdoptions", $P2049
  if_2046_end:
.annotate 'line', 1340
    find_lex $P2052, "self"
    find_lex $P2053, "$?CLASS"
    getattribute $P2054, $P2052, $P2053, "@!cmdoptions"
    unless_null $P2054, vivify_867
    $P2054 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
.annotate 'line', 1339
    .return ($P2054)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2056
    .param pmc param_2057
    .param pmc param_2058 :slurpy :named
.annotate 'line', 1346
    .const 'Sub' $P2084 = "206_1303391590.341" 
    capture_lex $P2084
    .lex "self", param_2056
    .lex "@args", param_2057
    .lex "%adverbs", param_2058
.annotate 'line', 1359
    new $P2059, "Undef"
    .lex "$program-name", $P2059
.annotate 'line', 1360
    new $P2060, "Undef"
    .lex "$res", $P2060
.annotate 'line', 1361
    $P2061 = root_new ['parrot';'Hash']
    .lex "%opts", $P2061
.annotate 'line', 1362
    $P2062 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2062
.annotate 'line', 1355
    find_lex $P2064, "@args"
    unless_null $P2064, vivify_868
    $P2064 = root_new ['parrot';'ResizablePMCArray']
  vivify_868:
    set $P2065, $P2064[2]
    unless_null $P2065, vivify_869
    new $P2065, "Undef"
  vivify_869:
    set $S2066, $P2065
    index $I2067, $S2066, "@INC"
    set $N2068, $I2067
    isge $I2069, $N2068, 0.0
    unless $I2069, if_2063_end
.annotate 'line', 1356
    exit 0
  if_2063_end:
.annotate 'line', 1359
    find_lex $P2070, "@args"
    unless_null $P2070, vivify_870
    $P2070 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    set $P2071, $P2070[0]
    unless_null $P2071, vivify_871
    new $P2071, "Undef"
  vivify_871:
    store_lex "$program-name", $P2071
.annotate 'line', 1360
    find_lex $P2072, "self"
    find_lex $P2073, "@args"
    unless_null $P2073, vivify_872
    $P2073 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    $P2074 = $P2072."process_args"($P2073)
    store_lex "$res", $P2074
.annotate 'line', 1361
    find_lex $P2075, "$res"
    unless_null $P2075, vivify_873
    new $P2075, "Undef"
  vivify_873:
    $P2076 = $P2075."options"()
    store_lex "%opts", $P2076
.annotate 'line', 1362
    find_lex $P2077, "$res"
    unless_null $P2077, vivify_874
    new $P2077, "Undef"
  vivify_874:
    $P2078 = $P2077."arguments"()
    store_lex "@a", $P2078
.annotate 'line', 1364
    find_lex $P2080, "%opts"
    unless_null $P2080, vivify_875
    $P2080 = root_new ['parrot';'Hash']
  vivify_875:
    defined $I2081, $P2080
    unless $I2081, for_undef_876
    iter $P2079, $P2080
    new $P2092, 'ExceptionHandler'
    set_label $P2092, loop2091_handler
    $P2092."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2092
  loop2091_test:
    unless $P2079, loop2091_done
    shift $P2082, $P2079
  loop2091_redo:
    .const 'Sub' $P2084 = "206_1303391590.341" 
    capture_lex $P2084
    $P2084($P2082)
  loop2091_next:
    goto loop2091_test
  loop2091_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2093, exception, 'type'
    eq $P2093, .CONTROL_LOOP_NEXT, loop2091_next
    eq $P2093, .CONTROL_LOOP_REDO, loop2091_redo
  loop2091_done:
    pop_eh 
  for_undef_876:
.annotate 'line', 1367
    find_lex $P2095, "%adverbs"
    unless_null $P2095, vivify_882
    $P2095 = root_new ['parrot';'Hash']
  vivify_882:
    set $P2096, $P2095["help"]
    unless_null $P2096, vivify_883
    new $P2096, "Undef"
  vivify_883:
    unless $P2096, if_2094_end
    find_lex $P2097, "self"
    find_lex $P2098, "$program-name"
    unless_null $P2098, vivify_884
    new $P2098, "Undef"
  vivify_884:
    $P2097."usage"($P2098)
  if_2094_end:
.annotate 'line', 1368
    find_lex $P2100, "%adverbs"
    unless_null $P2100, vivify_885
    $P2100 = root_new ['parrot';'Hash']
  vivify_885:
    set $P2101, $P2100["version"]
    unless_null $P2101, vivify_886
    new $P2101, "Undef"
  vivify_886:
    unless $P2101, if_2099_end
    find_lex $P2102, "self"
    $P2102."version"()
  if_2099_end:
.annotate 'line', 1370

            .include 'except_severity.pasm'
            .local pmc args, adverbs, self
            args = find_lex '@a'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'


            .local int can_backtrace, ll_backtrace
            can_backtrace = can self, 'backtrace'
            unless can_backtrace goto no_push_eh
            ll_backtrace = adverbs['ll-backtrace']
            if ll_backtrace goto no_push_eh
            push_eh uncaught_exception
          no_push_eh:

            $S0 = adverbs['e']
            $I0 = exists adverbs['e']
            if $I0 goto eval_line
            .local pmc result
            result = box ''
            unless args goto interactive
            $I0 = adverbs['combine']
            if $I0 goto combine
            $S0 = args[0]
            result = self.'evalfiles'($S0, args :flat, adverbs :flat :named)
            goto save_output
          combine:
            result = self.'evalfiles'(args, adverbs :flat :named)
            goto save_output
          interactive:
            self.'interactive'(args :flat, adverbs :flat :named)
            goto save_output
          eval_line:
            result = self.'eval'($S0, '-e', args :flat, adverbs :flat :named)

          save_output:
            unless can_backtrace goto no_pop_eh
            pop_eh
          no_pop_eh:
            if null result goto end
            $I0 = defined result
            unless $I0 goto end
            .local string target
            target = adverbs['target']
            target = downcase target
            if target != 'pir' goto end
            .local string output
            .local pmc ofh
            $P0 = getinterp
            ofh = $P0.'stdout_handle'()
            output = adverbs['output']
            if output == '' goto save_output_1
            if output == '-' goto save_output_1
            ofh = new ['FileHandle']
            ofh.'open'(output, 'w')
            unless ofh goto err_output
          save_output_1:
            print ofh, result
            ofh.'close'()
          end:
            .return ()

          err_output:
            .tailcall self.'panic'('Error: file cannot be written: ', output)

            # If we get an uncaught exception in the program and the HLL provides
            # a backtrace method, we end up here. We pass it the exception object
            # so it can render a backtrace, unless the severity is exit or warning
            # in which case it needs special handling.
          uncaught_exception:
            .get_results ($P0)
            pop_eh
            $P1 = getinterp
            $P1 = $P1.'stderr_handle'()
            $I0 = $P0['severity']
            if $I0 == .EXCEPT_EXIT goto do_exit
            $S0 = self.'backtrace'($P0)
            print $P1, $S0
            if $I0 <= .EXCEPT_WARNING goto do_warning
            exit 1
          do_exit:
            $I0 = $P0['exit_code']
            exit $I0
          do_warning:
            $P0 = $P0["resume"]
            push_eh uncaught_exception # Otherwise we get errors about no handler to delete
            $P0()
        
.annotate 'line', 1346
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2083"  :anon :subid("206_1303391590.341") :outer("205_1303391590.341")
    .param pmc param_2085
.annotate 'line', 1364
    .lex "$k", param_2085
.annotate 'line', 1365
    find_lex $P2086, "$k"
    unless_null $P2086, vivify_877
    new $P2086, "Undef"
  vivify_877:
    find_lex $P2087, "%opts"
    unless_null $P2087, vivify_878
    $P2087 = root_new ['parrot';'Hash']
  vivify_878:
    set $P2088, $P2087[$P2086]
    unless_null $P2088, vivify_879
    new $P2088, "Undef"
  vivify_879:
    find_lex $P2089, "$k"
    unless_null $P2089, vivify_880
    new $P2089, "Undef"
  vivify_880:
    find_lex $P2090, "%adverbs"
    unless_null $P2090, vivify_881
    $P2090 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2090
  vivify_881:
    set $P2090[$P2089], $P2088
.annotate 'line', 1364
    .return ($P2088)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2104
    .param pmc param_2105
.annotate 'line', 1464
    .const 'Sub' $P2120 = "208_1303391590.341" 
    capture_lex $P2120
    .lex "self", param_2104
    .lex "@args", param_2105
.annotate 'line', 1468
    new $P2106, "Undef"
    .lex "$p", $P2106
.annotate 'line', 1471
    new $P2107, "Undef"
    .lex "$res", $P2107
.annotate 'line', 1466
    find_lex $P2108, "self"
    find_lex $P2109, "@args"
    unless_null $P2109, vivify_887
    $P2109 = root_new ['parrot';'ResizablePMCArray']
  vivify_887:
    $P2110 = $P2109."shift"()
    $P2108."compiler_progname"($P2110)
.annotate 'line', 1468
    get_hll_global $P2111, ["HLL";"CommandLine"], "Parser"
    find_lex $P2112, "self"
    find_lex $P2113, "$?CLASS"
    getattribute $P2114, $P2112, $P2113, "@!cmdoptions"
    unless_null $P2114, vivify_888
    $P2114 = root_new ['parrot';'ResizablePMCArray']
  vivify_888:
    $P2115 = $P2111."new"($P2114)
    store_lex "$p", $P2115
.annotate 'line', 1469
    find_lex $P2116, "$p"
    unless_null $P2116, vivify_889
    new $P2116, "Undef"
  vivify_889:
    $P2116."add-stopper"("-e")
.annotate 'line', 1470
    find_lex $P2117, "$p"
    unless_null $P2117, vivify_890
    new $P2117, "Undef"
  vivify_890:
    $P2117."stop-after-first-arg"()
    find_lex $P2118, "$res"
    unless_null $P2118, vivify_891
    new $P2118, "Undef"
  vivify_891:
.annotate 'line', 1472
    .const 'Sub' $P2120 = "208_1303391590.341" 
    capture_lex $P2120
    $P2120()
    find_lex $P2138, "$res"
    unless_null $P2138, vivify_895
    new $P2138, "Undef"
  vivify_895:
.annotate 'line', 1464
    .return ($P2138)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2119"  :anon :subid("208_1303391590.341") :outer("207_1303391590.341")
.annotate 'line', 1472
    .const 'Sub' $P2130 = "209_1303391590.341" 
    capture_lex $P2130
    new $P2126, 'ExceptionHandler'
    set_label $P2126, control_2125
    $P2126."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2126
.annotate 'line', 1473
    find_lex $P2121, "$p"
    unless_null $P2121, vivify_892
    new $P2121, "Undef"
  vivify_892:
    find_lex $P2122, "@args"
    unless_null $P2122, vivify_893
    $P2122 = root_new ['parrot';'ResizablePMCArray']
  vivify_893:
    $P2123 = $P2121."parse"($P2122)
    store_lex "$res", $P2123
.annotate 'line', 1472
    pop_eh 
    goto skip_handler_2124
  control_2125:
.annotate 'line', 1474
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2130 = "209_1303391590.341" 
    newclosure $P2135, $P2130
    $P2135(exception)
    new $P2136, 'Integer'
    set $P2136, 1
    set exception["handled"], $P2136
    set $I2137, exception["handled"]
    ne $I2137, 1, nothandled_2128
  handled_2127:
    .return (exception)
  nothandled_2128:
    rethrow exception
  skip_handler_2124:
.annotate 'line', 1472
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2129"  :anon :subid("209_1303391590.341") :outer("208_1303391590.341")
    .param pmc param_2131
.annotate 'line', 1474
    .lex "$_", param_2131
    find_lex $P2132, "$_"
    .lex "$!", $P2132
.annotate 'line', 1475
    find_lex $P2133, "$_"
    unless_null $P2133, vivify_894
    new $P2133, "Undef"
  vivify_894:
    say $P2133
.annotate 'line', 1476
    find_lex $P2134, "self"
    $P2134."usage"()
.annotate 'line', 1477
    exit 1
.annotate 'line', 1474
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("210_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2142
    .param pmc param_2143
    .param pmc param_2144 :slurpy
    .param pmc param_2145 :slurpy :named
.annotate 'line', 1483
    .const 'Sub' $P2170 = "211_1303391590.341" 
    capture_lex $P2170
    new $P2141, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2141, control_2140
    push_eh $P2141
    .lex "self", param_2142
    .lex "$files", param_2143
    .lex "@args", param_2144
    .lex "%adverbs", param_2145
.annotate 'line', 1484
    new $P2146, "Undef"
    .lex "$target", $P2146
.annotate 'line', 1485
    new $P2147, "Undef"
    .lex "$encoding", $P2147
.annotate 'line', 1486
    $P2148 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2148
.annotate 'line', 1487
    $P2149 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2149
.annotate 'line', 1484
    find_lex $P2150, "%adverbs"
    unless_null $P2150, vivify_896
    $P2150 = root_new ['parrot';'Hash']
  vivify_896:
    set $P2151, $P2150["target"]
    unless_null $P2151, vivify_897
    new $P2151, "Undef"
  vivify_897:
    set $S2152, $P2151
    downcase $S2153, $S2152
    new $P2154, 'String'
    set $P2154, $S2153
    store_lex "$target", $P2154
.annotate 'line', 1485
    find_lex $P2155, "%adverbs"
    unless_null $P2155, vivify_898
    $P2155 = root_new ['parrot';'Hash']
  vivify_898:
    set $P2156, $P2155["encoding"]
    unless_null $P2156, vivify_899
    new $P2156, "Undef"
  vivify_899:
    store_lex "$encoding", $P2156
.annotate 'line', 1486
    find_lex $P2159, "$files"
    unless_null $P2159, vivify_900
    new $P2159, "Undef"
  vivify_900:
    does $I2160, $P2159, "array"
    if $I2160, if_2158
    find_lex $P2162, "$files"
    unless_null $P2162, vivify_901
    new $P2162, "Undef"
  vivify_901:
    new $P2163, "ResizablePMCArray"
    push $P2163, $P2162
    set $P2157, $P2163
    goto if_2158_end
  if_2158:
    find_lex $P2161, "$files"
    unless_null $P2161, vivify_902
    new $P2161, "Undef"
  vivify_902:
    set $P2157, $P2161
  if_2158_end:
    store_lex "@files", $P2157
    find_lex $P2164, "@codes"
    unless_null $P2164, vivify_903
    $P2164 = root_new ['parrot';'ResizablePMCArray']
  vivify_903:
.annotate 'line', 1488
    find_lex $P2166, "@files"
    unless_null $P2166, vivify_904
    $P2166 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
    defined $I2167, $P2166
    unless $I2167, for_undef_905
    iter $P2165, $P2166
    new $P2232, 'ExceptionHandler'
    set_label $P2232, loop2231_handler
    $P2232."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2232
  loop2231_test:
    unless $P2165, loop2231_done
    shift $P2168, $P2165
  loop2231_redo:
    .const 'Sub' $P2170 = "211_1303391590.341" 
    capture_lex $P2170
    $P2170($P2168)
  loop2231_next:
    goto loop2231_test
  loop2231_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2233, exception, 'type'
    eq $P2233, .CONTROL_LOOP_NEXT, loop2231_next
    eq $P2233, .CONTROL_LOOP_REDO, loop2231_redo
  loop2231_done:
    pop_eh 
  for_undef_905:
.annotate 'line', 1483
    .return ($P2165)
  control_2140:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2234, exception, "payload"
    .return ($P2234)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2169"  :anon :subid("211_1303391590.341") :outer("210_1303391590.341")
    .param pmc param_2175
.annotate 'line', 1488
    .const 'Sub' $P2179 = "212_1303391590.341" 
    capture_lex $P2179
.annotate 'line', 1489
    new $P2171, "Undef"
    .lex "$in-handle", $P2171
.annotate 'line', 1490
    new $P2172, "Undef"
    .lex "$err", $P2172
.annotate 'line', 1503
    new $P2173, "Undef"
    .lex "$code", $P2173
.annotate 'line', 1505
    new $P2174, "Undef"
    .lex "$r", $P2174
    .lex "$_", param_2175
.annotate 'line', 1489
    new $P2176, "FileHandle"
    store_lex "$in-handle", $P2176
.annotate 'line', 1490
    new $P2177, "Integer"
    assign $P2177, 0
    store_lex "$err", $P2177
.annotate 'line', 1491
    .const 'Sub' $P2179 = "212_1303391590.341" 
    capture_lex $P2179
    $P2179()
.annotate 'line', 1502
    find_lex $P2203, "$err"
    unless_null $P2203, vivify_913
    new $P2203, "Undef"
  vivify_913:
    unless $P2203, if_2202_end
    find_lex $P2204, "$err"
    unless_null $P2204, vivify_914
    new $P2204, "Undef"
  vivify_914:
    die $P2204
  if_2202_end:
.annotate 'line', 1503
    find_lex $P2205, "@codes"
    unless_null $P2205, vivify_915
    $P2205 = root_new ['parrot';'ResizablePMCArray']
  vivify_915:
    join $S2206, "", $P2205
    new $P2207, 'String'
    set $P2207, $S2206
    store_lex "$code", $P2207
.annotate 'line', 1505
    find_lex $P2208, "self"
    find_lex $P2209, "$code"
    unless_null $P2209, vivify_916
    new $P2209, "Undef"
  vivify_916:
    find_lex $P2210, "@args"
    unless_null $P2210, vivify_917
    $P2210 = root_new ['parrot';'ResizablePMCArray']
  vivify_917:
    find_lex $P2211, "%adverbs"
    unless_null $P2211, vivify_918
    $P2211 = root_new ['parrot';'Hash']
  vivify_918:
    $P2212 = $P2208."eval"($P2209, $P2210 :flat, $P2211 :flat)
    store_lex "$r", $P2212
.annotate 'line', 1506
    find_lex $P2217, "$target"
    unless_null $P2217, vivify_919
    new $P2217, "Undef"
  vivify_919:
    set $S2218, $P2217
    iseq $I2219, $S2218, ""
    unless $I2219, unless_2216
    new $P2215, 'Integer'
    set $P2215, $I2219
    goto unless_2216_end
  unless_2216:
    find_lex $P2220, "$target"
    unless_null $P2220, vivify_920
    new $P2220, "Undef"
  vivify_920:
    set $S2221, $P2220
    iseq $I2222, $S2221, "pir"
    new $P2215, 'Integer'
    set $P2215, $I2222
  unless_2216_end:
    if $P2215, if_2214
.annotate 'line', 1509
    new $P2225, "Exception"
    set $P2225['type'], .CONTROL_RETURN
    find_lex $P2226, "self"
    find_lex $P2227, "$r"
    unless_null $P2227, vivify_921
    new $P2227, "Undef"
  vivify_921:
    find_lex $P2228, "$target"
    unless_null $P2228, vivify_922
    new $P2228, "Undef"
  vivify_922:
    find_lex $P2229, "%adverbs"
    unless_null $P2229, vivify_923
    $P2229 = root_new ['parrot';'Hash']
  vivify_923:
    $P2230 = $P2226."dumper"($P2227, $P2228, $P2229 :flat)
    setattribute $P2225, 'payload', $P2230
    throw $P2225
.annotate 'line', 1508
    goto if_2214_end
  if_2214:
.annotate 'line', 1507
    new $P2223, "Exception"
    set $P2223['type'], .CONTROL_RETURN
    find_lex $P2224, "$r"
    unless_null $P2224, vivify_924
    new $P2224, "Undef"
  vivify_924:
    setattribute $P2223, 'payload', $P2224
    throw $P2223
  if_2214_end:
.annotate 'line', 1488
    .return ($P2213)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2178"  :anon :subid("212_1303391590.341") :outer("211_1303391590.341")
.annotate 'line', 1491
    .const 'Sub' $P2193 = "213_1303391590.341" 
    capture_lex $P2193
    new $P2189, 'ExceptionHandler'
    set_label $P2189, control_2188
    $P2189."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2189
.annotate 'line', 1495
    find_lex $P2180, "$in-handle"
    unless_null $P2180, vivify_906
    new $P2180, "Undef"
  vivify_906:
    find_lex $P2181, "$encoding"
    unless_null $P2181, vivify_907
    new $P2181, "Undef"
  vivify_907:
    $P2180."encoding"($P2181)
.annotate 'line', 1496
    find_lex $P2182, "@codes"
    unless_null $P2182, vivify_908
    $P2182 = root_new ['parrot';'ResizablePMCArray']
  vivify_908:
    find_lex $P2183, "$in-handle"
    unless_null $P2183, vivify_909
    new $P2183, "Undef"
  vivify_909:
    find_lex $P2184, "$_"
    unless_null $P2184, vivify_910
    new $P2184, "Undef"
  vivify_910:
    $P2185 = $P2183."readall"($P2184)
    push $P2182, $P2185
.annotate 'line', 1497
    find_lex $P2186, "$in-handle"
    unless_null $P2186, vivify_911
    new $P2186, "Undef"
  vivify_911:
    $P2186."close"()
.annotate 'line', 1491
    pop_eh 
    goto skip_handler_2187
  control_2188:
.annotate 'line', 1498
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2193 = "213_1303391590.341" 
    newclosure $P2199, $P2193
    $P2199(exception)
    new $P2200, 'Integer'
    set $P2200, 1
    set exception["handled"], $P2200
    set $I2201, exception["handled"]
    ne $I2201, 1, nothandled_2191
  handled_2190:
    .return (exception)
  nothandled_2191:
    rethrow exception
  skip_handler_2187:
.annotate 'line', 1491
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2192"  :anon :subid("213_1303391590.341") :outer("212_1303391590.341")
    .param pmc param_2194
.annotate 'line', 1498
    .lex "$_", param_2194
    find_lex $P2195, "$_"
    .lex "$!", $P2195
.annotate 'line', 1499
    new $P2196, 'String'
    set $P2196, "Error while reading from file: "
    find_lex $P2197, "$_"
    unless_null $P2197, vivify_912
    new $P2197, "Undef"
  vivify_912:
    concat $P2198, $P2196, $P2197
    store_lex "$err", $P2198
.annotate 'line', 1498
    .return ($P2198)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2238
    .param pmc param_2239
    .param pmc param_2240 :slurpy :named
.annotate 'line', 1515
    .const 'Sub' $P2261 = "215_1303391590.341" 
    capture_lex $P2261
    new $P2237, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2237, control_2236
    push_eh $P2237
    .lex "self", param_2238
    .lex "$source", param_2239
    .lex "%adverbs", param_2240
.annotate 'line', 1516
    $P2241 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2241
.annotate 'line', 1518
    new $P2242, "Undef"
    .lex "$target", $P2242
.annotate 'line', 1519
    new $P2243, "Undef"
    .lex "$result", $P2243
.annotate 'line', 1520
    new $P2244, "Undef"
    .lex "$stderr", $P2244
.annotate 'line', 1516
    find_lex $P2245, "%adverbs"
    unless_null $P2245, vivify_925
    $P2245 = root_new ['parrot';'Hash']
  vivify_925:
    find_lex $P2246, "%*COMPILING"
    unless_null $P2246, vivify_926
    get_hll_global $P2246, "%COMPILING"
    unless_null $P2246, vivify_927
    die "Contextual %*COMPILING not found"
  vivify_927:
    store_lex "%*COMPILING", $P2246
  vivify_926:
    set $P2246["%?OPTIONS"], $P2245
.annotate 'line', 1518
    find_lex $P2247, "%adverbs"
    unless_null $P2247, vivify_928
    $P2247 = root_new ['parrot';'Hash']
  vivify_928:
    set $P2248, $P2247["target"]
    unless_null $P2248, vivify_929
    new $P2248, "Undef"
  vivify_929:
    set $S2249, $P2248
    downcase $S2250, $S2249
    new $P2251, 'String'
    set $P2251, $S2250
    store_lex "$target", $P2251
.annotate 'line', 1519
    find_lex $P2252, "$source"
    unless_null $P2252, vivify_930
    new $P2252, "Undef"
  vivify_930:
    store_lex "$result", $P2252
.annotate 'line', 1520
    getinterp $P2253
    $P2254 = $P2253."stderr_handle"()
    store_lex "$stderr", $P2254
.annotate 'line', 1521
    find_lex $P2256, "self"
    $P2257 = $P2256."stages"()
    defined $I2258, $P2257
    unless $I2258, for_undef_931
    iter $P2255, $P2257
    new $P2297, 'ExceptionHandler'
    set_label $P2297, loop2296_handler
    $P2297."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2297
  loop2296_test:
    unless $P2255, loop2296_done
    shift $P2259, $P2255
  loop2296_redo:
    .const 'Sub' $P2261 = "215_1303391590.341" 
    capture_lex $P2261
    $P2261($P2259)
  loop2296_next:
    goto loop2296_test
  loop2296_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2298, exception, 'type'
    eq $P2298, .CONTROL_LOOP_NEXT, loop2296_next
    eq $P2298, .CONTROL_LOOP_REDO, loop2296_redo
  loop2296_done:
    pop_eh 
  for_undef_931:
.annotate 'line', 1531
    new $P2299, "Exception"
    set $P2299['type'], .CONTROL_RETURN
    find_lex $P2300, "$result"
    unless_null $P2300, vivify_943
    new $P2300, "Undef"
  vivify_943:
    setattribute $P2299, 'payload', $P2300
    throw $P2299
.annotate 'line', 1515
    .return ()
  control_2236:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2301, exception, "payload"
    .return ($P2301)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2260"  :anon :subid("215_1303391590.341") :outer("214_1303391590.341")
    .param pmc param_2264
.annotate 'line', 1522
    new $P2262, "Undef"
    .lex "$timestamp", $P2262
.annotate 'line', 1524
    new $P2263, "Undef"
    .lex "$diff", $P2263
    .lex "$_", param_2264
.annotate 'line', 1522
    time $N2265
    new $P2266, 'Float'
    set $P2266, $N2265
    store_lex "$timestamp", $P2266
.annotate 'line', 1523
    find_lex $P2267, "self"
    find_lex $P2268, "$result"
    unless_null $P2268, vivify_932
    new $P2268, "Undef"
  vivify_932:
    find_lex $P2269, "%adverbs"
    unless_null $P2269, vivify_933
    $P2269 = root_new ['parrot';'Hash']
  vivify_933:
    find_lex $P2270, "$_"
    unless_null $P2270, vivify_934
    new $P2270, "Undef"
  vivify_934:
    set $S2271, $P2270
    $P2272 = $P2267.$S2271($P2268, $P2269 :flat)
    store_lex "$result", $P2272
.annotate 'line', 1524
    time $N2273
    new $P2274, 'Float'
    set $P2274, $N2273
    find_lex $P2275, "$timestamp"
    unless_null $P2275, vivify_935
    new $P2275, "Undef"
  vivify_935:
    sub $P2276, $P2274, $P2275
    store_lex "$diff", $P2276
.annotate 'line', 1525
    find_lex $P2278, "%adverbs"
    unless_null $P2278, vivify_936
    $P2278 = root_new ['parrot';'Hash']
  vivify_936:
    set $P2279, $P2278["stagestats"]
    unless_null $P2279, vivify_937
    new $P2279, "Undef"
  vivify_937:
    unless $P2279, if_2277_end
.annotate 'line', 1527
    find_lex $P2280, "$stderr"
    unless_null $P2280, vivify_938
    new $P2280, "Undef"
  vivify_938:
    new $P2281, 'String'
    set $P2281, "Stage "
    find_lex $P2282, "$_"
    unless_null $P2282, vivify_939
    new $P2282, "Undef"
  vivify_939:
    concat $P2283, $P2281, $P2282
    concat $P2284, $P2283, ": "
    find_lex $P2285, "$diff"
    unless_null $P2285, vivify_940
    new $P2285, "Undef"
  vivify_940:
    concat $P2286, $P2284, $P2285
    concat $P2287, $P2286, "\n"
    $P2280."print__N"($P2287)
  if_2277_end:
.annotate 'line', 1529
    find_lex $P2290, "$_"
    unless_null $P2290, vivify_941
    new $P2290, "Undef"
  vivify_941:
    set $S2291, $P2290
    find_lex $P2292, "$target"
    unless_null $P2292, vivify_942
    new $P2292, "Undef"
  vivify_942:
    set $S2293, $P2292
    iseq $I2294, $S2291, $S2293
    if $I2294, if_2289
    new $P2288, 'Integer'
    set $P2288, $I2294
    goto if_2289_end
  if_2289:
    set $I2295, .CONTROL_LOOP_LAST
    die 0, $I2295
  if_2289_end:
.annotate 'line', 1521
    .return ($P2288)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("216_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2303
    .param pmc param_2304
    .param pmc param_2305 :slurpy :named
.annotate 'line', 1534
    .lex "self", param_2303
    .lex "$source", param_2304
    .lex "%adverbs", param_2305
.annotate 'line', 1535

            .local pmc source, options, self
            source = find_lex '$source'
            options = find_lex '%adverbs'
            self = find_lex 'self'

            .local string tcode
            tcode = options['transcode']
            unless tcode goto transcode_done
            .local pmc tcode_it
            $P0 = split ' ', tcode
            tcode_it = iter $P0
          tcode_loop:
            unless tcode_it goto transcode_done
            tcode = shift tcode_it
            push_eh tcode_fail
            $I0 = find_encoding tcode
            $S0 = source
            $S0 = trans_encoding $S0, $I0
            assign source, $S0
            pop_eh
            goto transcode_done
          tcode_fail:
            pop_eh
            goto tcode_loop
          transcode_done:

            .local pmc parsegrammar, parseactions, match
            parsegrammar = self.'parsegrammar'()

            null parseactions
            $S0 = options['target']
            if $S0 == 'parse' goto have_parseactions
            parseactions = self.'parseactions'()
          have_parseactions:

            .local int rxtrace
            rxtrace = options['parsetrace']
            match = parsegrammar.'parse'(source, 'p'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
            unless match goto err_parsefail
            .return (match)

          err_parsefail:
            self.'panic'('Unable to parse source')
            .return (match)
        
.annotate 'line', 1534
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past"  :subid("217_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2307
    .param pmc param_2308
    .param pmc param_2309 :slurpy :named
.annotate 'line', 1583
    .lex "self", param_2307
    .lex "$source", param_2308
    .lex "%adverbs", param_2309
.annotate 'line', 1584

            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

          compile_astgrammar:
            .local pmc astgrammar_name
            astgrammar_name = self.'astgrammar'()
            $S0 = typeof astgrammar_name
            eq $S0, 'NameSpace', astgrammar_ns
            unless astgrammar_name goto compile_match

            .local pmc astgrammar_namelist
            .local pmc astgrammar, astbuilder
            astgrammar_namelist = self.'parse_name'(astgrammar_name)
            unless astgrammar_namelist goto err_past
            astgrammar = new astgrammar_namelist
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')
          astgrammar_ns:
            $P0 = get_class astgrammar_name
            astgrammar = new $P0
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')

          compile_match:
            .local pmc ast
            ast = source.'ast'()
            $I0 = isa ast, ['PAST';'Node']
            unless $I0 goto err_past
            .return (ast)

          err_past:
            $S0 = typeof source
            .tailcall self.'panic'('Unable to obtain PAST from ', $S0)
        
.annotate 'line', 1583
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post"  :subid("218_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2311
    .param pmc param_2312
    .param pmc param_2313 :slurpy :named
.annotate 'line', 1623
    .lex "self", param_2311
    .lex "$source", param_2312
    .lex "%adverbs", param_2313
.annotate 'line', 1624
    compreg $P2314, "PAST"
    find_lex $P2315, "$source"
    unless_null $P2315, vivify_944
    new $P2315, "Undef"
  vivify_944:
    find_lex $P2316, "%adverbs"
    unless_null $P2316, vivify_945
    $P2316 = root_new ['parrot';'Hash']
  vivify_945:
    $P2317 = $P2314."to_post"($P2315, $P2316 :flat)
.annotate 'line', 1623
    .return ($P2317)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2319
    .param pmc param_2320
    .param pmc param_2321 :slurpy :named
.annotate 'line', 1627
    .lex "self", param_2319
    .lex "$source", param_2320
    .lex "%adverbs", param_2321
.annotate 'line', 1628
    compreg $P2322, "POST"
    find_lex $P2323, "$source"
    unless_null $P2323, vivify_946
    new $P2323, "Undef"
  vivify_946:
    find_lex $P2324, "%adverbs"
    unless_null $P2324, vivify_947
    $P2324 = root_new ['parrot';'Hash']
  vivify_947:
    $P2325 = $P2322."to_pir"($P2323, $P2324 :flat)
.annotate 'line', 1627
    .return ($P2325)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2327
    .param pmc param_2328
    .param pmc param_2329 :slurpy :named
.annotate 'line', 1631
    .lex "self", param_2327
    .lex "$source", param_2328
    .lex "%adverbs", param_2329
.annotate 'line', 1632
    new $P2330, "Undef"
    .lex "$compiler", $P2330
    compreg $P2331, "PIR"
    store_lex "$compiler", $P2331
.annotate 'line', 1633
    find_lex $P2332, "$compiler"
    unless_null $P2332, vivify_948
    new $P2332, "Undef"
  vivify_948:
    find_lex $P2333, "$source"
    unless_null $P2333, vivify_949
    new $P2333, "Undef"
  vivify_949:
    $P2334 = $P2332($P2333)
.annotate 'line', 1631
    .return ($P2334)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2336
    .param pmc param_2337
    .param pmc param_2338
    .param pmc param_2339 :slurpy :named
.annotate 'line', 1636
    .const 'Sub' $P2345 = "222_1303391590.341" 
    capture_lex $P2345
    .lex "self", param_2336
    .lex "$obj", param_2337
    .lex "$name", param_2338
    .lex "%options", param_2339
.annotate 'line', 1637
    find_lex $P2342, "%options"
    unless_null $P2342, vivify_950
    $P2342 = root_new ['parrot';'Hash']
  vivify_950:
    set $P2343, $P2342["dumper"]
    unless_null $P2343, vivify_951
    new $P2343, "Undef"
  vivify_951:
    if $P2343, if_2341
.annotate 'line', 1643
    find_lex $P2358, "$obj"
    unless_null $P2358, vivify_952
    new $P2358, "Undef"
  vivify_952:
    find_lex $P2359, "$name"
    unless_null $P2359, vivify_953
    new $P2359, "Undef"
  vivify_953:
    $P2360 = "_dumper"($P2358, $P2359)
.annotate 'line', 1642
    set $P2340, $P2360
.annotate 'line', 1637
    goto if_2341_end
  if_2341:
    .const 'Sub' $P2345 = "222_1303391590.341" 
    capture_lex $P2345
    $P2357 = $P2345()
    set $P2340, $P2357
  if_2341_end:
.annotate 'line', 1636
    .return ($P2340)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2344"  :anon :subid("222_1303391590.341") :outer("221_1303391590.341")
.annotate 'line', 1639
    new $P2346, "Undef"
    .lex "$dumper", $P2346
.annotate 'line', 1638
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1639
    find_lex $P2347, "%options"
    unless_null $P2347, vivify_954
    $P2347 = root_new ['parrot';'Hash']
  vivify_954:
    set $P2348, $P2347["dumper"]
    unless_null $P2348, vivify_955
    new $P2348, "Undef"
  vivify_955:
    set $S2349, $P2348
    downcase $S2350, $S2349
    get_hll_global $P2351, ["PCT"], "Dumper"
    unless_null $P2351, vivify_956
    $P2351 = root_new ['parrot';'Hash']
  vivify_956:
    set $P2352, $P2351[$S2350]
    unless_null $P2352, vivify_957
    new $P2352, "Undef"
  vivify_957:
    store_lex "$dumper", $P2352
.annotate 'line', 1640
    find_lex $P2353, "$dumper"
    unless_null $P2353, vivify_958
    new $P2353, "Undef"
  vivify_958:
    find_lex $P2354, "$obj"
    unless_null $P2354, vivify_959
    new $P2354, "Undef"
  vivify_959:
    find_lex $P2355, "$name"
    unless_null $P2355, vivify_960
    new $P2355, "Undef"
  vivify_960:
    $P2356 = $P2353($P2354, $P2355)
.annotate 'line', 1637
    .return ($P2356)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2362
    .param pmc param_2363 :optional
    .param int has_param_2363 :opt_flag
.annotate 'line', 1647
    .lex "self", param_2362
    if has_param_2363, optparam_961
    new $P2364, "Undef"
    set param_2363, $P2364
  optparam_961:
    .lex "$name", param_2363
.annotate 'line', 1648
    find_lex $P2366, "$name"
    unless_null $P2366, vivify_962
    new $P2366, "Undef"
  vivify_962:
    unless $P2366, if_2365_end
.annotate 'line', 1649
    find_lex $P2367, "$name"
    unless_null $P2367, vivify_963
    new $P2367, "Undef"
  vivify_963:
    "say"($P2367)
  if_2365_end:
.annotate 'line', 1651
    find_lex $P2368, "self"
    find_lex $P2369, "$?CLASS"
    getattribute $P2370, $P2368, $P2369, "$!usage"
    unless_null $P2370, vivify_964
    new $P2370, "Undef"
  vivify_964:
    say $P2370
.annotate 'line', 1652
    exit 0
.annotate 'line', 1647
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2372
.annotate 'line', 1655
    .lex "self", param_2372
.annotate 'line', 1656
    find_lex $P2373, "self"
    find_lex $P2374, "$?CLASS"
    getattribute $P2375, $P2373, $P2374, "$!version"
    unless_null $P2375, vivify_965
    new $P2375, "Undef"
  vivify_965:
    say $P2375
.annotate 'line', 1657
    exit 0
.annotate 'line', 1655
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2377
    .param pmc param_2378
.annotate 'line', 1660
    .const 'Sub' $P2388 = "226_1303391590.341" 
    capture_lex $P2388
    .lex "self", param_2377
    .lex "$stagename", param_2378
.annotate 'line', 1661
    $P2379 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2379
    new $P2380, "ResizableStringArray"
    store_lex "@new_stages", $P2380
.annotate 'line', 1662
    find_lex $P2382, "self"
    find_lex $P2383, "$?CLASS"
    getattribute $P2384, $P2382, $P2383, "@!stages"
    unless_null $P2384, vivify_966
    $P2384 = root_new ['parrot';'ResizablePMCArray']
  vivify_966:
    defined $I2385, $P2384
    unless $I2385, for_undef_967
    iter $P2381, $P2384
    new $P2401, 'ExceptionHandler'
    set_label $P2401, loop2400_handler
    $P2401."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2401
  loop2400_test:
    unless $P2381, loop2400_done
    shift $P2386, $P2381
  loop2400_redo:
    .const 'Sub' $P2388 = "226_1303391590.341" 
    capture_lex $P2388
    $P2388($P2386)
  loop2400_next:
    goto loop2400_test
  loop2400_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2402, exception, 'type'
    eq $P2402, .CONTROL_LOOP_NEXT, loop2400_next
    eq $P2402, .CONTROL_LOOP_REDO, loop2400_redo
  loop2400_done:
    pop_eh 
  for_undef_967:
.annotate 'line', 1667
    find_lex $P2403, "@new_stages"
    unless_null $P2403, vivify_972
    $P2403 = root_new ['parrot';'ResizablePMCArray']
  vivify_972:
    find_lex $P2404, "self"
    find_lex $P2405, "$?CLASS"
    setattribute $P2404, $P2405, "@!stages", $P2403
.annotate 'line', 1660
    .return ($P2403)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2387"  :anon :subid("226_1303391590.341") :outer("225_1303391590.341")
    .param pmc param_2389
.annotate 'line', 1662
    .lex "$_", param_2389
.annotate 'line', 1663
    find_lex $P2392, "$_"
    unless_null $P2392, vivify_968
    new $P2392, "Undef"
  vivify_968:
    set $S2393, $P2392
    find_lex $P2394, "$stagename"
    unless_null $P2394, vivify_969
    new $P2394, "Undef"
  vivify_969:
    set $S2395, $P2394
    isne $I2396, $S2393, $S2395
    if $I2396, if_2391
    new $P2390, 'Integer'
    set $P2390, $I2396
    goto if_2391_end
  if_2391:
.annotate 'line', 1664
    find_lex $P2397, "@new_stages"
    unless_null $P2397, vivify_970
    $P2397 = root_new ['parrot';'ResizablePMCArray']
  vivify_970:
    find_lex $P2398, "$_"
    unless_null $P2398, vivify_971
    new $P2398, "Undef"
  vivify_971:
    $P2399 = $P2397."push"($P2398)
.annotate 'line', 1663
    set $P2390, $P2399
  if_2391_end:
.annotate 'line', 1662
    .return ($P2390)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2409
    .param pmc param_2410
    .param pmc param_2411 :slurpy :named
.annotate 'line', 1670
    .const 'Sub' $P2448 = "229_1303391590.341" 
    capture_lex $P2448
    .const 'Sub' $P2430 = "228_1303391590.341" 
    capture_lex $P2430
    new $P2408, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2408, control_2407
    push_eh $P2408
    .lex "self", param_2409
    .lex "$stagename", param_2410
    .lex "%adverbs", param_2411
.annotate 'line', 1671
    new $P2412, "Undef"
    .lex "$position", $P2412
.annotate 'line', 1672
    new $P2413, "Undef"
    .lex "$where", $P2413
.annotate 'line', 1685
    $P2414 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2414
.annotate 'line', 1670
    find_lex $P2415, "$position"
    unless_null $P2415, vivify_973
    new $P2415, "Undef"
  vivify_973:
    find_lex $P2416, "$where"
    unless_null $P2416, vivify_974
    new $P2416, "Undef"
  vivify_974:
.annotate 'line', 1673
    find_lex $P2418, "%adverbs"
    unless_null $P2418, vivify_975
    $P2418 = root_new ['parrot';'Hash']
  vivify_975:
    set $P2419, $P2418["before"]
    unless_null $P2419, vivify_976
    new $P2419, "Undef"
  vivify_976:
    if $P2419, if_2417
.annotate 'line', 1676
    find_lex $P2424, "%adverbs"
    unless_null $P2424, vivify_977
    $P2424 = root_new ['parrot';'Hash']
  vivify_977:
    set $P2425, $P2424["after"]
    unless_null $P2425, vivify_978
    new $P2425, "Undef"
  vivify_978:
    if $P2425, if_2423
.annotate 'line', 1679
    .const 'Sub' $P2430 = "228_1303391590.341" 
    capture_lex $P2430
    $P2430()
    goto if_2423_end
  if_2423:
.annotate 'line', 1677
    find_lex $P2426, "%adverbs"
    unless_null $P2426, vivify_982
    $P2426 = root_new ['parrot';'Hash']
  vivify_982:
    set $P2427, $P2426["after"]
    unless_null $P2427, vivify_983
    new $P2427, "Undef"
  vivify_983:
    store_lex "$where", $P2427
.annotate 'line', 1678
    new $P2428, "String"
    assign $P2428, "after"
    store_lex "$position", $P2428
  if_2423_end:
.annotate 'line', 1676
    goto if_2417_end
  if_2417:
.annotate 'line', 1674
    find_lex $P2420, "%adverbs"
    unless_null $P2420, vivify_984
    $P2420 = root_new ['parrot';'Hash']
  vivify_984:
    set $P2421, $P2420["before"]
    unless_null $P2421, vivify_985
    new $P2421, "Undef"
  vivify_985:
    store_lex "$where", $P2421
.annotate 'line', 1675
    new $P2422, "String"
    assign $P2422, "before"
    store_lex "$position", $P2422
  if_2417_end:
.annotate 'line', 1685
    new $P2441, "ResizableStringArray"
    store_lex "@new-stages", $P2441
.annotate 'line', 1686
    find_lex $P2443, "self"
    $P2444 = $P2443."stages"()
    defined $I2445, $P2444
    unless $I2445, for_undef_986
    iter $P2442, $P2444
    new $P2473, 'ExceptionHandler'
    set_label $P2473, loop2472_handler
    $P2473."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2473
  loop2472_test:
    unless $P2442, loop2472_done
    shift $P2446, $P2442
  loop2472_redo:
    .const 'Sub' $P2448 = "229_1303391590.341" 
    capture_lex $P2448
    $P2448($P2446)
  loop2472_next:
    goto loop2472_test
  loop2472_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2474, exception, 'type'
    eq $P2474, .CONTROL_LOOP_NEXT, loop2472_next
    eq $P2474, .CONTROL_LOOP_REDO, loop2472_redo
  loop2472_done:
    pop_eh 
  for_undef_986:
.annotate 'line', 1699
    find_lex $P2475, "self"
    find_lex $P2476, "@new-stages"
    unless_null $P2476, vivify_1000
    $P2476 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    $P2477 = $P2475."stages"($P2476)
.annotate 'line', 1670
    .return ($P2477)
  control_2407:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2478, exception, "payload"
    .return ($P2478)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2429"  :anon :subid("228_1303391590.341") :outer("227_1303391590.341")
.annotate 'line', 1680
    $P2431 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2431
    find_lex $P2432, "self"
    $P2433 = $P2432."stages"()
    clone $P2434, $P2433
    store_lex "@new-stages", $P2434
.annotate 'line', 1681
    find_lex $P2435, "@new-stages"
    unless_null $P2435, vivify_979
    $P2435 = root_new ['parrot';'ResizablePMCArray']
  vivify_979:
    find_lex $P2436, "$stagename"
    unless_null $P2436, vivify_980
    new $P2436, "Undef"
  vivify_980:
    push $P2435, $P2436
.annotate 'line', 1682
    find_lex $P2437, "self"
    find_lex $P2438, "@new-stages"
    unless_null $P2438, vivify_981
    $P2438 = root_new ['parrot';'ResizablePMCArray']
  vivify_981:
    $P2437."stages"($P2438)
.annotate 'line', 1683
    new $P2439, "Exception"
    set $P2439['type'], .CONTROL_RETURN
    new $P2440, "Integer"
    assign $P2440, 1
    setattribute $P2439, 'payload', $P2440
    throw $P2439
.annotate 'line', 1679
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2447"  :anon :subid("229_1303391590.341") :outer("227_1303391590.341")
    .param pmc param_2449
.annotate 'line', 1686
    .lex "$_", param_2449
.annotate 'line', 1687
    find_lex $P2452, "$_"
    unless_null $P2452, vivify_987
    new $P2452, "Undef"
  vivify_987:
    set $S2453, $P2452
    find_lex $P2454, "$where"
    unless_null $P2454, vivify_988
    new $P2454, "Undef"
  vivify_988:
    set $S2455, $P2454
    iseq $I2456, $S2453, $S2455
    if $I2456, if_2451
.annotate 'line', 1696
    find_lex $P2470, "@new-stages"
    unless_null $P2470, vivify_989
    $P2470 = root_new ['parrot';'ResizablePMCArray']
  vivify_989:
    find_lex $P2471, "$_"
    unless_null $P2471, vivify_990
    new $P2471, "Undef"
  vivify_990:
    push $P2470, $P2471
.annotate 'line', 1695
    set $P2450, $P2470
.annotate 'line', 1687
    goto if_2451_end
  if_2451:
.annotate 'line', 1688
    find_lex $P2459, "$position"
    unless_null $P2459, vivify_991
    new $P2459, "Undef"
  vivify_991:
    set $S2460, $P2459
    iseq $I2461, $S2460, "before"
    if $I2461, if_2458
.annotate 'line', 1692
    find_lex $P2466, "@new-stages"
    unless_null $P2466, vivify_992
    $P2466 = root_new ['parrot';'ResizablePMCArray']
  vivify_992:
    find_lex $P2467, "$_"
    unless_null $P2467, vivify_993
    new $P2467, "Undef"
  vivify_993:
    push $P2466, $P2467
.annotate 'line', 1693
    find_lex $P2468, "@new-stages"
    unless_null $P2468, vivify_994
    $P2468 = root_new ['parrot';'ResizablePMCArray']
  vivify_994:
    find_lex $P2469, "$stagename"
    unless_null $P2469, vivify_995
    new $P2469, "Undef"
  vivify_995:
    push $P2468, $P2469
.annotate 'line', 1691
    set $P2457, $P2468
.annotate 'line', 1688
    goto if_2458_end
  if_2458:
.annotate 'line', 1689
    find_lex $P2462, "@new-stages"
    unless_null $P2462, vivify_996
    $P2462 = root_new ['parrot';'ResizablePMCArray']
  vivify_996:
    find_lex $P2463, "$stagename"
    unless_null $P2463, vivify_997
    new $P2463, "Undef"
  vivify_997:
    push $P2462, $P2463
.annotate 'line', 1690
    find_lex $P2464, "@new-stages"
    unless_null $P2464, vivify_998
    $P2464 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    find_lex $P2465, "$_"
    unless_null $P2465, vivify_999
    new $P2465, "Undef"
  vivify_999:
    push $P2464, $P2465
.annotate 'line', 1688
    set $P2457, $P2464
  if_2458_end:
.annotate 'line', 1687
    set $P2450, $P2457
  if_2451_end:
.annotate 'line', 1686
    .return ($P2450)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2480
    .param pmc param_2481
.annotate 'line', 1702
    .const 'Sub' $P2519 = "231_1303391590.341" 
    capture_lex $P2519
    .lex "self", param_2480
    .lex "$name", param_2481
.annotate 'line', 1703
    $P2482 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2482
.annotate 'line', 1704
    new $P2483, "Undef"
    .lex "$sigil", $P2483
.annotate 'line', 1707
    new $P2484, "Undef"
    .lex "$idx", $P2484
.annotate 'line', 1715
    $P2485 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2485
.annotate 'line', 1703
    find_lex $P2486, "$name"
    unless_null $P2486, vivify_1001
    new $P2486, "Undef"
  vivify_1001:
    set $S2487, $P2486
    split $P2488, "::", $S2487
    store_lex "@ns", $P2488
.annotate 'line', 1704
    find_lex $P2489, "@ns"
    unless_null $P2489, vivify_1002
    $P2489 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    set $P2490, $P2489[0]
    unless_null $P2490, vivify_1003
    new $P2490, "Undef"
  vivify_1003:
    set $S2491, $P2490
    substr $S2492, $S2491, 0, 1
    new $P2493, 'String'
    set $P2493, $S2492
    store_lex "$sigil", $P2493
.annotate 'line', 1707
    find_lex $P2494, "$sigil"
    unless_null $P2494, vivify_1004
    new $P2494, "Undef"
  vivify_1004:
    set $S2495, $P2494
    index $I2496, "$@%&", $S2495
    new $P2497, 'Integer'
    set $P2497, $I2496
    store_lex "$idx", $P2497
.annotate 'line', 1708
    find_lex $P2499, "$idx"
    unless_null $P2499, vivify_1005
    new $P2499, "Undef"
  vivify_1005:
    set $N2500, $P2499
    isge $I2501, $N2500, 0.0
    unless $I2501, if_2498_end
.annotate 'line', 1709
    find_lex $P2502, "@ns"
    unless_null $P2502, vivify_1006
    $P2502 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    set $P2503, $P2502[0]
    unless_null $P2503, vivify_1007
    new $P2503, "Undef"
  vivify_1007:
    set $S2504, $P2503
    substr $S2505, $S2504, 1
    new $P2506, 'String'
    set $P2506, $S2505
    find_lex $P2507, "@ns"
    unless_null $P2507, vivify_1008
    $P2507 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2507
  vivify_1008:
    set $P2507[0], $P2506
.annotate 'line', 1710
    find_lex $P2508, "$sigil"
    unless_null $P2508, vivify_1009
    new $P2508, "Undef"
  vivify_1009:
    find_lex $P2509, "@ns"
    unless_null $P2509, vivify_1010
    $P2509 = root_new ['parrot';'ResizablePMCArray']
  vivify_1010:
    set $P2510, $P2509[-1]
    unless_null $P2510, vivify_1011
    new $P2510, "Undef"
  vivify_1011:
    concat $P2511, $P2508, $P2510
    find_lex $P2512, "@ns"
    unless_null $P2512, vivify_1012
    $P2512 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2512
  vivify_1012:
    set $P2512[-1], $P2511
  if_2498_end:
.annotate 'line', 1708
    find_lex $P2513, "@actual_ns"
    unless_null $P2513, vivify_1013
    $P2513 = root_new ['parrot';'ResizablePMCArray']
  vivify_1013:
.annotate 'line', 1716
    find_lex $P2515, "@ns"
    unless_null $P2515, vivify_1014
    $P2515 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
    defined $I2516, $P2515
    unless $I2516, for_undef_1015
    iter $P2514, $P2515
    new $P2529, 'ExceptionHandler'
    set_label $P2529, loop2528_handler
    $P2529."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2529
  loop2528_test:
    unless $P2514, loop2528_done
    shift $P2517, $P2514
  loop2528_redo:
    .const 'Sub' $P2519 = "231_1303391590.341" 
    capture_lex $P2519
    $P2519($P2517)
  loop2528_next:
    goto loop2528_test
  loop2528_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2530, exception, 'type'
    eq $P2530, .CONTROL_LOOP_NEXT, loop2528_next
    eq $P2530, .CONTROL_LOOP_REDO, loop2528_redo
  loop2528_done:
    pop_eh 
  for_undef_1015:
    find_lex $P2531, "@actual_ns"
    unless_null $P2531, vivify_1019
    $P2531 = root_new ['parrot';'ResizablePMCArray']
  vivify_1019:
.annotate 'line', 1702
    .return ($P2531)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2518"  :anon :subid("231_1303391590.341") :outer("230_1303391590.341")
    .param pmc param_2520
.annotate 'line', 1716
    .lex "$_", param_2520
.annotate 'line', 1717
    find_lex $P2523, "$_"
    unless_null $P2523, vivify_1016
    new $P2523, "Undef"
  vivify_1016:
    set $S2524, $P2523
    iseq $I2525, $S2524, ""
    unless $I2525, unless_2522
    new $P2521, 'Integer'
    set $P2521, $I2525
    goto unless_2522_end
  unless_2522:
    find_lex $P2526, "@actual_ns"
    unless_null $P2526, vivify_1017
    $P2526 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
    find_lex $P2527, "$_"
    unless_null $P2527, vivify_1018
    new $P2527, "Undef"
  vivify_1018:
    push $P2526, $P2527
    set $P2521, $P2526
  unless_2522_end:
.annotate 'line', 1716
    .return ($P2521)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1303391590.341") :outer("167_1303391590.341")
    .param pmc param_2533
    .param pmc param_2534
    .param pmc param_2535
    .param pmc param_2536 :optional :named("cache")
    .param int has_param_2536 :opt_flag
.annotate 'line', 1722
    .lex "self", param_2533
    .lex "$target", param_2534
    .lex "$pos", param_2535
    if has_param_2536, optparam_1020
    new $P2537, "Undef"
    set param_2536, $P2537
  optparam_1020:
    .lex "$cache", param_2536
.annotate 'line', 1723

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            .include 'cclass.pasm'

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop '!linepos', target
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
            unless jpos < eos goto linepos_done
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
          linepos_done:

            # We have C<linepos>, so now we search the array for the largest
            # element that is not greater than C<pos>.  The index of that
            # element is the line number to be returned.
            # (Potential optimization: use a binary search.)
            .local int line, count
            count = elements linepos
            line = 0
          line_loop:
            if line >= count goto line_done
            $I0 = linepos[line]
            if $I0 > pos goto line_done
            inc line
            goto line_loop
          line_done:
            .return (line)
        
.annotate 'line', 1722
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2652"  :subid("234_1303391590.341") :outer("10_1303391590.341")
.annotate 'line', 1879
    .const 'Sub' $P2731 = "241_1303391590.341" 
    capture_lex $P2731
    .const 'Sub' $P2681 = "239_1303391590.341" 
    capture_lex $P2681
    .const 'Sub' $P2674 = "238_1303391590.341" 
    capture_lex $P2674
    .const 'Sub' $P2669 = "237_1303391590.341" 
    capture_lex $P2669
    .const 'Sub' $P2664 = "236_1303391590.341" 
    capture_lex $P2664
    .const 'Sub' $P2656 = "235_1303391590.341" 
    capture_lex $P2656
    .lex "$?PACKAGE", $P2654
    .lex "$?CLASS", $P2655
.annotate 'line', 1895
    .const 'Sub' $P2681 = "239_1303391590.341" 
    newclosure $P2729, $P2681
.annotate 'line', 1879
    .return ($P2729)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1022") :outer("234_1303391590.341")
.annotate 'line', 1879
    get_hll_global $P2653, ["HLL";"CommandLine";"Result"], "_block2652" 
    .local pmc block
    set block, $P2653
    .const 'Sub' $P2731 = "241_1303391590.341" 
    capture_lex $P2731
    $P2731()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2730"  :anon :subid("241_1303391590.341") :outer("234_1303391590.341")
.annotate 'line', 1879
    nqp_get_sc_object $P2732, "1303391582.588", 4
    .local pmc type_obj
    set type_obj, $P2732
    get_how $P2733, type_obj
    get_hll_global $P2734, "NQPAttribute"
    $P2735 = $P2734."new"("@!arguments" :named("name"))
    $P2733."add_attribute"(type_obj, $P2735)
    get_how $P2736, type_obj
    get_hll_global $P2737, "NQPAttribute"
    $P2738 = $P2737."new"("%!options" :named("name"))
    $P2736."add_attribute"(type_obj, $P2738)
    get_how $P2739, type_obj
    .const 'Sub' $P2740 = "235_1303391590.341" 
    $P2739."add_method"(type_obj, "init", $P2740)
    get_how $P2741, type_obj
    .const 'Sub' $P2742 = "236_1303391590.341" 
    $P2741."add_method"(type_obj, "arguments", $P2742)
    get_how $P2743, type_obj
    .const 'Sub' $P2744 = "237_1303391590.341" 
    $P2743."add_method"(type_obj, "options", $P2744)
    get_how $P2745, type_obj
    .const 'Sub' $P2746 = "238_1303391590.341" 
    $P2745."add_method"(type_obj, "add-argument", $P2746)
    get_how $P2747, type_obj
    .const 'Sub' $P2748 = "239_1303391590.341" 
    $P2747."add_method"(type_obj, "add-option", $P2748)
    get_how $P2749, type_obj
    $P2750 = $P2749."compose"(type_obj)
    .return ($P2750)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1303391590.341") :outer("234_1303391590.341")
    .param pmc param_2657
.annotate 'line', 1883
    .lex "self", param_2657
.annotate 'line', 1884
    new $P2658, "ResizablePMCArray"
    find_lex $P2659, "self"
    find_lex $P2660, "$?CLASS"
    setattribute $P2659, $P2660, "@!arguments", $P2658
.annotate 'line', 1885
    new $P2661, "Hash"
    find_lex $P2662, "self"
    find_lex $P2663, "$?CLASS"
    setattribute $P2662, $P2663, "%!options", $P2661
.annotate 'line', 1883
    .return ($P2661)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1303391590.341") :outer("234_1303391590.341")
    .param pmc param_2665
.annotate 'line', 1888
    .lex "self", param_2665
    find_lex $P2666, "self"
    find_lex $P2667, "$?CLASS"
    getattribute $P2668, $P2666, $P2667, "@!arguments"
    unless_null $P2668, vivify_1023
    $P2668 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    .return ($P2668)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1303391590.341") :outer("234_1303391590.341")
    .param pmc param_2670
.annotate 'line', 1889
    .lex "self", param_2670
    find_lex $P2671, "self"
    find_lex $P2672, "$?CLASS"
    getattribute $P2673, $P2671, $P2672, "%!options"
    unless_null $P2673, vivify_1024
    $P2673 = root_new ['parrot';'Hash']
  vivify_1024:
    .return ($P2673)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1303391590.341") :outer("234_1303391590.341")
    .param pmc param_2675
    .param pmc param_2676
.annotate 'line', 1891
    .lex "self", param_2675
    .lex "$x", param_2676
.annotate 'line', 1892
    find_lex $P2677, "self"
    find_lex $P2678, "$?CLASS"
    getattribute $P2679, $P2677, $P2678, "@!arguments"
    unless_null $P2679, vivify_1025
    $P2679 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    find_lex $P2680, "$x"
    unless_null $P2680, vivify_1026
    new $P2680, "Undef"
  vivify_1026:
    push $P2679, $P2680
.annotate 'line', 1891
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1303391590.341") :outer("234_1303391590.341")
    .param pmc param_2682
    .param pmc param_2683
    .param pmc param_2684
.annotate 'line', 1895
    .const 'Sub' $P2693 = "240_1303391590.341" 
    capture_lex $P2693
    .lex "self", param_2682
    .lex "$name", param_2683
    .lex "$value", param_2684
.annotate 'line', 1898
    find_lex $P2690, "$name"
    unless_null $P2690, vivify_1027
    new $P2690, "Undef"
  vivify_1027:
    find_lex $P2687, "self"
    find_lex $P2688, "$?CLASS"
    getattribute $P2689, $P2687, $P2688, "%!options"
    unless_null $P2689, vivify_1028
    $P2689 = root_new ['parrot';'Hash']
  vivify_1028:
    exists $I2691, $P2689[$P2690]
    if $I2691, if_2686
.annotate 'line', 1907
    find_lex $P2724, "$value"
    unless_null $P2724, vivify_1029
    new $P2724, "Undef"
  vivify_1029:
    find_lex $P2725, "$name"
    unless_null $P2725, vivify_1030
    new $P2725, "Undef"
  vivify_1030:
    find_lex $P2726, "self"
    find_lex $P2727, "$?CLASS"
    getattribute $P2728, $P2726, $P2727, "%!options"
    unless_null $P2728, vivify_1031
    $P2728 = root_new ['parrot';'Hash']
    setattribute $P2726, $P2727, "%!options", $P2728
  vivify_1031:
    set $P2728[$P2725], $P2724
.annotate 'line', 1906
    set $P2685, $P2724
.annotate 'line', 1898
    goto if_2686_end
  if_2686:
    .const 'Sub' $P2693 = "240_1303391590.341" 
    capture_lex $P2693
    $P2723 = $P2693()
    set $P2685, $P2723
  if_2686_end:
.annotate 'line', 1895
    .return ($P2685)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2692"  :anon :subid("240_1303391590.341") :outer("239_1303391590.341")
.annotate 'line', 1899
    new $P2694, "Undef"
    .lex "$t", $P2694
    find_lex $P2695, "self"
    find_lex $P2696, "$?CLASS"
    getattribute $P2697, $P2695, $P2696, "%!options"
    unless_null $P2697, vivify_1032
    $P2697 = root_new ['parrot';'Hash']
  vivify_1032:
    typeof $S2698, $P2697
    new $P2699, 'String'
    set $P2699, $S2698
    store_lex "$t", $P2699
.annotate 'line', 1900
    find_lex $P2700, "$t"
    unless_null $P2700, vivify_1033
    new $P2700, "Undef"
  vivify_1033:
    "say"($P2700)
.annotate 'line', 1901
    find_lex $P2703, "$t"
    unless_null $P2703, vivify_1034
    new $P2703, "Undef"
  vivify_1034:
    set $S2704, $P2703
    iseq $I2705, $S2704, "ResizablePMCArray"
    if $I2705, if_2702
.annotate 'line', 1904
    find_lex $P2712, "$name"
    unless_null $P2712, vivify_1035
    new $P2712, "Undef"
  vivify_1035:
    find_lex $P2713, "self"
    find_lex $P2714, "$?CLASS"
    getattribute $P2715, $P2713, $P2714, "%!options"
    unless_null $P2715, vivify_1036
    $P2715 = root_new ['parrot';'Hash']
  vivify_1036:
    set $P2716, $P2715[$P2712]
    unless_null $P2716, vivify_1037
    new $P2716, "Undef"
  vivify_1037:
    find_lex $P2717, "$name"
    unless_null $P2717, vivify_1038
    new $P2717, "Undef"
  vivify_1038:
    new $P2718, "ResizablePMCArray"
    push $P2718, $P2716
    push $P2718, $P2717
    find_lex $P2719, "$name"
    unless_null $P2719, vivify_1039
    new $P2719, "Undef"
  vivify_1039:
    find_lex $P2720, "self"
    find_lex $P2721, "$?CLASS"
    getattribute $P2722, $P2720, $P2721, "%!options"
    unless_null $P2722, vivify_1040
    $P2722 = root_new ['parrot';'Hash']
    setattribute $P2720, $P2721, "%!options", $P2722
  vivify_1040:
    set $P2722[$P2719], $P2718
.annotate 'line', 1903
    set $P2701, $P2718
.annotate 'line', 1901
    goto if_2702_end
  if_2702:
.annotate 'line', 1902
    find_lex $P2706, "$name"
    unless_null $P2706, vivify_1041
    new $P2706, "Undef"
  vivify_1041:
    find_lex $P2707, "self"
    find_lex $P2708, "$?CLASS"
    getattribute $P2709, $P2707, $P2708, "%!options"
    unless_null $P2709, vivify_1042
    $P2709 = root_new ['parrot';'Hash']
  vivify_1042:
    set $P2710, $P2709[$P2706]
    unless_null $P2710, vivify_1043
    new $P2710, "Undef"
  vivify_1043:
    find_lex $P2711, "$value"
    unless_null $P2711, vivify_1044
    new $P2711, "Undef"
  vivify_1044:
    push $P2710, $P2711
.annotate 'line', 1901
    set $P2701, $P2710
  if_2702_end:
.annotate 'line', 1898
    .return ($P2701)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2751"  :subid("242_1303391590.341") :outer("10_1303391590.341")
.annotate 'line', 1912
    .const 'Sub' $P3177 = "261_1303391590.341" 
    capture_lex $P3177
    .const 'Sub' $P2892 = "253_1303391590.341" 
    capture_lex $P2892
    .const 'Sub' $P2880 = "252_1303391590.341" 
    capture_lex $P2880
    .const 'Sub' $P2856 = "251_1303391590.341" 
    capture_lex $P2856
    .const 'Sub' $P2807 = "249_1303391590.341" 
    capture_lex $P2807
    .const 'Sub' $P2801 = "248_1303391590.341" 
    capture_lex $P2801
    .const 'Sub' $P2793 = "247_1303391590.341" 
    capture_lex $P2793
    .const 'Sub' $P2769 = "245_1303391590.341" 
    capture_lex $P2769
    .const 'Sub' $P2764 = "244_1303391590.341" 
    capture_lex $P2764
    .const 'Sub' $P2755 = "243_1303391590.341" 
    capture_lex $P2755
    .lex "$?PACKAGE", $P2753
    .lex "$?CLASS", $P2754
.annotate 'line', 1972
    .const 'Sub' $P2892 = "253_1303391590.341" 
    newclosure $P3175, $P2892
.annotate 'line', 1912
    .return ($P3175)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1045") :outer("242_1303391590.341")
.annotate 'line', 1912
    get_hll_global $P2752, ["HLL";"CommandLine";"Parser"], "_block2751" 
    .local pmc block
    set block, $P2752
    .const 'Sub' $P3177 = "261_1303391590.341" 
    capture_lex $P3177
    $P3177()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3176"  :anon :subid("261_1303391590.341") :outer("242_1303391590.341")
.annotate 'line', 1912
    nqp_get_sc_object $P3178, "1303391582.588", 5
    .local pmc type_obj
    set type_obj, $P3178
    get_how $P3179, type_obj
    get_hll_global $P3180, "NQPAttribute"
    $P3181 = $P3180."new"("@!specs" :named("name"))
    $P3179."add_attribute"(type_obj, $P3181)
    get_how $P3182, type_obj
    get_hll_global $P3183, "NQPAttribute"
    $P3184 = $P3183."new"("%!options" :named("name"))
    $P3182."add_attribute"(type_obj, $P3184)
    get_how $P3185, type_obj
    get_hll_global $P3186, "NQPAttribute"
    $P3187 = $P3186."new"("%!stopper" :named("name"))
    $P3185."add_attribute"(type_obj, $P3187)
    get_how $P3188, type_obj
    get_hll_global $P3189, "NQPAttribute"
    $P3190 = $P3189."new"("$!stop-after-first-arg" :named("name"))
    $P3188."add_attribute"(type_obj, $P3190)
    get_how $P3191, type_obj
    .const 'Sub' $P3192 = "243_1303391590.341" 
    $P3191."add_method"(type_obj, "new", $P3192)
    get_how $P3193, type_obj
    .const 'Sub' $P3194 = "244_1303391590.341" 
    $P3193."add_method"(type_obj, "stop-after-first-arg", $P3194)
    get_how $P3195, type_obj
    .const 'Sub' $P3196 = "245_1303391590.341" 
    $P3195."add_method"(type_obj, "BUILD", $P3196)
    get_how $P3197, type_obj
    .const 'Sub' $P3198 = "247_1303391590.341" 
    $P3197."add_method"(type_obj, "add-stopper", $P3198)
    get_how $P3199, type_obj
    .const 'Sub' $P3200 = "248_1303391590.341" 
    $P3199."add_method"(type_obj, "split-option-aliases", $P3200)
    get_how $P3201, type_obj
    .const 'Sub' $P3202 = "249_1303391590.341" 
    $P3201."add_method"(type_obj, "add-spec", $P3202)
    get_how $P3203, type_obj
    .const 'Sub' $P3204 = "251_1303391590.341" 
    $P3203."add_method"(type_obj, "is-option", $P3204)
    get_how $P3205, type_obj
    .const 'Sub' $P3206 = "252_1303391590.341" 
    $P3205."add_method"(type_obj, "wants-value", $P3206)
    get_how $P3207, type_obj
    .const 'Sub' $P3208 = "253_1303391590.341" 
    $P3207."add_method"(type_obj, "parse", $P3208)
    get_how $P3209, type_obj
    $P3210 = $P3209."compose"(type_obj)
    .return ($P3210)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2756
    .param pmc param_2757
.annotate 'line', 1918
    .lex "self", param_2756
    .lex "@specs", param_2757
.annotate 'line', 1919
    new $P2758, "Undef"
    .lex "$obj", $P2758
    find_lex $P2759, "self"
    $P2760 = $P2759."CREATE"()
    store_lex "$obj", $P2760
.annotate 'line', 1920
    find_lex $P2761, "$obj"
    unless_null $P2761, vivify_1046
    new $P2761, "Undef"
  vivify_1046:
    find_lex $P2762, "@specs"
    unless_null $P2762, vivify_1047
    $P2762 = root_new ['parrot';'ResizablePMCArray']
  vivify_1047:
    $P2761."BUILD"($P2762 :named("specs"))
    find_lex $P2763, "$obj"
    unless_null $P2763, vivify_1048
    new $P2763, "Undef"
  vivify_1048:
.annotate 'line', 1918
    .return ($P2763)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2765
.annotate 'line', 1924
    .lex "self", param_2765
.annotate 'line', 1925
    new $P2766, "Integer"
    assign $P2766, 1
    find_lex $P2767, "self"
    find_lex $P2768, "$?CLASS"
    setattribute $P2767, $P2768, "$!stop-after-first-arg", $P2766
.annotate 'line', 1924
    .return ($P2766)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2770
    .param pmc param_2771 :optional :named("specs")
    .param int has_param_2771 :opt_flag
.annotate 'line', 1928
    .const 'Sub' $P2785 = "246_1303391590.341" 
    capture_lex $P2785
    .lex "self", param_2770
    if has_param_2771, optparam_1049
    $P2772 = root_new ['parrot';'ResizablePMCArray']
    set param_2771, $P2772
  optparam_1049:
    .lex "@specs", param_2771
.annotate 'line', 1929
    new $P2773, "Integer"
    assign $P2773, 1
    find_lex $P2774, "self"
    find_lex $P2775, "$?CLASS"
    getattribute $P2776, $P2774, $P2775, "%!stopper"
    unless_null $P2776, vivify_1050
    $P2776 = root_new ['parrot';'Hash']
    setattribute $P2774, $P2775, "%!stopper", $P2776
  vivify_1050:
    set $P2776["--"], $P2773
.annotate 'line', 1930
    new $P2777, "Integer"
    assign $P2777, 0
    find_lex $P2778, "self"
    find_lex $P2779, "$?CLASS"
    setattribute $P2778, $P2779, "$!stop-after-first-arg", $P2777
.annotate 'line', 1931
    find_lex $P2781, "@specs"
    unless_null $P2781, vivify_1051
    $P2781 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    defined $I2782, $P2781
    unless $I2782, for_undef_1052
    iter $P2780, $P2781
    new $P2791, 'ExceptionHandler'
    set_label $P2791, loop2790_handler
    $P2791."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2791
  loop2790_test:
    unless $P2780, loop2790_done
    shift $P2783, $P2780
  loop2790_redo:
    .const 'Sub' $P2785 = "246_1303391590.341" 
    capture_lex $P2785
    $P2785($P2783)
  loop2790_next:
    goto loop2790_test
  loop2790_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2792, exception, 'type'
    eq $P2792, .CONTROL_LOOP_NEXT, loop2790_next
    eq $P2792, .CONTROL_LOOP_REDO, loop2790_redo
  loop2790_done:
    pop_eh 
  for_undef_1052:
.annotate 'line', 1928
    .return ($P2780)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2784"  :anon :subid("246_1303391590.341") :outer("245_1303391590.341")
    .param pmc param_2786
.annotate 'line', 1931
    .lex "$_", param_2786
.annotate 'line', 1932
    find_lex $P2787, "self"
    find_lex $P2788, "$_"
    unless_null $P2788, vivify_1053
    new $P2788, "Undef"
  vivify_1053:
    $P2789 = $P2787."add-spec"($P2788)
.annotate 'line', 1931
    .return ($P2789)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2794
    .param pmc param_2795
.annotate 'line', 1935
    .lex "self", param_2794
    .lex "$x", param_2795
.annotate 'line', 1936
    new $P2796, "Integer"
    assign $P2796, 1
    find_lex $P2797, "$x"
    unless_null $P2797, vivify_1054
    new $P2797, "Undef"
  vivify_1054:
    find_lex $P2798, "self"
    find_lex $P2799, "$?CLASS"
    getattribute $P2800, $P2798, $P2799, "%!stopper"
    unless_null $P2800, vivify_1055
    $P2800 = root_new ['parrot';'Hash']
    setattribute $P2798, $P2799, "%!stopper", $P2800
  vivify_1055:
    set $P2800[$P2797], $P2796
.annotate 'line', 1935
    .return ($P2796)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2802
    .param pmc param_2803
.annotate 'line', 1939
    .lex "self", param_2802
    .lex "$s", param_2803
.annotate 'line', 1940
    find_lex $P2804, "$s"
    unless_null $P2804, vivify_1056
    new $P2804, "Undef"
  vivify_1056:
    set $S2805, $P2804
    split $P2806, "|", $S2805
.annotate 'line', 1939
    .return ($P2806)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2808
    .param pmc param_2809
.annotate 'line', 1944
    .const 'Sub' $P2846 = "250_1303391590.341" 
    capture_lex $P2846
    .lex "self", param_2808
    .lex "$s", param_2809
.annotate 'line', 1945
    new $P2810, "Undef"
    .lex "$i", $P2810
.annotate 'line', 1946
    new $P2811, "Undef"
    .lex "$type", $P2811
.annotate 'line', 1947
    $P2812 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2812
.annotate 'line', 1945
    find_lex $P2813, "$s"
    unless_null $P2813, vivify_1057
    new $P2813, "Undef"
  vivify_1057:
    set $S2814, $P2813
    index $I2815, $S2814, "="
    new $P2816, 'Integer'
    set $P2816, $I2815
    store_lex "$i", $P2816
    find_lex $P2817, "$type"
    unless_null $P2817, vivify_1058
    new $P2817, "Undef"
  vivify_1058:
    find_lex $P2818, "@options"
    unless_null $P2818, vivify_1059
    $P2818 = root_new ['parrot';'ResizablePMCArray']
  vivify_1059:
.annotate 'line', 1948
    find_lex $P2820, "$i"
    unless_null $P2820, vivify_1060
    new $P2820, "Undef"
  vivify_1060:
    set $N2821, $P2820
    islt $I2822, $N2821, 0.0
    if $I2822, if_2819
.annotate 'line', 1952
    find_lex $P2827, "$s"
    unless_null $P2827, vivify_1061
    new $P2827, "Undef"
  vivify_1061:
    set $S2828, $P2827
    find_lex $P2829, "$i"
    unless_null $P2829, vivify_1062
    new $P2829, "Undef"
  vivify_1062:
    add $P2830, $P2829, 1
    set $I2831, $P2830
    substr $S2832, $S2828, $I2831
    new $P2833, 'String'
    set $P2833, $S2832
    store_lex "$type", $P2833
.annotate 'line', 1953
    find_lex $P2834, "self"
    find_lex $P2835, "$s"
    unless_null $P2835, vivify_1063
    new $P2835, "Undef"
  vivify_1063:
    set $S2836, $P2835
    find_lex $P2837, "$i"
    unless_null $P2837, vivify_1064
    new $P2837, "Undef"
  vivify_1064:
    set $I2838, $P2837
    substr $S2839, $S2836, 0, $I2838
    $P2840 = $P2834."split-option-aliases"($S2839)
    store_lex "@options", $P2840
.annotate 'line', 1951
    goto if_2819_end
  if_2819:
.annotate 'line', 1949
    new $P2823, "String"
    assign $P2823, "b"
    store_lex "$type", $P2823
.annotate 'line', 1950
    find_lex $P2824, "self"
    find_lex $P2825, "$s"
    unless_null $P2825, vivify_1065
    new $P2825, "Undef"
  vivify_1065:
    $P2826 = $P2824."split-option-aliases"($P2825)
    store_lex "@options", $P2826
  if_2819_end:
.annotate 'line', 1955
    find_lex $P2842, "@options"
    unless_null $P2842, vivify_1066
    $P2842 = root_new ['parrot';'ResizablePMCArray']
  vivify_1066:
    defined $I2843, $P2842
    unless $I2843, for_undef_1067
    iter $P2841, $P2842
    new $P2854, 'ExceptionHandler'
    set_label $P2854, loop2853_handler
    $P2854."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2854
  loop2853_test:
    unless $P2841, loop2853_done
    shift $P2844, $P2841
  loop2853_redo:
    .const 'Sub' $P2846 = "250_1303391590.341" 
    capture_lex $P2846
    $P2846($P2844)
  loop2853_next:
    goto loop2853_test
  loop2853_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2855, exception, 'type'
    eq $P2855, .CONTROL_LOOP_NEXT, loop2853_next
    eq $P2855, .CONTROL_LOOP_REDO, loop2853_redo
  loop2853_done:
    pop_eh 
  for_undef_1067:
.annotate 'line', 1944
    .return ($P2841)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2845"  :anon :subid("250_1303391590.341") :outer("249_1303391590.341")
    .param pmc param_2847
.annotate 'line', 1955
    .lex "$_", param_2847
.annotate 'line', 1956
    find_lex $P2848, "$type"
    unless_null $P2848, vivify_1068
    new $P2848, "Undef"
  vivify_1068:
    find_lex $P2849, "$_"
    unless_null $P2849, vivify_1069
    new $P2849, "Undef"
  vivify_1069:
    find_lex $P2850, "self"
    find_lex $P2851, "$?CLASS"
    getattribute $P2852, $P2850, $P2851, "%!options"
    unless_null $P2852, vivify_1070
    $P2852 = root_new ['parrot';'Hash']
    setattribute $P2850, $P2851, "%!options", $P2852
  vivify_1070:
    set $P2852[$P2849], $P2848
.annotate 'line', 1955
    .return ($P2848)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2859
    .param pmc param_2860
.annotate 'line', 1961
    new $P2858, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2858, control_2857
    push_eh $P2858
    .lex "self", param_2859
    .lex "$x", param_2860
.annotate 'line', 1962
    find_lex $P2864, "$x"
    unless_null $P2864, vivify_1071
    new $P2864, "Undef"
  vivify_1071:
    set $S2865, $P2864
    iseq $I2866, $S2865, "-"
    unless $I2866, unless_2863
    new $P2862, 'Integer'
    set $P2862, $I2866
    goto unless_2863_end
  unless_2863:
    find_lex $P2867, "$x"
    unless_null $P2867, vivify_1072
    new $P2867, "Undef"
  vivify_1072:
    set $S2868, $P2867
    iseq $I2869, $S2868, "--"
    new $P2862, 'Integer'
    set $P2862, $I2869
  unless_2863_end:
    unless $P2862, if_2861_end
    new $P2870, "Exception"
    set $P2870['type'], .CONTROL_RETURN
    new $P2871, "Integer"
    assign $P2871, 0
    setattribute $P2870, 'payload', $P2871
    throw $P2870
  if_2861_end:
.annotate 'line', 1963
    find_lex $P2873, "$x"
    unless_null $P2873, vivify_1073
    new $P2873, "Undef"
  vivify_1073:
    set $S2874, $P2873
    substr $S2875, $S2874, 0, 1
    iseq $I2876, $S2875, "-"
    unless $I2876, if_2872_end
    new $P2877, "Exception"
    set $P2877['type'], .CONTROL_RETURN
    new $P2878, "Integer"
    assign $P2878, 1
    setattribute $P2877, 'payload', $P2878
    throw $P2877
  if_2872_end:
.annotate 'line', 1961
    .return (0)
  control_2857:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2879, exception, "payload"
    .return ($P2879)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2881
    .param pmc param_2882
.annotate 'line', 1967
    .lex "self", param_2881
    .lex "$x", param_2882
.annotate 'line', 1968
    new $P2883, "Undef"
    .lex "$spec", $P2883
    find_lex $P2884, "$x"
    unless_null $P2884, vivify_1074
    new $P2884, "Undef"
  vivify_1074:
    find_lex $P2885, "self"
    find_lex $P2886, "$?CLASS"
    getattribute $P2887, $P2885, $P2886, "%!options"
    unless_null $P2887, vivify_1075
    $P2887 = root_new ['parrot';'Hash']
  vivify_1075:
    set $P2888, $P2887[$P2884]
    unless_null $P2888, vivify_1076
    new $P2888, "Undef"
  vivify_1076:
    store_lex "$spec", $P2888
.annotate 'line', 1969
    find_lex $P2889, "$spec"
    unless_null $P2889, vivify_1077
    new $P2889, "Undef"
  vivify_1077:
    set $S2890, $P2889
    iseq $I2891, $S2890, "s"
.annotate 'line', 1967
    .return ($I2891)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1303391590.341") :outer("242_1303391590.341")
    .param pmc param_2895
    .param pmc param_2896
.annotate 'line', 1972
    .const 'Sub' $P2983 = "256_1303391590.341" 
    capture_lex $P2983
    .const 'Sub' $P2949 = "255_1303391590.341" 
    capture_lex $P2949
    .const 'Sub' $P2900 = "254_1303391590.341" 
    capture_lex $P2900
    new $P2894, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2894, control_2893
    push_eh $P2894
    .lex "self", param_2895
    .lex "@args", param_2896
.annotate 'line', 1973
    new $P2897, "Undef"
    .lex "$i", $P2897
.annotate 'line', 1974
    new $P2898, "Undef"
    .lex "$arg-count", $P2898
.annotate 'line', 1976
    new $P2899, "Undef"
    .lex "$result", $P2899
.annotate 'line', 1980
    .const 'Sub' $P2900 = "254_1303391590.341" 
    newclosure $P2948, $P2900
    .lex "get-value", $P2948
.annotate 'line', 1995
    .const 'Sub' $P2949 = "255_1303391590.341" 
    newclosure $P2967, $P2949
    .lex "slurp-rest", $P2967
.annotate 'line', 1973
    new $P2968, "Integer"
    assign $P2968, 0
    store_lex "$i", $P2968
.annotate 'line', 1974
    find_lex $P2969, "@args"
    unless_null $P2969, vivify_1103
    $P2969 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    set $N2970, $P2969
    new $P2971, 'Float'
    set $P2971, $N2970
    store_lex "$arg-count", $P2971
.annotate 'line', 1976
    get_hll_global $P2972, ["HLL";"CommandLine"], "Result"
    $P2973 = $P2972."new"()
    store_lex "$result", $P2973
.annotate 'line', 1977
    find_lex $P2974, "$result"
    unless_null $P2974, vivify_1104
    new $P2974, "Undef"
  vivify_1104:
    $P2974."init"()
    find_lex $P2975, "get-value"
    find_lex $P2976, "slurp-rest"
.annotate 'line', 2003
    new $P3170, 'ExceptionHandler'
    set_label $P3170, loop3169_handler
    $P3170."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3170
  loop3169_test:
    find_lex $P2977, "$i"
    unless_null $P2977, vivify_1105
    new $P2977, "Undef"
  vivify_1105:
    set $N2978, $P2977
    find_lex $P2979, "$arg-count"
    unless_null $P2979, vivify_1106
    new $P2979, "Undef"
  vivify_1106:
    set $N2980, $P2979
    islt $I2981, $N2978, $N2980
    unless $I2981, loop3169_done
  loop3169_redo:
    .const 'Sub' $P2983 = "256_1303391590.341" 
    capture_lex $P2983
    $P2983()
  loop3169_next:
    goto loop3169_test
  loop3169_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3171, exception, 'type'
    eq $P3171, .CONTROL_LOOP_NEXT, loop3169_next
    eq $P3171, .CONTROL_LOOP_REDO, loop3169_redo
  loop3169_done:
    pop_eh 
.annotate 'line', 2055
    new $P3172, "Exception"
    set $P3172['type'], .CONTROL_RETURN
    find_lex $P3173, "$result"
    unless_null $P3173, vivify_1167
    new $P3173, "Undef"
  vivify_1167:
    setattribute $P3172, 'payload', $P3173
    throw $P3172
.annotate 'line', 1972
    .return ()
  control_2893:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3174, exception, "payload"
    .return ($P3174)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1303391590.341") :outer("253_1303391590.341")
    .param pmc param_2901
.annotate 'line', 1980
    .lex "$opt", param_2901
.annotate 'line', 1981
    find_lex $P2904, "$i"
    unless_null $P2904, vivify_1078
    new $P2904, "Undef"
  vivify_1078:
    set $N2905, $P2904
    find_lex $P2906, "$arg-count"
    unless_null $P2906, vivify_1079
    new $P2906, "Undef"
  vivify_1079:
    sub $P2907, $P2906, 1
    set $N2908, $P2907
    iseq $I2909, $N2905, $N2908
    if $I2909, if_2903
.annotate 'line', 1983
    find_lex $P2916, "self"
    find_lex $P2917, "$i"
    unless_null $P2917, vivify_1080
    new $P2917, "Undef"
  vivify_1080:
    add $P2918, $P2917, 1
    set $I2919, $P2918
    find_lex $P2920, "@args"
    unless_null $P2920, vivify_1081
    $P2920 = root_new ['parrot';'ResizablePMCArray']
  vivify_1081:
    set $P2921, $P2920[$I2919]
    unless_null $P2921, vivify_1082
    new $P2921, "Undef"
  vivify_1082:
    $P2922 = $P2916."is-option"($P2921)
    if $P2922, if_2915
.annotate 'line', 1985
    find_lex $P2929, "$i"
    unless_null $P2929, vivify_1083
    new $P2929, "Undef"
  vivify_1083:
    add $P2930, $P2929, 1
    set $I2931, $P2930
    find_lex $P2932, "@args"
    unless_null $P2932, vivify_1084
    $P2932 = root_new ['parrot';'ResizablePMCArray']
  vivify_1084:
    set $P2933, $P2932[$I2931]
    unless_null $P2933, vivify_1085
    new $P2933, "Undef"
  vivify_1085:
    find_lex $P2934, "self"
    find_lex $P2935, "$?CLASS"
    getattribute $P2936, $P2934, $P2935, "%!stopper"
    unless_null $P2936, vivify_1086
    $P2936 = root_new ['parrot';'Hash']
  vivify_1086:
    set $P2937, $P2936[$P2933]
    unless_null $P2937, vivify_1087
    new $P2937, "Undef"
  vivify_1087:
    if $P2937, if_2928
.annotate 'line', 1987
    find_lex $P2942, "$i"
    unless_null $P2942, vivify_1088
    new $P2942, "Undef"
  vivify_1088:
    clone $P2943, $P2942
    inc $P2942
    find_lex $P2944, "$i"
    unless_null $P2944, vivify_1089
    new $P2944, "Undef"
  vivify_1089:
    set $I2945, $P2944
    find_lex $P2946, "@args"
    unless_null $P2946, vivify_1090
    $P2946 = root_new ['parrot';'ResizablePMCArray']
  vivify_1090:
    set $P2947, $P2946[$I2945]
    unless_null $P2947, vivify_1091
    new $P2947, "Undef"
  vivify_1091:
    set $P2927, $P2947
.annotate 'line', 1985
    goto if_2928_end
  if_2928:
.annotate 'line', 1986
    new $P2938, 'String'
    set $P2938, "Option "
    find_lex $P2939, "$opt"
    unless_null $P2939, vivify_1092
    new $P2939, "Undef"
  vivify_1092:
    concat $P2940, $P2938, $P2939
    concat $P2941, $P2940, " needs a value, but is followed by a stopper"
    die $P2941
  if_2928_end:
.annotate 'line', 1985
    set $P2914, $P2927
.annotate 'line', 1983
    goto if_2915_end
  if_2915:
.annotate 'line', 1984
    new $P2923, 'String'
    set $P2923, "Option "
    find_lex $P2924, "$opt"
    unless_null $P2924, vivify_1093
    new $P2924, "Undef"
  vivify_1093:
    concat $P2925, $P2923, $P2924
    concat $P2926, $P2925, " needs a value, but is followed by an option"
    die $P2926
  if_2915_end:
.annotate 'line', 1983
    set $P2902, $P2914
.annotate 'line', 1981
    goto if_2903_end
  if_2903:
.annotate 'line', 1982
    new $P2910, 'String'
    set $P2910, "Option "
    find_lex $P2911, "$opt"
    unless_null $P2911, vivify_1094
    new $P2911, "Undef"
  vivify_1094:
    concat $P2912, $P2910, $P2911
    concat $P2913, $P2912, " needs a value"
    die $P2913
  if_2903_end:
.annotate 'line', 1980
    .return ($P2902)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1303391590.341") :outer("253_1303391590.341")
.annotate 'line', 1995
    find_lex $P2950, "$i"
    unless_null $P2950, vivify_1095
    new $P2950, "Undef"
  vivify_1095:
    clone $P2951, $P2950
    inc $P2950
.annotate 'line', 1997
    new $P2965, 'ExceptionHandler'
    set_label $P2965, loop2964_handler
    $P2965."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2965
  loop2964_test:
    find_lex $P2952, "$i"
    unless_null $P2952, vivify_1096
    new $P2952, "Undef"
  vivify_1096:
    set $N2953, $P2952
    find_lex $P2954, "$arg-count"
    unless_null $P2954, vivify_1097
    new $P2954, "Undef"
  vivify_1097:
    set $N2955, $P2954
    islt $I2956, $N2953, $N2955
    unless $I2956, loop2964_done
  loop2964_redo:
.annotate 'line', 1998
    find_lex $P2957, "$result"
    unless_null $P2957, vivify_1098
    new $P2957, "Undef"
  vivify_1098:
    find_lex $P2958, "$i"
    unless_null $P2958, vivify_1099
    new $P2958, "Undef"
  vivify_1099:
    set $I2959, $P2958
    find_lex $P2960, "@args"
    unless_null $P2960, vivify_1100
    $P2960 = root_new ['parrot';'ResizablePMCArray']
  vivify_1100:
    set $P2961, $P2960[$I2959]
    unless_null $P2961, vivify_1101
    new $P2961, "Undef"
  vivify_1101:
    $P2957."add-argument"($P2961)
    find_lex $P2962, "$i"
    unless_null $P2962, vivify_1102
    new $P2962, "Undef"
  vivify_1102:
    clone $P2963, $P2962
    inc $P2962
  loop2964_next:
.annotate 'line', 1997
    goto loop2964_test
  loop2964_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2966, exception, 'type'
    eq $P2966, .CONTROL_LOOP_NEXT, loop2964_next
    eq $P2966, .CONTROL_LOOP_REDO, loop2964_redo
  loop2964_done:
    pop_eh 
.annotate 'line', 1995
    .return ($I2956)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2982"  :anon :subid("256_1303391590.341") :outer("253_1303391590.341")
.annotate 'line', 2003
    .const 'Sub' $P3085 = "258_1303391590.341" 
    capture_lex $P3085
    .const 'Sub' $P2999 = "257_1303391590.341" 
    capture_lex $P2999
.annotate 'line', 2004
    new $P2984, "Undef"
    .lex "$cur", $P2984
    find_lex $P2985, "$i"
    unless_null $P2985, vivify_1107
    new $P2985, "Undef"
  vivify_1107:
    set $I2986, $P2985
    find_lex $P2987, "@args"
    unless_null $P2987, vivify_1108
    $P2987 = root_new ['parrot';'ResizablePMCArray']
  vivify_1108:
    set $P2988, $P2987[$I2986]
    unless_null $P2988, vivify_1109
    new $P2988, "Undef"
  vivify_1109:
    store_lex "$cur", $P2988
.annotate 'line', 2005
    find_lex $P2990, "self"
    find_lex $P2991, "$cur"
    unless_null $P2991, vivify_1110
    new $P2991, "Undef"
  vivify_1110:
    $P2992 = $P2990."is-option"($P2991)
    if $P2992, if_2989
.annotate 'line', 2047
    find_lex $P3156, "$cur"
    unless_null $P3156, vivify_1111
    new $P3156, "Undef"
  vivify_1111:
    find_lex $P3157, "self"
    find_lex $P3158, "$?CLASS"
    getattribute $P3159, $P3157, $P3158, "%!stopper"
    unless_null $P3159, vivify_1112
    $P3159 = root_new ['parrot';'Hash']
  vivify_1112:
    set $P3160, $P3159[$P3156]
    unless_null $P3160, vivify_1113
    new $P3160, "Undef"
  vivify_1113:
    if $P3160, if_3155
.annotate 'line', 2050
    find_lex $P3161, "$result"
    unless_null $P3161, vivify_1114
    new $P3161, "Undef"
  vivify_1114:
    find_lex $P3162, "$cur"
    unless_null $P3162, vivify_1115
    new $P3162, "Undef"
  vivify_1115:
    $P3161."add-argument"($P3162)
.annotate 'line', 2051
    find_lex $P3164, "self"
    find_lex $P3165, "$?CLASS"
    getattribute $P3166, $P3164, $P3165, "$!stop-after-first-arg"
    unless_null $P3166, vivify_1116
    new $P3166, "Undef"
  vivify_1116:
    unless $P3166, if_3163_end
    "slurp-rest"()
  if_3163_end:
.annotate 'line', 2049
    goto if_3155_end
  if_3155:
.annotate 'line', 2048
    "slurp-rest"()
  if_3155_end:
.annotate 'line', 2047
    goto if_2989_end
  if_2989:
.annotate 'line', 2006
    find_lex $P2994, "$cur"
    unless_null $P2994, vivify_1117
    new $P2994, "Undef"
  vivify_1117:
    set $S2995, $P2994
    substr $S2996, $S2995, 0, 2
    iseq $I2997, $S2996, "--"
    if $I2997, if_2993
.annotate 'line', 2025
    .const 'Sub' $P3085 = "258_1303391590.341" 
    capture_lex $P3085
    $P3085()
    goto if_2993_end
  if_2993:
.annotate 'line', 2006
    .const 'Sub' $P2999 = "257_1303391590.341" 
    capture_lex $P2999
    $P2999()
  if_2993_end:
  if_2989_end:
.annotate 'line', 2005
    find_lex $P3167, "$i"
    unless_null $P3167, vivify_1166
    new $P3167, "Undef"
  vivify_1166:
    clone $P3168, $P3167
    inc $P3167
.annotate 'line', 2003
    .return ($P3168)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3084"  :anon :subid("258_1303391590.341") :outer("256_1303391590.341")
.annotate 'line', 2025
    .const 'Sub' $P3130 = "259_1303391590.341" 
    capture_lex $P3130
.annotate 'line', 2026
    new $P3086, "Undef"
    .lex "$opt", $P3086
    find_lex $P3087, "$cur"
    unless_null $P3087, vivify_1118
    new $P3087, "Undef"
  vivify_1118:
    set $S3088, $P3087
    substr $S3089, $S3088, 1
    new $P3090, 'String'
    set $P3090, $S3089
    store_lex "$opt", $P3090
.annotate 'line', 2027
    find_lex $P3093, "$opt"
    unless_null $P3093, vivify_1119
    new $P3093, "Undef"
  vivify_1119:
    set $S3094, $P3093
    length $I3095, $S3094
    set $N3096, $I3095
    iseq $I3097, $N3096, 1.0
    if $I3097, if_3092
.annotate 'line', 2037
    .const 'Sub' $P3130 = "259_1303391590.341" 
    capture_lex $P3130
    $P3154 = $P3130()
    set $P3091, $P3154
.annotate 'line', 2027
    goto if_3092_end
  if_3092:
.annotate 'line', 2029
    find_lex $P3099, "$opt"
    unless_null $P3099, vivify_1127
    new $P3099, "Undef"
  vivify_1127:
    find_lex $P3100, "self"
    find_lex $P3101, "$?CLASS"
    getattribute $P3102, $P3100, $P3101, "%!options"
    unless_null $P3102, vivify_1128
    $P3102 = root_new ['parrot';'Hash']
  vivify_1128:
    set $P3103, $P3102[$P3099]
    unless_null $P3103, vivify_1129
    new $P3103, "Undef"
  vivify_1129:
    if $P3103, unless_3098_end
    new $P3104, 'String'
    set $P3104, "No such option -"
    find_lex $P3105, "$opt"
    unless_null $P3105, vivify_1130
    new $P3105, "Undef"
  vivify_1130:
    concat $P3106, $P3104, $P3105
    die $P3106
  unless_3098_end:
.annotate 'line', 2030
    find_lex $P3108, "self"
    find_lex $P3109, "$opt"
    unless_null $P3109, vivify_1131
    new $P3109, "Undef"
  vivify_1131:
    $P3110 = $P3108."wants-value"($P3109)
    if $P3110, if_3107
.annotate 'line', 2034
    find_lex $P3117, "$result"
    unless_null $P3117, vivify_1132
    new $P3117, "Undef"
  vivify_1132:
    find_lex $P3118, "$opt"
    unless_null $P3118, vivify_1133
    new $P3118, "Undef"
  vivify_1133:
    $P3117."add-option"($P3118, 1)
.annotate 'line', 2033
    goto if_3107_end
  if_3107:
.annotate 'line', 2031
    find_lex $P3111, "$result"
    unless_null $P3111, vivify_1134
    new $P3111, "Undef"
  vivify_1134:
    find_lex $P3112, "$opt"
    unless_null $P3112, vivify_1135
    new $P3112, "Undef"
  vivify_1135:
.annotate 'line', 2032
    new $P3113, 'String'
    set $P3113, "-"
    find_lex $P3114, "$opt"
    unless_null $P3114, vivify_1136
    new $P3114, "Undef"
  vivify_1136:
    concat $P3115, $P3113, $P3114
    $P3116 = "get-value"($P3115)
    $P3111."add-option"($P3112, $P3116)
  if_3107_end:
.annotate 'line', 2036
    new $P3121, 'String'
    set $P3121, "-"
    find_lex $P3122, "$opt"
    unless_null $P3122, vivify_1137
    new $P3122, "Undef"
  vivify_1137:
    concat $P3123, $P3121, $P3122
    find_lex $P3124, "self"
    find_lex $P3125, "$?CLASS"
    getattribute $P3126, $P3124, $P3125, "%!stopper"
    unless_null $P3126, vivify_1138
    $P3126 = root_new ['parrot';'Hash']
  vivify_1138:
    set $P3127, $P3126[$P3123]
    unless_null $P3127, vivify_1139
    new $P3127, "Undef"
  vivify_1139:
    if $P3127, if_3120
    set $P3119, $P3127
    goto if_3120_end
  if_3120:
    $P3128 = "slurp-rest"()
    set $P3119, $P3128
  if_3120_end:
.annotate 'line', 2027
    set $P3091, $P3119
  if_3092_end:
.annotate 'line', 2025
    .return ($P3091)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3129"  :anon :subid("259_1303391590.341") :outer("258_1303391590.341")
.annotate 'line', 2037
    .const 'Sub' $P3136 = "260_1303391590.341" 
    capture_lex $P3136
.annotate 'line', 2039
    new $P3131, "Undef"
    .lex "$iter", $P3131
    find_lex $P3132, "$opt"
    unless_null $P3132, vivify_1120
    new $P3132, "Undef"
  vivify_1120:
    iter $P3133, $P3132
    store_lex "$iter", $P3133
.annotate 'line', 2040
    new $P3152, 'ExceptionHandler'
    set_label $P3152, loop3151_handler
    $P3152."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3152
  loop3151_test:
    find_lex $P3134, "$iter"
    unless_null $P3134, vivify_1121
    new $P3134, "Undef"
  vivify_1121:
    unless $P3134, loop3151_done
  loop3151_redo:
    .const 'Sub' $P3136 = "260_1303391590.341" 
    capture_lex $P3136
    $P3136()
  loop3151_next:
    goto loop3151_test
  loop3151_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3153, exception, 'type'
    eq $P3153, .CONTROL_LOOP_NEXT, loop3151_next
    eq $P3153, .CONTROL_LOOP_REDO, loop3151_redo
  loop3151_done:
    pop_eh 
.annotate 'line', 2037
    .return ($P3134)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3135"  :anon :subid("260_1303391590.341") :outer("259_1303391590.341")
.annotate 'line', 2041
    new $P3137, "Undef"
    .lex "$o", $P3137
    find_lex $P3138, "$iter"
    unless_null $P3138, vivify_1122
    new $P3138, "Undef"
  vivify_1122:
    shift $P3139, $P3138
    store_lex "$o", $P3139
.annotate 'line', 2042
    find_lex $P3141, "self"
    find_lex $P3142, "$o"
    unless_null $P3142, vivify_1123
    new $P3142, "Undef"
  vivify_1123:
    $P3143 = $P3141."wants-value"($P3142)
    unless $P3143, if_3140_end
    new $P3144, 'String'
    set $P3144, "Option -"
    find_lex $P3145, "$o"
    unless_null $P3145, vivify_1124
    new $P3145, "Undef"
  vivify_1124:
    concat $P3146, $P3144, $P3145
    concat $P3147, $P3146, " requires a value and cannot be grouped"
    die $P3147
  if_3140_end:
.annotate 'line', 2043
    find_lex $P3148, "$result"
    unless_null $P3148, vivify_1125
    new $P3148, "Undef"
  vivify_1125:
    find_lex $P3149, "$o"
    unless_null $P3149, vivify_1126
    new $P3149, "Undef"
  vivify_1126:
    $P3150 = $P3148."add-option"($P3149, 1)
.annotate 'line', 2040
    .return ($P3150)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2998"  :anon :subid("257_1303391590.341") :outer("256_1303391590.341")
.annotate 'line', 2008
    new $P3000, "Undef"
    .lex "$opt", $P3000
.annotate 'line', 2009
    new $P3001, "Undef"
    .lex "$idx", $P3001
.annotate 'line', 2010
    new $P3002, "Undef"
    .lex "$value", $P3002
.annotate 'line', 2011
    new $P3003, "Undef"
    .lex "$has-value", $P3003
.annotate 'line', 2008
    find_lex $P3004, "$i"
    unless_null $P3004, vivify_1140
    new $P3004, "Undef"
  vivify_1140:
    set $I3005, $P3004
    find_lex $P3006, "@args"
    unless_null $P3006, vivify_1141
    $P3006 = root_new ['parrot';'ResizablePMCArray']
  vivify_1141:
    set $P3007, $P3006[$I3005]
    unless_null $P3007, vivify_1142
    new $P3007, "Undef"
  vivify_1142:
    set $S3008, $P3007
    substr $S3009, $S3008, 2
    new $P3010, 'String'
    set $P3010, $S3009
    store_lex "$opt", $P3010
.annotate 'line', 2009
    find_lex $P3011, "$opt"
    unless_null $P3011, vivify_1143
    new $P3011, "Undef"
  vivify_1143:
    set $S3012, $P3011
    index $I3013, $S3012, "="
    new $P3014, 'Integer'
    set $P3014, $I3013
    store_lex "$idx", $P3014
.annotate 'line', 2010
    new $P3015, "Integer"
    assign $P3015, 1
    store_lex "$value", $P3015
.annotate 'line', 2011
    new $P3016, "Integer"
    assign $P3016, 0
    store_lex "$has-value", $P3016
.annotate 'line', 2013
    find_lex $P3018, "$idx"
    unless_null $P3018, vivify_1144
    new $P3018, "Undef"
  vivify_1144:
    set $N3019, $P3018
    isge $I3020, $N3019, 0.0
    unless $I3020, if_3017_end
.annotate 'line', 2014
    find_lex $P3021, "$opt"
    unless_null $P3021, vivify_1145
    new $P3021, "Undef"
  vivify_1145:
    set $S3022, $P3021
    find_lex $P3023, "$idx"
    unless_null $P3023, vivify_1146
    new $P3023, "Undef"
  vivify_1146:
    add $P3024, $P3023, 1
    set $I3025, $P3024
    substr $S3026, $S3022, $I3025
    new $P3027, 'String'
    set $P3027, $S3026
    store_lex "$value", $P3027
.annotate 'line', 2015
    find_lex $P3028, "$opt"
    unless_null $P3028, vivify_1147
    new $P3028, "Undef"
  vivify_1147:
    set $S3029, $P3028
    find_lex $P3030, "$idx"
    unless_null $P3030, vivify_1148
    new $P3030, "Undef"
  vivify_1148:
    set $I3031, $P3030
    substr $S3032, $S3029, 0, $I3031
    new $P3033, 'String'
    set $P3033, $S3032
    store_lex "$opt", $P3033
.annotate 'line', 2016
    new $P3034, "Integer"
    assign $P3034, 1
    store_lex "$has-value", $P3034
  if_3017_end:
.annotate 'line', 2018
    find_lex $P3039, "$opt"
    unless_null $P3039, vivify_1149
    new $P3039, "Undef"
  vivify_1149:
    find_lex $P3036, "self"
    find_lex $P3037, "$?CLASS"
    getattribute $P3038, $P3036, $P3037, "%!options"
    unless_null $P3038, vivify_1150
    $P3038 = root_new ['parrot';'Hash']
  vivify_1150:
    exists $I3040, $P3038[$P3039]
    if $I3040, unless_3035_end
    new $P3041, 'String'
    set $P3041, "Illegal option --"
    find_lex $P3042, "$opt"
    unless_null $P3042, vivify_1151
    new $P3042, "Undef"
  vivify_1151:
    concat $P3043, $P3041, $P3042
    die $P3043
  unless_3035_end:
.annotate 'line', 2019
    find_lex $P3047, "$opt"
    unless_null $P3047, vivify_1152
    new $P3047, "Undef"
  vivify_1152:
    find_lex $P3048, "self"
    find_lex $P3049, "$?CLASS"
    getattribute $P3050, $P3048, $P3049, "%!options"
    unless_null $P3050, vivify_1153
    $P3050 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P3051, $P3050[$P3047]
    unless_null $P3051, vivify_1154
    new $P3051, "Undef"
  vivify_1154:
    set $S3052, $P3051
    isne $I3053, $S3052, "s"
    if $I3053, if_3046
    new $P3045, 'Integer'
    set $P3045, $I3053
    goto if_3046_end
  if_3046:
    find_lex $P3054, "$has-value"
    unless_null $P3054, vivify_1155
    new $P3054, "Undef"
  vivify_1155:
    set $P3045, $P3054
  if_3046_end:
    unless $P3045, if_3044_end
    new $P3055, 'String'
    set $P3055, "Option --"
    find_lex $P3056, "$opt"
    unless_null $P3056, vivify_1156
    new $P3056, "Undef"
  vivify_1156:
    concat $P3057, $P3055, $P3056
    concat $P3058, $P3057, " does not allow a value"
    die $P3058
  if_3044_end:
.annotate 'line', 2020
    find_lex $P3062, "$has-value"
    unless_null $P3062, vivify_1157
    new $P3062, "Undef"
  vivify_1157:
    isfalse $I3063, $P3062
    if $I3063, if_3061
    new $P3060, 'Integer'
    set $P3060, $I3063
    goto if_3061_end
  if_3061:
    find_lex $P3064, "self"
    find_lex $P3065, "$opt"
    unless_null $P3065, vivify_1158
    new $P3065, "Undef"
  vivify_1158:
    $P3066 = $P3064."wants-value"($P3065)
    set $P3060, $P3066
  if_3061_end:
    unless $P3060, if_3059_end
.annotate 'line', 2021
    new $P3067, 'String'
    set $P3067, "--"
    find_lex $P3068, "$opt"
    unless_null $P3068, vivify_1159
    new $P3068, "Undef"
  vivify_1159:
    concat $P3069, $P3067, $P3068
    $P3070 = "get-value"($P3069)
    store_lex "$value", $P3070
  if_3059_end:
.annotate 'line', 2023
    find_lex $P3071, "$result"
    unless_null $P3071, vivify_1160
    new $P3071, "Undef"
  vivify_1160:
    find_lex $P3072, "$opt"
    unless_null $P3072, vivify_1161
    new $P3072, "Undef"
  vivify_1161:
    find_lex $P3073, "$value"
    unless_null $P3073, vivify_1162
    new $P3073, "Undef"
  vivify_1162:
    $P3071."add-option"($P3072, $P3073)
.annotate 'line', 2024
    new $P3076, 'String'
    set $P3076, "--"
    find_lex $P3077, "$opt"
    unless_null $P3077, vivify_1163
    new $P3077, "Undef"
  vivify_1163:
    concat $P3078, $P3076, $P3077
    find_lex $P3079, "self"
    find_lex $P3080, "$?CLASS"
    getattribute $P3081, $P3079, $P3080, "%!stopper"
    unless_null $P3081, vivify_1164
    $P3081 = root_new ['parrot';'Hash']
  vivify_1164:
    set $P3082, $P3081[$P3078]
    unless_null $P3082, vivify_1165
    new $P3082, "Undef"
  vivify_1165:
    if $P3082, if_3075
    set $P3074, $P3082
    goto if_3075_end
  if_3075:
    find_lex $P3083, "slurp-rest"
    set $P3074, $P3083
  if_3075_end:
.annotate 'line', 2006
    .return ($P3074)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3211"  :subid("262_1303391590.341") :outer("10_1303391590.341")
.annotate 'line', 2090
    .const 'Sub' $P3227 = "265_1303391590.341" 
    capture_lex $P3227
    .const 'Sub' $P3220 = "264_1303391590.341" 
    capture_lex $P3220
    .const 'Sub' $P3215 = "263_1303391590.341" 
    capture_lex $P3215
    .lex "$?PACKAGE", $P3213
    .lex "$?CLASS", $P3214
.annotate 'line', 2097
    .const 'Sub' $P3220 = "264_1303391590.341" 
    newclosure $P3225, $P3220
.annotate 'line', 2090
    .return ($P3225)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post1168") :outer("262_1303391590.341")
.annotate 'line', 2090
    get_hll_global $P3212, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block3211" 
    .local pmc block
    set block, $P3212
    .const 'Sub' $P3227 = "265_1303391590.341" 
    capture_lex $P3227
    $P3227()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3226"  :anon :subid("265_1303391590.341") :outer("262_1303391590.341")
.annotate 'line', 2090
    nqp_get_sc_object $P3228, "1303391582.588", 6
    .local pmc type_obj
    set type_obj, $P3228
    get_how $P3229, type_obj
    get_hll_global $P3230, "NQPAttribute"
    $P3231 = $P3230."new"("$!deserialize_past" :named("name"))
    $P3229."add_attribute"(type_obj, $P3231)
    get_how $P3232, type_obj
    .const 'Sub' $P3233 = "263_1303391590.341" 
    $P3232."add_method"(type_obj, "deserialize_past", $P3233)
    get_how $P3234, type_obj
    get_hll_global $P3235, "NQPAttribute"
    $P3236 = $P3235."new"("$!fixup_past" :named("name"))
    $P3234."add_attribute"(type_obj, $P3236)
    get_how $P3237, type_obj
    .const 'Sub' $P3238 = "264_1303391590.341" 
    $P3237."add_method"(type_obj, "fixup_past", $P3238)
    get_how $P3239, type_obj
    $P3240 = $P3239."compose"(type_obj)
    .return ($P3240)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("263_1303391590.341") :outer("262_1303391590.341")
    .param pmc param_3216
.annotate 'line', 2093
    .lex "self", param_3216
    find_lex $P3217, "self"
    find_lex $P3218, "$?CLASS"
    getattribute $P3219, $P3217, $P3218, "$!deserialize_past"
    unless_null $P3219, vivify_1169
    new $P3219, "Undef"
  vivify_1169:
    .return ($P3219)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("264_1303391590.341") :outer("262_1303391590.341")
    .param pmc param_3221
.annotate 'line', 2097
    .lex "self", param_3221
    find_lex $P3222, "self"
    find_lex $P3223, "$?CLASS"
    getattribute $P3224, $P3222, $P3223, "$!fixup_past"
    unless_null $P3224, vivify_1170
    new $P3224, "Undef"
  vivify_1170:
    .return ($P3224)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3241"  :subid("266_1303391590.341") :outer("10_1303391590.341")
.annotate 'line', 2100
    .const 'Sub' $P3778 = "291_1303391590.341" 
    capture_lex $P3778
    .const 'Sub' $P3704 = "289_1303391590.341" 
    capture_lex $P3704
    .const 'Sub' $P3699 = "288_1303391590.341" 
    capture_lex $P3699
    .const 'Sub' $P3682 = "287_1303391590.341" 
    capture_lex $P3682
    .const 'Sub' $P3656 = "286_1303391590.341" 
    capture_lex $P3656
    .const 'Sub' $P3650 = "285_1303391590.341" 
    capture_lex $P3650
    .const 'Sub' $P3581 = "284_1303391590.341" 
    capture_lex $P3581
    .const 'Sub' $P3542 = "283_1303391590.341" 
    capture_lex $P3542
    .const 'Sub' $P3459 = "280_1303391590.341" 
    capture_lex $P3459
    .const 'Sub' $P3438 = "279_1303391590.341" 
    capture_lex $P3438
    .const 'Sub' $P3405 = "277_1303391590.341" 
    capture_lex $P3405
    .const 'Sub' $P3371 = "276_1303391590.341" 
    capture_lex $P3371
    .const 'Sub' $P3357 = "275_1303391590.341" 
    capture_lex $P3357
    .const 'Sub' $P3332 = "274_1303391590.341" 
    capture_lex $P3332
    .const 'Sub' $P3324 = "273_1303391590.341" 
    capture_lex $P3324
    .const 'Sub' $P3309 = "272_1303391590.341" 
    capture_lex $P3309
    .const 'Sub' $P3292 = "271_1303391590.341" 
    capture_lex $P3292
    .const 'Sub' $P3278 = "270_1303391590.341" 
    capture_lex $P3278
    .const 'Sub' $P3260 = "269_1303391590.341" 
    capture_lex $P3260
    .const 'Sub' $P3251 = "268_1303391590.341" 
    capture_lex $P3251
    .const 'Sub' $P3243 = "267_1303391590.341" 
    capture_lex $P3243
.annotate 'line', 2110
    .const 'Sub' $P3243 = "267_1303391590.341" 
    newclosure $P3247, $P3243
    .lex "addr", $P3247
.annotate 'line', 2100
    .lex "$?PACKAGE", $P3248
    .lex "$?CLASS", $P3249
    find_lex $P3250, "addr"
.annotate 'line', 2400
    .const 'Sub' $P3704 = "289_1303391590.341" 
    newclosure $P3776, $P3704
.annotate 'line', 2100
    .return ($P3776)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1171") :outer("266_1303391590.341")
.annotate 'line', 2100
    get_hll_global $P3242, ["HLL";"Compiler";"SerializationContextBuilder"], "_block3241" 
    .local pmc block
    set block, $P3242
    .const 'Sub' $P3778 = "291_1303391590.341" 
    capture_lex $P3778
    $P3778()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3777"  :anon :subid("291_1303391590.341") :outer("266_1303391590.341")
.annotate 'line', 2100
    nqp_get_sc_object $P3779, "1303391582.588", 7
    .local pmc type_obj
    set type_obj, $P3779
    get_how $P3780, type_obj
    get_hll_global $P3781, "NQPAttribute"
    $P3782 = $P3781."new"("$!sc" :named("name"))
    $P3780."add_attribute"(type_obj, $P3782)
    get_how $P3783, type_obj
    get_hll_global $P3784, "NQPAttribute"
    $P3785 = $P3784."new"("$!handle" :named("name"))
    $P3783."add_attribute"(type_obj, $P3785)
    get_how $P3786, type_obj
    get_hll_global $P3787, "NQPAttribute"
    $P3788 = $P3787."new"("%!addr_to_slot" :named("name"))
    $P3786."add_attribute"(type_obj, $P3788)
    get_how $P3789, type_obj
    get_hll_global $P3790, "NQPAttribute"
    $P3791 = $P3790."new"("@!event_stream" :named("name"))
    $P3789."add_attribute"(type_obj, $P3791)
    get_how $P3792, type_obj
    .const 'Sub' $P3793 = "268_1303391590.341" 
    $P3792."add_method"(type_obj, "new", $P3793)
    get_how $P3794, type_obj
    .const 'Sub' $P3795 = "269_1303391590.341" 
    $P3794."add_method"(type_obj, "BUILD", $P3795)
    get_how $P3796, type_obj
    .const 'Sub' $P3797 = "270_1303391590.341" 
    $P3796."add_method"(type_obj, "slot_for_object", $P3797)
    get_how $P3798, type_obj
    .const 'Sub' $P3799 = "271_1303391590.341" 
    $P3798."add_method"(type_obj, "get_slot_past_for_object", $P3799)
    get_how $P3800, type_obj
    .const 'Sub' $P3801 = "272_1303391590.341" 
    $P3800."add_method"(type_obj, "set_slot_past", $P3801)
    get_how $P3802, type_obj
    .const 'Sub' $P3803 = "273_1303391590.341" 
    $P3802."add_method"(type_obj, "set_cur_sc", $P3803)
    get_how $P3804, type_obj
    .const 'Sub' $P3805 = "274_1303391590.341" 
    $P3804."add_method"(type_obj, "add_object", $P3805)
    get_how $P3806, type_obj
    .const 'Sub' $P3807 = "275_1303391590.341" 
    $P3806."add_method"(type_obj, "add_event", $P3807)
    get_how $P3808, type_obj
    .const 'Sub' $P3809 = "276_1303391590.341" 
    $P3808."add_method"(type_obj, "get_object_sc_ref_past", $P3809)
    get_how $P3810, type_obj
    .const 'Sub' $P3811 = "277_1303391590.341" 
    $P3810."add_method"(type_obj, "load_setting", $P3811)
    get_how $P3812, type_obj
    .const 'Sub' $P3813 = "279_1303391590.341" 
    $P3812."add_method"(type_obj, "load_module", $P3813)
    get_how $P3814, type_obj
    .const 'Sub' $P3815 = "280_1303391590.341" 
    $P3814."add_method"(type_obj, "install_package_symbol", $P3815)
    get_how $P3816, type_obj
    .const 'Sub' $P3817 = "283_1303391590.341" 
    $P3816."add_method"(type_obj, "install_lexical_symbol", $P3817)
    get_how $P3818, type_obj
    .const 'Sub' $P3819 = "284_1303391590.341" 
    $P3818."add_method"(type_obj, "pkg_create_mo", $P3819)
    get_how $P3820, type_obj
    .const 'Sub' $P3821 = "285_1303391590.341" 
    $P3820."add_method"(type_obj, "pkg_add_method", $P3821)
    get_how $P3822, type_obj
    .const 'Sub' $P3823 = "286_1303391590.341" 
    $P3822."add_method"(type_obj, "pkg_add_parent_or_role", $P3823)
    get_how $P3824, type_obj
    .const 'Sub' $P3825 = "287_1303391590.341" 
    $P3824."add_method"(type_obj, "pkg_compose", $P3825)
    get_how $P3826, type_obj
    .const 'Sub' $P3827 = "288_1303391590.341" 
    $P3826."add_method"(type_obj, "sc", $P3827)
    get_how $P3828, type_obj
    .const 'Sub' $P3829 = "289_1303391590.341" 
    $P3828."add_method"(type_obj, "to_past", $P3829)
    get_how $P3830, type_obj
    $P3831 = $P3830."compose"(type_obj)
    .return ($P3831)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("267_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3244
.annotate 'line', 2110
    .lex "$obj", param_3244
.annotate 'line', 2111
    find_lex $P3245, "$obj"
    unless_null $P3245, vivify_1172
    new $P3245, "Undef"
  vivify_1172:
    get_addr $I3246, $P3245
.annotate 'line', 2110
    .return ($I3246)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3252
    .param pmc param_3253 :named("handle")
.annotate 'line', 2118
    .lex "self", param_3252
    .lex "$handle", param_3253
.annotate 'line', 2119
    new $P3254, "Undef"
    .lex "$obj", $P3254
    find_lex $P3255, "self"
    $P3256 = $P3255."CREATE"()
    store_lex "$obj", $P3256
.annotate 'line', 2120
    find_lex $P3257, "$obj"
    unless_null $P3257, vivify_1173
    new $P3257, "Undef"
  vivify_1173:
    find_lex $P3258, "$handle"
    unless_null $P3258, vivify_1174
    new $P3258, "Undef"
  vivify_1174:
    $P3257."BUILD"($P3258 :named("handle"))
    find_lex $P3259, "$obj"
    unless_null $P3259, vivify_1175
    new $P3259, "Undef"
  vivify_1175:
.annotate 'line', 2118
    .return ($P3259)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3261
    .param pmc param_3262 :optional :named("handle")
    .param int has_param_3262 :opt_flag
.annotate 'line', 2124
    .lex "self", param_3261
    if has_param_3262, optparam_1176
    new $P3263, "Undef"
    set param_3262, $P3263
  optparam_1176:
    .lex "$handle", param_3262
.annotate 'line', 2125
    find_lex $P3264, "$handle"
    unless_null $P3264, vivify_1177
    new $P3264, "Undef"
  vivify_1177:
    set $S3265, $P3264
    nqp_create_sc $P3266, $S3265
    find_lex $P3267, "self"
    find_lex $P3268, "$?CLASS"
    setattribute $P3267, $P3268, "$!sc", $P3266
.annotate 'line', 2126
    find_lex $P3269, "$handle"
    unless_null $P3269, vivify_1178
    new $P3269, "Undef"
  vivify_1178:
    find_lex $P3270, "self"
    find_lex $P3271, "$?CLASS"
    setattribute $P3270, $P3271, "$!handle", $P3269
.annotate 'line', 2127
    new $P3272, "Hash"
    find_lex $P3273, "self"
    find_lex $P3274, "$?CLASS"
    setattribute $P3273, $P3274, "%!addr_to_slot", $P3272
.annotate 'line', 2128
    new $P3275, "ResizablePMCArray"
    find_lex $P3276, "self"
    find_lex $P3277, "$?CLASS"
    setattribute $P3276, $P3277, "@!event_stream", $P3275
.annotate 'line', 2124
    .return ($P3275)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3279
    .param pmc param_3280
.annotate 'line', 2132
    .lex "self", param_3279
    .lex "$obj", param_3280
.annotate 'line', 2133
    new $P3281, "Undef"
    .lex "$slot", $P3281
    find_lex $P3282, "$obj"
    unless_null $P3282, vivify_1179
    new $P3282, "Undef"
  vivify_1179:
    $P3283 = "addr"($P3282)
    find_lex $P3284, "self"
    find_lex $P3285, "$?CLASS"
    getattribute $P3286, $P3284, $P3285, "%!addr_to_slot"
    unless_null $P3286, vivify_1180
    $P3286 = root_new ['parrot';'Hash']
  vivify_1180:
    set $P3287, $P3286[$P3283]
    unless_null $P3287, vivify_1181
    new $P3287, "Undef"
  vivify_1181:
    store_lex "$slot", $P3287
.annotate 'line', 2134
    find_lex $P3289, "$slot"
    unless_null $P3289, vivify_1182
    new $P3289, "Undef"
  vivify_1182:
    defined $I3290, $P3289
    if $I3290, unless_3288_end
.annotate 'line', 2135
    die "slot_for_object called on object not in context"
  unless_3288_end:
.annotate 'line', 2134
    find_lex $P3291, "$slot"
    unless_null $P3291, vivify_1183
    new $P3291, "Undef"
  vivify_1183:
.annotate 'line', 2132
    .return ($P3291)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3295
    .param pmc param_3296
.annotate 'line', 2144
    new $P3294, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3294, control_3293
    push_eh $P3294
    .lex "self", param_3295
    .lex "$obj", param_3296
.annotate 'line', 2145
    new $P3297, "Undef"
    .lex "$slot", $P3297
    find_lex $P3298, "self"
    find_lex $P3299, "$obj"
    unless_null $P3299, vivify_1184
    new $P3299, "Undef"
  vivify_1184:
    $P3300 = $P3298."slot_for_object"($P3299)
    store_lex "$slot", $P3300
.annotate 'line', 2146
    new $P3301, "Exception"
    set $P3301['type'], .CONTROL_RETURN
    get_hll_global $P3302, ["PAST"], "Op"
    find_lex $P3303, "self"
    find_lex $P3304, "$?CLASS"
    getattribute $P3305, $P3303, $P3304, "$!handle"
    unless_null $P3305, vivify_1185
    new $P3305, "Undef"
  vivify_1185:
    find_lex $P3306, "$slot"
    unless_null $P3306, vivify_1186
    new $P3306, "Undef"
  vivify_1186:
    $P3307 = $P3302."new"($P3305, $P3306, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3301, 'payload', $P3307
    throw $P3301
.annotate 'line', 2144
    .return ()
  control_3293:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3308, exception, "payload"
    .return ($P3308)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3312
    .param pmc param_3313
    .param pmc param_3314
.annotate 'line', 2150
    new $P3311, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3311, control_3310
    push_eh $P3311
    .lex "self", param_3312
    .lex "$slot", param_3313
    .lex "$past_to_set", param_3314
.annotate 'line', 2151
    new $P3315, "Exception"
    set $P3315['type'], .CONTROL_RETURN
    get_hll_global $P3316, ["PAST"], "Op"
    find_lex $P3317, "self"
    find_lex $P3318, "$?CLASS"
    getattribute $P3319, $P3317, $P3318, "$!handle"
    unless_null $P3319, vivify_1187
    new $P3319, "Undef"
  vivify_1187:
    find_lex $P3320, "$slot"
    unless_null $P3320, vivify_1188
    new $P3320, "Undef"
  vivify_1188:
    find_lex $P3321, "$past_to_set"
    unless_null $P3321, vivify_1189
    new $P3321, "Undef"
  vivify_1189:
    $P3322 = $P3316."new"($P3319, $P3320, $P3321, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3315, 'payload', $P3322
    throw $P3315
.annotate 'line', 2150
    .return ()
  control_3310:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3323, exception, "payload"
    .return ($P3323)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3325
    .param pmc param_3326
.annotate 'line', 2157
    .lex "self", param_3325
    .lex "$to_wrap", param_3326
.annotate 'line', 2158
    get_hll_global $P3327, ["PAST"], "Op"
    find_lex $P3328, "$to_wrap"
    unless_null $P3328, vivify_1190
    new $P3328, "Undef"
  vivify_1190:
.annotate 'line', 2161
    get_hll_global $P3329, ["PAST"], "Var"
    $P3330 = $P3329."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3331 = $P3327."new"($P3328, $P3330, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2157
    .return ($P3331)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3333
    .param pmc param_3334
.annotate 'line', 2166
    .lex "self", param_3333
    .lex "$obj", param_3334
.annotate 'line', 2168
    new $P3335, "Undef"
    .lex "$idx", $P3335
.annotate 'line', 2167
    find_lex $P3336, "$obj"
    unless_null $P3336, vivify_1191
    new $P3336, "Undef"
  vivify_1191:
    find_lex $P3337, "self"
    find_lex $P3338, "$?CLASS"
    getattribute $P3339, $P3337, $P3338, "$!sc"
    unless_null $P3339, vivify_1192
    new $P3339, "Undef"
  vivify_1192:
    nqp_set_sc_for_object $P3336, $P3339
.annotate 'line', 2168
    find_lex $P3340, "self"
    find_lex $P3341, "$?CLASS"
    getattribute $P3342, $P3340, $P3341, "$!sc"
    unless_null $P3342, vivify_1193
    new $P3342, "Undef"
  vivify_1193:
    $P3343 = $P3342."elems"()
    store_lex "$idx", $P3343
.annotate 'line', 2169
    find_lex $P3344, "$obj"
    unless_null $P3344, vivify_1194
    new $P3344, "Undef"
  vivify_1194:
    find_lex $P3345, "$idx"
    unless_null $P3345, vivify_1195
    new $P3345, "Undef"
  vivify_1195:
    set $I3346, $P3345
    find_lex $P3347, "self"
    find_lex $P3348, "$?CLASS"
    getattribute $P3349, $P3347, $P3348, "$!sc"
    unless_null $P3349, vivify_1196
    $P3349 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3347, $P3348, "$!sc", $P3349
  vivify_1196:
    set $P3349[$I3346], $P3344
.annotate 'line', 2170
    find_lex $P3350, "$idx"
    unless_null $P3350, vivify_1197
    new $P3350, "Undef"
  vivify_1197:
    find_lex $P3351, "$obj"
    unless_null $P3351, vivify_1198
    new $P3351, "Undef"
  vivify_1198:
    $P3352 = "addr"($P3351)
    find_lex $P3353, "self"
    find_lex $P3354, "$?CLASS"
    getattribute $P3355, $P3353, $P3354, "%!addr_to_slot"
    unless_null $P3355, vivify_1199
    $P3355 = root_new ['parrot';'Hash']
    setattribute $P3353, $P3354, "%!addr_to_slot", $P3355
  vivify_1199:
    set $P3355[$P3352], $P3350
    find_lex $P3356, "$idx"
    unless_null $P3356, vivify_1200
    new $P3356, "Undef"
  vivify_1200:
.annotate 'line', 2166
    .return ($P3356)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("275_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3358
    .param pmc param_3359 :optional :named("deserialize_past")
    .param int has_param_3359 :opt_flag
    .param pmc param_3361 :optional :named("fixup_past")
    .param int has_param_3361 :opt_flag
.annotate 'line', 2175
    .lex "self", param_3358
    if has_param_3359, optparam_1201
    new $P3360, "Undef"
    set param_3359, $P3360
  optparam_1201:
    .lex "$deserialize_past", param_3359
    if has_param_3361, optparam_1202
    new $P3362, "Undef"
    set param_3361, $P3362
  optparam_1202:
    .lex "$fixup_past", param_3361
.annotate 'line', 2176
    find_lex $P3363, "self"
    find_lex $P3364, "$?CLASS"
    getattribute $P3365, $P3363, $P3364, "@!event_stream"
    unless_null $P3365, vivify_1203
    $P3365 = root_new ['parrot';'ResizablePMCArray']
  vivify_1203:
    get_hll_global $P3366, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P3367, "$deserialize_past"
    unless_null $P3367, vivify_1204
    new $P3367, "Undef"
  vivify_1204:
    find_lex $P3368, "$fixup_past"
    unless_null $P3368, vivify_1205
    new $P3368, "Undef"
  vivify_1205:
    $P3369 = $P3366."new"($P3367 :named("deserialize_past"), $P3368 :named("fixup_past"))
    $P3370 = $P3365."push"($P3369)
.annotate 'line', 2175
    .return ($P3370)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("276_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3372
    .param pmc param_3373
.annotate 'line', 2183
    .lex "self", param_3372
    .lex "$obj", param_3373
.annotate 'line', 2186
    new $P3374, "Undef"
    .lex "$sc", $P3374
    find_lex $P3375, "$obj"
    unless_null $P3375, vivify_1206
    new $P3375, "Undef"
  vivify_1206:
    nqp_get_sc_for_object $P3376, $P3375
    store_lex "$sc", $P3376
.annotate 'line', 2187
    find_lex $P3378, "$sc"
    unless_null $P3378, vivify_1207
    new $P3378, "Undef"
  vivify_1207:
    isnull $I3379, $P3378
    unless $I3379, if_3377_end
.annotate 'line', 2188
    new $P3380, "String"
    assign $P3380, "Object of type '"
    find_lex $P3381, "$obj"
    unless_null $P3381, vivify_1208
    new $P3381, "Undef"
  vivify_1208:
    get_how $P3382, $P3381
    find_lex $P3383, "$obj"
    unless_null $P3383, vivify_1209
    new $P3383, "Undef"
  vivify_1209:
    $S3384 = $P3382."name"($P3383)
    concat $P3385, $P3380, $S3384
    concat $P3386, $P3385, "' cannot be referenced without having been "
    concat $P3387, $P3386, "assigned a serialization context"
.annotate 'line', 2189
    die $P3387
  if_3377_end:
.annotate 'line', 2195
    find_lex $P3390, "$sc"
    unless_null $P3390, vivify_1210
    new $P3390, "Undef"
  vivify_1210:
    find_lex $P3391, "self"
    find_lex $P3392, "$?CLASS"
    getattribute $P3393, $P3391, $P3392, "$!sc"
    unless_null $P3393, vivify_1211
    new $P3393, "Undef"
  vivify_1211:
    issame $I3394, $P3390, $P3393
    if $I3394, if_3389
.annotate 'line', 2199
    get_hll_global $P3398, ["PAST"], "Op"
.annotate 'line', 2200
    find_lex $P3399, "$sc"
    unless_null $P3399, vivify_1212
    new $P3399, "Undef"
  vivify_1212:
    $P3400 = $P3399."handle"()
    find_lex $P3401, "$sc"
    unless_null $P3401, vivify_1213
    new $P3401, "Undef"
  vivify_1213:
    find_lex $P3402, "$obj"
    unless_null $P3402, vivify_1214
    new $P3402, "Undef"
  vivify_1214:
    $P3403 = $P3401."slot_index_for"($P3402)
    $P3404 = $P3398."new"($P3400, $P3403, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2198
    set $P3388, $P3404
.annotate 'line', 2195
    goto if_3389_end
  if_3389:
.annotate 'line', 2196
    find_lex $P3395, "self"
    find_lex $P3396, "$obj"
    unless_null $P3396, vivify_1215
    new $P3396, "Undef"
  vivify_1215:
    $P3397 = $P3395."get_slot_past_for_object"($P3396)
.annotate 'line', 2195
    set $P3388, $P3397
  if_3389_end:
.annotate 'line', 2183
    .return ($P3388)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("277_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3406
    .param pmc param_3407
.annotate 'line', 2206
    .const 'Sub' $P3414 = "278_1303391590.341" 
    capture_lex $P3414
    .lex "self", param_3406
    .lex "$setting_name", param_3407
.annotate 'line', 2208
    find_lex $P3410, "$setting_name"
    unless_null $P3410, vivify_1216
    new $P3410, "Undef"
  vivify_1216:
    set $S3411, $P3410
    isne $I3412, $S3411, "NULL"
    if $I3412, if_3409
    new $P3408, 'Integer'
    set $P3408, $I3412
    goto if_3409_end
  if_3409:
    .const 'Sub' $P3414 = "278_1303391590.341" 
    capture_lex $P3414
    $P3437 = $P3414()
    set $P3408, $P3437
  if_3409_end:
.annotate 'line', 2206
    .return ($P3408)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3413"  :anon :subid("278_1303391590.341") :outer("277_1303391590.341")
.annotate 'line', 2215
    new $P3415, "Undef"
    .lex "$load_past", $P3415
.annotate 'line', 2212
    get_hll_global $P3416, ["HLL"], "SettingManager"
    find_lex $P3417, "$setting_name"
    unless_null $P3417, vivify_1217
    new $P3417, "Undef"
  vivify_1217:
    $P3418 = $P3416."load_setting"($P3417)
    find_dynamic_lex $P3419, "%*COMPILING"
    unless_null $P3419, vivify_1218
    get_hll_global $P3419, "%COMPILING"
    unless_null $P3419, vivify_1219
    die "Contextual %*COMPILING not found"
  vivify_1219:
    store_dynamic_lex "%*COMPILING", $P3419
  vivify_1218:
    set $P3420, $P3419["%?OPTIONS"]
    unless_null $P3420, vivify_1220
    $P3420 = root_new ['parrot';'Hash']
    set $P3419["%?OPTIONS"], $P3420
  vivify_1220:
    set $P3420["outer_ctx"], $P3418
.annotate 'line', 2215
    get_hll_global $P3421, ["PAST"], "Stmts"
.annotate 'line', 2216
    get_hll_global $P3422, ["PAST"], "Op"
    $P3423 = $P3422."new"("SettingManager.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2219
    get_hll_global $P3424, ["PAST"], "Op"
.annotate 'line', 2221
    get_hll_global $P3425, ["PAST"], "Var"
    $P3426 = $P3425."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2222
    get_hll_global $P3427, ["PAST"], "Op"
.annotate 'line', 2224
    get_hll_global $P3428, ["PAST"], "Var"
    $P3429 = $P3428."new"("SettingManager" :named("name"), "HLL" :named("namespace"), "package" :named("scope"))
    find_lex $P3430, "$setting_name"
    unless_null $P3430, vivify_1221
    new $P3430, "Undef"
  vivify_1221:
    $P3431 = $P3427."new"($P3429, $P3430, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2222
    $P3432 = $P3424."new"($P3426, $P3431, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2219
    $P3433 = $P3421."new"($P3423, $P3432)
.annotate 'line', 2215
    store_lex "$load_past", $P3433
.annotate 'line', 2229
    find_lex $P3434, "self"
    find_lex $P3435, "$load_past"
    unless_null $P3435, vivify_1222
    new $P3435, "Undef"
  vivify_1222:
    $P3436 = $P3434."add_event"($P3435 :named("deserialize_past"))
.annotate 'line', 2208
    .return ($P3436)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("279_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3439
    .param pmc param_3440
.annotate 'line', 2235
    .lex "self", param_3439
    .lex "$module_name", param_3440
.annotate 'line', 2237
    new $P3441, "Undef"
    .lex "$*MAIN_CTX", $P3441
.annotate 'line', 2238
    new $P3442, "Undef"
    .lex "$*CTXSAVE", $P3442
.annotate 'line', 2239
    new $P3443, "Undef"
    .lex "$path", $P3443
.annotate 'line', 2235
    find_lex $P3444, "$*MAIN_CTX"
    unless_null $P3444, vivify_1223
    get_hll_global $P3444, "$MAIN_CTX"
    unless_null $P3444, vivify_1224
    die "Contextual $*MAIN_CTX not found"
  vivify_1224:
  vivify_1223:
.annotate 'line', 2238
    get_hll_global $P3445, ["HLL"], "Compiler"
    store_lex "$*CTXSAVE", $P3445
.annotate 'line', 2239
    find_lex $P3446, "$module_name"
    unless_null $P3446, vivify_1225
    new $P3446, "Undef"
  vivify_1225:
    set $S3447, $P3446
    split $P3448, "::", $S3447
    join $S3449, "/", $P3448
    new $P3450, 'String'
    set $P3450, $S3449
    concat $P3451, $P3450, ".pbc"
    store_lex "$path", $P3451
.annotate 'line', 2240
    find_lex $P3452, "$path"
    unless_null $P3452, vivify_1226
    new $P3452, "Undef"
  vivify_1226:
    set $S3453, $P3452
    load_bytecode $S3453
.annotate 'line', 2243
    find_lex $P3454, "self"
.annotate 'line', 2244
    get_hll_global $P3455, ["PAST"], "Op"
    find_lex $P3456, "$path"
    unless_null $P3456, vivify_1227
    new $P3456, "Undef"
  vivify_1227:
    $P3457 = $P3455."new"($P3456, "load_bytecode vs" :named("pirop"))
    $P3454."add_event"($P3457 :named("deserialize_past"))
.annotate 'line', 2243
    find_lex $P3458, "$*MAIN_CTX"
    unless_null $P3458, vivify_1228
    get_hll_global $P3458, "$MAIN_CTX"
    unless_null $P3458, vivify_1229
    die "Contextual $*MAIN_CTX not found"
  vivify_1229:
  vivify_1228:
.annotate 'line', 2235
    .return ($P3458)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("280_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3460
    .param pmc param_3461
    .param pmc param_3462
    .param pmc param_3463
.annotate 'line', 2252
    .const 'Sub' $P3500 = "282_1303391590.341" 
    capture_lex $P3500
    .const 'Sub' $P3479 = "281_1303391590.341" 
    capture_lex $P3479
    .lex "self", param_3460
    .lex "$package", param_3461
    .lex "@sym", param_3462
    .lex "$obj", param_3463
.annotate 'line', 2254
    new $P3464, "Undef"
    .lex "$name", $P3464
.annotate 'line', 2257
    new $P3465, "Undef"
    .lex "$target", $P3465
.annotate 'line', 2264
    new $P3466, "Undef"
    .lex "$path", $P3466
.annotate 'line', 2253
    find_lex $P3467, "@sym"
    unless_null $P3467, vivify_1230
    $P3467 = root_new ['parrot';'ResizablePMCArray']
  vivify_1230:
    clone $P3468, $P3467
    store_lex "@sym", $P3468
.annotate 'line', 2254
    find_lex $P3469, "@sym"
    unless_null $P3469, vivify_1231
    $P3469 = root_new ['parrot';'ResizablePMCArray']
  vivify_1231:
    $P3470 = $P3469."pop"()
    set $S3471, $P3470
    new $P3472, 'String'
    set $P3472, $S3471
    store_lex "$name", $P3472
.annotate 'line', 2257
    find_lex $P3473, "$package"
    unless_null $P3473, vivify_1232
    new $P3473, "Undef"
  vivify_1232:
    store_lex "$target", $P3473
.annotate 'line', 2258
    find_lex $P3475, "@sym"
    unless_null $P3475, vivify_1233
    $P3475 = root_new ['parrot';'ResizablePMCArray']
  vivify_1233:
    defined $I3476, $P3475
    unless $I3476, for_undef_1234
    iter $P3474, $P3475
    new $P3486, 'ExceptionHandler'
    set_label $P3486, loop3485_handler
    $P3486."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3486
  loop3485_test:
    unless $P3474, loop3485_done
    shift $P3477, $P3474
  loop3485_redo:
    .const 'Sub' $P3479 = "281_1303391590.341" 
    capture_lex $P3479
    $P3479($P3477)
  loop3485_next:
    goto loop3485_test
  loop3485_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3487, exception, 'type'
    eq $P3487, .CONTROL_LOOP_NEXT, loop3485_next
    eq $P3487, .CONTROL_LOOP_REDO, loop3485_redo
  loop3485_done:
    pop_eh 
  for_undef_1234:
.annotate 'line', 2261
    find_lex $P3488, "$obj"
    unless_null $P3488, vivify_1237
    new $P3488, "Undef"
  vivify_1237:
    find_lex $P3489, "$name"
    unless_null $P3489, vivify_1238
    new $P3489, "Undef"
  vivify_1238:
    find_lex $P3490, "$target"
    unless_null $P3490, vivify_1239
    new $P3490, "Undef"
    store_lex "$target", $P3490
  vivify_1239:
    get_who $P3491, $P3490
    set $P3491[$P3489], $P3488
.annotate 'line', 2264
    find_lex $P3492, "self"
    find_lex $P3493, "$package"
    unless_null $P3493, vivify_1240
    new $P3493, "Undef"
  vivify_1240:
    $P3494 = $P3492."get_slot_past_for_object"($P3493)
    store_lex "$path", $P3494
.annotate 'line', 2265
    find_lex $P3496, "@sym"
    unless_null $P3496, vivify_1241
    $P3496 = root_new ['parrot';'ResizablePMCArray']
  vivify_1241:
    defined $I3497, $P3496
    unless $I3497, for_undef_1242
    iter $P3495, $P3496
    new $P3508, 'ExceptionHandler'
    set_label $P3508, loop3507_handler
    $P3508."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3508
  loop3507_test:
    unless $P3495, loop3507_done
    shift $P3498, $P3495
  loop3507_redo:
    .const 'Sub' $P3500 = "282_1303391590.341" 
    capture_lex $P3500
    $P3500($P3498)
  loop3507_next:
    goto loop3507_test
  loop3507_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3509, exception, 'type'
    eq $P3509, .CONTROL_LOOP_NEXT, loop3507_next
    eq $P3509, .CONTROL_LOOP_REDO, loop3507_redo
  loop3507_done:
    pop_eh 
  for_undef_1242:
.annotate 'line', 2268
    find_lex $P3510, "self"
    get_hll_global $P3511, ["PAST"], "Op"
.annotate 'line', 2270
    get_hll_global $P3512, ["PAST"], "Var"
.annotate 'line', 2272
    get_hll_global $P3513, ["PAST"], "Op"
    find_lex $P3514, "$path"
    unless_null $P3514, vivify_1245
    new $P3514, "Undef"
  vivify_1245:
    $P3515 = $P3513."new"($P3514, "get_who PP" :named("pirop"))
    find_lex $P3516, "$name"
    unless_null $P3516, vivify_1246
    new $P3516, "Undef"
  vivify_1246:
    $P3517 = $P3512."new"($P3515, $P3516, "keyed" :named("scope"))
.annotate 'line', 2275
    find_lex $P3518, "self"
    find_lex $P3519, "$obj"
    unless_null $P3519, vivify_1247
    new $P3519, "Undef"
  vivify_1247:
    $P3520 = $P3518."get_slot_past_for_object"($P3519)
    $P3521 = $P3511."new"($P3517, $P3520, "bind" :named("pasttype"))
.annotate 'line', 2268
    $P3510."add_event"($P3521 :named("deserialize_past"))
.annotate 'line', 2279
    find_lex $P3522, "self"
.annotate 'line', 2280
    get_hll_global $P3523, ["PAST"], "Op"
.annotate 'line', 2282
    get_hll_global $P3524, ["PAST"], "Var"
    find_lex $P3525, "$name"
    unless_null $P3525, vivify_1248
    new $P3525, "Undef"
  vivify_1248:
    find_lex $P3526, "@sym"
    unless_null $P3526, vivify_1249
    $P3526 = root_new ['parrot';'ResizablePMCArray']
  vivify_1249:
    $P3527 = $P3524."new"($P3525 :named("name"), $P3526 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2283
    find_lex $P3528, "self"
    find_lex $P3529, "$obj"
    unless_null $P3529, vivify_1250
    new $P3529, "Undef"
  vivify_1250:
    $P3530 = $P3528."get_slot_past_for_object"($P3529)
    $P3531 = $P3523."new"($P3527, $P3530, "bind" :named("pasttype"))
.annotate 'line', 2285
    get_hll_global $P3532, ["PAST"], "Op"
.annotate 'line', 2287
    get_hll_global $P3533, ["PAST"], "Var"
    find_lex $P3534, "$name"
    unless_null $P3534, vivify_1251
    new $P3534, "Undef"
  vivify_1251:
    find_lex $P3535, "@sym"
    unless_null $P3535, vivify_1252
    $P3535 = root_new ['parrot';'ResizablePMCArray']
  vivify_1252:
    $P3536 = $P3533."new"($P3534 :named("name"), $P3535 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2288
    find_lex $P3537, "self"
    find_lex $P3538, "$obj"
    unless_null $P3538, vivify_1253
    new $P3538, "Undef"
  vivify_1253:
    $P3539 = $P3537."get_slot_past_for_object"($P3538)
    $P3540 = $P3532."new"($P3536, $P3539, "bind" :named("pasttype"))
.annotate 'line', 2285
    $P3541 = $P3522."add_event"($P3531 :named("deserialize_past"), $P3540 :named("fixup_past"))
.annotate 'line', 2252
    .return ($P3541)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3478"  :anon :subid("281_1303391590.341") :outer("280_1303391590.341")
    .param pmc param_3480
.annotate 'line', 2258
    .lex "$_", param_3480
.annotate 'line', 2259
    find_lex $P3481, "$target"
    unless_null $P3481, vivify_1235
    new $P3481, "Undef"
  vivify_1235:
    find_lex $P3482, "$_"
    unless_null $P3482, vivify_1236
    new $P3482, "Undef"
  vivify_1236:
    set $S3483, $P3482
    nqp_get_package_through_who $P3484, $P3481, $S3483
    store_lex "$target", $P3484
.annotate 'line', 2258
    .return ($P3484)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3499"  :anon :subid("282_1303391590.341") :outer("280_1303391590.341")
    .param pmc param_3501
.annotate 'line', 2265
    .lex "$_", param_3501
.annotate 'line', 2266
    get_hll_global $P3502, ["PAST"], "Op"
    find_lex $P3503, "$path"
    unless_null $P3503, vivify_1243
    new $P3503, "Undef"
  vivify_1243:
    find_lex $P3504, "$_"
    unless_null $P3504, vivify_1244
    new $P3504, "Undef"
  vivify_1244:
    set $S3505, $P3504
    $P3506 = $P3502."new"($P3503, $S3505, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3506
.annotate 'line', 2265
    .return ($P3506)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3543
    .param pmc param_3544
    .param pmc param_3545
    .param pmc param_3546
.annotate 'line', 2296
    .lex "self", param_3543
    .lex "$block", param_3544
    .lex "$name", param_3545
    .lex "$obj", param_3546
.annotate 'line', 2302
    new $P3547, "Undef"
    .lex "$fixup", $P3547
.annotate 'line', 2298
    find_lex $P3548, "$block"
    unless_null $P3548, vivify_1254
    new $P3548, "Undef"
  vivify_1254:
    find_lex $P3549, "$name"
    unless_null $P3549, vivify_1255
    new $P3549, "Undef"
  vivify_1255:
    find_lex $P3550, "$obj"
    unless_null $P3550, vivify_1256
    new $P3550, "Undef"
  vivify_1256:
    $P3548."symbol"($P3549, "lexical" :named("scope"), $P3550 :named("value"))
.annotate 'line', 2299
    find_lex $P3551, "$block"
    unless_null $P3551, vivify_1257
    $P3551 = root_new ['parrot';'ResizablePMCArray']
  vivify_1257:
    set $P3552, $P3551[0]
    unless_null $P3552, vivify_1258
    new $P3552, "Undef"
  vivify_1258:
    get_hll_global $P3553, ["PAST"], "Var"
    find_lex $P3554, "$name"
    unless_null $P3554, vivify_1259
    new $P3554, "Undef"
  vivify_1259:
    $P3555 = $P3553."new"("lexical" :named("scope"), $P3554 :named("name"), 1 :named("isdecl"))
    $P3552."push"($P3555)
.annotate 'line', 2302
    get_hll_global $P3556, ["PAST"], "Stmts"
.annotate 'line', 2303
    get_hll_global $P3557, ["PAST"], "Op"
.annotate 'line', 2305
    get_hll_global $P3558, ["PAST"], "Op"
.annotate 'line', 2307
    get_hll_global $P3559, ["PAST"], "Val"
    find_lex $P3560, "$block"
    unless_null $P3560, vivify_1260
    new $P3560, "Undef"
  vivify_1260:
    $P3561 = $P3559."new"($P3560 :named("value"))
    $P3562 = $P3558."new"($P3561, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2309
    find_lex $P3563, "$name"
    unless_null $P3563, vivify_1261
    new $P3563, "Undef"
  vivify_1261:
    set $S3564, $P3563
    find_lex $P3565, "self"
    find_lex $P3566, "$obj"
    unless_null $P3566, vivify_1262
    new $P3566, "Undef"
  vivify_1262:
    $P3567 = $P3565."get_slot_past_for_object"($P3566)
    $P3568 = $P3557."new"($P3562, $S3564, $P3567, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2313
    get_hll_global $P3569, ["PAST"], "Op"
.annotate 'line', 2315
    get_hll_global $P3570, ["PAST"], "Op"
.annotate 'line', 2317
    get_hll_global $P3571, ["PAST"], "Val"
    find_lex $P3572, "$block"
    unless_null $P3572, vivify_1263
    new $P3572, "Undef"
  vivify_1263:
    $P3573 = $P3571."new"($P3572 :named("value"))
    $P3574 = $P3570."new"($P3573, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2315
    $P3575 = $P3569."new"($P3574, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2313
    $P3576 = $P3556."new"($P3568, $P3575)
.annotate 'line', 2302
    store_lex "$fixup", $P3576
.annotate 'line', 2321
    find_lex $P3577, "self"
    find_lex $P3578, "$fixup"
    unless_null $P3578, vivify_1264
    new $P3578, "Undef"
  vivify_1264:
    find_lex $P3579, "$fixup"
    unless_null $P3579, vivify_1265
    new $P3579, "Undef"
  vivify_1265:
    $P3580 = $P3577."add_event"($P3578 :named("deserialize_past"), $P3579 :named("fixup_past"))
.annotate 'line', 2296
    .return ($P3580)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("284_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3584
    .param pmc param_3585
    .param pmc param_3586 :optional :named("name")
    .param int has_param_3586 :opt_flag
    .param pmc param_3588 :optional :named("repr")
    .param int has_param_3588 :opt_flag
.annotate 'line', 2326
    new $P3583, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3583, control_3582
    push_eh $P3583
    .lex "self", param_3584
    .lex "$how", param_3585
    if has_param_3586, optparam_1266
    new $P3587, "Undef"
    set param_3586, $P3587
  optparam_1266:
    .lex "$name", param_3586
    if has_param_3588, optparam_1267
    new $P3589, "Undef"
    set param_3588, $P3589
  optparam_1267:
    .lex "$repr", param_3588
.annotate 'line', 2328
    $P3590 = root_new ['parrot';'Hash']
    .lex "%args", $P3590
.annotate 'line', 2331
    new $P3591, "Undef"
    .lex "$mo", $P3591
.annotate 'line', 2332
    new $P3592, "Undef"
    .lex "$slot", $P3592
.annotate 'line', 2336
    $P3593 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3593
.annotate 'line', 2337
    new $P3594, "Undef"
    .lex "$how_name", $P3594
.annotate 'line', 2338
    new $P3595, "Undef"
    .lex "$setup_call", $P3595
.annotate 'line', 2326
    find_lex $P3596, "%args"
    unless_null $P3596, vivify_1268
    $P3596 = root_new ['parrot';'Hash']
  vivify_1268:
.annotate 'line', 2329
    find_lex $P3598, "$name"
    unless_null $P3598, vivify_1269
    new $P3598, "Undef"
  vivify_1269:
    defined $I3599, $P3598
    unless $I3599, if_3597_end
    find_lex $P3600, "$name"
    unless_null $P3600, vivify_1270
    new $P3600, "Undef"
  vivify_1270:
    find_lex $P3601, "%args"
    unless_null $P3601, vivify_1271
    $P3601 = root_new ['parrot';'Hash']
    store_lex "%args", $P3601
  vivify_1271:
    set $P3601["name"], $P3600
  if_3597_end:
.annotate 'line', 2330
    find_lex $P3603, "$repr"
    unless_null $P3603, vivify_1272
    new $P3603, "Undef"
  vivify_1272:
    defined $I3604, $P3603
    unless $I3604, if_3602_end
    find_lex $P3605, "$repr"
    unless_null $P3605, vivify_1273
    new $P3605, "Undef"
  vivify_1273:
    find_lex $P3606, "%args"
    unless_null $P3606, vivify_1274
    $P3606 = root_new ['parrot';'Hash']
    store_lex "%args", $P3606
  vivify_1274:
    set $P3606["repr"], $P3605
  if_3602_end:
.annotate 'line', 2331
    find_lex $P3607, "$how"
    unless_null $P3607, vivify_1275
    new $P3607, "Undef"
  vivify_1275:
    find_lex $P3608, "%args"
    unless_null $P3608, vivify_1276
    $P3608 = root_new ['parrot';'Hash']
  vivify_1276:
    $P3609 = $P3607."new_type"($P3608 :flat)
    store_lex "$mo", $P3609
.annotate 'line', 2332
    find_lex $P3610, "self"
    find_lex $P3611, "$mo"
    unless_null $P3611, vivify_1277
    new $P3611, "Undef"
  vivify_1277:
    $P3612 = $P3610."add_object"($P3611)
    store_lex "$slot", $P3612
.annotate 'line', 2336
    find_lex $P3613, "$how"
    unless_null $P3613, vivify_1278
    new $P3613, "Undef"
  vivify_1278:
    get_how $P3614, $P3613
    find_lex $P3615, "$how"
    unless_null $P3615, vivify_1279
    new $P3615, "Undef"
  vivify_1279:
    $S3616 = $P3614."name"($P3615)
    split $P3617, "::", $S3616
    store_lex "@how_ns", $P3617
.annotate 'line', 2337
    find_lex $P3618, "@how_ns"
    unless_null $P3618, vivify_1280
    $P3618 = root_new ['parrot';'ResizablePMCArray']
  vivify_1280:
    $P3619 = $P3618."pop"()
    store_lex "$how_name", $P3619
.annotate 'line', 2338
    get_hll_global $P3620, ["PAST"], "Op"
.annotate 'line', 2340
    get_hll_global $P3621, ["PAST"], "Var"
    find_lex $P3622, "$how_name"
    unless_null $P3622, vivify_1281
    new $P3622, "Undef"
  vivify_1281:
    find_lex $P3623, "@how_ns"
    unless_null $P3623, vivify_1282
    $P3623 = root_new ['parrot';'ResizablePMCArray']
  vivify_1282:
    $P3624 = $P3621."new"($P3622 :named("name"), $P3623 :named("namespace"), "package" :named("scope"))
    $P3625 = $P3620."new"($P3624, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2338
    store_lex "$setup_call", $P3625
.annotate 'line', 2344
    find_lex $P3627, "$name"
    unless_null $P3627, vivify_1283
    new $P3627, "Undef"
  vivify_1283:
    defined $I3628, $P3627
    unless $I3628, if_3626_end
.annotate 'line', 2345
    find_lex $P3629, "$setup_call"
    unless_null $P3629, vivify_1284
    new $P3629, "Undef"
  vivify_1284:
    get_hll_global $P3630, ["PAST"], "Val"
    find_lex $P3631, "$name"
    unless_null $P3631, vivify_1285
    new $P3631, "Undef"
  vivify_1285:
    $P3632 = $P3630."new"($P3631 :named("value"), "name" :named("named"))
    $P3629."push"($P3632)
  if_3626_end:
.annotate 'line', 2347
    find_lex $P3634, "$repr"
    unless_null $P3634, vivify_1286
    new $P3634, "Undef"
  vivify_1286:
    defined $I3635, $P3634
    unless $I3635, if_3633_end
.annotate 'line', 2348
    find_lex $P3636, "$setup_call"
    unless_null $P3636, vivify_1287
    new $P3636, "Undef"
  vivify_1287:
    get_hll_global $P3637, ["PAST"], "Val"
    find_lex $P3638, "$repr"
    unless_null $P3638, vivify_1288
    new $P3638, "Undef"
  vivify_1288:
    $P3639 = $P3637."new"($P3638 :named("value"), "repr" :named("named"))
    $P3636."push"($P3639)
  if_3633_end:
.annotate 'line', 2350
    find_lex $P3640, "self"
.annotate 'line', 2351
    find_lex $P3641, "self"
    find_lex $P3642, "$slot"
    unless_null $P3642, vivify_1289
    new $P3642, "Undef"
  vivify_1289:
    find_lex $P3643, "self"
    find_lex $P3644, "$setup_call"
    unless_null $P3644, vivify_1290
    new $P3644, "Undef"
  vivify_1290:
    $P3645 = $P3643."set_cur_sc"($P3644)
    $P3646 = $P3641."set_slot_past"($P3642, $P3645)
    $P3640."add_event"($P3646 :named("deserialize_past"))
.annotate 'line', 2354
    new $P3647, "Exception"
    set $P3647['type'], .CONTROL_RETURN
    find_lex $P3648, "$mo"
    unless_null $P3648, vivify_1291
    new $P3648, "Undef"
  vivify_1291:
    setattribute $P3647, 'payload', $P3648
    throw $P3647
.annotate 'line', 2326
    .return ()
  control_3582:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3649, exception, "payload"
    .return ($P3649)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("285_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3651
    .param pmc param_3652
    .param pmc param_3653
    .param pmc param_3654
    .param pmc param_3655
.annotate 'line', 2360
    .lex "self", param_3651
    .lex "$obj", param_3652
    .lex "$meta_method_name", param_3653
    .lex "$name", param_3654
    .lex "$method_past", param_3655
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("286_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3657
    .param pmc param_3658
    .param pmc param_3659
    .param pmc param_3660
.annotate 'line', 2365
    .lex "self", param_3657
    .lex "$obj", param_3658
    .lex "$meta_method_name", param_3659
    .lex "$to_add", param_3660
.annotate 'line', 2370
    new $P3661, "Undef"
    .lex "$slot_past", $P3661
.annotate 'line', 2367
    find_lex $P3662, "$obj"
    unless_null $P3662, vivify_1292
    new $P3662, "Undef"
  vivify_1292:
    get_how $P3663, $P3662
    find_lex $P3664, "$obj"
    unless_null $P3664, vivify_1293
    new $P3664, "Undef"
  vivify_1293:
    find_lex $P3665, "$to_add"
    unless_null $P3665, vivify_1294
    new $P3665, "Undef"
  vivify_1294:
    find_lex $P3666, "$meta_method_name"
    unless_null $P3666, vivify_1295
    new $P3666, "Undef"
  vivify_1295:
    set $S3667, $P3666
    $P3663.$S3667($P3664, $P3665)
.annotate 'line', 2370
    find_lex $P3668, "$obj"
    unless_null $P3668, vivify_1296
    new $P3668, "Undef"
  vivify_1296:
    $P3669 = "get_slot_past_for_object"($P3668)
    store_lex "$slot_past", $P3669
.annotate 'line', 2371
    find_lex $P3670, "self"
    get_hll_global $P3671, ["PAST"], "Op"
    find_lex $P3672, "$meta_method_name"
    unless_null $P3672, vivify_1297
    new $P3672, "Undef"
  vivify_1297:
.annotate 'line', 2373
    get_hll_global $P3673, ["PAST"], "Op"
    find_lex $P3674, "$slot_past"
    unless_null $P3674, vivify_1298
    new $P3674, "Undef"
  vivify_1298:
    $P3675 = $P3673."new"($P3674, "get_how PP" :named("pirop"))
    find_lex $P3676, "$slot_past"
    unless_null $P3676, vivify_1299
    new $P3676, "Undef"
  vivify_1299:
.annotate 'line', 2375
    find_lex $P3677, "self"
    find_lex $P3678, "$to_add"
    unless_null $P3678, vivify_1300
    new $P3678, "Undef"
  vivify_1300:
    $P3679 = $P3677."get_object_sc_ref_past"($P3678)
    $P3680 = $P3671."new"($P3675, $P3676, $P3679, "callmethod" :named("pasttype"), $P3672 :named("name"))
.annotate 'line', 2371
    $P3681 = $P3670."add_event"($P3680 :named("deserialize_past"))
.annotate 'line', 2365
    .return ($P3681)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("287_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3683
    .param pmc param_3684
.annotate 'line', 2380
    .lex "self", param_3683
    .lex "$obj", param_3684
.annotate 'line', 2385
    new $P3685, "Undef"
    .lex "$slot_past", $P3685
.annotate 'line', 2382
    find_lex $P3686, "$obj"
    unless_null $P3686, vivify_1301
    new $P3686, "Undef"
  vivify_1301:
    get_how $P3687, $P3686
    find_lex $P3688, "$obj"
    unless_null $P3688, vivify_1302
    new $P3688, "Undef"
  vivify_1302:
    $P3687."compose"($P3688)
.annotate 'line', 2385
    find_lex $P3689, "$obj"
    unless_null $P3689, vivify_1303
    new $P3689, "Undef"
  vivify_1303:
    $P3690 = "get_slot_past_for_object"($P3689)
    store_lex "$slot_past", $P3690
.annotate 'line', 2386
    find_lex $P3691, "self"
    get_hll_global $P3692, ["PAST"], "Op"
.annotate 'line', 2388
    get_hll_global $P3693, ["PAST"], "Op"
    find_lex $P3694, "$slot_past"
    unless_null $P3694, vivify_1304
    new $P3694, "Undef"
  vivify_1304:
    $P3695 = $P3693."new"($P3694, "get_how PP" :named("pirop"))
    find_lex $P3696, "$slot_past"
    unless_null $P3696, vivify_1305
    new $P3696, "Undef"
  vivify_1305:
    $P3697 = $P3692."new"($P3695, $P3696, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2386
    $P3698 = $P3691."add_event"($P3697 :named("deserialize_past"))
.annotate 'line', 2380
    .return ($P3698)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("288_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3700
.annotate 'line', 2394
    .lex "self", param_3700
    find_lex $P3701, "self"
    find_lex $P3702, "$?CLASS"
    getattribute $P3703, $P3701, $P3702, "@!sc"
    unless_null $P3703, vivify_1306
    $P3703 = root_new ['parrot';'ResizablePMCArray']
  vivify_1306:
    .return ($P3703)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("289_1303391590.341") :outer("266_1303391590.341")
    .param pmc param_3705
.annotate 'line', 2400
    .const 'Sub' $P3719 = "290_1303391590.341" 
    capture_lex $P3719
    .lex "self", param_3705
.annotate 'line', 2401
    new $P3706, "Undef"
    .lex "$des", $P3706
.annotate 'line', 2402
    new $P3707, "Undef"
    .lex "$fix", $P3707
.annotate 'line', 2401
    get_hll_global $P3708, ["PAST"], "Stmts"
    $P3709 = $P3708."new"()
    store_lex "$des", $P3709
.annotate 'line', 2402
    get_hll_global $P3710, ["PAST"], "Stmts"
    $P3711 = $P3710."new"()
    store_lex "$fix", $P3711
.annotate 'line', 2403
    find_lex $P3713, "self"
    find_lex $P3714, "$?CLASS"
    getattribute $P3715, $P3713, $P3714, "@!event_stream"
    unless_null $P3715, vivify_1307
    $P3715 = root_new ['parrot';'ResizablePMCArray']
  vivify_1307:
    defined $I3716, $P3715
    unless $I3716, for_undef_1308
    iter $P3712, $P3715
    new $P3738, 'ExceptionHandler'
    set_label $P3738, loop3737_handler
    $P3738."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3738
  loop3737_test:
    unless $P3712, loop3737_done
    shift $P3717, $P3712
  loop3737_redo:
    .const 'Sub' $P3719 = "290_1303391590.341" 
    capture_lex $P3719
    $P3719($P3717)
  loop3737_next:
    goto loop3737_test
  loop3737_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3739, exception, 'type'
    eq $P3739, .CONTROL_LOOP_NEXT, loop3737_next
    eq $P3739, .CONTROL_LOOP_REDO, loop3737_redo
  loop3737_done:
    pop_eh 
  for_undef_1308:
.annotate 'line', 2407
    find_dynamic_lex $P3740, "$/"
    get_hll_global $P3741, ["PAST"], "Op"
.annotate 'line', 2409
    get_hll_global $P3742, ["PAST"], "Op"
.annotate 'line', 2411
    get_hll_global $P3743, ["PAST"], "Op"
    find_lex $P3744, "self"
    find_lex $P3745, "$?CLASS"
    getattribute $P3746, $P3744, $P3745, "$!handle"
    unless_null $P3746, vivify_1315
    new $P3746, "Undef"
  vivify_1315:
    $P3747 = $P3743."new"($P3746, "nqp_get_sc Ps" :named("pirop"))
    $P3748 = $P3742."new"($P3747, "isnull IP" :named("pirop"))
.annotate 'line', 2413
    get_hll_global $P3749, ["PAST"], "Stmts"
.annotate 'line', 2414
    get_hll_global $P3750, ["PAST"], "Op"
    $P3751 = $P3750."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2415
    get_hll_global $P3752, ["PAST"], "Op"
.annotate 'line', 2417
    get_hll_global $P3753, ["PAST"], "Op"
    $P3754 = $P3753."new"("getinterp P" :named("pirop"))
.annotate 'line', 2418
    get_hll_global $P3755, ["PAST"], "Op"
    $P3756 = $P3755."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2419
    get_hll_global $P3757, ["PAST"], "Op"
    $P3758 = $P3757."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3759 = $P3752."new"($P3754, $P3756, $P3758, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2421
    get_hll_global $P3760, ["PAST"], "Op"
    $P3761 = $P3760."new"("nqpmo.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2422
    get_hll_global $P3762, ["PAST"], "Op"
.annotate 'line', 2424
    get_hll_global $P3763, ["PAST"], "Var"
    $P3764 = $P3763."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2425
    get_hll_global $P3765, ["PAST"], "Op"
    find_lex $P3766, "self"
    find_lex $P3767, "$?CLASS"
    getattribute $P3768, $P3766, $P3767, "$!handle"
    unless_null $P3768, vivify_1316
    new $P3768, "Undef"
  vivify_1316:
    $P3769 = $P3765."new"($P3768, "nqp_create_sc Ps" :named("pirop"))
    $P3770 = $P3762."new"($P3764, $P3769, "bind" :named("pasttype"))
.annotate 'line', 2422
    find_lex $P3771, "$des"
    unless_null $P3771, vivify_1317
    new $P3771, "Undef"
  vivify_1317:
    $P3772 = $P3749."new"($P3751, $P3759, $P3761, $P3770, $P3771)
.annotate 'line', 2413
    find_lex $P3773, "$fix"
    unless_null $P3773, vivify_1318
    new $P3773, "Undef"
  vivify_1318:
    $P3774 = $P3741."new"($P3748, $P3772, $P3773, "if" :named("pasttype"))
.annotate 'line', 2407
    $P3775 = $P3740."!make"($P3774)
.annotate 'line', 2400
    .return ($P3775)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3718"  :anon :subid("290_1303391590.341") :outer("289_1303391590.341")
    .param pmc param_3720
.annotate 'line', 2403
    .lex "$_", param_3720
.annotate 'line', 2404
    find_lex $P3722, "$_"
    unless_null $P3722, vivify_1309
    new $P3722, "Undef"
  vivify_1309:
    $P3723 = $P3722."deserialize_past"()
    defined $I3724, $P3723
    unless $I3724, if_3721_end
    find_lex $P3725, "$des"
    unless_null $P3725, vivify_1310
    new $P3725, "Undef"
  vivify_1310:
    find_lex $P3726, "$_"
    unless_null $P3726, vivify_1311
    new $P3726, "Undef"
  vivify_1311:
    $P3727 = $P3726."deserialize_past"()
    $P3725."push"($P3727)
  if_3721_end:
.annotate 'line', 2405
    find_lex $P3730, "$_"
    unless_null $P3730, vivify_1312
    new $P3730, "Undef"
  vivify_1312:
    $P3731 = $P3730."fixup_past"()
    defined $I3732, $P3731
    if $I3732, if_3729
    new $P3728, 'Integer'
    set $P3728, $I3732
    goto if_3729_end
  if_3729:
    find_lex $P3733, "$fix"
    unless_null $P3733, vivify_1313
    new $P3733, "Undef"
  vivify_1313:
    find_lex $P3734, "$_"
    unless_null $P3734, vivify_1314
    new $P3734, "Undef"
  vivify_1314:
    $P3735 = $P3734."fixup_past"()
    $P3736 = $P3733."push"($P3735)
    set $P3728, $P3736
  if_3729_end:
.annotate 'line', 2403
    .return ($P3728)
.end


.HLL "nqp"

.namespace []
.sub "_block3833" :load :anon :subid("292_1303391590.341")
.annotate 'line', 1058
    .const 'Sub' $P3835 = "10_1303391590.341" 
    $P3836 = $P3835()
    .return ($P3836)
.end

