
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303687815.225")
.annotate 'line', 0
    .const 'Sub' $P3266 = "266_1303687815.225" 
    capture_lex $P3266
    .const 'Sub' $P3234 = "262_1303687815.225" 
    capture_lex $P3234
    .const 'Sub' $P2772 = "242_1303687815.225" 
    capture_lex $P2772
    .const 'Sub' $P2671 = "234_1303687815.225" 
    capture_lex $P2671
    .const 'Sub' $P1405 = "167_1303687815.225" 
    capture_lex $P1405
    .const 'Sub' $P678 = "120_1303687815.225" 
    capture_lex $P678
    .const 'Sub' $P17 = "11_1303687815.225" 
    capture_lex $P17
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
.annotate 'line', 1791
    new $P15, "Undef"
    .lex "$compiler", $P15
.annotate 'line', 1065
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1064
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1303687815.225" 
    capture_lex $P17
    $P17()
.annotate 'line', 867
    .const 'Sub' $P678 = "120_1303687815.225" 
    capture_lex $P678
    $P678()
.annotate 'line', 1072
    .const 'Sub' $P1405 = "167_1303687815.225" 
    capture_lex $P1405
    $P1405()
.annotate 'line', 1791
    get_hll_global $P2667, ["HLL"], "Compiler"
    $P2668 = $P2667."new"()
    store_lex "$compiler", $P2668
.annotate 'line', 1792
    find_lex $P2669, "$compiler"
    unless_null $P2669, vivify_1025
    new $P2669, "Undef"
  vivify_1025:
    $P2669."language"("parrot")
.annotate 'line', 1885
    .const 'Sub' $P2671 = "234_1303687815.225" 
    capture_lex $P2671
    $P2671()
.annotate 'line', 1918
    .const 'Sub' $P2772 = "242_1303687815.225" 
    capture_lex $P2772
    $P2772()
.annotate 'line', 2096
    .const 'Sub' $P3234 = "262_1303687815.225" 
    capture_lex $P3234
    $P3234()
.annotate 'line', 2106
    .const 'Sub' $P3266 = "266_1303687815.225" 
    capture_lex $P3266
    $P3897 = $P3266()
.annotate 'line', 1
    .return ($P3897)
.annotate 'line', 1064
    .const 'Sub' $P3899 = "293_1303687815.225" 
.annotate 'line', 1
    .return ($P3899)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post294") :outer("10_1303687815.225")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303687815.225" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P3903, "1303687806.753"
    isnull $I3904, $P3903
    if $I3904, if_3902
    .const 'Sub' $P4061 = "10_1303687815.225" 
    $P4062 = $P4061."get_lexinfo"()
    nqp_get_sc_object $P4063, "1303687806.753", 0
    $P4062."set_static_lexpad_value"("GLOBALish", $P4063)
    .const 'Sub' $P4064 = "10_1303687815.225" 
    $P4065 = $P4064."get_lexinfo"()
    $P4065."finish_static_lexpad"()
    .const 'Sub' $P4066 = "10_1303687815.225" 
    $P4067 = $P4066."get_lexinfo"()
    nqp_get_sc_object $P4068, "1303687806.753", 0
    $P4067."set_static_lexpad_value"("$?PACKAGE", $P4068)
    .const 'Sub' $P4069 = "10_1303687815.225" 
    $P4070 = $P4069."get_lexinfo"()
    $P4070."finish_static_lexpad"()
    nqp_get_sc_object $P4071, "1303687806.753", 1
    set_hll_global ["HLL"], "Grammar", $P4071
    .const 'Sub' $P4072 = "109_1303687815.225" 
    nqp_get_sc_object $P4073, "1303687806.753", 1
    get_who $P4074, $P4073
    set $P4074["quotemod_check"], $P4072
    .const 'Sub' $P4075 = "112_1303687815.225" 
    nqp_get_sc_object $P4076, "1303687806.753", 1
    get_who $P4077, $P4076
    set $P4077["split_words"], $P4075
    .const 'Sub' $P4078 = "11_1303687815.225" 
    $P4079 = $P4078."get_lexinfo"()
    nqp_get_sc_object $P4080, "1303687806.753", 1
    $P4079."set_static_lexpad_value"("$?PACKAGE", $P4080)
    .const 'Sub' $P4081 = "11_1303687815.225" 
    $P4082 = $P4081."get_lexinfo"()
    $P4082."finish_static_lexpad"()
    .const 'Sub' $P4083 = "11_1303687815.225" 
    $P4084 = $P4083."get_lexinfo"()
    nqp_get_sc_object $P4085, "1303687806.753", 1
    $P4084."set_static_lexpad_value"("$?CLASS", $P4085)
    .const 'Sub' $P4086 = "11_1303687815.225" 
    $P4087 = $P4086."get_lexinfo"()
    $P4087."finish_static_lexpad"()
    nqp_get_sc_object $P4088, "1303687806.753", 2
    set_hll_global ["HLL"], "Actions", $P4088
    .const 'Sub' $P4089 = "121_1303687815.225" 
    nqp_get_sc_object $P4090, "1303687806.753", 2
    get_who $P4091, $P4090
    set $P4091["string_to_int"], $P4089
    .const 'Sub' $P4092 = "123_1303687815.225" 
    nqp_get_sc_object $P4093, "1303687806.753", 2
    get_who $P4094, $P4093
    set $P4094["ints_to_string"], $P4092
    .const 'Sub' $P4095 = "120_1303687815.225" 
    $P4096 = $P4095."get_lexinfo"()
    nqp_get_sc_object $P4097, "1303687806.753", 2
    $P4096."set_static_lexpad_value"("$?PACKAGE", $P4097)
    .const 'Sub' $P4098 = "120_1303687815.225" 
    $P4099 = $P4098."get_lexinfo"()
    $P4099."finish_static_lexpad"()
    .const 'Sub' $P4100 = "120_1303687815.225" 
    $P4101 = $P4100."get_lexinfo"()
    nqp_get_sc_object $P4102, "1303687806.753", 2
    $P4101."set_static_lexpad_value"("$?CLASS", $P4102)
    .const 'Sub' $P4103 = "120_1303687815.225" 
    $P4104 = $P4103."get_lexinfo"()
    $P4104."finish_static_lexpad"()
    nqp_get_sc_object $P4105, "1303687806.753", 3
    set_hll_global ["HLL"], "Compiler", $P4105
    .const 'Sub' $P4106 = "167_1303687815.225" 
    $P4107 = $P4106."get_lexinfo"()
    nqp_get_sc_object $P4108, "1303687806.753", 3
    $P4107."set_static_lexpad_value"("$?PACKAGE", $P4108)
    .const 'Sub' $P4109 = "167_1303687815.225" 
    $P4110 = $P4109."get_lexinfo"()
    $P4110."finish_static_lexpad"()
    .const 'Sub' $P4111 = "167_1303687815.225" 
    $P4112 = $P4111."get_lexinfo"()
    nqp_get_sc_object $P4113, "1303687806.753", 3
    $P4112."set_static_lexpad_value"("$?CLASS", $P4113)
    .const 'Sub' $P4114 = "167_1303687815.225" 
    $P4115 = $P4114."get_lexinfo"()
    $P4115."finish_static_lexpad"()
    nqp_get_sc_object $P4116, "1303687806.753", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P4116
    .const 'Sub' $P4117 = "234_1303687815.225" 
    $P4118 = $P4117."get_lexinfo"()
    nqp_get_sc_object $P4119, "1303687806.753", 4
    $P4118."set_static_lexpad_value"("$?PACKAGE", $P4119)
    .const 'Sub' $P4120 = "234_1303687815.225" 
    $P4121 = $P4120."get_lexinfo"()
    $P4121."finish_static_lexpad"()
    .const 'Sub' $P4122 = "234_1303687815.225" 
    $P4123 = $P4122."get_lexinfo"()
    nqp_get_sc_object $P4124, "1303687806.753", 4
    $P4123."set_static_lexpad_value"("$?CLASS", $P4124)
    .const 'Sub' $P4125 = "234_1303687815.225" 
    $P4126 = $P4125."get_lexinfo"()
    $P4126."finish_static_lexpad"()
    nqp_get_sc_object $P4127, "1303687806.753", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4127
    .const 'Sub' $P4128 = "242_1303687815.225" 
    $P4129 = $P4128."get_lexinfo"()
    nqp_get_sc_object $P4130, "1303687806.753", 5
    $P4129."set_static_lexpad_value"("$?PACKAGE", $P4130)
    .const 'Sub' $P4131 = "242_1303687815.225" 
    $P4132 = $P4131."get_lexinfo"()
    $P4132."finish_static_lexpad"()
    .const 'Sub' $P4133 = "242_1303687815.225" 
    $P4134 = $P4133."get_lexinfo"()
    nqp_get_sc_object $P4135, "1303687806.753", 5
    $P4134."set_static_lexpad_value"("$?CLASS", $P4135)
    .const 'Sub' $P4136 = "242_1303687815.225" 
    $P4137 = $P4136."get_lexinfo"()
    $P4137."finish_static_lexpad"()
    nqp_get_sc_object $P4138, "1303687806.753", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P4138
    .const 'Sub' $P4139 = "262_1303687815.225" 
    $P4140 = $P4139."get_lexinfo"()
    nqp_get_sc_object $P4141, "1303687806.753", 6
    $P4140."set_static_lexpad_value"("$?PACKAGE", $P4141)
    .const 'Sub' $P4142 = "262_1303687815.225" 
    $P4143 = $P4142."get_lexinfo"()
    $P4143."finish_static_lexpad"()
    .const 'Sub' $P4144 = "262_1303687815.225" 
    $P4145 = $P4144."get_lexinfo"()
    nqp_get_sc_object $P4146, "1303687806.753", 6
    $P4145."set_static_lexpad_value"("$?CLASS", $P4146)
    .const 'Sub' $P4147 = "262_1303687815.225" 
    $P4148 = $P4147."get_lexinfo"()
    $P4148."finish_static_lexpad"()
    nqp_get_sc_object $P4149, "1303687806.753", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4149
    .const 'Sub' $P4150 = "266_1303687815.225" 
    $P4151 = $P4150."get_lexinfo"()
    nqp_get_sc_object $P4152, "1303687806.753", 7
    $P4151."set_static_lexpad_value"("$?PACKAGE", $P4152)
    .const 'Sub' $P4153 = "266_1303687815.225" 
    $P4154 = $P4153."get_lexinfo"()
    $P4154."finish_static_lexpad"()
    .const 'Sub' $P4155 = "266_1303687815.225" 
    $P4156 = $P4155."get_lexinfo"()
    nqp_get_sc_object $P4157, "1303687806.753", 7
    $P4156."set_static_lexpad_value"("$?CLASS", $P4157)
    .const 'Sub' $P4158 = "266_1303687815.225" 
    $P4159 = $P4158."get_lexinfo"()
    $P4159."finish_static_lexpad"()
    goto if_3902_end
  if_3902:
    nqp_dynop_setup 
    getinterp $P3905
    get_class $P3906, "LexPad"
    get_class $P3907, "NQPLexPad"
    $P3905."hll_map"($P3906, $P3907)
    nqp_create_sc $P3908, "1303687806.753"
    .local pmc cur_sc
    set cur_sc, $P3908
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3909, "ModuleLoader"
    $P3910 = $P3909."load_setting"("NQPCORE")
    block."set_outer_ctx"($P3910)
    get_hll_global $P3911, "KnowHOW"
    $P3912 = $P3911."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P3912, cur_sc
    nqp_set_sc_object "1303687806.753", 0, $P3912
    .const 'Sub' $P3913 = "10_1303687815.225" 
    $P3914 = $P3913."get_lexinfo"()
    nqp_get_sc_object $P3915, "1303687806.753", 0
    $P3914."set_static_lexpad_value"("GLOBALish", $P3915)
    .const 'Sub' $P3916 = "10_1303687815.225" 
    $P3917 = $P3916."get_lexinfo"()
    $P3917."finish_static_lexpad"()
    .const 'Sub' $P3918 = "10_1303687815.225" 
    $P3919 = $P3918."get_lexinfo"()
    nqp_get_sc_object $P3920, "1303687806.753", 0
    $P3919."set_static_lexpad_value"("$?PACKAGE", $P3920)
    .const 'Sub' $P3921 = "10_1303687815.225" 
    $P3922 = $P3921."get_lexinfo"()
    $P3922."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P3923, "ModuleLoader"
    nqp_get_sc_object $P3924, "1303687806.753", 0
    $P3923."load_module"("Regex", $P3924)
    get_hll_global $P3925, "NQPClassHOW"
    $P3926 = $P3925."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P3926, cur_sc
    nqp_set_sc_object "1303687806.753", 1, $P3926
    nqp_get_sc_object $P3927, "1303687806.753", 1
    nqp_get_sc_object $P3928, "1303687806.753", 0
    nqp_get_package_through_who $P3929, $P3928, "HLL"
    get_who $P3930, $P3929
    set $P3930["Grammar"], $P3927
    nqp_get_sc_object $P3931, "1303687806.753", 1
    set_hll_global ["HLL"], "Grammar", $P3931
    .const 'Sub' $P3932 = "109_1303687815.225" 
    nqp_get_sc_object $P3933, "1303687806.753", 1
    get_who $P3934, $P3933
    set $P3934["quotemod_check"], $P3932
    .const 'Sub' $P3935 = "112_1303687815.225" 
    nqp_get_sc_object $P3936, "1303687806.753", 1
    get_who $P3937, $P3936
    set $P3937["split_words"], $P3935
    .const 'Sub' $P3938 = "11_1303687815.225" 
    $P3939 = $P3938."get_lexinfo"()
    nqp_get_sc_object $P3940, "1303687806.753", 1
    $P3939."set_static_lexpad_value"("$?PACKAGE", $P3940)
    .const 'Sub' $P3941 = "11_1303687815.225" 
    $P3942 = $P3941."get_lexinfo"()
    $P3942."finish_static_lexpad"()
    .const 'Sub' $P3943 = "11_1303687815.225" 
    $P3944 = $P3943."get_lexinfo"()
    nqp_get_sc_object $P3945, "1303687806.753", 1
    $P3944."set_static_lexpad_value"("$?CLASS", $P3945)
    .const 'Sub' $P3946 = "11_1303687815.225" 
    $P3947 = $P3946."get_lexinfo"()
    $P3947."finish_static_lexpad"()
    get_hll_global $P3948, "NQPClassHOW"
    $P3949 = $P3948."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P3949, cur_sc
    nqp_set_sc_object "1303687806.753", 2, $P3949
    nqp_get_sc_object $P3950, "1303687806.753", 2
    nqp_get_sc_object $P3951, "1303687806.753", 0
    nqp_get_package_through_who $P3952, $P3951, "HLL"
    get_who $P3953, $P3952
    set $P3953["Actions"], $P3950
    nqp_get_sc_object $P3954, "1303687806.753", 2
    set_hll_global ["HLL"], "Actions", $P3954
    .const 'Sub' $P3955 = "121_1303687815.225" 
    nqp_get_sc_object $P3956, "1303687806.753", 2
    get_who $P3957, $P3956
    set $P3957["string_to_int"], $P3955
    .const 'Sub' $P3958 = "123_1303687815.225" 
    nqp_get_sc_object $P3959, "1303687806.753", 2
    get_who $P3960, $P3959
    set $P3960["ints_to_string"], $P3958
    .const 'Sub' $P3961 = "120_1303687815.225" 
    $P3962 = $P3961."get_lexinfo"()
    nqp_get_sc_object $P3963, "1303687806.753", 2
    $P3962."set_static_lexpad_value"("$?PACKAGE", $P3963)
    .const 'Sub' $P3964 = "120_1303687815.225" 
    $P3965 = $P3964."get_lexinfo"()
    $P3965."finish_static_lexpad"()
    .const 'Sub' $P3966 = "120_1303687815.225" 
    $P3967 = $P3966."get_lexinfo"()
    nqp_get_sc_object $P3968, "1303687806.753", 2
    $P3967."set_static_lexpad_value"("$?CLASS", $P3968)
    .const 'Sub' $P3969 = "120_1303687815.225" 
    $P3970 = $P3969."get_lexinfo"()
    $P3970."finish_static_lexpad"()
    get_hll_global $P3971, "NQPClassHOW"
    $P3972 = $P3971."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P3972, cur_sc
    nqp_set_sc_object "1303687806.753", 3, $P3972
    nqp_get_sc_object $P3973, "1303687806.753", 3
    nqp_get_sc_object $P3974, "1303687806.753", 0
    nqp_get_package_through_who $P3975, $P3974, "HLL"
    get_who $P3976, $P3975
    set $P3976["Compiler"], $P3973
    nqp_get_sc_object $P3977, "1303687806.753", 3
    set_hll_global ["HLL"], "Compiler", $P3977
    .const 'Sub' $P3978 = "167_1303687815.225" 
    $P3979 = $P3978."get_lexinfo"()
    nqp_get_sc_object $P3980, "1303687806.753", 3
    $P3979."set_static_lexpad_value"("$?PACKAGE", $P3980)
    .const 'Sub' $P3981 = "167_1303687815.225" 
    $P3982 = $P3981."get_lexinfo"()
    $P3982."finish_static_lexpad"()
    .const 'Sub' $P3983 = "167_1303687815.225" 
    $P3984 = $P3983."get_lexinfo"()
    nqp_get_sc_object $P3985, "1303687806.753", 3
    $P3984."set_static_lexpad_value"("$?CLASS", $P3985)
    .const 'Sub' $P3986 = "167_1303687815.225" 
    $P3987 = $P3986."get_lexinfo"()
    $P3987."finish_static_lexpad"()
    get_hll_global $P3988, "NQPClassHOW"
    $P3989 = $P3988."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P3989, cur_sc
    nqp_set_sc_object "1303687806.753", 4, $P3989
    nqp_get_sc_object $P3990, "1303687806.753", 4
    nqp_get_sc_object $P3991, "1303687806.753", 0
    nqp_get_package_through_who $P3992, $P3991, "HLL"
    nqp_get_package_through_who $P3993, $P3992, "CommandLine"
    get_who $P3994, $P3993
    set $P3994["Result"], $P3990
    nqp_get_sc_object $P3995, "1303687806.753", 4
    set_hll_global ["HLL";"CommandLine"], "Result", $P3995
    .const 'Sub' $P3996 = "234_1303687815.225" 
    $P3997 = $P3996."get_lexinfo"()
    nqp_get_sc_object $P3998, "1303687806.753", 4
    $P3997."set_static_lexpad_value"("$?PACKAGE", $P3998)
    .const 'Sub' $P3999 = "234_1303687815.225" 
    $P4000 = $P3999."get_lexinfo"()
    $P4000."finish_static_lexpad"()
    .const 'Sub' $P4001 = "234_1303687815.225" 
    $P4002 = $P4001."get_lexinfo"()
    nqp_get_sc_object $P4003, "1303687806.753", 4
    $P4002."set_static_lexpad_value"("$?CLASS", $P4003)
    .const 'Sub' $P4004 = "234_1303687815.225" 
    $P4005 = $P4004."get_lexinfo"()
    $P4005."finish_static_lexpad"()
    get_hll_global $P4006, "NQPClassHOW"
    $P4007 = $P4006."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P4007, cur_sc
    nqp_set_sc_object "1303687806.753", 5, $P4007
    nqp_get_sc_object $P4008, "1303687806.753", 5
    nqp_get_sc_object $P4009, "1303687806.753", 0
    nqp_get_package_through_who $P4010, $P4009, "HLL"
    nqp_get_package_through_who $P4011, $P4010, "CommandLine"
    get_who $P4012, $P4011
    set $P4012["Parser"], $P4008
    nqp_get_sc_object $P4013, "1303687806.753", 5
    set_hll_global ["HLL";"CommandLine"], "Parser", $P4013
    .const 'Sub' $P4014 = "242_1303687815.225" 
    $P4015 = $P4014."get_lexinfo"()
    nqp_get_sc_object $P4016, "1303687806.753", 5
    $P4015."set_static_lexpad_value"("$?PACKAGE", $P4016)
    .const 'Sub' $P4017 = "242_1303687815.225" 
    $P4018 = $P4017."get_lexinfo"()
    $P4018."finish_static_lexpad"()
    .const 'Sub' $P4019 = "242_1303687815.225" 
    $P4020 = $P4019."get_lexinfo"()
    nqp_get_sc_object $P4021, "1303687806.753", 5
    $P4020."set_static_lexpad_value"("$?CLASS", $P4021)
    .const 'Sub' $P4022 = "242_1303687815.225" 
    $P4023 = $P4022."get_lexinfo"()
    $P4023."finish_static_lexpad"()
    get_hll_global $P4024, "NQPClassHOW"
    $P4025 = $P4024."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P4025, cur_sc
    nqp_set_sc_object "1303687806.753", 6, $P4025
    nqp_get_sc_object $P4026, "1303687806.753", 6
    nqp_get_sc_object $P4027, "1303687806.753", 0
    nqp_get_package_through_who $P4028, $P4027, "HLL"
    nqp_get_package_through_who $P4029, $P4028, "Compiler"
    nqp_get_package_through_who $P4030, $P4029, "SerializationContextBuilder"
    get_who $P4031, $P4030
    set $P4031["Event"], $P4026
    nqp_get_sc_object $P4032, "1303687806.753", 6
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P4032
    .const 'Sub' $P4033 = "262_1303687815.225" 
    $P4034 = $P4033."get_lexinfo"()
    nqp_get_sc_object $P4035, "1303687806.753", 6
    $P4034."set_static_lexpad_value"("$?PACKAGE", $P4035)
    .const 'Sub' $P4036 = "262_1303687815.225" 
    $P4037 = $P4036."get_lexinfo"()
    $P4037."finish_static_lexpad"()
    .const 'Sub' $P4038 = "262_1303687815.225" 
    $P4039 = $P4038."get_lexinfo"()
    nqp_get_sc_object $P4040, "1303687806.753", 6
    $P4039."set_static_lexpad_value"("$?CLASS", $P4040)
    .const 'Sub' $P4041 = "262_1303687815.225" 
    $P4042 = $P4041."get_lexinfo"()
    $P4042."finish_static_lexpad"()
    get_hll_global $P4043, "NQPClassHOW"
    $P4044 = $P4043."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P4044, cur_sc
    nqp_set_sc_object "1303687806.753", 7, $P4044
    nqp_get_sc_object $P4045, "1303687806.753", 7
    nqp_get_sc_object $P4046, "1303687806.753", 0
    nqp_get_package_through_who $P4047, $P4046, "HLL"
    nqp_get_package_through_who $P4048, $P4047, "Compiler"
    get_who $P4049, $P4048
    set $P4049["SerializationContextBuilder"], $P4045
    nqp_get_sc_object $P4050, "1303687806.753", 7
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P4050
    .const 'Sub' $P4051 = "266_1303687815.225" 
    $P4052 = $P4051."get_lexinfo"()
    nqp_get_sc_object $P4053, "1303687806.753", 7
    $P4052."set_static_lexpad_value"("$?PACKAGE", $P4053)
    .const 'Sub' $P4054 = "266_1303687815.225" 
    $P4055 = $P4054."get_lexinfo"()
    $P4055."finish_static_lexpad"()
    .const 'Sub' $P4056 = "266_1303687815.225" 
    $P4057 = $P4056."get_lexinfo"()
    nqp_get_sc_object $P4058, "1303687806.753", 7
    $P4057."set_static_lexpad_value"("$?CLASS", $P4058)
    .const 'Sub' $P4059 = "266_1303687815.225" 
    $P4060 = $P4059."get_lexinfo"()
    $P4060."finish_static_lexpad"()
  if_3902_end:
    nqp_get_sc_object $P4160, "1303687806.753", 0
    set_hll_global "GLOBAL", $P4160
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1303687815.225") :outer("10_1303687815.225")
.annotate 'line', 9
    .const 'Sub' $P465 = "119_1303687815.225" 
    capture_lex $P465
    .const 'Sub' $P444 = "118_1303687815.225" 
    capture_lex $P444
    .const 'Sub' $P439 = "117_1303687815.225" 
    capture_lex $P439
    .const 'Sub' $P424 = "116_1303687815.225" 
    capture_lex $P424
    .const 'Sub' $P414 = "115_1303687815.225" 
    capture_lex $P414
    .const 'Sub' $P410 = "114_1303687815.225" 
    capture_lex $P410
    .const 'Sub' $P406 = "113_1303687815.225" 
    capture_lex $P406
    .const 'Sub' $P403 = "112_1303687815.225" 
    capture_lex $P403
    .const 'Sub' $P401 = "111_1303687815.225" 
    capture_lex $P401
    .const 'Sub' $P399 = "110_1303687815.225" 
    capture_lex $P399
    .const 'Sub' $P393 = "109_1303687815.225" 
    capture_lex $P393
    .const 'Sub' $P390 = "108_1303687815.225" 
    capture_lex $P390
    .const 'Sub' $P386 = "107_1303687815.225" 
    capture_lex $P386
    .const 'Sub' $P358 = "106_1303687815.225" 
    capture_lex $P358
    .const 'Sub' $P353 = "105_1303687815.225" 
    capture_lex $P353
    .const 'Sub' $P344 = "103_1303687815.225" 
    capture_lex $P344
    .const 'Sub' $P338 = "101_1303687815.225" 
    capture_lex $P338
    .const 'Sub' $P325 = "98_1303687815.225" 
    capture_lex $P325
    .const 'Sub' $P293 = "93_1303687815.225" 
    capture_lex $P293
    .const 'Sub' $P287 = "91_1303687815.225" 
    capture_lex $P287
    .const 'Sub' $P282 = "89_1303687815.225" 
    capture_lex $P282
    .const 'Sub' $P276 = "87_1303687815.225" 
    capture_lex $P276
    .const 'Sub' $P270 = "85_1303687815.225" 
    capture_lex $P270
    .const 'Sub' $P265 = "83_1303687815.225" 
    capture_lex $P265
    .const 'Sub' $P260 = "81_1303687815.225" 
    capture_lex $P260
    .const 'Sub' $P255 = "79_1303687815.225" 
    capture_lex $P255
    .const 'Sub' $P250 = "77_1303687815.225" 
    capture_lex $P250
    .const 'Sub' $P245 = "75_1303687815.225" 
    capture_lex $P245
    .const 'Sub' $P240 = "73_1303687815.225" 
    capture_lex $P240
    .const 'Sub' $P235 = "71_1303687815.225" 
    capture_lex $P235
    .const 'Sub' $P230 = "69_1303687815.225" 
    capture_lex $P230
    .const 'Sub' $P218 = "65_1303687815.225" 
    capture_lex $P218
    .const 'Sub' $P205 = "63_1303687815.225" 
    capture_lex $P205
    .const 'Sub' $P193 = "61_1303687815.225" 
    capture_lex $P193
    .const 'Sub' $P187 = "59_1303687815.225" 
    capture_lex $P187
    .const 'Sub' $P180 = "57_1303687815.225" 
    capture_lex $P180
    .const 'Sub' $P174 = "55_1303687815.225" 
    capture_lex $P174
    .const 'Sub' $P167 = "53_1303687815.225" 
    capture_lex $P167
    .const 'Sub' $P161 = "51_1303687815.225" 
    capture_lex $P161
    .const 'Sub' $P154 = "49_1303687815.225" 
    capture_lex $P154
    .const 'Sub' $P148 = "47_1303687815.225" 
    capture_lex $P148
    .const 'Sub' $P142 = "45_1303687815.225" 
    capture_lex $P142
    .const 'Sub' $P133 = "43_1303687815.225" 
    capture_lex $P133
    .const 'Sub' $P125 = "41_1303687815.225" 
    capture_lex $P125
    .const 'Sub' $P117 = "40_1303687815.225" 
    capture_lex $P117
    .const 'Sub' $P111 = "38_1303687815.225" 
    capture_lex $P111
    .const 'Sub' $P106 = "36_1303687815.225" 
    capture_lex $P106
    .const 'Sub' $P98 = "34_1303687815.225" 
    capture_lex $P98
    .const 'Sub' $P92 = "32_1303687815.225" 
    capture_lex $P92
    .const 'Sub' $P86 = "30_1303687815.225" 
    capture_lex $P86
    .const 'Sub' $P80 = "28_1303687815.225" 
    capture_lex $P80
    .const 'Sub' $P35 = "14_1303687815.225" 
    capture_lex $P35
    .const 'Sub' $P28 = "12_1303687815.225" 
    capture_lex $P28
.annotate 'line', 10
    new $P18, "Undef"
    .lex "$brackets", $P18
.annotate 'line', 12
    new $P19, "Undef"
    .lex "$cursor_class", $P19
    .lex "$?PACKAGE", $P20
    .lex "$?CLASS", $P21
.annotate 'line', 10
    new $P22, "String"
    assign $P22, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P22
.annotate 'line', 12
    find_lex $P23, "GLOBALish"
    get_who $P24, $P23
    set $P25, $P24["Regex"]
    unless_null $P25, vivify_296
    new $P25, "Undef"
  vivify_296:
    get_who $P26, $P25
    set $P27, $P26["Cursor"]
    unless_null $P27, vivify_297
    new $P27, "Undef"
  vivify_297:
    store_lex "$cursor_class", $P27
.annotate 'line', 851
    .const 'Sub' $P444 = "118_1303687815.225" 
    newclosure $P463, $P444
.annotate 'line', 9
    .return ($P463)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post295") :outer("11_1303687815.225")
.annotate 'line', 9
    .const 'Sub' $P17 = "11_1303687815.225" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P465 = "119_1303687815.225" 
    capture_lex $P465
    $P465()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block464"  :anon :subid("119_1303687815.225") :outer("11_1303687815.225")
.annotate 'line', 9
    nqp_get_sc_object $P466, "1303687806.753", 1
    .local pmc type_obj
    set type_obj, $P466
    get_how $P467, type_obj
    .const 'Sub' $P468 = "12_1303687815.225" 
    $P467."add_method"(type_obj, "ws", $P468)
    get_how $P469, type_obj
    get_global $P470, "!PREFIX__ws"
    $P469."add_method"(type_obj, "!PREFIX__ws", $P470)
    get_how $P471, type_obj
    .const 'Sub' $P472 = "14_1303687815.225" 
    $P471."add_method"(type_obj, "termish", $P472)
    get_how $P473, type_obj
    get_global $P474, "!PREFIX__termish"
    $P473."add_method"(type_obj, "!PREFIX__termish", $P474)
    get_how $P475, type_obj
    .const 'Sub' $P476 = "16_1303687815.225" 
    $P475."add_method"(type_obj, "term", $P476)
    get_how $P477, type_obj
    .const 'Sub' $P478 = "17_1303687815.225" 
    $P477."add_method"(type_obj, "!PREFIX__term", $P478)
    get_how $P479, type_obj
    .const 'Sub' $P480 = "18_1303687815.225" 
    $P479."add_method"(type_obj, "infix", $P480)
    get_how $P481, type_obj
    .const 'Sub' $P482 = "19_1303687815.225" 
    $P481."add_method"(type_obj, "!PREFIX__infix", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "20_1303687815.225" 
    $P483."add_method"(type_obj, "prefix", $P484)
    get_how $P485, type_obj
    .const 'Sub' $P486 = "21_1303687815.225" 
    $P485."add_method"(type_obj, "!PREFIX__prefix", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "22_1303687815.225" 
    $P487."add_method"(type_obj, "postfix", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "23_1303687815.225" 
    $P489."add_method"(type_obj, "!PREFIX__postfix", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "24_1303687815.225" 
    $P491."add_method"(type_obj, "circumfix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "25_1303687815.225" 
    $P493."add_method"(type_obj, "!PREFIX__circumfix", $P494)
    get_how $P495, type_obj
    .const 'Sub' $P496 = "26_1303687815.225" 
    $P495."add_method"(type_obj, "postcircumfix", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "27_1303687815.225" 
    $P497."add_method"(type_obj, "!PREFIX__postcircumfix", $P498)
    get_how $P499, type_obj
    .const 'Sub' $P500 = "28_1303687815.225" 
    $P499."add_method"(type_obj, "term:sym<circumfix>", $P500)
    get_how $P501, type_obj
    get_global $P502, "!PREFIX__term:sym<circumfix>"
    $P501."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P502)
    get_how $P503, type_obj
    .const 'Sub' $P504 = "30_1303687815.225" 
    $P503."add_method"(type_obj, "infixish", $P504)
    get_how $P505, type_obj
    get_global $P506, "!PREFIX__infixish"
    $P505."add_method"(type_obj, "!PREFIX__infixish", $P506)
    get_how $P507, type_obj
    .const 'Sub' $P508 = "32_1303687815.225" 
    $P507."add_method"(type_obj, "prefixish", $P508)
    get_how $P509, type_obj
    get_global $P510, "!PREFIX__prefixish"
    $P509."add_method"(type_obj, "!PREFIX__prefixish", $P510)
    get_how $P511, type_obj
    .const 'Sub' $P512 = "34_1303687815.225" 
    $P511."add_method"(type_obj, "postfixish", $P512)
    get_how $P513, type_obj
    get_global $P514, "!PREFIX__postfixish"
    $P513."add_method"(type_obj, "!PREFIX__postfixish", $P514)
    get_how $P515, type_obj
    .const 'Sub' $P516 = "36_1303687815.225" 
    $P515."add_method"(type_obj, "nullterm", $P516)
    get_how $P517, type_obj
    get_global $P518, "!PREFIX__nullterm"
    $P517."add_method"(type_obj, "!PREFIX__nullterm", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "38_1303687815.225" 
    $P519."add_method"(type_obj, "nullterm_alt", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__nullterm_alt"
    $P521."add_method"(type_obj, "!PREFIX__nullterm_alt", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "40_1303687815.225" 
    $P523."add_method"(type_obj, "nulltermish", $P524)
    get_how $P525, type_obj
    .const 'Sub' $P526 = "41_1303687815.225" 
    $P525."add_method"(type_obj, "quote_delimited", $P526)
    get_how $P527, type_obj
    get_global $P528, "!PREFIX__quote_delimited"
    $P527."add_method"(type_obj, "!PREFIX__quote_delimited", $P528)
    get_how $P529, type_obj
    .const 'Sub' $P530 = "43_1303687815.225" 
    $P529."add_method"(type_obj, "quote_atom", $P530)
    get_how $P531, type_obj
    get_global $P532, "!PREFIX__quote_atom"
    $P531."add_method"(type_obj, "!PREFIX__quote_atom", $P532)
    get_how $P533, type_obj
    .const 'Sub' $P534 = "45_1303687815.225" 
    $P533."add_method"(type_obj, "decint", $P534)
    get_how $P535, type_obj
    get_global $P536, "!PREFIX__decint"
    $P535."add_method"(type_obj, "!PREFIX__decint", $P536)
    get_how $P537, type_obj
    .const 'Sub' $P538 = "47_1303687815.225" 
    $P537."add_method"(type_obj, "decints", $P538)
    get_how $P539, type_obj
    get_global $P540, "!PREFIX__decints"
    $P539."add_method"(type_obj, "!PREFIX__decints", $P540)
    get_how $P541, type_obj
    .const 'Sub' $P542 = "49_1303687815.225" 
    $P541."add_method"(type_obj, "hexint", $P542)
    get_how $P543, type_obj
    get_global $P544, "!PREFIX__hexint"
    $P543."add_method"(type_obj, "!PREFIX__hexint", $P544)
    get_how $P545, type_obj
    .const 'Sub' $P546 = "51_1303687815.225" 
    $P545."add_method"(type_obj, "hexints", $P546)
    get_how $P547, type_obj
    get_global $P548, "!PREFIX__hexints"
    $P547."add_method"(type_obj, "!PREFIX__hexints", $P548)
    get_how $P549, type_obj
    .const 'Sub' $P550 = "53_1303687815.225" 
    $P549."add_method"(type_obj, "octint", $P550)
    get_how $P551, type_obj
    get_global $P552, "!PREFIX__octint"
    $P551."add_method"(type_obj, "!PREFIX__octint", $P552)
    get_how $P553, type_obj
    .const 'Sub' $P554 = "55_1303687815.225" 
    $P553."add_method"(type_obj, "octints", $P554)
    get_how $P555, type_obj
    get_global $P556, "!PREFIX__octints"
    $P555."add_method"(type_obj, "!PREFIX__octints", $P556)
    get_how $P557, type_obj
    .const 'Sub' $P558 = "57_1303687815.225" 
    $P557."add_method"(type_obj, "binint", $P558)
    get_how $P559, type_obj
    get_global $P560, "!PREFIX__binint"
    $P559."add_method"(type_obj, "!PREFIX__binint", $P560)
    get_how $P561, type_obj
    .const 'Sub' $P562 = "59_1303687815.225" 
    $P561."add_method"(type_obj, "binints", $P562)
    get_how $P563, type_obj
    get_global $P564, "!PREFIX__binints"
    $P563."add_method"(type_obj, "!PREFIX__binints", $P564)
    get_how $P565, type_obj
    .const 'Sub' $P566 = "61_1303687815.225" 
    $P565."add_method"(type_obj, "integer", $P566)
    get_how $P567, type_obj
    get_global $P568, "!PREFIX__integer"
    $P567."add_method"(type_obj, "!PREFIX__integer", $P568)
    get_how $P569, type_obj
    .const 'Sub' $P570 = "63_1303687815.225" 
    $P569."add_method"(type_obj, "dec_number", $P570)
    get_how $P571, type_obj
    get_global $P572, "!PREFIX__dec_number"
    $P571."add_method"(type_obj, "!PREFIX__dec_number", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "65_1303687815.225" 
    $P573."add_method"(type_obj, "escale", $P574)
    get_how $P575, type_obj
    get_global $P576, "!PREFIX__escale"
    $P575."add_method"(type_obj, "!PREFIX__escale", $P576)
    get_how $P577, type_obj
    .const 'Sub' $P578 = "67_1303687815.225" 
    $P577."add_method"(type_obj, "quote_escape", $P578)
    get_how $P579, type_obj
    .const 'Sub' $P580 = "68_1303687815.225" 
    $P579."add_method"(type_obj, "!PREFIX__quote_escape", $P580)
    get_how $P581, type_obj
    .const 'Sub' $P582 = "69_1303687815.225" 
    $P581."add_method"(type_obj, "quote_escape:sym<backslash>", $P582)
    get_how $P583, type_obj
    get_global $P584, "!PREFIX__quote_escape:sym<backslash>"
    $P583."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P584)
    get_how $P585, type_obj
    .const 'Sub' $P586 = "71_1303687815.225" 
    $P585."add_method"(type_obj, "quote_escape:sym<stopper>", $P586)
    get_how $P587, type_obj
    get_global $P588, "!PREFIX__quote_escape:sym<stopper>"
    $P587."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P588)
    get_how $P589, type_obj
    .const 'Sub' $P590 = "73_1303687815.225" 
    $P589."add_method"(type_obj, "quote_escape:sym<bs>", $P590)
    get_how $P591, type_obj
    get_global $P592, "!PREFIX__quote_escape:sym<bs>"
    $P591."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P592)
    get_how $P593, type_obj
    .const 'Sub' $P594 = "75_1303687815.225" 
    $P593."add_method"(type_obj, "quote_escape:sym<nl>", $P594)
    get_how $P595, type_obj
    get_global $P596, "!PREFIX__quote_escape:sym<nl>"
    $P595."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P596)
    get_how $P597, type_obj
    .const 'Sub' $P598 = "77_1303687815.225" 
    $P597."add_method"(type_obj, "quote_escape:sym<cr>", $P598)
    get_how $P599, type_obj
    get_global $P600, "!PREFIX__quote_escape:sym<cr>"
    $P599."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P600)
    get_how $P601, type_obj
    .const 'Sub' $P602 = "79_1303687815.225" 
    $P601."add_method"(type_obj, "quote_escape:sym<tab>", $P602)
    get_how $P603, type_obj
    get_global $P604, "!PREFIX__quote_escape:sym<tab>"
    $P603."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P604)
    get_how $P605, type_obj
    .const 'Sub' $P606 = "81_1303687815.225" 
    $P605."add_method"(type_obj, "quote_escape:sym<ff>", $P606)
    get_how $P607, type_obj
    get_global $P608, "!PREFIX__quote_escape:sym<ff>"
    $P607."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P608)
    get_how $P609, type_obj
    .const 'Sub' $P610 = "83_1303687815.225" 
    $P609."add_method"(type_obj, "quote_escape:sym<esc>", $P610)
    get_how $P611, type_obj
    get_global $P612, "!PREFIX__quote_escape:sym<esc>"
    $P611."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P612)
    get_how $P613, type_obj
    .const 'Sub' $P614 = "85_1303687815.225" 
    $P613."add_method"(type_obj, "quote_escape:sym<hex>", $P614)
    get_how $P615, type_obj
    get_global $P616, "!PREFIX__quote_escape:sym<hex>"
    $P615."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P616)
    get_how $P617, type_obj
    .const 'Sub' $P618 = "87_1303687815.225" 
    $P617."add_method"(type_obj, "quote_escape:sym<oct>", $P618)
    get_how $P619, type_obj
    get_global $P620, "!PREFIX__quote_escape:sym<oct>"
    $P619."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P620)
    get_how $P621, type_obj
    .const 'Sub' $P622 = "89_1303687815.225" 
    $P621."add_method"(type_obj, "quote_escape:sym<chr>", $P622)
    get_how $P623, type_obj
    get_global $P624, "!PREFIX__quote_escape:sym<chr>"
    $P623."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P624)
    get_how $P625, type_obj
    .const 'Sub' $P626 = "91_1303687815.225" 
    $P625."add_method"(type_obj, "quote_escape:sym<0>", $P626)
    get_how $P627, type_obj
    get_global $P628, "!PREFIX__quote_escape:sym<0>"
    $P627."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P628)
    get_how $P629, type_obj
    .const 'Sub' $P630 = "93_1303687815.225" 
    $P629."add_method"(type_obj, "quote_escape:sym<misc>", $P630)
    get_how $P631, type_obj
    get_global $P632, "!PREFIX__quote_escape:sym<misc>"
    $P631."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P632)
    get_how $P633, type_obj
    .const 'Sub' $P634 = "98_1303687815.225" 
    $P633."add_method"(type_obj, "charname", $P634)
    get_how $P635, type_obj
    get_global $P636, "!PREFIX__charname"
    $P635."add_method"(type_obj, "!PREFIX__charname", $P636)
    get_how $P637, type_obj
    .const 'Sub' $P638 = "101_1303687815.225" 
    $P637."add_method"(type_obj, "charnames", $P638)
    get_how $P639, type_obj
    get_global $P640, "!PREFIX__charnames"
    $P639."add_method"(type_obj, "!PREFIX__charnames", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "103_1303687815.225" 
    $P641."add_method"(type_obj, "charspec", $P642)
    get_how $P643, type_obj
    get_global $P644, "!PREFIX__charspec"
    $P643."add_method"(type_obj, "!PREFIX__charspec", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "105_1303687815.225" 
    $P645."add_method"(type_obj, "O", $P646)
    get_how $P647, type_obj
    .const 'Sub' $P648 = "106_1303687815.225" 
    $P647."add_method"(type_obj, "panic", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "107_1303687815.225" 
    $P649."add_method"(type_obj, "peek_delimiters", $P650)
    get_how $P651, type_obj
    .const 'Sub' $P652 = "108_1303687815.225" 
    $P651."add_method"(type_obj, "quote_EXPR", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "109_1303687815.225" 
    $P653."add_method"(type_obj, "quotemod_check", $P654)
    get_how $P655, type_obj
    .const 'Sub' $P656 = "110_1303687815.225" 
    $P655."add_method"(type_obj, "starter", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "111_1303687815.225" 
    $P657."add_method"(type_obj, "stopper", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "112_1303687815.225" 
    $P659."add_method"(type_obj, "split_words", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "113_1303687815.225" 
    $P661."add_method"(type_obj, "EXPR", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "114_1303687815.225" 
    $P663."add_method"(type_obj, "EXPR_reduce", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "115_1303687815.225" 
    $P665."add_method"(type_obj, "ternary", $P666)
    get_how $P667, type_obj
    .const 'Sub' $P668 = "116_1303687815.225" 
    $P667."add_method"(type_obj, "MARKER", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "117_1303687815.225" 
    $P669."add_method"(type_obj, "MARKED", $P670)
    get_how $P671, type_obj
    .const 'Sub' $P672 = "118_1303687815.225" 
    $P671."add_method"(type_obj, "LANG", $P672)
    get_how $P673, type_obj
    get_hll_global $P674, ["Regex"], "Cursor"
    $P673."set_default_parent"(type_obj, $P674)
    get_how $P675, type_obj
    $P676 = $P675."compose"(type_obj)
    .return ($P676)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
    .local string rx29_tgt
    .local int rx29_pos
    .local int rx29_off
    .local int rx29_eos
    .local int rx29_rep
    .local pmc rx29_cur
    .local pmc rx29_debug
    (rx29_cur, rx29_pos, rx29_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx29_cur
    .local pmc match
    .lex "$/", match
    length rx29_eos, rx29_tgt
    gt rx29_pos, rx29_eos, rx29_done
    set rx29_off, 0
    lt rx29_pos, 2, rx29_start
    sub rx29_off, rx29_pos, 1
    substr rx29_tgt, rx29_tgt, rx29_off
  rx29_start:
    eq $I10, 1, rx29_restart
    if_null rx29_debug, debug_298
    rx29_cur."!cursor_debug"("START", "ws")
  debug_298:
    $I10 = self.'from'()
    ne $I10, -1, rxscan32_done
    goto rxscan32_scan
  rxscan32_loop:
    (rx29_pos) = rx29_cur."from"()
    inc rx29_pos
    rx29_cur."!cursor_from"(rx29_pos)
    ge rx29_pos, rx29_eos, rxscan32_done
  rxscan32_scan:
    set_addr $I10, rxscan32_loop
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxscan32_done:
.annotate 'line', 14
  # rx subrule "ww" subtype=zerowidth negate=1
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ww"()
    if $P10, rx29_fail
  # rx rxquantr33 ** 0..*
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  rxquantr33_loop:
  alt34_0:
    set_addr $I10, alt34_1
    rx29_cur."!mark_push"(0, rx29_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx29_pos, rx29_off
    find_not_cclass $I11, 32, rx29_tgt, $I10, rx29_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx29_fail
    add rx29_pos, rx29_off, $I11
    goto alt34_end
  alt34_1:
  # rx literal  "#"
    add $I11, rx29_pos, 1
    gt $I11, rx29_eos, rx29_fail
    sub $I11, rx29_pos, rx29_off
    ord $I11, rx29_tgt, $I11
    ne $I11, 35, rx29_fail
    add rx29_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx29_pos, rx29_off
    find_cclass $I11, 4096, rx29_tgt, $I10, rx29_eos
    add rx29_pos, rx29_off, $I11
  alt34_end:
    set_addr $I10, rxquantr33_done
    (rx29_rep) = rx29_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr33_done
    rx29_cur."!mark_push"(rx29_rep, rx29_pos, $I10)
    goto rxquantr33_loop
  rxquantr33_done:
  # rx pass
    rx29_cur."!cursor_pass"(rx29_pos, "ws")
    if_null rx29_debug, debug_299
    rx29_cur."!cursor_debug"("PASS", "ws", " at pos=", rx29_pos)
  debug_299:
    .return (rx29_cur)
  rx29_restart:
.annotate 'line', 12
    if_null rx29_debug, debug_300
    rx29_cur."!cursor_debug"("NEXT", "ws")
  debug_300:
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    if_null rx29_debug, debug_301
    rx29_cur."!cursor_debug"("FAIL", "ws")
  debug_301:
    .return (rx29_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1303687815.225") :method
.annotate 'line', 12
    new $P31, "ResizablePMCArray"
    push $P31, ""
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
    .local string rx36_tgt
    .local int rx36_pos
    .local int rx36_off
    .local int rx36_eos
    .local int rx36_rep
    .local pmc rx36_cur
    .local pmc rx36_debug
    (rx36_cur, rx36_pos, rx36_tgt, $I10) = self."!cursor_start"()
    rx36_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx36_cur
    .local pmc match
    .lex "$/", match
    length rx36_eos, rx36_tgt
    gt rx36_pos, rx36_eos, rx36_done
    set rx36_off, 0
    lt rx36_pos, 2, rx36_start
    sub rx36_off, rx36_pos, 1
    substr rx36_tgt, rx36_tgt, rx36_off
  rx36_start:
    eq $I10, 1, rx36_restart
    if_null rx36_debug, debug_302
    rx36_cur."!cursor_debug"("START", "termish")
  debug_302:
    $I10 = self.'from'()
    ne $I10, -1, rxscan39_done
    goto rxscan39_scan
  rxscan39_loop:
    (rx36_pos) = rx36_cur."from"()
    inc rx36_pos
    rx36_cur."!cursor_from"(rx36_pos)
    ge rx36_pos, rx36_eos, rxscan39_done
  rxscan39_scan:
    set_addr $I10, rxscan39_loop
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxscan39_done:
.annotate 'line', 17
  # rx rxquantr40 ** 0..*
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr40_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."prefixish"()
    unless $P10, rx36_fail
    goto rxsubrule41_pass
  rxsubrule41_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule41_pass:
    set_addr $I10, rxsubrule41_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr40_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr40_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr40_loop
  rxquantr40_done:
.annotate 'line', 18
  # rx subrule "term" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."term"()
    unless $P10, rx36_fail
    rx36_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx36_pos = $P10."pos"()
.annotate 'line', 19
  # rx rxquantr42 ** 0..*
    set_addr $I10, rxquantr42_done
    rx36_cur."!mark_push"(0, rx36_pos, $I10)
  rxquantr42_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx36_cur."!cursor_pos"(rx36_pos)
    $P10 = rx36_cur."postfixish"()
    unless $P10, rx36_fail
    goto rxsubrule43_pass
  rxsubrule43_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx36_fail
  rxsubrule43_pass:
    set_addr $I10, rxsubrule43_back
    rx36_cur."!mark_push"(0, rx36_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx36_pos = $P10."pos"()
    set_addr $I10, rxquantr42_done
    (rx36_rep) = rx36_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr42_done
    rx36_cur."!mark_push"(rx36_rep, rx36_pos, $I10)
    goto rxquantr42_loop
  rxquantr42_done:
.annotate 'line', 16
  # rx pass
    rx36_cur."!cursor_pass"(rx36_pos, "termish")
    if_null rx36_debug, debug_303
    rx36_cur."!cursor_debug"("PASS", "termish", " at pos=", rx36_pos)
  debug_303:
    .return (rx36_cur)
  rx36_restart:
.annotate 'line', 12
    if_null rx36_debug, debug_304
    rx36_cur."!cursor_debug"("NEXT", "termish")
  debug_304:
  rx36_fail:
    (rx36_rep, rx36_pos, $I10, $P10) = rx36_cur."!mark_fail"(0)
    lt rx36_pos, -1, rx36_done
    eq rx36_pos, -1, rx36_fail
    jump $I10
  rx36_done:
    rx36_cur."!cursor_fail"()
    if_null rx36_debug, debug_305
    rx36_cur."!cursor_debug"("FAIL", "termish")
  debug_305:
    .return (rx36_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1303687815.225") :method
.annotate 'line', 12
    new $P38, "ResizablePMCArray"
    push $P38, ""
    .return ($P38)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1303687815.225")
    .param pmc param_45
.annotate 'line', 22
    .lex "self", param_45
    $P46 = param_45."!protoregex"("term")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1303687815.225")
    .param pmc param_48
.annotate 'line', 22
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("term")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1303687815.225")
    .param pmc param_51
.annotate 'line', 23
    .lex "self", param_51
    $P52 = param_51."!protoregex"("infix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1303687815.225")
    .param pmc param_54
.annotate 'line', 23
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("infix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1303687815.225")
    .param pmc param_57
.annotate 'line', 24
    .lex "self", param_57
    $P58 = param_57."!protoregex"("prefix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1303687815.225")
    .param pmc param_60
.annotate 'line', 24
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("prefix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1303687815.225")
    .param pmc param_63
.annotate 'line', 25
    .lex "self", param_63
    $P64 = param_63."!protoregex"("postfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1303687815.225")
    .param pmc param_66
.annotate 'line', 25
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("postfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1303687815.225")
    .param pmc param_69
.annotate 'line', 26
    .lex "self", param_69
    $P70 = param_69."!protoregex"("circumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1303687815.225")
    .param pmc param_72
.annotate 'line', 26
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("circumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1303687815.225")
    .param pmc param_75
.annotate 'line', 27
    .lex "self", param_75
    $P76 = param_75."!protoregex"("postcircumfix")
    .return ($P76)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1303687815.225")
    .param pmc param_78
.annotate 'line', 27
    .lex "self", param_78
    $P79 = param_78."!PREFIX__!protoregex"("postcircumfix")
    .return ($P79)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
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
    if_null rx81_debug, debug_306
    rx81_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_306:
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
  # rx subrule "circumfix" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."circumfix"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx81_pos = $P10."pos"()
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "term:sym<circumfix>")
    if_null rx81_debug, debug_307
    rx81_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx81_pos)
  debug_307:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 12
    if_null rx81_debug, debug_308
    rx81_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_308:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_309
    rx81_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_309:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1303687815.225") :method
.annotate 'line', 12
    $P83 = self."!PREFIX__!subrule"("circumfix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
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
    if_null rx87_debug, debug_310
    rx87_cur."!cursor_debug"("START", "infixish")
  debug_310:
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
.annotate 'line', 31
  # rx subrule "infix" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."infix"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx87_pos = $P10."pos"()
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "infixish")
    if_null rx87_debug, debug_311
    rx87_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx87_pos)
  debug_311:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 12
    if_null rx87_debug, debug_312
    rx87_cur."!cursor_debug"("NEXT", "infixish")
  debug_312:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_313
    rx87_cur."!cursor_debug"("FAIL", "infixish")
  debug_313:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1303687815.225") :method
.annotate 'line', 12
    $P89 = self."!PREFIX__!subrule"("infix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
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
    if_null rx93_debug, debug_314
    rx93_cur."!cursor_debug"("START", "prefixish")
  debug_314:
    $I10 = self.'from'()
    ne $I10, -1, rxscan97_done
    goto rxscan97_scan
  rxscan97_loop:
    (rx93_pos) = rx93_cur."from"()
    inc rx93_pos
    rx93_cur."!cursor_from"(rx93_pos)
    ge rx93_pos, rx93_eos, rxscan97_done
  rxscan97_scan:
    set_addr $I10, rxscan97_loop
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxscan97_done:
.annotate 'line', 32
  # rx subrule "prefix" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."prefix"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx93_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."ws"()
    unless $P10, rx93_fail
    rx93_pos = $P10."pos"()
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "prefixish")
    if_null rx93_debug, debug_315
    rx93_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx93_pos)
  debug_315:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 12
    if_null rx93_debug, debug_316
    rx93_cur."!cursor_debug"("NEXT", "prefixish")
  debug_316:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_317
    rx93_cur."!cursor_debug"("FAIL", "prefixish")
  debug_317:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1303687815.225") :method
.annotate 'line', 12
    $P95 = self."!PREFIX__!subrule"("prefix", "")
    new $P96, "ResizablePMCArray"
    push $P96, $P95
    .return ($P96)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    .local pmc rx99_debug
    (rx99_cur, rx99_pos, rx99_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx99_cur
    .local pmc match
    .lex "$/", match
    length rx99_eos, rx99_tgt
    gt rx99_pos, rx99_eos, rx99_done
    set rx99_off, 0
    lt rx99_pos, 2, rx99_start
    sub rx99_off, rx99_pos, 1
    substr rx99_tgt, rx99_tgt, rx99_off
  rx99_start:
    eq $I10, 1, rx99_restart
    if_null rx99_debug, debug_318
    rx99_cur."!cursor_debug"("START", "postfixish")
  debug_318:
    $I10 = self.'from'()
    ne $I10, -1, rxscan104_done
    goto rxscan104_scan
  rxscan104_loop:
    (rx99_pos) = rx99_cur."from"()
    inc rx99_pos
    rx99_cur."!cursor_from"(rx99_pos)
    ge rx99_pos, rx99_eos, rxscan104_done
  rxscan104_scan:
    set_addr $I10, rxscan104_loop
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
  rxscan104_done:
  alt105_0:
.annotate 'line', 33
    set_addr $I10, alt105_1
    rx99_cur."!mark_push"(0, rx99_pos, $I10)
.annotate 'line', 34
  # rx subrule "postfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx99_pos = $P10."pos"()
    goto alt105_end
  alt105_1:
.annotate 'line', 35
  # rx subrule "postcircumfix" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."postcircumfix"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx99_pos = $P10."pos"()
  alt105_end:
.annotate 'line', 33
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "postfixish")
    if_null rx99_debug, debug_319
    rx99_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx99_pos)
  debug_319:
    .return (rx99_cur)
  rx99_restart:
.annotate 'line', 12
    if_null rx99_debug, debug_320
    rx99_cur."!cursor_debug"("NEXT", "postfixish")
  debug_320:
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    if_null rx99_debug, debug_321
    rx99_cur."!cursor_debug"("FAIL", "postfixish")
  debug_321:
    .return (rx99_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1303687815.225") :method
.annotate 'line', 12
    $P101 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P102 = self."!PREFIX__!subrule"("postfix", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P101
    push $P103, $P102
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_debug
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx107_cur
    .local pmc match
    .lex "$/", match
    length rx107_eos, rx107_tgt
    gt rx107_pos, rx107_eos, rx107_done
    set rx107_off, 0
    lt rx107_pos, 2, rx107_start
    sub rx107_off, rx107_pos, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
    eq $I10, 1, rx107_restart
    if_null rx107_debug, debug_322
    rx107_cur."!cursor_debug"("START", "nullterm")
  debug_322:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    (rx107_pos) = rx107_cur."from"()
    inc rx107_pos
    rx107_cur."!cursor_from"(rx107_pos)
    ge rx107_pos, rx107_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan110_done:
.annotate 'line', 38
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "nullterm")
    if_null rx107_debug, debug_323
    rx107_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx107_pos)
  debug_323:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 12
    if_null rx107_debug, debug_324
    rx107_cur."!cursor_debug"("NEXT", "nullterm")
  debug_324:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_325
    rx107_cur."!cursor_debug"("FAIL", "nullterm")
  debug_325:
    .return (rx107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1303687815.225") :method
.annotate 'line', 12
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 12
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    .local pmc rx112_debug
    (rx112_cur, rx112_pos, rx112_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx112_cur
    .local pmc match
    .lex "$/", match
    length rx112_eos, rx112_tgt
    gt rx112_pos, rx112_eos, rx112_done
    set rx112_off, 0
    lt rx112_pos, 2, rx112_start
    sub rx112_off, rx112_pos, 1
    substr rx112_tgt, rx112_tgt, rx112_off
  rx112_start:
    eq $I10, 1, rx112_restart
    if_null rx112_debug, debug_326
    rx112_cur."!cursor_debug"("START", "nullterm_alt")
  debug_326:
    $I10 = self.'from'()
    ne $I10, -1, rxscan116_done
    goto rxscan116_scan
  rxscan116_loop:
    (rx112_pos) = rx112_cur."from"()
    inc rx112_pos
    rx112_cur."!cursor_from"(rx112_pos)
    ge rx112_pos, rx112_eos, rxscan116_done
  rxscan116_scan:
    set_addr $I10, rxscan116_loop
    rx112_cur."!mark_push"(0, rx112_pos, $I10)
  rxscan116_done:
.annotate 'line', 39
  # rx subrule "nullterm" subtype=capture negate=
    rx112_cur."!cursor_pos"(rx112_pos)
    $P10 = rx112_cur."nullterm"()
    unless $P10, rx112_fail
    rx112_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx112_pos = $P10."pos"()
  # rx pass
    rx112_cur."!cursor_pass"(rx112_pos, "nullterm_alt")
    if_null rx112_debug, debug_327
    rx112_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx112_pos)
  debug_327:
    .return (rx112_cur)
  rx112_restart:
.annotate 'line', 12
    if_null rx112_debug, debug_328
    rx112_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_328:
  rx112_fail:
    (rx112_rep, rx112_pos, $I10, $P10) = rx112_cur."!mark_fail"(0)
    lt rx112_pos, -1, rx112_done
    eq rx112_pos, -1, rx112_fail
    jump $I10
  rx112_done:
    rx112_cur."!cursor_fail"()
    if_null rx112_debug, debug_329
    rx112_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_329:
    .return (rx112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1303687815.225") :method
.annotate 'line', 12
    $P114 = self."!PREFIX__!subrule"("nullterm", "")
    new $P115, "ResizablePMCArray"
    push $P115, $P114
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_118
.annotate 'line', 42
    .lex "self", param_118
    find_lex $P121, "self"
    $P122 = $P121."termish"()
    unless $P122, unless_120
    set $P119, $P122
    goto unless_120_end
  unless_120:
    find_lex $P123, "self"
    $P124 = $P123."nullterm_alt"()
    set $P119, $P124
  unless_120_end:
    .return ($P119)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_debug
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    gt rx126_pos, rx126_eos, rx126_done
    set rx126_off, 0
    lt rx126_pos, 2, rx126_start
    sub rx126_off, rx126_pos, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
    eq $I10, 1, rx126_restart
    if_null rx126_debug, debug_330
    rx126_cur."!cursor_debug"("START", "quote_delimited")
  debug_330:
    $I10 = self.'from'()
    ne $I10, -1, rxscan130_done
    goto rxscan130_scan
  rxscan130_loop:
    (rx126_pos) = rx126_cur."from"()
    inc rx126_pos
    rx126_cur."!cursor_from"(rx126_pos)
    ge rx126_pos, rx126_eos, rxscan130_done
  rxscan130_scan:
    set_addr $I10, rxscan130_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan130_done:
.annotate 'line', 46
  # rx subrule "starter" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."starter"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx126_pos = $P10."pos"()
  # rx rxquantr131 ** 0..*
    set_addr $I10, rxquantr131_done
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxquantr131_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."quote_atom"()
    unless $P10, rx126_fail
    goto rxsubrule132_pass
  rxsubrule132_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx126_fail
  rxsubrule132_pass:
    set_addr $I10, rxsubrule132_back
    rx126_cur."!mark_push"(0, rx126_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx126_pos = $P10."pos"()
    set_addr $I10, rxquantr131_done
    (rx126_rep) = rx126_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr131_done
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I10)
    goto rxquantr131_loop
  rxquantr131_done:
  # rx subrule "stopper" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."stopper"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx126_pos = $P10."pos"()
.annotate 'line', 45
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "quote_delimited")
    if_null rx126_debug, debug_331
    rx126_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx126_pos)
  debug_331:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 42
    if_null rx126_debug, debug_332
    rx126_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_332:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_333
    rx126_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_333:
    .return (rx126_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1303687815.225") :method
.annotate 'line', 42
    $P128 = self."!PREFIX__!subrule"("starter", "")
    new $P129, "ResizablePMCArray"
    push $P129, $P128
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_debug
    (rx134_cur, rx134_pos, rx134_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx134_cur
    .local pmc match
    .lex "$/", match
    length rx134_eos, rx134_tgt
    gt rx134_pos, rx134_eos, rx134_done
    set rx134_off, 0
    lt rx134_pos, 2, rx134_start
    sub rx134_off, rx134_pos, 1
    substr rx134_tgt, rx134_tgt, rx134_off
  rx134_start:
    eq $I10, 1, rx134_restart
    if_null rx134_debug, debug_334
    rx134_cur."!cursor_debug"("START", "quote_atom")
  debug_334:
    $I10 = self.'from'()
    ne $I10, -1, rxscan137_done
    goto rxscan137_scan
  rxscan137_loop:
    (rx134_pos) = rx134_cur."from"()
    inc rx134_pos
    rx134_cur."!cursor_from"(rx134_pos)
    ge rx134_pos, rx134_eos, rxscan137_done
  rxscan137_scan:
    set_addr $I10, rxscan137_loop
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  rxscan137_done:
.annotate 'line', 50
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."stopper"()
    if $P10, rx134_fail
  alt138_0:
.annotate 'line', 51
    set_addr $I10, alt138_1
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
.annotate 'line', 52
  # rx subrule "quote_escape" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."quote_escape"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx134_pos = $P10."pos"()
    goto alt138_end
  alt138_1:
.annotate 'line', 53
  # rx rxquantr139 ** 1..*
    set_addr $I10, rxquantr139_done
    rx134_cur."!mark_push"(0, -1, $I10)
  rxquantr139_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."stopper"()
    if $P10, rx134_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."quote_escape"()
    if $P10, rx134_fail
  # rx charclass .
    ge rx134_pos, rx134_eos, rx134_fail
    inc rx134_pos
    set_addr $I10, rxquantr139_done
    (rx134_rep) = rx134_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr139_done
    rx134_cur."!mark_push"(rx134_rep, rx134_pos, $I10)
    goto rxquantr139_loop
  rxquantr139_done:
  alt138_end:
.annotate 'line', 49
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "quote_atom")
    if_null rx134_debug, debug_335
    rx134_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx134_pos)
  debug_335:
    .return (rx134_cur)
  rx134_restart:
.annotate 'line', 42
    if_null rx134_debug, debug_336
    rx134_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_336:
  rx134_fail:
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    if_null rx134_debug, debug_337
    rx134_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_337:
    .return (rx134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1303687815.225") :method
.annotate 'line', 42
    new $P136, "ResizablePMCArray"
    push $P136, ""
    .return ($P136)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
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
    if_null rx143_debug, debug_338
    rx143_cur."!cursor_debug"("START", "decint")
  debug_338:
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
.annotate 'line', 57
  # rx rxquantr147 ** 1..*
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(0, -1, $I10)
  rxquantr147_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx143_pos, rx143_off
    find_not_cclass $I11, 8, rx143_tgt, $I10, rx143_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx143_fail
    add rx143_pos, rx143_off, $I11
    set_addr $I10, rxquantr147_done
    (rx143_rep) = rx143_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(rx143_rep, rx143_pos, $I10)
  # rx literal  "_"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 95, rx143_fail
    add rx143_pos, 1
    goto rxquantr147_loop
  rxquantr147_done:
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "decint")
    if_null rx143_debug, debug_339
    rx143_cur."!cursor_debug"("PASS", "decint", " at pos=", rx143_pos)
  debug_339:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 42
    if_null rx143_debug, debug_340
    rx143_cur."!cursor_debug"("NEXT", "decint")
  debug_340:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_341
    rx143_cur."!cursor_debug"("FAIL", "decint")
  debug_341:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1303687815.225") :method
.annotate 'line', 42
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_debug
    (rx149_cur, rx149_pos, rx149_tgt, $I10) = self."!cursor_start"()
    rx149_cur."!cursor_caparray"("decint")
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
    if_null rx149_debug, debug_342
    rx149_cur."!cursor_debug"("START", "decints")
  debug_342:
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
  # rx subrule "ws" subtype=method negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."ws"()
    unless $P10, rx149_fail
    rx149_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."decint"()
    unless $P10, rx149_fail
    rx149_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx149_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx149_cur."!cursor_pos"(rx149_pos)
    $P10 = rx149_cur."ws"()
    unless $P10, rx149_fail
    rx149_pos = $P10."pos"()
    set_addr $I10, rxquantr153_done
    (rx149_rep) = rx149_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(rx149_rep, rx149_pos, $I10)
  # rx literal  ","
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    ord $I11, rx149_tgt, $I11
    ne $I11, 44, rx149_fail
    add rx149_pos, 1
    goto rxquantr153_loop
  rxquantr153_done:
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "decints")
    if_null rx149_debug, debug_343
    rx149_cur."!cursor_debug"("PASS", "decints", " at pos=", rx149_pos)
  debug_343:
    .return (rx149_cur)
  rx149_restart:
.annotate 'line', 42
    if_null rx149_debug, debug_344
    rx149_cur."!cursor_debug"("NEXT", "decints")
  debug_344:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_345
    rx149_cur."!cursor_debug"("FAIL", "decints")
  debug_345:
    .return (rx149_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1303687815.225") :method
.annotate 'line', 42
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_debug
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx155_cur
    .local pmc match
    .lex "$/", match
    length rx155_eos, rx155_tgt
    gt rx155_pos, rx155_eos, rx155_done
    set rx155_off, 0
    lt rx155_pos, 2, rx155_start
    sub rx155_off, rx155_pos, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
    eq $I10, 1, rx155_restart
    if_null rx155_debug, debug_346
    rx155_cur."!cursor_debug"("START", "hexint")
  debug_346:
    $I10 = self.'from'()
    ne $I10, -1, rxscan158_done
    goto rxscan158_scan
  rxscan158_loop:
    (rx155_pos) = rx155_cur."from"()
    inc rx155_pos
    rx155_cur."!cursor_from"(rx155_pos)
    ge rx155_pos, rx155_eos, rxscan158_done
  rxscan158_scan:
    set_addr $I10, rxscan158_loop
    rx155_cur."!mark_push"(0, rx155_pos, $I10)
  rxscan158_done:
.annotate 'line', 60
  # rx rxquantr159 ** 1..*
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(0, -1, $I10)
  rxquantr159_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx155_pos, rx155_off
    set rx155_rep, 0
    sub $I12, rx155_eos, rx155_pos
  rxenumcharlistq160_loop:
    le $I12, 0, rxenumcharlistq160_done
    substr $S10, rx155_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq160_done
    inc rx155_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq160_loop
  rxenumcharlistq160_done:
    lt rx155_rep, 1, rx155_fail
    add rx155_pos, rx155_pos, rx155_rep
    set_addr $I10, rxquantr159_done
    (rx155_rep) = rx155_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr159_done
    rx155_cur."!mark_push"(rx155_rep, rx155_pos, $I10)
  # rx literal  "_"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    ord $I11, rx155_tgt, $I11
    ne $I11, 95, rx155_fail
    add rx155_pos, 1
    goto rxquantr159_loop
  rxquantr159_done:
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "hexint")
    if_null rx155_debug, debug_347
    rx155_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx155_pos)
  debug_347:
    .return (rx155_cur)
  rx155_restart:
.annotate 'line', 42
    if_null rx155_debug, debug_348
    rx155_cur."!cursor_debug"("NEXT", "hexint")
  debug_348:
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    if_null rx155_debug, debug_349
    rx155_cur."!cursor_debug"("FAIL", "hexint")
  debug_349:
    .return (rx155_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1303687815.225") :method
.annotate 'line', 42
    new $P157, "ResizablePMCArray"
    push $P157, ""
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_caparray"("hexint")
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
    if_null rx162_debug, debug_350
    rx162_cur."!cursor_debug"("START", "hexints")
  debug_350:
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
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."hexint"()
    unless $P10, rx162_fail
    rx162_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx162_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."ws"()
    unless $P10, rx162_fail
    rx162_pos = $P10."pos"()
    set_addr $I10, rxquantr166_done
    (rx162_rep) = rx162_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I10)
  # rx literal  ","
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 44, rx162_fail
    add rx162_pos, 1
    goto rxquantr166_loop
  rxquantr166_done:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "hexints")
    if_null rx162_debug, debug_351
    rx162_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx162_pos)
  debug_351:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 42
    if_null rx162_debug, debug_352
    rx162_cur."!cursor_debug"("NEXT", "hexints")
  debug_352:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_353
    rx162_cur."!cursor_debug"("FAIL", "hexints")
  debug_353:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1303687815.225") :method
.annotate 'line', 42
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_debug
    (rx168_cur, rx168_pos, rx168_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx168_cur
    .local pmc match
    .lex "$/", match
    length rx168_eos, rx168_tgt
    gt rx168_pos, rx168_eos, rx168_done
    set rx168_off, 0
    lt rx168_pos, 2, rx168_start
    sub rx168_off, rx168_pos, 1
    substr rx168_tgt, rx168_tgt, rx168_off
  rx168_start:
    eq $I10, 1, rx168_restart
    if_null rx168_debug, debug_354
    rx168_cur."!cursor_debug"("START", "octint")
  debug_354:
    $I10 = self.'from'()
    ne $I10, -1, rxscan171_done
    goto rxscan171_scan
  rxscan171_loop:
    (rx168_pos) = rx168_cur."from"()
    inc rx168_pos
    rx168_cur."!cursor_from"(rx168_pos)
    ge rx168_pos, rx168_eos, rxscan171_done
  rxscan171_scan:
    set_addr $I10, rxscan171_loop
    rx168_cur."!mark_push"(0, rx168_pos, $I10)
  rxscan171_done:
.annotate 'line', 63
  # rx rxquantr172 ** 1..*
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(0, -1, $I10)
  rxquantr172_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx168_pos, rx168_off
    set rx168_rep, 0
    sub $I12, rx168_eos, rx168_pos
  rxenumcharlistq173_loop:
    le $I12, 0, rxenumcharlistq173_done
    substr $S10, rx168_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq173_done
    inc rx168_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq173_loop
  rxenumcharlistq173_done:
    lt rx168_rep, 1, rx168_fail
    add rx168_pos, rx168_pos, rx168_rep
    set_addr $I10, rxquantr172_done
    (rx168_rep) = rx168_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr172_done
    rx168_cur."!mark_push"(rx168_rep, rx168_pos, $I10)
  # rx literal  "_"
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail
    sub $I11, rx168_pos, rx168_off
    ord $I11, rx168_tgt, $I11
    ne $I11, 95, rx168_fail
    add rx168_pos, 1
    goto rxquantr172_loop
  rxquantr172_done:
  # rx pass
    rx168_cur."!cursor_pass"(rx168_pos, "octint")
    if_null rx168_debug, debug_355
    rx168_cur."!cursor_debug"("PASS", "octint", " at pos=", rx168_pos)
  debug_355:
    .return (rx168_cur)
  rx168_restart:
.annotate 'line', 42
    if_null rx168_debug, debug_356
    rx168_cur."!cursor_debug"("NEXT", "octint")
  debug_356:
  rx168_fail:
    (rx168_rep, rx168_pos, $I10, $P10) = rx168_cur."!mark_fail"(0)
    lt rx168_pos, -1, rx168_done
    eq rx168_pos, -1, rx168_fail
    jump $I10
  rx168_done:
    rx168_cur."!cursor_fail"()
    if_null rx168_debug, debug_357
    rx168_cur."!cursor_debug"("FAIL", "octint")
  debug_357:
    .return (rx168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1303687815.225") :method
.annotate 'line', 42
    new $P170, "ResizablePMCArray"
    push $P170, ""
    .return ($P170)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_debug
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    rx175_cur."!cursor_caparray"("octint")
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
    if_null rx175_debug, debug_358
    rx175_cur."!cursor_debug"("START", "octints")
  debug_358:
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
  # rx subrule "ws" subtype=method negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."ws"()
    unless $P10, rx175_fail
    rx175_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."octint"()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx175_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."ws"()
    unless $P10, rx175_fail
    rx175_pos = $P10."pos"()
    set_addr $I10, rxquantr179_done
    (rx175_rep) = rx175_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(rx175_rep, rx175_pos, $I10)
  # rx literal  ","
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 44, rx175_fail
    add rx175_pos, 1
    goto rxquantr179_loop
  rxquantr179_done:
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "octints")
    if_null rx175_debug, debug_359
    rx175_cur."!cursor_debug"("PASS", "octints", " at pos=", rx175_pos)
  debug_359:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 42
    if_null rx175_debug, debug_360
    rx175_cur."!cursor_debug"("NEXT", "octints")
  debug_360:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_361
    rx175_cur."!cursor_debug"("FAIL", "octints")
  debug_361:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1303687815.225") :method
.annotate 'line', 42
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx181_tgt
    .local int rx181_pos
    .local int rx181_off
    .local int rx181_eos
    .local int rx181_rep
    .local pmc rx181_cur
    .local pmc rx181_debug
    (rx181_cur, rx181_pos, rx181_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx181_cur
    .local pmc match
    .lex "$/", match
    length rx181_eos, rx181_tgt
    gt rx181_pos, rx181_eos, rx181_done
    set rx181_off, 0
    lt rx181_pos, 2, rx181_start
    sub rx181_off, rx181_pos, 1
    substr rx181_tgt, rx181_tgt, rx181_off
  rx181_start:
    eq $I10, 1, rx181_restart
    if_null rx181_debug, debug_362
    rx181_cur."!cursor_debug"("START", "binint")
  debug_362:
    $I10 = self.'from'()
    ne $I10, -1, rxscan184_done
    goto rxscan184_scan
  rxscan184_loop:
    (rx181_pos) = rx181_cur."from"()
    inc rx181_pos
    rx181_cur."!cursor_from"(rx181_pos)
    ge rx181_pos, rx181_eos, rxscan184_done
  rxscan184_scan:
    set_addr $I10, rxscan184_loop
    rx181_cur."!mark_push"(0, rx181_pos, $I10)
  rxscan184_done:
.annotate 'line', 66
  # rx rxquantr185 ** 1..*
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(0, -1, $I10)
  rxquantr185_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx181_pos, rx181_off
    set rx181_rep, 0
    sub $I12, rx181_eos, rx181_pos
  rxenumcharlistq186_loop:
    le $I12, 0, rxenumcharlistq186_done
    substr $S10, rx181_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq186_done
    inc rx181_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq186_loop
  rxenumcharlistq186_done:
    lt rx181_rep, 1, rx181_fail
    add rx181_pos, rx181_pos, rx181_rep
    set_addr $I10, rxquantr185_done
    (rx181_rep) = rx181_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr185_done
    rx181_cur."!mark_push"(rx181_rep, rx181_pos, $I10)
  # rx literal  "_"
    add $I11, rx181_pos, 1
    gt $I11, rx181_eos, rx181_fail
    sub $I11, rx181_pos, rx181_off
    ord $I11, rx181_tgt, $I11
    ne $I11, 95, rx181_fail
    add rx181_pos, 1
    goto rxquantr185_loop
  rxquantr185_done:
  # rx pass
    rx181_cur."!cursor_pass"(rx181_pos, "binint")
    if_null rx181_debug, debug_363
    rx181_cur."!cursor_debug"("PASS", "binint", " at pos=", rx181_pos)
  debug_363:
    .return (rx181_cur)
  rx181_restart:
.annotate 'line', 42
    if_null rx181_debug, debug_364
    rx181_cur."!cursor_debug"("NEXT", "binint")
  debug_364:
  rx181_fail:
    (rx181_rep, rx181_pos, $I10, $P10) = rx181_cur."!mark_fail"(0)
    lt rx181_pos, -1, rx181_done
    eq rx181_pos, -1, rx181_fail
    jump $I10
  rx181_done:
    rx181_cur."!cursor_fail"()
    if_null rx181_debug, debug_365
    rx181_cur."!cursor_debug"("FAIL", "binint")
  debug_365:
    .return (rx181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1303687815.225") :method
.annotate 'line', 42
    new $P183, "ResizablePMCArray"
    push $P183, ""
    .return ($P183)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_debug
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    rx188_cur."!cursor_caparray"("binint")
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
    if_null rx188_debug, debug_366
    rx188_cur."!cursor_debug"("START", "binints")
  debug_366:
    $I10 = self.'from'()
    ne $I10, -1, rxscan191_done
    goto rxscan191_scan
  rxscan191_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan191_done
  rxscan191_scan:
    set_addr $I10, rxscan191_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan191_done:
.annotate 'line', 67
  # rx rxquantr192 ** 1..*
    set_addr $I10, rxquantr192_done
    rx188_cur."!mark_push"(0, -1, $I10)
  rxquantr192_loop:
  # rx subrule "ws" subtype=method negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."ws"()
    unless $P10, rx188_fail
    rx188_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."binint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx188_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."ws"()
    unless $P10, rx188_fail
    rx188_pos = $P10."pos"()
    set_addr $I10, rxquantr192_done
    (rx188_rep) = rx188_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr192_done
    rx188_cur."!mark_push"(rx188_rep, rx188_pos, $I10)
  # rx literal  ","
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 44, rx188_fail
    add rx188_pos, 1
    goto rxquantr192_loop
  rxquantr192_done:
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "binints")
    if_null rx188_debug, debug_367
    rx188_cur."!cursor_debug"("PASS", "binints", " at pos=", rx188_pos)
  debug_367:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 42
    if_null rx188_debug, debug_368
    rx188_cur."!cursor_debug"("NEXT", "binints")
  debug_368:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_369
    rx188_cur."!cursor_debug"("FAIL", "binints")
  debug_369:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1303687815.225") :method
.annotate 'line', 42
    new $P190, "ResizablePMCArray"
    push $P190, ""
    .return ($P190)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    .local pmc rx194_debug
    (rx194_cur, rx194_pos, rx194_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx194_cur
    .local pmc match
    .lex "$/", match
    length rx194_eos, rx194_tgt
    gt rx194_pos, rx194_eos, rx194_done
    set rx194_off, 0
    lt rx194_pos, 2, rx194_start
    sub rx194_off, rx194_pos, 1
    substr rx194_tgt, rx194_tgt, rx194_off
  rx194_start:
    eq $I10, 1, rx194_restart
    if_null rx194_debug, debug_370
    rx194_cur."!cursor_debug"("START", "integer")
  debug_370:
    $I10 = self.'from'()
    ne $I10, -1, rxscan202_done
    goto rxscan202_scan
  rxscan202_loop:
    (rx194_pos) = rx194_cur."from"()
    inc rx194_pos
    rx194_cur."!cursor_from"(rx194_pos)
    ge rx194_pos, rx194_eos, rxscan202_done
  rxscan202_scan:
    set_addr $I10, rxscan202_loop
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxscan202_done:
  alt203_0:
.annotate 'line', 70
    set_addr $I10, alt203_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 71
  # rx literal  "0"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 48, rx194_fail
    add rx194_pos, 1
  alt204_0:
    set_addr $I10, alt204_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx literal  "b"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 98, rx194_fail
    add rx194_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."binint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx194_pos = $P10."pos"()
    goto alt204_end
  alt204_1:
    set_addr $I10, alt204_2
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 72
  # rx literal  "o"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 111, rx194_fail
    add rx194_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."octint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx194_pos = $P10."pos"()
    goto alt204_end
  alt204_2:
    set_addr $I10, alt204_3
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 73
  # rx literal  "x"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 120, rx194_fail
    add rx194_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."hexint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx194_pos = $P10."pos"()
    goto alt204_end
  alt204_3:
.annotate 'line', 74
  # rx literal  "d"
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 100, rx194_fail
    add rx194_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."decint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx194_pos = $P10."pos"()
  alt204_end:
.annotate 'line', 71
    goto alt203_end
  alt203_1:
.annotate 'line', 76
  # rx subrule "decint" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."decint"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx194_pos = $P10."pos"()
  alt203_end:
.annotate 'line', 69
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "integer")
    if_null rx194_debug, debug_371
    rx194_cur."!cursor_debug"("PASS", "integer", " at pos=", rx194_pos)
  debug_371:
    .return (rx194_cur)
  rx194_restart:
.annotate 'line', 42
    if_null rx194_debug, debug_372
    rx194_cur."!cursor_debug"("NEXT", "integer")
  debug_372:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_373
    rx194_cur."!cursor_debug"("FAIL", "integer")
  debug_373:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1303687815.225") :method
.annotate 'line', 42
    $P196 = self."!PREFIX__!subrule"("decint", "")
    $P197 = self."!PREFIX__!subrule"("decint", "0d")
    $P198 = self."!PREFIX__!subrule"("hexint", "0x")
    $P199 = self."!PREFIX__!subrule"("octint", "0o")
    $P200 = self."!PREFIX__!subrule"("binint", "0b")
    new $P201, "ResizablePMCArray"
    push $P201, $P196
    push $P201, $P197
    push $P201, $P198
    push $P201, $P199
    push $P201, $P200
    .return ($P201)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx206_tgt
    .local int rx206_pos
    .local int rx206_off
    .local int rx206_eos
    .local int rx206_rep
    .local pmc rx206_cur
    .local pmc rx206_debug
    (rx206_cur, rx206_pos, rx206_tgt, $I10) = self."!cursor_start"()
    rx206_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx206_cur
    .local pmc match
    .lex "$/", match
    length rx206_eos, rx206_tgt
    gt rx206_pos, rx206_eos, rx206_done
    set rx206_off, 0
    lt rx206_pos, 2, rx206_start
    sub rx206_off, rx206_pos, 1
    substr rx206_tgt, rx206_tgt, rx206_off
  rx206_start:
    eq $I10, 1, rx206_restart
    if_null rx206_debug, debug_374
    rx206_cur."!cursor_debug"("START", "dec_number")
  debug_374:
    $I10 = self.'from'()
    ne $I10, -1, rxscan209_done
    goto rxscan209_scan
  rxscan209_loop:
    (rx206_pos) = rx206_cur."from"()
    inc rx206_pos
    rx206_cur."!cursor_from"(rx206_pos)
    ge rx206_pos, rx206_eos, rxscan209_done
  rxscan209_scan:
    set_addr $I10, rxscan209_loop
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxscan209_done:
  alt210_0:
.annotate 'line', 80
    set_addr $I10, alt210_1
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_211_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx literal  "."
    add $I11, rx206_pos, 1
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    ord $I11, rx206_tgt, $I11
    ne $I11, 46, rx206_fail
    add rx206_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_211_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_211_done
  rxcap_211_fail:
    goto rx206_fail
  rxcap_211_done:
  # rx rxquantr212 ** 0..1
    set_addr $I10, rxquantr212_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr212_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule213_pass
  rxsubrule213_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule213_pass:
    set_addr $I10, rxsubrule213_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr212_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr212_done:
    goto alt210_end
  alt210_1:
    set_addr $I10, alt210_2
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
.annotate 'line', 82
  # rx subcapture "coeff"
    set_addr $I10, rxcap_214_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
  # rx literal  "."
    add $I11, rx206_pos, 1
    gt $I11, rx206_eos, rx206_fail
    sub $I11, rx206_pos, rx206_off
    ord $I11, rx206_tgt, $I11
    ne $I11, 46, rx206_fail
    add rx206_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_214_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_214_done
  rxcap_214_fail:
    goto rx206_fail
  rxcap_214_done:
  # rx rxquantr215 ** 0..1
    set_addr $I10, rxquantr215_done
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  rxquantr215_loop:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    goto rxsubrule216_pass
  rxsubrule216_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx206_fail
  rxsubrule216_pass:
    set_addr $I10, rxsubrule216_back
    rx206_cur."!mark_push"(0, rx206_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
    set_addr $I10, rxquantr215_done
    (rx206_rep) = rx206_cur."!mark_commit"($I10)
  rxquantr215_done:
    goto alt210_end
  alt210_2:
.annotate 'line', 83
  # rx subcapture "coeff"
    set_addr $I10, rxcap_217_fail
    rx206_cur."!mark_push"(0, rx206_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx206_pos, rx206_off
    find_not_cclass $I11, 8, rx206_tgt, $I10, rx206_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx206_fail
    add rx206_pos, rx206_off, $I11
    set_addr $I10, rxcap_217_fail
    ($I12, $I11) = rx206_cur."!mark_peek"($I10)
    rx206_cur."!cursor_pos"($I11)
    ($P10) = rx206_cur."!cursor_start"()
    $P10."!cursor_pass"(rx206_pos, "")
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_217_done
  rxcap_217_fail:
    goto rx206_fail
  rxcap_217_done:
  # rx subrule "escale" subtype=capture negate=
    rx206_cur."!cursor_pos"(rx206_pos)
    $P10 = rx206_cur."escale"()
    unless $P10, rx206_fail
    rx206_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx206_pos = $P10."pos"()
  alt210_end:
.annotate 'line', 80
  # rx pass
    rx206_cur."!cursor_pass"(rx206_pos, "dec_number")
    if_null rx206_debug, debug_375
    rx206_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx206_pos)
  debug_375:
    .return (rx206_cur)
  rx206_restart:
.annotate 'line', 42
    if_null rx206_debug, debug_376
    rx206_cur."!cursor_debug"("NEXT", "dec_number")
  debug_376:
  rx206_fail:
    (rx206_rep, rx206_pos, $I10, $P10) = rx206_cur."!mark_fail"(0)
    lt rx206_pos, -1, rx206_done
    eq rx206_pos, -1, rx206_fail
    jump $I10
  rx206_done:
    rx206_cur."!cursor_fail"()
    if_null rx206_debug, debug_377
    rx206_cur."!cursor_debug"("FAIL", "dec_number")
  debug_377:
    .return (rx206_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1303687815.225") :method
.annotate 'line', 42
    new $P208, "ResizablePMCArray"
    push $P208, ""
    push $P208, ""
    push $P208, "."
    .return ($P208)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx219_tgt
    .local int rx219_pos
    .local int rx219_off
    .local int rx219_eos
    .local int rx219_rep
    .local pmc rx219_cur
    .local pmc rx219_debug
    (rx219_cur, rx219_pos, rx219_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx219_cur
    .local pmc match
    .lex "$/", match
    length rx219_eos, rx219_tgt
    gt rx219_pos, rx219_eos, rx219_done
    set rx219_off, 0
    lt rx219_pos, 2, rx219_start
    sub rx219_off, rx219_pos, 1
    substr rx219_tgt, rx219_tgt, rx219_off
  rx219_start:
    eq $I10, 1, rx219_restart
    if_null rx219_debug, debug_378
    rx219_cur."!cursor_debug"("START", "escale")
  debug_378:
    $I10 = self.'from'()
    ne $I10, -1, rxscan222_done
    goto rxscan222_scan
  rxscan222_loop:
    (rx219_pos) = rx219_cur."from"()
    inc rx219_pos
    rx219_cur."!cursor_from"(rx219_pos)
    ge rx219_pos, rx219_eos, rxscan222_done
  rxscan222_scan:
    set_addr $I10, rxscan222_loop
    rx219_cur."!mark_push"(0, rx219_pos, $I10)
  rxscan222_done:
.annotate 'line', 86
  # rx enumcharlist negate=0 
    ge rx219_pos, rx219_eos, rx219_fail
    sub $I10, rx219_pos, rx219_off
    substr $S10, rx219_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx219_fail
    inc rx219_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx219_pos, rx219_off
    set rx219_rep, 0
    sub $I12, rx219_eos, rx219_pos
    le $I12, 1, rxenumcharlistq223_loop
    set $I12, 1
  rxenumcharlistq223_loop:
    le $I12, 0, rxenumcharlistq223_done
    substr $S10, rx219_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq223_done
    inc rx219_rep
  rxenumcharlistq223_done:
    add rx219_pos, rx219_pos, rx219_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx219_pos, rx219_off
    find_not_cclass $I11, 8, rx219_tgt, $I10, rx219_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx219_fail
    add rx219_pos, rx219_off, $I11
  # rx pass
    rx219_cur."!cursor_pass"(rx219_pos, "escale")
    if_null rx219_debug, debug_379
    rx219_cur."!cursor_debug"("PASS", "escale", " at pos=", rx219_pos)
  debug_379:
    .return (rx219_cur)
  rx219_restart:
.annotate 'line', 42
    if_null rx219_debug, debug_380
    rx219_cur."!cursor_debug"("NEXT", "escale")
  debug_380:
  rx219_fail:
    (rx219_rep, rx219_pos, $I10, $P10) = rx219_cur."!mark_fail"(0)
    lt rx219_pos, -1, rx219_done
    eq rx219_pos, -1, rx219_fail
    jump $I10
  rx219_done:
    rx219_cur."!cursor_fail"()
    if_null rx219_debug, debug_381
    rx219_cur."!cursor_debug"("FAIL", "escale")
  debug_381:
    .return (rx219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1303687815.225") :method
.annotate 'line', 42
    new $P221, "ResizablePMCArray"
    push $P221, "e"
    push $P221, "E"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1303687815.225")
    .param pmc param_225
.annotate 'line', 88
    .lex "self", param_225
    $P226 = param_225."!protoregex"("quote_escape")
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1303687815.225")
    .param pmc param_228
.annotate 'line', 88
    .lex "self", param_228
    $P229 = param_228."!PREFIX__!protoregex"("quote_escape")
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx231_tgt
    .local int rx231_pos
    .local int rx231_off
    .local int rx231_eos
    .local int rx231_rep
    .local pmc rx231_cur
    .local pmc rx231_debug
    (rx231_cur, rx231_pos, rx231_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx231_cur
    .local pmc match
    .lex "$/", match
    length rx231_eos, rx231_tgt
    gt rx231_pos, rx231_eos, rx231_done
    set rx231_off, 0
    lt rx231_pos, 2, rx231_start
    sub rx231_off, rx231_pos, 1
    substr rx231_tgt, rx231_tgt, rx231_off
  rx231_start:
    eq $I10, 1, rx231_restart
    if_null rx231_debug, debug_382
    rx231_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_382:
    $I10 = self.'from'()
    ne $I10, -1, rxscan234_done
    goto rxscan234_scan
  rxscan234_loop:
    (rx231_pos) = rx231_cur."from"()
    inc rx231_pos
    rx231_cur."!cursor_from"(rx231_pos)
    ge rx231_pos, rx231_eos, rxscan234_done
  rxscan234_scan:
    set_addr $I10, rxscan234_loop
    rx231_cur."!mark_push"(0, rx231_pos, $I10)
  rxscan234_done:
.annotate 'line', 89
  # rx literal  "\\\\"
    add $I11, rx231_pos, 2
    gt $I11, rx231_eos, rx231_fail
    sub $I11, rx231_pos, rx231_off
    substr $S10, rx231_tgt, $I11, 2
    ne $S10, "\\\\", rx231_fail
    add rx231_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx231_cur."!cursor_pos"(rx231_pos)
    $P10 = rx231_cur."quotemod_check"("q")
    unless $P10, rx231_fail
  # rx pass
    rx231_cur."!cursor_pass"(rx231_pos, "quote_escape:sym<backslash>")
    if_null rx231_debug, debug_383
    rx231_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx231_pos)
  debug_383:
    .return (rx231_cur)
  rx231_restart:
.annotate 'line', 42
    if_null rx231_debug, debug_384
    rx231_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_384:
  rx231_fail:
    (rx231_rep, rx231_pos, $I10, $P10) = rx231_cur."!mark_fail"(0)
    lt rx231_pos, -1, rx231_done
    eq rx231_pos, -1, rx231_fail
    jump $I10
  rx231_done:
    rx231_cur."!cursor_fail"()
    if_null rx231_debug, debug_385
    rx231_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_385:
    .return (rx231_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1303687815.225") :method
.annotate 'line', 42
    new $P233, "ResizablePMCArray"
    push $P233, "\\\\"
    .return ($P233)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx236_tgt
    .local int rx236_pos
    .local int rx236_off
    .local int rx236_eos
    .local int rx236_rep
    .local pmc rx236_cur
    .local pmc rx236_debug
    (rx236_cur, rx236_pos, rx236_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx236_cur
    .local pmc match
    .lex "$/", match
    length rx236_eos, rx236_tgt
    gt rx236_pos, rx236_eos, rx236_done
    set rx236_off, 0
    lt rx236_pos, 2, rx236_start
    sub rx236_off, rx236_pos, 1
    substr rx236_tgt, rx236_tgt, rx236_off
  rx236_start:
    eq $I10, 1, rx236_restart
    if_null rx236_debug, debug_386
    rx236_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_386:
    $I10 = self.'from'()
    ne $I10, -1, rxscan239_done
    goto rxscan239_scan
  rxscan239_loop:
    (rx236_pos) = rx236_cur."from"()
    inc rx236_pos
    rx236_cur."!cursor_from"(rx236_pos)
    ge rx236_pos, rx236_eos, rxscan239_done
  rxscan239_scan:
    set_addr $I10, rxscan239_loop
    rx236_cur."!mark_push"(0, rx236_pos, $I10)
  rxscan239_done:
.annotate 'line', 90
  # rx literal  "\\"
    add $I11, rx236_pos, 1
    gt $I11, rx236_eos, rx236_fail
    sub $I11, rx236_pos, rx236_off
    ord $I11, rx236_tgt, $I11
    ne $I11, 92, rx236_fail
    add rx236_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."quotemod_check"("q")
    unless $P10, rx236_fail
  # rx subrule "stopper" subtype=capture negate=
    rx236_cur."!cursor_pos"(rx236_pos)
    $P10 = rx236_cur."stopper"()
    unless $P10, rx236_fail
    rx236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx236_pos = $P10."pos"()
  # rx pass
    rx236_cur."!cursor_pass"(rx236_pos, "quote_escape:sym<stopper>")
    if_null rx236_debug, debug_387
    rx236_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx236_pos)
  debug_387:
    .return (rx236_cur)
  rx236_restart:
.annotate 'line', 42
    if_null rx236_debug, debug_388
    rx236_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_388:
  rx236_fail:
    (rx236_rep, rx236_pos, $I10, $P10) = rx236_cur."!mark_fail"(0)
    lt rx236_pos, -1, rx236_done
    eq rx236_pos, -1, rx236_fail
    jump $I10
  rx236_done:
    rx236_cur."!cursor_fail"()
    if_null rx236_debug, debug_389
    rx236_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_389:
    .return (rx236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1303687815.225") :method
.annotate 'line', 42
    new $P238, "ResizablePMCArray"
    push $P238, "\\"
    .return ($P238)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx241_tgt
    .local int rx241_pos
    .local int rx241_off
    .local int rx241_eos
    .local int rx241_rep
    .local pmc rx241_cur
    .local pmc rx241_debug
    (rx241_cur, rx241_pos, rx241_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx241_cur
    .local pmc match
    .lex "$/", match
    length rx241_eos, rx241_tgt
    gt rx241_pos, rx241_eos, rx241_done
    set rx241_off, 0
    lt rx241_pos, 2, rx241_start
    sub rx241_off, rx241_pos, 1
    substr rx241_tgt, rx241_tgt, rx241_off
  rx241_start:
    eq $I10, 1, rx241_restart
    if_null rx241_debug, debug_390
    rx241_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_390:
    $I10 = self.'from'()
    ne $I10, -1, rxscan244_done
    goto rxscan244_scan
  rxscan244_loop:
    (rx241_pos) = rx241_cur."from"()
    inc rx241_pos
    rx241_cur."!cursor_from"(rx241_pos)
    ge rx241_pos, rx241_eos, rxscan244_done
  rxscan244_scan:
    set_addr $I10, rxscan244_loop
    rx241_cur."!mark_push"(0, rx241_pos, $I10)
  rxscan244_done:
.annotate 'line', 92
  # rx literal  "\\b"
    add $I11, rx241_pos, 2
    gt $I11, rx241_eos, rx241_fail
    sub $I11, rx241_pos, rx241_off
    substr $S10, rx241_tgt, $I11, 2
    ne $S10, "\\b", rx241_fail
    add rx241_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx241_cur."!cursor_pos"(rx241_pos)
    $P10 = rx241_cur."quotemod_check"("b")
    unless $P10, rx241_fail
  # rx pass
    rx241_cur."!cursor_pass"(rx241_pos, "quote_escape:sym<bs>")
    if_null rx241_debug, debug_391
    rx241_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx241_pos)
  debug_391:
    .return (rx241_cur)
  rx241_restart:
.annotate 'line', 42
    if_null rx241_debug, debug_392
    rx241_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_392:
  rx241_fail:
    (rx241_rep, rx241_pos, $I10, $P10) = rx241_cur."!mark_fail"(0)
    lt rx241_pos, -1, rx241_done
    eq rx241_pos, -1, rx241_fail
    jump $I10
  rx241_done:
    rx241_cur."!cursor_fail"()
    if_null rx241_debug, debug_393
    rx241_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_393:
    .return (rx241_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1303687815.225") :method
.annotate 'line', 42
    new $P243, "ResizablePMCArray"
    push $P243, "\\b"
    .return ($P243)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx246_tgt
    .local int rx246_pos
    .local int rx246_off
    .local int rx246_eos
    .local int rx246_rep
    .local pmc rx246_cur
    .local pmc rx246_debug
    (rx246_cur, rx246_pos, rx246_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx246_cur
    .local pmc match
    .lex "$/", match
    length rx246_eos, rx246_tgt
    gt rx246_pos, rx246_eos, rx246_done
    set rx246_off, 0
    lt rx246_pos, 2, rx246_start
    sub rx246_off, rx246_pos, 1
    substr rx246_tgt, rx246_tgt, rx246_off
  rx246_start:
    eq $I10, 1, rx246_restart
    if_null rx246_debug, debug_394
    rx246_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_394:
    $I10 = self.'from'()
    ne $I10, -1, rxscan249_done
    goto rxscan249_scan
  rxscan249_loop:
    (rx246_pos) = rx246_cur."from"()
    inc rx246_pos
    rx246_cur."!cursor_from"(rx246_pos)
    ge rx246_pos, rx246_eos, rxscan249_done
  rxscan249_scan:
    set_addr $I10, rxscan249_loop
    rx246_cur."!mark_push"(0, rx246_pos, $I10)
  rxscan249_done:
.annotate 'line', 93
  # rx literal  "\\n"
    add $I11, rx246_pos, 2
    gt $I11, rx246_eos, rx246_fail
    sub $I11, rx246_pos, rx246_off
    substr $S10, rx246_tgt, $I11, 2
    ne $S10, "\\n", rx246_fail
    add rx246_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx246_cur."!cursor_pos"(rx246_pos)
    $P10 = rx246_cur."quotemod_check"("b")
    unless $P10, rx246_fail
  # rx pass
    rx246_cur."!cursor_pass"(rx246_pos, "quote_escape:sym<nl>")
    if_null rx246_debug, debug_395
    rx246_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx246_pos)
  debug_395:
    .return (rx246_cur)
  rx246_restart:
.annotate 'line', 42
    if_null rx246_debug, debug_396
    rx246_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_396:
  rx246_fail:
    (rx246_rep, rx246_pos, $I10, $P10) = rx246_cur."!mark_fail"(0)
    lt rx246_pos, -1, rx246_done
    eq rx246_pos, -1, rx246_fail
    jump $I10
  rx246_done:
    rx246_cur."!cursor_fail"()
    if_null rx246_debug, debug_397
    rx246_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_397:
    .return (rx246_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1303687815.225") :method
.annotate 'line', 42
    new $P248, "ResizablePMCArray"
    push $P248, "\\n"
    .return ($P248)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    .local pmc rx251_debug
    (rx251_cur, rx251_pos, rx251_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx251_cur
    .local pmc match
    .lex "$/", match
    length rx251_eos, rx251_tgt
    gt rx251_pos, rx251_eos, rx251_done
    set rx251_off, 0
    lt rx251_pos, 2, rx251_start
    sub rx251_off, rx251_pos, 1
    substr rx251_tgt, rx251_tgt, rx251_off
  rx251_start:
    eq $I10, 1, rx251_restart
    if_null rx251_debug, debug_398
    rx251_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_398:
    $I10 = self.'from'()
    ne $I10, -1, rxscan254_done
    goto rxscan254_scan
  rxscan254_loop:
    (rx251_pos) = rx251_cur."from"()
    inc rx251_pos
    rx251_cur."!cursor_from"(rx251_pos)
    ge rx251_pos, rx251_eos, rxscan254_done
  rxscan254_scan:
    set_addr $I10, rxscan254_loop
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  rxscan254_done:
.annotate 'line', 94
  # rx literal  "\\r"
    add $I11, rx251_pos, 2
    gt $I11, rx251_eos, rx251_fail
    sub $I11, rx251_pos, rx251_off
    substr $S10, rx251_tgt, $I11, 2
    ne $S10, "\\r", rx251_fail
    add rx251_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx251_cur."!cursor_pos"(rx251_pos)
    $P10 = rx251_cur."quotemod_check"("b")
    unless $P10, rx251_fail
  # rx pass
    rx251_cur."!cursor_pass"(rx251_pos, "quote_escape:sym<cr>")
    if_null rx251_debug, debug_399
    rx251_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx251_pos)
  debug_399:
    .return (rx251_cur)
  rx251_restart:
.annotate 'line', 42
    if_null rx251_debug, debug_400
    rx251_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_400:
  rx251_fail:
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    if_null rx251_debug, debug_401
    rx251_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_401:
    .return (rx251_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1303687815.225") :method
.annotate 'line', 42
    new $P253, "ResizablePMCArray"
    push $P253, "\\r"
    .return ($P253)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx256_tgt
    .local int rx256_pos
    .local int rx256_off
    .local int rx256_eos
    .local int rx256_rep
    .local pmc rx256_cur
    .local pmc rx256_debug
    (rx256_cur, rx256_pos, rx256_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx256_cur
    .local pmc match
    .lex "$/", match
    length rx256_eos, rx256_tgt
    gt rx256_pos, rx256_eos, rx256_done
    set rx256_off, 0
    lt rx256_pos, 2, rx256_start
    sub rx256_off, rx256_pos, 1
    substr rx256_tgt, rx256_tgt, rx256_off
  rx256_start:
    eq $I10, 1, rx256_restart
    if_null rx256_debug, debug_402
    rx256_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_402:
    $I10 = self.'from'()
    ne $I10, -1, rxscan259_done
    goto rxscan259_scan
  rxscan259_loop:
    (rx256_pos) = rx256_cur."from"()
    inc rx256_pos
    rx256_cur."!cursor_from"(rx256_pos)
    ge rx256_pos, rx256_eos, rxscan259_done
  rxscan259_scan:
    set_addr $I10, rxscan259_loop
    rx256_cur."!mark_push"(0, rx256_pos, $I10)
  rxscan259_done:
.annotate 'line', 95
  # rx literal  "\\t"
    add $I11, rx256_pos, 2
    gt $I11, rx256_eos, rx256_fail
    sub $I11, rx256_pos, rx256_off
    substr $S10, rx256_tgt, $I11, 2
    ne $S10, "\\t", rx256_fail
    add rx256_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx256_cur."!cursor_pos"(rx256_pos)
    $P10 = rx256_cur."quotemod_check"("b")
    unless $P10, rx256_fail
  # rx pass
    rx256_cur."!cursor_pass"(rx256_pos, "quote_escape:sym<tab>")
    if_null rx256_debug, debug_403
    rx256_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx256_pos)
  debug_403:
    .return (rx256_cur)
  rx256_restart:
.annotate 'line', 42
    if_null rx256_debug, debug_404
    rx256_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_404:
  rx256_fail:
    (rx256_rep, rx256_pos, $I10, $P10) = rx256_cur."!mark_fail"(0)
    lt rx256_pos, -1, rx256_done
    eq rx256_pos, -1, rx256_fail
    jump $I10
  rx256_done:
    rx256_cur."!cursor_fail"()
    if_null rx256_debug, debug_405
    rx256_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_405:
    .return (rx256_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1303687815.225") :method
.annotate 'line', 42
    new $P258, "ResizablePMCArray"
    push $P258, "\\t"
    .return ($P258)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx261_tgt
    .local int rx261_pos
    .local int rx261_off
    .local int rx261_eos
    .local int rx261_rep
    .local pmc rx261_cur
    .local pmc rx261_debug
    (rx261_cur, rx261_pos, rx261_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx261_cur
    .local pmc match
    .lex "$/", match
    length rx261_eos, rx261_tgt
    gt rx261_pos, rx261_eos, rx261_done
    set rx261_off, 0
    lt rx261_pos, 2, rx261_start
    sub rx261_off, rx261_pos, 1
    substr rx261_tgt, rx261_tgt, rx261_off
  rx261_start:
    eq $I10, 1, rx261_restart
    if_null rx261_debug, debug_406
    rx261_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_406:
    $I10 = self.'from'()
    ne $I10, -1, rxscan264_done
    goto rxscan264_scan
  rxscan264_loop:
    (rx261_pos) = rx261_cur."from"()
    inc rx261_pos
    rx261_cur."!cursor_from"(rx261_pos)
    ge rx261_pos, rx261_eos, rxscan264_done
  rxscan264_scan:
    set_addr $I10, rxscan264_loop
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  rxscan264_done:
.annotate 'line', 96
  # rx literal  "\\f"
    add $I11, rx261_pos, 2
    gt $I11, rx261_eos, rx261_fail
    sub $I11, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I11, 2
    ne $S10, "\\f", rx261_fail
    add rx261_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx261_cur."!cursor_pos"(rx261_pos)
    $P10 = rx261_cur."quotemod_check"("b")
    unless $P10, rx261_fail
  # rx pass
    rx261_cur."!cursor_pass"(rx261_pos, "quote_escape:sym<ff>")
    if_null rx261_debug, debug_407
    rx261_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx261_pos)
  debug_407:
    .return (rx261_cur)
  rx261_restart:
.annotate 'line', 42
    if_null rx261_debug, debug_408
    rx261_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_408:
  rx261_fail:
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    if_null rx261_debug, debug_409
    rx261_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_409:
    .return (rx261_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1303687815.225") :method
.annotate 'line', 42
    new $P263, "ResizablePMCArray"
    push $P263, "\\f"
    .return ($P263)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    .local pmc rx266_debug
    (rx266_cur, rx266_pos, rx266_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    gt rx266_pos, rx266_eos, rx266_done
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    eq $I10, 1, rx266_restart
    if_null rx266_debug, debug_410
    rx266_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_410:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    (rx266_pos) = rx266_cur."from"()
    inc rx266_pos
    rx266_cur."!cursor_from"(rx266_pos)
    ge rx266_pos, rx266_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan269_done:
.annotate 'line', 97
  # rx literal  "\\e"
    add $I11, rx266_pos, 2
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 2
    ne $S10, "\\e", rx266_fail
    add rx266_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."quotemod_check"("b")
    unless $P10, rx266_fail
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "quote_escape:sym<esc>")
    if_null rx266_debug, debug_411
    rx266_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx266_pos)
  debug_411:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 42
    if_null rx266_debug, debug_412
    rx266_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_412:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_413
    rx266_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_413:
    .return (rx266_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1303687815.225") :method
.annotate 'line', 42
    new $P268, "ResizablePMCArray"
    push $P268, "\\e"
    .return ($P268)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
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
    if_null rx271_debug, debug_414
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_414:
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
.annotate 'line', 99
  # rx literal  unicode:"\\x"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx271_fail
    add rx271_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."quotemod_check"("b")
    unless $P10, rx271_fail
  alt275_0:
.annotate 'line', 100
    set_addr $I10, alt275_1
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."hexint"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
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
  # rx subrule "hexints" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."hexints"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx271_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 93, rx271_fail
    add rx271_pos, 1
  alt275_end:
.annotate 'line', 98
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "quote_escape:sym<hex>")
    if_null rx271_debug, debug_415
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx271_pos)
  debug_415:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 42
    if_null rx271_debug, debug_416
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_416:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_417
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_417:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1303687815.225") :method
.annotate 'line', 42
    new $P273, "ResizablePMCArray"
    push $P273, unicode:"\\x"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
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
    if_null rx277_debug, debug_418
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_418:
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
.annotate 'line', 103
  # rx literal  "\\o"
    add $I11, rx277_pos, 2
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 2
    ne $S10, "\\o", rx277_fail
    add rx277_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."quotemod_check"("b")
    unless $P10, rx277_fail
  alt281_0:
.annotate 'line', 104
    set_addr $I10, alt281_1
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."octint"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx277_pos = $P10."pos"()
    goto alt281_end
  alt281_1:
  # rx literal  "["
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 91, rx277_fail
    add rx277_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."octints"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx277_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 93, rx277_fail
    add rx277_pos, 1
  alt281_end:
.annotate 'line', 102
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "quote_escape:sym<oct>")
    if_null rx277_debug, debug_419
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx277_pos)
  debug_419:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 42
    if_null rx277_debug, debug_420
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_420:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_421
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_421:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1303687815.225") :method
.annotate 'line', 42
    new $P279, "ResizablePMCArray"
    push $P279, "\\o"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    .local pmc rx283_debug
    (rx283_cur, rx283_pos, rx283_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx283_cur
    .local pmc match
    .lex "$/", match
    length rx283_eos, rx283_tgt
    gt rx283_pos, rx283_eos, rx283_done
    set rx283_off, 0
    lt rx283_pos, 2, rx283_start
    sub rx283_off, rx283_pos, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
    eq $I10, 1, rx283_restart
    if_null rx283_debug, debug_422
    rx283_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_422:
    $I10 = self.'from'()
    ne $I10, -1, rxscan286_done
    goto rxscan286_scan
  rxscan286_loop:
    (rx283_pos) = rx283_cur."from"()
    inc rx283_pos
    rx283_cur."!cursor_from"(rx283_pos)
    ge rx283_pos, rx283_eos, rxscan286_done
  rxscan286_scan:
    set_addr $I10, rxscan286_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan286_done:
.annotate 'line', 106
  # rx literal  "\\c"
    add $I11, rx283_pos, 2
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 2
    ne $S10, "\\c", rx283_fail
    add rx283_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."quotemod_check"("b")
    unless $P10, rx283_fail
  # rx subrule "charspec" subtype=capture negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."charspec"()
    unless $P10, rx283_fail
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx283_pos = $P10."pos"()
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "quote_escape:sym<chr>")
    if_null rx283_debug, debug_423
    rx283_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx283_pos)
  debug_423:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 42
    if_null rx283_debug, debug_424
    rx283_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_424:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_425
    rx283_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_425:
    .return (rx283_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1303687815.225") :method
.annotate 'line', 42
    new $P285, "ResizablePMCArray"
    push $P285, "\\c"
    .return ($P285)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
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
    if_null rx288_debug, debug_426
    rx288_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_426:
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
  # rx literal  "\\"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 92, rx288_fail
    add rx288_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_292_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx literal  "0"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 48, rx288_fail
    add rx288_pos, 1
    set_addr $I10, rxcap_292_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_292_done
  rxcap_292_fail:
    goto rx288_fail
  rxcap_292_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."quotemod_check"("b")
    unless $P10, rx288_fail
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "quote_escape:sym<0>")
    if_null rx288_debug, debug_427
    rx288_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx288_pos)
  debug_427:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 42
    if_null rx288_debug, debug_428
    rx288_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_428:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_429
    rx288_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_429:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1303687815.225") :method
.annotate 'line', 42
    new $P290, "ResizablePMCArray"
    push $P290, "\\0"
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .const 'Sub' $P313 = "97_1303687815.225" 
    capture_lex $P313
    .const 'Sub' $P306 = "96_1303687815.225" 
    capture_lex $P306
    .const 'Sub' $P301 = "95_1303687815.225" 
    capture_lex $P301
    .local string rx294_tgt
    .local int rx294_pos
    .local int rx294_off
    .local int rx294_eos
    .local int rx294_rep
    .local pmc rx294_cur
    .local pmc rx294_debug
    (rx294_cur, rx294_pos, rx294_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx294_cur
    .local pmc match
    .lex "$/", match
    length rx294_eos, rx294_tgt
    gt rx294_pos, rx294_eos, rx294_done
    set rx294_off, 0
    lt rx294_pos, 2, rx294_start
    sub rx294_off, rx294_pos, 1
    substr rx294_tgt, rx294_tgt, rx294_off
  rx294_start:
    eq $I10, 1, rx294_restart
    if_null rx294_debug, debug_430
    rx294_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan297_done
    goto rxscan297_scan
  rxscan297_loop:
    (rx294_pos) = rx294_cur."from"()
    inc rx294_pos
    rx294_cur."!cursor_from"(rx294_pos)
    ge rx294_pos, rx294_eos, rxscan297_done
  rxscan297_scan:
    set_addr $I10, rxscan297_loop
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  rxscan297_done:
.annotate 'line', 109
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P298, unicode:"$\x{a2}"
    $P299 = $P298."MATCH"()
    store_lex "$/", $P299
    .const 'Sub' $P301 = "95_1303687815.225" 
    capture_lex $P301
    $P302 = $P301()
  # rx literal  "\\"
    add $I11, rx294_pos, 1
    gt $I11, rx294_eos, rx294_fail
    sub $I11, rx294_pos, rx294_off
    ord $I11, rx294_tgt, $I11
    ne $I11, 92, rx294_fail
    add rx294_pos, 1
  alt303_0:
.annotate 'line', 110
    set_addr $I10, alt303_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 111
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    $P10 = rx294_cur."quotemod_check"("b")
    unless $P10, rx294_fail
  alt304_0:
.annotate 'line', 112
    set_addr $I10, alt304_1
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
.annotate 'line', 113
  # rx subrule $P306 subtype=capture negate=
    rx294_cur."!cursor_pos"(rx294_pos)
    .const 'Sub' $P306 = "96_1303687815.225" 
    capture_lex $P306
    $P10 = rx294_cur.$P306()
    unless $P10, rx294_fail
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx294_pos = $P10."pos"()
    goto alt304_end
  alt304_1:
.annotate 'line', 114
  # rx subcapture "x"
    set_addr $I10, rxcap_309_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass w
    ge rx294_pos, rx294_eos, rx294_fail
    sub $I10, rx294_pos, rx294_off
    is_cclass $I11, 8192, rx294_tgt, $I10
    unless $I11, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_309_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_309_done
  rxcap_309_fail:
    goto rx294_fail
  rxcap_309_done:
    rx294_cur."!cursor_pos"(rx294_pos)
    find_lex $P310, unicode:"$\x{a2}"
    $P311 = $P310."MATCH"()
    store_lex "$/", $P311
    .const 'Sub' $P313 = "97_1303687815.225" 
    capture_lex $P313
    $P323 = $P313()
  alt304_end:
.annotate 'line', 111
    goto alt303_end
  alt303_1:
.annotate 'line', 116
  # rx subcapture "textq"
    set_addr $I10, rxcap_324_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx charclass .
    ge rx294_pos, rx294_eos, rx294_fail
    inc rx294_pos
    set_addr $I10, rxcap_324_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_324_done
  rxcap_324_fail:
    goto rx294_fail
  rxcap_324_done:
  alt303_end:
.annotate 'line', 108
  # rx pass
    rx294_cur."!cursor_pass"(rx294_pos, "quote_escape:sym<misc>")
    if_null rx294_debug, debug_438
    rx294_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx294_pos)
  debug_438:
    .return (rx294_cur)
  rx294_restart:
.annotate 'line', 42
    if_null rx294_debug, debug_439
    rx294_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_439:
  rx294_fail:
    (rx294_rep, rx294_pos, $I10, $P10) = rx294_cur."!mark_fail"(0)
    lt rx294_pos, -1, rx294_done
    eq rx294_pos, -1, rx294_fail
    jump $I10
  rx294_done:
    rx294_cur."!cursor_fail"()
    if_null rx294_debug, debug_440
    rx294_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_440:
    .return (rx294_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1303687815.225") :method
.annotate 'line', 42
    new $P296, "ResizablePMCArray"
    push $P296, ""
    .return ($P296)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block300"  :anon :subid("95_1303687815.225") :outer("93_1303687815.225")
.annotate 'line', 109
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block305"  :anon :subid("96_1303687815.225") :method :outer("93_1303687815.225")
.annotate 'line', 113
    .local string rx307_tgt
    .local int rx307_pos
    .local int rx307_off
    .local int rx307_eos
    .local int rx307_rep
    .local pmc rx307_cur
    .local pmc rx307_debug
    (rx307_cur, rx307_pos, rx307_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx307_cur
    .local pmc match
    .lex "$/", match
    length rx307_eos, rx307_tgt
    gt rx307_pos, rx307_eos, rx307_done
    set rx307_off, 0
    lt rx307_pos, 2, rx307_start
    sub rx307_off, rx307_pos, 1
    substr rx307_tgt, rx307_tgt, rx307_off
  rx307_start:
    eq $I10, 1, rx307_restart
    if_null rx307_debug, debug_431
    rx307_cur."!cursor_debug"("START", "")
  debug_431:
    $I10 = self.'from'()
    ne $I10, -1, rxscan308_done
    goto rxscan308_scan
  rxscan308_loop:
    (rx307_pos) = rx307_cur."from"()
    inc rx307_pos
    rx307_cur."!cursor_from"(rx307_pos)
    ge rx307_pos, rx307_eos, rxscan308_done
  rxscan308_scan:
    set_addr $I10, rxscan308_loop
    rx307_cur."!mark_push"(0, rx307_pos, $I10)
  rxscan308_done:
  # rx charclass W
    ge rx307_pos, rx307_eos, rx307_fail
    sub $I10, rx307_pos, rx307_off
    is_cclass $I11, 8192, rx307_tgt, $I10
    if $I11, rx307_fail
    inc rx307_pos
  # rx pass
    rx307_cur."!cursor_pass"(rx307_pos, "")
    if_null rx307_debug, debug_432
    rx307_cur."!cursor_debug"("PASS", "", " at pos=", rx307_pos)
  debug_432:
    .return (rx307_cur)
  rx307_restart:
    if_null rx307_debug, debug_433
    rx307_cur."!cursor_debug"("NEXT", "")
  debug_433:
  rx307_fail:
    (rx307_rep, rx307_pos, $I10, $P10) = rx307_cur."!mark_fail"(0)
    lt rx307_pos, -1, rx307_done
    eq rx307_pos, -1, rx307_fail
    jump $I10
  rx307_done:
    rx307_cur."!cursor_fail"()
    if_null rx307_debug, debug_434
    rx307_cur."!cursor_debug"("FAIL", "")
  debug_434:
    .return (rx307_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block312"  :anon :subid("97_1303687815.225") :outer("93_1303687815.225")
.annotate 'line', 114
    find_lex $P314, "$/"
    unless_null $P314, vivify_435
    new $P314, "Undef"
  vivify_435:
    $P315 = $P314."CURSOR"()
    new $P316, "String"
    assign $P316, "Unrecognized backslash sequence: '\\"
    find_lex $P317, "$/"
    unless_null $P317, vivify_436
    $P317 = root_new ['parrot';'Hash']
  vivify_436:
    set $P318, $P317["x"]
    unless_null $P318, vivify_437
    new $P318, "Undef"
  vivify_437:
    $S319 = $P318."Str"()
    concat $P320, $P316, $S319
    concat $P321, $P320, "'"
    $P322 = $P315."panic"($P321)
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .const 'Sub' $P335 = "100_1303687815.225" 
    capture_lex $P335
    .local string rx326_tgt
    .local int rx326_pos
    .local int rx326_off
    .local int rx326_eos
    .local int rx326_rep
    .local pmc rx326_cur
    .local pmc rx326_debug
    (rx326_cur, rx326_pos, rx326_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx326_cur
    .local pmc match
    .lex "$/", match
    length rx326_eos, rx326_tgt
    gt rx326_pos, rx326_eos, rx326_done
    set rx326_off, 0
    lt rx326_pos, 2, rx326_start
    sub rx326_off, rx326_pos, 1
    substr rx326_tgt, rx326_tgt, rx326_off
  rx326_start:
    eq $I10, 1, rx326_restart
    if_null rx326_debug, debug_441
    rx326_cur."!cursor_debug"("START", "charname")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan330_done
    goto rxscan330_scan
  rxscan330_loop:
    (rx326_pos) = rx326_cur."from"()
    inc rx326_pos
    rx326_cur."!cursor_from"(rx326_pos)
    ge rx326_pos, rx326_eos, rxscan330_done
  rxscan330_scan:
    set_addr $I10, rxscan330_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
  rxscan330_done:
  alt331_0:
.annotate 'line', 120
    set_addr $I10, alt331_1
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
.annotate 'line', 121
  # rx subrule "integer" subtype=capture negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    $P10 = rx326_cur."integer"()
    unless $P10, rx326_fail
    rx326_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx326_pos = $P10."pos"()
    goto alt331_end
  alt331_1:
.annotate 'line', 122
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
  # rx rxquantf332 ** 0..*
    set_addr $I10, rxquantf332_loop
    rx326_cur."!mark_push"(0, rx326_pos, $I10)
    goto rxquantf332_done
  rxquantf332_loop:
  # rx enumcharlist negate=1 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx326_fail
    inc rx326_pos
    set_addr $I10, rxquantf332_loop
    rx326_cur."!mark_push"(rx326_rep, rx326_pos, $I10)
  rxquantf332_done:
  # rx enumcharlist negate=0 
    ge rx326_pos, rx326_eos, rx326_fail
    sub $I10, rx326_pos, rx326_off
    substr $S10, rx326_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx326_fail
    inc rx326_pos
.annotate 'line', 123
  # rx subrule "before" subtype=zerowidth negate=
    rx326_cur."!cursor_pos"(rx326_pos)
    .const 'Sub' $P335 = "100_1303687815.225" 
    capture_lex $P335
    $P10 = rx326_cur."before"($P335)
    unless $P10, rx326_fail
  alt331_end:
.annotate 'line', 120
  # rx pass
    rx326_cur."!cursor_pass"(rx326_pos, "charname")
    if_null rx326_debug, debug_446
    rx326_cur."!cursor_debug"("PASS", "charname", " at pos=", rx326_pos)
  debug_446:
    .return (rx326_cur)
  rx326_restart:
.annotate 'line', 42
    if_null rx326_debug, debug_447
    rx326_cur."!cursor_debug"("NEXT", "charname")
  debug_447:
  rx326_fail:
    (rx326_rep, rx326_pos, $I10, $P10) = rx326_cur."!mark_fail"(0)
    lt rx326_pos, -1, rx326_done
    eq rx326_pos, -1, rx326_fail
    jump $I10
  rx326_done:
    rx326_cur."!cursor_fail"()
    if_null rx326_debug, debug_448
    rx326_cur."!cursor_debug"("FAIL", "charname")
  debug_448:
    .return (rx326_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1303687815.225") :method
.annotate 'line', 42
    $P328 = self."!PREFIX__!subrule"("integer", "")
    new $P329, "ResizablePMCArray"
    push $P329, "Z"
    push $P329, "Y"
    push $P329, "X"
    push $P329, "W"
    push $P329, "V"
    push $P329, "U"
    push $P329, "T"
    push $P329, "S"
    push $P329, "R"
    push $P329, "Q"
    push $P329, "P"
    push $P329, "O"
    push $P329, "N"
    push $P329, "M"
    push $P329, "L"
    push $P329, "K"
    push $P329, "J"
    push $P329, "I"
    push $P329, "H"
    push $P329, "G"
    push $P329, "F"
    push $P329, "E"
    push $P329, "D"
    push $P329, "C"
    push $P329, "B"
    push $P329, "A"
    push $P329, "z"
    push $P329, "y"
    push $P329, "x"
    push $P329, "w"
    push $P329, "v"
    push $P329, "u"
    push $P329, "t"
    push $P329, "s"
    push $P329, "r"
    push $P329, "q"
    push $P329, "p"
    push $P329, "o"
    push $P329, "n"
    push $P329, "m"
    push $P329, "l"
    push $P329, "k"
    push $P329, "j"
    push $P329, "i"
    push $P329, "h"
    push $P329, "g"
    push $P329, "f"
    push $P329, "e"
    push $P329, "d"
    push $P329, "c"
    push $P329, "b"
    push $P329, "a"
    push $P329, $P328
    .return ($P329)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block334"  :anon :subid("100_1303687815.225") :method :outer("98_1303687815.225")
.annotate 'line', 123
    .local string rx336_tgt
    .local int rx336_pos
    .local int rx336_off
    .local int rx336_eos
    .local int rx336_rep
    .local pmc rx336_cur
    .local pmc rx336_debug
    (rx336_cur, rx336_pos, rx336_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx336_cur
    .local pmc match
    .lex "$/", match
    length rx336_eos, rx336_tgt
    gt rx336_pos, rx336_eos, rx336_done
    set rx336_off, 0
    lt rx336_pos, 2, rx336_start
    sub rx336_off, rx336_pos, 1
    substr rx336_tgt, rx336_tgt, rx336_off
  rx336_start:
    eq $I10, 1, rx336_restart
    if_null rx336_debug, debug_442
    rx336_cur."!cursor_debug"("START", "")
  debug_442:
    $I10 = self.'from'()
    ne $I10, -1, rxscan337_done
    goto rxscan337_scan
  rxscan337_loop:
    (rx336_pos) = rx336_cur."from"()
    inc rx336_pos
    rx336_cur."!cursor_from"(rx336_pos)
    ge rx336_pos, rx336_eos, rxscan337_done
  rxscan337_scan:
    set_addr $I10, rxscan337_loop
    rx336_cur."!mark_push"(0, rx336_pos, $I10)
  rxscan337_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx336_pos, rx336_off
    find_not_cclass $I11, 32, rx336_tgt, $I10, rx336_eos
    add rx336_pos, rx336_off, $I11
  # rx enumcharlist negate=0 
    ge rx336_pos, rx336_eos, rx336_fail
    sub $I10, rx336_pos, rx336_off
    substr $S10, rx336_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx336_fail
    inc rx336_pos
  # rx pass
    rx336_cur."!cursor_pass"(rx336_pos, "")
    if_null rx336_debug, debug_443
    rx336_cur."!cursor_debug"("PASS", "", " at pos=", rx336_pos)
  debug_443:
    .return (rx336_cur)
  rx336_restart:
    if_null rx336_debug, debug_444
    rx336_cur."!cursor_debug"("NEXT", "")
  debug_444:
  rx336_fail:
    (rx336_rep, rx336_pos, $I10, $P10) = rx336_cur."!mark_fail"(0)
    lt rx336_pos, -1, rx336_done
    eq rx336_pos, -1, rx336_fail
    jump $I10
  rx336_done:
    rx336_cur."!cursor_fail"()
    if_null rx336_debug, debug_445
    rx336_cur."!cursor_debug"("FAIL", "")
  debug_445:
    .return (rx336_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    rx339_cur."!cursor_caparray"("charname")
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
    if_null rx339_debug, debug_449
    rx339_cur."!cursor_debug"("START", "charnames")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan342_done
    goto rxscan342_scan
  rxscan342_loop:
    (rx339_pos) = rx339_cur."from"()
    inc rx339_pos
    rx339_cur."!cursor_from"(rx339_pos)
    ge rx339_pos, rx339_eos, rxscan342_done
  rxscan342_scan:
    set_addr $I10, rxscan342_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan342_done:
.annotate 'line', 125
  # rx rxquantr343 ** 1..*
    set_addr $I10, rxquantr343_done
    rx339_cur."!mark_push"(0, -1, $I10)
  rxquantr343_loop:
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."charname"()
    unless $P10, rx339_fail
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx339_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."ws"()
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
    set_addr $I10, rxquantr343_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr343_done
    rx339_cur."!mark_push"(rx339_rep, rx339_pos, $I10)
  # rx literal  ","
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 44, rx339_fail
    add rx339_pos, 1
    goto rxquantr343_loop
  rxquantr343_done:
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "charnames")
    if_null rx339_debug, debug_450
    rx339_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx339_pos)
  debug_450:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 42
    if_null rx339_debug, debug_451
    rx339_cur."!cursor_debug"("NEXT", "charnames")
  debug_451:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_452
    rx339_cur."!cursor_debug"("FAIL", "charnames")
  debug_452:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1303687815.225") :method
.annotate 'line', 42
    new $P341, "ResizablePMCArray"
    push $P341, ""
    .return ($P341)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1303687815.225") :method :outer("11_1303687815.225")
.annotate 'line', 42
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    .local pmc rx345_debug
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx345_cur
    .local pmc match
    .lex "$/", match
    length rx345_eos, rx345_tgt
    gt rx345_pos, rx345_eos, rx345_done
    set rx345_off, 0
    lt rx345_pos, 2, rx345_start
    sub rx345_off, rx345_pos, 1
    substr rx345_tgt, rx345_tgt, rx345_off
  rx345_start:
    eq $I10, 1, rx345_restart
    if_null rx345_debug, debug_453
    rx345_cur."!cursor_debug"("START", "charspec")
  debug_453:
    $I10 = self.'from'()
    ne $I10, -1, rxscan350_done
    goto rxscan350_scan
  rxscan350_loop:
    (rx345_pos) = rx345_cur."from"()
    inc rx345_pos
    rx345_cur."!cursor_from"(rx345_pos)
    ge rx345_pos, rx345_eos, rxscan350_done
  rxscan350_scan:
    set_addr $I10, rxscan350_loop
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxscan350_done:
  alt351_0:
.annotate 'line', 127
    set_addr $I10, alt351_1
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 128
  # rx literal  "["
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 91, rx345_fail
    add rx345_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."charnames"()
    unless $P10, rx345_fail
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx345_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 93, rx345_fail
    add rx345_pos, 1
    goto alt351_end
  alt351_1:
    set_addr $I10, alt351_2
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 129
  # rx charclass_q d r 1..-1
    sub $I10, rx345_pos, rx345_off
    find_not_cclass $I11, 8, rx345_tgt, $I10, rx345_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx345_fail
    add rx345_pos, rx345_off, $I11
  # rx rxquantr352 ** 0..*
    set_addr $I10, rxquantr352_done
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  rxquantr352_loop:
  # rx literal  "_"
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    ord $I11, rx345_tgt, $I11
    ne $I11, 95, rx345_fail
    add rx345_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx345_pos, rx345_off
    find_not_cclass $I11, 8, rx345_tgt, $I10, rx345_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx345_fail
    add rx345_pos, rx345_off, $I11
    set_addr $I10, rxquantr352_done
    (rx345_rep) = rx345_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr352_done
    rx345_cur."!mark_push"(rx345_rep, rx345_pos, $I10)
    goto rxquantr352_loop
  rxquantr352_done:
    goto alt351_end
  alt351_2:
    set_addr $I10, alt351_3
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
.annotate 'line', 130
  # rx enumcharlist negate=0 
    ge rx345_pos, rx345_eos, rx345_fail
    sub $I10, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx345_fail
    inc rx345_pos
    goto alt351_end
  alt351_3:
.annotate 'line', 131
  # rx subrule "panic" subtype=method negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."panic"("Unrecognized \\c character")
    unless $P10, rx345_fail
    rx345_pos = $P10."pos"()
  alt351_end:
.annotate 'line', 126
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "charspec")
    if_null rx345_debug, debug_454
    rx345_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx345_pos)
  debug_454:
    .return (rx345_cur)
  rx345_restart:
.annotate 'line', 42
    if_null rx345_debug, debug_455
    rx345_cur."!cursor_debug"("NEXT", "charspec")
  debug_455:
  rx345_fail:
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    if_null rx345_debug, debug_456
    rx345_cur."!cursor_debug"("FAIL", "charspec")
  debug_456:
    .return (rx345_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1303687815.225") :method
.annotate 'line', 42
    $P347 = self."!PREFIX__!subrule"("panic", "")
    $P348 = self."!PREFIX__!subrule"("charnames", "[")
    new $P349, "ResizablePMCArray"
    push $P349, $P347
    push $P349, "Z"
    push $P349, "Y"
    push $P349, "X"
    push $P349, "W"
    push $P349, "V"
    push $P349, "U"
    push $P349, "T"
    push $P349, "S"
    push $P349, "R"
    push $P349, "Q"
    push $P349, "P"
    push $P349, "O"
    push $P349, "N"
    push $P349, "M"
    push $P349, "L"
    push $P349, "K"
    push $P349, "J"
    push $P349, "I"
    push $P349, "H"
    push $P349, "G"
    push $P349, "F"
    push $P349, "E"
    push $P349, "D"
    push $P349, "C"
    push $P349, "B"
    push $P349, "A"
    push $P349, "@"
    push $P349, "?"
    push $P349, ""
    push $P349, $P348
    .return ($P349)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_354
    .param pmc param_355
    .param pmc param_356 :optional
    .param int has_param_356 :opt_flag
.annotate 'line', 177
    .lex "self", param_354
    .lex "$spec", param_355
    if has_param_356, optparam_457
    new $P357, "Undef"
    set param_356, $P357
  optparam_457:
    .lex "$save", param_356
.annotate 'line', 178

            .include 'cclass.pasm'
            
            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
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
        
.annotate 'line', 177
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic"  :subid("106_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_359
    .param pmc param_360 :slurpy
.annotate 'line', 325
    .lex "self", param_359
    .lex "@args", param_360
.annotate 'line', 326
    new $P361, "Undef"
    .lex "$pos", $P361
.annotate 'line', 327
    new $P362, "Undef"
    .lex "$target", $P362
.annotate 'line', 326
    find_lex $P363, "self"
    $P364 = $P363."pos"()
    store_lex "$pos", $P364
.annotate 'line', 327
    find_lex $P365, "self"
    get_hll_global $P366, ["Regex"], "Cursor"
    getattribute $P367, $P365, $P366, "$!target"
    store_lex "$target", $P367
.annotate 'line', 328
    find_lex $P368, "@args"
    unless_null $P368, vivify_458
    $P368 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
    $P368."push"(" at line ")
.annotate 'line', 329
    find_lex $P369, "@args"
    unless_null $P369, vivify_459
    $P369 = root_new ['parrot';'ResizablePMCArray']
  vivify_459:
    get_hll_global $P370, ["HLL"], "Compiler"
    find_lex $P371, "$target"
    unless_null $P371, vivify_460
    new $P371, "Undef"
  vivify_460:
    find_lex $P372, "$pos"
    unless_null $P372, vivify_461
    new $P372, "Undef"
  vivify_461:
    $P373 = $P370."lineof"($P371, $P372)
    add $P374, $P373, 1
    $P369."push"($P374)
.annotate 'line', 330
    find_lex $P375, "@args"
    unless_null $P375, vivify_462
    $P375 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    $P375."push"(", near \"")
.annotate 'line', 331
    find_lex $P376, "@args"
    unless_null $P376, vivify_463
    $P376 = root_new ['parrot';'ResizablePMCArray']
  vivify_463:
    find_lex $P377, "$target"
    unless_null $P377, vivify_464
    new $P377, "Undef"
  vivify_464:
    set $S378, $P377
    find_lex $P379, "$pos"
    unless_null $P379, vivify_465
    new $P379, "Undef"
  vivify_465:
    set $I380, $P379
    substr $S381, $S378, $I380, 10
    escape $S382, $S381
    $P376."push"($S382)
.annotate 'line', 332
    find_lex $P383, "@args"
    unless_null $P383, vivify_466
    $P383 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    $P383."push"("\"")
.annotate 'line', 333
    find_lex $P384, "@args"
    unless_null $P384, vivify_467
    $P384 = root_new ['parrot';'ResizablePMCArray']
  vivify_467:
    join $S385, "", $P384
    die $S385
.annotate 'line', 325
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_387
    .param pmc param_388
    .param pmc param_389
.annotate 'line', 346
    .lex "self", param_387
    .lex "$target", param_388
    .lex "$pos", param_389
.annotate 'line', 347

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
        
.annotate 'line', 346
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR"  :subid("108_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_391
    .param pmc param_392 :slurpy
.annotate 'line', 408
    .lex "self", param_391
    .lex "@args", param_392
.annotate 'line', 409

            .include 'src/Regex/constants.pir'
            
            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
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
        
.annotate 'line', 408
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check" :nsentry :subid("109_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_394
    .param pmc param_395
.annotate 'line', 479
    .lex "self", param_394
    .lex "$mod", param_395
    find_lex $P396, "$mod"
    unless_null $P396, vivify_468
    new $P396, "Undef"
  vivify_468:
    find_dynamic_lex $P397, "%*QUOTEMOD"
    unless_null $P397, vivify_469
    get_hll_global $P397, "%QUOTEMOD"
    unless_null $P397, vivify_470
    die "Contextual %*QUOTEMOD not found"
  vivify_470:
  vivify_469:
    set $P398, $P397[$P396]
    unless_null $P398, vivify_471
    new $P398, "Undef"
  vivify_471:
    .return ($P398)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_400
.annotate 'line', 483
    .lex "self", param_400
.annotate 'line', 484

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
        
.annotate 'line', 483
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper"  :subid("111_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_402
.annotate 'line', 506
    .lex "self", param_402
.annotate 'line', 507

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
        
.annotate 'line', 506
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words" :nsentry :subid("112_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_404
    .param pmc param_405
.annotate 'line', 529
    .lex "self", param_404
    .lex "$words", param_405
.annotate 'line', 530

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
        
.annotate 'line', 529
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR"  :subid("113_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_407
    .param pmc param_408 :optional
    .param int has_param_408 :opt_flag
.annotate 'line', 561
    .lex "self", param_407
    if has_param_408, optparam_472
    new $P409, "String"
    assign $P409, ""
    set param_408, $P409
  optparam_472:
    .lex "$preclim", param_408
.annotate 'line', 562

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

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
        
.annotate 'line', 561
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce"  :subid("114_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_411
    .param pmc param_412
    .param pmc param_413
.annotate 'line', 739
    .lex "self", param_411
    .lex "$termstack", param_412
    .lex "$opstack", param_413
.annotate 'line', 740

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
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
            $P0 = opOPER['sym']
            sym = $P0
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            $S0 = $P0
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
        
.annotate 'line', 739
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary"  :subid("115_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_415
    .param pmc param_416
.annotate 'line', 811
    .lex "self", param_415
    .lex "$match", param_416
.annotate 'line', 812
    find_lex $P417, "$match"
    unless_null $P417, vivify_473
    $P417 = root_new ['parrot';'ResizablePMCArray']
  vivify_473:
    set $P418, $P417[1]
    unless_null $P418, vivify_474
    new $P418, "Undef"
  vivify_474:
    find_lex $P419, "$match"
    unless_null $P419, vivify_475
    $P419 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P419
  vivify_475:
    set $P419[2], $P418
.annotate 'line', 813
    find_lex $P420, "$match"
    unless_null $P420, vivify_476
    $P420 = root_new ['parrot';'Hash']
  vivify_476:
    set $P421, $P420["infix"]
    unless_null $P421, vivify_477
    $P421 = root_new ['parrot';'Hash']
  vivify_477:
    set $P422, $P421["EXPR"]
    unless_null $P422, vivify_478
    new $P422, "Undef"
  vivify_478:
    find_lex $P423, "$match"
    unless_null $P423, vivify_479
    $P423 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P423
  vivify_479:
    set $P423[1], $P422
.annotate 'line', 811
    .return ($P422)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_425
    .param pmc param_426
.annotate 'line', 816
    .lex "self", param_425
    .lex "$markname", param_426
.annotate 'line', 817
    new $P427, "Undef"
    .lex "$pos", $P427
.annotate 'line', 819
    $P428 = root_new ['parrot';'Hash']
    .lex "%markhash", $P428
.annotate 'line', 817
    find_lex $P429, "self"
    $P430 = $P429."pos"()
    store_lex "$pos", $P430
.annotate 'line', 818
    find_lex $P431, "self"
    find_lex $P432, "$markname"
    unless_null $P432, vivify_480
    new $P432, "Undef"
  vivify_480:
    find_lex $P433, "$pos"
    unless_null $P433, vivify_481
    new $P433, "Undef"
  vivify_481:
    $P431."!cursor_debug"("START", "MARKER name=", $P432, ", pos=", $P433)
.annotate 'line', 819

            $P434 = get_global '%!MARKHASH'
            unless null $P434 goto have_markhash
            $P434 = new ['Hash']
            set_global '%!MARKHASH', $P434
          have_markhash:
        
    store_lex "%markhash", $P434
.annotate 'line', 826
    find_lex $P435, "$pos"
    unless_null $P435, vivify_482
    new $P435, "Undef"
  vivify_482:
    find_lex $P436, "$markname"
    unless_null $P436, vivify_483
    new $P436, "Undef"
  vivify_483:
    find_lex $P437, "%markhash"
    unless_null $P437, vivify_484
    $P437 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P437
  vivify_484:
    set $P437[$P436], $P435
.annotate 'line', 827
    find_lex $P438, "self"
    $P438."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 816
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_440
    .param pmc param_441
.annotate 'line', 831
    .lex "self", param_440
    .lex "$markname", param_441
.annotate 'line', 832
    find_lex $P442, "self"
    find_lex $P443, "$markname"
    unless_null $P443, vivify_485
    new $P443, "Undef"
  vivify_485:
    $P442."!cursor_debug"("START", "MARKED name=", $P443)
.annotate 'line', 833

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
        
.annotate 'line', 831
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG"  :subid("118_1303687815.225") :outer("11_1303687815.225")
    .param pmc param_445
    .param pmc param_446
    .param pmc param_447
.annotate 'line', 851
    .lex "self", param_445
    .lex "$lang", param_446
    .lex "$regex", param_447
.annotate 'line', 852
    new $P448, "Undef"
    .lex "$lang_cursor", $P448
.annotate 'line', 853
    new $P449, "Undef"
    .lex "$*ACTIONS", $P449
.annotate 'line', 854
    new $P450, "Undef"
    .lex "$cur", $P450
.annotate 'line', 852
    find_lex $P451, "$lang"
    unless_null $P451, vivify_486
    new $P451, "Undef"
  vivify_486:
    find_dynamic_lex $P452, "%*LANG"
    unless_null $P452, vivify_487
    get_hll_global $P452, "%LANG"
    unless_null $P452, vivify_488
    die "Contextual %*LANG not found"
  vivify_488:
  vivify_487:
    set $P453, $P452[$P451]
    unless_null $P453, vivify_489
    new $P453, "Undef"
  vivify_489:
    store_lex "$lang_cursor", $P453
.annotate 'line', 853
    find_lex $P454, "$lang"
    unless_null $P454, vivify_490
    new $P454, "Undef"
  vivify_490:
    concat $P455, $P454, "-actions"
    find_dynamic_lex $P456, "%*LANG"
    unless_null $P456, vivify_491
    get_hll_global $P456, "%LANG"
    unless_null $P456, vivify_492
    die "Contextual %*LANG not found"
  vivify_492:
  vivify_491:
    set $P457, $P456[$P455]
    unless_null $P457, vivify_493
    new $P457, "Undef"
  vivify_493:
    store_lex "$*ACTIONS", $P457
.annotate 'line', 854

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P458, pos) = self.'!cursor_start'($P0)
            $P458.'!cursor_pos'(pos)
        
    store_lex "$cur", $P458
.annotate 'line', 862
    find_lex $P459, "$cur"
    unless_null $P459, vivify_494
    new $P459, "Undef"
  vivify_494:
    find_lex $P460, "$regex"
    unless_null $P460, vivify_495
    new $P460, "Undef"
  vivify_495:
    set $S461, $P460
    $P462 = $P459.$S461()
.annotate 'line', 851
    .return ($P462)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block677"  :subid("120_1303687815.225") :outer("10_1303687815.225")
.annotate 'line', 867
    .const 'Sub' $P1334 = "166_1303687815.225" 
    capture_lex $P1334
    .const 'Sub' $P1315 = "165_1303687815.225" 
    capture_lex $P1315
    .const 'Sub' $P1292 = "163_1303687815.225" 
    capture_lex $P1292
    .const 'Sub' $P1264 = "162_1303687815.225" 
    capture_lex $P1264
    .const 'Sub' $P1247 = "161_1303687815.225" 
    capture_lex $P1247
    .const 'Sub' $P1242 = "160_1303687815.225" 
    capture_lex $P1242
    .const 'Sub' $P1234 = "159_1303687815.225" 
    capture_lex $P1234
    .const 'Sub' $P1219 = "158_1303687815.225" 
    capture_lex $P1219
    .const 'Sub' $P1204 = "157_1303687815.225" 
    capture_lex $P1204
    .const 'Sub' $P1199 = "156_1303687815.225" 
    capture_lex $P1199
    .const 'Sub' $P1194 = "155_1303687815.225" 
    capture_lex $P1194
    .const 'Sub' $P1189 = "154_1303687815.225" 
    capture_lex $P1189
    .const 'Sub' $P1184 = "153_1303687815.225" 
    capture_lex $P1184
    .const 'Sub' $P1179 = "152_1303687815.225" 
    capture_lex $P1179
    .const 'Sub' $P1174 = "151_1303687815.225" 
    capture_lex $P1174
    .const 'Sub' $P1166 = "150_1303687815.225" 
    capture_lex $P1166
    .const 'Sub' $P1161 = "149_1303687815.225" 
    capture_lex $P1161
    .const 'Sub' $P1147 = "148_1303687815.225" 
    capture_lex $P1147
    .const 'Sub' $P1074 = "146_1303687815.225" 
    capture_lex $P1074
    .const 'Sub' $P1013 = "143_1303687815.225" 
    capture_lex $P1013
    .const 'Sub' $P1006 = "142_1303687815.225" 
    capture_lex $P1006
    .const 'Sub' $P999 = "141_1303687815.225" 
    capture_lex $P999
    .const 'Sub' $P992 = "140_1303687815.225" 
    capture_lex $P992
    .const 'Sub' $P985 = "139_1303687815.225" 
    capture_lex $P985
    .const 'Sub' $P978 = "138_1303687815.225" 
    capture_lex $P978
    .const 'Sub' $P970 = "137_1303687815.225" 
    capture_lex $P970
    .const 'Sub' $P962 = "136_1303687815.225" 
    capture_lex $P962
    .const 'Sub' $P956 = "135_1303687815.225" 
    capture_lex $P956
    .const 'Sub' $P948 = "134_1303687815.225" 
    capture_lex $P948
    .const 'Sub' $P940 = "133_1303687815.225" 
    capture_lex $P940
    .const 'Sub' $P835 = "130_1303687815.225" 
    capture_lex $P835
    .const 'Sub' $P797 = "127_1303687815.225" 
    capture_lex $P797
    .const 'Sub' $P792 = "126_1303687815.225" 
    capture_lex $P792
    .const 'Sub' $P752 = "123_1303687815.225" 
    capture_lex $P752
    .const 'Sub' $P679 = "121_1303687815.225" 
    capture_lex $P679
.annotate 'line', 868
    .const 'Sub' $P679 = "121_1303687815.225" 
    newclosure $P747, $P679
    .lex "string_to_int", $P747
.annotate 'line', 867
    find_lex $P748, "string_to_int"
    find_lex $P749, "$?PACKAGE"
    get_who $P750, $P749
    set $P750["string_to_int"], $P748
    find_lex $P751, "string_to_int"
    set_global "string_to_int", $P751
.annotate 'line', 887
    .const 'Sub' $P752 = "123_1303687815.225" 
    newclosure $P783, $P752
    .lex "ints_to_string", $P783
.annotate 'line', 867
    find_lex $P784, "ints_to_string"
    find_lex $P785, "$?PACKAGE"
    get_who $P786, $P785
    set $P786["ints_to_string"], $P784
    find_lex $P787, "ints_to_string"
    set_global "ints_to_string", $P787
    .lex "$?PACKAGE", $P788
    .lex "$?CLASS", $P789
    find_lex $P790, "string_to_int"
    find_lex $P791, "ints_to_string"
.annotate 'line', 1058
    .const 'Sub' $P1315 = "165_1303687815.225" 
    newclosure $P1330, $P1315
.annotate 'line', 867
    .return ($P1330)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post496") :outer("120_1303687815.225")
.annotate 'line', 867
    .const 'Sub' $P678 = "120_1303687815.225" 
    .local pmc block
    set block, $P678
    .const 'Sub' $P1331 = "121_1303687815.225" 
    set_global "string_to_int", $P1331
    .const 'Sub' $P1332 = "123_1303687815.225" 
    set_global "ints_to_string", $P1332
    .const 'Sub' $P1334 = "166_1303687815.225" 
    capture_lex $P1334
    $P1334()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1333"  :anon :subid("166_1303687815.225") :outer("120_1303687815.225")
.annotate 'line', 867
    nqp_get_sc_object $P1335, "1303687806.753", 2
    .local pmc type_obj
    set type_obj, $P1335
    get_how $P1336, type_obj
    .const 'Sub' $P1337 = "126_1303687815.225" 
    $P1336."add_method"(type_obj, "CTXSAVE", $P1337)
    get_how $P1338, type_obj
    .const 'Sub' $P1339 = "127_1303687815.225" 
    $P1338."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P1339)
    get_how $P1340, type_obj
    .const 'Sub' $P1341 = "130_1303687815.225" 
    $P1340."add_method"(type_obj, "EXPR", $P1341)
    get_how $P1342, type_obj
    .const 'Sub' $P1343 = "133_1303687815.225" 
    $P1342."add_method"(type_obj, "term:sym<circumfix>", $P1343)
    get_how $P1344, type_obj
    .const 'Sub' $P1345 = "134_1303687815.225" 
    $P1344."add_method"(type_obj, "termish", $P1345)
    get_how $P1346, type_obj
    .const 'Sub' $P1347 = "135_1303687815.225" 
    $P1346."add_method"(type_obj, "nullterm", $P1347)
    get_how $P1348, type_obj
    .const 'Sub' $P1349 = "136_1303687815.225" 
    $P1348."add_method"(type_obj, "nullterm_alt", $P1349)
    get_how $P1350, type_obj
    .const 'Sub' $P1351 = "137_1303687815.225" 
    $P1350."add_method"(type_obj, "integer", $P1351)
    get_how $P1352, type_obj
    .const 'Sub' $P1353 = "138_1303687815.225" 
    $P1352."add_method"(type_obj, "dec_number", $P1353)
    get_how $P1354, type_obj
    .const 'Sub' $P1355 = "139_1303687815.225" 
    $P1354."add_method"(type_obj, "decint", $P1355)
    get_how $P1356, type_obj
    .const 'Sub' $P1357 = "140_1303687815.225" 
    $P1356."add_method"(type_obj, "hexint", $P1357)
    get_how $P1358, type_obj
    .const 'Sub' $P1359 = "141_1303687815.225" 
    $P1358."add_method"(type_obj, "octint", $P1359)
    get_how $P1360, type_obj
    .const 'Sub' $P1361 = "142_1303687815.225" 
    $P1360."add_method"(type_obj, "binint", $P1361)
    get_how $P1362, type_obj
    .const 'Sub' $P1363 = "143_1303687815.225" 
    $P1362."add_method"(type_obj, "quote_EXPR", $P1363)
    get_how $P1364, type_obj
    .const 'Sub' $P1365 = "146_1303687815.225" 
    $P1364."add_method"(type_obj, "quote_delimited", $P1365)
    get_how $P1366, type_obj
    .const 'Sub' $P1367 = "148_1303687815.225" 
    $P1366."add_method"(type_obj, "quote_atom", $P1367)
    get_how $P1368, type_obj
    .const 'Sub' $P1369 = "149_1303687815.225" 
    $P1368."add_method"(type_obj, "quote_escape:sym<backslash>", $P1369)
    get_how $P1370, type_obj
    .const 'Sub' $P1371 = "150_1303687815.225" 
    $P1370."add_method"(type_obj, "quote_escape:sym<stopper>", $P1371)
    get_how $P1372, type_obj
    .const 'Sub' $P1373 = "151_1303687815.225" 
    $P1372."add_method"(type_obj, "quote_escape:sym<bs>", $P1373)
    get_how $P1374, type_obj
    .const 'Sub' $P1375 = "152_1303687815.225" 
    $P1374."add_method"(type_obj, "quote_escape:sym<nl>", $P1375)
    get_how $P1376, type_obj
    .const 'Sub' $P1377 = "153_1303687815.225" 
    $P1376."add_method"(type_obj, "quote_escape:sym<cr>", $P1377)
    get_how $P1378, type_obj
    .const 'Sub' $P1379 = "154_1303687815.225" 
    $P1378."add_method"(type_obj, "quote_escape:sym<tab>", $P1379)
    get_how $P1380, type_obj
    .const 'Sub' $P1381 = "155_1303687815.225" 
    $P1380."add_method"(type_obj, "quote_escape:sym<ff>", $P1381)
    get_how $P1382, type_obj
    .const 'Sub' $P1383 = "156_1303687815.225" 
    $P1382."add_method"(type_obj, "quote_escape:sym<esc>", $P1383)
    get_how $P1384, type_obj
    .const 'Sub' $P1385 = "157_1303687815.225" 
    $P1384."add_method"(type_obj, "quote_escape:sym<hex>", $P1385)
    get_how $P1386, type_obj
    .const 'Sub' $P1387 = "158_1303687815.225" 
    $P1386."add_method"(type_obj, "quote_escape:sym<oct>", $P1387)
    get_how $P1388, type_obj
    .const 'Sub' $P1389 = "159_1303687815.225" 
    $P1388."add_method"(type_obj, "quote_escape:sym<chr>", $P1389)
    get_how $P1390, type_obj
    .const 'Sub' $P1391 = "160_1303687815.225" 
    $P1390."add_method"(type_obj, "quote_escape:sym<0>", $P1391)
    get_how $P1392, type_obj
    .const 'Sub' $P1393 = "161_1303687815.225" 
    $P1392."add_method"(type_obj, "quote_escape:sym<misc>", $P1393)
    get_how $P1394, type_obj
    .const 'Sub' $P1395 = "162_1303687815.225" 
    $P1394."add_method"(type_obj, "charname", $P1395)
    get_how $P1396, type_obj
    .const 'Sub' $P1397 = "163_1303687815.225" 
    $P1396."add_method"(type_obj, "charnames", $P1397)
    get_how $P1398, type_obj
    .const 'Sub' $P1399 = "165_1303687815.225" 
    $P1398."add_method"(type_obj, "charspec", $P1399)
    get_how $P1400, type_obj
    nqp_get_sc_object $P1401, "1303687805.184", 4
    $P1400."set_default_parent"(type_obj, $P1401)
    get_how $P1402, type_obj
    $P1403 = $P1402."compose"(type_obj)
    .return ($P1403)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("121_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_680
    .param pmc param_681
.annotate 'line', 868
    .const 'Sub' $P697 = "122_1303687815.225" 
    capture_lex $P697
    .lex "$src", param_680
    .lex "$base", param_681
.annotate 'line', 869
    new $P682, "Undef"
    .lex "$len", $P682
.annotate 'line', 870
    new $P683, "Undef"
    .lex "$i", $P683
.annotate 'line', 871
    new $P684, "Undef"
    .lex "$result", $P684
.annotate 'line', 869
    find_lex $P685, "$src"
    unless_null $P685, vivify_497
    new $P685, "Undef"
  vivify_497:
    set $S686, $P685
    length $I687, $S686
    new $P688, 'Integer'
    set $P688, $I687
    store_lex "$len", $P688
.annotate 'line', 870
    new $P689, "Integer"
    assign $P689, 0
    store_lex "$i", $P689
.annotate 'line', 871
    new $P690, "Integer"
    assign $P690, 0
    store_lex "$result", $P690
.annotate 'line', 873
    new $P744, 'ExceptionHandler'
    set_label $P744, loop743_handler
    $P744."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P744
  loop743_test:
    find_lex $P691, "$i"
    unless_null $P691, vivify_498
    new $P691, "Undef"
  vivify_498:
    set $N692, $P691
    find_lex $P693, "$len"
    unless_null $P693, vivify_499
    new $P693, "Undef"
  vivify_499:
    set $N694, $P693
    islt $I695, $N692, $N694
    unless $I695, loop743_done
  loop743_redo:
    .const 'Sub' $P697 = "122_1303687815.225" 
    capture_lex $P697
    $P697()
  loop743_next:
    goto loop743_test
  loop743_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P745, exception, 'type'
    eq $P745, .CONTROL_LOOP_NEXT, loop743_next
    eq $P745, .CONTROL_LOOP_REDO, loop743_redo
  loop743_done:
    pop_eh 
    find_lex $P746, "$result"
    unless_null $P746, vivify_514
    new $P746, "Undef"
  vivify_514:
.annotate 'line', 868
    .return ($P746)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block696"  :anon :subid("122_1303687815.225") :outer("121_1303687815.225")
.annotate 'line', 874
    new $P698, "Undef"
    .lex "$char", $P698
.annotate 'line', 876
    new $P699, "Undef"
    .lex "$digitval", $P699
.annotate 'line', 874
    find_lex $P700, "$src"
    unless_null $P700, vivify_500
    new $P700, "Undef"
  vivify_500:
    set $S701, $P700
    find_lex $P702, "$i"
    unless_null $P702, vivify_501
    new $P702, "Undef"
  vivify_501:
    set $I703, $P702
    substr $S704, $S701, $I703, 1
    new $P705, 'String'
    set $P705, $S704
    store_lex "$char", $P705
.annotate 'line', 875
    find_lex $P707, "$char"
    unless_null $P707, vivify_502
    new $P707, "Undef"
  vivify_502:
    set $S708, $P707
    iseq $I709, $S708, "_"
    unless $I709, if_706_end
    set $I710, .CONTROL_LOOP_NEXT
    die 0, $I710
  if_706_end:
.annotate 'line', 876
    find_lex $P711, "$char"
    unless_null $P711, vivify_503
    new $P711, "Undef"
  vivify_503:
    set $S712, $P711
    index $I713, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S712
    new $P714, 'Integer'
    set $P714, $I713
    store_lex "$digitval", $P714
.annotate 'line', 877
    find_lex $P715, "$digitval"
    unless_null $P715, vivify_504
    new $P715, "Undef"
  vivify_504:
    div $P716, $P715, 2
    set $I717, $P716
    new $P718, 'Integer'
    set $P718, $I717
    store_lex "$digitval", $P718
.annotate 'line', 878
    find_lex $P722, "$digitval"
    unless_null $P722, vivify_505
    new $P722, "Undef"
  vivify_505:
    set $N723, $P722
    islt $I724, $N723, 0.0
    unless $I724, unless_721
    new $P720, 'Integer'
    set $P720, $I724
    goto unless_721_end
  unless_721:
    find_lex $P725, "$digitval"
    unless_null $P725, vivify_506
    new $P725, "Undef"
  vivify_506:
    set $N726, $P725
    find_lex $P727, "$base"
    unless_null $P727, vivify_507
    new $P727, "Undef"
  vivify_507:
    set $N728, $P727
    isge $I729, $N726, $N728
    new $P720, 'Integer'
    set $P720, $I729
  unless_721_end:
    unless $P720, if_719_end
.annotate 'line', 879
    find_lex $P730, "$src"
    unless_null $P730, vivify_508
    new $P730, "Undef"
  vivify_508:
    new $P731, 'String'
    set $P731, "Invalid radix conversion of character '"
    find_lex $P732, "$char"
    unless_null $P732, vivify_509
    new $P732, "Undef"
  vivify_509:
    concat $P733, $P731, $P732
    concat $P734, $P733, "'"
    $P730."panic"($P734)
  if_719_end:
.annotate 'line', 881
    find_lex $P735, "$base"
    unless_null $P735, vivify_510
    new $P735, "Undef"
  vivify_510:
    find_lex $P736, "$result"
    unless_null $P736, vivify_511
    new $P736, "Undef"
  vivify_511:
    mul $P737, $P735, $P736
    find_lex $P738, "$digitval"
    unless_null $P738, vivify_512
    new $P738, "Undef"
  vivify_512:
    add $P739, $P737, $P738
    store_lex "$result", $P739
.annotate 'line', 882
    find_lex $P740, "$i"
    unless_null $P740, vivify_513
    new $P740, "Undef"
  vivify_513:
    add $P741, $P740, 1
    store_lex "$i", $P741
    new $P742, "ResizablePMCArray"
    push $P742, $P739
    push $P742, $P741
.annotate 'line', 873
    .return ($P742)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("123_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_753
.annotate 'line', 887
    .const 'Sub' $P759 = "124_1303687815.225" 
    capture_lex $P759
    .lex "$ints", param_753
.annotate 'line', 888
    find_lex $P756, "$ints"
    unless_null $P756, vivify_515
    new $P756, "Undef"
  vivify_515:
    does $I757, $P756, "array"
    if $I757, if_755
.annotate 'line', 895
    find_lex $P779, "$ints"
    unless_null $P779, vivify_516
    new $P779, "Undef"
  vivify_516:
    $I780 = $P779."ast"()
    chr $S781, $I780
    new $P782, 'String'
    set $P782, $S781
.annotate 'line', 894
    set $P754, $P782
.annotate 'line', 888
    goto if_755_end
  if_755:
    .const 'Sub' $P759 = "124_1303687815.225" 
    capture_lex $P759
    $P778 = $P759()
    set $P754, $P778
  if_755_end:
.annotate 'line', 887
    .return ($P754)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block758"  :anon :subid("124_1303687815.225") :outer("123_1303687815.225")
.annotate 'line', 888
    .const 'Sub' $P767 = "125_1303687815.225" 
    capture_lex $P767
.annotate 'line', 889
    new $P760, "Undef"
    .lex "$result", $P760
    new $P761, "String"
    assign $P761, ""
    store_lex "$result", $P761
.annotate 'line', 890
    find_lex $P763, "$ints"
    unless_null $P763, vivify_517
    new $P763, "Undef"
  vivify_517:
    defined $I764, $P763
    unless $I764, for_undef_518
    iter $P762, $P763
    new $P775, 'ExceptionHandler'
    set_label $P775, loop774_handler
    $P775."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P775
  loop774_test:
    unless $P762, loop774_done
    shift $P765, $P762
  loop774_redo:
    .const 'Sub' $P767 = "125_1303687815.225" 
    capture_lex $P767
    $P767($P765)
  loop774_next:
    goto loop774_test
  loop774_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P776, exception, 'type'
    eq $P776, .CONTROL_LOOP_NEXT, loop774_next
    eq $P776, .CONTROL_LOOP_REDO, loop774_redo
  loop774_done:
    pop_eh 
  for_undef_518:
    find_lex $P777, "$result"
    unless_null $P777, vivify_521
    new $P777, "Undef"
  vivify_521:
.annotate 'line', 888
    .return ($P777)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block766"  :anon :subid("125_1303687815.225") :outer("124_1303687815.225")
    .param pmc param_768
.annotate 'line', 890
    .lex "$_", param_768
.annotate 'line', 891
    find_lex $P769, "$result"
    unless_null $P769, vivify_519
    new $P769, "Undef"
  vivify_519:
    find_lex $P770, "$_"
    unless_null $P770, vivify_520
    new $P770, "Undef"
  vivify_520:
    $I771 = $P770."ast"()
    chr $S772, $I771
    concat $P773, $P769, $S772
    store_lex "$result", $P773
.annotate 'line', 890
    .return ($P773)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("126_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_793
.annotate 'line', 900
    .lex "self", param_793
.annotate 'line', 901
    get_hll_global $P794, ["PAST"], "Op"
.annotate 'line', 907
    new $P795, "ResizablePMCArray"
    push $P795, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P795, "    if null $P0 goto ctxsave_done"
    push $P795, "    $I0 = can $P0, \"ctxsave\""
    push $P795, "    unless $I0 goto ctxsave_done"
    push $P795, "    $P0.\"ctxsave\"()"
    push $P795, "  ctxsave_done:"
    $P796 = $P794."new"($P795 :named("inline"))
.annotate 'line', 900
    .return ($P796)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("127_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_798
    .param pmc param_799
.annotate 'line', 914
    .const 'Sub' $P809 = "128_1303687815.225" 
    capture_lex $P809
    .lex "self", param_798
    .lex "$block", param_799
.annotate 'line', 915
    new $P800, "Undef"
    .lex "$outer_ctx", $P800
    find_dynamic_lex $P801, "%*COMPILING"
    unless_null $P801, vivify_522
    get_hll_global $P801, "%COMPILING"
    unless_null $P801, vivify_523
    die "Contextual %*COMPILING not found"
  vivify_523:
  vivify_522:
    set $P802, $P801["%?OPTIONS"]
    unless_null $P802, vivify_524
    $P802 = root_new ['parrot';'Hash']
  vivify_524:
    set $P803, $P802["outer_ctx"]
    unless_null $P803, vivify_525
    new $P803, "Undef"
  vivify_525:
    store_lex "$outer_ctx", $P803
.annotate 'line', 916
    find_lex $P806, "$outer_ctx"
    unless_null $P806, vivify_526
    new $P806, "Undef"
  vivify_526:
    defined $I807, $P806
    if $I807, if_805
    new $P804, 'Integer'
    set $P804, $I807
    goto if_805_end
  if_805:
    .const 'Sub' $P809 = "128_1303687815.225" 
    capture_lex $P809
    $P834 = $P809()
    set $P804, $P834
  if_805_end:
.annotate 'line', 914
    .return ($P804)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block808"  :anon :subid("128_1303687815.225") :outer("127_1303687815.225")
.annotate 'line', 916
    .const 'Sub' $P823 = "129_1303687815.225" 
    capture_lex $P823
.annotate 'line', 917
    $P810 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P810
    find_lex $P811, "$outer_ctx"
    unless_null $P811, vivify_527
    new $P811, "Undef"
  vivify_527:
    getattribute $P812, $P811, "current_namespace"
    $P813 = $P812."get_name"()
    store_lex "@ns", $P813
.annotate 'line', 918
    find_lex $P814, "@ns"
    unless_null $P814, vivify_528
    $P814 = root_new ['parrot';'ResizablePMCArray']
  vivify_528:
    $P814."shift"()
.annotate 'line', 919
    find_lex $P815, "$block"
    unless_null $P815, vivify_529
    new $P815, "Undef"
  vivify_529:
    find_lex $P816, "@ns"
    unless_null $P816, vivify_530
    $P816 = root_new ['parrot';'ResizablePMCArray']
  vivify_530:
    $P815."namespace"($P816)
.annotate 'line', 920
    find_lex $P818, "$outer_ctx"
    unless_null $P818, vivify_531
    new $P818, "Undef"
  vivify_531:
    $P819 = $P818."lexpad_full"()
    defined $I820, $P819
    unless $I820, for_undef_532
    iter $P817, $P819
    new $P832, 'ExceptionHandler'
    set_label $P832, loop831_handler
    $P832."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P832
  loop831_test:
    unless $P817, loop831_done
    shift $P821, $P817
  loop831_redo:
    .const 'Sub' $P823 = "129_1303687815.225" 
    capture_lex $P823
    $P823($P821)
  loop831_next:
    goto loop831_test
  loop831_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P833, exception, 'type'
    eq $P833, .CONTROL_LOOP_NEXT, loop831_next
    eq $P833, .CONTROL_LOOP_REDO, loop831_redo
  loop831_done:
    pop_eh 
  for_undef_532:
.annotate 'line', 916
    .return ($P817)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block822"  :anon :subid("129_1303687815.225") :outer("128_1303687815.225")
    .param pmc param_824
.annotate 'line', 920
    .lex "$_", param_824
.annotate 'line', 921
    find_lex $P825, "$block"
    unless_null $P825, vivify_533
    new $P825, "Undef"
  vivify_533:
    find_lex $P826, "$_"
    unless_null $P826, vivify_534
    new $P826, "Undef"
  vivify_534:
    $P827 = $P826."key"()
    find_lex $P828, "$_"
    unless_null $P828, vivify_535
    new $P828, "Undef"
  vivify_535:
    $P829 = $P828."value"()
    $P830 = $P825."symbol"($P827, "lexical" :named("scope"), $P829 :named("value"))
.annotate 'line', 920
    .return ($P830)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("130_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_838
    .param pmc param_839
    .param pmc param_840 :optional
    .param int has_param_840 :opt_flag
.annotate 'line', 927
    .const 'Sub' $P922 = "132_1303687815.225" 
    capture_lex $P922
    .const 'Sub' $P886 = "131_1303687815.225" 
    capture_lex $P886
    new $P837, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P837, control_836
    push_eh $P837
    .lex "self", param_838
    .lex "$/", param_839
    if has_param_840, optparam_536
    new $P841, "Undef"
    set param_840, $P841
  optparam_536:
    .lex "$key", param_840
.annotate 'line', 929
    new $P842, "Undef"
    .lex "$past", $P842
.annotate 'line', 928
    find_lex $P844, "$key"
    unless_null $P844, vivify_537
    new $P844, "Undef"
  vivify_537:
    if $P844, unless_843_end
    new $P845, "Exception"
    set $P845['type'], .CONTROL_RETURN
    new $P846, "Integer"
    assign $P846, 0
    setattribute $P845, 'payload', $P846
    throw $P845
  unless_843_end:
.annotate 'line', 929
    find_lex $P848, "$/"
    unless_null $P848, vivify_538
    new $P848, "Undef"
  vivify_538:
    $P849 = $P848."ast"()
    set $P847, $P849
    defined $I851, $P847
    if $I851, default_850
    find_lex $P852, "$/"
    unless_null $P852, vivify_539
    $P852 = root_new ['parrot';'Hash']
  vivify_539:
    set $P853, $P852["OPER"]
    unless_null $P853, vivify_540
    new $P853, "Undef"
  vivify_540:
    $P854 = $P853."ast"()
    set $P847, $P854
  default_850:
    store_lex "$past", $P847
.annotate 'line', 930
    find_lex $P856, "$past"
    unless_null $P856, vivify_541
    new $P856, "Undef"
  vivify_541:
    if $P856, unless_855_end
.annotate 'line', 931
    get_hll_global $P857, ["PAST"], "Op"
    find_lex $P858, "$/"
    unless_null $P858, vivify_542
    new $P858, "Undef"
  vivify_542:
    $P859 = $P857."new"($P858 :named("node"))
    store_lex "$past", $P859
.annotate 'line', 932
    find_lex $P861, "$/"
    unless_null $P861, vivify_543
    $P861 = root_new ['parrot';'Hash']
  vivify_543:
    set $P862, $P861["OPER"]
    unless_null $P862, vivify_544
    $P862 = root_new ['parrot';'Hash']
  vivify_544:
    set $P863, $P862["O"]
    unless_null $P863, vivify_545
    $P863 = root_new ['parrot';'Hash']
  vivify_545:
    set $P864, $P863["pasttype"]
    unless_null $P864, vivify_546
    new $P864, "Undef"
  vivify_546:
    if $P864, if_860
.annotate 'line', 933
    find_lex $P872, "$/"
    unless_null $P872, vivify_547
    $P872 = root_new ['parrot';'Hash']
  vivify_547:
    set $P873, $P872["OPER"]
    unless_null $P873, vivify_548
    $P873 = root_new ['parrot';'Hash']
  vivify_548:
    set $P874, $P873["O"]
    unless_null $P874, vivify_549
    $P874 = root_new ['parrot';'Hash']
  vivify_549:
    set $P875, $P874["pirop"]
    unless_null $P875, vivify_550
    new $P875, "Undef"
  vivify_550:
    unless $P875, if_871_end
    find_lex $P876, "$past"
    unless_null $P876, vivify_551
    new $P876, "Undef"
  vivify_551:
    find_lex $P877, "$/"
    unless_null $P877, vivify_552
    $P877 = root_new ['parrot';'Hash']
  vivify_552:
    set $P878, $P877["OPER"]
    unless_null $P878, vivify_553
    $P878 = root_new ['parrot';'Hash']
  vivify_553:
    set $P879, $P878["O"]
    unless_null $P879, vivify_554
    $P879 = root_new ['parrot';'Hash']
  vivify_554:
    set $P880, $P879["pirop"]
    unless_null $P880, vivify_555
    new $P880, "Undef"
  vivify_555:
    set $S881, $P880
    $P876."pirop"($S881)
  if_871_end:
    goto if_860_end
  if_860:
.annotate 'line', 932
    find_lex $P865, "$past"
    unless_null $P865, vivify_556
    new $P865, "Undef"
  vivify_556:
    find_lex $P866, "$/"
    unless_null $P866, vivify_557
    $P866 = root_new ['parrot';'Hash']
  vivify_557:
    set $P867, $P866["OPER"]
    unless_null $P867, vivify_558
    $P867 = root_new ['parrot';'Hash']
  vivify_558:
    set $P868, $P867["O"]
    unless_null $P868, vivify_559
    $P868 = root_new ['parrot';'Hash']
  vivify_559:
    set $P869, $P868["pasttype"]
    unless_null $P869, vivify_560
    new $P869, "Undef"
  vivify_560:
    set $S870, $P869
    $P865."pasttype"($S870)
  if_860_end:
.annotate 'line', 934
    find_lex $P883, "$past"
    unless_null $P883, vivify_561
    new $P883, "Undef"
  vivify_561:
    $P884 = $P883."name"()
    if $P884, unless_882_end
    .const 'Sub' $P886 = "131_1303687815.225" 
    capture_lex $P886
    $P886()
  unless_882_end:
  unless_855_end:
.annotate 'line', 940
    find_lex $P909, "$key"
    unless_null $P909, vivify_569
    new $P909, "Undef"
  vivify_569:
    set $S910, $P909
    iseq $I911, $S910, "POSTFIX"
    if $I911, if_908
.annotate 'line', 942
    find_lex $P917, "$/"
    unless_null $P917, vivify_570
    new $P917, "Undef"
  vivify_570:
    $P918 = $P917."list"()
    defined $I919, $P918
    unless $I919, for_undef_571
    iter $P916, $P918
    new $P934, 'ExceptionHandler'
    set_label $P934, loop933_handler
    $P934."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P934
  loop933_test:
    unless $P916, loop933_done
    shift $P920, $P916
  loop933_redo:
    .const 'Sub' $P922 = "132_1303687815.225" 
    capture_lex $P922
    $P922($P920)
  loop933_next:
    goto loop933_test
  loop933_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P935, exception, 'type'
    eq $P935, .CONTROL_LOOP_NEXT, loop933_next
    eq $P935, .CONTROL_LOOP_REDO, loop933_redo
  loop933_done:
    pop_eh 
  for_undef_571:
.annotate 'line', 941
    goto if_908_end
  if_908:
.annotate 'line', 940
    find_lex $P912, "$past"
    unless_null $P912, vivify_575
    new $P912, "Undef"
  vivify_575:
    find_lex $P913, "$/"
    unless_null $P913, vivify_576
    $P913 = root_new ['parrot';'ResizablePMCArray']
  vivify_576:
    set $P914, $P913[0]
    unless_null $P914, vivify_577
    new $P914, "Undef"
  vivify_577:
    $P915 = $P914."ast"()
    $P912."unshift"($P915)
  if_908_end:
.annotate 'line', 944
    find_lex $P936, "$/"
    find_lex $P937, "$past"
    unless_null $P937, vivify_578
    new $P937, "Undef"
  vivify_578:
    $P938 = $P936."!make"($P937)
.annotate 'line', 927
    .return ($P938)
  control_836:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P939, exception, "payload"
    .return ($P939)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block885"  :anon :subid("131_1303687815.225") :outer("130_1303687815.225")
.annotate 'line', 936
    new $P887, "Undef"
    .lex "$name", $P887
.annotate 'line', 935
    find_lex $P889, "$key"
    unless_null $P889, vivify_562
    new $P889, "Undef"
  vivify_562:
    set $S890, $P889
    iseq $I891, $S890, "LIST"
    unless $I891, if_888_end
    new $P892, "String"
    assign $P892, "infix"
    store_lex "$key", $P892
  if_888_end:
.annotate 'line', 936
    find_lex $P893, "$key"
    unless_null $P893, vivify_563
    new $P893, "Undef"
  vivify_563:
    set $S894, $P893
    downcase $S895, $S894
    new $P896, 'String'
    set $P896, $S895
    concat $P897, $P896, ":<"
    find_lex $P898, "$/"
    unless_null $P898, vivify_564
    $P898 = root_new ['parrot';'Hash']
  vivify_564:
    set $P899, $P898["OPER"]
    unless_null $P899, vivify_565
    $P899 = root_new ['parrot';'Hash']
  vivify_565:
    set $P900, $P899["sym"]
    unless_null $P900, vivify_566
    new $P900, "Undef"
  vivify_566:
    concat $P901, $P897, $P900
    concat $P902, $P901, ">"
    store_lex "$name", $P902
.annotate 'line', 937
    find_lex $P903, "$past"
    unless_null $P903, vivify_567
    new $P903, "Undef"
  vivify_567:
    new $P904, "String"
    assign $P904, "&"
    find_lex $P905, "$name"
    unless_null $P905, vivify_568
    new $P905, "Undef"
  vivify_568:
    concat $P906, $P904, $P905
    $P907 = $P903."name"($P906)
.annotate 'line', 934
    .return ($P907)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block921"  :anon :subid("132_1303687815.225") :outer("130_1303687815.225")
    .param pmc param_923
.annotate 'line', 942
    .lex "$_", param_923
    find_lex $P926, "$_"
    unless_null $P926, vivify_572
    new $P926, "Undef"
  vivify_572:
    $P927 = $P926."ast"()
    defined $I928, $P927
    if $I928, if_925
    new $P924, 'Integer'
    set $P924, $I928
    goto if_925_end
  if_925:
    find_lex $P929, "$past"
    unless_null $P929, vivify_573
    new $P929, "Undef"
  vivify_573:
    find_lex $P930, "$_"
    unless_null $P930, vivify_574
    new $P930, "Undef"
  vivify_574:
    $P931 = $P930."ast"()
    $P932 = $P929."push"($P931)
    set $P924, $P932
  if_925_end:
    .return ($P924)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("133_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_941
    .param pmc param_942
.annotate 'line', 947
    .lex "self", param_941
    .lex "$/", param_942
    find_lex $P943, "$/"
    find_lex $P944, "$/"
    unless_null $P944, vivify_579
    $P944 = root_new ['parrot';'Hash']
  vivify_579:
    set $P945, $P944["circumfix"]
    unless_null $P945, vivify_580
    new $P945, "Undef"
  vivify_580:
    $P946 = $P945."ast"()
    $P947 = $P943."!make"($P946)
    .return ($P947)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("134_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_949
    .param pmc param_950
.annotate 'line', 949
    .lex "self", param_949
    .lex "$/", param_950
    find_lex $P951, "$/"
    find_lex $P952, "$/"
    unless_null $P952, vivify_581
    $P952 = root_new ['parrot';'Hash']
  vivify_581:
    set $P953, $P952["term"]
    unless_null $P953, vivify_582
    new $P953, "Undef"
  vivify_582:
    $P954 = $P953."ast"()
    $P955 = $P951."!make"($P954)
    .return ($P955)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("135_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_957
    .param pmc param_958
.annotate 'line', 950
    .lex "self", param_957
    .lex "$/", param_958
    find_lex $P959, "$/"
    new $P960, "Undef"
    $P961 = $P959."!make"($P960)
    .return ($P961)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("136_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_963
    .param pmc param_964
.annotate 'line', 951
    .lex "self", param_963
    .lex "$/", param_964
    find_lex $P965, "$/"
    find_lex $P966, "$/"
    unless_null $P966, vivify_583
    $P966 = root_new ['parrot';'Hash']
  vivify_583:
    set $P967, $P966["term"]
    unless_null $P967, vivify_584
    new $P967, "Undef"
  vivify_584:
    $P968 = $P967."ast"()
    $P969 = $P965."!make"($P968)
    .return ($P969)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("137_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_971
    .param pmc param_972
.annotate 'line', 953
    .lex "self", param_971
    .lex "$/", param_972
    find_lex $P973, "$/"
    find_lex $P974, "$/"
    unless_null $P974, vivify_585
    $P974 = root_new ['parrot';'Hash']
  vivify_585:
    set $P975, $P974["VALUE"]
    unless_null $P975, vivify_586
    new $P975, "Undef"
  vivify_586:
    $P976 = $P975."ast"()
    $P977 = $P973."!make"($P976)
    .return ($P977)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("138_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_979
    .param pmc param_980
.annotate 'line', 955
    .lex "self", param_979
    .lex "$/", param_980
    find_lex $P981, "$/"
    find_lex $P982, "$/"
    unless_null $P982, vivify_587
    new $P982, "Undef"
  vivify_587:
    set $N983, $P982
    $P984 = $P981."!make"($N983)
    .return ($P984)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("139_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_986
    .param pmc param_987
.annotate 'line', 957
    .lex "self", param_986
    .lex "$/", param_987
    find_lex $P988, "$/"
    find_lex $P989, "$/"
    unless_null $P989, vivify_588
    new $P989, "Undef"
  vivify_588:
    $P990 = "string_to_int"($P989, 10)
    $P991 = $P988."!make"($P990)
    .return ($P991)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("140_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_993
    .param pmc param_994
.annotate 'line', 958
    .lex "self", param_993
    .lex "$/", param_994
    find_lex $P995, "$/"
    find_lex $P996, "$/"
    unless_null $P996, vivify_589
    new $P996, "Undef"
  vivify_589:
    $P997 = "string_to_int"($P996, 16)
    $P998 = $P995."!make"($P997)
    .return ($P998)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("141_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1000
    .param pmc param_1001
.annotate 'line', 959
    .lex "self", param_1000
    .lex "$/", param_1001
    find_lex $P1002, "$/"
    find_lex $P1003, "$/"
    unless_null $P1003, vivify_590
    new $P1003, "Undef"
  vivify_590:
    $P1004 = "string_to_int"($P1003, 8)
    $P1005 = $P1002."!make"($P1004)
    .return ($P1005)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("142_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1007
    .param pmc param_1008
.annotate 'line', 960
    .lex "self", param_1007
    .lex "$/", param_1008
    find_lex $P1009, "$/"
    find_lex $P1010, "$/"
    unless_null $P1010, vivify_591
    new $P1010, "Undef"
  vivify_591:
    $P1011 = "string_to_int"($P1010, 2)
    $P1012 = $P1009."!make"($P1011)
    .return ($P1012)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("143_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1014
    .param pmc param_1015
.annotate 'line', 962
    .const 'Sub' $P1031 = "144_1303687815.225" 
    capture_lex $P1031
    .lex "self", param_1014
    .lex "$/", param_1015
.annotate 'line', 963
    new $P1016, "Undef"
    .lex "$past", $P1016
    find_lex $P1017, "$/"
    unless_null $P1017, vivify_592
    $P1017 = root_new ['parrot';'Hash']
  vivify_592:
    set $P1018, $P1017["quote_delimited"]
    unless_null $P1018, vivify_593
    new $P1018, "Undef"
  vivify_593:
    $P1019 = $P1018."ast"()
    store_lex "$past", $P1019
.annotate 'line', 964
    find_lex $P1021, "$/"
    unless_null $P1021, vivify_594
    new $P1021, "Undef"
  vivify_594:
    $P1022 = $P1021."CURSOR"()
    $P1023 = $P1022."quotemod_check"("w")
    unless $P1023, if_1020_end
.annotate 'line', 965
    get_hll_global $P1025, ["PAST"], "Node"
    find_lex $P1026, "$past"
    unless_null $P1026, vivify_595
    new $P1026, "Undef"
  vivify_595:
    $P1027 = $P1025."ACCEPTS"($P1026)
    if $P1027, if_1024
.annotate 'line', 968
    .const 'Sub' $P1031 = "144_1303687815.225" 
    capture_lex $P1031
    $P1031()
    goto if_1024_end
  if_1024:
.annotate 'line', 966
    find_lex $P1028, "$/"
    unless_null $P1028, vivify_606
    new $P1028, "Undef"
  vivify_606:
    $P1029 = $P1028."CURSOR"()
    $P1029."panic"("Can't form :w list from non-constant strings (yet)")
  if_1024_end:
  if_1020_end:
.annotate 'line', 979
    get_hll_global $P1063, ["PAST"], "Node"
    find_lex $P1064, "$past"
    unless_null $P1064, vivify_607
    new $P1064, "Undef"
  vivify_607:
    $P1065 = $P1063."ACCEPTS"($P1064)
    isfalse $I1066, $P1065
    unless $I1066, if_1062_end
.annotate 'line', 980
    get_hll_global $P1067, ["PAST"], "Val"
    find_lex $P1068, "$past"
    unless_null $P1068, vivify_608
    new $P1068, "Undef"
  vivify_608:
    set $S1069, $P1068
    $P1070 = $P1067."new"($S1069 :named("value"))
    store_lex "$past", $P1070
  if_1062_end:
.annotate 'line', 982
    find_lex $P1071, "$/"
    find_lex $P1072, "$past"
    unless_null $P1072, vivify_609
    new $P1072, "Undef"
  vivify_609:
    $P1073 = $P1071."!make"($P1072)
.annotate 'line', 962
    .return ($P1073)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1030"  :anon :subid("144_1303687815.225") :outer("143_1303687815.225")
.annotate 'line', 968
    .const 'Sub' $P1050 = "145_1303687815.225" 
    capture_lex $P1050
.annotate 'line', 969
    $P1032 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P1032
    get_hll_global $P1033, ["HLL";"Grammar"], "split_words"
    find_lex $P1034, "$/"
    unless_null $P1034, vivify_596
    new $P1034, "Undef"
  vivify_596:
    find_lex $P1035, "$past"
    unless_null $P1035, vivify_597
    new $P1035, "Undef"
  vivify_597:
    $P1036 = $P1033($P1034, $P1035)
    store_lex "@words", $P1036
.annotate 'line', 970
    find_lex $P1039, "@words"
    unless_null $P1039, vivify_598
    $P1039 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    set $N1040, $P1039
    isne $I1041, $N1040, 1.0
    if $I1041, if_1038
.annotate 'line', 975
    find_lex $P1058, "@words"
    unless_null $P1058, vivify_599
    $P1058 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
    set $P1059, $P1058[0]
    unless_null $P1059, vivify_600
    new $P1059, "Undef"
  vivify_600:
    set $S1060, $P1059
    new $P1061, 'String'
    set $P1061, $S1060
    store_lex "$past", $P1061
.annotate 'line', 974
    set $P1037, $P1061
.annotate 'line', 970
    goto if_1038_end
  if_1038:
.annotate 'line', 971
    get_hll_global $P1042, ["PAST"], "Op"
    find_lex $P1043, "$/"
    unless_null $P1043, vivify_601
    new $P1043, "Undef"
  vivify_601:
    $P1044 = $P1042."new"("list" :named("pasttype"), $P1043 :named("node"))
    store_lex "$past", $P1044
.annotate 'line', 972
    find_lex $P1046, "@words"
    unless_null $P1046, vivify_602
    $P1046 = root_new ['parrot';'ResizablePMCArray']
  vivify_602:
    defined $I1047, $P1046
    unless $I1047, for_undef_603
    iter $P1045, $P1046
    new $P1056, 'ExceptionHandler'
    set_label $P1056, loop1055_handler
    $P1056."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1056
  loop1055_test:
    unless $P1045, loop1055_done
    shift $P1048, $P1045
  loop1055_redo:
    .const 'Sub' $P1050 = "145_1303687815.225" 
    capture_lex $P1050
    $P1050($P1048)
  loop1055_next:
    goto loop1055_test
  loop1055_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1057, exception, 'type'
    eq $P1057, .CONTROL_LOOP_NEXT, loop1055_next
    eq $P1057, .CONTROL_LOOP_REDO, loop1055_redo
  loop1055_done:
    pop_eh 
  for_undef_603:
.annotate 'line', 970
    set $P1037, $P1045
  if_1038_end:
.annotate 'line', 968
    .return ($P1037)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1049"  :anon :subid("145_1303687815.225") :outer("144_1303687815.225")
    .param pmc param_1051
.annotate 'line', 972
    .lex "$_", param_1051
    find_lex $P1052, "$past"
    unless_null $P1052, vivify_604
    new $P1052, "Undef"
  vivify_604:
    find_lex $P1053, "$_"
    unless_null $P1053, vivify_605
    new $P1053, "Undef"
  vivify_605:
    $P1054 = $P1052."push"($P1053)
    .return ($P1054)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("146_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1075
    .param pmc param_1076
.annotate 'line', 985
    .const 'Sub' $P1088 = "147_1303687815.225" 
    capture_lex $P1088
    .lex "self", param_1075
    .lex "$/", param_1076
.annotate 'line', 986
    $P1077 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P1077
.annotate 'line', 987
    new $P1078, "Undef"
    .lex "$lastlit", $P1078
.annotate 'line', 1003
    new $P1079, "Undef"
    .lex "$past", $P1079
.annotate 'line', 985
    find_lex $P1080, "@parts"
    unless_null $P1080, vivify_610
    $P1080 = root_new ['parrot';'ResizablePMCArray']
  vivify_610:
.annotate 'line', 987
    new $P1081, "String"
    assign $P1081, ""
    store_lex "$lastlit", $P1081
.annotate 'line', 988
    find_lex $P1083, "$/"
    unless_null $P1083, vivify_611
    $P1083 = root_new ['parrot';'Hash']
  vivify_611:
    set $P1084, $P1083["quote_atom"]
    unless_null $P1084, vivify_612
    new $P1084, "Undef"
  vivify_612:
    defined $I1085, $P1084
    unless $I1085, for_undef_613
    iter $P1082, $P1084
    new $P1121, 'ExceptionHandler'
    set_label $P1121, loop1120_handler
    $P1121."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1121
  loop1120_test:
    unless $P1082, loop1120_done
    shift $P1086, $P1082
  loop1120_redo:
    .const 'Sub' $P1088 = "147_1303687815.225" 
    capture_lex $P1088
    $P1088($P1086)
  loop1120_next:
    goto loop1120_test
  loop1120_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1122, exception, 'type'
    eq $P1122, .CONTROL_LOOP_NEXT, loop1120_next
    eq $P1122, .CONTROL_LOOP_REDO, loop1120_redo
  loop1120_done:
    pop_eh 
  for_undef_613:
.annotate 'line', 1002
    find_lex $P1124, "$lastlit"
    unless_null $P1124, vivify_626
    new $P1124, "Undef"
  vivify_626:
    set $S1125, $P1124
    isgt $I1126, $S1125, ""
    unless $I1126, if_1123_end
    find_lex $P1127, "@parts"
    unless_null $P1127, vivify_627
    $P1127 = root_new ['parrot';'ResizablePMCArray']
  vivify_627:
    find_lex $P1128, "$lastlit"
    unless_null $P1128, vivify_628
    new $P1128, "Undef"
  vivify_628:
    $P1127."push"($P1128)
  if_1123_end:
.annotate 'line', 1003
    find_lex $P1131, "@parts"
    unless_null $P1131, vivify_629
    $P1131 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    if $P1131, if_1130
    new $P1134, "String"
    assign $P1134, ""
    set $P1129, $P1134
    goto if_1130_end
  if_1130:
    find_lex $P1132, "@parts"
    unless_null $P1132, vivify_630
    $P1132 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    $P1133 = $P1132."shift"()
    set $P1129, $P1133
  if_1130_end:
    store_lex "$past", $P1129
.annotate 'line', 1004
    new $P1142, 'ExceptionHandler'
    set_label $P1142, loop1141_handler
    $P1142."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1142
  loop1141_test:
    find_lex $P1135, "@parts"
    unless_null $P1135, vivify_631
    $P1135 = root_new ['parrot';'ResizablePMCArray']
  vivify_631:
    unless $P1135, loop1141_done
  loop1141_redo:
.annotate 'line', 1005
    get_hll_global $P1136, ["PAST"], "Op"
    find_lex $P1137, "$past"
    unless_null $P1137, vivify_632
    new $P1137, "Undef"
  vivify_632:
    find_lex $P1138, "@parts"
    unless_null $P1138, vivify_633
    $P1138 = root_new ['parrot';'ResizablePMCArray']
  vivify_633:
    $P1139 = $P1138."shift"()
    $P1140 = $P1136."new"($P1137, $P1139, "concat" :named("pirop"))
    store_lex "$past", $P1140
  loop1141_next:
.annotate 'line', 1004
    goto loop1141_test
  loop1141_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1143, exception, 'type'
    eq $P1143, .CONTROL_LOOP_NEXT, loop1141_next
    eq $P1143, .CONTROL_LOOP_REDO, loop1141_redo
  loop1141_done:
    pop_eh 
.annotate 'line', 1007
    find_lex $P1144, "$/"
    find_lex $P1145, "$past"
    unless_null $P1145, vivify_634
    new $P1145, "Undef"
  vivify_634:
    $P1146 = $P1144."!make"($P1145)
.annotate 'line', 985
    .return ($P1146)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1087"  :anon :subid("147_1303687815.225") :outer("146_1303687815.225")
    .param pmc param_1090
.annotate 'line', 989
    new $P1089, "Undef"
    .lex "$ast", $P1089
    .lex "$_", param_1090
    find_lex $P1091, "$_"
    unless_null $P1091, vivify_614
    new $P1091, "Undef"
  vivify_614:
    $P1092 = $P1091."ast"()
    store_lex "$ast", $P1092
.annotate 'line', 990
    get_hll_global $P1095, ["PAST"], "Node"
    find_lex $P1096, "$ast"
    unless_null $P1096, vivify_615
    new $P1096, "Undef"
  vivify_615:
    $P1097 = $P1095."ACCEPTS"($P1096)
    isfalse $I1098, $P1097
    if $I1098, if_1094
.annotate 'line', 993
    find_lex $P1104, "$ast"
    unless_null $P1104, vivify_616
    new $P1104, "Undef"
  vivify_616:
    get_hll_global $P1105, ["PAST"], "Val"
    $P1106 = $P1104."isa"($P1105)
    if $P1106, if_1103
.annotate 'line', 997
    find_lex $P1112, "$lastlit"
    unless_null $P1112, vivify_617
    new $P1112, "Undef"
  vivify_617:
    set $S1113, $P1112
    isgt $I1114, $S1113, ""
    unless $I1114, if_1111_end
    find_lex $P1115, "@parts"
    unless_null $P1115, vivify_618
    $P1115 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    find_lex $P1116, "$lastlit"
    unless_null $P1116, vivify_619
    new $P1116, "Undef"
  vivify_619:
    $P1115."push"($P1116)
  if_1111_end:
.annotate 'line', 998
    find_lex $P1117, "@parts"
    unless_null $P1117, vivify_620
    $P1117 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    find_lex $P1118, "$ast"
    unless_null $P1118, vivify_621
    new $P1118, "Undef"
  vivify_621:
    $P1117."push"($P1118)
.annotate 'line', 999
    new $P1119, "String"
    assign $P1119, ""
    store_lex "$lastlit", $P1119
.annotate 'line', 996
    set $P1102, $P1119
.annotate 'line', 993
    goto if_1103_end
  if_1103:
.annotate 'line', 994
    find_lex $P1107, "$lastlit"
    unless_null $P1107, vivify_622
    new $P1107, "Undef"
  vivify_622:
    find_lex $P1108, "$ast"
    unless_null $P1108, vivify_623
    new $P1108, "Undef"
  vivify_623:
    $S1109 = $P1108."value"()
    concat $P1110, $P1107, $S1109
    store_lex "$lastlit", $P1110
.annotate 'line', 993
    set $P1102, $P1110
  if_1103_end:
    set $P1093, $P1102
.annotate 'line', 990
    goto if_1094_end
  if_1094:
.annotate 'line', 991
    find_lex $P1099, "$lastlit"
    unless_null $P1099, vivify_624
    new $P1099, "Undef"
  vivify_624:
    find_lex $P1100, "$ast"
    unless_null $P1100, vivify_625
    new $P1100, "Undef"
  vivify_625:
    concat $P1101, $P1099, $P1100
    store_lex "$lastlit", $P1101
.annotate 'line', 990
    set $P1093, $P1101
  if_1094_end:
.annotate 'line', 988
    .return ($P1093)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("148_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1148
    .param pmc param_1149
.annotate 'line', 1010
    .lex "self", param_1148
    .lex "$/", param_1149
.annotate 'line', 1011
    find_lex $P1150, "$/"
    find_lex $P1153, "$/"
    unless_null $P1153, vivify_635
    $P1153 = root_new ['parrot';'Hash']
  vivify_635:
    set $P1154, $P1153["quote_escape"]
    unless_null $P1154, vivify_636
    new $P1154, "Undef"
  vivify_636:
    if $P1154, if_1152
    find_lex $P1158, "$/"
    unless_null $P1158, vivify_637
    new $P1158, "Undef"
  vivify_637:
    set $S1159, $P1158
    new $P1151, 'String'
    set $P1151, $S1159
    goto if_1152_end
  if_1152:
    find_lex $P1155, "$/"
    unless_null $P1155, vivify_638
    $P1155 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1156, $P1155["quote_escape"]
    unless_null $P1156, vivify_639
    new $P1156, "Undef"
  vivify_639:
    $P1157 = $P1156."ast"()
    set $P1151, $P1157
  if_1152_end:
    $P1160 = $P1150."!make"($P1151)
.annotate 'line', 1010
    .return ($P1160)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("149_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1162
    .param pmc param_1163
.annotate 'line', 1014
    .lex "self", param_1162
    .lex "$/", param_1163
    find_lex $P1164, "$/"
    $P1165 = $P1164."!make"("\\")
    .return ($P1165)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("150_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1167
    .param pmc param_1168
.annotate 'line', 1015
    .lex "self", param_1167
    .lex "$/", param_1168
    find_lex $P1169, "$/"
    find_lex $P1170, "$/"
    unless_null $P1170, vivify_640
    $P1170 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1171, $P1170["stopper"]
    unless_null $P1171, vivify_641
    new $P1171, "Undef"
  vivify_641:
    set $S1172, $P1171
    $P1173 = $P1169."!make"($S1172)
    .return ($P1173)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("151_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1175
    .param pmc param_1176
.annotate 'line', 1017
    .lex "self", param_1175
    .lex "$/", param_1176
    find_lex $P1177, "$/"
    $P1178 = $P1177."!make"("\b")
    .return ($P1178)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("152_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1180
    .param pmc param_1181
.annotate 'line', 1018
    .lex "self", param_1180
    .lex "$/", param_1181
    find_lex $P1182, "$/"
    $P1183 = $P1182."!make"("\n")
    .return ($P1183)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("153_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1185
    .param pmc param_1186
.annotate 'line', 1019
    .lex "self", param_1185
    .lex "$/", param_1186
    find_lex $P1187, "$/"
    $P1188 = $P1187."!make"("\r")
    .return ($P1188)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("154_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1190
    .param pmc param_1191
.annotate 'line', 1020
    .lex "self", param_1190
    .lex "$/", param_1191
    find_lex $P1192, "$/"
    $P1193 = $P1192."!make"("\t")
    .return ($P1193)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("155_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1195
    .param pmc param_1196
.annotate 'line', 1021
    .lex "self", param_1195
    .lex "$/", param_1196
    find_lex $P1197, "$/"
    $P1198 = $P1197."!make"("\f")
    .return ($P1198)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("156_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1200
    .param pmc param_1201
.annotate 'line', 1022
    .lex "self", param_1200
    .lex "$/", param_1201
    find_lex $P1202, "$/"
    $P1203 = $P1202."!make"("\e")
    .return ($P1203)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("157_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1205
    .param pmc param_1206
.annotate 'line', 1024
    .lex "self", param_1205
    .lex "$/", param_1206
.annotate 'line', 1025
    find_lex $P1207, "$/"
    find_lex $P1210, "$/"
    unless_null $P1210, vivify_642
    $P1210 = root_new ['parrot';'Hash']
  vivify_642:
    set $P1211, $P1210["hexint"]
    unless_null $P1211, vivify_643
    new $P1211, "Undef"
  vivify_643:
    if $P1211, if_1209
    find_lex $P1214, "$/"
    unless_null $P1214, vivify_644
    $P1214 = root_new ['parrot';'Hash']
  vivify_644:
    set $P1215, $P1214["hexints"]
    unless_null $P1215, vivify_645
    $P1215 = root_new ['parrot';'Hash']
  vivify_645:
    set $P1216, $P1215["hexint"]
    unless_null $P1216, vivify_646
    new $P1216, "Undef"
  vivify_646:
    set $P1208, $P1216
    goto if_1209_end
  if_1209:
    find_lex $P1212, "$/"
    unless_null $P1212, vivify_647
    $P1212 = root_new ['parrot';'Hash']
  vivify_647:
    set $P1213, $P1212["hexint"]
    unless_null $P1213, vivify_648
    new $P1213, "Undef"
  vivify_648:
    set $P1208, $P1213
  if_1209_end:
    $P1217 = "ints_to_string"($P1208)
    $P1218 = $P1207."!make"($P1217)
.annotate 'line', 1024
    .return ($P1218)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("158_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1220
    .param pmc param_1221
.annotate 'line', 1028
    .lex "self", param_1220
    .lex "$/", param_1221
.annotate 'line', 1029
    find_lex $P1222, "$/"
    find_lex $P1225, "$/"
    unless_null $P1225, vivify_649
    $P1225 = root_new ['parrot';'Hash']
  vivify_649:
    set $P1226, $P1225["octint"]
    unless_null $P1226, vivify_650
    new $P1226, "Undef"
  vivify_650:
    if $P1226, if_1224
    find_lex $P1229, "$/"
    unless_null $P1229, vivify_651
    $P1229 = root_new ['parrot';'Hash']
  vivify_651:
    set $P1230, $P1229["octints"]
    unless_null $P1230, vivify_652
    $P1230 = root_new ['parrot';'Hash']
  vivify_652:
    set $P1231, $P1230["octint"]
    unless_null $P1231, vivify_653
    new $P1231, "Undef"
  vivify_653:
    set $P1223, $P1231
    goto if_1224_end
  if_1224:
    find_lex $P1227, "$/"
    unless_null $P1227, vivify_654
    $P1227 = root_new ['parrot';'Hash']
  vivify_654:
    set $P1228, $P1227["octint"]
    unless_null $P1228, vivify_655
    new $P1228, "Undef"
  vivify_655:
    set $P1223, $P1228
  if_1224_end:
    $P1232 = "ints_to_string"($P1223)
    $P1233 = $P1222."!make"($P1232)
.annotate 'line', 1028
    .return ($P1233)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("159_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1235
    .param pmc param_1236
.annotate 'line', 1032
    .lex "self", param_1235
    .lex "$/", param_1236
.annotate 'line', 1033
    find_lex $P1237, "$/"
    find_lex $P1238, "$/"
    unless_null $P1238, vivify_656
    $P1238 = root_new ['parrot';'Hash']
  vivify_656:
    set $P1239, $P1238["charspec"]
    unless_null $P1239, vivify_657
    new $P1239, "Undef"
  vivify_657:
    $P1240 = $P1239."ast"()
    $P1241 = $P1237."!make"($P1240)
.annotate 'line', 1032
    .return ($P1241)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("160_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1243
    .param pmc param_1244
.annotate 'line', 1036
    .lex "self", param_1243
    .lex "$/", param_1244
.annotate 'line', 1037
    find_lex $P1245, "$/"
    $P1246 = $P1245."!make"(unicode:"\x{0}")
.annotate 'line', 1036
    .return ($P1246)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("161_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1248
    .param pmc param_1249
.annotate 'line', 1040
    .lex "self", param_1248
    .lex "$/", param_1249
.annotate 'line', 1041
    find_lex $P1250, "$/"
    find_lex $P1253, "$/"
    unless_null $P1253, vivify_658
    $P1253 = root_new ['parrot';'Hash']
  vivify_658:
    set $P1254, $P1253["textq"]
    unless_null $P1254, vivify_659
    new $P1254, "Undef"
  vivify_659:
    if $P1254, if_1252
    find_lex $P1260, "$/"
    unless_null $P1260, vivify_660
    $P1260 = root_new ['parrot';'Hash']
  vivify_660:
    set $P1261, $P1260["textqq"]
    unless_null $P1261, vivify_661
    new $P1261, "Undef"
  vivify_661:
    $P1262 = $P1261."Str"()
    set $P1251, $P1262
    goto if_1252_end
  if_1252:
    new $P1255, "String"
    assign $P1255, "\\"
    find_lex $P1256, "$/"
    unless_null $P1256, vivify_662
    $P1256 = root_new ['parrot';'Hash']
  vivify_662:
    set $P1257, $P1256["textq"]
    unless_null $P1257, vivify_663
    new $P1257, "Undef"
  vivify_663:
    $S1258 = $P1257."Str"()
    concat $P1259, $P1255, $S1258
    set $P1251, $P1259
  if_1252_end:
    $P1263 = $P1250."!make"($P1251)
.annotate 'line', 1040
    .return ($P1263)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("162_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1265
    .param pmc param_1266
.annotate 'line', 1044
    .lex "self", param_1265
    .lex "$/", param_1266
.annotate 'line', 1045
    new $P1267, "Undef"
    .lex "$codepoint", $P1267
.annotate 'line', 1046
    find_lex $P1270, "$/"
    unless_null $P1270, vivify_664
    $P1270 = root_new ['parrot';'Hash']
  vivify_664:
    set $P1271, $P1270["integer"]
    unless_null $P1271, vivify_665
    new $P1271, "Undef"
  vivify_665:
    if $P1271, if_1269
.annotate 'line', 1047
    find_lex $P1275, "$/"
    unless_null $P1275, vivify_666
    new $P1275, "Undef"
  vivify_666:
    set $S1276, $P1275
    find_codepoint $I1277, $S1276
    new $P1268, 'Integer'
    set $P1268, $I1277
.annotate 'line', 1046
    goto if_1269_end
  if_1269:
    find_lex $P1272, "$/"
    unless_null $P1272, vivify_667
    $P1272 = root_new ['parrot';'Hash']
  vivify_667:
    set $P1273, $P1272["integer"]
    unless_null $P1273, vivify_668
    new $P1273, "Undef"
  vivify_668:
    $P1274 = $P1273."ast"()
    set $P1268, $P1274
  if_1269_end:
    store_lex "$codepoint", $P1268
.annotate 'line', 1048
    find_lex $P1279, "$codepoint"
    unless_null $P1279, vivify_669
    new $P1279, "Undef"
  vivify_669:
    set $N1280, $P1279
    islt $I1281, $N1280, 0.0
    unless $I1281, if_1278_end
    find_lex $P1282, "$/"
    unless_null $P1282, vivify_670
    new $P1282, "Undef"
  vivify_670:
    $P1283 = $P1282."CURSOR"()
    new $P1284, 'String'
    set $P1284, "Unrecognized character name "
    find_lex $P1285, "$/"
    unless_null $P1285, vivify_671
    new $P1285, "Undef"
  vivify_671:
    concat $P1286, $P1284, $P1285
    $P1283."panic"($P1286)
  if_1278_end:
.annotate 'line', 1049
    find_lex $P1287, "$/"
    find_lex $P1288, "$codepoint"
    unless_null $P1288, vivify_672
    new $P1288, "Undef"
  vivify_672:
    set $I1289, $P1288
    chr $S1290, $I1289
    $P1291 = $P1287."!make"($S1290)
.annotate 'line', 1044
    .return ($P1291)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("163_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1293
    .param pmc param_1294
.annotate 'line', 1052
    .const 'Sub' $P1303 = "164_1303687815.225" 
    capture_lex $P1303
    .lex "self", param_1293
    .lex "$/", param_1294
.annotate 'line', 1053
    new $P1295, "Undef"
    .lex "$str", $P1295
    new $P1296, "String"
    assign $P1296, ""
    store_lex "$str", $P1296
.annotate 'line', 1054
    find_lex $P1298, "$/"
    unless_null $P1298, vivify_673
    $P1298 = root_new ['parrot';'Hash']
  vivify_673:
    set $P1299, $P1298["charname"]
    unless_null $P1299, vivify_674
    new $P1299, "Undef"
  vivify_674:
    defined $I1300, $P1299
    unless $I1300, for_undef_675
    iter $P1297, $P1299
    new $P1310, 'ExceptionHandler'
    set_label $P1310, loop1309_handler
    $P1310."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1310
  loop1309_test:
    unless $P1297, loop1309_done
    shift $P1301, $P1297
  loop1309_redo:
    .const 'Sub' $P1303 = "164_1303687815.225" 
    capture_lex $P1303
    $P1303($P1301)
  loop1309_next:
    goto loop1309_test
  loop1309_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1311, exception, 'type'
    eq $P1311, .CONTROL_LOOP_NEXT, loop1309_next
    eq $P1311, .CONTROL_LOOP_REDO, loop1309_redo
  loop1309_done:
    pop_eh 
  for_undef_675:
.annotate 'line', 1055
    find_lex $P1312, "$/"
    find_lex $P1313, "$str"
    unless_null $P1313, vivify_678
    new $P1313, "Undef"
  vivify_678:
    $P1314 = $P1312."!make"($P1313)
.annotate 'line', 1052
    .return ($P1314)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1302"  :anon :subid("164_1303687815.225") :outer("163_1303687815.225")
    .param pmc param_1304
.annotate 'line', 1054
    .lex "$_", param_1304
    find_lex $P1305, "$str"
    unless_null $P1305, vivify_676
    new $P1305, "Undef"
  vivify_676:
    find_lex $P1306, "$_"
    unless_null $P1306, vivify_677
    new $P1306, "Undef"
  vivify_677:
    $S1307 = $P1306."ast"()
    concat $P1308, $P1305, $S1307
    store_lex "$str", $P1308
    .return ($P1308)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("165_1303687815.225") :outer("120_1303687815.225")
    .param pmc param_1316
    .param pmc param_1317
.annotate 'line', 1058
    .lex "self", param_1316
    .lex "$/", param_1317
.annotate 'line', 1059
    find_lex $P1318, "$/"
    find_lex $P1321, "$/"
    unless_null $P1321, vivify_679
    $P1321 = root_new ['parrot';'Hash']
  vivify_679:
    set $P1322, $P1321["charnames"]
    unless_null $P1322, vivify_680
    new $P1322, "Undef"
  vivify_680:
    if $P1322, if_1320
    find_lex $P1326, "$/"
    unless_null $P1326, vivify_681
    new $P1326, "Undef"
  vivify_681:
    $I1327 = "string_to_int"($P1326, 10)
    chr $S1328, $I1327
    new $P1319, 'String'
    set $P1319, $S1328
    goto if_1320_end
  if_1320:
    find_lex $P1323, "$/"
    unless_null $P1323, vivify_682
    $P1323 = root_new ['parrot';'Hash']
  vivify_682:
    set $P1324, $P1323["charnames"]
    unless_null $P1324, vivify_683
    new $P1324, "Undef"
  vivify_683:
    $P1325 = $P1324."ast"()
    set $P1319, $P1325
  if_1320_end:
    $P1329 = $P1318."!make"($P1319)
.annotate 'line', 1058
    .return ($P1329)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1404"  :subid("167_1303687815.225") :outer("10_1303687815.225")
.annotate 'line', 1072
    .const 'Sub' $P2556 = "233_1303687815.225" 
    capture_lex $P2556
    .const 'Sub' $P2548 = "232_1303687815.225" 
    capture_lex $P2548
    .const 'Sub' $P2495 = "230_1303687815.225" 
    capture_lex $P2495
    .const 'Sub' $P2422 = "227_1303687815.225" 
    capture_lex $P2422
    .const 'Sub' $P2392 = "225_1303687815.225" 
    capture_lex $P2392
    .const 'Sub' $P2387 = "224_1303687815.225" 
    capture_lex $P2387
    .const 'Sub' $P2377 = "223_1303687815.225" 
    capture_lex $P2377
    .const 'Sub' $P2351 = "221_1303687815.225" 
    capture_lex $P2351
    .const 'Sub' $P2342 = "220_1303687815.225" 
    capture_lex $P2342
    .const 'Sub' $P2334 = "219_1303687815.225" 
    capture_lex $P2334
    .const 'Sub' $P2326 = "218_1303687815.225" 
    capture_lex $P2326
    .const 'Sub' $P2322 = "217_1303687815.225" 
    capture_lex $P2322
    .const 'Sub' $P2318 = "216_1303687815.225" 
    capture_lex $P2318
    .const 'Sub' $P2251 = "214_1303687815.225" 
    capture_lex $P2251
    .const 'Sub' $P2155 = "210_1303687815.225" 
    capture_lex $P2155
    .const 'Sub' $P2119 = "207_1303687815.225" 
    capture_lex $P2119
    .const 'Sub' $P2071 = "205_1303687815.225" 
    capture_lex $P2071
    .const 'Sub' $P2058 = "204_1303687815.225" 
    capture_lex $P2058
    .const 'Sub' $P2045 = "203_1303687815.225" 
    capture_lex $P2045
    .const 'Sub' $P2032 = "202_1303687815.225" 
    capture_lex $P2032
    .const 'Sub' $P2019 = "201_1303687815.225" 
    capture_lex $P2019
    .const 'Sub' $P2006 = "200_1303687815.225" 
    capture_lex $P2006
    .const 'Sub' $P1993 = "199_1303687815.225" 
    capture_lex $P1993
    .const 'Sub' $P1980 = "198_1303687815.225" 
    capture_lex $P1980
    .const 'Sub' $P1967 = "197_1303687815.225" 
    capture_lex $P1967
    .const 'Sub' $P1962 = "196_1303687815.225" 
    capture_lex $P1962
    .const 'Sub' $P1958 = "195_1303687815.225" 
    capture_lex $P1958
    .const 'Sub' $P1918 = "193_1303687815.225" 
    capture_lex $P1918
    .const 'Sub' $P1765 = "186_1303687815.225" 
    capture_lex $P1765
    .const 'Sub' $P1752 = "185_1303687815.225" 
    capture_lex $P1752
    .const 'Sub' $P1659 = "180_1303687815.225" 
    capture_lex $P1659
    .const 'Sub' $P1626 = "178_1303687815.225" 
    capture_lex $P1626
    .const 'Sub' $P1611 = "177_1303687815.225" 
    capture_lex $P1611
    .const 'Sub' $P1596 = "176_1303687815.225" 
    capture_lex $P1596
    .const 'Sub' $P1509 = "173_1303687815.225" 
    capture_lex $P1509
    .const 'Sub' $P1450 = "171_1303687815.225" 
    capture_lex $P1450
    .const 'Sub' $P1443 = "170_1303687815.225" 
    capture_lex $P1443
    .const 'Sub' $P1423 = "169_1303687815.225" 
    capture_lex $P1423
    .const 'Sub' $P1406 = "168_1303687815.225" 
    capture_lex $P1406
.annotate 'line', 1132
    .const 'Sub' $P1406 = "168_1303687815.225" 
    newclosure $P1419, $P1406
    .lex "value_type", $P1419
.annotate 'line', 1072
    .lex "$?PACKAGE", $P1420
    .lex "$?CLASS", $P1421
.annotate 'line', 1094
    .const 'Sub' $P1423 = "169_1303687815.225" 
    capture_lex $P1423
    $P1423()
.annotate 'line', 1072
    find_lex $P1437, "$?PACKAGE"
    get_who $P1438, $P1437
    set $P1439, $P1438["$interactive_ctx"]
    unless_null $P1439, vivify_691
    new $P1439, "Undef"
  vivify_691:
    find_lex $P1440, "$?PACKAGE"
    get_who $P1441, $P1440
    set $P1442, $P1441["%interactive_pad"]
    unless_null $P1442, vivify_692
    $P1442 = root_new ['parrot';'Hash']
  vivify_692:
.annotate 'line', 1112
    find_lex $P1508, "value_type"
.annotate 'line', 1728
    .const 'Sub' $P2548 = "232_1303687815.225" 
    newclosure $P2554, $P2548
.annotate 'line', 1072
    .return ($P2554)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post684") :outer("167_1303687815.225")
.annotate 'line', 1072
    .const 'Sub' $P1405 = "167_1303687815.225" 
    .local pmc block
    set block, $P1405
    .const 'Sub' $P2556 = "233_1303687815.225" 
    capture_lex $P2556
    $P2556()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2555"  :anon :subid("233_1303687815.225") :outer("167_1303687815.225")
.annotate 'line', 1072
    nqp_get_sc_object $P2557, "1303687806.753", 3
    .local pmc type_obj
    set type_obj, $P2557
    get_how $P2558, type_obj
    get_hll_global $P2559, "NQPAttribute"
    $P2560 = $P2559."new"("@!stages" :named("name"))
    $P2558."add_attribute"(type_obj, $P2560)
    get_how $P2561, type_obj
    get_hll_global $P2562, "NQPAttribute"
    $P2563 = $P2562."new"("$!parsegrammar" :named("name"))
    $P2561."add_attribute"(type_obj, $P2563)
    get_how $P2564, type_obj
    get_hll_global $P2565, "NQPAttribute"
    $P2566 = $P2565."new"("$!parseactions" :named("name"))
    $P2564."add_attribute"(type_obj, $P2566)
    get_how $P2567, type_obj
    get_hll_global $P2568, "NQPAttribute"
    $P2569 = $P2568."new"("$!astgrammar" :named("name"))
    $P2567."add_attribute"(type_obj, $P2569)
    get_how $P2570, type_obj
    get_hll_global $P2571, "NQPAttribute"
    $P2572 = $P2571."new"("$!commandline_banner" :named("name"))
    $P2570."add_attribute"(type_obj, $P2572)
    get_how $P2573, type_obj
    get_hll_global $P2574, "NQPAttribute"
    $P2575 = $P2574."new"("$!commandline_prompt" :named("name"))
    $P2573."add_attribute"(type_obj, $P2575)
    get_how $P2576, type_obj
    get_hll_global $P2577, "NQPAttribute"
    $P2578 = $P2577."new"("@!cmdoptions" :named("name"))
    $P2576."add_attribute"(type_obj, $P2578)
    get_how $P2579, type_obj
    get_hll_global $P2580, "NQPAttribute"
    $P2581 = $P2580."new"("$!usage" :named("name"))
    $P2579."add_attribute"(type_obj, $P2581)
    get_how $P2582, type_obj
    get_hll_global $P2583, "NQPAttribute"
    $P2584 = $P2583."new"("$!version" :named("name"))
    $P2582."add_attribute"(type_obj, $P2584)
    get_how $P2585, type_obj
    get_hll_global $P2586, "NQPAttribute"
    $P2587 = $P2586."new"("$!compiler_progname" :named("name"))
    $P2585."add_attribute"(type_obj, $P2587)
    get_how $P2588, type_obj
    get_hll_global $P2589, "NQPAttribute"
    $P2590 = $P2589."new"("$!language" :named("name"))
    $P2588."add_attribute"(type_obj, $P2590)
    get_how $P2591, type_obj
    .const 'Sub' $P2592 = "170_1303687815.225" 
    $P2591."add_method"(type_obj, "new", $P2592)
    get_how $P2593, type_obj
    .const 'Sub' $P2594 = "171_1303687815.225" 
    $P2593."add_method"(type_obj, "BUILD", $P2594)
    get_how $P2595, type_obj
    .const 'Sub' $P2596 = "173_1303687815.225" 
    $P2595."add_method"(type_obj, "get_exports", $P2596)
    get_how $P2597, type_obj
    .const 'Sub' $P2598 = "176_1303687815.225" 
    $P2597."add_method"(type_obj, "get_module", $P2598)
    get_how $P2599, type_obj
    .const 'Sub' $P2600 = "177_1303687815.225" 
    $P2599."add_method"(type_obj, "language", $P2600)
    get_how $P2601, type_obj
    .const 'Sub' $P2602 = "178_1303687815.225" 
    $P2601."add_method"(type_obj, "load_module", $P2602)
    get_how $P2603, type_obj
    .const 'Sub' $P2604 = "180_1303687815.225" 
    $P2603."add_method"(type_obj, "import", $P2604)
    get_how $P2605, type_obj
    .const 'Sub' $P2606 = "185_1303687815.225" 
    $P2605."add_method"(type_obj, "autoprint", $P2606)
    get_how $P2607, type_obj
    .const 'Sub' $P2608 = "186_1303687815.225" 
    $P2607."add_method"(type_obj, "interactive", $P2608)
    get_how $P2609, type_obj
    .const 'Sub' $P2610 = "193_1303687815.225" 
    $P2609."add_method"(type_obj, "eval", $P2610)
    get_how $P2611, type_obj
    .const 'Sub' $P2612 = "195_1303687815.225" 
    $P2611."add_method"(type_obj, "ctxsave", $P2612)
    get_how $P2613, type_obj
    .const 'Sub' $P2614 = "196_1303687815.225" 
    $P2613."add_method"(type_obj, "panic", $P2614)
    get_how $P2615, type_obj
    .const 'Sub' $P2616 = "197_1303687815.225" 
    $P2615."add_method"(type_obj, "stages", $P2616)
    get_how $P2617, type_obj
    .const 'Sub' $P2618 = "198_1303687815.225" 
    $P2617."add_method"(type_obj, "parsegrammar", $P2618)
    get_how $P2619, type_obj
    .const 'Sub' $P2620 = "199_1303687815.225" 
    $P2619."add_method"(type_obj, "parseactions", $P2620)
    get_how $P2621, type_obj
    .const 'Sub' $P2622 = "200_1303687815.225" 
    $P2621."add_method"(type_obj, "astgrammar", $P2622)
    get_how $P2623, type_obj
    .const 'Sub' $P2624 = "201_1303687815.225" 
    $P2623."add_method"(type_obj, "commandline_banner", $P2624)
    get_how $P2625, type_obj
    .const 'Sub' $P2626 = "202_1303687815.225" 
    $P2625."add_method"(type_obj, "commandline_prompt", $P2626)
    get_how $P2627, type_obj
    .const 'Sub' $P2628 = "203_1303687815.225" 
    $P2627."add_method"(type_obj, "compiler_progname", $P2628)
    get_how $P2629, type_obj
    .const 'Sub' $P2630 = "204_1303687815.225" 
    $P2629."add_method"(type_obj, "commandline_options", $P2630)
    get_how $P2631, type_obj
    .const 'Sub' $P2632 = "205_1303687815.225" 
    $P2631."add_method"(type_obj, "command_line", $P2632)
    get_how $P2633, type_obj
    .const 'Sub' $P2634 = "207_1303687815.225" 
    $P2633."add_method"(type_obj, "process_args", $P2634)
    get_how $P2635, type_obj
    .const 'Sub' $P2636 = "210_1303687815.225" 
    $P2635."add_method"(type_obj, "evalfiles", $P2636)
    get_how $P2637, type_obj
    .const 'Sub' $P2638 = "214_1303687815.225" 
    $P2637."add_method"(type_obj, "compile", $P2638)
    get_how $P2639, type_obj
    .const 'Sub' $P2640 = "216_1303687815.225" 
    $P2639."add_method"(type_obj, "parse", $P2640)
    get_how $P2641, type_obj
    .const 'Sub' $P2642 = "217_1303687815.225" 
    $P2641."add_method"(type_obj, "past", $P2642)
    get_how $P2643, type_obj
    .const 'Sub' $P2644 = "218_1303687815.225" 
    $P2643."add_method"(type_obj, "post", $P2644)
    get_how $P2645, type_obj
    .const 'Sub' $P2646 = "219_1303687815.225" 
    $P2645."add_method"(type_obj, "pir", $P2646)
    get_how $P2647, type_obj
    .const 'Sub' $P2648 = "220_1303687815.225" 
    $P2647."add_method"(type_obj, "evalpmc", $P2648)
    get_how $P2649, type_obj
    .const 'Sub' $P2650 = "221_1303687815.225" 
    $P2649."add_method"(type_obj, "dumper", $P2650)
    get_how $P2651, type_obj
    .const 'Sub' $P2652 = "223_1303687815.225" 
    $P2651."add_method"(type_obj, "usage", $P2652)
    get_how $P2653, type_obj
    .const 'Sub' $P2654 = "224_1303687815.225" 
    $P2653."add_method"(type_obj, "version", $P2654)
    get_how $P2655, type_obj
    .const 'Sub' $P2656 = "225_1303687815.225" 
    $P2655."add_method"(type_obj, "removestage", $P2656)
    get_how $P2657, type_obj
    .const 'Sub' $P2658 = "227_1303687815.225" 
    $P2657."add_method"(type_obj, "addstage", $P2658)
    get_how $P2659, type_obj
    .const 'Sub' $P2660 = "230_1303687815.225" 
    $P2659."add_method"(type_obj, "parse_name", $P2660)
    get_how $P2661, type_obj
    .const 'Sub' $P2662 = "232_1303687815.225" 
    $P2661."add_method"(type_obj, "lineof", $P2662)
    get_how $P2663, type_obj
    nqp_get_sc_object $P2664, "1303687805.184", 4
    $P2663."set_default_parent"(type_obj, $P2664)
    get_how $P2665, type_obj
    $P2666 = $P2665."compose"(type_obj)
    .return ($P2666)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1407
.annotate 'line', 1132
    .lex "$value", param_1407
.annotate 'line', 1133
    find_lex $P1410, "$value"
    unless_null $P1410, vivify_685
    new $P1410, "Undef"
  vivify_685:
    isa $I1411, $P1410, "NameSpace"
    if $I1411, if_1409
.annotate 'line', 1135
    find_lex $P1415, "$value"
    unless_null $P1415, vivify_686
    new $P1415, "Undef"
  vivify_686:
    isa $I1416, $P1415, "Sub"
    if $I1416, if_1414
    new $P1418, "String"
    assign $P1418, "var"
    set $P1413, $P1418
    goto if_1414_end
  if_1414:
    new $P1417, "String"
    assign $P1417, "sub"
    set $P1413, $P1417
  if_1414_end:
    set $P1408, $P1413
.annotate 'line', 1133
    goto if_1409_end
  if_1409:
    new $P1412, "String"
    assign $P1412, "namespace"
    set $P1408, $P1412
  if_1409_end:
.annotate 'line', 1132
    .return ($P1408)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1422"  :anon :subid("169_1303687815.225") :outer("167_1303687815.225")
.annotate 'line', 1099
    $P1424 = root_new ['parrot';'Hash']
    .lex "%pad_contents", $P1424
.annotate 'line', 1096
    getinterp $P1425
    set $P1426, $P1425["context"]
    unless_null $P1426, vivify_687
    new $P1426, "Undef"
  vivify_687:
    find_lex $P1427, "$?PACKAGE"
    get_who $P1428, $P1427
    set $P1428["$interactive_ctx"], $P1426
    find_lex $P1429, "%pad_contents"
    unless_null $P1429, vivify_688
    $P1429 = root_new ['parrot';'Hash']
  vivify_688:
.annotate 'line', 1101
    find_lex $P1430, "$?PACKAGE"
    get_who $P1431, $P1430
    set $P1432, $P1431["$interactive_ctx"]
    unless_null $P1432, vivify_689
    new $P1432, "Undef"
  vivify_689:
    getattribute $P1433, $P1432, "lex_pad"
    find_lex $P1434, "%pad_contents"
    unless_null $P1434, vivify_690
    $P1434 = root_new ['parrot';'Hash']
  vivify_690:
    copy $P1433, $P1434
.annotate 'line', 1100
    find_lex $P1435, "$?PACKAGE"
    get_who $P1436, $P1435
    set $P1436["%interactive_pad"], $P1433
.annotate 'line', 1094
    .return ($P1433)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("170_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1444
.annotate 'line', 1106
    .lex "self", param_1444
.annotate 'line', 1107
    new $P1445, "Undef"
    .lex "$obj", $P1445
    find_lex $P1446, "self"
    repr_instance_of $P1447, $P1446
    store_lex "$obj", $P1447
.annotate 'line', 1108
    find_lex $P1448, "$obj"
    unless_null $P1448, vivify_693
    new $P1448, "Undef"
  vivify_693:
    $P1448."BUILD"()
    find_lex $P1449, "$obj"
    unless_null $P1449, vivify_694
    new $P1449, "Undef"
  vivify_694:
.annotate 'line', 1106
    .return ($P1449)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("171_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1451
.annotate 'line', 1112
    .const 'Sub' $P1472 = "172_1303687815.225" 
    capture_lex $P1472
    .lex "self", param_1451
.annotate 'line', 1122
    new $P1452, "Undef"
    .lex "$config_hash_idx", $P1452
.annotate 'line', 1126
    $P1453 = root_new ['parrot';'Hash']
    .lex "%config", $P1453
.annotate 'line', 1127
    new $P1454, "Undef"
    .lex "$version", $P1454
.annotate 'line', 1128
    new $P1455, "Undef"
    .lex "$revision", $P1455
.annotate 'line', 1114
    split $P1456, " ", "parse past post pir evalpmc"
    find_lex $P1457, "self"
    find_lex $P1458, "$?CLASS"
    setattribute $P1457, $P1458, "@!stages", $P1456
.annotate 'line', 1117
    split $P1459, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P1460, "self"
    find_lex $P1461, "$?CLASS"
    setattribute $P1460, $P1461, "@!cmdoptions", $P1459
.annotate 'line', 1118
    new $P1462, "String"
    assign $P1462, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P1463, "self"
    find_lex $P1464, "$?CLASS"
    setattribute $P1463, $P1464, "$!usage", $P1462
.annotate 'line', 1119
    find_lex $P1466, "self"
    find_lex $P1467, "$?CLASS"
    getattribute $P1468, $P1466, $P1467, "@!cmdoptions"
    unless_null $P1468, vivify_695
    $P1468 = root_new ['parrot';'ResizablePMCArray']
  vivify_695:
    defined $I1469, $P1468
    unless $I1469, for_undef_696
    iter $P1465, $P1468
    new $P1485, 'ExceptionHandler'
    set_label $P1485, loop1484_handler
    $P1485."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1485
  loop1484_test:
    unless $P1465, loop1484_done
    shift $P1470, $P1465
  loop1484_redo:
    .const 'Sub' $P1472 = "172_1303687815.225" 
    capture_lex $P1472
    $P1472($P1470)
  loop1484_next:
    goto loop1484_test
  loop1484_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1486, exception, 'type'
    eq $P1486, .CONTROL_LOOP_NEXT, loop1484_next
    eq $P1486, .CONTROL_LOOP_REDO, loop1484_redo
  loop1484_done:
    pop_eh 
  for_undef_696:
.annotate 'line', 1122

            .include 'iglobals.pasm'
            $P1487 = box .IGLOBALS_CONFIG_HASH
        
    store_lex "$config_hash_idx", $P1487
.annotate 'line', 1126
    find_lex $P1488, "$config_hash_idx"
    unless_null $P1488, vivify_699
    new $P1488, "Undef"
  vivify_699:
    set $I1489, $P1488
    getinterp $P1490
    set $P1491, $P1490[$I1489]
    unless_null $P1491, vivify_700
    new $P1491, "Undef"
  vivify_700:
    store_lex "%config", $P1491
.annotate 'line', 1127
    find_lex $P1492, "%config"
    unless_null $P1492, vivify_701
    $P1492 = root_new ['parrot';'Hash']
  vivify_701:
    set $P1493, $P1492["VERSION"]
    unless_null $P1493, vivify_702
    new $P1493, "Undef"
  vivify_702:
    store_lex "$version", $P1493
.annotate 'line', 1128
    find_lex $P1495, "%config"
    unless_null $P1495, vivify_703
    $P1495 = root_new ['parrot';'Hash']
  vivify_703:
    set $P1496, $P1495["git_describe"]
    unless_null $P1496, vivify_704
    new $P1496, "Undef"
  vivify_704:
    set $P1494, $P1496
    defined $I1498, $P1494
    if $I1498, default_1497
    new $P1499, "String"
    assign $P1499, "(unknown)"
    set $P1494, $P1499
  default_1497:
    store_lex "$revision", $P1494
.annotate 'line', 1129
    new $P1500, 'String'
    set $P1500, "This compiler is built with NQP, parrot "
    find_lex $P1501, "$version"
    unless_null $P1501, vivify_705
    new $P1501, "Undef"
  vivify_705:
    concat $P1502, $P1500, $P1501
    concat $P1503, $P1502, ", revision "
    find_lex $P1504, "$revision"
    unless_null $P1504, vivify_706
    new $P1504, "Undef"
  vivify_706:
    concat $P1505, $P1503, $P1504
    find_lex $P1506, "self"
    find_lex $P1507, "$?CLASS"
    setattribute $P1506, $P1507, "$!version", $P1505
.annotate 'line', 1112
    .return ($P1505)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1471"  :anon :subid("172_1303687815.225") :outer("171_1303687815.225")
    .param pmc param_1473
.annotate 'line', 1119
    .lex "$_", param_1473
.annotate 'line', 1120
    find_lex $P1474, "self"
    find_lex $P1475, "$?CLASS"
    getattribute $P1476, $P1474, $P1475, "$!usage"
    unless_null $P1476, vivify_697
    new $P1476, "Undef"
  vivify_697:
    new $P1477, 'String'
    set $P1477, "    "
    find_lex $P1478, "$_"
    unless_null $P1478, vivify_698
    new $P1478, "Undef"
  vivify_698:
    concat $P1479, $P1477, $P1478
    concat $P1480, $P1479, "\n"
    concat $P1481, $P1476, $P1480
    find_lex $P1482, "self"
    find_lex $P1483, "$?CLASS"
    setattribute $P1482, $P1483, "$!usage", $P1481
.annotate 'line', 1119
    .return ($P1481)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("173_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1510
    .param pmc param_1511
    .param pmc param_1514 :slurpy
    .param pmc param_1512 :optional :named("tagset")
    .param int has_param_1512 :opt_flag
.annotate 'line', 1138
    .const 'Sub' $P1580 = "175_1303687815.225" 
    capture_lex $P1580
    .const 'Sub' $P1559 = "174_1303687815.225" 
    capture_lex $P1559
    .lex "self", param_1510
    .lex "$module", param_1511
    if has_param_1512, optparam_707
    new $P1513, "Undef"
    set param_1512, $P1513
  optparam_707:
    .lex "$tagset", param_1512
    .lex "@symbols", param_1514
.annotate 'line', 1145
    $P1515 = root_new ['parrot';'Hash']
    .lex "%exports", $P1515
.annotate 'line', 1146
    $P1516 = root_new ['parrot';'Hash']
    .lex "%source", $P1516
.annotate 'line', 1140
    find_lex $P1518, "$module"
    unless_null $P1518, vivify_708
    new $P1518, "Undef"
  vivify_708:
    does $I1519, $P1518, "hash"
    new $P1520, 'Integer'
    set $P1520, $I1519
    isfalse $I1521, $P1520
    unless $I1521, if_1517_end
.annotate 'line', 1141
    find_lex $P1522, "self"
    find_lex $P1523, "$module"
    unless_null $P1523, vivify_709
    new $P1523, "Undef"
  vivify_709:
    $P1524 = $P1522."get_module"($P1523)
    store_lex "$module", $P1524
  if_1517_end:
.annotate 'line', 1144
    find_lex $P1526, "$tagset"
    unless_null $P1526, vivify_710
    new $P1526, "Undef"
  vivify_710:
    set $P1525, $P1526
    defined $I1528, $P1525
    if $I1528, default_1527
    find_lex $P1531, "@symbols"
    unless_null $P1531, vivify_711
    $P1531 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    if $P1531, if_1530
    new $P1533, "String"
    assign $P1533, "DEFAULT"
    set $P1529, $P1533
    goto if_1530_end
  if_1530:
    new $P1532, "String"
    assign $P1532, "ALL"
    set $P1529, $P1532
  if_1530_end:
    set $P1525, $P1529
  default_1527:
    store_lex "$tagset", $P1525
    find_lex $P1534, "%exports"
    unless_null $P1534, vivify_712
    $P1534 = root_new ['parrot';'Hash']
  vivify_712:
.annotate 'line', 1146
    find_lex $P1535, "$tagset"
    unless_null $P1535, vivify_713
    new $P1535, "Undef"
  vivify_713:
    set $S1536, $P1535
    find_lex $P1537, "$module"
    unless_null $P1537, vivify_714
    $P1537 = root_new ['parrot';'Hash']
  vivify_714:
    set $P1538, $P1537["EXPORT"]
    unless_null $P1538, vivify_715
    $P1538 = root_new ['parrot';'Hash']
  vivify_715:
    set $P1539, $P1538[$S1536]
    unless_null $P1539, vivify_716
    new $P1539, "Undef"
  vivify_716:
    store_lex "%source", $P1539
.annotate 'line', 1147
    find_lex $P1541, "%source"
    unless_null $P1541, vivify_717
    $P1541 = root_new ['parrot';'Hash']
  vivify_717:
    defined $I1542, $P1541
    new $P1543, 'Integer'
    set $P1543, $I1542
    isfalse $I1544, $P1543
    unless $I1544, if_1540_end
.annotate 'line', 1148
    find_lex $P1547, "$tagset"
    unless_null $P1547, vivify_718
    new $P1547, "Undef"
  vivify_718:
    set $S1548, $P1547
    iseq $I1549, $S1548, "ALL"
    if $I1549, if_1546
    $P1551 = root_new ['parrot';'Hash']
    set $P1545, $P1551
    goto if_1546_end
  if_1546:
    find_lex $P1550, "$module"
    unless_null $P1550, vivify_719
    new $P1550, "Undef"
  vivify_719:
    set $P1545, $P1550
  if_1546_end:
    store_lex "%source", $P1545
  if_1540_end:
.annotate 'line', 1150
    find_lex $P1553, "@symbols"
    unless_null $P1553, vivify_720
    $P1553 = root_new ['parrot';'ResizablePMCArray']
  vivify_720:
    if $P1553, if_1552
.annotate 'line', 1157
    find_lex $P1576, "%source"
    unless_null $P1576, vivify_721
    $P1576 = root_new ['parrot';'Hash']
  vivify_721:
    defined $I1577, $P1576
    unless $I1577, for_undef_722
    iter $P1575, $P1576
    new $P1593, 'ExceptionHandler'
    set_label $P1593, loop1592_handler
    $P1593."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1593
  loop1592_test:
    unless $P1575, loop1592_done
    shift $P1578, $P1575
  loop1592_redo:
    .const 'Sub' $P1580 = "175_1303687815.225" 
    capture_lex $P1580
    $P1580($P1578)
  loop1592_next:
    goto loop1592_test
  loop1592_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1594, exception, 'type'
    eq $P1594, .CONTROL_LOOP_NEXT, loop1592_next
    eq $P1594, .CONTROL_LOOP_REDO, loop1592_redo
  loop1592_done:
    pop_eh 
  for_undef_722:
.annotate 'line', 1156
    goto if_1552_end
  if_1552:
.annotate 'line', 1151
    find_lex $P1555, "@symbols"
    unless_null $P1555, vivify_729
    $P1555 = root_new ['parrot';'ResizablePMCArray']
  vivify_729:
    defined $I1556, $P1555
    unless $I1556, for_undef_730
    iter $P1554, $P1555
    new $P1573, 'ExceptionHandler'
    set_label $P1573, loop1572_handler
    $P1573."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1573
  loop1572_test:
    unless $P1554, loop1572_done
    shift $P1557, $P1554
  loop1572_redo:
    .const 'Sub' $P1559 = "174_1303687815.225" 
    capture_lex $P1559
    $P1559($P1557)
  loop1572_next:
    goto loop1572_test
  loop1572_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1574, exception, 'type'
    eq $P1574, .CONTROL_LOOP_NEXT, loop1572_next
    eq $P1574, .CONTROL_LOOP_REDO, loop1572_redo
  loop1572_done:
    pop_eh 
  for_undef_730:
  if_1552_end:
.annotate 'line', 1150
    find_lex $P1595, "%exports"
    unless_null $P1595, vivify_739
    $P1595 = root_new ['parrot';'Hash']
  vivify_739:
.annotate 'line', 1138
    .return ($P1595)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1579"  :anon :subid("175_1303687815.225") :outer("173_1303687815.225")
    .param pmc param_1582
.annotate 'line', 1158
    new $P1581, "Undef"
    .lex "$value", $P1581
    .lex "$_", param_1582
    find_lex $P1583, "$_"
    unless_null $P1583, vivify_723
    new $P1583, "Undef"
  vivify_723:
    $P1584 = $P1583."value"()
    store_lex "$value", $P1584
.annotate 'line', 1159
    find_lex $P1585, "$value"
    unless_null $P1585, vivify_724
    new $P1585, "Undef"
  vivify_724:
    find_lex $P1586, "$_"
    unless_null $P1586, vivify_725
    new $P1586, "Undef"
  vivify_725:
    $P1587 = $P1586."key"()
    find_lex $P1588, "$value"
    unless_null $P1588, vivify_726
    new $P1588, "Undef"
  vivify_726:
    $P1589 = "value_type"($P1588)
    find_lex $P1590, "%exports"
    unless_null $P1590, vivify_727
    $P1590 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1590
  vivify_727:
    set $P1591, $P1590[$P1589]
    unless_null $P1591, vivify_728
    $P1591 = root_new ['parrot';'Hash']
    set $P1590[$P1589], $P1591
  vivify_728:
    set $P1591[$P1587], $P1585
.annotate 'line', 1157
    .return ($P1585)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1558"  :anon :subid("174_1303687815.225") :outer("173_1303687815.225")
    .param pmc param_1561
.annotate 'line', 1152
    new $P1560, "Undef"
    .lex "$value", $P1560
    .lex "$_", param_1561
    find_lex $P1562, "$_"
    unless_null $P1562, vivify_731
    new $P1562, "Undef"
  vivify_731:
    set $S1563, $P1562
    find_lex $P1564, "%source"
    unless_null $P1564, vivify_732
    $P1564 = root_new ['parrot';'Hash']
  vivify_732:
    set $P1565, $P1564[$S1563]
    unless_null $P1565, vivify_733
    new $P1565, "Undef"
  vivify_733:
    store_lex "$value", $P1565
.annotate 'line', 1153
    find_lex $P1566, "$value"
    unless_null $P1566, vivify_734
    new $P1566, "Undef"
  vivify_734:
    find_lex $P1567, "$_"
    unless_null $P1567, vivify_735
    new $P1567, "Undef"
  vivify_735:
    find_lex $P1568, "$value"
    unless_null $P1568, vivify_736
    new $P1568, "Undef"
  vivify_736:
    $P1569 = "value_type"($P1568)
    find_lex $P1570, "%exports"
    unless_null $P1570, vivify_737
    $P1570 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1570
  vivify_737:
    set $P1571, $P1570[$P1569]
    unless_null $P1571, vivify_738
    $P1571 = root_new ['parrot';'Hash']
    set $P1570[$P1569], $P1571
  vivify_738:
    set $P1571[$P1567], $P1566
.annotate 'line', 1151
    .return ($P1566)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("176_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1597
    .param pmc param_1598
.annotate 'line', 1165
    .lex "self", param_1597
    .lex "$name", param_1598
.annotate 'line', 1166
    $P1599 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P1599
    find_lex $P1600, "self"
    find_lex $P1601, "$name"
    unless_null $P1601, vivify_740
    new $P1601, "Undef"
  vivify_740:
    $P1602 = $P1600."parse_name"($P1601)
    store_lex "@name", $P1602
.annotate 'line', 1167
    find_lex $P1603, "@name"
    unless_null $P1603, vivify_741
    $P1603 = root_new ['parrot';'ResizablePMCArray']
  vivify_741:
    find_lex $P1604, "self"
    find_lex $P1605, "$?CLASS"
    getattribute $P1606, $P1604, $P1605, "$!language"
    unless_null $P1606, vivify_742
    new $P1606, "Undef"
  vivify_742:
    set $S1607, $P1606
    downcase $S1608, $S1607
    $P1603."unshift"($S1608)
.annotate 'line', 1168
    find_lex $P1609, "@name"
    unless_null $P1609, vivify_743
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_743:
    get_root_namespace $P1610, $P1609
.annotate 'line', 1165
    .return ($P1610)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("177_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1612
    .param pmc param_1613 :optional
    .param int has_param_1613 :opt_flag
.annotate 'line', 1171
    .lex "self", param_1612
    if has_param_1613, optparam_744
    new $P1614, "Undef"
    set param_1613, $P1614
  optparam_744:
    .lex "$name", param_1613
.annotate 'line', 1172
    find_lex $P1616, "$name"
    unless_null $P1616, vivify_745
    new $P1616, "Undef"
  vivify_745:
    unless $P1616, if_1615_end
.annotate 'line', 1173
    find_lex $P1617, "$name"
    unless_null $P1617, vivify_746
    new $P1617, "Undef"
  vivify_746:
    find_lex $P1618, "self"
    find_lex $P1619, "$?CLASS"
    setattribute $P1618, $P1619, "$!language", $P1617
.annotate 'line', 1174
    find_lex $P1620, "$name"
    unless_null $P1620, vivify_747
    new $P1620, "Undef"
  vivify_747:
    set $S1621, $P1620
    find_lex $P1622, "self"
    compreg $S1621, $P1622
  if_1615_end:
.annotate 'line', 1172
    find_lex $P1623, "self"
    find_lex $P1624, "$?CLASS"
    getattribute $P1625, $P1623, $P1624, "$!language"
    unless_null $P1625, vivify_748
    new $P1625, "Undef"
  vivify_748:
.annotate 'line', 1171
    .return ($P1625)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("178_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1627
    .param pmc param_1628
.annotate 'line', 1179
    .const 'Sub' $P1638 = "179_1303687815.225" 
    capture_lex $P1638
    .lex "self", param_1627
    .lex "$name", param_1628
.annotate 'line', 1180
    new $P1629, "Undef"
    .lex "$base", $P1629
.annotate 'line', 1181
    new $P1630, "Undef"
    .lex "$loaded", $P1630
.annotate 'line', 1180
    find_lex $P1631, "self"
    find_lex $P1632, "$name"
    unless_null $P1632, vivify_749
    new $P1632, "Undef"
  vivify_749:
    $P1633 = $P1631."parse_name"($P1632)
    join $S1634, "/", $P1633
    new $P1635, 'String'
    set $P1635, $S1634
    store_lex "$base", $P1635
.annotate 'line', 1181
    new $P1636, "Integer"
    assign $P1636, 0
    store_lex "$loaded", $P1636
.annotate 'line', 1182
    .const 'Sub' $P1638 = "179_1303687815.225" 
    capture_lex $P1638
    $P1638()
.annotate 'line', 1183
    find_lex $P1651, "$loaded"
    unless_null $P1651, vivify_751
    new $P1651, "Undef"
  vivify_751:
    if $P1651, unless_1650_end
    find_lex $P1652, "$base"
    unless_null $P1652, vivify_752
    new $P1652, "Undef"
  vivify_752:
    concat $P1653, $P1652, ".pir"
    set $S1654, $P1653
    load_bytecode $S1654
    new $P1655, "Integer"
    assign $P1655, 1
    store_lex "$loaded", $P1655
  unless_1650_end:
.annotate 'line', 1184
    find_lex $P1656, "self"
    find_lex $P1657, "$name"
    unless_null $P1657, vivify_753
    new $P1657, "Undef"
  vivify_753:
    $P1658 = $P1656."get_module"($P1657)
.annotate 'line', 1179
    .return ($P1658)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1637"  :anon :subid("179_1303687815.225") :outer("178_1303687815.225")
.annotate 'line', 1182
    new $P1645, 'ExceptionHandler'
    set_label $P1645, control_1644
    $P1645."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1645
    find_lex $P1639, "$base"
    unless_null $P1639, vivify_750
    new $P1639, "Undef"
  vivify_750:
    concat $P1640, $P1639, ".pbc"
    set $S1641, $P1640
    load_bytecode $S1641
    new $P1642, "Integer"
    assign $P1642, 1
    store_lex "$loaded", $P1642
    pop_eh 
    goto skip_handler_1643
  control_1644:
    .local pmc exception 
    .get_results (exception) 
    new $P1648, 'Integer'
    set $P1648, 1
    set exception["handled"], $P1648
    set $I1649, exception["handled"]
    ne $I1649, 1, nothandled_1647
  handled_1646:
    .return (exception)
  nothandled_1647:
    rethrow exception
  skip_handler_1643:
    .return ($P1642)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("180_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1660
    .param pmc param_1661
    .param pmc param_1662
.annotate 'line', 1187
    .const 'Sub' $P1668 = "181_1303687815.225" 
    capture_lex $P1668
    .lex "self", param_1660
    .lex "$target", param_1661
    .lex "%exports", param_1662
.annotate 'line', 1188
    find_lex $P1664, "%exports"
    unless_null $P1664, vivify_754
    $P1664 = root_new ['parrot';'Hash']
  vivify_754:
    defined $I1665, $P1664
    unless $I1665, for_undef_755
    iter $P1663, $P1664
    new $P1750, 'ExceptionHandler'
    set_label $P1750, loop1749_handler
    $P1750."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1750
  loop1749_test:
    unless $P1663, loop1749_done
    shift $P1666, $P1663
  loop1749_redo:
    .const 'Sub' $P1668 = "181_1303687815.225" 
    capture_lex $P1668
    $P1668($P1666)
  loop1749_next:
    goto loop1749_test
  loop1749_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1751, exception, 'type'
    eq $P1751, .CONTROL_LOOP_NEXT, loop1749_next
    eq $P1751, .CONTROL_LOOP_REDO, loop1749_redo
  loop1749_done:
    pop_eh 
  for_undef_755:
.annotate 'line', 1187
    .return ($P1663)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1667"  :anon :subid("181_1303687815.225") :outer("180_1303687815.225")
    .param pmc param_1671
.annotate 'line', 1188
    .const 'Sub' $P1738 = "184_1303687815.225" 
    capture_lex $P1738
    .const 'Sub' $P1718 = "183_1303687815.225" 
    capture_lex $P1718
    .const 'Sub' $P1689 = "182_1303687815.225" 
    capture_lex $P1689
.annotate 'line', 1189
    new $P1669, "Undef"
    .lex "$type", $P1669
.annotate 'line', 1190
    $P1670 = root_new ['parrot';'Hash']
    .lex "%items", $P1670
    .lex "$_", param_1671
.annotate 'line', 1189
    find_lex $P1672, "$_"
    unless_null $P1672, vivify_756
    new $P1672, "Undef"
  vivify_756:
    $P1673 = $P1672."key"()
    store_lex "$type", $P1673
.annotate 'line', 1190
    find_lex $P1674, "$_"
    unless_null $P1674, vivify_757
    new $P1674, "Undef"
  vivify_757:
    $P1675 = $P1674."value"()
    store_lex "%items", $P1675
.annotate 'line', 1191
    find_lex $P1678, "self"
    new $P1679, 'String'
    set $P1679, "import_"
    find_lex $P1680, "$type"
    unless_null $P1680, vivify_758
    new $P1680, "Undef"
  vivify_758:
    concat $P1681, $P1679, $P1680
    set $S1682, $P1681
    can $I1683, $P1678, $S1682
    if $I1683, if_1677
.annotate 'line', 1194
    find_lex $P1707, "$target"
    unless_null $P1707, vivify_759
    new $P1707, "Undef"
  vivify_759:
    new $P1708, 'String'
    set $P1708, "add_"
    find_lex $P1709, "$type"
    unless_null $P1709, vivify_760
    new $P1709, "Undef"
  vivify_760:
    concat $P1710, $P1708, $P1709
    set $S1711, $P1710
    can $I1712, $P1707, $S1711
    if $I1712, if_1706
.annotate 'line', 1198
    find_lex $P1734, "%items"
    unless_null $P1734, vivify_761
    $P1734 = root_new ['parrot';'Hash']
  vivify_761:
    defined $I1735, $P1734
    unless $I1735, for_undef_762
    iter $P1733, $P1734
    new $P1747, 'ExceptionHandler'
    set_label $P1747, loop1746_handler
    $P1747."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1747
  loop1746_test:
    unless $P1733, loop1746_done
    shift $P1736, $P1733
  loop1746_redo:
    .const 'Sub' $P1738 = "184_1303687815.225" 
    capture_lex $P1738
    $P1738($P1736)
  loop1746_next:
    goto loop1746_test
  loop1746_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1748, exception, 'type'
    eq $P1748, .CONTROL_LOOP_NEXT, loop1746_next
    eq $P1748, .CONTROL_LOOP_REDO, loop1746_redo
  loop1746_done:
    pop_eh 
  for_undef_762:
.annotate 'line', 1197
    set $P1705, $P1733
.annotate 'line', 1194
    goto if_1706_end
  if_1706:
.annotate 'line', 1195
    find_lex $P1714, "%items"
    unless_null $P1714, vivify_766
    $P1714 = root_new ['parrot';'Hash']
  vivify_766:
    defined $I1715, $P1714
    unless $I1715, for_undef_767
    iter $P1713, $P1714
    new $P1731, 'ExceptionHandler'
    set_label $P1731, loop1730_handler
    $P1731."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1731
  loop1730_test:
    unless $P1713, loop1730_done
    shift $P1716, $P1713
  loop1730_redo:
    .const 'Sub' $P1718 = "183_1303687815.225" 
    capture_lex $P1718
    $P1718($P1716)
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
  for_undef_767:
.annotate 'line', 1194
    set $P1705, $P1713
  if_1706_end:
    set $P1676, $P1705
.annotate 'line', 1191
    goto if_1677_end
  if_1677:
.annotate 'line', 1192
    find_lex $P1685, "%items"
    unless_null $P1685, vivify_772
    $P1685 = root_new ['parrot';'Hash']
  vivify_772:
    defined $I1686, $P1685
    unless $I1686, for_undef_773
    iter $P1684, $P1685
    new $P1703, 'ExceptionHandler'
    set_label $P1703, loop1702_handler
    $P1703."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1703
  loop1702_test:
    unless $P1684, loop1702_done
    shift $P1687, $P1684
  loop1702_redo:
    .const 'Sub' $P1689 = "182_1303687815.225" 
    capture_lex $P1689
    $P1689($P1687)
  loop1702_next:
    goto loop1702_test
  loop1702_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1704, exception, 'type'
    eq $P1704, .CONTROL_LOOP_NEXT, loop1702_next
    eq $P1704, .CONTROL_LOOP_REDO, loop1702_redo
  loop1702_done:
    pop_eh 
  for_undef_773:
.annotate 'line', 1191
    set $P1676, $P1684
  if_1677_end:
.annotate 'line', 1188
    .return ($P1676)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1737"  :anon :subid("184_1303687815.225") :outer("181_1303687815.225")
    .param pmc param_1739
.annotate 'line', 1198
    .lex "$_", param_1739
    find_lex $P1740, "$_"
    unless_null $P1740, vivify_763
    new $P1740, "Undef"
  vivify_763:
    $P1741 = $P1740."value"()
    find_lex $P1742, "$_"
    unless_null $P1742, vivify_764
    new $P1742, "Undef"
  vivify_764:
    $P1743 = $P1742."key"()
    set $S1744, $P1743
    find_lex $P1745, "$target"
    unless_null $P1745, vivify_765
    $P1745 = root_new ['parrot';'Hash']
    store_lex "$target", $P1745
  vivify_765:
    set $P1745[$S1744], $P1741
    .return ($P1741)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1717"  :anon :subid("183_1303687815.225") :outer("181_1303687815.225")
    .param pmc param_1719
.annotate 'line', 1195
    .lex "$_", param_1719
    find_lex $P1720, "$target"
    unless_null $P1720, vivify_768
    new $P1720, "Undef"
  vivify_768:
    find_lex $P1721, "$_"
    unless_null $P1721, vivify_769
    new $P1721, "Undef"
  vivify_769:
    $P1722 = $P1721."key"()
    find_lex $P1723, "$_"
    unless_null $P1723, vivify_770
    new $P1723, "Undef"
  vivify_770:
    $P1724 = $P1723."value"()
    new $P1725, 'String'
    set $P1725, "add_"
    find_lex $P1726, "$type"
    unless_null $P1726, vivify_771
    new $P1726, "Undef"
  vivify_771:
    concat $P1727, $P1725, $P1726
    set $S1728, $P1727
    $P1729 = $P1720.$S1728($P1722, $P1724)
    .return ($P1729)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1688"  :anon :subid("182_1303687815.225") :outer("181_1303687815.225")
    .param pmc param_1690
.annotate 'line', 1192
    .lex "$_", param_1690
    find_lex $P1691, "self"
    find_lex $P1692, "$target"
    unless_null $P1692, vivify_774
    new $P1692, "Undef"
  vivify_774:
    find_lex $P1693, "$_"
    unless_null $P1693, vivify_775
    new $P1693, "Undef"
  vivify_775:
    $P1694 = $P1693."key"()
    find_lex $P1695, "$_"
    unless_null $P1695, vivify_776
    new $P1695, "Undef"
  vivify_776:
    $P1696 = $P1695."value"()
    new $P1697, 'String'
    set $P1697, "import_"
    find_lex $P1698, "$type"
    unless_null $P1698, vivify_777
    new $P1698, "Undef"
  vivify_777:
    concat $P1699, $P1697, $P1698
    set $S1700, $P1699
    $P1701 = $P1691.$S1700($P1692, $P1694, $P1696)
    .return ($P1701)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("185_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1753
    .param pmc param_1754
.annotate 'line', 1203
    .lex "self", param_1753
    .lex "$value", param_1754
.annotate 'line', 1205
    getinterp $P1757
    $P1758 = $P1757."stdout_handle"()
    $N1759 = $P1758."tell"()
    find_dynamic_lex $P1760, "$*AUTOPRINTPOS"
    unless_null $P1760, vivify_778
    get_hll_global $P1760, "$AUTOPRINTPOS"
    unless_null $P1760, vivify_779
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_779:
  vivify_778:
    set $N1761, $P1760
    isgt $I1762, $N1759, $N1761
    unless $I1762, unless_1756
    new $P1755, 'Integer'
    set $P1755, $I1762
    goto unless_1756_end
  unless_1756:
.annotate 'line', 1204
    find_lex $P1763, "$value"
    unless_null $P1763, vivify_780
    new $P1763, "Undef"
  vivify_780:
    set $S1764, $P1763
    say $S1764
  unless_1756_end:
.annotate 'line', 1203
    .return ($P1755)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("186_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1766
    .param pmc param_1767 :slurpy :named
.annotate 'line', 1208
    .const 'Sub' $P1799 = "187_1303687815.225" 
    capture_lex $P1799
    .lex "self", param_1766
    .lex "%adverbs", param_1767
.annotate 'line', 1209
    new $P1768, "Undef"
    .lex "$target", $P1768
.annotate 'line', 1213
    new $P1769, "Undef"
    .lex "$stdin", $P1769
.annotate 'line', 1214
    new $P1770, "Undef"
    .lex "$encoding", $P1770
.annotate 'line', 1219
    new $P1771, "Undef"
    .lex "$save_ctx", $P1771
.annotate 'line', 1209
    find_lex $P1772, "%adverbs"
    unless_null $P1772, vivify_781
    $P1772 = root_new ['parrot';'Hash']
  vivify_781:
    set $P1773, $P1772["target"]
    unless_null $P1773, vivify_782
    new $P1773, "Undef"
  vivify_782:
    set $S1774, $P1773
    downcase $S1775, $S1774
    new $P1776, 'String'
    set $P1776, $S1775
    store_lex "$target", $P1776
.annotate 'line', 1211
    getinterp $P1777
    $P1778 = $P1777."stderr_handle"()
    find_lex $P1779, "self"
    $S1780 = $P1779."commandline_banner"()
    print $P1778, $S1780
.annotate 'line', 1213
    getinterp $P1781
    $P1782 = $P1781."stdin_handle"()
    store_lex "$stdin", $P1782
.annotate 'line', 1214
    find_lex $P1783, "%adverbs"
    unless_null $P1783, vivify_783
    $P1783 = root_new ['parrot';'Hash']
  vivify_783:
    set $P1784, $P1783["encoding"]
    unless_null $P1784, vivify_784
    new $P1784, "Undef"
  vivify_784:
    set $S1785, $P1784
    new $P1786, 'String'
    set $P1786, $S1785
    store_lex "$encoding", $P1786
.annotate 'line', 1215
    find_lex $P1790, "$encoding"
    unless_null $P1790, vivify_785
    new $P1790, "Undef"
  vivify_785:
    if $P1790, if_1789
    set $P1788, $P1790
    goto if_1789_end
  if_1789:
    find_lex $P1791, "$encoding"
    unless_null $P1791, vivify_786
    new $P1791, "Undef"
  vivify_786:
    set $S1792, $P1791
    isne $I1793, $S1792, "fixed_8"
    new $P1788, 'Integer'
    set $P1788, $I1793
  if_1789_end:
    unless $P1788, if_1787_end
.annotate 'line', 1216
    find_lex $P1794, "$stdin"
    unless_null $P1794, vivify_787
    new $P1794, "Undef"
  vivify_787:
    find_lex $P1795, "$encoding"
    unless_null $P1795, vivify_788
    new $P1795, "Undef"
  vivify_788:
    $P1794."encoding"($P1795)
  if_1787_end:
.annotate 'line', 1215
    find_lex $P1796, "$save_ctx"
    unless_null $P1796, vivify_789
    new $P1796, "Undef"
  vivify_789:
.annotate 'line', 1220
    new $P1916, 'ExceptionHandler'
    set_label $P1916, loop1915_handler
    $P1916."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1916
  loop1915_test:
    new $P1797, "Integer"
    assign $P1797, 1
    unless $P1797, loop1915_done
  loop1915_redo:
    .const 'Sub' $P1799 = "187_1303687815.225" 
    capture_lex $P1799
    $P1799()
  loop1915_next:
    goto loop1915_test
  loop1915_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1917, exception, 'type'
    eq $P1917, .CONTROL_LOOP_NEXT, loop1915_next
    eq $P1917, .CONTROL_LOOP_REDO, loop1915_redo
  loop1915_done:
    pop_eh 
.annotate 'line', 1208
    .return ($P1797)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1798"  :anon :subid("187_1303687815.225") :outer("186_1303687815.225")
.annotate 'line', 1220
    .const 'Sub' $P1831 = "188_1303687815.225" 
    capture_lex $P1831
.annotate 'line', 1223
    new $P1800, "Undef"
    .lex "$prompt", $P1800
.annotate 'line', 1224
    new $P1801, "Undef"
    .lex "$code", $P1801
.annotate 'line', 1229
    new $P1802, "Undef"
    .lex "$*AUTOPRINTPOS", $P1802
.annotate 'line', 1230
    new $P1803, "Undef"
    .lex "$*CTXSAVE", $P1803
.annotate 'line', 1231
    new $P1804, "Undef"
    .lex "$*MAIN_CTX", $P1804
.annotate 'line', 1221
    find_lex $P1806, "$stdin"
    unless_null $P1806, vivify_790
    new $P1806, "Undef"
  vivify_790:
    if $P1806, unless_1805_end
    set $I1807, .CONTROL_LOOP_LAST
    die 0, $I1807
  unless_1805_end:
.annotate 'line', 1223
    find_lex $P1809, "self"
    $P1810 = $P1809."commandline_prompt"()
    set $P1808, $P1810
    defined $I1812, $P1808
    if $I1812, default_1811
    new $P1813, "String"
    assign $P1813, "> "
    set $P1808, $P1813
  default_1811:
    store_lex "$prompt", $P1808
.annotate 'line', 1224
    find_lex $P1814, "$stdin"
    unless_null $P1814, vivify_791
    new $P1814, "Undef"
  vivify_791:
    find_lex $P1815, "$prompt"
    unless_null $P1815, vivify_792
    new $P1815, "Undef"
  vivify_792:
    set $S1816, $P1815
    $P1817 = $P1814."readline_interactive"($S1816)
    store_lex "$code", $P1817
.annotate 'line', 1226
    find_lex $P1819, "$code"
    unless_null $P1819, vivify_793
    new $P1819, "Undef"
  vivify_793:
    isnull $I1820, $P1819
    unless $I1820, if_1818_end
    set $I1821, .CONTROL_LOOP_LAST
    die 0, $I1821
  if_1818_end:
.annotate 'line', 1229
    getinterp $P1822
    $P1823 = $P1822."stdout_handle"()
    $P1824 = $P1823."tell"()
    store_lex "$*AUTOPRINTPOS", $P1824
.annotate 'line', 1230
    find_lex $P1825, "self"
    store_lex "$*CTXSAVE", $P1825
    find_lex $P1826, "$*MAIN_CTX"
    unless_null $P1826, vivify_794
    get_hll_global $P1826, "$MAIN_CTX"
    unless_null $P1826, vivify_795
    die "Contextual $*MAIN_CTX not found"
  vivify_795:
  vivify_794:
.annotate 'line', 1233
    find_lex $P1829, "$code"
    unless_null $P1829, vivify_796
    new $P1829, "Undef"
  vivify_796:
    if $P1829, if_1828
    set $P1827, $P1829
    goto if_1828_end
  if_1828:
    .const 'Sub' $P1831 = "188_1303687815.225" 
    capture_lex $P1831
    $P1914 = $P1831()
    set $P1827, $P1914
  if_1828_end:
.annotate 'line', 1220
    .return ($P1827)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1830"  :anon :subid("188_1303687815.225") :outer("187_1303687815.225")
.annotate 'line', 1233
    .const 'Sub' $P1864 = "191_1303687815.225" 
    capture_lex $P1864
    .const 'Sub' $P1837 = "189_1303687815.225" 
    capture_lex $P1837
.annotate 'line', 1235
    new $P1832, "Undef"
    .lex "$output", $P1832
.annotate 'line', 1234
    find_lex $P1833, "$code"
    unless_null $P1833, vivify_797
    new $P1833, "Undef"
  vivify_797:
    concat $P1834, $P1833, "\n"
    store_lex "$code", $P1834
    find_lex $P1835, "$output"
    unless_null $P1835, vivify_798
    new $P1835, "Undef"
  vivify_798:
.annotate 'line', 1236
    .const 'Sub' $P1837 = "189_1303687815.225" 
    capture_lex $P1837
    $P1837()
.annotate 'line', 1243
    find_dynamic_lex $P1861, "$*MAIN_CTX"
    unless_null $P1861, vivify_803
    get_hll_global $P1861, "$MAIN_CTX"
    unless_null $P1861, vivify_804
    die "Contextual $*MAIN_CTX not found"
  vivify_804:
  vivify_803:
    defined $I1862, $P1861
    unless $I1862, if_1860_end
    .const 'Sub' $P1864 = "191_1303687815.225" 
    capture_lex $P1864
    $P1864()
  if_1860_end:
.annotate 'line', 1251
    find_lex $P1893, "$output"
    unless_null $P1893, vivify_814
    new $P1893, "Undef"
  vivify_814:
    isnull $I1894, $P1893
    unless $I1894, if_1892_end
    set $I1895, .CONTROL_LOOP_NEXT
    die 0, $I1895
  if_1892_end:
.annotate 'line', 1253
    find_lex $P1898, "$target"
    unless_null $P1898, vivify_815
    new $P1898, "Undef"
  vivify_815:
    isfalse $I1899, $P1898
    if $I1899, if_1897
.annotate 'line', 1255
    find_lex $P1905, "$target"
    unless_null $P1905, vivify_816
    new $P1905, "Undef"
  vivify_816:
    set $S1906, $P1905
    iseq $I1907, $S1906, "pir"
    if $I1907, if_1904
.annotate 'line', 1258
    find_lex $P1909, "self"
    find_lex $P1910, "$output"
    unless_null $P1910, vivify_817
    new $P1910, "Undef"
  vivify_817:
    find_lex $P1911, "$target"
    unless_null $P1911, vivify_818
    new $P1911, "Undef"
  vivify_818:
    find_lex $P1912, "%adverbs"
    unless_null $P1912, vivify_819
    $P1912 = root_new ['parrot';'Hash']
  vivify_819:
    $P1913 = $P1909."dumper"($P1910, $P1911, $P1912 :flat)
.annotate 'line', 1257
    set $P1903, $P1913
.annotate 'line', 1255
    goto if_1904_end
  if_1904:
.annotate 'line', 1256
    find_lex $P1908, "$output"
    unless_null $P1908, vivify_820
    new $P1908, "Undef"
  vivify_820:
    say $P1908
  if_1904_end:
.annotate 'line', 1255
    set $P1896, $P1903
.annotate 'line', 1253
    goto if_1897_end
  if_1897:
.annotate 'line', 1254
    find_lex $P1900, "self"
    find_lex $P1901, "$output"
    unless_null $P1901, vivify_821
    new $P1901, "Undef"
  vivify_821:
    $P1902 = $P1900."autoprint"($P1901)
.annotate 'line', 1253
    set $P1896, $P1902
  if_1897_end:
.annotate 'line', 1233
    .return ($P1896)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1836"  :anon :subid("189_1303687815.225") :outer("188_1303687815.225")
.annotate 'line', 1236
    .const 'Sub' $P1849 = "190_1303687815.225" 
    capture_lex $P1849
    new $P1845, 'ExceptionHandler'
    set_label $P1845, control_1844
    $P1845."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1845
.annotate 'line', 1237
    find_lex $P1838, "self"
    find_lex $P1839, "$code"
    unless_null $P1839, vivify_799
    new $P1839, "Undef"
  vivify_799:
    find_lex $P1840, "$save_ctx"
    unless_null $P1840, vivify_800
    new $P1840, "Undef"
  vivify_800:
    find_lex $P1841, "%adverbs"
    unless_null $P1841, vivify_801
    $P1841 = root_new ['parrot';'Hash']
  vivify_801:
    $P1842 = $P1838."eval"($P1839, $P1841 :flat, $P1840 :named("outer_ctx"))
    store_lex "$output", $P1842
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1843
  control_1844:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1849 = "190_1303687815.225" 
    newclosure $P1857, $P1849
    $P1857(exception)
    new $P1858, 'Integer'
    set $P1858, 1
    set exception["handled"], $P1858
    set $I1859, exception["handled"]
    ne $I1859, 1, nothandled_1847
  handled_1846:
    .return (exception)
  nothandled_1847:
    rethrow exception
  skip_handler_1843:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1848"  :anon :subid("190_1303687815.225") :outer("189_1303687815.225")
    .param pmc param_1850
.annotate 'line', 1238
    .lex "$_", param_1850
    find_lex $P1851, "$_"
    .lex "$!", $P1851
.annotate 'line', 1239
    find_lex $P1852, "$!"
    unless_null $P1852, vivify_802
    new $P1852, "Undef"
  vivify_802:
    set $S1853, $P1852
    new $P1854, 'String'
    set $P1854, $S1853
    concat $P1855, $P1854, "\n"
    print $P1855
.annotate 'line', 1240
    set $I1856, .CONTROL_LOOP_NEXT
    die 0, $I1856
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1863"  :anon :subid("191_1303687815.225") :outer("188_1303687815.225")
.annotate 'line', 1243
    .const 'Sub' $P1877 = "192_1303687815.225" 
    capture_lex $P1877
    find_lex $P1865, "$?PACKAGE"
    get_who $P1866, $P1865
    set $P1867, $P1866["$interactive_ctx"]
    unless_null $P1867, vivify_805
    new $P1867, "Undef"
  vivify_805:
    find_lex $P1868, "$?PACKAGE"
    get_who $P1869, $P1868
    set $P1870, $P1869["%interactive_pad"]
    unless_null $P1870, vivify_806
    $P1870 = root_new ['parrot';'Hash']
  vivify_806:
.annotate 'line', 1246
    find_dynamic_lex $P1872, "$*MAIN_CTX"
    unless_null $P1872, vivify_807
    get_hll_global $P1872, "$MAIN_CTX"
    unless_null $P1872, vivify_808
    die "Contextual $*MAIN_CTX not found"
  vivify_808:
  vivify_807:
    $P1873 = $P1872."lexpad_full"()
    defined $I1874, $P1873
    unless $I1874, for_undef_809
    iter $P1871, $P1873
    new $P1887, 'ExceptionHandler'
    set_label $P1887, loop1886_handler
    $P1887."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1887
  loop1886_test:
    unless $P1871, loop1886_done
    shift $P1875, $P1871
  loop1886_redo:
    .const 'Sub' $P1877 = "192_1303687815.225" 
    capture_lex $P1877
    $P1877($P1875)
  loop1886_next:
    goto loop1886_test
  loop1886_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1888, exception, 'type'
    eq $P1888, .CONTROL_LOOP_NEXT, loop1886_next
    eq $P1888, .CONTROL_LOOP_REDO, loop1886_redo
  loop1886_done:
    pop_eh 
  for_undef_809:
.annotate 'line', 1249
    find_lex $P1889, "$?PACKAGE"
    get_who $P1890, $P1889
    set $P1891, $P1890["$interactive_ctx"]
    unless_null $P1891, vivify_813
    new $P1891, "Undef"
  vivify_813:
    store_lex "$save_ctx", $P1891
.annotate 'line', 1243
    .return ($P1891)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1876"  :anon :subid("192_1303687815.225") :outer("191_1303687815.225")
    .param pmc param_1878
.annotate 'line', 1246
    .lex "$_", param_1878
.annotate 'line', 1247
    find_lex $P1879, "$_"
    unless_null $P1879, vivify_810
    new $P1879, "Undef"
  vivify_810:
    $P1880 = $P1879."value"()
    find_lex $P1881, "$_"
    unless_null $P1881, vivify_811
    new $P1881, "Undef"
  vivify_811:
    $P1882 = $P1881."key"()
    find_lex $P1883, "$?PACKAGE"
    get_who $P1884, $P1883
    set $P1885, $P1884["%interactive_pad"]
    unless_null $P1885, vivify_812
    $P1885 = root_new ['parrot';'Hash']
    set $P1884["%interactive_pad"], $P1885
  vivify_812:
    set $P1885[$P1882], $P1880
.annotate 'line', 1246
    .return ($P1880)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("193_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1919
    .param pmc param_1920
    .param pmc param_1921 :slurpy
    .param pmc param_1922 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1941 = "194_1303687815.225" 
    capture_lex $P1941
    .lex "self", param_1919
    .lex "$code", param_1920
    .lex "@args", param_1921
    .lex "%adverbs", param_1922
.annotate 'line', 1265
    new $P1923, "Undef"
    .lex "$output", $P1923
.annotate 'line', 1264
    find_lex $P1924, "$output"
    unless_null $P1924, vivify_822
    new $P1924, "Undef"
  vivify_822:
.annotate 'line', 1266
    find_lex $P1925, "self"
    find_lex $P1926, "$code"
    unless_null $P1926, vivify_823
    new $P1926, "Undef"
  vivify_823:
    find_lex $P1927, "%adverbs"
    unless_null $P1927, vivify_824
    $P1927 = root_new ['parrot';'Hash']
  vivify_824:
    $P1928 = $P1925."compile"($P1926, $P1927 :flat)
    store_lex "$output", $P1928
.annotate 'line', 1268
    find_lex $P1932, "$output"
    unless_null $P1932, vivify_825
    new $P1932, "Undef"
  vivify_825:
    isa $I1933, $P1932, "String"
    new $P1934, 'Integer'
    set $P1934, $I1933
    isfalse $I1935, $P1934
    if $I1935, if_1931
    new $P1930, 'Integer'
    set $P1930, $I1935
    goto if_1931_end
  if_1931:
.annotate 'line', 1269
    find_lex $P1936, "%adverbs"
    unless_null $P1936, vivify_826
    $P1936 = root_new ['parrot';'Hash']
  vivify_826:
    set $P1937, $P1936["target"]
    unless_null $P1937, vivify_827
    new $P1937, "Undef"
  vivify_827:
    set $S1938, $P1937
    iseq $I1939, $S1938, ""
    new $P1930, 'Integer'
    set $P1930, $I1939
  if_1931_end:
    unless $P1930, if_1929_end
    .const 'Sub' $P1941 = "194_1303687815.225" 
    capture_lex $P1941
    $P1941()
  if_1929_end:
.annotate 'line', 1268
    find_lex $P1957, "$output"
    unless_null $P1957, vivify_838
    new $P1957, "Undef"
  vivify_838:
.annotate 'line', 1264
    .return ($P1957)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1940"  :anon :subid("194_1303687815.225") :outer("193_1303687815.225")
.annotate 'line', 1270
    new $P1942, "Undef"
    .lex "$outer_ctx", $P1942
    find_lex $P1943, "%adverbs"
    unless_null $P1943, vivify_828
    $P1943 = root_new ['parrot';'Hash']
  vivify_828:
    set $P1944, $P1943["outer_ctx"]
    unless_null $P1944, vivify_829
    new $P1944, "Undef"
  vivify_829:
    store_lex "$outer_ctx", $P1944
.annotate 'line', 1271
    find_lex $P1946, "$outer_ctx"
    unless_null $P1946, vivify_830
    new $P1946, "Undef"
  vivify_830:
    defined $I1947, $P1946
    unless $I1947, if_1945_end
.annotate 'line', 1272
    find_lex $P1948, "$output"
    unless_null $P1948, vivify_831
    $P1948 = root_new ['parrot';'ResizablePMCArray']
  vivify_831:
    set $P1949, $P1948[0]
    unless_null $P1949, vivify_832
    new $P1949, "Undef"
  vivify_832:
    find_lex $P1950, "$outer_ctx"
    unless_null $P1950, vivify_833
    new $P1950, "Undef"
  vivify_833:
    $P1949."set_outer_ctx"($P1950)
  if_1945_end:
.annotate 'line', 1275
    find_lex $P1951, "%adverbs"
    unless_null $P1951, vivify_834
    $P1951 = root_new ['parrot';'Hash']
  vivify_834:
    set $P1952, $P1951["trace"]
    unless_null $P1952, vivify_835
    new $P1952, "Undef"
  vivify_835:
    set $I1953, $P1952
    trace $I1953
.annotate 'line', 1276
    find_lex $P1954, "$output"
    unless_null $P1954, vivify_836
    new $P1954, "Undef"
  vivify_836:
    find_lex $P1955, "@args"
    unless_null $P1955, vivify_837
    $P1955 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    $P1956 = $P1954($P1955 :flat)
    store_lex "$output", $P1956
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("195_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1959
.annotate 'line', 1283
    .lex "self", param_1959
.annotate 'line', 1285

                $P0 = getinterp
                $P1960 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1960
.annotate 'line', 1289
    new $P1961, "Integer"
    assign $P1961, 0
    store_dynamic_lex "$*CTXSAVE", $P1961
.annotate 'line', 1283
    .return ($P1961)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("196_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1963
    .param pmc param_1964 :slurpy
.annotate 'line', 1292
    .lex "self", param_1963
    .lex "@args", param_1964
.annotate 'line', 1293
    find_lex $P1965, "@args"
    unless_null $P1965, vivify_839
    $P1965 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    join $S1966, "", $P1965
    die $S1966
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("197_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1968
    .param pmc param_1969 :optional
    .param int has_param_1969 :opt_flag
.annotate 'line', 1296
    .lex "self", param_1968
    if has_param_1969, optparam_840
    $P1970 = root_new ['parrot';'ResizablePMCArray']
    set param_1969, $P1970
  optparam_840:
    .lex "@value", param_1969
.annotate 'line', 1297
    find_lex $P1972, "@value"
    unless_null $P1972, vivify_841
    $P1972 = root_new ['parrot';'ResizablePMCArray']
  vivify_841:
    set $N1973, $P1972
    unless $N1973, if_1971_end
.annotate 'line', 1298
    find_lex $P1974, "@value"
    unless_null $P1974, vivify_842
    $P1974 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    find_lex $P1975, "self"
    find_lex $P1976, "$?CLASS"
    setattribute $P1975, $P1976, "@!stages", $P1974
  if_1971_end:
.annotate 'line', 1297
    find_lex $P1977, "self"
    find_lex $P1978, "$?CLASS"
    getattribute $P1979, $P1977, $P1978, "@!stages"
    unless_null $P1979, vivify_843
    $P1979 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
.annotate 'line', 1296
    .return ($P1979)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("198_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1981
    .param pmc param_1982 :slurpy
.annotate 'line', 1303
    .lex "self", param_1981
    .lex "@value", param_1982
.annotate 'line', 1304
    find_lex $P1984, "@value"
    unless_null $P1984, vivify_844
    $P1984 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $N1985, $P1984
    unless $N1985, if_1983_end
.annotate 'line', 1305
    find_lex $P1986, "@value"
    unless_null $P1986, vivify_845
    $P1986 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P1987, $P1986[0]
    unless_null $P1987, vivify_846
    new $P1987, "Undef"
  vivify_846:
    find_lex $P1988, "self"
    find_lex $P1989, "$?CLASS"
    setattribute $P1988, $P1989, "$!parsegrammar", $P1987
  if_1983_end:
.annotate 'line', 1304
    find_lex $P1990, "self"
    find_lex $P1991, "$?CLASS"
    getattribute $P1992, $P1990, $P1991, "$!parsegrammar"
    unless_null $P1992, vivify_847
    new $P1992, "Undef"
  vivify_847:
.annotate 'line', 1303
    .return ($P1992)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("199_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_1994
    .param pmc param_1995 :slurpy
.annotate 'line', 1310
    .lex "self", param_1994
    .lex "@value", param_1995
.annotate 'line', 1311
    find_lex $P1997, "@value"
    unless_null $P1997, vivify_848
    $P1997 = root_new ['parrot';'ResizablePMCArray']
  vivify_848:
    set $N1998, $P1997
    unless $N1998, if_1996_end
.annotate 'line', 1312
    find_lex $P1999, "@value"
    unless_null $P1999, vivify_849
    $P1999 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    set $P2000, $P1999[0]
    unless_null $P2000, vivify_850
    new $P2000, "Undef"
  vivify_850:
    find_lex $P2001, "self"
    find_lex $P2002, "$?CLASS"
    setattribute $P2001, $P2002, "$!parseactions", $P2000
  if_1996_end:
.annotate 'line', 1311
    find_lex $P2003, "self"
    find_lex $P2004, "$?CLASS"
    getattribute $P2005, $P2003, $P2004, "$!parseactions"
    unless_null $P2005, vivify_851
    new $P2005, "Undef"
  vivify_851:
.annotate 'line', 1310
    .return ($P2005)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("200_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2007
    .param pmc param_2008 :slurpy
.annotate 'line', 1317
    .lex "self", param_2007
    .lex "@value", param_2008
.annotate 'line', 1318
    find_lex $P2010, "@value"
    unless_null $P2010, vivify_852
    $P2010 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    set $N2011, $P2010
    unless $N2011, if_2009_end
.annotate 'line', 1319
    find_lex $P2012, "@value"
    unless_null $P2012, vivify_853
    $P2012 = root_new ['parrot';'ResizablePMCArray']
  vivify_853:
    set $P2013, $P2012[0]
    unless_null $P2013, vivify_854
    new $P2013, "Undef"
  vivify_854:
    find_lex $P2014, "self"
    find_lex $P2015, "$?CLASS"
    setattribute $P2014, $P2015, "$!astgrammar", $P2013
  if_2009_end:
.annotate 'line', 1318
    find_lex $P2016, "self"
    find_lex $P2017, "$?CLASS"
    getattribute $P2018, $P2016, $P2017, "$!astgrammar"
    unless_null $P2018, vivify_855
    new $P2018, "Undef"
  vivify_855:
.annotate 'line', 1317
    .return ($P2018)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("201_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2020
    .param pmc param_2021 :optional
    .param int has_param_2021 :opt_flag
.annotate 'line', 1324
    .lex "self", param_2020
    if has_param_2021, optparam_856
    new $P2022, "Undef"
    set param_2021, $P2022
  optparam_856:
    .lex "$value", param_2021
.annotate 'line', 1325
    find_lex $P2024, "$value"
    unless_null $P2024, vivify_857
    new $P2024, "Undef"
  vivify_857:
    defined $I2025, $P2024
    unless $I2025, if_2023_end
.annotate 'line', 1326
    find_lex $P2026, "$value"
    unless_null $P2026, vivify_858
    new $P2026, "Undef"
  vivify_858:
    find_lex $P2027, "self"
    find_lex $P2028, "$?CLASS"
    setattribute $P2027, $P2028, "$!commandline_banner", $P2026
  if_2023_end:
.annotate 'line', 1325
    find_lex $P2029, "self"
    find_lex $P2030, "$?CLASS"
    getattribute $P2031, $P2029, $P2030, "$!commandline_banner"
    unless_null $P2031, vivify_859
    new $P2031, "Undef"
  vivify_859:
.annotate 'line', 1324
    .return ($P2031)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("202_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2033
    .param pmc param_2034 :optional
    .param int has_param_2034 :opt_flag
.annotate 'line', 1331
    .lex "self", param_2033
    if has_param_2034, optparam_860
    new $P2035, "Undef"
    set param_2034, $P2035
  optparam_860:
    .lex "$value", param_2034
.annotate 'line', 1332
    find_lex $P2037, "$value"
    unless_null $P2037, vivify_861
    new $P2037, "Undef"
  vivify_861:
    defined $I2038, $P2037
    unless $I2038, if_2036_end
.annotate 'line', 1333
    find_lex $P2039, "$value"
    unless_null $P2039, vivify_862
    new $P2039, "Undef"
  vivify_862:
    find_lex $P2040, "self"
    find_lex $P2041, "$?CLASS"
    setattribute $P2040, $P2041, "$!commandline_prompt", $P2039
  if_2036_end:
.annotate 'line', 1332
    find_lex $P2042, "self"
    find_lex $P2043, "$?CLASS"
    getattribute $P2044, $P2042, $P2043, "$!commandline_prompt"
    unless_null $P2044, vivify_863
    new $P2044, "Undef"
  vivify_863:
.annotate 'line', 1331
    .return ($P2044)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("203_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2046
    .param pmc param_2047 :optional
    .param int has_param_2047 :opt_flag
.annotate 'line', 1338
    .lex "self", param_2046
    if has_param_2047, optparam_864
    new $P2048, "Undef"
    set param_2047, $P2048
  optparam_864:
    .lex "$value", param_2047
.annotate 'line', 1339
    find_lex $P2050, "$value"
    unless_null $P2050, vivify_865
    new $P2050, "Undef"
  vivify_865:
    defined $I2051, $P2050
    unless $I2051, if_2049_end
.annotate 'line', 1340
    find_lex $P2052, "$value"
    unless_null $P2052, vivify_866
    new $P2052, "Undef"
  vivify_866:
    find_lex $P2053, "self"
    find_lex $P2054, "$?CLASS"
    setattribute $P2053, $P2054, "$!compiler_progname", $P2052
  if_2049_end:
.annotate 'line', 1339
    find_lex $P2055, "self"
    find_lex $P2056, "$?CLASS"
    getattribute $P2057, $P2055, $P2056, "$!compiler_progname"
    unless_null $P2057, vivify_867
    new $P2057, "Undef"
  vivify_867:
.annotate 'line', 1338
    .return ($P2057)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("204_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2059
    .param pmc param_2060 :optional
    .param int has_param_2060 :opt_flag
.annotate 'line', 1345
    .lex "self", param_2059
    if has_param_2060, optparam_868
    $P2061 = root_new ['parrot';'ResizablePMCArray']
    set param_2060, $P2061
  optparam_868:
    .lex "@value", param_2060
.annotate 'line', 1346
    find_lex $P2063, "@value"
    unless_null $P2063, vivify_869
    $P2063 = root_new ['parrot';'ResizablePMCArray']
  vivify_869:
    set $N2064, $P2063
    unless $N2064, if_2062_end
.annotate 'line', 1347
    find_lex $P2065, "@value"
    unless_null $P2065, vivify_870
    $P2065 = root_new ['parrot';'ResizablePMCArray']
  vivify_870:
    find_lex $P2066, "self"
    find_lex $P2067, "$?CLASS"
    setattribute $P2066, $P2067, "@!cmdoptions", $P2065
  if_2062_end:
.annotate 'line', 1346
    find_lex $P2068, "self"
    find_lex $P2069, "$?CLASS"
    getattribute $P2070, $P2068, $P2069, "@!cmdoptions"
    unless_null $P2070, vivify_871
    $P2070 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
.annotate 'line', 1345
    .return ($P2070)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("205_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2072
    .param pmc param_2073
    .param pmc param_2074 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P2100 = "206_1303687815.225" 
    capture_lex $P2100
    .lex "self", param_2072
    .lex "@args", param_2073
    .lex "%adverbs", param_2074
.annotate 'line', 1365
    new $P2075, "Undef"
    .lex "$program-name", $P2075
.annotate 'line', 1366
    new $P2076, "Undef"
    .lex "$res", $P2076
.annotate 'line', 1367
    $P2077 = root_new ['parrot';'Hash']
    .lex "%opts", $P2077
.annotate 'line', 1368
    $P2078 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P2078
.annotate 'line', 1361
    find_lex $P2080, "@args"
    unless_null $P2080, vivify_872
    $P2080 = root_new ['parrot';'ResizablePMCArray']
  vivify_872:
    set $P2081, $P2080[2]
    unless_null $P2081, vivify_873
    new $P2081, "Undef"
  vivify_873:
    set $S2082, $P2081
    index $I2083, $S2082, "@INC"
    set $N2084, $I2083
    isge $I2085, $N2084, 0.0
    unless $I2085, if_2079_end
.annotate 'line', 1362
    exit 0
  if_2079_end:
.annotate 'line', 1365
    find_lex $P2086, "@args"
    unless_null $P2086, vivify_874
    $P2086 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
    set $P2087, $P2086[0]
    unless_null $P2087, vivify_875
    new $P2087, "Undef"
  vivify_875:
    store_lex "$program-name", $P2087
.annotate 'line', 1366
    find_lex $P2088, "self"
    find_lex $P2089, "@args"
    unless_null $P2089, vivify_876
    $P2089 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    $P2090 = $P2088."process_args"($P2089)
    store_lex "$res", $P2090
.annotate 'line', 1367
    find_lex $P2091, "$res"
    unless_null $P2091, vivify_877
    new $P2091, "Undef"
  vivify_877:
    $P2092 = $P2091."options"()
    store_lex "%opts", $P2092
.annotate 'line', 1368
    find_lex $P2093, "$res"
    unless_null $P2093, vivify_878
    new $P2093, "Undef"
  vivify_878:
    $P2094 = $P2093."arguments"()
    store_lex "@a", $P2094
.annotate 'line', 1370
    find_lex $P2096, "%opts"
    unless_null $P2096, vivify_879
    $P2096 = root_new ['parrot';'Hash']
  vivify_879:
    defined $I2097, $P2096
    unless $I2097, for_undef_880
    iter $P2095, $P2096
    new $P2108, 'ExceptionHandler'
    set_label $P2108, loop2107_handler
    $P2108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2108
  loop2107_test:
    unless $P2095, loop2107_done
    shift $P2098, $P2095
  loop2107_redo:
    .const 'Sub' $P2100 = "206_1303687815.225" 
    capture_lex $P2100
    $P2100($P2098)
  loop2107_next:
    goto loop2107_test
  loop2107_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2109, exception, 'type'
    eq $P2109, .CONTROL_LOOP_NEXT, loop2107_next
    eq $P2109, .CONTROL_LOOP_REDO, loop2107_redo
  loop2107_done:
    pop_eh 
  for_undef_880:
.annotate 'line', 1373
    find_lex $P2111, "%adverbs"
    unless_null $P2111, vivify_886
    $P2111 = root_new ['parrot';'Hash']
  vivify_886:
    set $P2112, $P2111["help"]
    unless_null $P2112, vivify_887
    new $P2112, "Undef"
  vivify_887:
    unless $P2112, if_2110_end
    find_lex $P2113, "self"
    find_lex $P2114, "$program-name"
    unless_null $P2114, vivify_888
    new $P2114, "Undef"
  vivify_888:
    $P2113."usage"($P2114)
  if_2110_end:
.annotate 'line', 1374
    find_lex $P2116, "%adverbs"
    unless_null $P2116, vivify_889
    $P2116 = root_new ['parrot';'Hash']
  vivify_889:
    set $P2117, $P2116["version"]
    unless_null $P2117, vivify_890
    new $P2117, "Undef"
  vivify_890:
    unless $P2117, if_2115_end
    find_lex $P2118, "self"
    $P2118."version"()
  if_2115_end:
.annotate 'line', 1376

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
        
.annotate 'line', 1352
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2099"  :anon :subid("206_1303687815.225") :outer("205_1303687815.225")
    .param pmc param_2101
.annotate 'line', 1370
    .lex "$k", param_2101
.annotate 'line', 1371
    find_lex $P2102, "$k"
    unless_null $P2102, vivify_881
    new $P2102, "Undef"
  vivify_881:
    find_lex $P2103, "%opts"
    unless_null $P2103, vivify_882
    $P2103 = root_new ['parrot';'Hash']
  vivify_882:
    set $P2104, $P2103[$P2102]
    unless_null $P2104, vivify_883
    new $P2104, "Undef"
  vivify_883:
    find_lex $P2105, "$k"
    unless_null $P2105, vivify_884
    new $P2105, "Undef"
  vivify_884:
    find_lex $P2106, "%adverbs"
    unless_null $P2106, vivify_885
    $P2106 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P2106
  vivify_885:
    set $P2106[$P2105], $P2104
.annotate 'line', 1370
    .return ($P2104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("207_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2120
    .param pmc param_2121
.annotate 'line', 1470
    .const 'Sub' $P2136 = "208_1303687815.225" 
    capture_lex $P2136
    .lex "self", param_2120
    .lex "@args", param_2121
.annotate 'line', 1474
    new $P2122, "Undef"
    .lex "$p", $P2122
.annotate 'line', 1477
    new $P2123, "Undef"
    .lex "$res", $P2123
.annotate 'line', 1472
    find_lex $P2124, "self"
    find_lex $P2125, "@args"
    unless_null $P2125, vivify_891
    $P2125 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    $P2126 = $P2125."shift"()
    $P2124."compiler_progname"($P2126)
.annotate 'line', 1474
    get_hll_global $P2127, ["HLL";"CommandLine"], "Parser"
    find_lex $P2128, "self"
    find_lex $P2129, "$?CLASS"
    getattribute $P2130, $P2128, $P2129, "@!cmdoptions"
    unless_null $P2130, vivify_892
    $P2130 = root_new ['parrot';'ResizablePMCArray']
  vivify_892:
    $P2131 = $P2127."new"($P2130)
    store_lex "$p", $P2131
.annotate 'line', 1475
    find_lex $P2132, "$p"
    unless_null $P2132, vivify_893
    new $P2132, "Undef"
  vivify_893:
    $P2132."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P2133, "$p"
    unless_null $P2133, vivify_894
    new $P2133, "Undef"
  vivify_894:
    $P2133."stop-after-first-arg"()
    find_lex $P2134, "$res"
    unless_null $P2134, vivify_895
    new $P2134, "Undef"
  vivify_895:
.annotate 'line', 1478
    .const 'Sub' $P2136 = "208_1303687815.225" 
    capture_lex $P2136
    $P2136()
    find_lex $P2154, "$res"
    unless_null $P2154, vivify_899
    new $P2154, "Undef"
  vivify_899:
.annotate 'line', 1470
    .return ($P2154)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2135"  :anon :subid("208_1303687815.225") :outer("207_1303687815.225")
.annotate 'line', 1478
    .const 'Sub' $P2146 = "209_1303687815.225" 
    capture_lex $P2146
    new $P2142, 'ExceptionHandler'
    set_label $P2142, control_2141
    $P2142."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2142
.annotate 'line', 1479
    find_lex $P2137, "$p"
    unless_null $P2137, vivify_896
    new $P2137, "Undef"
  vivify_896:
    find_lex $P2138, "@args"
    unless_null $P2138, vivify_897
    $P2138 = root_new ['parrot';'ResizablePMCArray']
  vivify_897:
    $P2139 = $P2137."parse"($P2138)
    store_lex "$res", $P2139
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_2140
  control_2141:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2146 = "209_1303687815.225" 
    newclosure $P2151, $P2146
    $P2151(exception)
    new $P2152, 'Integer'
    set $P2152, 1
    set exception["handled"], $P2152
    set $I2153, exception["handled"]
    ne $I2153, 1, nothandled_2144
  handled_2143:
    .return (exception)
  nothandled_2144:
    rethrow exception
  skip_handler_2140:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2145"  :anon :subid("209_1303687815.225") :outer("208_1303687815.225")
    .param pmc param_2147
.annotate 'line', 1480
    .lex "$_", param_2147
    find_lex $P2148, "$_"
    .lex "$!", $P2148
.annotate 'line', 1481
    find_lex $P2149, "$_"
    unless_null $P2149, vivify_898
    new $P2149, "Undef"
  vivify_898:
    say $P2149
.annotate 'line', 1482
    find_lex $P2150, "self"
    $P2150."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("210_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2158
    .param pmc param_2159
    .param pmc param_2160 :slurpy
    .param pmc param_2161 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P2186 = "211_1303687815.225" 
    capture_lex $P2186
    new $P2157, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2157, control_2156
    push_eh $P2157
    .lex "self", param_2158
    .lex "$files", param_2159
    .lex "@args", param_2160
    .lex "%adverbs", param_2161
.annotate 'line', 1490
    new $P2162, "Undef"
    .lex "$target", $P2162
.annotate 'line', 1491
    new $P2163, "Undef"
    .lex "$encoding", $P2163
.annotate 'line', 1492
    $P2164 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P2164
.annotate 'line', 1493
    $P2165 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P2165
.annotate 'line', 1490
    find_lex $P2166, "%adverbs"
    unless_null $P2166, vivify_900
    $P2166 = root_new ['parrot';'Hash']
  vivify_900:
    set $P2167, $P2166["target"]
    unless_null $P2167, vivify_901
    new $P2167, "Undef"
  vivify_901:
    set $S2168, $P2167
    downcase $S2169, $S2168
    new $P2170, 'String'
    set $P2170, $S2169
    store_lex "$target", $P2170
.annotate 'line', 1491
    find_lex $P2171, "%adverbs"
    unless_null $P2171, vivify_902
    $P2171 = root_new ['parrot';'Hash']
  vivify_902:
    set $P2172, $P2171["encoding"]
    unless_null $P2172, vivify_903
    new $P2172, "Undef"
  vivify_903:
    store_lex "$encoding", $P2172
.annotate 'line', 1492
    find_lex $P2175, "$files"
    unless_null $P2175, vivify_904
    new $P2175, "Undef"
  vivify_904:
    does $I2176, $P2175, "array"
    if $I2176, if_2174
    find_lex $P2178, "$files"
    unless_null $P2178, vivify_905
    new $P2178, "Undef"
  vivify_905:
    new $P2179, "ResizablePMCArray"
    push $P2179, $P2178
    set $P2173, $P2179
    goto if_2174_end
  if_2174:
    find_lex $P2177, "$files"
    unless_null $P2177, vivify_906
    new $P2177, "Undef"
  vivify_906:
    set $P2173, $P2177
  if_2174_end:
    store_lex "@files", $P2173
    find_lex $P2180, "@codes"
    unless_null $P2180, vivify_907
    $P2180 = root_new ['parrot';'ResizablePMCArray']
  vivify_907:
.annotate 'line', 1494
    find_lex $P2182, "@files"
    unless_null $P2182, vivify_908
    $P2182 = root_new ['parrot';'ResizablePMCArray']
  vivify_908:
    defined $I2183, $P2182
    unless $I2183, for_undef_909
    iter $P2181, $P2182
    new $P2248, 'ExceptionHandler'
    set_label $P2248, loop2247_handler
    $P2248."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2248
  loop2247_test:
    unless $P2181, loop2247_done
    shift $P2184, $P2181
  loop2247_redo:
    .const 'Sub' $P2186 = "211_1303687815.225" 
    capture_lex $P2186
    $P2186($P2184)
  loop2247_next:
    goto loop2247_test
  loop2247_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2249, exception, 'type'
    eq $P2249, .CONTROL_LOOP_NEXT, loop2247_next
    eq $P2249, .CONTROL_LOOP_REDO, loop2247_redo
  loop2247_done:
    pop_eh 
  for_undef_909:
.annotate 'line', 1489
    .return ($P2181)
  control_2156:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2250, exception, "payload"
    .return ($P2250)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2185"  :anon :subid("211_1303687815.225") :outer("210_1303687815.225")
    .param pmc param_2191
.annotate 'line', 1494
    .const 'Sub' $P2195 = "212_1303687815.225" 
    capture_lex $P2195
.annotate 'line', 1495
    new $P2187, "Undef"
    .lex "$in-handle", $P2187
.annotate 'line', 1496
    new $P2188, "Undef"
    .lex "$err", $P2188
.annotate 'line', 1509
    new $P2189, "Undef"
    .lex "$code", $P2189
.annotate 'line', 1511
    new $P2190, "Undef"
    .lex "$r", $P2190
    .lex "$_", param_2191
.annotate 'line', 1495
    new $P2192, "FileHandle"
    store_lex "$in-handle", $P2192
.annotate 'line', 1496
    new $P2193, "Integer"
    assign $P2193, 0
    store_lex "$err", $P2193
.annotate 'line', 1497
    .const 'Sub' $P2195 = "212_1303687815.225" 
    capture_lex $P2195
    $P2195()
.annotate 'line', 1508
    find_lex $P2219, "$err"
    unless_null $P2219, vivify_917
    new $P2219, "Undef"
  vivify_917:
    unless $P2219, if_2218_end
    find_lex $P2220, "$err"
    unless_null $P2220, vivify_918
    new $P2220, "Undef"
  vivify_918:
    die $P2220
  if_2218_end:
.annotate 'line', 1509
    find_lex $P2221, "@codes"
    unless_null $P2221, vivify_919
    $P2221 = root_new ['parrot';'ResizablePMCArray']
  vivify_919:
    join $S2222, "", $P2221
    new $P2223, 'String'
    set $P2223, $S2222
    store_lex "$code", $P2223
.annotate 'line', 1511
    find_lex $P2224, "self"
    find_lex $P2225, "$code"
    unless_null $P2225, vivify_920
    new $P2225, "Undef"
  vivify_920:
    find_lex $P2226, "@args"
    unless_null $P2226, vivify_921
    $P2226 = root_new ['parrot';'ResizablePMCArray']
  vivify_921:
    find_lex $P2227, "%adverbs"
    unless_null $P2227, vivify_922
    $P2227 = root_new ['parrot';'Hash']
  vivify_922:
    $P2228 = $P2224."eval"($P2225, $P2226 :flat, $P2227 :flat)
    store_lex "$r", $P2228
.annotate 'line', 1512
    find_lex $P2233, "$target"
    unless_null $P2233, vivify_923
    new $P2233, "Undef"
  vivify_923:
    set $S2234, $P2233
    iseq $I2235, $S2234, ""
    unless $I2235, unless_2232
    new $P2231, 'Integer'
    set $P2231, $I2235
    goto unless_2232_end
  unless_2232:
    find_lex $P2236, "$target"
    unless_null $P2236, vivify_924
    new $P2236, "Undef"
  vivify_924:
    set $S2237, $P2236
    iseq $I2238, $S2237, "pir"
    new $P2231, 'Integer'
    set $P2231, $I2238
  unless_2232_end:
    if $P2231, if_2230
.annotate 'line', 1515
    new $P2241, "Exception"
    set $P2241['type'], .CONTROL_RETURN
    find_lex $P2242, "self"
    find_lex $P2243, "$r"
    unless_null $P2243, vivify_925
    new $P2243, "Undef"
  vivify_925:
    find_lex $P2244, "$target"
    unless_null $P2244, vivify_926
    new $P2244, "Undef"
  vivify_926:
    find_lex $P2245, "%adverbs"
    unless_null $P2245, vivify_927
    $P2245 = root_new ['parrot';'Hash']
  vivify_927:
    $P2246 = $P2242."dumper"($P2243, $P2244, $P2245 :flat)
    setattribute $P2241, 'payload', $P2246
    throw $P2241
.annotate 'line', 1514
    goto if_2230_end
  if_2230:
.annotate 'line', 1513
    new $P2239, "Exception"
    set $P2239['type'], .CONTROL_RETURN
    find_lex $P2240, "$r"
    unless_null $P2240, vivify_928
    new $P2240, "Undef"
  vivify_928:
    setattribute $P2239, 'payload', $P2240
    throw $P2239
  if_2230_end:
.annotate 'line', 1494
    .return ($P2229)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2194"  :anon :subid("212_1303687815.225") :outer("211_1303687815.225")
.annotate 'line', 1497
    .const 'Sub' $P2209 = "213_1303687815.225" 
    capture_lex $P2209
    new $P2205, 'ExceptionHandler'
    set_label $P2205, control_2204
    $P2205."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2205
.annotate 'line', 1501
    find_lex $P2196, "$in-handle"
    unless_null $P2196, vivify_910
    new $P2196, "Undef"
  vivify_910:
    find_lex $P2197, "$encoding"
    unless_null $P2197, vivify_911
    new $P2197, "Undef"
  vivify_911:
    $P2196."encoding"($P2197)
.annotate 'line', 1502
    find_lex $P2198, "@codes"
    unless_null $P2198, vivify_912
    $P2198 = root_new ['parrot';'ResizablePMCArray']
  vivify_912:
    find_lex $P2199, "$in-handle"
    unless_null $P2199, vivify_913
    new $P2199, "Undef"
  vivify_913:
    find_lex $P2200, "$_"
    unless_null $P2200, vivify_914
    new $P2200, "Undef"
  vivify_914:
    $P2201 = $P2199."readall"($P2200)
    push $P2198, $P2201
.annotate 'line', 1503
    find_lex $P2202, "$in-handle"
    unless_null $P2202, vivify_915
    new $P2202, "Undef"
  vivify_915:
    $P2202."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_2203
  control_2204:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2209 = "213_1303687815.225" 
    newclosure $P2215, $P2209
    $P2215(exception)
    new $P2216, 'Integer'
    set $P2216, 1
    set exception["handled"], $P2216
    set $I2217, exception["handled"]
    ne $I2217, 1, nothandled_2207
  handled_2206:
    .return (exception)
  nothandled_2207:
    rethrow exception
  skip_handler_2203:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2208"  :anon :subid("213_1303687815.225") :outer("212_1303687815.225")
    .param pmc param_2210
.annotate 'line', 1504
    .lex "$_", param_2210
    find_lex $P2211, "$_"
    .lex "$!", $P2211
.annotate 'line', 1505
    new $P2212, 'String'
    set $P2212, "Error while reading from file: "
    find_lex $P2213, "$_"
    unless_null $P2213, vivify_916
    new $P2213, "Undef"
  vivify_916:
    concat $P2214, $P2212, $P2213
    store_lex "$err", $P2214
.annotate 'line', 1504
    .return ($P2214)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("214_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2254
    .param pmc param_2255
    .param pmc param_2256 :slurpy :named
.annotate 'line', 1521
    .const 'Sub' $P2277 = "215_1303687815.225" 
    capture_lex $P2277
    new $P2253, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2253, control_2252
    push_eh $P2253
    .lex "self", param_2254
    .lex "$source", param_2255
    .lex "%adverbs", param_2256
.annotate 'line', 1522
    $P2257 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P2257
.annotate 'line', 1524
    new $P2258, "Undef"
    .lex "$target", $P2258
.annotate 'line', 1525
    new $P2259, "Undef"
    .lex "$result", $P2259
.annotate 'line', 1526
    new $P2260, "Undef"
    .lex "$stderr", $P2260
.annotate 'line', 1522
    find_lex $P2261, "%adverbs"
    unless_null $P2261, vivify_929
    $P2261 = root_new ['parrot';'Hash']
  vivify_929:
    find_lex $P2262, "%*COMPILING"
    unless_null $P2262, vivify_930
    get_hll_global $P2262, "%COMPILING"
    unless_null $P2262, vivify_931
    die "Contextual %*COMPILING not found"
  vivify_931:
    store_lex "%*COMPILING", $P2262
  vivify_930:
    set $P2262["%?OPTIONS"], $P2261
.annotate 'line', 1524
    find_lex $P2263, "%adverbs"
    unless_null $P2263, vivify_932
    $P2263 = root_new ['parrot';'Hash']
  vivify_932:
    set $P2264, $P2263["target"]
    unless_null $P2264, vivify_933
    new $P2264, "Undef"
  vivify_933:
    set $S2265, $P2264
    downcase $S2266, $S2265
    new $P2267, 'String'
    set $P2267, $S2266
    store_lex "$target", $P2267
.annotate 'line', 1525
    find_lex $P2268, "$source"
    unless_null $P2268, vivify_934
    new $P2268, "Undef"
  vivify_934:
    store_lex "$result", $P2268
.annotate 'line', 1526
    getinterp $P2269
    $P2270 = $P2269."stderr_handle"()
    store_lex "$stderr", $P2270
.annotate 'line', 1527
    find_lex $P2272, "self"
    $P2273 = $P2272."stages"()
    defined $I2274, $P2273
    unless $I2274, for_undef_935
    iter $P2271, $P2273
    new $P2313, 'ExceptionHandler'
    set_label $P2313, loop2312_handler
    $P2313."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2313
  loop2312_test:
    unless $P2271, loop2312_done
    shift $P2275, $P2271
  loop2312_redo:
    .const 'Sub' $P2277 = "215_1303687815.225" 
    capture_lex $P2277
    $P2277($P2275)
  loop2312_next:
    goto loop2312_test
  loop2312_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2314, exception, 'type'
    eq $P2314, .CONTROL_LOOP_NEXT, loop2312_next
    eq $P2314, .CONTROL_LOOP_REDO, loop2312_redo
  loop2312_done:
    pop_eh 
  for_undef_935:
.annotate 'line', 1537
    new $P2315, "Exception"
    set $P2315['type'], .CONTROL_RETURN
    find_lex $P2316, "$result"
    unless_null $P2316, vivify_947
    new $P2316, "Undef"
  vivify_947:
    setattribute $P2315, 'payload', $P2316
    throw $P2315
.annotate 'line', 1521
    .return ()
  control_2252:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2317, exception, "payload"
    .return ($P2317)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2276"  :anon :subid("215_1303687815.225") :outer("214_1303687815.225")
    .param pmc param_2280
.annotate 'line', 1528
    new $P2278, "Undef"
    .lex "$timestamp", $P2278
.annotate 'line', 1530
    new $P2279, "Undef"
    .lex "$diff", $P2279
    .lex "$_", param_2280
.annotate 'line', 1528
    time $N2281
    new $P2282, 'Float'
    set $P2282, $N2281
    store_lex "$timestamp", $P2282
.annotate 'line', 1529
    find_lex $P2283, "self"
    find_lex $P2284, "$result"
    unless_null $P2284, vivify_936
    new $P2284, "Undef"
  vivify_936:
    find_lex $P2285, "%adverbs"
    unless_null $P2285, vivify_937
    $P2285 = root_new ['parrot';'Hash']
  vivify_937:
    find_lex $P2286, "$_"
    unless_null $P2286, vivify_938
    new $P2286, "Undef"
  vivify_938:
    set $S2287, $P2286
    $P2288 = $P2283.$S2287($P2284, $P2285 :flat)
    store_lex "$result", $P2288
.annotate 'line', 1530
    time $N2289
    new $P2290, 'Float'
    set $P2290, $N2289
    find_lex $P2291, "$timestamp"
    unless_null $P2291, vivify_939
    new $P2291, "Undef"
  vivify_939:
    sub $P2292, $P2290, $P2291
    store_lex "$diff", $P2292
.annotate 'line', 1531
    find_lex $P2294, "%adverbs"
    unless_null $P2294, vivify_940
    $P2294 = root_new ['parrot';'Hash']
  vivify_940:
    set $P2295, $P2294["stagestats"]
    unless_null $P2295, vivify_941
    new $P2295, "Undef"
  vivify_941:
    unless $P2295, if_2293_end
.annotate 'line', 1533
    find_lex $P2296, "$stderr"
    unless_null $P2296, vivify_942
    new $P2296, "Undef"
  vivify_942:
    new $P2297, 'String'
    set $P2297, "Stage "
    find_lex $P2298, "$_"
    unless_null $P2298, vivify_943
    new $P2298, "Undef"
  vivify_943:
    concat $P2299, $P2297, $P2298
    concat $P2300, $P2299, ": "
    find_lex $P2301, "$diff"
    unless_null $P2301, vivify_944
    new $P2301, "Undef"
  vivify_944:
    concat $P2302, $P2300, $P2301
    concat $P2303, $P2302, "\n"
    $P2296."print__N"($P2303)
  if_2293_end:
.annotate 'line', 1535
    find_lex $P2306, "$_"
    unless_null $P2306, vivify_945
    new $P2306, "Undef"
  vivify_945:
    set $S2307, $P2306
    find_lex $P2308, "$target"
    unless_null $P2308, vivify_946
    new $P2308, "Undef"
  vivify_946:
    set $S2309, $P2308
    iseq $I2310, $S2307, $S2309
    if $I2310, if_2305
    new $P2304, 'Integer'
    set $P2304, $I2310
    goto if_2305_end
  if_2305:
    set $I2311, .CONTROL_LOOP_LAST
    die 0, $I2311
  if_2305_end:
.annotate 'line', 1527
    .return ($P2304)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("216_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2319
    .param pmc param_2320
    .param pmc param_2321 :slurpy :named
.annotate 'line', 1540
    .lex "self", param_2319
    .lex "$source", param_2320
    .lex "%adverbs", param_2321
.annotate 'line', 1541

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
        
.annotate 'line', 1540
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past"  :subid("217_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2323
    .param pmc param_2324
    .param pmc param_2325 :slurpy :named
.annotate 'line', 1589
    .lex "self", param_2323
    .lex "$source", param_2324
    .lex "%adverbs", param_2325
.annotate 'line', 1590

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
        
.annotate 'line', 1589
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post"  :subid("218_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2327
    .param pmc param_2328
    .param pmc param_2329 :slurpy :named
.annotate 'line', 1629
    .lex "self", param_2327
    .lex "$source", param_2328
    .lex "%adverbs", param_2329
.annotate 'line', 1630
    compreg $P2330, "PAST"
    find_lex $P2331, "$source"
    unless_null $P2331, vivify_948
    new $P2331, "Undef"
  vivify_948:
    find_lex $P2332, "%adverbs"
    unless_null $P2332, vivify_949
    $P2332 = root_new ['parrot';'Hash']
  vivify_949:
    $P2333 = $P2330."to_post"($P2331, $P2332 :flat)
.annotate 'line', 1629
    .return ($P2333)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("219_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2335
    .param pmc param_2336
    .param pmc param_2337 :slurpy :named
.annotate 'line', 1633
    .lex "self", param_2335
    .lex "$source", param_2336
    .lex "%adverbs", param_2337
.annotate 'line', 1634
    compreg $P2338, "POST"
    find_lex $P2339, "$source"
    unless_null $P2339, vivify_950
    new $P2339, "Undef"
  vivify_950:
    find_lex $P2340, "%adverbs"
    unless_null $P2340, vivify_951
    $P2340 = root_new ['parrot';'Hash']
  vivify_951:
    $P2341 = $P2338."to_pir"($P2339, $P2340 :flat)
.annotate 'line', 1633
    .return ($P2341)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("220_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2343
    .param pmc param_2344
    .param pmc param_2345 :slurpy :named
.annotate 'line', 1637
    .lex "self", param_2343
    .lex "$source", param_2344
    .lex "%adverbs", param_2345
.annotate 'line', 1638
    new $P2346, "Undef"
    .lex "$compiler", $P2346
    compreg $P2347, "PIR"
    store_lex "$compiler", $P2347
.annotate 'line', 1639
    find_lex $P2348, "$compiler"
    unless_null $P2348, vivify_952
    new $P2348, "Undef"
  vivify_952:
    find_lex $P2349, "$source"
    unless_null $P2349, vivify_953
    new $P2349, "Undef"
  vivify_953:
    $P2350 = $P2348($P2349)
.annotate 'line', 1637
    .return ($P2350)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("221_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2352
    .param pmc param_2353
    .param pmc param_2354
    .param pmc param_2355 :slurpy :named
.annotate 'line', 1642
    .const 'Sub' $P2361 = "222_1303687815.225" 
    capture_lex $P2361
    .lex "self", param_2352
    .lex "$obj", param_2353
    .lex "$name", param_2354
    .lex "%options", param_2355
.annotate 'line', 1643
    find_lex $P2358, "%options"
    unless_null $P2358, vivify_954
    $P2358 = root_new ['parrot';'Hash']
  vivify_954:
    set $P2359, $P2358["dumper"]
    unless_null $P2359, vivify_955
    new $P2359, "Undef"
  vivify_955:
    if $P2359, if_2357
.annotate 'line', 1649
    find_lex $P2374, "$obj"
    unless_null $P2374, vivify_956
    new $P2374, "Undef"
  vivify_956:
    find_lex $P2375, "$name"
    unless_null $P2375, vivify_957
    new $P2375, "Undef"
  vivify_957:
    $P2376 = "_dumper"($P2374, $P2375)
.annotate 'line', 1648
    set $P2356, $P2376
.annotate 'line', 1643
    goto if_2357_end
  if_2357:
    .const 'Sub' $P2361 = "222_1303687815.225" 
    capture_lex $P2361
    $P2373 = $P2361()
    set $P2356, $P2373
  if_2357_end:
.annotate 'line', 1642
    .return ($P2356)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2360"  :anon :subid("222_1303687815.225") :outer("221_1303687815.225")
.annotate 'line', 1645
    new $P2362, "Undef"
    .lex "$dumper", $P2362
.annotate 'line', 1644
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1645
    find_lex $P2363, "%options"
    unless_null $P2363, vivify_958
    $P2363 = root_new ['parrot';'Hash']
  vivify_958:
    set $P2364, $P2363["dumper"]
    unless_null $P2364, vivify_959
    new $P2364, "Undef"
  vivify_959:
    set $S2365, $P2364
    downcase $S2366, $S2365
    get_hll_global $P2367, ["PCT"], "Dumper"
    unless_null $P2367, vivify_960
    $P2367 = root_new ['parrot';'Hash']
  vivify_960:
    set $P2368, $P2367[$S2366]
    unless_null $P2368, vivify_961
    new $P2368, "Undef"
  vivify_961:
    store_lex "$dumper", $P2368
.annotate 'line', 1646
    find_lex $P2369, "$dumper"
    unless_null $P2369, vivify_962
    new $P2369, "Undef"
  vivify_962:
    find_lex $P2370, "$obj"
    unless_null $P2370, vivify_963
    new $P2370, "Undef"
  vivify_963:
    find_lex $P2371, "$name"
    unless_null $P2371, vivify_964
    new $P2371, "Undef"
  vivify_964:
    $P2372 = $P2369($P2370, $P2371)
.annotate 'line', 1643
    .return ($P2372)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("223_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2378
    .param pmc param_2379 :optional
    .param int has_param_2379 :opt_flag
.annotate 'line', 1653
    .lex "self", param_2378
    if has_param_2379, optparam_965
    new $P2380, "Undef"
    set param_2379, $P2380
  optparam_965:
    .lex "$name", param_2379
.annotate 'line', 1654
    find_lex $P2382, "$name"
    unless_null $P2382, vivify_966
    new $P2382, "Undef"
  vivify_966:
    unless $P2382, if_2381_end
.annotate 'line', 1655
    find_lex $P2383, "$name"
    unless_null $P2383, vivify_967
    new $P2383, "Undef"
  vivify_967:
    "say"($P2383)
  if_2381_end:
.annotate 'line', 1657
    find_lex $P2384, "self"
    find_lex $P2385, "$?CLASS"
    getattribute $P2386, $P2384, $P2385, "$!usage"
    unless_null $P2386, vivify_968
    new $P2386, "Undef"
  vivify_968:
    say $P2386
.annotate 'line', 1658
    exit 0
.annotate 'line', 1653
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("224_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2388
.annotate 'line', 1661
    .lex "self", param_2388
.annotate 'line', 1662
    find_lex $P2389, "self"
    find_lex $P2390, "$?CLASS"
    getattribute $P2391, $P2389, $P2390, "$!version"
    unless_null $P2391, vivify_969
    new $P2391, "Undef"
  vivify_969:
    say $P2391
.annotate 'line', 1663
    exit 0
.annotate 'line', 1661
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("225_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2393
    .param pmc param_2394
.annotate 'line', 1666
    .const 'Sub' $P2404 = "226_1303687815.225" 
    capture_lex $P2404
    .lex "self", param_2393
    .lex "$stagename", param_2394
.annotate 'line', 1667
    $P2395 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P2395
    new $P2396, "ResizableStringArray"
    store_lex "@new_stages", $P2396
.annotate 'line', 1668
    find_lex $P2398, "self"
    find_lex $P2399, "$?CLASS"
    getattribute $P2400, $P2398, $P2399, "@!stages"
    unless_null $P2400, vivify_970
    $P2400 = root_new ['parrot';'ResizablePMCArray']
  vivify_970:
    defined $I2401, $P2400
    unless $I2401, for_undef_971
    iter $P2397, $P2400
    new $P2417, 'ExceptionHandler'
    set_label $P2417, loop2416_handler
    $P2417."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2417
  loop2416_test:
    unless $P2397, loop2416_done
    shift $P2402, $P2397
  loop2416_redo:
    .const 'Sub' $P2404 = "226_1303687815.225" 
    capture_lex $P2404
    $P2404($P2402)
  loop2416_next:
    goto loop2416_test
  loop2416_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2418, exception, 'type'
    eq $P2418, .CONTROL_LOOP_NEXT, loop2416_next
    eq $P2418, .CONTROL_LOOP_REDO, loop2416_redo
  loop2416_done:
    pop_eh 
  for_undef_971:
.annotate 'line', 1673
    find_lex $P2419, "@new_stages"
    unless_null $P2419, vivify_976
    $P2419 = root_new ['parrot';'ResizablePMCArray']
  vivify_976:
    find_lex $P2420, "self"
    find_lex $P2421, "$?CLASS"
    setattribute $P2420, $P2421, "@!stages", $P2419
.annotate 'line', 1666
    .return ($P2419)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2403"  :anon :subid("226_1303687815.225") :outer("225_1303687815.225")
    .param pmc param_2405
.annotate 'line', 1668
    .lex "$_", param_2405
.annotate 'line', 1669
    find_lex $P2408, "$_"
    unless_null $P2408, vivify_972
    new $P2408, "Undef"
  vivify_972:
    set $S2409, $P2408
    find_lex $P2410, "$stagename"
    unless_null $P2410, vivify_973
    new $P2410, "Undef"
  vivify_973:
    set $S2411, $P2410
    isne $I2412, $S2409, $S2411
    if $I2412, if_2407
    new $P2406, 'Integer'
    set $P2406, $I2412
    goto if_2407_end
  if_2407:
.annotate 'line', 1670
    find_lex $P2413, "@new_stages"
    unless_null $P2413, vivify_974
    $P2413 = root_new ['parrot';'ResizablePMCArray']
  vivify_974:
    find_lex $P2414, "$_"
    unless_null $P2414, vivify_975
    new $P2414, "Undef"
  vivify_975:
    $P2415 = $P2413."push"($P2414)
.annotate 'line', 1669
    set $P2406, $P2415
  if_2407_end:
.annotate 'line', 1668
    .return ($P2406)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("227_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2425
    .param pmc param_2426
    .param pmc param_2427 :slurpy :named
.annotate 'line', 1676
    .const 'Sub' $P2464 = "229_1303687815.225" 
    capture_lex $P2464
    .const 'Sub' $P2446 = "228_1303687815.225" 
    capture_lex $P2446
    new $P2424, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2424, control_2423
    push_eh $P2424
    .lex "self", param_2425
    .lex "$stagename", param_2426
    .lex "%adverbs", param_2427
.annotate 'line', 1677
    new $P2428, "Undef"
    .lex "$position", $P2428
.annotate 'line', 1678
    new $P2429, "Undef"
    .lex "$where", $P2429
.annotate 'line', 1691
    $P2430 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2430
.annotate 'line', 1676
    find_lex $P2431, "$position"
    unless_null $P2431, vivify_977
    new $P2431, "Undef"
  vivify_977:
    find_lex $P2432, "$where"
    unless_null $P2432, vivify_978
    new $P2432, "Undef"
  vivify_978:
.annotate 'line', 1679
    find_lex $P2434, "%adverbs"
    unless_null $P2434, vivify_979
    $P2434 = root_new ['parrot';'Hash']
  vivify_979:
    set $P2435, $P2434["before"]
    unless_null $P2435, vivify_980
    new $P2435, "Undef"
  vivify_980:
    if $P2435, if_2433
.annotate 'line', 1682
    find_lex $P2440, "%adverbs"
    unless_null $P2440, vivify_981
    $P2440 = root_new ['parrot';'Hash']
  vivify_981:
    set $P2441, $P2440["after"]
    unless_null $P2441, vivify_982
    new $P2441, "Undef"
  vivify_982:
    if $P2441, if_2439
.annotate 'line', 1685
    .const 'Sub' $P2446 = "228_1303687815.225" 
    capture_lex $P2446
    $P2446()
    goto if_2439_end
  if_2439:
.annotate 'line', 1683
    find_lex $P2442, "%adverbs"
    unless_null $P2442, vivify_986
    $P2442 = root_new ['parrot';'Hash']
  vivify_986:
    set $P2443, $P2442["after"]
    unless_null $P2443, vivify_987
    new $P2443, "Undef"
  vivify_987:
    store_lex "$where", $P2443
.annotate 'line', 1684
    new $P2444, "String"
    assign $P2444, "after"
    store_lex "$position", $P2444
  if_2439_end:
.annotate 'line', 1682
    goto if_2433_end
  if_2433:
.annotate 'line', 1680
    find_lex $P2436, "%adverbs"
    unless_null $P2436, vivify_988
    $P2436 = root_new ['parrot';'Hash']
  vivify_988:
    set $P2437, $P2436["before"]
    unless_null $P2437, vivify_989
    new $P2437, "Undef"
  vivify_989:
    store_lex "$where", $P2437
.annotate 'line', 1681
    new $P2438, "String"
    assign $P2438, "before"
    store_lex "$position", $P2438
  if_2433_end:
.annotate 'line', 1691
    new $P2457, "ResizableStringArray"
    store_lex "@new-stages", $P2457
.annotate 'line', 1692
    find_lex $P2459, "self"
    $P2460 = $P2459."stages"()
    defined $I2461, $P2460
    unless $I2461, for_undef_990
    iter $P2458, $P2460
    new $P2489, 'ExceptionHandler'
    set_label $P2489, loop2488_handler
    $P2489."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2489
  loop2488_test:
    unless $P2458, loop2488_done
    shift $P2462, $P2458
  loop2488_redo:
    .const 'Sub' $P2464 = "229_1303687815.225" 
    capture_lex $P2464
    $P2464($P2462)
  loop2488_next:
    goto loop2488_test
  loop2488_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2490, exception, 'type'
    eq $P2490, .CONTROL_LOOP_NEXT, loop2488_next
    eq $P2490, .CONTROL_LOOP_REDO, loop2488_redo
  loop2488_done:
    pop_eh 
  for_undef_990:
.annotate 'line', 1705
    find_lex $P2491, "self"
    find_lex $P2492, "@new-stages"
    unless_null $P2492, vivify_1004
    $P2492 = root_new ['parrot';'ResizablePMCArray']
  vivify_1004:
    $P2493 = $P2491."stages"($P2492)
.annotate 'line', 1676
    .return ($P2493)
  control_2423:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2494, exception, "payload"
    .return ($P2494)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2445"  :anon :subid("228_1303687815.225") :outer("227_1303687815.225")
.annotate 'line', 1686
    $P2447 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P2447
    find_lex $P2448, "self"
    $P2449 = $P2448."stages"()
    clone $P2450, $P2449
    store_lex "@new-stages", $P2450
.annotate 'line', 1687
    find_lex $P2451, "@new-stages"
    unless_null $P2451, vivify_983
    $P2451 = root_new ['parrot';'ResizablePMCArray']
  vivify_983:
    find_lex $P2452, "$stagename"
    unless_null $P2452, vivify_984
    new $P2452, "Undef"
  vivify_984:
    push $P2451, $P2452
.annotate 'line', 1688
    find_lex $P2453, "self"
    find_lex $P2454, "@new-stages"
    unless_null $P2454, vivify_985
    $P2454 = root_new ['parrot';'ResizablePMCArray']
  vivify_985:
    $P2453."stages"($P2454)
.annotate 'line', 1689
    new $P2455, "Exception"
    set $P2455['type'], .CONTROL_RETURN
    new $P2456, "Integer"
    assign $P2456, 1
    setattribute $P2455, 'payload', $P2456
    throw $P2455
.annotate 'line', 1685
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2463"  :anon :subid("229_1303687815.225") :outer("227_1303687815.225")
    .param pmc param_2465
.annotate 'line', 1692
    .lex "$_", param_2465
.annotate 'line', 1693
    find_lex $P2468, "$_"
    unless_null $P2468, vivify_991
    new $P2468, "Undef"
  vivify_991:
    set $S2469, $P2468
    find_lex $P2470, "$where"
    unless_null $P2470, vivify_992
    new $P2470, "Undef"
  vivify_992:
    set $S2471, $P2470
    iseq $I2472, $S2469, $S2471
    if $I2472, if_2467
.annotate 'line', 1702
    find_lex $P2486, "@new-stages"
    unless_null $P2486, vivify_993
    $P2486 = root_new ['parrot';'ResizablePMCArray']
  vivify_993:
    find_lex $P2487, "$_"
    unless_null $P2487, vivify_994
    new $P2487, "Undef"
  vivify_994:
    push $P2486, $P2487
.annotate 'line', 1701
    set $P2466, $P2486
.annotate 'line', 1693
    goto if_2467_end
  if_2467:
.annotate 'line', 1694
    find_lex $P2475, "$position"
    unless_null $P2475, vivify_995
    new $P2475, "Undef"
  vivify_995:
    set $S2476, $P2475
    iseq $I2477, $S2476, "before"
    if $I2477, if_2474
.annotate 'line', 1698
    find_lex $P2482, "@new-stages"
    unless_null $P2482, vivify_996
    $P2482 = root_new ['parrot';'ResizablePMCArray']
  vivify_996:
    find_lex $P2483, "$_"
    unless_null $P2483, vivify_997
    new $P2483, "Undef"
  vivify_997:
    push $P2482, $P2483
.annotate 'line', 1699
    find_lex $P2484, "@new-stages"
    unless_null $P2484, vivify_998
    $P2484 = root_new ['parrot';'ResizablePMCArray']
  vivify_998:
    find_lex $P2485, "$stagename"
    unless_null $P2485, vivify_999
    new $P2485, "Undef"
  vivify_999:
    push $P2484, $P2485
.annotate 'line', 1697
    set $P2473, $P2484
.annotate 'line', 1694
    goto if_2474_end
  if_2474:
.annotate 'line', 1695
    find_lex $P2478, "@new-stages"
    unless_null $P2478, vivify_1000
    $P2478 = root_new ['parrot';'ResizablePMCArray']
  vivify_1000:
    find_lex $P2479, "$stagename"
    unless_null $P2479, vivify_1001
    new $P2479, "Undef"
  vivify_1001:
    push $P2478, $P2479
.annotate 'line', 1696
    find_lex $P2480, "@new-stages"
    unless_null $P2480, vivify_1002
    $P2480 = root_new ['parrot';'ResizablePMCArray']
  vivify_1002:
    find_lex $P2481, "$_"
    unless_null $P2481, vivify_1003
    new $P2481, "Undef"
  vivify_1003:
    push $P2480, $P2481
.annotate 'line', 1694
    set $P2473, $P2480
  if_2474_end:
.annotate 'line', 1693
    set $P2466, $P2473
  if_2467_end:
.annotate 'line', 1692
    .return ($P2466)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("230_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2496
    .param pmc param_2497
.annotate 'line', 1708
    .const 'Sub' $P2535 = "231_1303687815.225" 
    capture_lex $P2535
    .lex "self", param_2496
    .lex "$name", param_2497
.annotate 'line', 1709
    $P2498 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P2498
.annotate 'line', 1710
    new $P2499, "Undef"
    .lex "$sigil", $P2499
.annotate 'line', 1713
    new $P2500, "Undef"
    .lex "$idx", $P2500
.annotate 'line', 1721
    $P2501 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P2501
.annotate 'line', 1709
    find_lex $P2502, "$name"
    unless_null $P2502, vivify_1005
    new $P2502, "Undef"
  vivify_1005:
    set $S2503, $P2502
    split $P2504, "::", $S2503
    store_lex "@ns", $P2504
.annotate 'line', 1710
    find_lex $P2505, "@ns"
    unless_null $P2505, vivify_1006
    $P2505 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    set $P2506, $P2505[0]
    unless_null $P2506, vivify_1007
    new $P2506, "Undef"
  vivify_1007:
    set $S2507, $P2506
    substr $S2508, $S2507, 0, 1
    new $P2509, 'String'
    set $P2509, $S2508
    store_lex "$sigil", $P2509
.annotate 'line', 1713
    find_lex $P2510, "$sigil"
    unless_null $P2510, vivify_1008
    new $P2510, "Undef"
  vivify_1008:
    set $S2511, $P2510
    index $I2512, "$@%&", $S2511
    new $P2513, 'Integer'
    set $P2513, $I2512
    store_lex "$idx", $P2513
.annotate 'line', 1714
    find_lex $P2515, "$idx"
    unless_null $P2515, vivify_1009
    new $P2515, "Undef"
  vivify_1009:
    set $N2516, $P2515
    isge $I2517, $N2516, 0.0
    unless $I2517, if_2514_end
.annotate 'line', 1715
    find_lex $P2518, "@ns"
    unless_null $P2518, vivify_1010
    $P2518 = root_new ['parrot';'ResizablePMCArray']
  vivify_1010:
    set $P2519, $P2518[0]
    unless_null $P2519, vivify_1011
    new $P2519, "Undef"
  vivify_1011:
    set $S2520, $P2519
    substr $S2521, $S2520, 1
    new $P2522, 'String'
    set $P2522, $S2521
    find_lex $P2523, "@ns"
    unless_null $P2523, vivify_1012
    $P2523 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2523
  vivify_1012:
    set $P2523[0], $P2522
.annotate 'line', 1716
    find_lex $P2524, "$sigil"
    unless_null $P2524, vivify_1013
    new $P2524, "Undef"
  vivify_1013:
    find_lex $P2525, "@ns"
    unless_null $P2525, vivify_1014
    $P2525 = root_new ['parrot';'ResizablePMCArray']
  vivify_1014:
    set $P2526, $P2525[-1]
    unless_null $P2526, vivify_1015
    new $P2526, "Undef"
  vivify_1015:
    concat $P2527, $P2524, $P2526
    find_lex $P2528, "@ns"
    unless_null $P2528, vivify_1016
    $P2528 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2528
  vivify_1016:
    set $P2528[-1], $P2527
  if_2514_end:
.annotate 'line', 1714
    find_lex $P2529, "@actual_ns"
    unless_null $P2529, vivify_1017
    $P2529 = root_new ['parrot';'ResizablePMCArray']
  vivify_1017:
.annotate 'line', 1722
    find_lex $P2531, "@ns"
    unless_null $P2531, vivify_1018
    $P2531 = root_new ['parrot';'ResizablePMCArray']
  vivify_1018:
    defined $I2532, $P2531
    unless $I2532, for_undef_1019
    iter $P2530, $P2531
    new $P2545, 'ExceptionHandler'
    set_label $P2545, loop2544_handler
    $P2545."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2545
  loop2544_test:
    unless $P2530, loop2544_done
    shift $P2533, $P2530
  loop2544_redo:
    .const 'Sub' $P2535 = "231_1303687815.225" 
    capture_lex $P2535
    $P2535($P2533)
  loop2544_next:
    goto loop2544_test
  loop2544_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2546, exception, 'type'
    eq $P2546, .CONTROL_LOOP_NEXT, loop2544_next
    eq $P2546, .CONTROL_LOOP_REDO, loop2544_redo
  loop2544_done:
    pop_eh 
  for_undef_1019:
    find_lex $P2547, "@actual_ns"
    unless_null $P2547, vivify_1023
    $P2547 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
.annotate 'line', 1708
    .return ($P2547)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2534"  :anon :subid("231_1303687815.225") :outer("230_1303687815.225")
    .param pmc param_2536
.annotate 'line', 1722
    .lex "$_", param_2536
.annotate 'line', 1723
    find_lex $P2539, "$_"
    unless_null $P2539, vivify_1020
    new $P2539, "Undef"
  vivify_1020:
    set $S2540, $P2539
    iseq $I2541, $S2540, ""
    unless $I2541, unless_2538
    new $P2537, 'Integer'
    set $P2537, $I2541
    goto unless_2538_end
  unless_2538:
    find_lex $P2542, "@actual_ns"
    unless_null $P2542, vivify_1021
    $P2542 = root_new ['parrot';'ResizablePMCArray']
  vivify_1021:
    find_lex $P2543, "$_"
    unless_null $P2543, vivify_1022
    new $P2543, "Undef"
  vivify_1022:
    push $P2542, $P2543
    set $P2537, $P2542
  unless_2538_end:
.annotate 'line', 1722
    .return ($P2537)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("232_1303687815.225") :outer("167_1303687815.225")
    .param pmc param_2549
    .param pmc param_2550
    .param pmc param_2551
    .param pmc param_2552 :optional :named("cache")
    .param int has_param_2552 :opt_flag
.annotate 'line', 1728
    .lex "self", param_2549
    .lex "$target", param_2550
    .lex "$pos", param_2551
    if has_param_2552, optparam_1024
    new $P2553, "Undef"
    set param_2552, $P2553
  optparam_1024:
    .lex "$cache", param_2552
.annotate 'line', 1729

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
        
.annotate 'line', 1728
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2670"  :subid("234_1303687815.225") :outer("10_1303687815.225")
.annotate 'line', 1885
    .const 'Sub' $P2749 = "241_1303687815.225" 
    capture_lex $P2749
    .const 'Sub' $P2699 = "239_1303687815.225" 
    capture_lex $P2699
    .const 'Sub' $P2692 = "238_1303687815.225" 
    capture_lex $P2692
    .const 'Sub' $P2687 = "237_1303687815.225" 
    capture_lex $P2687
    .const 'Sub' $P2682 = "236_1303687815.225" 
    capture_lex $P2682
    .const 'Sub' $P2674 = "235_1303687815.225" 
    capture_lex $P2674
    .lex "$?PACKAGE", $P2672
    .lex "$?CLASS", $P2673
.annotate 'line', 1901
    .const 'Sub' $P2699 = "239_1303687815.225" 
    newclosure $P2747, $P2699
.annotate 'line', 1885
    .return ($P2747)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post1026") :outer("234_1303687815.225")
.annotate 'line', 1885
    .const 'Sub' $P2671 = "234_1303687815.225" 
    .local pmc block
    set block, $P2671
    .const 'Sub' $P2749 = "241_1303687815.225" 
    capture_lex $P2749
    $P2749()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2748"  :anon :subid("241_1303687815.225") :outer("234_1303687815.225")
.annotate 'line', 1885
    nqp_get_sc_object $P2750, "1303687806.753", 4
    .local pmc type_obj
    set type_obj, $P2750
    get_how $P2751, type_obj
    get_hll_global $P2752, "NQPAttribute"
    $P2753 = $P2752."new"("@!arguments" :named("name"))
    $P2751."add_attribute"(type_obj, $P2753)
    get_how $P2754, type_obj
    get_hll_global $P2755, "NQPAttribute"
    $P2756 = $P2755."new"("%!options" :named("name"))
    $P2754."add_attribute"(type_obj, $P2756)
    get_how $P2757, type_obj
    .const 'Sub' $P2758 = "235_1303687815.225" 
    $P2757."add_method"(type_obj, "init", $P2758)
    get_how $P2759, type_obj
    .const 'Sub' $P2760 = "236_1303687815.225" 
    $P2759."add_method"(type_obj, "arguments", $P2760)
    get_how $P2761, type_obj
    .const 'Sub' $P2762 = "237_1303687815.225" 
    $P2761."add_method"(type_obj, "options", $P2762)
    get_how $P2763, type_obj
    .const 'Sub' $P2764 = "238_1303687815.225" 
    $P2763."add_method"(type_obj, "add-argument", $P2764)
    get_how $P2765, type_obj
    .const 'Sub' $P2766 = "239_1303687815.225" 
    $P2765."add_method"(type_obj, "add-option", $P2766)
    get_how $P2767, type_obj
    nqp_get_sc_object $P2768, "1303687805.184", 4
    $P2767."set_default_parent"(type_obj, $P2768)
    get_how $P2769, type_obj
    $P2770 = $P2769."compose"(type_obj)
    .return ($P2770)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("235_1303687815.225") :outer("234_1303687815.225")
    .param pmc param_2675
.annotate 'line', 1889
    .lex "self", param_2675
.annotate 'line', 1890
    new $P2676, "ResizablePMCArray"
    find_lex $P2677, "self"
    find_lex $P2678, "$?CLASS"
    setattribute $P2677, $P2678, "@!arguments", $P2676
.annotate 'line', 1891
    new $P2679, "Hash"
    find_lex $P2680, "self"
    find_lex $P2681, "$?CLASS"
    setattribute $P2680, $P2681, "%!options", $P2679
.annotate 'line', 1889
    .return ($P2679)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("236_1303687815.225") :outer("234_1303687815.225")
    .param pmc param_2683
.annotate 'line', 1894
    .lex "self", param_2683
    find_lex $P2684, "self"
    find_lex $P2685, "$?CLASS"
    getattribute $P2686, $P2684, $P2685, "@!arguments"
    unless_null $P2686, vivify_1027
    $P2686 = root_new ['parrot';'ResizablePMCArray']
  vivify_1027:
    .return ($P2686)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("237_1303687815.225") :outer("234_1303687815.225")
    .param pmc param_2688
.annotate 'line', 1895
    .lex "self", param_2688
    find_lex $P2689, "self"
    find_lex $P2690, "$?CLASS"
    getattribute $P2691, $P2689, $P2690, "%!options"
    unless_null $P2691, vivify_1028
    $P2691 = root_new ['parrot';'Hash']
  vivify_1028:
    .return ($P2691)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("238_1303687815.225") :outer("234_1303687815.225")
    .param pmc param_2693
    .param pmc param_2694
.annotate 'line', 1897
    .lex "self", param_2693
    .lex "$x", param_2694
.annotate 'line', 1898
    find_lex $P2695, "self"
    find_lex $P2696, "$?CLASS"
    getattribute $P2697, $P2695, $P2696, "@!arguments"
    unless_null $P2697, vivify_1029
    $P2697 = root_new ['parrot';'ResizablePMCArray']
  vivify_1029:
    find_lex $P2698, "$x"
    unless_null $P2698, vivify_1030
    new $P2698, "Undef"
  vivify_1030:
    push $P2697, $P2698
.annotate 'line', 1897
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("239_1303687815.225") :outer("234_1303687815.225")
    .param pmc param_2700
    .param pmc param_2701
    .param pmc param_2702
.annotate 'line', 1901
    .const 'Sub' $P2711 = "240_1303687815.225" 
    capture_lex $P2711
    .lex "self", param_2700
    .lex "$name", param_2701
    .lex "$value", param_2702
.annotate 'line', 1904
    find_lex $P2708, "$name"
    unless_null $P2708, vivify_1031
    new $P2708, "Undef"
  vivify_1031:
    find_lex $P2705, "self"
    find_lex $P2706, "$?CLASS"
    getattribute $P2707, $P2705, $P2706, "%!options"
    unless_null $P2707, vivify_1032
    $P2707 = root_new ['parrot';'Hash']
  vivify_1032:
    exists $I2709, $P2707[$P2708]
    if $I2709, if_2704
.annotate 'line', 1913
    find_lex $P2742, "$value"
    unless_null $P2742, vivify_1033
    new $P2742, "Undef"
  vivify_1033:
    find_lex $P2743, "$name"
    unless_null $P2743, vivify_1034
    new $P2743, "Undef"
  vivify_1034:
    find_lex $P2744, "self"
    find_lex $P2745, "$?CLASS"
    getattribute $P2746, $P2744, $P2745, "%!options"
    unless_null $P2746, vivify_1035
    $P2746 = root_new ['parrot';'Hash']
    setattribute $P2744, $P2745, "%!options", $P2746
  vivify_1035:
    set $P2746[$P2743], $P2742
.annotate 'line', 1912
    set $P2703, $P2742
.annotate 'line', 1904
    goto if_2704_end
  if_2704:
    .const 'Sub' $P2711 = "240_1303687815.225" 
    capture_lex $P2711
    $P2741 = $P2711()
    set $P2703, $P2741
  if_2704_end:
.annotate 'line', 1901
    .return ($P2703)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2710"  :anon :subid("240_1303687815.225") :outer("239_1303687815.225")
.annotate 'line', 1905
    new $P2712, "Undef"
    .lex "$t", $P2712
    find_lex $P2713, "self"
    find_lex $P2714, "$?CLASS"
    getattribute $P2715, $P2713, $P2714, "%!options"
    unless_null $P2715, vivify_1036
    $P2715 = root_new ['parrot';'Hash']
  vivify_1036:
    typeof $S2716, $P2715
    new $P2717, 'String'
    set $P2717, $S2716
    store_lex "$t", $P2717
.annotate 'line', 1906
    find_lex $P2718, "$t"
    unless_null $P2718, vivify_1037
    new $P2718, "Undef"
  vivify_1037:
    "say"($P2718)
.annotate 'line', 1907
    find_lex $P2721, "$t"
    unless_null $P2721, vivify_1038
    new $P2721, "Undef"
  vivify_1038:
    set $S2722, $P2721
    iseq $I2723, $S2722, "ResizablePMCArray"
    if $I2723, if_2720
.annotate 'line', 1910
    find_lex $P2730, "$name"
    unless_null $P2730, vivify_1039
    new $P2730, "Undef"
  vivify_1039:
    find_lex $P2731, "self"
    find_lex $P2732, "$?CLASS"
    getattribute $P2733, $P2731, $P2732, "%!options"
    unless_null $P2733, vivify_1040
    $P2733 = root_new ['parrot';'Hash']
  vivify_1040:
    set $P2734, $P2733[$P2730]
    unless_null $P2734, vivify_1041
    new $P2734, "Undef"
  vivify_1041:
    find_lex $P2735, "$name"
    unless_null $P2735, vivify_1042
    new $P2735, "Undef"
  vivify_1042:
    new $P2736, "ResizablePMCArray"
    push $P2736, $P2734
    push $P2736, $P2735
    find_lex $P2737, "$name"
    unless_null $P2737, vivify_1043
    new $P2737, "Undef"
  vivify_1043:
    find_lex $P2738, "self"
    find_lex $P2739, "$?CLASS"
    getattribute $P2740, $P2738, $P2739, "%!options"
    unless_null $P2740, vivify_1044
    $P2740 = root_new ['parrot';'Hash']
    setattribute $P2738, $P2739, "%!options", $P2740
  vivify_1044:
    set $P2740[$P2737], $P2736
.annotate 'line', 1909
    set $P2719, $P2736
.annotate 'line', 1907
    goto if_2720_end
  if_2720:
.annotate 'line', 1908
    find_lex $P2724, "$name"
    unless_null $P2724, vivify_1045
    new $P2724, "Undef"
  vivify_1045:
    find_lex $P2725, "self"
    find_lex $P2726, "$?CLASS"
    getattribute $P2727, $P2725, $P2726, "%!options"
    unless_null $P2727, vivify_1046
    $P2727 = root_new ['parrot';'Hash']
  vivify_1046:
    set $P2728, $P2727[$P2724]
    unless_null $P2728, vivify_1047
    new $P2728, "Undef"
  vivify_1047:
    find_lex $P2729, "$value"
    unless_null $P2729, vivify_1048
    new $P2729, "Undef"
  vivify_1048:
    push $P2728, $P2729
.annotate 'line', 1907
    set $P2719, $P2728
  if_2720_end:
.annotate 'line', 1904
    .return ($P2719)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2771"  :subid("242_1303687815.225") :outer("10_1303687815.225")
.annotate 'line', 1918
    .const 'Sub' $P3197 = "261_1303687815.225" 
    capture_lex $P3197
    .const 'Sub' $P2912 = "253_1303687815.225" 
    capture_lex $P2912
    .const 'Sub' $P2900 = "252_1303687815.225" 
    capture_lex $P2900
    .const 'Sub' $P2876 = "251_1303687815.225" 
    capture_lex $P2876
    .const 'Sub' $P2827 = "249_1303687815.225" 
    capture_lex $P2827
    .const 'Sub' $P2821 = "248_1303687815.225" 
    capture_lex $P2821
    .const 'Sub' $P2813 = "247_1303687815.225" 
    capture_lex $P2813
    .const 'Sub' $P2789 = "245_1303687815.225" 
    capture_lex $P2789
    .const 'Sub' $P2784 = "244_1303687815.225" 
    capture_lex $P2784
    .const 'Sub' $P2775 = "243_1303687815.225" 
    capture_lex $P2775
    .lex "$?PACKAGE", $P2773
    .lex "$?CLASS", $P2774
.annotate 'line', 1978
    .const 'Sub' $P2912 = "253_1303687815.225" 
    newclosure $P3195, $P2912
.annotate 'line', 1918
    .return ($P3195)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post1049") :outer("242_1303687815.225")
.annotate 'line', 1918
    .const 'Sub' $P2772 = "242_1303687815.225" 
    .local pmc block
    set block, $P2772
    .const 'Sub' $P3197 = "261_1303687815.225" 
    capture_lex $P3197
    $P3197()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3196"  :anon :subid("261_1303687815.225") :outer("242_1303687815.225")
.annotate 'line', 1918
    nqp_get_sc_object $P3198, "1303687806.753", 5
    .local pmc type_obj
    set type_obj, $P3198
    get_how $P3199, type_obj
    get_hll_global $P3200, "NQPAttribute"
    $P3201 = $P3200."new"("@!specs" :named("name"))
    $P3199."add_attribute"(type_obj, $P3201)
    get_how $P3202, type_obj
    get_hll_global $P3203, "NQPAttribute"
    $P3204 = $P3203."new"("%!options" :named("name"))
    $P3202."add_attribute"(type_obj, $P3204)
    get_how $P3205, type_obj
    get_hll_global $P3206, "NQPAttribute"
    $P3207 = $P3206."new"("%!stopper" :named("name"))
    $P3205."add_attribute"(type_obj, $P3207)
    get_how $P3208, type_obj
    get_hll_global $P3209, "NQPAttribute"
    $P3210 = $P3209."new"("$!stop-after-first-arg" :named("name"))
    $P3208."add_attribute"(type_obj, $P3210)
    get_how $P3211, type_obj
    .const 'Sub' $P3212 = "243_1303687815.225" 
    $P3211."add_method"(type_obj, "new", $P3212)
    get_how $P3213, type_obj
    .const 'Sub' $P3214 = "244_1303687815.225" 
    $P3213."add_method"(type_obj, "stop-after-first-arg", $P3214)
    get_how $P3215, type_obj
    .const 'Sub' $P3216 = "245_1303687815.225" 
    $P3215."add_method"(type_obj, "BUILD", $P3216)
    get_how $P3217, type_obj
    .const 'Sub' $P3218 = "247_1303687815.225" 
    $P3217."add_method"(type_obj, "add-stopper", $P3218)
    get_how $P3219, type_obj
    .const 'Sub' $P3220 = "248_1303687815.225" 
    $P3219."add_method"(type_obj, "split-option-aliases", $P3220)
    get_how $P3221, type_obj
    .const 'Sub' $P3222 = "249_1303687815.225" 
    $P3221."add_method"(type_obj, "add-spec", $P3222)
    get_how $P3223, type_obj
    .const 'Sub' $P3224 = "251_1303687815.225" 
    $P3223."add_method"(type_obj, "is-option", $P3224)
    get_how $P3225, type_obj
    .const 'Sub' $P3226 = "252_1303687815.225" 
    $P3225."add_method"(type_obj, "wants-value", $P3226)
    get_how $P3227, type_obj
    .const 'Sub' $P3228 = "253_1303687815.225" 
    $P3227."add_method"(type_obj, "parse", $P3228)
    get_how $P3229, type_obj
    nqp_get_sc_object $P3230, "1303687805.184", 4
    $P3229."set_default_parent"(type_obj, $P3230)
    get_how $P3231, type_obj
    $P3232 = $P3231."compose"(type_obj)
    .return ($P3232)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("243_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2776
    .param pmc param_2777
.annotate 'line', 1924
    .lex "self", param_2776
    .lex "@specs", param_2777
.annotate 'line', 1925
    new $P2778, "Undef"
    .lex "$obj", $P2778
    find_lex $P2779, "self"
    $P2780 = $P2779."CREATE"()
    store_lex "$obj", $P2780
.annotate 'line', 1926
    find_lex $P2781, "$obj"
    unless_null $P2781, vivify_1050
    new $P2781, "Undef"
  vivify_1050:
    find_lex $P2782, "@specs"
    unless_null $P2782, vivify_1051
    $P2782 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    $P2781."BUILD"($P2782 :named("specs"))
    find_lex $P2783, "$obj"
    unless_null $P2783, vivify_1052
    new $P2783, "Undef"
  vivify_1052:
.annotate 'line', 1924
    .return ($P2783)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("244_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2785
.annotate 'line', 1930
    .lex "self", param_2785
.annotate 'line', 1931
    new $P2786, "Integer"
    assign $P2786, 1
    find_lex $P2787, "self"
    find_lex $P2788, "$?CLASS"
    setattribute $P2787, $P2788, "$!stop-after-first-arg", $P2786
.annotate 'line', 1930
    .return ($P2786)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("245_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2790
    .param pmc param_2791 :optional :named("specs")
    .param int has_param_2791 :opt_flag
.annotate 'line', 1934
    .const 'Sub' $P2805 = "246_1303687815.225" 
    capture_lex $P2805
    .lex "self", param_2790
    if has_param_2791, optparam_1053
    $P2792 = root_new ['parrot';'ResizablePMCArray']
    set param_2791, $P2792
  optparam_1053:
    .lex "@specs", param_2791
.annotate 'line', 1935
    new $P2793, "Integer"
    assign $P2793, 1
    find_lex $P2794, "self"
    find_lex $P2795, "$?CLASS"
    getattribute $P2796, $P2794, $P2795, "%!stopper"
    unless_null $P2796, vivify_1054
    $P2796 = root_new ['parrot';'Hash']
    setattribute $P2794, $P2795, "%!stopper", $P2796
  vivify_1054:
    set $P2796["--"], $P2793
.annotate 'line', 1936
    new $P2797, "Integer"
    assign $P2797, 0
    find_lex $P2798, "self"
    find_lex $P2799, "$?CLASS"
    setattribute $P2798, $P2799, "$!stop-after-first-arg", $P2797
.annotate 'line', 1937
    find_lex $P2801, "@specs"
    unless_null $P2801, vivify_1055
    $P2801 = root_new ['parrot';'ResizablePMCArray']
  vivify_1055:
    defined $I2802, $P2801
    unless $I2802, for_undef_1056
    iter $P2800, $P2801
    new $P2811, 'ExceptionHandler'
    set_label $P2811, loop2810_handler
    $P2811."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2811
  loop2810_test:
    unless $P2800, loop2810_done
    shift $P2803, $P2800
  loop2810_redo:
    .const 'Sub' $P2805 = "246_1303687815.225" 
    capture_lex $P2805
    $P2805($P2803)
  loop2810_next:
    goto loop2810_test
  loop2810_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2812, exception, 'type'
    eq $P2812, .CONTROL_LOOP_NEXT, loop2810_next
    eq $P2812, .CONTROL_LOOP_REDO, loop2810_redo
  loop2810_done:
    pop_eh 
  for_undef_1056:
.annotate 'line', 1934
    .return ($P2800)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2804"  :anon :subid("246_1303687815.225") :outer("245_1303687815.225")
    .param pmc param_2806
.annotate 'line', 1937
    .lex "$_", param_2806
.annotate 'line', 1938
    find_lex $P2807, "self"
    find_lex $P2808, "$_"
    unless_null $P2808, vivify_1057
    new $P2808, "Undef"
  vivify_1057:
    $P2809 = $P2807."add-spec"($P2808)
.annotate 'line', 1937
    .return ($P2809)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("247_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2814
    .param pmc param_2815
.annotate 'line', 1941
    .lex "self", param_2814
    .lex "$x", param_2815
.annotate 'line', 1942
    new $P2816, "Integer"
    assign $P2816, 1
    find_lex $P2817, "$x"
    unless_null $P2817, vivify_1058
    new $P2817, "Undef"
  vivify_1058:
    find_lex $P2818, "self"
    find_lex $P2819, "$?CLASS"
    getattribute $P2820, $P2818, $P2819, "%!stopper"
    unless_null $P2820, vivify_1059
    $P2820 = root_new ['parrot';'Hash']
    setattribute $P2818, $P2819, "%!stopper", $P2820
  vivify_1059:
    set $P2820[$P2817], $P2816
.annotate 'line', 1941
    .return ($P2816)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("248_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2822
    .param pmc param_2823
.annotate 'line', 1945
    .lex "self", param_2822
    .lex "$s", param_2823
.annotate 'line', 1946
    find_lex $P2824, "$s"
    unless_null $P2824, vivify_1060
    new $P2824, "Undef"
  vivify_1060:
    set $S2825, $P2824
    split $P2826, "|", $S2825
.annotate 'line', 1945
    .return ($P2826)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("249_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2828
    .param pmc param_2829
.annotate 'line', 1950
    .const 'Sub' $P2866 = "250_1303687815.225" 
    capture_lex $P2866
    .lex "self", param_2828
    .lex "$s", param_2829
.annotate 'line', 1951
    new $P2830, "Undef"
    .lex "$i", $P2830
.annotate 'line', 1952
    new $P2831, "Undef"
    .lex "$type", $P2831
.annotate 'line', 1953
    $P2832 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P2832
.annotate 'line', 1951
    find_lex $P2833, "$s"
    unless_null $P2833, vivify_1061
    new $P2833, "Undef"
  vivify_1061:
    set $S2834, $P2833
    index $I2835, $S2834, "="
    new $P2836, 'Integer'
    set $P2836, $I2835
    store_lex "$i", $P2836
    find_lex $P2837, "$type"
    unless_null $P2837, vivify_1062
    new $P2837, "Undef"
  vivify_1062:
    find_lex $P2838, "@options"
    unless_null $P2838, vivify_1063
    $P2838 = root_new ['parrot';'ResizablePMCArray']
  vivify_1063:
.annotate 'line', 1954
    find_lex $P2840, "$i"
    unless_null $P2840, vivify_1064
    new $P2840, "Undef"
  vivify_1064:
    set $N2841, $P2840
    islt $I2842, $N2841, 0.0
    if $I2842, if_2839
.annotate 'line', 1958
    find_lex $P2847, "$s"
    unless_null $P2847, vivify_1065
    new $P2847, "Undef"
  vivify_1065:
    set $S2848, $P2847
    find_lex $P2849, "$i"
    unless_null $P2849, vivify_1066
    new $P2849, "Undef"
  vivify_1066:
    add $P2850, $P2849, 1
    set $I2851, $P2850
    substr $S2852, $S2848, $I2851
    new $P2853, 'String'
    set $P2853, $S2852
    store_lex "$type", $P2853
.annotate 'line', 1959
    find_lex $P2854, "self"
    find_lex $P2855, "$s"
    unless_null $P2855, vivify_1067
    new $P2855, "Undef"
  vivify_1067:
    set $S2856, $P2855
    find_lex $P2857, "$i"
    unless_null $P2857, vivify_1068
    new $P2857, "Undef"
  vivify_1068:
    set $I2858, $P2857
    substr $S2859, $S2856, 0, $I2858
    $P2860 = $P2854."split-option-aliases"($S2859)
    store_lex "@options", $P2860
.annotate 'line', 1957
    goto if_2839_end
  if_2839:
.annotate 'line', 1955
    new $P2843, "String"
    assign $P2843, "b"
    store_lex "$type", $P2843
.annotate 'line', 1956
    find_lex $P2844, "self"
    find_lex $P2845, "$s"
    unless_null $P2845, vivify_1069
    new $P2845, "Undef"
  vivify_1069:
    $P2846 = $P2844."split-option-aliases"($P2845)
    store_lex "@options", $P2846
  if_2839_end:
.annotate 'line', 1961
    find_lex $P2862, "@options"
    unless_null $P2862, vivify_1070
    $P2862 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    defined $I2863, $P2862
    unless $I2863, for_undef_1071
    iter $P2861, $P2862
    new $P2874, 'ExceptionHandler'
    set_label $P2874, loop2873_handler
    $P2874."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2874
  loop2873_test:
    unless $P2861, loop2873_done
    shift $P2864, $P2861
  loop2873_redo:
    .const 'Sub' $P2866 = "250_1303687815.225" 
    capture_lex $P2866
    $P2866($P2864)
  loop2873_next:
    goto loop2873_test
  loop2873_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2875, exception, 'type'
    eq $P2875, .CONTROL_LOOP_NEXT, loop2873_next
    eq $P2875, .CONTROL_LOOP_REDO, loop2873_redo
  loop2873_done:
    pop_eh 
  for_undef_1071:
.annotate 'line', 1950
    .return ($P2861)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2865"  :anon :subid("250_1303687815.225") :outer("249_1303687815.225")
    .param pmc param_2867
.annotate 'line', 1961
    .lex "$_", param_2867
.annotate 'line', 1962
    find_lex $P2868, "$type"
    unless_null $P2868, vivify_1072
    new $P2868, "Undef"
  vivify_1072:
    find_lex $P2869, "$_"
    unless_null $P2869, vivify_1073
    new $P2869, "Undef"
  vivify_1073:
    find_lex $P2870, "self"
    find_lex $P2871, "$?CLASS"
    getattribute $P2872, $P2870, $P2871, "%!options"
    unless_null $P2872, vivify_1074
    $P2872 = root_new ['parrot';'Hash']
    setattribute $P2870, $P2871, "%!options", $P2872
  vivify_1074:
    set $P2872[$P2869], $P2868
.annotate 'line', 1961
    .return ($P2868)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("251_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2879
    .param pmc param_2880
.annotate 'line', 1967
    new $P2878, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2878, control_2877
    push_eh $P2878
    .lex "self", param_2879
    .lex "$x", param_2880
.annotate 'line', 1968
    find_lex $P2884, "$x"
    unless_null $P2884, vivify_1075
    new $P2884, "Undef"
  vivify_1075:
    set $S2885, $P2884
    iseq $I2886, $S2885, "-"
    unless $I2886, unless_2883
    new $P2882, 'Integer'
    set $P2882, $I2886
    goto unless_2883_end
  unless_2883:
    find_lex $P2887, "$x"
    unless_null $P2887, vivify_1076
    new $P2887, "Undef"
  vivify_1076:
    set $S2888, $P2887
    iseq $I2889, $S2888, "--"
    new $P2882, 'Integer'
    set $P2882, $I2889
  unless_2883_end:
    unless $P2882, if_2881_end
    new $P2890, "Exception"
    set $P2890['type'], .CONTROL_RETURN
    new $P2891, "Integer"
    assign $P2891, 0
    setattribute $P2890, 'payload', $P2891
    throw $P2890
  if_2881_end:
.annotate 'line', 1969
    find_lex $P2893, "$x"
    unless_null $P2893, vivify_1077
    new $P2893, "Undef"
  vivify_1077:
    set $S2894, $P2893
    substr $S2895, $S2894, 0, 1
    iseq $I2896, $S2895, "-"
    unless $I2896, if_2892_end
    new $P2897, "Exception"
    set $P2897['type'], .CONTROL_RETURN
    new $P2898, "Integer"
    assign $P2898, 1
    setattribute $P2897, 'payload', $P2898
    throw $P2897
  if_2892_end:
.annotate 'line', 1967
    .return (0)
  control_2877:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2899, exception, "payload"
    .return ($P2899)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("252_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2901
    .param pmc param_2902
.annotate 'line', 1973
    .lex "self", param_2901
    .lex "$x", param_2902
.annotate 'line', 1974
    new $P2903, "Undef"
    .lex "$spec", $P2903
    find_lex $P2904, "$x"
    unless_null $P2904, vivify_1078
    new $P2904, "Undef"
  vivify_1078:
    find_lex $P2905, "self"
    find_lex $P2906, "$?CLASS"
    getattribute $P2907, $P2905, $P2906, "%!options"
    unless_null $P2907, vivify_1079
    $P2907 = root_new ['parrot';'Hash']
  vivify_1079:
    set $P2908, $P2907[$P2904]
    unless_null $P2908, vivify_1080
    new $P2908, "Undef"
  vivify_1080:
    store_lex "$spec", $P2908
.annotate 'line', 1975
    find_lex $P2909, "$spec"
    unless_null $P2909, vivify_1081
    new $P2909, "Undef"
  vivify_1081:
    set $S2910, $P2909
    iseq $I2911, $S2910, "s"
.annotate 'line', 1973
    .return ($I2911)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("253_1303687815.225") :outer("242_1303687815.225")
    .param pmc param_2915
    .param pmc param_2916
.annotate 'line', 1978
    .const 'Sub' $P3003 = "256_1303687815.225" 
    capture_lex $P3003
    .const 'Sub' $P2969 = "255_1303687815.225" 
    capture_lex $P2969
    .const 'Sub' $P2920 = "254_1303687815.225" 
    capture_lex $P2920
    new $P2914, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2914, control_2913
    push_eh $P2914
    .lex "self", param_2915
    .lex "@args", param_2916
.annotate 'line', 1979
    new $P2917, "Undef"
    .lex "$i", $P2917
.annotate 'line', 1980
    new $P2918, "Undef"
    .lex "$arg-count", $P2918
.annotate 'line', 1982
    new $P2919, "Undef"
    .lex "$result", $P2919
.annotate 'line', 1986
    .const 'Sub' $P2920 = "254_1303687815.225" 
    newclosure $P2968, $P2920
    .lex "get-value", $P2968
.annotate 'line', 2001
    .const 'Sub' $P2969 = "255_1303687815.225" 
    newclosure $P2987, $P2969
    .lex "slurp-rest", $P2987
.annotate 'line', 1979
    new $P2988, "Integer"
    assign $P2988, 0
    store_lex "$i", $P2988
.annotate 'line', 1980
    find_lex $P2989, "@args"
    unless_null $P2989, vivify_1107
    $P2989 = root_new ['parrot';'ResizablePMCArray']
  vivify_1107:
    set $N2990, $P2989
    new $P2991, 'Float'
    set $P2991, $N2990
    store_lex "$arg-count", $P2991
.annotate 'line', 1982
    get_hll_global $P2992, ["HLL";"CommandLine"], "Result"
    $P2993 = $P2992."new"()
    store_lex "$result", $P2993
.annotate 'line', 1983
    find_lex $P2994, "$result"
    unless_null $P2994, vivify_1108
    new $P2994, "Undef"
  vivify_1108:
    $P2994."init"()
    find_lex $P2995, "get-value"
    find_lex $P2996, "slurp-rest"
.annotate 'line', 2009
    new $P3190, 'ExceptionHandler'
    set_label $P3190, loop3189_handler
    $P3190."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3190
  loop3189_test:
    find_lex $P2997, "$i"
    unless_null $P2997, vivify_1109
    new $P2997, "Undef"
  vivify_1109:
    set $N2998, $P2997
    find_lex $P2999, "$arg-count"
    unless_null $P2999, vivify_1110
    new $P2999, "Undef"
  vivify_1110:
    set $N3000, $P2999
    islt $I3001, $N2998, $N3000
    unless $I3001, loop3189_done
  loop3189_redo:
    .const 'Sub' $P3003 = "256_1303687815.225" 
    capture_lex $P3003
    $P3003()
  loop3189_next:
    goto loop3189_test
  loop3189_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3191, exception, 'type'
    eq $P3191, .CONTROL_LOOP_NEXT, loop3189_next
    eq $P3191, .CONTROL_LOOP_REDO, loop3189_redo
  loop3189_done:
    pop_eh 
.annotate 'line', 2061
    new $P3192, "Exception"
    set $P3192['type'], .CONTROL_RETURN
    find_lex $P3193, "$result"
    unless_null $P3193, vivify_1171
    new $P3193, "Undef"
  vivify_1171:
    setattribute $P3192, 'payload', $P3193
    throw $P3192
.annotate 'line', 1978
    .return ()
  control_2913:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3194, exception, "payload"
    .return ($P3194)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("254_1303687815.225") :outer("253_1303687815.225")
    .param pmc param_2921
.annotate 'line', 1986
    .lex "$opt", param_2921
.annotate 'line', 1987
    find_lex $P2924, "$i"
    unless_null $P2924, vivify_1082
    new $P2924, "Undef"
  vivify_1082:
    set $N2925, $P2924
    find_lex $P2926, "$arg-count"
    unless_null $P2926, vivify_1083
    new $P2926, "Undef"
  vivify_1083:
    sub $P2927, $P2926, 1
    set $N2928, $P2927
    iseq $I2929, $N2925, $N2928
    if $I2929, if_2923
.annotate 'line', 1989
    find_lex $P2936, "self"
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
    $P2942 = $P2936."is-option"($P2941)
    if $P2942, if_2935
.annotate 'line', 1991
    find_lex $P2949, "$i"
    unless_null $P2949, vivify_1087
    new $P2949, "Undef"
  vivify_1087:
    add $P2950, $P2949, 1
    set $I2951, $P2950
    find_lex $P2952, "@args"
    unless_null $P2952, vivify_1088
    $P2952 = root_new ['parrot';'ResizablePMCArray']
  vivify_1088:
    set $P2953, $P2952[$I2951]
    unless_null $P2953, vivify_1089
    new $P2953, "Undef"
  vivify_1089:
    find_lex $P2954, "self"
    find_lex $P2955, "$?CLASS"
    getattribute $P2956, $P2954, $P2955, "%!stopper"
    unless_null $P2956, vivify_1090
    $P2956 = root_new ['parrot';'Hash']
  vivify_1090:
    set $P2957, $P2956[$P2953]
    unless_null $P2957, vivify_1091
    new $P2957, "Undef"
  vivify_1091:
    if $P2957, if_2948
.annotate 'line', 1993
    find_lex $P2962, "$i"
    unless_null $P2962, vivify_1092
    new $P2962, "Undef"
  vivify_1092:
    clone $P2963, $P2962
    inc $P2962
    find_lex $P2964, "$i"
    unless_null $P2964, vivify_1093
    new $P2964, "Undef"
  vivify_1093:
    set $I2965, $P2964
    find_lex $P2966, "@args"
    unless_null $P2966, vivify_1094
    $P2966 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P2967, $P2966[$I2965]
    unless_null $P2967, vivify_1095
    new $P2967, "Undef"
  vivify_1095:
    set $P2947, $P2967
.annotate 'line', 1991
    goto if_2948_end
  if_2948:
.annotate 'line', 1992
    new $P2958, 'String'
    set $P2958, "Option "
    find_lex $P2959, "$opt"
    unless_null $P2959, vivify_1096
    new $P2959, "Undef"
  vivify_1096:
    concat $P2960, $P2958, $P2959
    concat $P2961, $P2960, " needs a value, but is followed by a stopper"
    die $P2961
  if_2948_end:
.annotate 'line', 1991
    set $P2934, $P2947
.annotate 'line', 1989
    goto if_2935_end
  if_2935:
.annotate 'line', 1990
    new $P2943, 'String'
    set $P2943, "Option "
    find_lex $P2944, "$opt"
    unless_null $P2944, vivify_1097
    new $P2944, "Undef"
  vivify_1097:
    concat $P2945, $P2943, $P2944
    concat $P2946, $P2945, " needs a value, but is followed by an option"
    die $P2946
  if_2935_end:
.annotate 'line', 1989
    set $P2922, $P2934
.annotate 'line', 1987
    goto if_2923_end
  if_2923:
.annotate 'line', 1988
    new $P2930, 'String'
    set $P2930, "Option "
    find_lex $P2931, "$opt"
    unless_null $P2931, vivify_1098
    new $P2931, "Undef"
  vivify_1098:
    concat $P2932, $P2930, $P2931
    concat $P2933, $P2932, " needs a value"
    die $P2933
  if_2923_end:
.annotate 'line', 1986
    .return ($P2922)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("255_1303687815.225") :outer("253_1303687815.225")
.annotate 'line', 2001
    find_lex $P2970, "$i"
    unless_null $P2970, vivify_1099
    new $P2970, "Undef"
  vivify_1099:
    clone $P2971, $P2970
    inc $P2970
.annotate 'line', 2003
    new $P2985, 'ExceptionHandler'
    set_label $P2985, loop2984_handler
    $P2985."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P2985
  loop2984_test:
    find_lex $P2972, "$i"
    unless_null $P2972, vivify_1100
    new $P2972, "Undef"
  vivify_1100:
    set $N2973, $P2972
    find_lex $P2974, "$arg-count"
    unless_null $P2974, vivify_1101
    new $P2974, "Undef"
  vivify_1101:
    set $N2975, $P2974
    islt $I2976, $N2973, $N2975
    unless $I2976, loop2984_done
  loop2984_redo:
.annotate 'line', 2004
    find_lex $P2977, "$result"
    unless_null $P2977, vivify_1102
    new $P2977, "Undef"
  vivify_1102:
    find_lex $P2978, "$i"
    unless_null $P2978, vivify_1103
    new $P2978, "Undef"
  vivify_1103:
    set $I2979, $P2978
    find_lex $P2980, "@args"
    unless_null $P2980, vivify_1104
    $P2980 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    set $P2981, $P2980[$I2979]
    unless_null $P2981, vivify_1105
    new $P2981, "Undef"
  vivify_1105:
    $P2977."add-argument"($P2981)
    find_lex $P2982, "$i"
    unless_null $P2982, vivify_1106
    new $P2982, "Undef"
  vivify_1106:
    clone $P2983, $P2982
    inc $P2982
  loop2984_next:
.annotate 'line', 2003
    goto loop2984_test
  loop2984_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P2986, exception, 'type'
    eq $P2986, .CONTROL_LOOP_NEXT, loop2984_next
    eq $P2986, .CONTROL_LOOP_REDO, loop2984_redo
  loop2984_done:
    pop_eh 
.annotate 'line', 2001
    .return ($I2976)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3002"  :anon :subid("256_1303687815.225") :outer("253_1303687815.225")
.annotate 'line', 2009
    .const 'Sub' $P3105 = "258_1303687815.225" 
    capture_lex $P3105
    .const 'Sub' $P3019 = "257_1303687815.225" 
    capture_lex $P3019
.annotate 'line', 2010
    new $P3004, "Undef"
    .lex "$cur", $P3004
    find_lex $P3005, "$i"
    unless_null $P3005, vivify_1111
    new $P3005, "Undef"
  vivify_1111:
    set $I3006, $P3005
    find_lex $P3007, "@args"
    unless_null $P3007, vivify_1112
    $P3007 = root_new ['parrot';'ResizablePMCArray']
  vivify_1112:
    set $P3008, $P3007[$I3006]
    unless_null $P3008, vivify_1113
    new $P3008, "Undef"
  vivify_1113:
    store_lex "$cur", $P3008
.annotate 'line', 2011
    find_lex $P3010, "self"
    find_lex $P3011, "$cur"
    unless_null $P3011, vivify_1114
    new $P3011, "Undef"
  vivify_1114:
    $P3012 = $P3010."is-option"($P3011)
    if $P3012, if_3009
.annotate 'line', 2053
    find_lex $P3176, "$cur"
    unless_null $P3176, vivify_1115
    new $P3176, "Undef"
  vivify_1115:
    find_lex $P3177, "self"
    find_lex $P3178, "$?CLASS"
    getattribute $P3179, $P3177, $P3178, "%!stopper"
    unless_null $P3179, vivify_1116
    $P3179 = root_new ['parrot';'Hash']
  vivify_1116:
    set $P3180, $P3179[$P3176]
    unless_null $P3180, vivify_1117
    new $P3180, "Undef"
  vivify_1117:
    if $P3180, if_3175
.annotate 'line', 2056
    find_lex $P3181, "$result"
    unless_null $P3181, vivify_1118
    new $P3181, "Undef"
  vivify_1118:
    find_lex $P3182, "$cur"
    unless_null $P3182, vivify_1119
    new $P3182, "Undef"
  vivify_1119:
    $P3181."add-argument"($P3182)
.annotate 'line', 2057
    find_lex $P3184, "self"
    find_lex $P3185, "$?CLASS"
    getattribute $P3186, $P3184, $P3185, "$!stop-after-first-arg"
    unless_null $P3186, vivify_1120
    new $P3186, "Undef"
  vivify_1120:
    unless $P3186, if_3183_end
    "slurp-rest"()
  if_3183_end:
.annotate 'line', 2055
    goto if_3175_end
  if_3175:
.annotate 'line', 2054
    "slurp-rest"()
  if_3175_end:
.annotate 'line', 2053
    goto if_3009_end
  if_3009:
.annotate 'line', 2012
    find_lex $P3014, "$cur"
    unless_null $P3014, vivify_1121
    new $P3014, "Undef"
  vivify_1121:
    set $S3015, $P3014
    substr $S3016, $S3015, 0, 2
    iseq $I3017, $S3016, "--"
    if $I3017, if_3013
.annotate 'line', 2031
    .const 'Sub' $P3105 = "258_1303687815.225" 
    capture_lex $P3105
    $P3105()
    goto if_3013_end
  if_3013:
.annotate 'line', 2012
    .const 'Sub' $P3019 = "257_1303687815.225" 
    capture_lex $P3019
    $P3019()
  if_3013_end:
  if_3009_end:
.annotate 'line', 2011
    find_lex $P3187, "$i"
    unless_null $P3187, vivify_1170
    new $P3187, "Undef"
  vivify_1170:
    clone $P3188, $P3187
    inc $P3187
.annotate 'line', 2009
    .return ($P3188)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3104"  :anon :subid("258_1303687815.225") :outer("256_1303687815.225")
.annotate 'line', 2031
    .const 'Sub' $P3150 = "259_1303687815.225" 
    capture_lex $P3150
.annotate 'line', 2032
    new $P3106, "Undef"
    .lex "$opt", $P3106
    find_lex $P3107, "$cur"
    unless_null $P3107, vivify_1122
    new $P3107, "Undef"
  vivify_1122:
    set $S3108, $P3107
    substr $S3109, $S3108, 1
    new $P3110, 'String'
    set $P3110, $S3109
    store_lex "$opt", $P3110
.annotate 'line', 2033
    find_lex $P3113, "$opt"
    unless_null $P3113, vivify_1123
    new $P3113, "Undef"
  vivify_1123:
    set $S3114, $P3113
    length $I3115, $S3114
    set $N3116, $I3115
    iseq $I3117, $N3116, 1.0
    if $I3117, if_3112
.annotate 'line', 2043
    .const 'Sub' $P3150 = "259_1303687815.225" 
    capture_lex $P3150
    $P3174 = $P3150()
    set $P3111, $P3174
.annotate 'line', 2033
    goto if_3112_end
  if_3112:
.annotate 'line', 2035
    find_lex $P3119, "$opt"
    unless_null $P3119, vivify_1131
    new $P3119, "Undef"
  vivify_1131:
    find_lex $P3120, "self"
    find_lex $P3121, "$?CLASS"
    getattribute $P3122, $P3120, $P3121, "%!options"
    unless_null $P3122, vivify_1132
    $P3122 = root_new ['parrot';'Hash']
  vivify_1132:
    set $P3123, $P3122[$P3119]
    unless_null $P3123, vivify_1133
    new $P3123, "Undef"
  vivify_1133:
    if $P3123, unless_3118_end
    new $P3124, 'String'
    set $P3124, "No such option -"
    find_lex $P3125, "$opt"
    unless_null $P3125, vivify_1134
    new $P3125, "Undef"
  vivify_1134:
    concat $P3126, $P3124, $P3125
    die $P3126
  unless_3118_end:
.annotate 'line', 2036
    find_lex $P3128, "self"
    find_lex $P3129, "$opt"
    unless_null $P3129, vivify_1135
    new $P3129, "Undef"
  vivify_1135:
    $P3130 = $P3128."wants-value"($P3129)
    if $P3130, if_3127
.annotate 'line', 2040
    find_lex $P3137, "$result"
    unless_null $P3137, vivify_1136
    new $P3137, "Undef"
  vivify_1136:
    find_lex $P3138, "$opt"
    unless_null $P3138, vivify_1137
    new $P3138, "Undef"
  vivify_1137:
    $P3137."add-option"($P3138, 1)
.annotate 'line', 2039
    goto if_3127_end
  if_3127:
.annotate 'line', 2037
    find_lex $P3131, "$result"
    unless_null $P3131, vivify_1138
    new $P3131, "Undef"
  vivify_1138:
    find_lex $P3132, "$opt"
    unless_null $P3132, vivify_1139
    new $P3132, "Undef"
  vivify_1139:
.annotate 'line', 2038
    new $P3133, 'String'
    set $P3133, "-"
    find_lex $P3134, "$opt"
    unless_null $P3134, vivify_1140
    new $P3134, "Undef"
  vivify_1140:
    concat $P3135, $P3133, $P3134
    $P3136 = "get-value"($P3135)
    $P3131."add-option"($P3132, $P3136)
  if_3127_end:
.annotate 'line', 2042
    new $P3141, 'String'
    set $P3141, "-"
    find_lex $P3142, "$opt"
    unless_null $P3142, vivify_1141
    new $P3142, "Undef"
  vivify_1141:
    concat $P3143, $P3141, $P3142
    find_lex $P3144, "self"
    find_lex $P3145, "$?CLASS"
    getattribute $P3146, $P3144, $P3145, "%!stopper"
    unless_null $P3146, vivify_1142
    $P3146 = root_new ['parrot';'Hash']
  vivify_1142:
    set $P3147, $P3146[$P3143]
    unless_null $P3147, vivify_1143
    new $P3147, "Undef"
  vivify_1143:
    if $P3147, if_3140
    set $P3139, $P3147
    goto if_3140_end
  if_3140:
    $P3148 = "slurp-rest"()
    set $P3139, $P3148
  if_3140_end:
.annotate 'line', 2033
    set $P3111, $P3139
  if_3112_end:
.annotate 'line', 2031
    .return ($P3111)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block3149"  :anon :subid("259_1303687815.225") :outer("258_1303687815.225")
.annotate 'line', 2043
    .const 'Sub' $P3156 = "260_1303687815.225" 
    capture_lex $P3156
.annotate 'line', 2045
    new $P3151, "Undef"
    .lex "$iter", $P3151
    find_lex $P3152, "$opt"
    unless_null $P3152, vivify_1124
    new $P3152, "Undef"
  vivify_1124:
    iter $P3153, $P3152
    store_lex "$iter", $P3153
.annotate 'line', 2046
    new $P3172, 'ExceptionHandler'
    set_label $P3172, loop3171_handler
    $P3172."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3172
  loop3171_test:
    find_lex $P3154, "$iter"
    unless_null $P3154, vivify_1125
    new $P3154, "Undef"
  vivify_1125:
    unless $P3154, loop3171_done
  loop3171_redo:
    .const 'Sub' $P3156 = "260_1303687815.225" 
    capture_lex $P3156
    $P3156()
  loop3171_next:
    goto loop3171_test
  loop3171_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3173, exception, 'type'
    eq $P3173, .CONTROL_LOOP_NEXT, loop3171_next
    eq $P3173, .CONTROL_LOOP_REDO, loop3171_redo
  loop3171_done:
    pop_eh 
.annotate 'line', 2043
    .return ($P3154)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3155"  :anon :subid("260_1303687815.225") :outer("259_1303687815.225")
.annotate 'line', 2047
    new $P3157, "Undef"
    .lex "$o", $P3157
    find_lex $P3158, "$iter"
    unless_null $P3158, vivify_1126
    new $P3158, "Undef"
  vivify_1126:
    shift $P3159, $P3158
    store_lex "$o", $P3159
.annotate 'line', 2048
    find_lex $P3161, "self"
    find_lex $P3162, "$o"
    unless_null $P3162, vivify_1127
    new $P3162, "Undef"
  vivify_1127:
    $P3163 = $P3161."wants-value"($P3162)
    unless $P3163, if_3160_end
    new $P3164, 'String'
    set $P3164, "Option -"
    find_lex $P3165, "$o"
    unless_null $P3165, vivify_1128
    new $P3165, "Undef"
  vivify_1128:
    concat $P3166, $P3164, $P3165
    concat $P3167, $P3166, " requires a value and cannot be grouped"
    die $P3167
  if_3160_end:
.annotate 'line', 2049
    find_lex $P3168, "$result"
    unless_null $P3168, vivify_1129
    new $P3168, "Undef"
  vivify_1129:
    find_lex $P3169, "$o"
    unless_null $P3169, vivify_1130
    new $P3169, "Undef"
  vivify_1130:
    $P3170 = $P3168."add-option"($P3169, 1)
.annotate 'line', 2046
    .return ($P3170)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block3018"  :anon :subid("257_1303687815.225") :outer("256_1303687815.225")
.annotate 'line', 2014
    new $P3020, "Undef"
    .lex "$opt", $P3020
.annotate 'line', 2015
    new $P3021, "Undef"
    .lex "$idx", $P3021
.annotate 'line', 2016
    new $P3022, "Undef"
    .lex "$value", $P3022
.annotate 'line', 2017
    new $P3023, "Undef"
    .lex "$has-value", $P3023
.annotate 'line', 2014
    find_lex $P3024, "$i"
    unless_null $P3024, vivify_1144
    new $P3024, "Undef"
  vivify_1144:
    set $I3025, $P3024
    find_lex $P3026, "@args"
    unless_null $P3026, vivify_1145
    $P3026 = root_new ['parrot';'ResizablePMCArray']
  vivify_1145:
    set $P3027, $P3026[$I3025]
    unless_null $P3027, vivify_1146
    new $P3027, "Undef"
  vivify_1146:
    set $S3028, $P3027
    substr $S3029, $S3028, 2
    new $P3030, 'String'
    set $P3030, $S3029
    store_lex "$opt", $P3030
.annotate 'line', 2015
    find_lex $P3031, "$opt"
    unless_null $P3031, vivify_1147
    new $P3031, "Undef"
  vivify_1147:
    set $S3032, $P3031
    index $I3033, $S3032, "="
    new $P3034, 'Integer'
    set $P3034, $I3033
    store_lex "$idx", $P3034
.annotate 'line', 2016
    new $P3035, "Integer"
    assign $P3035, 1
    store_lex "$value", $P3035
.annotate 'line', 2017
    new $P3036, "Integer"
    assign $P3036, 0
    store_lex "$has-value", $P3036
.annotate 'line', 2019
    find_lex $P3038, "$idx"
    unless_null $P3038, vivify_1148
    new $P3038, "Undef"
  vivify_1148:
    set $N3039, $P3038
    isge $I3040, $N3039, 0.0
    unless $I3040, if_3037_end
.annotate 'line', 2020
    find_lex $P3041, "$opt"
    unless_null $P3041, vivify_1149
    new $P3041, "Undef"
  vivify_1149:
    set $S3042, $P3041
    find_lex $P3043, "$idx"
    unless_null $P3043, vivify_1150
    new $P3043, "Undef"
  vivify_1150:
    add $P3044, $P3043, 1
    set $I3045, $P3044
    substr $S3046, $S3042, $I3045
    new $P3047, 'String'
    set $P3047, $S3046
    store_lex "$value", $P3047
.annotate 'line', 2021
    find_lex $P3048, "$opt"
    unless_null $P3048, vivify_1151
    new $P3048, "Undef"
  vivify_1151:
    set $S3049, $P3048
    find_lex $P3050, "$idx"
    unless_null $P3050, vivify_1152
    new $P3050, "Undef"
  vivify_1152:
    set $I3051, $P3050
    substr $S3052, $S3049, 0, $I3051
    new $P3053, 'String'
    set $P3053, $S3052
    store_lex "$opt", $P3053
.annotate 'line', 2022
    new $P3054, "Integer"
    assign $P3054, 1
    store_lex "$has-value", $P3054
  if_3037_end:
.annotate 'line', 2024
    find_lex $P3059, "$opt"
    unless_null $P3059, vivify_1153
    new $P3059, "Undef"
  vivify_1153:
    find_lex $P3056, "self"
    find_lex $P3057, "$?CLASS"
    getattribute $P3058, $P3056, $P3057, "%!options"
    unless_null $P3058, vivify_1154
    $P3058 = root_new ['parrot';'Hash']
  vivify_1154:
    exists $I3060, $P3058[$P3059]
    if $I3060, unless_3055_end
    new $P3061, 'String'
    set $P3061, "Illegal option --"
    find_lex $P3062, "$opt"
    unless_null $P3062, vivify_1155
    new $P3062, "Undef"
  vivify_1155:
    concat $P3063, $P3061, $P3062
    die $P3063
  unless_3055_end:
.annotate 'line', 2025
    find_lex $P3067, "$opt"
    unless_null $P3067, vivify_1156
    new $P3067, "Undef"
  vivify_1156:
    find_lex $P3068, "self"
    find_lex $P3069, "$?CLASS"
    getattribute $P3070, $P3068, $P3069, "%!options"
    unless_null $P3070, vivify_1157
    $P3070 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P3071, $P3070[$P3067]
    unless_null $P3071, vivify_1158
    new $P3071, "Undef"
  vivify_1158:
    set $S3072, $P3071
    isne $I3073, $S3072, "s"
    if $I3073, if_3066
    new $P3065, 'Integer'
    set $P3065, $I3073
    goto if_3066_end
  if_3066:
    find_lex $P3074, "$has-value"
    unless_null $P3074, vivify_1159
    new $P3074, "Undef"
  vivify_1159:
    set $P3065, $P3074
  if_3066_end:
    unless $P3065, if_3064_end
    new $P3075, 'String'
    set $P3075, "Option --"
    find_lex $P3076, "$opt"
    unless_null $P3076, vivify_1160
    new $P3076, "Undef"
  vivify_1160:
    concat $P3077, $P3075, $P3076
    concat $P3078, $P3077, " does not allow a value"
    die $P3078
  if_3064_end:
.annotate 'line', 2026
    find_lex $P3082, "$has-value"
    unless_null $P3082, vivify_1161
    new $P3082, "Undef"
  vivify_1161:
    isfalse $I3083, $P3082
    if $I3083, if_3081
    new $P3080, 'Integer'
    set $P3080, $I3083
    goto if_3081_end
  if_3081:
    find_lex $P3084, "self"
    find_lex $P3085, "$opt"
    unless_null $P3085, vivify_1162
    new $P3085, "Undef"
  vivify_1162:
    $P3086 = $P3084."wants-value"($P3085)
    set $P3080, $P3086
  if_3081_end:
    unless $P3080, if_3079_end
.annotate 'line', 2027
    new $P3087, 'String'
    set $P3087, "--"
    find_lex $P3088, "$opt"
    unless_null $P3088, vivify_1163
    new $P3088, "Undef"
  vivify_1163:
    concat $P3089, $P3087, $P3088
    $P3090 = "get-value"($P3089)
    store_lex "$value", $P3090
  if_3079_end:
.annotate 'line', 2029
    find_lex $P3091, "$result"
    unless_null $P3091, vivify_1164
    new $P3091, "Undef"
  vivify_1164:
    find_lex $P3092, "$opt"
    unless_null $P3092, vivify_1165
    new $P3092, "Undef"
  vivify_1165:
    find_lex $P3093, "$value"
    unless_null $P3093, vivify_1166
    new $P3093, "Undef"
  vivify_1166:
    $P3091."add-option"($P3092, $P3093)
.annotate 'line', 2030
    new $P3096, 'String'
    set $P3096, "--"
    find_lex $P3097, "$opt"
    unless_null $P3097, vivify_1167
    new $P3097, "Undef"
  vivify_1167:
    concat $P3098, $P3096, $P3097
    find_lex $P3099, "self"
    find_lex $P3100, "$?CLASS"
    getattribute $P3101, $P3099, $P3100, "%!stopper"
    unless_null $P3101, vivify_1168
    $P3101 = root_new ['parrot';'Hash']
  vivify_1168:
    set $P3102, $P3101[$P3098]
    unless_null $P3102, vivify_1169
    new $P3102, "Undef"
  vivify_1169:
    if $P3102, if_3095
    set $P3094, $P3102
    goto if_3095_end
  if_3095:
    find_lex $P3103, "slurp-rest"
    set $P3094, $P3103
  if_3095_end:
.annotate 'line', 2012
    .return ($P3094)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3233"  :subid("262_1303687815.225") :outer("10_1303687815.225")
.annotate 'line', 2096
    .const 'Sub' $P3249 = "265_1303687815.225" 
    capture_lex $P3249
    .const 'Sub' $P3242 = "264_1303687815.225" 
    capture_lex $P3242
    .const 'Sub' $P3237 = "263_1303687815.225" 
    capture_lex $P3237
    .lex "$?PACKAGE", $P3235
    .lex "$?CLASS", $P3236
.annotate 'line', 2103
    .const 'Sub' $P3242 = "264_1303687815.225" 
    newclosure $P3247, $P3242
.annotate 'line', 2096
    .return ($P3247)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post1172") :outer("262_1303687815.225")
.annotate 'line', 2096
    .const 'Sub' $P3234 = "262_1303687815.225" 
    .local pmc block
    set block, $P3234
    .const 'Sub' $P3249 = "265_1303687815.225" 
    capture_lex $P3249
    $P3249()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block3248"  :anon :subid("265_1303687815.225") :outer("262_1303687815.225")
.annotate 'line', 2096
    nqp_get_sc_object $P3250, "1303687806.753", 6
    .local pmc type_obj
    set type_obj, $P3250
    get_how $P3251, type_obj
    get_hll_global $P3252, "NQPAttribute"
    $P3253 = $P3252."new"("$!deserialize_past" :named("name"))
    $P3251."add_attribute"(type_obj, $P3253)
    get_how $P3254, type_obj
    .const 'Sub' $P3255 = "263_1303687815.225" 
    $P3254."add_method"(type_obj, "deserialize_past", $P3255)
    get_how $P3256, type_obj
    get_hll_global $P3257, "NQPAttribute"
    $P3258 = $P3257."new"("$!fixup_past" :named("name"))
    $P3256."add_attribute"(type_obj, $P3258)
    get_how $P3259, type_obj
    .const 'Sub' $P3260 = "264_1303687815.225" 
    $P3259."add_method"(type_obj, "fixup_past", $P3260)
    get_how $P3261, type_obj
    nqp_get_sc_object $P3262, "1303687805.184", 4
    $P3261."set_default_parent"(type_obj, $P3262)
    get_how $P3263, type_obj
    $P3264 = $P3263."compose"(type_obj)
    .return ($P3264)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("263_1303687815.225") :outer("262_1303687815.225")
    .param pmc param_3238
.annotate 'line', 2099
    .lex "self", param_3238
    find_lex $P3239, "self"
    find_lex $P3240, "$?CLASS"
    getattribute $P3241, $P3239, $P3240, "$!deserialize_past"
    unless_null $P3241, vivify_1173
    new $P3241, "Undef"
  vivify_1173:
    .return ($P3241)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("264_1303687815.225") :outer("262_1303687815.225")
    .param pmc param_3243
.annotate 'line', 2103
    .lex "self", param_3243
    find_lex $P3244, "self"
    find_lex $P3245, "$?CLASS"
    getattribute $P3246, $P3244, $P3245, "$!fixup_past"
    unless_null $P3246, vivify_1174
    new $P3246, "Undef"
  vivify_1174:
    .return ($P3246)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3265"  :subid("266_1303687815.225") :outer("10_1303687815.225")
.annotate 'line', 2106
    .const 'Sub' $P3839 = "292_1303687815.225" 
    capture_lex $P3839
    .const 'Sub' $P3767 = "290_1303687815.225" 
    capture_lex $P3767
    .const 'Sub' $P3762 = "289_1303687815.225" 
    capture_lex $P3762
    .const 'Sub' $P3745 = "288_1303687815.225" 
    capture_lex $P3745
    .const 'Sub' $P3718 = "287_1303687815.225" 
    capture_lex $P3718
    .const 'Sub' $P3712 = "286_1303687815.225" 
    capture_lex $P3712
    .const 'Sub' $P3643 = "285_1303687815.225" 
    capture_lex $P3643
    .const 'Sub' $P3619 = "284_1303687815.225" 
    capture_lex $P3619
    .const 'Sub' $P3580 = "283_1303687815.225" 
    capture_lex $P3580
    .const 'Sub' $P3497 = "280_1303687815.225" 
    capture_lex $P3497
    .const 'Sub' $P3472 = "279_1303687815.225" 
    capture_lex $P3472
    .const 'Sub' $P3429 = "277_1303687815.225" 
    capture_lex $P3429
    .const 'Sub' $P3395 = "276_1303687815.225" 
    capture_lex $P3395
    .const 'Sub' $P3381 = "275_1303687815.225" 
    capture_lex $P3381
    .const 'Sub' $P3356 = "274_1303687815.225" 
    capture_lex $P3356
    .const 'Sub' $P3348 = "273_1303687815.225" 
    capture_lex $P3348
    .const 'Sub' $P3333 = "272_1303687815.225" 
    capture_lex $P3333
    .const 'Sub' $P3316 = "271_1303687815.225" 
    capture_lex $P3316
    .const 'Sub' $P3302 = "270_1303687815.225" 
    capture_lex $P3302
    .const 'Sub' $P3284 = "269_1303687815.225" 
    capture_lex $P3284
    .const 'Sub' $P3275 = "268_1303687815.225" 
    capture_lex $P3275
    .const 'Sub' $P3267 = "267_1303687815.225" 
    capture_lex $P3267
.annotate 'line', 2116
    .const 'Sub' $P3267 = "267_1303687815.225" 
    newclosure $P3271, $P3267
    .lex "addr", $P3271
.annotate 'line', 2106
    .lex "$?PACKAGE", $P3272
    .lex "$?CLASS", $P3273
    find_lex $P3274, "addr"
.annotate 'line', 2425
    .const 'Sub' $P3767 = "290_1303687815.225" 
    newclosure $P3837, $P3767
.annotate 'line', 2106
    .return ($P3837)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post1175") :outer("266_1303687815.225")
.annotate 'line', 2106
    .const 'Sub' $P3266 = "266_1303687815.225" 
    .local pmc block
    set block, $P3266
    .const 'Sub' $P3839 = "292_1303687815.225" 
    capture_lex $P3839
    $P3839()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3838"  :anon :subid("292_1303687815.225") :outer("266_1303687815.225")
.annotate 'line', 2106
    nqp_get_sc_object $P3840, "1303687806.753", 7
    .local pmc type_obj
    set type_obj, $P3840
    get_how $P3841, type_obj
    get_hll_global $P3842, "NQPAttribute"
    $P3843 = $P3842."new"("$!sc" :named("name"))
    $P3841."add_attribute"(type_obj, $P3843)
    get_how $P3844, type_obj
    get_hll_global $P3845, "NQPAttribute"
    $P3846 = $P3845."new"("$!handle" :named("name"))
    $P3844."add_attribute"(type_obj, $P3846)
    get_how $P3847, type_obj
    get_hll_global $P3848, "NQPAttribute"
    $P3849 = $P3848."new"("%!addr_to_slot" :named("name"))
    $P3847."add_attribute"(type_obj, $P3849)
    get_how $P3850, type_obj
    get_hll_global $P3851, "NQPAttribute"
    $P3852 = $P3851."new"("@!event_stream" :named("name"))
    $P3850."add_attribute"(type_obj, $P3852)
    get_how $P3853, type_obj
    .const 'Sub' $P3854 = "268_1303687815.225" 
    $P3853."add_method"(type_obj, "new", $P3854)
    get_how $P3855, type_obj
    .const 'Sub' $P3856 = "269_1303687815.225" 
    $P3855."add_method"(type_obj, "BUILD", $P3856)
    get_how $P3857, type_obj
    .const 'Sub' $P3858 = "270_1303687815.225" 
    $P3857."add_method"(type_obj, "slot_for_object", $P3858)
    get_how $P3859, type_obj
    .const 'Sub' $P3860 = "271_1303687815.225" 
    $P3859."add_method"(type_obj, "get_slot_past_for_object", $P3860)
    get_how $P3861, type_obj
    .const 'Sub' $P3862 = "272_1303687815.225" 
    $P3861."add_method"(type_obj, "set_slot_past", $P3862)
    get_how $P3863, type_obj
    .const 'Sub' $P3864 = "273_1303687815.225" 
    $P3863."add_method"(type_obj, "set_cur_sc", $P3864)
    get_how $P3865, type_obj
    .const 'Sub' $P3866 = "274_1303687815.225" 
    $P3865."add_method"(type_obj, "add_object", $P3866)
    get_how $P3867, type_obj
    .const 'Sub' $P3868 = "275_1303687815.225" 
    $P3867."add_method"(type_obj, "add_event", $P3868)
    get_how $P3869, type_obj
    .const 'Sub' $P3870 = "276_1303687815.225" 
    $P3869."add_method"(type_obj, "get_object_sc_ref_past", $P3870)
    get_how $P3871, type_obj
    .const 'Sub' $P3872 = "277_1303687815.225" 
    $P3871."add_method"(type_obj, "load_setting", $P3872)
    get_how $P3873, type_obj
    .const 'Sub' $P3874 = "279_1303687815.225" 
    $P3873."add_method"(type_obj, "load_module", $P3874)
    get_how $P3875, type_obj
    .const 'Sub' $P3876 = "280_1303687815.225" 
    $P3875."add_method"(type_obj, "install_package_symbol", $P3876)
    get_how $P3877, type_obj
    .const 'Sub' $P3878 = "283_1303687815.225" 
    $P3877."add_method"(type_obj, "install_lexical_symbol", $P3878)
    get_how $P3879, type_obj
    .const 'Sub' $P3880 = "284_1303687815.225" 
    $P3879."add_method"(type_obj, "install_package_routine", $P3880)
    get_how $P3881, type_obj
    .const 'Sub' $P3882 = "285_1303687815.225" 
    $P3881."add_method"(type_obj, "pkg_create_mo", $P3882)
    get_how $P3883, type_obj
    .const 'Sub' $P3884 = "286_1303687815.225" 
    $P3883."add_method"(type_obj, "pkg_add_method", $P3884)
    get_how $P3885, type_obj
    .const 'Sub' $P3886 = "287_1303687815.225" 
    $P3885."add_method"(type_obj, "pkg_add_parent_or_role", $P3886)
    get_how $P3887, type_obj
    .const 'Sub' $P3888 = "288_1303687815.225" 
    $P3887."add_method"(type_obj, "pkg_compose", $P3888)
    get_how $P3889, type_obj
    .const 'Sub' $P3890 = "289_1303687815.225" 
    $P3889."add_method"(type_obj, "sc", $P3890)
    get_how $P3891, type_obj
    .const 'Sub' $P3892 = "290_1303687815.225" 
    $P3891."add_method"(type_obj, "to_past", $P3892)
    get_how $P3893, type_obj
    nqp_get_sc_object $P3894, "1303687805.184", 4
    $P3893."set_default_parent"(type_obj, $P3894)
    get_how $P3895, type_obj
    $P3896 = $P3895."compose"(type_obj)
    .return ($P3896)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("267_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3268
.annotate 'line', 2116
    .lex "$obj", param_3268
.annotate 'line', 2117
    find_lex $P3269, "$obj"
    unless_null $P3269, vivify_1176
    new $P3269, "Undef"
  vivify_1176:
    get_addr $I3270, $P3269
.annotate 'line', 2116
    .return ($I3270)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("268_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3276
    .param pmc param_3277 :named("handle")
.annotate 'line', 2124
    .lex "self", param_3276
    .lex "$handle", param_3277
.annotate 'line', 2125
    new $P3278, "Undef"
    .lex "$obj", $P3278
    find_lex $P3279, "self"
    $P3280 = $P3279."CREATE"()
    store_lex "$obj", $P3280
.annotate 'line', 2126
    find_lex $P3281, "$obj"
    unless_null $P3281, vivify_1177
    new $P3281, "Undef"
  vivify_1177:
    find_lex $P3282, "$handle"
    unless_null $P3282, vivify_1178
    new $P3282, "Undef"
  vivify_1178:
    $P3281."BUILD"($P3282 :named("handle"))
    find_lex $P3283, "$obj"
    unless_null $P3283, vivify_1179
    new $P3283, "Undef"
  vivify_1179:
.annotate 'line', 2124
    .return ($P3283)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("269_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3285
    .param pmc param_3286 :optional :named("handle")
    .param int has_param_3286 :opt_flag
.annotate 'line', 2130
    .lex "self", param_3285
    if has_param_3286, optparam_1180
    new $P3287, "Undef"
    set param_3286, $P3287
  optparam_1180:
    .lex "$handle", param_3286
.annotate 'line', 2131
    find_lex $P3288, "$handle"
    unless_null $P3288, vivify_1181
    new $P3288, "Undef"
  vivify_1181:
    set $S3289, $P3288
    nqp_create_sc $P3290, $S3289
    find_lex $P3291, "self"
    find_lex $P3292, "$?CLASS"
    setattribute $P3291, $P3292, "$!sc", $P3290
.annotate 'line', 2132
    find_lex $P3293, "$handle"
    unless_null $P3293, vivify_1182
    new $P3293, "Undef"
  vivify_1182:
    find_lex $P3294, "self"
    find_lex $P3295, "$?CLASS"
    setattribute $P3294, $P3295, "$!handle", $P3293
.annotate 'line', 2133
    new $P3296, "Hash"
    find_lex $P3297, "self"
    find_lex $P3298, "$?CLASS"
    setattribute $P3297, $P3298, "%!addr_to_slot", $P3296
.annotate 'line', 2134
    new $P3299, "ResizablePMCArray"
    find_lex $P3300, "self"
    find_lex $P3301, "$?CLASS"
    setattribute $P3300, $P3301, "@!event_stream", $P3299
.annotate 'line', 2130
    .return ($P3299)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("270_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3303
    .param pmc param_3304
.annotate 'line', 2138
    .lex "self", param_3303
    .lex "$obj", param_3304
.annotate 'line', 2139
    new $P3305, "Undef"
    .lex "$slot", $P3305
    find_lex $P3306, "$obj"
    unless_null $P3306, vivify_1183
    new $P3306, "Undef"
  vivify_1183:
    $P3307 = "addr"($P3306)
    find_lex $P3308, "self"
    find_lex $P3309, "$?CLASS"
    getattribute $P3310, $P3308, $P3309, "%!addr_to_slot"
    unless_null $P3310, vivify_1184
    $P3310 = root_new ['parrot';'Hash']
  vivify_1184:
    set $P3311, $P3310[$P3307]
    unless_null $P3311, vivify_1185
    new $P3311, "Undef"
  vivify_1185:
    store_lex "$slot", $P3311
.annotate 'line', 2140
    find_lex $P3313, "$slot"
    unless_null $P3313, vivify_1186
    new $P3313, "Undef"
  vivify_1186:
    defined $I3314, $P3313
    if $I3314, unless_3312_end
.annotate 'line', 2141
    die "slot_for_object called on object not in context"
  unless_3312_end:
.annotate 'line', 2140
    find_lex $P3315, "$slot"
    unless_null $P3315, vivify_1187
    new $P3315, "Undef"
  vivify_1187:
.annotate 'line', 2138
    .return ($P3315)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("271_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3319
    .param pmc param_3320
.annotate 'line', 2150
    new $P3318, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3318, control_3317
    push_eh $P3318
    .lex "self", param_3319
    .lex "$obj", param_3320
.annotate 'line', 2151
    new $P3321, "Undef"
    .lex "$slot", $P3321
    find_lex $P3322, "self"
    find_lex $P3323, "$obj"
    unless_null $P3323, vivify_1188
    new $P3323, "Undef"
  vivify_1188:
    $P3324 = $P3322."slot_for_object"($P3323)
    store_lex "$slot", $P3324
.annotate 'line', 2152
    new $P3325, "Exception"
    set $P3325['type'], .CONTROL_RETURN
    get_hll_global $P3326, ["PAST"], "Op"
    find_lex $P3327, "self"
    find_lex $P3328, "$?CLASS"
    getattribute $P3329, $P3327, $P3328, "$!handle"
    unless_null $P3329, vivify_1189
    new $P3329, "Undef"
  vivify_1189:
    find_lex $P3330, "$slot"
    unless_null $P3330, vivify_1190
    new $P3330, "Undef"
  vivify_1190:
    $P3331 = $P3326."new"($P3329, $P3330, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P3325, 'payload', $P3331
    throw $P3325
.annotate 'line', 2150
    .return ()
  control_3317:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3332, exception, "payload"
    .return ($P3332)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("272_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3336
    .param pmc param_3337
    .param pmc param_3338
.annotate 'line', 2156
    new $P3335, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3335, control_3334
    push_eh $P3335
    .lex "self", param_3336
    .lex "$slot", param_3337
    .lex "$past_to_set", param_3338
.annotate 'line', 2157
    new $P3339, "Exception"
    set $P3339['type'], .CONTROL_RETURN
    get_hll_global $P3340, ["PAST"], "Op"
    find_lex $P3341, "self"
    find_lex $P3342, "$?CLASS"
    getattribute $P3343, $P3341, $P3342, "$!handle"
    unless_null $P3343, vivify_1191
    new $P3343, "Undef"
  vivify_1191:
    find_lex $P3344, "$slot"
    unless_null $P3344, vivify_1192
    new $P3344, "Undef"
  vivify_1192:
    find_lex $P3345, "$past_to_set"
    unless_null $P3345, vivify_1193
    new $P3345, "Undef"
  vivify_1193:
    $P3346 = $P3340."new"($P3343, $P3344, $P3345, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P3339, 'payload', $P3346
    throw $P3339
.annotate 'line', 2156
    .return ()
  control_3334:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3347, exception, "payload"
    .return ($P3347)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("273_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3349
    .param pmc param_3350
.annotate 'line', 2163
    .lex "self", param_3349
    .lex "$to_wrap", param_3350
.annotate 'line', 2164
    get_hll_global $P3351, ["PAST"], "Op"
    find_lex $P3352, "$to_wrap"
    unless_null $P3352, vivify_1194
    new $P3352, "Undef"
  vivify_1194:
.annotate 'line', 2167
    get_hll_global $P3353, ["PAST"], "Var"
    $P3354 = $P3353."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P3355 = $P3351."new"($P3352, $P3354, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2163
    .return ($P3355)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("274_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3357
    .param pmc param_3358
.annotate 'line', 2172
    .lex "self", param_3357
    .lex "$obj", param_3358
.annotate 'line', 2174
    new $P3359, "Undef"
    .lex "$idx", $P3359
.annotate 'line', 2173
    find_lex $P3360, "$obj"
    unless_null $P3360, vivify_1195
    new $P3360, "Undef"
  vivify_1195:
    find_lex $P3361, "self"
    find_lex $P3362, "$?CLASS"
    getattribute $P3363, $P3361, $P3362, "$!sc"
    unless_null $P3363, vivify_1196
    new $P3363, "Undef"
  vivify_1196:
    nqp_set_sc_for_object $P3360, $P3363
.annotate 'line', 2174
    find_lex $P3364, "self"
    find_lex $P3365, "$?CLASS"
    getattribute $P3366, $P3364, $P3365, "$!sc"
    unless_null $P3366, vivify_1197
    new $P3366, "Undef"
  vivify_1197:
    $P3367 = $P3366."elems"()
    store_lex "$idx", $P3367
.annotate 'line', 2175
    find_lex $P3368, "$obj"
    unless_null $P3368, vivify_1198
    new $P3368, "Undef"
  vivify_1198:
    find_lex $P3369, "$idx"
    unless_null $P3369, vivify_1199
    new $P3369, "Undef"
  vivify_1199:
    set $I3370, $P3369
    find_lex $P3371, "self"
    find_lex $P3372, "$?CLASS"
    getattribute $P3373, $P3371, $P3372, "$!sc"
    unless_null $P3373, vivify_1200
    $P3373 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P3371, $P3372, "$!sc", $P3373
  vivify_1200:
    set $P3373[$I3370], $P3368
.annotate 'line', 2176
    find_lex $P3374, "$idx"
    unless_null $P3374, vivify_1201
    new $P3374, "Undef"
  vivify_1201:
    find_lex $P3375, "$obj"
    unless_null $P3375, vivify_1202
    new $P3375, "Undef"
  vivify_1202:
    $P3376 = "addr"($P3375)
    find_lex $P3377, "self"
    find_lex $P3378, "$?CLASS"
    getattribute $P3379, $P3377, $P3378, "%!addr_to_slot"
    unless_null $P3379, vivify_1203
    $P3379 = root_new ['parrot';'Hash']
    setattribute $P3377, $P3378, "%!addr_to_slot", $P3379
  vivify_1203:
    set $P3379[$P3376], $P3374
    find_lex $P3380, "$idx"
    unless_null $P3380, vivify_1204
    new $P3380, "Undef"
  vivify_1204:
.annotate 'line', 2172
    .return ($P3380)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("275_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3382
    .param pmc param_3383 :optional :named("deserialize_past")
    .param int has_param_3383 :opt_flag
    .param pmc param_3385 :optional :named("fixup_past")
    .param int has_param_3385 :opt_flag
.annotate 'line', 2181
    .lex "self", param_3382
    if has_param_3383, optparam_1205
    new $P3384, "Undef"
    set param_3383, $P3384
  optparam_1205:
    .lex "$deserialize_past", param_3383
    if has_param_3385, optparam_1206
    new $P3386, "Undef"
    set param_3385, $P3386
  optparam_1206:
    .lex "$fixup_past", param_3385
.annotate 'line', 2182
    find_lex $P3387, "self"
    find_lex $P3388, "$?CLASS"
    getattribute $P3389, $P3387, $P3388, "@!event_stream"
    unless_null $P3389, vivify_1207
    $P3389 = root_new ['parrot';'ResizablePMCArray']
  vivify_1207:
    get_hll_global $P3390, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P3391, "$deserialize_past"
    unless_null $P3391, vivify_1208
    new $P3391, "Undef"
  vivify_1208:
    find_lex $P3392, "$fixup_past"
    unless_null $P3392, vivify_1209
    new $P3392, "Undef"
  vivify_1209:
    $P3393 = $P3390."new"($P3391 :named("deserialize_past"), $P3392 :named("fixup_past"))
    $P3394 = $P3389."push"($P3393)
.annotate 'line', 2181
    .return ($P3394)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("276_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3396
    .param pmc param_3397
.annotate 'line', 2189
    .lex "self", param_3396
    .lex "$obj", param_3397
.annotate 'line', 2192
    new $P3398, "Undef"
    .lex "$sc", $P3398
    find_lex $P3399, "$obj"
    unless_null $P3399, vivify_1210
    new $P3399, "Undef"
  vivify_1210:
    nqp_get_sc_for_object $P3400, $P3399
    store_lex "$sc", $P3400
.annotate 'line', 2193
    find_lex $P3402, "$sc"
    unless_null $P3402, vivify_1211
    new $P3402, "Undef"
  vivify_1211:
    isnull $I3403, $P3402
    unless $I3403, if_3401_end
.annotate 'line', 2194
    new $P3404, "String"
    assign $P3404, "Object of type '"
    find_lex $P3405, "$obj"
    unless_null $P3405, vivify_1212
    new $P3405, "Undef"
  vivify_1212:
    get_how $P3406, $P3405
    find_lex $P3407, "$obj"
    unless_null $P3407, vivify_1213
    new $P3407, "Undef"
  vivify_1213:
    $S3408 = $P3406."name"($P3407)
    concat $P3409, $P3404, $S3408
    concat $P3410, $P3409, "' cannot be referenced without having been "
    concat $P3411, $P3410, "assigned a serialization context"
.annotate 'line', 2195
    die $P3411
  if_3401_end:
.annotate 'line', 2201
    find_lex $P3414, "$sc"
    unless_null $P3414, vivify_1214
    new $P3414, "Undef"
  vivify_1214:
    find_lex $P3415, "self"
    find_lex $P3416, "$?CLASS"
    getattribute $P3417, $P3415, $P3416, "$!sc"
    unless_null $P3417, vivify_1215
    new $P3417, "Undef"
  vivify_1215:
    issame $I3418, $P3414, $P3417
    if $I3418, if_3413
.annotate 'line', 2205
    get_hll_global $P3422, ["PAST"], "Op"
.annotate 'line', 2206
    find_lex $P3423, "$sc"
    unless_null $P3423, vivify_1216
    new $P3423, "Undef"
  vivify_1216:
    $P3424 = $P3423."handle"()
    find_lex $P3425, "$sc"
    unless_null $P3425, vivify_1217
    new $P3425, "Undef"
  vivify_1217:
    find_lex $P3426, "$obj"
    unless_null $P3426, vivify_1218
    new $P3426, "Undef"
  vivify_1218:
    $P3427 = $P3425."slot_index_for"($P3426)
    $P3428 = $P3422."new"($P3424, $P3427, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2204
    set $P3412, $P3428
.annotate 'line', 2201
    goto if_3413_end
  if_3413:
.annotate 'line', 2202
    find_lex $P3419, "self"
    find_lex $P3420, "$obj"
    unless_null $P3420, vivify_1219
    new $P3420, "Undef"
  vivify_1219:
    $P3421 = $P3419."get_slot_past_for_object"($P3420)
.annotate 'line', 2201
    set $P3412, $P3421
  if_3413_end:
.annotate 'line', 2189
    .return ($P3412)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("277_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3430
    .param pmc param_3431
.annotate 'line', 2212
    .const 'Sub' $P3438 = "278_1303687815.225" 
    capture_lex $P3438
    .lex "self", param_3430
    .lex "$setting_name", param_3431
.annotate 'line', 2214
    find_lex $P3434, "$setting_name"
    unless_null $P3434, vivify_1220
    new $P3434, "Undef"
  vivify_1220:
    set $S3435, $P3434
    isne $I3436, $S3435, "NULL"
    if $I3436, if_3433
    new $P3432, 'Integer'
    set $P3432, $I3436
    goto if_3433_end
  if_3433:
    .const 'Sub' $P3438 = "278_1303687815.225" 
    capture_lex $P3438
    $P3471 = $P3438()
    set $P3432, $P3471
  if_3433_end:
.annotate 'line', 2212
    .return ($P3432)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3437"  :anon :subid("278_1303687815.225") :outer("277_1303687815.225")
.annotate 'line', 2218
    new $P3439, "Undef"
    .lex "$path", $P3439
    find_dynamic_lex $P3440, "%*COMPILING"
    unless_null $P3440, vivify_1221
    get_hll_global $P3440, "%COMPILING"
    unless_null $P3440, vivify_1222
    die "Contextual %*COMPILING not found"
  vivify_1222:
  vivify_1221:
    set $P3441, $P3440["%?OPTIONS"]
    unless_null $P3441, vivify_1223
    $P3441 = root_new ['parrot';'Hash']
  vivify_1223:
    set $P3442, $P3441["setting-path"]
    unless_null $P3442, vivify_1224
    new $P3442, "Undef"
  vivify_1224:
    store_lex "$path", $P3442
.annotate 'line', 2219
    get_hll_global $P3443, "ModuleLoader"
.annotate 'line', 2220
    find_lex $P3446, "$path"
    unless_null $P3446, vivify_1225
    new $P3446, "Undef"
  vivify_1225:
    if $P3446, if_3445
    find_lex $P3451, "$setting_name"
    unless_null $P3451, vivify_1226
    new $P3451, "Undef"
  vivify_1226:
    set $P3444, $P3451
    goto if_3445_end
  if_3445:
    find_lex $P3447, "$path"
    unless_null $P3447, vivify_1227
    new $P3447, "Undef"
  vivify_1227:
    concat $P3448, $P3447, "/"
    find_lex $P3449, "$setting_name"
    unless_null $P3449, vivify_1228
    new $P3449, "Undef"
  vivify_1228:
    concat $P3450, $P3448, $P3449
    set $P3444, $P3450
  if_3445_end:
    $P3452 = $P3443."load_setting"($P3444)
.annotate 'line', 2219
    find_dynamic_lex $P3453, "%*COMPILING"
    unless_null $P3453, vivify_1229
    get_hll_global $P3453, "%COMPILING"
    unless_null $P3453, vivify_1230
    die "Contextual %*COMPILING not found"
  vivify_1230:
    store_dynamic_lex "%*COMPILING", $P3453
  vivify_1229:
    set $P3454, $P3453["%?OPTIONS"]
    unless_null $P3454, vivify_1231
    $P3454 = root_new ['parrot';'Hash']
    set $P3453["%?OPTIONS"], $P3454
  vivify_1231:
    set $P3454["outer_ctx"], $P3452
.annotate 'line', 2223
    find_lex $P3455, "self"
    get_hll_global $P3456, ["PAST"], "Stmts"
.annotate 'line', 2224
    get_hll_global $P3457, ["PAST"], "Op"
    $P3458 = $P3457."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2227
    get_hll_global $P3459, ["PAST"], "Op"
.annotate 'line', 2229
    get_hll_global $P3460, ["PAST"], "Var"
    $P3461 = $P3460."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 2230
    get_hll_global $P3462, ["PAST"], "Op"
.annotate 'line', 2232
    get_hll_global $P3463, ["PAST"], "Var"
    new $P3464, "ResizablePMCArray"
    $P3465 = $P3463."new"("ModuleLoader" :named("name"), $P3464 :named("namespace"), "package" :named("scope"))
    find_lex $P3466, "$setting_name"
    unless_null $P3466, vivify_1232
    new $P3466, "Undef"
  vivify_1232:
    $P3467 = $P3462."new"($P3465, $P3466, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 2230
    $P3468 = $P3459."new"($P3461, $P3467, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 2227
    $P3469 = $P3456."new"($P3458, $P3468)
.annotate 'line', 2223
    $P3470 = $P3455."add_event"($P3469 :named("deserialize_past"))
.annotate 'line', 2214
    .return ($P3470)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("279_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3473
    .param pmc param_3474
    .param pmc param_3475
.annotate 'line', 2242
    .lex "self", param_3473
    .lex "$module_name", param_3474
    .lex "$cur_GLOBALish", param_3475
.annotate 'line', 2244
    get_hll_global $P3476, "ModuleLoader"
    find_lex $P3477, "$module_name"
    unless_null $P3477, vivify_1233
    new $P3477, "Undef"
  vivify_1233:
    find_lex $P3478, "$cur_GLOBALish"
    unless_null $P3478, vivify_1234
    new $P3478, "Undef"
  vivify_1234:
    find_dynamic_lex $P3479, "%*COMPILING"
    unless_null $P3479, vivify_1235
    get_hll_global $P3479, "%COMPILING"
    unless_null $P3479, vivify_1236
    die "Contextual %*COMPILING not found"
  vivify_1236:
  vivify_1235:
    set $P3480, $P3479["%?OPTIONS"]
    unless_null $P3480, vivify_1237
    $P3480 = root_new ['parrot';'Hash']
  vivify_1237:
    set $P3481, $P3480["module-path"]
    unless_null $P3481, vivify_1238
    new $P3481, "Undef"
  vivify_1238:
    $P3476."load_module"($P3477, $P3478, $P3481 :named("prefix"))
.annotate 'line', 2248
    find_lex $P3482, "self"
    get_hll_global $P3483, ["PAST"], "Stmts"
.annotate 'line', 2249
    get_hll_global $P3484, ["PAST"], "Op"
    $P3485 = $P3484."new"("ModuleLoader.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 2252
    get_hll_global $P3486, ["PAST"], "Op"
.annotate 'line', 2254
    get_hll_global $P3487, ["PAST"], "Var"
    new $P3488, "ResizablePMCArray"
    $P3489 = $P3487."new"("ModuleLoader" :named("name"), $P3488 :named("namespace"), "package" :named("scope"))
    find_lex $P3490, "$module_name"
    unless_null $P3490, vivify_1239
    new $P3490, "Undef"
  vivify_1239:
.annotate 'line', 2256
    find_lex $P3491, "self"
    find_lex $P3492, "$cur_GLOBALish"
    unless_null $P3492, vivify_1240
    new $P3492, "Undef"
  vivify_1240:
    $P3493 = $P3491."get_slot_past_for_object"($P3492)
    $P3494 = $P3486."new"($P3489, $P3490, $P3493, "callmethod" :named("pasttype"), "load_module" :named("name"))
.annotate 'line', 2252
    $P3495 = $P3483."new"($P3485, $P3494)
.annotate 'line', 2248
    $P3496 = $P3482."add_event"($P3495 :named("deserialize_past"))
.annotate 'line', 2242
    .return ($P3496)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "install_package_symbol"  :subid("280_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3498
    .param pmc param_3499
    .param pmc param_3500
    .param pmc param_3501
.annotate 'line', 2262
    .const 'Sub' $P3538 = "282_1303687815.225" 
    capture_lex $P3538
    .const 'Sub' $P3517 = "281_1303687815.225" 
    capture_lex $P3517
    .lex "self", param_3498
    .lex "$package", param_3499
    .lex "@sym", param_3500
    .lex "$obj", param_3501
.annotate 'line', 2264
    new $P3502, "Undef"
    .lex "$name", $P3502
.annotate 'line', 2267
    new $P3503, "Undef"
    .lex "$target", $P3503
.annotate 'line', 2274
    new $P3504, "Undef"
    .lex "$path", $P3504
.annotate 'line', 2263
    find_lex $P3505, "@sym"
    unless_null $P3505, vivify_1241
    $P3505 = root_new ['parrot';'ResizablePMCArray']
  vivify_1241:
    clone $P3506, $P3505
    store_lex "@sym", $P3506
.annotate 'line', 2264
    find_lex $P3507, "@sym"
    unless_null $P3507, vivify_1242
    $P3507 = root_new ['parrot';'ResizablePMCArray']
  vivify_1242:
    $P3508 = $P3507."pop"()
    set $S3509, $P3508
    new $P3510, 'String'
    set $P3510, $S3509
    store_lex "$name", $P3510
.annotate 'line', 2267
    find_lex $P3511, "$package"
    unless_null $P3511, vivify_1243
    new $P3511, "Undef"
  vivify_1243:
    store_lex "$target", $P3511
.annotate 'line', 2268
    find_lex $P3513, "@sym"
    unless_null $P3513, vivify_1244
    $P3513 = root_new ['parrot';'ResizablePMCArray']
  vivify_1244:
    defined $I3514, $P3513
    unless $I3514, for_undef_1245
    iter $P3512, $P3513
    new $P3524, 'ExceptionHandler'
    set_label $P3524, loop3523_handler
    $P3524."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3524
  loop3523_test:
    unless $P3512, loop3523_done
    shift $P3515, $P3512
  loop3523_redo:
    .const 'Sub' $P3517 = "281_1303687815.225" 
    capture_lex $P3517
    $P3517($P3515)
  loop3523_next:
    goto loop3523_test
  loop3523_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3525, exception, 'type'
    eq $P3525, .CONTROL_LOOP_NEXT, loop3523_next
    eq $P3525, .CONTROL_LOOP_REDO, loop3523_redo
  loop3523_done:
    pop_eh 
  for_undef_1245:
.annotate 'line', 2271
    find_lex $P3526, "$obj"
    unless_null $P3526, vivify_1248
    new $P3526, "Undef"
  vivify_1248:
    find_lex $P3527, "$name"
    unless_null $P3527, vivify_1249
    new $P3527, "Undef"
  vivify_1249:
    find_lex $P3528, "$target"
    unless_null $P3528, vivify_1250
    new $P3528, "Undef"
    store_lex "$target", $P3528
  vivify_1250:
    get_who $P3529, $P3528
    set $P3529[$P3527], $P3526
.annotate 'line', 2274
    find_lex $P3530, "self"
    find_lex $P3531, "$package"
    unless_null $P3531, vivify_1251
    new $P3531, "Undef"
  vivify_1251:
    $P3532 = $P3530."get_slot_past_for_object"($P3531)
    store_lex "$path", $P3532
.annotate 'line', 2275
    find_lex $P3534, "@sym"
    unless_null $P3534, vivify_1252
    $P3534 = root_new ['parrot';'ResizablePMCArray']
  vivify_1252:
    defined $I3535, $P3534
    unless $I3535, for_undef_1253
    iter $P3533, $P3534
    new $P3546, 'ExceptionHandler'
    set_label $P3546, loop3545_handler
    $P3546."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3546
  loop3545_test:
    unless $P3533, loop3545_done
    shift $P3536, $P3533
  loop3545_redo:
    .const 'Sub' $P3538 = "282_1303687815.225" 
    capture_lex $P3538
    $P3538($P3536)
  loop3545_next:
    goto loop3545_test
  loop3545_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3547, exception, 'type'
    eq $P3547, .CONTROL_LOOP_NEXT, loop3545_next
    eq $P3547, .CONTROL_LOOP_REDO, loop3545_redo
  loop3545_done:
    pop_eh 
  for_undef_1253:
.annotate 'line', 2278
    find_lex $P3548, "self"
    get_hll_global $P3549, ["PAST"], "Op"
.annotate 'line', 2280
    get_hll_global $P3550, ["PAST"], "Var"
.annotate 'line', 2282
    get_hll_global $P3551, ["PAST"], "Op"
    find_lex $P3552, "$path"
    unless_null $P3552, vivify_1256
    new $P3552, "Undef"
  vivify_1256:
    $P3553 = $P3551."new"($P3552, "get_who PP" :named("pirop"))
    find_lex $P3554, "$name"
    unless_null $P3554, vivify_1257
    new $P3554, "Undef"
  vivify_1257:
    $P3555 = $P3550."new"($P3553, $P3554, "keyed" :named("scope"))
.annotate 'line', 2285
    find_lex $P3556, "self"
    find_lex $P3557, "$obj"
    unless_null $P3557, vivify_1258
    new $P3557, "Undef"
  vivify_1258:
    $P3558 = $P3556."get_slot_past_for_object"($P3557)
    $P3559 = $P3549."new"($P3555, $P3558, "bind" :named("pasttype"))
.annotate 'line', 2278
    $P3548."add_event"($P3559 :named("deserialize_past"))
.annotate 'line', 2289
    find_lex $P3560, "self"
.annotate 'line', 2290
    get_hll_global $P3561, ["PAST"], "Op"
.annotate 'line', 2292
    get_hll_global $P3562, ["PAST"], "Var"
    find_lex $P3563, "$name"
    unless_null $P3563, vivify_1259
    new $P3563, "Undef"
  vivify_1259:
    find_lex $P3564, "@sym"
    unless_null $P3564, vivify_1260
    $P3564 = root_new ['parrot';'ResizablePMCArray']
  vivify_1260:
    $P3565 = $P3562."new"($P3563 :named("name"), $P3564 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2293
    find_lex $P3566, "self"
    find_lex $P3567, "$obj"
    unless_null $P3567, vivify_1261
    new $P3567, "Undef"
  vivify_1261:
    $P3568 = $P3566."get_slot_past_for_object"($P3567)
    $P3569 = $P3561."new"($P3565, $P3568, "bind" :named("pasttype"))
.annotate 'line', 2295
    get_hll_global $P3570, ["PAST"], "Op"
.annotate 'line', 2297
    get_hll_global $P3571, ["PAST"], "Var"
    find_lex $P3572, "$name"
    unless_null $P3572, vivify_1262
    new $P3572, "Undef"
  vivify_1262:
    find_lex $P3573, "@sym"
    unless_null $P3573, vivify_1263
    $P3573 = root_new ['parrot';'ResizablePMCArray']
  vivify_1263:
    $P3574 = $P3571."new"($P3572 :named("name"), $P3573 :named("namespace"), "package" :named("scope"))
.annotate 'line', 2298
    find_lex $P3575, "self"
    find_lex $P3576, "$obj"
    unless_null $P3576, vivify_1264
    new $P3576, "Undef"
  vivify_1264:
    $P3577 = $P3575."get_slot_past_for_object"($P3576)
    $P3578 = $P3570."new"($P3574, $P3577, "bind" :named("pasttype"))
.annotate 'line', 2295
    $P3579 = $P3560."add_event"($P3569 :named("deserialize_past"), $P3578 :named("fixup_past"))
.annotate 'line', 2262
    .return ($P3579)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3516"  :anon :subid("281_1303687815.225") :outer("280_1303687815.225")
    .param pmc param_3518
.annotate 'line', 2268
    .lex "$_", param_3518
.annotate 'line', 2269
    find_lex $P3519, "$target"
    unless_null $P3519, vivify_1246
    new $P3519, "Undef"
  vivify_1246:
    find_lex $P3520, "$_"
    unless_null $P3520, vivify_1247
    new $P3520, "Undef"
  vivify_1247:
    set $S3521, $P3520
    nqp_get_package_through_who $P3522, $P3519, $S3521
    store_lex "$target", $P3522
.annotate 'line', 2268
    .return ($P3522)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3537"  :anon :subid("282_1303687815.225") :outer("280_1303687815.225")
    .param pmc param_3539
.annotate 'line', 2275
    .lex "$_", param_3539
.annotate 'line', 2276
    get_hll_global $P3540, ["PAST"], "Op"
    find_lex $P3541, "$path"
    unless_null $P3541, vivify_1254
    new $P3541, "Undef"
  vivify_1254:
    find_lex $P3542, "$_"
    unless_null $P3542, vivify_1255
    new $P3542, "Undef"
  vivify_1255:
    set $S3543, $P3542
    $P3544 = $P3540."new"($P3541, $S3543, "nqp_get_package_through_who PPs" :named("pirop"))
    store_lex "$path", $P3544
.annotate 'line', 2275
    .return ($P3544)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_lexical_symbol"  :subid("283_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3581
    .param pmc param_3582
    .param pmc param_3583
    .param pmc param_3584
.annotate 'line', 2306
    .lex "self", param_3581
    .lex "$block", param_3582
    .lex "$name", param_3583
    .lex "$obj", param_3584
.annotate 'line', 2312
    new $P3585, "Undef"
    .lex "$fixup", $P3585
.annotate 'line', 2308
    find_lex $P3586, "$block"
    unless_null $P3586, vivify_1265
    new $P3586, "Undef"
  vivify_1265:
    find_lex $P3587, "$name"
    unless_null $P3587, vivify_1266
    new $P3587, "Undef"
  vivify_1266:
    find_lex $P3588, "$obj"
    unless_null $P3588, vivify_1267
    new $P3588, "Undef"
  vivify_1267:
    $P3586."symbol"($P3587, "lexical" :named("scope"), $P3588 :named("value"))
.annotate 'line', 2309
    find_lex $P3589, "$block"
    unless_null $P3589, vivify_1268
    $P3589 = root_new ['parrot';'ResizablePMCArray']
  vivify_1268:
    set $P3590, $P3589[0]
    unless_null $P3590, vivify_1269
    new $P3590, "Undef"
  vivify_1269:
    get_hll_global $P3591, ["PAST"], "Var"
    find_lex $P3592, "$name"
    unless_null $P3592, vivify_1270
    new $P3592, "Undef"
  vivify_1270:
    $P3593 = $P3591."new"("lexical" :named("scope"), $P3592 :named("name"), 1 :named("isdecl"))
    $P3590."push"($P3593)
.annotate 'line', 2312
    get_hll_global $P3594, ["PAST"], "Stmts"
.annotate 'line', 2313
    get_hll_global $P3595, ["PAST"], "Op"
.annotate 'line', 2315
    get_hll_global $P3596, ["PAST"], "Op"
.annotate 'line', 2317
    get_hll_global $P3597, ["PAST"], "Val"
    find_lex $P3598, "$block"
    unless_null $P3598, vivify_1271
    new $P3598, "Undef"
  vivify_1271:
    $P3599 = $P3597."new"($P3598 :named("value"))
    $P3600 = $P3596."new"($P3599, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2319
    find_lex $P3601, "$name"
    unless_null $P3601, vivify_1272
    new $P3601, "Undef"
  vivify_1272:
    set $S3602, $P3601
    find_lex $P3603, "self"
    find_lex $P3604, "$obj"
    unless_null $P3604, vivify_1273
    new $P3604, "Undef"
  vivify_1273:
    $P3605 = $P3603."get_slot_past_for_object"($P3604)
    $P3606 = $P3595."new"($P3600, $S3602, $P3605, "callmethod" :named("pasttype"), "set_static_lexpad_value" :named("name"))
.annotate 'line', 2323
    get_hll_global $P3607, ["PAST"], "Op"
.annotate 'line', 2325
    get_hll_global $P3608, ["PAST"], "Op"
.annotate 'line', 2327
    get_hll_global $P3609, ["PAST"], "Val"
    find_lex $P3610, "$block"
    unless_null $P3610, vivify_1274
    new $P3610, "Undef"
  vivify_1274:
    $P3611 = $P3609."new"($P3610 :named("value"))
    $P3612 = $P3608."new"($P3611, "callmethod" :named("pasttype"), "get_lexinfo" :named("name"))
.annotate 'line', 2325
    $P3613 = $P3607."new"($P3612, "callmethod" :named("pasttype"), "finish_static_lexpad" :named("name"))
.annotate 'line', 2323
    $P3614 = $P3594."new"($P3606, $P3613)
.annotate 'line', 2312
    store_lex "$fixup", $P3614
.annotate 'line', 2331
    find_lex $P3615, "self"
    find_lex $P3616, "$fixup"
    unless_null $P3616, vivify_1275
    new $P3616, "Undef"
  vivify_1275:
    find_lex $P3617, "$fixup"
    unless_null $P3617, vivify_1276
    new $P3617, "Undef"
  vivify_1276:
    $P3618 = $P3615."add_event"($P3616 :named("deserialize_past"), $P3617 :named("fixup_past"))
.annotate 'line', 2306
    .return ($P3618)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_routine"  :subid("284_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3620
    .param pmc param_3621
    .param pmc param_3622
    .param pmc param_3623
.annotate 'line', 2336
    .lex "self", param_3620
    .lex "$package", param_3621
    .lex "$name", param_3622
    .lex "$past_block", param_3623
.annotate 'line', 2337
    new $P3624, "Undef"
    .lex "$fixup", $P3624
    get_hll_global $P3625, ["PAST"], "Op"
.annotate 'line', 2339
    get_hll_global $P3626, ["PAST"], "Var"
.annotate 'line', 2341
    get_hll_global $P3627, ["PAST"], "Op"
    find_lex $P3628, "self"
    find_lex $P3629, "$package"
    unless_null $P3629, vivify_1277
    new $P3629, "Undef"
  vivify_1277:
    $P3630 = $P3628."get_slot_past_for_object"($P3629)
    $P3631 = $P3627."new"($P3630, "get_who PP" :named("pirop"))
.annotate 'line', 2342
    find_lex $P3632, "$name"
    unless_null $P3632, vivify_1278
    new $P3632, "Undef"
  vivify_1278:
    set $S3633, $P3632
    $P3634 = $P3626."new"($P3631, $S3633, "keyed" :named("scope"))
.annotate 'line', 2344
    get_hll_global $P3635, ["PAST"], "Val"
    find_lex $P3636, "$past_block"
    unless_null $P3636, vivify_1279
    new $P3636, "Undef"
  vivify_1279:
    $P3637 = $P3635."new"($P3636 :named("value"))
    $P3638 = $P3625."new"($P3634, $P3637, "bind" :named("pasttype"))
.annotate 'line', 2337
    store_lex "$fixup", $P3638
.annotate 'line', 2346
    find_lex $P3639, "self"
    find_lex $P3640, "$fixup"
    unless_null $P3640, vivify_1280
    new $P3640, "Undef"
  vivify_1280:
    find_lex $P3641, "$fixup"
    unless_null $P3641, vivify_1281
    new $P3641, "Undef"
  vivify_1281:
    $P3642 = $P3639."add_event"($P3640 :named("deserialize_past"), $P3641 :named("fixup_past"))
.annotate 'line', 2336
    .return ($P3642)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("285_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3646
    .param pmc param_3647
    .param pmc param_3648 :optional :named("name")
    .param int has_param_3648 :opt_flag
    .param pmc param_3650 :optional :named("repr")
    .param int has_param_3650 :opt_flag
.annotate 'line', 2351
    new $P3645, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P3645, control_3644
    push_eh $P3645
    .lex "self", param_3646
    .lex "$how", param_3647
    if has_param_3648, optparam_1282
    new $P3649, "Undef"
    set param_3648, $P3649
  optparam_1282:
    .lex "$name", param_3648
    if has_param_3650, optparam_1283
    new $P3651, "Undef"
    set param_3650, $P3651
  optparam_1283:
    .lex "$repr", param_3650
.annotate 'line', 2353
    $P3652 = root_new ['parrot';'Hash']
    .lex "%args", $P3652
.annotate 'line', 2356
    new $P3653, "Undef"
    .lex "$mo", $P3653
.annotate 'line', 2357
    new $P3654, "Undef"
    .lex "$slot", $P3654
.annotate 'line', 2361
    $P3655 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P3655
.annotate 'line', 2362
    new $P3656, "Undef"
    .lex "$how_name", $P3656
.annotate 'line', 2363
    new $P3657, "Undef"
    .lex "$setup_call", $P3657
.annotate 'line', 2351
    find_lex $P3658, "%args"
    unless_null $P3658, vivify_1284
    $P3658 = root_new ['parrot';'Hash']
  vivify_1284:
.annotate 'line', 2354
    find_lex $P3660, "$name"
    unless_null $P3660, vivify_1285
    new $P3660, "Undef"
  vivify_1285:
    defined $I3661, $P3660
    unless $I3661, if_3659_end
    find_lex $P3662, "$name"
    unless_null $P3662, vivify_1286
    new $P3662, "Undef"
  vivify_1286:
    find_lex $P3663, "%args"
    unless_null $P3663, vivify_1287
    $P3663 = root_new ['parrot';'Hash']
    store_lex "%args", $P3663
  vivify_1287:
    set $P3663["name"], $P3662
  if_3659_end:
.annotate 'line', 2355
    find_lex $P3665, "$repr"
    unless_null $P3665, vivify_1288
    new $P3665, "Undef"
  vivify_1288:
    defined $I3666, $P3665
    unless $I3666, if_3664_end
    find_lex $P3667, "$repr"
    unless_null $P3667, vivify_1289
    new $P3667, "Undef"
  vivify_1289:
    find_lex $P3668, "%args"
    unless_null $P3668, vivify_1290
    $P3668 = root_new ['parrot';'Hash']
    store_lex "%args", $P3668
  vivify_1290:
    set $P3668["repr"], $P3667
  if_3664_end:
.annotate 'line', 2356
    find_lex $P3669, "$how"
    unless_null $P3669, vivify_1291
    new $P3669, "Undef"
  vivify_1291:
    find_lex $P3670, "%args"
    unless_null $P3670, vivify_1292
    $P3670 = root_new ['parrot';'Hash']
  vivify_1292:
    $P3671 = $P3669."new_type"($P3670 :flat)
    store_lex "$mo", $P3671
.annotate 'line', 2357
    find_lex $P3672, "self"
    find_lex $P3673, "$mo"
    unless_null $P3673, vivify_1293
    new $P3673, "Undef"
  vivify_1293:
    $P3674 = $P3672."add_object"($P3673)
    store_lex "$slot", $P3674
.annotate 'line', 2361
    find_lex $P3675, "$how"
    unless_null $P3675, vivify_1294
    new $P3675, "Undef"
  vivify_1294:
    get_how $P3676, $P3675
    find_lex $P3677, "$how"
    unless_null $P3677, vivify_1295
    new $P3677, "Undef"
  vivify_1295:
    $S3678 = $P3676."name"($P3677)
    split $P3679, "::", $S3678
    store_lex "@how_ns", $P3679
.annotate 'line', 2362
    find_lex $P3680, "@how_ns"
    unless_null $P3680, vivify_1296
    $P3680 = root_new ['parrot';'ResizablePMCArray']
  vivify_1296:
    $P3681 = $P3680."pop"()
    store_lex "$how_name", $P3681
.annotate 'line', 2363
    get_hll_global $P3682, ["PAST"], "Op"
.annotate 'line', 2365
    get_hll_global $P3683, ["PAST"], "Var"
    find_lex $P3684, "$how_name"
    unless_null $P3684, vivify_1297
    new $P3684, "Undef"
  vivify_1297:
    find_lex $P3685, "@how_ns"
    unless_null $P3685, vivify_1298
    $P3685 = root_new ['parrot';'ResizablePMCArray']
  vivify_1298:
    $P3686 = $P3683."new"($P3684 :named("name"), $P3685 :named("namespace"), "package" :named("scope"))
    $P3687 = $P3682."new"($P3686, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 2363
    store_lex "$setup_call", $P3687
.annotate 'line', 2369
    find_lex $P3689, "$name"
    unless_null $P3689, vivify_1299
    new $P3689, "Undef"
  vivify_1299:
    defined $I3690, $P3689
    unless $I3690, if_3688_end
.annotate 'line', 2370
    find_lex $P3691, "$setup_call"
    unless_null $P3691, vivify_1300
    new $P3691, "Undef"
  vivify_1300:
    get_hll_global $P3692, ["PAST"], "Val"
    find_lex $P3693, "$name"
    unless_null $P3693, vivify_1301
    new $P3693, "Undef"
  vivify_1301:
    $P3694 = $P3692."new"($P3693 :named("value"), "name" :named("named"))
    $P3691."push"($P3694)
  if_3688_end:
.annotate 'line', 2372
    find_lex $P3696, "$repr"
    unless_null $P3696, vivify_1302
    new $P3696, "Undef"
  vivify_1302:
    defined $I3697, $P3696
    unless $I3697, if_3695_end
.annotate 'line', 2373
    find_lex $P3698, "$setup_call"
    unless_null $P3698, vivify_1303
    new $P3698, "Undef"
  vivify_1303:
    get_hll_global $P3699, ["PAST"], "Val"
    find_lex $P3700, "$repr"
    unless_null $P3700, vivify_1304
    new $P3700, "Undef"
  vivify_1304:
    $P3701 = $P3699."new"($P3700 :named("value"), "repr" :named("named"))
    $P3698."push"($P3701)
  if_3695_end:
.annotate 'line', 2375
    find_lex $P3702, "self"
.annotate 'line', 2376
    find_lex $P3703, "self"
    find_lex $P3704, "$slot"
    unless_null $P3704, vivify_1305
    new $P3704, "Undef"
  vivify_1305:
    find_lex $P3705, "self"
    find_lex $P3706, "$setup_call"
    unless_null $P3706, vivify_1306
    new $P3706, "Undef"
  vivify_1306:
    $P3707 = $P3705."set_cur_sc"($P3706)
    $P3708 = $P3703."set_slot_past"($P3704, $P3707)
    $P3702."add_event"($P3708 :named("deserialize_past"))
.annotate 'line', 2379
    new $P3709, "Exception"
    set $P3709['type'], .CONTROL_RETURN
    find_lex $P3710, "$mo"
    unless_null $P3710, vivify_1307
    new $P3710, "Undef"
  vivify_1307:
    setattribute $P3709, 'payload', $P3710
    throw $P3709
.annotate 'line', 2351
    .return ()
  control_3644:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3711, exception, "payload"
    .return ($P3711)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("286_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3713
    .param pmc param_3714
    .param pmc param_3715
    .param pmc param_3716
    .param pmc param_3717
.annotate 'line', 2385
    .lex "self", param_3713
    .lex "$obj", param_3714
    .lex "$meta_method_name", param_3715
    .lex "$name", param_3716
    .lex "$method_past", param_3717
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("287_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3719
    .param pmc param_3720
    .param pmc param_3721
    .param pmc param_3722
.annotate 'line', 2390
    .lex "self", param_3719
    .lex "$obj", param_3720
    .lex "$meta_method_name", param_3721
    .lex "$to_add", param_3722
.annotate 'line', 2395
    new $P3723, "Undef"
    .lex "$slot_past", $P3723
.annotate 'line', 2392
    find_lex $P3724, "$obj"
    unless_null $P3724, vivify_1308
    new $P3724, "Undef"
  vivify_1308:
    get_how $P3725, $P3724
    find_lex $P3726, "$obj"
    unless_null $P3726, vivify_1309
    new $P3726, "Undef"
  vivify_1309:
    find_lex $P3727, "$to_add"
    unless_null $P3727, vivify_1310
    new $P3727, "Undef"
  vivify_1310:
    find_lex $P3728, "$meta_method_name"
    unless_null $P3728, vivify_1311
    new $P3728, "Undef"
  vivify_1311:
    set $S3729, $P3728
    $P3725.$S3729($P3726, $P3727)
.annotate 'line', 2395
    find_lex $P3730, "self"
    find_lex $P3731, "$obj"
    unless_null $P3731, vivify_1312
    new $P3731, "Undef"
  vivify_1312:
    $P3732 = $P3730."get_slot_past_for_object"($P3731)
    store_lex "$slot_past", $P3732
.annotate 'line', 2396
    find_lex $P3733, "self"
    get_hll_global $P3734, ["PAST"], "Op"
    find_lex $P3735, "$meta_method_name"
    unless_null $P3735, vivify_1313
    new $P3735, "Undef"
  vivify_1313:
.annotate 'line', 2398
    get_hll_global $P3736, ["PAST"], "Op"
    find_lex $P3737, "$slot_past"
    unless_null $P3737, vivify_1314
    new $P3737, "Undef"
  vivify_1314:
    $P3738 = $P3736."new"($P3737, "get_how PP" :named("pirop"))
    find_lex $P3739, "$slot_past"
    unless_null $P3739, vivify_1315
    new $P3739, "Undef"
  vivify_1315:
.annotate 'line', 2400
    find_lex $P3740, "self"
    find_lex $P3741, "$to_add"
    unless_null $P3741, vivify_1316
    new $P3741, "Undef"
  vivify_1316:
    $P3742 = $P3740."get_object_sc_ref_past"($P3741)
    $P3743 = $P3734."new"($P3738, $P3739, $P3742, "callmethod" :named("pasttype"), $P3735 :named("name"))
.annotate 'line', 2396
    $P3744 = $P3733."add_event"($P3743 :named("deserialize_past"))
.annotate 'line', 2390
    .return ($P3744)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("288_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3746
    .param pmc param_3747
.annotate 'line', 2405
    .lex "self", param_3746
    .lex "$obj", param_3747
.annotate 'line', 2410
    new $P3748, "Undef"
    .lex "$slot_past", $P3748
.annotate 'line', 2407
    find_lex $P3749, "$obj"
    unless_null $P3749, vivify_1317
    new $P3749, "Undef"
  vivify_1317:
    get_how $P3750, $P3749
    find_lex $P3751, "$obj"
    unless_null $P3751, vivify_1318
    new $P3751, "Undef"
  vivify_1318:
    $P3750."compose"($P3751)
.annotate 'line', 2410
    find_lex $P3752, "$obj"
    unless_null $P3752, vivify_1319
    new $P3752, "Undef"
  vivify_1319:
    $P3753 = "get_slot_past_for_object"($P3752)
    store_lex "$slot_past", $P3753
.annotate 'line', 2411
    find_lex $P3754, "self"
    get_hll_global $P3755, ["PAST"], "Op"
.annotate 'line', 2413
    get_hll_global $P3756, ["PAST"], "Op"
    find_lex $P3757, "$slot_past"
    unless_null $P3757, vivify_1320
    new $P3757, "Undef"
  vivify_1320:
    $P3758 = $P3756."new"($P3757, "get_how PP" :named("pirop"))
    find_lex $P3759, "$slot_past"
    unless_null $P3759, vivify_1321
    new $P3759, "Undef"
  vivify_1321:
    $P3760 = $P3755."new"($P3758, $P3759, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 2411
    $P3761 = $P3754."add_event"($P3760 :named("deserialize_past"))
.annotate 'line', 2405
    .return ($P3761)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("289_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3763
.annotate 'line', 2419
    .lex "self", param_3763
    find_lex $P3764, "self"
    find_lex $P3765, "$?CLASS"
    getattribute $P3766, $P3764, $P3765, "@!sc"
    unless_null $P3766, vivify_1322
    $P3766 = root_new ['parrot';'ResizablePMCArray']
  vivify_1322:
    .return ($P3766)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("290_1303687815.225") :outer("266_1303687815.225")
    .param pmc param_3768
.annotate 'line', 2425
    .const 'Sub' $P3782 = "291_1303687815.225" 
    capture_lex $P3782
    .lex "self", param_3768
.annotate 'line', 2426
    new $P3769, "Undef"
    .lex "$des", $P3769
.annotate 'line', 2427
    new $P3770, "Undef"
    .lex "$fix", $P3770
.annotate 'line', 2426
    get_hll_global $P3771, ["PAST"], "Stmts"
    $P3772 = $P3771."new"()
    store_lex "$des", $P3772
.annotate 'line', 2427
    get_hll_global $P3773, ["PAST"], "Stmts"
    $P3774 = $P3773."new"()
    store_lex "$fix", $P3774
.annotate 'line', 2428
    find_lex $P3776, "self"
    find_lex $P3777, "$?CLASS"
    getattribute $P3778, $P3776, $P3777, "@!event_stream"
    unless_null $P3778, vivify_1323
    $P3778 = root_new ['parrot';'ResizablePMCArray']
  vivify_1323:
    defined $I3779, $P3778
    unless $I3779, for_undef_1324
    iter $P3775, $P3778
    new $P3801, 'ExceptionHandler'
    set_label $P3801, loop3800_handler
    $P3801."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P3801
  loop3800_test:
    unless $P3775, loop3800_done
    shift $P3780, $P3775
  loop3800_redo:
    .const 'Sub' $P3782 = "291_1303687815.225" 
    capture_lex $P3782
    $P3782($P3780)
  loop3800_next:
    goto loop3800_test
  loop3800_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P3802, exception, 'type'
    eq $P3802, .CONTROL_LOOP_NEXT, loop3800_next
    eq $P3802, .CONTROL_LOOP_REDO, loop3800_redo
  loop3800_done:
    pop_eh 
  for_undef_1324:
.annotate 'line', 2432
    find_dynamic_lex $P3803, "$/"
    get_hll_global $P3804, ["PAST"], "Op"
.annotate 'line', 2434
    get_hll_global $P3805, ["PAST"], "Op"
.annotate 'line', 2436
    get_hll_global $P3806, ["PAST"], "Op"
    find_lex $P3807, "self"
    find_lex $P3808, "$?CLASS"
    getattribute $P3809, $P3807, $P3808, "$!handle"
    unless_null $P3809, vivify_1331
    new $P3809, "Undef"
  vivify_1331:
    $P3810 = $P3806."new"($P3809, "nqp_get_sc Ps" :named("pirop"))
    $P3811 = $P3805."new"($P3810, "isnull IP" :named("pirop"))
.annotate 'line', 2438
    get_hll_global $P3812, ["PAST"], "Stmts"
.annotate 'line', 2439
    get_hll_global $P3813, ["PAST"], "Op"
    $P3814 = $P3813."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 2440
    get_hll_global $P3815, ["PAST"], "Op"
.annotate 'line', 2442
    get_hll_global $P3816, ["PAST"], "Op"
    $P3817 = $P3816."new"("getinterp P" :named("pirop"))
.annotate 'line', 2443
    get_hll_global $P3818, ["PAST"], "Op"
    $P3819 = $P3818."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 2444
    get_hll_global $P3820, ["PAST"], "Op"
    $P3821 = $P3820."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P3822 = $P3815."new"($P3817, $P3819, $P3821, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 2446
    get_hll_global $P3823, ["PAST"], "Op"
.annotate 'line', 2448
    get_hll_global $P3824, ["PAST"], "Var"
    $P3825 = $P3824."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 2449
    get_hll_global $P3826, ["PAST"], "Op"
    find_lex $P3827, "self"
    find_lex $P3828, "$?CLASS"
    getattribute $P3829, $P3827, $P3828, "$!handle"
    unless_null $P3829, vivify_1332
    new $P3829, "Undef"
  vivify_1332:
    $P3830 = $P3826."new"($P3829, "nqp_create_sc Ps" :named("pirop"))
    $P3831 = $P3823."new"($P3825, $P3830, "bind" :named("pasttype"))
.annotate 'line', 2446
    find_lex $P3832, "$des"
    unless_null $P3832, vivify_1333
    new $P3832, "Undef"
  vivify_1333:
    $P3833 = $P3812."new"($P3814, $P3822, $P3831, $P3832)
.annotate 'line', 2438
    find_lex $P3834, "$fix"
    unless_null $P3834, vivify_1334
    new $P3834, "Undef"
  vivify_1334:
    $P3835 = $P3804."new"($P3811, $P3833, $P3834, "if" :named("pasttype"))
.annotate 'line', 2432
    $P3836 = $P3803."!make"($P3835)
.annotate 'line', 2425
    .return ($P3836)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block3781"  :anon :subid("291_1303687815.225") :outer("290_1303687815.225")
    .param pmc param_3783
.annotate 'line', 2428
    .lex "$_", param_3783
.annotate 'line', 2429
    find_lex $P3785, "$_"
    unless_null $P3785, vivify_1325
    new $P3785, "Undef"
  vivify_1325:
    $P3786 = $P3785."deserialize_past"()
    defined $I3787, $P3786
    unless $I3787, if_3784_end
    find_lex $P3788, "$des"
    unless_null $P3788, vivify_1326
    new $P3788, "Undef"
  vivify_1326:
    find_lex $P3789, "$_"
    unless_null $P3789, vivify_1327
    new $P3789, "Undef"
  vivify_1327:
    $P3790 = $P3789."deserialize_past"()
    $P3788."push"($P3790)
  if_3784_end:
.annotate 'line', 2430
    find_lex $P3793, "$_"
    unless_null $P3793, vivify_1328
    new $P3793, "Undef"
  vivify_1328:
    $P3794 = $P3793."fixup_past"()
    defined $I3795, $P3794
    if $I3795, if_3792
    new $P3791, 'Integer'
    set $P3791, $I3795
    goto if_3792_end
  if_3792:
    find_lex $P3796, "$fix"
    unless_null $P3796, vivify_1329
    new $P3796, "Undef"
  vivify_1329:
    find_lex $P3797, "$_"
    unless_null $P3797, vivify_1330
    new $P3797, "Undef"
  vivify_1330:
    $P3798 = $P3797."fixup_past"()
    $P3799 = $P3796."push"($P3798)
    set $P3791, $P3799
  if_3792_end:
.annotate 'line', 2428
    .return ($P3791)
.end


.HLL "nqp"

.namespace []
.sub "_block3898" :load :anon :subid("293_1303687815.225")
.annotate 'line', 1064
    .const 'Sub' $P3900 = "10_1303687815.225" 
    $P3901 = $P3900()
    .return ($P3901)
.end

