
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303418077.916")
.annotate 'line', 0
    .const 'Sub' $P3254 = "266_1303418077.916" 
    capture_lex $P3254
    .const 'Sub' $P3222 = "262_1303418077.916" 
    capture_lex $P3222
    .const 'Sub' $P2760 = "242_1303418077.916" 
    capture_lex $P2760
    .const 'Sub' $P2659 = "234_1303418077.916" 
    capture_lex $P2659
    .const 'Sub' $P1393 = "167_1303418077.916" 
    capture_lex $P1393
    .const 'Sub' $P672 = "120_1303418077.916" 
    capture_lex $P672
    .const 'Sub' $P17 = "11_1303418077.916" 
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
    .const 'Sub' $P17 = "11_1303418077.916" 
    capture_lex $P17
    $P17()
.annotate 'line', 861
    .const 'Sub' $P672 = "120_1303418077.916" 
    capture_lex $P672
    $P672()
.annotate 'line', 1066
    .const 'Sub' $P1393 = "167_1303418077.916" 
    capture_lex $P1393
    $P1393()
.annotate 'line', 1785
    get_hll_global $P2655, ["HLL"], "Compiler"
    $P2656 = $P2655."new"()
    store_lex "$compiler", $P2656
.annotate 'line', 1786
    find_lex $P2657, "$compiler"
    unless_null $P2657, vivify_1022
    new $P2657, "Undef"
  vivify_1022:
    $P2657."language"("parrot")
.annotate 'line', 1879
    .const 'Sub' $P2659 = "234_1303418077.916" 
    capture_lex $P2659
    $P2659()
.annotate 'line', 1912
    .const 'Sub' $P2760 = "242_1303418077.916" 
    capture_lex $P2760
    $P2760()
.annotate 'line', 2090
    .const 'Sub' $P3222 = "262_1303418077.916" 
    capture_lex $P3222
    $P3222()
.annotate 'line', 2100
    .const 'Sub' $P3254 = "266_1303418077.916" 
    capture_lex $P3254
    $P3855 = $P3254()
.annotate 'line', 1
    .return ($P3855)
.annotate 'line', 1058
    .const 'Sub' $P3857 = "292_1303418077.916" 
.annotate 'line', 1
    .return ($P3857)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post293") :outer("10_1303418077.916")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303418077.916" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3861, "1303418070.084"
    isnull $I3862, $P3861
    if $I3862, if_3860
    .const 'Sub' $P4005 = "10_1303418077.916" 
    $P4006 = $P4005."get_lexinfo"()
    nqp_get_sc_object $P4007, "1303418070.084", 0
    $P4006."set_static_lexpad_value"("GLOBALish", $P4007)
    .const 'Sub' $P4008 = "10_1303418077.916" 
    $P4009 = $P4008."get_lexinfo"()
    $P4009."finish_static_lexpad"()
    .const 'Sub' $P4010 = "10_1303418077.916" 
    $P4011 = $P4010."get_lexinfo"()
    nqp_get_sc_object $P4012, "1303418070.084", 0
    $P4011."set_static_lexpad_value"("$?PACKAGE", $P4012)
    .const 'Sub' $P4013 = "10_1303418077.916" 
    $P4014 = $P4013."get_lexinfo"()
    $P4014."finish_static_lexpad"()
    nqp_get_sc_object $P4015, "1303418070.084", 1
    set_hll_global ["HLL"], "Grammar", $P4015
    .const 'Sub' $P4016 = "11_1303418077.916" 
    $P4017 = $P4016."get_lexinfo"()
    nqp_get_sc_object $P4018, "1303418070.084", 1
    $P4017."set_static_lexpad_value"("$?PACKAGE", $P4018)
    .const 'Sub' $P4019 = "11_1303418077.916" 
    $P4020 = $P4019."get_lexinfo"()
    $P4020."finish_static_lexpad"()
    .const 'Sub' $P4021 = "11_1303418077.916" 
    $P4022 = $P4021."get_lexinfo"()
    nqp_get_sc_object $P4023, "1303418070.084", 1
    $P4022."set_static_lexpad_value"("$?CLASS", $P4023)
    .const 'Sub' $P4024 = "11_1303418077.916" 
    $P4025 = $P4024."get_lexinfo"()
    $P4025."finish_static_lexpad"()
    nqp_get_sc_object $P4026, "1303418070.084", 2
    set_hll_global ["HLL"], "Actions", $P4026
    .const 'Sub' $P4027 = "120_1303418077.916" 
    $P4028 = $P4027."get_lexinfo"()
    nqp_get_sc_object $P4029, "1303418070.084", 2
    $P4028."set_static_lexpad_value"("$?PACKAGE", $P4029)
    .const 'Sub' $P4030 = "120_1303418077.916" 
    $P4031 = $P4030."get_lexinfo"()
    $P4031."finish_static_lexpad"()
    .const 'Sub' $P4032 = "120_1303418077.916" 
    $P4033 = $P4032."get_lexinfo"()
    nqp_get_sc_object $P4034, "1303418070.084", 2
    $P4033."set_static_lexpad_value"("$?CLASS", $P4034)
    .const 'Sub' $P4035 = "120_1303418077.916" 
    $P4036 = $P4035."get_lexinfo"()
    $P4036."finish_static_lexpad"()
    nqp_get_sc_object $P4037, "1303418070.084", 3
    set_hll_global ["HLL"], "Compiler", $P4037
    .const 'Sub' $P4038 = "167_1303418077.916" 
    $P4039 = $P4038."get_lexinfo"()
    nqp_get_sc_object $P4040, "1303418070.084", 3
    $P4039."set_static_lexpad_value"("$?PACKAGE", $P4040)
    .const 'Sub' $P4041 = "167_1303418077.916" 
    $P4042 = $P4041."get_lexinfo"()
    $P4042."finish_static_lexpad"()
    .const 'Sub' $P4043 = "167_1303418077.916" 
    $P4044 = $P4043."get_lexinfo"()
    nqp_get_sc_object $P4045, "1303418070.084", 3
    $P4044."set_static_lexpad_value"("$?CLASS", $P4045)
    .const 'Sub' $P4046 = "167_1303418077.916" 
    $P4047 = $P4046."get_lexinfo"()
    $P4047."finish_static_lexpad"()
    nqp_get_sc_object $P4048, "1303418070.084", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4048
    .const 'Sub' $P4049 = "234_1303418077.916" 
    $P4050 = $P4049."get_lexinfo"()
    nqp_get_sc_object $P4051, "1303418070.084", 4
    $P4050."set_static_lexpad_value"("$?PACKAGE", $P4051)
    .const 'Sub' $P4052 = "234_1303418077.916" 
    $P4053 = $P4052."get_lexinfo"()
    $P4053."finish_static_lexpad"()
    .const 'Sub' $P4054 = "234_1303418077.916" 
    $P4055 = $P4054."get_lexinfo"()
    nqp_get_sc_object $P4056, "1303418070.084", 4
    $P4055."set_static_lexpad_value"("$?CLASS", $P4056)
    .const 'Sub' $P4057 = "234_1303418077.916" 
    $P4058 = $P4057."get_lexinfo"()
    $P4058."finish_static_lexpad"()
    nqp_get_sc_object $P4059, "1303418070.084", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4059
    .const 'Sub' $P4060 = "242_1303418077.916" 
    $P4061 = $P4060."get_lexinfo"()
    nqp_get_sc_object $P4062, "1303418070.084", 5
    $P4061."set_static_lexpad_value"("$?PACKAGE", $P4062)
    .const 'Sub' $P4063 = "242_1303418077.916" 
    $P4064 = $P4063."get_lexinfo"()
    $P4064."finish_static_lexpad"()
    .const 'Sub' $P4065 = "242_1303418077.916" 
    $P4066 = $P4065."get_lexinfo"()
    nqp_get_sc_object $P4067, "1303418070.084", 5
    $P4066."set_static_lexpad_value"("$?CLASS", $P4067)
    .const 'Sub' $P4068 = "242_1303418077.916" 
    $P4069 = $P4068."get_lexinfo"()
    $P4069."finish_static_lexpad"()
    nqp_get_sc_object $P4070, "1303418070.084", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P4070
    .const 'Sub' $P4071 = "262_1303418077.916" 
    $P4072 = $P4071."get_lexinfo"()
    nqp_get_sc_object $P4073, "1303418070.084", 6
    $P4072."set_static_lexpad_value"("$?PACKAGE", $P4073)
    .const 'Sub' $P4074 = "262_1303418077.916" 
    $P4075 = $P4074."get_lexinfo"()
    $P4075."finish_static_lexpad"()
    .const 'Sub' $P4076 = "262_1303418077.916" 
    $P4077 = $P4076."get_lexinfo"()
    nqp_get_sc_object $P4078, "1303418070.084", 6
    $P4077."set_static_lexpad_value"("$?CLASS", $P4078)
    .const 'Sub' $P4079 = "262_1303418077.916" 
    $P4080 = $P4079."get_lexinfo"()
    $P4080."finish_static_lexpad"()
    nqp_get_sc_object $P4081, "1303418070.084", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4081
    .const 'Sub' $P4082 = "266_1303418077.916" 
    $P4083 = $P4082."get_lexinfo"()
    nqp_get_sc_object $P4084, "1303418070.084", 7
    $P4083."set_static_lexpad_value"("$?PACKAGE", $P4084)
    .const 'Sub' $P4085 = "266_1303418077.916" 
    $P4086 = $P4085."get_lexinfo"()
    $P4086."finish_static_lexpad"()
    .const 'Sub' $P4087 = "266_1303418077.916" 
    $P4088 = $P4087."get_lexinfo"()
    nqp_get_sc_object $P4089, "1303418070.084", 7
    $P4088."set_static_lexpad_value"("$?CLASS", $P4089)
    .const 'Sub' $P4090 = "266_1303418077.916" 
    $P4091 = $P4090."get_lexinfo"()
    $P4091."finish_static_lexpad"()
    goto if_3860_end
  if_3860:
    nqp_dynop_setup 
    getinterp $P3863
    get_class $P3864, "LexPad"
    get_class $P3865, "NQPLexPad"
    $P3863."hll_map"($P3864, $P3865)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P3866, "1303418070.084"
    .local pmc cur_sc
    set cur_sc, $P3866
    load_bytecode "SettingManager.pbc"
    get_hll_global $P3867, ["HLL"], "SettingManager"
    $P3868 = $P3867."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3868)
    get_hll_global $P3869, "KnowHOW"
    $P3870 = $P3869."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3870, cur_sc
    nqp_set_sc_object "1303418070.084", 0, $P3870
    .const 'Sub' $P3871 = "10_1303418077.916" 
    $P3872 = $P3871."get_lexinfo"()
    nqp_get_sc_object $P3873, "1303418070.084", 0
    $P3872."set_static_lexpad_value"("GLOBALish", $P3873)
    .const 'Sub' $P3874 = "10_1303418077.916" 
    $P3875 = $P3874."get_lexinfo"()
    $P3875."finish_static_lexpad"()
    .const 'Sub' $P3876 = "10_1303418077.916" 
    $P3877 = $P3876."get_lexinfo"()
    nqp_get_sc_object $P3878, "1303418070.084", 0
    $P3877."set_static_lexpad_value"("$?PACKAGE", $P3878)
    .const 'Sub' $P3879 = "10_1303418077.916" 
    $P3880 = $P3879."get_lexinfo"()
    $P3880."finish_static_lexpad"()
    load_bytecode "Regex.pbc"
    get_hll_global $P3881, "NQPClassHOW"
    $P3882 = $P3881."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3882, cur_sc
    nqp_set_sc_object "1303418070.084", 1, $P3882
    nqp_get_sc_object $P3883, "1303418070.084", 1
    nqp_get_sc_object $P3884, "1303418070.084", 0
    nqp_get_package_through_who $P3885, $P3884, "HLL"
    get_who $P3886, $P3885
    set $P3886["Grammar"], $P3883
    nqp_get_sc_object $P3887, "1303418070.084", 1
    set_hll_global ["HLL"], "Grammar", $P3887
    .const 'Sub' $P3888 = "11_1303418077.916" 
    $P3889 = $P3888."get_lexinfo"()
    nqp_get_sc_object $P3890, "1303418070.084", 1
    $P3889."set_static_lexpad_value"("$?PACKAGE", $P3890)
    .const 'Sub' $P3891 = "11_1303418077.916" 
    $P3892 = $P3891."get_lexinfo"()
    $P3892."finish_static_lexpad"()
    .const 'Sub' $P3893 = "11_1303418077.916" 
    $P3894 = $P3893."get_lexinfo"()
    nqp_get_sc_object $P3895, "1303418070.084", 1
    $P3894."set_static_lexpad_value"("$?CLASS", $P3895)
    .const 'Sub' $P3896 = "11_1303418077.916" 
    $P3897 = $P3896."get_lexinfo"()
    $P3897."finish_static_lexpad"()
    get_hll_global $P3898, "NQPClassHOW"
    $P3899 = $P3898."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3899, cur_sc
    nqp_set_sc_object "1303418070.084", 2, $P3899
    nqp_get_sc_object $P3900, "1303418070.084", 2
    nqp_get_sc_object $P3901, "1303418070.084", 0
    nqp_get_package_through_who $P3902, $P3901, "HLL"
    get_who $P3903, $P3902
    set $P3903["Actions"], $P3900
    nqp_get_sc_object $P3904, "1303418070.084", 2
    set_hll_global ["HLL"], "Actions", $P3904
    .const 'Sub' $P3905 = "120_1303418077.916" 
    $P3906 = $P3905."get_lexinfo"()
    nqp_get_sc_object $P3907, "1303418070.084", 2
    $P3906."set_static_lexpad_value"("$?PACKAGE", $P3907)
    .const 'Sub' $P3908 = "120_1303418077.916" 
    $P3909 = $P3908."get_lexinfo"()
    $P3909."finish_static_lexpad"()
    .const 'Sub' $P3910 = "120_1303418077.916" 
    $P3911 = $P3910."get_lexinfo"()
    nqp_get_sc_object $P3912, "1303418070.084", 2
    $P3911."set_static_lexpad_value"("$?CLASS", $P3912)
    .const 'Sub' $P3913 = "120_1303418077.916" 
    $P3914 = $P3913."get_lexinfo"()
    $P3914."finish_static_lexpad"()
    get_hll_global $P3915, "NQPClassHOW"
    $P3916 = $P3915."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3916, cur_sc
    nqp_set_sc_object "1303418070.084", 3, $P3916
    nqp_get_sc_object $P3917, "1303418070.084", 3
    nqp_get_sc_object $P3918, "1303418070.084", 0
    nqp_get_package_through_who $P3919, $P3918, "HLL"
    get_who $P3920, $P3919
    set $P3920["Compiler"], $P3917
    nqp_get_sc_object $P3921, "1303418070.084", 3
    set_hll_global ["HLL"], "Compiler", $P3921
    .const 'Sub' $P3922 = "167_1303418077.916" 
    $P3923 = $P3922."get_lexinfo"()
    nqp_get_sc_object $P3924, "1303418070.084", 3
    $P3923."set_static_lexpad_value"("$?PACKAGE", $P3924)
    .const 'Sub' $P3925 = "167_1303418077.916" 
    $P3926 = $P3925."get_lexinfo"()
    $P3926."finish_static_lexpad"()
    .const 'Sub' $P3927 = "167_1303418077.916" 
    $P3928 = $P3927."get_lexinfo"()
    nqp_get_sc_object $P3929, "1303418070.084", 3
    $P3928."set_static_lexpad_value"("$?CLASS", $P3929)
    .const 'Sub' $P3930 = "167_1303418077.916" 
    $P3931 = $P3930."get_lexinfo"()
    $P3931."finish_static_lexpad"()
    get_hll_global $P3932, "NQPClassHOW"
    $P3933 = $P3932."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P3933, cur_sc
    nqp_set_sc_object "1303418070.084", 4, $P3933
    nqp_get_sc_object $P3934, "1303418070.084", 4
    nqp_get_sc_object $P3935, "1303418070.084", 0
    nqp_get_package_through_who $P3936, $P3935, "HLL"
    nqp_get_package_through_who $P3937, $P3936, "CommandLine"
    get_who $P3938, $P3937
    set $P3938["Result"], $P3934
    nqp_get_sc_object $P3939, "1303418070.084", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P3939
    .const 'Sub' $P3940 = "234_1303418077.916" 
    $P3941 = $P3940."get_lexinfo"()
    nqp_get_sc_object $P3942, "1303418070.084", 4
    $P3941."set_static_lexpad_value"("$?PACKAGE", $P3942)
    .const 'Sub' $P3943 = "234_1303418077.916" 
    $P3944 = $P3943."get_lexinfo"()
    $P3944."finish_static_lexpad"()
    .const 'Sub' $P3945 = "234_1303418077.916" 
    $P3946 = $P3945."get_lexinfo"()
    nqp_get_sc_object $P3947, "1303418070.084", 4
    $P3946."set_static_lexpad_value"("$?CLASS", $P3947)
    .const 'Sub' $P3948 = "234_1303418077.916" 
    $P3949 = $P3948."get_lexinfo"()
    $P3949."finish_static_lexpad"()
    get_hll_global $P3950, "NQPClassHOW"
    $P3951 = $P3950."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P3951, cur_sc
    nqp_set_sc_object "1303418070.084", 5, $P3951
    nqp_get_sc_object $P3952, "1303418070.084", 5
    nqp_get_sc_object $P3953, "1303418070.084", 0
    nqp_get_package_through_who $P3954, $P3953, "HLL"
    nqp_get_package_through_who $P3955, $P3954, "CommandLine"
    get_who $P3956, $P3955
    set $P3956["Parser"], $P3952
    nqp_get_sc_object $P3957, "1303418070.084", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P3957
    .const 'Sub' $P3958 = "242_1303418077.916" 
    $P3959 = $P3958."get_lexinfo"()
    nqp_get_sc_object $P3960, "1303418070.084", 5
    $P3959."set_static_lexpad_value"("$?PACKAGE", $P3960)
    .const 'Sub' $P3961 = "242_1303418077.916" 
    $P3962 = $P3961."get_lexinfo"()
    $P3962."finish_static_lexpad"()
    .const 'Sub' $P3963 = "242_1303418077.916" 
    $P3964 = $P3963."get_lexinfo"()
    nqp_get_sc_object $P3965, "1303418070.084", 5
    $P3964."set_static_lexpad_value"("$?CLASS", $P3965)
    .const 'Sub' $P3966 = "242_1303418077.916" 
    $P3967 = $P3966."get_lexinfo"()
    $P3967."finish_static_lexpad"()
    get_hll_global $P3968, "NQPClassHOW"
    $P3969 = $P3968."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P3969, cur_sc
    nqp_set_sc_object "1303418070.084", 6, $P3969
    nqp_get_sc_object $P3970, "1303418070.084", 6
    nqp_get_sc_object $P3971, "1303418070.084", 0
    nqp_get_package_through_who $P3972, $P3971, "HLL"
    nqp_get_package_through_who $P3973, $P3972, "Compiler"
    nqp_get_package_through_who $P3974, $P3973, "SerializationContextBuilder"
    get_who $P3975, $P3974
    set $P3975["Event"], $P3970
    nqp_get_sc_object $P3976, "1303418070.084", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P3976
    .const 'Sub' $P3977 = "262_1303418077.916" 
    $P3978 = $P3977."get_lexinfo"()
    nqp_get_sc_object $P3979, "1303418070.084", 6
    $P3978."set_static_lexpad_value"("$?PACKAGE", $P3979)
    .const 'Sub' $P3980 = "262_1303418077.916" 
    $P3981 = $P3980."get_lexinfo"()
    $P3981."finish_static_lexpad"()
    .const 'Sub' $P3982 = "262_1303418077.916" 
    $P3983 = $P3982."get_lexinfo"()
    nqp_get_sc_object $P3984, "1303418070.084", 6
    $P3983."set_static_lexpad_value"("$?CLASS", $P3984)
    .const 'Sub' $P3985 = "262_1303418077.916" 
    $P3986 = $P3985."get_lexinfo"()
    $P3986."finish_static_lexpad"()
    get_hll_global $P3987, "NQPClassHOW"
    $P3988 = $P3987."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P3988, cur_sc
    nqp_set_sc_object "1303418070.084", 7, $P3988
    nqp_get_sc_object $P3989, "1303418070.084", 7
    nqp_get_sc_object $P3990, "1303418070.084", 0
    nqp_get_package_through_who $P3991, $P3990, "HLL"
    nqp_get_package_through_who $P3992, $P3991, "Compiler"
    get_who $P3993, $P3992
    set $P3993["SerializationContextBuilder"], $P3989
    nqp_get_sc_object $P3994, "1303418070.084", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P3994
    .const 'Sub' $P3995 = "266_1303418077.916" 
    $P3996 = $P3995."get_lexinfo"()
    nqp_get_sc_object $P3997, "1303418070.084", 7
    $P3996."set_static_lexpad_value"("$?PACKAGE", $P3997)
    .const 'Sub' $P3998 = "266_1303418077.916" 
    $P3999 = $P3998."get_lexinfo"()
    $P3999."finish_static_lexpad"()
    .const 'Sub' $P4000 = "266_1303418077.916" 
    $P4001 = $P4000."get_lexinfo"()
    nqp_get_sc_object $P4002, "1303418070.084", 7
    $P4001."set_static_lexpad_value"("$?CLASS", $P4002)
    .const 'Sub' $P4003 = "266_1303418077.916" 
    $P4004 = $P4003."get_lexinfo"()
    $P4004."finish_static_lexpad"()
  if_3860_end:
    nqp_get_sc_object $P4092, "1303418070.084", 0
    set_hll_global "GLOBAL", $P4092
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1303418077.916") :outer("10_1303418077.916")
.annotate 'line', 9
    .const 'Sub' $P459 = "119_1303418077.916" 
    capture_lex $P459
    .const 'Sub' $P438 = "118_1303418077.916" 
    capture_lex $P438
    .const 'Sub' $P433 = "117_1303418077.916" 
    capture_lex $P433
    .const 'Sub' $P418 = "116_1303418077.916" 
    capture_lex $P418
    .const 'Sub' $P408 = "115_1303418077.916" 
    capture_lex $P408
    .const 'Sub' $P404 = "114_1303418077.916" 
    capture_lex $P404
    .const 'Sub' $P400 = "113_1303418077.916" 
    capture_lex $P400
    .const 'Sub' $P397 = "112_1303418077.916" 
    capture_lex $P397
    .const 'Sub' $P395 = "111_1303418077.916" 
    capture_lex $P395
    .const 'Sub' $P393 = "110_1303418077.916" 
    capture_lex $P393
    .const 'Sub' $P387 = "109_1303418077.916" 
    capture_lex $P387
    .const 'Sub' $P384 = "108_1303418077.916" 
    capture_lex $P384
    .const 'Sub' $P380 = "107_1303418077.916" 
    capture_lex $P380
    .const 'Sub' $P352 = "106_1303418077.916" 
    capture_lex $P352
    .const 'Sub' $P347 = "105_1303418077.916" 
    capture_lex $P347
    .const 'Sub' $P338 = "103_1303418077.916" 
    capture_lex $P338
    .const 'Sub' $P332 = "101_1303418077.916" 
    capture_lex $P332
    .const 'Sub' $P319 = "98_1303418077.916" 
    capture_lex $P319
    .const 'Sub' $P287 = "93_1303418077.916" 
    capture_lex $P287
    .const 'Sub' $P281 = "91_1303418077.916" 
    capture_lex $P281
    .const 'Sub' $P276 = "89_1303418077.916" 
    capture_lex $P276
    .const 'Sub' $P270 = "87_1303418077.916" 
    capture_lex $P270
    .const 'Sub' $P264 = "85_1303418077.916" 
    capture_lex $P264
    .const 'Sub' $P259 = "83_1303418077.916" 
    capture_lex $P259
    .const 'Sub' $P254 = "81_1303418077.916" 
    capture_lex $P254
    .const 'Sub' $P249 = "79_1303418077.916" 
    capture_lex $P249
    .const 'Sub' $P244 = "77_1303418077.916" 
    capture_lex $P244
    .const 'Sub' $P239 = "75_1303418077.916" 
    capture_lex $P239
    .const 'Sub' $P234 = "73_1303418077.916" 
    capture_lex $P234
    .const 'Sub' $P229 = "71_1303418077.916" 
    capture_lex $P229
    .const 'Sub' $P224 = "69_1303418077.916" 
    capture_lex $P224
    .const 'Sub' $P212 = "65_1303418077.916" 
    capture_lex $P212
    .const 'Sub' $P199 = "63_1303418077.916" 
    capture_lex $P199
    .const 'Sub' $P187 = "61_1303418077.916" 
    capture_lex $P187
    .const 'Sub' $P181 = "59_1303418077.916" 
    capture_lex $P181
    .const 'Sub' $P174 = "57_1303418077.916" 
    capture_lex $P174
    .const 'Sub' $P168 = "55_1303418077.916" 
    capture_lex $P168
    .const 'Sub' $P161 = "53_1303418077.916" 
    capture_lex $P161
    .const 'Sub' $P155 = "51_1303418077.916" 
    capture_lex $P155
    .const 'Sub' $P148 = "49_1303418077.916" 
    capture_lex $P148
    .const 'Sub' $P142 = "47_1303418077.916" 
    capture_lex $P142
    .const 'Sub' $P136 = "45_1303418077.916" 
    capture_lex $P136
    .const 'Sub' $P127 = "43_1303418077.916" 
    capture_lex $P127
    .const 'Sub' $P119 = "41_1303418077.916" 
    capture_lex $P119
    .const 'Sub' $P111 = "40_1303418077.916" 
    capture_lex $P111
    .const 'Sub' $P105 = "38_1303418077.916" 
    capture_lex $P105
    .const 'Sub' $P100 = "36_1303418077.916" 
    capture_lex $P100
    .const 'Sub' $P92 = "34_1303418077.916" 
    capture_lex $P92
    .const 'Sub' $P86 = "32_1303418077.916" 
    capture_lex $P86
    .const 'Sub' $P80 = "30_1303418077.916" 
    capture_lex $P80
    .const 'Sub' $P74 = "28_1303418077.916" 
    capture_lex $P74
    .const 'Sub' $P29 = "14_1303418077.916" 
    capture_lex $P29
    .const 'Sub' $P22 = "12_1303418077.916" 
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
    .const 'Sub' $P438 = "118_1303418077.916" 
    newclosure $P457, $P438
.annotate 'line', 9
    .return ($P457)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post294") :outer("11_1303418077.916")
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1303418077.916" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P459 = "119_1303418077.916" 
    capture_lex $P459
    $P459()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block458"  :anon :subid("119_1303418077.916") :outer("11_1303418077.916")
.annotate 'line', 9
    nqp_get_sc_object $P460, "1303418070.084", 1
    .local pmc type_obj
    set type_obj, $P460
    get_how $P461, type_obj
    .const 'Sub' $P462 = "12_1303418077.916" 
    $P461."add_method"(type_obj, "ws", $P462)
    get_how $P463, type_obj
    get_global $P464, "!PREFIX__ws"
    $P463."add_method"(type_obj, "!PREFIX__ws", $P464)
    get_how $P465, type_obj
    .const 'Sub' $P466 = "14_1303418077.916" 
    $P465."add_method"(type_obj, "termish", $P466)
    get_how $P467, type_obj
    get_global $P468, "!PREFIX__termish"
    $P467."add_method"(type_obj, "!PREFIX__termish", $P468)
    get_how $P469, type_obj
    .const 'Sub' $P470 = "16_1303418077.916" 
    $P469."add_method"(type_obj, "term", $P470)
    get_how $P471, type_obj
    .const 'Sub' $P472 = "17_1303418077.916" 
    $P471."add_method"(type_obj, "!PREFIX__term", $P472)
    get_how $P473, type_obj
    .const 'Sub' $P474 = "18_1303418077.916" 
    $P473."add_method"(type_obj, "infix", $P474)
    get_how $P475, type_obj
    .const 'Sub' $P476 = "19_1303418077.916" 
    $P475."add_method"(type_obj, "!PREFIX__infix", $P476)
    get_how $P477, type_obj
    .const 'Sub' $P478 = "20_1303418077.916" 
    $P477."add_method"(type_obj, "prefix", $P478)
    get_how $P479, type_obj
    .const 'Sub' $P480 = "21_1303418077.916" 
    $P479."add_method"(type_obj, "!PREFIX__prefix", $P480)
    get_how $P481, type_obj
    .const 'Sub' $P482 = "22_1303418077.916" 
    $P481."add_method"(type_obj, "postfix", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "23_1303418077.916" 
    $P483."add_method"(type_obj, "!PREFIX__postfix", $P484)
    get_how $P485, type_obj
    .const 'Sub' $P486 = "24_1303418077.916" 
    $P485."add_method"(type_obj, "circumfix", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "25_1303418077.916" 
    $P487."add_method"(type_obj, "!PREFIX__circumfix", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "26_1303418077.916" 
    $P489."add_method"(type_obj, "postcircumfix", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "27_1303418077.916" 
    $P491."add_method"(type_obj, "!PREFIX__postcircumfix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "28_1303418077.916" 
    $P493."add_method"(type_obj, "term:sym<circumfix>", $P494)
    get_how $P495, type_obj
    get_global $P496, "!PREFIX__term:sym<circumfix>"
    $P495."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "30_1303418077.916" 
    $P497."add_method"(type_obj, "infixish", $P498)
    get_how $P499, type_obj
    get_global $P500, "!PREFIX__infixish"
    $P499."add_method"(type_obj, "!PREFIX__infixish", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "32_1303418077.916" 
    $P501."add_method"(type_obj, "prefixish", $P502)
    get_how $P503, type_obj
    get_global $P504, "!PREFIX__prefixish"
    $P503."add_method"(type_obj, "!PREFIX__prefixish", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "34_1303418077.916" 
    $P505."add_method"(type_obj, "postfixish", $P506)
    get_how $P507, type_obj
    get_global $P508, "!PREFIX__postfixish"
    $P507."add_method"(type_obj, "!PREFIX__postfixish", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "36_1303418077.916" 
    $P509."add_method"(type_obj, "nullterm", $P510)
    get_how $P511, type_obj
    get_global $P512, "!PREFIX__nullterm"
    $P511."add_method"(type_obj, "!PREFIX__nullterm", $P512)
    get_how $P513, type_obj
    .const 'Sub' $P514 = "38_1303418077.916" 
    $P513."add_method"(type_obj, "nullterm_alt", $P514)
    get_how $P515, type_obj
    get_global $P516, "!PREFIX__nullterm_alt"
    $P515."add_method"(type_obj, "!PREFIX__nullterm_alt", $P516)
    get_how $P517, type_obj
    .const 'Sub' $P518 = "40_1303418077.916" 
    $P517."add_method"(type_obj, "nulltermish", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "41_1303418077.916" 
    $P519."add_method"(type_obj, "quote_delimited", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__quote_delimited"
    $P521."add_method"(type_obj, "!PREFIX__quote_delimited", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "43_1303418077.916" 
    $P523."add_method"(type_obj, "quote_atom", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__quote_atom"
    $P525."add_method"(type_obj, "!PREFIX__quote_atom", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "45_1303418077.916" 
    $P527."add_method"(type_obj, "decint", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__decint"
    $P529."add_method"(type_obj, "!PREFIX__decint", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "47_1303418077.916" 
    $P531."add_method"(type_obj, "decints", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__decints"
    $P533."add_method"(type_obj, "!PREFIX__decints", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "49_1303418077.916" 
    $P535."add_method"(type_obj, "hexint", $P536)
    get_how $P537, type_obj
    get_global $P538, "!PREFIX__hexint"
    $P537."add_method"(type_obj, "!PREFIX__hexint", $P538)
    get_how $P539, type_obj
    .const 'Sub' $P540 = "51_1303418077.916" 
    $P539."add_method"(type_obj, "hexints", $P540)
    get_how $P541, type_obj
    get_global $P542, "!PREFIX__hexints"
    $P541."add_method"(type_obj, "!PREFIX__hexints", $P542)
    get_how $P543, type_obj
    .const 'Sub' $P544 = "53_1303418077.916" 
    $P543."add_method"(type_obj, "octint", $P544)
    get_how $P545, type_obj
    get_global $P546, "!PREFIX__octint"
    $P545."add_method"(type_obj, "!PREFIX__octint", $P546)
    get_how $P547, type_obj
    .const 'Sub' $P548 = "55_1303418077.916" 
    $P547."add_method"(type_obj, "octints", $P548)
    get_how $P549, type_obj
    get_global $P550, "!PREFIX__octints"
    $P549."add_method"(type_obj, "!PREFIX__octints", $P550)
    get_how $P551, type_obj
    .const 'Sub' $P552 = "57_1303418077.916" 
    $P551."add_method"(type_obj, "binint", $P552)
    get_how $P553, type_obj
    get_global $P554, "!PREFIX__binint"
    $P553."add_method"(type_obj, "!PREFIX__binint", $P554)
    get_how $P555, type_obj
    .const 'Sub' $P556 = "59_1303418077.916" 
    $P555."add_method"(type_obj, "binints", $P556)
    get_how $P557, type_obj
    get_global $P558, "!PREFIX__binints"
    $P557."add_method"(type_obj, "!PREFIX__binints", $P558)
    get_how $P559, type_obj
    .const 'Sub' $P560 = "61_1303418077.916" 
    $P559."add_method"(type_obj, "integer", $P560)
    get_how $P561, type_obj
    get_global $P562, "!PREFIX__integer"
    $P561."add_method"(type_obj, "!PREFIX__integer", $P562)
    get_how $P563, type_obj
    .const 'Sub' $P564 = "63_1303418077.916" 
    $P563."add_method"(type_obj, "dec_number", $P564)
    get_how $P565, type_obj
    get_global $P566, "!PREFIX__dec_number"
    $P565."add_method"(type_obj, "!PREFIX__dec_number", $P566)
    get_how $P567, type_obj
    .const 'Sub' $P568 = "65_1303418077.916" 
    $P567."add_method"(type_obj, "escale", $P568)
    get_how $P569, type_obj
    get_global $P570, "!PREFIX__escale"
    $P569."add_method"(type_obj, "!PREFIX__escale", $P570)
    get_how $P571, type_obj
    .const 'Sub' $P572 = "67_1303418077.916" 
    $P571."add_method"(type_obj, "quote_escape", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "68_1303418077.916" 
    $P573."add_method"(type_obj, "!PREFIX__quote_escape", $P574)
    get_how $P575, type_obj
    .const 'Sub' $P576 = "69_1303418077.916" 
    $P575."add_method"(type_obj, "quote_escape:sym<backslash>", $P576)
    get_how $P577, type_obj
    get_global $P578, "!PREFIX__quote_escape:sym<backslash>"
    $P577."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P578)
    get_how $P579, type_obj
    .const 'Sub' $P580 = "71_1303418077.916" 
    $P579."add_method"(type_obj, "quote_escape:sym<stopper>", $P580)
    get_how $P581, type_obj
    get_global $P582, "!PREFIX__quote_escape:sym<stopper>"
    $P581."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P582)
    get_how $P583, type_obj
    .const 'Sub' $P584 = "73_1303418077.916" 
    $P583."add_method"(type_obj, "quote_escape:sym<bs>", $P584)
    get_how $P585, type_obj
    get_global $P586, "!PREFIX__quote_escape:sym<bs>"
    $P585."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P586)
    get_how $P587, type_obj
    .const 'Sub' $P588 = "75_1303418077.916" 
    $P587."add_method"(type_obj, "quote_escape:sym<nl>", $P588)
    get_how $P589, type_obj
    get_global $P590, "!PREFIX__quote_escape:sym<nl>"
    $P589."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "77_1303418077.916" 
    $P591."add_method"(type_obj, "quote_escape:sym<cr>", $P592)
    get_how $P593, type_obj
    get_global $P594, "!PREFIX__quote_escape:sym<cr>"
    $P593."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P594)
    get_how $P595, type_obj
    .const 'Sub' $P596 = "79_1303418077.916" 
    $P595."add_method"(type_obj, "quote_escape:sym<tab>", $P596)
    get_how $P597, type_obj
    get_global $P598, "!PREFIX__quote_escape:sym<tab>"
    $P597."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P598)
    get_how $P599, type_obj
    .const 'Sub' $P600 = "81_1303418077.916" 
    $P599."add_method"(type_obj, "quote_escape:sym<ff>", $P600)
    get_how $P601, type_obj
    get_global $P602, "!PREFIX__quote_escape:sym<ff>"
    $P601."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P602)
    get_how $P603, type_obj
    .const 'Sub' $P604 = "83_1303418077.916" 
    $P603."add_method"(type_obj, "quote_escape:sym<esc>", $P604)
    get_how $P605, type_obj
    get_global $P606, "!PREFIX__quote_escape:sym<esc>"
    $P605."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P606)
    get_how $P607, type_obj
    .const 'Sub' $P608 = "85_1303418077.916" 
    $P607."add_method"(type_obj, "quote_escape:sym<hex>", $P608)
    get_how $P609, type_obj
    get_global $P610, "!PREFIX__quote_escape:sym<hex>"
    $P609."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P610)
    get_how $P611, type_obj
    .const 'Sub' $P612 = "87_1303418077.916" 
    $P611."add_method"(type_obj, "quote_escape:sym<oct>", $P612)
    get_how $P613, type_obj
    get_global $P614, "!PREFIX__quote_escape:sym<oct>"
    $P613."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P614)
    get_how $P615, type_obj
    .const 'Sub' $P616 = "89_1303418077.916" 
    $P615."add_method"(type_obj, "quote_escape:sym<chr>", $P616)
    get_how $P617, type_obj
    get_global $P618, "!PREFIX__quote_escape:sym<chr>"
    $P617."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P618)
    get_how $P619, type_obj
    .const 'Sub' $P620 = "91_1303418077.916" 
    $P619."add_method"(type_obj, "quote_escape:sym<0>", $P620)
    get_how $P621, type_obj
    get_global $P622, "!PREFIX__quote_escape:sym<0>"
    $P621."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P622)
    get_how $P623, type_obj
    .const 'Sub' $P624 = "93_1303418077.916" 
    $P623."add_method"(type_obj, "quote_escape:sym<misc>", $P624)
    get_how $P625, type_obj
    get_global $P626, "!PREFIX__quote_escape:sym<misc>"
    $P625."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P626)
    get_how $P627, type_obj
    .const 'Sub' $P628 = "98_1303418077.916" 
    $P627."add_method"(type_obj, "charname", $P628)
    get_how $P629, type_obj
    get_global $P630, "!PREFIX__charname"
    $P629."add_method"(type_obj, "!PREFIX__charname", $P630)
    get_how $P631, type_obj
    .const 'Sub' $P632 = "101_1303418077.916" 
    $P631."add_method"(type_obj, "charnames", $P632)
    get_how $P633, type_obj
    get_global $P634, "!PREFIX__charnames"
    $P633."add_method"(type_obj, "!PREFIX__charnames", $P634)
    get_how $P635, type_obj
    .const 'Sub' $P636 = "103_1303418077.916" 
    $P635."add_method"(type_obj, "charspec", $P636)
    get_how $P637, type_obj
    get_global $P638, "!PREFIX__charspec"
    $P637."add_method"(type_obj, "!PREFIX__charspec", $P638)
    get_how $P639, type_obj
    .const 'Sub' $P640 = "105_1303418077.916" 
    $P639."add_method"(type_obj, "O", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "106_1303418077.916" 
    $P641."add_method"(type_obj, "panic", $P642)
    get_how $P643, type_obj
    .const 'Sub' $P644 = "107_1303418077.916" 
    $P643."add_method"(type_obj, "peek_delimiters", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "108_1303418077.916" 
    $P645."add_method"(type_obj, "quote_EXPR", $P646)
    get_how $P647, type_obj
    .const 'Sub' $P648 = "109_1303418077.916" 
    $P647."add_method"(type_obj, "quotemod_check", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "110_1303418077.916" 
    $P649."add_method"(type_obj, "starter", $P650)
    get_how $P651, type_obj
    .const 'Sub' $P652 = "111_1303418077.916" 
    $P651."add_method"(type_obj, "stopper", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "112_1303418077.916" 
    $P653."add_method"(type_obj, "split_words", $P654)
    get_how $P655, type_obj
    .const 'Sub' $P656 = "113_1303418077.916" 
    $P655."add_method"(type_obj, "EXPR", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "114_1303418077.916" 
    $P657."add_method"(type_obj, "EXPR_reduce", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "115_1303418077.916" 
    $P659."add_method"(type_obj, "ternary", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "116_1303418077.916" 
    $P661."add_method"(type_obj, "MARKER", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "117_1303418077.916" 
    $P663."add_method"(type_obj, "MARKED", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "118_1303418077.916" 
    $P665."add_method"(type_obj, "LANG", $P666)
    get_how $P667, type_obj
    get_hll_global $P668, ["Regex"], "Cursor"
    $P667."set_default_parent"(type_obj, $P668)
    get_how $P669, type_obj
    $P670 = $P669."compose"(type_obj)
    .return ($P670)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303418077.916") :method
.annotate 'line', 10
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303418077.916") :method
.annotate 'line', 10
    new $P32, "ResizablePMCArray"
    push $P32, ""
    .return ($P32)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303418077.916")
    .param pmc param_39
.annotate 'line', 20
    .lex "self", param_39
    $P40 = param_39."!protoregex"("term")
    .return ($P40)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303418077.916")
    .param pmc param_42
.annotate 'line', 20
    .lex "self", param_42
    $P43 = param_42."!PREFIX__!protoregex"("term")
    .return ($P43)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303418077.916")
    .param pmc param_45
.annotate 'line', 21
    .lex "self", param_45
    $P46 = param_45."!protoregex"("infix")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303418077.916")
    .param pmc param_48
.annotate 'line', 21
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("infix")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303418077.916")
    .param pmc param_51
.annotate 'line', 22
    .lex "self", param_51
    $P52 = param_51."!protoregex"("prefix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303418077.916")
    .param pmc param_54
.annotate 'line', 22
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("prefix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303418077.916")
    .param pmc param_57
.annotate 'line', 23
    .lex "self", param_57
    $P58 = param_57."!protoregex"("postfix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303418077.916")
    .param pmc param_60
.annotate 'line', 23
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("postfix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303418077.916")
    .param pmc param_63
.annotate 'line', 24
    .lex "self", param_63
    $P64 = param_63."!protoregex"("circumfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303418077.916")
    .param pmc param_66
.annotate 'line', 24
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("circumfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303418077.916")
    .param pmc param_69
.annotate 'line', 25
    .lex "self", param_69
    $P70 = param_69."!protoregex"("postcircumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303418077.916")
    .param pmc param_72
.annotate 'line', 25
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("postcircumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303418077.916") :method
.annotate 'line', 10
    $P77 = self."!PREFIX__!subrule"("circumfix", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303418077.916") :method
.annotate 'line', 10
    $P83 = self."!PREFIX__!subrule"("infix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303418077.916") :method
.annotate 'line', 10
    $P89 = self."!PREFIX__!subrule"("prefix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303418077.916") :method
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
.sub "nullterm"  :subid("36_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303418077.916") :method
.annotate 'line', 10
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303418077.916") :method
.annotate 'line', 10
    $P108 = self."!PREFIX__!subrule"("nullterm", "")
    new $P109, "ResizablePMCArray"
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303418077.916") :outer("11_1303418077.916")
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
.sub "quote_delimited"  :subid("41_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303418077.916") :method
.annotate 'line', 40
    $P122 = self."!PREFIX__!subrule"("starter", "")
    new $P123, "ResizablePMCArray"
    push $P123, $P122
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303418077.916") :method
.annotate 'line', 40
    new $P130, "ResizablePMCArray"
    push $P130, ""
    .return ($P130)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303418077.916") :method
.annotate 'line', 40
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303418077.916") :method
.annotate 'line', 40
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303418077.916") :method
.annotate 'line', 40
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303418077.916") :method
.annotate 'line', 40
    new $P158, "ResizablePMCArray"
    push $P158, ""
    .return ($P158)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303418077.916") :method
.annotate 'line', 40
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303418077.916") :method
.annotate 'line', 40
    new $P171, "ResizablePMCArray"
    push $P171, ""
    .return ($P171)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303418077.916") :method
.annotate 'line', 40
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303418077.916") :method
.annotate 'line', 40
    new $P184, "ResizablePMCArray"
    push $P184, ""
    .return ($P184)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303418077.916") :method
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
.sub "dec_number"  :subid("63_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303418077.916") :method
.annotate 'line', 40
    new $P202, "ResizablePMCArray"
    push $P202, ""
    push $P202, ""
    push $P202, "."
    .return ($P202)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303418077.916") :method
.annotate 'line', 40
    new $P215, "ResizablePMCArray"
    push $P215, "e"
    push $P215, "E"
    .return ($P215)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303418077.916")
    .param pmc param_219
.annotate 'line', 86
    .lex "self", param_219
    $P220 = param_219."!protoregex"("quote_escape")
    .return ($P220)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303418077.916")
    .param pmc param_222
.annotate 'line', 86
    .lex "self", param_222
    $P223 = param_222."!PREFIX__!protoregex"("quote_escape")
    .return ($P223)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303418077.916") :method
.annotate 'line', 40
    new $P227, "ResizablePMCArray"
    push $P227, "\\\\"
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303418077.916") :method
.annotate 'line', 40
    new $P232, "ResizablePMCArray"
    push $P232, "\\"
    .return ($P232)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303418077.916") :method
.annotate 'line', 40
    new $P237, "ResizablePMCArray"
    push $P237, "\\b"
    .return ($P237)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303418077.916") :method
.annotate 'line', 40
    new $P242, "ResizablePMCArray"
    push $P242, "\\n"
    .return ($P242)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303418077.916") :method
.annotate 'line', 40
    new $P247, "ResizablePMCArray"
    push $P247, "\\r"
    .return ($P247)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303418077.916") :method
.annotate 'line', 40
    new $P252, "ResizablePMCArray"
    push $P252, "\\t"
    .return ($P252)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303418077.916") :method
.annotate 'line', 40
    new $P257, "ResizablePMCArray"
    push $P257, "\\f"
    .return ($P257)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303418077.916") :method
.annotate 'line', 40
    new $P262, "ResizablePMCArray"
    push $P262, "\\e"
    .return ($P262)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303418077.916") :method
.annotate 'line', 40
    new $P267, "ResizablePMCArray"
    push $P267, unicode:"\\x"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303418077.916") :method
.annotate 'line', 40
    new $P273, "ResizablePMCArray"
    push $P273, "\\o"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303418077.916") :method
.annotate 'line', 40
    new $P279, "ResizablePMCArray"
    push $P279, "\\c"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303418077.916") :method
.annotate 'line', 40
    new $P284, "ResizablePMCArray"
    push $P284, "\\0"
    .return ($P284)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303418077.916") :method :outer("11_1303418077.916")
.annotate 'line', 40
    .const 'Sub' $P307 = "97_1303418077.916" 
    capture_lex $P307
    .const 'Sub' $P300 = "96_1303418077.916" 
    capture_lex $P300
    .const 'Sub' $P295 = "95_1303418077.916" 
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
    .const 'Sub' $P295 = "95_1303418077.916" 
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
    .const 'Sub' $P300 = "96_1303418077.916" 
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
    .const 'Sub' $P307 = "97_1303418077.916" 
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
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303418077.916") :method
.annotate 'line', 40
    new $P290, "ResizablePMCArray"
    push $P290, ""
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block294"  :anon :subid("95_1303418077.916") :outer("93_1303418077.916")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("96_1303418077.916") :method :outer("93_1303418077.916")
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
.sub "_block306"  :anon :subid("97_1303418077.916") :outer("93_1303418077.916")
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
.sub "charname"  :subid("98_1303418077.916") :method :outer("11_1303418077.916")
.annotate 'line', 40
    .const 'Sub' $P329 = "100_1303418077.916" 
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
    .const 'Sub' $P329 = "100_1303418077.916" 
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
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303418077.916") :method
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
.sub "_block328"  :anon :subid("100_1303418077.916") :method :outer("98_1303418077.916")
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
.sub "charnames"  :subid("101_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303418077.916") :method
.annotate 'line', 40
    new $P335, "ResizablePMCArray"
    push $P335, ""
    .return ($P335)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303418077.916") :method :outer("11_1303418077.916")
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
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303418077.916") :method
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
.sub "O"  :subid("105_1303418077.916") :outer("11_1303418077.916")
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
.sub "panic"  :subid("106_1303418077.916") :outer("11_1303418077.916")
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
.sub "peek_delimiters"  :subid("107_1303418077.916") :outer("11_1303418077.916")
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
.sub "quote_EXPR"  :subid("108_1303418077.916") :outer("11_1303418077.916")
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
.sub "quotemod_check" :nsentry :subid("109_1303418077.916") :outer("11_1303418077.916")
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
.sub "starter"  :subid("110_1303418077.916") :outer("11_1303418077.916")
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
.sub "stopper"  :subid("111_1303418077.916") :outer("11_1303418077.916")
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
.sub "split_words" :nsentry :subid("112_1303418077.916") :outer("11_1303418077.916")
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
.sub "EXPR"  :subid("113_1303418077.916") :outer("11_1303418077.916")
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
.sub "EXPR_reduce"  :subid("114_1303418077.916") :outer("11_1303418077.916")
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
.sub "ternary"  :subid("115_1303418077.916") :outer("11_1303418077.916")
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
.sub "MARKER"  :subid("116_1303418077.916") :outer("11_1303418077.916")
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
.sub "MARKED"  :subid("117_1303418077.916") :outer("11_1303418077.916")
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
.sub "LANG"  :subid("118_1303418077.916") :outer("11_1303418077.916")
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
.sub "_block671"  :subid("120_1303418077.916") :outer("10_1303418077.916")
.annotate 'line', 861
    .const 'Sub' $P1322 = "166_1303418077.916" 
    capture_lex $P1322
    .const 'Sub' $P1303 = "165_1303418077.916" 
    capture_lex $P1303
    .const 'Sub' $P1280 = "163_1303418077.916" 
    capture_lex $P1280
    .const 'Sub' $P1252 = "162_1303418077.916" 
    capture_lex $P1252
    .const 'Sub' $P1235 = "161_1303418077.916" 
    capture_lex $P1235
    .const 'Sub' $P1230 = "160_1303418077.916" 
    capture_lex $P1230
    .const 'Sub' $P1222 = "159_1303418077.916" 
    capture_lex $P1222
    .const 'Sub' $P1207 = "158_1303418077.916" 
    capture_lex $P1207
    .const 'Sub' $P1192 = "157_1303418077.916" 
    capture_lex $P1192
    .const 'Sub' $P1187 = "156_1303418077.916" 
    capture_lex $P1187
    .const 'Sub' $P1182 = "155_1303418077.916" 
    capture_lex $P1182
    .const 'Sub' $P1177 = "154_1303418077.916" 
    capture_lex $P1177
    .const 'Sub' $P1172 = "153_1303418077.916" 
    capture_lex $P1172
    .const 'Sub' $P1167 = "152_1303418077.916" 
    capture_lex $P1167
    .const 'Sub' $P1162 = "151_1303418077.916" 
    capture_lex $P1162
    .const 'Sub' $P1154 = "150_1303418077.916" 
    capture_lex $P1154
    .const 'Sub' $P1149 = "149_1303418077.916" 
    capture_lex $P1149
    .const 'Sub' $P1135 = "148_1303418077.916" 
    capture_lex $P1135
    .const 'Sub' $P1062 = "146_1303418077.916" 
    capture_lex $P1062
    .const 'Sub' $P1001 = "143_1303418077.916" 
    capture_lex $P1001
    .const 'Sub' $P994 = "142_1303418077.916" 
    capture_lex $P994
    .const 'Sub' $P987 = "141_1303418077.916" 
    capture_lex $P987
    .const 'Sub' $P980 = "140_1303418077.916" 
    capture_lex $P980
    .const 'Sub' $P973 = "139_1303418077.916" 
    capture_lex $P973
    .const 'Sub' $P966 = "138_1303418077.916" 
    capture_lex $P966
    .const 'Sub' $P958 = "137_1303418077.916" 
    capture_lex $P958
    .const 'Sub' $P950 = "136_1303418077.916" 
    capture_lex $P950
    .const 'Sub' $P944 = "135_1303418077.916" 
    capture_lex $P944
    .const 'Sub' $P936 = "134_1303418077.916" 
    capture_lex $P936
    .const 'Sub' $P928 = "133_1303418077.916" 
    capture_lex $P928
    .const 'Sub' $P823 = "130_1303418077.916" 
    capture_lex $P823
    .const 'Sub' $P785 = "127_1303418077.916" 
    capture_lex $P785
    .const 'Sub' $P780 = "126_1303418077.916" 
    capture_lex $P780
    .const 'Sub' $P743 = "123_1303418077.916" 
    capture_lex $P743
    .const 'Sub' $P673 = "121_1303418077.916" 
    capture_lex $P673
.annotate 'line', 862
    .const 'Sub' $P673 = "121_1303418077.916" 
    newclosure $P741, $P673
    .lex "string_to_int", $P741
.annotate 'line', 861
    find_lex $P742, "string_to_int"
    set_global "string_to_int", $P742
.annotate 'line', 881
    .const 'Sub' $P743 = "123_1303418077.916" 
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
    .const 'Sub' $P1303 = "165_1303418077.916" 
    newclosure $P1318, $P1303
.annotate 'line', 861
    .return ($P1318)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post493") :outer("120_1303418077.916")
.annotate 'line', 861
    .const 'Sub' $P672 = "120_1303418077.916" 
    .local pmc block
    set block, $P672
    .const 'Sub' $P1319 = "121_1303418077.916" 
    set_global "string_to_int", $P1319
    .const 'Sub' $P1320 = "123_1303418077.916" 
    set_global "ints_to_string", $P1320
    .const 'Sub' $P1322 = "166_1303418077.916" 
    capture_lex $P1322
    $P1322()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1321"  :anon :subid("166_1303418077.916") :outer("120_1303418077.916")
.annotate 'line', 861
    nqp_get_sc_object $P1323, "1303418070.084", 2
    .local pmc type_obj
    set type_obj, $P1323
    get_how $P1324, type_obj
    .const 'Sub' $P1325 = "126_1303418077.916" 
    $P1324."add_method"(type_obj, "CTXSAVE", $P1325)
    get_how $P1326, type_obj
    .const 'Sub' $P1327 = "127_1303418077.916" 
    $P1326."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1327)
    get_how $P1328, type_obj
    .const 'Sub' $P1329 = "130_1303418077.916" 
    $P1328."add_method"(type_obj, "EXPR", $P1329)
    get_how $P1330, type_obj
    .const 'Sub' $P1331 = "133_1303418077.916" 
    $P1330."add_method"(type_obj, "term:sym<circumfix>", $P1331)
    get_how $P1332, type_obj
    .const 'Sub' $P1333 = "134_1303418077.916" 
    $P1332."add_method"(type_obj, "termish", $P1333)
    get_how $P1334, type_obj
    .const 'Sub' $P1335 = "135_1303418077.916" 
    $P1334."add_method"(type_obj, "nullterm", $P1335)
    get_how $P1336, type_obj
    .const 'Sub' $P1337 = "136_1303418077.916" 
    $P1336."add_method"(type_obj, "nullterm_alt", $P1337)
    get_how $P1338, type_obj
    .const 'Sub' $P1339 = "137_1303418077.916" 
    $P1338."add_method"(type_obj, "integer", $P1339)
    get_how $P1340, type_obj
    .const 'Sub' $P1341 = "138_1303418077.916" 
    $P1340."add_method"(type_obj, "dec_number", $P1341)
    get_how $P1342, type_obj
    .const 'Sub' $P1343 = "139_1303418077.916" 
    $P1342."add_method"(type_obj, "decint", $P1343)
    get_how $P1344, type_obj
    .const 'Sub' $P1345 = "140_1303418077.916" 
    $P1344."add_method"(type_obj, "hexint", $P1345)
    get_how $P1346, type_obj
    .const 'Sub' $P1347 = "141_1303418077.916" 
    $P1346."add_method"(type_obj, "octint", $P1347)
    get_how $P1348, type_obj
    .const 'Sub' $P1349 = "142_1303418077.916" 
    $P1348."add_method"(type_obj, "binint", $P1349)
    get_how $P1350, type_obj
    .const 'Sub' $P1351 = "143_1303418077.916" 
    $P1350."add_method"(type_obj, "quote_EXPR", $P1351)
    get_how $P1352, type_obj
    .const 'Sub' $P1353 = "146_1303418077.916" 
    $P1352."add_method"(type_obj, "quote_delimited", $P1353)
    get_how $P1354, type_obj
    .const 'Sub' $P1355 = "148_1303418077.916" 
    $P1354."add_method"(type_obj, "quote_atom", $P1355)
    get_how $P1356, type_obj
    .const 'Sub' $P1357 = "149_1303418077.916" 
    $P1356."add_method"(type_obj, "quote_escape:sym<backslash>", $P1357)
    get_how $P1358, type_obj
    .const 'Sub' $P1359 = "150_1303418077.916" 
    $P1358."add_method"(type_obj, "quote_escape:sym<stopper>", $P1359)
    get_how $P1360, type_obj
    .const 'Sub' $P1361 = "151_1303418077.916" 
    $P1360."add_method"(type_obj, "quote_escape:sym<bs>", $P1361)
    get_how $P1362, type_obj
    .const 'Sub' $P1363 = "152_1303418077.916" 
    $P1362."add_method"(type_obj, "quote_escape:sym<nl>", $P1363)
    get_how $P1364, type_obj
    .const 'Sub' $P1365 = "153_1303418077.916" 
    $P1364."add_method"(type_obj, "quote_escape:sym<cr>", $P1365)
    get_how $P1366, type_obj
    .const 'Sub' $P1367 = "154_1303418077.916" 
    $P1366."add_method"(type_obj, "quote_escape:sym<tab>", $P1367)
    get_how $P1368, type_obj
    .const 'Sub' $P1369 = "155_1303418077.916" 
    $P1368."add_method"(type_obj, "quote_escape:sym<ff>", $P1369)
    get_how $P1370, type_obj
    .const 'Sub' $P1371 = "156_1303418077.916" 
    $P1370."add_method"(type_obj, "quote_escape:sym<esc>", $P1371)
    get_how $P1372, type_obj
    .const 'Sub' $P1373 = "157_1303418077.916" 
    $P1372."add_method"(type_obj, "quote_escape:sym<hex>", $P1373)
    get_how $P1374, type_obj
    .const 'Sub' $P1375 = "158_1303418077.916" 
    $P1374."add_method"(type_obj, "quote_escape:sym<oct>", $P1375)
    get_how $P1376, type_obj
    .const 'Sub' $P1377 = "159_1303418077.916" 
    $P1376."add_method"(type_obj, "quote_escape:sym<chr>", $P1377)
    get_how $P1378, type_obj
    .const 'Sub' $P1379 = "160_1303418077.916" 
    $P1378."add_method"(type_obj, "quote_escape:sym<0>", $P1379)
    get_how $P1380, type_obj
    .const 'Sub' $P1381 = "161_1303418077.916" 
    $P1380."add_method"(type_obj, "quote_escape:sym<misc>", $P1381)
    get_how $P1382, type_obj
    .const 'Sub' $P1383 = "162_1303418077.916" 
    $P1382."add_method"(type_obj, "charname", $P1383)
    get_how $P1384, type_obj
    .const 'Sub' $P1385 = "163_1303418077.916" 
    $P1384."add_method"(type_obj, "charnames", $P1385)
    get_how $P1386, type_obj
    .const 'Sub' $P1387 = "165_1303418077.916" 
    $P1386."add_method"(type_obj, "charspec", $P1387)
    get_how $P1388, type_obj
    nqp_get_sc_object $P1389, "1303418068.989", 4
    $P1388."set_default_parent"(type_obj, $P1389)
    get_how $P1390, type_obj
    $P1391 = $P1390."compose"(type_obj)
    .return ($P1391)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_674
    .param pmc param_675
.annotate 'line', 862
    .const 'Sub' $P691 = "122_1303418077.916" 
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
    .const 'Sub' $P691 = "122_1303418077.916" 
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
.sub "_block690"  :anon :subid("122_1303418077.916") :outer("121_1303418077.916")
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
.sub "ints_to_string"  :subid("123_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_744
.annotate 'line', 881
    .const 'Sub' $P750 = "124_1303418077.916" 
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
    .const 'Sub' $P750 = "124_1303418077.916" 
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
.sub "_block749"  :anon :subid("124_1303418077.916") :outer("123_1303418077.916")
.annotate 'line', 882
    .const 'Sub' $P758 = "125_1303418077.916" 
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
    .const 'Sub' $P758 = "125_1303418077.916" 
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
.sub "_block757"  :anon :subid("125_1303418077.916") :outer("124_1303418077.916")
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
.sub "CTXSAVE"  :subid("126_1303418077.916") :outer("120_1303418077.916")
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
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_786
    .param pmc param_787
.annotate 'line', 908
    .const 'Sub' $P797 = "128_1303418077.916" 
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
    .const 'Sub' $P797 = "128_1303418077.916" 
    capture_lex $P797
    $P822 = $P797()
    set $P792, $P822
  if_793_end:
.annotate 'line', 908
    .return ($P792)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block796"  :anon :subid("128_1303418077.916") :outer("127_1303418077.916")
.annotate 'line', 910
    .const 'Sub' $P811 = "129_1303418077.916" 
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
    new $P820, 'ExceptionHandler'
    set_label $P820, loop819_handler
    $P820."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P820
  loop819_test:
    unless $P805, loop819_done
    shift $P809, $P805
  loop819_redo:
    .const 'Sub' $P811 = "129_1303418077.916" 
    capture_lex $P811
    $P811($P809)
  loop819_next:
    goto loop819_test
  loop819_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P821, exception, 'type'
    eq $P821, .CONTROL_LOOP_NEXT, loop819_next
    eq $P821, .CONTROL_LOOP_REDO, loop819_redo
  loop819_done:
    pop_eh 
  for_undef_529:
.annotate 'line', 910
    .return ($P805)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block810"  :anon :subid("129_1303418077.916") :outer("128_1303418077.916")
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
    find_lex $P816, "$_"
    unless_null $P816, vivify_532
    new $P816, "Undef"
  vivify_532:
    $P817 = $P816."value"()
    $P818 = $P813."symbol"($P815, "lexical" :named("scope"), $P817 :named("value"))
.annotate 'line', 914
    .return ($P818)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_826
    .param pmc param_827
    .param pmc param_828 :optional
    .param int has_param_828 :opt_flag
.annotate 'line', 921
    .const 'Sub' $P910 = "132_1303418077.916" 
    capture_lex $P910
    .const 'Sub' $P874 = "131_1303418077.916" 
    capture_lex $P874
    new $P825, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P825, control_824
    push_eh $P825
    .lex "self", param_826
    .lex "$/", param_827
    if has_param_828, optparam_533
    new $P829, "Undef"
    set param_828, $P829
  optparam_533:
    .lex "$key", param_828
.annotate 'line', 923
    new $P830, "Undef"
    .lex "$past", $P830
.annotate 'line', 922
    find_lex $P832, "$key"
    unless_null $P832, vivify_534
    new $P832, "Undef"
  vivify_534:
    if $P832, unless_831_end
    new $P833, "Exception"
    set $P833['type'], .CONTROL_RETURN
    new $P834, "Integer"
    assign $P834, 0
    setattribute $P833, 'payload', $P834
    throw $P833
  unless_831_end:
.annotate 'line', 923
    find_lex $P836, "$/"
    unless_null $P836, vivify_535
    new $P836, "Undef"
  vivify_535:
    $P837 = $P836."ast"()
    set $P835, $P837
    defined $I839, $P835
    if $I839, default_838
    find_lex $P840, "$/"
    unless_null $P840, vivify_536
    $P840 = root_new ['parrot';'Hash']
  vivify_536:
    set $P841, $P840["OPER"]
    unless_null $P841, vivify_537
    new $P841, "Undef"
  vivify_537:
    $P842 = $P841."ast"()
    set $P835, $P842
  default_838:
    store_lex "$past", $P835
.annotate 'line', 924
    find_lex $P844, "$past"
    unless_null $P844, vivify_538
    new $P844, "Undef"
  vivify_538:
    if $P844, unless_843_end
.annotate 'line', 925
    get_hll_global $P845, ["PAST"], "Op"
    find_lex $P846, "$/"
    unless_null $P846, vivify_539
    new $P846, "Undef"
  vivify_539:
    $P847 = $P845."new"($P846 :named("node"))
    store_lex "$past", $P847
.annotate 'line', 926
    find_lex $P849, "$/"
    unless_null $P849, vivify_540
    $P849 = root_new ['parrot';'Hash']
  vivify_540:
    set $P850, $P849["OPER"]
    unless_null $P850, vivify_541
    $P850 = root_new ['parrot';'Hash']
  vivify_541:
    set $P851, $P850["O"]
    unless_null $P851, vivify_542
    $P851 = root_new ['parrot';'Hash']
  vivify_542:
    set $P852, $P851["pasttype"]
    unless_null $P852, vivify_543
    new $P852, "Undef"
  vivify_543:
    if $P852, if_848
.annotate 'line', 927
    find_lex $P860, "$/"
    unless_null $P860, vivify_544
    $P860 = root_new ['parrot';'Hash']
  vivify_544:
    set $P861, $P860["OPER"]
    unless_null $P861, vivify_545
    $P861 = root_new ['parrot';'Hash']
  vivify_545:
    set $P862, $P861["O"]
    unless_null $P862, vivify_546
    $P862 = root_new ['parrot';'Hash']
  vivify_546:
    set $P863, $P862["pirop"]
    unless_null $P863, vivify_547
    new $P863, "Undef"
  vivify_547:
    unless $P863, if_859_end
    find_lex $P864, "$past"
    unless_null $P864, vivify_548
    new $P864, "Undef"
  vivify_548:
    find_lex $P865, "$/"
    unless_null $P865, vivify_549
    $P865 = root_new ['parrot';'Hash']
  vivify_549:
    set $P866, $P865["OPER"]
    unless_null $P866, vivify_550
    $P866 = root_new ['parrot';'Hash']
  vivify_550:
    set $P867, $P866["O"]
    unless_null $P867, vivify_551
    $P867 = root_new ['parrot';'Hash']
  vivify_551:
    set $P868, $P867["pirop"]
    unless_null $P868, vivify_552
    new $P868, "Undef"
  vivify_552:
    set $S869, $P868
    $P864."pirop"($S869)
  if_859_end:
    goto if_848_end
  if_848:
.annotate 'line', 926
    find_lex $P853, "$past"
    unless_null $P853, vivify_553
    new $P853, "Undef"
  vivify_553:
    find_lex $P854, "$/"
    unless_null $P854, vivify_554
    $P854 = root_new ['parrot';'Hash']
  vivify_554:
    set $P855, $P854["OPER"]
    unless_null $P855, vivify_555
    $P855 = root_new ['parrot';'Hash']
  vivify_555:
    set $P856, $P855["O"]
    unless_null $P856, vivify_556
    $P856 = root_new ['parrot';'Hash']
  vivify_556:
    set $P857, $P856["pasttype"]
    unless_null $P857, vivify_557
    new $P857, "Undef"
  vivify_557:
    set $S858, $P857
    $P853."pasttype"($S858)
  if_848_end:
.annotate 'line', 928
    find_lex $P871, "$past"
    unless_null $P871, vivify_558
    new $P871, "Undef"
  vivify_558:
    $P872 = $P871."name"()
    if $P872, unless_870_end
    .const 'Sub' $P874 = "131_1303418077.916" 
    capture_lex $P874
    $P874()
  unless_870_end:
  unless_843_end:
.annotate 'line', 934
    find_lex $P897, "$key"
    unless_null $P897, vivify_566
    new $P897, "Undef"
  vivify_566:
    set $S898, $P897
    iseq $I899, $S898, "POSTFIX"
    if $I899, if_896
.annotate 'line', 936
    find_lex $P905, "$/"
    unless_null $P905, vivify_567
    new $P905, "Undef"
  vivify_567:
    $P906 = $P905."list"()
    defined $I907, $P906
    unless $I907, for_undef_568
    iter $P904, $P906
    new $P922, 'ExceptionHandler'
    set_label $P922, loop921_handler
    $P922."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P922
  loop921_test:
    unless $P904, loop921_done
    shift $P908, $P904
  loop921_redo:
    .const 'Sub' $P910 = "132_1303418077.916" 
    capture_lex $P910
    $P910($P908)
  loop921_next:
    goto loop921_test
  loop921_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P923, exception, 'type'
    eq $P923, .CONTROL_LOOP_NEXT, loop921_next
    eq $P923, .CONTROL_LOOP_REDO, loop921_redo
  loop921_done:
    pop_eh 
  for_undef_568:
.annotate 'line', 935
    goto if_896_end
  if_896:
.annotate 'line', 934
    find_lex $P900, "$past"
    unless_null $P900, vivify_572
    new $P900, "Undef"
  vivify_572:
    find_lex $P901, "$/"
    unless_null $P901, vivify_573
    $P901 = root_new ['parrot';'ResizablePMCArray']
  vivify_573:
    set $P902, $P901[0]
    unless_null $P902, vivify_574
    new $P902, "Undef"
  vivify_574:
    $P903 = $P902."ast"()
    $P900."unshift"($P903)
  if_896_end:
.annotate 'line', 938
    find_lex $P924, "$/"
    find_lex $P925, "$past"
    unless_null $P925, vivify_575
    new $P925, "Undef"
  vivify_575:
    $P926 = $P924."!make"($P925)
.annotate 'line', 921
    .return ($P926)
  control_824:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P927, exception, "payload"
    .return ($P927)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block873"  :anon :subid("131_1303418077.916") :outer("130_1303418077.916")
.annotate 'line', 930
    new $P875, "Undef"
    .lex "$name", $P875
.annotate 'line', 929
    find_lex $P877, "$key"
    unless_null $P877, vivify_559
    new $P877, "Undef"
  vivify_559:
    set $S878, $P877
    iseq $I879, $S878, "LIST"
    unless $I879, if_876_end
    new $P880, "String"
    assign $P880, "infix"
    store_lex "$key", $P880
  if_876_end:
.annotate 'line', 930
    find_lex $P881, "$key"
    unless_null $P881, vivify_560
    new $P881, "Undef"
  vivify_560:
    set $S882, $P881
    downcase $S883, $S882
    new $P884, 'String'
    set $P884, $S883
    concat $P885, $P884, ":<"
    find_lex $P886, "$/"
    unless_null $P886, vivify_561
    $P886 = root_new ['parrot';'Hash']
  vivify_561:
    set $P887, $P886["OPER"]
    unless_null $P887, vivify_562
    $P887 = root_new ['parrot';'Hash']
  vivify_562:
    set $P888, $P887["sym"]
    unless_null $P888, vivify_563
    new $P888, "Undef"
  vivify_563:
    concat $P889, $P885, $P888
    concat $P890, $P889, ">"
    store_lex "$name", $P890
.annotate 'line', 931
    find_lex $P891, "$past"
    unless_null $P891, vivify_564
    new $P891, "Undef"
  vivify_564:
    new $P892, "String"
    assign $P892, "&"
    find_lex $P893, "$name"
    unless_null $P893, vivify_565
    new $P893, "Undef"
  vivify_565:
    concat $P894, $P892, $P893
    $P895 = $P891."name"($P894)
.annotate 'line', 928
    .return ($P895)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block909"  :anon :subid("132_1303418077.916") :outer("130_1303418077.916")
    .param pmc param_911
.annotate 'line', 936
    .lex "$_", param_911
    find_lex $P914, "$_"
    unless_null $P914, vivify_569
    new $P914, "Undef"
  vivify_569:
    $P915 = $P914."ast"()
    defined $I916, $P915
    if $I916, if_913
    new $P912, 'Integer'
    set $P912, $I916
    goto if_913_end
  if_913:
    find_lex $P917, "$past"
    unless_null $P917, vivify_570
    new $P917, "Undef"
  vivify_570:
    find_lex $P918, "$_"
    unless_null $P918, vivify_571
    new $P918, "Undef"
  vivify_571:
    $P919 = $P918."ast"()
    $P920 = $P917."push"($P919)
    set $P912, $P920
  if_913_end:
    .return ($P912)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_929
    .param pmc param_930
.annotate 'line', 941
    .lex "self", param_929
    .lex "$/", param_930
    find_lex $P931, "$/"
    find_lex $P932, "$/"
    unless_null $P932, vivify_576
    $P932 = root_new ['parrot';'Hash']
  vivify_576:
    set $P933, $P932["circumfix"]
    unless_null $P933, vivify_577
    new $P933, "Undef"
  vivify_577:
    $P934 = $P933."ast"()
    $P935 = $P931."!make"($P934)
    .return ($P935)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_937
    .param pmc param_938
.annotate 'line', 943
    .lex "self", param_937
    .lex "$/", param_938
    find_lex $P939, "$/"
    find_lex $P940, "$/"
    unless_null $P940, vivify_578
    $P940 = root_new ['parrot';'Hash']
  vivify_578:
    set $P941, $P940["term"]
    unless_null $P941, vivify_579
    new $P941, "Undef"
  vivify_579:
    $P942 = $P941."ast"()
    $P943 = $P939."!make"($P942)
    .return ($P943)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_945
    .param pmc param_946
.annotate 'line', 944
    .lex "self", param_945
    .lex "$/", param_946
    find_lex $P947, "$/"
    new $P948, "Undef"
    $P949 = $P947."!make"($P948)
    .return ($P949)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_951
    .param pmc param_952
.annotate 'line', 945
    .lex "self", param_951
    .lex "$/", param_952
    find_lex $P953, "$/"
    find_lex $P954, "$/"
    unless_null $P954, vivify_580
    $P954 = root_new ['parrot';'Hash']
  vivify_580:
    set $P955, $P954["term"]
    unless_null $P955, vivify_581
    new $P955, "Undef"
  vivify_581:
    $P956 = $P955."ast"()
    $P957 = $P953."!make"($P956)
    .return ($P957)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_959
    .param pmc param_960
.annotate 'line', 947
    .lex "self", param_959
    .lex "$/", param_960
    find_lex $P961, "$/"
    find_lex $P962, "$/"
    unless_null $P962, vivify_582
    $P962 = root_new ['parrot';'Hash']
  vivify_582:
    set $P963, $P962["VALUE"]
    unless_null $P963, vivify_583
    new $P963, "Undef"
  vivify_583:
    $P964 = $P963."ast"()
    $P965 = $P961."!make"($P964)
    .return ($P965)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_967
    .param pmc param_968
.annotate 'line', 949
    .lex "self", param_967
    .lex "$/", param_968
    find_lex $P969, "$/"
    find_lex $P970, "$/"
    unless_null $P970, vivify_584
    new $P970, "Undef"
  vivify_584:
    set $N971, $P970
    $P972 = $P969."!make"($N971)
    .return ($P972)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_974
    .param pmc param_975
.annotate 'line', 951
    .lex "self", param_974
    .lex "$/", param_975
    find_lex $P976, "$/"
    find_lex $P977, "$/"
    unless_null $P977, vivify_585
    new $P977, "Undef"
  vivify_585:
    $P978 = "string_to_int"($P977, 10)
    $P979 = $P976."!make"($P978)
    .return ($P979)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_981
    .param pmc param_982
.annotate 'line', 952
    .lex "self", param_981
    .lex "$/", param_982
    find_lex $P983, "$/"
    find_lex $P984, "$/"
    unless_null $P984, vivify_586
    new $P984, "Undef"
  vivify_586:
    $P985 = "string_to_int"($P984, 16)
    $P986 = $P983."!make"($P985)
    .return ($P986)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_988
    .param pmc param_989
.annotate 'line', 953
    .lex "self", param_988
    .lex "$/", param_989
    find_lex $P990, "$/"
    find_lex $P991, "$/"
    unless_null $P991, vivify_587
    new $P991, "Undef"
  vivify_587:
    $P992 = "string_to_int"($P991, 8)
    $P993 = $P990."!make"($P992)
    .return ($P993)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_995
    .param pmc param_996
.annotate 'line', 954
    .lex "self", param_995
    .lex "$/", param_996
    find_lex $P997, "$/"
    find_lex $P998, "$/"
    unless_null $P998, vivify_588
    new $P998, "Undef"
  vivify_588:
    $P999 = "string_to_int"($P998, 2)
    $P1000 = $P997."!make"($P999)
    .return ($P1000)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1002
    .param pmc param_1003
.annotate 'line', 956
    .const 'Sub' $P1019 = "144_1303418077.916" 
    capture_lex $P1019
    .lex "self", param_1002
    .lex "$/", param_1003
.annotate 'line', 957
    new $P1004, "Undef"
    .lex "$past", $P1004
    find_lex $P1005, "$/"
    unless_null $P1005, vivify_589
    $P1005 = root_new ['parrot';'Hash']
  vivify_589:
    set $P1006, $P1005["quote_delimited"]
    unless_null $P1006, vivify_590
    new $P1006, "Undef"
  vivify_590:
    $P1007 = $P1006."ast"()
    store_lex "$past", $P1007
.annotate 'line', 958
    find_lex $P1009, "$/"
    unless_null $P1009, vivify_591
    new $P1009, "Undef"
  vivify_591:
    $P1010 = $P1009."CURSOR"()
    $P1011 = $P1010."quotemod_check"("w")
    unless $P1011, if_1008_end
.annotate 'line', 959
    get_hll_global $P1013, ["PAST"], "Node"
    find_lex $P1014, "$past"
    unless_null $P1014, vivify_592
    new $P1014, "Undef"
  vivify_592:
    $P1015 = $P1013."ACCEPTS"($P1014)
    if $P1015, if_1012
.annotate 'line', 962
    .const 'Sub' $P1019 = "144_1303418077.916" 
    capture_lex $P1019
    $P1019()
    goto if_1012_end
  if_1012:
.annotate 'line', 960
    find_lex $P1016, "$/"
    unless_null $P1016, vivify_603
    new $P1016, "Undef"
  vivify_603:
    $P1017 = $P1016."CURSOR"()
    $P1017."panic"("Can't form :w list from non-constant strings (yet)")
  if_1012_end:
  if_1008_end:
.annotate 'line', 973
    get_hll_global $P1051, ["PAST"], "Node"
    find_lex $P1052, "$past"
    unless_null $P1052, vivify_604
    new $P1052, "Undef"
  vivify_604:
    $P1053 = $P1051."ACCEPTS"($P1052)
    isfalse $I1054, $P1053
    unless $I1054, if_1050_end
.annotate 'line', 974
    get_hll_global $P1055, ["PAST"], "Val"
    find_lex $P1056, "$past"
    unless_null $P1056, vivify_605
    new $P1056, "Undef"
  vivify_605:
    set $S1057, $P1056
    $P1058 = $P1055."new"($S1057 :named("value"))
    store_lex "$past", $P1058
  if_1050_end:
.annotate 'line', 976
    find_lex $P1059, "$/"
    find_lex $P1060, "$past"
    unless_null $P1060, vivify_606
    new $P1060, "Undef"
  vivify_606:
    $P1061 = $P1059."!make"($P1060)
.annotate 'line', 956
    .return ($P1061)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1018"  :anon :subid("144_1303418077.916") :outer("143_1303418077.916")
.annotate 'line', 962
    .const 'Sub' $P1038 = "145_1303418077.916" 
    capture_lex $P1038
.annotate 'line', 963
    $P1020 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P1020
    get_hll_global $P1021, ["HLL";"Grammar"], "split_words"
    find_lex $P1022, "$/"
    unless_null $P1022, vivify_593
    new $P1022, "Undef"
  vivify_593:
    find_lex $P1023, "$past"
    unless_null $P1023, vivify_594
    new $P1023, "Undef"
  vivify_594:
    $P1024 = $P1021($P1022, $P1023)
    store_lex "@words", $P1024
.annotate 'line', 964
    find_lex $P1027, "@words"
    unless_null $P1027, vivify_595
    $P1027 = root_new ['parrot';'ResizablePMCArray']
  vivify_595:
    set $N1028, $P1027
    isne $I1029, $N1028, 1.0
    if $I1029, if_1026
.annotate 'line', 969
    find_lex $P1046, "@words"
    unless_null $P1046, vivify_596
    $P1046 = root_new ['parrot';'ResizablePMCArray']
  vivify_596:
    set $P1047, $P1046[0]
    unless_null $P1047, vivify_597
    new $P1047, "Undef"
  vivify_597:
    set $S1048, $P1047
    new $P1049, 'String'
    set $P1049, $S1048
    store_lex "$past", $P1049
.annotate 'line', 968
    set $P1025, $P1049
.annotate 'line', 964
    goto if_1026_end
  if_1026:
.annotate 'line', 965
    get_hll_global $P1030, ["PAST"], "Op"
    find_lex $P1031, "$/"
    unless_null $P1031, vivify_598
    new $P1031, "Undef"
  vivify_598:
    $P1032 = $P1030."new"("list" :named("pasttype"), $P1031 :named("node"))
    store_lex "$past", $P1032
.annotate 'line', 966
    find_lex $P1034, "@words"
    unless_null $P1034, vivify_599
    $P1034 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    defined $I1035, $P1034
    unless $I1035, for_undef_600
    iter $P1033, $P1034
    new $P1044, 'ExceptionHandler'
    set_label $P1044, loop1043_handler
    $P1044."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1044
  loop1043_test:
    unless $P1033, loop1043_done
    shift $P1036, $P1033
  loop1043_redo:
    .const 'Sub' $P1038 = "145_1303418077.916" 
    capture_lex $P1038
    $P1038($P1036)
  loop1043_next:
    goto loop1043_test
  loop1043_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1045, exception, 'type'
    eq $P1045, .CONTROL_LOOP_NEXT, loop1043_next
    eq $P1045, .CONTROL_LOOP_REDO, loop1043_redo
  loop1043_done:
    pop_eh 
  for_undef_600:
.annotate 'line', 964
    set $P1025, $P1033
  if_1026_end:
.annotate 'line', 962
    .return ($P1025)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1037"  :anon :subid("145_1303418077.916") :outer("144_1303418077.916")
    .param pmc param_1039
.annotate 'line', 966
    .lex "$_", param_1039
    find_lex $P1040, "$past"
    unless_null $P1040, vivify_601
    new $P1040, "Undef"
  vivify_601:
    find_lex $P1041, "$_"
    unless_null $P1041, vivify_602
    new $P1041, "Undef"
  vivify_602:
    $P1042 = $P1040."push"($P1041)
    .return ($P1042)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1063
    .param pmc param_1064
.annotate 'line', 979
    .const 'Sub' $P1076 = "147_1303418077.916" 
    capture_lex $P1076
    .lex "self", param_1063
    .lex "$/", param_1064
.annotate 'line', 980
    $P1065 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P1065
.annotate 'line', 981
    new $P1066, "Undef"
    .lex "$lastlit", $P1066
.annotate 'line', 997
    new $P1067, "Undef"
    .lex "$past", $P1067
.annotate 'line', 979
    find_lex $P1068, "@parts"
    unless_null $P1068, vivify_607
    $P1068 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
.annotate 'line', 981
    new $P1069, "String"
    assign $P1069, ""
    store_lex "$lastlit", $P1069
.annotate 'line', 982
    find_lex $P1071, "$/"
    unless_null $P1071, vivify_608
    $P1071 = root_new ['parrot';'Hash']
  vivify_608:
    set $P1072, $P1071["quote_atom"]
    unless_null $P1072, vivify_609
    new $P1072, "Undef"
  vivify_609:
    defined $I1073, $P1072
    unless $I1073, for_undef_610
    iter $P1070, $P1072
    new $P1109, 'ExceptionHandler'
    set_label $P1109, loop1108_handler
    $P1109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1109
  loop1108_test:
    unless $P1070, loop1108_done
    shift $P1074, $P1070
  loop1108_redo:
    .const 'Sub' $P1076 = "147_1303418077.916" 
    capture_lex $P1076
    $P1076($P1074)
  loop1108_next:
    goto loop1108_test
  loop1108_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1110, exception, 'type'
    eq $P1110, .CONTROL_LOOP_NEXT, loop1108_next
    eq $P1110, .CONTROL_LOOP_REDO, loop1108_redo
  loop1108_done:
    pop_eh 
  for_undef_610:
.annotate 'line', 996
    find_lex $P1112, "$lastlit"
    unless_null $P1112, vivify_623
    new $P1112, "Undef"
  vivify_623:
    set $S1113, $P1112
    isgt $I1114, $S1113, ""
    unless $I1114, if_1111_end
    find_lex $P1115, "@parts"
    unless_null $P1115, vivify_624
    $P1115 = root_new ['parrot';'ResizablePMCArray']
  vivify_624:
    find_lex $P1116, "$lastlit"
    unless_null $P1116, vivify_625
    new $P1116, "Undef"
  vivify_625:
    $P1115."push"($P1116)
  if_1111_end:
.annotate 'line', 997
    find_lex $P1119, "@parts"
    unless_null $P1119, vivify_626
    $P1119 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    if $P1119, if_1118
    new $P1122, "String"
    assign $P1122, ""
    set $P1117, $P1122
    goto if_1118_end
  if_1118:
    find_lex $P1120, "@parts"
    unless_null $P1120, vivify_627
    $P1120 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    $P1121 = $P1120."shift"()
    set $P1117, $P1121
  if_1118_end:
    store_lex "$past", $P1117
.annotate 'line', 998
    new $P1130, 'ExceptionHandler'
    set_label $P1130, loop1129_handler
    $P1130."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1130
  loop1129_test:
    find_lex $P1123, "@parts"
    unless_null $P1123, vivify_628
    $P1123 = root_new ['parrot';'ResizablePMCArray']
  vivify_628:
    unless $P1123, loop1129_done
  loop1129_redo:
.annotate 'line', 999
    get_hll_global $P1124, ["PAST"], "Op"
    find_lex $P1125, "$past"
    unless_null $P1125, vivify_629
    new $P1125, "Undef"
  vivify_629:
    find_lex $P1126, "@parts"
    unless_null $P1126, vivify_630
    $P1126 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    $P1127 = $P1126."shift"()
    $P1128 = $P1124."new"($P1125, $P1127, "concat" :named("pirop"))
    store_lex "$past", $P1128
  loop1129_next:
.annotate 'line', 998
    goto loop1129_test
  loop1129_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1131, exception, 'type'
    eq $P1131, .CONTROL_LOOP_NEXT, loop1129_next
    eq $P1131, .CONTROL_LOOP_REDO, loop1129_redo
  loop1129_done:
    pop_eh 
.annotate 'line', 1001
    find_lex $P1132, "$/"
    find_lex $P1133, "$past"
    unless_null $P1133, vivify_631
    new $P1133, "Undef"
  vivify_631:
    $P1134 = $P1132."!make"($P1133)
.annotate 'line', 979
    .return ($P1134)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1075"  :anon :subid("147_1303418077.916") :outer("146_1303418077.916")
    .param pmc param_1078
.annotate 'line', 983
    new $P1077, "Undef"
    .lex "$ast", $P1077
    .lex "$_", param_1078
    find_lex $P1079, "$_"
    unless_null $P1079, vivify_611
    new $P1079, "Undef"
  vivify_611:
    $P1080 = $P1079."ast"()
    store_lex "$ast", $P1080
.annotate 'line', 984
    get_hll_global $P1083, ["PAST"], "Node"
    find_lex $P1084, "$ast"
    unless_null $P1084, vivify_612
    new $P1084, "Undef"
  vivify_612:
    $P1085 = $P1083."ACCEPTS"($P1084)
    isfalse $I1086, $P1085
    if $I1086, if_1082
.annotate 'line', 987
    find_lex $P1092, "$ast"
    unless_null $P1092, vivify_613
    new $P1092, "Undef"
  vivify_613:
    get_hll_global $P1093, ["PAST"], "Val"
    $P1094 = $P1092."isa"($P1093)
    if $P1094, if_1091
.annotate 'line', 991
    find_lex $P1100, "$lastlit"
    unless_null $P1100, vivify_614
    new $P1100, "Undef"
  vivify_614:
    set $S1101, $P1100
    isgt $I1102, $S1101, ""
    unless $I1102, if_1099_end
    find_lex $P1103, "@parts"
    unless_null $P1103, vivify_615
    $P1103 = root_new ['parrot';'ResizablePMCArray']
  vivify_615:
    find_lex $P1104, "$lastlit"
    unless_null $P1104, vivify_616
    new $P1104, "Undef"
  vivify_616:
    $P1103."push"($P1104)
  if_1099_end:
.annotate 'line', 992
    find_lex $P1105, "@parts"
    unless_null $P1105, vivify_617
    $P1105 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    find_lex $P1106, "$ast"
    unless_null $P1106, vivify_618
    new $P1106, "Undef"
  vivify_618:
    $P1105."push"($P1106)
.annotate 'line', 993
    new $P1107, "String"
    assign $P1107, ""
    store_lex "$lastlit", $P1107
.annotate 'line', 990
    set $P1090, $P1107
.annotate 'line', 987
    goto if_1091_end
  if_1091:
.annotate 'line', 988
    find_lex $P1095, "$lastlit"
    unless_null $P1095, vivify_619
    new $P1095, "Undef"
  vivify_619:
    find_lex $P1096, "$ast"
    unless_null $P1096, vivify_620
    new $P1096, "Undef"
  vivify_620:
    $S1097 = $P1096."value"()
    concat $P1098, $P1095, $S1097
    store_lex "$lastlit", $P1098
.annotate 'line', 987
    set $P1090, $P1098
  if_1091_end:
    set $P1081, $P1090
.annotate 'line', 984
    goto if_1082_end
  if_1082:
.annotate 'line', 985
    find_lex $P1087, "$lastlit"
    unless_null $P1087, vivify_621
    new $P1087, "Undef"
  vivify_621:
    find_lex $P1088, "$ast"
    unless_null $P1088, vivify_622
    new $P1088, "Undef"
  vivify_622:
    concat $P1089, $P1087, $P1088
    store_lex "$lastlit", $P1089
.annotate 'line', 984
    set $P1081, $P1089
  if_1082_end:
.annotate 'line', 982
    .return ($P1081)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1136
    .param pmc param_1137
.annotate 'line', 1004
    .lex "self", param_1136
    .lex "$/", param_1137
.annotate 'line', 1005
    find_lex $P1138, "$/"
    find_lex $P1141, "$/"
    unless_null $P1141, vivify_632
    $P1141 = root_new ['parrot';'Hash']
  vivify_632:
    set $P1142, $P1141["quote_escape"]
    unless_null $P1142, vivify_633
    new $P1142, "Undef"
  vivify_633:
    if $P1142, if_1140
    find_lex $P1146, "$/"
    unless_null $P1146, vivify_634
    new $P1146, "Undef"
  vivify_634:
    set $S1147, $P1146
    new $P1139, 'String'
    set $P1139, $S1147
    goto if_1140_end
  if_1140:
    find_lex $P1143, "$/"
    unless_null $P1143, vivify_635
    $P1143 = root_new ['parrot';'Hash']
  vivify_635:
    set $P1144, $P1143["quote_escape"]
    unless_null $P1144, vivify_636
    new $P1144, "Undef"
  vivify_636:
    $P1145 = $P1144."ast"()
    set $P1139, $P1145
  if_1140_end:
    $P1148 = $P1138."!make"($P1139)
.annotate 'line', 1004
    .return ($P1148)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1150
    .param pmc param_1151
.annotate 'line', 1008
    .lex "self", param_1150
    .lex "$/", param_1151
    find_lex $P1152, "$/"
    $P1153 = $P1152."!make"("\\")
    .return ($P1153)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1155
    .param pmc param_1156
.annotate 'line', 1009
    .lex "self", param_1155
    .lex "$/", param_1156
    find_lex $P1157, "$/"
    find_lex $P1158, "$/"
    unless_null $P1158, vivify_637
    $P1158 = root_new ['parrot';'Hash']
  vivify_637:
    set $P1159, $P1158["stopper"]
    unless_null $P1159, vivify_638
    new $P1159, "Undef"
  vivify_638:
    set $S1160, $P1159
    $P1161 = $P1157."!make"($S1160)
    .return ($P1161)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1163
    .param pmc param_1164
.annotate 'line', 1011
    .lex "self", param_1163
    .lex "$/", param_1164
    find_lex $P1165, "$/"
    $P1166 = $P1165."!make"("\b")
    .return ($P1166)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1168
    .param pmc param_1169
.annotate 'line', 1012
    .lex "self", param_1168
    .lex "$/", param_1169
    find_lex $P1170, "$/"
    $P1171 = $P1170."!make"("\n")
    .return ($P1171)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1173
    .param pmc param_1174
.annotate 'line', 1013
    .lex "self", param_1173
    .lex "$/", param_1174
    find_lex $P1175, "$/"
    $P1176 = $P1175."!make"("\r")
    .return ($P1176)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1178
    .param pmc param_1179
.annotate 'line', 1014
    .lex "self", param_1178
    .lex "$/", param_1179
    find_lex $P1180, "$/"
    $P1181 = $P1180."!make"("\t")
    .return ($P1181)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1183
    .param pmc param_1184
.annotate 'line', 1015
    .lex "self", param_1183
    .lex "$/", param_1184
    find_lex $P1185, "$/"
    $P1186 = $P1185."!make"("\f")
    .return ($P1186)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1188
    .param pmc param_1189
.annotate 'line', 1016
    .lex "self", param_1188
    .lex "$/", param_1189
    find_lex $P1190, "$/"
    $P1191 = $P1190."!make"("\e")
    .return ($P1191)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1193
    .param pmc param_1194
.annotate 'line', 1018
    .lex "self", param_1193
    .lex "$/", param_1194
.annotate 'line', 1019
    find_lex $P1195, "$/"
    find_lex $P1198, "$/"
    unless_null $P1198, vivify_639
    $P1198 = root_new ['parrot';'Hash']
  vivify_639:
    set $P1199, $P1198["hexint"]
    unless_null $P1199, vivify_640
    new $P1199, "Undef"
  vivify_640:
    if $P1199, if_1197
    find_lex $P1202, "$/"
    unless_null $P1202, vivify_641
    $P1202 = root_new ['parrot';'Hash']
  vivify_641:
    set $P1203, $P1202["hexints"]
    unless_null $P1203, vivify_642
    $P1203 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1204, $P1203["hexint"]
    unless_null $P1204, vivify_643
    new $P1204, "Undef"
  vivify_643:
    set $P1196, $P1204
    goto if_1197_end
  if_1197:
    find_lex $P1200, "$/"
    unless_null $P1200, vivify_644
    $P1200 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1201, $P1200["hexint"]
    unless_null $P1201, vivify_645
    new $P1201, "Undef"
  vivify_645:
    set $P1196, $P1201
  if_1197_end:
    $P1205 = "ints_to_string"($P1196)
    $P1206 = $P1195."!make"($P1205)
.annotate 'line', 1018
    .return ($P1206)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1208
    .param pmc param_1209
.annotate 'line', 1022
    .lex "self", param_1208
    .lex "$/", param_1209
.annotate 'line', 1023
    find_lex $P1210, "$/"
    find_lex $P1213, "$/"
    unless_null $P1213, vivify_646
    $P1213 = root_new ['parrot';'Hash']
  vivify_646:
    set $P1214, $P1213["octint"]
    unless_null $P1214, vivify_647
    new $P1214, "Undef"
  vivify_647:
    if $P1214, if_1212
    find_lex $P1217, "$/"
    unless_null $P1217, vivify_648
    $P1217 = root_new ['parrot';'Hash']
  vivify_648:
    set $P1218, $P1217["octints"]
    unless_null $P1218, vivify_649
    $P1218 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1219, $P1218["octint"]
    unless_null $P1219, vivify_650
    new $P1219, "Undef"
  vivify_650:
    set $P1211, $P1219
    goto if_1212_end
  if_1212:
    find_lex $P1215, "$/"
    unless_null $P1215, vivify_651
    $P1215 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1216, $P1215["octint"]
    unless_null $P1216, vivify_652
    new $P1216, "Undef"
  vivify_652:
    set $P1211, $P1216
  if_1212_end:
    $P1220 = "ints_to_string"($P1211)
    $P1221 = $P1210."!make"($P1220)
.annotate 'line', 1022
    .return ($P1221)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1223
    .param pmc param_1224
.annotate 'line', 1026
    .lex "self", param_1223
    .lex "$/", param_1224
.annotate 'line', 1027
    find_lex $P1225, "$/"
    find_lex $P1226, "$/"
    unless_null $P1226, vivify_653
    $P1226 = root_new ['parrot';'Hash']
  vivify_653:
    set $P1227, $P1226["charspec"]
    unless_null $P1227, vivify_654
    new $P1227, "Undef"
  vivify_654:
    $P1228 = $P1227."ast"()
    $P1229 = $P1225."!make"($P1228)
.annotate 'line', 1026
    .return ($P1229)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1231
    .param pmc param_1232
.annotate 'line', 1030
    .lex "self", param_1231
    .lex "$/", param_1232
.annotate 'line', 1031
    find_lex $P1233, "$/"
    $P1234 = $P1233."!make"(unicode:"\x{0}")
.annotate 'line', 1030
    .return ($P1234)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1236
    .param pmc param_1237
.annotate 'line', 1034
    .lex "self", param_1236
    .lex "$/", param_1237
.annotate 'line', 1035
    find_lex $P1238, "$/"
    find_lex $P1241, "$/"
    unless_null $P1241, vivify_655
    $P1241 = root_new ['parrot';'Hash']
  vivify_655:
    set $P1242, $P1241["textq"]
    unless_null $P1242, vivify_656
    new $P1242, "Undef"
  vivify_656:
    if $P1242, if_1240
    find_lex $P1248, "$/"
    unless_null $P1248, vivify_657
    $P1248 = root_new ['parrot';'Hash']
  vivify_657:
    set $P1249, $P1248["textqq"]
    unless_null $P1249, vivify_658
    new $P1249, "Undef"
  vivify_658:
    $P1250 = $P1249."Str"()
    set $P1239, $P1250
    goto if_1240_end
  if_1240:
    new $P1243, "String"
    assign $P1243, "\\"
    find_lex $P1244, "$/"
    unless_null $P1244, vivify_659
    $P1244 = root_new ['parrot';'Hash']
  vivify_659:
    set $P1245, $P1244["textq"]
    unless_null $P1245, vivify_660
    new $P1245, "Undef"
  vivify_660:
    $S1246 = $P1245."Str"()
    concat $P1247, $P1243, $S1246
    set $P1239, $P1247
  if_1240_end:
    $P1251 = $P1238."!make"($P1239)
.annotate 'line', 1034
    .return ($P1251)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'line', 1038
    .lex "self", param_1253
    .lex "$/", param_1254
.annotate 'line', 1039
    new $P1255, "Undef"
    .lex "$codepoint", $P1255
.annotate 'line', 1040
    find_lex $P1258, "$/"
    unless_null $P1258, vivify_661
    $P1258 = root_new ['parrot';'Hash']
  vivify_661:
    set $P1259, $P1258["integer"]
    unless_null $P1259, vivify_662
    new $P1259, "Undef"
  vivify_662:
    if $P1259, if_1257
.annotate 'line', 1041
    find_lex $P1263, "$/"
    unless_null $P1263, vivify_663
    new $P1263, "Undef"
  vivify_663:
    set $S1264, $P1263
    find_codepoint $I1265, $S1264
    new $P1256, 'Integer'
    set $P1256, $I1265
.annotate 'line', 1040
    goto if_1257_end
  if_1257:
    find_lex $P1260, "$/"
    unless_null $P1260, vivify_664
    $P1260 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1261, $P1260["integer"]
    unless_null $P1261, vivify_665
    new $P1261, "Undef"
  vivify_665:
    $P1262 = $P1261."ast"()
    set $P1256, $P1262
  if_1257_end:
    store_lex "$codepoint", $P1256
.annotate 'line', 1042
    find_lex $P1267, "$codepoint"
    unless_null $P1267, vivify_666
    new $P1267, "Undef"
  vivify_666:
    set $N1268, $P1267
    islt $I1269, $N1268, 0.0
    unless $I1269, if_1266_end
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_667
    new $P1270, "Undef"
  vivify_667:
    $P1271 = $P1270."CURSOR"()
    new $P1272, 'String'
    set $P1272, "Unrecognized character name "
    find_lex $P1273, "$/"
    unless_null $P1273, vivify_668
    new $P1273, "Undef"
  vivify_668:
    concat $P1274, $P1272, $P1273
    $P1271."panic"($P1274)
  if_1266_end:
.annotate 'line', 1043
    find_lex $P1275, "$/"
    find_lex $P1276, "$codepoint"
    unless_null $P1276, vivify_669
    new $P1276, "Undef"
  vivify_669:
    set $I1277, $P1276
    chr $S1278, $I1277
    $P1279 = $P1275."!make"($S1278)
.annotate 'line', 1038
    .return ($P1279)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1281
    .param pmc param_1282
.annotate 'line', 1046
    .const 'Sub' $P1291 = "164_1303418077.916" 
    capture_lex $P1291
    .lex "self", param_1281
    .lex "$/", param_1282
.annotate 'line', 1047
    new $P1283, "Undef"
    .lex "$str", $P1283
    new $P1284, "String"
    assign $P1284, ""
    store_lex "$str", $P1284
.annotate 'line', 1048
    find_lex $P1286, "$/"
    unless_null $P1286, vivify_670
    $P1286 = root_new ['parrot';'Hash']
  vivify_670:
    set $P1287, $P1286["charname"]
    unless_null $P1287, vivify_671
    new $P1287, "Undef"
  vivify_671:
    defined $I1288, $P1287
    unless $I1288, for_undef_672
    iter $P1285, $P1287
    new $P1298, 'ExceptionHandler'
    set_label $P1298, loop1297_handler
    $P1298."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1298
  loop1297_test:
    unless $P1285, loop1297_done
    shift $P1289, $P1285
  loop1297_redo:
    .const 'Sub' $P1291 = "164_1303418077.916" 
    capture_lex $P1291
    $P1291($P1289)
  loop1297_next:
    goto loop1297_test
  loop1297_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1299, exception, 'type'
    eq $P1299, .CONTROL_LOOP_NEXT, loop1297_next
    eq $P1299, .CONTROL_LOOP_REDO, loop1297_redo
  loop1297_done:
    pop_eh 
  for_undef_672:
.annotate 'line', 1049
    find_lex $P1300, "$/"
    find_lex $P1301, "$str"
    unless_null $P1301, vivify_675
    new $P1301, "Undef"
  vivify_675:
    $P1302 = $P1300."!make"($P1301)
.annotate 'line', 1046
    .return ($P1302)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1290"  :anon :subid("164_1303418077.916") :outer("163_1303418077.916")
    .param pmc param_1292
.annotate 'line', 1048
    .lex "$_", param_1292
    find_lex $P1293, "$str"
    unless_null $P1293, vivify_673
    new $P1293, "Undef"
  vivify_673:
    find_lex $P1294, "$_"
    unless_null $P1294, vivify_674
    new $P1294, "Undef"
  vivify_674:
    $S1295 = $P1294."ast"()
    concat $P1296, $P1293, $S1295
    store_lex "$str", $P1296
    .return ($P1296)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1303418077.916") :outer("120_1303418077.916")
    .param pmc param_1304
    .param pmc param_1305
.annotate 'line', 1052
    .lex "self", param_1304
    .lex "$/", param_1305
.annotate 'line', 1053
    find_lex $P1306, "$/"
    find_lex $P1309, "$/"
    unless_null $P1309, vivify_676
    $P1309 = root_new ['parrot';'Hash']
  vivify_676:
    set $P1310, $P1309["charnames"]
    unless_null $P1310, vivify_677
    new $P1310, "Undef"
  vivify_677:
    if $P1310, if_1308
    find_lex $P1314, "$/"
    unless_null $P1314, vivify_678
    new $P1314, "Undef"
  vivify_678:
    $I1315 = "string_to_int"($P1314, 10)
    chr $S1316, $I1315
    new $P1307, 'String'
    set $P1307, $S1316
    goto if_1308_end
  if_1308:
    find_lex $P1311, "$/"
    unless_null $P1311, vivify_679
    $P1311 = root_new ['parrot';'Hash']
  vivify_679:
    set $P1312, $P1311["charnames"]
    unless_null $P1312, vivify_680
    new $P1312, "Undef"
  vivify_680:
    $P1313 = $P1312."ast"()
    set $P1307, $P1313
  if_1308_end:
    $P1317 = $P1306."!make"($P1307)
.annotate 'line', 1052
    .return ($P1317)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1392"  :subid("167_1303418077.916") :outer("10_1303418077.916")
.annotate 'line', 1066
    .const 'Sub' $P2544 = "233_1303418077.916" 
    capture_lex $P2544
    .const 'Sub' $P2536 = "232_1303418077.916" 
    capture_lex $P2536
    .const 'Sub' $P2483 = "230_1303418077.916" 
    capture_lex $P2483
    .const 'Sub' $P2410 = "227_1303418077.916" 
    capture_lex $P2410
    .const 'Sub' $P2380 = "225_1303418077.916" 
    capture_lex $P2380
    .const 'Sub' $P2375 = "224_1303418077.916" 
    capture_lex $P2375
    .const 'Sub' $P2365 = "223_1303418077.916" 
    capture_lex $P2365
    .const 'Sub' $P2339 = "221_1303418077.916" 
    capture_lex $P2339
    .const 'Sub' $P2330 = "220_1303418077.916" 
    capture_lex $P2330
    .const 'Sub' $P2322 = "219_1303418077.916" 
    capture_lex $P2322
    .const 'Sub' $P2314 = "218_1303418077.916" 
    capture_lex $P2314
    .const 'Sub' $P2310 = "217_1303418077.916" 
    capture_lex $P2310
    .const 'Sub' $P2306 = "216_1303418077.916" 
    capture_lex $P2306
    .const 'Sub' $P2239 = "214_1303418077.916" 
    capture_lex $P2239
    .const 'Sub' $P2143 = "210_1303418077.916" 
    capture_lex $P2143
    .const 'Sub' $P2107 = "207_1303418077.916" 
    capture_lex $P2107
    .const 'Sub' $P2059 = "205_1303418077.916" 
    capture_lex $P2059
    .const 'Sub' $P2046 = "204_1303418077.916" 
    capture_lex $P2046
    .const 'Sub' $P2033 = "203_1303418077.916" 
    capture_lex $P2033
    .const 'Sub' $P2020 = "202_1303418077.916" 
    capture_lex $P2020
    .const 'Sub' $P2007 = "201_1303418077.916" 
    capture_lex $P2007
    .const 'Sub' $P1994 = "200_1303418077.916" 
    capture_lex $P1994
    .const 'Sub' $P1981 = "199_1303418077.916" 
    capture_lex $P1981
    .const 'Sub' $P1968 = "198_1303418077.916" 
    capture_lex $P1968
    .const 'Sub' $P1955 = "197_1303418077.916" 
    capture_lex $P1955
    .const 'Sub' $P1950 = "196_1303418077.916" 
    capture_lex $P1950
    .const 'Sub' $P1946 = "195_1303418077.916" 
    capture_lex $P1946
    .const 'Sub' $P1906 = "193_1303418077.916" 
    capture_lex $P1906
    .const 'Sub' $P1753 = "186_1303418077.916" 
    capture_lex $P1753
    .const 'Sub' $P1740 = "185_1303418077.916" 
    capture_lex $P1740
    .const 'Sub' $P1647 = "180_1303418077.916" 
    capture_lex $P1647
    .const 'Sub' $P1614 = "178_1303418077.916" 
    capture_lex $P1614
    .const 'Sub' $P1599 = "177_1303418077.916" 
    capture_lex $P1599
    .const 'Sub' $P1584 = "176_1303418077.916" 
    capture_lex $P1584
    .const 'Sub' $P1497 = "173_1303418077.916" 
    capture_lex $P1497
    .const 'Sub' $P1438 = "171_1303418077.916" 
    capture_lex $P1438
    .const 'Sub' $P1431 = "170_1303418077.916" 
    capture_lex $P1431
    .const 'Sub' $P1411 = "169_1303418077.916" 
    capture_lex $P1411
    .const 'Sub' $P1394 = "168_1303418077.916" 
    capture_lex $P1394
.annotate 'line', 1126
    .const 'Sub' $P1394 = "168_1303418077.916" 
    newclosure $P1407, $P1394
    .lex "value_type", $P1407
.annotate 'line', 1066
    .lex "$?PACKAGE", $P1408
    .lex "$?CLASS", $P1409
.annotate 'line', 1088
    .const 'Sub' $P1411 = "169_1303418077.916" 
    capture_lex $P1411
    $P1411()
.annotate 'line', 1066
    find_lex $P1425, "$?PACKAGE"
    get_who $P1426, $P1425
    set $P1427, $P1426["$interactive_ctx"]
    unless_null $P1427, vivify_688
    new $P1427, "Undef"
  vivify_688:
    find_lex $P1428, "$?PACKAGE"
    get_who $P1429, $P1428
    set $P1430, $P1429["%interactive_pad"]
    unless_null $P1430, vivify_689
    $P1430 = root_new ['parrot';'Hash']
  vivify_689:
.annotate 'line', 1106
    find_lex $P1496, "value_type"
.annotate 'line', 1722
    .const 'Sub' $P2536 = "232_1303418077.916" 
    newclosure $P2542, $P2536
.annotate 'line', 1066
    .return ($P2542)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post681") :outer("167_1303418077.916")
.annotate 'line', 1066
    .const 'Sub' $P1393 = "167_1303418077.916" 
    .local pmc block
    set block, $P1393
    .const 'Sub' $P2544 = "233_1303418077.916" 
    capture_lex $P2544
    $P2544()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2543"  :anon :subid("233_1303418077.916") :outer("167_1303418077.916")
.annotate 'line', 1066
    nqp_get_sc_object $P2545, "1303418070.084", 3
    .local pmc type_obj
    set type_obj, $P2545
    get_how $P2546, type_obj
    get_hll_global $P2547, "NQPAttribute"
    $P2548 = $P2547."new"("@!stages" :named("name"))
    $P2546."add_attribute"(type_obj, $P2548)
    get_how $P2549, type_obj
    get_hll_global $P2550, "NQPAttribute"
    $P2551 = $P2550."new"("$!parsegrammar" :named("name"))
    $P2549."add_attribute"(type_obj, $P2551)
    get_how $P2552, type_obj
    get_hll_global $P2553, "NQPAttribute"
    $P2554 = $P2553."new"("$!parseactions" :named("name"))
    $P2552."add_attribute"(type_obj, $P2554)
    get_how $P2555, type_obj
    get_hll_global $P2556, "NQPAttribute"
    $P2557 = $P2556."new"("$!astgrammar" :named("name"))
    $P2555."add_attribute"(type_obj, $P2557)
    get_how $P2558, type_obj
    get_hll_global $P2559, "NQPAttribute"
    $P2560 = $P2559."new"("$!commandline_banner" :named("name"))
    $P2558."add_attribute"(type_obj, $P2560)
    get_how $P2561, type_obj
    get_hll_global $P2562, "NQPAttribute"
    $P2563 = $P2562."new"("$!commandline_prompt" :named("name"))
    $P2561."add_attribute"(type_obj, $P2563)
    get_how $P2564, type_obj
    get_hll_global $P2565, "NQPAttribute"
    $P2566 = $P2565."new"("@!cmdoptions" :named("name"))
    $P2564."add_attribute"(type_obj, $P2566)
    get_how $P2567, type_obj
    get_hll_global $P2568, "NQPAttribute"
    $P2569 = $P2568."new"("$!usage" :named("name"))
    $P2567."add_attribute"(type_obj, $P2569)
    get_how $P2570, type_obj
    get_hll_global $P2571, "NQPAttribute"
    $P2572 = $P2571."new"("$!version" :named("name"))
    $P2570."add_attribute"(type_obj, $P2572)
    get_how $P2573, type_obj
    get_hll_global $P2574, "NQPAttribute"
    $P2575 = $P2574."new"("$!compiler_progname" :named("name"))
    $P2573."add_attribute"(type_obj, $P2575)
    get_how $P2576, type_obj
    get_hll_global $P2577, "NQPAttribute"
    $P2578 = $P2577."new"("$!language" :named("name"))
    $P2576."add_attribute"(type_obj, $P2578)
    get_how $P2579, type_obj
    .const 'Sub' $P2580 = "170_1303418077.916" 
    $P2579."add_method"(type_obj, "new", $P2580)
    get_how $P2581, type_obj
    .const 'Sub' $P2582 = "171_1303418077.916" 
    $P2581."add_method"(type_obj, "BUILD", $P2582)
    get_how $P2583, type_obj
    .const 'Sub' $P2584 = "173_1303418077.916" 
    $P2583."add_method"(type_obj, "get_exports", $P2584)
    get_how $P2585, type_obj
    .const 'Sub' $P2586 = "176_1303418077.916" 
    $P2585."add_method"(type_obj, "get_module", $P2586)
    get_how $P2587, type_obj
    .const 'Sub' $P2588 = "177_1303418077.916" 
    $P2587."add_method"(type_obj, "language", $P2588)
    get_how $P2589, type_obj
    .const 'Sub' $P2590 = "178_1303418077.916" 
    $P2589."add_method"(type_obj, "load_module", $P2590)
    get_how $P2591, type_obj
    .const 'Sub' $P2592 = "180_1303418077.916" 
    $P2591."add_method"(type_obj, "import", $P2592)
    get_how $P2593, type_obj
    .const 'Sub' $P2594 = "185_1303418077.916" 
    $P2593."add_method"(type_obj, "autoprint", $P2594)
    get_how $P2595, type_obj
    .const 'Sub' $P2596 = "186_1303418077.916" 
    $P2595."add_method"(type_obj, "interactive", $P2596)
    get_how $P2597, type_obj
    .const 'Sub' $P2598 = "193_1303418077.916" 
    $P2597."add_method"(type_obj, "eval", $P2598)
    get_how $P2599, type_obj
    .const 'Sub' $P2600 = "195_1303418077.916" 
    $P2599."add_method"(type_obj, "ctxsave", $P2600)
    get_how $P2601, type_obj
    .const 'Sub' $P2602 = "196_1303418077.916" 
    $P2601."add_method"(type_obj, "panic", $P2602)
    get_how $P2603, type_obj
    .const 'Sub' $P2604 = "197_1303418077.916" 
    $P2603."add_method"(type_obj, "stages", $P2604)
    get_how $P2605, type_obj
    .const 'Sub' $P2606 = "198_1303418077.916" 
    $P2605."add_method"(type_obj, "parsegrammar", $P2606)
    get_how $P2607, type_obj
    .const 'Sub' $P2608 = "199_1303418077.916" 
    $P2607."add_method"(type_obj, "parseactions", $P2608)
    get_how $P2609, type_obj
    .const 'Sub' $P2610 = "200_1303418077.916" 
    $P2609."add_method"(type_obj, "astgrammar", $P2610)
    get_how $P2611, type_obj
    .const 'Sub' $P2612 = "201_1303418077.916" 
    $P2611."add_method"(type_obj, "commandline_banner", $P2612)
    get_how $P2613, type_obj
    .const 'Sub' $P2614 = "202_1303418077.916" 
    $P2613."add_method"(type_obj, "commandline_prompt", $P2614)
    get_how $P2615, type_obj
    .const 'Sub' $P2616 = "203_1303418077.916" 
    $P2615."add_method"(type_obj, "compiler_progname", $P2616)
    get_how $P2617, type_obj
    .const 'Sub' $P2618 = "204_1303418077.916" 
    $P2617."add_method"(type_obj, "commandline_options", $P2618)
    get_how $P2619, type_obj
    .const 'Sub' $P2620 = "205_1303418077.916" 
    $P2619."add_method"(type_obj, "command_line", $P2620)
    get_how $P2621, type_obj
    .const 'Sub' $P2622 = "207_1303418077.916" 
    $P2621."add_method"(type_obj, "process_args", $P2622)
    get_how $P2623, type_obj
    .const 'Sub' $P2624 = "210_1303418077.916" 
    $P2623."add_method"(type_obj, "evalfiles", $P2624)
    get_how $P2625, type_obj
    .const 'Sub' $P2626 = "214_1303418077.916" 
    $P2625."add_method"(type_obj, "compile", $P2626)
    get_how $P2627, type_obj
    .const 'Sub' $P2628 = "216_1303418077.916" 
    $P2627."add_method"(type_obj, "parse", $P2628)
    get_how $P2629, type_obj
    .const 'Sub' $P2630 = "217_1303418077.916" 
    $P2629."add_method"(type_obj, "past", $P2630)
    get_how $P2631, type_obj
    .const 'Sub' $P2632 = "218_1303418077.916" 
    $P2631."add_method"(type_obj, "post", $P2632)
    get_how $P2633, type_obj
    .const 'Sub' $P2634 = "219_1303418077.916" 
    $P2633."add_method"(type_obj, "pir", $P2634)
    get_how $P2635, type_obj
    .const 'Sub' $P2636 = "220_1303418077.916" 
    $P2635."add_method"(type_obj, "evalpmc", $P2636)
    get_how $P2637, type_obj
    .const 'Sub' $P2638 = "221_1303418077.916" 
    $P2637."add_method"(type_obj, "dumper", $P2638)
    get_how $P2639, type_obj
    .const 'Sub' $P2640 = "223_1303418077.916" 
    $P2639."add_method"(type_obj, "usage", $P2640)
    get_how $P2641, type_obj
    .const 'Sub' $P2642 = "224_1303418077.916" 
    $P2641."add_method"(type_obj, "version", $P2642)
    get_how $P2643, type_obj
    .const 'Sub' $P2644 = "225_1303418077.916" 
    $P2643."add_method"(type_obj, "removestage", $P2644)
    get_how $P2645, type_obj
    .const 'Sub' $P2646 = "227_1303418077.916" 
    $P2645."add_method"(type_obj, "addstage", $P2646)
    get_how $P2647, type_obj
    .const 'Sub' $P2648 = "230_1303418077.916" 
    $P2647."add_method"(type_obj, "parse_name", $P2648)
    get_how $P2649, type_obj
    .const 'Sub' $P2650 = "232_1303418077.916" 
    $P2649."add_method"(type_obj, "lineof", $P2650)
    get_how $P2651, type_obj
    nqp_get_sc_object $P2652, "1303418068.989", 4
    $P2651."set_default_parent"(type_obj, $P2652)
    get_how $P2653, type_obj
    $P2654 = $P2653."compose"(type_obj)
    .return ($P2654)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1395
.annotate 'line', 1126
    .lex "$value", param_1395
.annotate 'line', 1127
    find_lex $P1398, "$value"
    unless_null $P1398, vivify_682
    new $P1398, "Undef"
  vivify_682:
    isa $I1399, $P1398, "NameSpace"
    if $I1399, if_1397
.annotate 'line', 1129
    find_lex $P1403, "$value"
    unless_null $P1403, vivify_683
    new $P1403, "Undef"
  vivify_683:
    isa $I1404, $P1403, "Sub"
    if $I1404, if_1402
    new $P1406, "String"
    assign $P1406, "var"
    set $P1401, $P1406
    goto if_1402_end
  if_1402:
    new $P1405, "String"
    assign $P1405, "sub"
    set $P1401, $P1405
  if_1402_end:
    set $P1396, $P1401
.annotate 'line', 1127
    goto if_1397_end
  if_1397:
    new $P1400, "String"
    assign $P1400, "namespace"
    set $P1396, $P1400
  if_1397_end:
.annotate 'line', 1126
    .return ($P1396)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1410"  :anon :subid("169_1303418077.916") :outer("167_1303418077.916")
.annotate 'line', 1093
    $P1412 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1412
.annotate 'line', 1090
    getinterp $P1413
    set $P1414, $P1413["context"]
    unless_null $P1414, vivify_684
    new $P1414, "Undef"
  vivify_684:
    find_lex $P1415, "$?PACKAGE"
    get_who $P1416, $P1415
    set $P1416["$interactive_ctx"], $P1414
    find_lex $P1417, "%pad_contents"
    unless_null $P1417, vivify_685
    $P1417 = root_new ['parrot';'Hash']
  vivify_685:
.annotate 'line', 1095
    find_lex $P1418, "$?PACKAGE"
    get_who $P1419, $P1418
    set $P1420, $P1419["$interactive_ctx"]
    unless_null $P1420, vivify_686
    new $P1420, "Undef"
  vivify_686:
    getattribute $P1421, $P1420, "lex_pad"
    find_lex $P1422, "%pad_contents"
    unless_null $P1422, vivify_687
    $P1422 = root_new ['parrot';'Hash']
  vivify_687:
    copy $P1421, $P1422
.annotate 'line', 1094
    find_lex $P1423, "$?PACKAGE"
    get_who $P1424, $P1423
    set $P1424["%interactive_pad"], $P1421
.annotate 'line', 1088
    .return ($P1421)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("170_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1432
.annotate 'line', 1100
    .lex "self", param_1432
.annotate 'line', 1101
    new $P1433, "Undef"
    .lex "$obj", $P1433
    find_lex $P1434, "self"
    repr_instance_of $P1435, $P1434
    store_lex "$obj", $P1435
.annotate 'line', 1102
    find_lex $P1436, "$obj"
    unless_null $P1436, vivify_690
    new $P1436, "Undef"
  vivify_690:
    $P1436."BUILD"()
    find_lex $P1437, "$obj"
    unless_null $P1437, vivify_691
    new $P1437, "Undef"
  vivify_691:
.annotate 'line', 1100
    .return ($P1437)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1439
.annotate 'line', 1106
    .const 'Sub' $P1460 = "172_1303418077.916" 
    capture_lex $P1460
    .lex "self", param_1439
.annotate 'line', 1116
    new $P1440, "Undef"
    .lex "$config_hash_idx", $P1440
.annotate 'line', 1120
    $P1441 = root_new ['parrot';'Hash']
    .lex "%config", $P1441
.annotate 'line', 1121
    new $P1442, "Undef"
    .lex "$version", $P1442
.annotate 'line', 1122
    new $P1443, "Undef"
    .lex "$revision", $P1443
.annotate 'line', 1108
    split $P1444, " ", "parse past post pir evalpmc"
    find_lex $P1445, "self"
    find_lex $P1446, "$?CLASS"
    setattribute $P1445, $P1446, "@!stages", $P1444
.annotate 'line', 1111
    split $P1447, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1448, "self"
    find_lex $P1449, "$?CLASS"
    setattribute $P1448, $P1449, "@!cmdoptions", $P1447
.annotate 'line', 1112
    new $P1450, "String"
    assign $P1450, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1451, "self"
    find_lex $P1452, "$?CLASS"
    setattribute $P1451, $P1452, "$!usage", $P1450
.annotate 'line', 1113
    find_lex $P1454, "self"
    find_lex $P1455, "$?CLASS"
    getattribute $P1456, $P1454, $P1455, "@!cmdoptions"
    unless_null $P1456, vivify_692
    $P1456 = root_new ['parrot';'ResizablePMCArray']
  vivify_692:
    defined $I1457, $P1456
    unless $I1457, for_undef_693
    iter $P1453, $P1456
    new $P1473, 'ExceptionHandler'
    set_label $P1473, loop1472_handler
    $P1473."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1473
  loop1472_test:
    unless $P1453, loop1472_done
    shift $P1458, $P1453
  loop1472_redo:
    .const 'Sub' $P1460 = "172_1303418077.916" 
    capture_lex $P1460
    $P1460($P1458)
  loop1472_next:
    goto loop1472_test
  loop1472_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1474, exception, 'type'
    eq $P1474, .CONTROL_LOOP_NEXT, loop1472_next
    eq $P1474, .CONTROL_LOOP_REDO, loop1472_redo
  loop1472_done:
    pop_eh 
  for_undef_693:
.annotate 'line', 1116

            .include 'iglobals.pasm'
            $P1475 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1475
.annotate 'line', 1120
    find_lex $P1476, "$config_hash_idx"
    unless_null $P1476, vivify_696
    new $P1476, "Undef"
  vivify_696:
    set $I1477, $P1476
    getinterp $P1478
    set $P1479, $P1478[$I1477]
    unless_null $P1479, vivify_697
    new $P1479, "Undef"
  vivify_697:
    store_lex "%config", $P1479
.annotate 'line', 1121
    find_lex $P1480, "%config"
    unless_null $P1480, vivify_698
    $P1480 = root_new ['parrot';'Hash']
  vivify_698:
    set $P1481, $P1480["VERSION"]
    unless_null $P1481, vivify_699
    new $P1481, "Undef"
  vivify_699:
    store_lex "$version", $P1481
.annotate 'line', 1122
    find_lex $P1483, "%config"
    unless_null $P1483, vivify_700
    $P1483 = root_new ['parrot';'Hash']
  vivify_700:
    set $P1484, $P1483["git_describe"]
    unless_null $P1484, vivify_701
    new $P1484, "Undef"
  vivify_701:
    set $P1482, $P1484
    defined $I1486, $P1482
    if $I1486, default_1485
    new $P1487, "String"
    assign $P1487, "(unknown)"
    set $P1482, $P1487
  default_1485:
    store_lex "$revision", $P1482
.annotate 'line', 1123
    new $P1488, 'String'
    set $P1488, "This compiler is built with NQP, parrot "
    find_lex $P1489, "$version"
    unless_null $P1489, vivify_702
    new $P1489, "Undef"
  vivify_702:
    concat $P1490, $P1488, $P1489
    concat $P1491, $P1490, ", revision "
    find_lex $P1492, "$revision"
    unless_null $P1492, vivify_703
    new $P1492, "Undef"
  vivify_703:
    concat $P1493, $P1491, $P1492
    find_lex $P1494, "self"
    find_lex $P1495, "$?CLASS"
    setattribute $P1494, $P1495, "$!version", $P1493
.annotate 'line', 1106
    .return ($P1493)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1459"  :anon :subid("172_1303418077.916") :outer("171_1303418077.916")
    .param pmc param_1461
.annotate 'line', 1113
    .lex "$_", param_1461
.annotate 'line', 1114
    find_lex $P1462, "self"
    find_lex $P1463, "$?CLASS"
    getattribute $P1464, $P1462, $P1463, "$!usage"
    unless_null $P1464, vivify_694
    new $P1464, "Undef"
  vivify_694:
    new $P1465, 'String'
    set $P1465, "    "
    find_lex $P1466, "$_"
    unless_null $P1466, vivify_695
    new $P1466, "Undef"
  vivify_695:
    concat $P1467, $P1465, $P1466
    concat $P1468, $P1467, "\n"
    concat $P1469, $P1464, $P1468
    find_lex $P1470, "self"
    find_lex $P1471, "$?CLASS"
    setattribute $P1470, $P1471, "$!usage", $P1469
.annotate 'line', 1113
    .return ($P1469)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("173_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1498
    .param pmc param_1499
    .param pmc param_1502 :slurpy
    .param pmc param_1500 :optional :named("tagset")
    .param int has_param_1500 :opt_flag
.annotate 'line', 1132
    .const 'Sub' $P1568 = "175_1303418077.916" 
    capture_lex $P1568
    .const 'Sub' $P1547 = "174_1303418077.916" 
    capture_lex $P1547
    .lex "self", param_1498
    .lex "$module", param_1499
    if has_param_1500, optparam_704
    new $P1501, "Undef"
    set param_1500, $P1501
  optparam_704:
    .lex "$tagset", param_1500
    .lex "@symbols", param_1502
.annotate 'line', 1139
    $P1503 = root_new ['parrot';'Hash']
    .lex "%exports", $P1503
.annotate 'line', 1140
    $P1504 = root_new ['parrot';'Hash']
    .lex "%source", $P1504
.annotate 'line', 1134
    find_lex $P1506, "$module"
    unless_null $P1506, vivify_705
    new $P1506, "Undef"
  vivify_705:
    does $I1507, $P1506, "hash"
    new $P1508, 'Integer'
    set $P1508, $I1507
    isfalse $I1509, $P1508
    unless $I1509, if_1505_end
.annotate 'line', 1135
    find_lex $P1510, "self"
    find_lex $P1511, "$module"
    unless_null $P1511, vivify_706
    new $P1511, "Undef"
  vivify_706:
    $P1512 = $P1510."get_module"($P1511)
    store_lex "$module", $P1512
  if_1505_end:
.annotate 'line', 1138
    find_lex $P1514, "$tagset"
    unless_null $P1514, vivify_707
    new $P1514, "Undef"
  vivify_707:
    set $P1513, $P1514
    defined $I1516, $P1513
    if $I1516, default_1515
    find_lex $P1519, "@symbols"
    unless_null $P1519, vivify_708
    $P1519 = root_new ['parrot';'ResizablePMCArray']
  vivify_708:
    if $P1519, if_1518
    new $P1521, "String"
    assign $P1521, "DEFAULT"
    set $P1517, $P1521
    goto if_1518_end
  if_1518:
    new $P1520, "String"
    assign $P1520, "ALL"
    set $P1517, $P1520
  if_1518_end:
    set $P1513, $P1517
  default_1515:
    store_lex "$tagset", $P1513
    find_lex $P1522, "%exports"
    unless_null $P1522, vivify_709
    $P1522 = root_new ['parrot';'Hash']
  vivify_709:
.annotate 'line', 1140
    find_lex $P1523, "$tagset"
    unless_null $P1523, vivify_710
    new $P1523, "Undef"
  vivify_710:
    set $S1524, $P1523
    find_lex $P1525, "$module"
    unless_null $P1525, vivify_711
    $P1525 = root_new ['parrot';'Hash']
  vivify_711:
    set $P1526, $P1525["EXPORT"]
    unless_null $P1526, vivify_712
    $P1526 = root_new ['parrot';'Hash']
  vivify_712:
    set $P1527, $P1526[$S1524]
    unless_null $P1527, vivify_713
    new $P1527, "Undef"
  vivify_713:
    store_lex "%source", $P1527
.annotate 'line', 1141
    find_lex $P1529, "%source"
    unless_null $P1529, vivify_714
    $P1529 = root_new ['parrot';'Hash']
  vivify_714:
    defined $I1530, $P1529
    new $P1531, 'Integer'
    set $P1531, $I1530
    isfalse $I1532, $P1531
    unless $I1532, if_1528_end
.annotate 'line', 1142
    find_lex $P1535, "$tagset"
    unless_null $P1535, vivify_715
    new $P1535, "Undef"
  vivify_715:
    set $S1536, $P1535
    iseq $I1537, $S1536, "ALL"
    if $I1537, if_1534
    $P1539 = root_new ['parrot';'Hash']
    set $P1533, $P1539
    goto if_1534_end
  if_1534:
    find_lex $P1538, "$module"
    unless_null $P1538, vivify_716
    new $P1538, "Undef"
  vivify_716:
    set $P1533, $P1538
  if_1534_end:
    store_lex "%source", $P1533
  if_1528_end:
.annotate 'line', 1144
    find_lex $P1541, "@symbols"
    unless_null $P1541, vivify_717
    $P1541 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    if $P1541, if_1540
.annotate 'line', 1151
    find_lex $P1564, "%source"
    unless_null $P1564, vivify_718
    $P1564 = root_new ['parrot';'Hash']
  vivify_718:
    defined $I1565, $P1564
    unless $I1565, for_undef_719
    iter $P1563, $P1564
    new $P1581, 'ExceptionHandler'
    set_label $P1581, loop1580_handler
    $P1581."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1581
  loop1580_test:
    unless $P1563, loop1580_done
    shift $P1566, $P1563
  loop1580_redo:
    .const 'Sub' $P1568 = "175_1303418077.916" 
    capture_lex $P1568
    $P1568($P1566)
  loop1580_next:
    goto loop1580_test
  loop1580_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1582, exception, 'type'
    eq $P1582, .CONTROL_LOOP_NEXT, loop1580_next
    eq $P1582, .CONTROL_LOOP_REDO, loop1580_redo
  loop1580_done:
    pop_eh 
  for_undef_719:
.annotate 'line', 1150
    goto if_1540_end
  if_1540:
.annotate 'line', 1145
    find_lex $P1543, "@symbols"
    unless_null $P1543, vivify_726
    $P1543 = root_new ['parrot';'ResizablePMCArray']
  vivify_726:
    defined $I1544, $P1543
    unless $I1544, for_undef_727
    iter $P1542, $P1543
    new $P1561, 'ExceptionHandler'
    set_label $P1561, loop1560_handler
    $P1561."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1561
  loop1560_test:
    unless $P1542, loop1560_done
    shift $P1545, $P1542
  loop1560_redo:
    .const 'Sub' $P1547 = "174_1303418077.916" 
    capture_lex $P1547
    $P1547($P1545)
  loop1560_next:
    goto loop1560_test
  loop1560_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1562, exception, 'type'
    eq $P1562, .CONTROL_LOOP_NEXT, loop1560_next
    eq $P1562, .CONTROL_LOOP_REDO, loop1560_redo
  loop1560_done:
    pop_eh 
  for_undef_727:
  if_1540_end:
.annotate 'line', 1144
    find_lex $P1583, "%exports"
    unless_null $P1583, vivify_736
    $P1583 = root_new ['parrot';'Hash']
  vivify_736:
.annotate 'line', 1132
    .return ($P1583)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1567"  :anon :subid("175_1303418077.916") :outer("173_1303418077.916")
    .param pmc param_1570
.annotate 'line', 1152
    new $P1569, "Undef"
    .lex "$value", $P1569
    .lex "$_", param_1570
    find_lex $P1571, "$_"
    unless_null $P1571, vivify_720
    new $P1571, "Undef"
  vivify_720:
    $P1572 = $P1571."value"()
    store_lex "$value", $P1572
.annotate 'line', 1153
    find_lex $P1573, "$value"
    unless_null $P1573, vivify_721
    new $P1573, "Undef"
  vivify_721:
    find_lex $P1574, "$_"
    unless_null $P1574, vivify_722
    new $P1574, "Undef"
  vivify_722:
    $P1575 = $P1574."key"()
    find_lex $P1576, "$value"
    unless_null $P1576, vivify_723
    new $P1576, "Undef"
  vivify_723:
    $P1577 = "value_type"($P1576)
    find_lex $P1578, "%exports"
    unless_null $P1578, vivify_724
    $P1578 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1578
  vivify_724:
    set $P1579, $P1578[$P1577]
    unless_null $P1579, vivify_725
    $P1579 = root_new ['parrot';'Hash']
    set $P1578[$P1577], $P1579
  vivify_725:
    set $P1579[$P1575], $P1573
.annotate 'line', 1151
    .return ($P1573)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1546"  :anon :subid("174_1303418077.916") :outer("173_1303418077.916")
    .param pmc param_1549
.annotate 'line', 1146
    new $P1548, "Undef"
    .lex "$value", $P1548
    .lex "$_", param_1549
    find_lex $P1550, "$_"
    unless_null $P1550, vivify_728
    new $P1550, "Undef"
  vivify_728:
    set $S1551, $P1550
    find_lex $P1552, "%source"
    unless_null $P1552, vivify_729
    $P1552 = root_new ['parrot';'Hash']
  vivify_729:
    set $P1553, $P1552[$S1551]
    unless_null $P1553, vivify_730
    new $P1553, "Undef"
  vivify_730:
    store_lex "$value", $P1553
.annotate 'line', 1147
    find_lex $P1554, "$value"
    unless_null $P1554, vivify_731
    new $P1554, "Undef"
  vivify_731:
    find_lex $P1555, "$_"
    unless_null $P1555, vivify_732
    new $P1555, "Undef"
  vivify_732:
    find_lex $P1556, "$value"
    unless_null $P1556, vivify_733
    new $P1556, "Undef"
  vivify_733:
    $P1557 = "value_type"($P1556)
    find_lex $P1558, "%exports"
    unless_null $P1558, vivify_734
    $P1558 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1558
  vivify_734:
    set $P1559, $P1558[$P1557]
    unless_null $P1559, vivify_735
    $P1559 = root_new ['parrot';'Hash']
    set $P1558[$P1557], $P1559
  vivify_735:
    set $P1559[$P1555], $P1554
.annotate 'line', 1145
    .return ($P1554)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1585
    .param pmc param_1586
.annotate 'line', 1159
    .lex "self", param_1585
    .lex "$name", param_1586
.annotate 'line', 1160
    $P1587 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1587
    find_lex $P1588, "self"
    find_lex $P1589, "$name"
    unless_null $P1589, vivify_737
    new $P1589, "Undef"
  vivify_737:
    $P1590 = $P1588."parse_name"($P1589)
    store_lex "@name", $P1590
.annotate 'line', 1161
    find_lex $P1591, "@name"
    unless_null $P1591, vivify_738
    $P1591 = root_new ['parrot';'ResizablePMCArray']
  vivify_738:
    find_lex $P1592, "self"
    find_lex $P1593, "$?CLASS"
    getattribute $P1594, $P1592, $P1593, "$!language"
    unless_null $P1594, vivify_739
    new $P1594, "Undef"
  vivify_739:
    set $S1595, $P1594
    downcase $S1596, $S1595
    $P1591."unshift"($S1596)
.annotate 'line', 1162
    find_lex $P1597, "@name"
    unless_null $P1597, vivify_740
    $P1597 = root_new ['parrot';'ResizablePMCArray']
  vivify_740:
    get_root_namespace $P1598, $P1597
.annotate 'line', 1159
    .return ($P1598)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1600
    .param pmc param_1601 :optional
    .param int has_param_1601 :opt_flag
.annotate 'line', 1165
    .lex "self", param_1600
    if has_param_1601, optparam_741
    new $P1602, "Undef"
    set param_1601, $P1602
  optparam_741:
    .lex "$name", param_1601
.annotate 'line', 1166
    find_lex $P1604, "$name"
    unless_null $P1604, vivify_742
    new $P1604, "Undef"
  vivify_742:
    unless $P1604, if_1603_end
.annotate 'line', 1167
    find_lex $P1605, "$name"
    unless_null $P1605, vivify_743
    new $P1605, "Undef"
  vivify_743:
    find_lex $P1606, "self"
    find_lex $P1607, "$?CLASS"
    setattribute $P1606, $P1607, "$!language", $P1605
.annotate 'line', 1168
    find_lex $P1608, "$name"
    unless_null $P1608, vivify_744
    new $P1608, "Undef"
  vivify_744:
    set $S1609, $P1608
    find_lex $P1610, "self"
    compreg $S1609, $P1610
  if_1603_end:
.annotate 'line', 1166
    find_lex $P1611, "self"
    find_lex $P1612, "$?CLASS"
    getattribute $P1613, $P1611, $P1612, "$!language"
    unless_null $P1613, vivify_745
    new $P1613, "Undef"
  vivify_745:
.annotate 'line', 1165
    .return ($P1613)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1615
    .param pmc param_1616
.annotate 'line', 1173
    .const 'Sub' $P1626 = "179_1303418077.916" 
    capture_lex $P1626
    .lex "self", param_1615
    .lex "$name", param_1616
.annotate 'line', 1174
    new $P1617, "Undef"
    .lex "$base", $P1617
.annotate 'line', 1175
    new $P1618, "Undef"
    .lex "$loaded", $P1618
.annotate 'line', 1174
    find_lex $P1619, "self"
    find_lex $P1620, "$name"
    unless_null $P1620, vivify_746
    new $P1620, "Undef"
  vivify_746:
    $P1621 = $P1619."parse_name"($P1620)
    join $S1622, "/", $P1621
    new $P1623, 'String'
    set $P1623, $S1622
    store_lex "$base", $P1623
.annotate 'line', 1175
    new $P1624, "Integer"
    assign $P1624, 0
    store_lex "$loaded", $P1624
.annotate 'line', 1176
    .const 'Sub' $P1626 = "179_1303418077.916" 
    capture_lex $P1626
    $P1626()
.annotate 'line', 1177
    find_lex $P1639, "$loaded"
    unless_null $P1639, vivify_748
    new $P1639, "Undef"
  vivify_748:
    if $P1639, unless_1638_end
    find_lex $P1640, "$base"
    unless_null $P1640, vivify_749
    new $P1640, "Undef"
  vivify_749:
    concat $P1641, $P1640, ".pir"
    set $S1642, $P1641
    load_bytecode $S1642
    new $P1643, "Integer"
    assign $P1643, 1
    store_lex "$loaded", $P1643
  unless_1638_end:
.annotate 'line', 1178
    find_lex $P1644, "self"
    find_lex $P1645, "$name"
    unless_null $P1645, vivify_750
    new $P1645, "Undef"
  vivify_750:
    $P1646 = $P1644."get_module"($P1645)
.annotate 'line', 1173
    .return ($P1646)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1625"  :anon :subid("179_1303418077.916") :outer("178_1303418077.916")
.annotate 'line', 1176
    new $P1633, 'ExceptionHandler'
    set_label $P1633, control_1632
    $P1633."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1633
    find_lex $P1627, "$base"
    unless_null $P1627, vivify_747
    new $P1627, "Undef"
  vivify_747:
    concat $P1628, $P1627, ".pbc"
    set $S1629, $P1628
    load_bytecode $S1629
    new $P1630, "Integer"
    assign $P1630, 1
    store_lex "$loaded", $P1630
    pop_eh 
    goto skip_handler_1631
  control_1632:
    .local pmc exception 
    .get_results (exception) 
    new $P1636, 'Integer'
    set $P1636, 1
    set exception["handled"], $P1636
    set $I1637, exception["handled"]
    ne $I1637, 1, nothandled_1635
  handled_1634:
    .return (exception)
  nothandled_1635:
    rethrow exception
  skip_handler_1631:
    .return ($P1630)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("180_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1648
    .param pmc param_1649
    .param pmc param_1650
.annotate 'line', 1181
    .const 'Sub' $P1656 = "181_1303418077.916" 
    capture_lex $P1656
    .lex "self", param_1648
    .lex "$target", param_1649
    .lex "%exports", param_1650
.annotate 'line', 1182
    find_lex $P1652, "%exports"
    unless_null $P1652, vivify_751
    $P1652 = root_new ['parrot';'Hash']
  vivify_751:
    defined $I1653, $P1652
    unless $I1653, for_undef_752
    iter $P1651, $P1652
    new $P1738, 'ExceptionHandler'
    set_label $P1738, loop1737_handler
    $P1738."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1738
  loop1737_test:
    unless $P1651, loop1737_done
    shift $P1654, $P1651
  loop1737_redo:
    .const 'Sub' $P1656 = "181_1303418077.916" 
    capture_lex $P1656
    $P1656($P1654)
  loop1737_next:
    goto loop1737_test
  loop1737_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1739, exception, 'type'
    eq $P1739, .CONTROL_LOOP_NEXT, loop1737_next
    eq $P1739, .CONTROL_LOOP_REDO, loop1737_redo
  loop1737_done:
    pop_eh 
  for_undef_752:
.annotate 'line', 1181
    .return ($P1651)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1655"  :anon :subid("181_1303418077.916") :outer("180_1303418077.916")
    .param pmc param_1659
.annotate 'line', 1182
    .const 'Sub' $P1726 = "184_1303418077.916" 
    capture_lex $P1726
    .const 'Sub' $P1706 = "183_1303418077.916" 
    capture_lex $P1706
    .const 'Sub' $P1677 = "182_1303418077.916" 
    capture_lex $P1677
.annotate 'line', 1183
    new $P1657, "Undef"
    .lex "$type", $P1657
.annotate 'line', 1184
    $P1658 = root_new ['parrot';'Hash']
    .lex "%items", $P1658
    .lex "$_", param_1659
.annotate 'line', 1183
    find_lex $P1660, "$_"
    unless_null $P1660, vivify_753
    new $P1660, "Undef"
  vivify_753:
    $P1661 = $P1660."key"()
    store_lex "$type", $P1661
.annotate 'line', 1184
    find_lex $P1662, "$_"
    unless_null $P1662, vivify_754
    new $P1662, "Undef"
  vivify_754:
    $P1663 = $P1662."value"()
    store_lex "%items", $P1663
.annotate 'line', 1185
    find_lex $P1666, "self"
    new $P1667, 'String'
    set $P1667, "import_"
    find_lex $P1668, "$type"
    unless_null $P1668, vivify_755
    new $P1668, "Undef"
  vivify_755:
    concat $P1669, $P1667, $P1668
    set $S1670, $P1669
    can $I1671, $P1666, $S1670
    if $I1671, if_1665
.annotate 'line', 1188
    find_lex $P1695, "$target"
    unless_null $P1695, vivify_756
    new $P1695, "Undef"
  vivify_756:
    new $P1696, 'String'
    set $P1696, "add_"
    find_lex $P1697, "$type"
    unless_null $P1697, vivify_757
    new $P1697, "Undef"
  vivify_757:
    concat $P1698, $P1696, $P1697
    set $S1699, $P1698
    can $I1700, $P1695, $S1699
    if $I1700, if_1694
.annotate 'line', 1192
    find_lex $P1722, "%items"
    unless_null $P1722, vivify_758
    $P1722 = root_new ['parrot';'Hash']
  vivify_758:
    defined $I1723, $P1722
    unless $I1723, for_undef_759
    iter $P1721, $P1722
    new $P1735, 'ExceptionHandler'
    set_label $P1735, loop1734_handler
    $P1735."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1735
  loop1734_test:
    unless $P1721, loop1734_done
    shift $P1724, $P1721
  loop1734_redo:
    .const 'Sub' $P1726 = "184_1303418077.916" 
    capture_lex $P1726
    $P1726($P1724)
  loop1734_next:
    goto loop1734_test
  loop1734_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1736, exception, 'type'
    eq $P1736, .CONTROL_LOOP_NEXT, loop1734_next
    eq $P1736, .CONTROL_LOOP_REDO, loop1734_redo
  loop1734_done:
    pop_eh 
  for_undef_759:
.annotate 'line', 1191
    set $P1693, $P1721
.annotate 'line', 1188
    goto if_1694_end
  if_1694:
.annotate 'line', 1189
    find_lex $P1702, "%items"
    unless_null $P1702, vivify_763
    $P1702 = root_new ['parrot';'Hash']
  vivify_763:
    defined $I1703, $P1702
    unless $I1703, for_undef_764
    iter $P1701, $P1702
    new $P1719, 'ExceptionHandler'
    set_label $P1719, loop1718_handler
    $P1719."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1719
  loop1718_test:
    unless $P1701, loop1718_done
    shift $P1704, $P1701
  loop1718_redo:
    .const 'Sub' $P1706 = "183_1303418077.916" 
    capture_lex $P1706
    $P1706($P1704)
  loop1718_next:
    goto loop1718_test
  loop1718_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1720, exception, 'type'
    eq $P1720, .CONTROL_LOOP_NEXT, loop1718_next
    eq $P1720, .CONTROL_LOOP_REDO, loop1718_redo
  loop1718_done:
    pop_eh 
  for_undef_764:
.annotate 'line', 1188
    set $P1693, $P1701
  if_1694_end:
    set $P1664, $P1693
.annotate 'line', 1185
    goto if_1665_end
  if_1665:
.annotate 'line', 1186
    find_lex $P1673, "%items"
    unless_null $P1673, vivify_769
    $P1673 = root_new ['parrot';'Hash']
  vivify_769:
    defined $I1674, $P1673
    unless $I1674, for_undef_770
    iter $P1672, $P1673
    new $P1691, 'ExceptionHandler'
    set_label $P1691, loop1690_handler
    $P1691."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1691
  loop1690_test:
    unless $P1672, loop1690_done
    shift $P1675, $P1672
  loop1690_redo:
    .const 'Sub' $P1677 = "182_1303418077.916" 
    capture_lex $P1677
    $P1677($P1675)
  loop1690_next:
    goto loop1690_test
  loop1690_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1692, exception, 'type'
    eq $P1692, .CONTROL_LOOP_NEXT, loop1690_next
    eq $P1692, .CONTROL_LOOP_REDO, loop1690_redo
  loop1690_done:
    pop_eh 
  for_undef_770:
.annotate 'line', 1185
    set $P1664, $P1672
  if_1665_end:
.annotate 'line', 1182
    .return ($P1664)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1725"  :anon :subid("184_1303418077.916") :outer("181_1303418077.916")
    .param pmc param_1727
.annotate 'line', 1192
    .lex "$_", param_1727
    find_lex $P1728, "$_"
    unless_null $P1728, vivify_760
    new $P1728, "Undef"
  vivify_760:
    $P1729 = $P1728."value"()
    find_lex $P1730, "$_"
    unless_null $P1730, vivify_761
    new $P1730, "Undef"
  vivify_761:
    $P1731 = $P1730."key"()
    set $S1732, $P1731
    find_lex $P1733, "$target"
    unless_null $P1733, vivify_762
    $P1733 = root_new ['parrot';'Hash']
    store_lex "$target", $P1733
  vivify_762:
    set $P1733[$S1732], $P1729
    .return ($P1729)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1705"  :anon :subid("183_1303418077.916") :outer("181_1303418077.916")
    .param pmc param_1707
.annotate 'line', 1189
    .lex "$_", param_1707
    find_lex $P1708, "$target"
    unless_null $P1708, vivify_765
    new $P1708, "Undef"
  vivify_765:
    find_lex $P1709, "$_"
    unless_null $P1709, vivify_766
    new $P1709, "Undef"
  vivify_766:
    $P1710 = $P1709."key"()
    find_lex $P1711, "$_"
    unless_null $P1711, vivify_767
    new $P1711, "Undef"
  vivify_767:
    $P1712 = $P1711."value"()
    new $P1713, 'String'
    set $P1713, "add_"
    find_lex $P1714, "$type"
    unless_null $P1714, vivify_768
    new $P1714, "Undef"
  vivify_768:
    concat $P1715, $P1713, $P1714
    set $S1716, $P1715
    $P1717 = $P1708.$S1716($P1710, $P1712)
    .return ($P1717)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1676"  :anon :subid("182_1303418077.916") :outer("181_1303418077.916")
    .param pmc param_1678
.annotate 'line', 1186
    .lex "$_", param_1678
    find_lex $P1679, "self"
    find_lex $P1680, "$target"
    unless_null $P1680, vivify_771
    new $P1680, "Undef"
  vivify_771:
    find_lex $P1681, "$_"
    unless_null $P1681, vivify_772
    new $P1681, "Undef"
  vivify_772:
    $P1682 = $P1681."key"()
    find_lex $P1683, "$_"
    unless_null $P1683, vivify_773
    new $P1683, "Undef"
  vivify_773:
    $P1684 = $P1683."value"()
    new $P1685, 'String'
    set $P1685, "import_"
    find_lex $P1686, "$type"
    unless_null $P1686, vivify_774
    new $P1686, "Undef"
  vivify_774:
    concat $P1687, $P1685, $P1686
    set $S1688, $P1687
    $P1689 = $P1679.$S1688($P1680, $P1682, $P1684)
    .return ($P1689)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1741
    .param pmc param_1742
.annotate 'line', 1197
    .lex "self", param_1741
    .lex "$value", param_1742
.annotate 'line', 1199
    getinterp $P1745
    $P1746 = $P1745."stdout_handle"()
    $N1747 = $P1746."tell"()
    find_dynamic_lex $P1748, "$*AUTOPRINTPOS"
    unless_null $P1748, vivify_775
    get_hll_global $P1748, "$AUTOPRINTPOS"
    unless_null $P1748, vivify_776
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_776:
  vivify_775:
    set $N1749, $P1748
    isgt $I1750, $N1747, $N1749
    unless $I1750, unless_1744
    new $P1743, 'Integer'
    set $P1743, $I1750
    goto unless_1744_end
  unless_1744:
.annotate 'line', 1198
    find_lex $P1751, "$value"
    unless_null $P1751, vivify_777
    new $P1751, "Undef"
  vivify_777:
    set $S1752, $P1751
    say $S1752
  unless_1744_end:
.annotate 'line', 1197
    .return ($P1743)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1754
    .param pmc param_1755 :slurpy :named
.annotate 'line', 1202
    .const 'Sub' $P1787 = "187_1303418077.916" 
    capture_lex $P1787
    .lex "self", param_1754
    .lex "%adverbs", param_1755
.annotate 'line', 1203
    new $P1756, "Undef"
    .lex "$target", $P1756
.annotate 'line', 1207
    new $P1757, "Undef"
    .lex "$stdin", $P1757
.annotate 'line', 1208
    new $P1758, "Undef"
    .lex "$encoding", $P1758
.annotate 'line', 1213
    new $P1759, "Undef"
    .lex "$save_ctx", $P1759
.annotate 'line', 1203
    find_lex $P1760, "%adverbs"
    unless_null $P1760, vivify_778
    $P1760 = root_new ['parrot';'Hash']
  vivify_778:
    set $P1761, $P1760["target"]
    unless_null $P1761, vivify_779
    new $P1761, "Undef"
  vivify_779:
    set $S1762, $P1761
    downcase $S1763, $S1762
    new $P1764, 'String'
    set $P1764, $S1763
    store_lex "$target", $P1764
.annotate 'line', 1205
    getinterp $P1765
    $P1766 = $P1765."stderr_handle"()
    find_lex $P1767, "self"
    $S1768 = $P1767."commandline_banner"()
    print $P1766, $S1768
.annotate 'line', 1207
    getinterp $P1769
    $P1770 = $P1769."stdin_handle"()
    store_lex "$stdin", $P1770
.annotate 'line', 1208
    find_lex $P1771, "%adverbs"
    unless_null $P1771, vivify_780
    $P1771 = root_new ['parrot';'Hash']
  vivify_780:
    set $P1772, $P1771["encoding"]
    unless_null $P1772, vivify_781
    new $P1772, "Undef"
  vivify_781:
    set $S1773, $P1772
    new $P1774, 'String'
    set $P1774, $S1773
    store_lex "$encoding", $P1774
.annotate 'line', 1209
    find_lex $P1778, "$encoding"
    unless_null $P1778, vivify_782
    new $P1778, "Undef"
  vivify_782:
    if $P1778, if_1777
    set $P1776, $P1778
    goto if_1777_end
  if_1777:
    find_lex $P1779, "$encoding"
    unless_null $P1779, vivify_783
    new $P1779, "Undef"
  vivify_783:
    set $S1780, $P1779
    isne $I1781, $S1780, "fixed_8"
    new $P1776, 'Integer'
    set $P1776, $I1781
  if_1777_end:
    unless $P1776, if_1775_end
.annotate 'line', 1210
    find_lex $P1782, "$stdin"
    unless_null $P1782, vivify_784
    new $P1782, "Undef"
  vivify_784:
    find_lex $P1783, "$encoding"
    unless_null $P1783, vivify_785
    new $P1783, "Undef"
  vivify_785:
    $P1782."encoding"($P1783)
  if_1775_end:
.annotate 'line', 1209
    find_lex $P1784, "$save_ctx"
    unless_null $P1784, vivify_786
    new $P1784, "Undef"
  vivify_786:
.annotate 'line', 1214
    new $P1904, 'ExceptionHandler'
    set_label $P1904, loop1903_handler
    $P1904."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1904
  loop1903_test:
    new $P1785, "Integer"
    assign $P1785, 1
    unless $P1785, loop1903_done
  loop1903_redo:
    .const 'Sub' $P1787 = "187_1303418077.916" 
    capture_lex $P1787
    $P1787()
  loop1903_next:
    goto loop1903_test
  loop1903_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1905, exception, 'type'
    eq $P1905, .CONTROL_LOOP_NEXT, loop1903_next
    eq $P1905, .CONTROL_LOOP_REDO, loop1903_redo
  loop1903_done:
    pop_eh 
.annotate 'line', 1202
    .return ($P1785)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1786"  :anon :subid("187_1303418077.916") :outer("186_1303418077.916")
.annotate 'line', 1214
    .const 'Sub' $P1819 = "188_1303418077.916" 
    capture_lex $P1819
.annotate 'line', 1217
    new $P1788, "Undef"
    .lex "$prompt", $P1788
.annotate 'line', 1218
    new $P1789, "Undef"
    .lex "$code", $P1789
.annotate 'line', 1223
    new $P1790, "Undef"
    .lex "$*AUTOPRINTPOS", $P1790
.annotate 'line', 1224
    new $P1791, "Undef"
    .lex "$*CTXSAVE", $P1791
.annotate 'line', 1225
    new $P1792, "Undef"
    .lex "$*MAIN_CTX", $P1792
.annotate 'line', 1215
    find_lex $P1794, "$stdin"
    unless_null $P1794, vivify_787
    new $P1794, "Undef"
  vivify_787:
    if $P1794, unless_1793_end
    set $I1795, .CONTROL_LOOP_LAST
    die 0, $I1795
  unless_1793_end:
.annotate 'line', 1217
    find_lex $P1797, "self"
    $P1798 = $P1797."commandline_prompt"()
    set $P1796, $P1798
    defined $I1800, $P1796
    if $I1800, default_1799
    new $P1801, "String"
    assign $P1801, "> "
    set $P1796, $P1801
  default_1799:
    store_lex "$prompt", $P1796
.annotate 'line', 1218
    find_lex $P1802, "$stdin"
    unless_null $P1802, vivify_788
    new $P1802, "Undef"
  vivify_788:
    find_lex $P1803, "$prompt"
    unless_null $P1803, vivify_789
    new $P1803, "Undef"
  vivify_789:
    set $S1804, $P1803
    $P1805 = $P1802."readline_interactive"($S1804)
    store_lex "$code", $P1805
.annotate 'line', 1220
    find_lex $P1807, "$code"
    unless_null $P1807, vivify_790
    new $P1807, "Undef"
  vivify_790:
    isnull $I1808, $P1807
    unless $I1808, if_1806_end
    set $I1809, .CONTROL_LOOP_LAST
    die 0, $I1809
  if_1806_end:
.annotate 'line', 1223
    getinterp $P1810
    $P1811 = $P1810."stdout_handle"()
    $P1812 = $P1811."tell"()
    store_lex "$*AUTOPRINTPOS", $P1812
.annotate 'line', 1224
    find_lex $P1813, "self"
    store_lex "$*CTXSAVE", $P1813
    find_lex $P1814, "$*MAIN_CTX"
    unless_null $P1814, vivify_791
    get_hll_global $P1814, "$MAIN_CTX"
    unless_null $P1814, vivify_792
    die "Contextual $*MAIN_CTX not found"
  vivify_792:
  vivify_791:
.annotate 'line', 1227
    find_lex $P1817, "$code"
    unless_null $P1817, vivify_793
    new $P1817, "Undef"
  vivify_793:
    if $P1817, if_1816
    set $P1815, $P1817
    goto if_1816_end
  if_1816:
    .const 'Sub' $P1819 = "188_1303418077.916" 
    capture_lex $P1819
    $P1902 = $P1819()
    set $P1815, $P1902
  if_1816_end:
.annotate 'line', 1214
    .return ($P1815)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1818"  :anon :subid("188_1303418077.916") :outer("187_1303418077.916")
.annotate 'line', 1227
    .const 'Sub' $P1852 = "191_1303418077.916" 
    capture_lex $P1852
    .const 'Sub' $P1825 = "189_1303418077.916" 
    capture_lex $P1825
.annotate 'line', 1229
    new $P1820, "Undef"
    .lex "$output", $P1820
.annotate 'line', 1228
    find_lex $P1821, "$code"
    unless_null $P1821, vivify_794
    new $P1821, "Undef"
  vivify_794:
    concat $P1822, $P1821, "\n"
    store_lex "$code", $P1822
    find_lex $P1823, "$output"
    unless_null $P1823, vivify_795
    new $P1823, "Undef"
  vivify_795:
.annotate 'line', 1230
    .const 'Sub' $P1825 = "189_1303418077.916" 
    capture_lex $P1825
    $P1825()
.annotate 'line', 1237
    find_dynamic_lex $P1849, "$*MAIN_CTX"
    unless_null $P1849, vivify_800
    get_hll_global $P1849, "$MAIN_CTX"
    unless_null $P1849, vivify_801
    die "Contextual $*MAIN_CTX not found"
  vivify_801:
  vivify_800:
    defined $I1850, $P1849
    unless $I1850, if_1848_end
    .const 'Sub' $P1852 = "191_1303418077.916" 
    capture_lex $P1852
    $P1852()
  if_1848_end:
.annotate 'line', 1245
    find_lex $P1881, "$output"
    unless_null $P1881, vivify_811
    new $P1881, "Undef"
  vivify_811:
    isnull $I1882, $P1881
    unless $I1882, if_1880_end
    set $I1883, .CONTROL_LOOP_NEXT
    die 0, $I1883
  if_1880_end:
.annotate 'line', 1247
    find_lex $P1886, "$target"
    unless_null $P1886, vivify_812
    new $P1886, "Undef"
  vivify_812:
    isfalse $I1887, $P1886
    if $I1887, if_1885
.annotate 'line', 1249
    find_lex $P1893, "$target"
    unless_null $P1893, vivify_813
    new $P1893, "Undef"
  vivify_813:
    set $S1894, $P1893
    iseq $I1895, $S1894, "pir"
    if $I1895, if_1892
.annotate 'line', 1252
    find_lex $P1897, "self"
    find_lex $P1898, "$output"
    unless_null $P1898, vivify_814
    new $P1898, "Undef"
  vivify_814:
    find_lex $P1899, "$target"
    unless_null $P1899, vivify_815
    new $P1899, "Undef"
  vivify_815:
    find_lex $P1900, "%adverbs"
    unless_null $P1900, vivify_816
    $P1900 = root_new ['parrot';'Hash']
  vivify_816:
    $P1901 = $P1897."dumper"($P1898, $P1899, $P1900 :flat)
.annotate 'line', 1251
    set $P1891, $P1901
.annotate 'line', 1249
    goto if_1892_end
  if_1892:
.annotate 'line', 1250
    find_lex $P1896, "$output"
    unless_null $P1896, vivify_817
    new $P1896, "Undef"
  vivify_817:
    say $P1896
  if_1892_end:
.annotate 'line', 1249
    set $P1884, $P1891
.annotate 'line', 1247
    goto if_1885_end
  if_1885:
.annotate 'line', 1248
    find_lex $P1888, "self"
    find_lex $P1889, "$output"
    unless_null $P1889, vivify_818
    new $P1889, "Undef"
  vivify_818:
    $P1890 = $P1888."autoprint"($P1889)
.annotate 'line', 1247
    set $P1884, $P1890
  if_1885_end:
.annotate 'line', 1227
    .return ($P1884)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1824"  :anon :subid("189_1303418077.916") :outer("188_1303418077.916")
.annotate 'line', 1230
    .const 'Sub' $P1837 = "190_1303418077.916" 
    capture_lex $P1837
    new $P1833, 'ExceptionHandler'
    set_label $P1833, control_1832
    $P1833."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1833
.annotate 'line', 1231
    find_lex $P1826, "self"
    find_lex $P1827, "$code"
    unless_null $P1827, vivify_796
    new $P1827, "Undef"
  vivify_796:
    find_lex $P1828, "$save_ctx"
    unless_null $P1828, vivify_797
    new $P1828, "Undef"
  vivify_797:
    find_lex $P1829, "%adverbs"
    unless_null $P1829, vivify_798
    $P1829 = root_new ['parrot';'Hash']
  vivify_798:
    $P1830 = $P1826."eval"($P1827, $P1829 :flat, $P1828 :named("outer_ctx"))
    store_lex "$output", $P1830
.annotate 'line', 1230
    pop_eh 
    goto skip_handler_1831
  control_1832:
.annotate 'line', 1232
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1837 = "190_1303418077.916" 
    newclosure $P1845, $P1837
    $P1845(exception)
    new $P1846, 'Integer'
    set $P1846, 1
    set exception["handled"], $P1846
    set $I1847, exception["handled"]
    ne $I1847, 1, nothandled_1835
  handled_1834:
    .return (exception)
  nothandled_1835:
    rethrow exception
  skip_handler_1831:
.annotate 'line', 1230
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1836"  :anon :subid("190_1303418077.916") :outer("189_1303418077.916")
    .param pmc param_1838
.annotate 'line', 1232
    .lex "$_", param_1838
    find_lex $P1839, "$_"
    .lex "$!", $P1839
.annotate 'line', 1233
    find_lex $P1840, "$!"
    unless_null $P1840, vivify_799
    new $P1840, "Undef"
  vivify_799:
    set $S1841, $P1840
    new $P1842, 'String'
    set $P1842, $S1841
    concat $P1843, $P1842, "\n"
    print $P1843
.annotate 'line', 1234
    set $I1844, .CONTROL_LOOP_NEXT
    die 0, $I1844
.annotate 'line', 1232
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1851"  :anon :subid("191_1303418077.916") :outer("188_1303418077.916")
.annotate 'line', 1237
    .const 'Sub' $P1865 = "192_1303418077.916" 
    capture_lex $P1865
    find_lex $P1853, "$?PACKAGE"
    get_who $P1854, $P1853
    set $P1855, $P1854["$interactive_ctx"]
    unless_null $P1855, vivify_802
    new $P1855, "Undef"
  vivify_802:
    find_lex $P1856, "$?PACKAGE"
    get_who $P1857, $P1856
    set $P1858, $P1857["%interactive_pad"]
    unless_null $P1858, vivify_803
    $P1858 = root_new ['parrot';'Hash']
  vivify_803:
.annotate 'line', 1240
    find_dynamic_lex $P1860, "$*MAIN_CTX"
    unless_null $P1860, vivify_804
    get_hll_global $P1860, "$MAIN_CTX"
    unless_null $P1860, vivify_805
    die "Contextual $*MAIN_CTX not found"
  vivify_805:
  vivify_804:
    $P1861 = $P1860."lexpad_full"()
    defined $I1862, $P1861
    unless $I1862, for_undef_806
    iter $P1859, $P1861
    new $P1875, 'ExceptionHandler'
    set_label $P1875, loop1874_handler
    $P1875."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1875
  loop1874_test:
    unless $P1859, loop1874_done
    shift $P1863, $P1859
  loop1874_redo:
    .const 'Sub' $P1865 = "192_1303418077.916" 
    capture_lex $P1865
    $P1865($P1863)
  loop1874_next:
    goto loop1874_test
  loop1874_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1876, exception, 'type'
    eq $P1876, .CONTROL_LOOP_NEXT, loop1874_next
    eq $P1876, .CONTROL_LOOP_REDO, loop1874_redo
  loop1874_done:
    pop_eh 
  for_undef_806:
.annotate 'line', 1243
    find_lex $P1877, "$?PACKAGE"
    get_who $P1878, $P1877
    set $P1879, $P1878["$interactive_ctx"]
    unless_null $P1879, vivify_810
    new $P1879, "Undef"
  vivify_810:
    store_lex "$save_ctx", $P1879
.annotate 'line', 1237
    .return ($P1879)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1864"  :anon :subid("192_1303418077.916") :outer("191_1303418077.916")
    .param pmc param_1866
.annotate 'line', 1240
    .lex "$_", param_1866
.annotate 'line', 1241
    find_lex $P1867, "$_"
    unless_null $P1867, vivify_807
    new $P1867, "Undef"
  vivify_807:
    $P1868 = $P1867."value"()
    find_lex $P1869, "$_"
    unless_null $P1869, vivify_808
    new $P1869, "Undef"
  vivify_808:
    $P1870 = $P1869."key"()
    find_lex $P1871, "$?PACKAGE"
    get_who $P1872, $P1871
    set $P1873, $P1872["%interactive_pad"]
    unless_null $P1873, vivify_809
    $P1873 = root_new ['parrot';'Hash']
    set $P1872["%interactive_pad"], $P1873
  vivify_809:
    set $P1873[$P1870], $P1868
.annotate 'line', 1240
    .return ($P1868)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1907
    .param pmc param_1908
    .param pmc param_1909 :slurpy
    .param pmc param_1910 :slurpy :named
.annotate 'line', 1258
    .const 'Sub' $P1929 = "194_1303418077.916" 
    capture_lex $P1929
    .lex "self", param_1907
    .lex "$code", param_1908
    .lex "@args", param_1909
    .lex "%adverbs", param_1910
.annotate 'line', 1259
    new $P1911, "Undef"
    .lex "$output", $P1911
.annotate 'line', 1258
    find_lex $P1912, "$output"
    unless_null $P1912, vivify_819
    new $P1912, "Undef"
  vivify_819:
.annotate 'line', 1260
    find_lex $P1913, "self"
    find_lex $P1914, "$code"
    unless_null $P1914, vivify_820
    new $P1914, "Undef"
  vivify_820:
    find_lex $P1915, "%adverbs"
    unless_null $P1915, vivify_821
    $P1915 = root_new ['parrot';'Hash']
  vivify_821:
    $P1916 = $P1913."compile"($P1914, $P1915 :flat)
    store_lex "$output", $P1916
.annotate 'line', 1262
    find_lex $P1920, "$output"
    unless_null $P1920, vivify_822
    new $P1920, "Undef"
  vivify_822:
    isa $I1921, $P1920, "String"
    new $P1922, 'Integer'
    set $P1922, $I1921
    isfalse $I1923, $P1922
    if $I1923, if_1919
    new $P1918, 'Integer'
    set $P1918, $I1923
    goto if_1919_end
  if_1919:
.annotate 'line', 1263
    find_lex $P1924, "%adverbs"
    unless_null $P1924, vivify_823
    $P1924 = root_new ['parrot';'Hash']
  vivify_823:
    set $P1925, $P1924["target"]
    unless_null $P1925, vivify_824
    new $P1925, "Undef"
  vivify_824:
    set $S1926, $P1925
    iseq $I1927, $S1926, ""
    new $P1918, 'Integer'
    set $P1918, $I1927
  if_1919_end:
    unless $P1918, if_1917_end
    .const 'Sub' $P1929 = "194_1303418077.916" 
    capture_lex $P1929
    $P1929()
  if_1917_end:
.annotate 'line', 1262
    find_lex $P1945, "$output"
    unless_null $P1945, vivify_835
    new $P1945, "Undef"
  vivify_835:
.annotate 'line', 1258
    .return ($P1945)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1928"  :anon :subid("194_1303418077.916") :outer("193_1303418077.916")
.annotate 'line', 1264
    new $P1930, "Undef"
    .lex "$outer_ctx", $P1930
    find_lex $P1931, "%adverbs"
    unless_null $P1931, vivify_825
    $P1931 = root_new ['parrot';'Hash']
  vivify_825:
    set $P1932, $P1931["outer_ctx"]
    unless_null $P1932, vivify_826
    new $P1932, "Undef"
  vivify_826:
    store_lex "$outer_ctx", $P1932
.annotate 'line', 1265
    find_lex $P1934, "$outer_ctx"
    unless_null $P1934, vivify_827
    new $P1934, "Undef"
  vivify_827:
    defined $I1935, $P1934
    unless $I1935, if_1933_end
.annotate 'line', 1266
    find_lex $P1936, "$output"
    unless_null $P1936, vivify_828
    $P1936 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    set $P1937, $P1936[0]
    unless_null $P1937, vivify_829
    new $P1937, "Undef"
  vivify_829:
    find_lex $P1938, "$outer_ctx"
    unless_null $P1938, vivify_830
    new $P1938, "Undef"
  vivify_830:
    $P1937."set_outer_ctx"($P1938)
  if_1933_end:
.annotate 'line', 1269
    find_lex $P1939, "%adverbs"
    unless_null $P1939, vivify_831
    $P1939 = root_new ['parrot';'Hash']
  vivify_831:
    set $P1940, $P1939["trace"]
    unless_null $P1940, vivify_832
    new $P1940, "Undef"
  vivify_832:
    set $I1941, $P1940
    trace $I1941
.annotate 'line', 1270
    find_lex $P1942, "$output"
    unless_null $P1942, vivify_833
    new $P1942, "Undef"
  vivify_833:
    find_lex $P1943, "@args"
    unless_null $P1943, vivify_834
    $P1943 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    $P1944 = $P1942($P1943 :flat)
    store_lex "$output", $P1944
.annotate 'line', 1271
    trace 0
.annotate 'line', 1263
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1947
.annotate 'line', 1277
    .lex "self", param_1947
.annotate 'line', 1279

                $P0 = getinterp
                $P1948 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1948
.annotate 'line', 1283
    new $P1949, "Integer"
    assign $P1949, 0
    store_dynamic_lex "$*CTXSAVE", $P1949
.annotate 'line', 1277
    .return ($P1949)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("196_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1951
    .param pmc param_1952 :slurpy
.annotate 'line', 1286
    .lex "self", param_1951
    .lex "@args", param_1952
.annotate 'line', 1287
    find_lex $P1953, "@args"
    unless_null $P1953, vivify_836
    $P1953 = root_new ['parrot';'ResizablePMCArray']
  vivify_836:
    join $S1954, "", $P1953
    die $S1954
.annotate 'line', 1286
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1956
    .param pmc param_1957 :optional
    .param int has_param_1957 :opt_flag
.annotate 'line', 1290
    .lex "self", param_1956
    if has_param_1957, optparam_837
    $P1958 = root_new ['parrot';'ResizablePMCArray']
    set param_1957, $P1958
  optparam_837:
    .lex "@value", param_1957
.annotate 'line', 1291
    find_lex $P1960, "@value"
    unless_null $P1960, vivify_838
    $P1960 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $N1961, $P1960
    unless $N1961, if_1959_end
.annotate 'line', 1292
    find_lex $P1962, "@value"
    unless_null $P1962, vivify_839
    $P1962 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    find_lex $P1963, "self"
    find_lex $P1964, "$?CLASS"
    setattribute $P1963, $P1964, "@!stages", $P1962
  if_1959_end:
.annotate 'line', 1291
    find_lex $P1965, "self"
    find_lex $P1966, "$?CLASS"
    getattribute $P1967, $P1965, $P1966, "@!stages"
    unless_null $P1967, vivify_840
    $P1967 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
.annotate 'line', 1290
    .return ($P1967)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1969
    .param pmc param_1970 :slurpy
.annotate 'line', 1297
    .lex "self", param_1969
    .lex "@value", param_1970
.annotate 'line', 1298
    find_lex $P1972, "@value"
    unless_null $P1972, vivify_841
    $P1972 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $N1973, $P1972
    unless $N1973, if_1971_end
.annotate 'line', 1299
    find_lex $P1974, "@value"
    unless_null $P1974, vivify_842
    $P1974 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    set $P1975, $P1974[0]
    unless_null $P1975, vivify_843
    new $P1975, "Undef"
  vivify_843:
    find_lex $P1976, "self"
    find_lex $P1977, "$?CLASS"
    setattribute $P1976, $P1977, "$!parsegrammar", $P1975
  if_1971_end:
.annotate 'line', 1298
    find_lex $P1978, "self"
    find_lex $P1979, "$?CLASS"
    getattribute $P1980, $P1978, $P1979, "$!parsegrammar"
    unless_null $P1980, vivify_844
    new $P1980, "Undef"
  vivify_844:
.annotate 'line', 1297
    .return ($P1980)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1982
    .param pmc param_1983 :slurpy
.annotate 'line', 1304
    .lex "self", param_1982
    .lex "@value", param_1983
.annotate 'line', 1305
    find_lex $P1985, "@value"
    unless_null $P1985, vivify_845
    $P1985 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $N1986, $P1985
    unless $N1986, if_1984_end
.annotate 'line', 1306
    find_lex $P1987, "@value"
    unless_null $P1987, vivify_846
    $P1987 = root_new ['parrot';'ResizablePMCArray']
  vivify_846:
    set $P1988, $P1987[0]
    unless_null $P1988, vivify_847
    new $P1988, "Undef"
  vivify_847:
    find_lex $P1989, "self"
    find_lex $P1990, "$?CLASS"
    setattribute $P1989, $P1990, "$!parseactions", $P1988
  if_1984_end:
.annotate 'line', 1305
    find_lex $P1991, "self"
    find_lex $P1992, "$?CLASS"
    getattribute $P1993, $P1991, $P1992, "$!parseactions"
    unless_null $P1993, vivify_848
    new $P1993, "Undef"
  vivify_848:
.annotate 'line', 1304
    .return ($P1993)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_1995
    .param pmc param_1996 :slurpy
.annotate 'line', 1311
    .lex "self", param_1995
    .lex "@value", param_1996
.annotate 'line', 1312
    find_lex $P1998, "@value"
    unless_null $P1998, vivify_849
    $P1998 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $N1999, $P1998
    unless $N1999, if_1997_end
.annotate 'line', 1313
    find_lex $P2000, "@value"
    unless_null $P2000, vivify_850
    $P2000 = root_new ['parrot';'ResizablePMCArray']
  vivify_850:
    set $P2001, $P2000[0]
    unless_null $P2001, vivify_851
    new $P2001, "Undef"
  vivify_851:
    find_lex $P2002, "self"
    find_lex $P2003, "$?CLASS"
    setattribute $P2002, $P2003, "$!astgrammar", $P2001
  if_1997_end:
.annotate 'line', 1312
    find_lex $P2004, "self"
    find_lex $P2005, "$?CLASS"
    getattribute $P2006, $P2004, $P2005, "$!astgrammar"
    unless_null $P2006, vivify_852
    new $P2006, "Undef"
  vivify_852:
.annotate 'line', 1311
    .return ($P2006)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2008
    .param pmc param_2009 :optional
    .param int has_param_2009 :opt_flag
.annotate 'line', 1318
    .lex "self", param_2008
    if has_param_2009, optparam_853
    new $P2010, "Undef"
    set param_2009, $P2010
  optparam_853:
    .lex "$value", param_2009
.annotate 'line', 1319
    find_lex $P2012, "$value"
    unless_null $P2012, vivify_854
    new $P2012, "Undef"
  vivify_854:
    defined $I2013, $P2012
    unless $I2013, if_2011_end
.annotate 'line', 1320
    find_lex $P2014, "$value"
    unless_null $P2014, vivify_855
    new $P2014, "Undef"
  vivify_855:
    find_lex $P2015, "self"
    find_lex $P2016, "$?CLASS"
    setattribute $P2015, $P2016, "$!commandline_banner", $P2014
  if_2011_end:
.annotate 'line', 1319
    find_lex $P2017, "self"
    find_lex $P2018, "$?CLASS"
    getattribute $P2019, $P2017, $P2018, "$!commandline_banner"
    unless_null $P2019, vivify_856
    new $P2019, "Undef"
  vivify_856:
.annotate 'line', 1318
    .return ($P2019)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2021
    .param pmc param_2022 :optional
    .param int has_param_2022 :opt_flag
.annotate 'line', 1325
    .lex "self", param_2021
    if has_param_2022, optparam_857
    new $P2023, "Undef"
    set param_2022, $P2023
  optparam_857:
    .lex "$value", param_2022
.annotate 'line', 1326
    find_lex $P2025, "$value"
    unless_null $P2025, vivify_858
    new $P2025, "Undef"
  vivify_858:
    defined $I2026, $P2025
    unless $I2026, if_2024_end
.annotate 'line', 1327
    find_lex $P2027, "$value"
    unless_null $P2027, vivify_859
    new $P2027, "Undef"
  vivify_859:
    find_lex $P2028, "self"
    find_lex $P2029, "$?CLASS"
    setattribute $P2028, $P2029, "$!commandline_prompt", $P2027
  if_2024_end:
.annotate 'line', 1326
    find_lex $P2030, "self"
    find_lex $P2031, "$?CLASS"
    getattribute $P2032, $P2030, $P2031, "$!commandline_prompt"
    unless_null $P2032, vivify_860
    new $P2032, "Undef"
  vivify_860:
.annotate 'line', 1325
    .return ($P2032)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2034
    .param pmc param_2035 :optional
    .param int has_param_2035 :opt_flag
.annotate 'line', 1332
    .lex "self", param_2034
    if has_param_2035, optparam_861
    new $P2036, "Undef"
    set param_2035, $P2036
  optparam_861:
    .lex "$value", param_2035
.annotate 'line', 1333
    find_lex $P2038, "$value"
    unless_null $P2038, vivify_862
    new $P2038, "Undef"
  vivify_862:
    defined $I2039, $P2038
    unless $I2039, if_2037_end
.annotate 'line', 1334
    find_lex $P2040, "$value"
    unless_null $P2040, vivify_863
    new $P2040, "Undef"
  vivify_863:
    find_lex $P2041, "self"
    find_lex $P2042, "$?CLASS"
    setattribute $P2041, $P2042, "$!compiler_progname", $P2040
  if_2037_end:
.annotate 'line', 1333
    find_lex $P2043, "self"
    find_lex $P2044, "$?CLASS"
    getattribute $P2045, $P2043, $P2044, "$!compiler_progname"
    unless_null $P2045, vivify_864
    new $P2045, "Undef"
  vivify_864:
.annotate 'line', 1332
    .return ($P2045)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2047
    .param pmc param_2048 :optional
    .param int has_param_2048 :opt_flag
.annotate 'line', 1339
    .lex "self", param_2047
    if has_param_2048, optparam_865
    $P2049 = root_new ['parrot';'ResizablePMCArray']
    set param_2048, $P2049
  optparam_865:
    .lex "@value", param_2048
.annotate 'line', 1340
    find_lex $P2051, "@value"
    unless_null $P2051, vivify_866
    $P2051 = root_new ['parrot';'ResizablePMCArray']
  vivify_866:
    set $N2052, $P2051
    unless $N2052, if_2050_end
.annotate 'line', 1341
    find_lex $P2053, "@value"
    unless_null $P2053, vivify_867
    $P2053 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    find_lex $P2054, "self"
    find_lex $P2055, "$?CLASS"
    setattribute $P2054, $P2055, "@!cmdoptions", $P2053
  if_2050_end:
.annotate 'line', 1340
    find_lex $P2056, "self"
    find_lex $P2057, "$?CLASS"
    getattribute $P2058, $P2056, $P2057, "@!cmdoptions"
    unless_null $P2058, vivify_868
    $P2058 = root_new ['parrot';'ResizablePMCArray']
  vivify_868:
.annotate 'line', 1339
    .return ($P2058)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2060
    .param pmc param_2061
    .param pmc param_2062 :slurpy :named
.annotate 'line', 1346
    .const 'Sub' $P2088 = "206_1303418077.916" 
    capture_lex $P2088
    .lex "self", param_2060
    .lex "@args", param_2061
    .lex "%adverbs", param_2062
.annotate 'line', 1359
    new $P2063, "Undef"
    .lex "$program-name", $P2063
.annotate 'line', 1360
    new $P2064, "Undef"
    .lex "$res", $P2064
.annotate 'line', 1361
    $P2065 = root_new ['parrot';'Hash']
    .lex "%opts", $P2065
.annotate 'line', 1362
    $P2066 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2066
.annotate 'line', 1355
    find_lex $P2068, "@args"
    unless_null $P2068, vivify_869
    $P2068 = root_new ['parrot';'ResizablePMCArray']
  vivify_869:
    set $P2069, $P2068[2]
    unless_null $P2069, vivify_870
    new $P2069, "Undef"
  vivify_870:
    set $S2070, $P2069
    index $I2071, $S2070, "@INC"
    set $N2072, $I2071
    isge $I2073, $N2072, 0.0
    unless $I2073, if_2067_end
.annotate 'line', 1356
    exit 0
  if_2067_end:
.annotate 'line', 1359
    find_lex $P2074, "@args"
    unless_null $P2074, vivify_871
    $P2074 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
    set $P2075, $P2074[0]
    unless_null $P2075, vivify_872
    new $P2075, "Undef"
  vivify_872:
    store_lex "$program-name", $P2075
.annotate 'line', 1360
    find_lex $P2076, "self"
    find_lex $P2077, "@args"
    unless_null $P2077, vivify_873
    $P2077 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    $P2078 = $P2076."process_args"($P2077)
    store_lex "$res", $P2078
.annotate 'line', 1361
    find_lex $P2079, "$res"
    unless_null $P2079, vivify_874
    new $P2079, "Undef"
  vivify_874:
    $P2080 = $P2079."options"()
    store_lex "%opts", $P2080
.annotate 'line', 1362
    find_lex $P2081, "$res"
    unless_null $P2081, vivify_875
    new $P2081, "Undef"
  vivify_875:
    $P2082 = $P2081."arguments"()
    store_lex "@a", $P2082
.annotate 'line', 1364
    find_lex $P2084, "%opts"
    unless_null $P2084, vivify_876
    $P2084 = root_new ['parrot';'Hash']
  vivify_876:
    defined $I2085, $P2084
    unless $I2085, for_undef_877
    iter $P2083, $P2084
    new $P2096, 'ExceptionHandler'
    set_label $P2096, loop2095_handler
    $P2096."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2096
  loop2095_test:
    unless $P2083, loop2095_done
    shift $P2086, $P2083
  loop2095_redo:
    .const 'Sub' $P2088 = "206_1303418077.916" 
    capture_lex $P2088
    $P2088($P2086)
  loop2095_next:
    goto loop2095_test
  loop2095_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2097, exception, 'type'
    eq $P2097, .CONTROL_LOOP_NEXT, loop2095_next
    eq $P2097, .CONTROL_LOOP_REDO, loop2095_redo
  loop2095_done:
    pop_eh 
  for_undef_877:
.annotate 'line', 1367
    find_lex $P2099, "%adverbs"
    unless_null $P2099, vivify_883
    $P2099 = root_new ['parrot';'Hash']
  vivify_883:
    set $P2100, $P2099["help"]
    unless_null $P2100, vivify_884
    new $P2100, "Undef"
  vivify_884:
    unless $P2100, if_2098_end
    find_lex $P2101, "self"
    find_lex $P2102, "$program-name"
    unless_null $P2102, vivify_885
    new $P2102, "Undef"
  vivify_885:
    $P2101."usage"($P2102)
  if_2098_end:
.annotate 'line', 1368
    find_lex $P2104, "%adverbs"
    unless_null $P2104, vivify_886
    $P2104 = root_new ['parrot';'Hash']
  vivify_886:
    set $P2105, $P2104["version"]
    unless_null $P2105, vivify_887
    new $P2105, "Undef"
  vivify_887:
    unless $P2105, if_2103_end
    find_lex $P2106, "self"
    $P2106."version"()
  if_2103_end:
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
.sub "_block2087"  :anon :subid("206_1303418077.916") :outer("205_1303418077.916")
    .param pmc param_2089
.annotate 'line', 1364
    .lex "$k", param_2089
.annotate 'line', 1365
    find_lex $P2090, "$k"
    unless_null $P2090, vivify_878
    new $P2090, "Undef"
  vivify_878:
    find_lex $P2091, "%opts"
    unless_null $P2091, vivify_879
    $P2091 = root_new ['parrot';'Hash']
  vivify_879:
    set $P2092, $P2091[$P2090]
    unless_null $P2092, vivify_880
    new $P2092, "Undef"
  vivify_880:
    find_lex $P2093, "$k"
    unless_null $P2093, vivify_881
    new $P2093, "Undef"
  vivify_881:
    find_lex $P2094, "%adverbs"
    unless_null $P2094, vivify_882
    $P2094 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2094
  vivify_882:
    set $P2094[$P2093], $P2092
.annotate 'line', 1364
    .return ($P2092)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2108
    .param pmc param_2109
.annotate 'line', 1464
    .const 'Sub' $P2124 = "208_1303418077.916" 
    capture_lex $P2124
    .lex "self", param_2108
    .lex "@args", param_2109
.annotate 'line', 1468
    new $P2110, "Undef"
    .lex "$p", $P2110
.annotate 'line', 1471
    new $P2111, "Undef"
    .lex "$res", $P2111
.annotate 'line', 1466
    find_lex $P2112, "self"
    find_lex $P2113, "@args"
    unless_null $P2113, vivify_888
    $P2113 = root_new ['parrot';'ResizablePMCArray']
  vivify_888:
    $P2114 = $P2113."shift"()
    $P2112."compiler_progname"($P2114)
.annotate 'line', 1468
    get_hll_global $P2115, ["HLL";"CommandLine"], "Parser"
    find_lex $P2116, "self"
    find_lex $P2117, "$?CLASS"
    getattribute $P2118, $P2116, $P2117, "@!cmdoptions"
    unless_null $P2118, vivify_889
    $P2118 = root_new ['parrot';'ResizablePMCArray']
  vivify_889:
    $P2119 = $P2115."new"($P2118)
    store_lex "$p", $P2119
.annotate 'line', 1469
    find_lex $P2120, "$p"
    unless_null $P2120, vivify_890
    new $P2120, "Undef"
  vivify_890:
    $P2120."add-stopper"("-e")
.annotate 'line', 1470
    find_lex $P2121, "$p"
    unless_null $P2121, vivify_891
    new $P2121, "Undef"
  vivify_891:
    $P2121."stop-after-first-arg"()
    find_lex $P2122, "$res"
    unless_null $P2122, vivify_892
    new $P2122, "Undef"
  vivify_892:
.annotate 'line', 1472
    .const 'Sub' $P2124 = "208_1303418077.916" 
    capture_lex $P2124
    $P2124()
    find_lex $P2142, "$res"
    unless_null $P2142, vivify_896
    new $P2142, "Undef"
  vivify_896:
.annotate 'line', 1464
    .return ($P2142)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2123"  :anon :subid("208_1303418077.916") :outer("207_1303418077.916")
.annotate 'line', 1472
    .const 'Sub' $P2134 = "209_1303418077.916" 
    capture_lex $P2134
    new $P2130, 'ExceptionHandler'
    set_label $P2130, control_2129
    $P2130."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2130
.annotate 'line', 1473
    find_lex $P2125, "$p"
    unless_null $P2125, vivify_893
    new $P2125, "Undef"
  vivify_893:
    find_lex $P2126, "@args"
    unless_null $P2126, vivify_894
    $P2126 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
    $P2127 = $P2125."parse"($P2126)
    store_lex "$res", $P2127
.annotate 'line', 1472
    pop_eh 
    goto skip_handler_2128
  control_2129:
.annotate 'line', 1474
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2134 = "209_1303418077.916" 
    newclosure $P2139, $P2134
    $P2139(exception)
    new $P2140, 'Integer'
    set $P2140, 1
    set exception["handled"], $P2140
    set $I2141, exception["handled"]
    ne $I2141, 1, nothandled_2132
  handled_2131:
    .return (exception)
  nothandled_2132:
    rethrow exception
  skip_handler_2128:
.annotate 'line', 1472
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2133"  :anon :subid("209_1303418077.916") :outer("208_1303418077.916")
    .param pmc param_2135
.annotate 'line', 1474
    .lex "$_", param_2135
    find_lex $P2136, "$_"
    .lex "$!", $P2136
.annotate 'line', 1475
    find_lex $P2137, "$_"
    unless_null $P2137, vivify_895
    new $P2137, "Undef"
  vivify_895:
    say $P2137
.annotate 'line', 1476
    find_lex $P2138, "self"
    $P2138."usage"()
.annotate 'line', 1477
    exit 1
.annotate 'line', 1474
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("210_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2146
    .param pmc param_2147
    .param pmc param_2148 :slurpy
    .param pmc param_2149 :slurpy :named
.annotate 'line', 1483
    .const 'Sub' $P2174 = "211_1303418077.916" 
    capture_lex $P2174
    new $P2145, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2145, control_2144
    push_eh $P2145
    .lex "self", param_2146
    .lex "$files", param_2147
    .lex "@args", param_2148
    .lex "%adverbs", param_2149
.annotate 'line', 1484
    new $P2150, "Undef"
    .lex "$target", $P2150
.annotate 'line', 1485
    new $P2151, "Undef"
    .lex "$encoding", $P2151
.annotate 'line', 1486
    $P2152 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2152
.annotate 'line', 1487
    $P2153 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2153
.annotate 'line', 1484
    find_lex $P2154, "%adverbs"
    unless_null $P2154, vivify_897
    $P2154 = root_new ['parrot';'Hash']
  vivify_897:
    set $P2155, $P2154["target"]
    unless_null $P2155, vivify_898
    new $P2155, "Undef"
  vivify_898:
    set $S2156, $P2155
    downcase $S2157, $S2156
    new $P2158, 'String'
    set $P2158, $S2157
    store_lex "$target", $P2158
.annotate 'line', 1485
    find_lex $P2159, "%adverbs"
    unless_null $P2159, vivify_899
    $P2159 = root_new ['parrot';'Hash']
  vivify_899:
    set $P2160, $P2159["encoding"]
    unless_null $P2160, vivify_900
    new $P2160, "Undef"
  vivify_900:
    store_lex "$encoding", $P2160
.annotate 'line', 1486
    find_lex $P2163, "$files"
    unless_null $P2163, vivify_901
    new $P2163, "Undef"
  vivify_901:
    does $I2164, $P2163, "array"
    if $I2164, if_2162
    find_lex $P2166, "$files"
    unless_null $P2166, vivify_902
    new $P2166, "Undef"
  vivify_902:
    new $P2167, "ResizablePMCArray"
    push $P2167, $P2166
    set $P2161, $P2167
    goto if_2162_end
  if_2162:
    find_lex $P2165, "$files"
    unless_null $P2165, vivify_903
    new $P2165, "Undef"
  vivify_903:
    set $P2161, $P2165
  if_2162_end:
    store_lex "@files", $P2161
    find_lex $P2168, "@codes"
    unless_null $P2168, vivify_904
    $P2168 = root_new ['parrot';'ResizablePMCArray']
  vivify_904:
.annotate 'line', 1488
    find_lex $P2170, "@files"
    unless_null $P2170, vivify_905
    $P2170 = root_new ['parrot';'ResizablePMCArray']
  vivify_905:
    defined $I2171, $P2170
    unless $I2171, for_undef_906
    iter $P2169, $P2170
    new $P2236, 'ExceptionHandler'
    set_label $P2236, loop2235_handler
    $P2236."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2236
  loop2235_test:
    unless $P2169, loop2235_done
    shift $P2172, $P2169
  loop2235_redo:
    .const 'Sub' $P2174 = "211_1303418077.916" 
    capture_lex $P2174
    $P2174($P2172)
  loop2235_next:
    goto loop2235_test
  loop2235_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2237, exception, 'type'
    eq $P2237, .CONTROL_LOOP_NEXT, loop2235_next
    eq $P2237, .CONTROL_LOOP_REDO, loop2235_redo
  loop2235_done:
    pop_eh 
  for_undef_906:
.annotate 'line', 1483
    .return ($P2169)
  control_2144:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2238, exception, "payload"
    .return ($P2238)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2173"  :anon :subid("211_1303418077.916") :outer("210_1303418077.916")
    .param pmc param_2179
.annotate 'line', 1488
    .const 'Sub' $P2183 = "212_1303418077.916" 
    capture_lex $P2183
.annotate 'line', 1489
    new $P2175, "Undef"
    .lex "$in-handle", $P2175
.annotate 'line', 1490
    new $P2176, "Undef"
    .lex "$err", $P2176
.annotate 'line', 1503
    new $P2177, "Undef"
    .lex "$code", $P2177
.annotate 'line', 1505
    new $P2178, "Undef"
    .lex "$r", $P2178
    .lex "$_", param_2179
.annotate 'line', 1489
    new $P2180, "FileHandle"
    store_lex "$in-handle", $P2180
.annotate 'line', 1490
    new $P2181, "Integer"
    assign $P2181, 0
    store_lex "$err", $P2181
.annotate 'line', 1491
    .const 'Sub' $P2183 = "212_1303418077.916" 
    capture_lex $P2183
    $P2183()
.annotate 'line', 1502
    find_lex $P2207, "$err"
    unless_null $P2207, vivify_914
    new $P2207, "Undef"
  vivify_914:
    unless $P2207, if_2206_end
    find_lex $P2208, "$err"
    unless_null $P2208, vivify_915
    new $P2208, "Undef"
  vivify_915:
    die $P2208
  if_2206_end:
.annotate 'line', 1503
    find_lex $P2209, "@codes"
    unless_null $P2209, vivify_916
    $P2209 = root_new ['parrot';'ResizablePMCArray']
  vivify_916:
    join $S2210, "", $P2209
    new $P2211, 'String'
    set $P2211, $S2210
    store_lex "$code", $P2211
.annotate 'line', 1505
    find_lex $P2212, "self"
    find_lex $P2213, "$code"
    unless_null $P2213, vivify_917
    new $P2213, "Undef"
  vivify_917:
    find_lex $P2214, "@args"
    unless_null $P2214, vivify_918
    $P2214 = root_new ['parrot';'ResizablePMCArray']
  vivify_918:
    find_lex $P2215, "%adverbs"
    unless_null $P2215, vivify_919
    $P2215 = root_new ['parrot';'Hash']
  vivify_919:
    $P2216 = $P2212."eval"($P2213, $P2214 :flat, $P2215 :flat)
    store_lex "$r", $P2216
.annotate 'line', 1506
    find_lex $P2221, "$target"
    unless_null $P2221, vivify_920
    new $P2221, "Undef"
  vivify_920:
    set $S2222, $P2221
    iseq $I2223, $S2222, ""
    unless $I2223, unless_2220
    new $P2219, 'Integer'
    set $P2219, $I2223
    goto unless_2220_end
  unless_2220:
    find_lex $P2224, "$target"
    unless_null $P2224, vivify_921
    new $P2224, "Undef"
  vivify_921:
    set $S2225, $P2224
    iseq $I2226, $S2225, "pir"
    new $P2219, 'Integer'
    set $P2219, $I2226
  unless_2220_end:
    if $P2219, if_2218
.annotate 'line', 1509
    new $P2229, "Exception"
    set $P2229['type'], .CONTROL_RETURN
    find_lex $P2230, "self"
    find_lex $P2231, "$r"
    unless_null $P2231, vivify_922
    new $P2231, "Undef"
  vivify_922:
    find_lex $P2232, "$target"
    unless_null $P2232, vivify_923
    new $P2232, "Undef"
  vivify_923:
    find_lex $P2233, "%adverbs"
    unless_null $P2233, vivify_924
    $P2233 = root_new ['parrot';'Hash']
  vivify_924:
    $P2234 = $P2230."dumper"($P2231, $P2232, $P2233 :flat)
    setattribute $P2229, 'payload', $P2234
    throw $P2229
.annotate 'line', 1508
    goto if_2218_end
  if_2218:
.annotate 'line', 1507
    new $P2227, "Exception"
    set $P2227['type'], .CONTROL_RETURN
    find_lex $P2228, "$r"
    unless_null $P2228, vivify_925
    new $P2228, "Undef"
  vivify_925:
    setattribute $P2227, 'payload', $P2228
    throw $P2227
  if_2218_end:
.annotate 'line', 1488
    .return ($P2217)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2182"  :anon :subid("212_1303418077.916") :outer("211_1303418077.916")
.annotate 'line', 1491
    .const 'Sub' $P2197 = "213_1303418077.916" 
    capture_lex $P2197
    new $P2193, 'ExceptionHandler'
    set_label $P2193, control_2192
    $P2193."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2193
.annotate 'line', 1495
    find_lex $P2184, "$in-handle"
    unless_null $P2184, vivify_907
    new $P2184, "Undef"
  vivify_907:
    find_lex $P2185, "$encoding"
    unless_null $P2185, vivify_908
    new $P2185, "Undef"
  vivify_908:
    $P2184."encoding"($P2185)
.annotate 'line', 1496
    find_lex $P2186, "@codes"
    unless_null $P2186, vivify_909
    $P2186 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    find_lex $P2187, "$in-handle"
    unless_null $P2187, vivify_910
    new $P2187, "Undef"
  vivify_910:
    find_lex $P2188, "$_"
    unless_null $P2188, vivify_911
    new $P2188, "Undef"
  vivify_911:
    $P2189 = $P2187."readall"($P2188)
    push $P2186, $P2189
.annotate 'line', 1497
    find_lex $P2190, "$in-handle"
    unless_null $P2190, vivify_912
    new $P2190, "Undef"
  vivify_912:
    $P2190."close"()
.annotate 'line', 1491
    pop_eh 
    goto skip_handler_2191
  control_2192:
.annotate 'line', 1498
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2197 = "213_1303418077.916" 
    newclosure $P2203, $P2197
    $P2203(exception)
    new $P2204, 'Integer'
    set $P2204, 1
    set exception["handled"], $P2204
    set $I2205, exception["handled"]
    ne $I2205, 1, nothandled_2195
  handled_2194:
    .return (exception)
  nothandled_2195:
    rethrow exception
  skip_handler_2191:
.annotate 'line', 1491
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2196"  :anon :subid("213_1303418077.916") :outer("212_1303418077.916")
    .param pmc param_2198
.annotate 'line', 1498
    .lex "$_", param_2198
    find_lex $P2199, "$_"
    .lex "$!", $P2199
.annotate 'line', 1499
    new $P2200, 'String'
    set $P2200, "Error while reading from file: "
    find_lex $P2201, "$_"
    unless_null $P2201, vivify_913
    new $P2201, "Undef"
  vivify_913:
    concat $P2202, $P2200, $P2201
    store_lex "$err", $P2202
.annotate 'line', 1498
    .return ($P2202)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2242
    .param pmc param_2243
    .param pmc param_2244 :slurpy :named
.annotate 'line', 1515
    .const 'Sub' $P2265 = "215_1303418077.916" 
    capture_lex $P2265
    new $P2241, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2241, control_2240
    push_eh $P2241
    .lex "self", param_2242
    .lex "$source", param_2243
    .lex "%adverbs", param_2244
.annotate 'line', 1516
    $P2245 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2245
.annotate 'line', 1518
    new $P2246, "Undef"
    .lex "$target", $P2246
.annotate 'line', 1519
    new $P2247, "Undef"
    .lex "$result", $P2247
.annotate 'line', 1520
    new $P2248, "Undef"
    .lex "$stderr", $P2248
.annotate 'line', 1516
    find_lex $P2249, "%adverbs"
    unless_null $P2249, vivify_926
    $P2249 = root_new ['parrot';'Hash']
  vivify_926:
    find_lex $P2250, "%*COMPILING"
    unless_null $P2250, vivify_927
    get_hll_global $P2250, "%COMPILING"
    unless_null $P2250, vivify_928
    die "Contextual %*COMPILING not found"
  vivify_928:
    store_lex "%*COMPILING", $P2250
  vivify_927:
    set $P2250["%?OPTIONS"], $P2249
.annotate 'line', 1518
    find_lex $P2251, "%adverbs"
    unless_null $P2251, vivify_929
    $P2251 = root_new ['parrot';'Hash']
  vivify_929:
    set $P2252, $P2251["target"]
    unless_null $P2252, vivify_930
    new $P2252, "Undef"
  vivify_930:
    set $S2253, $P2252
    downcase $S2254, $S2253
    new $P2255, 'String'
    set $P2255, $S2254
    store_lex "$target", $P2255
.annotate 'line', 1519
    find_lex $P2256, "$source"
    unless_null $P2256, vivify_931
    new $P2256, "Undef"
  vivify_931:
    store_lex "$result", $P2256
.annotate 'line', 1520
    getinterp $P2257
    $P2258 = $P2257."stderr_handle"()
    store_lex "$stderr", $P2258
.annotate 'line', 1521
    find_lex $P2260, "self"
    $P2261 = $P2260."stages"()
    defined $I2262, $P2261
    unless $I2262, for_undef_932
    iter $P2259, $P2261
    new $P2301, 'ExceptionHandler'
    set_label $P2301, loop2300_handler
    $P2301."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2301
  loop2300_test:
    unless $P2259, loop2300_done
    shift $P2263, $P2259
  loop2300_redo:
    .const 'Sub' $P2265 = "215_1303418077.916" 
    capture_lex $P2265
    $P2265($P2263)
  loop2300_next:
    goto loop2300_test
  loop2300_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2302, exception, 'type'
    eq $P2302, .CONTROL_LOOP_NEXT, loop2300_next
    eq $P2302, .CONTROL_LOOP_REDO, loop2300_redo
  loop2300_done:
    pop_eh 
  for_undef_932:
.annotate 'line', 1531
    new $P2303, "Exception"
    set $P2303['type'], .CONTROL_RETURN
    find_lex $P2304, "$result"
    unless_null $P2304, vivify_944
    new $P2304, "Undef"
  vivify_944:
    setattribute $P2303, 'payload', $P2304
    throw $P2303
.annotate 'line', 1515
    .return ()
  control_2240:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2305, exception, "payload"
    .return ($P2305)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2264"  :anon :subid("215_1303418077.916") :outer("214_1303418077.916")
    .param pmc param_2268
.annotate 'line', 1522
    new $P2266, "Undef"
    .lex "$timestamp", $P2266
.annotate 'line', 1524
    new $P2267, "Undef"
    .lex "$diff", $P2267
    .lex "$_", param_2268
.annotate 'line', 1522
    time $N2269
    new $P2270, 'Float'
    set $P2270, $N2269
    store_lex "$timestamp", $P2270
.annotate 'line', 1523
    find_lex $P2271, "self"
    find_lex $P2272, "$result"
    unless_null $P2272, vivify_933
    new $P2272, "Undef"
  vivify_933:
    find_lex $P2273, "%adverbs"
    unless_null $P2273, vivify_934
    $P2273 = root_new ['parrot';'Hash']
  vivify_934:
    find_lex $P2274, "$_"
    unless_null $P2274, vivify_935
    new $P2274, "Undef"
  vivify_935:
    set $S2275, $P2274
    $P2276 = $P2271.$S2275($P2272, $P2273 :flat)
    store_lex "$result", $P2276
.annotate 'line', 1524
    time $N2277
    new $P2278, 'Float'
    set $P2278, $N2277
    find_lex $P2279, "$timestamp"
    unless_null $P2279, vivify_936
    new $P2279, "Undef"
  vivify_936:
    sub $P2280, $P2278, $P2279
    store_lex "$diff", $P2280
.annotate 'line', 1525
    find_lex $P2282, "%adverbs"
    unless_null $P2282, vivify_937
    $P2282 = root_new ['parrot';'Hash']
  vivify_937:
    set $P2283, $P2282["stagestats"]
    unless_null $P2283, vivify_938
    new $P2283, "Undef"
  vivify_938:
    unless $P2283, if_2281_end
.annotate 'line', 1527
    find_lex $P2284, "$stderr"
    unless_null $P2284, vivify_939
    new $P2284, "Undef"
  vivify_939:
    new $P2285, 'String'
    set $P2285, "Stage "
    find_lex $P2286, "$_"
    unless_null $P2286, vivify_940
    new $P2286, "Undef"
  vivify_940:
    concat $P2287, $P2285, $P2286
    concat $P2288, $P2287, ": "
    find_lex $P2289, "$diff"
    unless_null $P2289, vivify_941
    new $P2289, "Undef"
  vivify_941:
    concat $P2290, $P2288, $P2289
    concat $P2291, $P2290, "\n"
    $P2284."print__N"($P2291)
  if_2281_end:
.annotate 'line', 1529
    find_lex $P2294, "$_"
    unless_null $P2294, vivify_942
    new $P2294, "Undef"
  vivify_942:
    set $S2295, $P2294
    find_lex $P2296, "$target"
    unless_null $P2296, vivify_943
    new $P2296, "Undef"
  vivify_943:
    set $S2297, $P2296
    iseq $I2298, $S2295, $S2297
    if $I2298, if_2293
    new $P2292, 'Integer'
    set $P2292, $I2298
    goto if_2293_end
  if_2293:
    set $I2299, .CONTROL_LOOP_LAST
    die 0, $I2299
  if_2293_end:
.annotate 'line', 1521
    .return ($P2292)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("216_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2307
    .param pmc param_2308
    .param pmc param_2309 :slurpy :named
.annotate 'line', 1534
    .lex "self", param_2307
    .lex "$source", param_2308
    .lex "%adverbs", param_2309
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
.sub "past"  :subid("217_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2311
    .param pmc param_2312
    .param pmc param_2313 :slurpy :named
.annotate 'line', 1583
    .lex "self", param_2311
    .lex "$source", param_2312
    .lex "%adverbs", param_2313
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
.sub "post"  :subid("218_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2315
    .param pmc param_2316
    .param pmc param_2317 :slurpy :named
.annotate 'line', 1623
    .lex "self", param_2315
    .lex "$source", param_2316
    .lex "%adverbs", param_2317
.annotate 'line', 1624
    compreg $P2318, "PAST"
    find_lex $P2319, "$source"
    unless_null $P2319, vivify_945
    new $P2319, "Undef"
  vivify_945:
    find_lex $P2320, "%adverbs"
    unless_null $P2320, vivify_946
    $P2320 = root_new ['parrot';'Hash']
  vivify_946:
    $P2321 = $P2318."to_post"($P2319, $P2320 :flat)
.annotate 'line', 1623
    .return ($P2321)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2323
    .param pmc param_2324
    .param pmc param_2325 :slurpy :named
.annotate 'line', 1627
    .lex "self", param_2323
    .lex "$source", param_2324
    .lex "%adverbs", param_2325
.annotate 'line', 1628
    compreg $P2326, "POST"
    find_lex $P2327, "$source"
    unless_null $P2327, vivify_947
    new $P2327, "Undef"
  vivify_947:
    find_lex $P2328, "%adverbs"
    unless_null $P2328, vivify_948
    $P2328 = root_new ['parrot';'Hash']
  vivify_948:
    $P2329 = $P2326."to_pir"($P2327, $P2328 :flat)
.annotate 'line', 1627
    .return ($P2329)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2331
    .param pmc param_2332
    .param pmc param_2333 :slurpy :named
.annotate 'line', 1631
    .lex "self", param_2331
    .lex "$source", param_2332
    .lex "%adverbs", param_2333
.annotate 'line', 1632
    new $P2334, "Undef"
    .lex "$compiler", $P2334
    compreg $P2335, "PIR"
    store_lex "$compiler", $P2335
.annotate 'line', 1633
    find_lex $P2336, "$compiler"
    unless_null $P2336, vivify_949
    new $P2336, "Undef"
  vivify_949:
    find_lex $P2337, "$source"
    unless_null $P2337, vivify_950
    new $P2337, "Undef"
  vivify_950:
    $P2338 = $P2336($P2337)
.annotate 'line', 1631
    .return ($P2338)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2340
    .param pmc param_2341
    .param pmc param_2342
    .param pmc param_2343 :slurpy :named
.annotate 'line', 1636
    .const 'Sub' $P2349 = "222_1303418077.916" 
    capture_lex $P2349
    .lex "self", param_2340
    .lex "$obj", param_2341
    .lex "$name", param_2342
    .lex "%options", param_2343
.annotate 'line', 1637
    find_lex $P2346, "%options"
    unless_null $P2346, vivify_951
    $P2346 = root_new ['parrot';'Hash']
  vivify_951:
    set $P2347, $P2346["dumper"]
    unless_null $P2347, vivify_952
    new $P2347, "Undef"
  vivify_952:
    if $P2347, if_2345
.annotate 'line', 1643
    find_lex $P2362, "$obj"
    unless_null $P2362, vivify_953
    new $P2362, "Undef"
  vivify_953:
    find_lex $P2363, "$name"
    unless_null $P2363, vivify_954
    new $P2363, "Undef"
  vivify_954:
    $P2364 = "_dumper"($P2362, $P2363)
.annotate 'line', 1642
    set $P2344, $P2364
.annotate 'line', 1637
    goto if_2345_end
  if_2345:
    .const 'Sub' $P2349 = "222_1303418077.916" 
    capture_lex $P2349
    $P2361 = $P2349()
    set $P2344, $P2361
  if_2345_end:
.annotate 'line', 1636
    .return ($P2344)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2348"  :anon :subid("222_1303418077.916") :outer("221_1303418077.916")
.annotate 'line', 1639
    new $P2350, "Undef"
    .lex "$dumper", $P2350
.annotate 'line', 1638
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1639
    find_lex $P2351, "%options"
    unless_null $P2351, vivify_955
    $P2351 = root_new ['parrot';'Hash']
  vivify_955:
    set $P2352, $P2351["dumper"]
    unless_null $P2352, vivify_956
    new $P2352, "Undef"
  vivify_956:
    set $S2353, $P2352
    downcase $S2354, $S2353
    get_hll_global $P2355, ["PCT"], "Dumper"
    unless_null $P2355, vivify_957
    $P2355 = root_new ['parrot';'Hash']
  vivify_957:
    set $P2356, $P2355[$S2354]
    unless_null $P2356, vivify_958
    new $P2356, "Undef"
  vivify_958:
    store_lex "$dumper", $P2356
.annotate 'line', 1640
    find_lex $P2357, "$dumper"
    unless_null $P2357, vivify_959
    new $P2357, "Undef"
  vivify_959:
    find_lex $P2358, "$obj"
    unless_null $P2358, vivify_960
    new $P2358, "Undef"
  vivify_960:
    find_lex $P2359, "$name"
    unless_null $P2359, vivify_961
    new $P2359, "Undef"
  vivify_961:
    $P2360 = $P2357($P2358, $P2359)
.annotate 'line', 1637
    .return ($P2360)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2366
    .param pmc param_2367 :optional
    .param int has_param_2367 :opt_flag
.annotate 'line', 1647
    .lex "self", param_2366
    if has_param_2367, optparam_962
    new $P2368, "Undef"
    set param_2367, $P2368
  optparam_962:
    .lex "$name", param_2367
.annotate 'line', 1648
    find_lex $P2370, "$name"
    unless_null $P2370, vivify_963
    new $P2370, "Undef"
  vivify_963:
    unless $P2370, if_2369_end
.annotate 'line', 1649
    find_lex $P2371, "$name"
    unless_null $P2371, vivify_964
    new $P2371, "Undef"
  vivify_964:
    "say"($P2371)
  if_2369_end:
.annotate 'line', 1651
    find_lex $P2372, "self"
    find_lex $P2373, "$?CLASS"
    getattribute $P2374, $P2372, $P2373, "$!usage"
    unless_null $P2374, vivify_965
    new $P2374, "Undef"
  vivify_965:
    say $P2374
.annotate 'line', 1652
    exit 0
.annotate 'line', 1647
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2376
.annotate 'line', 1655
    .lex "self", param_2376
.annotate 'line', 1656
    find_lex $P2377, "self"
    find_lex $P2378, "$?CLASS"
    getattribute $P2379, $P2377, $P2378, "$!version"
    unless_null $P2379, vivify_966
    new $P2379, "Undef"
  vivify_966:
    say $P2379
.annotate 'line', 1657
    exit 0
.annotate 'line', 1655
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2381
    .param pmc param_2382
.annotate 'line', 1660
    .const 'Sub' $P2392 = "226_1303418077.916" 
    capture_lex $P2392
    .lex "self", param_2381
    .lex "$stagename", param_2382
.annotate 'line', 1661
    $P2383 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2383
    new $P2384, "ResizableStringArray"
    store_lex "@new_stages", $P2384
.annotate 'line', 1662
    find_lex $P2386, "self"
    find_lex $P2387, "$?CLASS"
    getattribute $P2388, $P2386, $P2387, "@!stages"
    unless_null $P2388, vivify_967
    $P2388 = root_new ['parrot';'ResizablePMCArray']
  vivify_967:
    defined $I2389, $P2388
    unless $I2389, for_undef_968
    iter $P2385, $P2388
    new $P2405, 'ExceptionHandler'
    set_label $P2405, loop2404_handler
    $P2405."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2405
  loop2404_test:
    unless $P2385, loop2404_done
    shift $P2390, $P2385
  loop2404_redo:
    .const 'Sub' $P2392 = "226_1303418077.916" 
    capture_lex $P2392
    $P2392($P2390)
  loop2404_next:
    goto loop2404_test
  loop2404_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2406, exception, 'type'
    eq $P2406, .CONTROL_LOOP_NEXT, loop2404_next
    eq $P2406, .CONTROL_LOOP_REDO, loop2404_redo
  loop2404_done:
    pop_eh 
  for_undef_968:
.annotate 'line', 1667
    find_lex $P2407, "@new_stages"
    unless_null $P2407, vivify_973
    $P2407 = root_new ['parrot';'ResizablePMCArray']
  vivify_973:
    find_lex $P2408, "self"
    find_lex $P2409, "$?CLASS"
    setattribute $P2408, $P2409, "@!stages", $P2407
.annotate 'line', 1660
    .return ($P2407)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2391"  :anon :subid("226_1303418077.916") :outer("225_1303418077.916")
    .param pmc param_2393
.annotate 'line', 1662
    .lex "$_", param_2393
.annotate 'line', 1663
    find_lex $P2396, "$_"
    unless_null $P2396, vivify_969
    new $P2396, "Undef"
  vivify_969:
    set $S2397, $P2396
    find_lex $P2398, "$stagename"
    unless_null $P2398, vivify_970
    new $P2398, "Undef"
  vivify_970:
    set $S2399, $P2398
    isne $I2400, $S2397, $S2399
    if $I2400, if_2395
    new $P2394, 'Integer'
    set $P2394, $I2400
    goto if_2395_end
  if_2395:
.annotate 'line', 1664
    find_lex $P2401, "@new_stages"
    unless_null $P2401, vivify_971
    $P2401 = root_new ['parrot';'ResizablePMCArray']
  vivify_971:
    find_lex $P2402, "$_"
    unless_null $P2402, vivify_972
    new $P2402, "Undef"
  vivify_972:
    $P2403 = $P2401."push"($P2402)
.annotate 'line', 1663
    set $P2394, $P2403
  if_2395_end:
.annotate 'line', 1662
    .return ($P2394)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2413
    .param pmc param_2414
    .param pmc param_2415 :slurpy :named
.annotate 'line', 1670
    .const 'Sub' $P2452 = "229_1303418077.916" 
    capture_lex $P2452
    .const 'Sub' $P2434 = "228_1303418077.916" 
    capture_lex $P2434
    new $P2412, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2412, control_2411
    push_eh $P2412
    .lex "self", param_2413
    .lex "$stagename", param_2414
    .lex "%adverbs", param_2415
.annotate 'line', 1671
    new $P2416, "Undef"
    .lex "$position", $P2416
.annotate 'line', 1672
    new $P2417, "Undef"
    .lex "$where", $P2417
.annotate 'line', 1685
    $P2418 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2418
.annotate 'line', 1670
    find_lex $P2419, "$position"
    unless_null $P2419, vivify_974
    new $P2419, "Undef"
  vivify_974:
    find_lex $P2420, "$where"
    unless_null $P2420, vivify_975
    new $P2420, "Undef"
  vivify_975:
.annotate 'line', 1673
    find_lex $P2422, "%adverbs"
    unless_null $P2422, vivify_976
    $P2422 = root_new ['parrot';'Hash']
  vivify_976:
    set $P2423, $P2422["before"]
    unless_null $P2423, vivify_977
    new $P2423, "Undef"
  vivify_977:
    if $P2423, if_2421
.annotate 'line', 1676
    find_lex $P2428, "%adverbs"
    unless_null $P2428, vivify_978
    $P2428 = root_new ['parrot';'Hash']
  vivify_978:
    set $P2429, $P2428["after"]
    unless_null $P2429, vivify_979
    new $P2429, "Undef"
  vivify_979:
    if $P2429, if_2427
.annotate 'line', 1679
    .const 'Sub' $P2434 = "228_1303418077.916" 
    capture_lex $P2434
    $P2434()
    goto if_2427_end
  if_2427:
.annotate 'line', 1677
    find_lex $P2430, "%adverbs"
    unless_null $P2430, vivify_983
    $P2430 = root_new ['parrot';'Hash']
  vivify_983:
    set $P2431, $P2430["after"]
    unless_null $P2431, vivify_984
    new $P2431, "Undef"
  vivify_984:
    store_lex "$where", $P2431
.annotate 'line', 1678
    new $P2432, "String"
    assign $P2432, "after"
    store_lex "$position", $P2432
  if_2427_end:
.annotate 'line', 1676
    goto if_2421_end
  if_2421:
.annotate 'line', 1674
    find_lex $P2424, "%adverbs"
    unless_null $P2424, vivify_985
    $P2424 = root_new ['parrot';'Hash']
  vivify_985:
    set $P2425, $P2424["before"]
    unless_null $P2425, vivify_986
    new $P2425, "Undef"
  vivify_986:
    store_lex "$where", $P2425
.annotate 'line', 1675
    new $P2426, "String"
    assign $P2426, "before"
    store_lex "$position", $P2426
  if_2421_end:
.annotate 'line', 1685
    new $P2445, "ResizableStringArray"
    store_lex "@new-stages", $P2445
.annotate 'line', 1686
    find_lex $P2447, "self"
    $P2448 = $P2447."stages"()
    defined $I2449, $P2448
    unless $I2449, for_undef_987
    iter $P2446, $P2448
    new $P2477, 'ExceptionHandler'
    set_label $P2477, loop2476_handler
    $P2477."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2477
  loop2476_test:
    unless $P2446, loop2476_done
    shift $P2450, $P2446
  loop2476_redo:
    .const 'Sub' $P2452 = "229_1303418077.916" 
    capture_lex $P2452
    $P2452($P2450)
  loop2476_next:
    goto loop2476_test
  loop2476_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2478, exception, 'type'
    eq $P2478, .CONTROL_LOOP_NEXT, loop2476_next
    eq $P2478, .CONTROL_LOOP_REDO, loop2476_redo
  loop2476_done:
    pop_eh 
  for_undef_987:
.annotate 'line', 1699
    find_lex $P2479, "self"
    find_lex $P2480, "@new-stages"
    unless_null $P2480, vivify_1001
    $P2480 = root_new ['parrot';'ResizablePMCArray']
  vivify_1001:
    $P2481 = $P2479."stages"($P2480)
.annotate 'line', 1670
    .return ($P2481)
  control_2411:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2482, exception, "payload"
    .return ($P2482)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2433"  :anon :subid("228_1303418077.916") :outer("227_1303418077.916")
.annotate 'line', 1680
    $P2435 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2435
    find_lex $P2436, "self"
    $P2437 = $P2436."stages"()
    clone $P2438, $P2437
    store_lex "@new-stages", $P2438
.annotate 'line', 1681
    find_lex $P2439, "@new-stages"
    unless_null $P2439, vivify_980
    $P2439 = root_new ['parrot';'ResizablePMCArray']
  vivify_980:
    find_lex $P2440, "$stagename"
    unless_null $P2440, vivify_981
    new $P2440, "Undef"
  vivify_981:
    push $P2439, $P2440
.annotate 'line', 1682
    find_lex $P2441, "self"
    find_lex $P2442, "@new-stages"
    unless_null $P2442, vivify_982
    $P2442 = root_new ['parrot';'ResizablePMCArray']
  vivify_982:
    $P2441."stages"($P2442)
.annotate 'line', 1683
    new $P2443, "Exception"
    set $P2443['type'], .CONTROL_RETURN
    new $P2444, "Integer"
    assign $P2444, 1
    setattribute $P2443, 'payload', $P2444
    throw $P2443
.annotate 'line', 1679
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2451"  :anon :subid("229_1303418077.916") :outer("227_1303418077.916")
    .param pmc param_2453
.annotate 'line', 1686
    .lex "$_", param_2453
.annotate 'line', 1687
    find_lex $P2456, "$_"
    unless_null $P2456, vivify_988
    new $P2456, "Undef"
  vivify_988:
    set $S2457, $P2456
    find_lex $P2458, "$where"
    unless_null $P2458, vivify_989
    new $P2458, "Undef"
  vivify_989:
    set $S2459, $P2458
    iseq $I2460, $S2457, $S2459
    if $I2460, if_2455
.annotate 'line', 1696
    find_lex $P2474, "@new-stages"
    unless_null $P2474, vivify_990
    $P2474 = root_new ['parrot';'ResizablePMCArray']
  vivify_990:
    find_lex $P2475, "$_"
    unless_null $P2475, vivify_991
    new $P2475, "Undef"
  vivify_991:
    push $P2474, $P2475
.annotate 'line', 1695
    set $P2454, $P2474
.annotate 'line', 1687
    goto if_2455_end
  if_2455:
.annotate 'line', 1688
    find_lex $P2463, "$position"
    unless_null $P2463, vivify_992
    new $P2463, "Undef"
  vivify_992:
    set $S2464, $P2463
    iseq $I2465, $S2464, "before"
    if $I2465, if_2462
.annotate 'line', 1692
    find_lex $P2470, "@new-stages"
    unless_null $P2470, vivify_993
    $P2470 = root_new ['parrot';'ResizablePMCArray']
  vivify_993:
    find_lex $P2471, "$_"
    unless_null $P2471, vivify_994
    new $P2471, "Undef"
  vivify_994:
    push $P2470, $P2471
.annotate 'line', 1693
    find_lex $P2472, "@new-stages"
    unless_null $P2472, vivify_995
    $P2472 = root_new ['parrot';'ResizablePMCArray']
  vivify_995:
    find_lex $P2473, "$stagename"
    unless_null $P2473, vivify_996
    new $P2473, "Undef"
  vivify_996:
    push $P2472, $P2473
.annotate 'line', 1691
    set $P2461, $P2472
.annotate 'line', 1688
    goto if_2462_end
  if_2462:
.annotate 'line', 1689
    find_lex $P2466, "@new-stages"
    unless_null $P2466, vivify_997
    $P2466 = root_new ['parrot';'ResizablePMCArray']
  vivify_997:
    find_lex $P2467, "$stagename"
    unless_null $P2467, vivify_998
    new $P2467, "Undef"
  vivify_998:
    push $P2466, $P2467
.annotate 'line', 1690
    find_lex $P2468, "@new-stages"
    unless_null $P2468, vivify_999
    $P2468 = root_new ['parrot';'ResizablePMCArray']
  vivify_999:
    find_lex $P2469, "$_"
    unless_null $P2469, vivify_1000
    new $P2469, "Undef"
  vivify_1000:
    push $P2468, $P2469
.annotate 'line', 1688
    set $P2461, $P2468
  if_2462_end:
.annotate 'line', 1687
    set $P2454, $P2461
  if_2455_end:
.annotate 'line', 1686
    .return ($P2454)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2484
    .param pmc param_2485
.annotate 'line', 1702
    .const 'Sub' $P2523 = "231_1303418077.916" 
    capture_lex $P2523
    .lex "self", param_2484
    .lex "$name", param_2485
.annotate 'line', 1703
    $P2486 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2486
.annotate 'line', 1704
    new $P2487, "Undef"
    .lex "$sigil", $P2487
.annotate 'line', 1707
    new $P2488, "Undef"
    .lex "$idx", $P2488
.annotate 'line', 1715
    $P2489 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2489
.annotate 'line', 1703
    find_lex $P2490, "$name"
    unless_null $P2490, vivify_1002
    new $P2490, "Undef"
  vivify_1002:
    set $S2491, $P2490
    split $P2492, "::", $S2491
    store_lex "@ns", $P2492
.annotate 'line', 1704
    find_lex $P2493, "@ns"
    unless_null $P2493, vivify_1003
    $P2493 = root_new ['parrot';'ResizablePMCArray']
  vivify_1003:
    set $P2494, $P2493[0]
    unless_null $P2494, vivify_1004
    new $P2494, "Undef"
  vivify_1004:
    set $S2495, $P2494
    substr $S2496, $S2495, 0, 1
    new $P2497, 'String'
    set $P2497, $S2496
    store_lex "$sigil", $P2497
.annotate 'line', 1707
    find_lex $P2498, "$sigil"
    unless_null $P2498, vivify_1005
    new $P2498, "Undef"
  vivify_1005:
    set $S2499, $P2498
    index $I2500, "$@%&", $S2499
    new $P2501, 'Integer'
    set $P2501, $I2500
    store_lex "$idx", $P2501
.annotate 'line', 1708
    find_lex $P2503, "$idx"
    unless_null $P2503, vivify_1006
    new $P2503, "Undef"
  vivify_1006:
    set $N2504, $P2503
    isge $I2505, $N2504, 0.0
    unless $I2505, if_2502_end
.annotate 'line', 1709
    find_lex $P2506, "@ns"
    unless_null $P2506, vivify_1007
    $P2506 = root_new ['parrot';'ResizablePMCArray']
  vivify_1007:
    set $P2507, $P2506[0]
    unless_null $P2507, vivify_1008
    new $P2507, "Undef"
  vivify_1008:
    set $S2508, $P2507
    substr $S2509, $S2508, 1
    new $P2510, 'String'
    set $P2510, $S2509
    find_lex $P2511, "@ns"
    unless_null $P2511, vivify_1009
    $P2511 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2511
  vivify_1009:
    set $P2511[0], $P2510
.annotate 'line', 1710
    find_lex $P2512, "$sigil"
    unless_null $P2512, vivify_1010
    new $P2512, "Undef"
  vivify_1010:
    find_lex $P2513, "@ns"
    unless_null $P2513, vivify_1011
    $P2513 = root_new ['parrot';'ResizablePMCArray']
  vivify_1011:
    set $P2514, $P2513[-1]
    unless_null $P2514, vivify_1012
    new $P2514, "Undef"
  vivify_1012:
    concat $P2515, $P2512, $P2514
    find_lex $P2516, "@ns"
    unless_null $P2516, vivify_1013
    $P2516 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2516
  vivify_1013:
    set $P2516[-1], $P2515
  if_2502_end:
.annotate 'line', 1708
    find_lex $P2517, "@actual_ns"
    unless_null $P2517, vivify_1014
    $P2517 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
.annotate 'line', 1716
    find_lex $P2519, "@ns"
    unless_null $P2519, vivify_1015
    $P2519 = root_new ['parrot';'ResizablePMCArray']
  vivify_1015:
    defined $I2520, $P2519
    unless $I2520, for_undef_1016
    iter $P2518, $P2519
    new $P2533, 'ExceptionHandler'
    set_label $P2533, loop2532_handler
    $P2533."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2533
  loop2532_test:
    unless $P2518, loop2532_done
    shift $P2521, $P2518
  loop2532_redo:
    .const 'Sub' $P2523 = "231_1303418077.916" 
    capture_lex $P2523
    $P2523($P2521)
  loop2532_next:
    goto loop2532_test
  loop2532_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2534, exception, 'type'
    eq $P2534, .CONTROL_LOOP_NEXT, loop2532_next
    eq $P2534, .CONTROL_LOOP_REDO, loop2532_redo
  loop2532_done:
    pop_eh 
  for_undef_1016:
    find_lex $P2535, "@actual_ns"
    unless_null $P2535, vivify_1020
    $P2535 = root_new ['parrot';'ResizablePMCArray']
  vivify_1020:
.annotate 'line', 1702
    .return ($P2535)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2522"  :anon :subid("231_1303418077.916") :outer("230_1303418077.916")
    .param pmc param_2524
.annotate 'line', 1716
    .lex "$_", param_2524
.annotate 'line', 1717
    find_lex $P2527, "$_"
    unless_null $P2527, vivify_1017
    new $P2527, "Undef"
  vivify_1017:
    set $S2528, $P2527
    iseq $I2529, $S2528, ""
    unless $I2529, unless_2526
    new $P2525, 'Integer'
    set $P2525, $I2529
    goto unless_2526_end
  unless_2526:
    find_lex $P2530, "@actual_ns"
    unless_null $P2530, vivify_1018
    $P2530 = root_new ['parrot';'ResizablePMCArray']
  vivify_1018:
    find_lex $P2531, "$_"
    unless_null $P2531, vivify_1019
    new $P2531, "Undef"
  vivify_1019:
    push $P2530, $P2531
    set $P2525, $P2530
  unless_2526_end:
.annotate 'line', 1716
    .return ($P2525)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1303418077.916") :outer("167_1303418077.916")
    .param pmc param_2537
    .param pmc param_2538
    .param pmc param_2539
    .param pmc param_2540 :optional :named("cache")
    .param int has_param_2540 :opt_flag
.annotate 'line', 1722
    .lex "self", param_2537
    .lex "$target", param_2538
    .lex "$pos", param_2539
    if has_param_2540, optparam_1021
    new $P2541, "Undef"
    set param_2540, $P2541
  optparam_1021:
    .lex "$cache", param_2540
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
.sub "_block2658"  :subid("234_1303418077.916") :outer("10_1303418077.916")
.annotate 'line', 1879
    .const 'Sub' $P2737 = "241_1303418077.916" 
    capture_lex $P2737
    .const 'Sub' $P2687 = "239_1303418077.916" 
    capture_lex $P2687
    .const 'Sub' $P2680 = "238_1303418077.916" 
    capture_lex $P2680
    .const 'Sub' $P2675 = "237_1303418077.916" 
    capture_lex $P2675
    .const 'Sub' $P2670 = "236_1303418077.916" 
    capture_lex $P2670
    .const 'Sub' $P2662 = "235_1303418077.916" 
    capture_lex $P2662
    .lex "$?PACKAGE", $P2660
    .lex "$?CLASS", $P2661
.annotate 'line', 1895
    .const 'Sub' $P2687 = "239_1303418077.916" 
    newclosure $P2735, $P2687
.annotate 'line', 1879
    .return ($P2735)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1023") :outer("234_1303418077.916")
.annotate 'line', 1879
    .const 'Sub' $P2659 = "234_1303418077.916" 
    .local pmc block
    set block, $P2659
    .const 'Sub' $P2737 = "241_1303418077.916" 
    capture_lex $P2737
    $P2737()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2736"  :anon :subid("241_1303418077.916") :outer("234_1303418077.916")
.annotate 'line', 1879
    nqp_get_sc_object $P2738, "1303418070.084", 4
    .local pmc type_obj
    set type_obj, $P2738
    get_how $P2739, type_obj
    get_hll_global $P2740, "NQPAttribute"
    $P2741 = $P2740."new"("@!arguments" :named("name"))
    $P2739."add_attribute"(type_obj, $P2741)
    get_how $P2742, type_obj
    get_hll_global $P2743, "NQPAttribute"
    $P2744 = $P2743."new"("%!options" :named("name"))
    $P2742."add_attribute"(type_obj, $P2744)
    get_how $P2745, type_obj
    .const 'Sub' $P2746 = "235_1303418077.916" 
    $P2745."add_method"(type_obj, "init", $P2746)
    get_how $P2747, type_obj
    .const 'Sub' $P2748 = "236_1303418077.916" 
    $P2747."add_method"(type_obj, "arguments", $P2748)
    get_how $P2749, type_obj
    .const 'Sub' $P2750 = "237_1303418077.916" 
    $P2749."add_method"(type_obj, "options", $P2750)
    get_how $P2751, type_obj
    .const 'Sub' $P2752 = "238_1303418077.916" 
    $P2751."add_method"(type_obj, "add-argument", $P2752)
    get_how $P2753, type_obj
    .const 'Sub' $P2754 = "239_1303418077.916" 
    $P2753."add_method"(type_obj, "add-option", $P2754)
    get_how $P2755, type_obj
    nqp_get_sc_object $P2756, "1303418068.989", 4
    $P2755."set_default_parent"(type_obj, $P2756)
    get_how $P2757, type_obj
    $P2758 = $P2757."compose"(type_obj)
    .return ($P2758)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1303418077.916") :outer("234_1303418077.916")
    .param pmc param_2663
.annotate 'line', 1883
    .lex "self", param_2663
.annotate 'line', 1884
    new $P2664, "ResizablePMCArray"
    find_lex $P2665, "self"
    find_lex $P2666, "$?CLASS"
    setattribute $P2665, $P2666, "@!arguments", $P2664
.annotate 'line', 1885
    new $P2667, "Hash"
    find_lex $P2668, "self"
    find_lex $P2669, "$?CLASS"
    setattribute $P2668, $P2669, "%!options", $P2667
.annotate 'line', 1883
    .return ($P2667)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1303418077.916") :outer("234_1303418077.916")
    .param pmc param_2671
.annotate 'line', 1888
    .lex "self", param_2671
    find_lex $P2672, "self"
    find_lex $P2673, "$?CLASS"
    getattribute $P2674, $P2672, $P2673, "@!arguments"
    unless_null $P2674, vivify_1024
    $P2674 = root_new ['parrot';'ResizablePMCArray']
  vivify_1024:
    .return ($P2674)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1303418077.916") :outer("234_1303418077.916")
    .param pmc param_2676
.annotate 'line', 1889
    .lex "self", param_2676
    find_lex $P2677, "self"
    find_lex $P2678, "$?CLASS"
    getattribute $P2679, $P2677, $P2678, "%!options"
    unless_null $P2679, vivify_1025
    $P2679 = root_new ['parrot';'Hash']
  vivify_1025:
    .return ($P2679)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1303418077.916") :outer("234_1303418077.916")
    .param pmc param_2681
    .param pmc param_2682
.annotate 'line', 1891
    .lex "self", param_2681
    .lex "$x", param_2682
.annotate 'line', 1892
    find_lex $P2683, "self"
    find_lex $P2684, "$?CLASS"
    getattribute $P2685, $P2683, $P2684, "@!arguments"
    unless_null $P2685, vivify_1026
    $P2685 = root_new ['parrot';'ResizablePMCArray']
  vivify_1026:
    find_lex $P2686, "$x"
    unless_null $P2686, vivify_1027
    new $P2686, "Undef"
  vivify_1027:
    push $P2685, $P2686
.annotate 'line', 1891
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1303418077.916") :outer("234_1303418077.916")
    .param pmc param_2688
    .param pmc param_2689
    .param pmc param_2690
.annotate 'line', 1895
    .const 'Sub' $P2699 = "240_1303418077.916" 
    capture_lex $P2699
    .lex "self", param_2688
    .lex "$name", param_2689
    .lex "$value", param_2690
.annotate 'line', 1898
    find_lex $P2696, "$name"
    unless_null $P2696, vivify_1028
    new $P2696, "Undef"
  vivify_1028:
    find_lex $P2693, "self"
    find_lex $P2694, "$?CLASS"
    getattribute $P2695, $P2693, $P2694, "%!options"
    unless_null $P2695, vivify_1029
    $P2695 = root_new ['parrot';'Hash']
  vivify_1029:
    exists $I2697, $P2695[$P2696]
    if $I2697, if_2692
.annotate 'line', 1907
    find_lex $P2730, "$value"
    unless_null $P2730, vivify_1030
    new $P2730, "Undef"
  vivify_1030:
    find_lex $P2731, "$name"
    unless_null $P2731, vivify_1031
    new $P2731, "Undef"
  vivify_1031:
    find_lex $P2732, "self"
    find_lex $P2733, "$?CLASS"
    getattribute $P2734, $P2732, $P2733, "%!options"
    unless_null $P2734, vivify_1032
    $P2734 = root_new ['parrot';'Hash']
    setattribute $P2732, $P2733, "%!options", $P2734
  vivify_1032:
    set $P2734[$P2731], $P2730
.annotate 'line', 1906
    set $P2691, $P2730
.annotate 'line', 1898
    goto if_2692_end
  if_2692:
    .const 'Sub' $P2699 = "240_1303418077.916" 
    capture_lex $P2699
    $P2729 = $P2699()
    set $P2691, $P2729
  if_2692_end:
.annotate 'line', 1895
    .return ($P2691)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2698"  :anon :subid("240_1303418077.916") :outer("239_1303418077.916")
.annotate 'line', 1899
    new $P2700, "Undef"
    .lex "$t", $P2700
    find_lex $P2701, "self"
    find_lex $P2702, "$?CLASS"
    getattribute $P2703, $P2701, $P2702, "%!options"
    unless_null $P2703, vivify_1033
    $P2703 = root_new ['parrot';'Hash']
  vivify_1033:
    typeof $S2704, $P2703
    new $P2705, 'String'
    set $P2705, $S2704
    store_lex "$t", $P2705
.annotate 'line', 1900
    find_lex $P2706, "$t"
    unless_null $P2706, vivify_1034
    new $P2706, "Undef"
  vivify_1034:
    "say"($P2706)
.annotate 'line', 1901
    find_lex $P2709, "$t"
    unless_null $P2709, vivify_1035
    new $P2709, "Undef"
  vivify_1035:
    set $S2710, $P2709
    iseq $I2711, $S2710, "ResizablePMCArray"
    if $I2711, if_2708
.annotate 'line', 1904
    find_lex $P2718, "$name"
    unless_null $P2718, vivify_1036
    new $P2718, "Undef"
  vivify_1036:
    find_lex $P2719, "self"
    find_lex $P2720, "$?CLASS"
    getattribute $P2721, $P2719, $P2720, "%!options"
    unless_null $P2721, vivify_1037
    $P2721 = root_new ['parrot';'Hash']
  vivify_1037:
    set $P2722, $P2721[$P2718]
    unless_null $P2722, vivify_1038
    new $P2722, "Undef"
  vivify_1038:
    find_lex $P2723, "$name"
    unless_null $P2723, vivify_1039
    new $P2723, "Undef"
  vivify_1039:
    new $P2724, "ResizablePMCArray"
    push $P2724, $P2722
    push $P2724, $P2723
    find_lex $P2725, "$name"
    unless_null $P2725, vivify_1040
    new $P2725, "Undef"
  vivify_1040:
    find_lex $P2726, "self"
    find_lex $P2727, "$?CLASS"
    getattribute $P2728, $P2726, $P2727, "%!options"
    unless_null $P2728, vivify_1041
    $P2728 = root_new ['parrot';'Hash']
    setattribute $P2726, $P2727, "%!options", $P2728
  vivify_1041:
    set $P2728[$P2725], $P2724
.annotate 'line', 1903
    set $P2707, $P2724
.annotate 'line', 1901
    goto if_2708_end
  if_2708:
.annotate 'line', 1902
    find_lex $P2712, "$name"
    unless_null $P2712, vivify_1042
    new $P2712, "Undef"
  vivify_1042:
    find_lex $P2713, "self"
    find_lex $P2714, "$?CLASS"
    getattribute $P2715, $P2713, $P2714, "%!options"
    unless_null $P2715, vivify_1043
    $P2715 = root_new ['parrot';'Hash']
  vivify_1043:
    set $P2716, $P2715[$P2712]
    unless_null $P2716, vivify_1044
    new $P2716, "Undef"
  vivify_1044:
    find_lex $P2717, "$value"
    unless_null $P2717, vivify_1045
    new $P2717, "Undef"
  vivify_1045:
    push $P2716, $P2717
.annotate 'line', 1901
    set $P2707, $P2716
  if_2708_end:
.annotate 'line', 1898
    .return ($P2707)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2759"  :subid("242_1303418077.916") :outer("10_1303418077.916")
.annotate 'line', 1912
    .const 'Sub' $P3185 = "261_1303418077.916" 
    capture_lex $P3185
    .const 'Sub' $P2900 = "253_1303418077.916" 
    capture_lex $P2900
    .const 'Sub' $P2888 = "252_1303418077.916" 
    capture_lex $P2888
    .const 'Sub' $P2864 = "251_1303418077.916" 
    capture_lex $P2864
    .const 'Sub' $P2815 = "249_1303418077.916" 
    capture_lex $P2815
    .const 'Sub' $P2809 = "248_1303418077.916" 
    capture_lex $P2809
    .const 'Sub' $P2801 = "247_1303418077.916" 
    capture_lex $P2801
    .const 'Sub' $P2777 = "245_1303418077.916" 
    capture_lex $P2777
    .const 'Sub' $P2772 = "244_1303418077.916" 
    capture_lex $P2772
    .const 'Sub' $P2763 = "243_1303418077.916" 
    capture_lex $P2763
    .lex "$?PACKAGE", $P2761
    .lex "$?CLASS", $P2762
.annotate 'line', 1972
    .const 'Sub' $P2900 = "253_1303418077.916" 
    newclosure $P3183, $P2900
.annotate 'line', 1912
    .return ($P3183)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1046") :outer("242_1303418077.916")
.annotate 'line', 1912
    .const 'Sub' $P2760 = "242_1303418077.916" 
    .local pmc block
    set block, $P2760
    .const 'Sub' $P3185 = "261_1303418077.916" 
    capture_lex $P3185
    $P3185()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3184"  :anon :subid("261_1303418077.916") :outer("242_1303418077.916")
.annotate 'line', 1912
    nqp_get_sc_object $P3186, "1303418070.084", 5
    .local pmc type_obj
    set type_obj, $P3186
    get_how $P3187, type_obj
    get_hll_global $P3188, "NQPAttribute"
    $P3189 = $P3188."new"("@!specs" :named("name"))
    $P3187."add_attribute"(type_obj, $P3189)
    get_how $P3190, type_obj
    get_hll_global $P3191, "NQPAttribute"
    $P3192 = $P3191."new"("%!options" :named("name"))
    $P3190."add_attribute"(type_obj, $P3192)
    get_how $P3193, type_obj
    get_hll_global $P3194, "NQPAttribute"
    $P3195 = $P3194."new"("%!stopper" :named("name"))
    $P3193."add_attribute"(type_obj, $P3195)
    get_how $P3196, type_obj
    get_hll_global $P3197, "NQPAttribute"
    $P3198 = $P3197."new"("$!stop-after-first-arg" :named("name"))
    $P3196."add_attribute"(type_obj, $P3198)
    get_how $P3199, type_obj
    .const 'Sub' $P3200 = "243_1303418077.916" 
    $P3199."add_method"(type_obj, "new", $P3200)
    get_how $P3201, type_obj
    .const 'Sub' $P3202 = "244_1303418077.916" 
    $P3201."add_method"(type_obj, "stop-after-first-arg", $P3202)
    get_how $P3203, type_obj
    .const 'Sub' $P3204 = "245_1303418077.916" 
    $P3203."add_method"(type_obj, "BUILD", $P3204)
    get_how $P3205, type_obj
    .const 'Sub' $P3206 = "247_1303418077.916" 
    $P3205."add_method"(type_obj, "add-stopper", $P3206)
    get_how $P3207, type_obj
    .const 'Sub' $P3208 = "248_1303418077.916" 
    $P3207."add_method"(type_obj, "split-option-aliases", $P3208)
    get_how $P3209, type_obj
    .const 'Sub' $P3210 = "249_1303418077.916" 
    $P3209."add_method"(type_obj, "add-spec", $P3210)
    get_how $P3211, type_obj
    .const 'Sub' $P3212 = "251_1303418077.916" 
    $P3211."add_method"(type_obj, "is-option", $P3212)
    get_how $P3213, type_obj
    .const 'Sub' $P3214 = "252_1303418077.916" 
    $P3213."add_method"(type_obj, "wants-value", $P3214)
    get_how $P3215, type_obj
    .const 'Sub' $P3216 = "253_1303418077.916" 
    $P3215."add_method"(type_obj, "parse", $P3216)
    get_how $P3217, type_obj
    nqp_get_sc_object $P3218, "1303418068.989", 4
    $P3217."set_default_parent"(type_obj, $P3218)
    get_how $P3219, type_obj
    $P3220 = $P3219."compose"(type_obj)
    .return ($P3220)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2764
    .param pmc param_2765
.annotate 'line', 1918
    .lex "self", param_2764
    .lex "@specs", param_2765
.annotate 'line', 1919
    new $P2766, "Undef"
    .lex "$obj", $P2766
    find_lex $P2767, "self"
    $P2768 = $P2767."CREATE"()
    store_lex "$obj", $P2768
.annotate 'line', 1920
    find_lex $P2769, "$obj"
    unless_null $P2769, vivify_1047
    new $P2769, "Undef"
  vivify_1047:
    find_lex $P2770, "@specs"
    unless_null $P2770, vivify_1048
    $P2770 = root_new ['parrot';'ResizablePMCArray']
  vivify_1048:
    $P2769."BUILD"($P2770 :named("specs"))
    find_lex $P2771, "$obj"
    unless_null $P2771, vivify_1049
    new $P2771, "Undef"
  vivify_1049:
.annotate 'line', 1918
    .return ($P2771)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2773
.annotate 'line', 1924
    .lex "self", param_2773
.annotate 'line', 1925
    new $P2774, "Integer"
    assign $P2774, 1
    find_lex $P2775, "self"
    find_lex $P2776, "$?CLASS"
    setattribute $P2775, $P2776, "$!stop-after-first-arg", $P2774
.annotate 'line', 1924
    .return ($P2774)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2778
    .param pmc param_2779 :optional :named("specs")
    .param int has_param_2779 :opt_flag
.annotate 'line', 1928
    .const 'Sub' $P2793 = "246_1303418077.916" 
    capture_lex $P2793
    .lex "self", param_2778
    if has_param_2779, optparam_1050
    $P2780 = root_new ['parrot';'ResizablePMCArray']
    set param_2779, $P2780
  optparam_1050:
    .lex "@specs", param_2779
.annotate 'line', 1929
    new $P2781, "Integer"
    assign $P2781, 1
    find_lex $P2782, "self"
    find_lex $P2783, "$?CLASS"
    getattribute $P2784, $P2782, $P2783, "%!stopper"
    unless_null $P2784, vivify_1051
    $P2784 = root_new ['parrot';'Hash']
    setattribute $P2782, $P2783, "%!stopper", $P2784
  vivify_1051:
    set $P2784["--"], $P2781
.annotate 'line', 1930
    new $P2785, "Integer"
    assign $P2785, 0
    find_lex $P2786, "self"
    find_lex $P2787, "$?CLASS"
    setattribute $P2786, $P2787, "$!stop-after-first-arg", $P2785
.annotate 'line', 1931
    find_lex $P2789, "@specs"
    unless_null $P2789, vivify_1052
    $P2789 = root_new ['parrot';'ResizablePMCArray']
  vivify_1052:
    defined $I2790, $P2789
    unless $I2790, for_undef_1053
    iter $P2788, $P2789
    new $P2799, 'ExceptionHandler'
    set_label $P2799, loop2798_handler
    $P2799."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2799
  loop2798_test:
    unless $P2788, loop2798_done
    shift $P2791, $P2788
  loop2798_redo:
    .const 'Sub' $P2793 = "246_1303418077.916" 
    capture_lex $P2793
    $P2793($P2791)
  loop2798_next:
    goto loop2798_test
  loop2798_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2800, exception, 'type'
    eq $P2800, .CONTROL_LOOP_NEXT, loop2798_next
    eq $P2800, .CONTROL_LOOP_REDO, loop2798_redo
  loop2798_done:
    pop_eh 
  for_undef_1053:
.annotate 'line', 1928
    .return ($P2788)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2792"  :anon :subid("246_1303418077.916") :outer("245_1303418077.916")
    .param pmc param_2794
.annotate 'line', 1931
    .lex "$_", param_2794
.annotate 'line', 1932
    find_lex $P2795, "self"
    find_lex $P2796, "$_"
    unless_null $P2796, vivify_1054
    new $P2796, "Undef"
  vivify_1054:
    $P2797 = $P2795."add-spec"($P2796)
.annotate 'line', 1931
    .return ($P2797)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2802
    .param pmc param_2803
.annotate 'line', 1935
    .lex "self", param_2802
    .lex "$x", param_2803
.annotate 'line', 1936
    new $P2804, "Integer"
    assign $P2804, 1
    find_lex $P2805, "$x"
    unless_null $P2805, vivify_1055
    new $P2805, "Undef"
  vivify_1055:
    find_lex $P2806, "self"
    find_lex $P2807, "$?CLASS"
    getattribute $P2808, $P2806, $P2807, "%!stopper"
    unless_null $P2808, vivify_1056
    $P2808 = root_new ['parrot';'Hash']
    setattribute $P2806, $P2807, "%!stopper", $P2808
  vivify_1056:
    set $P2808[$P2805], $P2804
.annotate 'line', 1935
    .return ($P2804)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2810
    .param pmc param_2811
.annotate 'line', 1939
    .lex "self", param_2810
    .lex "$s", param_2811
.annotate 'line', 1940
    find_lex $P2812, "$s"
    unless_null $P2812, vivify_1057
    new $P2812, "Undef"
  vivify_1057:
    set $S2813, $P2812
    split $P2814, "|", $S2813
.annotate 'line', 1939
    .return ($P2814)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2816
    .param pmc param_2817
.annotate 'line', 1944
    .const 'Sub' $P2854 = "250_1303418077.916" 
    capture_lex $P2854
    .lex "self", param_2816
    .lex "$s", param_2817
.annotate 'line', 1945
    new $P2818, "Undef"
    .lex "$i", $P2818
.annotate 'line', 1946
    new $P2819, "Undef"
    .lex "$type", $P2819
.annotate 'line', 1947
    $P2820 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2820
.annotate 'line', 1945
    find_lex $P2821, "$s"
    unless_null $P2821, vivify_1058
    new $P2821, "Undef"
  vivify_1058:
    set $S2822, $P2821
    index $I2823, $S2822, "="
    new $P2824, 'Integer'
    set $P2824, $I2823
    store_lex "$i", $P2824
    find_lex $P2825, "$type"
    unless_null $P2825, vivify_1059
    new $P2825, "Undef"
  vivify_1059:
    find_lex $P2826, "@options"
    unless_null $P2826, vivify_1060
    $P2826 = root_new ['parrot';'ResizablePMCArray']
  vivify_1060:
.annotate 'line', 1948
    find_lex $P2828, "$i"
    unless_null $P2828, vivify_1061
    new $P2828, "Undef"
  vivify_1061:
    set $N2829, $P2828
    islt $I2830, $N2829, 0.0
    if $I2830, if_2827
.annotate 'line', 1952
    find_lex $P2835, "$s"
    unless_null $P2835, vivify_1062
    new $P2835, "Undef"
  vivify_1062:
    set $S2836, $P2835
    find_lex $P2837, "$i"
    unless_null $P2837, vivify_1063
    new $P2837, "Undef"
  vivify_1063:
    add $P2838, $P2837, 1
    set $I2839, $P2838
    substr $S2840, $S2836, $I2839
    new $P2841, 'String'
    set $P2841, $S2840
    store_lex "$type", $P2841
.annotate 'line', 1953
    find_lex $P2842, "self"
    find_lex $P2843, "$s"
    unless_null $P2843, vivify_1064
    new $P2843, "Undef"
  vivify_1064:
    set $S2844, $P2843
    find_lex $P2845, "$i"
    unless_null $P2845, vivify_1065
    new $P2845, "Undef"
  vivify_1065:
    set $I2846, $P2845
    substr $S2847, $S2844, 0, $I2846
    $P2848 = $P2842."split-option-aliases"($S2847)
    store_lex "@options", $P2848
.annotate 'line', 1951
    goto if_2827_end
  if_2827:
.annotate 'line', 1949
    new $P2831, "String"
    assign $P2831, "b"
    store_lex "$type", $P2831
.annotate 'line', 1950
    find_lex $P2832, "self"
    find_lex $P2833, "$s"
    unless_null $P2833, vivify_1066
    new $P2833, "Undef"
  vivify_1066:
    $P2834 = $P2832."split-option-aliases"($P2833)
    store_lex "@options", $P2834
  if_2827_end:
.annotate 'line', 1955
    find_lex $P2850, "@options"
    unless_null $P2850, vivify_1067
    $P2850 = root_new ['parrot';'ResizablePMCArray']
  vivify_1067:
    defined $I2851, $P2850
    unless $I2851, for_undef_1068
    iter $P2849, $P2850
    new $P2862, 'ExceptionHandler'
    set_label $P2862, loop2861_handler
    $P2862."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2862
  loop2861_test:
    unless $P2849, loop2861_done
    shift $P2852, $P2849
  loop2861_redo:
    .const 'Sub' $P2854 = "250_1303418077.916" 
    capture_lex $P2854
    $P2854($P2852)
  loop2861_next:
    goto loop2861_test
  loop2861_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2863, exception, 'type'
    eq $P2863, .CONTROL_LOOP_NEXT, loop2861_next
    eq $P2863, .CONTROL_LOOP_REDO, loop2861_redo
  loop2861_done:
    pop_eh 
  for_undef_1068:
.annotate 'line', 1944
    .return ($P2849)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2853"  :anon :subid("250_1303418077.916") :outer("249_1303418077.916")
    .param pmc param_2855
.annotate 'line', 1955
    .lex "$_", param_2855
.annotate 'line', 1956
    find_lex $P2856, "$type"
    unless_null $P2856, vivify_1069
    new $P2856, "Undef"
  vivify_1069:
    find_lex $P2857, "$_"
    unless_null $P2857, vivify_1070
    new $P2857, "Undef"
  vivify_1070:
    find_lex $P2858, "self"
    find_lex $P2859, "$?CLASS"
    getattribute $P2860, $P2858, $P2859, "%!options"
    unless_null $P2860, vivify_1071
    $P2860 = root_new ['parrot';'Hash']
    setattribute $P2858, $P2859, "%!options", $P2860
  vivify_1071:
    set $P2860[$P2857], $P2856
.annotate 'line', 1955
    .return ($P2856)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2867
    .param pmc param_2868
.annotate 'line', 1961
    new $P2866, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2866, control_2865
    push_eh $P2866
    .lex "self", param_2867
    .lex "$x", param_2868
.annotate 'line', 1962
    find_lex $P2872, "$x"
    unless_null $P2872, vivify_1072
    new $P2872, "Undef"
  vivify_1072:
    set $S2873, $P2872
    iseq $I2874, $S2873, "-"
    unless $I2874, unless_2871
    new $P2870, 'Integer'
    set $P2870, $I2874
    goto unless_2871_end
  unless_2871:
    find_lex $P2875, "$x"
    unless_null $P2875, vivify_1073
    new $P2875, "Undef"
  vivify_1073:
    set $S2876, $P2875
    iseq $I2877, $S2876, "--"
    new $P2870, 'Integer'
    set $P2870, $I2877
  unless_2871_end:
    unless $P2870, if_2869_end
    new $P2878, "Exception"
    set $P2878['type'], .CONTROL_RETURN
    new $P2879, "Integer"
    assign $P2879, 0
    setattribute $P2878, 'payload', $P2879
    throw $P2878
  if_2869_end:
.annotate 'line', 1963
    find_lex $P2881, "$x"
    unless_null $P2881, vivify_1074
    new $P2881, "Undef"
  vivify_1074:
    set $S2882, $P2881
    substr $S2883, $S2882, 0, 1
    iseq $I2884, $S2883, "-"
    unless $I2884, if_2880_end
    new $P2885, "Exception"
    set $P2885['type'], .CONTROL_RETURN
    new $P2886, "Integer"
    assign $P2886, 1
    setattribute $P2885, 'payload', $P2886
    throw $P2885
  if_2880_end:
.annotate 'line', 1961
    .return (0)
  control_2865:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2887, exception, "payload"
    .return ($P2887)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2889
    .param pmc param_2890
.annotate 'line', 1967
    .lex "self", param_2889
    .lex "$x", param_2890
.annotate 'line', 1968
    new $P2891, "Undef"
    .lex "$spec", $P2891
    find_lex $P2892, "$x"
    unless_null $P2892, vivify_1075
    new $P2892, "Undef"
  vivify_1075:
    find_lex $P2893, "self"
    find_lex $P2894, "$?CLASS"
    getattribute $P2895, $P2893, $P2894, "%!options"
    unless_null $P2895, vivify_1076
    $P2895 = root_new ['parrot';'Hash']
  vivify_1076:
    set $P2896, $P2895[$P2892]
    unless_null $P2896, vivify_1077
    new $P2896, "Undef"
  vivify_1077:
    store_lex "$spec", $P2896
.annotate 'line', 1969
    find_lex $P2897, "$spec"
    unless_null $P2897, vivify_1078
    new $P2897, "Undef"
  vivify_1078:
    set $S2898, $P2897
    iseq $I2899, $S2898, "s"
.annotate 'line', 1967
    .return ($I2899)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1303418077.916") :outer("242_1303418077.916")
    .param pmc param_2903
    .param pmc param_2904
.annotate 'line', 1972
    .const 'Sub' $P2991 = "256_1303418077.916" 
    capture_lex $P2991
    .const 'Sub' $P2957 = "255_1303418077.916" 
    capture_lex $P2957
    .const 'Sub' $P2908 = "254_1303418077.916" 
    capture_lex $P2908
    new $P2902, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2902, control_2901
    push_eh $P2902
    .lex "self", param_2903
    .lex "@args", param_2904
.annotate 'line', 1973
    new $P2905, "Undef"
    .lex "$i", $P2905
.annotate 'line', 1974
    new $P2906, "Undef"
    .lex "$arg-count", $P2906
.annotate 'line', 1976
    new $P2907, "Undef"
    .lex "$result", $P2907
.annotate 'line', 1980
    .const 'Sub' $P2908 = "254_1303418077.916" 
    newclosure $P2956, $P2908
    .lex "get-value", $P2956
.annotate 'line', 1995
    .const 'Sub' $P2957 = "255_1303418077.916" 
    newclosure $P2975, $P2957
    .lex "slurp-rest", $P2975
.annotate 'line', 1973
    new $P2976, "Integer"
    assign $P2976, 0
    store_lex "$i", $P2976
.annotate 'line', 1974
    find_lex $P2977, "@args"
    unless_null $P2977, vivify_1104
    $P2977 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    set $N2978, $P2977
    new $P2979, 'Float'
    set $P2979, $N2978
    store_lex "$arg-count", $P2979
.annotate 'line', 1976
    get_hll_global $P2980, ["HLL";"CommandLine"], "Result"
    $P2981 = $P2980."new"()
    store_lex "$result", $P2981
.annotate 'line', 1977
    find_lex $P2982, "$result"
    unless_null $P2982, vivify_1105
    new $P2982, "Undef"
  vivify_1105:
    $P2982."init"()
    find_lex $P2983, "get-value"
    find_lex $P2984, "slurp-rest"
.annotate 'line', 2003
    new $P3178, 'ExceptionHandler'
    set_label $P3178, loop3177_handler
    $P3178."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3178
  loop3177_test:
    find_lex $P2985, "$i"
    unless_null $P2985, vivify_1106
    new $P2985, "Undef"
  vivify_1106:
    set $N2986, $P2985
    find_lex $P2987, "$arg-count"
    unless_null $P2987, vivify_1107
    new $P2987, "Undef"
  vivify_1107:
    set $N2988, $P2987
    islt $I2989, $N2986, $N2988
    unless $I2989, loop3177_done
  loop3177_redo:
    .const 'Sub' $P2991 = "256_1303418077.916" 
    capture_lex $P2991
    $P2991()
  loop3177_next:
    goto loop3177_test
  loop3177_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3179, exception, 'type'
    eq $P3179, .CONTROL_LOOP_NEXT, loop3177_next
    eq $P3179, .CONTROL_LOOP_REDO, loop3177_redo
  loop3177_done:
    pop_eh 
.annotate 'line', 2055
    new $P3180, "Exception"
    set $P3180['type'], .CONTROL_RETURN
    find_lex $P3181, "$result"
    unless_null $P3181, vivify_1168
    new $P3181, "Undef"
  vivify_1168:
    setattribute $P3180, 'payload', $P3181
    throw $P3180
.annotate 'line', 1972
    .return ()
  control_2901:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3182, exception, "payload"
    .return ($P3182)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1303418077.916") :outer("253_1303418077.916")
    .param pmc param_2909
.annotate 'line', 1980
    .lex "$opt", param_2909
.annotate 'line', 1981
    find_lex $P2912, "$i"
    unless_null $P2912, vivify_1079
    new $P2912, "Undef"
  vivify_1079:
    set $N2913, $P2912
    find_lex $P2914, "$arg-count"
    unless_null $P2914, vivify_1080
    new $P2914, "Undef"
  vivify_1080:
    sub $P2915, $P2914, 1
    set $N2916, $P2915
    iseq $I2917, $N2913, $N2916
    if $I2917, if_2911
.annotate 'line', 1983
    find_lex $P2924, "self"
    find_lex $P2925, "$i"
    unless_null $P2925, vivify_1081
    new $P2925, "Undef"
  vivify_1081:
    add $P2926, $P2925, 1
    set $I2927, $P2926
    find_lex $P2928, "@args"
    unless_null $P2928, vivify_1082
    $P2928 = root_new ['parrot';'ResizablePMCArray']
  vivify_1082:
    set $P2929, $P2928[$I2927]
    unless_null $P2929, vivify_1083
    new $P2929, "Undef"
  vivify_1083:
    $P2930 = $P2924."is-option"($P2929)
    if $P2930, if_2923
.annotate 'line', 1985
    find_lex $P2937, "$i"
    unless_null $P2937, vivify_1084
    new $P2937, "Undef"
  vivify_1084:
    add $P2938, $P2937, 1
    set $I2939, $P2938
    find_lex $P2940, "@args"
    unless_null $P2940, vivify_1085
    $P2940 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    set $P2941, $P2940[$I2939]
    unless_null $P2941, vivify_1086
    new $P2941, "Undef"
  vivify_1086:
    find_lex $P2942, "self"
    find_lex $P2943, "$?CLASS"
    getattribute $P2944, $P2942, $P2943, "%!stopper"
    unless_null $P2944, vivify_1087
    $P2944 = root_new ['parrot';'Hash']
  vivify_1087:
    set $P2945, $P2944[$P2941]
    unless_null $P2945, vivify_1088
    new $P2945, "Undef"
  vivify_1088:
    if $P2945, if_2936
.annotate 'line', 1987
    find_lex $P2950, "$i"
    unless_null $P2950, vivify_1089
    new $P2950, "Undef"
  vivify_1089:
    clone $P2951, $P2950
    inc $P2950
    find_lex $P2952, "$i"
    unless_null $P2952, vivify_1090
    new $P2952, "Undef"
  vivify_1090:
    set $I2953, $P2952
    find_lex $P2954, "@args"
    unless_null $P2954, vivify_1091
    $P2954 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    set $P2955, $P2954[$I2953]
    unless_null $P2955, vivify_1092
    new $P2955, "Undef"
  vivify_1092:
    set $P2935, $P2955
.annotate 'line', 1985
    goto if_2936_end
  if_2936:
.annotate 'line', 1986
    new $P2946, 'String'
    set $P2946, "Option "
    find_lex $P2947, "$opt"
    unless_null $P2947, vivify_1093
    new $P2947, "Undef"
  vivify_1093:
    concat $P2948, $P2946, $P2947
    concat $P2949, $P2948, " needs a value, but is followed by a stopper"
    die $P2949
  if_2936_end:
.annotate 'line', 1985
    set $P2922, $P2935
.annotate 'line', 1983
    goto if_2923_end
  if_2923:
.annotate 'line', 1984
    new $P2931, 'String'
    set $P2931, "Option "
    find_lex $P2932, "$opt"
    unless_null $P2932, vivify_1094
    new $P2932, "Undef"
  vivify_1094:
    concat $P2933, $P2931, $P2932
    concat $P2934, $P2933, " needs a value, but is followed by an option"
    die $P2934
  if_2923_end:
.annotate 'line', 1983
    set $P2910, $P2922
.annotate 'line', 1981
    goto if_2911_end
  if_2911:
.annotate 'line', 1982
    new $P2918, 'String'
    set $P2918, "Option "
    find_lex $P2919, "$opt"
    unless_null $P2919, vivify_1095
    new $P2919, "Undef"
  vivify_1095:
    concat $P2920, $P2918, $P2919
    concat $P2921, $P2920, " needs a value"
    die $P2921
  if_2911_end:
.annotate 'line', 1980
    .return ($P2910)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1303418077.916") :outer("253_1303418077.916")
.annotate 'line', 1995
    find_lex $P2958, "$i"
    unless_null $P2958, vivify_1096
    new $P2958, "Undef"
  vivify_1096:
    clone $P2959, $P2958
    inc $P2958
.annotate 'line', 1997
    new $P2973, 'ExceptionHandler'
    set_label $P2973, loop2972_handler
    $P2973."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2973
  loop2972_test:
    find_lex $P2960, "$i"
    unless_null $P2960, vivify_1097
    new $P2960, "Undef"
  vivify_1097:
    set $N2961, $P2960
    find_lex $P2962, "$arg-count"
    unless_null $P2962, vivify_1098
    new $P2962, "Undef"
  vivify_1098:
    set $N2963, $P2962
    islt $I2964, $N2961, $N2963
    unless $I2964, loop2972_done
  loop2972_redo:
.annotate 'line', 1998
    find_lex $P2965, "$result"
    unless_null $P2965, vivify_1099
    new $P2965, "Undef"
  vivify_1099:
    find_lex $P2966, "$i"
    unless_null $P2966, vivify_1100
    new $P2966, "Undef"
  vivify_1100:
    set $I2967, $P2966
    find_lex $P2968, "@args"
    unless_null $P2968, vivify_1101
    $P2968 = root_new ['parrot';'ResizablePMCArray']
  vivify_1101:
    set $P2969, $P2968[$I2967]
    unless_null $P2969, vivify_1102
    new $P2969, "Undef"
  vivify_1102:
    $P2965."add-argument"($P2969)
    find_lex $P2970, "$i"
    unless_null $P2970, vivify_1103
    new $P2970, "Undef"
  vivify_1103:
    clone $P2971, $P2970
    inc $P2970
  loop2972_next:
.annotate 'line', 1997
    goto loop2972_test
  loop2972_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2974, exception, 'type'
    eq $P2974, .CONTROL_LOOP_NEXT, loop2972_next
    eq $P2974, .CONTROL_LOOP_REDO, loop2972_redo
  loop2972_done:
    pop_eh 
.annotate 'line', 1995
    .return ($I2964)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2990"  :anon :subid("256_1303418077.916") :outer("253_1303418077.916")
.annotate 'line', 2003
    .const 'Sub' $P3093 = "258_1303418077.916" 
    capture_lex $P3093
    .const 'Sub' $P3007 = "257_1303418077.916" 
    capture_lex $P3007
.annotate 'line', 2004
    new $P2992, "Undef"
    .lex "$cur", $P2992
    find_lex $P2993, "$i"
    unless_null $P2993, vivify_1108
    new $P2993, "Undef"
  vivify_1108:
    set $I2994, $P2993
    find_lex $P2995, "@args"
    unless_null $P2995, vivify_1109
    $P2995 = root_new ['parrot';'ResizablePMCArray']
  vivify_1109:
    set $P2996, $P2995[$I2994]
    unless_null $P2996, vivify_1110
    new $P2996, "Undef"
  vivify_1110:
    store_lex "$cur", $P2996
.annotate 'line', 2005
    find_lex $P2998, "self"
    find_lex $P2999, "$cur"
    unless_null $P2999, vivify_1111
    new $P2999, "Undef"
  vivify_1111:
    $P3000 = $P2998."is-option"($P2999)
    if $P3000, if_2997
.annotate 'line', 2047
    find_lex $P3164, "$cur"
    unless_null $P3164, vivify_1112
    new $P3164, "Undef"
  vivify_1112:
    find_lex $P3165, "self"
    find_lex $P3166, "$?CLASS"
    getattribute $P3167, $P3165, $P3166, "%!stopper"
    unless_null $P3167, vivify_1113
    $P3167 = root_new ['parrot';'Hash']
  vivify_1113:
    set $P3168, $P3167[$P3164]
    unless_null $P3168, vivify_1114
    new $P3168, "Undef"
  vivify_1114:
    if $P3168, if_3163
.annotate 'line', 2050
    find_lex $P3169, "$result"
    unless_null $P3169, vivify_1115
    new $P3169, "Undef"
  vivify_1115:
    find_lex $P3170, "$cur"
    unless_null $P3170, vivify_1116
    new $P3170, "Undef"
  vivify_1116:
    $P3169."add-argument"($P3170)
.annotate 'line', 2051
    find_lex $P3172, "self"
    find_lex $P3173, "$?CLASS"
    getattribute $P3174, $P3172, $P3173, "$!stop-after-first-arg"
    unless_null $P3174, vivify_1117
    new $P3174, "Undef"
  vivify_1117:
    unless $P3174, if_3171_end
    "slurp-rest"()
  if_3171_end:
.annotate 'line', 2049
    goto if_3163_end
  if_3163:
.annotate 'line', 2048
    "slurp-rest"()
  if_3163_end:
.annotate 'line', 2047
    goto if_2997_end
  if_2997:
.annotate 'line', 2006
    find_lex $P3002, "$cur"
    unless_null $P3002, vivify_1118
    new $P3002, "Undef"
  vivify_1118:
    set $S3003, $P3002
    substr $S3004, $S3003, 0, 2
    iseq $I3005, $S3004, "--"
    if $I3005, if_3001
.annotate 'line', 2025
    .const 'Sub' $P3093 = "258_1303418077.916" 
    capture_lex $P3093
    $P3093()
    goto if_3001_end
  if_3001:
.annotate 'line', 2006
    .const 'Sub' $P3007 = "257_1303418077.916" 
    capture_lex $P3007
    $P3007()
  if_3001_end:
  if_2997_end:
.annotate 'line', 2005
    find_lex $P3175, "$i"
    unless_null $P3175, vivify_1167
    new $P3175, "Undef"
  vivify_1167:
    clone $P3176, $P3175
    inc $P3175
.annotate 'line', 2003
    .return ($P3176)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3092"  :anon :subid("258_1303418077.916") :outer("256_1303418077.916")
.annotate 'line', 2025
    .const 'Sub' $P3138 = "259_1303418077.916" 
    capture_lex $P3138
.annotate 'line', 2026
    new $P3094, "Undef"
    .lex "$opt", $P3094
    find_lex $P3095, "$cur"
    unless_null $P3095, vivify_1119
    new $P3095, "Undef"
  vivify_1119:
    set $S3096, $P3095
    substr $S3097, $S3096, 1
    new $P3098, 'String'
    set $P3098, $S3097
    store_lex "$opt", $P3098
.annotate 'line', 2027
    find_lex $P3101, "$opt"
    unless_null $P3101, vivify_1120
    new $P3101, "Undef"
  vivify_1120:
    set $S3102, $P3101
    length $I3103, $S3102
    set $N3104, $I3103
    iseq $I3105, $N3104, 1.0
    if $I3105, if_3100
.annotate 'line', 2037
    .const 'Sub' $P3138 = "259_1303418077.916" 
    capture_lex $P3138
    $P3162 = $P3138()
    set $P3099, $P3162
.annotate 'line', 2027
    goto if_3100_end
  if_3100:
.annotate 'line', 2029
    find_lex $P3107, "$opt"
    unless_null $P3107, vivify_1128
    new $P3107, "Undef"
  vivify_1128:
    find_lex $P3108, "self"
    find_lex $P3109, "$?CLASS"
    getattribute $P3110, $P3108, $P3109, "%!options"
    unless_null $P3110, vivify_1129
    $P3110 = root_new ['parrot';'Hash']
  vivify_1129:
    set $P3111, $P3110[$P3107]
    unless_null $P3111, vivify_1130
    new $P3111, "Undef"
  vivify_1130:
    if $P3111, unless_3106_end
    new $P3112, 'String'
    set $P3112, "No such option -"
    find_lex $P3113, "$opt"
    unless_null $P3113, vivify_1131
    new $P3113, "Undef"
  vivify_1131:
    concat $P3114, $P3112, $P3113
    die $P3114
  unless_3106_end:
.annotate 'line', 2030
    find_lex $P3116, "self"
    find_lex $P3117, "$opt"
    unless_null $P3117, vivify_1132
    new $P3117, "Undef"
  vivify_1132:
    $P3118 = $P3116."wants-value"($P3117)
    if $P3118, if_3115
.annotate 'line', 2034
    find_lex $P3125, "$result"
    unless_null $P3125, vivify_1133
    new $P3125, "Undef"
  vivify_1133:
    find_lex $P3126, "$opt"
    unless_null $P3126, vivify_1134
    new $P3126, "Undef"
  vivify_1134:
    $P3125."add-option"($P3126, 1)
.annotate 'line', 2033
    goto if_3115_end
  if_3115:
.annotate 'line', 2031
    find_lex $P3119, "$result"
    unless_null $P3119, vivify_1135
    new $P3119, "Undef"
  vivify_1135:
    find_lex $P3120, "$opt"
    unless_null $P3120, vivify_1136
    new $P3120, "Undef"
  vivify_1136:
.annotate 'line', 2032
    new $P3121, 'String'
    set $P3121, "-"
    find_lex $P3122, "$opt"
    unless_null $P3122, vivify_1137
    new $P3122, "Undef"
  vivify_1137:
    concat $P3123, $P3121, $P3122
    $P3124 = "get-value"($P3123)
    $P3119."add-option"($P3120, $P3124)
  if_3115_end:
.annotate 'line', 2036
    new $P3129, 'String'
    set $P3129, "-"
    find_lex $P3130, "$opt"
    unless_null $P3130, vivify_1138
    new $P3130, "Undef"
  vivify_1138:
    concat $P3131, $P3129, $P3130
    find_lex $P3132, "self"
    find_lex $P3133, "$?CLASS"
    getattribute $P3134, $P3132, $P3133, "%!stopper"
    unless_null $P3134, vivify_1139
    $P3134 = root_new ['parrot';'Hash']
  vivify_1139:
    set $P3135, $P3134[$P3131]
    unless_null $P3135, vivify_1140
    new $P3135, "Undef"
  vivify_1140:
    if $P3135, if_3128
    set $P3127, $P3135
    goto if_3128_end
  if_3128:
    $P3136 = "slurp-rest"()
    set $P3127, $P3136
  if_3128_end:
.annotate 'line', 2027
    set $P3099, $P3127
  if_3100_end:
.annotate 'line', 2025
    .return ($P3099)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3137"  :anon :subid("259_1303418077.916") :outer("258_1303418077.916")
.annotate 'line', 2037
    .const 'Sub' $P3144 = "260_1303418077.916" 
    capture_lex $P3144
.annotate 'line', 2039
    new $P3139, "Undef"
    .lex "$iter", $P3139
    find_lex $P3140, "$opt"
    unless_null $P3140, vivify_1121
    new $P3140, "Undef"
  vivify_1121:
    iter $P3141, $P3140
    store_lex "$iter", $P3141
.annotate 'line', 2040
    new $P3160, 'ExceptionHandler'
    set_label $P3160, loop3159_handler
    $P3160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3160
  loop3159_test:
    find_lex $P3142, "$iter"
    unless_null $P3142, vivify_1122
    new $P3142, "Undef"
  vivify_1122:
    unless $P3142, loop3159_done
  loop3159_redo:
    .const 'Sub' $P3144 = "260_1303418077.916" 
    capture_lex $P3144
    $P3144()
  loop3159_next:
    goto loop3159_test
  loop3159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3161, exception, 'type'
    eq $P3161, .CONTROL_LOOP_NEXT, loop3159_next
    eq $P3161, .CONTROL_LOOP_REDO, loop3159_redo
  loop3159_done:
    pop_eh 
.annotate 'line', 2037
    .return ($P3142)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3143"  :anon :subid("260_1303418077.916") :outer("259_1303418077.916")
.annotate 'line', 2041
    new $P3145, "Undef"
    .lex "$o", $P3145
    find_lex $P3146, "$iter"
    unless_null $P3146, vivify_1123
    new $P3146, "Undef"
  vivify_1123:
    shift $P3147, $P3146
    store_lex "$o", $P3147
.annotate 'line', 2042
    find_lex $P3149, "self"
    find_lex $P3150, "$o"
    unless_null $P3150, vivify_1124
    new $P3150, "Undef"
  vivify_1124:
    $P3151 = $P3149."wants-value"($P3150)
    unless $P3151, if_3148_end
    new $P3152, 'String'
    set $P3152, "Option -"
    find_lex $P3153, "$o"
    unless_null $P3153, vivify_1125
    new $P3153, "Undef"
  vivify_1125:
    concat $P3154, $P3152, $P3153
    concat $P3155, $P3154, " requires a value and cannot be grouped"
    die $P3155
  if_3148_end:
.annotate 'line', 2043
    find_lex $P3156, "$result"
    unless_null $P3156, vivify_1126
    new $P3156, "Undef"
  vivify_1126:
    find_lex $P3157, "$o"
    unless_null $P3157, vivify_1127
    new $P3157, "Undef"
  vivify_1127:
    $P3158 = $P3156."add-option"($P3157, 1)
.annotate 'line', 2040
    .return ($P3158)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3006"  :anon :subid("257_1303418077.916") :outer("256_1303418077.916")
.annotate 'line', 2008
    new $P3008, "Undef"
    .lex "$opt", $P3008
.annotate 'line', 2009
    new $P3009, "Undef"
    .lex "$idx", $P3009
.annotate 'line', 2010
    new $P3010, "Undef"
    .lex "$value", $P3010
.annotate 'line', 2011
    new $P3011, "Undef"
    .lex "$has-value", $P3011
.annotate 'line', 2008
    find_lex $P3012, "$i"
    unless_null $P3012, vivify_1141
    new $P3012, "Undef"
  vivify_1141:
    set $I3013, $P3012
    find_lex $P3014, "@args"
    unless_null $P3014, vivify_1142
    $P3014 = root_new ['parrot';'ResizablePMCArray']
  vivify_1142:
    set $P3015, $P3014[$I3013]
    unless_null $P3015, vivify_1143
    new $P3015, "Undef"
  vivify_1143:
    set $S3016, $P3015
    substr $S3017, $S3016, 2
    new $P3018, 'String'
    set $P3018, $S3017
    store_lex "$opt", $P3018
.annotate 'line', 2009
    find_lex $P3019, "$opt"
    unless_null $P3019, vivify_1144
    new $P3019, "Undef"
  vivify_1144:
    set $S3020, $P3019
    index $I3021, $S3020, "="
    new $P3022, 'Integer'
    set $P3022, $I3021
    store_lex "$idx", $P3022
.annotate 'line', 2010
    new $P3023, "Integer"
    assign $P3023, 1
    store_lex "$value", $P3023
.annotate 'line', 2011
    new $P3024, "Integer"
    assign $P3024, 0
    store_lex "$has-value", $P3024
.annotate 'line', 2013
    find_lex $P3026, "$idx"
    unless_null $P3026, vivify_1145
    new $P3026, "Undef"
  vivify_1145:
    set $N3027, $P3026
    isge $I3028, $N3027, 0.0
    unless $I3028, if_3025_end
.annotate 'line', 2014
    find_lex $P3029, "$opt"
    unless_null $P3029, vivify_1146
    new $P3029, "Undef"
  vivify_1146:
    set $S3030, $P3029
    find_lex $P3031, "$idx"
    unless_null $P3031, vivify_1147
    new $P3031, "Undef"
  vivify_1147:
    add $P3032, $P3031, 1
    set $I3033, $P3032
    substr $S3034, $S3030, $I3033
    new $P3035, 'String'
    set $P3035, $S3034
    store_lex "$value", $P3035
.annotate 'line', 2015
    find_lex $P3036, "$opt"
    unless_null $P3036, vivify_1148
    new $P3036, "Undef"
  vivify_1148:
    set $S3037, $P3036
    find_lex $P3038, "$idx"
    unless_null $P3038, vivify_1149
    new $P3038, "Undef"
  vivify_1149:
    set $I3039, $P3038
    substr $S3040, $S3037, 0, $I3039
    new $P3041, 'String'
    set $P3041, $S3040
    store_lex "$opt", $P3041
.annotate 'line', 2016
    new $P3042, "Integer"
    assign $P3042, 1
    store_lex "$has-value", $P3042
  if_3025_end:
.annotate 'line', 2018
    find_lex $P3047, "$opt"
    unless_null $P3047, vivify_1150
    new $P3047, "Undef"
  vivify_1150:
    find_lex $P3044, "self"
    find_lex $P3045, "$?CLASS"
    getattribute $P3046, $P3044, $P3045, "%!options"
    unless_null $P3046, vivify_1151
    $P3046 = root_new ['parrot';'Hash']
  vivify_1151:
    exists $I3048, $P3046[$P3047]
    if $I3048, unless_3043_end
    new $P3049, 'String'
    set $P3049, "Illegal option --"
    find_lex $P3050, "$opt"
    unless_null $P3050, vivify_1152
    new $P3050, "Undef"
  vivify_1152:
    concat $P3051, $P3049, $P3050
    die $P3051
  unless_3043_end:
.annotate 'line', 2019
    find_lex $P3055, "$opt"
    unless_null $P3055, vivify_1153
    new $P3055, "Undef"
  vivify_1153:
    find_lex $P3056, "self"
    find_lex $P3057, "$?CLASS"
    getattribute $P3058, $P3056, $P3057, "%!options"
    unless_null $P3058, vivify_1154
    $P3058 = root_new ['parrot';'Hash']
  vivify_1154:
    set $P3059, $P3058[$P3055]
    unless_null $P3059, vivify_1155
    new $P3059, "Undef"
  vivify_1155:
    set $S3060, $P3059
    isne $I3061, $S3060, "s"
    if $I3061, if_3054
    new $P3053, 'Integer'
    set $P3053, $I3061
    goto if_3054_end
  if_3054:
    find_lex $P3062, "$has-value"
    unless_null $P3062, vivify_1156
    new $P3062, "Undef"
  vivify_1156:
    set $P3053, $P3062
  if_3054_end:
    unless $P3053, if_3052_end
    new $P3063, 'String'
    set $P3063, "Option --"
    find_lex $P3064, "$opt"
    unless_null $P3064, vivify_1157
    new $P3064, "Undef"
  vivify_1157:
    concat $P3065, $P3063, $P3064
    concat $P3066, $P3065, " does not allow a value"
    die $P3066
  if_3052_end:
.annotate 'line', 2020
    find_lex $P3070, "$has-value"
    unless_null $P3070, vivify_1158
    new $P3070, "Undef"
  vivify_1158:
    isfalse $I3071, $P3070
    if $I3071, if_3069
    new $P3068, 'Integer'
    set $P3068, $I3071
    goto if_3069_end
  if_3069:
    find_lex $P3072, "self"
    find_lex $P3073, "$opt"
    unless_null $P3073, vivify_1159
    new $P3073, "Undef"
  vivify_1159:
    $P3074 = $P3072."wants-value"($P3073)
    set $P3068, $P3074
  if_3069_end:
    unless $P3068, if_3067_end
.annotate 'line', 2021
    new $P3075, 'String'
    set $P3075, "--"
    find_lex $P3076, "$opt"
    unless_null $P3076, vivify_1160
    new $P3076, "Undef"
  vivify_1160:
    concat $P3077, $P3075, $P3076
    $P3078 = "get-value"($P3077)
    store_lex "$value", $P3078
  if_3067_end:
.annotate 'line', 2023
    find_lex $P3079, "$result"
    unless_null $P3079, vivify_1161
    new $P3079, "Undef"
  vivify_1161:
    find_lex $P3080, "$opt"
    unless_null $P3080, vivify_1162
    new $P3080, "Undef"
  vivify_1162:
    find_lex $P3081, "$value"
    unless_null $P3081, vivify_1163
    new $P3081, "Undef"
  vivify_1163:
    $P3079."add-option"($P3080, $P3081)
.annotate 'line', 2024
    new $P3084, 'String'
    set $P3084, "--"
    find_lex $P3085, "$opt"
    unless_null $P3085, vivify_1164
    new $P3085, "Undef"
  vivify_1164:
    concat $P3086, $P3084, $P3085
    find_lex $P3087, "self"
    find_lex $P3088, "$?CLASS"
    getattribute $P3089, $P3087, $P3088, "%!stopper"
    unless_null $P3089, vivify_1165
    $P3089 = root_new ['parrot';'Hash']
  vivify_1165:
    set $P3090, $P3089[$P3086]
    unless_null $P3090, vivify_1166
    new $P3090, "Undef"
  vivify_1166:
    if $P3090, if_3083
    set $P3082, $P3090
    goto if_3083_end
  if_3083:
    find_lex $P3091, "slurp-rest"
    set $P3082, $P3091
  if_3083_end:
.annotate 'line', 2006
    .return ($P3082)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3221"  :subid("262_1303418077.916") :outer("10_1303418077.916")
.annotate 'line', 2090
    .const 'Sub' $P3237 = "265_1303418077.916" 
    capture_lex $P3237
    .const 'Sub' $P3230 = "264_1303418077.916" 
    capture_lex $P3230
    .const 'Sub' $P3225 = "263_1303418077.916" 
    capture_lex $P3225
    .lex "$?PACKAGE", $P3223
    .lex "$?CLASS", $P3224
.annotate 'line', 2097
    .const 'Sub' $P3230 = "264_1303418077.916" 
    newclosure $P3235, $P3230
.annotate 'line', 2090
    .return ($P3235)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post1169") :outer("262_1303418077.916")
.annotate 'line', 2090
    .const 'Sub' $P3222 = "262_1303418077.916" 
    .local pmc block
    set block, $P3222
    .const 'Sub' $P3237 = "265_1303418077.916" 
    capture_lex $P3237
    $P3237()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3236"  :anon :subid("265_1303418077.916") :outer("262_1303418077.916")
.annotate 'line', 2090
    nqp_get_sc_object $P3238, "1303418070.084", 6
    .local pmc type_obj
    set type_obj, $P3238
    get_how $P3239, type_obj
    get_hll_global $P3240, "NQPAttribute"
    $P3241 = $P3240."new"("$!deserialize_past" :named("name"))
    $P3239."add_attribute"(type_obj, $P3241)
    get_how $P3242, type_obj
    .const 'Sub' $P3243 = "263_1303418077.916" 
    $P3242."add_method"(type_obj, "deserialize_past", $P3243)
    get_how $P3244, type_obj
    get_hll_global $P3245, "NQPAttribute"
    $P3246 = $P3245."new"("$!fixup_past" :named("name"))
    $P3244."add_attribute"(type_obj, $P3246)
    get_how $P3247, type_obj
    .const 'Sub' $P3248 = "264_1303418077.916" 
    $P3247."add_method"(type_obj, "fixup_past", $P3248)
    get_how $P3249, type_obj
    nqp_get_sc_object $P3250, "1303418068.989", 4
    $P3249."set_default_parent"(type_obj, $P3250)
    get_how $P3251, type_obj
    $P3252 = $P3251."compose"(type_obj)
    .return ($P3252)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("263_1303418077.916") :outer("262_1303418077.916")
    .param pmc param_3226
.annotate 'line', 2093
    .lex "self", param_3226
    find_lex $P3227, "self"
    find_lex $P3228, "$?CLASS"
    getattribute $P3229, $P3227, $P3228, "$!deserialize_past"
    unless_null $P3229, vivify_1170
    new $P3229, "Undef"
  vivify_1170:
    .return ($P3229)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("264_1303418077.916") :outer("262_1303418077.916")
    .param pmc param_3231
.annotate 'line', 2097
    .lex "self", param_3231
    find_lex $P3232, "self"
    find_lex $P3233, "$?CLASS"
    getattribute $P3234, $P3232, $P3233, "$!fixup_past"
    unless_null $P3234, vivify_1171
    new $P3234, "Undef"
  vivify_1171:
    .return ($P3234)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3253"  :subid("266_1303418077.916") :outer("10_1303418077.916")
.annotate 'line', 2100
    .const 'Sub' $P3799 = "291_1303418077.916" 
    capture_lex $P3799
    .const 'Sub' $P3725 = "289_1303418077.916" 
    capture_lex $P3725
    .const 'Sub' $P3720 = "288_1303418077.916" 
    capture_lex $P3720
    .const 'Sub' $P3703 = "287_1303418077.916" 
    capture_lex $P3703
    .const 'Sub' $P3677 = "286_1303418077.916" 
    capture_lex $P3677
    .const 'Sub' $P3671 = "285_1303418077.916" 
    capture_lex $P3671
    .const 'Sub' $P3602 = "284_1303418077.916" 
    capture_lex $P3602
    .const 'Sub' $P3563 = "283_1303418077.916" 
    capture_lex $P3563
    .const 'Sub' $P3480 = "280_1303418077.916" 
    capture_lex $P3480
    .const 'Sub' $P3459 = "279_1303418077.916" 
    capture_lex $P3459
    .const 'Sub' $P3417 = "277_1303418077.916" 
    capture_lex $P3417
    .const 'Sub' $P3383 = "276_1303418077.916" 
    capture_lex $P3383
    .const 'Sub' $P3369 = "275_1303418077.916" 
    capture_lex $P3369
    .const 'Sub' $P3344 = "274_1303418077.916" 
    capture_lex $P3344
    .const 'Sub' $P3336 = "273_1303418077.916" 
    capture_lex $P3336
    .const 'Sub' $P3321 = "272_1303418077.916" 
    capture_lex $P3321
    .const 'Sub' $P3304 = "271_1303418077.916" 
    capture_lex $P3304
    .const 'Sub' $P3290 = "270_1303418077.916" 
    capture_lex $P3290
    .const 'Sub' $P3272 = "269_1303418077.916" 
    capture_lex $P3272
    .const 'Sub' $P3263 = "268_1303418077.916" 
    capture_lex $P3263
    .const 'Sub' $P3255 = "267_1303418077.916" 
    capture_lex $P3255
.annotate 'line', 2110
    .const 'Sub' $P3255 = "267_1303418077.916" 
    newclosure $P3259, $P3255
    .lex "addr", $P3259
.annotate 'line', 2100
    .lex "$?PACKAGE", $P3260
    .lex "$?CLASS", $P3261
    find_lex $P3262, "addr"
.annotate 'line', 2401
    .const 'Sub' $P3725 = "289_1303418077.916" 
    newclosure $P3797, $P3725
.annotate 'line', 2100
    .return ($P3797)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1172") :outer("266_1303418077.916")
.annotate 'line', 2100
    .const 'Sub' $P3254 = "266_1303418077.916" 
    .local pmc block
    set block, $P3254
    .const 'Sub' $P3799 = "291_1303418077.916" 
    capture_lex $P3799
    $P3799()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3798"  :anon :subid("291_1303418077.916") :outer("266_1303418077.916")
.annotate 'line', 2100
    nqp_get_sc_object $P3800, "1303418070.084", 7
    .local pmc type_obj
    set type_obj, $P3800
    get_how $P3801, type_obj
    get_hll_global $P3802, "NQPAttribute"
    $P3803 = $P3802."new"("$!sc" :named("name"))
    $P3801."add_attribute"(type_obj, $P3803)
    get_how $P3804, type_obj
    get_hll_global $P3805, "NQPAttribute"
    $P3806 = $P3805."new"("$!handle" :named("name"))
    $P3804."add_attribute"(type_obj, $P3806)
    get_how $P3807, type_obj
    get_hll_global $P3808, "NQPAttribute"
    $P3809 = $P3808."new"("%!addr_to_slot" :named("name"))
    $P3807."add_attribute"(type_obj, $P3809)
    get_how $P3810, type_obj
    get_hll_global $P3811, "NQPAttribute"
    $P3812 = $P3811."new"("@!event_stream" :named("name"))
    $P3810."add_attribute"(type_obj, $P3812)
    get_how $P3813, type_obj
    .const 'Sub' $P3814 = "268_1303418077.916" 
    $P3813."add_method"(type_obj, "new", $P3814)
    get_how $P3815, type_obj
    .const 'Sub' $P3816 = "269_1303418077.916" 
    $P3815."add_method"(type_obj, "BUILD", $P3816)
    get_how $P3817, type_obj
    .const 'Sub' $P3818 = "270_1303418077.916" 
    $P3817."add_method"(type_obj, "slot_for_object", $P3818)
    get_how $P3819, type_obj
    .const 'Sub' $P3820 = "271_1303418077.916" 
    $P3819."add_method"(type_obj, "get_slot_past_for_object", $P3820)
    get_how $P3821, type_obj
    .const 'Sub' $P3822 = "272_1303418077.916" 
    $P3821."add_method"(type_obj, "set_slot_past", $P3822)
    get_how $P3823, type_obj
    .const 'Sub' $P3824 = "273_1303418077.916" 
    $P3823."add_method"(type_obj, "set_cur_sc", $P3824)
    get_how $P3825, type_obj
    .const 'Sub' $P3826 = "274_1303418077.916" 
    $P3825."add_method"(type_obj, "add_object", $P3826)
    get_how $P3827, type_obj
    .const 'Sub' $P3828 = "275_1303418077.916" 
    $P3827."add_method"(type_obj, "add_event", $P3828)
    get_how $P3829, type_obj
    .const 'Sub' $P3830 = "276_1303418077.916" 
    $P3829."add_method"(type_obj, "get_object_sc_ref_past", $P3830)
    get_how $P3831, type_obj
    .const 'Sub' $P3832 = "277_1303418077.916" 
    $P3831."add_method"(type_obj, "load_setting", $P3832)
    get_how $P3833, type_obj
    .const 'Sub' $P3834 = "279_1303418077.916" 
    $P3833."add_method"(type_obj, "load_module", $P3834)
    get_how $P3835, type_obj
    .const 'Sub' $P3836 = "280_1303418077.916" 
    $P3835."add_method"(type_obj, "install_package_symbol", $P3836)
    get_how $P3837, type_obj
    .const 'Sub' $P3838 = "283_1303418077.916" 
    $P3837."add_method"(type_obj, "install_lexical_symbol", $P3838)
    get_how $P3839, type_obj
    .const 'Sub' $P3840 = "284_1303418077.916" 
    $P3839."add_method"(type_obj, "pkg_create_mo", $P3840)
    get_how $P3841, type_obj
    .const 'Sub' $P3842 = "285_1303418077.916" 
    $P3841."add_method"(type_obj, "pkg_add_method", $P3842)
    get_how $P3843, type_obj
    .const 'Sub' $P3844 = "286_1303418077.916" 
    $P3843."add_method"(type_obj, "pkg_add_parent_or_role", $P3844)
    get_how $P3845, type_obj
    .const 'Sub' $P3846 = "287_1303418077.916" 
    $P3845."add_method"(type_obj, "pkg_compose", $P3846)
    get_how $P3847, type_obj
    .const 'Sub' $P3848 = "288_1303418077.916" 
    $P3847."add_method"(type_obj, "sc", $P3848)
    get_how $P3849, type_obj
    .const 'Sub' $P3850 = "289_1303418077.916" 
    $P3849."add_method"(type_obj, "to_past", $P3850)
    get_how $P3851, type_obj
    nqp_get_sc_object $P3852, "1303418068.989", 4
    $P3851."set_default_parent"(type_obj, $P3852)
    get_how $P3853, type_obj
    $P3854 = $P3853."compose"(type_obj)
    .return ($P3854)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("267_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3256
.annotate 'line', 2110
    .lex "$obj", param_3256
.annotate 'line', 2111
    find_lex $P3257, "$obj"
    unless_null $P3257, vivify_1173
    new $P3257, "Undef"
  vivify_1173:
    get_addr $I3258, $P3257
.annotate 'line', 2110
    .return ($I3258)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3264
    .param pmc param_3265 :named("handle")
.annotate 'line', 2118
    .lex "self", param_3264
    .lex "$handle", param_3265
.annotate 'line', 2119
    new $P3266, "Undef"
    .lex "$obj", $P3266
    find_lex $P3267, "self"
    $P3268 = $P3267."CREATE"()
    store_lex "$obj", $P3268
.annotate 'line', 2120
    find_lex $P3269, "$obj"
    unless_null $P3269, vivify_1174
    new $P3269, "Undef"
  vivify_1174:
    find_lex $P3270, "$handle"
    unless_null $P3270, vivify_1175
    new $P3270, "Undef"
  vivify_1175:
    $P3269."BUILD"($P3270 :named("handle"))
    find_lex $P3271, "$obj"
    unless_null $P3271, vivify_1176
    new $P3271, "Undef"
  vivify_1176:
.annotate 'line', 2118
    .return ($P3271)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3273
    .param pmc param_3274 :optional :named("handle")
    .param int has_param_3274 :opt_flag
.annotate 'line', 2124
    .lex "self", param_3273
    if has_param_3274, optparam_1177
    new $P3275, "Undef"
    set param_3274, $P3275
  optparam_1177:
    .lex "$handle", param_3274
.annotate 'line', 2125
    find_lex $P3276, "$handle"
    unless_null $P3276, vivify_1178
    new $P3276, "Undef"
  vivify_1178:
    set $S3277, $P3276
    nqp_create_sc $P3278, $S3277
    find_lex $P3279, "self"
    find_lex $P3280, "$?CLASS"
    setattribute $P3279, $P3280, "$!sc", $P3278
.annotate 'line', 2126
    find_lex $P3281, "$handle"
    unless_null $P3281, vivify_1179
    new $P3281, "Undef"
  vivify_1179:
    find_lex $P3282, "self"
    find_lex $P3283, "$?CLASS"
    setattribute $P3282, $P3283, "$!handle", $P3281
.annotate 'line', 2127
    new $P3284, "Hash"
    find_lex $P3285, "self"
    find_lex $P3286, "$?CLASS"
    setattribute $P3285, $P3286, "%!addr_to_slot", $P3284
.annotate 'line', 2128
    new $P3287, "ResizablePMCArray"
    find_lex $P3288, "self"
    find_lex $P3289, "$?CLASS"
    setattribute $P3288, $P3289, "@!event_stream", $P3287
.annotate 'line', 2124
    .return ($P3287)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3291
    .param pmc param_3292
.annotate 'line', 2132
    .lex "self", param_3291
    .lex "$obj", param_3292
.annotate 'line', 2133
    new $P3293, "Undef"
    .lex "$slot", $P3293
    find_lex $P3294, "$obj"
    unless_null $P3294, vivify_1180
    new $P3294, "Undef"
  vivify_1180:
    $P3295 = "addr"($P3294)
    find_lex $P3296, "self"
    find_lex $P3297, "$?CLASS"
    getattribute $P3298, $P3296, $P3297, "%!addr_to_slot"
    unless_null $P3298, vivify_1181
    $P3298 = root_new ['parrot';'Hash']
  vivify_1181:
    set $P3299, $P3298[$P3295]
    unless_null $P3299, vivify_1182
    new $P3299, "Undef"
  vivify_1182:
    store_lex "$slot", $P3299
.annotate 'line', 2134
    find_lex $P3301, "$slot"
    unless_null $P3301, vivify_1183
    new $P3301, "Undef"
  vivify_1183:
    defined $I3302, $P3301
    if $I3302, unless_3300_end
.annotate 'line', 2135
    die "slot_for_object called on object not in context"
  unless_3300_end:
.annotate 'line', 2134
    find_lex $P3303, "$slot"
    unless_null $P3303, vivify_1184
    new $P3303, "Undef"
  vivify_1184:
.annotate 'line', 2132
    .return ($P3303)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3307
    .param pmc param_3308
.annotate 'line', 2144
    new $P3306, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3306, control_3305
    push_eh $P3306
    .lex "self", param_3307
    .lex "$obj", param_3308
.annotate 'line', 2145
    new $P3309, "Undef"
    .lex "$slot", $P3309
    find_lex $P3310, "self"
    find_lex $P3311, "$obj"
    unless_null $P3311, vivify_1185
    new $P3311, "Undef"
  vivify_1185:
    $P3312 = $P3310."slot_for_object"($P3311)
    store_lex "$slot", $P3312
.annotate 'line', 2146
    new $P3313, "Exception"
    set $P3313['type'], .CONTROL_RETURN
    get_hll_global $P3314, ["PAST"], "Op"
    find_lex $P3315, "self"
    find_lex $P3316, "$?CLASS"
    getattribute $P3317, $P3315, $P3316, "$!handle"
    unless_null $P3317, vivify_1186
    new $P3317, "Undef"
  vivify_1186:
    find_lex $P3318, "$slot"
    unless_null $P3318, vivify_1187
    new $P3318, "Undef"
  vivify_1187:
    $P3319 = $P3314."new"($P3317, $P3318, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3313, 'payload', $P3319
    throw $P3313
.annotate 'line', 2144
    .return ()
  control_3305:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3320, exception, "payload"
    .return ($P3320)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3324
    .param pmc param_3325
    .param pmc param_3326
.annotate 'line', 2150
    new $P3323, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3323, control_3322
    push_eh $P3323
    .lex "self", param_3324
    .lex "$slot", param_3325
    .lex "$past_to_set", param_3326
.annotate 'line', 2151
    new $P3327, "Exception"
    set $P3327['type'], .CONTROL_RETURN
    get_hll_global $P3328, ["PAST"], "Op"
    find_lex $P3329, "self"
    find_lex $P3330, "$?CLASS"
    getattribute $P3331, $P3329, $P3330, "$!handle"
    unless_null $P3331, vivify_1188
    new $P3331, "Undef"
  vivify_1188:
    find_lex $P3332, "$slot"
    unless_null $P3332, vivify_1189
    new $P3332, "Undef"
  vivify_1189:
    find_lex $P3333, "$past_to_set"
    unless_null $P3333, vivify_1190
    new $P3333, "Undef"
  vivify_1190:
    $P3334 = $P3328."new"($P3331, $P3332, $P3333, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3327, 'payload', $P3334
    throw $P3327
.annotate 'line', 2150
    .return ()
  control_3322:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3335, exception, "payload"
    .return ($P3335)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3337
    .param pmc param_3338
.annotate 'line', 2157
    .lex "self", param_3337
    .lex "$to_wrap", param_3338
.annotate 'line', 2158
    get_hll_global $P3339, ["PAST"], "Op"
    find_lex $P3340, "$to_wrap"
    unless_null $P3340, vivify_1191
    new $P3340, "Undef"
  vivify_1191:
.annotate 'line', 2161
    get_hll_global $P3341, ["PAST"], "Var"
    $P3342 = $P3341."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3343 = $P3339."new"($P3340, $P3342, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2157
    .return ($P3343)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3345
    .param pmc param_3346
.annotate 'line', 2166
    .lex "self", param_3345
    .lex "$obj", param_3346
.annotate 'line', 2168
    new $P3347, "Undef"
    .lex "$idx", $P3347
.annotate 'line', 2167
    find_lex $P3348, "$obj"
    unless_null $P3348, vivify_1192
    new $P3348, "Undef"
  vivify_1192:
    find_lex $P3349, "self"
    find_lex $P3350, "$?CLASS"
    getattribute $P3351, $P3349, $P3350, "$!sc"
    unless_null $P3351, vivify_1193
    new $P3351, "Undef"
  vivify_1193:
    nqp_set_sc_for_object $P3348, $P3351
.annotate 'line', 2168
    find_lex $P3352, "self"
    find_lex $P3353, "$?CLASS"
    getattribute $P3354, $P3352, $P3353, "$!sc"
    unless_null $P3354, vivify_1194
    new $P3354, "Undef"
  vivify_1194:
    $P3355 = $P3354."elems"()
    store_lex "$idx", $P3355
.annotate 'line', 2169
    find_lex $P3356, "$obj"
    unless_null $P3356, vivify_1195
    new $P3356, "Undef"
  vivify_1195:
    find_lex $P3357, "$idx"
    unless_null $P3357, vivify_1196
    new $P3357, "Undef"
  vivify_1196:
    set $I3358, $P3357
    find_lex $P3359, "self"
    find_lex $P3360, "$?CLASS"
    getattribute $P3361, $P3359, $P3360, "$!sc"
    unless_null $P3361, vivify_1197
    $P3361 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3359, $P3360, "$!sc", $P3361
  vivify_1197:
    set $P3361[$I3358], $P3356
.annotate 'line', 2170
    find_lex $P3362, "$idx"
    unless_null $P3362, vivify_1198
    new $P3362, "Undef"
  vivify_1198:
    find_lex $P3363, "$obj"
    unless_null $P3363, vivify_1199
    new $P3363, "Undef"
  vivify_1199:
    $P3364 = "addr"($P3363)
    find_lex $P3365, "self"
    find_lex $P3366, "$?CLASS"
    getattribute $P3367, $P3365, $P3366, "%!addr_to_slot"
    unless_null $P3367, vivify_1200
    $P3367 = root_new ['parrot';'Hash']
    setattribute $P3365, $P3366, "%!addr_to_slot", $P3367
  vivify_1200:
    set $P3367[$P3364], $P3362
    find_lex $P3368, "$idx"
    unless_null $P3368, vivify_1201
    new $P3368, "Undef"
  vivify_1201:
.annotate 'line', 2166
    .return ($P3368)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("275_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3370
    .param pmc param_3371 :optional :named("deserialize_past")
    .param int has_param_3371 :opt_flag
    .param pmc param_3373 :optional :named("fixup_past")
    .param int has_param_3373 :opt_flag
.annotate 'line', 2175
    .lex "self", param_3370
    if has_param_3371, optparam_1202
    new $P3372, "Undef"
    set param_3371, $P3372
  optparam_1202:
    .lex "$deserialize_past", param_3371
    if has_param_3373, optparam_1203
    new $P3374, "Undef"
    set param_3373, $P3374
  optparam_1203:
    .lex "$fixup_past", param_3373
.annotate 'line', 2176
    find_lex $P3375, "self"
    find_lex $P3376, "$?CLASS"
    getattribute $P3377, $P3375, $P3376, "@!event_stream"
    unless_null $P3377, vivify_1204
    $P3377 = root_new ['parrot';'ResizablePMCArray']
  vivify_1204:
    get_hll_global $P3378, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P3379, "$deserialize_past"
    unless_null $P3379, vivify_1205
    new $P3379, "Undef"
  vivify_1205:
    find_lex $P3380, "$fixup_past"
    unless_null $P3380, vivify_1206
    new $P3380, "Undef"
  vivify_1206:
    $P3381 = $P3378."new"($P3379 :named("deserialize_past"), $P3380 :named("fixup_past"))
    $P3382 = $P3377."push"($P3381)
.annotate 'line', 2175
    .return ($P3382)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("276_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3384
    .param pmc param_3385
.annotate 'line', 2183
    .lex "self", param_3384
    .lex "$obj", param_3385
.annotate 'line', 2186
    new $P3386, "Undef"
    .lex "$sc", $P3386
    find_lex $P3387, "$obj"
    unless_null $P3387, vivify_1207
    new $P3387, "Undef"
  vivify_1207:
    nqp_get_sc_for_object $P3388, $P3387
    store_lex "$sc", $P3388
.annotate 'line', 2187
    find_lex $P3390, "$sc"
    unless_null $P3390, vivify_1208
    new $P3390, "Undef"
  vivify_1208:
    isnull $I3391, $P3390
    unless $I3391, if_3389_end
.annotate 'line', 2188
    new $P3392, "String"
    assign $P3392, "Object of type '"
    find_lex $P3393, "$obj"
    unless_null $P3393, vivify_1209
    new $P3393, "Undef"
  vivify_1209:
    get_how $P3394, $P3393
    find_lex $P3395, "$obj"
    unless_null $P3395, vivify_1210
    new $P3395, "Undef"
  vivify_1210:
    $S3396 = $P3394."name"($P3395)
    concat $P3397, $P3392, $S3396
    concat $P3398, $P3397, "' cannot be referenced without having been "
    concat $P3399, $P3398, "assigned a serialization context"
.annotate 'line', 2189
    die $P3399
  if_3389_end:
.annotate 'line', 2195
    find_lex $P3402, "$sc"
    unless_null $P3402, vivify_1211
    new $P3402, "Undef"
  vivify_1211:
    find_lex $P3403, "self"
    find_lex $P3404, "$?CLASS"
    getattribute $P3405, $P3403, $P3404, "$!sc"
    unless_null $P3405, vivify_1212
    new $P3405, "Undef"
  vivify_1212:
    issame $I3406, $P3402, $P3405
    if $I3406, if_3401
.annotate 'line', 2199
    get_hll_global $P3410, ["PAST"], "Op"
.annotate 'line', 2200
    find_lex $P3411, "$sc"
    unless_null $P3411, vivify_1213
    new $P3411, "Undef"
  vivify_1213:
    $P3412 = $P3411."handle"()
    find_lex $P3413, "$sc"
    unless_null $P3413, vivify_1214
    new $P3413, "Undef"
  vivify_1214:
    find_lex $P3414, "$obj"
    unless_null $P3414, vivify_1215
    new $P3414, "Undef"
  vivify_1215:
    $P3415 = $P3413."slot_index_for"($P3414)
    $P3416 = $P3410."new"($P3412, $P3415, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2198
    set $P3400, $P3416
.annotate 'line', 2195
    goto if_3401_end
  if_3401:
.annotate 'line', 2196
    find_lex $P3407, "self"
    find_lex $P3408, "$obj"
    unless_null $P3408, vivify_1216
    new $P3408, "Undef"
  vivify_1216:
    $P3409 = $P3407."get_slot_past_for_object"($P3408)
.annotate 'line', 2195
    set $P3400, $P3409
  if_3401_end:
.annotate 'line', 2183
    .return ($P3400)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("277_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3418
    .param pmc param_3419
.annotate 'line', 2206
    .const 'Sub' $P3426 = "278_1303418077.916" 
    capture_lex $P3426
    .lex "self", param_3418
    .lex "$setting_name", param_3419
.annotate 'line', 2208
    find_lex $P3422, "$setting_name"
    unless_null $P3422, vivify_1217
    new $P3422, "Undef"
  vivify_1217:
    set $S3423, $P3422
    isne $I3424, $S3423, "NULL"
    if $I3424, if_3421
    new $P3420, 'Integer'
    set $P3420, $I3424
    goto if_3421_end
  if_3421:
    .const 'Sub' $P3426 = "278_1303418077.916" 
    capture_lex $P3426
    $P3458 = $P3426()
    set $P3420, $P3458
  if_3421_end:
.annotate 'line', 2206
    .return ($P3420)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3425"  :anon :subid("278_1303418077.916") :outer("277_1303418077.916")
.annotate 'line', 2212
    new $P3427, "Undef"
    .lex "$path", $P3427
    find_dynamic_lex $P3428, "%*COMPILING"
    unless_null $P3428, vivify_1218
    get_hll_global $P3428, "%COMPILING"
    unless_null $P3428, vivify_1219
    die "Contextual %*COMPILING not found"
  vivify_1219:
  vivify_1218:
    set $P3429, $P3428["%?OPTIONS"]
    unless_null $P3429, vivify_1220
    $P3429 = root_new ['parrot';'Hash']
  vivify_1220:
    set $P3430, $P3429["setting-path"]
    unless_null $P3430, vivify_1221
    new $P3430, "Undef"
  vivify_1221:
    store_lex "$path", $P3430
.annotate 'line', 2213
    get_hll_global $P3431, ["HLL"], "SettingManager"
.annotate 'line', 2214
    find_lex $P3434, "$path"
    unless_null $P3434, vivify_1222
    new $P3434, "Undef"
  vivify_1222:
    if $P3434, if_3433
    find_lex $P3439, "$setting_name"
    unless_null $P3439, vivify_1223
    new $P3439, "Undef"
  vivify_1223:
    set $P3432, $P3439
    goto if_3433_end
  if_3433:
    find_lex $P3435, "$path"
    unless_null $P3435, vivify_1224
    new $P3435, "Undef"
  vivify_1224:
    concat $P3436, $P3435, "/"
    find_lex $P3437, "$setting_name"
    unless_null $P3437, vivify_1225
    new $P3437, "Undef"
  vivify_1225:
    concat $P3438, $P3436, $P3437
    set $P3432, $P3438
  if_3433_end:
    $P3440 = $P3431."load_setting"($P3432)
.annotate 'line', 2213
    find_dynamic_lex $P3441, "%*COMPILING"
    unless_null $P3441, vivify_1226
    get_hll_global $P3441, "%COMPILING"
    unless_null $P3441, vivify_1227
    die "Contextual %*COMPILING not found"
  vivify_1227:
    store_dynamic_lex "%*COMPILING", $P3441
  vivify_1226:
    set $P3442, $P3441["%?OPTIONS"]
    unless_null $P3442, vivify_1228
    $P3442 = root_new ['parrot';'Hash']
    set $P3441["%?OPTIONS"], $P3442
  vivify_1228:
    set $P3442["outer_ctx"], $P3440
.annotate 'line', 2217
    find_lex $P3443, "self"
    get_hll_global $P3444, ["PAST"], "Stmts"
.annotate 'line', 2218
    get_hll_global $P3445, ["PAST"], "Op"
    $P3446 = $P3445."new"("SettingManager.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2221
    get_hll_global $P3447, ["PAST"], "Op"
.annotate 'line', 2223
    get_hll_global $P3448, ["PAST"], "Var"
    $P3449 = $P3448."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2224
    get_hll_global $P3450, ["PAST"], "Op"
.annotate 'line', 2226
    get_hll_global $P3451, ["PAST"], "Var"
    $P3452 = $P3451."new"("SettingManager" :named("name"), "HLL" :named("namespace"), "package" :named("scope"))
    find_lex $P3453, "$setting_name"
    unless_null $P3453, vivify_1229
    new $P3453, "Undef"
  vivify_1229:
    $P3454 = $P3450."new"($P3452, $P3453, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2224
    $P3455 = $P3447."new"($P3449, $P3454, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2221
    $P3456 = $P3444."new"($P3446, $P3455)
.annotate 'line', 2217
    $P3457 = $P3443."add_event"($P3456 :named("deserialize_past"))
.annotate 'line', 2208
    .return ($P3457)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("279_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3460
    .param pmc param_3461
.annotate 'line', 2236
    .lex "self", param_3460
    .lex "$module_name", param_3461
.annotate 'line', 2238
    new $P3462, "Undef"
    .lex "$*MAIN_CTX", $P3462
.annotate 'line', 2239
    new $P3463, "Undef"
    .lex "$*CTXSAVE", $P3463
.annotate 'line', 2240
    new $P3464, "Undef"
    .lex "$path", $P3464
.annotate 'line', 2236
    find_lex $P3465, "$*MAIN_CTX"
    unless_null $P3465, vivify_1230
    get_hll_global $P3465, "$MAIN_CTX"
    unless_null $P3465, vivify_1231
    die "Contextual $*MAIN_CTX not found"
  vivify_1231:
  vivify_1230:
.annotate 'line', 2239
    get_hll_global $P3466, ["HLL"], "Compiler"
    store_lex "$*CTXSAVE", $P3466
.annotate 'line', 2240
    find_lex $P3467, "$module_name"
    unless_null $P3467, vivify_1232
    new $P3467, "Undef"
  vivify_1232:
    set $S3468, $P3467
    split $P3469, "::", $S3468
    join $S3470, "/", $P3469
    new $P3471, 'String'
    set $P3471, $S3470
    concat $P3472, $P3471, ".pbc"
    store_lex "$path", $P3472
.annotate 'line', 2241
    find_lex $P3473, "$path"
    unless_null $P3473, vivify_1233
    new $P3473, "Undef"
  vivify_1233:
    set $S3474, $P3473
    load_bytecode $S3474
.annotate 'line', 2244
    find_lex $P3475, "self"
.annotate 'line', 2245
    get_hll_global $P3476, ["PAST"], "Op"
    find_lex $P3477, "$path"
    unless_null $P3477, vivify_1234
    new $P3477, "Undef"
  vivify_1234:
    $P3478 = $P3476."new"($P3477, "load_bytecode vs" :named("pirop"))
    $P3475."add_event"($P3478 :named("deserialize_past"))
.annotate 'line', 2244
    find_lex $P3479, "$*MAIN_CTX"
    unless_null $P3479, vivify_1235
    get_hll_global $P3479, "$MAIN_CTX"
    unless_null $P3479, vivify_1236
    die "Contextual $*MAIN_CTX not found"
  vivify_1236:
  vivify_1235:
.annotate 'line', 2236
    .return ($P3479)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("280_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3481
    .param pmc param_3482
    .param pmc param_3483
    .param pmc param_3484
.annotate 'line', 2253
    .const 'Sub' $P3521 = "282_1303418077.916" 
    capture_lex $P3521
    .const 'Sub' $P3500 = "281_1303418077.916" 
    capture_lex $P3500
    .lex "self", param_3481
    .lex "$package", param_3482
    .lex "@sym", param_3483
    .lex "$obj", param_3484
.annotate 'line', 2255
    new $P3485, "Undef"
    .lex "$name", $P3485
.annotate 'line', 2258
    new $P3486, "Undef"
    .lex "$target", $P3486
.annotate 'line', 2265
    new $P3487, "Undef"
    .lex "$path", $P3487
.annotate 'line', 2254
    find_lex $P3488, "@sym"
    unless_null $P3488, vivify_1237
    $P3488 = root_new ['parrot';'ResizablePMCArray']
  vivify_1237:
    clone $P3489, $P3488
    store_lex "@sym", $P3489
.annotate 'line', 2255
    find_lex $P3490, "@sym"
    unless_null $P3490, vivify_1238
    $P3490 = root_new ['parrot';'ResizablePMCArray']
  vivify_1238:
    $P3491 = $P3490."pop"()
    set $S3492, $P3491
    new $P3493, 'String'
    set $P3493, $S3492
    store_lex "$name", $P3493
.annotate 'line', 2258
    find_lex $P3494, "$package"
    unless_null $P3494, vivify_1239
    new $P3494, "Undef"
  vivify_1239:
    store_lex "$target", $P3494
.annotate 'line', 2259
    find_lex $P3496, "@sym"
    unless_null $P3496, vivify_1240
    $P3496 = root_new ['parrot';'ResizablePMCArray']
  vivify_1240:
    defined $I3497, $P3496
    unless $I3497, for_undef_1241
    iter $P3495, $P3496
    new $P3507, 'ExceptionHandler'
    set_label $P3507, loop3506_handler
    $P3507."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3507
  loop3506_test:
    unless $P3495, loop3506_done
    shift $P3498, $P3495
  loop3506_redo:
    .const 'Sub' $P3500 = "281_1303418077.916" 
    capture_lex $P3500
    $P3500($P3498)
  loop3506_next:
    goto loop3506_test
  loop3506_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3508, exception, 'type'
    eq $P3508, .CONTROL_LOOP_NEXT, loop3506_next
    eq $P3508, .CONTROL_LOOP_REDO, loop3506_redo
  loop3506_done:
    pop_eh 
  for_undef_1241:
.annotate 'line', 2262
    find_lex $P3509, "$obj"
    unless_null $P3509, vivify_1244
    new $P3509, "Undef"
  vivify_1244:
    find_lex $P3510, "$name"
    unless_null $P3510, vivify_1245
    new $P3510, "Undef"
  vivify_1245:
    find_lex $P3511, "$target"
    unless_null $P3511, vivify_1246
    new $P3511, "Undef"
    store_lex "$target", $P3511
  vivify_1246:
    get_who $P3512, $P3511
    set $P3512[$P3510], $P3509
.annotate 'line', 2265
    find_lex $P3513, "self"
    find_lex $P3514, "$package"
    unless_null $P3514, vivify_1247
    new $P3514, "Undef"
  vivify_1247:
    $P3515 = $P3513."get_slot_past_for_object"($P3514)
    store_lex "$path", $P3515
.annotate 'line', 2266
    find_lex $P3517, "@sym"
    unless_null $P3517, vivify_1248
    $P3517 = root_new ['parrot';'ResizablePMCArray']
  vivify_1248:
    defined $I3518, $P3517
    unless $I3518, for_undef_1249
    iter $P3516, $P3517
    new $P3529, 'ExceptionHandler'
    set_label $P3529, loop3528_handler
    $P3529."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3529
  loop3528_test:
    unless $P3516, loop3528_done
    shift $P3519, $P3516
  loop3528_redo:
    .const 'Sub' $P3521 = "282_1303418077.916" 
    capture_lex $P3521
    $P3521($P3519)
  loop3528_next:
    goto loop3528_test
  loop3528_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3530, exception, 'type'
    eq $P3530, .CONTROL_LOOP_NEXT, loop3528_next
    eq $P3530, .CONTROL_LOOP_REDO, loop3528_redo
  loop3528_done:
    pop_eh 
  for_undef_1249:
.annotate 'line', 2269
    find_lex $P3531, "self"
    get_hll_global $P3532, ["PAST"], "Op"
.annotate 'line', 2271
    get_hll_global $P3533, ["PAST"], "Var"
.annotate 'line', 2273
    get_hll_global $P3534, ["PAST"], "Op"
    find_lex $P3535, "$path"
    unless_null $P3535, vivify_1252
    new $P3535, "Undef"
  vivify_1252:
    $P3536 = $P3534."new"($P3535, "get_who PP" :named("pirop"))
    find_lex $P3537, "$name"
    unless_null $P3537, vivify_1253
    new $P3537, "Undef"
  vivify_1253:
    $P3538 = $P3533."new"($P3536, $P3537, "keyed" :named("scope"))
.annotate 'line', 2276
    find_lex $P3539, "self"
    find_lex $P3540, "$obj"
    unless_null $P3540, vivify_1254
    new $P3540, "Undef"
  vivify_1254:
    $P3541 = $P3539."get_slot_past_for_object"($P3540)
    $P3542 = $P3532."new"($P3538, $P3541, "bind" :named("pasttype"))
.annotate 'line', 2269
    $P3531."add_event"($P3542 :named("deserialize_past"))
.annotate 'line', 2280
    find_lex $P3543, "self"
.annotate 'line', 2281
    get_hll_global $P3544, ["PAST"], "Op"
.annotate 'line', 2283
    get_hll_global $P3545, ["PAST"], "Var"
    find_lex $P3546, "$name"
    unless_null $P3546, vivify_1255
    new $P3546, "Undef"
  vivify_1255:
    find_lex $P3547, "@sym"
    unless_null $P3547, vivify_1256
    $P3547 = root_new ['parrot';'ResizablePMCArray']
  vivify_1256:
    $P3548 = $P3545."new"($P3546 :named("name"), $P3547 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2284
    find_lex $P3549, "self"
    find_lex $P3550, "$obj"
    unless_null $P3550, vivify_1257
    new $P3550, "Undef"
  vivify_1257:
    $P3551 = $P3549."get_slot_past_for_object"($P3550)
    $P3552 = $P3544."new"($P3548, $P3551, "bind" :named("pasttype"))
.annotate 'line', 2286
    get_hll_global $P3553, ["PAST"], "Op"
.annotate 'line', 2288
    get_hll_global $P3554, ["PAST"], "Var"
    find_lex $P3555, "$name"
    unless_null $P3555, vivify_1258
    new $P3555, "Undef"
  vivify_1258:
    find_lex $P3556, "@sym"
    unless_null $P3556, vivify_1259
    $P3556 = root_new ['parrot';'ResizablePMCArray']
  vivify_1259:
    $P3557 = $P3554."new"($P3555 :named("name"), $P3556 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2289
    find_lex $P3558, "self"
    find_lex $P3559, "$obj"
    unless_null $P3559, vivify_1260
    new $P3559, "Undef"
  vivify_1260:
    $P3560 = $P3558."get_slot_past_for_object"($P3559)
    $P3561 = $P3553."new"($P3557, $P3560, "bind" :named("pasttype"))
.annotate 'line', 2286
    $P3562 = $P3543."add_event"($P3552 :named("deserialize_past"), $P3561 :named("fixup_past"))
.annotate 'line', 2253
    .return ($P3562)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3499"  :anon :subid("281_1303418077.916") :outer("280_1303418077.916")
    .param pmc param_3501
.annotate 'line', 2259
    .lex "$_", param_3501
.annotate 'line', 2260
    find_lex $P3502, "$target"
    unless_null $P3502, vivify_1242
    new $P3502, "Undef"
  vivify_1242:
    find_lex $P3503, "$_"
    unless_null $P3503, vivify_1243
    new $P3503, "Undef"
  vivify_1243:
    set $S3504, $P3503
    nqp_get_package_through_who $P3505, $P3502, $S3504
    store_lex "$target", $P3505
.annotate 'line', 2259
    .return ($P3505)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3520"  :anon :subid("282_1303418077.916") :outer("280_1303418077.916")
    .param pmc param_3522
.annotate 'line', 2266
    .lex "$_", param_3522
.annotate 'line', 2267
    get_hll_global $P3523, ["PAST"], "Op"
    find_lex $P3524, "$path"
    unless_null $P3524, vivify_1250
    new $P3524, "Undef"
  vivify_1250:
    find_lex $P3525, "$_"
    unless_null $P3525, vivify_1251
    new $P3525, "Undef"
  vivify_1251:
    set $S3526, $P3525
    $P3527 = $P3523."new"($P3524, $S3526, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3527
.annotate 'line', 2266
    .return ($P3527)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3564
    .param pmc param_3565
    .param pmc param_3566
    .param pmc param_3567
.annotate 'line', 2297
    .lex "self", param_3564
    .lex "$block", param_3565
    .lex "$name", param_3566
    .lex "$obj", param_3567
.annotate 'line', 2303
    new $P3568, "Undef"
    .lex "$fixup", $P3568
.annotate 'line', 2299
    find_lex $P3569, "$block"
    unless_null $P3569, vivify_1261
    new $P3569, "Undef"
  vivify_1261:
    find_lex $P3570, "$name"
    unless_null $P3570, vivify_1262
    new $P3570, "Undef"
  vivify_1262:
    find_lex $P3571, "$obj"
    unless_null $P3571, vivify_1263
    new $P3571, "Undef"
  vivify_1263:
    $P3569."symbol"($P3570, "lexical" :named("scope"), $P3571 :named("value"))
.annotate 'line', 2300
    find_lex $P3572, "$block"
    unless_null $P3572, vivify_1264
    $P3572 = root_new ['parrot';'ResizablePMCArray']
  vivify_1264:
    set $P3573, $P3572[0]
    unless_null $P3573, vivify_1265
    new $P3573, "Undef"
  vivify_1265:
    get_hll_global $P3574, ["PAST"], "Var"
    find_lex $P3575, "$name"
    unless_null $P3575, vivify_1266
    new $P3575, "Undef"
  vivify_1266:
    $P3576 = $P3574."new"("lexical" :named("scope"), $P3575 :named("name"), 1 :named("isdecl"))
    $P3573."push"($P3576)
.annotate 'line', 2303
    get_hll_global $P3577, ["PAST"], "Stmts"
.annotate 'line', 2304
    get_hll_global $P3578, ["PAST"], "Op"
.annotate 'line', 2306
    get_hll_global $P3579, ["PAST"], "Op"
.annotate 'line', 2308
    get_hll_global $P3580, ["PAST"], "Val"
    find_lex $P3581, "$block"
    unless_null $P3581, vivify_1267
    new $P3581, "Undef"
  vivify_1267:
    $P3582 = $P3580."new"($P3581 :named("value"))
    $P3583 = $P3579."new"($P3582, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2310
    find_lex $P3584, "$name"
    unless_null $P3584, vivify_1268
    new $P3584, "Undef"
  vivify_1268:
    set $S3585, $P3584
    find_lex $P3586, "self"
    find_lex $P3587, "$obj"
    unless_null $P3587, vivify_1269
    new $P3587, "Undef"
  vivify_1269:
    $P3588 = $P3586."get_slot_past_for_object"($P3587)
    $P3589 = $P3578."new"($P3583, $S3585, $P3588, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2314
    get_hll_global $P3590, ["PAST"], "Op"
.annotate 'line', 2316
    get_hll_global $P3591, ["PAST"], "Op"
.annotate 'line', 2318
    get_hll_global $P3592, ["PAST"], "Val"
    find_lex $P3593, "$block"
    unless_null $P3593, vivify_1270
    new $P3593, "Undef"
  vivify_1270:
    $P3594 = $P3592."new"($P3593 :named("value"))
    $P3595 = $P3591."new"($P3594, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2316
    $P3596 = $P3590."new"($P3595, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2314
    $P3597 = $P3577."new"($P3589, $P3596)
.annotate 'line', 2303
    store_lex "$fixup", $P3597
.annotate 'line', 2322
    find_lex $P3598, "self"
    find_lex $P3599, "$fixup"
    unless_null $P3599, vivify_1271
    new $P3599, "Undef"
  vivify_1271:
    find_lex $P3600, "$fixup"
    unless_null $P3600, vivify_1272
    new $P3600, "Undef"
  vivify_1272:
    $P3601 = $P3598."add_event"($P3599 :named("deserialize_past"), $P3600 :named("fixup_past"))
.annotate 'line', 2297
    .return ($P3601)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("284_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3605
    .param pmc param_3606
    .param pmc param_3607 :optional :named("name")
    .param int has_param_3607 :opt_flag
    .param pmc param_3609 :optional :named("repr")
    .param int has_param_3609 :opt_flag
.annotate 'line', 2327
    new $P3604, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3604, control_3603
    push_eh $P3604
    .lex "self", param_3605
    .lex "$how", param_3606
    if has_param_3607, optparam_1273
    new $P3608, "Undef"
    set param_3607, $P3608
  optparam_1273:
    .lex "$name", param_3607
    if has_param_3609, optparam_1274
    new $P3610, "Undef"
    set param_3609, $P3610
  optparam_1274:
    .lex "$repr", param_3609
.annotate 'line', 2329
    $P3611 = root_new ['parrot';'Hash']
    .lex "%args", $P3611
.annotate 'line', 2332
    new $P3612, "Undef"
    .lex "$mo", $P3612
.annotate 'line', 2333
    new $P3613, "Undef"
    .lex "$slot", $P3613
.annotate 'line', 2337
    $P3614 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3614
.annotate 'line', 2338
    new $P3615, "Undef"
    .lex "$how_name", $P3615
.annotate 'line', 2339
    new $P3616, "Undef"
    .lex "$setup_call", $P3616
.annotate 'line', 2327
    find_lex $P3617, "%args"
    unless_null $P3617, vivify_1275
    $P3617 = root_new ['parrot';'Hash']
  vivify_1275:
.annotate 'line', 2330
    find_lex $P3619, "$name"
    unless_null $P3619, vivify_1276
    new $P3619, "Undef"
  vivify_1276:
    defined $I3620, $P3619
    unless $I3620, if_3618_end
    find_lex $P3621, "$name"
    unless_null $P3621, vivify_1277
    new $P3621, "Undef"
  vivify_1277:
    find_lex $P3622, "%args"
    unless_null $P3622, vivify_1278
    $P3622 = root_new ['parrot';'Hash']
    store_lex "%args", $P3622
  vivify_1278:
    set $P3622["name"], $P3621
  if_3618_end:
.annotate 'line', 2331
    find_lex $P3624, "$repr"
    unless_null $P3624, vivify_1279
    new $P3624, "Undef"
  vivify_1279:
    defined $I3625, $P3624
    unless $I3625, if_3623_end
    find_lex $P3626, "$repr"
    unless_null $P3626, vivify_1280
    new $P3626, "Undef"
  vivify_1280:
    find_lex $P3627, "%args"
    unless_null $P3627, vivify_1281
    $P3627 = root_new ['parrot';'Hash']
    store_lex "%args", $P3627
  vivify_1281:
    set $P3627["repr"], $P3626
  if_3623_end:
.annotate 'line', 2332
    find_lex $P3628, "$how"
    unless_null $P3628, vivify_1282
    new $P3628, "Undef"
  vivify_1282:
    find_lex $P3629, "%args"
    unless_null $P3629, vivify_1283
    $P3629 = root_new ['parrot';'Hash']
  vivify_1283:
    $P3630 = $P3628."new_type"($P3629 :flat)
    store_lex "$mo", $P3630
.annotate 'line', 2333
    find_lex $P3631, "self"
    find_lex $P3632, "$mo"
    unless_null $P3632, vivify_1284
    new $P3632, "Undef"
  vivify_1284:
    $P3633 = $P3631."add_object"($P3632)
    store_lex "$slot", $P3633
.annotate 'line', 2337
    find_lex $P3634, "$how"
    unless_null $P3634, vivify_1285
    new $P3634, "Undef"
  vivify_1285:
    get_how $P3635, $P3634
    find_lex $P3636, "$how"
    unless_null $P3636, vivify_1286
    new $P3636, "Undef"
  vivify_1286:
    $S3637 = $P3635."name"($P3636)
    split $P3638, "::", $S3637
    store_lex "@how_ns", $P3638
.annotate 'line', 2338
    find_lex $P3639, "@how_ns"
    unless_null $P3639, vivify_1287
    $P3639 = root_new ['parrot';'ResizablePMCArray']
  vivify_1287:
    $P3640 = $P3639."pop"()
    store_lex "$how_name", $P3640
.annotate 'line', 2339
    get_hll_global $P3641, ["PAST"], "Op"
.annotate 'line', 2341
    get_hll_global $P3642, ["PAST"], "Var"
    find_lex $P3643, "$how_name"
    unless_null $P3643, vivify_1288
    new $P3643, "Undef"
  vivify_1288:
    find_lex $P3644, "@how_ns"
    unless_null $P3644, vivify_1289
    $P3644 = root_new ['parrot';'ResizablePMCArray']
  vivify_1289:
    $P3645 = $P3642."new"($P3643 :named("name"), $P3644 :named("namespace"), "package" :named("scope"))
    $P3646 = $P3641."new"($P3645, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2339
    store_lex "$setup_call", $P3646
.annotate 'line', 2345
    find_lex $P3648, "$name"
    unless_null $P3648, vivify_1290
    new $P3648, "Undef"
  vivify_1290:
    defined $I3649, $P3648
    unless $I3649, if_3647_end
.annotate 'line', 2346
    find_lex $P3650, "$setup_call"
    unless_null $P3650, vivify_1291
    new $P3650, "Undef"
  vivify_1291:
    get_hll_global $P3651, ["PAST"], "Val"
    find_lex $P3652, "$name"
    unless_null $P3652, vivify_1292
    new $P3652, "Undef"
  vivify_1292:
    $P3653 = $P3651."new"($P3652 :named("value"), "name" :named("named"))
    $P3650."push"($P3653)
  if_3647_end:
.annotate 'line', 2348
    find_lex $P3655, "$repr"
    unless_null $P3655, vivify_1293
    new $P3655, "Undef"
  vivify_1293:
    defined $I3656, $P3655
    unless $I3656, if_3654_end
.annotate 'line', 2349
    find_lex $P3657, "$setup_call"
    unless_null $P3657, vivify_1294
    new $P3657, "Undef"
  vivify_1294:
    get_hll_global $P3658, ["PAST"], "Val"
    find_lex $P3659, "$repr"
    unless_null $P3659, vivify_1295
    new $P3659, "Undef"
  vivify_1295:
    $P3660 = $P3658."new"($P3659 :named("value"), "repr" :named("named"))
    $P3657."push"($P3660)
  if_3654_end:
.annotate 'line', 2351
    find_lex $P3661, "self"
.annotate 'line', 2352
    find_lex $P3662, "self"
    find_lex $P3663, "$slot"
    unless_null $P3663, vivify_1296
    new $P3663, "Undef"
  vivify_1296:
    find_lex $P3664, "self"
    find_lex $P3665, "$setup_call"
    unless_null $P3665, vivify_1297
    new $P3665, "Undef"
  vivify_1297:
    $P3666 = $P3664."set_cur_sc"($P3665)
    $P3667 = $P3662."set_slot_past"($P3663, $P3666)
    $P3661."add_event"($P3667 :named("deserialize_past"))
.annotate 'line', 2355
    new $P3668, "Exception"
    set $P3668['type'], .CONTROL_RETURN
    find_lex $P3669, "$mo"
    unless_null $P3669, vivify_1298
    new $P3669, "Undef"
  vivify_1298:
    setattribute $P3668, 'payload', $P3669
    throw $P3668
.annotate 'line', 2327
    .return ()
  control_3603:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3670, exception, "payload"
    .return ($P3670)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("285_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3672
    .param pmc param_3673
    .param pmc param_3674
    .param pmc param_3675
    .param pmc param_3676
.annotate 'line', 2361
    .lex "self", param_3672
    .lex "$obj", param_3673
    .lex "$meta_method_name", param_3674
    .lex "$name", param_3675
    .lex "$method_past", param_3676
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("286_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3678
    .param pmc param_3679
    .param pmc param_3680
    .param pmc param_3681
.annotate 'line', 2366
    .lex "self", param_3678
    .lex "$obj", param_3679
    .lex "$meta_method_name", param_3680
    .lex "$to_add", param_3681
.annotate 'line', 2371
    new $P3682, "Undef"
    .lex "$slot_past", $P3682
.annotate 'line', 2368
    find_lex $P3683, "$obj"
    unless_null $P3683, vivify_1299
    new $P3683, "Undef"
  vivify_1299:
    get_how $P3684, $P3683
    find_lex $P3685, "$obj"
    unless_null $P3685, vivify_1300
    new $P3685, "Undef"
  vivify_1300:
    find_lex $P3686, "$to_add"
    unless_null $P3686, vivify_1301
    new $P3686, "Undef"
  vivify_1301:
    find_lex $P3687, "$meta_method_name"
    unless_null $P3687, vivify_1302
    new $P3687, "Undef"
  vivify_1302:
    set $S3688, $P3687
    $P3684.$S3688($P3685, $P3686)
.annotate 'line', 2371
    find_lex $P3689, "$obj"
    unless_null $P3689, vivify_1303
    new $P3689, "Undef"
  vivify_1303:
    $P3690 = "get_slot_past_for_object"($P3689)
    store_lex "$slot_past", $P3690
.annotate 'line', 2372
    find_lex $P3691, "self"
    get_hll_global $P3692, ["PAST"], "Op"
    find_lex $P3693, "$meta_method_name"
    unless_null $P3693, vivify_1304
    new $P3693, "Undef"
  vivify_1304:
.annotate 'line', 2374
    get_hll_global $P3694, ["PAST"], "Op"
    find_lex $P3695, "$slot_past"
    unless_null $P3695, vivify_1305
    new $P3695, "Undef"
  vivify_1305:
    $P3696 = $P3694."new"($P3695, "get_how PP" :named("pirop"))
    find_lex $P3697, "$slot_past"
    unless_null $P3697, vivify_1306
    new $P3697, "Undef"
  vivify_1306:
.annotate 'line', 2376
    find_lex $P3698, "self"
    find_lex $P3699, "$to_add"
    unless_null $P3699, vivify_1307
    new $P3699, "Undef"
  vivify_1307:
    $P3700 = $P3698."get_object_sc_ref_past"($P3699)
    $P3701 = $P3692."new"($P3696, $P3697, $P3700, "callmethod" :named("pasttype"), $P3693 :named("name"))
.annotate 'line', 2372
    $P3702 = $P3691."add_event"($P3701 :named("deserialize_past"))
.annotate 'line', 2366
    .return ($P3702)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("287_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3704
    .param pmc param_3705
.annotate 'line', 2381
    .lex "self", param_3704
    .lex "$obj", param_3705
.annotate 'line', 2386
    new $P3706, "Undef"
    .lex "$slot_past", $P3706
.annotate 'line', 2383
    find_lex $P3707, "$obj"
    unless_null $P3707, vivify_1308
    new $P3707, "Undef"
  vivify_1308:
    get_how $P3708, $P3707
    find_lex $P3709, "$obj"
    unless_null $P3709, vivify_1309
    new $P3709, "Undef"
  vivify_1309:
    $P3708."compose"($P3709)
.annotate 'line', 2386
    find_lex $P3710, "$obj"
    unless_null $P3710, vivify_1310
    new $P3710, "Undef"
  vivify_1310:
    $P3711 = "get_slot_past_for_object"($P3710)
    store_lex "$slot_past", $P3711
.annotate 'line', 2387
    find_lex $P3712, "self"
    get_hll_global $P3713, ["PAST"], "Op"
.annotate 'line', 2389
    get_hll_global $P3714, ["PAST"], "Op"
    find_lex $P3715, "$slot_past"
    unless_null $P3715, vivify_1311
    new $P3715, "Undef"
  vivify_1311:
    $P3716 = $P3714."new"($P3715, "get_how PP" :named("pirop"))
    find_lex $P3717, "$slot_past"
    unless_null $P3717, vivify_1312
    new $P3717, "Undef"
  vivify_1312:
    $P3718 = $P3713."new"($P3716, $P3717, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2387
    $P3719 = $P3712."add_event"($P3718 :named("deserialize_past"))
.annotate 'line', 2381
    .return ($P3719)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("288_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3721
.annotate 'line', 2395
    .lex "self", param_3721
    find_lex $P3722, "self"
    find_lex $P3723, "$?CLASS"
    getattribute $P3724, $P3722, $P3723, "@!sc"
    unless_null $P3724, vivify_1313
    $P3724 = root_new ['parrot';'ResizablePMCArray']
  vivify_1313:
    .return ($P3724)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("289_1303418077.916") :outer("266_1303418077.916")
    .param pmc param_3726
.annotate 'line', 2401
    .const 'Sub' $P3740 = "290_1303418077.916" 
    capture_lex $P3740
    .lex "self", param_3726
.annotate 'line', 2402
    new $P3727, "Undef"
    .lex "$des", $P3727
.annotate 'line', 2403
    new $P3728, "Undef"
    .lex "$fix", $P3728
.annotate 'line', 2402
    get_hll_global $P3729, ["PAST"], "Stmts"
    $P3730 = $P3729."new"()
    store_lex "$des", $P3730
.annotate 'line', 2403
    get_hll_global $P3731, ["PAST"], "Stmts"
    $P3732 = $P3731."new"()
    store_lex "$fix", $P3732
.annotate 'line', 2404
    find_lex $P3734, "self"
    find_lex $P3735, "$?CLASS"
    getattribute $P3736, $P3734, $P3735, "@!event_stream"
    unless_null $P3736, vivify_1314
    $P3736 = root_new ['parrot';'ResizablePMCArray']
  vivify_1314:
    defined $I3737, $P3736
    unless $I3737, for_undef_1315
    iter $P3733, $P3736
    new $P3759, 'ExceptionHandler'
    set_label $P3759, loop3758_handler
    $P3759."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3759
  loop3758_test:
    unless $P3733, loop3758_done
    shift $P3738, $P3733
  loop3758_redo:
    .const 'Sub' $P3740 = "290_1303418077.916" 
    capture_lex $P3740
    $P3740($P3738)
  loop3758_next:
    goto loop3758_test
  loop3758_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3760, exception, 'type'
    eq $P3760, .CONTROL_LOOP_NEXT, loop3758_next
    eq $P3760, .CONTROL_LOOP_REDO, loop3758_redo
  loop3758_done:
    pop_eh 
  for_undef_1315:
.annotate 'line', 2408
    find_dynamic_lex $P3761, "$/"
    get_hll_global $P3762, ["PAST"], "Op"
.annotate 'line', 2410
    get_hll_global $P3763, ["PAST"], "Op"
.annotate 'line', 2412
    get_hll_global $P3764, ["PAST"], "Op"
    find_lex $P3765, "self"
    find_lex $P3766, "$?CLASS"
    getattribute $P3767, $P3765, $P3766, "$!handle"
    unless_null $P3767, vivify_1322
    new $P3767, "Undef"
  vivify_1322:
    $P3768 = $P3764."new"($P3767, "nqp_get_sc Ps" :named("pirop"))
    $P3769 = $P3763."new"($P3768, "isnull IP" :named("pirop"))
.annotate 'line', 2414
    get_hll_global $P3770, ["PAST"], "Stmts"
.annotate 'line', 2415
    get_hll_global $P3771, ["PAST"], "Op"
    $P3772 = $P3771."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2416
    get_hll_global $P3773, ["PAST"], "Op"
.annotate 'line', 2418
    get_hll_global $P3774, ["PAST"], "Op"
    $P3775 = $P3774."new"("getinterp P" :named("pirop"))
.annotate 'line', 2419
    get_hll_global $P3776, ["PAST"], "Op"
    $P3777 = $P3776."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2420
    get_hll_global $P3778, ["PAST"], "Op"
    $P3779 = $P3778."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3780 = $P3773."new"($P3775, $P3777, $P3779, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2422
    get_hll_global $P3781, ["PAST"], "Op"
    $P3782 = $P3781."new"("nqpmo.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2423
    get_hll_global $P3783, ["PAST"], "Op"
.annotate 'line', 2425
    get_hll_global $P3784, ["PAST"], "Var"
    $P3785 = $P3784."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2426
    get_hll_global $P3786, ["PAST"], "Op"
    find_lex $P3787, "self"
    find_lex $P3788, "$?CLASS"
    getattribute $P3789, $P3787, $P3788, "$!handle"
    unless_null $P3789, vivify_1323
    new $P3789, "Undef"
  vivify_1323:
    $P3790 = $P3786."new"($P3789, "nqp_create_sc Ps" :named("pirop"))
    $P3791 = $P3783."new"($P3785, $P3790, "bind" :named("pasttype"))
.annotate 'line', 2423
    find_lex $P3792, "$des"
    unless_null $P3792, vivify_1324
    new $P3792, "Undef"
  vivify_1324:
    $P3793 = $P3770."new"($P3772, $P3780, $P3782, $P3791, $P3792)
.annotate 'line', 2414
    find_lex $P3794, "$fix"
    unless_null $P3794, vivify_1325
    new $P3794, "Undef"
  vivify_1325:
    $P3795 = $P3762."new"($P3769, $P3793, $P3794, "if" :named("pasttype"))
.annotate 'line', 2408
    $P3796 = $P3761."!make"($P3795)
.annotate 'line', 2401
    .return ($P3796)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3739"  :anon :subid("290_1303418077.916") :outer("289_1303418077.916")
    .param pmc param_3741
.annotate 'line', 2404
    .lex "$_", param_3741
.annotate 'line', 2405
    find_lex $P3743, "$_"
    unless_null $P3743, vivify_1316
    new $P3743, "Undef"
  vivify_1316:
    $P3744 = $P3743."deserialize_past"()
    defined $I3745, $P3744
    unless $I3745, if_3742_end
    find_lex $P3746, "$des"
    unless_null $P3746, vivify_1317
    new $P3746, "Undef"
  vivify_1317:
    find_lex $P3747, "$_"
    unless_null $P3747, vivify_1318
    new $P3747, "Undef"
  vivify_1318:
    $P3748 = $P3747."deserialize_past"()
    $P3746."push"($P3748)
  if_3742_end:
.annotate 'line', 2406
    find_lex $P3751, "$_"
    unless_null $P3751, vivify_1319
    new $P3751, "Undef"
  vivify_1319:
    $P3752 = $P3751."fixup_past"()
    defined $I3753, $P3752
    if $I3753, if_3750
    new $P3749, 'Integer'
    set $P3749, $I3753
    goto if_3750_end
  if_3750:
    find_lex $P3754, "$fix"
    unless_null $P3754, vivify_1320
    new $P3754, "Undef"
  vivify_1320:
    find_lex $P3755, "$_"
    unless_null $P3755, vivify_1321
    new $P3755, "Undef"
  vivify_1321:
    $P3756 = $P3755."fixup_past"()
    $P3757 = $P3754."push"($P3756)
    set $P3749, $P3757
  if_3750_end:
.annotate 'line', 2404
    .return ($P3749)
.end


.HLL "nqp"

.namespace []
.sub "_block3856" :load :anon :subid("292_1303418077.916")
.annotate 'line', 1058
    .const 'Sub' $P3858 = "10_1303418077.916" 
    $P3859 = $P3858()
    .return ($P3859)
.end

